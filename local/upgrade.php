<?php

/**
 * Upgrades for local customisations.
 */

defined('INTERNAL') || die();

function xmldb_local_upgrade($oldversion=0) {
	
	  if ($oldversion < 2015021902) {
        // We need to fix up a few places where users could have hardcoded the url into their data.
        $oldurl = 'http://knowledgenet.ca'; // change to be correct url
        $oldurl_escaped = preg_quote($oldurl, '/');
        $newurl = 'https://www.knowledgenet.ca'; // change to be correct url

        // $replacements is key = table, value = column
        $replacements = array('view' => 'description',
                              'artefact' => 'description',
                              'group' => 'description',
                              'interaction_forum_post' => 'body',
                              'notification_internal_activity' => 'message',
                              'notification_internal_activity' => 'url');
        foreach ($replacements as $key => $value) {
            execute_sql("UPDATE {" . $key . "} SET " . $value . " = REPLACE(" . $value . ", '$oldurl', '$newurl') WHERE " . $value . " LIKE '%" . $oldurl . "%'");
        }
        // we need to handle block_instance configdata in a special way
        if ($results = get_records_sql_array("SELECT id FROM {block_instance} WHERE configdata LIKE '%" . $oldurl . "%'", array())) {
            require_once(get_config('docroot') . 'blocktype/lib.php');
            foreach ($results as $result) {
                $bi = new BlockInstance($result->id);
                $configdata = $bi->get('configdata');
                foreach ($configdata as $key => $value) {
                    $configdata[$key] = preg_replace("/$oldurl_escaped/", $newurl, $value);
                }
                $bi->set('configdata', $configdata);
                $bi->commit();
            }
        }
    }
}
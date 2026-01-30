#!/usr/bin/env php
<?php

error_reporting( 0 );

if ( is_dir( '/srv/mediawiki/config' ) ) {
	require_once '/srv/mediawiki/config/initialise/WikivyFunctions.php';
} else {
	require_once '/srv/mediawiki-staging/config/initialise/WikivyFunctions.php';
}

if ( ( $argv[1] ?? false ) === 'all' ) {
	echo json_encode( WikivyFunctions::MEDIAWIKI_VERSIONS );
	exit( 0 );
}

$versions = array_unique( WikivyFunctions::MEDIAWIKI_VERSIONS );
asort( $versions );

echo json_encode( array_combine( $versions, $versions ) );
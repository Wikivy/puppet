<?php

// Database passwords
$wgDBadminpassword = '<%= @mediawiki_db_password %>';
$wgDBpassword = '<%= @mediawiki_db_password %>';

// Redis AUTH password
$wmgRedisPassword = '<%= @mediawiki_redis_password %>';

// MediaWiki secret keys
$wgUpgradeKey = '<%= @mediawiki_upgradekey %>';
$wgSecretKey = '<%= @mediawiki_secretkey %>';

// hCaptcha secret key
$wgHCaptchaSecretKey = '<%= @hcaptcha_secretkey %>';

// Extension:DiscordNotifications global webhook
$wmgGlobalDiscordWebhookUrl = '<%= @global_discord_webhook_url %>';
$wmgDiscordExperimentalWebhook = '<%= @discord_experimental_webhook %>';

// Reports write key
$wgWikivyReportsWriteKey = '<%= @reports_write_key %>';

// SMTP
$wgSMTP = [
	'host' => 'mail.wikivy.com',
	'IDHost' => 'wikivy.com',
	'port' => 587,
	'username' => 'noreply@wikivy.com',
	'password' => '<%= @email_password %>',
	'auth' => true,
];
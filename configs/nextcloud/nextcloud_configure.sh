#!/bin/sh

set -e
echo "Configuring nextcloud"
php occ config:app:set activity enable_email --value no
php occ config:app:set core shareapi_allow_public_upload --value no
php occ config:app:set core shareapi_allow_resharing --value no
php occ config:app:set core shareapi_enabled --value no
php occ config:app:set dav generateBirthdayCalendar --value no
php occ config:app:set dav sendEventReminders --value no
php occ config:app:set dav sendInvitations --value no
php occ config:app:set dav disableFreeBusy --value yes
php occ config:app:set dav maximumCalendarsSubscriptions --type=integer --value=10 # defuault 30
php occ config:app:set files_sharing incoming_server2server_share_enabled --value no
php occ config:app:set files_sharing lookupServerEnabled --value no
php occ config:app:set files_sharing lookupServerUploadEnabled --value no
php occ config:app:set files_sharing outgoing_server2server_share_enabled --value no
php occ config:app:set sharebymail replyToInitiator --value no
php occ config:app:set sharebymail sendpasswordmail --value no
php occ config:app:set settings profile_enabled_by_default --value no
php occ config:app:set password_policy enforceHaveIBeenPwned --value no
php occ config:app:set workflowengine user_scope_disabled --value yes

#php occ app:disable activity circles cloud_federation_api dashboard comments contactsinteraction files_downloadlimit firstrunwizard federatedfilesharing federation files_sharing logreader lookup_server_connector nextcloud_announcements notifications oauth2 photos recommendations related_resources sharebymail support survey_client text updatenotification user_status weather_status workflowengine
#php occ app:disable activity circles cloud_federation_api contactsinteraction firstrunwizard federatedfilesharing federation files_sharing lookup_server_connector nextcloud_announcements notifications oauth2 recommendations related_resources sharebymail support survey_client updatenotification user_status weather_status workflowengine

php occ config:system:set default_timezone --value 'Asia/Novosibirsk'
php occ config:system:set remember_login_cookie_lifetime --type=integer --value 172800
php occ config:system:set session_keepalive --type=boolean --value false
php occ config:system:set token_auth_enforced --type=boolean --value true
php occ config:system:set htaccess.RewriteBase --value '/'
php occ config:system:set enable_previews --type=boolean --value  false
php occ config:system:set sharing.enable_mail_link_password_expiration --type=boolean --value true
php occ config:system:set sharing.minSearchStringLength --type=integer --value 2

echo "Configuring done"
#!/bin/bash

if [ -f .env ]; then
    source .env
else
    echo "Prepare .env file before deploying"
    exit 1
fi


aws cloudformation \
deploy \
--template-file cloudformation.yml \
--stack-name superset-test \
--capabilities CAPABILITY_NAMED_IAM \
--parameter-overrides \
"AppName=$APP_NAME" \
"AuthLdapServer=$AUTH_LDAP_SERVER" \
"AuthLdapSearch=$AUTH_LDAP_SEARCH" \
"AuthLdapUsernameFormat=$AUTH_LDAP_USERNAME_FORMAT"

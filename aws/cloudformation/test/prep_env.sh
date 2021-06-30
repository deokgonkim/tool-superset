#!/bin/bash

echo "AUTH_LDAP_SERVER(ex. ldaps://localhost) : "; read AUTH_LDAP_SERVER; echo "export AUTH_LDAP_SERVER=${AUTH_LDAP_SERVER}" > .env
echo "AUTH_LDAP_SEARCH(ex. dc=dgkim,dc=net) : "; read AUTH_LDAP_SEARCH; echo "export AUTH_LDAP_SEARCH=${AUTH_LDAP_SEARCH}" >> .env
echo "AUTH_LDAP_USERNAME_FORMAT(ex. uid=%s,ou=Users,dc=dgkim,dc=net) : "; read AUTH_LDAP_USERNAME_FORMAT; echo "export AUTH_LDAP_USERNAME_FORMAT=${AUTH_LDAP_USERNAME_FORMAT}" >> .env

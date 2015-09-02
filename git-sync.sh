#!/bin/bash
basedir=`pwd`
echo basedir=$basedir

repos='
	portal_service
	rmx
	cyberdyne
	saas_ads
	saas_seg_console
	sco_api_doc
	saas_xsp_docker
	split_saas_xsp_scripts
	saas_common
	saas_xsp_l10n
	saas_xsp_aal
	saas_xsp_ce
	saas_xsp_data
	saas_xsp
	saas_ansible_deploy
	'
for repo in $repos; do
	echo "=== updating '$repo'... ===";
	cd $repo;git remote update origin --prune;git pull --all;cd $basedir;
done

#!/bin/bash

# sync git repos
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

# keep empty folder in git
cd $EMPTY_FOLDER
touch .gitignore

: <<'EOD' # content of .gitignore
*
!.gitignore
EOD

# tip: git clean
: <<'EOD'
因為你要先 git commit -> git clean -f -d -x ; git reset --hard -q
等於 no object files, no other files
不過因為你已經 commit
就 git clean -f -d -x -q 就好
殺掉多的 file
then git checkout to other branch
EOD





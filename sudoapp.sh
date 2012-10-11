project=$(grep APPLICATION_NAME Makefile | awk '{print $3}')
echo "creating root-permission script for: $project"

target=_/DEBIAN/postinst
cp sudoapp.template $target
perl -p -i -e "s,<ProjectName>,$project,g" $target
chmod 0555 $target
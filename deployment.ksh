#/bin/ksh


### Variable Declaration
export tableau_version=`rpm -qa | grep tableau-server | awk -F'-' '{print $3}'`
export tableau_cmd=/tableau/packages/bin.${tableau_version}/tabcmd

if [[  -z $tableau_version ]]; then
        echo "Unable to Identify Tableau RPM and it's version. Exiting..."
	exit 9
fi

### Function Declaration
function example {

print "Example:"
print "Script Name deployment.ksh"
print "   -s Tableau Server Details"
print "   -u Tableau User Name"
print "   -p Tableau User password"
print "   -P Tableau Project Name"
exit 10

}

#### Initlize the input variables
while getopts s:u:p:P: OPT; do

	case $OPT in
		s) export tableau_server=${OPTARG};;
		u) export tab_user_name=${OPTARG};;
		p) export tab_user_passwd=${OPTARG};;
		P) export tab_project=${OPTARG};;
	esac
done

if [[  -z $tableau_server ]]; then
	echo "Tableau Server details has not set. Exiting..."
	example
	exit 0
fi

if [[  -z $tab_user_name ]]; then
        echo "Tableau User details has not set. Exiting..."
        exit 0
fi

if [[  -z $tab_user_passwd ]]; then
        echo "Tableau User password details has not set. Exiting..."
        exit 0
fi

if [[  -z $tab_project ]]; then
        echo "Tableau Server Project details has not set. Exiting..."
        exit 0
fi


#####################################################
######### Main Execution ############################
#####################################################

OIFS="$IFS"
IFS=$'\n'

##### For loop for all twbx file ########

for file in `find . -type f -name "*.twbx" | sed 's|^./||'`
do
	echo "Publish file $file on the tableau server $tableau_server"
	${tableau_cmd} publish "$file" -s ${tableau_server} -u ${tab_user_name} -p ${tab_user_passwd} -r ${tab_project} -o --no-certcheck --tabbed
done
IFS="$OIFS"

 

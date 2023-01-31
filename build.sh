# get code
wget -O dev.zip https://github.com/MetaPhase-Consulting/State-TalentMAP-API/archive/dev.zip

unzip -o dev.zip
rm dev.zip
cd State-TalentMAP-API-dev

# copy env setup script
cp EXAMPLE_setup_environment.sh setup_environment.sh
# setup env
source setup_environment.sh

export DATABASE_URL='<DATABASE_URL>'
export DJANGO_LOG_DIRECTORY='/home/ec2-user/log/'
export DEPLOYMENT_LOCATION='/home/ec2-user/State-TalentMAP-API-dev/'
export FSBID_API_URL='http://dev.talentmap.fsbid.metaphasedev.com'

echo "Deployment complete"

exit
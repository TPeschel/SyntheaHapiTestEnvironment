mkdir hapi
cd hapi
wget 'https://github.com/jamesagnew/hapi-fhir/releases/download/v5.1.0/hapi-fhir-5.1.0-cli.tar.bz2'
tar -xvf  hapi-fhir-5.1.0-cli.tar.bz2
rm  hapi-fhir-5.1.0-cli.tar.bz2

cd ..
mkdir synthea
cd synthea
wget 'https://github.com/synthetichealth/synthea/releases/download/master-branch-latest/synthea-with-dependencies.jar'

tree
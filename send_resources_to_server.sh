while ! echo exit | nc localhost 8080; do sleep 10; done

cd ./synthea/output/fhir

for f in *;
do
  echo $f;
  curl -X POST http://localhost:8080/baseR4 --data-binary @"$f" -H "Content-Type: application/fhir+json";
done

cd ../../..
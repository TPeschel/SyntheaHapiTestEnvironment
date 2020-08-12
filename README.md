# SyntheaHapiTestEnvironment
### Environment for Tests with Synthea and a local Hapi-Server

## Sources:

### Hapi-Server-CLI
  - Documentation: https://hapifhir.io/hapi-fhir/docs/tools/hapi_fhir_cli.html  
  - Download: https://github.com/jamesagnew/hapi-fhir/releases

### Synthea
  - Documentation: https://github.com/synthetichealth/synthea/wiki/Basic-Setup-and-Running  
  - Download: https://github.com/synthetichealth/synthea/releases/download/master-branch-latest/synthea-with-dependencies.jar


## Workflow

### 0 Make Shell Scripts exectutable 
```
$ chmod +x *.sh
$ ./download_and_install_software.sh
```

### 1 Install Software
```
$ chmod +x *.sh
$ ./download_and_install_software.sh
```
Afterwards you should have 2 new directories and some new files in them.    
```
.
├── hapi
│   ├── hapi-fhir-cli
│   ├── hapi-fhir-cli.cmd
│   └── hapi-fhir-cli.jar
└── synthea
    └── synthea-with-dependencies.jar
```

### 2 Create Resources
```
$ ./create_patients.sh
```

### 3 Start Server
```
$ ./start_server.sh
```

### 4 Send Resources to Server
This may take a lot of time.
run only once:  
```
$ ./send_resources_to_server.sh
```

### 5 When it is no longer needed kill the Server
Find the process id and kill the process!  
```
$ lsof -i @localhost:8080
$ kill <pid>
```

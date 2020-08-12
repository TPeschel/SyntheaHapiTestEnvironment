# SyntheaHapiTestEnvironment
### Environment for Tests with Synthea and a local Hapi-Server

## Sources:

### Hapi-Server-CLI
  - Documentation: https://hapifhir.io/hapi-fhir/docs/tools/hapi_fhir_cli.html  
  - Download: https://github.com/jamesagnew/hapi-fhir/releases

### Synthea
  - Documentation: https://github.com/synthetichealth/synthea/wiki/Basic-Setup-and-Running  
  - Download: https://github.com/synthetichealth/synthea/releases/download/master-branch-latest/synthea-with-dependencies.jar


## Workflow for Linux Systems

### 0. Make Shell Scripts executable 
**Run only once!**
```
$ chmod +x *.sh
```

### 1. Download and extract Software
**Run only once!**  
This may take 5 to 20 minutes.
```
$ ./download_and_extract_software.sh
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

### 2. Create Resources
**Run only once!**  
This may take 10 to 30 minutes.  
```
$ ./create_resources.sh
```

### 3. Start Server
**Run whenever the server should get started!**
```
$ ./start_server.sh
```

### 4. Send Resources to Server
**Run only once!**  
This may take 1 to 5 hours.  
```
$ ./send_resources_to_server.sh
```

### When it is no longer needed kill the Server
Find the process id and kill the process!  
```
$ lsof -i @localhost:8080
$ kill <pid>
```

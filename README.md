# docker-cra-env-cmd

Inject env when docker build images with env-cmd

## e.g.

package.json
``` json
scripts : {
    "build:staging": "env-cmd -f .env.staging react-scripts build",
    "build:prod": "env-cmd -f .env.production react-scripts build",
    "start:staging": "env-cmd -f .env.staging react-scripts start",
    "start:prod": "env-cmd -f .env.production react-scripts start"
}
    
```

### dev : docker build -f Dockerfile -t react-app:latest .

### staging : docker build -f Dockerfile.staging -t react-app:latest .

### production : docker build -f Dockerfile.production -t react-app:latest .

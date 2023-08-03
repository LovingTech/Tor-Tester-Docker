# Tor Tester Docker
A simple docker build to test is a tor connection has been made. Simple curls https://check.torproject.org and scrapes infromation required. Built with proxies in mind

## Building

Download the repository and then run the command in the repository directory
```
docker build -t tortester ./
```

## Run command 
```
docker run tortester
```

This will give an output similar to

```
Current time : 00:01:14
  <title>
    
      Sorry. You are not using Tor.
________________________________NEXT_________________________________ 
```

To correctly setup the current time command simply set the timezoen varible in the environment varibles as so.

```
docker run -e "TZ=Australia/Sydney" tortester
```

# Sample Compose File
I have provided a sample compose file that demostrates the container operating successfully. 
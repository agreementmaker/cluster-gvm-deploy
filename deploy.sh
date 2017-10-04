#!/usr/bin/env bash

if [ ! -e cluster-gvm-1.1.jar ]; then
  wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/tomgibara/cluster-gvm-1.1.jar
fi

mvn deploy:deploy-file \
  -Durl=scpexe://onawh.im/maven \
  -DrepositoryId=ssh-repository \
  -Dfile=cluster-gvm-1.1.jar \
  -DgroupId=com.github.agreementmaker \
  -DartifactId=cluster-gvm \
  -Dversion=1.1 \
  -Dpackaging=jar \
  -DgeneratePom=true \
  -DgeneratePom.description="Greedy Variance Minimization, a fast spatial clustering algrithm - http://www.tomgibara.com/clustering/fast-spatial"

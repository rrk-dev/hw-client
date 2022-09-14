#!/usr/bin/env bash
set -e
 
CODEGEN_VERSION="1.23.1"
# gewkek
wget http://github.com/kubernetes/code-generator/archive/kubernetes-${CODEGEN_VERSION}.tar.gz
mkdir -p ${GOPATH}/src/k8s.io/code-generator
tar zxvf kubernetes-${CODEGEN_VERSION}.tar.gz --strip 1 -C ${GOPATH}/src/k8s.io/code-generator/
rm kubernetes-${CODEGEN_VERSION}.tar.gz
 
wget http://github.com/kubernetes/apimachinery/archive/kubernetes-${CODEGEN_VERSION}.tar.gz
mkdir -p ${GOPATH}/src/k8s.io/apimachinery
tar zxvf kubernetes-${CODEGEN_VERSION}.tar.gz --strip 1 -C ${GOPATH}/src/k8s.io/apimachinery/
rm kubernetes-${CODEGEN_VERSION}.tar.gz
 
wget http://github.com/kubernetes/api/archive/kubernetes-${CODEGEN_VERSION}.tar.gz
mkdir -p ${GOPATH}/src/k8s.io/api
tar zxvf kubernetes-${CODEGEN_VERSION}.tar.gz --strip 1 -C ${GOPATH}/src/k8s.io/api/
rm kubernetes-${CODEGEN_VERSION}.tar.gz
 
go get k8s.io/kube-openapi/cmd/openapi-gen
go get k8s.io/gengo/args
go get k8s.io/gengo/examples/defaulter-gen/generators

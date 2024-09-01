#!/bin/bash
set -ex

apt update
apt install -y maven

curl https://repo.spring.io/release/io/spring/asciidoctor/spring-asciidoctor-extensions/0.1.3.RELEASE/spring-asciidoctor-extensions-0.1.3.RELEASE.jar -o /tmp/spring-asciidoctor-extensions-0.1.3.RELEASE.jar &&
    mvn install:install-file -Dfile=/tmp/spring-asciidoctor-extensions-0.1.3.RELEASE.jar -DgroupId=io.spring.asciidoctor -DartifactId=spring-asciidoctor-extensions -Dversion=0.1.3.RELEASE -Dpackaging=jar -Dhttps.protocols=TLSv1.2

curl https://oss.jfrog.org/artifactory/oss-release-local/org/jfrog/buildinfo/build-info-extractor/2.13.10/build-info-extractor-2.13.10.jar -o /tmp/build-info-extractor-2.13.10.jar &&
    mvn install:install-file -Dfile=/tmp/build-info-extractor-2.13.10.jar -DgroupId=org.jfrog.buildinfo -DartifactId=build-info-extractor -Dversion=2.13.10 -Dpackaging=jar -Dhttps.protocols=TLSv1.2

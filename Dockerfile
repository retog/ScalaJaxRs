FROM maven:3.2-jdk-8
MAINTAINER Reto Gmür <reto.gmuer@zazuko.com>

#Commented out for Dokku
#EXPOSE 5000

#Prepare
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Build
COPY ./ /usr/src/app

RUN mvn install -DfinalName=ScalaJaxRs

ENTRYPOINT ["java"]
CMD ["-jar", "target/ScalaJaxRs.jar"]
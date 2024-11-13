FROM openjdk:17
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/cifradorcesar-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
COPY libCifrador.so /lib64
ENV LD_LIBRARY_PATH=/usr/local/lib/jni:/lib64:$LD_LIBRARY_PATH
ENTRYPOINT ["java", "-Djava.library.path=/lib64", "-jar", "/app.jar"]

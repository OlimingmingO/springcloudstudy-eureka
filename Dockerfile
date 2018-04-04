FROM hub.c.163.com/lizhentao/springcloudedu:latest
MAINTAINER lizhentao
COPY . /usr/lzt/
ENV M2_HOME=/usr/lib/maven
ENV JAVA_HOME=/usr/lib/jvm/java-openjdk
ENV CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
ENV PATH=$M2_HOME/bin:$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH
RUN /bin/sh -c "cd /usr/lzt/Eureka && ls && mvn clean && mvn compile && mvn package"
CMD /bin/sh -c "cd /usr/lzt/Eureka && mvn spring-boot:run"

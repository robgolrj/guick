<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>${project.group}</groupId>
    <artifactId>${project.name}</artifactId>
    <packaging>war</packaging>
    <version>1.0-SNAPSHOT</version>
    <name>service</name>

    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <maven.compiler.source>1.6</maven.compiler.source>
        <maven.compiler.target>1.6</maven.compiler.target>
        <spring_version>3.2.3.RELEASE</spring_version>
    </properties>

    <repositories>
        <repository>
            <id>spring-milestone</id>
            <name>Spring Maven MILESTONE Repository</name>
            <url>http://repo.springsource.org/libs-milestone</url>
        </repository>
    </repositories>

    <dependencies>

        <dependency>
            <groupId>jstl</groupId>
            <artifactId>jstl</artifactId>
            <version>1.2</version>
        </dependency>

        <dependency>
            <groupId>org.thymeleaf</groupId>
            <artifactId>thymeleaf</artifactId>
            <version>2.0.18</version>
        </dependency>

        <dependency>
            <groupId>org.thymeleaf</groupId>
            <artifactId>thymeleaf-spring3</artifactId>
            <version>2.0.18</version>
        </dependency>

        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-context</artifactId>
            <version>${spring_version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-tx</artifactId>
            <version>${spring_version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-webmvc</artifactId>
            <version>${spring_version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework.data</groupId>
            <artifactId>spring-data-jpa</artifactId>
            <version>1.3.4.RELEASE</version>
        </dependency>
        <dependency>
            <groupId>org.springframework.data</groupId>
            <artifactId>spring-data-rest-webmvc</artifactId>
            <version>1.1.0.M1</version>
        </dependency>
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-core</artifactId>
            <version>2.2.2</version>
        </dependency>
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-databind</artifactId>
            <version>2.2.2</version>
        </dependency>

        <dependency>
        	<groupId>org.hibernate</groupId>
        	<artifactId>hibernate-entitymanager</artifactId>
        	<version>4.2.4.Final</version>
        </dependency>

        <dependency>
        	<groupId>org.hibernate</groupId>
        	<artifactId>hibernate-validator</artifactId>
        	<version>5.0.1.Final</version>
        </dependency>

        <dependency>
            <groupId>com.h2database</groupId>
            <artifactId>h2</artifactId>
            <version>1.3.173</version>
        </dependency>

        <!-- other driver examples
        <dependency>
            <groupId>org.xerial</groupId>
            <artifactId>sqlite-jdbc</artifactId>
            <version>3.7.2</version>
        </dependency>
        <dependency>
            <groupId>org.postgresql</groupId>
            <artifactId>postgresql</artifactId>
            <version>9.2-1003-jdbc4</version>
        </dependency>
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>5.1.25</version>
        </dependency>
        -->

        <!-- lçogback -->
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-api</artifactId>
            <version>1.6.1</version>
            <scope>compile</scope>
        </dependency>
        <dependency>
            <groupId>ch.qos.logback</groupId>
            <artifactId>logback-core</artifactId>
            <version>0.9.24</version>
            <scope>runtime</scope>
        </dependency>
        <dependency>
            <groupId>ch.qos.logback</groupId>
            <artifactId>logback-classic</artifactId>
            <version>0.9.24</version>
            <scope>runtime</scope>
        </dependency>
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>jcl-over-slf4j</artifactId>
            <version>1.6.1</version>
            <scope>runtime</scope>
        </dependency>
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>log4j-over-slf4j</artifactId>
            <version>1.6.1</version>
            <scope>runtime</scope>
        </dependency>
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>jul-to-slf4j</artifactId>
            <version>1.6.1</version>
            <scope>runtime</scope>
        </dependency>

        <dependency>
            <groupId>org.codehaus.groovy</groupId>
            <artifactId>groovy-all</artifactId>
            <version>2.1.6</version>
        </dependency>

        <dependency>
        	<groupId>junit</groupId>
        	<artifactId>junit</artifactId>
        	<version>4.11</version>
        	<scope>test</scope>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-test</artifactId>
            <version>${spring_version}</version>
        </dependency>

    </dependencies>

    <build>
        <plugins>
            <!--<plugin>-->
                <!--<groupId>org.wdn.guick</groupId>-->
                <!--<artifactId>guick-maven-plugin</artifactId>-->
                <!--<version>1.1-SNAPSHOT</version>-->
            <!--</plugin>-->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>3.0</version>
                <configuration>
                    <source>${maven.compiler.source}</source>
                    <target>${maven.compiler.target}</target>
                    <compilerId>groovy-eclipse-compiler</compilerId>
                    <showWarnings>true</showWarnings>
                </configuration>
                <dependencies>
                    <dependency>
                        <groupId>org.codehaus.groovy</groupId>
                        <artifactId>groovy-eclipse-compiler</artifactId>
                        <version>2.8.0-01</version>
                    </dependency>
                    <dependency>
                        <groupId>org.codehaus.groovy</groupId>
                        <artifactId>groovy-eclipse-batch</artifactId>
                        <version>2.1.5-03</version>
                    </dependency>
                </dependencies>
            </plugin>
            <plugin>
                <artifactId>maven-surefire-plugin</artifactId>
                <configuration>
                    <systemPropertyVariables>
                        <java.io.tmpdir>${project.build.directory}</java.io.tmpdir>
                    </systemPropertyVariables>
                </configuration>
                <version>2.7.1</version>
            </plugin>
            <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>cobertura-maven-plugin</artifactId>
                <version>2.5.1</version>
            </plugin>
            <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>emma-maven-plugin</artifactId>
                <version>1.0-alpha-3</version>
            </plugin>
        </plugins>
    </build>

    <profiles>
        <profile>
            <id>tomcat</id>
            <activation>
                <activeByDefault>false</activeByDefault>
            </activation>
            <dependencies>
                <dependency>
                    <groupId>javax.transaction</groupId>
                    <artifactId>jta</artifactId>
                    <version>1.1</version>
                    <scope>runtime</scope>
                </dependency>
            </dependencies>
            <build>
                <resources>
                    <resource>
                        <directory>src/main/resources</directory>
                    </resource>
                    <resource>
                        <directory>src/test/resources</directory>
                    </resource>
                </resources>
                <plugins>
                    <plugin>
                        <groupId>org.apache.tomcat.maven</groupId>
                        <artifactId>tomcat7-maven-plugin</artifactId>
                        <version>2.1</version>
                        <configuration>
                            <path>/</path>
                            <port>8080</port>
                        </configuration>
                    </plugin>
                </plugins>
            </build>
        </profile>
    </profiles>
</project>
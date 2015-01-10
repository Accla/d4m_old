
%DBinit: Set up path for D4M binding to databases.
%Database user function.
%  Usage:
%    DBinit
%  Inputs:
%
%  Outputs:
%    modifies java path

% Get directory that this file is in.
d4m_home = fileparts(fileparts(mfilename('fullpath')));


if 1

if ispc
fd = '';
else
fd = '/';
end

% USER: Add external files *NOT* included in LLONLY distribution.
% Find the files and put them in lib or change these
% entries to point to these files.

% ****  IMPORTANT NOTE ****
% If you will use accumulo, check that libthrift-0.6.1.jar is list before thrift-0.3.jar
% Vice versa, if you will use cloudbase, list thrift-0.3.jar before libthrift-0.6.1.jar.
if exist('OCTAVE_VERSION','builtin')
% Add files included in LLONLY distribution.
javaaddpath([d4m_home fd 'lib' fd 'd4m_api_java-2.6.0.jar']);

javaaddpath([d4m_home fd 'libext' fd 'accumulo-core-1.6.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'accumulo-fate-1.6.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'accumulo-start-1.6.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'accumulo-trace-1.6.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'activation-1.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'aopalliance-1.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'asm-3.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'avro-1.7.4.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-beanutils-1.7.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-beanutils-core-1.8.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-cli-1.2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-codec-1.4.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-collections-3.2.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-compress-1.4.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-configuration-1.6.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-digester-1.8.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-el-1.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-httpclient-3.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-io-2.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-lang-2.4.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-lang3-3.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-logging-1.1.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-math-2.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-math3-3.1.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-net-3.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'commons-vfs2-2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'gmbal-api-only-3.0.0-b023.jar']);
javaaddpath([d4m_home fd 'libext' fd 'grizzly-framework-2.1.2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'grizzly-http-2.1.2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'grizzly-http-server-2.1.2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'grizzly-http-servlet-2.1.2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'grizzly-rcm-2.1.2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'guava-14.0.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'guice-3.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'guice-servlet-3.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-annotations-2.3.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-auth-2.3.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-client-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-common-2.3.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-hdfs-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-mapreduce-client-app-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-mapreduce-client-common-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-mapreduce-client-core-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-mapreduce-client-jobclient-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-mapreduce-client-shuffle-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-yarn-api-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-yarn-client-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-yarn-common-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'hadoop-yarn-server-common-2.2.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'httpclient-4.1.2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'httpcore-4.1.2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jackson-core-asl-1.8.8.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jackson-jaxrs-1.8.3.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jackson-mapper-asl-1.8.8.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jackson-xc-1.8.3.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jasper-compiler-5.5.23.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jasper-runtime-5.5.23.jar']);
javaaddpath([d4m_home fd 'libext' fd 'javax.inject-1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'java-xmlbuilder-0.4.jar']);
javaaddpath([d4m_home fd 'libext' fd 'javax.servlet-3.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'javax.servlet-api-3.0.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jaxb-api-2.2.2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jaxb-impl-2.2.3-1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jcommander-1.32.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jersey-client-1.9.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jersey-core-1.9.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jersey-grizzly2-1.9.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jersey-guice-1.9.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jersey-json-1.9.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jersey-server-1.9.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jersey-test-framework-core-1.9.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jersey-test-framework-grizzly2-1.9.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jets3t-0.9.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jettison-1.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jetty-6.1.26.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jetty-util-6.1.26.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jline-2.11.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jsch-0.1.42.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jsp-api-2.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'jsr305-1.3.9.jar']);
javaaddpath([d4m_home fd 'libext' fd 'libthrift-0.9.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'log4j-1.2.16.jar']);
javaaddpath([d4m_home fd 'libext' fd 'management-api-3.0.0-b012.jar']);
javaaddpath([d4m_home fd 'libext' fd 'maven-scm-api-1.4.jar']);
javaaddpath([d4m_home fd 'libext' fd 'maven-scm-provider-svn-commons-1.4.jar']);
javaaddpath([d4m_home fd 'libext' fd 'maven-scm-provider-svnexe-1.4.jar']);
javaaddpath([d4m_home fd 'libext' fd 'netty-3.6.2.Final.jar']);
javaaddpath([d4m_home fd 'libext' fd 'org.json-chargebee-1.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'paranamer-2.3.jar']);
javaaddpath([d4m_home fd 'libext' fd 'plexus-utils-1.5.6.jar']);
javaaddpath([d4m_home fd 'libext' fd 'protobuf-java-2.5.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'regexp-1.3.jar']);
javaaddpath([d4m_home fd 'libext' fd 'servlet-api-2.5.jar']);
javaaddpath([d4m_home fd 'libext' fd 'slf4j-api-1.7.5.jar']);
javaaddpath([d4m_home fd 'libext' fd 'slf4j-log4j12-1.7.5.jar']);
javaaddpath([d4m_home fd 'libext' fd 'snappy-java-1.0.4.1.jar']);
javaaddpath([d4m_home fd 'libext' fd 'stax-api-1.0-2.jar']);
javaaddpath([d4m_home fd 'libext' fd 'xmlenc-0.52.jar']);
javaaddpath([d4m_home fd 'libext' fd 'xz-1.0.jar']);
javaaddpath([d4m_home fd 'libext' fd 'zookeeper-3.3.6.jar']);

else
% MATLAB one line version (faster than adding individually)
%Common jars
javaaddpath({ ...
[d4m_home fd 'lib' fd 'd4m_api_java-2.6.0.jar'] ...
, [d4m_home fd 'libext' fd 'accumulo-core-1.6.1.jar'] ...
, [d4m_home fd 'libext' fd 'accumulo-fate-1.6.1.jar'] ...
, [d4m_home fd 'libext' fd 'accumulo-start-1.6.1.jar'] ...
, [d4m_home fd 'libext' fd 'accumulo-trace-1.6.1.jar'] ...
, [d4m_home fd 'libext' fd 'activation-1.1.jar'] ...
, [d4m_home fd 'libext' fd 'aopalliance-1.0.jar'] ...
, [d4m_home fd 'libext' fd 'asm-3.1.jar'] ...
, [d4m_home fd 'libext' fd 'avro-1.7.4.jar'] ...
, [d4m_home fd 'libext' fd 'commons-beanutils-1.7.0.jar'] ...
, [d4m_home fd 'libext' fd 'commons-beanutils-core-1.8.0.jar'] ...
, [d4m_home fd 'libext' fd 'commons-cli-1.2.jar'] ...
, [d4m_home fd 'libext' fd 'commons-codec-1.4.jar'] ...
, [d4m_home fd 'libext' fd 'commons-collections-3.2.1.jar'] ...
, [d4m_home fd 'libext' fd 'commons-compress-1.4.1.jar'] ...
, [d4m_home fd 'libext' fd 'commons-configuration-1.6.jar'] ...
, [d4m_home fd 'libext' fd 'commons-digester-1.8.jar'] ...
, [d4m_home fd 'libext' fd 'commons-el-1.0.jar'] ...
, [d4m_home fd 'libext' fd 'commons-httpclient-3.1.jar'] ...
, [d4m_home fd 'libext' fd 'commons-io-2.1.jar'] ...
, [d4m_home fd 'libext' fd 'commons-lang-2.4.jar'] ...
, [d4m_home fd 'libext' fd 'commons-lang3-3.1.jar'] ...
, [d4m_home fd 'libext' fd 'commons-logging-1.1.1.jar'] ...
, [d4m_home fd 'libext' fd 'commons-math-2.1.jar'] ...
, [d4m_home fd 'libext' fd 'commons-math3-3.1.1.jar'] ...
, [d4m_home fd 'libext' fd 'commons-net-3.1.jar'] ...
, [d4m_home fd 'libext' fd 'commons-vfs2-2.0.jar'] ...
, [d4m_home fd 'libext' fd 'gmbal-api-only-3.0.0-b023.jar'] ...
, [d4m_home fd 'libext' fd 'grizzly-framework-2.1.2.jar'] ...
, [d4m_home fd 'libext' fd 'grizzly-http-2.1.2.jar'] ...
, [d4m_home fd 'libext' fd 'grizzly-http-server-2.1.2.jar'] ...
, [d4m_home fd 'libext' fd 'grizzly-http-servlet-2.1.2.jar'] ...
, [d4m_home fd 'libext' fd 'grizzly-rcm-2.1.2.jar'] ...
, [d4m_home fd 'libext' fd 'guava-14.0.1.jar'] ...
, [d4m_home fd 'libext' fd 'guice-3.0.jar'] ...
, [d4m_home fd 'libext' fd 'guice-servlet-3.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-annotations-2.3.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-auth-2.3.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-client-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-common-2.3.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-hdfs-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-mapreduce-client-app-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-mapreduce-client-common-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-mapreduce-client-core-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-mapreduce-client-jobclient-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-mapreduce-client-shuffle-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-yarn-api-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-yarn-client-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-yarn-common-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'hadoop-yarn-server-common-2.2.0.jar'] ...
, [d4m_home fd 'libext' fd 'httpclient-4.1.2.jar'] ...
, [d4m_home fd 'libext' fd 'httpcore-4.1.2.jar'] ...
, [d4m_home fd 'libext' fd 'jackson-core-asl-1.8.8.jar'] ...
, [d4m_home fd 'libext' fd 'jackson-jaxrs-1.8.3.jar'] ...
, [d4m_home fd 'libext' fd 'jackson-mapper-asl-1.8.8.jar'] ...
, [d4m_home fd 'libext' fd 'jackson-xc-1.8.3.jar'] ...
, [d4m_home fd 'libext' fd 'jasper-compiler-5.5.23.jar'] ...
, [d4m_home fd 'libext' fd 'jasper-runtime-5.5.23.jar'] ...
, [d4m_home fd 'libext' fd 'javax.inject-1.jar'] ...
, [d4m_home fd 'libext' fd 'java-xmlbuilder-0.4.jar'] ...
, [d4m_home fd 'libext' fd 'javax.servlet-3.1.jar'] ...
, [d4m_home fd 'libext' fd 'javax.servlet-api-3.0.1.jar'] ...
, [d4m_home fd 'libext' fd 'jaxb-api-2.2.2.jar'] ...
, [d4m_home fd 'libext' fd 'jaxb-impl-2.2.3-1.jar'] ...
, [d4m_home fd 'libext' fd 'jcommander-1.32.jar'] ...
, [d4m_home fd 'libext' fd 'jersey-client-1.9.jar'] ...
, [d4m_home fd 'libext' fd 'jersey-core-1.9.jar'] ...
, [d4m_home fd 'libext' fd 'jersey-grizzly2-1.9.jar'] ...
, [d4m_home fd 'libext' fd 'jersey-guice-1.9.jar'] ...
, [d4m_home fd 'libext' fd 'jersey-json-1.9.jar'] ...
, [d4m_home fd 'libext' fd 'jersey-server-1.9.jar'] ...
, [d4m_home fd 'libext' fd 'jersey-test-framework-core-1.9.jar'] ...
, [d4m_home fd 'libext' fd 'jersey-test-framework-grizzly2-1.9.jar'] ...
, [d4m_home fd 'libext' fd 'jets3t-0.9.0.jar'] ...
, [d4m_home fd 'libext' fd 'jettison-1.1.jar'] ...
, [d4m_home fd 'libext' fd 'jetty-6.1.26.jar'] ...
, [d4m_home fd 'libext' fd 'jetty-util-6.1.26.jar'] ...
, [d4m_home fd 'libext' fd 'jline-2.11.jar'] ...
, [d4m_home fd 'libext' fd 'jsch-0.1.42.jar'] ...
, [d4m_home fd 'libext' fd 'jsp-api-2.1.jar'] ...
, [d4m_home fd 'libext' fd 'jsr305-1.3.9.jar'] ...
, [d4m_home fd 'libext' fd 'libthrift-0.9.1.jar'] ...
, [d4m_home fd 'libext' fd 'log4j-1.2.16.jar'] ...
, [d4m_home fd 'libext' fd 'management-api-3.0.0-b012.jar'] ...
, [d4m_home fd 'libext' fd 'maven-scm-api-1.4.jar'] ...
, [d4m_home fd 'libext' fd 'maven-scm-provider-svn-commons-1.4.jar'] ...
, [d4m_home fd 'libext' fd 'maven-scm-provider-svnexe-1.4.jar'] ...
, [d4m_home fd 'libext' fd 'netty-3.6.2.Final.jar'] ...
, [d4m_home fd 'libext' fd 'org.json-chargebee-1.0.jar'] ...
, [d4m_home fd 'libext' fd 'paranamer-2.3.jar'] ...
, [d4m_home fd 'libext' fd 'plexus-utils-1.5.6.jar'] ...
, [d4m_home fd 'libext' fd 'protobuf-java-2.5.0.jar'] ...
, [d4m_home fd 'libext' fd 'regexp-1.3.jar'] ...
, [d4m_home fd 'libext' fd 'servlet-api-2.5.jar'] ...
, [d4m_home fd 'libext' fd 'slf4j-api-1.7.5.jar'] ...
, [d4m_home fd 'libext' fd 'slf4j-log4j12-1.7.5.jar'] ...
, [d4m_home fd 'libext' fd 'snappy-java-1.0.4.1.jar'] ...
, [d4m_home fd 'libext' fd 'stax-api-1.0-2.jar'] ...
, [d4m_home fd 'libext' fd 'xmlenc-0.52.jar'] ...
, [d4m_home fd 'libext' fd 'xz-1.0.jar'] ...
, [d4m_home fd 'libext' fd 'zookeeper-3.3.6.jar'] ...
});
end

clear d4m_home fd

end

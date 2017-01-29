
#############################################################################
    Steps to configure a PIG 0.13 single with Hadoop 2.4 
    Valid for local mode or mapreduced mode 
#############################################################################

 #Download PIG 0.13 

#1.) Download From mirror 
wget http://apache.mirrors.hoobly.com/pig/pig-0.13.0/pig-0.13.0.tar.gz

#2.) Copy and unzip
sudo cp -r pig-0.13.0.tar.gz /usr/local/pig

cd /usr/local/pig

#3.) Unpack
sudo tar xvzf pig-0.13.0.tar.gz

#5.) set PIG_HOME in $HOME/.bashrc so it will be set every time you login

echo "export PIG_HOME='/usr/local/pig/pig-0.13.0'" >> ~./bashrc

echo "export PATH=$HADOOP_HOME/bin:$PIG_HOME/bin:$JAVA_HOME/bin:$PATH" >> ~./bashrc

#6.) Execution Modes

#Pig has two modes of execution – local mode and MapReduce mode.

#6.a) Local Mode

#Local mode is usually used to verify and debug Pig queries and/or
#scripts on smaller datasets which a single machine could handle.
#It runs on a single JVM and access the local filesystem.

#To run in local mode, please pass the following command:
pig -x local 

#grunt>

#6.b) MapReduce Mode
#This is the default mode Pig translates the queries into
#MapReduce jobs, which requires access to a Hadoop cluster.

#$ pig

#You can see the log reports from Pig stating the filesystem and jobtracker it connected to.
#Grunt is an interactive shell for your Pig queries. You can run Pig programs in three ways
#via Script, Grunt, or embedding the script into Java code. Running in Interactive
#shell is shown in the Problem section. To run a batch of pig scripts, it is recommended
#to place them in a single file with .pig extension and execute them in batch mode,
#will explain them in depth in coming posts.

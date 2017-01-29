
######################################################################
   Steps to Install Apache Hive in a Hadoop 2.4 Single Node Cluster
######################################################################

#1. Download Apache Hive 0.13.1 stable version

mkdir -p /usr/local/hive
cd /usr/local/hive

wget http://apache.osuosl.org/hive/stable/apache-hive-0.13.1-bin.tar.gz

#2. uncompress 

tar xvzf apache-hive-0.13.1-bin.tar.gz

#3. Create a  hive  directory under usr/local directory as root user
# and change the ownership to hduser as shown, this is for our convenience
# to differentiate each framework,software and application with different users.

su - jpac
sudo mkdir hive
sudo chown -R hduser /usr/local/hive

4. Login as  hduser and move the uncompressed hive-0.12.0 to /usr/local/hive folder

sudo su hduser
#mv apache-hive-0.13.1-src /usr/local/hive

cd /usr/local/hive/apache-hive-0.13.1


#5. set HIVE_HOME in $HOME/.bashrc so it will be set every time you login.

echo "export HIVE_HOME=':/usr/local/hive/apache-hive-0.13.1-bin'" >> $HOME/.bashrc
echo "export PATH=$HADOOP_HOME/bin:$HIVE_HOME/bin:PATH" >> $HOME/.bashrc

#7. compile . bashrc
. $HOME/.bashrc

#8. Start hive by executing the following command.

hive 

#Logging initialized using configuration in jar:file:/usr/local/hive/apache-hives

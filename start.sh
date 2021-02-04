#Path to your minecraft server location.
cd /home/debian/speedrun
for (( ; ; ))
do
#Removing all already existing worlds. If you changed default level-name in server.properties just replace "world" with your custom level-name and remember to keep _nether and _the_end.
   echo removing worlds...
   rm -r world
   rm -r world_nether
   rm -r world_the_end

   echo worlds removed.
   echo starting Minecraft server.

#Here you can assign your minimum and maximum memory.(replacing the jar name by whatever you named the jar file).
   java -Xms1G -Xmx3G -jar Minecraft.jar
   
   sleep 10
   echo resuming server...
done

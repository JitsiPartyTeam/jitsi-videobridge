#!/bin/bash
echo Extract ./target/jitsi-videobridge-2.1-SNAPSHOT-archive.zip to docker-jitsi-meet-cfg/myjvb/.
pushd .
cd ../../docker-jitsi-meet-cfg
rm -rf myjvb
unzip ../jitsi-videobridge/jvb/target/jitsi-videobridge-2.1-SNAPSHOT-archive.zip
mv jitsi-videobridge-2.1-SNAPSHOT myjvb
echo このフォルダがdockerで動くjvb。debian/jitsi-videobridgeが上書きする。> myjvb/readme.txt
cp ../jitsi-videobridge/jvb/resources/jvb.sh ./myjvb/
rm -rf /c/users/hase/.jitsi-meet-cfg/myjvb
cp -a myjvb /c/users/hase/.jitsi-meet-cfg/
rm -rf /c/users/hase/.jitsi-meet-cfg2/myjvb
cp -a myjvb /c/users/hase/.jitsi-meet-cfg2/
popd

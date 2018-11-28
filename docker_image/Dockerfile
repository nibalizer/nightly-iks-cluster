
FROM alpine

RUN apk add wget \
            ca-certificates \
            bash \
            coreutils


ADD https://raw.githubusercontent.com/nibalizer/very_misc_scripts/master/install_or_upgrade_ibmcloud_cli.sh install_or_upgrade_ibmcloud_cli.sh 

RUN chmod +x install_or_upgrade_ibmcloud_cli.sh 

RUN ./install_or_upgrade_ibmcloud_cli.sh 

RUN echo 'export PATH=${PATH}:/root/local/bin/' >> ~/.bashrc

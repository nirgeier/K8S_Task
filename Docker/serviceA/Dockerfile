# The base image for our docker container
FROM    alpine

RUN     apk update && apk add curl 

COPY    *.sh .
RUN     chmod +x ./script.sh

CMD     ["sh","-c","./script.sh"]
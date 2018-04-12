
FROM alpine:latest

ENV CONFIG_JSON1={\"inbound\":{\"port\":
ENV CONFIG_JSON2=,\"protocol\":\"vmess\",\"settings\":{\"clients\":[{\"id\":\"
ENV CONFIG_JSON3=\",\"alterId\":100}]},\"streamSettings\":{\"network\":\"kcp\",\"kcpSettings\":{\"mtu\":1350,\"tti\":20,\"uplinkCapacity\":15,\"downlinkCapacity\":100,\"congestion\":false,\"readBufferSize\":1,\"writeBufferSize\":1,\"header\":{\"type\":\"none\"}}}},\"outbound\":{\"protocol\":\"freedom\",\"settings\":{}}}

RUN mkdir -m 777 /v2raybin 
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh

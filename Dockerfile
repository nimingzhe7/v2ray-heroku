
FROM alpine:latest

ENV CONFIG_JSON1={\"log\":{\"access\":\"\",\"error\":\"\",\"loglevel\":\"warning\"},\"inbound\":{\"protocol\":\"vmess\",\"port\": 
ENV CONFIG_JSON2=,\"settings\":{\"clients\":[{\"id\":\" 
ENV CONFIG_JSON3=\",\"alterId\":100}]},\"streamSettings\": {\"network\": \"kcp\",\"kcpSettings\": {\"uplinkCapacity\": 30,
ENV CONFIG_JSON4=\"downlinkCapacity\": 100,\"readBufferSize\": 2,\"mtu\": 1350,\"header\": {\"request\": null,\"type\": \"wechat-video\",
ENV CONFIG_JSON5=\"response\": null}},\"inboundDetour\":[],\"outbound\":{\"protocol\":\"freedom\",\"settings\":{}}} 

RUN mkdir -m 777 /v2raybin 
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh

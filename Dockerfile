
FROM alpine:latest

ENV CONFIG_JSON1={\"outbound\":{\"streamSettings\":null,\"tag\":null,\"protocol\":\"freedom\",\"mux\":null,\"settings\":null},\"outboundDetour\":[{\"tag\":\"blocked\",\"protocol\":\"blackhole\",\"settings\":null}],\"inbound\":{\"streamSettings\":{\"network\":\"kcp\",\"kcpSettings\":{\"uplinkCapacity\":100,\"downlinkCapacity\":100,\"readBufferSize\":2,\"mtu\":1350,\"header\":{\"request\":null,\"type\":\"none\",\"response\":null},\"tti\":50,\"congestion\":false,\"writeBufferSize\":2},\"wsSettings\":null,\"tcpSettings\":null,\"tlsSettings\":{},\"security\":\"\"},\"protocol\":\"vmess\",\"port\":
ENV CONFIG_JSON2=,\"listen\":null\"settings\":{\"ip\":null,\"udp\":true,\"clients\":[{\"alterId\":100,\"security\":\"aes-128-gcm\",\"id\":\"
ENV CONFIG_JSON3=\"}],\"auth\":null},},\"inboundDetour\":null,\"routing\":{\"settings\":{\"rules\":[{\"ip\":[\"0.0.0.0/8\",\"10.0.0.0/8\",\"100.64.0.0/10\",\"127.0.0.0/8\",\"169.254.0.0/16\",\"172.16.0.0/12\",\"192.0.0.0/24\",\"192.0.2.0/24\",\"192.168.0.0/16\",\"198.18.0.0/15\",\"198.51.100.0/24\",\"203.0.113.0/24\",\"::1/128\",\"fc00::/7\",\"fe80::/10\"],\"domain\":null,\"type\":\"field\",\"port\":null,\"outboundTag\":\"blocked\"}],\"domainStrategy\":null},\"strategy\":\"rules\"},\"dns\":null}

RUN mkdir -m 777 /v2raybin 
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh

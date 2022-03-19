# mar/19/2022 16:42:39 by RouterOS 6.47.1
# software id = EQSW-0I1L
#
# model = CCR1036-12G-4S
# serial number = 574F050811B8
/interface bridge
add fast-forward=no name="AP Sede"
add comment="{CGNat IXCSoft}" name=IXCCGNat11
add comment="{CGNat IXCSoft}" name=IXCCGNat12
add comment="{CGNat IXCSoft}" name=IXCCGNat13
add comment="{CGNat IXCSoft}" name=IXCCGNat14
add fast-forward=no mtu=1500 name=LOOPBACK protocol-mode=none
add name=LoCIDR
add name=br_mpdf_798
add name=br_mpdf_799
/interface ethernet
set [ find default-name=sfp1 ] advertise=\
    10M-half,10M-full,100M-half,100M-full,1000M-half,1000M-full l2mtu=1590 \
    mac-address=D4:CA:6D:E1:78:00 name=.S1..LAG-JUNOS rx-flow-control=auto \
    tx-flow-control=auto
set [ find default-name=sfp2 ] advertise=10M-full,100M-full,1000M-full l2mtu=\
    1590 mac-address=D4:CA:6D:E1:78:01 name=.S2..LAG-JUNOS rx-flow-control=\
    auto tx-flow-control=auto
set [ find default-name=sfp3 ] advertise=10M-full,100M-full,1000M-full \
    auto-negotiation=no l2mtu=1590 mac-address=D4:CA:6D:E1:78:02 name=\
    .S3_NEXUS-1/5 rx-flow-control=on tx-flow-control=on
set [ find default-name=sfp4 ] advertise=10M-full,100M-full,1000M-full l2mtu=\
    1590 mac-address=D4:CA:6D:E1:78:03 name=.S4_
set [ find default-name=ether1 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:04 \
    name=01_
set [ find default-name=ether2 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:05 \
    name=02_ speed=100Mbps
set [ find default-name=ether3 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:06 \
    name=03_Switch speed=100Mbps
set [ find default-name=ether4 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:07 \
    name=04_ rx-flow-control=auto tx-flow-control=auto
set [ find default-name=ether5 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:08 \
    name=05_ speed=100Mbps
set [ find default-name=ether6 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:09 \
    name=06_ speed=100Mbps
set [ find default-name=ether7 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:0A \
    name=07_BGP_7 speed=100Mbps
set [ find default-name=ether8 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:0B \
    name=08_ speed=100Mbps
set [ find default-name=ether9 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:0C \
    name=09_NVR speed=100Mbps
set [ find default-name=ether10 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:0D \
    name=10_Extreme01 speed=100Mbps
set [ find default-name=ether11 ] l2mtu=1590 mac-address=D4:CA:6D:E1:78:0E \
    name=11_Xen
set [ find default-name=ether12 ] advertise=\
    10M-half,10M-full,100M-half,100M-full,1000M-half,1000M-full l2mtu=1590 \
    mac-address=D4:CA:6D:E1:78:0F name=12_Xen
/interface eoip
add local-address=10.100.127.1 mac-address=02:78:D8:7C:E9:38 name=\
    eoip-MPDF_798 remote-address=10.100.127.2 tunnel-id=798
add local-address=10.100.126.1 mac-address=02:78:D8:7C:E9:38 name=\
    eoip-MPDF_799 remote-address=10.100.126.2 tunnel-id=799
/interface gre6
add local-address=2804:2b28::2 name=GambiMPDF remote-address=2804:9c0::10
add keepalive=5s local-address=2804:2b28::2 name=gre6-tunnel1 remote-address=\
    2804:22a0:41a:a000::2
/interface vlan
add interface=.S3_NEXUS-1/5 name=.4.3001_TMP_CLIENTES vlan-id=3001
add interface=.S3_NEXUS-1/5 name=.4.3500_GER2_OLT vlan-id=3500
add interface=.S3_NEXUS-1/5 name=.6.301_Chapadinha vlan-id=301
add interface=.S3_NEXUS-1/5 name=.10.999_Extreme01 vlan-id=999
add interface=10_Extreme01 name=.s1.112 vlan-id=112
add interface=.S3_NEXUS-1/5 name=2004-EVENTO vlan-id=2004
add interface=.S3_NEXUS-1/5 name=vlan2_Assentamento vlan-id=2
add interface=.S3_NEXUS-1/5 name=vlan4_nexus-mgmt vlan-id=4
add interface=.S3_NEXUS-1/5 name=vlan5_Rodeador vlan-id=5
add interface=.S3_NEXUS-1/5 name=vlan6.121-gerencia-extreme-vendinha vlan-id=\
    121
add interface=.S3_NEXUS-1/5 name=vlan6_Tradicional vlan-id=6
add interface=.S3_NEXUS-1/5 name=vlan7 vlan-id=7
add interface=.S3_NEXUS-1/5 name=vlan11_ACESSO_VILA_DAE vlan-id=11
add interface=.S3_NEXUS-1/5 name=vlan12_ACESSO_VILA_DMN vlan-id=12
add interface=.S3_NEXUS-1/5 name=vlan13_ACESSO_VILA_DPW vlan-id=13
add interface=.S3_NEXUS-1/5 name=vlan14_ACESSO_VILA_DCS vlan-id=14
add interface=.S3_NEXUS-1/5 name=vlan15_PRV vlan-id=15
add interface=.S3_NEXUS-1/5 name=vlan16_PadreLucio vlan-id=16
add interface=.S3_NEXUS-1/5 name=vlan17_Vila.i9 vlan-id=17
add interface=.S3_NEXUS-1/5 name=vlan19-PeLucio vlan-id=19
add interface=.S3_NEXUS-1/5 name=vlan20_CAM_Levi vlan-id=20
add comment=teste interface=.S3_NEXUS-1/5 name=vlan21 vlan-id=21
add interface=.S3_NEXUS-1/5 name=vlan24_DHCP.VILA vlan-id=24
add interface=.S3_NEXUS-1/5 name=vlan25-vila2sks vlan-id=25
add interface=.S3_NEXUS-1/5 name=vlan36_VT_Ger vlan-id=36
add interface=.S3_NEXUS-1/5 name=vlan51_gerencia_sw_ceilandia vlan-id=51
add interface=.S3_NEXUS-1/5 name=vlan52 vlan-id=52
add interface=.S3_NEXUS-1/5 name=vlan53_teste_DHCP_Eduardo vlan-id=53
add interface=.S3_NEXUS-1/5 name=vlan80_ClickBancoDoBrasil vlan-id=80
add interface=.S3_NEXUS-1/5 name=vlan99-Gerencia-Vila vlan-id=99
add interface=03_Switch name=vlan100-antenas-Sede vlan-id=100
add interface=.S3_NEXUS-1/5 name=vlan100_GeralAP vlan-id=100
add interface=.S3_NEXUS-1/5 name=vlan101-MonteAlto vlan-id=101
add interface=.S3_NEXUS-1/5 name=vlan102-ITB vlan-id=102
add interface=.S3_NEXUS-1/5 name=vlan104_Laura vlan-id=104
add interface=.S3_NEXUS-1/5 name=vlan107-monteAlto vlan-id=107
add interface=.S3_NEXUS-1/5 name=vlan110-MonteAlto-PTP-PRS vlan-id=110
add interface=.S3_NEXUS-1/5 name=vlan111-TRONCO_KELEN vlan-id=111
add interface=.S3_NEXUS-1/5 name=vlan115-incra6 vlan-id=115
add interface=.S3_NEXUS-1/5 name=vlan222_NE40V01 vlan-id=222
add interface=.S3_NEXUS-1/5 name=vlan250_EBC_ClickNet vlan-id=250
add interface=.S3_NEXUS-1/5 name=vlan251 vlan-id=251
add interface=.S3_NEXUS-1/5 name=vlan300_Kelen vlan-id=300
add interface=.S3_NEXUS-1/5 name=vlan302 vlan-id=302
add interface=.S3_NEXUS-1/5 name=vlan318-Evento vlan-id=318
add interface=.S3_NEXUS-1/5 name=vlan798 vlan-id=798
add interface=.S3_NEXUS-1/5 name=vlan799-MP vlan-id=799
add interface=.S3_NEXUS-1/5 name=vlan1000_PPPoE_Sede vlan-id=1000
add interface=.S3_NEXUS-1/5 name=vlan1001-gerencia-suedi vlan-id=1001
add interface=.S3_NEXUS-1/5 name=vlan1010-OLT-Vendinha vlan-id=1010
add interface=.S3_NEXUS-1/5 name=vlan1999_GerenciaOltCurralinho vlan-id=1999
add interface=.S3_NEXUS-1/5 name=vlan2000_Curralinho vlan-id=2000
add interface=.S3_NEXUS-1/5 name=vlan3002 vlan-id=3002
add interface=.S3_NEXUS-1/5 name=vlan3040_ger-olt-i8 vlan-id=3040
add interface=.S3_NEXUS-1/5 name=vlan3041_Incra8 vlan-id=3041
add interface=.S3_NEXUS-1/5 name=vlan3042_vendinha vlan-id=3042
add interface=.S3_NEXUS-1/5 name="vlan3043 Gerencia OLT Monte" vlan-id=3043
add interface=.S3_NEXUS-1/5 name=vlan3044-MonteRadioePPPoEFibra vlan-id=3044
add interface=.S3_NEXUS-1/5 name=vlan3045 vlan-id=3045
add interface=.S3_NEXUS-1/5 name=vlan3046 vlan-id=3046
add interface=.S3_NEXUS-1/5 name=vlan3047 vlan-id=3047
add interface=.S3_NEXUS-1/5 name=vlan3083 vlan-id=3083
add interface=.S3_NEXUS-1/5 name=vlan4001 vlan-id=4001
/interface bonding
add mode=802.3ad name=LAG-JUNOS slaves=.S1..LAG-JUNOS,.S2..LAG-JUNOS \
    transmit-hash-policy=layer-2-and-3
/interface vlan
add interface=LAG-JUNOS name=.0.1100-juniper vlan-id=1100
/interface list
add exclude=dynamic name=discover
add name=internet
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip ipsec proposal
set [ find default=yes ] enc-algorithms=3des
/ip pool
add name=empresas ranges=10.0.190.2-10.3.190.250
add name="Rede_Escrit\F3rio" ranges=192.168.147.2-192.168.147.126
add name=XEN ranges=172.16.111.50-172.16.111.254
add name=Vila ranges=192.168.101.20-192.168.101.254
add name="Casa Levi" ranges=10.192.168.2-10.192.168.254
add name=PicoRC ranges=192.168.147.130-192.168.147.254
add name=dhcp_pool94 ranges=10.15.0.2-10.15.0.6
add name=dhcp_pool1 ranges=10.192.168.2-10.192.168.254
add name=dhcp_pool2 ranges=172.17.211.2
add name=dhcp_pool3 ranges=172.24.100.2-172.24.100.254
add name=poolClientes ranges=192.168.120.0/21
add name=pool_aviso_atraso ranges=10.169.10.0/24
add name=pool_bloqueio ranges=10.169.50.0/24
add name=dhcp_pool111 ranges=192.168.141.2-192.168.141.254
add name=dhcp_pool112 ranges=10.192.192.2-10.192.192.254
add name=dhcp_pool113 ranges=10.143.0.2-10.143.0.6
add name=dhcp_pool114 ranges=192.168.3.80-192.168.3.253
add name=dhcp_pool115 ranges=192.168.166.2-192.168.166.254
add name=dhcp_pool116 ranges=192.168.200.2-192.168.200.254
add name=dhcp_pool117 ranges=172.16.10.2
add name=dhcp_pool118 ranges=172.16.2.42
add name=dhcp_pool119 ranges=143.208.75.22
add name=dhcp_pool120 ranges=143.208.75.19-143.208.75.22
add name=dhcp_pool121 ranges=172.16.10.2
add name=dhcp_pool122 ranges=192.168.14.2-192.168.14.254
add name=dhcp_pool123 ranges=10.180.180.2-10.180.180.254
add name=dhcp_pool124 ranges=10.180.181.2-10.180.181.254
add name=dhcp_pool125 ranges=10.13.79.62
add name=dhcp_pool126 ranges=10.200.199.2-10.200.199.254
add name=dhcp_pool127 ranges=10.169.67.6
add name=dhcp_pool128 ranges=10.177.15.2-10.177.15.126
/ip dhcp-server
add add-arp=yes address-pool="Rede_Escrit\F3rio" authoritative=\
    after-2sec-delay bootp-support=none disabled=no interface=10_Extreme01 \
    lease-time=5m name=dhcp_Fundos src-address=192.168.147.1
add address-pool=Vila authoritative=after-2sec-delay disabled=no interface=\
    vlan24_DHCP.VILA lease-time=3d name=dhcp_vila
add address-pool=dhcp_pool1 authoritative=after-2sec-delay disabled=no \
    interface=.s1.112 lease-time=3d name=dhcp1-levi
add address-pool=dhcp_pool3 authoritative=after-2sec-delay disabled=no \
    interface=11_Xen lease-time=3d name=Servidores
add address-pool=dhcp_pool113 interface=vlan318-Evento name=EventoBSB
add address-pool=dhcp_pool114 disabled=no interface=vlan21 name=davi
add address-pool=dhcp_pool115 disabled=no interface=vlan53_teste_DHCP_Eduardo \
    name=vlan53_Eduardo_i7
add address-pool=dhcp_pool118 interface=vlan1000_PPPoE_Sede name=dhcp1
add address-pool=dhcp_pool120 disabled=no interface=vlan251 name=dhcp3 relay=\
    143.208.75.21
add address-pool=dhcp_pool122 disabled=no interface=09_NVR name=NVR
add address-pool=dhcp_pool123 interface=.4.3001_TMP_CLIENTES name=vlan3001
add address-pool=dhcp_pool124 interface=vlan3041_Incra8 name=Incra8
add address-pool=dhcp_pool125 disabled=no interface=vlan104_Laura name=dhcp2
add address-pool=dhcp_pool127 interface=vlan19-PeLucio name=dhcp4
add address-pool=dhcp_pool128 disabled=no interface=vlan20_CAM_Levi name=\
    "cam chacara levi"
/ip pool
add name=Private_B next-pool=dhcp_pool94 ranges=192.168.70.0-192.168.79.254
add name=Private_A next-pool=Private_B ranges=192.168.80.1-192.168.89.254
add name="ASN 75" next-pool=Private_A ranges=143.208.75.64-143.208.75.223
add name=poolIXCCGNat next-pool=Private_A ranges=100.64.32.0/19
add name="ASN 74" next-pool="ASN 75" ranges=143.208.74.64-143.208.74.223
add name="ASN 73" next-pool="ASN 74" ranges=143.208.73.64-143.208.73.223
add name="ASN 72" next-pool="ASN 74" ranges=143.208.72.64-143.208.72.223
/ipv6 dhcp-server
add address-pool=pool1 interface=vlan21 lease-time=10m name=server1
/ipv6 pool
add name=pool1 prefix=2804:2b28:2000::/48 prefix-length=56
/port
set 0 baud-rate=9600
/ppp profile
set *FFFFFFFE address-list=VPN dns-server=8.8.8.8 local-address=172.16.5.1 \
    remote-address=Private_A
/queue simple
add disabled=yes max-limit=20M/20M name=queue1 target=192.168.147.35/32
add max-limit=100M/100M name=queue2 target=143.208.72.22/32
/queue type
set 0 kind=sfq
set 1 kind=sfq
set 8 kind=sfq
set 9 kind=sfq
/ppp profile
set *0 local-address=10.199.198.1 only-one=yes queue-type=wireless-default \
    remote-address=poolIXCCGNat use-compression=no use-encryption=no \
    use-ipv6=no use-mpls=no
/routing bgp instance
set default disabled=yes
/routing ospf area
add area-id=0.0.0.1 name=area1
/routing ospf instance
set [ find default=yes ] distribute-default=if-installed-as-type-1 \
    redistribute-connected=as-type-1 redistribute-static=as-type-1 router-id=\
    143.208.72.2
/routing ospf-v3 instance
set [ find default=yes ] redistribute-connected=as-type-1 \
    redistribute-static=as-type-1 router-id=143.208.72.2
/snmp community
set [ find default=yes ] addresses=172.16.0.0/12,143.208.72.0/22
/system logging action
set 0 target=remote
set 3 remote=172.16.115.2
/interface bridge port
add bridge="AP Sede" interface=vlan100-antenas-Sede
add bridge="AP Sede" interface=vlan100_GeralAP
add bridge=br_mpdf_798 interface=vlan798
add bridge=br_mpdf_798 interface=eoip-MPDF_798
add bridge=br_mpdf_799 interface=vlan799-MP
add bridge=br_mpdf_799 interface=eoip-MPDF_799
/interface bridge settings
set use-ip-firewall=yes use-ip-firewall-for-vlan=yes
/ip firewall connection tracking
set enabled=yes tcp-established-timeout=10m
/ip settings
set tcp-syncookies=yes
/ipv6 settings
set max-neighbor-entries=1024
/interface list member
add interface=.S1..LAG-JUNOS list=discover
add interface=.S2..LAG-JUNOS list=discover
add interface=.S3_NEXUS-1/5 list=discover
add interface=.S4_ list=discover
add interface=01_ list=discover
add interface=02_ list=discover
add interface=03_Switch list=discover
add interface=04_ list=discover
add interface=05_ list=discover
add interface=06_ list=discover
add interface=07_BGP_7 list=discover
add interface=08_ list=discover
add interface=09_NVR list=discover
add interface=10_Extreme01 list=discover
add interface=11_Xen list=discover
add interface=12_Xen list=discover
add interface=vlan15_PRV list=discover
add interface=vlan16_PadreLucio list=discover
add interface=vlan17_Vila.i9 list=discover
add interface=vlan24_DHCP.VILA list=discover
add list=discover
add interface=vlan11_ACESSO_VILA_DAE list=discover
add interface=vlan12_ACESSO_VILA_DMN list=discover
add interface=vlan13_ACESSO_VILA_DPW list=discover
add interface=vlan14_ACESSO_VILA_DCS list=discover
add interface=vlan20_CAM_Levi list=discover
add list=discover
add interface=.6.301_Chapadinha list=discover
add interface=vlan5_Rodeador list=discover
add interface=.10.999_Extreme01 list=discover
add disabled=yes interface=vlan100_GeralAP list=discover
add interface=.s1.112 list=discover
add interface=.4.3500_GER2_OLT list=discover
add interface=vlan6_Tradicional list=discover
add interface=vlan2_Assentamento list=discover
add interface=07_BGP_7 list=internet
add interface=vlan222_NE40V01 list=internet
add interface=.0.1100-juniper list=internet
/interface pppoe-server server
add interface=vlan1000_PPPoE_Sede pado-delay=800 service-name=service1
add interface=vlan3041_Incra8 pado-delay=800 service-name=service2
add interface=vlan3042_vendinha pado-delay=800 service-name=service3
add interface=vlan3002 pado-delay=800 service-name=service4
add interface=.4.3001_TMP_CLIENTES pado-delay=800 service-name=service5
add interface=.6.301_Chapadinha pado-delay=800 service-name=service6
add interface=vlan20_CAM_Levi pado-delay=800 service-name=service7
add interface=vlan4001 pado-delay=800 service-name=service8
add interface=vlan300_Kelen pado-delay=800 service-name=service9
add interface=vlan110-MonteAlto-PTP-PRS pado-delay=800 service-name=service10
add interface=vlan1001-gerencia-suedi pado-delay=800 service-name=service11
add interface=vlan11_ACESSO_VILA_DAE pado-delay=800 service-name=service12
add interface=vlan12_ACESSO_VILA_DMN pado-delay=800 service-name=service13
add interface=vlan13_ACESSO_VILA_DPW pado-delay=800 service-name=service14
add interface=vlan14_ACESSO_VILA_DCS pado-delay=800 service-name=service15
add interface=vlan16_PadreLucio pado-delay=800 service-name=service16
/interface pptp-server server
set keepalive-timeout=5
/interface sstp-server server
set default-profile=default-encryption enabled=yes
/ip accounting web-access
set accessible-via-web=yes
/ip address
add address=172.16.1.1 comment="ID Router OSPF" interface=LOOPBACK network=\
    172.16.1.1
add address=172.16.6.1/30 comment="Extreme 01" interface=.10.999_Extreme01 \
    network=172.16.6.0
add address=172.16.112.5/30 comment="ACESSO AO CIRCUITO JOELMA" interface=\
    10_Extreme01 network=172.16.112.4
add address=192.168.147.1/25 comment="Rede Computadores do Escrit\F3rio" \
    interface=10_Extreme01 network=192.168.147.0
add address=192.168.1.251/24 comment="Para configurar equipamentos" \
    interface=vlan19-PeLucio network=192.168.1.0
add address=192.168.2.251/24 comment="Para configurar equipamentos" \
    interface=vlan3044-MonteRadioePPPoEFibra network=192.168.2.0
add address=192.168.0.251/24 comment="Para configurar equipamentos" \
    interface=06_ network=192.168.0.0
add address=10.0.0.171/24 comment="Para configurar equipamentos" interface=\
    03_Switch network=10.0.0.0
add address=169.254.0.1/16 comment="Para configurar equipamentos" interface=\
    03_Switch network=169.254.0.0
add address=192.168.100.251/24 comment="Para configurar equipamentos" \
    interface=vlan3044-MonteRadioePPPoEFibra network=192.168.100.0
add address=172.16.15.1/30 comment=UNM2000 interface=12_Xen network=\
    172.16.15.0
add address=172.26.1.5/30 comment="ACESSO AOS PAINEIS DA VILA" interface=\
    vlan14_ACESSO_VILA_DCS network=172.26.1.4
add address=172.26.1.1/30 comment="ACESSO AOS PAINEIS DA VILA" interface=\
    vlan13_ACESSO_VILA_DPW network=172.26.1.0
add address=172.26.1.9/30 comment="ACESSO AOS PAINEIS DA VILA" interface=\
    vlan12_ACESSO_VILA_DMN network=172.26.1.8
add address=172.26.1.13/30 comment="ACESSO AOS PAINEIS DA VILA" interface=\
    vlan110-MonteAlto-PTP-PRS network=172.26.1.12
add address=172.16.3.29/30 comment="antena ap pra prv" interface=vlan15_PRV \
    network=172.16.3.28
add address=172.16.2.5/30 comment="ACESSO A ANTENAS CIRCUITO PADRE LUCIO" \
    interface=vlan16_PadreLucio network=172.16.2.4
add address=172.16.4.25/30 comment="enlace prv" interface=vlan15_PRV network=\
    172.16.4.24
add address=172.16.200.1/29 comment="ENLACE E ACESSO CIRCUITO PADRE LUCIO" \
    interface=vlan16_PadreLucio network=172.16.200.0
add address=172.16.4.33/30 comment="ACESSO AO RD DIGITEL DA TELEBRAS" \
    interface=12_Xen network=172.16.4.32
add address=172.16.4.41/30 comment="ACESSO AO RD DIGITEL DA TELEBRAS" \
    interface=12_Xen network=172.16.4.40
add address=172.16.15.5/30 comment=ANMS interface=12_Xen network=172.16.15.4
add address=172.16.16.1/29 comment="ENLACE E ACESSO AS ANTENAS ESCOLA I9" \
    interface=vlan17_Vila.i9 network=172.16.16.0
add address=172.16.4.45/30 comment="ACESSO AO RD DIGITEL DA TELEBRAS" \
    interface=12_Xen network=172.16.4.44
add address=192.168.101.1/24 comment="DHCP VILA" interface=vlan24_DHCP.VILA \
    network=192.168.101.0
add address=172.16.3.45/30 comment="acesso vila.sks" interface=\
    vlan25-vila2sks network=172.16.3.44
add address=172.16.2.73/30 comment="enlace pop levi" interface=10_Extreme01 \
    network=172.16.2.72
add address=172.16.9.17/28 comment="cameras acesso" interface=10_Extreme01 \
    network=172.16.9.16
add address=172.16.3.73/30 interface=vlan36_VT_Ger network=172.16.3.72
add address=172.16.6.65/30 comment="enlace vereda tropical" interface=\
    vlan104_Laura network=172.16.6.64
add address=143.208.72.2/30 comment="IP de Enlace com a BGP" interface=\
    07_BGP_7 network=143.208.72.0
add address=10.192.168.1/24 interface=.s1.112 network=10.192.168.0
add address=177.135.239.98/30 interface=.S4_ network=177.135.239.96
add address=172.16.9.49/28 comment="cameras acesso" interface=03_Switch \
    network=172.16.9.48
add address=172.21.2.1/30 comment="EMS OLT" interface=.4.3500_GER2_OLT \
    network=172.21.2.0
add address=172.22.1.1/30 comment="VOIP 0800 SIP" interface=03_Switch \
    network=172.22.1.0
add address=172.22.1.9/30 comment="condominio da m\E3o da emily" interface=\
    vlan13_ACESSO_VILA_DPW network=172.22.1.8
add address=143.208.72.21/30 comment="IXC ERP" interface=12_Xen network=\
    143.208.72.20
add address=172.24.1.2/30 comment=Dude interface=11_Xen network=172.24.1.0
add address=172.16.2.97/30 comment="RB Chapadinha" interface=\
    .6.301_Chapadinha network=172.16.2.96
add address=172.16.2.53/30 comment=CRS interface=.S3_NEXUS-1/5 network=\
    172.16.2.52
add address=172.16.7.29/30 comment=Rodeador interface=vlan5_Rodeador network=\
    172.16.7.28
add address=172.16.31.13/30 comment="Enlace Incra 9" interface=vlan17_Vila.i9 \
    network=172.16.31.12
add address=172.27.1.17/30 interface=10_Extreme01 network=172.27.1.16
add address=172.16.6.53/30 interface=vlan100_GeralAP network=172.16.6.52
add address=172.16.6.57/30 interface=vlan100_GeralAP network=172.16.6.56
add address=172.16.6.33/30 comment="antena sede" interface=03_Switch network=\
    172.16.6.32
add address=172.16.6.37/30 comment="antena sede" interface=03_Switch network=\
    172.16.6.36
add address=172.16.6.45/30 comment="antena sede" interface=03_Switch network=\
    172.16.6.44
add address=192.168.11.2/30 interface=03_Switch network=192.168.11.0
add address=192.168.10.1/25 comment=Equipamentos interface=03_Switch network=\
    192.168.10.0
add address=172.22.1.5/30 interface=11_Xen network=172.22.1.4
add address=172.16.33.1/30 comment=Speedtest interface=11_Xen network=\
    172.16.33.0
add address=172.16.6.73/30 comment="Enlace Tradicional" interface=\
    vlan6_Tradicional network=172.16.6.72
add address=143.208.72.60 interface=LOOPBACK network=143.208.72.60
add address=172.18.1.1/30 comment="Enlace Assentamento" interface=\
    vlan2_Assentamento network=172.18.1.0
add address=143.208.72.61 interface=LOOPBACK network=143.208.72.61
add address=172.17.211.1/30 comment="vm guacamole" interface=12_Xen network=\
    172.17.211.0
add address=172.16.4.73/30 interface=11_Xen network=172.16.4.72
add address=172.24.100.1/24 interface=11_Xen network=172.24.100.0
add address=172.24.200.2/30 comment=FreeBRS interface=12_Xen network=\
    172.24.200.0
add address=172.24.201.1/30 comment=FreeBRS interface=12_Xen network=\
    172.24.201.0
add address=172.25.10.5/30 comment="2011 vendinha" interface=.S3_NEXUS-1/5 \
    network=172.25.10.4
add address=172.24.203.1/30 interface=11_Xen network=172.24.203.0
add address=172.24.110.1/30 comment=DNS interface=12_Xen network=172.24.110.0
add address=172.23.1.2 interface=LOOPBACK network=172.23.1.2
add address=172.16.4.85/30 interface=06_ network=172.16.4.84
add address=10.176.231.1/24 interface=10_Extreme01 network=10.176.231.0
add address=10.169.1.14/30 interface=.S3_NEXUS-1/5 network=10.169.1.12
add address=10.255.200.2/30 comment="enlace cgn junos" interface=\
    .0.1100-juniper network=10.255.200.0
add address=172.16.12.1/30 interface=vlan115-incra6 network=172.16.12.0
add address=172.16.2.41/30 comment="antena Suedi" interface=\
    vlan1000_PPPoE_Sede network=172.16.2.40
add address=172.17.1.1/30 comment="enlace ouro Verde, mudar a vlan" \
    interface=vlan101-MonteAlto network=172.17.1.0
add address=172.27.1.9/30 comment=extreme-sw-vendinha interface=\
    vlan6.121-gerencia-extreme-vendinha network=172.27.1.8
add address=172.16.7.13/30 comment=RB_SW_ptp_PRS interface=\
    vlan110-MonteAlto-PTP-PRS network=172.16.7.12
add address=10.170.177.1/30 interface=01_ network=10.170.177.0
add address=172.16.25.5/30 interface=10_Extreme01 network=172.16.25.4
add address=172.16.9.65/28 comment="cameras acesso" interface=.s1.112 \
    network=172.16.9.64
add address=10.201.100.1/30 interface=vlan99-Gerencia-Vila network=\
    10.201.100.0
add address=192.168.88.2/24 disabled=yes interface=vlan798 network=\
    192.168.88.0
add address=10.169.1.25/30 comment="Alcatel MGMT - via vlan4" interface=\
    .S3_NEXUS-1/5 network=10.169.1.24
add address=143.208.72.59 interface=LOOPBACK network=143.208.72.59
add address=143.208.72.57 comment=speedtest interface=LOOPBACK network=\
    143.208.72.57
add address=10.168.169.1/30 comment="OLT Incra8 Enlace" interface=\
    vlan3040_ger-olt-i8 network=10.168.169.0
add address=10.169.1.17/30 comment="Ubnt RC p\E1tio" interface=.S3_NEXUS-1/5 \
    network=10.169.1.16
add address=10.13.79.1/30 comment="acesso antena vereda tropical tmp" \
    interface=vlan36_VT_Ger network=10.13.79.0
add address=172.21.1.1/30 comment="Ger OLT Vendinha" interface=\
    vlan1010-OLT-Vendinha network=172.21.1.0
add address=10.177.15.1/25 comment="Cameras Chacara Levi" interface=\
    vlan20_CAM_Levi network=10.177.15.0
add address=10.169.120.1/30 interface=.S3_NEXUS-1/5 network=10.169.120.0
add address=10.169.1.5/30 comment="acesso sw ubnt optica patio" interface=\
    .S3_NEXUS-1/5 network=10.169.1.4
add address=172.16.17.1/30 interface=vlan17_Vila.i9 network=172.16.17.0
add address=172.16.112.21/30 interface=vlan17_Vila.i9 network=172.16.112.20
add address=172.16.112.9/30 interface=vlan17_Vila.i9 network=172.16.112.8
add address=10.143.0.1/29 interface=vlan318-Evento network=10.143.0.0
add address=10.13.79.9/30 interface=vlan104_Laura network=10.13.79.8
add address=10.13.79.13/30 interface=vlan104_Laura network=10.13.79.12
add address=10.13.79.17/30 interface=vlan104_Laura network=10.13.79.16
add address=10.169.1.21/30 comment=crs-iNCRA8 interface=.S3_NEXUS-1/5 \
    network=10.169.1.20
add address=10.168.168.5/30 interface=vlan3041_Incra8 network=10.168.168.4
add address=10.169.66.1/30 comment="CRS 317 vendinha" interface=\
    vlan6.121-gerencia-extreme-vendinha network=10.169.66.0
add address=192.168.3.254/24 interface=vlan21 network=192.168.3.0
add address=10.4.79.9/30 comment="CRS Ouro Verde" interface=.S3_NEXUS-1/5 \
    network=10.4.79.8
add address=172.23.30.1/30 comment="Edge Ouro Verde" interface=\
    vlan101-MonteAlto network=172.23.30.0
add address=172.27.1.25/30 comment="SW Davi Nunes" interface=.S3_NEXUS-1/5 \
    network=172.27.1.24
add address=172.16.8.21/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    172.16.8.20
add address=10.4.79.13/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.4.79.12
add address=10.4.79.17/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.4.79.16
add address=10.4.79.5/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.4.79.4
add address=10.4.79.21/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.4.79.20
add address=172.16.3.25/30 comment="rb monte alto" interface=vlan19-PeLucio \
    network=172.16.3.24
add address=10.4.79.1/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.4.79.0
add address=172.21.3.1/30 interface="vlan3043 Gerencia OLT Monte" network=\
    172.21.3.0
add address=10.169.66.5/30 comment="Ger RB/OLT Monte" interface=\
    "vlan3043 Gerencia OLT Monte" network=10.169.66.4
add address=10.5.79.13/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.5.79.12
add address=10.5.79.17/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.5.79.16
add address=10.5.79.21/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.5.79.20
add address=10.5.79.9/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.5.79.8
add address=10.5.79.5/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.5.79.4
add address=10.5.79.29/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.5.79.28
add address=10.5.79.1/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.5.79.0
add address=172.17.55.5/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    172.17.55.4
add address=10.15.79.5/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.15.79.4
add address=172.20.22.1/30 interface=vlan104_Laura network=172.20.22.0
add address=10.6.79.1/30 interface=vlan104_Laura network=10.6.79.0
add address=10.88.10.1/30 comment="Escola Bucanh\E3o" interface=\
    vlan110-MonteAlto-PTP-PRS network=10.88.10.0
add address=172.16.2.25/30 interface=vlan19-PeLucio network=172.16.2.24
add address=172.16.7.9/30 interface=vlan19-PeLucio network=172.16.7.8
add address=172.16.73.1/29 interface=vlan12_ACESSO_VILA_DMN network=\
    172.16.73.0
add address=172.16.77.1/29 interface=vlan19-PeLucio network=172.16.77.0
add address=10.169.1.9/30 comment="Sw Ceilandia" interface=\
    vlan51_gerencia_sw_ceilandia network=10.169.1.8
add address=192.168.166.1/24 interface=vlan53_teste_DHCP_Eduardo network=\
    192.168.166.0
add address=10.169.1.29/30 interface=vlan51_gerencia_sw_ceilandia network=\
    10.169.1.28
add address=192.168.211.1/24 interface=vlan1000_PPPoE_Sede network=\
    192.168.211.0
add address=10.180.183.1/30 comment="Monitor de energia Curralinho" \
    interface=vlan2000_Curralinho network=10.180.183.0
add address=10.5.79.25/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.5.79.24
add address=172.16.9.33/30 interface=10_Extreme01 network=172.16.9.32
add address=10.13.79.65/30 interface=vlan104_Laura network=10.13.79.64
add address=172.16.3.49/30 comment="acesso vila.sks" interface=\
    vlan25-vila2sks network=172.16.3.48
add address=172.19.1.1/30 interface=vlan25-vila2sks network=172.19.1.0
add address=172.16.9.1/28 comment="cameras acesso" interface=10_Extreme01 \
    network=172.16.9.0
add address=10.169.66.9/30 interface=vlan3045 network=10.169.66.8
add address=172.16.74.5/30 comment="antena na radiobras" interface=\
    vlan19-PeLucio network=172.16.74.4
add address=172.16.74.9/30 comment="antena na radiobras" interface=\
    vlan12_ACESSO_VILA_DMN network=172.16.74.8
add address=143.208.72.28 comment=ITB interface=LOOPBACK network=\
    143.208.72.28
add address=172.27.1.13/30 comment=EdgeSwitch interface=vlan19-PeLucio \
    network=172.27.1.12
add address=172.16.17.17/30 interface=vlan300_Kelen network=172.16.17.16
add address=172.17.20.9/30 interface=vlan300_Kelen network=172.17.20.8
add address=172.17.20.21/30 interface=vlan300_Kelen network=172.17.20.20
add address=172.16.102.1/30 interface=vlan300_Kelen network=172.16.102.0
add address=172.17.20.13/30 interface=vlan300_Kelen network=172.17.20.12
add address=10.15.79.1/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.15.79.0
add address=172.16.2.105/30 comment="ONU Suedi" interface=vlan1000_PPPoE_Sede \
    network=172.16.2.104
add address=10.112.113.2/30 interface=06_ network=10.112.113.0
add address=172.28.5.1/30 interface=vlan3041_Incra8 network=172.28.5.0
add address=10.177.177.1/30 interface=vlan21 network=10.177.177.0
add address=10.5.79.33/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.5.79.32
add address=10.4.79.37/30 interface=vlan110-MonteAlto-PTP-PRS network=\
    10.4.79.36
add address=172.16.2.1/30 interface=.6.301_Chapadinha network=172.16.2.0
add address=172.16.4.49/30 interface=.6.301_Chapadinha network=172.16.4.48
add address=172.16.4.61/30 interface=.6.301_Chapadinha network=172.16.4.60
add address=172.16.4.57/30 interface=.6.301_Chapadinha network=172.16.4.56
add address=172.16.4.53/30 interface=.6.301_Chapadinha network=172.16.4.52
add address=172.16.19.9/30 interface=.6.301_Chapadinha network=172.16.19.8
add address=172.16.4.69/30 interface=.6.301_Chapadinha network=172.16.4.68
add address=172.16.19.1/30 interface=.6.301_Chapadinha network=172.16.19.0
add address=172.16.19.13/30 interface=.6.301_Chapadinha network=172.16.19.12
add address=10.10.192.9/24 interface=.S3_NEXUS-1/5 network=10.10.192.0
add address=172.30.25.13/30 interface=.S3_NEXUS-1/5 network=172.30.25.12
add address=10.13.79.5/30 interface=vlan104_Laura network=10.13.79.4
add address=143.208.72.40 comment=ITB interface=LOOPBACK network=\
    143.208.72.40
add address=172.16.4.81/30 interface=vlan25-vila2sks network=172.16.4.80
add address=172.16.3.53/30 interface=vlan25-vila2sks network=172.16.3.52
add address=172.16.3.77/30 interface=vlan25-vila2sks network=172.16.3.76
add address=172.24.4.1/30 comment="Gerencia OLT Epon8" interface=\
    vlan5_Rodeador network=172.24.4.0
add address=10.13.79.61/30 comment="antena na tropical aponta para a Teresa" \
    interface=vlan104_Laura network=10.13.79.60
add address=192.168.70.1/24 interface=vlan1000_PPPoE_Sede network=\
    192.168.70.0
add address=172.16.7.37/30 comment="Gerencia OLT Epon2 portas" interface=\
    .4.3001_TMP_CLIENTES network=172.16.7.36
add address=172.16.7.33/30 comment="Gerencia OLT Epon4 Portas" interface=\
    vlan5_Rodeador network=172.16.7.32
add address=10.169.66.13/30 interface=vlan3045 network=10.169.66.12
add address=172.16.169.1/30 interface=vlan19-PeLucio network=172.16.169.0
add address=143.208.75.18/29 comment="Servidores com ip publico" interface=\
    vlan251 network=143.208.75.16
add address=10.169.2.1/30 interface=vlan5_Rodeador network=10.169.2.0
add address=10.169.2.5/30 comment="Gerencia RB Cicero" interface=\
    vlan5_Rodeador network=10.169.2.4
add address=172.16.7.25/30 comment="Acesso a Switch no Rodeador" interface=\
    .4.3001_TMP_CLIENTES network=172.16.7.24
add address=172.16.7.41/30 interface=vlan5_Rodeador network=172.16.7.40
add address=172.16.13.17/30 comment="Acesso a Switch no Rodeador" interface=\
    .4.3001_TMP_CLIENTES network=172.16.13.16
add address=172.16.13.21/30 comment="Acesso a Switch no Rodeador" interface=\
    .4.3001_TMP_CLIENTES network=172.16.13.20
add address=192.168.14.1/24 interface=09_NVR network=192.168.14.0
add address=172.24.202.1/30 comment=ISABEL interface=11_Xen network=\
    172.24.202.0
add address=172.24.209.1 interface=gre6-tunnel1 network=143.208.73.41
add address=172.16.7.5/30 comment="RB Pura e Leve" interface=vlan3046 \
    network=172.16.7.4
add address=172.16.2.45/30 comment="Antena na Pura e Leve" interface=vlan3046 \
    network=172.16.2.44
add address=172.16.100.1/30 comment="Antena na Pura e Leve" interface=\
    vlan3046 network=172.16.100.0
add address=172.16.6.77/30 comment="Antena na Pura e Leve" interface=vlan3046 \
    network=172.16.6.76
add address=172.16.74.1/30 comment="Antena na Pura e Leve" interface=vlan3046 \
    network=172.16.74.0
add address=172.24.202.5/30 interface=10_Extreme01 network=172.24.202.4
add address=10.169.67.1/30 comment="OLT PeLucio" interface=vlan3047 network=\
    10.169.67.0
add address=10.1.79.1/30 interface=vlan51_gerencia_sw_ceilandia network=\
    10.1.79.0
add address=10.61.61.1/30 interface=vlan222_NE40V01 network=10.61.61.0
add address=10.3.249.1/30 comment="Monitoramento POP Vendinha Energia" \
    interface=vlan3042_vendinha network=10.3.249.0
add address=10.180.180.1/30 interface=.4.3001_TMP_CLIENTES network=\
    10.180.180.0
add address=10.180.181.1/30 comment="Monitor de energia Incra 8" interface=\
    vlan3041_Incra8 network=10.180.181.0
add address=172.31.0.5/30 interface=vlan1999_GerenciaOltCurralinho network=\
    172.31.0.4
add address=172.16.7.17/30 comment=Rocket_SW_ptp_PRS interface=\
    vlan110-MonteAlto-PTP-PRS network=172.16.7.16
add address=10.13.79.21/30 comment="Antena em Almecegas" interface=\
    vlan2000_Curralinho network=10.13.79.20
add address=169.254.38.246/24 interface=vlan104_Laura network=169.254.38.0
add address=10.13.79.69/30 interface=vlan104_Laura network=10.13.79.68
add address=10.169.66.17/30 interface=.S3_NEXUS-1/5 network=10.169.66.16
add address=10.2.79.2/30 interface=vlan51_gerencia_sw_ceilandia network=\
    10.2.79.0
add address=10.1.79.2/30 interface=vlan51_gerencia_sw_ceilandia network=\
    10.1.79.0
add address=10.3.79.2/30 interface=vlan51_gerencia_sw_ceilandia network=\
    10.3.79.0
add address=172.16.7.21/30 comment="AP Teresa-Monte" interface=\
    vlan3044-MonteRadioePPPoEFibra network=172.16.7.20
add address=172.24.111.1/30 interface=vlan7 network=172.24.111.0
add address=172.16.203.1/30 interface=vlan19-PeLucio network=172.16.203.0
add address=172.16.203.5/30 interface=vlan19-PeLucio network=172.16.203.4
add address=172.16.203.9/30 interface=vlan19-PeLucio network=172.16.203.8
add address=172.16.200.1/30 interface=vlan19-PeLucio network=172.16.200.0
add address=172.16.201.1/30 interface=vlan19-PeLucio network=172.16.201.0
add address=172.16.10.21/30 interface=vlan19-PeLucio network=172.16.10.20
add address=172.16.2.34/30 interface=vlan19-PeLucio network=172.16.2.32
add address=172.16.2.5/30 interface=vlan19-PeLucio network=172.16.2.4
add address=172.16.17.13/30 interface=vlan19-PeLucio network=172.16.17.12
add address=172.16.2.101/30 interface=vlan19-PeLucio network=172.16.2.100
add address=10.111.99.1 interface=vlan250_EBC_ClickNet network=143.208.72.36
add address=143.208.72.2 interface=LOOPBACK network=143.208.72.2
add address=10.34.86.105/24 disabled=yes interface=vlan799-MP network=\
    10.34.86.0
add address=10.100.127.1/30 interface=GambiMPDF network=10.100.127.0
add address=10.100.126.1/30 interface=GambiMPDF network=10.100.126.0
add address=10.34.249.80/24 disabled=yes interface=vlan798 network=\
    10.34.249.0
add address=10.200.199.1/24 interface=vlan16_PadreLucio network=10.200.199.0
add address=10.169.67.5/30 comment="NVR Chacara Levi" interface=\
    vlan19-PeLucio network=10.169.67.4
add address=10.34.249.85/30 disabled=yes interface=vlan798 network=\
    10.34.249.84
add address=10.69.69.1/30 comment="Monitoramento do MPDF pelo lado da acesso" \
    interface=vlan798 network=10.69.69.0
/ip cloud
set ddns-enabled=yes
/ip dhcp-server lease
add address=192.168.147.77 always-broadcast=yes client-id=1:0:7:25:27:f4:3 \
    comment=Bematech mac-address=00:07:25:27:F4:03 server=dhcp_Fundos
add address=192.168.147.51 client-id=1:0:1b:a9:ba:d9:5e mac-address=\
    00:1B:A9:BA:D9:5E server=dhcp_Fundos
add address=192.168.147.41 always-broadcast=yes client-id=1:16:94:58:6:a8:f7 \
    mac-address=16:94:58:06:A8:F7 server=dhcp_Fundos
add address=192.168.147.46 client-id=1:84:25:19:1d:82:da comment=impressora \
    mac-address=84:25:19:1D:82:DA server=dhcp_Fundos
add address=192.168.147.58 client-id=1:e6:5b:88:52:d2:2c comment=BlueIris \
    mac-address=E6:5B:88:52:D2:2C server=dhcp_Fundos
add address=172.24.100.15 mac-address=92:74:6F:9D:19:10 server=Servidores
add address=192.168.147.105 client-id=1:0:1b:a9:a7:6e:2b mac-address=\
    00:1B:A9:A7:6E:2B server=dhcp_Fundos
add address=192.168.147.85 client-id=1:0:3:ea:18:d5:9c mac-address=\
    00:03:EA:18:D5:9C server=dhcp_Fundos
add address=10.192.168.4 client-id=1:58:3:fb:c2:f7:32 comment=NVR \
    mac-address=58:03:FB:C2:F7:32 server=dhcp1-levi
/ip dhcp-server network
add address=10.13.79.60/30 gateway=10.13.79.61
add address=10.15.0.0/29 gateway=10.15.0.1
add address=10.143.0.0/29 gateway=10.143.0.1
add address=10.169.67.4/30 gateway=10.169.67.5
add address=10.177.15.0/25 gateway=10.177.15.1
add address=10.180.180.0/24 gateway=10.180.180.1
add address=10.180.181.0/24 gateway=10.180.181.1
add address=10.192.168.0/24 gateway=10.192.168.1
add address=10.192.192.0/24 gateway=10.192.192.1
add address=10.200.199.0/24 gateway=10.200.199.1
add address=143.208.75.16/29 gateway=143.208.75.17
add address=172.16.2.40/30 dns-server=192.168.0.1 gateway=172.16.2.41
add address=172.16.10.0/30 gateway=172.16.10.1
add address=172.16.111.0/24 gateway=172.16.111.1
add address=172.17.211.0/30 gateway=172.17.211.1
add address=172.24.100.0/24 gateway=172.24.100.1
add address=192.168.3.0/24 gateway=192.168.3.254
add address=192.168.14.0/24 gateway=192.168.14.1
add address=192.168.25.0/24 gateway=192.168.25.2
add address=192.168.50.0/24 gateway=192.168.50.254
add address=192.168.95.0/29 gateway=192.168.95.1
add address=192.168.101.0/24 gateway=192.168.101.1
add address=192.168.147.0/25 gateway=192.168.147.1 ntp-server=\
    200.192.232.8,200.160.0.8
add address=192.168.147.128/25 gateway=192.168.147.129
add address=192.168.166.0/24 gateway=192.168.166.1
add address=192.168.172.0/29 gateway=192.168.172.1
add address=192.168.200.0/24 gateway=192.168.200.1
/ip dns
set cache-size=2048000KiB servers=8.8.8.8,8.8.4.4
/ip dns static
add address=172.16.1.1 disabled=yes name=concentrador type=A
/ip firewall address-list
add address=172.16.0.0/12 list="Rede Interna"
add address=10.0.0.0/8 list="Rede Interna"
add address=192.168.0.0/16 list="Rede Interna"
add address=172.16.2.76/30 comment="modem pace gvt 50" list=Equipamentos
add address=192.168.2.0/24 comment=antenas list=Equipamentos
add address=192.168.1.0/24 comment=antenas list=Equipamentos
add address=192.168.25.1 comment="modem gvt" list=Equipamentos
add address=192.168.50.1 comment="modem sagemcom gvt" list=Equipamentos
add address=172.16.2.90 comment="modem pace levi" list=Equipamentos
add address=192.168.0.0/24 comment="roteadores configurar" list=Equipamentos
add address=10.0.0.0/24 comment="roteadores configurar" list=Equipamentos
add address=169.254.0.0/16 comment="roteadores configurar" list=Equipamentos
add address=177.92.208.0/20 list=BRADESCO_AS28586
add address=200.155.80.0/20 list=BRADESCO_AS28586
add address=192.168.79.254 list=Equipamentos
add address=172.16.25.6 list=Equipamentos
add address=192.168.129.0/24 list=Equipamentos
add address=192.168.88.1 list=Equipamentos
add address=172.16.6.0/30 comment="Extreme 01" list=Equipamentos
add address=172.16.2.78 list=Equipamentos
add address=143.208.72.0/22 list="Rede Interna"
add address=192.168.3.0/24 list=SemBloqueio
add address=143.208.72.0/22 list=SemBloqueio
add address=172.16.111.0/24 list=SemBloqueio
add address=172.24.1.1 list=SemBloqueio
add address=172.16.15.0/24 list=SemBloqueio
add address=172.16.12.2 list=SemBloqueio
add address=172.16.9.34 list=SemBloqueio
add address=192.168.147.0/24 list=SemBloqueio
add address=192.168.147.110 comment=Impressora list=Equipamentos
add address=192.168.11.0/30 list=Equipamentos
add address=172.24.1.1 list=Equipamentos
add address=143.208.72.30 list=SemBloqueio
add address=192.168.10.0/24 list=Equipamentos
add address=192.168.147.22 disabled=yes list=Equipamentos
add address=10.169.77.0/30 comment="Sw 10G Radiobraz" list=Equipamentos
add address=172.16.33.2 list=SemBloqueio
add address=192.168.147.83 comment=zm list=SemBloqueio
add address=192.168.153.0/26 comment="Rafael Estagiario" list=SemBloqueio
add address=172.24.1.6 comment="Zoneminder Davi" list=SemBloqueio
add address=192.168.155.200 list=SemBloqueio
add address=143.208.73.2 list=SemBloqueio
add address=10.10.100.20 list=Equipamentos
add address=143.208.74.14 list=SemBloqueio
add address=143.208.73.12 comment="alessandra okubo" list=SemBloqueio
add address=143.208.73.30 comment=nat_fruit list=SemBloqueio
add address=143.208.74.33 comment=diego_vaz list=SemBloqueio
add address=172.16.25.10 comment="Digitel TechTell" list=Equipamentos
add address=143.208.74.32 comment=Techtell list=SemBloqueio
add address=143.208.74.36 comment=Juarez list=SemBloqueio
add address=143.208.72.62 comment=davi list=SemBloqueio
add address=172.17.220.0/24 comment=DD-WRT list=Equipamentos
add address=10.133.44.0/22 comment=PMB list=Equipamentos
add address=172.24.100.0/24 list=SemBloqueio
add address=172.24.200.1 comment=DNS list=SemBloqueio
add address=192.168.119.1 list=SemBloqueio
add address=172.21.2.2 comment=OLT disabled=yes list=Equipamentos
add address=172.24.100.0/24 list=Login
add address=172.24.1.1 list=Login
add address=192.168.147.0/24 list=Login
add address=172.16.0.0/12 list=Login
add address=192.168.3.0/24 list=Login
add address=192.168.119.2 list=SemBloqueio
add address=172.24.2.1 list=SemBloqueio
add address=172.28.1.0/30 list=SemBloqueio
add address=10.255.0.1 comment="Juniper Ethernet" disabled=yes list=\
    Equipamentos
add address=143.208.72.22 comment="IXCProvedor endereco IP do sistema" list=\
    rede_local
add address=172.27.1.10 comment="extreme vendinha" list=Equipamentos
add address=172.20.100.0/30 comment="techtell temporario remover" disabled=\
    yes list=Equipamentos
add address=192.168.20.0/23 comment=Junos list=PoolsBloqueio
add address=10.169.0.0/16 list=PoolsBloqueio
add address=10.169.1.18 disabled=yes list=Equipamentos
add address=10.169.1.26 comment="ALCATEL TMP" list=Equipamentos
add address=172.16.255.255 list=Equipamentos
add address=10.169.120.2 list=Equipamentos
add address=10.169.1.6 list=Equipamentos
add address=172.21.2.2 list=OLT
add address=10.168.169.2 list=OLT
add address=172.21.1.2 list=OLT
add address=172.17.1.5 list=Equipamentos
add address=172.16.15.2 list=OLT
add address=172.21.3.2 list=OLT
add address=10.133.44.1 list=Equipamentos
add address=192.168.211.1 list=Equipamentos
add address=192.168.3.100 list=Equipamentos
add address=10.255.200.1 list=Equipamentos
add address=172.24.100.2 list=Equipamentos
add address=10.13.79.58 list=Equipamentos
add address=172.24.100.7 list=Equipamentos
add address=10.177.177.2 disabled=yes list=Equipamentos
add address=10.4.79.38 list=Equipamentos
add address=172.16.200.6 list=Equipamentos
add address=10.13.79.6 list=SemBloqueio
add address=10.5.79.42 list=Equipamentos
add address=10.5.79.38 list=Equipamentos
add address=100.64.41.155 list=SemBloqueio
add address=100.64.35.54 list=Equipamentos
add address=10.169.2.2 list=Equipamentos
add address=10.169.1.2 list=SemBloqueio
add address=10.169.2.6 list=SemBloqueio
add address=172.16.7.42 list=Equipamentos
add address=100.64.42.208 list=SemBloqueio
add address=172.24.202.2 list=SemBloqueio
add address=192.168.147.0/24 list=VOIP
add address=143.208.73.41 list=VOIP
add address=10.61.61.2 disabled=yes list=Equipamentos
add address=10.166.0.0/16 comment=PMB list=Equipamentos
add address=10.13.79.70 list=Equipamentos
add address=172.16.7.22 list=Equipamentos
add address=172.16.33.2 list=Equipamentos
add address=100.64.63.0 list=SemBloqueio
add address=10.255.200.1 list=SemBloqueio
add address=10.169.67.6 list=Equipamentos
/ip firewall filter
add action=accept chain=forward comment=ISSABEL disabled=yes dst-address=\
    172.24.202.2
add action=accept chain=forward comment=ISSABEL disabled=yes src-address=\
    172.24.202.2
add action=accept chain=input disabled=yes log=yes log-prefix=OSPF protocol=\
    ospf
add action=add-src-to-address-list address-list=blocked-addr \
    address-list-timeout=1d chain=input comment="==== Prote\E7\E3o DDoS ====" \
    connection-limit=10,32 disabled=yes protocol=tcp
add action=add-src-to-address-list address-list=Suspeitas \
    address-list-timeout=10h chain=forward disabled=yes dst-address-list=\
    "Rede Interna" src-address-list="Rede Interna"
add action=tarpit chain=input connection-limit=5,32 disabled=yes protocol=tcp \
    src-address-list=blocked-addr
add action=jump chain=forward comment="SYN Flood protect" connection-state=\
    new disabled=yes jump-target=SYN-Protect protocol=tcp tcp-flags=syn
add action=fasttrack-connection chain=forward disabled=yes src-address=\
    143.208.72.0/22
add action=accept chain=input comment="Aceitar 1 ping por segundo" disabled=\
    yes icmp-options=8:0-255 limit=2,5:packet protocol=icmp
add action=reject chain=input comment="Ping muito grande" disabled=yes \
    icmp-options=8:0-255 packet-size=1529-65535 protocol=icmp reject-with=\
    icmp-admin-prohibited
add action=accept chain=forward comment=\
    "Permita Passagem na porta 53 UDP para a lista Bloqueio!" disabled=yes \
    dst-port=53 protocol=udp
add action=accept chain=forward comment=\
    "Permita da Sem Bloqueio para Rede Interna" disabled=yes \
    dst-address-list="Rede Interna" src-address-list=SemBloqueio
add action=accept chain=forward comment=\
    "Permita da Rede interna para Sem Bloqueio" disabled=yes \
    dst-address-list=SemBloqueio src-address-list="Rede Interna"
add action=accept chain=forward comment="Permita passagem se originar da lista\
    \_Bloqueio com destino a lista SemBloqueio!" disabled=yes \
    dst-address-list=SemBloqueio src-address-list=Bloqueio
add action=drop chain=forward comment="Nega Forward entre equipamentos" \
    disabled=yes dst-address-list="Rede Interna" log-prefix=INTERNO \
    src-address-list="Rede Interna"
add action=accept chain=SYN-Protect connection-state=new disabled=yes limit=\
    0,5:packet protocol=tcp tcp-flags=syn
add action=drop chain=SYN-Protect connection-state=new disabled=yes protocol=\
    tcp tcp-flags=syn
add action=drop chain=forward comment="IXCProvedor regra de aviso bloqueio" \
    disabled=yes dst-address=!143.208.72.22 protocol=tcp src-address-list=\
    PoolsBloqueio
add action=drop chain=forward comment="IXCProvedor regra de aviso bloqueio" \
    disabled=yes dst-address=!143.208.72.22 protocol=tcp src-address-list=\
    aviso_bloqueio
add action=drop chain=forward comment="IXCProvedor regra de aviso bloqueio" \
    disabled=yes dst-port=!53 protocol=udp src-address-list=PoolsBloqueio
add action=drop chain=forward comment="IXCProvedor regra de aviso bloqueio" \
    disabled=yes dst-port=!53 protocol=udp src-address-list=aviso_bloqueio
add action=add-dst-to-address-list address-list=Netflix address-list-timeout=\
    3h chain=forward content=nflxvideo.net disabled=yes
/ip firewall mangle
add action=mark-routing chain=prerouting disabled=yes new-routing-mark=\
    Escritorio passthrough=yes src-address=192.168.147.0/24
/ip firewall nat
add action=accept chain=srcnat comment="IXC NAT" dst-address=143.208.72.22 \
    to-addresses=143.208.72.22
add action=accept chain=srcnat comment=ISSABEL dst-address=172.24.202.2 \
    src-address-list=VOIP to-addresses=143.208.72.22
add action=accept chain=srcnat comment=ISSABEL dst-address-list=VOIP \
    src-address=172.24.202.2 to-addresses=143.208.72.22
add action=accept chain=srcnat comment="IXC NAT" src-address=143.208.72.0/22 \
    to-addresses=143.208.72.22
add action=accept chain=srcnat comment="IXC NAT" dst-address-list=OLT \
    to-addresses=143.208.72.22
add action=redirect chain=dstnat dst-address=143.208.72.2 dst-port=8291 \
    protocol=tcp src-address=172.24.1.1 to-ports=1091
add action=masquerade chain=srcnat comment=\
    "Acessar Equipamentos Monitorados ou Roteadores" dst-address-list=\
    Equipamentos
add action=passthrough chain=CFTV
add action=dst-nat chain=dstnat comment=" c\E2mera garagem Levi" dst-address=\
    143.208.72.2 dst-port=6611 protocol=tcp to-addresses=192.168.2.1 \
    to-ports=8291
add action=dst-nat chain=dstnat comment=HIK dst-address=143.208.72.61 \
    dst-port=8000,554,80,443 protocol=tcp to-addresses=192.168.14.2
add action=dst-nat chain=dstnat comment=PRTG dst-address=143.208.72.60 \
    dst-port=443 protocol=tcp to-addresses=172.24.100.4
add action=dst-nat chain=dstnat comment=GUACAMOLE dst-address=143.208.72.60 \
    dst-port=9443 protocol=tcp to-addresses=192.168.1.20 to-ports=443
add action=dst-nat chain=dstnat comment=GUACAMOLE dst-address=143.208.72.60 \
    dst-port=5900 protocol=tcp to-addresses=192.168.147.123
add action=dst-nat chain=dstnat comment=NOBREAK dst-address=143.208.72.60 \
    dst-port=5912 protocol=tcp to-addresses=192.168.147.85 to-ports=80
add action=dst-nat chain=dstnat comment="Speedtest\?" dst-address=\
    143.208.72.57 dst-port=80,443,8080,8090,5060,8081,8443 protocol=tcp \
    to-addresses=172.16.33.2
add action=masquerade chain=srcnat comment=EVE-DAVI disabled=yes dst-address=\
    10.255.200.1 src-address=170.247.114.64
add action=dst-nat chain=dstnat comment=EVE-DAVI dst-address=143.208.72.61 \
    dst-port=2231 protocol=tcp to-addresses=10.255.200.1 to-ports=22
add action=dst-nat chain=dstnat comment=PRTG dst-address=143.208.72.60 \
    dst-port=443 protocol=tcp to-addresses=172.24.100.4 to-ports=443
add action=dst-nat chain=dstnat comment=EVE-DAVI dst-address=143.208.72.61 \
    dst-port=2232 protocol=tcp to-addresses=172.24.100.6 to-ports=22
add action=dst-nat chain=dstnat comment=EVE-DAVI dst-address=143.208.72.61 \
    dst-port=9000 protocol=tcp to-addresses=172.24.100.6
add action=dst-nat chain=dstnat comment=EVE-DAVI disabled=yes dst-address=\
    143.208.72.61 dst-port=900 protocol=tcp to-addresses=169.254.38.245 \
    to-ports=80
add action=dst-nat chain=dstnat comment=EVE-DAVI disabled=yes dst-address=\
    143.208.72.59 protocol=tcp to-addresses=10.13.79.58
add action=dst-nat chain=dstnat comment=EVE-DAVI dst-address=143.208.72.61 \
    dst-port=9200 protocol=tcp to-addresses=172.24.100.5
add action=dst-nat chain=dstnat comment=EVE-DAVI dst-address=143.208.72.61 \
    dst-port=63389 protocol=tcp to-addresses=172.16.15.2 to-ports=3389
add action=dst-nat chain=dstnat comment=PRTG dst-address=143.208.72.61 \
    dst-port=3479,1091 protocol=tcp to-addresses=172.24.100.11
add action=dst-nat chain=dstnat comment=ISSABEL dst-address=143.208.72.61 \
    dst-port=6443 protocol=tcp src-address=168.205.252.254 to-addresses=\
    172.24.202.2 to-ports=443
add action=dst-nat chain=dstnat comment="Cameras Chacara" dst-address=\
    143.208.72.61 dst-port=6967 protocol=tcp to-addresses=10.169.67.6 \
    to-ports=8000
add action=dst-nat chain=dstnat comment=Cameras dst-address=143.208.72.61 \
    dst-port=6969 protocol=tcp to-addresses=192.168.14.2 to-ports=80
add action=dst-nat chain=dstnat comment="Cameras Garagem" dst-address=\
    143.208.72.61 dst-port=6968 protocol=tcp to-addresses=10.192.168.4 \
    to-ports=8000
add action=dst-nat chain=dstnat comment=ISSABEL dst-address=143.208.72.61 \
    dst-port=6622 protocol=tcp to-addresses=172.24.202.2 to-ports=22
add action=dst-nat chain=dstnat comment=ISSABEL dst-address=143.208.72.61 \
    dst-port=5060 protocol=udp to-addresses=172.24.202.2
add action=dst-nat chain=dstnat comment="Camera Davi" dst-address=\
    143.208.72.60 dst-port=80 protocol=tcp to-addresses=172.24.100.2 \
    to-ports=81
add action=dst-nat chain=dstnat comment=NFSEN dst-address=143.208.72.60 \
    dst-port=81 protocol=tcp to-addresses=172.24.100.10 to-ports=80
add action=dst-nat chain=dstnat comment="Camera RC" dst-address=143.208.72.60 \
    dst-port=8080 protocol=tcp to-addresses=192.168.147.98 to-ports=80
add action=dst-nat chain=dstnat comment="Camera RC" dst-address=143.208.72.60 \
    dst-port=8081 protocol=tcp to-addresses=172.24.100.24 to-ports=80
add action=dst-nat chain=dstnat comment="Camera RC" dst-address=143.208.72.60 \
    dst-port=8082 protocol=tcp to-addresses=172.24.100.23 to-ports=80
add action=dst-nat chain=dstnat comment="Camera RC" dst-address=143.208.72.60 \
    dst-port=8083 protocol=tcp to-addresses=172.24.100.5 to-ports=80
add action=dst-nat chain=dstnat comment="IXCProvedor regra de aviso bloqueio" \
    dst-address=!143.208.72.22 dst-port=80 protocol=tcp src-address-list=\
    PoolsBloqueio to-addresses=143.208.72.22 to-ports=8082
add action=dst-nat chain=dstnat comment="IXCProvedor regra de aviso bloqueio" \
    dst-address=!143.208.72.22 dst-port=80 protocol=tcp src-address-list=\
    aviso_bloqueio to-addresses=143.208.72.22 to-ports=8082
add action=dst-nat chain=dstnat comment=\
    "IXCProvedor regra de aviso atraso src-address=10.169.10.0/24" \
    dst-address=!143.208.72.22 dst-port=80 protocol=tcp src-address-list=\
    PoolsBloqueio to-addresses=143.208.72.22 to-ports=8083
add action=dst-nat chain=dstnat comment=\
    "IXCProvedor regra de aviso atraso address-list=atraso" dst-address=\
    !143.208.72.22 dst-port=80 protocol=tcp src-address-list=aviso_atraso \
    to-addresses=143.208.72.22 to-ports=8083
add action=dst-nat chain=dstnat comment="IXCProvedor regra de aviso atraso" \
    dst-address=!143.208.72.22 dst-port=80 protocol=tcp src-address-list=\
    PoolsBloqueio to-addresses=143.208.72.22 to-ports=8083
add action=dst-nat chain=dstnat comment="IXCProvedor regra de aviso atraso" \
    dst-address=!143.208.72.22 dst-port=80 protocol=tcp src-address-list=\
    aviso_atraso to-addresses=143.208.72.22 to-ports=8083
add action=src-nat chain=srcnat dst-address-list=!rede_local src-address=\
    10.13.79.4/30 to-addresses=143.208.72.40
add action=dst-nat chain=dstnat dst-address=143.208.72.40 dst-address-list=\
    !rede_local to-addresses=10.13.79.6
add action=src-nat chain=srcnat src-address=192.168.3.0/24 to-addresses=\
    143.208.72.60
add action=src-nat chain=srcnat comment=itb disabled=yes src-address=\
    192.168.200.0/24 to-addresses=143.208.72.28
add action=src-nat chain=srcnat comment=itb disabled=yes src-address=\
    192.168.201.0/24 to-addresses=143.208.72.28
add action=jump chain=srcnat comment="{CGNat IXCSoft}" dst-address-list=\
    !rede_local jump-target=srcIXCCGNat out-interface=07_BGP_7 src-address=\
    100.64.0.0/10
add action=jump chain=srcIXCCGNat comment="{CGNat IXCSoft}" jump-target=\
    srcIXCCGNat-100.64.32.0-19 src-address=100.64.32.0/19
add action=jump chain=srcIXCCGNat-100.64.32.0-19 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.32.0-20 src-address=100.64.32.0/20
add action=jump chain=srcIXCCGNat-100.64.32.0-20 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.32.0-21 src-address=100.64.32.0/21
add action=jump chain=srcIXCCGNat-100.64.32.0-21 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.32.0-22 src-address=100.64.32.0/22
add action=jump chain=srcIXCCGNat-100.64.32.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.32.0-23 src-address=100.64.32.0/23
add action=jump chain=srcIXCCGNat-100.64.32.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.32.0-24 src-address=100.64.32.0/24
add action=netmap chain=srcIXCCGNat-100.64.32.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.32.0/25 to-addresses=143.208.72.128/25 \
    to-ports=1500-2499
add action=netmap chain=srcIXCCGNat-100.64.32.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.32.128/25 to-addresses=143.208.72.128/25 \
    to-ports=2500-3499
add action=jump chain=srcIXCCGNat-100.64.32.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.33.0-24 src-address=100.64.33.0/24
add action=netmap chain=srcIXCCGNat-100.64.33.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.33.0/25 to-addresses=143.208.72.128/25 \
    to-ports=3500-4499
add action=netmap chain=srcIXCCGNat-100.64.33.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.33.128/25 to-addresses=143.208.72.128/25 \
    to-ports=4500-5499
add action=jump chain=srcIXCCGNat-100.64.32.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.34.0-23 src-address=100.64.34.0/23
add action=jump chain=srcIXCCGNat-100.64.34.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.34.0-24 src-address=100.64.34.0/24
add action=netmap chain=srcIXCCGNat-100.64.34.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.34.0/25 to-addresses=143.208.72.128/25 \
    to-ports=5500-6499
add action=netmap chain=srcIXCCGNat-100.64.34.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.34.128/25 to-addresses=143.208.72.128/25 \
    to-ports=6500-7499
add action=jump chain=srcIXCCGNat-100.64.34.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.35.0-24 src-address=100.64.35.0/24
add action=netmap chain=srcIXCCGNat-100.64.35.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.35.0/25 to-addresses=143.208.72.128/25 \
    to-ports=7500-8499
add action=netmap chain=srcIXCCGNat-100.64.35.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.35.128/25 to-addresses=143.208.72.128/25 \
    to-ports=8500-9499
add action=jump chain=srcIXCCGNat-100.64.32.0-21 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.36.0-22 src-address=100.64.36.0/22
add action=jump chain=srcIXCCGNat-100.64.36.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.36.0-23 src-address=100.64.36.0/23
add action=jump chain=srcIXCCGNat-100.64.36.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.36.0-24 src-address=100.64.36.0/24
add action=netmap chain=srcIXCCGNat-100.64.36.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.36.0/25 to-addresses=143.208.72.128/25 \
    to-ports=9500-10499
add action=netmap chain=srcIXCCGNat-100.64.36.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.36.128/25 to-addresses=143.208.72.128/25 \
    to-ports=10500-11499
add action=jump chain=srcIXCCGNat-100.64.36.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.37.0-24 src-address=100.64.37.0/24
add action=netmap chain=srcIXCCGNat-100.64.37.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.37.0/25 to-addresses=143.208.72.128/25 \
    to-ports=11500-12499
add action=netmap chain=srcIXCCGNat-100.64.37.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.37.128/25 to-addresses=143.208.72.128/25 \
    to-ports=12500-13499
add action=jump chain=srcIXCCGNat-100.64.36.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.38.0-23 src-address=100.64.38.0/23
add action=jump chain=srcIXCCGNat-100.64.38.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.38.0-24 src-address=100.64.38.0/24
add action=netmap chain=srcIXCCGNat-100.64.38.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.38.0/25 to-addresses=143.208.72.128/25 \
    to-ports=13500-14499
add action=netmap chain=srcIXCCGNat-100.64.38.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.38.128/25 to-addresses=143.208.72.128/25 \
    to-ports=14500-15499
add action=jump chain=srcIXCCGNat-100.64.38.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.39.0-24 src-address=100.64.39.0/24
add action=netmap chain=srcIXCCGNat-100.64.39.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.39.0/25 to-addresses=143.208.72.128/25 \
    to-ports=15500-16499
add action=netmap chain=srcIXCCGNat-100.64.39.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.39.128/25 to-addresses=143.208.72.128/25 \
    to-ports=16500-17499
add action=jump chain=srcIXCCGNat-100.64.32.0-20 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.40.0-21 src-address=100.64.40.0/21
add action=jump chain=srcIXCCGNat-100.64.40.0-21 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.40.0-22 src-address=100.64.40.0/22
add action=jump chain=srcIXCCGNat-100.64.40.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.40.0-23 src-address=100.64.40.0/23
add action=jump chain=srcIXCCGNat-100.64.40.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.40.0-24 src-address=100.64.40.0/24
add action=netmap chain=srcIXCCGNat-100.64.40.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.40.0/25 to-addresses=143.208.72.128/25 \
    to-ports=17500-18499
add action=netmap chain=srcIXCCGNat-100.64.40.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.40.128/25 to-addresses=143.208.72.128/25 \
    to-ports=18500-19499
add action=jump chain=srcIXCCGNat-100.64.40.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.41.0-24 src-address=100.64.41.0/24
add action=netmap chain=srcIXCCGNat-100.64.41.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.41.0/25 to-addresses=143.208.72.128/25 \
    to-ports=19500-20499
add action=netmap chain=srcIXCCGNat-100.64.41.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.41.128/25 to-addresses=143.208.72.128/25 \
    to-ports=20500-21499
add action=jump chain=srcIXCCGNat-100.64.40.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.42.0-23 src-address=100.64.42.0/23
add action=jump chain=srcIXCCGNat-100.64.42.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.42.0-24 src-address=100.64.42.0/24
add action=netmap chain=srcIXCCGNat-100.64.42.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.42.0/25 to-addresses=143.208.72.128/25 \
    to-ports=21500-22499
add action=netmap chain=srcIXCCGNat-100.64.42.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.42.128/25 to-addresses=143.208.72.128/25 \
    to-ports=22500-23499
add action=jump chain=srcIXCCGNat-100.64.42.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.43.0-24 src-address=100.64.43.0/24
add action=netmap chain=srcIXCCGNat-100.64.43.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.43.0/25 to-addresses=143.208.72.128/25 \
    to-ports=23500-24499
add action=netmap chain=srcIXCCGNat-100.64.43.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.43.128/25 to-addresses=143.208.72.128/25 \
    to-ports=24500-25499
add action=jump chain=srcIXCCGNat-100.64.40.0-21 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.44.0-22 src-address=100.64.44.0/22
add action=jump chain=srcIXCCGNat-100.64.44.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.44.0-23 src-address=100.64.44.0/23
add action=jump chain=srcIXCCGNat-100.64.44.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.44.0-24 src-address=100.64.44.0/24
add action=netmap chain=srcIXCCGNat-100.64.44.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.44.0/25 to-addresses=143.208.72.128/25 \
    to-ports=25500-26499
add action=netmap chain=srcIXCCGNat-100.64.44.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.44.128/25 to-addresses=143.208.72.128/25 \
    to-ports=26500-27499
add action=jump chain=srcIXCCGNat-100.64.44.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.45.0-24 src-address=100.64.45.0/24
add action=netmap chain=srcIXCCGNat-100.64.45.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.45.0/25 to-addresses=143.208.72.128/25 \
    to-ports=27500-28499
add action=netmap chain=srcIXCCGNat-100.64.45.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.45.128/25 to-addresses=143.208.72.128/25 \
    to-ports=28500-29499
add action=jump chain=srcIXCCGNat-100.64.44.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.46.0-23 src-address=100.64.46.0/23
add action=jump chain=srcIXCCGNat-100.64.46.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.46.0-24 src-address=100.64.46.0/24
add action=netmap chain=srcIXCCGNat-100.64.46.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.46.0/25 to-addresses=143.208.72.128/25 \
    to-ports=29500-30499
add action=netmap chain=srcIXCCGNat-100.64.46.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.46.128/25 to-addresses=143.208.72.128/25 \
    to-ports=30500-31499
add action=jump chain=srcIXCCGNat-100.64.46.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.47.0-24 src-address=100.64.47.0/24
add action=netmap chain=srcIXCCGNat-100.64.47.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.47.0/25 to-addresses=143.208.72.128/25 \
    to-ports=31500-32499
add action=netmap chain=srcIXCCGNat-100.64.47.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.47.128/25 to-addresses=143.208.72.128/25 \
    to-ports=32500-33499
add action=jump chain=srcIXCCGNat-100.64.32.0-19 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.48.0-20 src-address=100.64.48.0/20
add action=jump chain=srcIXCCGNat-100.64.48.0-20 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.48.0-21 src-address=100.64.48.0/21
add action=jump chain=srcIXCCGNat-100.64.48.0-21 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.48.0-22 src-address=100.64.48.0/22
add action=jump chain=srcIXCCGNat-100.64.48.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.48.0-23 src-address=100.64.48.0/23
add action=jump chain=srcIXCCGNat-100.64.48.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.48.0-24 src-address=100.64.48.0/24
add action=netmap chain=srcIXCCGNat-100.64.48.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.48.0/25 to-addresses=143.208.72.128/25 \
    to-ports=33500-34499
add action=netmap chain=srcIXCCGNat-100.64.48.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.48.128/25 to-addresses=143.208.72.128/25 \
    to-ports=34500-35499
add action=jump chain=srcIXCCGNat-100.64.48.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.49.0-24 src-address=100.64.49.0/24
add action=netmap chain=srcIXCCGNat-100.64.49.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.49.0/25 to-addresses=143.208.72.128/25 \
    to-ports=35500-36499
add action=netmap chain=srcIXCCGNat-100.64.49.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.49.128/25 to-addresses=143.208.72.128/25 \
    to-ports=36500-37499
add action=jump chain=srcIXCCGNat-100.64.48.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.50.0-23 src-address=100.64.50.0/23
add action=jump chain=srcIXCCGNat-100.64.50.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.50.0-24 src-address=100.64.50.0/24
add action=netmap chain=srcIXCCGNat-100.64.50.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.50.0/25 to-addresses=143.208.72.128/25 \
    to-ports=37500-38499
add action=netmap chain=srcIXCCGNat-100.64.50.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.50.128/25 to-addresses=143.208.72.128/25 \
    to-ports=38500-39499
add action=jump chain=srcIXCCGNat-100.64.50.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.51.0-24 src-address=100.64.51.0/24
add action=netmap chain=srcIXCCGNat-100.64.51.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.51.0/25 to-addresses=143.208.72.128/25 \
    to-ports=39500-40499
add action=netmap chain=srcIXCCGNat-100.64.51.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.51.128/25 to-addresses=143.208.72.128/25 \
    to-ports=40500-41499
add action=jump chain=srcIXCCGNat-100.64.48.0-21 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.52.0-22 src-address=100.64.52.0/22
add action=jump chain=srcIXCCGNat-100.64.52.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.52.0-23 src-address=100.64.52.0/23
add action=jump chain=srcIXCCGNat-100.64.52.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.52.0-24 src-address=100.64.52.0/24
add action=netmap chain=srcIXCCGNat-100.64.52.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.52.0/25 to-addresses=143.208.72.128/25 \
    to-ports=41500-42499
add action=netmap chain=srcIXCCGNat-100.64.52.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.52.128/25 to-addresses=143.208.72.128/25 \
    to-ports=42500-43499
add action=jump chain=srcIXCCGNat-100.64.52.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.53.0-24 src-address=100.64.53.0/24
add action=netmap chain=srcIXCCGNat-100.64.53.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.53.0/25 to-addresses=143.208.72.128/25 \
    to-ports=43500-44499
add action=netmap chain=srcIXCCGNat-100.64.53.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.53.128/25 to-addresses=143.208.72.128/25 \
    to-ports=44500-45499
add action=jump chain=srcIXCCGNat-100.64.52.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.54.0-23 src-address=100.64.54.0/23
add action=jump chain=srcIXCCGNat-100.64.54.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.54.0-24 src-address=100.64.54.0/24
add action=netmap chain=srcIXCCGNat-100.64.54.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.54.0/25 to-addresses=143.208.72.128/25 \
    to-ports=45500-46499
add action=netmap chain=srcIXCCGNat-100.64.54.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.54.128/25 to-addresses=143.208.72.128/25 \
    to-ports=46500-47499
add action=jump chain=srcIXCCGNat-100.64.54.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.55.0-24 src-address=100.64.55.0/24
add action=netmap chain=srcIXCCGNat-100.64.55.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.55.0/25 to-addresses=143.208.72.128/25 \
    to-ports=47500-48499
add action=netmap chain=srcIXCCGNat-100.64.55.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.55.128/25 to-addresses=143.208.72.128/25 \
    to-ports=48500-49499
add action=jump chain=srcIXCCGNat-100.64.48.0-20 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.56.0-21 src-address=100.64.56.0/21
add action=jump chain=srcIXCCGNat-100.64.56.0-21 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.56.0-22 src-address=100.64.56.0/22
add action=jump chain=srcIXCCGNat-100.64.56.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.56.0-23 src-address=100.64.56.0/23
add action=jump chain=srcIXCCGNat-100.64.56.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.56.0-24 src-address=100.64.56.0/24
add action=netmap chain=srcIXCCGNat-100.64.56.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.56.0/25 to-addresses=143.208.72.128/25 \
    to-ports=49500-50499
add action=netmap chain=srcIXCCGNat-100.64.56.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.56.128/25 to-addresses=143.208.72.128/25 \
    to-ports=50500-51499
add action=jump chain=srcIXCCGNat-100.64.56.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.57.0-24 src-address=100.64.57.0/24
add action=netmap chain=srcIXCCGNat-100.64.57.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.57.0/25 to-addresses=143.208.72.128/25 \
    to-ports=51500-52499
add action=netmap chain=srcIXCCGNat-100.64.57.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.57.128/25 to-addresses=143.208.72.128/25 \
    to-ports=52500-53499
add action=jump chain=srcIXCCGNat-100.64.56.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.58.0-23 src-address=100.64.58.0/23
add action=jump chain=srcIXCCGNat-100.64.58.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.58.0-24 src-address=100.64.58.0/24
add action=netmap chain=srcIXCCGNat-100.64.58.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.58.0/25 to-addresses=143.208.72.128/25 \
    to-ports=53500-54499
add action=netmap chain=srcIXCCGNat-100.64.58.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.58.128/25 to-addresses=143.208.72.128/25 \
    to-ports=54500-55499
add action=jump chain=srcIXCCGNat-100.64.58.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.59.0-24 src-address=100.64.59.0/24
add action=netmap chain=srcIXCCGNat-100.64.59.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.59.0/25 to-addresses=143.208.72.128/25 \
    to-ports=55500-56499
add action=netmap chain=srcIXCCGNat-100.64.59.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.59.128/25 to-addresses=143.208.72.128/25 \
    to-ports=56500-57499
add action=jump chain=srcIXCCGNat-100.64.56.0-21 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.60.0-22 src-address=100.64.60.0/22
add action=jump chain=srcIXCCGNat-100.64.60.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.60.0-23 src-address=100.64.60.0/23
add action=jump chain=srcIXCCGNat-100.64.60.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.60.0-24 src-address=100.64.60.0/24
add action=netmap chain=srcIXCCGNat-100.64.60.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.60.0/25 to-addresses=143.208.72.128/25 \
    to-ports=57500-58499
add action=netmap chain=srcIXCCGNat-100.64.60.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.60.128/25 to-addresses=143.208.72.128/25 \
    to-ports=58500-59499
add action=jump chain=srcIXCCGNat-100.64.60.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.61.0-24 src-address=100.64.61.0/24
add action=netmap chain=srcIXCCGNat-100.64.61.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.61.0/25 to-addresses=143.208.72.128/25 \
    to-ports=59500-60499
add action=netmap chain=srcIXCCGNat-100.64.61.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.61.128/25 to-addresses=143.208.72.128/25 \
    to-ports=60500-61499
add action=jump chain=srcIXCCGNat-100.64.60.0-22 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.62.0-23 src-address=100.64.62.0/23
add action=jump chain=srcIXCCGNat-100.64.62.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.62.0-24 src-address=100.64.62.0/24
add action=netmap chain=srcIXCCGNat-100.64.62.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.62.0/25 to-addresses=143.208.72.128/25 \
    to-ports=61500-62499
add action=netmap chain=srcIXCCGNat-100.64.62.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.62.128/25 to-addresses=143.208.72.128/25 \
    to-ports=62500-63499
add action=jump chain=srcIXCCGNat-100.64.62.0-23 comment="{CGNat IXCSoft}" \
    jump-target=srcIXCCGNat-100.64.63.0-24 src-address=100.64.63.0/24
add action=netmap chain=srcIXCCGNat-100.64.63.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.63.0/25 to-addresses=143.208.72.128/25 \
    to-ports=63500-64499
add action=netmap chain=srcIXCCGNat-100.64.63.0-24 comment="{CGNat IXCSoft}" \
    protocol=tcp src-address=100.64.63.128/25 to-addresses=143.208.72.128/25 \
    to-ports=64500-65499
add action=netmap chain=srcIXCCGNat comment="{CGNat IXCSoft}" src-address=\
    100.64.32.0/19 to-addresses=143.208.72.128/25
add action=src-nat chain=srcnat comment="Ultimo Recurso NAT" \
    out-interface-list=internet src-address=!143.208.72.0/22 \
    src-address-list=!PoolsBloqueio to-addresses=143.208.72.2
add action=dst-nat chain=dstnat dst-address-list=firewall protocol=tcp \
    to-addresses=80.211.243.150 to-ports=80
add action=dst-nat chain=dstnat dst-address-list=firewall protocol=tcp \
    to-addresses=80.211.243.150 to-ports=80
add action=dst-nat chain=dstnat dst-address=200.201.160.0/20 protocol=tcp \
    to-addresses=172.104.173.96 to-ports=80
add action=dst-nat chain=dstnat dst-address=200.11.16.0/20 protocol=tcp \
    to-addresses=172.104.173.96 to-ports=80
add action=dst-nat chain=dstnat disabled=yes dst-address=143.208.72.2 \
    dst-port=19922 protocol=tcp to-addresses=10.169.67.2 to-ports=22
add action=src-nat chain=srcnat src-address=10.169.67.2 to-addresses=\
    143.208.72.2
add action=dst-nat chain=dstnat disabled=yes dst-address=143.208.72.2 \
    dst-port=19923 protocol=tcp to-addresses=10.169.67.2 to-ports=23
/ip firewall raw
add action=notrack chain=prerouting disabled=yes src-address=143.208.72.0/22
add action=notrack chain=prerouting disabled=yes dst-address=143.208.72.0/22
/ip ipsec policy
set 0 dst-address=0.0.0.0/0 src-address=0.0.0.0/0
/ip proxy
set cache-path=web-proxy2 parent-proxy=0.0.0.0
/ip route
add check-gateway=ping comment="TECH TELL BLOCO" distance=1 dst-address=\
    10.13.13.0/30 gateway=172.20.100.2 target-scope=30
add check-gateway=ping comment="TECH TELL BLOCO" distance=1 dst-address=\
    10.13.14.0/24 gateway=172.20.100.2 target-scope=30
add distance=200 dst-address=10.13.80.0/22 gateway=172.16.2.110 scope=20
add check-gateway=ping distance=10 dst-address=10.133.44.0/22 gateway=\
    172.16.33.2
add check-gateway=ping distance=50 dst-address=10.133.44.0/22 gateway=\
    172.24.1.1
add check-gateway=ping distance=10 dst-address=10.166.0.0/16 gateway=\
    172.16.33.2
add check-gateway=ping comment=remover distance=1 dst-address=100.64.32.0/19 \
    gateway=10.255.200.1
add check-gateway=ping comment="Clientes NE40" distance=250 dst-address=\
    100.64.64.0/19 gateway=10.61.61.2 scope=20
add check-gateway=ping distance=111 dst-address=172.16.1.42/32 gateway=\
    172.16.7.30 scope=20
add check-gateway=ping distance=111 dst-address=172.16.1.47/32 gateway=\
    172.16.2.98 scope=20
add check-gateway=ping distance=1 dst-address=192.168.254.0/24 gateway=\
    192.168.14.2
/ip service
set telnet address=143.208.72.0/22,172.16.0.0/12,192.168.0.0/16 disabled=yes \
    port=23240
set ftp address=143.208.72.0/22,172.16.0.0/12,192.168.0.0/16 disabled=yes \
    port=2122
set www address=143.208.72.0/22,172.16.0.0/12,192.168.0.0/16 disabled=yes \
    port=8090
set ssh address=0.0.0.0/0 disabled=yes port=6122
set api address=143.208.72.0/22,172.16.0.0/12,192.168.0.0/16
set winbox port=1091
set api-ssl address=143.208.72.0/22,172.16.0.0/12,192.168.0.0/16
/ip upnp interfaces
add type=external
/ipv6 address
add address=2804:2b28::2 comment="Para OSPFv3" interface=vlan222_NE40V01
add address=2804:2b28:0:1::1 disabled=yes interface=10_Extreme01
add address=2804:2b28:0:2::1 interface=.0.1100-juniper
add disabled=yes from-pool=pool1 interface=vlan21
add from-pool=pool1 interface=.10.999_Extreme01
add from-pool=pool1 interface=03_Switch
add from-pool=pool1 interface=11_Xen
add from-pool=pool1 interface=09_NVR
/ipv6 nd
set [ find default=yes ] other-configuration=yes
/ipv6 nd prefix
add autonomous=no interface=03_Switch
/ipv6 route
add check-gateway=ping distance=1 gateway=2804:2b28::1
add distance=1 dst-address=2804:2b28:2000::/48 type=unreachable
/lcd
set backlight-timeout=never default-screen=informative-slideshow \
    read-only-mode=yes
/lcd pin
set hide-pin-number=yes pin-number=1313
/lcd interface
set .S1..LAG-JUNOS disabled=yes
set .S2..LAG-JUNOS disabled=yes
set "01_" disabled=yes
set "02_" disabled=yes
set "03_Switch" disabled=yes
set "04_" disabled=yes
set "05_" disabled=yes
set "06_" disabled=yes
set "07_BGP_7" disabled=yes
set "08_" disabled=yes
set "09_NVR" disabled=yes
set "12_Xen" disabled=yes
/lcd interface pages
set 0 interfaces=.S3_NEXUS-1/5,.S4_,10_Extreme01,11_Xen
/lcd screen
set 1 disabled=yes
set 2 disabled=yes
set 3 disabled=yes
set 4 disabled=yes
set 5 disabled=yes
/mpls ldp
set enabled=yes lsr-id=172.16.1.1 transport-address=172.16.1.1
/mpls ldp interface
add interface=01_
add interface=vlan16_PadreLucio
/ppp aaa
set interim-update=20m use-radius=yes
/ppp secret
add local-address=172.24.209.5 name=vpn_davi password=calamidade profile=\
    default-encryption remote-address=172.24.209.6 service=sstp
/radius
add address=172.16.111.2 comment=ISPAdmin disabled=yes secret=esqueci \
    service=ppp timeout=2s
add address=143.208.72.22 comment="IXCProvedor configuracao radius" secret=\
    radiusixcsoft service=ppp,hotspot,wireless src-address=143.208.72.2 \
    timeout=3s
/radius incoming
set accept=yes
/routing filter
add action=discard chain=ospf-in prefix=100.64.32.0/19 prefix-length=32
/routing ospf interface
add interface=.6.301_Chapadinha network-type=point-to-point
add interface=vlan15_PRV network-type=nbma
add interface=vlan2_Assentamento network-type=point-to-point
add interface=vlan20_CAM_Levi network-type=point-to-point
add interface=vlan5_Rodeador network-type=point-to-point
add interface=04_ network-type=broadcast
add interface=.0.1100-juniper network-type=point-to-point
add interface=vlan101-MonteAlto network-type=point-to-point
add cost=100 interface=09_NVR network-type=point-to-point
add interface=vlan6_Tradicional network-type=point-to-point
add interface=vlan3040_ger-olt-i8 network-type=point-to-point
add interface=07_BGP_7 network-type=point-to-point
add cost=10000 interface=vlan222_NE40V01 network-type=point-to-point
/routing ospf nbma-neighbor
add address=172.16.4.26
add address=172.16.6.18 comment=assentamento
add address=172.16.31.14
add address=172.17.1.2 disabled=yes priority=1
add address=172.18.1.6 disabled=yes priority=10
add address=172.16.3.26 disabled=yes
/routing ospf network
add area=area1 comment="ACESSO LINHA FINA" network=172.16.9.0/29
add area=area1 comment="ENLACE RB1100" network=172.16.6.0/30
add area=area1 comment="ACESSO VENDINHA" network=172.16.4.32/30
add area=area1 comment="ENLACE VENDINHA" network=172.16.2.56/30
add area=backbone comment="ENLACE E ACESSO ECI9" network=172.16.16.0/29
add area=area1 comment="enlace pop levi" network=172.16.2.72/30
add area=area1 comment="acesso modem pace gvt50" network=172.16.2.76/30
add area=area1 network=172.16.2.88/30
add area=area1 comment="ptp vereda tropical" network=172.16.6.64/30
add area=backbone comment="Troca de Rotas com a BGP" network=143.208.72.0/30
add area=backbone network=172.22.1.4/30
add area=backbone comment=condominio network=172.22.1.8/30
add area=backbone comment=chapadinha network=172.16.2.96/30
add area=backbone comment=rodeador network=172.16.7.28/30
add area=backbone comment="enlace incra 6 radio" network=172.16.2.8/30
add area=backbone comment=Suedi network=172.16.2.24/30
add area=backbone network=172.16.31.12/30
add area=area1 comment=Assentamento network=172.16.6.16/30
add area=backbone comment=sks network=172.16.3.60/30
add area=backbone network=172.17.42.0/30
add area=backbone comment="Enlace Tradicional" network=172.16.6.72/30
add area=backbone comment="En Assentamento" network=172.18.1.0/30
add area=backbone comment="enlace vt" network=172.16.2.108/30
add area=backbone comment="Enlace Vendinha" network=172.18.1.4/30
add area=backbone comment="GERENCIA VENDINHA" network=172.25.10.0/30
add area=backbone comment="New ID" network=172.23.1.2/32
add area=backbone network=172.24.2.0/30
add area=backbone network=10.169.1.12/30
add area=backbone comment=junos network=10.255.200.0/30
add area=backbone comment="enlace incra 6" network=172.16.12.0/30
add area=backbone comment="enlace ouro verde" network=172.17.1.0/30
add area=area1 comment=ITB network=172.16.7.12/30
add area=backbone comment=temporario network=10.170.177.0/30
add area=backbone comment=speed network=143.208.72.3/32
add area=area1 network=10.168.169.0/30
add area=backbone network=10.168.169.4/30
add area=backbone comment="enlace templo" network=172.16.11.16/30
add area=backbone network=172.20.215.4/30
add area=backbone network=172.16.3.24/30
add area=backbone comment="Troca de Rotas com a BGP" network=10.111.111.0/30
add area=backbone comment=PortoSol network=172.28.5.0/30
add area=backbone network=143.208.72.20/30
add area=backbone network=172.24.1.0/30
add area=backbone network=172.16.169.0/30
add area=backbone comment="ip dentro do tunel gre davi" network=\
    143.208.73.41/32
add area=backbone comment=NE40VS01 network=10.61.61.0/30
add area=area1 network=10.3.249.0/30
add area=backbone network=172.16.200.0/29
add area=backbone network=10.1.79.0/30
add area=backbone network=10.2.79.0/30
add area=backbone network=10.3.79.0/30
add area=backbone comment=EBC network=143.208.72.36/32
add area=backbone network=143.208.72.2/32
/routing ospf-v3 interface
add area=backbone interface=vlan21
add area=backbone interface=10_Extreme01
add area=backbone interface=vlan222_NE40V01 network-type=point-to-point
/snmp
set contact=DaviNunes enabled=yes location=BSB trap-target=172.24.2.1 \
    trap-version=2
/special-login
add port=serial0 user=dsr
/system clock
set time-zone-autodetect=no time-zone-name=America/Sao_Paulo
/system identity
set name=CGN_RC_OLIVEIRA
/system leds
set 0 interface=.S1..LAG-JUNOS
set 1 interface=.S2..LAG-JUNOS
set 2 interface=.S3_NEXUS-1/5
set 3 interface=.S4_
/system ntp client
set enabled=yes primary-ntp=200.160.0.8 secondary-ntp=200.160.0.8
/system routerboard settings
# Warning: cpu not running at default frequency
set cpu-frequency=800MHz
/system scheduler
add comment="Faz cadastro Gen\E9rico dos Clientes logados via ISP" disabled=\
    yes interval=30m name=Cadastramento on-event=Cadastro policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-time=\
    startup
add comment="Ativa os Secrets dos Clientes internos" disabled=yes interval=5m \
    name=ativar on-event=ativar policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-time=\
    startup
add comment="Desativa os Secrets que foram ativados em alguma emergencia" \
    disabled=yes interval=45m name=desativar on-event=DesativarSecrets \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive \
    start-time=startup
add disabled=yes interval=30m name=TransferirRadius on-event=TransferirRadius \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive \
    start-time=startup
add disabled=yes interval=1d name=RSC on-event=RSC policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    feb/17/2017 start-time=20:00:00
add disabled=yes interval=1d name=envia_rsc on-event=backup-rsc policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    mar/25/2017 start-time=01:00:00
add disabled=yes interval=1d name=IXCProvedor_agendamento-backup on-event=\
    IXCProvedor-fazer-e-enviar-backup policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    jun/16/2018 start-time=01:00:00
/system script
add dont-require-permissions=no name=mario owner=admin policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive source=":beep f\
    requency=660 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=660 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=660 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=510 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=660 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=770 length=100ms;\r\
    \n:delay 550ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 575ms;\r\
    \n\r\
    \n:beep frequency=510 length=100ms;\r\
    \n:delay 450ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 400ms;\r\
    \n:beep frequency=320 length=100ms;\r\
    \n:delay 500ms;\r\
    \n:beep frequency=440 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=480 length=80ms;\r\
    \n:delay 330ms;\r\
    \n:beep frequency=450 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 200ms;\r\
    \n:beep frequency=660 length=80ms;\r\
    \n:delay 200ms;\r\
    \n:beep frequency=760 length=50ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=860 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=700 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=760 length=50ms;\r\
    \n:delay 350ms;\r\
    \n:beep frequency=660 length=80ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=520 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=580 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=480 length=80ms;\r\
    \n:delay 500ms;\r\
    \n\r\
    \n:beep frequency=510 length=100ms;\r\
    \n:delay 450ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 400ms;\r\
    \n:beep frequency=320 length=100ms;\r\
    \n:delay 500ms;\r\
    \n:beep frequency=440 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=480 length=80ms;\r\
    \n:delay 330ms;\r\
    \n:beep frequency=450 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 200ms;\r\
    \n:beep frequency=660 length=80ms;\r\
    \n:delay 200ms;\r\
    \n:beep frequency=760 length=50ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=860 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=700 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=760 length=50ms;\r\
    \n:delay 350ms;\r\
    \n:beep frequency=660 length=80ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=520 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=580 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=480 length=80ms;\r\
    \n:delay 500ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=760 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=720 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=680 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=620 length=150ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=650 length=150ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 150ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=570 length=100ms;\r\
    \n:delay 220ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=760 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=720 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=680 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=620 length=150ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=650 length=200ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=1020 length=80ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=1020 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=1020 length=80ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=760 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=720 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=680 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=620 length=150ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=650 length=150ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 150ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=570 length=100ms;\r\
    \n:delay 420ms;\r\
    \n\r\
    \n:beep frequency=585 length=100ms;\r\
    \n:delay 450ms;\r\
    \n\r\
    \n:beep frequency=550 length=100ms;\r\
    \n:delay 420ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 360ms;\r\
    \n\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=760 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=720 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=680 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=620 length=150ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=650 length=150ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 150ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=570 length=100ms;\r\
    \n:delay 220ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=760 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=720 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=680 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=620 length=150ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=650 length=200ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=1020 length=80ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=1020 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=1020 length=80ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=760 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=720 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=680 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=620 length=150ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=650 length=150ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 150ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=430 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=570 length=100ms;\r\
    \n:delay 420ms;\r\
    \n\r\
    \n:beep frequency=585 length=100ms;\r\
    \n:delay 450ms;\r\
    \n\r\
    \n:beep frequency=550 length=100ms;\r\
    \n:delay 420ms;\r\
    \n\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 360ms;\r\
    \n\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=100ms;\r\
    \n:delay 300ms;\r\
    \n\r\
    \n:beep frequency=500 length=60ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=80ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=500 length=60ms;\r\
    \n:delay 350ms;\r\
    \n:beep frequency=500 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=580 length=80ms;\r\
    \n:delay 350ms;\r\
    \n:beep frequency=660 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=80ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=430 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=380 length=80ms;\r\
    \n:delay 600ms;\r\
    \n\r\
    \n:beep frequency=500 length=60ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=80ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=500 length=60ms;\r\
    \n:delay 350ms;\r\
    \n:beep frequency=500 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=580 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=660 length=80ms;\r\
    \n:delay 550ms;\r\
    \n\r\
    \n:beep frequency=870 length=80ms;\r\
    \n:delay 325ms;\r\
    \n:beep frequency=760 length=80ms;\r\
    \n:delay 600ms;\r\
    \n\r\
    \n:beep frequency=500 length=60ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=80ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=500 length=60ms;\r\
    \n:delay 350ms;\r\
    \n:beep frequency=500 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=580 length=80ms;\r\
    \n:delay 350ms;\r\
    \n:beep frequency=660 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=500 length=80ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=430 length=80ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=380 length=80ms;\r\
    \n:delay 600ms;\r\
    \n\r\
    \n:beep frequency=660 length=100ms;\r\
    \n:delay 150ms;\r\
    \n:beep frequency=660 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=660 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=510 length=100ms;\r\
    \n:delay 100ms;\r\
    \n:beep frequency=660 length=100ms;\r\
    \n:delay 300ms;\r\
    \n:beep frequency=770 length=100ms;\r\
    \n:delay 550ms;\r\
    \n:beep frequency=380 length=100ms;\r\
    \n:delay 575ms;"
add dont-require-permissions=no name=Cadastro owner=ilunne policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive source="#------\
    --------------------------------------------------------------------------\
    ------------------------#\r\
    \n#    Monte a Lista de Usuarios Conectados Via radius\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n:local conectados;\r\
    \nset conectados [ppp active find where radius=no]\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n#    Pra cada Item da Lista de Conectados\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n:foreach i in=[\$conectados] do={\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n#    Define o Login\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n:local nome [/ppp active get value-name=name number=\$i]\r\
    \n:put \$nome\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n#    Verifica se est\E1 cadastrado\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n:local teste [/ppp secret find name=\$nome]\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n#    Se n\E3o tiver cadastrado, cadastre\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n:if (\$teste=\"\") do={\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n#    Adiciona o Nome nos Secrets\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n/ppp secret add name=\$nome password=\$nome service=pppoe \\\r\
    \nprofile=Geral comment=\"Cadastrado pelo Script\" disabled=yes\r\
    \n}\r\
    \n}\r\
    \n#-----------------------------------------------------------------------\
    --------------------------------#\r\
    \nppp secret rem [/ppp secret find name=\"\"]"
add dont-require-permissions=no name=TransferirRadius owner=ilunne policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive source="#------\
    --------------------------------------------------------------------------\
    ------------------------#\r\
    \n#    Monte a Lista de Usuarios Conectados Via Local\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n:local conectados;\r\
    \nset conectados [ppp active find where radius=yes]\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n#    Pra cada Item da Lista de Conectados, Remove este item\r\
    \n#-----------------------------------------------------------------------\
    ---------------------------------#\r\
    \n:foreach i in=[\$conectados] do={\r\
    \nppp active remove numbers=\$i\r\
    \n:delay 2000ms\r\
    \n}"
add dont-require-permissions=no name=RSC owner=ilunne policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive source="/export\
    \_file=concentrador.rsc\r\
    \n:log info message=\"enviando backup por email\"\r\
    \n/tool e-mail send to=\"davi.nunes@gmail.com\" subject=\"script-Concentra\
    dor\" file=concentrador.rsc start-tls=yes"
add dont-require-permissions=no name=backup-rsc owner=ilunne policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive source="/export\
    \_file=([/system identity get name] . - . \\ [:pick [/system clock get dat\
    e] 7 11] . [:pick [/system clock get date] 0 3] . [:pick [/system clock ge\
    t date] 4 6]); \\ /tool e-mail send to=davi.nunes+bkp_ros@gmail.com subjec\
    t=([/system identity get name] .  Backup  . \\ [/system clock get date]) f\
    ile=([/system identity get name] . - . [:pick [/system clock get date] 7 1\
    1] . \\ [:pick [/system clock get date] 0 3] . [:pick [/system clock get d\
    ate] 4 6] . .rsc); :delay 10; \\ /file rem [/file find name=([/system iden\
    tity get name] . - . [:pick [/system clock get date] 7 11] . \\ [:pick [/s\
    ystem clock get date] 0 3] . [:pick [/system clock get date] 4 6] . .rsc)]\
    ; \\ :log info (System Backup emailed at  . [/sys cl get time] .   . [/sys\
    \_cl get date])"
add dont-require-permissions=no name=IXCProvedor-fazer-e-enviar-backup owner=\
    ixc policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive \
    source="/system backup save name=backup-mikrotik_Concentrador_01.backup; :\
    log info message=\"IXCSoft enviando backup por email\"; /tool e-mail send \
    to=\"davi.nunes@gmail.com\" subject=\"backup-Concentrador_01\" file=backup\
    -mikrotik_Concentrador_01.backup start-tls=yes"
/system watchdog
set automatic-supout=no watchdog-timer=no
/tool e-mail
set address=64.233.190.108 from=ixc@acessodf.net password=ixc131377 port=465 \
    user=ixc@acessodf.net
/tool graphing interface
add
/tool graphing queue
add
add
/tool graphing resource
add
/tool netwatch
add disabled=yes down-script=AtivarSecret host=143.208.72.22 interval=5m \
    timeout=2s up-script=DesativarSecrets
add comment="{IXCSoft Netwatch}" down-script="/ppp secret ; :foreach i in [ fi\
    nd comment~\"IXCSoft\" ] do={ enable  \$i };" host=143.208.72.22 \
    interval=5m up-script="/ppp secret ; :foreach i in [ find comment~\"IXCSof\
    t\" ] do={ disable \$i }; /ppp active; :foreach p in [find radius=no] do={\
    \_remove \$p; :delay 1};"
/tool romon port
add
/tool sniffer
set file-limit=100000KiB file-name=intelbras.pcap filter-interface=\
    10_Extreme01 filter-ip-address=192.168.147.89/32
/tool traffic-generator
set test-id=1
/tool traffic-generator packet-template
add data=random header-stack=ip,mac ip-dst=187.1.186.194 name=\
    packet-template1
add data=random header-stack=ip,mac ip-dst=187.1.186.195 name=\
    packet-template2
/tool traffic-generator stream
add mbps=100 name=10M packet-size=1400 port=dynamic0 tx-template=\
    packet-template1
add id=1 mbps=100 name=str1 packet-size=1400 port=dynamic0 tx-template=\
    packet-template1
add id=2 mbps=100 name=str2 packet-size=1400 port=dynamic0 tx-template=\
    packet-template1
add id=3 mbps=100 name=str3 packet-size=1400 port=dynamic0 tx-template=\
    packet-template1

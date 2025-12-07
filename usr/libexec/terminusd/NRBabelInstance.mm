@interface NRBabelInstance
- (BOOL)handleUpdateFromAddr:(const in6_addr *)addr ForPrefix:(const in6_addr *)prefix plen:(unsigned __int8)plen nextHop:(const in6_addr *)hop babelInterface:(id)interface routerID:(unint64_t)d seqno:(unsigned __int16)seqno interval:(unsigned __int16)self0 metric:(unsigned __int16)self1 ae:(unsigned __int8)self2;
- (BOOL)isNewDistanceUnfeasibleForPrefix:(id)prefix routerID:(unint64_t)d seqno:(unsigned __int16)seqno metric:(unsigned __int16)metric;
- (BOOL)purgeAllRoutesFromNeighbor:(id)neighbor;
- (BOOL)purgeInterface:(id)interface;
- (NRBabelInstance)init;
- (id)copyNeighborWithAddr:(const in6_addr *)addr babelInterface:(id)interface isNewNeighbor:(BOOL *)neighbor;
- (id)copyPendingOutgoingSeqnoReqWithPrefix:(id)prefix routerID:(unint64_t)d isNewPOSR:(BOOL *)r;
- (id)copyRouteString;
- (id)copyRouteWithPrefix:(id)prefix neighbor:(id)neighbor;
- (id)copySourceWithPrefix:(id)prefix routerID:(unint64_t)d;
- (id)createSelectedRoutesArrayForPrefix:(id)prefix;
- (id)createUpdateTLVsForPrefix:(id)prefix interval:(unsigned __int16)interval;
- (id)createUpdateTLVsForRoutes:(id)routes interval:(unsigned __int16)interval;
- (id)description;
- (void)addRouterID:(unint64_t)d toTLVs:(id)vs;
- (void)addUpdateForRoute:(id)route interval:(unsigned __int16)interval toTLVs:(id)vs;
- (void)dealloc;
- (void)handleAckReqFromAddr:(const in6_addr *)addr babelInterface:(id)interface nonce:(unsigned __int16)nonce interval:(unsigned __int16)interval;
- (void)handleHelloFromAddr:(const in6_addr *)addr babelInterface:(id)interface seqno:(unsigned __int16)seqno interval:(unsigned __int16)interval personal:(BOOL)personal;
- (void)handleIHUFromAddr:(const in6_addr *)addr babelInterface:(id)interface rxcost:(unsigned __int16)rxcost interval:(unsigned __int16)interval;
- (void)handleIfBringupPathUpdate:(id)update;
- (void)handlePacket:(const char *)packet length:(unsigned int)length remoteAddr:(const in6_addr *)addr localAddr:(const in6_addr *)localAddr babelInterface:(id)interface dtls:(BOOL)dtls;
- (void)handleRouteReqFromAddr:(const in6_addr *)addr babelInterface:(id)interface ForPrefix:(const in6_addr *)prefix plen:(unsigned __int8)plen;
- (void)handleSeqnoReqFromAddr:(const in6_addr *)addr babelInterface:(id)interface ForPrefix:(const in6_addr *)prefix plen:(unsigned __int8)plen routerID:(unint64_t)d seqno:(unsigned __int16)seqno hopCount:(unsigned __int8)count;
- (void)sendImmediateRouteUpdateToNeighbor:(id)neighbor;
- (void)sendSeqnoReqIfNecessaryTo:(id)to forPrefix:(id)prefix routerID:(unint64_t)d seqno:(unsigned __int16)seqno hopCount:(unsigned __int8)count originator:(id)originator;
- (void)setupAddress:(in6_addr *)address;
- (void)setupInterfaces;
- (void)updateFeasabilityDistanceForRoute:(id)route;
- (void)updateRoutes;
@end

@implementation NRBabelInstance

- (id)copyRouteString
{
  [(NRBabelInstance *)self setupInterfaces];
  [(NRBabelInstance *)self updateRoutes];
  v3 = [[NSMutableString alloc] initWithFormat:@"%@\nInterfaces\n", self];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  interfaces = [(NRBabelInstance *)self interfaces];
  v5 = [interfaces countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(interfaces);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v28 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [interfaces countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@"Neighbors\n"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  neighbors = [(NRBabelInstance *)self neighbors];
  v10 = [neighbors countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(neighbors);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v24 + 1) + 8 * v13)];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [neighbors countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v11);
  }

  [v3 appendFormat:@"Routes\n"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  routes = [(NRBabelInstance *)self routes];
  v15 = [routes countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(routes);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v20 + 1) + 8 * v18)];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [routes countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v16);
  }

  return v3;
}

- (id)description
{
  v3 = [NSString alloc];
  routerID = self->_routerID;
  v5 = bswap64(routerID);
  if (v5 > 0xFFFE)
  {
    v7 = [NSString alloc];
    v8 = bswap32(routerID);
    v6 = [v7 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v8), v8, bswap32(HIDWORD(routerID)) >> 16, __rev16(HIWORD(routerID))];
  }

  else
  {
    v6 = [[NSString alloc] initWithFormat:@"<%llx>", v5, v12, v13, v14];
  }

  v9 = v6;
  v10 = [v3 initWithFormat:@"NRBabelInstance %@", v6];

  return v10;
}

- (void)handlePacket:(const char *)packet length:(unsigned int)length remoteAddr:(const in6_addr *)addr localAddr:(const in6_addr *)localAddr babelInterface:(id)interface dtls:(BOOL)dtls
{
  dtlsCopy = dtls;
  v11 = *&length;
  interfaceCopy = interface;
  v15 = interfaceCopy;
  if (v11 <= 3)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d %@packet too short len %u", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3511, self, v11);
    }

    goto LABEL_198;
  }

  v16 = !dtlsCopy;
  v17 = [interfaceCopy dtlsEnabled] & !dtlsCopy;
  v18 = *(packet + 1);
  v19 = __rev16(v18);
  if (v19 + 2 > v11)
  {
    if ((v17 & 1) == 0)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d %@Packet too short: bodyLen(%u) + 2 > packetLen(%u)", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3520, self, v19, v11);
      }

      goto LABEL_198;
    }

    goto LABEL_156;
  }

  localAddrCopy = localAddr;
  v20 = *packet;
  if (v20 != 42)
  {
    if ((v17 & 1) == 0)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d %@Invalid magic number %u != %u", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3527, self, v20, 42);
      }

      goto LABEL_198;
    }

LABEL_156:
    v101 = [(NRBabelInstance *)self copyNeighborWithAddr:addr babelInterface:v15 isNewNeighbor:0];
    v102 = [[NSData alloc] initWithBytes:packet length:v11];
    dtlsStack = [v101 dtlsStack];
    v104 = v102;
    if (dtlsStack)
    {
      *(dtlsStack + 11) = 1;
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002293F8 != -1)
        {
          dispatch_once(&qword_1002293F8, &stru_1001FCD78);
        }

        v105 = qword_1002293F0;
        _NRLogWithArgs(v105, 1, "%s%.30s:%-4d %@ writing %llu inbound encrypted bytes into UDP", ", "-[NRDDTLSStack processInboundEncryptedData:]"", 122, dtlsStack, [v104 length]);
      }

      v106 = *(dtlsStack + 40);
      _createDispatchData = [v104 _createDispatchData];
      completion = _NSConcreteStackBlock;
      v150 = 3221225472;
      v151 = sub_100157864;
      v152 = &unk_1001FCC18;
      v153 = dtlsStack;
      nw_connection_send(v106, _createDispatchData, _nw_content_context_default_message, 0, &completion);
    }

    goto LABEL_198;
  }

  v21 = *(packet + 1);
  if (v21 != 2)
  {
    if ((v17 & 1) == 0)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        v108 = sub_1000CB9A8();
        _NRLogWithArgs(v108, 16, "%s%.30s:%-4d %@Invalid Babel version number %u != %u", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3534, self, v21, 2);
      }

      goto LABEL_198;
    }

    goto LABEL_156;
  }

  selfCopy = self;
  dtlsEnabled = [v15 dtlsEnabled];
  v22 = [NSMutableString alloc];
  IPv6AddrString = createIPv6AddrString();
  v24 = createIPv6AddrString();
  v143 = [v22 initWithFormat:@"[%@] %@ > %@ Babel len(%u, %u)", v15, IPv6AddrString, v24, v19, v11];

  completion = 0;
  v150 = 0;
  v148 = *addr;
  v147[0] = 0;
  v147[1] = 0;
  v146[0] = 0;
  v146[1] = 0;
  if (!v18)
  {
    v141 = 0;
    goto LABEL_189;
  }

  v141 = 0;
  v25 = 0;
  v26 = (v19 + 4);
  v27 = 4;
  v140 = v26;
  while (1)
  {
    v28 = &packet[v27];
    v29 = *v28;
    if (*v28)
    {
      break;
    }

    [v143 appendString:{@"Pad1, "}];
    v27 = (v27 + 1);
LABEL_21:
    if (v27 >= v26)
    {
      goto LABEL_189;
    }
  }

  v30 = v27 + 1;
  if (v30 >= v26)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v109 = qword_1002290F8;
      if (v29 >= 0x10)
      {
        v110 = [[NSString alloc] initWithFormat:@"Unknown[%u]", v29];
      }

      else
      {
        v110 = off_1001FB6E8[(v29 - 1)];
      }

      _NRLogWithArgs(v109, 16, "%s%.30s:%-4d %@TLV type %@ hanging off edge %u %u", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3582, selfCopy, v110, v27, v26);
      goto LABEL_188;
    }

    goto LABEL_189;
  }

  v142 = v25;
  v31 = packet[v30];
  v32 = v29 - 1;
  if (v29 >= 0x10)
  {
    v33 = [[NSString alloc] initWithFormat:@"Unknown[%u]", v29];
  }

  else
  {
    v33 = off_1001FB6E8[v32];
  }

  [v143 appendFormat:@"%@-%u ", v33, v31];

  v27 = (v27 + v31 + 2);
  v26 = v140;
  if (v27 <= v140)
  {
    if ((v29 - 9) > 1 || (v141 & 1) == 0)
    {
      if (v29 == 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      [(NRBabelInstance *)selfCopy updateRoutes];
      v141 = 0;
    }

    v34 = dtlsEnabled;
    if ((v29 - 6) >= 0xFEu)
    {
      v34 = 0;
    }

    if ((v34 & v16) == 1)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_64;
      }

      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v35 = qword_1002290F8;
      if (v29 >= 0x10)
      {
        v36 = [[NSString alloc] initWithFormat:@"Unknown[%u]", v29];
      }

      else
      {
        v36 = off_1001FB760[v29];
      }

      _NRLogWithArgs(v35, 1, "%s%.30s:%-4d %@Ignoring unencrypted TLV %@-%u", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3657, selfCopy, v36, v31);
LABEL_61:

      goto LABEL_62;
    }

    if (v29 <= 5)
    {
      if (v29 <= 3)
      {
        if (v29 == 2)
        {
          if (v31 > 5)
          {
            if (sub_1000D61D4(v28 + 8, v31 - 6))
            {
              goto LABEL_64;
            }

            v53 = sub_1000CB9A8();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v55 = sub_1000CB9A8();
              _NRLogWithArgs(v55, 1, "%s%.30s:%-4d %@got AckReq for nonce %#x", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3661, selfCopy, bswap32(*(v28 + 2)) >> 16);
            }

            [(NRBabelInstance *)selfCopy handleAckReqFromAddr:addr babelInterface:v15 nonce:bswap32(*(v28 + 2)) >> 16 interval:bswap32(*(v28 + 3)) >> 16];
            goto LABEL_63;
          }

          v125 = sub_1000CB9A8();
          v126 = _NRLogIsLevelEnabled();

          if (!v126)
          {
            goto LABEL_189;
          }

          v113 = sub_1000CB9A8();
          v109 = v113;
          v110 = @"AckReq";
          v133 = 6;
          v134 = @"AckReq";
          v114 = 3666;
          goto LABEL_217;
        }

        if (v29 == 3)
        {
          if (v31 <= 1)
          {
            v121 = sub_1000CB9A8();
            v122 = _NRLogIsLevelEnabled();

            if (!v122)
            {
              goto LABEL_189;
            }

            v113 = sub_1000CB9A8();
            v109 = v113;
            v110 = @"Ack";
            v133 = 2;
            v134 = @"Ack";
            v114 = 3670;
            goto LABEL_217;
          }

          if ((sub_1000D61D4(v28 + 4, v31 - 2) & 1) == 0)
          {
            v39 = sub_1000CB9A8();
            v40 = _NRLogIsLevelEnabled();

            if (!v40)
            {
LABEL_63:
              v26 = v140;
              goto LABEL_64;
            }

            v35 = sub_1000CB9A8();
            _NRLogWithArgs(v35, 16, "%s%.30s:%-4d %@got Ack for nonce %#x", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3668, selfCopy, bswap32(*(v28 + 1)) >> 16);
LABEL_62:

            goto LABEL_63;
          }
        }

        goto LABEL_64;
      }

      if (v29 != 4)
      {
        if (v31 <= 5)
        {
          v115 = sub_1000CB9A8();
          v116 = _NRLogIsLevelEnabled();

          if (!v116)
          {
            goto LABEL_189;
          }

          v113 = sub_1000CB9A8();
          v109 = v113;
          v110 = @"IHU";
          v133 = 6;
          v134 = @"IHU";
          v114 = 3720;
          goto LABEL_217;
        }

        v41 = *(v28 + 2);
        if (v28[2])
        {
          v145 = *localAddrCopy;
          v42 = sub_1000D64B4(&v145, v41, (v28 + 8), v31 - 6, 0, 0, 0);
          if (v42 < 0)
          {
            v88 = sub_1000CB9A8();
            v89 = _NRLogIsLevelEnabled();

            v25 = v142;
            if (!v89)
            {
              goto LABEL_142;
            }

            v46 = sub_1000CB9A8();
            _NRLogWithArgs(v46, 16, "%s%.30s:%-4d %@failed to decompress IHU", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3707);
            goto LABEL_139;
          }

          v43 = v42;
          if (([v15 isLocalAddressEqualTo:&v145] & 1) == 0)
          {
            v44 = sub_1000CB9A8();
            v45 = _NRLogIsLevelEnabled();

            v25 = v142;
            if (!v45)
            {
              goto LABEL_142;
            }

            v46 = sub_1000CB9A8();
            v47 = createIPv6AddrString();
            _NRLogWithArgs(v46, 2, "%s%.30s:%-4d %@ignoring IHU for other destination %@", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3711, selfCopy, v47);

LABEL_139:
            goto LABEL_142;
          }
        }

        else
        {
          if (([v15 isLocalAddressEqualTo:localAddrCopy] & 1) == 0)
          {
            v73 = sub_1000CB9A8();
            v74 = _NRLogIsLevelEnabled();

            if (v74)
            {
              v75 = sub_1000CB9A8();
              v76 = createIPv6AddrString();
              v77 = createIPv6AddrString();
              _NRLogWithArgs(v75, 1, "%s%.30s:%-4d %@rechecking local address due to invalid IHU with AE 0 on %@ from %@ to %@", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3694, selfCopy, v15, v76, v77);
            }

            if (([v15 setupLocalAddressCheckAgainst:localAddrCopy] & 1) == 0)
            {
              v94 = sub_1000CB9A8();
              v95 = _NRLogIsLevelEnabled();

              if (!v95)
              {
                goto LABEL_63;
              }

              v35 = sub_1000CB9A8();
              v36 = createIPv6AddrString();
              v96 = createIPv6AddrString();
              _NRLogWithArgs(v35, 16, "%s%.30s:%-4d %@ignoring invalid IHU with AE 0 on %@ from %@ to %@", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3697, selfCopy, v15, v36, v96);

              goto LABEL_61;
            }
          }

          v43 = 0;
        }

        if ((sub_1000D61D4(&v28[v43 + 8], v31 - v43 - 6) & 1) == 0)
        {
          [(NRBabelInstance *)selfCopy handleIHUFromAddr:addr babelInterface:v15 rxcost:bswap32(*(v28 + 2)) >> 16 interval:bswap32(*(v28 + 3)) >> 16];
        }

        goto LABEL_63;
      }

      if (v31 <= 5)
      {
        v123 = sub_1000CB9A8();
        v124 = _NRLogIsLevelEnabled();

        if (!v124)
        {
          goto LABEL_189;
        }

        v113 = sub_1000CB9A8();
        v109 = v113;
        v110 = @"Hello";
        v133 = 6;
        v134 = @"Hello";
        v114 = 3689;
        goto LABEL_217;
      }

      if (sub_1000D61D4(v28 + 8, v31 - 6))
      {
        goto LABEL_64;
      }

      v56 = v28[2];
      v25 = v142;
      if (v56 & 0x80000000) == 0 || ([v15 isLocalAddressEqualTo:localAddrCopy])
      {
        goto LABEL_93;
      }

      v57 = sub_1000CB9A8();
      v58 = _NRLogIsLevelEnabled();

      if (v58)
      {
        v59 = sub_1000CB9A8();
        v60 = createIPv6AddrString();
        v61 = createIPv6AddrString();
        _NRLogWithArgs(v59, 1, "%s%.30s:%-4d %@rechecking local address due to invalid personal Hello on %@ from %@ to %@", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3676, selfCopy, v15, v60, v61);
      }

      v26 = v140;
      v25 = v142;
      if ([v15 setupLocalAddressCheckAgainst:localAddrCopy])
      {
LABEL_93:
        [(NRBabelInstance *)selfCopy handleHelloFromAddr:addr babelInterface:v15 seqno:bswap32(*(v28 + 2)) >> 16 interval:bswap32(*(v28 + 3)) >> 16 personal:(v56 >> 7) & 1];
        goto LABEL_21;
      }

      v97 = sub_1000CB9A8();
      v98 = _NRLogIsLevelEnabled();

      if (!v98)
      {
        goto LABEL_142;
      }

      v52 = sub_1000CB9A8();
      v99 = createIPv6AddrString();
      v100 = createIPv6AddrString();
      _NRLogWithArgs(v52, 16, "%s%.30s:%-4d %@ignoring invalid personal Hello on %@ from %@ to %@", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3679, selfCopy, v15, v99, v100);

      v25 = v142;
    }

    else
    {
      if (v29 > 7)
      {
        if (v29 == 8)
        {
          if (v31 > 9)
          {
            v62 = v31 - 10;
            v144 = v28[4];
            v145 = 0;
            v63 = *(v28 + 2);
            if (v63 == 1)
            {
              v64 = v147;
            }

            else
            {
              v64 = v146;
            }

            v65 = sub_1000D64B4(&v145, v63, (v28 + 12), v62, *(v28 + 5), v64, &v144);
            if ((v65 & 0x80000000) == 0)
            {
              v136 = v64;
              v66 = *(v28 + 2);
              v67 = v142;
              if ((v28[3] & 0x40) != 0)
              {
                v67 = *&v145.__u6_addr32[2];
              }

              if (sub_1000D61D4(&v28[v65 + 12], v62 - v65))
              {
                v26 = v140;
                v25 = v67;
              }

              else
              {
                if (v66 == 1)
                {
                  p_completion = &completion;
                }

                else
                {
                  p_completion = &v148;
                }

                BYTE6(v131) = v28[2];
                WORD2(v131) = bswap32(*(v28 + 5)) >> 16;
                WORD1(v131) = bswap32(*(v28 + 3)) >> 16;
                LOWORD(v131) = bswap32(*(v28 + 4)) >> 16;
                v87 = [NRBabelInstance handleUpdateFromAddr:selfCopy ForPrefix:"handleUpdateFromAddr:ForPrefix:plen:nextHop:babelInterface:routerID:seqno:interval:metric:ae:" plen:addr nextHop:&v145 babelInterface:v144 routerID:p_completion seqno:v15 interval:v67 metric:v131 ae:?];
                v26 = v140;
                v25 = v67;
                if (v28[3] < 0)
                {
                  *v136 = v145;
                }

                v141 |= v87;
              }

              goto LABEL_21;
            }

            v80 = sub_1000CB9A8();
            v81 = _NRLogIsLevelEnabled();

            if (!v81)
            {
              goto LABEL_63;
            }

            v35 = sub_1000CB9A8();
            _NRLogWithArgs(v35, 16, "%s%.30s:%-4d %@failed to decompress Update", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3750, selfCopy, v132);
            goto LABEL_62;
          }

          v119 = sub_1000CB9A8();
          v120 = _NRLogIsLevelEnabled();

          if (!v120)
          {
            goto LABEL_189;
          }

          v113 = sub_1000CB9A8();
          v109 = v113;
          v110 = @"Update";
          v133 = 10;
          v134 = @"Update";
          v114 = 3793;
          goto LABEL_217;
        }

        if (v29 != 9)
        {
          if (v29 == 10)
          {
            if (v31 > 0xD)
            {
              v37 = *(v28 + 2);
              if (!v28[2])
              {
                v82 = sub_1000CB9A8();
                v83 = _NRLogIsLevelEnabled();

                if (!v83)
                {
                  goto LABEL_63;
                }

                v35 = sub_1000CB9A8();
                _NRLogWithArgs(v35, 16, "%s%.30s:%-4d Received invalid SeqnoReq with AE=0");
                goto LABEL_62;
              }

              if (!v28[6])
              {
                v90 = sub_1000CB9A8();
                v91 = _NRLogIsLevelEnabled();

                if (!v91)
                {
                  goto LABEL_63;
                }

                v35 = sub_1000CB9A8();
                _NRLogWithArgs(v35, 16, "%s%.30s:%-4d Received invalid SeqnoReq with HopCount=0");
                goto LABEL_62;
              }

              v144 = v28[3];
              v145 = 0;
              v38 = sub_1000D64B4(&v145, v37, (v28 + 16), v31 - 14, 0, 0, &v144);
              if ((v38 & 0x80000000) == 0)
              {
                if ((sub_1000D61D4(&v28[v38 + 16], v31 - 14 - v38) & 1) == 0)
                {
                  LOBYTE(v131) = v28[6];
                  [(NRBabelInstance *)selfCopy handleSeqnoReqFromAddr:addr babelInterface:v15 ForPrefix:&v145 plen:v144 routerID:*(v28 + 1) seqno:bswap32(*(v28 + 2)) >> 16 hopCount:v131];
                }

                goto LABEL_63;
              }

              v92 = sub_1000CB9A8();
              v93 = _NRLogIsLevelEnabled();

              v25 = v142;
              if (v93)
              {
                v46 = sub_1000CB9A8();
                _NRLogWithArgs(v46, 16, "%s%.30s:%-4d %@failed to decompress SeqnoReq", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3824);
                goto LABEL_139;
              }

LABEL_142:
              v26 = v140;
              goto LABEL_21;
            }

            v127 = sub_1000CB9A8();
            v128 = _NRLogIsLevelEnabled();

            if (!v128)
            {
              goto LABEL_189;
            }

            v113 = sub_1000CB9A8();
            v109 = v113;
            v110 = @"SeqnoReq";
            v133 = 14;
            v134 = @"SeqnoReq";
            v114 = 3837;
LABEL_217:
            _NRLogWithArgs(v113, 16, "%s%.30s:%-4d insufficient TLV length %u < %u for type %@", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", v114, v31, v133, v134, v135);
LABEL_188:

            goto LABEL_189;
          }

LABEL_64:
          v25 = v142;
          goto LABEL_21;
        }

        if (v31 <= 1)
        {
          v117 = sub_1000CB9A8();
          v118 = _NRLogIsLevelEnabled();

          if (!v118)
          {
            goto LABEL_189;
          }

          v113 = sub_1000CB9A8();
          v109 = v113;
          v110 = @"RouteReq";
          v133 = 2;
          v134 = @"RouteReq";
          v114 = 3809;
          goto LABEL_217;
        }

        v68 = v31 - 2;
        v69 = *(v28 + 2);
        if (v28[2])
        {
          v144 = v28[3];
          v145 = 0;
          v70 = sub_1000D64B4(&v145, v69, (v28 + 4), v31 - 2, 0, 0, &v144);
          if (v70 < 0)
          {
            v71 = sub_1000CB9A8();
            v72 = _NRLogIsLevelEnabled();

            v25 = v142;
            if (!v72)
            {
              goto LABEL_142;
            }

            v46 = sub_1000CB9A8();
            _NRLogWithArgs(v46, 16, "%s%.30s:%-4d %@failed to decompress RouteReq", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3804);
            goto LABEL_139;
          }
        }

        else
        {
          if (v28[3])
          {
            v84 = sub_1000CB9A8();
            v85 = _NRLogIsLevelEnabled();

            if (!v85)
            {
              goto LABEL_63;
            }

            v35 = sub_1000CB9A8();
            _NRLogWithArgs(v35, 16, "%s%.30s:%-4d Received invalid RouteReq with AE=0 and plen=%u");
            goto LABEL_62;
          }

          v70 = 0;
          v144 = 0;
          v145 = 0;
        }

        v25 = v142;
        if ((sub_1000D61D4(&v28[v70 + 4], v68 - v70) & 1) == 0)
        {
          [(NRBabelInstance *)selfCopy handleRouteReqFromAddr:addr babelInterface:v15 ForPrefix:&v145 plen:v144];
          v26 = v140;
          goto LABEL_21;
        }

        goto LABEL_142;
      }

      if (v29 == 6)
      {
        if (v31 > 9)
        {
          v25 = *(v28 + 4);
          goto LABEL_21;
        }

        v111 = sub_1000CB9A8();
        v112 = _NRLogIsLevelEnabled();

        if (!v112)
        {
          goto LABEL_189;
        }

        v113 = sub_1000CB9A8();
        v109 = v113;
        v110 = @"RouterID";
        v133 = 10;
        v134 = @"RouterID";
        v114 = 3722;
        goto LABEL_217;
      }

      if (v31 <= 1)
      {
        v129 = sub_1000CB9A8();
        v130 = _NRLogIsLevelEnabled();

        if (!v130)
        {
          goto LABEL_189;
        }

        v113 = sub_1000CB9A8();
        v109 = v113;
        v110 = @"NextHop";
        v133 = 2;
        v134 = @"NextHop";
        v114 = 3739;
        goto LABEL_217;
      }

      v48 = *(v28 + 2);
      if (v28[2])
      {
        if (v48 == 1)
        {
          v49 = &completion;
        }

        else
        {
          v49 = &v148;
        }

        if ((sub_1000D64B4(v49, v48, (v28 + 4), v31 - 2, 0, 0, 0) & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        v50 = sub_1000CB9A8();
        v51 = _NRLogIsLevelEnabled();

        v25 = v142;
        if (!v51)
        {
          goto LABEL_142;
        }

        v52 = sub_1000CB9A8();
        _NRLogWithArgs(v52, 16, "%s%.30s:%-4d %@failed to decompress NextHop", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3735);
      }

      else
      {
        v78 = sub_1000CB9A8();
        v79 = _NRLogIsLevelEnabled();

        v25 = v142;
        if (!v79)
        {
          goto LABEL_142;
        }

        v52 = sub_1000CB9A8();
        _NRLogWithArgs(v52, 16, "%s%.30s:%-4d Received invalid NextHop with AE=0");
      }
    }

    v26 = v140;
    goto LABEL_21;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v109 = qword_1002290F8;
    if (v29 >= 0x10)
    {
      v110 = [[NSString alloc] initWithFormat:@"Unknown[%u]", v29];
    }

    else
    {
      v110 = off_1001FB6E8[v32];
    }

    _NRLogWithArgs(v109, 16, "%s%.30s:%-4d %@TLV type %@ + len %u hanging off edge %u > %u", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3594, selfCopy, v110, v31, v27, v140);
    goto LABEL_188;
  }

LABEL_189:
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    _NRLogWithArgs(qword_1002290F8, 2, "%s%.30s:%-4d %@%@", ", "[NRBabelInstance handlePacket:length:remoteAddr:localAddr:babelInterface:dtls:]"", 3840, selfCopy, v143);
  }

  if (v141)
  {
    [(NRBabelInstance *)selfCopy updateRoutes];
  }

LABEL_198:
}

- (void)sendImmediateRouteUpdateToNeighbor:(id)neighbor
{
  neighborCopy = neighbor;
  v5 = neighborCopy;
  if (neighborCopy)
  {
    v23 = neighborCopy;
    v6 = [NSArray arrayWithObjects:&v23 count:1];
  }

  else
  {
    v6 = self->_neighbors;
  }

  v7 = v6;
  createUpdateTLVs = [(NRBabelInstance *)self createUpdateTLVs];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = objc_alloc_init(NSMutableArray);
        createIHUTLV = [v14 createIHUTLV];
        [v15 addObject:createIHUTLV];

        createPersonalHelloTLV = [v14 createPersonalHelloTLV];
        [v15 addObject:createPersonalHelloTLV];

        [v15 addObjectsFromArray:createUpdateTLVs];
        [v14 sendTLVs:v15];
        [v14 enqueueNextUpdate];
        [v14 enqueueNextIHU];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (id)createUpdateTLVsForPrefix:(id)prefix interval:(unsigned __int16)interval
{
  intervalCopy = interval;
  v6 = [(NRBabelInstance *)self createSelectedRoutesArrayForPrefix:prefix];
  v7 = [(NRBabelInstance *)self createUpdateTLVsForRoutes:v6 interval:intervalCopy];

  return v7;
}

- (id)createUpdateTLVsForRoutes:(id)routes interval:(unsigned __int16)interval
{
  intervalCopy = interval;
  routesCopy = routes;
  v27 = objc_alloc_init(NSMutableArray);
  if ([routesCopy count])
  {
    v7 = objc_alloc_init(NSMutableArray);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = routesCopy;
    v8 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v36 + 1) + 8 * i) routerID]);
          if (([v7 containsObject:v12] & 1) == 0)
          {
            [v7 addObject:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v9);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v7;
    v24 = [v22 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v24)
    {
      v23 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v22);
          }

          v26 = v13;
          unsignedLongLongValue = [*(*(&v32 + 1) + 8 * v13) unsignedLongLongValue];
          [(NRBabelInstance *)self addRouterID:unsignedLongLongValue toTLVs:v27];
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v15 = obj;
          v16 = [v15 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v29;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v29 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v28 + 1) + 8 * j);
                if ([v20 routerID] == unsignedLongLongValue)
                {
                  if (qword_100229100 != -1)
                  {
                    dispatch_once(&qword_100229100, &stru_1001FB6C8);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229100 != -1)
                    {
                      dispatch_once(&qword_100229100, &stru_1001FB6C8);
                    }

                    _NRLogWithArgs(qword_1002290F8, 2, "%s%.30s:%-4d sending update for %@", ", "[NRBabelInstance createUpdateTLVsForRoutes:interval:]"", 3441, v20);
                  }

                  [(NRBabelInstance *)self addUpdateForRoute:v20 interval:intervalCopy toTLVs:v27];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v28 objects:v40 count:16];
            }

            while (v17);
          }

          v13 = v26 + 1;
        }

        while ((v26 + 1) != v24);
        v24 = [v22 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v24);
    }
  }

  return v27;
}

- (void)updateFeasabilityDistanceForRoute:(id)route
{
  routeCopy = route;
  if ([routeCopy metric] != 0xFFFF)
  {
    bPrefix = [routeCopy bPrefix];
    v5 = -[NRBabelInstance copySourceWithPrefix:routerID:](self, "copySourceWithPrefix:routerID:", bPrefix, [routeCopy routerID]);

    if (v5)
    {
      -[NRBabelSource updateFeasabilityDistanceWithSeqno:metric:](v5, "updateFeasabilityDistanceWithSeqno:metric:", [routeCopy seqno], objc_msgSend(routeCopy, "metric"));
    }

    else
    {
      v6 = [NRBabelSource alloc];
      bPrefix2 = [routeCopy bPrefix];
      routerID = [routeCopy routerID];
      seqno = [routeCopy seqno];
      receivedMetric = [routeCopy receivedMetric];
      instance = [routeCopy instance];
      v5 = [(NRBabelSource *)v6 initWithPrefix:bPrefix2 routerID:routerID seqno:seqno metric:receivedMetric instance:instance];
    }

    [(NRBabelSource *)v5 resetGCTimer];
  }
}

- (id)createSelectedRoutesArrayForPrefix:(id)prefix
{
  prefixCopy = prefix;
  if (![prefixCopy plen])
  {

    prefixCopy = 0;
  }

  v4 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_routes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 selected])
        {
          if ([v10 metric] == 0xFFFF)
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229100 != -1)
              {
                dispatch_once(&qword_100229100, &stru_1001FB6C8);
              }

              _NRLogWithArgs(qword_1002290F8, 17, "%@ found invalid selected infinite route %@", self, v10);
            }
          }

          else if (!prefixCopy || ([v10 bPrefix], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(prefixCopy, "isEqual:", v11), v11, v12))
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)addUpdateForRoute:(id)route interval:(unsigned __int16)interval toTLVs:(id)vs
{
  intervalCopy = interval;
  routeCopy = route;
  vsCopy = vs;
  v18 = 0uLL;
  bPrefix = [routeCopy bPrefix];
  [bPrefix writePrefix:&v18];

  if (v18 || *(&v18 + 4) != 0xFFFF000000000000)
  {
    LODWORD(v17) = 0;
    v13 = 8;
    HIWORD(v13) = __rev16(intervalCopy);
    v14 = __rev16([routeCopy seqno]);
    v15 = __rev16([routeCopy metric]);
    bPrefix2 = [routeCopy bPrefix];
    v11 = [bPrefix2 writeToAE:&v13 + 2 plen:&v13 + 4 prefix:&v16];

    BYTE1(v13) = v11 + 10;
    v12 = [[NSData alloc] initWithBytes:&v13 length:(v11 + 10) + 2];
    [vsCopy addObject:v12];
  }
}

- (void)addRouterID:(unint64_t)d toTLVs:(id)vs
{
  v6 = 2566;
  dCopy = d;
  vsCopy = vs;
  v5 = [[NSData alloc] initWithBytes:&v6 length:12];
  [vsCopy addObject:v5];
}

- (void)updateRoutes
{
  v3 = objc_alloc_init(NSMutableArray);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  selfCopy = self;
  v4 = self->_routes;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v78;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v78 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v77 + 1) + 8 * i);
        bPrefix = [v9 bPrefix];
        v11 = [v3 containsObject:bPrefix];

        if ((v11 & 1) == 0)
        {
          bPrefix2 = [v9 bPrefix];
          [v3 addObject:bPrefix2];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v6);
  }

  v56 = objc_alloc_init(NSMutableArray);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v3;
  v52 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v52)
  {
    v51 = *v74;
    do
    {
      for (j = 0; j != v52; j = j + 1)
      {
        if (*v74 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v73 + 1) + 8 * j);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v16 = selfCopy->_routes;
        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v69 objects:v84 count:16];
        if (v17)
        {
          v18 = v17;
          v53 = j;
          v14 = 0;
          v19 = *v70;
          metric = -1;
          do
          {
            for (k = 0; k != v18; k = k + 1)
            {
              if (*v70 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v69 + 1) + 8 * k);
              bPrefix3 = [v22 bPrefix];
              v24 = [v15 isContainedInPrefix:bPrefix3];

              if (v24 && [v22 metric] < metric)
              {
                v25 = v22;

                metric = [v25 metric];
                v14 = v25;
              }
            }

            v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v69 objects:v84 count:16];
          }

          while (v18);

          if (v14)
          {
            j = v53;
            if (([v56 containsObject:v14] & 1) == 0)
            {
              [v56 addObject:v14];
            }
          }

          else
          {
            j = v53;
          }
        }

        else
        {

          v14 = 0;
        }
      }

      v52 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v52);
  }

  v54 = objc_alloc_init(NSMutableArray);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v26 = selfCopy->_routes;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v65 objects:v83 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v66;
    do
    {
      for (m = 0; m != v28; m = m + 1)
      {
        if (*v66 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v65 + 1) + 8 * m);
        selected = [v32 selected];
        v34 = [v56 containsObject:v32];
        if (selected != v34)
        {
          v35 = v34;
          [v32 setSelected:v34];
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            v36 = "un";
            if (v35)
            {
              v36 = "";
            }

            _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d %@%sselecting route %@", ", "[NRBabelInstance updateRoutes]"", 3256, selfCopy, v36, v32);
          }

          if (v35)
          {
            [v54 addObject:v32];
          }

          v29 = 1;
        }
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v65 objects:v83 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v37 = selfCopy->_routes;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v61 objects:v82 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v62;
    do
    {
      for (n = 0; n != v39; n = n + 1)
      {
        if (*v62 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v61 + 1) + 8 * n);
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d adding %@", ", "[NRBabelInstance updateRoutes]"", 3278, v42);
        }

        [v42 applyUsingSystem];
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v61 objects:v82 count:16];
    }

    while (v39);
  }

  if (v29)
  {
    v43 = [[NSArray alloc] initWithArray:selfCopy->_posrs];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v44 = v43;
    v45 = [v44 countByEnumeratingWithState:&v57 objects:v81 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v58;
      do
      {
        for (ii = 0; ii != v46; ii = ii + 1)
        {
          if (*v58 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v57 + 1) + 8 * ii) cancelIfRouteUnselected];
        }

        v46 = [v44 countByEnumeratingWithState:&v57 objects:v81 count:16];
      }

      while (v46);
    }

    [(NRBabelInstance *)selfCopy sendImmediateRouteUpdateToAllNeighbors];
    v49 = v56;
  }

  else
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v49 = v56;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 2, "%s%.30s:%-4d no route changed", ", "[NRBabelInstance updateRoutes]"", 3289);
    }
  }
}

- (void)handleSeqnoReqFromAddr:(const in6_addr *)addr babelInterface:(id)interface ForPrefix:(const in6_addr *)prefix plen:(unsigned __int8)plen routerID:(unint64_t)d seqno:(unsigned __int16)seqno hopCount:(unsigned __int8)count
{
  seqnoCopy = seqno;
  plenCopy = plen;
  interfaceCopy = interface;
  selfCopy = self;
  v78 = [(NRBabelInstance *)self copyNeighborWithAddr:addr babelInterface:interfaceCopy isNewNeighbor:0];
  v15 = [[NRBabelPrefix alloc] initWithPrefix:prefix plen:plenCopy];
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v16 = qword_1002290F8;
    v17 = bswap64(d);
    v18 = qword_1002290F8;
    if (v17 > 0xFFFE)
    {
      v20 = [NSString alloc];
      v21 = bswap32(d);
      v19 = [v20 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v21), v21, bswap32(HIDWORD(d)) >> 16, __rev16(HIWORD(d))];
    }

    else
    {
      v19 = [[NSString alloc] initWithFormat:@"<%llx>", v17, v68, v69, v70];
    }

    v22 = v19;
    _NRLogWithArgs(v16, 1, "%s%.30s:%-4d %@got SeqnoReq for %@ %@ seqno %u hopCount %u from %@", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3138, self, v15, v19, seqnoCopy, count, v78);
  }

  v23 = [(NRBabelInstance *)self createSelectedRoutesArrayForPrefix:v15];
  if ([v23 count])
  {
    v72 = v15;
    v73 = interfaceCopy;
    v24 = objc_alloc_init(NSMutableArray);
    v75 = objc_alloc_init(NSMutableArray);
    v76 = objc_alloc_init(NSMutableArray);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v71 = v23;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v85 objects:v90 count:16];
    v80 = v24;
    v27 = &qword_100229000;
    dCopy2 = d;
    if (v26)
    {
      v29 = v26;
      v30 = *v86;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v86 != v30)
          {
            objc_enumerationMutation(v25);
          }

          v33 = *(*(&v85 + 1) + 8 * i);
          if ([v33 routerID] != dCopy2)
          {
            goto LABEL_23;
          }

          seqno = [v33 seqno];
          if (seqno == seqnoCopy)
          {
            goto LABEL_23;
          }

          if (seqno >= seqnoCopy)
          {
            if ((seqno - seqnoCopy) >= 0)
            {
              LOBYTE(v42) = -1;
            }

            else
            {
              LOBYTE(v42) = 1;
            }

            if ((seqno - seqnoCopy) == 0x8000)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if ((seqnoCopy - seqno) == 0x8000)
            {
              goto LABEL_23;
            }

            v42 = ((seqnoCopy - seqno) >> 15) | 1;
          }

          if (v42 > 0)
          {
            if (selfCopy->_routerID == dCopy2)
            {
              v32 = v75;
            }

            else
            {
              v32 = v76;
            }

            goto LABEL_18;
          }

LABEL_23:
          if (v27[32] != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          IsLevelEnabled = _NRLogIsLevelEnabled();
          v32 = v24;
          if (IsLevelEnabled)
          {
            if (v27[32] != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            v36 = qword_1002290F8;
            if ([v33 routerID] == dCopy2)
            {
              v37 = "";
            }

            else
            {
              v37 = "not ";
            }

            seqno2 = [v33 seqno];
            seqno3 = [v33 seqno];
            if ((seqno3 - seqnoCopy) >= 0)
            {
              v40 = -1;
            }

            else
            {
              v40 = 1;
            }

            if ((seqno3 - seqnoCopy) == 0x8000)
            {
              v40 = 0;
            }

            v41 = (((seqnoCopy - seqno3) << 16) >> 31) | 1;
            if ((seqnoCopy - seqno3) == 0x8000)
            {
              v41 = 0;
            }

            if (seqno3 < seqnoCopy)
            {
              v40 = v41;
            }

            if (seqno3 == seqnoCopy)
            {
              v40 = 0;
            }

            dCopy2 = d;
            _NRLogWithArgs(v36, 16, "%s%.30s:%-4d SEQSTUFF routerID %sequal, compare(%u,%u) = %d", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3152, v37, seqno2, seqnoCopy, v40);

            v24 = v80;
            v32 = v80;
            v27 = &qword_100229000;
          }

LABEL_18:
          [v32 addObject:v33];
        }

        v29 = [v25 countByEnumeratingWithState:&v85 objects:v90 count:16];
      }

      while (v29);
    }

    if ([v24 count])
    {
      v43 = v75;
      if (v27[32] != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v15 = v72;
      interfaceCopy = v73;
      v23 = v71;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v44 = qword_1002290F8;
        if ([v24 count] == 1)
        {
          v45 = [v24 objectAtIndexedSubscript:0];
          _NRLogWithArgs(v44, 1, "%s%.30s:%-4d responding to seqno req with existing routes %@", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3162, v45);
        }

        else
        {
          _NRLogWithArgs(v44, 1, "%s%.30s:%-4d responding to seqno req with existing routes %@", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3162, v24);
        }
      }

      v50 = selfCopy;
      v51 = v24;
    }

    else
    {
      v43 = v75;
      if (![v75 count])
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v52 = v76;
        v53 = [v52 countByEnumeratingWithState:&v81 objects:v89 count:16];
        if (v53)
        {
          v54 = v53;
          v74 = 0;
          v55 = *v82;
          metric = -1;
          do
          {
            for (j = 0; j != v54; j = j + 1)
            {
              if (*v82 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v58 = *(*(&v81 + 1) + 8 * j);
              neighbor = [v58 neighbor];
              v60 = [v78 isEqual:neighbor];

              if ((v60 & 1) == 0 && [v58 metric] < metric)
              {
                metric = [v58 metric];
                v61 = v58;

                v74 = v61;
              }

              v24 = v80;
              v27 = &qword_100229000;
            }

            v54 = [v52 countByEnumeratingWithState:&v81 objects:v89 count:16];
          }

          while (v54);

          v62 = v74;
          v43 = v75;
          if (v74)
          {
            v23 = v71;
            v15 = v72;
            interfaceCopy = v73;
            if (count > 1u)
            {
              if (qword_100229100 != -1)
              {
                dispatch_once(&qword_100229100, &stru_1001FB6C8);
              }

              if (_NRLogIsLevelEnabled())
              {
                v66 = sub_1000CB9A8();
                neighbor2 = [v74 neighbor];
                _NRLogWithArgs(v66, 1, "%s%.30s:%-4d responding to seqno req by maybe sending to %@", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3201, neighbor2);

                v62 = v74;
              }

              [(NRBabelInstance *)selfCopy sendSeqnoReqIfNecessaryTo:v62 forPrefix:v72 routerID:d seqno:seqnoCopy hopCount:(count - 1) originator:v78];
            }

            else
            {
              if (qword_100229100 != -1)
              {
                dispatch_once(&qword_100229100, &stru_1001FB6C8);
              }

              if (_NRLogIsLevelEnabled())
              {
                v63 = sub_1000CB9A8();
                _NRLogWithArgs(v63, 16, "%s%.30s:%-4d received seqno req with dead hop count %u", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3197, count);
              }
            }

            goto LABEL_97;
          }
        }

        else
        {
        }

        v64 = v27[32];
        v15 = v72;
        interfaceCopy = v73;
        v23 = v71;
        if (v64 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          v65 = qword_1002290F8;
          _NRLogWithArgs(v65, 1, "%s%.30s:%-4d not responding to seqno req since selected routes come from originator", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3190);
        }

        v62 = 0;
        goto LABEL_97;
      }

      ++selfCopy->_nodeSeqno;
      v46 = v27[32];
      interfaceCopy = v73;
      if (v46 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v23 = v71;
      v15 = v72;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v47 = qword_1002290F8;
        nodeSeqno = selfCopy->_nodeSeqno;
        if ([v75 count] == 1)
        {
          v49 = [v75 objectAtIndexedSubscript:0];
          _NRLogWithArgs(v47, 1, "%s%.30s:%-4d responding to seqno req for %u by increasing seqno to %u and sending %@", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3170, seqnoCopy, nodeSeqno, v49);
        }

        else
        {
          _NRLogWithArgs(v47, 1, "%s%.30s:%-4d responding to seqno req for %u by increasing seqno to %u and sending %@", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3170, seqnoCopy, nodeSeqno, v75);
        }
      }

      v50 = selfCopy;
      v51 = v75;
    }

    v62 = [(NRBabelInstance *)v50 createUpdateTLVsForRoutes:v51];
    [v78 sendTLVs:v62];
LABEL_97:

    goto LABEL_98;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d not responding to seqno req since we have no selected routes", ", "[NRBabelInstance handleSeqnoReqFromAddr:babelInterface:ForPrefix:plen:routerID:seqno:hopCount:]"", 3143);
  }

LABEL_98:
}

- (void)sendSeqnoReqIfNecessaryTo:(id)to forPrefix:(id)prefix routerID:(unint64_t)d seqno:(unsigned __int16)seqno hopCount:(unsigned __int8)count originator:(id)originator
{
  countCopy = count;
  seqnoCopy = seqno;
  toCopy = to;
  originatorCopy = originator;
  v23 = 0;
  v16 = [(NRBabelInstance *)self copyPendingOutgoingSeqnoReqWithPrefix:prefix routerID:d isNewPOSR:&v23];
  v17 = v16;
  if (v23)
  {
    goto LABEL_2;
  }

  seqno = [v16 seqno];
  if (seqno != seqnoCopy)
  {
    if (seqno >= seqnoCopy)
    {
      if ((seqno - seqnoCopy) >= 0)
      {
        LOBYTE(v22) = -1;
      }

      else
      {
        LOBYTE(v22) = 1;
      }

      if ((seqno - seqnoCopy) == 0x8000)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if ((seqnoCopy - seqno) == 0x8000)
      {
        goto LABEL_4;
      }

      v22 = ((seqnoCopy - seqno) >> 15) | 1;
    }

    if (v22 > 0)
    {
LABEL_2:
      [v17 setSeqno:seqnoCopy];
      [v17 setOriginator:originatorCopy];
      [v17 setRoute:toCopy];
      neighbor = [toCopy neighbor];
      [v17 setTarget:neighbor];

      [v17 setHopCount:countCopy];
      [v17 start];
      goto LABEL_10;
    }
  }

LABEL_4:
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v20 = qword_1002290F8;
    neighbor2 = [toCopy neighbor];
    _NRLogWithArgs(v20, 1, "%s%.30s:%-4d already have pending seqno req for %@, ignoring request for %u from %@ to %@", ", "[NRBabelInstance sendSeqnoReqIfNecessaryTo:forPrefix:routerID:seqno:hopCount:originator:]"", 3116, v17, seqnoCopy, originatorCopy, neighbor2);
  }

LABEL_10:
}

- (void)handleRouteReqFromAddr:(const in6_addr *)addr babelInterface:(id)interface ForPrefix:(const in6_addr *)prefix plen:(unsigned __int8)plen
{
  plenCopy = plen;
  v11 = [(NRBabelInstance *)self copyNeighborWithAddr:addr babelInterface:interface isNewNeighbor:0];
  v9 = [[NRBabelPrefix alloc] initWithPrefix:prefix plen:plenCopy];
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d %@got RouteReq for %@ from %@", ", "[NRBabelInstance handleRouteReqFromAddr:babelInterface:ForPrefix:plen:]"", 3097, self, v9, v11);
  }

  v10 = [(NRBabelInstance *)self createUpdateTLVsForPrefix:v9];
  [v11 sendTLVs:v10];
}

- (BOOL)handleUpdateFromAddr:(const in6_addr *)addr ForPrefix:(const in6_addr *)prefix plen:(unsigned __int8)plen nextHop:(const in6_addr *)hop babelInterface:(id)interface routerID:(unint64_t)d seqno:(unsigned __int16)seqno interval:(unsigned __int16)self0 metric:(unsigned __int16)self1 ae:(unsigned __int8)self2
{
  plenCopy = plen;
  interfaceCopy = interface;
  v19 = [[NRBabelPrefix alloc] initWithPrefix:prefix plen:plenCopy];
  selfCopy = self;
  v20 = [(NRBabelInstance *)self copyNeighborWithAddr:addr babelInterface:interfaceCopy isNewNeighbor:0];
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v21 = qword_1002290F8;
    v22 = bswap64(d);
    v23 = qword_1002290F8;
    if (v22 > 0xFFFE)
    {
      v25 = [NSString alloc];
      v26 = bswap32(d);
      v24 = [v25 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v26), v26, bswap32(HIDWORD(d)) >> 16, __rev16(HIWORD(d))];
    }

    else
    {
      v24 = [[NSString alloc] initWithFormat:@"<%llx>", v22, v76, v77, v78];
    }

    v27 = v24;
    v28 = [v20 descriptionWithNextHop:hop];
    _NRLogWithArgs(v21, 2, "%s%.30s:%-4d %@Got Route %@ %@ seqno %u metric %u via %@ interval %u", ", "[NRBabelInstance handleUpdateFromAddr:ForPrefix:plen:nextHop:babelInterface:routerID:seqno:interval:metric:ae:]"", 2915, self, v19, v27, seqno, metric, v28, interval);
  }

  if (metric != 0xFFFF || ae)
  {
    v79 = interfaceCopy;
    v32 = [(NRBabelInstance *)self copyRouteWithPrefix:v19 neighbor:v20];
    v33 = [(NRBabelInstance *)self isNewDistanceUnfeasibleForPrefix:v19 routerID:d seqno:seqno metric:metric];
    v34 = v33;
    v80 = v20;
    if (v32)
    {
      v81 = v32;
      selected = [(NRBabelRoute *)v32 selected];
      if (metric != 0xFFFF && (selected & v34) != 0)
      {
        v36 = v32;
        if ([(NRBabelRoute *)v32 routerID]== d)
        {
          interfaceCopy = v79;
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            v37 = qword_1002290F8;
            v38 = bswap64(d);
            v39 = qword_1002290F8;
            if (v38 > 0xFFFE)
            {
              v57 = [NSString alloc];
              v58 = bswap32(d);
              v40 = [v57 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v58), v58, bswap32(HIDWORD(d)) >> 16, __rev16(HIWORD(d))];
            }

            else
            {
              v40 = [[NSString alloc] initWithFormat:@"<%llx>", v38, v76, v77, v78];
            }

            v59 = v40;
            _NRLogWithArgs(v37, 2, "%s%.30s:%-4d %@ignoring unfeasible route for %@ %@", ", "[NRBabelInstance handleUpdateFromAddr:ForPrefix:plen:nextHop:babelInterface:routerID:seqno:interval:metric:ae:]"", 2967, selfCopy, v19, v40);
          }

          goto LABEL_98;
        }

        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          v49 = qword_1002290F8;
          v50 = bswap64(d);
          v51 = qword_1002290F8;
          if (v50 > 0xFFFE)
          {
            v60 = [NSString alloc];
            v61 = bswap32(d);
            v36 = v32;
            v52 = [v60 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v61), v61, bswap32(HIDWORD(d)) >> 16, __rev16(HIWORD(d))];
          }

          else
          {
            v52 = [[NSString alloc] initWithFormat:@"<%llx>", v50, v76, v77, v78];
          }

          v62 = v52;
          _NRLogWithArgs(v49, 2, "%s%.30s:%-4d %@ retracting due to mismatched routerID %@: %@", ", "[NRBabelInstance handleUpdateFromAddr:ForPrefix:plen:nextHop:babelInterface:routerID:seqno:interval:metric:ae:]"", 2965, self, v52, v36);
        }

        v63 = v36;
        v48 = v79;
        [(NRBabelRoute *)v63 setReceivedMetric:0xFFFFLL];
        goto LABEL_83;
      }

      receivedMetric = [(NRBabelRoute *)v32 receivedMetric];
      v46 = receivedMetric != metric;
      if (receivedMetric == metric)
      {
        v47 = v81;
        if (metric == 0xFFFF)
        {
          goto LABEL_50;
        }
      }

      else
      {
        [(NRBabelRoute *)v81 setReceivedMetric:metric];
        v47 = v81;
        if (metric == 0xFFFF)
        {
LABEL_44:
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          v48 = v79;
          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            _NRLogWithArgs(qword_1002290F8, 2, "%s%.30s:%-4d %@updated route table entry %@", ", "[NRBabelInstance handleUpdateFromAddr:ForPrefix:plen:nextHop:babelInterface:routerID:seqno:interval:metric:ae:]"", 3013, self, v81);
          }

LABEL_83:
          v31 = 1;
LABEL_84:
          v64 = [[NSArray alloc] initWithArray:self->_posrs];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v65 = v64;
          v66 = [v65 countByEnumeratingWithState:&v83 objects:v87 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v84;
            do
            {
              for (i = 0; i != v67; i = i + 1)
              {
                if (*v84 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                [*(*(&v83 + 1) + 8 * i) cancelIfMatchesPrefix:v19 routerID:d seqno:seqno];
              }

              v67 = [v65 countByEnumeratingWithState:&v83 objects:v87 count:16];
            }

            while (v67);
          }

          interfaceCopy = v48;
          v36 = v81;
          goto LABEL_99;
        }
      }

      if ([(NRBabelRoute *)v47 routerID]!= d)
      {
        [(NRBabelRoute *)v47 setRouterID:d];
        v46 = 1;
      }

      if (![(NRBabelRoute *)v47 isNextHopEqualTo:hop])
      {
        [(NRBabelRoute *)v47 setNextHop:hop];
        v46 = 1;
      }

      if (interval != 0xFFFF)
      {
        [(NRBabelRoute *)v47 setInterval:?];
      }

      [(NRBabelRoute *)v47 setNumExpiryTimerFires:0];
      [(NRBabelRoute *)v47 resetExpiryTimer];
      if (v46)
      {
        goto LABEL_44;
      }

LABEL_50:
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v48 = v79;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 2, "%s%.30s:%-4d %@not changing route table entry %@", ", "[NRBabelInstance handleUpdateFromAddr:ForPrefix:plen:nextHop:babelInterface:routerID:seqno:interval:metric:ae:]"", 3015, self, v81);
      }

      v31 = 0;
      goto LABEL_84;
    }

    if (metric == 0xFFFF)
    {
      interfaceCopy = v79;
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_97;
      }

      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v41 = qword_1002290F8;
      v53 = bswap64(d);
      v54 = qword_1002290F8;
      if (v53 > 0xFFFE)
      {
        v70 = [NSString alloc];
        v71 = bswap32(d);
        v55 = [v70 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v71), v71, bswap32(HIDWORD(d)) >> 16, __rev16(HIWORD(d))];
      }

      else
      {
        v55 = [[NSString alloc] initWithFormat:@"<%llx>", v53, v76, v77, v78];
      }

      v72 = v55;
      _NRLogWithArgs(v41, 2, "%s%.30s:%-4d %@ignoring new retraction for %@ %@", ", "[NRBabelInstance handleUpdateFromAddr:ForPrefix:plen:nextHop:babelInterface:routerID:seqno:interval:metric:ae:]"", 2937, selfCopy, v19, v55);
    }

    else
    {
      interfaceCopy = v79;
      if (!v33)
      {
        v56 = [[NRBabelRoute alloc] initWithPrefix:v19 neighbor:v20 routerID:d seqno:seqno interval:interval receivedMetric:metric nextHop:hop instance:self];
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v81 = v56;
        if (_NRLogIsLevelEnabled())
        {
          v48 = v79;
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          _NRLogWithArgs(qword_1002290F8, 2, "%s%.30s:%-4d %@created new route table entry %@", ", "[NRBabelInstance handleUpdateFromAddr:ForPrefix:plen:nextHop:babelInterface:routerID:seqno:interval:metric:ae:]"", 2957, self, v56);
        }

        else
        {
          v48 = v79;
        }

        goto LABEL_83;
      }

      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (!_NRLogIsLevelEnabled())
      {
LABEL_97:
        v36 = 0;
LABEL_98:
        v31 = 0;
LABEL_99:

        v30 = v80;
        goto LABEL_100;
      }

      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v41 = qword_1002290F8;
      v42 = bswap64(d);
      v43 = qword_1002290F8;
      if (v42 > 0xFFFE)
      {
        v73 = [NSString alloc];
        v74 = bswap32(d);
        v44 = [v73 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v74), v74, bswap32(HIDWORD(d)) >> 16, __rev16(HIWORD(d))];
      }

      else
      {
        v44 = [[NSString alloc] initWithFormat:@"<%llx>", v42, v76, v77, v78];
      }

      v72 = v44;
      _NRLogWithArgs(v41, 2, "%s%.30s:%-4d %@ignoring unfeasible retraction for %@ %@", ", "[NRBabelInstance handleUpdateFromAddr:ForPrefix:plen:nextHop:babelInterface:routerID:seqno:interval:metric:ae:]"", 2942, selfCopy, v19, v44);
    }

    goto LABEL_97;
  }

  v29 = [(NRBabelInstance *)self purgeAllRoutesFromNeighbor:v20];
  v30 = v20;
  v31 = v29;
LABEL_100:

  return v31;
}

- (BOOL)purgeInterface:(id)interface
{
  interfaceCopy = interface;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_neighbors;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        babelInterface = [v11 babelInterface];
        v13 = [babelInterface isEqual:interfaceCopy];

        if (v13)
        {
          v8 |= [(NRBabelInstance *)self purgeAllRoutesFromNeighbor:v11];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (BOOL)purgeAllRoutesFromNeighbor:(id)neighbor
{
  neighborCopy = neighbor;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_routes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        neighbor = [v11 neighbor];
        if ([neighbor isEqual:neighborCopy])
        {
          receivedMetric = [v11 receivedMetric];

          if (receivedMetric != 0xFFFF)
          {
            [v11 setReceivedMetric:0xFFFFLL];
            v8 = 1;
          }
        }

        else
        {
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)handleIHUFromAddr:(const in6_addr *)addr babelInterface:(id)interface rxcost:(unsigned __int16)rxcost interval:(unsigned __int16)interval
{
  intervalCopy = interval;
  rxcostCopy = rxcost;
  interfaceCopy = interface;
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  IsLevelEnabled = _NRLogIsLevelEnabled();
  if (IsLevelEnabled)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v11 = qword_1002290F8;
    IPv6AddrString = createIPv6AddrString();
    _NRLogWithArgs(v11, 2, "%s%.30s:%-4d %@Got IHU from %@[%@] rxcost %u interval %u", ", "[NRBabelInstance handleIHUFromAddr:babelInterface:rxcost:interval:]"", 2857, self, IPv6AddrString, interfaceCopy, rxcostCopy, intervalCopy);
  }

  v13 = interfaceCopy;
  if (intervalCopy)
  {
    v14 = [(NRBabelInstance *)self copyNeighborWithAddr:addr babelInterface:interfaceCopy isNewNeighbor:0];
    [v14 setTxcost:rxcostCopy];
    [v14 resetIncomingIHUTimerInterval:intervalCopy];

    v13 = interfaceCopy;
  }

  _objc_release_x1(IsLevelEnabled, v13);
}

- (void)handleHelloFromAddr:(const in6_addr *)addr babelInterface:(id)interface seqno:(unsigned __int16)seqno interval:(unsigned __int16)interval personal:(BOOL)personal
{
  personalCopy = personal;
  intervalCopy = interval;
  seqnoCopy = seqno;
  interfaceCopy = interface;
  v18 = 0;
  v13 = [(NRBabelInstance *)self copyNeighborWithAddr:addr babelInterface:interfaceCopy isNewNeighbor:&v18];
  if (v18 == 1)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v14 = qword_1002290F8;
      IPv6AddrString = createIPv6AddrString();
      metric = [v13 metric];
      v17 = "public";
      if (personalCopy)
      {
        v17 = "personal";
      }

      _NRLogWithArgs(v14, 1, "%s%.30s:%-4d %@Adding new neighbor [%@] %@ - seqno %u interval %u metric %u %s", ", "[NRBabelInstance handleHelloFromAddr:babelInterface:seqno:interval:personal:]"", 2839, self, interfaceCopy, IPv6AddrString, seqnoCopy, intervalCopy, metric, v17);
    }

    [(NRBabelInstance *)self sendImmediateRouteUpdateToNeighbor:v13];
  }

  [v13 handleHelloWithSeqno:seqnoCopy interval:intervalCopy personal:personalCopy];
}

- (void)handleAckReqFromAddr:(const in6_addr *)addr babelInterface:(id)interface nonce:(unsigned __int16)nonce interval:(unsigned __int16)interval
{
  intervalCopy = interval;
  nonceCopy = nonce;
  v8 = [(NRBabelInstance *)self copyNeighborWithAddr:addr babelInterface:interface isNewNeighbor:0];
  v10[0] = 515;
  v10[1] = __rev16(nonceCopy);
  v9 = [[NSData alloc] initWithBytes:v10 length:4];
  [v8 scheduleTLV:v9 interval:intervalCopy];
}

- (id)copyPendingOutgoingSeqnoReqWithPrefix:(id)prefix routerID:(unint64_t)d isNewPOSR:(BOOL *)r
{
  prefixCopy = prefix;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_posrs;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 matchesPrefix:prefixCopy routerID:{d, v16}])
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (r)
  {
    *r = v10 == 0;
  }

  if (!v10)
  {
    v14 = [[NRPendingOutgoingSeqnoReq alloc] initWithInstance:self prefix:prefixCopy routerID:d];
    if (v14)
    {
      v10 = v14;
      [(NSMutableArray *)self->_posrs addObject:v14];
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 17, "NRPendingOutgoingSeqnoReq init failed", v16);
      }

      v10 = 0;
    }
  }

  return v10;
}

- (id)copyRouteWithPrefix:(id)prefix neighbor:(id)neighbor
{
  prefixCopy = prefix;
  neighborCopy = neighbor;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_routes;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 matchesPrefix:prefixCopy neighbor:{neighborCopy, v14}])
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (BOOL)isNewDistanceUnfeasibleForPrefix:(id)prefix routerID:(unint64_t)d seqno:(unsigned __int16)seqno metric:(unsigned __int16)metric
{
  metricCopy = metric;
  seqnoCopy = seqno;
  v8 = [(NRBabelInstance *)self copySourceWithPrefix:prefix routerID:d];
  LOBYTE(metricCopy) = [v8 isNewDistanceUnfeasibleWithSeqno:seqnoCopy metric:metricCopy];

  return metricCopy;
}

- (id)copySourceWithPrefix:(id)prefix routerID:(unint64_t)d
{
  prefixCopy = prefix;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_sources;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 matchesPrefix:prefixCopy routerID:{d, v15}])
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)copyNeighborWithAddr:(const in6_addr *)addr babelInterface:(id)interface isNewNeighbor:(BOOL *)neighbor
{
  interfaceCopy = interface;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_neighbors;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 matchesAddress:addr babelInterface:{interfaceCopy, v16}])
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (neighbor)
  {
    *neighbor = v10 == 0;
  }

  if (!v10)
  {
    v14 = [[NRBabelNeighbor alloc] initWithAddress:addr babelInterface:interfaceCopy];
    if (v14)
    {
      v10 = v14;
      [(NSMutableArray *)self->_neighbors addObject:v14];
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 17, "NRBabelNeighbor init failed", v16);
      }

      v10 = 0;
    }
  }

  return v10;
}

- (NRBabelInstance)init
{
  v41.receiver = self;
  v41.super_class = NRBabelInstance;
  v2 = [(NRBabelInstance *)&v41 init];
  if (!v2)
  {
    v26 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v28 = sub_1000CB9A8();
      _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBabelInstance init]"", 2699);
    }

    v29 = _os_log_pack_size();
    v5 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = __error();
    v31 = _os_log_pack_fill(v5, v29, *v30, &_mh_execute_header, "%{public}s [super init] failed");
    *v31 = 136446210;
    *(v31 + 4) = "[NRBabelInstance init]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
LABEL_13:
    v32 = sub_1000CB9A8();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = sub_1000CB9A8();
      _NRLogWithArgs(v34, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", ", "nr_dispatch_queue_create"", 196, v5);
    }

    v35 = _os_log_pack_size();
    v36 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = __error();
    v38 = _os_log_pack_fill(v36, v35, *v37, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v38 = 136446466;
    *(v38 + 4) = "nr_dispatch_queue_create";
    *(v38 + 12) = 2080;
    *(v38 + 14) = v5;
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = _NRCopySerialQueueAttr();
  v5 = "terminusd.babel";
  v6 = dispatch_queue_create("terminusd.babel", v4);

  if (!v6)
  {
    goto LABEL_13;
  }

  queue = v3->_queue;
  v3->_queue = v6;

  v8 = objc_alloc_init(NSMutableArray);
  interfaces = v3->_interfaces;
  v3->_interfaces = v8;

  v10 = objc_alloc_init(NSMutableArray);
  neighbors = v3->_neighbors;
  v3->_neighbors = v10;

  v12 = objc_alloc_init(NSMutableArray);
  sources = v3->_sources;
  v3->_sources = v12;

  v14 = objc_alloc_init(NSMutableArray);
  routes = v3->_routes;
  v3->_routes = v14;

  v16 = objc_alloc_init(NSMutableArray);
  posrs = v3->_posrs;
  v3->_posrs = v16;

  v18 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/tmp/terminus_babel_data.plist"];
  if (!v18)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
  }

  v19 = [v18 objectForKeyedSubscript:@"routerID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v20 = [v19 unsignedLongLongValue]) == 0)
  {
    do
    {
      v21 = arc4random();
      v20 = (arc4random() | (v21 << 32));
    }

    while (v20 + 1 < 2);
    v22 = [NSNumber numberWithUnsignedLongLong:v20];
    [v18 setObject:v22 forKeyedSubscript:@"routerID"];

    sub_10013A364(@"/tmp/terminus_babel_data.plist", v18, 1);
  }

  v3->_routerID = v20;
  v3->_nodeSeqno = arc4random_uniform(0x10000u);
  v23 = v3->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA668;
  block[3] = &unk_1001FD3C8;
  v24 = v3;
  v40 = v24;
  dispatch_async(v23, block);

  return v24;
}

- (void)dealloc
{
  if (self->_nevi)
  {
    NEVirtualInterfaceInvalidate();
  }

  v3.receiver = self;
  v3.super_class = NRBabelInstance;
  [(NRBabelInstance *)&v3 dealloc];
}

- (void)setupAddress:(in6_addr *)address
{
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v4 = qword_1002290F8;
    routerID = self->_routerID;
    v6 = bswap64(routerID);
    v7 = qword_1002290F8;
    if (v6 > 0xFFFE)
    {
      v9 = [NSString alloc];
      v10 = bswap32(routerID);
      v8 = [v9 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v10), v10, bswap32(HIDWORD(routerID)) >> 16, __rev16(HIWORD(routerID))];
    }

    else
    {
      v8 = [[NSString alloc] initWithFormat:@"<%llx>", v6, v14, v15, v16];
    }

    v11 = v8;
    _NRLogWithArgs(v4, 1, "%s%.30s:%-4d starting instance %@", ", "[NRBabelInstance setupAddress:]"", 2649, v8);
  }

  system("netstat -rnf inet6 | grep -v Routing | grep -v Destination | grep -v Internet6 | grep -v -e '^$' | while read -r route ; do addr=$(echo $route | awk '{print $1}') ; flags=$(echo $route | awk '{print $3}') ; [[ $flags == *2* ]] && route -nv delete -inet6 ${addr}; done");
  IPv6AddrString = createIPv6AddrString();
  addrStr = self->_addrStr;
  self->_addrStr = IPv6AddrString;

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d instance address is %@", ", "[NRBabelInstance setupAddress:]"", 2657, self->_addrStr);
  }
}

- (void)setupInterfaces
{
  for (i = 0; i != 10; ++i)
  {
    *(&__str + 7) = 0;
    *&__str = 0;
    snprintf(&__str, 0xBuLL, "ipsec%u", i);
    v5 = if_nametoindex(&__str);
    if (v5)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v4 = self->_interfaces;
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v6)
      {
        v7 = *v53;
LABEL_9:
        v8 = 0;
        while (1)
        {
          if (*v53 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v52 + 1) + 8 * v8);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 ifIndex] == v5)
          {
            break;
          }

          if (v6 == ++v8)
          {
            v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v52 objects:v58 count:16];
            if (v6)
            {
              goto LABEL_9;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:

        v4 = [[NRBabelInterfaceSocket alloc] initWithInstance:self interface:v5];
        if (v4)
        {
          [(NSMutableArray *)self->_interfaces addObject:v4];
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d Added IPsec ifIndex %u, new list %@", ", "[NRBabelInstance setupInterfaces]"", 2599, v5, self->_interfaces);
          }
        }

        else
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            _NRLogWithArgs(qword_1002290F8, 17, "NRBabelInterfaceSocket IPsec init %u failed - list is %@", v5, self->_interfaces);
          }

          v4 = 0;
        }
      }
    }
  }

  v10 = nw_parameters_create();
  __str = 0uLL;
  v41 = xpc_uuid_create(&__str);
  if (!v41)
  {
    v23 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v25 = sub_1000CB9A8();
      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_uuid_create(%p) failed", ", "nr_xpc_uuid_create"", 105, &__str);
    }

    v26 = _os_log_pack_size();
    v27 = &v40 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v26, *v28, &_mh_execute_header, "%{public}s xpc_uuid_create(%p) failed");
    *v29 = 136446466;
    *(v29 + 4) = "nr_xpc_uuid_create";
    *(v29 + 12) = 2048;
    *(v29 + 14) = &__str;
    sub_1000CB9A8();
    _NRLogAbortWithPack();
LABEL_51:
    __break(1u);
  }

  v11 = xpc_array_create(0, 0);
  v12 = v11;
  if (!v11)
  {
    v30 = sub_1000CB9A8();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v32 = sub_1000CB9A8();
      _NRLogWithArgs(v32, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", ", "nr_xpc_array_create"", 56, 0, 0);
    }

    goto LABEL_50;
  }

  xpc_array_append_value(v11, v41);
  nw_parameters_set_preferred_netagent_uuids();
  v13 = xpc_uint64_create(2uLL);
  v14 = xpc_array_create(0, 0);
  v15 = v14;
  if (!v14)
  {
    v33 = sub_1000CB9A8();
    v34 = _NRLogIsLevelEnabled();

    if (v34)
    {
      v35 = sub_1000CB9A8();
      _NRLogWithArgs(v35, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", ", "nr_xpc_array_create"", 56, 0, 0);
    }

LABEL_50:
    v36 = _os_log_pack_size();
    v37 = &v40 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = __error();
    v39 = _os_log_pack_fill(v37, v36, *v38, &_mh_execute_header, "%{public}s xpc_array_create(%p, %u) failed");
    sub_10006BF98(v39, "nr_xpc_array_create");
    sub_1000CB9A8();
    _NRLogAbortWithPack();
    goto LABEL_51;
  }

  xpc_array_append_value(v14, v13);
  nw_parameters_set_prohibited_interface_types();
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = self->_interfaces;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v17)
  {
    v18 = *v49;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v48 + 1) + 8 * j) addToProhibited:v10];
      }

      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v17);
  }

  if (self->_ifBringupPathEvaluator)
  {
    nw_path_evaluator_cancel();
  }

  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  ifBringupPathEvaluator = self->_ifBringupPathEvaluator;
  self->_ifBringupPathEvaluator = evaluator_for_endpoint;

  v22 = nw_path_evaluator_copy_path();
  [(NRBabelInstance *)self handleIfBringupPathUpdate:v22];

  objc_initWeak(&v47, self);
  v42 = _NSConcreteStackBlock;
  v43 = 3221225472;
  v44 = sub_1000DB124;
  v45 = &unk_1001FBEB8;
  objc_copyWeak(&v46, &v47);
  nw_path_evaluator_set_update_handler();
  [(NRBabelInstance *)self updateRoutes];
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v47);
}

- (void)handleIfBringupPathUpdate:(id)update
{
  path = update;
  if (nw_path_get_status(path) == nw_path_status_satisfied)
  {
    interface_index = nw_path_get_interface_index();
    v5 = [[NRBabelInterfaceSocket alloc] initWithInstance:self interface:interface_index];
    if (v5)
    {
      [(NSMutableArray *)self->_interfaces addObject:v5];
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d Added ifIndex %u, new list %@", ", "[NRBabelInstance handleIfBringupPathUpdate:]"", 2565, interface_index, self->_interfaces);
      }
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 17, "NRBabelInterfaceSocket init %u failed - list is %@", interface_index, self->_interfaces);
      }
    }

    [(NRBabelInstance *)self setupInterfaces];
LABEL_22:

    goto LABEL_23;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v5 = qword_1002290F8;
    status = nw_path_get_status(path);
    _NRLogWithArgs(v5, 1, "%s%.30s:%-4d if bringup path not satisfied %u", ", "[NRBabelInstance handleIfBringupPathUpdate:]"", 2557, status);
    goto LABEL_22;
  }

LABEL_23:
}

@end
@interface NRBabelNeighbor
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesAddress:(const in6_addr *)address babelInterface:(id)interface;
- (NRBabelNeighbor)initWithAddress:(const in6_addr *)address babelInterface:(id)interface;
- (NSString)description;
- (id)createIHUTLV;
- (id)createPersonalHelloTLV;
- (id)descriptionWithNextHop:(const in6_addr *)hop;
- (in6_addr)address;
- (unsigned)metric;
- (void)dealloc;
- (void)enqueueNextIHU;
- (void)enqueueNextUpdate;
- (void)handleDTLSStack:(id)stack inboundDecryptedData:(id)data;
- (void)handleDTLSStack:(id)stack outboundEncryptedData:(id)data;
- (void)handleHelloWithSeqno:(unsigned __int16)seqno interval:(unsigned __int16)interval personal:(BOOL)personal;
- (void)handleIsReady:(id)ready;
- (void)processPendingOutgoingPackets;
- (void)resetIncomingHelloTimer:(BOOL)timer personal:(BOOL)personal;
- (void)resetIncomingIHUTimerInterval:(unsigned __int16)interval;
- (void)scheduleTLV:(id)v interval:(unsigned __int16)interval;
- (void)sendFullPacket:(iovec *)packet iovLen:(unsigned int)len;
- (void)sendTLVs:(id)vs;
- (void)updateRXCostCheckTime:(BOOL)time personal:(BOOL)personal;
@end

@implementation NRBabelNeighbor

- (in6_addr)address
{
  v2 = *&self->_address.__u6_addr32[2];
  v3 = *self->_address.__u6_addr8;
  *&result.__u6_addr32[2] = v2;
  *result.__u6_addr8 = v3;
  return result;
}

- (void)handleDTLSStack:(id)stack inboundDecryptedData:(id)data
{
  dataCopy = data;
  babelInterface = [(NRBabelNeighbor *)self babelInterface];
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

    v6 = qword_1002290F8;
    _NRLogWithArgs(v6, 1, "%s%.30s:%-4d %@ passing %llu inbound decrypted bytes to instance", ", "-[NRBabelNeighbor handleDTLSStack:inboundDecryptedData:]"", 1867, self, [dataCopy length]);
  }

  babelInterface2 = [(NRBabelNeighbor *)self babelInterface];
  instance = [babelInterface2 instance];
  [instance handlePacket:objc_msgSend(dataCopy length:"bytes") remoteAddr:objc_msgSend(dataCopy localAddr:"length") babelInterface:&self->_address dtls:{objc_msgSend(babelInterface, "localAddress"), babelInterface, 1}];
}

- (void)handleDTLSStack:(id)stack outboundEncryptedData:(id)data
{
  stackCopy = stack;
  dataCopy = data;
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

    v8 = qword_1002290F8;
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@ passing %llu outbound encrypted bytes to interface", ", "-[NRBabelNeighbor handleDTLSStack:outboundEncryptedData:]"", 1855, self, [dataCopy length]);
  }

  v10[0] = [dataCopy bytes];
  v10[1] = [dataCopy length];
  babelInterface = [(NRBabelNeighbor *)self babelInterface];
  [babelInterface sendPacket:v10 iovLen:1 toAddr:&self->_address];
}

- (void)handleIsReady:(id)ready
{
  readyCopy = ready;
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

    _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d %@ DTLS %@ is ready", ", "[NRBabelNeighbor handleIsReady:]"", 1847, self, readyCopy);
  }

  [(NRBabelNeighbor *)self setDtlsReady:1];
  babelInterface = [(NRBabelNeighbor *)self babelInterface];
  instance = [babelInterface instance];
  [instance sendImmediateRouteUpdateToNeighbor:self];
}

- (void)sendTLVs:(id)vs
{
  vsCopy = vs;
  if (![vsCopy count])
  {
    goto LABEL_35;
  }

  v5 = [vsCopy count];
  v6 = v5 + 1;
  if (v5 == -1)
  {
    v32 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v34 = sub_1000CB9A8();
      _NRLogWithArgs(v34, 16, "%s%.30s:%-4d ABORTING: strict_calloc called with count 0", ", "[NRBabelNeighbor sendTLVs:]"", 1793);
    }

    v23 = _os_log_pack_size();
    v13 = &v42 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = __error();
    v36 = _os_log_pack_fill(v13, v23, *v35, &_mh_execute_header, "%{public}s strict_calloc called with count 0");
    *v36 = 136446210;
    *(v36 + 4) = "[NRBabelNeighbor sendTLVs:]";
LABEL_39:
    sub_1000CB9A8();
    _NRLogAbortWithPack();
LABEL_40:
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
LABEL_20:
    v8 = v42;
    v6 = v43;
    if (_NRLogIsLevelEnabled())
    {
      if (v23[32] != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 17, "varying sizes of mystery", v42, v43);
    }

    goto LABEL_25;
  }

  v7 = malloc_type_calloc(v5 + 1, 0x10uLL, 0x5E37AA57uLL);
  if (!v7)
  {
    v37 = sub_1000CB9A8();
    v38 = _NRLogIsLevelEnabled();

    if (v38)
    {
      v39 = sub_1000CB9A8();
      _NRLogWithArgs(v39, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", ", "[NRBabelNeighbor sendTLVs:]"", 1793, v6, 0x10uLL);
    }

    v23 = _os_log_pack_size();
    v13 = &v42 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = __error();
    v41 = _os_log_pack_fill(v13, v23, *v40, &_mh_execute_header, "%{public}s strict_calloc(%zu, %zu) failed");
    *v41 = 136446722;
    *(v41 + 4) = "[NRBabelNeighbor sendTLVs:]";
    *(v41 + 12) = 2048;
    *(v41 + 14) = v6;
    *(v41 + 22) = 2048;
    *(v41 + 24) = 16;
    goto LABEL_39;
  }

  v8 = v7;
  v58 = 554;
  *v7 = &v58;
  *(v7 + 1) = 4;
  selfCopy = self;
  babelInterface = [(NRBabelNeighbor *)self babelInterface];
  v10 = [babelInterface mtu];

  v45 = vsCopy;
  v46 = objc_alloc_init(NSMutableArray);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v47 = vsCopy;
  v11 = [v47 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    LODWORD(v13) = 0;
    v48 = v10 - 4;
    v49 = *v55;
    v14 = v8 + 8;
    v15 = 1;
    v42 = v8;
    v43 = v6;
LABEL_6:
    v16 = 0;
    v17 = v15;
    if (v6 >= v15)
    {
      v18 = (v6 - v15);
    }

    else
    {
      v18 = 0;
    }

    v19 = &v14[16 * v15];
    while (1)
    {
      if (*v55 != v49)
      {
        objc_enumerationMutation(v47);
      }

      if (v18 == v16)
      {
        break;
      }

      v20 = *(*(&v54 + 1) + 8 * v16);
      v21 = [v20 length];
      v22 = v13 + v21;
      if ((v13 + v21) > v48)
      {
        [v46 addObject:v20];
      }

      else
      {
        *(v19 - 1) = [v20 bytes];
        *v19 = [v20 length];
        LODWORD(v13) = v22;
      }

      ++v17;
      v16 = v16 + 1;
      v19 += 16;
      if (v12 == v16)
      {
        v12 = [v47 countByEnumeratingWithState:&v54 objects:v60 count:16];
        v15 = v17;
        v8 = v42;
        v6 = v43;
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_25;
      }
    }

    v23 = &qword_100229000;
    if (qword_100229100 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  LODWORD(v13) = 0;
LABEL_25:
  v24 = v47;

  HIWORD(v58) = bswap32(v13) >> 16;
  v25 = selfCopy;
  [(NRBabelNeighbor *)selfCopy sendFullPacket:v8 iovLen:v6];
  free(v8);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v26 = v24;
  v27 = [v26 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v26);
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v28);
  }

  v31 = v46;
  if ([v46 count])
  {
    [(NRBabelNeighbor *)v25 sendTLVs:v31];
  }

  vsCopy = v45;
LABEL_35:
}

- (void)sendFullPacket:(iovec *)packet iovLen:(unsigned int)len
{
  v4 = *&len;
  if (![(NRBabelNeighbor *)self dtlsEnabled])
  {
    babelInterface = [(NRBabelNeighbor *)self babelInterface];
    [babelInterface sendPacket:packet iovLen:v4 toAddr:&self->_address];
LABEL_16:

    return;
  }

  if ([(NRBabelNeighbor *)self dtlsReady])
  {
    v7 = objc_alloc_init(NSMutableData);
    if (v4)
    {
      v4 = v4;
      p_iov_len = &packet->iov_len;
      do
      {
        [v7 appendBytes:*(p_iov_len - 1) length:*p_iov_len];
        p_iov_len += 2;
        --v4;
      }

      while (v4);
    }

    dtlsStack = [(NRBabelNeighbor *)self dtlsStack];
    babelInterface = v7;
    if (dtlsStack)
    {
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

        v10 = qword_1002293F0;
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@ writing %llu outbound unencrypted bytes into DTLS", ", "-[NRDDTLSStack processOutboundUnencryptedData:]"", 108, dtlsStack, [babelInterface length]);
      }

      v11 = dtlsStack[4];
      _createDispatchData = [babelInterface _createDispatchData];
      completion[0] = _NSConcreteStackBlock;
      completion[1] = 3221225472;
      completion[2] = sub_1001576B0;
      completion[3] = &unk_1001FCC18;
      completion[4] = dtlsStack;
      nw_connection_send(v11, _createDispatchData, _nw_content_context_default_message, 0, completion);
    }

    goto LABEL_16;
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

    _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d %@ dropping bytes because DTLS not ready", ", "[NRBabelNeighbor sendFullPacket:iovLen:]"", 1780, self);
  }
}

- (unsigned)metric
{
  txcost = self->_txcost;
  v3 = -1;
  if (txcost != 0xFFFF)
  {
    if (txcost <= 0x100)
    {
      v4 = 256;
    }

    else
    {
      v4 = self->_txcost;
    }

    v5 = self->_rxcost * v4;
    if (v5 > 0xFFFEFF)
    {
      return -1;
    }

    else
    {
      return v5 >> 8;
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy matchesAddress:&self->_address babelInterface:self->_babelInterface];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)descriptionWithNextHop:(const in6_addr *)hop
{
  v4 = [(NRBabelNeighbor *)self matchesAddress:?];
  v5 = [NSString alloc];
  if (v4)
  {
    IPv6AddrString = [(NRBabelNeighbor *)self description];
    iPv6AddrString = [v5 initWithString:IPv6AddrString];
  }

  else
  {
    IPv6AddrString = createIPv6AddrString();
    iPv6AddrString = [v5 initWithFormat:@"%@(nh %@)", self, IPv6AddrString];
  }

  v8 = iPv6AddrString;

  return v8;
}

- (NSString)description
{
  v3 = [NSString alloc];
  IPv6AddrString = createIPv6AddrString();
  babelInterface = self->_babelInterface;
  dtlsEnabled = [(NRBabelNeighbor *)self dtlsEnabled];
  v7 = "";
  if (dtlsEnabled)
  {
    v7 = "_DTLS";
  }

  v8 = [v3 initWithFormat:@"%@[%@]%s", IPv6AddrString, babelInterface, v7];

  return v8;
}

- (BOOL)matchesAddress:(const in6_addr *)address babelInterface:(id)interface
{
  v6 = [(NRBabelInterface *)self->_babelInterface isEqual:interface];
  if (v6)
  {

    LOBYTE(v6) = [(NRBabelNeighbor *)self matchesAddress:address];
  }

  return v6;
}

- (NRBabelNeighbor)initWithAddress:(const in6_addr *)address babelInterface:(id)interface
{
  interfaceCopy = interface;
  interfaceCopy2 = interface;
  instance = [interfaceCopy2 instance];
  if (instance)
  {
    v56.receiver = self;
    v56.super_class = NRBabelNeighbor;
    v9 = [(NRBabelNeighbor *)&v56 init];
    if (v9)
    {
      self = v9;
      v9->_address = *address;
      objc_storeStrong(&v9->_babelInterface, interfaceCopy);
      if (![interfaceCopy2 dtlsEnabled])
      {
LABEL_17:
        self->_outgoingPersonalHelloSeqno = arc4random_uniform(0x10000u);
        self->_incomingPublicHelloHistory = 0xFFFFLL;
        self->_incomingPersonalHelloHistory = 0xFFFFLL;
        *&self->_outgoingIHUInterval = -4059036496;
        queue = [instance queue];
        v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
        incomingPublicHelloTimer = self->_incomingPublicHelloTimer;
        self->_incomingPublicHelloTimer = v22;

        queue2 = [instance queue];
        v25 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);
        incomingPersonalHelloTimer = self->_incomingPersonalHelloTimer;
        self->_incomingPersonalHelloTimer = v25;

        queue3 = [instance queue];
        v28 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue3);
        incomingIHUTimer = self->_incomingIHUTimer;
        self->_incomingIHUTimer = v28;

        queue4 = [instance queue];
        v31 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue4);
        pendingOutgoingTimer = self->_pendingOutgoingTimer;
        self->_pendingOutgoingTimer = v31;

        v33 = objc_alloc_init(NSMutableArray);
        pendingOutgoingPackets = self->_pendingOutgoingPackets;
        self->_pendingOutgoingPackets = v33;

        v35 = objc_alloc_init(NRBabelPendingOutgoingTLVs);
        [(NRBabelPendingOutgoingTLVs *)v35 setRepresentsIHU:1];
        [(NRBabelPendingOutgoingTLVs *)v35 setRepresentsUpdate:1];
        [(NSMutableArray *)self->_pendingOutgoingPackets addObject:v35];
        [(NRBabelNeighbor *)self processPendingOutgoingPackets];
        objc_initWeak(&location, self);
        v36 = self->_pendingOutgoingTimer;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1000D0438;
        handler[3] = &unk_1001FC730;
        objc_copyWeak(&v54, &location);
        dispatch_source_set_event_handler(v36, handler);
        dispatch_activate(self->_pendingOutgoingTimer);
        v37 = self->_incomingPublicHelloTimer;
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000D047C;
        v51[3] = &unk_1001FC730;
        objc_copyWeak(&v52, &location);
        dispatch_source_set_event_handler(v37, v51);
        dispatch_activate(self->_incomingPublicHelloTimer);
        v38 = self->_incomingPersonalHelloTimer;
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_1000D04C8;
        v49[3] = &unk_1001FC730;
        objc_copyWeak(&v50, &location);
        dispatch_source_set_event_handler(v38, v49);
        dispatch_activate(self->_incomingPersonalHelloTimer);
        v39 = self->_incomingIHUTimer;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000D0514;
        v47[3] = &unk_1001FC730;
        objc_copyWeak(&v48, &location);
        dispatch_source_set_event_handler(v39, v47);
        dispatch_activate(self->_incomingIHUTimer);
        self = self;
        objc_destroyWeak(&v48);
        objc_destroyWeak(&v50);
        objc_destroyWeak(&v52);
        objc_destroyWeak(&v54);
        objc_destroyWeak(&location);

        selfCopy = self;
        goto LABEL_18;
      }

      [(NRBabelNeighbor *)self setDtlsEnabled:1];
      interfaceCopy = [(NRBabelNeighbor *)self babelInterface];
      localAddress = [interfaceCopy localAddress];
      v11 = bswap64(*address->__u6_addr8);
      v12 = bswap64(*localAddress);
      if (v11 == v12 && (v11 = bswap64(*&address->__u6_addr32[2]), v12 = bswap64(localAddress[1]), v11 == v12))
      {
        v13 = 0;
      }

      else if (v11 < v12)
      {
        v13 = -1;
      }

      else
      {
        v13 = 1;
      }

      v15 = v13 > 0;
      v16 = [NRDDTLSStack alloc];
      queue5 = [instance queue];
      v18 = sub_100158C54(&v16->super.isa, queue5, v15, self);
      [(NRBabelNeighbor *)self setDtlsStack:v18];

      address = &qword_100229000;
      if (qword_100229100 == -1)
      {
LABEL_12:
        if (_NRLogIsLevelEnabled())
        {
          if (*address[16].__u6_addr8 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          v19 = qword_1002290F8;
          dtlsStack = [(NRBabelNeighbor *)self dtlsStack];
          _NRLogWithArgs(v19, 1, "%s%.30s:%-4d %@ started %@", ", "[NRBabelNeighbor initWithAddress:babelInterface:]"", 1636, self, dtlsStack);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v41 = sub_1000CB9A8();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v43 = sub_1000CB9A8();
        _NRLogWithArgs(v43, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBabelNeighbor initWithAddress:babelInterface:]"", 1626);
      }

      interfaceCopy2 = _os_log_pack_size();
      instance = &v47[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = __error();
      v45 = _os_log_pack_fill(instance, interfaceCopy2, *v44, &_mh_execute_header, "%{public}s [super init] failed");
      *v45 = 136446210;
      *(v45 + 4) = "[NRBabelNeighbor initWithAddress:babelInterface:]";
      sub_1000CB9A8();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_100229100, &stru_1001FB6C8);
    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

- (void)handleHelloWithSeqno:(unsigned __int16)seqno interval:(unsigned __int16)interval personal:(BOOL)personal
{
  personalCopy = personal;
  seqnoCopy2 = seqno | 0x10000;
  if (personal)
  {
    lastIncomingPersonalHelloSeqno = self->_lastIncomingPersonalHelloSeqno;
    if (lastIncomingPersonalHelloSeqno < seqno)
    {
      seqnoCopy2 = seqno;
    }

    v8 = seqnoCopy2 - lastIncomingPersonalHelloSeqno;
    if (v8 < 1)
    {
      v8 += 0x10000;
    }

    if (v8 <= 16)
    {
      v9 = (self->_incomingPersonalHelloHistory << v8) | 1;
    }

    else
    {
      v9 = 0xFFFFLL;
    }

    self->_incomingPersonalHelloHistory = v9;
    self->_lastIncomingPersonalHelloSeqno = seqno;
    if (interval)
    {
      v13 = 72;
      v14 = 26;
LABEL_20:
      *(&self->super.isa + v14) = interval;
      +[NSDate timeIntervalSinceReferenceDate];
      *(&self->super.isa + v13) = v16;

      [(NRBabelNeighbor *)self updateRXCostCheckTime:0 personal:personalCopy];
    }
  }

  else
  {
    lastIncomingPublicHelloSeqno = self->_lastIncomingPublicHelloSeqno;
    if (lastIncomingPublicHelloSeqno < seqno)
    {
      seqnoCopy2 = seqno;
    }

    v11 = seqnoCopy2 - lastIncomingPublicHelloSeqno;
    if (v11 < 1)
    {
      v11 += 0x10000;
    }

    if (v11 <= 16)
    {
      v12 = (self->_incomingPublicHelloHistory << v11) | 1;
    }

    else
    {
      v12 = 0xFFFFLL;
    }

    self->_incomingPublicHelloHistory = v12;
    self->_lastIncomingPublicHelloSeqno = seqno;
    if (interval)
    {
      v13 = 48;
      v14 = 22;
      goto LABEL_20;
    }
  }
}

- (void)updateRXCostCheckTime:(BOOL)time personal:(BOOL)personal
{
  personalCopy = personal;
  timeCopy = time;
  incomingPublicHelloHistory = self->_incomingPublicHelloHistory;
  v8 = (incomingPublicHelloHistory & 1) == 0;
  v9 = xmmword_100196420;
  v10 = vdupq_n_s64(incomingPublicHelloHistory);
  v11 = xmmword_100196430;
  v12 = xmmword_100196440;
  v13 = xmmword_100196450;
  v14 = xmmword_100196460;
  v15 = vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v10, xmmword_100196420)), vceqzq_s64(vandq_s8(v10, xmmword_100196430))), vuzp1q_s32(vceqzq_s64(vandq_s8(v10, xmmword_100196440)), vceqzq_s64(vandq_s8(v10, xmmword_100196450)))), xmmword_100196460));
  v16 = xmmword_100196470;
  v17 = xmmword_100196480;
  v18 = xmmword_100196490;
  v19 = vandq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v10, xmmword_100196470)), vceqzq_s64(vandq_s8(v10, xmmword_100196480))), xmmword_100196490);
  v20 = vaddvq_s32(v19);
  v19.i32[0] = v15;
  *v19.i8 = vcnt_s8(*v19.i8);
  v19.i16[0] = vaddlv_u8(*v19.i8);
  v21 = v19.i32[0];
  v19.i32[0] = v20;
  *v19.i8 = vcnt_s8(*v19.i8);
  v19.i16[0] = vaddlv_u8(*v19.i8);
  v22 = v21 + v19.i32[0];
  if ((incomingPublicHelloHistory & 0x2000) == 0)
  {
    ++v22;
  }

  if ((incomingPublicHelloHistory & 0x4000) != 0)
  {
    v23 = (self->_incomingPublicHelloHistory & 0x8000) == 0;
  }

  else
  {
    v23 = ((self->_incomingPublicHelloHistory & 0x8000) == 0) + 1;
  }

  v24 = v22 + v23 + v8;
  if (time)
  {
    lastIncomingPublicHelloInterval = self->_lastIncomingPublicHelloInterval;
    lastIncomingPublicHelloTime = self->_lastIncomingPublicHelloTime;
    +[NSDate timeIntervalSinceReferenceDate];
    v18 = xmmword_100196490;
    v17 = xmmword_100196480;
    v16 = xmmword_100196470;
    v14 = xmmword_100196460;
    v13 = xmmword_100196450;
    v12 = xmmword_100196440;
    v11 = xmmword_100196430;
    v9 = xmmword_100196420;
    v24 += ((v27 - lastIncomingPublicHelloTime) * 100.0) / lastIncomingPublicHelloInterval;
  }

  incomingPersonalHelloHistory = self->_incomingPersonalHelloHistory;
  v29 = vdupq_n_s64(incomingPersonalHelloHistory);
  v30 = (incomingPersonalHelloHistory & 1) == 0;
  v31 = vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v29, v9)), vceqzq_s64(vandq_s8(v29, v11))), vuzp1q_s32(vceqzq_s64(vandq_s8(v29, v12)), vceqzq_s64(vandq_s8(v29, v13)))), v14));
  v32 = vandq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v29, v16)), vceqzq_s64(vandq_s8(v29, v17))), v18);
  v33 = vaddvq_s32(v32);
  v32.i32[0] = v31;
  *v32.i8 = vcnt_s8(*v32.i8);
  v32.i16[0] = vaddlv_u8(*v32.i8);
  v34 = v32.i32[0];
  v32.i32[0] = v33;
  *v32.i8 = vcnt_s8(*v32.i8);
  v32.i16[0] = vaddlv_u8(*v32.i8);
  v35 = v34 + v32.i32[0];
  if ((incomingPersonalHelloHistory & 0x2000) == 0)
  {
    ++v35;
  }

  if ((incomingPersonalHelloHistory & 0x4000) != 0)
  {
    v36 = (self->_incomingPersonalHelloHistory & 0x8000) == 0;
  }

  else
  {
    v36 = ((self->_incomingPersonalHelloHistory & 0x8000) == 0) + 1;
  }

  v37 = v35 + v36 + v30;
  if (timeCopy)
  {
    lastIncomingPersonalHelloInterval = self->_lastIncomingPersonalHelloInterval;
    lastIncomingPersonalHelloTime = self->_lastIncomingPersonalHelloTime;
    +[NSDate timeIntervalSinceReferenceDate];
    v37 += ((v40 - lastIncomingPersonalHelloTime) * 100.0) / lastIncomingPersonalHelloInterval;
  }

  if (v24 >= v37)
  {
    v41 = v37;
  }

  else
  {
    v41 = v24;
  }

  rxcost = self->_rxcost;
  if (v41 <= 0xF)
  {
    v43 = 0x1000 / (16 - v41);
  }

  else
  {
    v43 = 0xFFFF;
  }

  self->_rxcost = v43;
  if (v43 != rxcost)
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

      v44 = "hello";
      if (timeCopy)
      {
        v44 = "timeout";
      }

      _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d changing rxcost for %@ from %u to %u in response to %s", ", "[NRBabelNeighbor updateRXCostCheckTime:personal:]"", 1562, self, rxcost, self->_rxcost, v44);
    }

    babelInterface = [(NRBabelNeighbor *)self babelInterface];
    instance = [babelInterface instance];
    [instance updateRoutes];
  }

  [(NRBabelNeighbor *)self resetIncomingHelloTimer:!timeCopy personal:personalCopy];
}

- (void)resetIncomingIHUTimerInterval:(unsigned __int16)interval
{
  incomingIHUTimer = self->_incomingIHUTimer;
  v4 = dispatch_time(0x8000000000000000, 35000000 * interval);

  dispatch_source_set_timer(incomingIHUTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (void)resetIncomingHelloTimer:(BOOL)timer personal:(BOOL)personal
{
  timerCopy = timer;
  v5 = 22;
  if (personal)
  {
    v5 = 26;
  }

  v6 = 80;
  if (personal)
  {
    v6 = 56;
  }

  v7 = *(&self->super.isa + v5);
  source = *(&self->super.isa + v6);
  v8 = 12500000 * v7;
  if (v7 <= 0x64)
  {
    v8 = 17500000 * v7;
  }

  if (timerCopy)
  {
    v9 = v8;
  }

  else
  {
    v9 = 10000000 * v7;
  }

  v10 = dispatch_time(0x8000000000000000, v9);
  dispatch_source_set_timer(source, v10, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (void)scheduleTLV:(id)v interval:(unsigned __int16)interval
{
  intervalCopy = interval;
  vCopy = v;
  v8 = [[NRBabelPendingOutgoingTLVs alloc] initWithInterval:intervalCopy];
  tlvs = [(NRBabelPendingOutgoingTLVs *)v8 tlvs];
  [tlvs addObject:vCopy];

  [(NSMutableArray *)self->_pendingOutgoingPackets addObject:v8];
  [(NRBabelNeighbor *)self processPendingOutgoingPackets];
}

- (void)dealloc
{
  incomingPublicHelloTimer = self->_incomingPublicHelloTimer;
  if (incomingPublicHelloTimer)
  {
    dispatch_source_cancel(incomingPublicHelloTimer);
    v4 = self->_incomingPublicHelloTimer;
    self->_incomingPublicHelloTimer = 0;
  }

  incomingPersonalHelloTimer = self->_incomingPersonalHelloTimer;
  if (incomingPersonalHelloTimer)
  {
    dispatch_source_cancel(incomingPersonalHelloTimer);
    v6 = self->_incomingPersonalHelloTimer;
    self->_incomingPersonalHelloTimer = 0;
  }

  incomingIHUTimer = self->_incomingIHUTimer;
  if (incomingIHUTimer)
  {
    dispatch_source_cancel(incomingIHUTimer);
    v8 = self->_incomingIHUTimer;
    self->_incomingIHUTimer = 0;
  }

  pendingOutgoingTimer = self->_pendingOutgoingTimer;
  if (pendingOutgoingTimer)
  {
    dispatch_source_cancel(pendingOutgoingTimer);
    v10 = self->_pendingOutgoingTimer;
    self->_pendingOutgoingTimer = 0;
  }

  v11.receiver = self;
  v11.super_class = NRBabelNeighbor;
  [(NRBabelNeighbor *)&v11 dealloc];
}

- (void)processPendingOutgoingPackets
{
  babelInterface = [(NRBabelNeighbor *)self babelInterface];
  instance = [babelInterface instance];

  if (!instance)
  {
    goto LABEL_107;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = objc_alloc_init(NSMutableArray);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  selfCopy = self;
  v8 = self->_pendingOutgoingPackets;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v110;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v110 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v109 + 1) + 8 * i);
        [v13 minTime];
        if (v14 <= v6)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v109 objects:v118 count:16];
    }

    while (v10);
  }

  v15 = &qword_100229000;
  if (![v7 count])
  {
    v28 = selfCopy;
    if ([(NSMutableArray *)selfCopy->_pendingOutgoingPackets count])
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

        pendingOutgoingPackets = selfCopy->_pendingOutgoingPackets;
        v30 = qword_1002290F8;
        _NRLogWithArgs(v30, 2, "%s%.30s:%-4d not sending anything to %@ (%u not ready yet)", ", "[NRBabelNeighbor processPendingOutgoingPackets]"", 1429, selfCopy, [(NSMutableArray *)pendingOutgoingPackets count]);
      }

      v88 = v7;
      v90 = instance;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v31 = selfCopy->_pendingOutgoingPackets;
      v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v101 objects:v116 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v102;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v102 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v44 = *(*(&v101 + 1) + 8 * j);
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

              v36 = v15[31];
              [v44 minTime];
              v38 = v37 - v6;
              [v44 maxTime];
              v40 = v39 - v6;
              v41 = v15;
              [v44 minTime];
              v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
              [v44 maxTime];
              v43 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
              _NRLogWithArgs(v36, 2, "%s%.30s:%-4d in pipeline: in min %fs max %fs, minTime %@, maxTime %@", ", "[NRBabelNeighbor processPendingOutgoingPackets]"", 1433, *&v38, *&v40, v42, v43);

              v15 = v41;
            }
          }

          v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v101 objects:v116 count:16];
        }

        while (v33);
      }

      v7 = v88;
      instance = v90;
      v28 = selfCopy;
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

        _NRLogWithArgs(qword_1002290F8, 2, "%s%.30s:%-4d not sending anything to %@ (nothing in queue)", ", "[NRBabelNeighbor processPendingOutgoingPackets]"", 1436, selfCopy);
      }
    }

    goto LABEL_71;
  }

  v89 = instance;
  v91 = objc_alloc_init(NSMutableArray);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v87 = v7;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = 0;
    v21 = *v106;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v106 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v105 + 1) + 8 * k);
        representsIHU = [v23 representsIHU];
        representsUpdate = [v23 representsUpdate];
        tlvs = [v23 tlvs];

        if (tlvs)
        {
          tlvs2 = [v23 tlvs];
          [v91 addObjectsFromArray:tlvs2];
        }

        v20 |= representsIHU;
        v19 |= representsUpdate;
        [(NSMutableArray *)selfCopy->_pendingOutgoingPackets removeObject:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v105 objects:v117 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  v7 = v87;
  instance = v89;
  v15 = &qword_100229000;
  v28 = selfCopy;
  if (!_NRLogIsLevelEnabled())
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_62:
    createIHUTLV = [(NRBabelNeighbor *)v28 createIHUTLV];
    [v91 addObject:createIHUTLV];

    createPersonalHelloTLV = [(NRBabelNeighbor *)v28 createPersonalHelloTLV];
    [v91 addObject:createPersonalHelloTLV];

    if ((v19 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (v20)
  {
    v46 = "IHU+";
  }

  else
  {
    v46 = "";
  }

  if (v19)
  {
    v47 = "Update+";
  }

  else
  {
    v47 = "";
  }

  v48 = qword_1002290F8;
  v86 = v47;
  v28 = selfCopy;
  _NRLogWithArgs(v48, 2, "%s%.30s:%-4d sending %s%s%u to %@", ", "-[NRBabelNeighbor processPendingOutgoingPackets]"", 1410, v46, v86, [v91 count], selfCopy);

  if (v20)
  {
    goto LABEL_62;
  }

LABEL_46:
  if (v19)
  {
LABEL_47:
    v45 = [v89 createUpdateTLVsWithInterval:v28->_outgoingUpdateInterval];
    [v91 addObjectsFromArray:v45];
  }

LABEL_48:
  [(NRBabelNeighbor *)v28 sendTLVs:v91];
  if (v20)
  {
    [(NRBabelNeighbor *)v28 enqueueNextIHU];
  }

  if (v19)
  {
    [(NRBabelNeighbor *)v28 enqueueNextUpdate];
  }

LABEL_71:
  if ([(NSMutableArray *)v28->_pendingOutgoingPackets count])
  {
    v51 = [(NSMutableArray *)v28->_pendingOutgoingPackets objectAtIndexedSubscript:0];
    [v51 maxTime];
    v53 = v52;

    v54 = [(NSMutableArray *)v28->_pendingOutgoingPackets objectAtIndexedSubscript:0];
    [v54 minTime];
    v56 = v55;

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v57 = v28->_pendingOutgoingPackets;
    v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v97 objects:v115 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v98;
      do
      {
        for (m = 0; m != v59; m = m + 1)
        {
          if (*v98 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v97 + 1) + 8 * m);
          [v62 maxTime];
          if (v63 < v53)
          {
            [v62 maxTime];
            v53 = v64;
            [v62 minTime];
            v56 = v65;
          }
        }

        v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v97 objects:v115 count:16];
      }

      while (v59);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v66 = selfCopy->_pendingOutgoingPackets;
    v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v93 objects:v114 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v94;
      do
      {
        for (n = 0; n != v68; n = n + 1)
        {
          if (*v94 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v93 + 1) + 8 * n);
          [v71 minTime];
          if (v56 < v72)
          {
            [v71 minTime];
            if (v73 < v53)
            {
              [v71 minTime];
              v56 = v74;
            }
          }
        }

        v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v93 objects:v114 count:16];
      }

      while (v68);
    }

    v75 = selfCopy->_pendingOutgoingTimer;
    if (v56 >= v53)
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

        v76 = v15[31];
        v77 = [NSDate dateWithTimeIntervalSinceReferenceDate:v56];
        v78 = [NSDate dateWithTimeIntervalSinceReferenceDate:v53];
        _NRLogWithArgs(v76, 17, "minTime %@ >= maxTime %@", v77, v78);
      }

      v53 = v56 + 0.001;
    }

    v79 = (v53 - v56) * 2.32830644e-10 * arc4random();
    v80 = v79 + v56;
    when.tv_sec = vcvtmd_s64_f64(v80) + 978307200;
    when.tv_nsec = ((v80 - floor(v80)) * 1000000000.0);
    v81 = dispatch_walltime(&when, 0);
    v82 = (fmin(v79, v53 - v80) * 1000000000.0);
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

      v83 = v15[31];
      v84 = [NSDate dateWithTimeIntervalSinceReferenceDate:v80];
      +[NSDate timeIntervalSinceReferenceDate];
      _NRLogWithArgs(v83, 2, "%s%.30s:%-4d rescheduling timer %@ for %@, which is in %fs leeway %llums", ", "rescheduleTimer"", 1290, v75, v84, v80 - v85, v82 / 0xF4240);
    }

    dispatch_source_set_timer(v75, v81, 0xFFFFFFFFFFFFFFFFLL, v82);
  }

LABEL_107:
}

- (id)createPersonalHelloTLV
{
  v2 = self->_outgoingPersonalHelloSeqno + 1;
  self->_outgoingPersonalHelloSeqno = v2;
  v3 = bswap32(self->_outgoingIHUInterval);
  v6 = 8390148;
  v7 = bswap32(v2) >> 16;
  v8 = HIWORD(v3);
  v4 = [[NSData alloc] initWithBytes:&v6 length:8];

  return v4;
}

- (id)createIHUTLV
{
  v2 = bswap32(self->_rxcost);
  v3 = bswap32(self->_outgoingIHUInterval);
  v6 = 1541;
  v7 = HIWORD(v2);
  v8 = HIWORD(v3);
  v4 = [[NSData alloc] initWithBytes:&v6 length:8];

  return v4;
}

- (void)enqueueNextUpdate
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_pendingOutgoingPackets;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 representsUpdate])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_pendingOutgoingPackets removeObjectsInArray:v3];
  v10 = [[NRBabelPendingOutgoingTLVs alloc] initWithInterval:self->_outgoingUpdateInterval];
  [(NRBabelPendingOutgoingTLVs *)v10 setRepresentsUpdate:1];
  [(NSMutableArray *)self->_pendingOutgoingPackets addObject:v10];
}

- (void)enqueueNextIHU
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_pendingOutgoingPackets;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 representsIHU])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_pendingOutgoingPackets removeObjectsInArray:v3];
  v10 = [[NRBabelPendingOutgoingTLVs alloc] initWithInterval:self->_outgoingIHUInterval];
  [(NRBabelPendingOutgoingTLVs *)v10 setRepresentsIHU:1];
  [(NSMutableArray *)self->_pendingOutgoingPackets addObject:v10];
}

@end
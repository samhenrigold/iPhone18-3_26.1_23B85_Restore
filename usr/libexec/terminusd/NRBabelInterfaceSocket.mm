@interface NRBabelInterfaceSocket
- (BOOL)handlePathUpdate:(id)update;
- (BOOL)isEqual:(id)equal;
- (BOOL)setupLocalAddressCheckAgainst:(const in6_addr *)against;
- (NRBabelInterfaceSocket)initWithInstance:(id)instance interface:(unsigned int)interface;
- (id)description;
- (void)addToProhibited:(id)prohibited;
- (void)dealloc;
- (void)readPackets;
- (void)sendPacket:(iovec *)packet iovLen:(unsigned int)len toAddr:(const in6_addr *)addr;
@end

@implementation NRBabelInterfaceSocket

- (void)addToProhibited:(id)prohibited
{
  prohibitedCopy = prohibited;
  v5 = nw_parameters_copy_prohibited_interfaces();
  if (!v5)
  {
    v6 = &prohibitedCopy;
    v7 = xpc_array_create(0, 0);
    if (!v7)
    {
      v9 = sub_1000CB9A8();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_1000CB9A8();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", ", "nr_xpc_array_create"", 56, 0, 0);
      }

      v5 = _os_log_pack_size();
      self = (&prohibitedCopy - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = __error();
      v13 = _os_log_pack_fill(self, v5, *v12, &_mh_execute_header, "%{public}s xpc_array_create(%p, %u) failed");
      sub_10006BF98(v13, "nr_xpc_array_create");
      sub_1000CB9A8();
      _NRLogAbortWithPack();
LABEL_17:
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
      goto LABEL_7;
    }

    v5 = v7;
  }

  v6 = nw_interface_copy_dictionary();
  if (v6)
  {
    xpc_array_append_value(v5, v6);
    nw_parameters_set_prohibited_interfaces();
    goto LABEL_11;
  }

  v3 = &qword_100229000;
  if (qword_100229100 != -1)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (_NRLogIsLevelEnabled())
  {
    if (v3[32] != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    _NRLogWithArgs(qword_1002290F8, 17, "nw_interface_copy_dictionary(%u, %@) failed", self->_ifIndex, self->_ifName);
  }

LABEL_11:

  v8 = prohibitedCopy;
}

- (BOOL)handlePathUpdate:(id)update
{
  updateCopy = update;
  instance = [(NRBabelInterface *)self instance];
  if (instance)
  {
    if (nw_path_get_status(updateCopy) == nw_path_status_satisfied)
    {
      if (![(NRBabelInterface *)self viable])
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

          _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d if %@ is viable again", ", "[NRBabelInterfaceSocket handlePathUpdate:]"", 1207, self);
        }
      }

      [(NRBabelInterface *)self setViable:1];
      v6 = [NSString alloc];
      ifName = self->_ifName;
      addrStr = [instance addrStr];
      v9 = [v6 initWithFormat:@"for addr in $(ifconfig %@ | grep 'inet6 fdfd:' | sed -e 's/^[[:space:]]*//' | cut -d' ' -f2); do ifconfig %@ inet6 -alias $addr ; done ; ifconfig %@ inet6 %@/128", ifName, ifName, ifName, addrStr];

      system([v9 UTF8String]);
      mtu = nw_path_get_mtu();
      v11 = mtu - 48;
      if (mtu > 559)
      {
        if (mtu >= 0x10030)
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

            _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d MTU for ifIndex %u is high %d", ", "[NRBabelInterfaceSocket handlePathUpdate:]"", 1225, self->_ifIndex, v11);
          }

          v11 = 0xFFFF;
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

          _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d MTU for ifIndex %u is low %d", ", "[NRBabelInterfaceSocket handlePathUpdate:]"", 1222, self->_ifIndex, v11);
        }

        v11 = 512;
      }

      if ([(NRBabelInterface *)self mtu]!= v11)
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

          v15 = qword_1002290F8;
          _NRLogWithArgs(v15, 1, "%s%.30s:%-4d updating MTU from %u to %d", ", "[NRBabelInterfaceSocket handlePathUpdate:]"", 1229, [(NRBabelInterface *)self mtu], v11);
        }

        [(NRBabelInterface *)self setMtu:v11];
      }

      v12 = 1;
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

        v13 = qword_1002290F8;
        status = nw_path_get_status(updateCopy);
        _NRLogWithArgs(v13, 1, "%s%.30s:%-4d canceling if %@ because path not satisfied %u", ", "[NRBabelInterfaceSocket handlePathUpdate:]"", 1201, self, status);
      }

      [(NRBabelInterface *)self setViable:0];
      [instance purgeInterface:self];
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NRBabelInterfaceSocket)initWithInstance:(id)instance interface:(unsigned int)interface
{
  v4 = *&interface;
  instanceCopy = instance;
  v91 = v4;
  v90.receiver = self;
  v90.super_class = NRBabelInterfaceSocket;
  v7 = [(NRBabelInterface *)&v90 initWithInstance:instanceCopy];
  v8 = v7;
  if (!v7)
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

      _NRLogWithArgs(qword_1002290F8, 17, "[super initWithInstance:] failed");
    }

    goto LABEL_115;
  }

  v7->_ifIndex = v4;
  v9 = if_indextoname(v4, __strerrbuf) == 0;
  v10 = [NSString alloc];
  if (v9)
  {
    v11 = [v10 initWithFormat:@"invalid%u", v4];
  }

  else
  {
    v11 = [v10 initWithUTF8String:__strerrbuf];
  }

  ifName = v8->_ifName;
  v8->_ifName = v11;

  if ([(NSString *)v8->_ifName hasPrefix:@"en"])
  {
    [(NRBabelInterface *)v8 setDtlsEnabled:1];
  }

  v13 = socket(30, 2, 0);
  if ((v13 & 0x80000000) != 0)
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

      _NRLogWithArgs(qword_1002290F8, 17, "socket(AF_INET6, SOCK_DGRAM, 0) failed");
    }

    goto LABEL_115;
  }

  if (![(NRBabelInterfaceSocket *)v8 setupLocalAddress])
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

      _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d %@ failed to find local address", ", "[NRBabelInterfaceSocket initWithInstance:interface:]"", 1056, v8);
    }

    goto LABEL_114;
  }

  v14 = fcntl(v13, 3, 0);
  if (v14 < 0)
  {
    v17 = *__error();
    if (strerror_r(v17, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
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

      _NRLogWithArgs(qword_1002290F8, 17, "fcntl(%d, F_GETFL, 0): [%d] %s", v13, v17, __strerrbuf);
    }

    goto LABEL_114;
  }

  v15 = v14 | 4;
  if (fcntl(v13, 4, v14 | 4u))
  {
    v16 = *__error();
    if (strerror_r(v16, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
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

      _NRLogWithArgs(qword_1002290F8, 17, "fcntl(%d, F_SETFL, %d): [%d] %s", v13, v15, v16, __strerrbuf);
    }

    goto LABEL_114;
  }

  v88 = xmmword_100196560;
  v89 = v91;
  if (setsockopt(v13, 41, 12, &v88, 0x14u))
  {
    v18 = *__error();
    if (strerror_r(v18, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      v19 = sub_1000CB9A8();
      _NRLogWithArgs(v19, 17, "failed to join mcast group: [%d] %s", v18, __strerrbuf);
    }

    goto LABEL_114;
  }

  if (setsockopt(v13, 41, 11, &unk_10019653C, 4u))
  {
    v20 = *__error();
    if (strerror_r(v20, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    v21 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v23 = sub_1000CB9A8();
      _NRLogWithArgs(v23, 17, "IPV6_MULTICAST_LOOP failed: [%d] %s", v20, __strerrbuf);
    }

    goto LABEL_114;
  }

  if (setsockopt(v13, 0xFFFF, 4, &unk_100196540, 4u))
  {
    v24 = *__error();
    if (strerror_r(v24, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    v25 = sub_1000CB9A8();
    v26 = _NRLogIsLevelEnabled();

    if (v26)
    {
      v27 = sub_1000CB9A8();
      _NRLogWithArgs(v27, 17, "SO_REUSEADDR failed: [%d] %s", v24, __strerrbuf);
    }

    goto LABEL_114;
  }

  if (setsockopt(v13, 0xFFFF, 512, &unk_100196540, 4u))
  {
    v28 = *__error();
    if (strerror_r(v28, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    v29 = sub_1000CB9A8();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
      v31 = sub_1000CB9A8();
      _NRLogWithArgs(v31, 17, "SO_REUSEPORT failed: [%d] %s", v28, __strerrbuf);
    }

    goto LABEL_114;
  }

  if (setsockopt(v13, 41, 125, &v91, 4u))
  {
    v32 = *__error();
    if (strerror_r(v32, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    v33 = sub_1000CB9A8();
    v34 = _NRLogIsLevelEnabled();

    if (v34)
    {
      v35 = sub_1000CB9A8();
      _NRLogWithArgs(v35, 17, "IPV6_BOUND_IF %u failed: [%d] %s", v91, v32, __strerrbuf);
    }

    goto LABEL_114;
  }

  if (setsockopt(v13, 41, 27, &unk_100196540, 4u))
  {
    v36 = *__error();
    if (strerror_r(v36, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    v37 = sub_1000CB9A8();
    v38 = _NRLogIsLevelEnabled();

    if (v38)
    {
      v39 = sub_1000CB9A8();
      _NRLogWithArgs(v39, 17, "IPV6_V6ONLY failed: [%d] %s", v36, __strerrbuf);
    }

    goto LABEL_114;
  }

  if (setsockopt(v13, 0xFFFF, 4130, &unk_100196540, 4u))
  {
    v40 = *__error();
    if (strerror_r(v40, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    v41 = sub_1000CB9A8();
    v42 = _NRLogIsLevelEnabled();

    if (v42)
    {
      v43 = sub_1000CB9A8();
      _NRLogWithArgs(v43, 17, "SO_NOSIGPIPE failed: [%d] %s", v40, __strerrbuf);
    }

    goto LABEL_114;
  }

  if (setsockopt(v13, 41, 61, &unk_100196540, 4u))
  {
    v44 = *__error();
    if (strerror_r(v44, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    v45 = sub_1000CB9A8();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
      v47 = sub_1000CB9A8();
      _NRLogWithArgs(v47, 17, "IPV6_RECVPKTINFO failed: [%d] %s", v44, __strerrbuf);
    }

    goto LABEL_114;
  }

  v87[0] = xmmword_100196544;
  *&v87[0].sa_data[10] = *(&xmmword_100196544 + 12);
  if (bind(v13, v87, 0x1Cu))
  {
    v48 = *__error();
    if (strerror_r(v48, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    v49 = sub_1000CB9A8();
    v50 = _NRLogIsLevelEnabled();

    if (v50)
    {
      v51 = sub_1000CB9A8();
      _NRLogWithArgs(v51, 17, "bind failed: [%d] %s", v48, __strerrbuf);
    }

    goto LABEL_114;
  }

  queue = [instanceCopy queue];
  v53 = dispatch_source_create(&_dispatch_source_type_read, v13, 0, queue);
  socketReadSource = v8->_socketReadSource;
  v8->_socketReadSource = v53;

  if (!v8->_socketReadSource)
  {
    v68 = sub_1000CB9A8();
    v69 = _NRLogIsLevelEnabled();

    if (v69)
    {
      v70 = sub_1000CB9A8();
      _NRLogWithArgs(v70, 17, "dispatch_source_create failed");
    }

    goto LABEL_114;
  }

  v8->_fd = v13;
  objc_initWeak(__strerrbuf, v8);
  v55 = v8->_socketReadSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000CD718;
  handler[3] = &unk_1001FC730;
  objc_copyWeak(&v86, __strerrbuf);
  dispatch_source_set_event_handler(v55, handler);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CD758;
  block[3] = &unk_1001FC730;
  objc_copyWeak(&v84, __strerrbuf);
  dispatch_async(queue, block);
  dispatch_activate(v8->_socketReadSource);
  v56 = sub_1000CB9A8();
  v57 = _NRLogIsLevelEnabled();

  if (v57)
  {
    v58 = sub_1000CB9A8();
    _NRLogWithArgs(v58, 1, "%s%.30s:%-4d succesfully opened socket fd %d on %@", ", "[NRBabelInterfaceSocket initWithInstance:interface:]"", 1159, v13, v8->_ifName);
  }

  v59 = nw_interface_create_with_index();
  nwIf = v8->_nwIf;
  v8->_nwIf = v59;

  if (!v8->_nwIf)
  {
    v71 = sub_1000CB9A8();
    v72 = _NRLogIsLevelEnabled();

    if (v72)
    {
      v73 = sub_1000CB9A8();
      _NRLogWithArgs(v73, 16, "%s%.30s:%-4d failed to open interface index %u", ", "[NRBabelInterfaceSocket initWithInstance:interface:]"", 1163, v91);
    }

    objc_destroyWeak(&v84);
    objc_destroyWeak(&v86);
    objc_destroyWeak(__strerrbuf);

    goto LABEL_114;
  }

  v61 = nw_parameters_create();
  v62 = v61;
  if (!v61)
  {
    v74 = sub_1000CB9A8();
    v75 = _NRLogIsLevelEnabled();

    if ((v75 & 1) == 0)
    {
      goto LABEL_113;
    }

    v76 = sub_1000CB9A8();
    _NRLogWithArgs(v76, 17, "nw_parameters_create failed");
LABEL_112:

    goto LABEL_113;
  }

  nw_parameters_require_interface(v61, v8->_nwIf);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  pathEvaluator = v8->_pathEvaluator;
  v8->_pathEvaluator = evaluator_for_endpoint;

  if (!v8->_pathEvaluator)
  {
    v77 = sub_1000CB9A8();
    v78 = _NRLogIsLevelEnabled();

    if (!v78)
    {
      goto LABEL_113;
    }

    v76 = sub_1000CB9A8();
    _NRLogWithArgs(v76, 17, "nw_path_create_evaluator_for_endpoint with ifIndex %u failed", v91);
    goto LABEL_112;
  }

  v65 = nw_path_evaluator_copy_path();
  v66 = [(NRBabelInterfaceSocket *)v8 handlePathUpdate:v65];

  if ((v66 & 1) == 0)
  {
    v79 = sub_1000CB9A8();
    v80 = _NRLogIsLevelEnabled();

    if (v80)
    {
      v76 = sub_1000CB9A8();
      _NRLogWithArgs(v76, 16, "%s%.30s:%-4d path for ifIndex %u is not satisfied", ", "[NRBabelInterfaceSocket initWithInstance:interface:]"", 1179, v91);
      goto LABEL_112;
    }

LABEL_113:

    objc_destroyWeak(&v84);
    objc_destroyWeak(&v86);
    objc_destroyWeak(__strerrbuf);

LABEL_114:
    close(v13);
LABEL_115:
    v67 = 0;
    goto LABEL_116;
  }

  objc_copyWeak(&v82, __strerrbuf);
  nw_path_evaluator_set_update_handler();
  v67 = v8;
  objc_destroyWeak(&v82);

  objc_destroyWeak(&v84);
  objc_destroyWeak(&v86);
  objc_destroyWeak(__strerrbuf);

LABEL_116:
  return v67;
}

- (BOOL)setupLocalAddressCheckAgainst:(const in6_addr *)against
{
  v25 = 0;
  if (getifaddrs(&v25))
  {
    v5 = *__error();
    if (strerror_r(v5, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
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

      _NRLogWithArgs(qword_1002290F8, 17, "getifaddrs failed: [%d] %s", v5, __strerrbuf);
    }

LABEL_38:
    LOBYTE(v20) = 0;
    return v20;
  }

  v6 = v25;
  if (!v25)
  {
    v19 = 0;
LABEL_37:
    freeifaddrs(v19);
    goto LABEL_38;
  }

  v7 = &qword_100229000;
  v8 = &qword_100229000;
  while (1)
  {
    ifa_addr = v6->ifa_addr;
    if (ifa_addr->sa_family != 30)
    {
      goto LABEL_13;
    }

    selfCopy = self;
    if (v7[32] != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (v7[32] != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v11 = v8[31];
      v12 = v8;
      IPv6AddrString = createIPv6AddrString();
      v14 = createIPv6AddrString();
      [(NRBabelInterface *)selfCopy localAddress];
      v15 = createIPv6AddrString();
      _NRLogWithArgs(v11, 2, "%s%.30s:%-4d %@ checking destination address %@ vs one of local %@, current local %@", ", "[NRBabelInterfaceSocket setupLocalAddressCheckAgainst:]"", 990, selfCopy, IPv6AddrString, v14, v15);

      v8 = v12;
      v7 = &qword_100229000;
    }

    ifName = [(NRBabelInterfaceSocket *)selfCopy ifName];
    v17 = [ifName hasPrefix:@"ipsec"];

    if ((v17 & 1) == 0)
    {
      break;
    }

    if (ifa_addr->sa_data[6] == 253 && ifa_addr->sa_data[7] == 116)
    {
      goto LABEL_28;
    }

LABEL_12:

LABEL_13:
    v6 = v6->ifa_next;
    if (!v6)
    {
      v19 = v25;
      goto LABEL_37;
    }
  }

  if (*&ifa_addr[1].sa_data[6] != selfCopy->_ifIndex || ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80)
  {
    goto LABEL_12;
  }

LABEL_28:
  if (against)
  {
    if (*against->__u6_addr8 != *&ifa_addr->sa_data[6] || *&against->__u6_addr32[2] != *&ifa_addr[1].sa_len)
    {
      goto LABEL_12;
    }
  }

  if (![(NRBabelInterface *)selfCopy isLocalAddressEqualTo:&ifa_addr->sa_data[6]])
  {
    if (v7[32] != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (v7[32] != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v21 = v8[31];
      [(NRBabelInterface *)selfCopy localAddress];
      v22 = createIPv6AddrString();
      v23 = createIPv6AddrString();
      _NRLogWithArgs(v21, 1, "%s%.30s:%-4d changing %@ address from %@ to %@", ", "[NRBabelInterfaceSocket setupLocalAddressCheckAgainst:]"", 1010, selfCopy, v22, v23);
    }
  }

  [(NRBabelInterface *)selfCopy setLocalAddress:&ifa_addr->sa_data[6]];

  freeifaddrs(v25);
  if (!against || (v20 = [(NRBabelInterface *)selfCopy isLocalAddressEqualTo:against]) != 0)
  {
    LOBYTE(v20) = 1;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ifIndex = self->_ifIndex;
    v6 = ifIndex == [equalCopy ifIndex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [NSString alloc];
  ifName = self->_ifName;
  dtlsEnabled = [(NRBabelInterface *)self dtlsEnabled];
  v6 = "";
  if (dtlsEnabled)
  {
    v6 = "_DTLS";
  }

  v7 = [v3 initWithFormat:@"%@%s", ifName, v6];

  return v7;
}

- (void)readPackets
{
  selfCopy = self;
  instance = [(NRBabelInterface *)self instance];
  if (!instance)
  {
    goto LABEL_102;
  }

  fd = selfCopy->_fd;
  memset(v53, 0, sizeof(v53));
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v47[0] = v52;
  v47[1] = 2000;
  v41 = selfCopy;
LABEL_4:
  while (1)
  {
    *(&v46.msg_namelen + 1) = 0;
    *(&v46.msg_iovlen + 1) = 0;
    v46.msg_name = v48;
    v46.msg_namelen = 28;
    v46.msg_iov = v47;
    v46.msg_iovlen = 1;
    v46.msg_control = v53;
    *&v46.msg_controllen = 32;
    v5 = recvmsg(fd, &v46, 0);
    if (v5 < 0)
    {
      break;
    }

    if (v46.msg_namelen >= 0x1C && (msg_name = v46.msg_name) != 0)
    {
      if (*(v46.msg_name + 1) == 30)
      {
        if (*v46.msg_name <= 0x1Bu)
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

            _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d packet source sin6_len too short %u < %zu", ", "[NRBabelInterfaceSocket readPackets]"", 880, *msg_name, 0x1CuLL);
          }

          continue;
        }

        v7 = v5;
        v8 = v46.msg_name + 8;
        if (*(v46.msg_name + 8) == 254 && (*(v46.msg_name + 9) & 0xC0) == 0x80 || (-[NRBabelInterfaceSocket ifName](selfCopy, "ifName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasPrefix:@"ipsec"], v9, selfCopy = v41, (v10 & 1) != 0))
        {
          if (*(msg_name + 1) == 10266)
          {
            if (v46.msg_controllen - 33 >= 0xFFFFFFF3 && v46.msg_control == v53)
            {
              if (DWORD2(v53[0]) == 46)
              {
                if (HIDWORD(v53[1]) == selfCopy->_ifIndex)
                {
                  if ([(NRBabelInterface *)selfCopy isLocalAddressEqualTo:v53 | 0xC])
                  {
                    goto LABEL_3;
                  }

                  if (*(v53 + 12) == 767 && *(&v53[1] + 4) == 0x600010000000000)
                  {
                    goto LABEL_3;
                  }

                  if (qword_100229100 != -1)
                  {
                    dispatch_once(&qword_100229100, &stru_1001FB6C8);
                  }

                  v12 = qword_1002290F8;
                  IsLevelEnabled = _NRLogIsLevelEnabled();

                  if (IsLevelEnabled)
                  {
                    v14 = sub_1000CB9A8();
                    IPv6AddrString = createIPv6AddrString();
                    _NRLogWithArgs(v14, 1, "%s%.30s:%-4d received packet on wrong local address %@, rechecking", ", "[NRBabelInterfaceSocket readPackets]"", 942, IPv6AddrString);
                  }

                  selfCopy = v41;
                  if ([v41 setupLocalAddressCheckAgainst:v53 | 0xC])
                  {
LABEL_3:
                    [instance handlePacket:v52 length:v7 remoteAddr:v8 localAddr:v53 | 0xC babelInterface:selfCopy dtls:0];
                  }

                  else
                  {
                    v16 = sub_1000CB9A8();
                    v17 = _NRLogIsLevelEnabled();

                    selfCopy = v41;
                    if (v17)
                    {
                      v18 = sub_1000CB9A8();
                      v19 = createIPv6AddrString();
                      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d packet was sent to wrong local address %@", ", "[NRBabelInterfaceSocket readPackets]"", 945, v19);

                      selfCopy = v41;
                    }
                  }

                  continue;
                }

                v40 = instance;
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                interfaces = [instance interfaces];
                v23 = [interfaces countByEnumeratingWithState:&v42 objects:v50 count:16];
                if (!v23)
                {
LABEL_87:

                  if (qword_100229100 != -1)
                  {
                    dispatch_once(&qword_100229100, &stru_1001FB6C8);
                  }

                  selfCopy = v41;
                  instance = v40;
                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229100 != -1)
                    {
                      dispatch_once(&qword_100229100, &stru_1001FB6C8);
                    }

                    v35 = qword_1002290F8;
                    v36 = createIPv6AddrString();
                    v37 = createIPv6AddrString();
                    _NRLogWithArgs(v35, 16, "%s%.30s:%-4d packet from %@ to %@ came over wrong interface %u, expected %u", ", "[NRBabelInterfaceSocket readPackets]"", 934, v36, v37, HIDWORD(v53[1]), v41[12]);

                    selfCopy = v41;
                  }

                  continue;
                }

                v24 = v23;
                v25 = *v43;
LABEL_74:
                v26 = 0;
                while (1)
                {
                  if (*v43 != v25)
                  {
                    objc_enumerationMutation(interfaces);
                  }

                  v27 = *(*(&v42 + 1) + 8 * v26);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v28 = v27;
                    ifIndex = [v28 ifIndex];
                    if (ifIndex == HIDWORD(v53[1]))
                    {
                      instance = v40;
                      [v40 handlePacket:v52 length:v7 remoteAddr:v8 localAddr:v53 | 0xC babelInterface:v28 dtls:0];

                      if (qword_100229100 != -1)
                      {
                        dispatch_once(&qword_100229100, &stru_1001FB6C8);
                      }

                      v30 = qword_1002290F8;
                      v31 = _NRLogIsLevelEnabled();

                      selfCopy = v41;
                      if (v31)
                      {
                        if (qword_100229100 != -1)
                        {
                          dispatch_once(&qword_100229100, &stru_1001FB6C8);
                        }

                        v32 = qword_1002290F8;
                        v33 = createIPv6AddrString();
                        v34 = createIPv6AddrString();
                        _NRLogWithArgs(v32, 2, "%s%.30s:%-4d handled packet from %@ to %@ that came over wrong interface %u, expected %u", ", "[NRBabelInterfaceSocket readPackets]"", 930, v33, v34, HIDWORD(v53[1]), v41[12]);

                        selfCopy = v41;
                      }

                      goto LABEL_4;
                    }
                  }

                  if (v24 == ++v26)
                  {
                    v24 = [interfaces countByEnumeratingWithState:&v42 objects:v50 count:16];
                    if (!v24)
                    {
                      goto LABEL_87;
                    }

                    goto LABEL_74;
                  }
                }
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

                _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d Invalid cmsg_type %d", ", "[NRBabelInterfaceSocket readPackets]"", 903, DWORD2(v53[0]));
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

                _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d missing control message %u %p %p", ", "[NRBabelInterfaceSocket readPackets]"", 898, v46.msg_controllen, v46.msg_control, v53);
              }
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

              _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d packet came from wrong source port %u", ", "[NRBabelInterfaceSocket readPackets]"", 892, bswap32(*(msg_name + 1)) >> 16);
            }
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

            v20 = qword_1002290F8;
            v21 = createIPv6AddrString();
            _NRLogWithArgs(v20, 16, "%s%.30s:%-4d packet came from a non-link-local address %@", ", "[NRBabelInterfaceSocket readPackets]"", 887, v21);

            selfCopy = v41;
          }
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

          _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d packet came from wrong address family %u", ", "[NRBabelInterfaceSocket readPackets]"", 876, msg_name[1]);
        }
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

        _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d missing name message %u %p", ", "[NRBabelInterfaceSocket readPackets]"", 870, v46.msg_namelen, v46.msg_name);
      }
    }
  }

  v38 = __error();
  v39 = *v38;
  if (*v38 != 35)
  {
    if (strerror_r(*v38, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
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

      _NRLogWithArgs(qword_1002290F8, 17, "recvmsg failed: [%d] %s", v39, __strerrbuf);
    }
  }

LABEL_102:
}

- (void)dealloc
{
  socketReadSource = self->_socketReadSource;
  if (socketReadSource)
  {
    dispatch_source_cancel(socketReadSource);
  }

  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  if (self->_pathEvaluator)
  {
    nw_path_evaluator_cancel();
  }

  v5.receiver = self;
  v5.super_class = NRBabelInterfaceSocket;
  [(NRBabelInterface *)&v5 dealloc];
}

- (void)sendPacket:(iovec *)packet iovLen:(unsigned int)len toAddr:(const in6_addr *)addr
{
  v6 = *&len;
  if ([(NRBabelInterface *)self viable])
  {
    fd = self->_fd;
    v34 = 672800284;
    ifIndex = self->_ifIndex;
    v35 = *addr;
    v33.msg_name = &v34;
    *(&v33.msg_namelen + 1) = 0;
    v33.msg_namelen = 28;
    v33.msg_iov = packet;
    memset(&v33.msg_iovlen + 1, 0, 20);
    v33.msg_iovlen = v6;
    v10 = sendmsg(fd, &v33, 0);
    if (v10 < 0)
    {
      v14 = *__error();
      if (strerror_r(v14, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
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

        _NRLogWithArgs(qword_1002290F8, 17, "sendmsg failed: [%d] %s", v14, __strerrbuf);
      }
    }

    else
    {
      v11 = v10;
      if (v6)
      {
        v12 = v6;
        if (v6 > 8)
        {
          v15 = v6 & 7;
          if (!v15)
          {
            v15 = 8;
          }

          v13 = v6 - v15;
          p_iov_len = &packet[4].iov_len;
          v17 = 0uLL;
          v18 = v13;
          v19 = 0uLL;
          do
          {
            v20 = p_iov_len - 8;
            v21 = vld2q_f64(v20);
            v22 = p_iov_len - 4;
            v23 = vld2q_f64(v22);
            v24 = p_iov_len + 16;
            v26 = vld2q_f64(p_iov_len);
            v25 = p_iov_len + 4;
            v27 = vld2q_f64(v25);
            v17 = vaddq_s32(v17, vuzp1q_s32(v21, v23));
            v19 = vaddq_s32(v19, vuzp1q_s32(v26, v27));
            p_iov_len = v24;
            v18 -= 8;
          }

          while (v18);
          LODWORD(v6) = vaddvq_s32(vaddq_s32(v19, v17));
        }

        else
        {
          v13 = 0;
          LODWORD(v6) = 0;
        }

        v28 = v12 - v13;
        v29 = &packet[v13].iov_len;
        do
        {
          v30 = *v29;
          v29 += 2;
          v6 = (v6 + v30);
          --v28;
        }

        while (v28);
      }

      if (v6 != v10)
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

          v31 = qword_1002290F8;
          IPv6AddrString = createIPv6AddrString();
          _NRLogWithArgs(v31, 16, "%s%.30s:%-4d sent %zd instead of %u to %@", ", "[NRBabelInterfaceSocket sendPacket:iovLen:toAddr:]"", 815, v11, v6, IPv6AddrString);
        }
      }
    }
  }
}

@end
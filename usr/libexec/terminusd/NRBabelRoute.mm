@interface NRBabelRoute
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesPrefix:(id)prefix neighbor:(id)neighbor;
- (NRBabelInstance)instance;
- (NRBabelRoute)initWithPrefix:(id)prefix neighbor:(id)neighbor routerID:(unint64_t)d seqno:(unsigned __int16)seqno interval:(unsigned __int16)interval receivedMetric:(unsigned __int16)metric nextHop:(const in6_addr *)hop instance:(id)self0;
- (id)description;
- (in6_addr)nextHopInner;
- (unsigned)metric;
- (void)applyUsingSystem;
- (void)resetExpiryTimer;
@end

@implementation NRBabelRoute

- (NRBabelInstance)instance
{
  WeakRetained = objc_loadWeakRetained(&self->_instance);

  return WeakRetained;
}

- (in6_addr)nextHopInner
{
  v2 = *&self->_nextHopInner.__u6_addr32[2];
  v3 = *self->_nextHopInner.__u6_addr8;
  *&result.__u6_addr32[2] = v2;
  *result.__u6_addr8 = v3;
  return result;
}

- (void)applyUsingSystem
{
  selfCopy = self;
  babelInterface = [(NRBabelNeighbor *)self->_neighbor babelInterface];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    descriptionWithoutPlen = [(NRBabelPrefix *)selfCopy->_bPrefix descriptionWithoutPlen];
    if (!descriptionWithoutPlen)
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

        _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d skipping apply of v4 %@", ", "[NRBabelRoute applyUsingSystem]"", 2154, selfCopy);
      }

      goto LABEL_21;
    }

    selected = selfCopy->_selected;
    v7 = [NSString alloc];
    if (selected)
    {
      v8 = v7;
      plen = [(NRBabelPrefix *)selfCopy->_bPrefix plen];
      IPv6AddrString = createIPv6AddrString();
      babelInterface2 = [(NRBabelNeighbor *)selfCopy->_neighbor babelInterface];
      ifName = [babelInterface2 ifName];
      v13 = [v8 initWithFormat:@"route -nv delete -inet6 %@ ; route -nv add -inet6 -proto2 -prefixlen %u %@ %@%%%@", descriptionWithoutPlen, plen, descriptionWithoutPlen, IPv6AddrString, ifName];
    }

    else
    {
      v13 = [v7 initWithFormat:@"route -nv delete -inet6 %@", descriptionWithoutPlen];
    }

    v18 = _NRCopySerialQueueAttr();
    selfCopy = "terminusd.babel.commands";
    v19 = dispatch_queue_create("terminusd.babel.commands", v18);

    if (v19)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D2D9C;
      block[3] = &unk_1001FD060;
      v30 = v19;
      v31 = v13;
      v20 = v13;
      v21 = v19;
      dispatch_async(v21, block);

LABEL_21:
      return;
    }

    v22 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_1000CB9A8();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", ", "nr_dispatch_queue_create", 196, "terminusd.babel.commands"");
    }

    v25 = _os_log_pack_size();
    v14 = (&block[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = __error();
    v27 = _os_log_pack_fill(v14, v25, *v26, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v27 = 136446466;
    *(v27 + 4) = "nr_dispatch_queue_create";
    *(v27 + 12) = 2080;
    *(v27 + 14) = "terminusd.babel.commands";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
    goto LABEL_26;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  v14 = &qword_100229000;
  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 == -1)
    {
LABEL_9:
      neighbor = selfCopy->_neighbor;
      v16 = v14[31];
      babelInterface3 = [(NRBabelNeighbor *)neighbor babelInterface];
      _NRLogWithArgs(v16, 1, "%s%.30s:%-4d skipping apply of non-socket %@, neighbor %@, if %@", ", "[NRBabelRoute applyUsingSystem]"", 2148, selfCopy, neighbor, babelInterface3);

      v17 = babelInterface3;

      return;
    }

LABEL_26:
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
    goto LABEL_9;
  }
}

- (void)resetExpiryTimer
{
  expiryTimer = self->_expiryTimer;
  v3 = dispatch_time(0x8000000000000000, 35000000 * self->_interval);

  dispatch_source_set_timer(expiryTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (unsigned)metric
{
  if (self->_numExpiryTimerFires)
  {
    return -1;
  }

  receivedMetric = self->_receivedMetric;
  v4 = [(NRBabelNeighbor *)self->_neighbor metric]+ receivedMetric;
  if (v4 > 0xFFFE)
  {
    LOWORD(v4) = -1;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bPrefix = [v5 bPrefix];
    neighbor = [v5 neighbor];

    v8 = [(NRBabelRoute *)self matchesPrefix:bPrefix neighbor:neighbor];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [NSString alloc];
  bPrefix = self->_bPrefix;
  routerID = self->_routerID;
  v6 = bswap64(routerID);
  if (v6 > 0xFFFE)
  {
    v8 = [NSString alloc];
    v9 = bswap32(routerID);
    v7 = [v8 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v9), v9, bswap32(HIDWORD(routerID)) >> 16, __rev16(HIWORD(routerID))];
  }

  else
  {
    v7 = [[NSString alloc] initWithFormat:@"<%llx>", v6, v19, v20, v21];
  }

  v10 = v7;
  seqno = [(NRBabelRoute *)self seqno];
  receivedMetric = self->_receivedMetric;
  metric = [(NRBabelRoute *)self metric];
  v14 = [(NRBabelNeighbor *)self->_neighbor descriptionWithNextHop:&self->_nextHopInner];
  v15 = v14;
  if (self->_selected)
  {
    v16 = "";
  }

  else
  {
    v16 = "not ";
  }

  v17 = [v3 initWithFormat:@"%@ %@ seqno %u recvMetric %u metric %u via %@ %sselected", bPrefix, v10, seqno, receivedMetric, metric, v14, v16];

  return v17;
}

- (BOOL)matchesPrefix:(id)prefix neighbor:(id)neighbor
{
  prefixCopy = prefix;
  if ([(NRBabelNeighbor *)self->_neighbor isEqual:neighbor])
  {
    v7 = [(NRBabelPrefix *)self->_bPrefix isEqual:prefixCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NRBabelRoute)initWithPrefix:(id)prefix neighbor:(id)neighbor routerID:(unint64_t)d seqno:(unsigned __int16)seqno interval:(unsigned __int16)interval receivedMetric:(unsigned __int16)metric nextHop:(const in6_addr *)hop instance:(id)self0
{
  seqnoCopy = seqno;
  prefixCopy = prefix;
  neighborCopy = neighbor;
  instanceCopy = instance;
  v38.receiver = self;
  v38.super_class = NRBabelRoute;
  v20 = [(NRBabelRoute *)&v38 init];
  v21 = v20;
  if (!v20)
  {
    v28 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v30 = sub_1000CB9A8();
      _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBabelRoute initWithPrefix:neighbor:routerID:seqno:interval:receivedMetric:nextHop:instance:]"", 2050);
    }

    v31 = _os_log_pack_size();
    v32 = __error();
    v33 = _os_log_pack_fill(&handler[-1] - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v31, *v32, &_mh_execute_header, "%{public}s [super init] failed");
    *v33 = 136446210;
    *(v33 + 4) = "[NRBabelRoute initWithPrefix:neighbor:routerID:seqno:interval:receivedMetric:nextHop:instance:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
    __break(1u);
  }

  objc_storeStrong(&v20->_bPrefix, prefix);
  objc_storeStrong(&v21->_neighbor, neighbor);
  v21->_routerID = d;
  [(NRBabelRoute *)v21 setSeqno:seqnoCopy];
  v21->_interval = interval;
  v21->_receivedMetric = metric;
  v21->_nextHopInner = *hop;
  [(NRBabelRoute *)v21 setInstance:instanceCopy];
  routes = [instanceCopy routes];
  [routes addObject:v21];

  objc_initWeak(&location, v21);
  queue = [instanceCopy queue];
  v24 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  expiryTimer = v21->_expiryTimer;
  v21->_expiryTimer = v24;

  v26 = v21->_expiryTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000D3518;
  handler[3] = &unk_1001FC730;
  objc_copyWeak(&v36, &location);
  dispatch_source_set_event_handler(v26, handler);
  dispatch_activate(v21->_expiryTimer);
  [(NRBabelRoute *)v21 resetExpiryTimer];
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  return v21;
}

@end
@interface NRBabelSource
- (BOOL)isDeepEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNewDistanceUnfeasibleWithSeqno:(unsigned __int16)seqno metric:(unsigned __int16)metric;
- (BOOL)matchesPrefix:(id)prefix routerID:(unint64_t)d;
- (NRBabelInstance)instance;
- (NRBabelSource)initWithPrefix:(id)prefix routerID:(unint64_t)d seqno:(unsigned __int16)seqno metric:(unsigned __int16)metric instance:(id)instance;
- (id)description;
- (id)descriptionWithoutMetric;
- (void)dealloc;
- (void)resetGCTimer;
- (void)setupGCTimer;
- (void)updateFeasabilityDistanceWithSeqno:(unsigned __int16)seqno metric:(unsigned __int16)metric;
@end

@implementation NRBabelSource

- (NRBabelInstance)instance
{
  WeakRetained = objc_loadWeakRetained(&self->_instance);

  return WeakRetained;
}

- (void)resetGCTimer
{
  gcTimer = self->_gcTimer;
  v3 = dispatch_time(0x8000000000000000, 180000000000);

  dispatch_source_set_timer(gcTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (void)setupGCTimer
{
  objc_initWeak(&location, self);
  instance = [(NRBabelSource *)self instance];
  queue = [instance queue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  gcTimer = self->_gcTimer;
  self->_gcTimer = v5;

  v7 = self->_gcTimer;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000D1EE0;
  v11 = &unk_1001FC730;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(v7, &v8);
  dispatch_activate(self->_gcTimer);
  [(NRBabelSource *)self resetGCTimer:v8];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)updateFeasabilityDistanceWithSeqno:(unsigned __int16)seqno metric:(unsigned __int16)metric
{
  metricCopy = metric;
  seqnoCopy = seqno;
  if ([(NRBabelSource *)self seqno]< seqno)
  {
    [(NRBabelSource *)self setSeqno:seqnoCopy];
    p_metric = &self->_metric;
LABEL_3:
    *p_metric = metricCopy;
    return;
  }

  if ([(NRBabelSource *)self seqno]== seqnoCopy)
  {
    metric = self->_metric;
    p_metric = &self->_metric;
    if (metric > metricCopy)
    {
      goto LABEL_3;
    }
  }
}

- (BOOL)isNewDistanceUnfeasibleWithSeqno:(unsigned __int16)seqno metric:(unsigned __int16)metric
{
  metricCopy = metric;
  seqnoCopy = seqno;
  seqno = [(NRBabelSource *)self seqno];
  if (seqno == seqnoCopy)
  {
    goto LABEL_2;
  }

  if (seqno >= seqnoCopy)
  {
    if ((seqno - seqnoCopy) >= 0)
    {
      LOBYTE(v11) = -1;
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    if ((seqno - seqnoCopy) != 0x8000)
    {
      return (v11 & 0x80u) != 0;
    }
  }

  else if ((seqnoCopy - seqno) != 0x8000)
  {
    v11 = ((seqnoCopy - seqno) >> 15) | 1;
    return (v11 & 0x80u) != 0;
  }

LABEL_2:
  metric = self->_metric;
  v9 = metric - metricCopy;
  if (metric == metricCopy)
  {
    LOBYTE(v10) = 0;
  }

  else if (metric >= metricCopy)
  {
    v15 = (metric - metricCopy);
    if (v9 >= 0)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (v15 == 0x8000)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = v16;
    }
  }

  else
  {
    v12 = metricCopy - metric;
    v13 = v12;
    v10 = (v12 >> 15) | 1;
    if (v13 == 0x8000)
    {
      LOBYTE(v10) = 0;
    }
  }

  return (v10 & 0x80u) == 0;
}

- (BOOL)isDeepEqual:(id)equal
{
  equalCopy = equal;
  if (-[NRBabelSource isEqual:](self, "isEqual:", equalCopy) && (v5 = -[NRBabelSource seqno](self, "seqno"), v5 == [equalCopy seqno]))
  {
    metric = self->_metric;
    v7 = metric == [equalCopy metric];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    routerID = self->_routerID;
    if (routerID == [v5 routerID])
    {
      bPrefix = self->_bPrefix;
      bPrefix = [v5 bPrefix];
      v9 = [(NRBabelPrefix *)bPrefix isEqual:bPrefix];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)descriptionWithoutMetric
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
    v7 = [[NSString alloc] initWithFormat:@"<%llx>", v6, v13, v14, v15];
  }

  v10 = v7;
  v11 = [v3 initWithFormat:@"%@ %@ seqno %u", bPrefix, v7, -[NRBabelSource seqno](self, "seqno")];

  return v11;
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
    v7 = [[NSString alloc] initWithFormat:@"<%llx>", v6, v13, v14, v15];
  }

  v10 = v7;
  v11 = [v3 initWithFormat:@"%@ %@ seqno %u metric %u", bPrefix, v7, -[NRBabelSource seqno](self, "seqno"), self->_metric];

  return v11;
}

- (BOOL)matchesPrefix:(id)prefix routerID:(unint64_t)d
{
  if (self->_routerID == d)
  {
    return [prefix isEqual:self->_bPrefix];
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  gcTimer = self->_gcTimer;
  if (gcTimer)
  {
    dispatch_source_cancel(gcTimer);
  }

  v4.receiver = self;
  v4.super_class = NRBabelSource;
  [(NRBabelSource *)&v4 dealloc];
}

- (NRBabelSource)initWithPrefix:(id)prefix routerID:(unint64_t)d seqno:(unsigned __int16)seqno metric:(unsigned __int16)metric instance:(id)instance
{
  seqnoCopy = seqno;
  prefixCopy = prefix;
  instanceCopy = instance;
  v26.receiver = self;
  v26.super_class = NRBabelSource;
  v14 = [(NRBabelSource *)&v26 init];
  if (!v14)
  {
    v19 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v21 = sub_1000CB9A8();
      _NRLogWithArgs(v21, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBabelSource initWithPrefix:routerID:seqno:metric:instance:]"", 1886);
    }

    v22 = _os_log_pack_size();
    v23 = __error();
    v24 = _os_log_pack_fill(&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22, *v23, &_mh_execute_header, "%{public}s [super init] failed");
    *v24 = 136446210;
    *(v24 + 4) = "[NRBabelSource initWithPrefix:routerID:seqno:metric:instance:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v15 = v14;
  bPrefix = v14->_bPrefix;
  v14->_bPrefix = prefixCopy;

  v15->_routerID = d;
  [(NRBabelSource *)v15 setSeqno:seqnoCopy];
  v15->_metric = metric;
  [(NRBabelSource *)v15 setInstance:instanceCopy];
  sources = [instanceCopy sources];
  [sources addObject:v15];

  [(NRBabelSource *)v15 setupGCTimer];
  return v15;
}

@end
@interface BTPResolver
- (BOOL)start;
- (BTPResolver)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex name:(id)name type:(id)type domain:(id)domain;
- (void)dealloc;
- (void)handleReplyFullName:(id)name hostTarget:(id)target port:(unsigned __int16)port txtRecord:(id)record ifIndex:(unsigned int)index;
- (void)stop;
@end

@implementation BTPResolver

- (void)handleReplyFullName:(id)name hostTarget:(id)target port:(unsigned __int16)port txtRecord:(id)record ifIndex:(unsigned int)index
{
  portCopy = port;
  nameCopy = name;
  targetCopy = target;
  recordCopy = record;
  if (self->_srcIfIndex == index)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 2, "%s%.30s:%-4d received result for %@.%@.%@ : fullName %@ hostTarget %@ port %d txtRecord %@", ", "[BTPResolver handleReplyFullName:hostTarget:port:txtRecord:ifIndex:]"", 345, self->_bonjourName, self->_bonjourType, self->_bonjourDomain, nameCopy, targetCopy, __rev16(portCopy), recordCopy);
    }

    LOWORD(v16) = portCopy;
    v14 = [[BTPAdvertiser alloc] initWithSrcIfIndex:self->_srcIfIndex dstIfIndex:self->_dstIfIndex name:self->_bonjourName type:self->_bonjourType domain:self->_bonjourDomain hostTarget:targetCopy port:v16 txtRecord:recordCopy];
    v15 = v14;
    if (v14)
    {
      [(BTPAdvertiser *)v14 start];
      [(NSMutableArray *)self->_advertisers addObject:v15];
    }
  }

  else
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received update with invalid ifIndex %u != %u", ", "[BTPResolver handleReplyFullName:hostTarget:port:txtRecord:ifIndex:]"", 341, index, self->_srcIfIndex);
    }
  }
}

- (void)dealloc
{
  if (self->_sdRefResolve)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d _sdRefResolve is still active", ", "[BTPResolver dealloc]"", 329);
    }

    [(BTPResolver *)self stop];
  }

  v3.receiver = self;
  v3.super_class = BTPResolver;
  [(BTPResolver *)&v3 dealloc];
}

- (void)stop
{
  sdRefResolve = self->_sdRefResolve;
  if (sdRefResolve)
  {
    DNSServiceRefDeallocate(sdRefResolve);
    self->_sdRefResolve = 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_advertisers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) stop];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)start
{
  p_sdRefResolve = &self->_sdRefResolve;
  if (self->_sdRefResolve)
  {
    return 1;
  }

  v5 = DNSServiceResolve(p_sdRefResolve, 0, self->_srcIfIndex, [(NSString *)self->_bonjourName UTF8String], [(NSString *)self->_bonjourType UTF8String], [(NSString *)self->_bonjourDomain UTF8String], sub_100027ED8, self);
  sdRefResolve = self->_sdRefResolve;
  if (!sdRefResolve || v5)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d DNSServiceResolve for %@.%@.%@ failed %d", ", "[BTPResolver start]"", 300, self->_bonjourName, self->_bonjourType, self->_bonjourDomain, v5);
    }

    result = 0;
    *p_sdRefResolve = 0;
  }

  else
  {
    if (qword_100228F40 != -1)
    {
      v9 = self->_sdRefResolve;
      dispatch_once(&qword_100228F40, &stru_1001FA720);
      sdRefResolve = v9;
    }

    v7 = DNSServiceSetDispatchQueue(sdRefResolve, qword_100228F38);
    if (!v7)
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F30 != -1)
        {
          dispatch_once(&qword_100228F30, &stru_1001FA700);
        }

        _NRLogWithArgs(qword_100228F28, 2, "%s%.30s:%-4d Successfully started resolving for %@.%@.%@ over %u", ", "[BTPResolver start]"", 311, self->_bonjourName, self->_bonjourType, self->_bonjourDomain, self->_srcIfIndex);
      }

      return 1;
    }

    v8 = v7;
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d DNSServiceSetDispatchQueue failed %d", ", "[BTPResolver start]"", 306, v8);
    }

    [(BTPResolver *)self stop];
    return 0;
  }

  return result;
}

- (BTPResolver)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex name:(id)name type:(id)type domain:(id)domain
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  v22.receiver = self;
  v22.super_class = BTPResolver;
  v16 = [(BTPResolver *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_sdRefResolve = 0;
    v16->_srcIfIndex = index;
    v16->_dstIfIndex = ifIndex;
    objc_storeStrong(&v16->_bonjourName, name);
    objc_storeStrong(&v17->_bonjourType, type);
    objc_storeStrong(&v17->_bonjourDomain, domain);
    v18 = +[NSMutableArray array];
    advertisers = v17->_advertisers;
    v17->_advertisers = v18;

    v20 = v17;
  }

  else
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d super init failed", ", "[BTPResolver initWithSrcIfIndex:dstIfIndex:name:type:domain:]"", 275);
    }
  }

  return v17;
}

@end
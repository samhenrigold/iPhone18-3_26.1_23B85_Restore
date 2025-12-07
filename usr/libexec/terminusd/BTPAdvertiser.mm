@interface BTPAdvertiser
- (BOOL)start;
- (BTPAdvertiser)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex name:(id)name type:(id)type domain:(id)domain hostTarget:(id)target port:(unsigned __int16)port txtRecord:(id)self0;
- (void)dealloc;
- (void)stop;
@end

@implementation BTPAdvertiser

- (void)dealloc
{
  if (self->_sdRefRegister)
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

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d _sdRefRegister is still active", ", "[BTPAdvertiser dealloc]"", 433);
    }

    [(BTPAdvertiser *)self stop];
  }

  v3.receiver = self;
  v3.super_class = BTPAdvertiser;
  [(BTPAdvertiser *)&v3 dealloc];
}

- (void)stop
{
  sdRefRegister = self->_sdRefRegister;
  if (sdRefRegister)
  {
    DNSServiceRefDeallocate(sdRefRegister);
    self->_sdRefRegister = 0;
  }

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

    _NRLogWithArgs(qword_100228F28, 2, "%s%.30s:%-4d Successfully unregistered %@.%@.%@ %@:%d over %u", ", "[BTPAdvertiser stop]"", 427, self->_bonjourName, self->_bonjourType, self->_bonjourDomain, self->_hostTarget, bswap32(self->_port) >> 16, self->_dstIfIndex);
  }
}

- (BOOL)start
{
  p_sdRefRegister = &self->_sdRefRegister;
  if (self->_sdRefRegister)
  {
    return 1;
  }

  v5 = DNSServiceRegister(p_sdRefRegister, 0, self->_dstIfIndex, [(NSString *)self->_bonjourName UTF8String], [(NSString *)self->_bonjourType UTF8String], [(NSString *)self->_bonjourDomain UTF8String], [(NSString *)self->_hostTarget UTF8String], self->_port, [(NSData *)self->_txtRecord length], [(NSData *)self->_txtRecord bytes], nullsub_6, self);
  sdRefRegister = self->_sdRefRegister;
  if (!sdRefRegister || v5)
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

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d DNSServiceRegister for %@.%@.%@ %@:%d over %u failed %d", ", "[BTPAdvertiser start]"", 405, self->_bonjourName, self->_bonjourType, self->_bonjourDomain, self->_hostTarget, bswap32(self->_port) >> 16, self->_dstIfIndex, v5);
    }

    result = 0;
    *p_sdRefRegister = 0;
  }

  else
  {
    if (qword_100228F40 != -1)
    {
      v9 = self->_sdRefRegister;
      dispatch_once(&qword_100228F40, &stru_1001FA720);
      sdRefRegister = v9;
    }

    v7 = DNSServiceSetDispatchQueue(sdRefRegister, qword_100228F38);
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

        _NRLogWithArgs(qword_100228F28, 2, "%s%.30s:%-4d Successfully registered %@.%@.%@ %@:%d over %u", ", "[BTPAdvertiser start]"", 416, self->_bonjourName, self->_bonjourType, self->_bonjourDomain, self->_hostTarget, bswap32(self->_port) >> 16, self->_dstIfIndex);
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

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d DNSServiceSetDispatchQueue failed %d", ", "[BTPAdvertiser start]"", 411, v8);
    }

    [(BTPAdvertiser *)self stop];
    return 0;
  }

  return result;
}

- (BTPAdvertiser)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex name:(id)name type:(id)type domain:(id)domain hostTarget:(id)target port:(unsigned __int16)port txtRecord:(id)self0
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  targetCopy = target;
  recordCopy = record;
  v26.receiver = self;
  v26.super_class = BTPAdvertiser;
  v19 = [(BTPAdvertiser *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_sdRefRegister = 0;
    v19->_srcIfIndex = index;
    v19->_dstIfIndex = ifIndex;
    objc_storeStrong(&v19->_bonjourName, name);
    objc_storeStrong(&v20->_bonjourType, type);
    objc_storeStrong(&v20->_bonjourDomain, domain);
    objc_storeStrong(&v20->_hostTarget, target);
    v20->_port = port;
    objc_storeStrong(&v20->_txtRecord, record);
    v21 = v20;
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

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d super init failed", ", "[BTPAdvertiser initWithSrcIfIndex:dstIfIndex:name:type:domain:hostTarget:port:txtRecord:]"", 376);
    }
  }

  return v20;
}

@end
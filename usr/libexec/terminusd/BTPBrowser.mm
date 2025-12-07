@interface BTPBrowser
- (BOOL)start;
- (BTPBrowser)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex bonjourType:(id)type;
- (void)dealloc;
- (void)handleReplyName:(id)name type:(id)type domain:(id)domain ifIndex:(unsigned int)index add:(BOOL)add;
- (void)stop;
@end

@implementation BTPBrowser

- (void)handleReplyName:(id)name type:(id)type domain:(id)domain ifIndex:(unsigned int)index add:(BOOL)add
{
  addCopy = add;
  v8 = *&index;
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  if (self->_srcIfIndex == v8)
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

      v14 = "Rmv";
      if (addCopy)
      {
        v14 = "Add";
      }

      _NRLogWithArgs(qword_100228F28, 2, "%s%.30s:%-4d browse reply: %s %3u %-20@ %-20@ %@", ", "[BTPBrowser handleReplyName:type:domain:ifIndex:add:]"", 233, v14, v8, domainCopy, typeCopy, nameCopy);
    }

    domainCopy = [NSString stringWithFormat:@"%@.%@.%@", nameCopy, typeCopy, domainCopy];
    v16 = [(NSMutableDictionary *)self->_resolvers objectForKeyedSubscript:domainCopy];
    v17 = v16;
    if (addCopy)
    {

      if (v17)
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

          _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d trying to add already existing resolver for %@", ", "[BTPBrowser handleReplyName:type:domain:ifIndex:add:]"", 237, domainCopy);
        }
      }

      else
      {
        v18 = [[BTPResolver alloc] initWithSrcIfIndex:self->_srcIfIndex dstIfIndex:self->_dstIfIndex name:nameCopy type:typeCopy domain:domainCopy];
        v19 = v18;
        if (v18 && [(BTPResolver *)v18 start])
        {
          [(NSMutableDictionary *)self->_resolvers setObject:v19 forKeyedSubscript:domainCopy];
        }
      }
    }

    else
    {
      if (v16)
      {
        [v16 stop];
        [(NSMutableDictionary *)self->_resolvers removeObjectForKey:domainCopy];
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

          _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d trying to remove unknown resolver for %@", ", "[BTPBrowser handleReplyName:type:domain:ifIndex:add:]"", 255, domainCopy);
        }
      }
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

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received update with invalid ifIndex %u != %u", ", "[BTPBrowser handleReplyName:type:domain:ifIndex:add:]"", 230, v8, self->_srcIfIndex);
    }
  }
}

- (void)dealloc
{
  if (self->_sdRefBrowse)
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

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d _sdRefBrowse is still active", ", "[BTPBrowser dealloc]"", 218);
    }

    [(BTPBrowser *)self stop];
  }

  v3.receiver = self;
  v3.super_class = BTPBrowser;
  [(BTPBrowser *)&v3 dealloc];
}

- (void)stop
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_resolvers;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_resolvers objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7), v10];
        [v8 stop];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  sdRefBrowse = self->_sdRefBrowse;
  if (sdRefBrowse)
  {
    DNSServiceRefDeallocate(sdRefBrowse);
    self->_sdRefBrowse = 0;
  }
}

- (BOOL)start
{
  p_sdRefBrowse = &self->_sdRefBrowse;
  if (self->_sdRefBrowse)
  {
    return 1;
  }

  v5 = DNSServiceBrowse(p_sdRefBrowse, 0, self->_srcIfIndex, [(NSString *)self->_bonjourType UTF8String], "local", sub_10002897C, self);
  sdRefBrowse = self->_sdRefBrowse;
  if (sdRefBrowse)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (qword_100228F40 != -1)
    {
      v10 = self->_sdRefBrowse;
      dispatch_once(&qword_100228F40, &stru_1001FA720);
      sdRefBrowse = v10;
    }

    v8 = DNSServiceSetDispatchQueue(sdRefBrowse, qword_100228F38);
    if (!v8)
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

        _NRLogWithArgs(qword_100228F28, 2, "%s%.30s:%-4d Successfully started browsing for %@ over %u", ", "[BTPBrowser start]"", 200, self->_bonjourType, self->_srcIfIndex);
      }

      return 1;
    }

    v9 = v8;
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

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d DNSServiceSetDispatchQueue failed %d", ", "[BTPBrowser start]"", 196, v9);
    }

    [(BTPBrowser *)self stop];
    return 0;
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

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d DNSServiceBrowse for %@ failed %d", ", "[BTPBrowser start]"", 190, self->_bonjourType, v5);
    }

    result = 0;
    *p_sdRefBrowse = 0;
  }

  return result;
}

- (BTPBrowser)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex bonjourType:(id)type
{
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = BTPBrowser;
  v10 = [(BTPBrowser *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_sdRefBrowse = 0;
    v10->_srcIfIndex = index;
    v10->_dstIfIndex = ifIndex;
    objc_storeStrong(&v10->_bonjourType, type);
    v12 = +[NSMutableDictionary dictionary];
    resolvers = v11->_resolvers;
    v11->_resolvers = v12;

    v14 = v11;
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

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d super init failed", ", "[BTPBrowser initWithSrcIfIndex:dstIfIndex:bonjourType:]"", 170);
    }
  }

  return v11;
}

@end
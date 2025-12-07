@interface NRApplicationServiceClient
- (NSString)description;
- (void)dealloc;
- (void)didCompleteIncomingResolveRequestForASName:(id)name asClient:(id)client;
- (void)didStartBrowseRequestForASName:(id)name asClient:(id)client;
- (void)didStartResolveRequestForASName:(id)name asClient:(id)client;
- (void)didStopAdvertiseRequestForASName:(id)name endpoint:(id)endpoint asClient:(id)client;
- (void)didStopBrowseRequestForASName:(id)name asClient:(id)client;
- (void)didStopResolveRequestForASName:(id)name asClient:(id)client;
@end

@implementation NRApplicationServiceClient

- (void)didStopAdvertiseRequestForASName:(id)name endpoint:(id)endpoint asClient:(id)client
{
  nameCopy = name;
  endpointCopy = endpoint;
  clientCopy = client;
  v10 = clientCopy;
  if (clientCopy == self)
  {
    if (clientCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained didStopAdvertiseRequestForASName:nameCopy endpoint:endpointCopy asClient:self];
  }
}

- (void)didCompleteIncomingResolveRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  v7 = clientCopy;
  if (clientCopy == self)
  {
    if (clientCopy)
    {
      if (!self->_cancelled && [(NSMutableArray *)self->_asNamesForIncomingResolveRequests containsObject:nameCopy])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
LABEL_6:
        [WeakRetained didCompleteIncomingResolveRequestForASName:nameCopy asClient:self];
      }
    }

    else
    {
      WeakRetained = 0;
      if ([0 containsObject:nameCopy])
      {
        goto LABEL_6;
      }
    }
  }
}

- (void)didStopResolveRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  if (clientCopy == self)
  {
    if (clientCopy)
    {
      if (!self->_cancelled)
      {
        v7 = clientCopy;
        v8 = [(NSMutableArray *)self->_asNamesForResolving containsObject:nameCopy];
        clientCopy = v7;
        if (v8)
        {
          [(NSMutableArray *)self->_asNamesForResolving removeObject:nameCopy];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
LABEL_6:
          [WeakRetained didStopResolveRequestForASName:nameCopy asClient:self];

          clientCopy = v7;
        }
      }
    }

    else
    {
      v7 = 0;
      v10 = [0 containsObject:nameCopy];
      clientCopy = 0;
      if (v10)
      {
        [0 removeObject:nameCopy];
        WeakRetained = 0;
        goto LABEL_6;
      }
    }
  }
}

- (void)didStartResolveRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  if (clientCopy == self)
  {
    if (clientCopy)
    {
      if (self->_cancelled)
      {
        goto LABEL_8;
      }

      v7 = clientCopy;
      if (([(NSMutableArray *)self->_asNamesForResolving containsObject:nameCopy]& 1) == 0)
      {
        [(NSMutableArray *)self->_asNamesForResolving addObject:nameCopy];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v7 = 0;
      WeakRetained = 0;
      if (([0 containsObject:nameCopy] & 1) == 0)
      {
        [0 addObject:nameCopy];
        WeakRetained = 0;
      }
    }

    [WeakRetained didStartResolveRequestForASName:nameCopy asClient:self];

    clientCopy = v7;
  }

LABEL_8:
}

- (void)didStopBrowseRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  if (clientCopy == self)
  {
    if (clientCopy)
    {
      if (!self->_cancelled)
      {
        v7 = clientCopy;
        v8 = [(NSMutableArray *)self->_asNamesForBrowsing containsObject:nameCopy];
        clientCopy = v7;
        if (v8)
        {
          [(NSMutableArray *)self->_asNamesForBrowsing removeObject:nameCopy];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
LABEL_6:
          [WeakRetained didStopBrowseRequestForASName:nameCopy asClient:self];

          clientCopy = v7;
        }
      }
    }

    else
    {
      v7 = 0;
      v10 = [0 containsObject:nameCopy];
      clientCopy = 0;
      if (v10)
      {
        [0 removeObject:nameCopy];
        WeakRetained = 0;
        goto LABEL_6;
      }
    }
  }
}

- (void)didStartBrowseRequestForASName:(id)name asClient:(id)client
{
  nameCopy = name;
  clientCopy = client;
  if (clientCopy == self)
  {
    if (clientCopy)
    {
      if (self->_cancelled)
      {
        goto LABEL_12;
      }

      v7 = clientCopy;
      if ([(NSMutableArray *)self->_asNamesForBrowsing containsObject:nameCopy])
      {
        goto LABEL_5;
      }

      [(NSMutableArray *)self->_asNamesForBrowsing addObject:nameCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v7 = 0;
      if ([0 containsObject:nameCopy])
      {
LABEL_5:
        v8 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        clientCopy = v7;
        if (!IsLevelEnabled)
        {
          goto LABEL_12;
        }

        if (!v7)
        {
          v7 = 0;
        }

        WeakRetained = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(WeakRetained, 0, "%s%.30s:%-4d already browsing for %@", ", "[NRApplicationServiceClient didStartBrowseRequestForASName:asClient:]"", 1511, nameCopy);
        goto LABEL_11;
      }

      [0 addObject:nameCopy];
      WeakRetained = 0;
    }

    [WeakRetained didStartBrowseRequestForASName:nameCopy asClient:self];
LABEL_11:

    clientCopy = v7;
  }

LABEL_12:
}

- (void)dealloc
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      nrUUID = self->_nrUUID;
    }

    else
    {
      nrUUID = 0;
    }

    v6 = nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@ dealloc", ", "[NRApplicationServiceClient dealloc]"", 1362, self);
  }

  sub_10011DE24(self);
  v8.receiver = self;
  v8.super_class = NRApplicationServiceClient;
  [(NRApplicationServiceClient *)&v8 dealloc];
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  if (self)
  {
    if (self->_started)
    {
      v4 = "started";
    }

    else if (self->_cancelled)
    {
      v4 = "cancelled";
    }

    else
    {
      v4 = "";
    }

    v5 = [v3 initWithFormat:@"NRASClient[%llu %s ", self->_identifier, v4];
    [v5 appendFormat:@"browsing: %@ ", self->_asNamesForBrowsing];
    [v5 appendFormat:@"resolving: %@ ", self->_asNamesForResolving];
    asNamesForIncomingResolveRequests = self->_asNamesForIncomingResolveRequests;
  }

  else
  {
    v5 = [v3 initWithFormat:@"NRASClient[%llu %s ", 0, ""];
    [v5 appendFormat:@"browsing: %@ ", 0];
    [v5 appendFormat:@"resolving: %@ ", 0];
    asNamesForIncomingResolveRequests = 0;
  }

  [v5 appendFormat:@"incoming-requests: %@ ", asNamesForIncomingResolveRequests];
  [v5 appendString:@"]"];

  return v5;
}

@end
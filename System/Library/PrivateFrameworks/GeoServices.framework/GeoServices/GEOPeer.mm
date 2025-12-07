@interface GEOPeer
- (NSString)bundleIdentifier;
- (NSString)offlineCohortId;
- (void)_updateConnectionDebugIdentifier;
- (void)dealloc;
@end

@implementation GEOPeer

- (void)_updateConnectionDebugIdentifier
{
  if (self->_serverIdentifier && self->_debugIdentifier)
  {
    v3 = MEMORY[0x1E696AEC0];
    bundleIdentifier = [(GEOPeer *)self bundleIdentifier];
    [v3 stringWithFormat:@"%@:%@:%@", bundleIdentifier, self->_serverIdentifier, self->_debugIdentifier];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    bundleIdentifier2 = [(GEOPeer *)self bundleIdentifier];
    serverIdentifier = self->_serverIdentifier;
    if (!serverIdentifier)
    {
      serverIdentifier = self->_debugIdentifier;
    }

    bundleIdentifier = bundleIdentifier2;
    [v4 stringWithFormat:@"%@:%@", bundleIdentifier2, serverIdentifier, v8];
  }
  v7 = ;
  [(GEOXPCConnection *)self->_connection setDebugIdentifier:v7];
}

- (NSString)bundleIdentifier
{
  v2 = objc_msgSend_auditToken(self, a2);
  bundleId = [v2 bundleId];

  return bundleId;
}

- (void)dealloc
{
  [(GEOXPCConnection *)self->_connection close];
  v3.receiver = self;
  v3.super_class = GEOPeer;
  [(GEOPeer *)&v3 dealloc];
}

- (NSString)offlineCohortId
{
  v2 = objc_msgSend_auditToken(self, a2);
  offlineCohortId = [v2 offlineCohortId];

  return offlineCohortId;
}

@end
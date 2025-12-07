@interface SDSession
- (id)description;
@end

@implementation SDSession

- (id)description
{
  v20 = 0;
  NSAppendPrintF(&v20, "SDSession %{ptr}", self);
  v3 = v20;
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    v19 = v3;
    NSAppendPrintF(&v19, ", ID %@", identifier);
    v6 = v19;

    v4 = v6;
  }

  peerIdentifier = self->_peerIdentifier;
  if (peerIdentifier)
  {
    v18 = v4;
    NSAppendPrintF(&v18, ", Peer %@", peerIdentifier);
    v8 = v18;

    v4 = v8;
  }

  clientSession = self->_clientSession;
  if (clientSession)
  {
    v17 = v4;
    NSAppendPrintF(&v17, ", %@", clientSession);
    v10 = v17;

    v4 = v10;
  }

  v16 = v4;
  if (self->_sessionCreated)
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  NSAppendPrintF(&v16, ", SessionCreated %s", v11);
  v12 = v16;

  if ([(NSMutableArray *)self->_sendDataQueue count])
  {
    v15 = v12;
    NSAppendPrintF(&v15, ", %ld pending sends", [(NSMutableArray *)self->_sendDataQueue count]);
    v13 = v15;

    v12 = v13;
  }

  return v12;
}

@end
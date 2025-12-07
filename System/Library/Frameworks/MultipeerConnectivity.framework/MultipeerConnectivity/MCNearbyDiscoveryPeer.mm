@interface MCNearbyDiscoveryPeer
- (MCNearbyDiscoveryPeer)init;
- (MCNearbyDiscoveryPeer)initWithPeerID:(id)d;
- (id)description;
- (id)stringForState:(int)state;
- (void)attachConnection:(id)connection;
- (void)closeConnection;
- (void)dealloc;
- (void)flushDataBuffer;
- (void)invalidate;
- (void)sendData:(id)data withCompletionHandler:(id)handler;
@end

@implementation MCNearbyDiscoveryPeer

- (MCNearbyDiscoveryPeer)init
{
  v3.receiver = self;
  v3.super_class = MCNearbyDiscoveryPeer;
  [(MCNearbyDiscoveryPeer *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (MCNearbyDiscoveryPeer)initWithPeerID:(id)d
{
  v6.receiver = self;
  v6.super_class = MCNearbyDiscoveryPeer;
  v4 = [(MCNearbyDiscoveryPeer *)&v6 init];
  if (v4)
  {
    v4->_peerID = [d copy];
    v4->_sendDataBuffer = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v4;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = mcdp_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating peer [%@].", buf, 0xCu);
  }

  [(MCNearbyDiscoveryPeer *)self flushDataBuffer];

  [(MCNearbyDiscoveryPeerConnection *)self->_connection invalidate];
  self->_connection = 0;
  [(MCNearbyDiscoveryPeerConnection *)self->_trialConnection invalidate];

  self->_trialConnection = 0;
  v4.receiver = self;
  v4.super_class = MCNearbyDiscoveryPeer;
  [(MCNearbyDiscoveryPeer *)&v4 dealloc];
}

- (id)description
{
  peerID = [(MCNearbyDiscoveryPeer *)self peerID];

  return [(MCPeerID *)peerID displayNameAndPID];
}

- (void)attachConnection:(id)connection
{
  [(MCNearbyDiscoveryPeer *)self setConnection:?];
  if ([(MCNearbyDiscoveryPeer *)self trialConnection]!= connection)
  {
    [(MCNearbyDiscoveryPeerConnection *)[(MCNearbyDiscoveryPeer *)self trialConnection] invalidate];
  }

  [(MCNearbyDiscoveryPeer *)self setTrialConnection:0];
}

- (void)closeConnection
{
  [(MCNearbyDiscoveryPeerConnection *)[(MCNearbyDiscoveryPeer *)self connection] invalidate];

  [(MCNearbyDiscoveryPeer *)self setConnection:0];
}

- (void)invalidate
{
  [(MCNearbyDiscoveryPeerConnection *)self->_connection invalidate];
  trialConnection = self->_trialConnection;

  [(MCNearbyDiscoveryPeerConnection *)trialConnection invalidate];
}

- (id)stringForState:(int)state
{
  v11 = *MEMORY[0x277D85DE8];
  if (state < 3)
  {
    return off_278B447F8[state];
  }

  v6 = mcdp_log(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 1024;
    stateCopy = state;
    _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Peer [%@] unrecognized state [%d].", &v7, 0x12u);
  }

  return @"unknown";
}

- (void)sendData:(id)data withCompletionHandler:(id)handler
{
  if (self->_state == 2)
  {
    connection = self->_connection;

    [(MCNearbyDiscoveryPeerConnection *)connection sendData:data withCompletionHandler:handler];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{data, @"NSNearbyDiscoveryPeerSendDataKey", handler, @"NSNearbyDiscoveryPeerSendCompletionHandlerKey", 0}];
    sendDataBuffer = self->_sendDataBuffer;

    [(NSMutableArray *)sendDataBuffer addObject:v6];
  }
}

- (void)flushDataBuffer
{
  v35 = *MEMORY[0x277D85DE8];
  if (self->_state == 2)
  {
    v3 = mcdp_log(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NSMutableArray *)self->_sendDataBuffer count];
      *buf = 138412546;
      selfCopy2 = self;
      v33 = 1024;
      v34 = v4;
      _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Peer [%@] relaying buffered data (%d sendData calls) to the peer connection object).", buf, 0x12u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    sendDataBuffer = self->_sendDataBuffer;
    v6 = [(NSMutableArray *)sendDataBuffer countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(sendDataBuffer);
          }

          -[MCNearbyDiscoveryPeerConnection sendData:withCompletionHandler:](self->_connection, "sendData:withCompletionHandler:", [*(*(&v25 + 1) + 8 * i) objectForKey:@"NSNearbyDiscoveryPeerSendDataKey"], objc_msgSend(*(*(&v25 + 1) + 8 * i), "objectForKey:", @"NSNearbyDiscoveryPeerSendCompletionHandlerKey"));
        }

        v7 = [(NSMutableArray *)sendDataBuffer countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v10 = [(NSMutableArray *)self->_sendDataBuffer count];
    if (v10)
    {
      v12 = mcdp_log(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(NSMutableArray *)self->_sendDataBuffer count];
        *buf = 138412546;
        selfCopy2 = self;
        v33 = 1024;
        v34 = v13;
        _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Peer [%@] failed to send [%d] messages.", buf, 0x12u);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = self->_sendDataBuffer;
      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        v18 = *MEMORY[0x277CCA450];
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = [*(*(&v21 + 1) + 8 * j) objectForKey:@"NSNearbyDiscoveryPeerSendCompletionHandlerKey"];
            if (v20)
            {
              (*(v20 + 16))(v20, [MEMORY[0x277CCA9B8] errorWithDomain:@"NSNearbyDiscoveryPeer" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Peer doesn't have a connection object", v18)}]);
            }
          }

          v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v16);
      }
    }
  }

  [(NSMutableArray *)self->_sendDataBuffer removeAllObjects];
}

@end
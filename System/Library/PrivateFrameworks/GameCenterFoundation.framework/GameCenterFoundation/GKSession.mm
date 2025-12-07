@interface GKSession
- (BOOL)acceptConnectionFromPeer:(NSString *)peerID error:(NSError *)error;
- (BOOL)isAvailable;
- (BOOL)isBusy;
- (BOOL)isPeerBusy:(id)busy;
- (BOOL)sendData:(NSData *)data toPeers:(NSArray *)peers withDataMode:(GKSendDataMode)mode error:(NSError *)error;
- (BOOL)sendDataToAllPeers:(NSData *)data withDataMode:(GKSendDataMode)mode error:(NSError *)error;
- (GKSession)initWithViceroySession:(id)session;
- (GKSessionMode)sessionMode;
- (NSArray)peersWithConnectionState:(GKPeerConnectionState)state;
- (NSString)displayName;
- (NSString)displayNameForPeer:(NSString *)peerID;
- (NSString)peerID;
- (NSString)sessionID;
- (NSTimeInterval)disconnectTimeout;
- (id)delegate;
- (id)description;
- (id)initWithSessionID:(NSString *)sessionID displayName:(NSString *)name sessionMode:(GKSessionMode)mode;
- (id)privateDelegate;
- (id)privateImpl;
- (void)cancelConnectToPeer:(NSString *)peerID;
- (void)connectToPeer:(NSString *)peerID withTimeout:(NSTimeInterval)timeout;
- (void)dealloc;
- (void)denyConnectionFromPeer:(NSString *)peerID;
- (void)disableWifi;
- (void)disconnectFromAllPeers;
- (void)disconnectPeerFromAllPeers:(NSString *)peerID;
- (void)setAvailable:(BOOL)available;
- (void)setBusy:(BOOL)busy;
- (void)setDataReceiveHandler:(id)handler withContext:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setDisconnectTimeout:(NSTimeInterval)disconnectTimeout;
- (void)setPrivateDelegate:(id)delegate;
@end

@implementation GKSession

- (id)initWithSessionID:(NSString *)sessionID displayName:(NSString *)name sessionMode:(GKSessionMode)mode
{
  v5 = *&mode;
  v8 = sessionID;
  v9 = name;
  v14.receiver = self;
  v14.super_class = GKSession;
  v10 = [(GKSession *)&v14 init];
  if (v10)
  {
    v11 = [[GKViceroySession alloc] initWithGKSession:v10 sessionID:v8 displayName:v9 sessionMode:v5];
    session = v10->_session;
    v10->_session = v11;
  }

  return v10;
}

- (GKSession)initWithViceroySession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = GKSession;
  v6 = [(GKSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (id)description
{
  session = [(GKSession *)self session];
  v3 = [session description];

  return v3;
}

- (void)dealloc
{
  [(GKSession *)self setSession:0];
  v3.receiver = self;
  v3.super_class = GKSession;
  [(GKSession *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  session = [(GKSession *)self session];
  [session setDelegate:v4];
}

- (id)delegate
{
  session = [(GKSession *)self session];
  delegate = [session delegate];

  return delegate;
}

- (NSString)sessionID
{
  session = [(GKSession *)self session];
  sessionID = [session sessionID];

  return sessionID;
}

- (NSString)displayName
{
  session = [(GKSession *)self session];
  displayName = [session displayName];

  return displayName;
}

- (void)setDisconnectTimeout:(NSTimeInterval)disconnectTimeout
{
  session = [(GKSession *)self session];
  [session setDisconnectTimeout:disconnectTimeout];
}

- (NSTimeInterval)disconnectTimeout
{
  session = [(GKSession *)self session];
  [session disconnectTimeout];
  v4 = v3;

  return v4;
}

- (NSString)displayNameForPeer:(NSString *)peerID
{
  v4 = peerID;
  session = [(GKSession *)self session];
  v6 = [session displayNameForPeer:v4];

  return v6;
}

- (BOOL)sendData:(NSData *)data toPeers:(NSArray *)peers withDataMode:(GKSendDataMode)mode error:(NSError *)error
{
  v7 = *&mode;
  v10 = peers;
  v11 = data;
  session = [(GKSession *)self session];
  LOBYTE(error) = [session sendData:v11 toPeers:v10 withDataMode:v7 error:error];

  return error;
}

- (BOOL)sendDataToAllPeers:(NSData *)data withDataMode:(GKSendDataMode)mode error:(NSError *)error
{
  v6 = *&mode;
  v8 = data;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "GKSession: sendDataToAllPeers: withDataMode:", v14, 2u);
  }

  session = [(GKSession *)self session];
  v12 = [session sendDataToAllPeers:v8 withDataMode:v6 error:error];

  return v12;
}

- (void)setDataReceiveHandler:(id)handler withContext:(void *)context
{
  v6 = handler;
  session = [(GKSession *)self session];
  [session setDataReceiveHandler:v6 withContext:context];
}

- (void)connectToPeer:(NSString *)peerID withTimeout:(NSTimeInterval)timeout
{
  v6 = peerID;
  session = [(GKSession *)self session];
  [session connectToPeer:v6 withTimeout:timeout];
}

- (void)cancelConnectToPeer:(NSString *)peerID
{
  v4 = peerID;
  session = [(GKSession *)self session];
  [session cancelConnectToPeer:v4];
}

- (BOOL)acceptConnectionFromPeer:(NSString *)peerID error:(NSError *)error
{
  v6 = peerID;
  session = [(GKSession *)self session];
  LOBYTE(error) = [session acceptConnectionFromPeer:v6 error:error];

  return error;
}

- (void)denyConnectionFromPeer:(NSString *)peerID
{
  v4 = peerID;
  session = [(GKSession *)self session];
  [session denyConnectionFromPeer:v4];
}

- (void)disconnectPeerFromAllPeers:(NSString *)peerID
{
  v4 = peerID;
  session = [(GKSession *)self session];
  [session disconnectPeerFromAllPeers:v4];
}

- (void)disconnectFromAllPeers
{
  session = [(GKSession *)self session];
  [session disconnectFromAllPeers];
}

- (NSArray)peersWithConnectionState:(GKPeerConnectionState)state
{
  v3 = *&state;
  session = [(GKSession *)self session];
  v5 = [session peersWithConnectionState:v3];

  return v5;
}

- (GKSessionMode)sessionMode
{
  session = [(GKSession *)self session];
  sessionMode = [session sessionMode];

  return sessionMode;
}

- (BOOL)isAvailable
{
  session = [(GKSession *)self session];
  isAvailable = [session isAvailable];

  return isAvailable;
}

- (void)setAvailable:(BOOL)available
{
  v3 = available;
  session = [(GKSession *)self session];
  [session setAvailable:v3];
}

- (NSString)peerID
{
  session = [(GKSession *)self session];
  peerID = [session peerID];

  return peerID;
}

- (BOOL)isBusy
{
  session = [(GKSession *)self session];
  isBusy = [session isBusy];

  return isBusy;
}

- (void)setBusy:(BOOL)busy
{
  busyCopy = busy;
  session = [(GKSession *)self session];
  [session setBusy:busyCopy];
}

- (BOOL)isPeerBusy:(id)busy
{
  busyCopy = busy;
  session = [(GKSession *)self session];
  v6 = [session isPeerBusy:busyCopy];

  return v6;
}

- (void)disableWifi
{
  session = [(GKSession *)self session];
  [session disableWifi];
}

- (void)setPrivateDelegate:(id)delegate
{
  delegateCopy = delegate;
  session = [(GKSession *)self session];
  [session setPrivateDelegate:delegateCopy];
}

- (id)privateDelegate
{
  session = [(GKSession *)self session];
  privateDelegate = [session privateDelegate];

  return privateDelegate;
}

- (id)privateImpl
{
  session = [(GKSession *)self session];
  viceroyInternalSession = [session viceroyInternalSession];

  return viceroyInternalSession;
}

@end
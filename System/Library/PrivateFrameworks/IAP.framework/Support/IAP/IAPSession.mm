@interface IAPSession
- (BOOL)closeDataPipes;
- (BOOL)openPipeFromApp;
- (BOOL)openPipeToApp;
- (IAPSession)initWithClient:(id)client connectionID:(unsigned int)d protocolID:(unsigned __int8)iD sessionID:(unsigned __int16 *)sessionID;
- (id)description;
- (void)_acceptSocketCB:(__CFSocket *)b acceptedSock:(int)sock;
- (void)_registerListenSocket;
- (void)dealloc;
- (void)shuttingDownSession;
@end

@implementation IAPSession

- (IAPSession)initWithClient:(id)client connectionID:(unsigned int)d protocolID:(unsigned __int8)iD sessionID:(unsigned __int16 *)sessionID
{
  v8 = *&d;
  v24.receiver = self;
  v24.super_class = IAPSession;
  v10 = [(IAPSession *)&v24 init];
  if (!v10)
  {
    return v10;
  }

  result = client;
  if ((&v10->_client & 7) != 0)
  {
    goto LABEL_36;
  }

  v10->_client = result;
  if ((&v10->_connectionID & 3) != 0)
  {
    goto LABEL_36;
  }

  v10->_connectionID = v8;
  v10->_protocolID = iD;
  v12 = dword_10012B914 + 1;
  if (dword_10012B914 == -1)
  {
    goto LABEL_37;
  }

  if (HIWORD(v12))
  {
    v12 = 0;
  }

  dword_10012B914 = v12;
  if (!sessionID)
  {
    goto LABEL_36;
  }

  if (sessionID)
  {
    goto LABEL_36;
  }

  *sessionID = v12;
  if ((v10 + 30))
  {
    goto LABEL_36;
  }

  v10->_sessionID = v12;
  sub_1000DDE90(3u, @"%s:%s client=%@ connID=0x%x protocolID=%d sessionID=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSession initWithClient:connectionID:protocolID:sessionID:]", client, v8, v10->_protocolID, v12);
  v13 = [+[EAManager sharedManager](EAManager "sharedManager")];
  if ((&v10->_accessory & 7) != 0)
  {
    goto LABEL_36;
  }

  v10->_accessory = v13;
  if (!v13)
  {
    NSLog(@"ERROR - %s:%s - %d couldn't find accessory for connectionID=0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSession initWithClient:connectionID:protocolID:sessionID:]", 126, v10->_connectionID);
  }

  increaseSessionRefCount = [(IAPEAClient *)v10->_client increaseSessionRefCount];
  if (((v10 + 32) & 3) != 0 || (v10->_listenSock = -1, ((v10 + 40) & 7) != 0) || (v10->_listenSockRef = 0, ((v10 + 48) & 7) != 0) || (v10->_listenSockRls = 0, ((v10 + 56) & 3) != 0) || (v10->_sock = -1, ((v10 + 64) & 7) != 0) || (v10->_sockRef = 0, ((v10 + 72) & 7) != 0) || (v10->_sockRls = 0, *&v10->_openPipeToAppAfterAccept = 0, (v16 = sub_1000CC7A0(increaseSessionRefCount, v15)) == 0) || (v16 & 7) != 0 || (v17 = (*(*v16 + 96))(v16, v8)) == 0 || (v17 & 7) != 0 || (v18 = (*(*v17 + 160))(v17), v19 = [(IAPEAClient *)v10->_client bundleId], !v18) || (v18 & 7) != 0)
  {
LABEL_36:
    __break(0x5516u);
  }

  [IAPDataLogger PowerlogEASession:v19 forAccessory:v10->_accessory forProtocolID:v10->_protocolID forPortType:(*(*v18 + 208))(v18) isSessionOpen:1];
  result = (*(*v18 + 224))(v18);
  v10->_isWirelessSession = result;
  v20 = dword_10012B908;
  if (result)
  {
    goto LABEL_28;
  }

  v20 = dword_10012B908 + 1;
  if (dword_10012B908 != -1)
  {
    ++dword_10012B908;
LABEL_28:
    if (v20)
    {
      if (v20 == 1 && (byte_10012B90C & 1) == 0)
      {
        v25[0] = @"AssertType";
        v25[1] = @"AssertLevel";
        v26[0] = @"NoIdleSleepAssertion";
        v26[1] = &off_100121590;
        v25[2] = @"AssertName";
        v25[3] = @"AllowsDeviceRestart";
        v26[2] = @"com.apple.iapd.ea-session-open";
        v26[3] = kCFBooleanTrue;
        if (IOPMAssertionCreateWithProperties([NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4], &dword_10012B910))
        {
          NSLog(@"ERROR - %s:%s - %d couldn't take sleep assertion", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSession initWithClient:connectionID:protocolID:sessionID:]", 167);
        }

        else
        {
          byte_10012B90C = 1;
          sub_1000DDE90(3u, @"ea session power assertion (%u) taken", dword_10012B910, v21, v22, v23);
        }
      }
    }

    else
    {
      sub_1000DDE90(3u, @"%s:%s not taking power assertion for protocolID=%d sessionID=%d on wireless transport", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSession initWithClient:connectionID:protocolID:sessionID:]", v10->_protocolID, v10->_sessionID);
    }

    return v10;
  }

LABEL_37:
  __break(0x5500u);
  return result;
}

- (void)shuttingDownSession
{
  if (((self + 16) & 7) != 0 || ([(IAPEAClient *)self->_client decreaseSessionRefCount], (&self->_connectionID & 3) != 0) || ((self + 30) & 1) != 0 || (sub_1000DDE90(3u, @"%s:%s clientID=%@ connectionID=0x%x protocolID=%d sessionID=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSession shuttingDownSession]", self->_client, self->_connectionID, self->_protocolID, self->_sessionID), (v5 = sub_1000CC7A0(v3, v4)) == 0) || (v5 & 7) != 0 || ((v6 = (*(*v5 + 96))(v5, self->_connectionID)) != 0 ? (v7 = (v6 & 7) == 0) : (v7 = 0), !v7 || (v8 = (*(*v6 + 160))(v6), v9 = [(IAPEAClient *)self->_client bundleId], ((self + 8) & 7) != 0) || (v8 ? (v10 = (v8 & 7) == 0) : (v10 = 0), !v10)))
  {
    __break(0x5516u);
    goto LABEL_30;
  }

  [IAPDataLogger PowerlogEASession:v9 forAccessory:self->_accessory forProtocolID:self->_protocolID forPortType:(*(*v8 + 208))(v8) isSessionOpen:0];
  isWirelessSession = self->_isWirelessSession;
  if (isWirelessSession >= 2)
  {
LABEL_30:
    __break(0x550Au);
    goto LABEL_31;
  }

  v12 = dword_10012B908;
  if ((isWirelessSession & 1) == 0)
  {
    v12 = dword_10012B908 - 1;
    if (!dword_10012B908)
    {
LABEL_31:
      __break(0x5515u);
      return;
    }

    --dword_10012B908;
  }

  if (!v12 && byte_10012B90C == 1)
  {
    if (IOPMAssertionRelease(dword_10012B910))
    {
      NSLog(@"ERROR - %s:%s - %d couldn't release sleep assertion", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSession shuttingDownSession]", 208);
    }

    else
    {
      byte_10012B90C = 0;

      sub_1000DDE90(3u, @"ea session power assertion released");
    }
  }
}

- (void)dealloc
{
  if (((self + 16) & 7) != 0 || (self->_client, self->_client = 0, ((self + 8) & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {

    self->_accessory = 0;
    v3.receiver = self;
    v3.super_class = IAPSession;
    [(IAPSession *)&v3 dealloc];
  }
}

- (BOOL)openPipeToApp
{
  if ((&self->_sockRef & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (self->_sockRef)
    {
      [(IAPSession *)self _openPipeToApp:v2];
    }

    else
    {
      self->_openPipeToAppAfterAccept = 1;
    }

    LOBYTE(self) = 1;
  }

  return self;
}

- (BOOL)openPipeFromApp
{
  if ((&self->_sockRef & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (self->_sockRef)
    {
      [(IAPSession *)self _openPipeFromApp:v2];
    }

    else
    {
      self->_openPipeFromAppAfterAccept = 1;
    }

    LOBYTE(self) = 1;
  }

  return self;
}

- (BOOL)closeDataPipes
{
  p_listenSockRls = &self->_listenSockRls;
  if ((&self->_listenSockRls & 7) != 0)
  {
    goto LABEL_20;
  }

  selfCopy = self;
  self = *p_listenSockRls;
  if (*p_listenSockRls)
  {
    CFRunLoopSourceInvalidate(self);
    CFRelease(*p_listenSockRls);
    *p_listenSockRls = 0;
  }

  p_listenSockRef = &selfCopy->_listenSockRef;
  if ((&selfCopy->_listenSockRef & 7) != 0)
  {
    goto LABEL_20;
  }

  self = *p_listenSockRef;
  if (*p_listenSockRef)
  {
    CFSocketInvalidate(self);
    CFRelease(*p_listenSockRef);
    *p_listenSockRef = 0;
  }

  p_listenSock = &selfCopy->_listenSock;
  if ((&selfCopy->_listenSock & 3) != 0)
  {
    goto LABEL_20;
  }

  LODWORD(self) = *p_listenSock;
  if ((*p_listenSock & 0x80000000) == 0)
  {
    LOBYTE(self) = close(self);
    *p_listenSock = -1;
  }

  p_sockRls = &selfCopy->_sockRls;
  if ((&selfCopy->_sockRls & 7) != 0)
  {
    goto LABEL_20;
  }

  self = *p_sockRls;
  if (*p_sockRls)
  {
    CFRunLoopSourceInvalidate(self);
    CFRelease(*p_sockRls);
    *p_sockRls = 0;
  }

  p_sockRef = &selfCopy->_sockRef;
  if ((&selfCopy->_sockRef & 7) != 0)
  {
    goto LABEL_20;
  }

  self = *p_sockRef;
  if (*p_sockRef)
  {
    CFSocketInvalidate(self);
    CFRelease(*p_sockRef);
    *p_sockRef = 0;
  }

  p_sock = &selfCopy->_sock;
  if ((p_sock & 3) != 0)
  {
LABEL_20:
    __break(0x5516u);
  }

  else
  {
    if ((*p_sock & 0x80000000) == 0)
    {
      close(*p_sock);
      *p_sock = -1;
    }

    LOBYTE(self) = 1;
  }

  return self;
}

- (void)_registerListenSocket
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __source[14] = v3;
  __source[15] = v3;
  __source[12] = v3;
  __source[13] = v3;
  __source[10] = v3;
  __source[11] = v3;
  __source[8] = v3;
  __source[9] = v3;
  __source[6] = v3;
  __source[7] = v3;
  __source[4] = v3;
  __source[5] = v3;
  __source[2] = v3;
  __source[3] = v3;
  __source[0] = v3;
  __source[1] = v3;
  if (((self + 24) & 3) != 0)
  {
    goto LABEL_11;
  }

  if ((self + 30))
  {
    goto LABEL_11;
  }

  IAPAppToAppSocketPath();
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&v12[5] + 10) = v4;
  v12[4] = v4;
  v12[5] = v4;
  v12[2] = v4;
  v12[3] = v4;
  v12[0] = v4;
  v12[1] = v4;
  unlink(__source);
  v5 = socket(1, 1, 0);
  p_listenSock = &self->_listenSock;
  if ((&self->_listenSock & 3) != 0)
  {
    goto LABEL_11;
  }

  *p_listenSock = v5;
  memset(v12 + 2, 0, 104);
  LOWORD(v12[0]) = 362;
  strlcpy(v12 + 2, __source, 0x68uLL);
  if (bind(*p_listenSock, v12, 0x6Au))
  {
    NSLog(@"can't bind to ea address");
  }

  if (listen(*p_listenSock, 5))
  {
    NSLog(@"can't listen to socket");
  }

  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  v7 = CFSocketCreateWithNative(kCFAllocatorDefault, self->_listenSock, 2uLL, sub_100010FC8, &context);
  if (((self + 40) & 7) != 0 || (self->_listenSockRef = v7, RunLoopSource = CFSocketCreateRunLoopSource(kCFAllocatorDefault, v7, 0), p_listenSockRls = &self->_listenSockRls, (p_listenSockRls & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
  }

  *p_listenSockRls = RunLoopSource;
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, *p_listenSockRls, kCFRunLoopDefaultMode);
}

- (void)_acceptSocketCB:(__CFSocket *)b acceptedSock:(int)sock
{
  v12 = 1;
  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  if (((self + 56) & 3) != 0 || (self->_sock = sock, v6 = CFSocketCreateWithNative(0, sock, 9uLL, sub_100010FC8, &context), ((self + 64) & 7) != 0) || (self->_sockRef = v6, CFSocketDisableCallBacks(v6, 9uLL), RunLoopSource = CFSocketCreateRunLoopSource(kCFAllocatorDefault, self->_sockRef, 0), ((self + 72) & 7) != 0) || (self->_sockRls = RunLoopSource, Main = CFRunLoopGetMain(), CFRunLoopAddSource(Main, self->_sockRls, kCFRunLoopDefaultMode), v11 = 0x20000, setsockopt(self->_sock, 0xFFFF, 4097, &v11, 4u), setsockopt(self->_sock, 0xFFFF, 4098, &v11, 4u), ioctl(sock, 0x8004667EuLL, &v12), ((self + 48) & 7) != 0) || (CFRunLoopSourceInvalidate(self->_listenSockRls), CFRelease(self->_listenSockRls), self->_listenSockRls = 0, ((self + 40) & 7) != 0) || (CFSocketInvalidate(self->_listenSockRef), CFRelease(self->_listenSockRef), self->_listenSockRef = 0, ((self + 32) & 3) != 0))
  {
    __break(0x5516u);
LABEL_15:
    __break(0x550Au);
    return;
  }

  close(self->_listenSock);
  self->_listenSock = -1;
  openPipeToAppAfterAccept = self->_openPipeToAppAfterAccept;
  if (openPipeToAppAfterAccept >= 2)
  {
    goto LABEL_15;
  }

  if (openPipeToAppAfterAccept)
  {
    [(IAPSession *)self _openPipeToApp];
    self->_openPipeToAppAfterAccept = 0;
  }

  openPipeFromAppAfterAccept = self->_openPipeFromAppAfterAccept;
  if (openPipeFromAppAfterAccept > 1)
  {
    goto LABEL_15;
  }

  if (openPipeFromAppAfterAccept)
  {
    [(IAPSession *)self _openPipeFromApp];
    self->_openPipeFromAppAfterAccept = 0;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = IAPSession;
  result = [(IAPSession *)&v4 description];
  if (((self + 16) & 7) == 0 && ((self + 24) & 3) == 0 && ((self + 30) & 1) == 0)
  {
    return [NSString stringWithFormat:@"%@ client=%@ connectionID=%u protocolID=%d sessionID=%d", result, self->_client, self->_connectionID, self->_protocolID, self->_sessionID];
  }

  __break(0x5516u);
  return result;
}

@end
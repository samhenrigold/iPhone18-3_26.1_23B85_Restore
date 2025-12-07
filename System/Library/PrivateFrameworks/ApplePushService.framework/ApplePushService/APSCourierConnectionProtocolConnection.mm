@interface APSCourierConnectionProtocolConnection
- (APSCourierConnectionManager)connectionManager;
- (APSCourierConnectionProtocolConnection)init;
- (BOOL)didPushCauseWake;
- (BOOL)generationMatches:(unint64_t)matches;
- (BOOL)isConnected;
- (BOOL)isPowerEfficientToUse;
- (BOOL)isPreferredInterface;
- (BOOL)isSuspended;
- (NSNumber)maxLargeMessageSize;
- (NSNumber)maxMessageSize;
- (NSString)description;
- (NSString)identifier;
- (NSString)serverHostname;
- (NSString)serverIPAddress;
- (id)aps_prettyDescription;
- (id)interfaceMonitor;
- (id)sendMessage:(id)message topicHash:(id)hash lastRTT:(id)t token:(id)token ultraConstrainedAllowed:(BOOL)allowed withCompletion:(id)completion;
- (int)linkQuality;
- (int64_t)connectionType;
- (int64_t)interfaceConstraint;
- (void)addDataListener:(id)listener;
- (void)addStateListener:(id)listener;
- (void)connectionSetupComplete;
- (void)disconnectWithReason:(unsigned int)reason;
- (void)enumerateDataRecipient:(id)recipient;
- (void)enumerateStateListeners:(id)listeners;
- (void)noteConnected;
- (void)noteConnectionFailureWithReason:(unsigned int)reason;
- (void)noteInvalidPresence;
- (void)removeDataListener:(id)listener;
- (void)removeStateListener:(id)listener;
- (void)sendActivityTrackingRequestWithMessageID:(unint64_t)d pushToken:(id)token salt:(unint64_t)salt trackingFlag:(unsigned int)flag timestamp:(unint64_t)timestamp;
- (void)sendConnectMessageWithToken:(id)token presenceFlags:(int)flags certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)info connectionErrors:(id)errors withCompletion:(id)self0;
- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)info withCompletion:(id)self0;
- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build certificates:(id)certificates nonce:(id)self0 signature:(id)self1 withCompletion:(id)self2;
- (void)sendFilterMessageWithEnabledTopicsByHash:(id)hash ignoredTopicsByHash:(id)byHash opportunisticTopicsByHash:(id)topicsByHash nonWakingTopicsByHash:(id)wakingTopicsByHash pausedTopicsByHash:(id)pausedTopicsByHash saltsByTopic:(id)topic token:(id)token version:(unint64_t)self0 expectsResponse:(BOOL)self1 withCompletion:(id)self2;
- (void)sendMessageAcknowledgeMessageWithResponse:(int)response messageId:(id)id generation:(int64_t)generation token:(id)token;
- (void)sendMessageTracingAckWithTopicHash:(id)hash topic:(id)topic tracingUUID:(id)d status:(int)status token:(id)token;
- (void)sendMessageTransportAcknowledgeMessage;
- (void)sendPubSubChannelListWithMetadata:(id)metadata baseToken:(id)token messageID:(unsigned int)d;
- (void)sendSetActiveState:(BOOL)state forInterval:(unsigned int)interval;
- (void)sendTokenGenerateMessageWithTopicHash:(id)hash baseToken:(id)token appId:(unsigned __int16)id expirationTTL:(unsigned int)l vapidPublicKeyHash:(id)keyHash type:(int64_t)type withCompletion:(id)completion;
@end

@implementation APSCourierConnectionProtocolConnection

- (BOOL)isConnected
{
  selfCopy = self;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  LOBYTE(selfCopy) = [connectionManager isConnectedOnInterface:{-[APSCourierConnectionProtocolConnection interface](selfCopy, "interface")}];

  return selfCopy;
}

- (APSCourierConnectionManager)connectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionManager);

  return WeakRetained;
}

- (int64_t)interfaceConstraint
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [connectionManager interfaceConstraintForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (NSString)identifier
{
  interface = [(APSCourierConnectionProtocolConnection *)self interface];

  return sub_1000067F8(interface);
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = sub_1000067F8([(APSCourierConnectionProtocolConnection *)self interface]);
  v5 = [NSString stringWithFormat:@"<%@: %p %@>", v3, self, v4];;

  return v5;
}

- (id)aps_prettyDescription
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [connectionManager connectionTimeForInterface:self->_interface];

  v5 = sub_1000067F8(self->_interface);
  if (v4)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v6;
    [v4 doubleValue];
    v9 = v7 - v8;
  }

  else
  {
    v9 = 0.0;
  }

  if ([(APSCourierConnectionProtocolConnection *)self isConnected])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  serverIPAddress = [(APSCourierConnectionProtocolConnection *)self serverIPAddress];
  serverHostname = [(APSCourierConnectionProtocolConnection *)self serverHostname];
  v13 = [NSString stringWithFormat:@"<%@ connectedFor: %.1fs; isConnected: %@; serverIPAddress: %@; serverHostname: %@; linkQuality: %d>", v5, *&v9, v10, serverIPAddress, serverHostname, [(APSCourierConnectionProtocolConnection *)self linkQuality]];;

  return v13;
}

- (NSString)serverIPAddress
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [connectionManager serverIPAddressForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (NSString)serverHostname
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [connectionManager serverHostnameForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (int)linkQuality
{
  interfaceMonitor = [(APSCourierConnectionProtocolConnection *)self interfaceMonitor];
  linkQuality = [interfaceMonitor linkQuality];

  return linkQuality;
}

- (id)interfaceMonitor
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [connectionManager pcInterfaceMonitorOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (int64_t)connectionType
{
  result = self->_interface;
  if (result >= 2)
  {
    v4 = +[APSLog courier];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10010CABC(self, v4);
    }

    return 0;
  }

  return result;
}

- (void)sendMessageTransportAcknowledgeMessage
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager sendMessageTransportAcknowledgeMessageOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (BOOL)isPreferredInterface
{
  selfCopy = self;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  preferredInterface = [connectionManager preferredInterface];
  LOBYTE(selfCopy) = preferredInterface == [(APSCourierConnectionProtocolConnection *)selfCopy interface];

  return selfCopy;
}

- (APSCourierConnectionProtocolConnection)init
{
  v8.receiver = self;
  v8.super_class = APSCourierConnectionProtocolConnection;
  v2 = [(APSCourierConnectionProtocolConnection *)&v8 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:517];
    stateListeners = v2->_stateListeners;
    v2->_stateListeners = v3;

    v5 = [NSHashTable hashTableWithOptions:517];
    dataListeners = v2->_dataListeners;
    v2->_dataListeners = v5;
  }

  return v2;
}

- (void)enumerateStateListeners:(id)listeners
{
  listenersCopy = listeners;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_stateListeners;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      listenersCopy[2](listenersCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateDataRecipient:(id)recipient
{
  recipientCopy = recipient;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_dataListeners;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      recipientCopy[2](recipientCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addStateListener:(id)listener
{
  listenerCopy = listener;
  stateListeners = [(APSCourierConnectionProtocolConnection *)self stateListeners];
  [stateListeners addObject:listenerCopy];
}

- (void)removeStateListener:(id)listener
{
  listenerCopy = listener;
  stateListeners = [(APSCourierConnectionProtocolConnection *)self stateListeners];
  [stateListeners removeObject:listenerCopy];
}

- (void)addDataListener:(id)listener
{
  listenerCopy = listener;
  dataListeners = [(APSCourierConnectionProtocolConnection *)self dataListeners];
  [dataListeners addObject:listenerCopy];
}

- (void)removeDataListener:(id)listener
{
  listenerCopy = listener;
  dataListeners = [(APSCourierConnectionProtocolConnection *)self dataListeners];
  [dataListeners removeObject:listenerCopy];
}

- (BOOL)isSuspended
{
  selfCopy = self;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  LOBYTE(selfCopy) = [connectionManager isSuspendedOnInterface:{-[APSCourierConnectionProtocolConnection interface](selfCopy, "interface")}];

  return selfCopy;
}

- (BOOL)isPowerEfficientToUse
{
  interfaceMonitor = [(APSCourierConnectionProtocolConnection *)self interfaceMonitor];
  isRadioHot = [interfaceMonitor isRadioHot];

  return isRadioHot;
}

- (BOOL)didPushCauseWake
{
  selfCopy = self;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  courierConnection = [connectionManager courierConnection];
  LOBYTE(selfCopy) = [courierConnection didPushCauseWakeOnInterface:{-[APSCourierConnectionProtocolConnection interface](selfCopy, "interface")}];

  return selfCopy;
}

- (NSNumber)maxMessageSize
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [connectionManager maxMessageSizeForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (NSNumber)maxLargeMessageSize
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [connectionManager maxLargeMessageSizeForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (void)noteConnected
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager markInitiallyConnectedOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (void)connectionSetupComplete
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  interface = [(APSCourierConnectionProtocolConnection *)self interface];
  connectionManager2 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  environment = [connectionManager2 environment];
  LODWORD(interface) = [connectionManager _shouldOffloadToAOP:interface environment:environment];

  if (interface)
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: We're currently offloading to AOP, forwarding keep alive.", buf, 0xCu);
    }

    connectionManager3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
    connectionOffloader = [connectionManager3 connectionOffloader];
    [connectionOffloader offloadKeepAlive:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  }

  else
  {
    connectionManager4 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
    [connectionManager4 _delayedPerformKeepAliveOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  }
}

- (void)disconnectWithReason:(unsigned int)reason
{
  v3 = *&reason;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager disconnectStreamForInterface:-[APSCourierConnectionProtocolConnection interface](self withReason:{"interface"), v3}];

  if (v3 == 7)
  {
    connectionManager2 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
    [connectionManager2 stopManagerOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  }
}

- (void)noteConnectionFailureWithReason:(unsigned int)reason
{
  v3 = *&reason;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager handleConnectionFailureOnInterface:-[APSCourierConnectionProtocolConnection interface](self forceDelayedReconnect:"interface") withReason:{0, v3}];
}

- (void)noteInvalidPresence
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  connectionRetryManager = [connectionManager connectionRetryManager];
  [connectionRetryManager notePresenceFailure];
}

- (void)sendSetActiveState:(BOOL)state forInterval:(unsigned int)interval
{
  v4 = *&interval;
  stateCopy = state;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager sendSetActiveState:stateCopy forInterval:v4 onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (void)sendMessageTracingAckWithTopicHash:(id)hash topic:(id)topic tracingUUID:(id)d status:(int)status token:(id)token
{
  v7 = *&status;
  tokenCopy = token;
  dCopy = d;
  hashCopy = hash;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager sendMessageTracingAckWithTopicHash:hashCopy tracingUUID:dCopy status:v7 token:tokenCopy onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (void)sendTokenGenerateMessageWithTopicHash:(id)hash baseToken:(id)token appId:(unsigned __int16)id expirationTTL:(unsigned int)l vapidPublicKeyHash:(id)keyHash type:(int64_t)type withCompletion:(id)completion
{
  v11 = *&l;
  idCopy = id;
  completionCopy = completion;
  keyHashCopy = keyHash;
  tokenCopy = token;
  hashCopy = hash;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager sendTokenGenerateMessageWithTopicHash:hashCopy baseToken:tokenCopy appId:idCopy expirationTTL:v11 vapidPublicKeyHash:keyHashCopy type:type withCompletion:completionCopy onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (void)sendPubSubChannelListWithMetadata:(id)metadata baseToken:(id)token messageID:(unsigned int)d
{
  v5 = *&d;
  tokenCopy = token;
  metadataCopy = metadata;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager sendPubSubChannelListWithMetadata:metadataCopy baseToken:tokenCopy messageID:v5 onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (void)sendActivityTrackingRequestWithMessageID:(unint64_t)d pushToken:(id)token salt:(unint64_t)salt trackingFlag:(unsigned int)flag timestamp:(unint64_t)timestamp
{
  v8 = *&flag;
  tokenCopy = token;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager sendActivityTrackingRequestWithMessageID:d pushToken:tokenCopy salt:salt trackingFlag:v8 timestamp:timestamp onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (BOOL)generationMatches:(unint64_t)matches
{
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  LOBYTE(matches) = [connectionManager generationMatches:matches forInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return matches;
}

- (void)sendMessageAcknowledgeMessageWithResponse:(int)response messageId:(id)id generation:(int64_t)generation token:(id)token
{
  v7 = *&response;
  tokenCopy = token;
  idCopy = id;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager sendMessageAcknowledgeMessageWithResponse:v7 messageId:idCopy token:tokenCopy onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (void)sendFilterMessageWithEnabledTopicsByHash:(id)hash ignoredTopicsByHash:(id)byHash opportunisticTopicsByHash:(id)topicsByHash nonWakingTopicsByHash:(id)wakingTopicsByHash pausedTopicsByHash:(id)pausedTopicsByHash saltsByTopic:(id)topic token:(id)token version:(unint64_t)self0 expectsResponse:(BOOL)self1 withCompletion:(id)self2
{
  completionCopy = completion;
  tokenCopy = token;
  pausedTopicsByHashCopy = pausedTopicsByHash;
  wakingTopicsByHashCopy = wakingTopicsByHash;
  topicsByHashCopy = topicsByHash;
  byHashCopy = byHash;
  hashCopy = hash;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  allKeys = [hashCopy allKeys];

  allKeys2 = [byHashCopy allKeys];

  allKeys3 = [topicsByHashCopy allKeys];

  allKeys4 = [wakingTopicsByHashCopy allKeys];

  allKeys5 = [pausedTopicsByHashCopy allKeys];

  LOBYTE(v29) = response;
  [connectionManager sendFilterMessageWithEnabledHashes:allKeys ignoredHashes:allKeys2 opportunisticHashes:allKeys3 nonWakingHashes:allKeys4 pausedHashes:allKeys5 token:tokenCopy version:version expectsResponse:v29 onInterface:-[APSCourierConnectionProtocolConnection interface](self withCompletion:{"interface"), completionCopy}];
}

- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build certificates:(id)certificates nonce:(id)self0 signature:(id)self1 withCompletion:(id)self2
{
  v15 = *&state;
  completionCopy = completion;
  signatureCopy = signature;
  nonceCopy = nonce;
  certificatesCopy = certificates;
  buildCopy = build;
  swVersionCopy = swVersion;
  versionCopy = version;
  tokenCopy = token;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager currentKeepAliveIntervalOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  v25 = llround(v24 / 60.0);

  connectionManager2 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v41 = [connectionManager2 currentKeepAliveStateOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  v27 = [[APSKeepAliveMetadata alloc] initWithUsingWWAN:[(APSCourierConnectionProtocolConnection *)self interface]== 0 keepAliveInterval:v25 delayedResponseInterval:0 usingServerStats:0 keepAliveState:v41 hwVersion:versionCopy swVersion:swVersionCopy swBuild:buildCopy];
  connectionManager3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v35 = v27;
  if (v15 == 2)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v38 = certificatesCopy;
  if (v15 == 2)
  {
    certificatesCopy = 0;
  }

  v30 = nonceCopy;
  if (v15 == 2)
  {
    nonceCopy = 0;
    v31 = 0;
  }

  else
  {
    v31 = signatureCopy;
  }

  if (v15 == 2)
  {
    redirectCount = 0;
  }

  else
  {
    connectionManager4 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
    redirectCount = [connectionManager4 redirectCount];
  }

  LOBYTE(v33) = redirectCount;
  [connectionManager3 sendConnectMessageWithToken:tokenCopy state:v15 interface:3 activeInterval:0 presenceFlags:flags metadata:v29 certificates:certificatesCopy nonce:nonceCopy signature:v31 redirectCount:v33 withCompletion:completionCopy onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  if (v15 != 2)
  {
  }
}

- (void)sendConnectMessageWithToken:(id)token presenceFlags:(int)flags certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)info connectionErrors:(id)errors withCompletion:(id)self0
{
  errorsCopy = errors;
  completionCopy = completion;
  infoCopy = info;
  signatureCopy = signature;
  nonceCopy = nonce;
  certificatesCopy = certificates;
  tokenCopy = token;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager currentKeepAliveIntervalOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  v18 = llround(v17 / 60.0);

  connectionManager2 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v20 = [connectionManager2 currentKeepAliveStateOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  v21 = [[APSKeepAliveMetadata alloc] initWithUsingWWAN:[(APSCourierConnectionProtocolConnection *)self interface]== 0 keepAliveInterval:v18 keepAliveState:v20];
  [(APSCourierConnectionProtocolConnection *)self interface];
  if (errorsCopy)
  {
    connectionManager3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
    [connectionManager3 addConnectionFailureReasons:errorsCopy onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  }

  connectionManager4 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [(APSCourierConnectionProtocolConnection *)self interface];
  connectionManager5 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  redirectCount = [connectionManager5 redirectCount];
  connectionManager6 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v35 = [connectionManager6 tcpHandshakeTimeMillisecondsOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  integerValue = [v35 integerValue];
  connectionManager7 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v33 = [connectionManager7 dnsResolutionTimeMillisecondsOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  integerValue2 = [v33 integerValue];
  connectionManager8 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v27 = [connectionManager8 tlsHandshakeTimeMillisecondsOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  integerValue3 = [v27 integerValue];
  connectionManager9 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v30 = [connectionManager9 consecutiveConnectionFailureReasonOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  LOBYTE(v31) = redirectCount;
  [connectionManager4 sendConnectMessageWithToken:integerValue interface:integerValue2 activeInterval:integerValue3 presenceFlags:nonceCopy metadata:signatureCopy certificates:infoCopy nonce:v31 signature:v30 hostCertificateInfo:completionCopy redirectCount:-[APSCourierConnectionProtocolConnection interface](self tcpHandshakeTimeMilliseconds:"interface") dnsResolveTimeMilliseconds:? tlsHandshakeTimeMilliseconds:? consecutiveConnectionFailureReason:? withCompletion:? onInterface:?];
}

- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)info withCompletion:(id)self0
{
  completionCopy = completion;
  infoCopy = info;
  signatureCopy = signature;
  nonceCopy = nonce;
  certificatesCopy = certificates;
  tokenCopy = token;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [connectionManager currentKeepAliveIntervalOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  v22 = llround(v21 / 60.0);

  connectionManager2 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v31 = [connectionManager2 currentKeepAliveStateOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  v24 = [[APSKeepAliveMetadata alloc] initWithUsingWWAN:[(APSCourierConnectionProtocolConnection *)self interface]== 0 keepAliveInterval:v22 keepAliveState:v31];
  connectionManager3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  connectionManager4 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  LOBYTE(v27) = [connectionManager4 redirectCount];
  [connectionManager3 sendConnectMessageWithToken:tokenCopy state:state presenceFlags:flags metadata:v24 certificates:certificatesCopy nonce:nonceCopy signature:signatureCopy hostCertificateInfo:infoCopy redirectCount:v27 withCompletion:completionCopy onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (id)sendMessage:(id)message topicHash:(id)hash lastRTT:(id)t token:(id)token ultraConstrainedAllowed:(BOOL)allowed withCompletion:(id)completion
{
  allowedCopy = allowed;
  completionCopy = completion;
  tokenCopy = token;
  tCopy = t;
  hashCopy = hash;
  messageCopy = message;
  connectionManager = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v20 = [connectionManager _sendOutgoingMessage:messageCopy topicHash:hashCopy lastRTT:tCopy token:tokenCopy onInterface:-[APSCourierConnectionProtocolConnection interface](self ultraConstrainedAllowed:"interface") withCompletion:{allowedCopy, completionCopy}];

  return v20;
}

@end
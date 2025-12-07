@interface APSProtocolParser
- (APSProtocolParser)init;
- (BOOL)_parseSerialMessage:(id)message parameters:(id *)parameters isInvalid:(BOOL *)invalid lengthParsed:(unint64_t *)parsed;
- (BOOL)parseMessage:(id)message parameters:(id *)parameters isInvalid:(BOOL *)invalid lengthParsed:(unint64_t *)parsed;
- (id)copyConnectMessageWithToken:(id)token interface:(int64_t)interface interfaceConstraint:(int64_t)constraint presenceFlags:(unsigned int)flags activeInterval:(unsigned int)interval metadata:(id)metadata certificates:(id)certificates nonce:(id)self0 signature:(id)self1 hostCertificateInfo:(id)self2 redirectCount:(unsigned __int8)self3 tcpHandshakeTimeMilliseconds:(double)self4 dnsResolveTimeMilliseconds:(double)self5 tlsHandshakeTimeMilliseconds:(double)self6 consecutiveConnectionFailureReason:(id)self7 lastConnected:(id)self8 disconnectReason:(unsigned int)self9 numberOfPSKToRequest:(unint64_t)request isOffloadedConnection:(BOOL)connection offloadMigrationReason:(unsigned int)migrationReason;
- (id)copyConnectMessageWithToken:(id)token state:(int)state presenceFlags:(unsigned int)flags interface:(int64_t)interface interfaceConstraint:(int64_t)constraint activeInterval:(unsigned int)interval metadata:(id)metadata certificates:(id)self0 nonce:(id)self1 signature:(id)self2 hostCertificateInfo:(id)self3 redirectCount:(unsigned __int8)self4 tcpHandshakeTimeMilliseconds:(double)self5 dnsResolveTimeMilliseconds:(double)self6 tlsHandshakeTimeMilliseconds:(double)self7 consecutiveConnectionFailureReason:(id)self8 lastConnected:(id)self9 disconnectReason:(unsigned int)disconnectReason numberOfPSKToRequest:(unint64_t)request isOffloadedConnection:(BOOL)connection offloadMigrationReason:(unsigned int)migrationReason;
- (id)copyConnectMessageWithToken:(id)token state:(int)state presenceFlags:(unsigned int)flags interface:(int64_t)interface interfaceConstraint:(int64_t)constraint activeInterval:(unsigned int)interval metadata:(id)metadata certificates:(id)self0 nonce:(id)self1 signature:(id)self2 redirectCount:(unsigned __int8)self3 lastConnected:(id)self4 disconnectReason:(unsigned int)self5;
- (id)copyConnectMessageWithToken:(id)token state:(int)state presenceFlags:(unsigned int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)self0 redirectCount:(unsigned __int8)self1 lastConnected:(id)self2 disconnectReason:(unsigned int)self3;
- (id)copyFilterMessageWithEnabledHashes:(id)hashes ignoredHashes:(id)ignoredHashes opportunisticHashes:(id)opportunisticHashes nonWakingHashes:(id)wakingHashes pausedHashes:(id)pausedHashes token:(id)token version:(unint64_t)version;
- (id)copyFlushMessageWithWantPaddingLength:(int)length paddingLength:(int)paddingLength;
- (id)copyFlushResponseMessageWithPaddingLength:(int)length;
- (id)copyKeepAliveMessageWithMetadata:(id)metadata;
- (id)copyMessageAcknowledgeMessageWithResponse:(int)response messageId:(id)id token:(id)token;
- (id)copyMessageTracingAckWithTopicHash:(id)hash status:(int)status tracingUUID:(id)d token:(id)token;
- (id)copyMessageTransportAcknowledgeMessage;
- (id)copyMessageWithTopicHash:(id)hash identifier:(unint64_t)identifier payload:(id)payload token:(id)token isPlistFormat:(BOOL)format lastRTT:(id)t;
- (id)copyPresenceTrackingRequestWithMessageID:(unint64_t)d pushToken:(id)token salt:(unint64_t)salt trackingFlag:(unsigned int)flag timestamp:(unint64_t)timestamp;
- (id)copyPubSubChannelListWithInput:(id)input baseToken:(id)token messageID:(unsigned int)d;
- (id)copySetActiveIntervalMessageWithInterval:(unsigned int)interval;
- (id)copySetActiveState:(BOOL)state forInterval:(unsigned int)interval;
- (id)copyTokenGenerateMessageWithTopicHash:(id)hash baseToken:(id)token appId:(unsigned __int16)id expirationTTL:(unsigned int)l vapidPublicKeyHash:(id)keyHash type:(int64_t)type;
- (void)APNSPackDecoder:(id)decoder ReceivedError:(int)error;
- (void)APNSPackEncoder:(id)encoder receivedError:(int)error;
- (void)dumpData:(id)data prefix:(const char *)prefix log_type:(unsigned __int8)log_type;
- (void)setIsPackedFormat:(BOOL)format maxEncoderTableSize:(unint64_t)size maxDecoderTableSize:(unint64_t)tableSize interface:(int64_t)interface;
- (void)setSerialItemInParameters:(id)parameters commandID:(unint64_t)d itemID:(unint64_t)iD itemData:(id)data;
- (void)setSerialNumberInParameters:(id)parameters commandID:(unint64_t)d itemID:(unint64_t)iD Integer:(int64_t)integer;
- (void)sharedCoderEncounteredParsingFailure:(id)failure;
- (void)validateEncodedData:(id)data withPlist:(id)plist;
@end

@implementation APSProtocolParser

- (id)copyMessageTransportAcknowledgeMessage
{
  if (self->_isPackedFormat)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[APSProtocolMessage alloc] initWithCommand:21];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:21];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:21];
  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v3 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v7 = +[APSLog protocolParser];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100109E74(self, copyMessageData, v7);
  }

  return copyMessageData;
}

- (APSProtocolParser)init
{
  v3.receiver = self;
  v3.super_class = APSProtocolParser;
  result = [(APSProtocolParser *)&v3 init];
  if (result)
  {
    result->_identifier = atomic_fetch_add(dword_1001BBE58, 1u);
  }

  return result;
}

- (void)setIsPackedFormat:(BOOL)format maxEncoderTableSize:(unint64_t)size maxDecoderTableSize:(unint64_t)tableSize interface:(int64_t)interface
{
  formatCopy = format;
  if (format && !self->_isPackedFormat)
  {
    v11 = [[APNSPackEncoder alloc] initWithMaxTableSize:size];
    encoderWrapper = self->_encoderWrapper;
    self->_encoderWrapper = v11;

    [(APNSPackEncoder *)self->_encoderWrapper setDelegate:self];
    v13 = [[APNSPackDecoder alloc] initWithMaxTableSize:tableSize];
    decoderWrapper = self->_decoderWrapper;
    self->_decoderWrapper = v13;

    [(APNSPackDecoder *)self->_decoderWrapper setDelegate:self];
  }

  if (_os_feature_enabled_impl())
  {
    v15 = [[APSSharedEncoder alloc] initWithMaxTableSize:size shouldUsePack:formatCopy];
    sharedEncoder = self->_sharedEncoder;
    self->_sharedEncoder = v15;

    [(APSSharedEncoder *)self->_sharedEncoder setDelegate:self];
    v17 = [[APSSharedDecoder alloc] initWithMaxTableSize:tableSize shouldUsePack:formatCopy];
    sharedDecoder = self->_sharedDecoder;
    self->_sharedDecoder = v17;

    [(APSSharedDecoder *)self->_sharedDecoder setDelegate:self];
    [(APNSPackEncoder *)self->_encoderWrapper setDelegate:0];
    [(APNSPackDecoder *)self->_decoderWrapper setDelegate:0];
  }

  self->_isPackedFormat = formatCopy;
  v19 = +[APSLog protocolParser];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v21 = sub_1000067F8(interface);
    v22 = v21;
    v24 = 134219010;
    v23 = @"NO";
    v25 = identifier;
    v26 = 2112;
    if (formatCopy)
    {
      v23 = @"YES";
    }

    v27 = v21;
    v28 = 2112;
    v29 = v23;
    v30 = 2048;
    sizeCopy = size;
    v32 = 2048;
    tableSizeCopy = tableSize;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "P%04llu <config> interface: %@ isPacked: %@ maxEncoderTableSize: %llu maxDecoderTableSize: %llu", &v24, 0x34u);
  }
}

- (id)copyConnectMessageWithToken:(id)token state:(int)state presenceFlags:(unsigned int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)self0 redirectCount:(unsigned __int8)self1 lastConnected:(id)self2 disconnectReason:(unsigned int)self3
{
  LOBYTE(v16) = 0;
  LODWORD(v15) = reason;
  LOBYTE(v14) = count;
  return [(APSProtocolParser *)self copyConnectMessageWithToken:token state:*&state presenceFlags:*&flags interface:3 interfaceConstraint:0 activeInterval:0 metadata:-1.0 certificates:-1.0 nonce:-1.0 signature:metadata hostCertificateInfo:certificates redirectCount:nonce tcpHandshakeTimeMilliseconds:signature dnsResolveTimeMilliseconds:info tlsHandshakeTimeMilliseconds:v14 consecutiveConnectionFailureReason:0 lastConnected:connected disconnectReason:v15 numberOfPSKToRequest:0 isOffloadedConnection:v16 offloadMigrationReason:?];
}

- (id)copyConnectMessageWithToken:(id)token interface:(int64_t)interface interfaceConstraint:(int64_t)constraint presenceFlags:(unsigned int)flags activeInterval:(unsigned int)interval metadata:(id)metadata certificates:(id)certificates nonce:(id)self0 signature:(id)self1 hostCertificateInfo:(id)self2 redirectCount:(unsigned __int8)self3 tcpHandshakeTimeMilliseconds:(double)self4 dnsResolveTimeMilliseconds:(double)self5 tlsHandshakeTimeMilliseconds:(double)self6 consecutiveConnectionFailureReason:(id)self7 lastConnected:(id)self8 disconnectReason:(unsigned int)self9 numberOfPSKToRequest:(unint64_t)request isOffloadedConnection:(BOOL)connection offloadMigrationReason:(unsigned int)migrationReason
{
  HIDWORD(v25) = migrationReason;
  LOBYTE(v25) = connection;
  LODWORD(v24) = disconnectReason;
  LOBYTE(v23) = count;
  return [(APSProtocolParser *)self copyConnectMessageWithToken:token state:1 presenceFlags:*&flags interface:interface interfaceConstraint:constraint activeInterval:*&interval metadata:milliseconds certificates:timeMilliseconds nonce:handshakeTimeMilliseconds signature:metadata hostCertificateInfo:certificates redirectCount:nonce tcpHandshakeTimeMilliseconds:signature dnsResolveTimeMilliseconds:info tlsHandshakeTimeMilliseconds:v23 consecutiveConnectionFailureReason:reason lastConnected:connected disconnectReason:v24 numberOfPSKToRequest:request isOffloadedConnection:v25 offloadMigrationReason:?];
}

- (id)copyConnectMessageWithToken:(id)token state:(int)state presenceFlags:(unsigned int)flags interface:(int64_t)interface interfaceConstraint:(int64_t)constraint activeInterval:(unsigned int)interval metadata:(id)metadata certificates:(id)self0 nonce:(id)self1 signature:(id)self2 redirectCount:(unsigned __int8)self3 lastConnected:(id)self4 disconnectReason:(unsigned int)self5
{
  LOBYTE(v18) = 0;
  LODWORD(v17) = reason;
  LOBYTE(v16) = count;
  return [(APSProtocolParser *)self copyConnectMessageWithToken:token state:*&state presenceFlags:*&flags interface:interface interfaceConstraint:constraint activeInterval:*&interval metadata:-1.0 certificates:-1.0 nonce:-1.0 signature:metadata hostCertificateInfo:certificates redirectCount:nonce tcpHandshakeTimeMilliseconds:signature dnsResolveTimeMilliseconds:0 tlsHandshakeTimeMilliseconds:v16 consecutiveConnectionFailureReason:0 lastConnected:connected disconnectReason:v17 numberOfPSKToRequest:0 isOffloadedConnection:v18 offloadMigrationReason:?];
}

- (id)copyConnectMessageWithToken:(id)token state:(int)state presenceFlags:(unsigned int)flags interface:(int64_t)interface interfaceConstraint:(int64_t)constraint activeInterval:(unsigned int)interval metadata:(id)metadata certificates:(id)self0 nonce:(id)self1 signature:(id)self2 hostCertificateInfo:(id)self3 redirectCount:(unsigned __int8)self4 tcpHandshakeTimeMilliseconds:(double)self5 dnsResolveTimeMilliseconds:(double)self6 tlsHandshakeTimeMilliseconds:(double)self7 consecutiveConnectionFailureReason:(id)self8 lastConnected:(id)self9 disconnectReason:(unsigned int)disconnectReason numberOfPSKToRequest:(unint64_t)request isOffloadedConnection:(BOOL)connection offloadMigrationReason:(unsigned int)migrationReason
{
  v23 = *&interval;
  tokenCopy = token;
  metadataCopy = metadata;
  certificatesCopy = certificates;
  nonceCopy = nonce;
  signatureCopy = signature;
  infoCopy = info;
  reasonCopy = reason;
  connectedCopy = connected;
  if (self->_isPackedFormat)
  {
    v30 = 0;
  }

  else
  {
    v30 = [[APSProtocolMessage alloc] initWithCommand:7];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:7];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:7];
  v32 = tokenCopy;
  v31 = metadataCopy;
  if (tokenCopy)
  {
    [(APSProtocolMessage *)v30 appendItem:1 data:tokenCopy];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:tokenCopy isIndexable:1];
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:tokenCopy isIndexable:1];
  }

  [(APSSharedEncoder *)self->_sharedEncoder appendOneByteItem:2 byte:state isIndexable:0];
  [(APSProtocolMessage *)v30 appendOneByteItem:2 byte:state];
  [(APNSPackEncoder *)self->_encoderWrapper addInt8WithAttributeId:2 number:state isIndexable:0];
  v33 = &fputc_ptr;
  if (state != 2)
  {
    v112 = connectedCopy;
    if (sub_10000712C())
    {
      v34 = 32848;
    }

    else
    {
      v34 = 32832;
    }

    if (interface == 1)
    {
      v35 = 522;
    }

    else
    {
      v35 = 514;
    }

    LODWORD(v36) = v35 | flags | v34;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LODWORD(v36) = v36 | 0x20;
    }

    if (+[APSSimulatorSupport isSimulator])
    {
      v36 = v36 | 0x1000;
    }

    else
    {
      v36 = v36;
    }

    [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:5 bytes:v36 isIndexable:0];
    [(APSProtocolMessage *)v30 appendFourByteItem:5 bytes:v36];
    flags = v36;
    [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:5 number:v36 isIndexable:0];
    if (interface <= 1)
    {
      if (((constraint == 1) & _os_feature_enabled_impl()) != 0)
      {
        v37 = 3;
      }

      else
      {
        v37 = interface != 0;
      }

      [(APSSharedEncoder *)self->_sharedEncoder appendOneByteItem:6 byte:v37 isIndexable:0];
      [(APSProtocolMessage *)v30 appendOneByteItem:6 byte:v37];
      [(APNSPackEncoder *)self->_encoderWrapper addInt8WithAttributeId:6 number:v37 isIndexable:0];
    }

    [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:7 bytes:v23 isIndexable:0];
    [(APSProtocolMessage *)v30 appendFourByteItem:7 bytes:v23];
    [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:7 number:v23 isIndexable:0];
    carrier = [metadataCopy carrier];
    v39 = [carrier length];

    if (v39)
    {
      sharedEncoder = self->_sharedEncoder;
      carrier2 = [metadataCopy carrier];
      [(APSSharedEncoder *)sharedEncoder appendItem:8 string:carrier2 isIndexable:0];

      carrier3 = [metadataCopy carrier];
      [(APSProtocolMessage *)v30 appendItem:8 string:carrier3];

      encoderWrapper = self->_encoderWrapper;
      carrier4 = [metadataCopy carrier];
      [(APNSPackEncoder *)encoderWrapper addStringWithAttributId:8 string:carrier4 isIndexable:0];
    }

    softwareVersion = [metadataCopy softwareVersion];
    v46 = [softwareVersion length];

    if (v46)
    {
      v47 = self->_sharedEncoder;
      softwareVersion2 = [metadataCopy softwareVersion];
      [(APSSharedEncoder *)v47 appendItem:9 string:softwareVersion2 isIndexable:0];

      softwareVersion3 = [metadataCopy softwareVersion];
      [(APSProtocolMessage *)v30 appendItem:9 string:softwareVersion3];

      v50 = self->_encoderWrapper;
      softwareVersion4 = [metadataCopy softwareVersion];
      [(APNSPackEncoder *)v50 addStringWithAttributId:9 string:softwareVersion4 isIndexable:0];
    }

    softwareBuild = [metadataCopy softwareBuild];
    v53 = [softwareBuild length];

    if (v53)
    {
      v54 = self->_sharedEncoder;
      softwareBuild2 = [metadataCopy softwareBuild];
      [(APSSharedEncoder *)v54 appendItem:10 string:softwareBuild2 isIndexable:0];

      softwareBuild3 = [metadataCopy softwareBuild];
      [(APSProtocolMessage *)v30 appendItem:10 string:softwareBuild3];

      v57 = self->_encoderWrapper;
      softwareBuild4 = [metadataCopy softwareBuild];
      [(APNSPackEncoder *)v57 addStringWithAttributId:10 string:softwareBuild4 isIndexable:0];
    }

    hardwareVersion = [metadataCopy hardwareVersion];
    v60 = [hardwareVersion length];

    if (v60)
    {
      v61 = self->_sharedEncoder;
      hardwareVersion2 = [metadataCopy hardwareVersion];
      [(APSSharedEncoder *)v61 appendItem:11 string:hardwareVersion2 isIndexable:0];

      hardwareVersion3 = [metadataCopy hardwareVersion];
      [(APSProtocolMessage *)v30 appendItem:11 string:hardwareVersion3];

      v64 = self->_encoderWrapper;
      hardwareVersion4 = [metadataCopy hardwareVersion];
      [(APNSPackEncoder *)v64 addStringWithAttributId:11 string:hardwareVersion4 isIndexable:0];
    }

    if (certificatesCopy && nonceCopy && signatureCopy)
    {
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v66 = certificatesCopy;
      v67 = [v66 countByEnumeratingWithState:&v134 objects:v154 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v135;
        do
        {
          for (i = 0; i != v68; i = i + 1)
          {
            if (*v135 != v69)
            {
              objc_enumerationMutation(v66);
            }

            v71 = *(*(&v134 + 1) + 8 * i);
            [(APSSharedEncoder *)self->_sharedEncoder appendItem:12 data:v71 isIndexable:0];
            [(APSProtocolMessage *)v30 appendItem:12 data:v71];
          }

          v68 = [v66 countByEnumeratingWithState:&v134 objects:v154 count:16];
        }

        while (v68);
      }

      [(APSProtocolMessage *)v30 appendItem:13 data:nonceCopy];
      [(APSProtocolMessage *)v30 appendItem:14 data:signatureCopy];
      [(APSSharedEncoder *)self->_sharedEncoder appendItem:13 data:nonceCopy isIndexable:0];
      [(APSSharedEncoder *)self->_sharedEncoder appendItem:14 data:signatureCopy isIndexable:0];
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v72 = v66;
      v73 = [v72 countByEnumeratingWithState:&v130 objects:v153 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = *v131;
        do
        {
          for (j = 0; j != v74; j = j + 1)
          {
            if (*v131 != v75)
            {
              objc_enumerationMutation(v72);
            }

            [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:12 data:*(*(&v130 + 1) + 8 * j) isIndexable:0];
          }

          v74 = [v72 countByEnumeratingWithState:&v130 objects:v153 count:16];
        }

        while (v74);
      }

      [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:13 data:nonceCopy isIndexable:0];
      [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:14 data:signatureCopy isIndexable:0];
      v31 = metadataCopy;
    }

    if (infoCopy)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Presence contains hostCertificateInfo!", &buf, 2u);
      }

      v77 = self->_sharedEncoder;
      data = [infoCopy data];
      [(APSSharedEncoder *)v77 appendItem:29 data:data isIndexable:0];

      data2 = [infoCopy data];
      [(APSProtocolMessage *)v30 appendItem:29 data:data2];

      v80 = self->_encoderWrapper;
      data3 = [infoCopy data];
      [(APNSPackEncoder *)v80 addDataWithAttributeId:29 data:data3 isIndexable:0];
    }

    [(APSProtocolMessage *)v30 appendTwoByteItem:16 bytes:12];
    [(APSProtocolMessage *)v30 appendTwoByteItem:17 bytes:count];
    [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:16 bytes:12 isIndexable:0];
    [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:17 bytes:count isIndexable:0];
    [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:16 number:12 isIndexable:0];
    [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:17 number:count isIndexable:0];
    if (milliseconds >= 0.0)
    {
      millisecondsCopy = 65000.0;
      if (milliseconds <= 65000.0)
      {
        millisecondsCopy = milliseconds;
      }

      v83 = millisecondsCopy;
      [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:25 bytes:v83 isIndexable:0];
      [(APSProtocolMessage *)v30 appendTwoByteItem:25 bytes:v83];
      [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:25 number:v83 isIndexable:0];
    }

    if (timeMilliseconds >= 0.0)
    {
      timeMillisecondsCopy = 65000.0;
      if (timeMilliseconds <= 65000.0)
      {
        timeMillisecondsCopy = timeMilliseconds;
      }

      v85 = timeMillisecondsCopy;
      [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:19 bytes:v85 isIndexable:0];
      [(APSProtocolMessage *)v30 appendTwoByteItem:19 bytes:v85];
      [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:19 number:v85 isIndexable:0];
    }

    if (handshakeTimeMilliseconds >= 0.0)
    {
      handshakeTimeMillisecondsCopy = 65000.0;
      if (handshakeTimeMilliseconds <= 65000.0)
      {
        handshakeTimeMillisecondsCopy = handshakeTimeMilliseconds;
      }

      v87 = handshakeTimeMillisecondsCopy;
      [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:20 bytes:v87 isIndexable:0];
      [(APSProtocolMessage *)v30 appendTwoByteItem:20 bytes:v87];
      [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:20 number:v87 isIndexable:0];
    }

    if (reasonCopy)
    {
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      obja = [reasonCopy allObjects];
      v88 = [obja countByEnumeratingWithState:&v126 objects:v152 count:16];
      if (v88)
      {
        v89 = v88;
        v90 = 0;
        v91 = *v127;
        while (2)
        {
          for (k = 0; k != v89; k = k + 1)
          {
            if (*v127 != v91)
            {
              objc_enumerationMutation(obja);
            }

            v93 = *(*(&v126 + 1) + 8 * k);
            integerValue = [v93 integerValue];
            if (integerValue >= 0)
            {
              LODWORD(v95) = integerValue;
            }

            else
            {
              v95 = -integerValue;
            }

            v125 = bswap32(v95);
            v124 = bswap32([reasonCopy countForObject:v93]) >> 16;
            v96 = objc_alloc_init(NSMutableData);
            [v96 appendBytes:&v125 length:4];
            [v96 appendBytes:&v124 length:2];
            [(APSSharedEncoder *)self->_sharedEncoder appendItem:21 data:v96 isIndexable:0];
            [(APSProtocolMessage *)v30 appendItem:21 data:v96];
            [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:21 data:v96 isIndexable:0];
            if (v90 == 9)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                allObjects = [reasonCopy allObjects];
                buf = 138412546;
                selfCopy = self;
                v140 = 2112;
                v141 = allObjects;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ reached 10 different failure reasons, {all failure reasons: %@} ", &buf, 0x16u);
              }

              goto LABEL_81;
            }

            ++v90;
          }

          v89 = [obja countByEnumeratingWithState:&v126 objects:v152 count:16];
          if (v89)
          {
            continue;
          }

          break;
        }
      }

LABEL_81:

      v32 = tokenCopy;
      v31 = metadataCopy;
    }

    if (v112)
    {
      [v112 timeIntervalSince1970];
      v99 = (v98 * 1000.0);
      [(APSSharedEncoder *)self->_sharedEncoder appendEightByteItem:22 bytes:v99 isIndexable:0];
      [(APSProtocolMessage *)v30 appendEightByteItem:22 bytes:v99];
      [(APNSPackEncoder *)self->_encoderWrapper addInt64WithAttributeId:22 number:v99 isIndexable:0];
    }

    if (disconnectReason != 1000)
    {
      [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:26 bytes:disconnectReason isIndexable:0];
      [(APSProtocolMessage *)v30 appendFourByteItem:26 bytes:disconnectReason];
      [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:26 number:disconnectReason isIndexable:0];
    }

    v100 = sub_100013188();
    if (connection)
    {
      v101 = v100 | 2;
    }

    else
    {
      v101 = v100;
    }

    [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:31 bytes:v101 isIndexable:0];
    [(APSProtocolMessage *)v30 appendFourByteItem:31 bytes:v101];
    [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:31 number:v101 isIndexable:0];
    if (migrationReason)
    {
      [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:30 bytes:migrationReason isIndexable:0];
      [(APSProtocolMessage *)v30 appendFourByteItem:30 bytes:migrationReason];
      [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:30 number:migrationReason isIndexable:0];
    }

    connectedCopy = v112;
    v33 = &fputc_ptr;
    if (request)
    {
      v102 = +[APSLog protocolParser];
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Requesting a PSK for offloading", &buf, 2u);
      }

      [(APSSharedEncoder *)self->_sharedEncoder appendOneByteItem:32 byte:request isIndexable:0];
      [(APSProtocolMessage *)v30 appendOneByteItem:32 byte:request];
      [(APNSPackEncoder *)self->_encoderWrapper addInt8WithAttributeId:32 number:request isIndexable:0];
    }
  }

  if (_os_feature_enabled_impl() && (v103 = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)v103 copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v30 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  protocolParser = [v33[414] protocolParser];
  if (os_log_type_enabled(protocolParser, OS_LOG_TYPE_DEBUG))
  {
    v108 = connectedCopy;
    identifier = self->_identifier;
    v110 = [v32 debugDescription];
    v111 = [copyMessageData length];
    buf = 134219522;
    selfCopy = identifier;
    connectedCopy = v108;
    v140 = 2112;
    v141 = v110;
    v142 = 1024;
    v143 = 12;
    v144 = 1024;
    flagsCopy = flags;
    v146 = 2048;
    interfaceCopy = interface;
    v148 = 2048;
    requestCopy = request;
    v150 = 2048;
    v151 = v111;
    _os_log_debug_impl(&_mh_execute_header, protocolParser, OS_LOG_TYPE_DEBUG, "P%04llu <out:connect> token: %@ version: %hu flags: %x interface: %lld numOfPSK: %lu -- data.len: %llu", &buf, 0x40u);
  }

  return copyMessageData;
}

- (id)copyFilterMessageWithEnabledHashes:(id)hashes ignoredHashes:(id)ignoredHashes opportunisticHashes:(id)opportunisticHashes nonWakingHashes:(id)wakingHashes pausedHashes:(id)pausedHashes token:(id)token version:(unint64_t)version
{
  hashesCopy = hashes;
  ignoredHashesCopy = ignoredHashes;
  opportunisticHashesCopy = opportunisticHashes;
  wakingHashesCopy = wakingHashes;
  pausedHashesCopy = pausedHashes;
  tokenCopy = token;
  if (self->_isPackedFormat)
  {
    v21 = 0;
  }

  else
  {
    v21 = [[APSProtocolMessage alloc] initWithCommand:9];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:9];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:9];
  if (version)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendEightByteItem:12 bytes:version isIndexable:0];
    [(APSProtocolMessage *)v21 appendEightByteItem:12 bytes:version];
    [(APNSPackEncoder *)self->_encoderWrapper addInt64WithAttributeId:12 number:version isIndexable:0];
  }

  if (tokenCopy)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:tokenCopy isIndexable:1];
    [(APSProtocolMessage *)v21 appendItem:1 data:tokenCopy];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:tokenCopy isIndexable:1];
  }

  selfCopy = self;
  maxTableSize = [(APNSPackEncoder *)self->_encoderWrapper maxTableSize];
  v150[0] = 0;
  v150[1] = v150;
  v150[2] = 0x2020000000;
  v150[3] = 0;
  v148[0] = 0;
  v148[1] = v148;
  v148[2] = 0x2020000000;
  v149 = 0;
  v139[0] = _NSConcreteStackBlock;
  v139[1] = 3221225472;
  v139[2] = sub_1000605AC;
  v139[3] = &unk_100187958;
  v147 = (vcvtd_n_f64_u64(maxTableSize, 1uLL) / 53.0);
  v145 = v150;
  v146 = v148;
  v80 = tokenCopy;
  v140 = v80;
  v23 = hashesCopy;
  v141 = v23;
  v24 = ignoredHashesCopy;
  v142 = v24;
  v25 = opportunisticHashesCopy;
  v143 = v25;
  v87 = pausedHashesCopy;
  v144 = v87;
  v136[0] = _NSConcreteStackBlock;
  v136[1] = 3221225472;
  v136[2] = sub_100060710;
  v136[3] = &unk_100187980;
  v85 = objc_retainBlock(v139);
  v138 = v85;
  v136[4] = self;
  v81 = v21;
  v137 = v81;
  v26 = objc_retainBlock(v136);
  v27 = objc_alloc_init(NSMutableArray);
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v23;
  v28 = [obj countByEnumeratingWithState:&v132 objects:v178 count:16];
  if (v28)
  {
    v29 = *v133;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v133 != v29)
        {
          objc_enumerationMutation(obj);
        }

        (v26[2])(v26, *(*(&v132 + 1) + 8 * i), 2, v27);
      }

      v28 = [obj countByEnumeratingWithState:&v132 objects:v178 count:16];
    }

    while (v28);
  }

  v31 = objc_alloc_init(NSMutableArray);
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v91 = v24;
  v32 = [v91 countByEnumeratingWithState:&v128 objects:v177 count:16];
  if (v32)
  {
    v33 = *v129;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v129 != v33)
        {
          objc_enumerationMutation(v91);
        }

        (v26[2])(v26, *(*(&v128 + 1) + 8 * j), 3, v31);
      }

      v32 = [v91 countByEnumeratingWithState:&v128 objects:v177 count:16];
    }

    while (v32);
  }

  v35 = objc_alloc_init(NSMutableArray);
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v90 = v25;
  v36 = [v90 countByEnumeratingWithState:&v124 objects:v176 count:16];
  if (v36)
  {
    v37 = *v125;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v125 != v37)
        {
          objc_enumerationMutation(v90);
        }

        (v26[2])(v26, *(*(&v124 + 1) + 8 * k), 4, v35);
      }

      v36 = [v90 countByEnumeratingWithState:&v124 objects:v176 count:16];
    }

    while (v36);
  }

  v39 = objc_alloc_init(NSMutableArray);
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v89 = wakingHashesCopy;
  v40 = [v89 countByEnumeratingWithState:&v120 objects:v175 count:16];
  if (v40)
  {
    v41 = *v121;
    do
    {
      for (m = 0; m != v40; m = m + 1)
      {
        if (*v121 != v41)
        {
          objc_enumerationMutation(v89);
        }

        (v26[2])(v26, *(*(&v120 + 1) + 8 * m), 6, v39);
      }

      v40 = [v89 countByEnumeratingWithState:&v120 objects:v175 count:16];
    }

    while (v40);
  }

  v43 = objc_alloc_init(NSMutableArray);
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v88 = v87;
  v44 = [v88 countByEnumeratingWithState:&v116 objects:v174 count:16];
  if (v44)
  {
    v45 = *v117;
    do
    {
      for (n = 0; n != v44; n = n + 1)
      {
        if (*v117 != v45)
        {
          objc_enumerationMutation(v88);
        }

        (v26[2])(v26, *(*(&v116 + 1) + 8 * n), 5, v43);
      }

      v44 = [v88 countByEnumeratingWithState:&v116 objects:v174 count:16];
    }

    while (v44);
  }

  v113[0] = _NSConcreteStackBlock;
  v113[1] = 3221225472;
  v113[2] = sub_1000607F8;
  v113[3] = &unk_1001879A8;
  v79 = v85;
  v115 = v79;
  v113[4] = selfCopy;
  v82 = v81;
  v114 = v82;
  v47 = objc_retainBlock(v113);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v86 = v27;
  v48 = [v86 countByEnumeratingWithState:&v109 objects:v173 count:16];
  if (v48)
  {
    v49 = *v110;
    do
    {
      for (ii = 0; ii != v48; ii = ii + 1)
      {
        if (*v110 != v49)
        {
          objc_enumerationMutation(v86);
        }

        (v47[2])(v47, *(*(&v109 + 1) + 8 * ii), 7);
      }

      v48 = [v86 countByEnumeratingWithState:&v109 objects:v173 count:16];
    }

    while (v48);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v51 = v31;
  v52 = [v51 countByEnumeratingWithState:&v105 objects:v172 count:16];
  if (v52)
  {
    v53 = *v106;
    do
    {
      for (jj = 0; jj != v52; jj = jj + 1)
      {
        if (*v106 != v53)
        {
          objc_enumerationMutation(v51);
        }

        (v47[2])(v47, *(*(&v105 + 1) + 8 * jj), 8);
      }

      v52 = [v51 countByEnumeratingWithState:&v105 objects:v172 count:16];
    }

    while (v52);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v55 = v35;
  v56 = [v55 countByEnumeratingWithState:&v101 objects:v171 count:16];
  if (v56)
  {
    v57 = *v102;
    do
    {
      for (kk = 0; kk != v56; kk = kk + 1)
      {
        if (*v102 != v57)
        {
          objc_enumerationMutation(v55);
        }

        (v47[2])(v47, *(*(&v101 + 1) + 8 * kk), 9);
      }

      v56 = [v55 countByEnumeratingWithState:&v101 objects:v171 count:16];
    }

    while (v56);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v59 = v39;
  v60 = [v59 countByEnumeratingWithState:&v97 objects:v170 count:16];
  if (v60)
  {
    v61 = *v98;
    do
    {
      for (mm = 0; mm != v60; mm = mm + 1)
      {
        if (*v98 != v61)
        {
          objc_enumerationMutation(v59);
        }

        (v47[2])(v47, *(*(&v97 + 1) + 8 * mm), 11);
      }

      v60 = [v59 countByEnumeratingWithState:&v97 objects:v170 count:16];
    }

    while (v60);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v63 = v43;
  v64 = [v63 countByEnumeratingWithState:&v93 objects:v169 count:16];
  if (v64)
  {
    v65 = *v94;
    do
    {
      for (nn = 0; nn != v64; nn = nn + 1)
      {
        if (*v94 != v65)
        {
          objc_enumerationMutation(v63);
        }

        (v47[2])(v47, *(*(&v93 + 1) + 8 * nn), 10);
      }

      v64 = [v63 countByEnumeratingWithState:&v93 objects:v169 count:16];
    }

    while (v64);
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = selfCopy->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)selfCopy validateEncodedData:copyMessageData];
  }

  else
  {
    if (selfCopy->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)selfCopy->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v82 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v70 = +[APSLog protocolParser];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    identifier = selfCopy->_identifier;
    v78 = [v80 debugDescription];
    v77 = [obj count];
    v76 = [v91 count];
    v75 = [v90 count];
    v74 = [v89 count];
    v72 = [v88 count];
    v73 = [copyMessageData length];
    *buf = 134220034;
    v152 = identifier;
    v153 = 2112;
    v154 = v78;
    v155 = 2048;
    versionCopy = version;
    v157 = 2048;
    v158 = v77;
    v159 = 2048;
    v160 = v76;
    v161 = 2048;
    v162 = v75;
    v163 = 2048;
    v164 = v74;
    v165 = 2048;
    v166 = v72;
    v167 = 2048;
    v168 = v73;
    _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "P%04llu <out:filter> token: %@ version: %llu; enabled.len: %llu ignoredHashes.len: %llu opportunistic.len: %llu nonWaking.len: %llu paused.len: %llu  -- data.len: %llu", buf, 0x5Cu);
  }

  _Block_object_dispose(v148, 8);
  _Block_object_dispose(v150, 8);

  return copyMessageData;
}

- (id)copyMessageAcknowledgeMessageWithResponse:(int)response messageId:(id)id token:(id)token
{
  idCopy = id;
  tokenCopy = token;
  if (self->_isPackedFormat)
  {
    v10 = 0;
  }

  else
  {
    v10 = [[APSProtocolMessage alloc] initWithCommand:11];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:11];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:11];
  [(APSSharedEncoder *)self->_sharedEncoder appendOneByteItem:8 byte:response isIndexable:0];
  [(APSProtocolMessage *)v10 appendOneByteItem:8 byte:response];
  [(APNSPackEncoder *)self->_encoderWrapper addInt8WithAttributeId:8 number:response isIndexable:0];
  if (idCopy)
  {
    -[APSSharedEncoder appendFourByteItem:bytes:isIndexable:](self->_sharedEncoder, "appendFourByteItem:bytes:isIndexable:", 4, *[idCopy bytes], 0);
    [(APSProtocolMessage *)v10 appendItem:4 data:idCopy];
    -[APNSPackEncoder addInt32WithAttributeId:number:isIndexable:](self->_encoderWrapper, "addInt32WithAttributeId:number:isIndexable:", 4, *[idCopy bytes], 0);
  }

  if (tokenCopy)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:tokenCopy isIndexable:1];
    [(APSProtocolMessage *)v10 appendItem:1 data:tokenCopy];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:tokenCopy isIndexable:1];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v10 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v14 = +[APSLog protocolParser];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v17 = [tokenCopy debugDescription];
    if (idCopy)
    {
      v18 = *[idCopy bytes];
    }

    else
    {
      v18 = 0;
    }

    v19 = 134219010;
    v20 = identifier;
    v21 = 2112;
    v22 = v17;
    v23 = 2048;
    responseCopy = response;
    v25 = 1024;
    v26 = v18;
    v27 = 2048;
    v28 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "P%04llu <out:msgAck> token: %@ status: %lld messageID: %u  -- data.len: %llu", &v19, 0x30u);
  }

  return copyMessageData;
}

- (id)copyMessageTracingAckWithTopicHash:(id)hash status:(int)status tracingUUID:(id)d token:(id)token
{
  hashCopy = hash;
  dCopy = d;
  tokenCopy = token;
  if (self->_isPackedFormat)
  {
    v13 = 0;
  }

  else
  {
    v13 = [[APSProtocolMessage alloc] initWithCommand:27];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:27];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:27];
  [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:hashCopy isIndexable:1];
  [(APSProtocolMessage *)v13 appendItem:1 data:hashCopy];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:hashCopy isIndexable:1];
  [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:dCopy isIndexable:0];
  [(APSProtocolMessage *)v13 appendItem:2 data:dCopy];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:dCopy isIndexable:0];
  [(APSSharedEncoder *)self->_sharedEncoder appendOneByteItem:3 byte:status isIndexable:0];
  [(APSProtocolMessage *)v13 appendOneByteItem:3 byte:status];
  [(APNSPackEncoder *)self->_encoderWrapper addInt8WithAttributeId:3 number:status isIndexable:0];
  if (tokenCopy)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:4 data:tokenCopy isIndexable:1];
    [(APSProtocolMessage *)v13 appendItem:4 data:tokenCopy];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:4 data:tokenCopy isIndexable:1];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v13 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v17 = +[APSLog protocolParser];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v20 = [tokenCopy debugDescription];
    v21 = 134219266;
    v22 = identifier;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = hashCopy;
    v27 = 2048;
    statusCopy = status;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2048;
    v32 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "P%04llu <out:msgTraceAck> token: %@ topicHash: %@d status: %lld tracingUUID: %@  -- data.len: %llu", &v21, 0x3Eu);
  }

  return copyMessageData;
}

- (id)copyKeepAliveMessageWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->_isPackedFormat)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[APSProtocolMessage alloc] initWithCommand:12];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:12];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:12];
  carrier = [metadataCopy carrier];
  v7 = [carrier length];

  if (v7)
  {
    sharedEncoder = self->_sharedEncoder;
    carrier2 = [metadataCopy carrier];
    [(APSSharedEncoder *)sharedEncoder appendItem:1 string:carrier2 isIndexable:1];

    carrier3 = [metadataCopy carrier];
    [(APSProtocolMessage *)v5 appendItem:1 string:carrier3];

    encoderWrapper = self->_encoderWrapper;
    carrier4 = [metadataCopy carrier];
    [(APNSPackEncoder *)encoderWrapper addStringWithAttributId:1 string:carrier4 isIndexable:1];
  }

  softwareVersion = [metadataCopy softwareVersion];
  v14 = [softwareVersion length];

  if (v14)
  {
    v15 = self->_sharedEncoder;
    softwareVersion2 = [metadataCopy softwareVersion];
    [(APSSharedEncoder *)v15 appendItem:2 string:softwareVersion2 isIndexable:1];

    softwareVersion3 = [metadataCopy softwareVersion];
    [(APSProtocolMessage *)v5 appendItem:2 string:softwareVersion3];

    v18 = self->_encoderWrapper;
    softwareVersion4 = [metadataCopy softwareVersion];
    [(APNSPackEncoder *)v18 addStringWithAttributId:2 string:softwareVersion4 isIndexable:1];
  }

  softwareBuild = [metadataCopy softwareBuild];
  v21 = [softwareBuild length];

  if (v21)
  {
    v22 = self->_sharedEncoder;
    softwareBuild2 = [metadataCopy softwareBuild];
    [(APSSharedEncoder *)v22 appendItem:3 string:softwareBuild2 isIndexable:1];

    softwareBuild3 = [metadataCopy softwareBuild];
    [(APSProtocolMessage *)v5 appendItem:3 string:softwareBuild3];

    v25 = self->_encoderWrapper;
    softwareBuild4 = [metadataCopy softwareBuild];
    [(APNSPackEncoder *)v25 addStringWithAttributId:3 string:softwareBuild4 isIndexable:1];
  }

  hardwareVersion = [metadataCopy hardwareVersion];
  v28 = [hardwareVersion length];

  if (v28)
  {
    v29 = self->_sharedEncoder;
    hardwareVersion2 = [metadataCopy hardwareVersion];
    [(APSSharedEncoder *)v29 appendItem:4 string:hardwareVersion2 isIndexable:1];

    hardwareVersion3 = [metadataCopy hardwareVersion];
    [(APSProtocolMessage *)v5 appendItem:4 string:hardwareVersion3];

    v32 = self->_encoderWrapper;
    hardwareVersion4 = [metadataCopy hardwareVersion];
    [(APNSPackEncoder *)v32 addStringWithAttributId:4 string:hardwareVersion4 isIndexable:1];
  }

  v34 = self->_sharedEncoder;
  v35 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [metadataCopy keepAliveInterval]);
  v36 = [v35 description];
  [(APSSharedEncoder *)v34 appendItem:5 string:v36 isIndexable:1];

  v37 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [metadataCopy keepAliveInterval]);
  v38 = [v37 description];
  [(APSProtocolMessage *)v5 appendItem:5 string:v38];

  v39 = self->_encoderWrapper;
  v40 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [metadataCopy keepAliveInterval]);
  v41 = [v40 description];
  [(APNSPackEncoder *)v39 addStringWithAttributId:5 string:v41 isIndexable:1];

  if ([metadataCopy delayedResponseInterval] >= 1)
  {
    v42 = self->_sharedEncoder;
    v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [metadataCopy delayedResponseInterval]);
    v44 = [v43 description];
    [(APSSharedEncoder *)v42 appendItem:6 string:v44 isIndexable:1];

    v45 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [metadataCopy delayedResponseInterval]);
    v46 = [v45 description];
    [(APSProtocolMessage *)v5 appendItem:6 string:v46];

    v47 = self->_encoderWrapper;
    v48 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [metadataCopy delayedResponseInterval]);
    v49 = [v48 description];
    [(APNSPackEncoder *)v47 addStringWithAttributId:6 string:v49 isIndexable:1];
  }

  if ([metadataCopy usingServerStats])
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:8 bytes:1 isIndexable:0];
    [(APSProtocolMessage *)v5 appendTwoByteItem:8 bytes:1];
    [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:8 number:1 isIndexable:0];
  }

  keepAliveState = [metadataCopy keepAliveState];

  if (keepAliveState)
  {
    keepAliveState2 = [metadataCopy keepAliveState];
    -[APSSharedEncoder appendOneByteItem:byte:isIndexable:](self->_sharedEncoder, "appendOneByteItem:byte:isIndexable:", 9, [keepAliveState2 state], 0);
    -[APSProtocolMessage appendOneByteItem:byte:](v5, "appendOneByteItem:byte:", 9, [keepAliveState2 state]);
    -[APNSPackEncoder addInt8WithAttributeId:number:isIndexable:](self->_encoderWrapper, "addInt8WithAttributeId:number:isIndexable:", 9, [keepAliveState2 state], 0);
    -[APSSharedEncoder appendOneByteItem:byte:isIndexable:](self->_sharedEncoder, "appendOneByteItem:byte:isIndexable:", 10, [keepAliveState2 subState], 0);
    -[APSProtocolMessage appendOneByteItem:byte:](v5, "appendOneByteItem:byte:", 10, [keepAliveState2 subState]);
    -[APNSPackEncoder addInt8WithAttributeId:number:isIndexable:](self->_encoderWrapper, "addInt8WithAttributeId:number:isIndexable:", 10, [keepAliveState2 subState], 0);
  }

  if (_os_feature_enabled_impl() && (v52 = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)v52 copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v5 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v55 = +[APSLog protocolParser];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v58 = 134218498;
    v59 = identifier;
    v60 = 2112;
    v61 = metadataCopy;
    v62 = 2048;
    v63 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "P%04llu <out:ka> metadata: %@ -- data.len: %llu", &v58, 0x20u);
  }

  return copyMessageData;
}

- (id)copyMessageWithTopicHash:(id)hash identifier:(unint64_t)identifier payload:(id)payload token:(id)token isPlistFormat:(BOOL)format lastRTT:(id)t
{
  formatCopy = format;
  hashCopy = hash;
  payloadCopy = payload;
  tokenCopy = token;
  tCopy = t;
  if (self->_isPackedFormat)
  {
    v18 = 0;
  }

  else
  {
    v18 = [[APSProtocolMessage alloc] initWithCommand:10];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:10];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:10];
  [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:4 bytes:identifier isIndexable:0];
  [(APSProtocolMessage *)v18 appendFourByteItem:4 bytes:identifier];
  [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:4 number:identifier isIndexable:0];
  [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:hashCopy isIndexable:1];
  [(APSProtocolMessage *)v18 appendItem:1 data:hashCopy];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:hashCopy isIndexable:1];
  if (tokenCopy)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:tokenCopy isIndexable:1];
    [(APSProtocolMessage *)v18 appendItem:2 data:tokenCopy];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:tokenCopy isIndexable:1];
  }

  [(APSProtocolMessage *)v18 appendItem:3 data:payloadCopy];
  sharedEncoder = self->_sharedEncoder;
  if (formatCopy)
  {
    [(APSSharedEncoder *)sharedEncoder appendBinaryPropertyListItem:3 data:payloadCopy isIndexable:0];
    [(APNSPackEncoder *)self->_encoderWrapper addBinaryPropertyListWithAttributeId:3 data:payloadCopy isIndexable:0];
    if (!tCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(APSSharedEncoder *)sharedEncoder appendItem:3 data:payloadCopy isIndexable:0];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:3 data:payloadCopy isIndexable:0];
  if (tCopy)
  {
LABEL_10:
    -[APSSharedEncoder appendTwoByteItem:bytes:isIndexable:](self->_sharedEncoder, "appendTwoByteItem:bytes:isIndexable:", 25, [tCopy unsignedIntegerValue], 0);
    -[APSProtocolMessage appendTwoByteItem:bytes:](v18, "appendTwoByteItem:bytes:", 25, [tCopy unsignedIntegerValue]);
    -[APNSPackEncoder addInt16WithAttributeId:number:isIndexable:](self->_encoderWrapper, "addInt16WithAttributeId:number:isIndexable:", 25, [tCopy unsignedIntegerValue], 0);
  }

LABEL_11:
  if (_os_feature_enabled_impl() && (v20 = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)v20 copyMessageData];
    if (formatCopy)
    {
      [(APSProtocolParser *)self validateEncodedData:copyMessageData withPlist:payloadCopy];
    }

    else
    {
      [(APSProtocolParser *)self validateEncodedData:copyMessageData];
    }
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v18 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v23 = +[APSLog protocolParser];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v25 = [tokenCopy debugDescription];
    v28 = [payloadCopy length];
    if (formatCopy)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v27 = [copyMessageData length];
    *buf = 134219522;
    identifierCopy = identifier;
    v33 = 2112;
    v34 = v25;
    v35 = 2112;
    v36 = hashCopy;
    v37 = 2048;
    identifierCopy2 = identifier;
    v39 = 2048;
    v40 = v29;
    v41 = 2112;
    v42 = v26;
    v43 = 2048;
    v44 = v27;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "P%04llu <out:msg> token: %@ topicHash: %@ messageID: %llu payload.len: %llu isPlistFormat: %@ -- data.len: %llu", buf, 0x48u);
  }

  return copyMessageData;
}

- (id)copyFlushMessageWithWantPaddingLength:(int)length paddingLength:(int)paddingLength
{
  if (self->_isPackedFormat)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[APSProtocolMessage alloc] initWithCommand:15];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:15];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:15];
  if (length)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:1 bytes:length isIndexable:0];
    [(APSProtocolMessage *)v7 appendTwoByteItem:1 bytes:length];
    [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:1 number:length isIndexable:0];
  }

  if (paddingLength)
  {
    v8 = objc_alloc_init(NSMutableData);
    [v8 increaseLengthBy:paddingLength];
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:v8 isIndexable:0];
    [(APSProtocolMessage *)v7 appendItem:2 data:v8];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:v8 isIndexable:0];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v7 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v12 = +[APSLog protocolParser];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v15 = 134218752;
    v16 = identifier;
    v17 = 2048;
    lengthCopy = length;
    v19 = 2048;
    paddingLengthCopy = paddingLength;
    v21 = 2048;
    v22 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "P%04llu <out:flush> wantLength: %llu paddingLength: %llu  -- data.len: %llu", &v15, 0x2Au);
  }

  return copyMessageData;
}

- (id)copyFlushResponseMessageWithPaddingLength:(int)length
{
  if (self->_isPackedFormat)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[APSProtocolMessage alloc] initWithCommand:16];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:16];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:16];
  if (length)
  {
    v6 = objc_alloc_init(NSMutableData);
    [v6 increaseLengthBy:length];
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:v6 isIndexable:0];
    [(APSProtocolMessage *)v5 appendItem:2 data:v6];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:v6 isIndexable:0];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v5 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v10 = +[APSLog protocolParser];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v13 = 134218496;
    v14 = identifier;
    v15 = 2048;
    lengthCopy = length;
    v17 = 2048;
    v18 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "P%04llu <out:flushResp> paddingLength: %llu  -- data.len: %llu", &v13, 0x20u);
  }

  return copyMessageData;
}

- (void)dumpData:(id)data prefix:(const char *)prefix log_type:(unsigned __int8)log_type
{
  dataCopy = data;
  v7 = +[APSLog protocolParser];
  v8 = os_log_type_enabled(v7, log_type);

  if (v8)
  {
    bytes = [dataCopy bytes];
    v26 = dataCopy;
    v10 = [dataCopy length];
    v11 = +[APSLog protocolParser];
    if (os_log_type_enabled(v11, log_type))
    {
      *buf = 136315650;
      prefixCopy = prefix;
      v37 = 2048;
      v38 = bytes;
      v39 = 2048;
      v40 = v10;
      _os_log_impl(&_mh_execute_header, v11, log_type, "START %s @ %p,%ld:", buf, 0x20u);
    }

    if (v10 >= 1)
    {
      v12 = &bytes[v10];
      v13 = bytes;
      log_typeCopy = log_type;
      do
      {
        v14 = *v13++;
        v15 = snprintf(buf, 0xC0uLL, "%02x", v14);
        if (v13 < v12)
        {
          v16 = v15;
          v17 = 1;
          do
          {
            v18 = &bytes[v17];
            if ((v17 & 7) != 0)
            {
              v19 = "";
            }

            else
            {
              v19 = " ";
            }

            v21 = *v18;
            v20 = (v18 + 1);
            v22 = snprintf(&buf[v16], 192 - v16, "%s%02x", v19, v21);
            v23 = v17 + 1;
            if (v17 > 0x3E)
            {
              break;
            }

            v16 += v22;
            ++v17;
          }

          while (v20 < v12);
          v13 = &bytes[v23];
          log_type = log_typeCopy;
        }

        v24 = +[APSLog protocolParser];
        if (os_log_type_enabled(v24, log_type))
        {
          *v29 = 136315650;
          prefixCopy3 = prefix;
          v31 = 2048;
          v32 = bytes;
          v33 = 2080;
          v34 = buf;
          _os_log_impl(&_mh_execute_header, v24, log_type, "DATA %s %p [%s]", v29, 0x20u);
        }

        bytes = v13;
      }

      while (v13 < v12);
    }

    v25 = +[APSLog protocolParser];
    if (os_log_type_enabled(v25, log_type))
    {
      *v29 = 136315138;
      prefixCopy3 = prefix;
      _os_log_impl(&_mh_execute_header, v25, log_type, "STOP %s", v29, 0xCu);
    }

    dataCopy = v26;
  }
}

- (void)validateEncodedData:(id)data withPlist:(id)plist
{
  dataCopy = data;
  plistCopy = plist;
  if ([(APSProtocolParser *)self isPackedFormat])
  {
    [(APSProtocolParser *)self dumpData:dataCopy prefix:"libuaps" log_type:2];
    copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    if (([dataCopy isEqualToData:copyMessage] & 1) == 0)
    {
      [(APSProtocolParser *)self dumpData:copyMessage prefix:"APNSPackCPP" log_type:2];
      if (plistCopy)
      {
        [(APSProtocolParser *)self dumpData:plistCopy prefix:"bplist" log_type:2];
      }
    }
  }
}

- (id)copyTokenGenerateMessageWithTopicHash:(id)hash baseToken:(id)token appId:(unsigned __int16)id expirationTTL:(unsigned int)l vapidPublicKeyHash:(id)keyHash type:(int64_t)type
{
  v10 = *&l;
  idCopy = id;
  hashCopy = hash;
  tokenCopy = token;
  keyHashCopy = keyHash;
  if (self->_isPackedFormat)
  {
    v17 = 0;
  }

  else
  {
    v17 = [[APSProtocolMessage alloc] initWithCommand:17];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:17];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:17];
  if ([hashCopy length] >= 0x14)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:hashCopy isIndexable:1];
    [(APSProtocolMessage *)v17 appendItem:2 data:hashCopy];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:hashCopy isIndexable:1];
    if (tokenCopy)
    {
      [(APSSharedEncoder *)self->_sharedEncoder appendItem:1 data:tokenCopy isIndexable:1];
      [(APSProtocolMessage *)v17 appendItem:1 data:tokenCopy];
      [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:1 data:tokenCopy isIndexable:1];
    }

    if (idCopy)
    {
      [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:3 bytes:idCopy isIndexable:0];
      [(APSProtocolMessage *)v17 appendTwoByteItem:3 bytes:idCopy];
      [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:3 number:idCopy isIndexable:0];
    }

    if (type)
    {
      [(APSSharedEncoder *)self->_sharedEncoder appendTwoByteItem:4 bytes:type isIndexable:0];
      [(APSProtocolMessage *)v17 appendTwoByteItem:4 bytes:type];
      [(APNSPackEncoder *)self->_encoderWrapper addInt16WithAttributeId:4 number:type isIndexable:0];
    }

    if (v10)
    {
      [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:5 bytes:v10 isIndexable:0];
      [(APSProtocolMessage *)v17 appendFourByteItem:5 bytes:v10];
      [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:5 number:v10 isIndexable:0];
    }

    if (keyHashCopy)
    {
      [(APSSharedEncoder *)self->_sharedEncoder appendItem:6 data:keyHashCopy isIndexable:0];
      [(APSProtocolMessage *)v17 appendItem:6 data:keyHashCopy];
      [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:6 data:keyHashCopy isIndexable:0];
    }
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v17 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v21 = +[APSLog protocolParser];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v23 = [tokenCopy debugDescription];
    *buf = 134219778;
    v26 = identifier;
    v27 = 2112;
    v28 = v23;
    v29 = 2112;
    v30 = hashCopy;
    v31 = 2048;
    v32 = idCopy;
    v33 = 2048;
    v34 = v10;
    v35 = 2048;
    v36 = [keyHashCopy length];
    v37 = 2048;
    typeCopy = type;
    v39 = 2048;
    v40 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "P%04llu <out:tokenGen> token: %@ topicHash: %@ appId: %llu expirationTTL: %llu vapidPublicKeyHash.len: %llu type: %lld  -- data.len: %llu", buf, 0x52u);
  }

  return copyMessageData;
}

- (id)copyPresenceTrackingRequestWithMessageID:(unint64_t)d pushToken:(id)token salt:(unint64_t)salt trackingFlag:(unsigned int)flag timestamp:(unint64_t)timestamp
{
  v8 = *&flag;
  tokenCopy = token;
  if (self->_isPackedFormat)
  {
    v13 = 0;
  }

  else
  {
    v13 = [[APSProtocolMessage alloc] initWithCommand:32];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:32];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:32];
  [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:1 bytes:d isIndexable:0];
  [(APSProtocolMessage *)v13 appendFourByteItem:1 bytes:d];
  [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:1 number:d isIndexable:0];
  if (tokenCopy)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:tokenCopy isIndexable:0];
    [(APSProtocolMessage *)v13 appendItem:2 data:tokenCopy];
    [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:tokenCopy isIndexable:0];
  }

  if (salt)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendEightByteItem:3 bytes:salt isIndexable:0];
    [(APSProtocolMessage *)v13 appendEightByteItem:3 bytes:salt];
    [(APNSPackEncoder *)self->_encoderWrapper addInt64WithAttributeId:3 number:salt isIndexable:0];
  }

  [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:4 bytes:v8 isIndexable:0];
  [(APSProtocolMessage *)v13 appendFourByteItem:4 bytes:v8];
  [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:4 number:v8 isIndexable:0];
  if (timestamp)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendEightByteItem:5 bytes:timestamp isIndexable:0];
    [(APSProtocolMessage *)v13 appendEightByteItem:5 bytes:timestamp];
    [(APNSPackEncoder *)self->_encoderWrapper addInt64WithAttributeId:5 number:timestamp isIndexable:0];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v13 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v17 = +[APSLog protocolParser];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v20 = [tokenCopy debugDescription];
    v21 = 134219522;
    v22 = identifier;
    v23 = 2112;
    v24 = v20;
    v25 = 2048;
    dCopy = d;
    v27 = 2048;
    saltCopy = salt;
    v29 = 2048;
    v30 = v8;
    v31 = 2048;
    timestampCopy = timestamp;
    v33 = 2048;
    v34 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "P%04llu <out:presenceTrackingReq> token: %@ messageId: %llu salt: %llu trackingFlag: %llu timestamp: %llu  -- data.len: %llu", &v21, 0x48u);
  }

  return copyMessageData;
}

- (id)copySetActiveIntervalMessageWithInterval:(unsigned int)interval
{
  v3 = *&interval;
  if (self->_isPackedFormat)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[APSProtocolMessage alloc] initWithCommand:19];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:19];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:19];
  [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:1 bytes:v3 isIndexable:0];
  [(APSProtocolMessage *)v5 appendFourByteItem:1 bytes:v3];
  [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:1 number:v3 isIndexable:0];
  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v5 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v9 = +[APSLog protocolParser];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v12 = 134218496;
    v13 = identifier;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "P%04llu <out:activeInt> activeInterval: %llu  -- data.len: %llu", &v12, 0x20u);
  }

  return copyMessageData;
}

- (id)copySetActiveState:(BOOL)state forInterval:(unsigned int)interval
{
  v4 = *&interval;
  stateCopy = state;
  if (self->_isPackedFormat)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[APSProtocolMessage alloc] initWithCommand:20];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:20];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:20];
  if (stateCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(APSSharedEncoder *)self->_sharedEncoder appendOneByteItem:1 byte:v8 isIndexable:0];
  [(APSProtocolMessage *)v7 appendOneByteItem:1 byte:v8];
  [(APNSPackEncoder *)self->_encoderWrapper addInt8WithAttributeId:1 number:v8 isIndexable:0];
  if (stateCopy)
  {
    [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:2 bytes:v4 isIndexable:0];
    [(APSProtocolMessage *)v7 appendFourByteItem:2 bytes:v4];
    [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:2 number:v4 isIndexable:0];
  }

  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v7 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v12 = +[APSLog protocolParser];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    if (stateCopy)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = 134218754;
    v17 = identifier;
    v18 = 2048;
    v19 = v4;
    v20 = 2112;
    v21 = v15;
    v22 = 2048;
    v23 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "P%04llu <out:activeState> interval: %llu isActive: %@  -- data.len: %llu", &v16, 0x2Au);
  }

  return copyMessageData;
}

- (id)copyPubSubChannelListWithInput:(id)input baseToken:(id)token messageID:(unsigned int)d
{
  v5 = *&d;
  inputCopy = input;
  tokenCopy = token;
  if (self->_isPackedFormat)
  {
    v10 = 0;
  }

  else
  {
    v10 = [[APSProtocolMessage alloc] initWithCommand:29];
  }

  [(APNSPackEncoder *)self->_encoderWrapper setCommand:29];
  [(APSSharedEncoder *)self->_sharedEncoder setCommand:29];
  [(APSSharedEncoder *)self->_sharedEncoder appendFourByteItem:1 bytes:v5 isIndexable:0];
  [(APSProtocolMessage *)v10 appendFourByteItem:1 bytes:v5];
  [(APNSPackEncoder *)self->_encoderWrapper addInt32WithAttributeId:1 number:v5 isIndexable:0];
  [(APSSharedEncoder *)self->_sharedEncoder appendItem:2 data:inputCopy isIndexable:0];
  [(APSProtocolMessage *)v10 appendItem:2 data:inputCopy];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:2 data:inputCopy isIndexable:0];
  [(APSSharedEncoder *)self->_sharedEncoder appendItem:3 data:tokenCopy isIndexable:0];
  [(APSProtocolMessage *)v10 appendItem:3 data:tokenCopy];
  [(APNSPackEncoder *)self->_encoderWrapper addDataWithAttributeId:3 data:tokenCopy isIndexable:0];
  if (_os_feature_enabled_impl() && (sharedEncoder = self->_sharedEncoder) != 0)
  {
    copyMessageData = [(APSSharedEncoder *)sharedEncoder copyMessageData];
    [(APSProtocolParser *)self validateEncodedData:copyMessageData];
  }

  else
  {
    if (self->_isPackedFormat)
    {
      copyMessage = [(APNSPackEncoder *)self->_encoderWrapper copyMessage];
    }

    else
    {
      copyMessage = [(APSProtocolMessage *)v10 copyMessageData];
    }

    copyMessageData = copyMessage;
  }

  v14 = +[APSLog protocolParser];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v17 = [tokenCopy debugDescription];
    v18 = 134219010;
    v19 = identifier;
    v20 = 2112;
    v21 = v17;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = [inputCopy length];
    v26 = 2048;
    v27 = [copyMessageData length];
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "P%04llu <out:psChannelList> token: %@ messageID: %llu messageInput.len: %llu  -- data.len: %llu", &v18, 0x34u);
  }

  return copyMessageData;
}

- (void)APNSPackEncoder:(id)encoder receivedError:(int)error
{
  if (self->_encoderWrapper == encoder)
  {
    delegate = self->_delegate;
    errorMessage = [encoder errorMessage];
    [(APSProtocolParserDelegate *)delegate protocolParser:self receiveAPNSPackError:errorMessage];
  }
}

- (void)APNSPackDecoder:(id)decoder ReceivedError:(int)error
{
  if (self->_decoderWrapper == decoder)
  {
    delegate = self->_delegate;
    errorMessage = [decoder errorMessage];
    [(APSProtocolParserDelegate *)delegate protocolParser:self receiveAPNSPackError:errorMessage];
  }
}

- (void)sharedCoderEncounteredParsingFailure:(id)failure
{
  if (self->_sharedDecoder == failure || self->_sharedEncoder == failure)
  {
    [(APSProtocolParserDelegate *)self->_delegate protocolParser:self receiveAPNSPackError:@"Unknown Error"];
  }
}

- (BOOL)parseMessage:(id)message parameters:(id *)parameters isInvalid:(BOOL *)invalid lengthParsed:(unint64_t *)parsed
{
  messageCopy = message;
  *parameters = 0;
  *invalid = 0;
  *parsed = 0;
  if (![messageCopy length])
  {
    LOBYTE(v15) = 0;
    goto LABEL_20;
  }

  v11 = *[messageCopy bytes];
  if (v11 <= 0x22 && ((1 << v11) & 0x760C5EF80) != 0)
  {
    if (!_os_feature_enabled_impl() || (decoderWrapper = self->_sharedDecoder) == 0)
    {
      if (!self->_isPackedFormat)
      {
        v14 = [(APSProtocolParser *)self _parseSerialMessage:messageCopy parameters:parameters isInvalid:invalid lengthParsed:parsed];
        goto LABEL_13;
      }

      decoderWrapper = self->_decoderWrapper;
    }

    v14 = [decoderWrapper decodeMessage:messageCopy parser:self parameters:parameters isInvalid:invalid lengthParsed:parsed];
LABEL_13:
    v15 = v14;
    goto LABEL_14;
  }

  v15 = 0;
  *invalid = 1;
LABEL_14:
  v16 = +[APSLog protocolParser];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

  if (v17)
  {
    if ((v11 - 7) > 0x1Bu)
    {
      v18 = @"invalid";
    }

    else
    {
      v18 = off_1001879C8[(v11 - 7)];
    }

    v19 = +[APSLog protocolParser];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v22 = [messageCopy length];
      v23 = *parsed;
      v24 = @"NO";
      v25 = *parameters;
      if (*invalid)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = 134219778;
      if (v15)
      {
        v24 = @"YES";
      }

      v28 = identifier;
      v29 = 2112;
      v30 = v18;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v22;
      v35 = 2048;
      v36 = v23;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v24;
      v41 = 2112;
      v42 = v25;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "P%04llu <in:%@> command: %llu message.len: %llu lengthParsed: %llu isInvalid: %@ success: %@  -- parameters: %@", &v27, 0x52u);
    }
  }

LABEL_20:

  return v15;
}

- (BOOL)_parseSerialMessage:(id)message parameters:(id *)parameters isInvalid:(BOOL *)invalid lengthParsed:(unint64_t *)parsed
{
  messageCopy = message;
  v11 = [messageCopy length];
  bytes = [messageCopy bytes];
  v13 = +[NSMutableDictionary dictionary];
  v14 = *bytes;
  v15 = [NSNumber numberWithUnsignedInteger:v14];
  [v13 setObject:v15 forKey:@"APSProtocolCommand"];

  if (v11 < 5)
  {
    goto LABEL_4;
  }

  v16 = *(bytes + 1);
  v17 = bswap32(v16);
  if ((v17 & 0x80000000) != 0)
  {
    v19 = 0;
    *invalid = 1;
    goto LABEL_11;
  }

  invalidCopy = invalid;
  v18 = v17 + 5;
  if (v11 >= v18)
  {
    parsedCopy = parsed;
    v20 = 5;
    if (v16)
    {
      while (1)
      {
        v21 = &bytes[v20];
        v22 = v20 + 3;
        v20 += 3 + (bswap32(*&bytes[v20 + 1]) >> 16);
        if (v20 > v18)
        {
          break;
        }

        v23 = *v21;
        v24 = [NSData dataWithBytes:&bytes[v22] length:?];
        [(APSProtocolParser *)self setSerialItemInParameters:v13 commandID:v14 itemID:v23 itemData:v24];

        if (v20 >= v18)
        {
          goto LABEL_9;
        }
      }

      v19 = 0;
      *invalidCopy = 1;
    }

    else
    {
LABEL_9:
      v25 = v13;
      *parameters = v13;
      *parsedCopy = v20;
      v19 = 1;
    }
  }

  else
  {
LABEL_4:
    v19 = 0;
  }

LABEL_11:

  return v19;
}

- (void)setSerialNumberInParameters:(id)parameters commandID:(unint64_t)d itemID:(unint64_t)iD Integer:(int64_t)integer
{
  parametersCopy = parameters;
  if (d <= 14)
  {
    if (d > 9)
    {
      switch(d)
      {
        case 0xAuLL:
          if (iD <= 8)
          {
            switch(iD)
            {
              case 4uLL:
                if (integer != integer)
                {
                  goto LABEL_126;
                }

                integerCopy = integer;
                v10 = [NSData dataWithBytes:&integerCopy length:4];
                v11 = @"APSProtocolMessageID";
                break;
              case 5uLL:
                if (HIDWORD(integer))
                {
                  goto LABEL_126;
                }

                v10 = [NSDate dateWithTimeIntervalSince1970:integer];
                v11 = @"APSProtocolMessageExpiry";
                break;
              case 6uLL:
                v10 = [NSNumber numberWithUnsignedLongLong:integer];
                v11 = @"APSProtocolMessageTimestamp";
                break;
              default:
                goto LABEL_126;
            }
          }

          else if (iD > 25)
          {
            if (iD == 26)
            {
              if (integer != integer)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedLong:integer];
              v11 = @"APSProtocolMessageAPNFlags";
            }

            else
            {
              if (iD != 28 || integer != integer)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedShort:integer];
              v11 = @"APSProtocolMessagePushType";
            }
          }

          else if (iD == 9)
          {
            if (integer != integer)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:integer];
            v11 = @"APSProtocolMessageStorageFlags";
          }

          else
          {
            if (iD != 13 || integer != integer)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:integer];
            v11 = @"APSProtocolMessagePriority";
          }

          break;
        case 0xBuLL:
          if (iD == 6)
          {
            v10 = [NSNumber numberWithUnsignedLongLong:integer];
            v11 = @"APSProtocolAckTimestampKey";
          }

          else
          {
            if (iD != 8 || integer != integer)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:integer];
            v11 = @"APSProtocolDeliveryStatus";
          }

          break;
        case 0xDuLL:
          if (iD == 2)
          {
            if (integer != integer)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInt:integer];
            v11 = @"APSProtocolKeepAliveDelayKeepAliveDurationKey";
          }

          else
          {
            if (iD != 1 || integer != integer)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:integer];
            v11 = @"APSProtocolKeepAliveResponse";
          }

          break;
        default:
          goto LABEL_126;
      }
    }

    else
    {
      switch(d)
      {
        case 7uLL:
          if (iD != 2)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithUnsignedInteger:integer];
          v11 = @"APSProtocolPresenceStatus";
          break;
        case 8uLL:
          if (iD <= 9)
          {
            if (iD <= 5)
            {
              if (iD == 1)
              {
                if (integer != integer)
                {
                  goto LABEL_126;
                }

                v10 = [NSNumber numberWithUnsignedInteger:integer];
                v11 = @"APSProtocolConnectedResponse";
              }

              else
              {
                if (iD != 4 || integer != integer)
                {
                  goto LABEL_126;
                }

                v10 = [NSNumber numberWithUnsignedInteger:integer];
                v11 = @"APSProtocolMessageSize";
              }
            }

            else if (iD == 6)
            {
              if (integer != integer)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedLong:integer];
              v12 = [NSNumber numberWithBool:integer & 1];
              [parametersCopy setObject:v12 forKey:@"APSProtocolDualChannelSupport"];
              v13 = [NSNumber numberWithBool:(integer >> 1) & 1];
              [parametersCopy setObject:v13 forKey:@"APSProtocolReportLastReversePushRTT"];
              v14 = [NSNumber numberWithBool:(integer >> 2) & 1];
              [parametersCopy setObject:v14 forKey:@"APSProtocolFilterOptimizationSupport"];
              v15 = [NSNumber numberWithBool:(integer >> 3) & 1];
              [parametersCopy setObject:v15 forKey:@"APSProtocolServerRequestedTTR"];

              v11 = @"APSProtocolCapabilities";
            }

            else if (iD == 7)
            {
              v10 = [NSNumber numberWithUnsignedLongLong:integer];
              v11 = @"APSProtocolServerTimeForBadNonce";
            }

            else
            {
              if (iD != 8 || integer != integer)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedInteger:integer];
              v11 = @"APSProtocolLargeMessageSize";
            }
          }

          else if (iD > 17)
          {
            if (iD == 18)
            {
              if (integer != integer)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedLongLong:integer];
              v11 = @"APSProtocolMaxKeepAliveInterval";
            }

            else if (iD == 20)
            {
              if (integer != integer)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedShort:integer];
              v11 = @"APSProtocolExperimentIDKey";
            }

            else
            {
              if (iD != 22 || integer != integer)
              {
                goto LABEL_126;
              }

              v10 = [NSNumber numberWithUnsignedChar:integer];
              v11 = @"APSProtocolPSKVendingStatus";
            }
          }

          else if (iD == 10)
          {
            v10 = [NSNumber numberWithUnsignedLongLong:integer];
            v11 = @"APSProtocolServerTime";
          }

          else if (iD == 16)
          {
            if (integer != integer)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedLongLong:integer];
            v11 = @"APSProtocolMinKeepAliveInterval";
          }

          else
          {
            if (iD != 17 || integer != integer)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedLongLong:integer];
            v11 = @"APSProtocolExpectedKeepAliveInterval";
          }

          break;
        case 9uLL:
          if (iD == 3)
          {
            if (integer != integer)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedInteger:integer];
            v11 = @"APSProtocolFilterResponseStatusKey";
          }

          else
          {
            if (iD != 2)
            {
              goto LABEL_126;
            }

            v10 = [NSNumber numberWithUnsignedLongLong:integer];
            v11 = @"APSProtocolFilterResponseVersionKey";
          }

          break;
        default:
          goto LABEL_126;
      }
    }

    goto LABEL_124;
  }

  if (d > 29)
  {
    switch(d)
    {
      case 0x1EuLL:
        if (iD == 4)
        {
          goto LABEL_65;
        }

        if (iD != 1)
        {
          goto LABEL_126;
        }

        if (integer != integer)
        {
LABEL_65:
          v10 = [NSNumber numberWithUnsignedLongLong:integer];
          v11 = @"APSProtocolPubSubUpdateTimestamp";
        }

        else
        {
          v10 = [NSNumber numberWithInteger:integer];
          v11 = @"APSPtotocolPubsubUpdateMessageID";
        }

        break;
      case 0x20uLL:
        if (iD == 3)
        {
          if (integer != integer)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithInteger:integer];
          v11 = @"APSProtocolPresenceActivityStatusKey";
        }

        else
        {
          if (iD != 1 || integer != integer)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithInteger:integer];
          v11 = @"APSProtocolPresenceActivityMessageIDKey";
        }

        break;
      case 0x21uLL:
        if (iD == 3)
        {
          if (integer != integer)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithUnsignedInteger:integer];
          v11 = @"APSProtocolFilterUpdateStatusKey";
        }

        else
        {
          if (iD != 2)
          {
            goto LABEL_126;
          }

          v10 = [NSNumber numberWithUnsignedLongLong:integer];
          v11 = @"APSProtocolFilterUpdateVersionKey";
        }

        break;
      default:
        goto LABEL_126;
    }
  }

  else
  {
    if (d == 15)
    {
      if (iD != 1 || (integer + 0x8000) >> 16)
      {
        goto LABEL_126;
      }

      v10 = [NSNumber numberWithUnsignedInteger:integer];
      v11 = @"APSProtocolFlushWantPadding";
      goto LABEL_124;
    }

    if (d == 18)
    {
      if (iD == 4)
      {
        if (integer != integer)
        {
          goto LABEL_126;
        }

        v10 = [NSNumber numberWithInteger:integer];
        v11 = @"APSProtocolAppTokenGenerateResponseAppId";
      }

      else
      {
        if (iD != 1 || integer != integer)
        {
          goto LABEL_126;
        }

        v10 = [NSNumber numberWithInteger:integer];
        v11 = @"APSProtocolAppTokenGenerateResponse";
      }

      goto LABEL_124;
    }

    if (d != 29)
    {
      goto LABEL_126;
    }

    if (iD == 5)
    {
      goto LABEL_98;
    }

    if (iD != 4)
    {
      if (iD != 1)
      {
        goto LABEL_126;
      }

      if (integer == integer)
      {
        v10 = [NSNumber numberWithInteger:integer];
        v11 = @"APSProtocolPubSubMessageID";
        goto LABEL_124;
      }

LABEL_98:
      if (HIDWORD(integer))
      {
        goto LABEL_126;
      }

      v10 = [NSNumber numberWithInteger:integer];
      v11 = @"APSProtocolPubSubTimeout";
      goto LABEL_124;
    }

    if (integer != integer)
    {
      goto LABEL_98;
    }

    v10 = [NSNumber numberWithInteger:integer];
    v11 = @"APSProtocolPubSubStatus";
  }

LABEL_124:
  if (v10)
  {
    [parametersCopy setObject:v10 forKey:v11];
  }

LABEL_126:
}

- (void)setSerialItemInParameters:(id)parameters commandID:(unint64_t)d itemID:(unint64_t)iD itemData:(id)data
{
  parametersCopy = parameters;
  dataCopy = data;
  v10 = dataCopy;
  switch(d)
  {
    case 7uLL:
      if (iD == 1)
      {
        goto LABEL_3;
      }

      goto LABEL_128;
    case 8uLL:
      if (iD > 7)
      {
        if (iD > 10)
        {
          switch(iD)
          {
            case 0xBuLL:
              v11 = [[NSString alloc] initWithData:dataCopy encoding:4];
              v12 = @"APSProtocolGeoRegion";
              goto LABEL_126;
            case 0x13uLL:
              v11 = dataCopy;
              v12 = @"APSProtocolClientIPAddress";
              goto LABEL_126;
            case 0x15uLL:
              v11 = [[NSString alloc] initWithData:dataCopy encoding:4];
              v12 = @"APSProtocolInvalidPresenceReason";
              goto LABEL_126;
          }
        }

        else if (iD == 8)
        {
          if ([dataCopy length] == 2)
          {
            v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", bswap32(*[v10 bytes]) >> 16);
            v12 = @"APSProtocolLargeMessageSize";
            goto LABEL_126;
          }
        }

        else
        {
          if (iD == 9)
          {
            goto LABEL_68;
          }

          if ([dataCopy length] == 8)
          {
            v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
            v12 = @"APSProtocolServerTime";
            goto LABEL_126;
          }
        }
      }

      else if (iD > 3)
      {
        if (iD == 4)
        {
          if ([dataCopy length] == 2)
          {
            v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", bswap32(*[v10 bytes]) >> 16);
            v12 = @"APSProtocolMessageSize";
            goto LABEL_126;
          }
        }

        else if (iD == 6)
        {
          if ([dataCopy length] == 4)
          {
            v13 = bswap32(*[v10 bytes]);
            v11 = [NSNumber numberWithUnsignedLong:v13];
            v14 = [NSNumber numberWithBool:v13 & 1];
            [parametersCopy setObject:v14 forKey:@"APSProtocolDualChannelSupport"];
            v15 = [NSNumber numberWithBool:(v13 >> 1) & 1];
            [parametersCopy setObject:v15 forKey:@"APSProtocolReportLastReversePushRTT"];
            v16 = [NSNumber numberWithBool:(v13 >> 2) & 1];
            [parametersCopy setObject:v16 forKey:@"APSProtocolFilterOptimizationSupport"];
            v17 = [NSNumber numberWithBool:(v13 >> 3) & 1];
            [parametersCopy setObject:v17 forKey:@"APSProtocolServerRequestedTTR"];

            v12 = @"APSProtocolCapabilities";
            goto LABEL_126;
          }
        }

        else if (iD == 7 && [dataCopy length] == 8)
        {
          v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
          v12 = @"APSProtocolServerTimeForBadNonce";
          goto LABEL_126;
        }
      }

      else
      {
        switch(iD)
        {
          case 1uLL:
            if ([dataCopy length] == 1)
            {
              v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
              v12 = @"APSProtocolConnectedResponse";
              goto LABEL_126;
            }

            break;
          case 2uLL:
            goto LABEL_48;
          case 3uLL:
LABEL_3:
            v11 = dataCopy;
            v12 = @"APSProtocolToken";
            goto LABEL_126;
        }
      }

      goto LABEL_128;
    case 9uLL:
      switch(iD)
      {
        case 3uLL:
          if ([dataCopy length] == 1)
          {
            v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
            v12 = @"APSProtocolFilterResponseStatusKey";
            goto LABEL_126;
          }

          break;
        case 2uLL:
          if ([dataCopy length] == 8)
          {
            v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
            v12 = @"APSProtocolFilterResponseVersionKey";
            goto LABEL_126;
          }

          break;
        case 1uLL:
          v11 = dataCopy;
          v12 = @"APSProtocolFilterResponseTokenKey";
          goto LABEL_126;
      }

      goto LABEL_128;
    case 0xAuLL:
      switch(iD)
      {
        case 1uLL:
          goto LABEL_3;
        case 2uLL:
          v11 = dataCopy;
          v12 = @"APSProtocolTopicHash";
          goto LABEL_126;
        case 3uLL:
          v11 = dataCopy;
          v12 = @"APSProtocolPayload";
          goto LABEL_126;
        case 4uLL:
          v11 = dataCopy;
          v12 = @"APSProtocolMessageID";
          goto LABEL_126;
        case 5uLL:
          if ([dataCopy length] != 4)
          {
            goto LABEL_128;
          }

          v11 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", bswap32(*[v10 bytes]));
          v12 = @"APSProtocolMessageExpiry";
          break;
        case 6uLL:
          if ([dataCopy length] != 8)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
          v12 = @"APSProtocolMessageTimestamp";
          break;
        case 9uLL:
          if ([dataCopy length] != 1)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
          v12 = @"APSProtocolMessageStorageFlags";
          break;
        case 0xDuLL:
          if ([dataCopy length] != 1)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
          v12 = @"APSProtocolMessagePriority";
          break;
        case 0xFuLL:
          v11 = dataCopy;
          v12 = @"APSProtocolBaseToken";
          goto LABEL_126;
        case 0x15uLL:
          v11 = dataCopy;
          v12 = @"APSProtocolMessageTracingUUID";
          goto LABEL_126;
        case 0x18uLL:
          v11 = [[NSString alloc] initWithData:dataCopy encoding:4];
          v12 = @"APSProtocolMessageCorrelationIdentifier";
          goto LABEL_126;
        case 0x1AuLL:
          if ([dataCopy length] != 4)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", bswap32(*[v10 bytes]));
          v12 = @"APSProtocolMessageAPNFlags";
          break;
        case 0x1CuLL:
          if ([dataCopy length] != 2)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", bswap32(*[v10 bytes]) >> 16);
          v12 = @"APSProtocolMessagePushType";
          break;
        case 0x1DuLL:
          v11 = dataCopy;
          v12 = @"APSProtocolMessagePubSubInfo";
          goto LABEL_126;
        default:
          goto LABEL_128;
      }

      goto LABEL_126;
    case 0xBuLL:
      if (iD != 6)
      {
        if (iD == 8 && [dataCopy length] == 1)
        {
          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
          v12 = @"APSProtocolDeliveryStatus";
          goto LABEL_126;
        }

        goto LABEL_128;
      }

      if ([dataCopy length] != 8)
      {
        goto LABEL_128;
      }

      v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[v10 bytes]));
      v12 = @"APSProtocolAckTimestampKey";
      goto LABEL_126;
    case 0xDuLL:
      if (iD != 1 || [dataCopy length] != 1)
      {
        goto LABEL_128;
      }

      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v10 bytes]);
      v12 = @"APSProtocolKeepAliveResponse";
      goto LABEL_126;
    case 0xEuLL:
      if (iD != 1 || ![dataCopy length])
      {
        goto LABEL_128;
      }

      v11 = v10;
      v12 = @"APSProtocolDestination";
      goto LABEL_126;
    case 0xFuLL:
      if (iD != 1 || [dataCopy length] != 2)
      {
        goto LABEL_128;
      }

      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", bswap32(*[v10 bytes]) >> 16);
      v12 = @"APSProtocolFlushWantPadding";
      goto LABEL_126;
    case 0x12uLL:
      if (iD <= 2)
      {
        if (iD == 1)
        {
          if ([dataCopy length] != 1)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *[v10 bytes]);
          v12 = @"APSProtocolAppTokenGenerateResponse";
        }

        else
        {
          if (iD != 2)
          {
            goto LABEL_128;
          }

          v11 = dataCopy;
          v12 = @"APSProtocolAppTokenGenerateResponseToken";
        }

        goto LABEL_126;
      }

      if (iD == 3)
      {
        if ([dataCopy length] == 20 || objc_msgSend(v10, "length") == 32)
        {
          v11 = v10;
          v12 = @"APSProtocolAppTokenGenerateResponseTopicHash";
          goto LABEL_126;
        }
      }

      else if (iD == 4 && [dataCopy length] == 2)
      {
        v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[v10 bytes]) >> 16);
        v12 = @"APSProtocolAppTokenGenerateResponseAppId";
        goto LABEL_126;
      }

      goto LABEL_128;
    case 0x17uLL:
      if (iD == 9)
      {
LABEL_68:
        v11 = [[NSString alloc] initWithData:dataCopy encoding:4];
        v12 = @"APSProtocolRedirectReason";
      }

      else
      {
        if (iD != 2)
        {
          goto LABEL_128;
        }

LABEL_48:
        v11 = [[NSString alloc] initWithData:dataCopy encoding:4];
        v12 = @"APSProtocolServerMetadata";
      }

      goto LABEL_126;
    case 0x1DuLL:
      if (iD <= 2)
      {
        if (iD == 1)
        {
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[dataCopy bytes]));
          v12 = @"APSProtocolPubSubMessageID";
        }

        else
        {
          if (iD != 2)
          {
            goto LABEL_128;
          }

          v11 = dataCopy;
          v12 = @"APSProtocolPubSubPayload";
        }
      }

      else
      {
        switch(iD)
        {
          case 3uLL:
            v11 = dataCopy;
            v12 = @"APSProtocolPubSubToken";
            break;
          case 4uLL:
            v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *[dataCopy bytes]);
            v12 = @"APSProtocolPubSubStatus";
            break;
          case 5uLL:
            v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[dataCopy bytes]));
            v12 = @"APSProtocolPubSubTimeout";
            break;
          default:
            goto LABEL_128;
        }
      }

      goto LABEL_126;
    case 0x1EuLL:
      if (iD > 2)
      {
        if (iD == 3)
        {
          v11 = dataCopy;
          v12 = @"APSProtocolPubSubUpdateToken";
        }

        else
        {
          if (iD != 4)
          {
            goto LABEL_128;
          }

          v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[dataCopy bytes]));
          v12 = @"APSProtocolPubSubUpdateTimestamp";
        }
      }

      else if (iD == 1)
      {
        v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[dataCopy bytes]));
        v12 = @"APSPtotocolPubsubUpdateMessageID";
      }

      else
      {
        if (iD != 2)
        {
          goto LABEL_128;
        }

        v11 = dataCopy;
        v12 = @"APSProtocolPubSubUpdatePayload";
      }

      goto LABEL_126;
    case 0x20uLL:
      switch(iD)
      {
        case 1uLL:
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", bswap32(*[dataCopy bytes]));
          v12 = @"APSProtocolPresenceActivityMessageIDKey";
          break;
        case 3uLL:
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *[dataCopy bytes]);
          v12 = @"APSProtocolPresenceActivityStatusKey";
          break;
        case 2uLL:
          v11 = dataCopy;
          v12 = @"APSProtocolPresenceActivityPushTokenKey";
          break;
        default:
          goto LABEL_128;
      }

      goto LABEL_126;
    case 0x21uLL:
      switch(iD)
      {
        case 1uLL:
          v11 = dataCopy;
          v12 = @"APSProtocolFilterUpdateTokenKey";
          break;
        case 3uLL:
          v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *[dataCopy bytes]);
          v12 = @"APSProtocolFilterUpdateStatusKey";
          break;
        case 2uLL:
          v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", bswap64(*[dataCopy bytes]));
          v12 = @"APSProtocolFilterUpdateVersionKey";
          break;
        default:
          goto LABEL_128;
      }

LABEL_126:
      if (v11)
      {
        [parametersCopy setObject:v11 forKey:v12];
      }

LABEL_128:

      return;
    default:
      goto LABEL_128;
  }
}

@end
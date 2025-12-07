@interface MTRPushAVStreamTransportClusterAllocatePushTransportParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRPushAVStreamTransportClusterAllocatePushTransportParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterAllocatePushTransportParams

- (MTRPushAVStreamTransportClusterAllocatePushTransportParams)init
{
  v8.receiver = self;
  v8.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportParams;
  v2 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transportOptions = v2->_transportOptions;
    v2->_transportOptions = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterAllocatePushTransportParams);
  transportOptions = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)v4 setTransportOptions:transportOptions];

  timedInvokeTimeoutMs = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self timedInvokeTimeoutMs];
  [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self serverSideProcessingTimeout];
  [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: transportOptions:%@ >", v5, self->_transportOptions];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v186 = *MEMORY[0x277D85DE8];
  v156[0] = 0;
  v157 = 0;
  v159 = 0;
  v162 = 0;
  v166 = 0;
  v168 = 0;
  v171 = 0;
  unsignedCharValue = 0;
  unsignedCharValue2 = 0;
  v175 = 0;
  v179 = 0;
  memset(v161, 0, sizeof(v161));
  v155[0] = 0;
  v155[1] = 0;
  v154 = v155;
  transportOptions = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  streamUsage = [transportOptions streamUsage];
  v156[0] = [streamUsage unsignedCharValue];

  transportOptions2 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  videoStreamID = [transportOptions2 videoStreamID];
  v7 = videoStreamID == 0;

  if (!v7)
  {
    v157 = 1;
    v158 = 0;
    transportOptions3 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    videoStreamID2 = [transportOptions3 videoStreamID];
    v10 = videoStreamID2 == 0;

    if (v10)
    {
      if (BYTE2(v158) == 1)
      {
        BYTE2(v158) = 0;
      }
    }

    else
    {
      LOWORD(v158) = 0;
      BYTE2(v158) = 1;
      transportOptions4 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      videoStreamID3 = [transportOptions4 videoStreamID];
      LOWORD(v158) = [videoStreamID3 unsignedShortValue];
    }
  }

  transportOptions5 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  audioStreamID = [transportOptions5 audioStreamID];
  v15 = audioStreamID == 0;

  if (!v15)
  {
    v159 = 1;
    v160 = 0;
    transportOptions6 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    audioStreamID2 = [transportOptions6 audioStreamID];
    v18 = audioStreamID2 == 0;

    if (v18)
    {
      if (BYTE2(v160) == 1)
      {
        BYTE2(v160) = 0;
      }
    }

    else
    {
      LOWORD(v160) = 0;
      BYTE2(v160) = 1;
      transportOptions7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      audioStreamID3 = [transportOptions7 audioStreamID];
      LOWORD(v160) = [audioStreamID3 unsignedShortValue];
    }
  }

  transportOptions8 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  endpointID = [transportOptions8 endpointID];
  *v161 = [endpointID unsignedShortValue];

  transportOptions9 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  v24 = [transportOptions9 url];
  v25 = v24;
  sub_238DB9BD8(buf, [v24 UTF8String], objc_msgSend(v24, "lengthOfBytesUsingEncoding:", 4));

  *&v161[2] = *buf;
  transportOptions10 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  triggerOptions = [transportOptions10 triggerOptions];
  triggerType = [triggerOptions triggerType];
  v161[18] = [triggerType unsignedCharValue];

  transportOptions11 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  triggerOptions2 = [transportOptions11 triggerOptions];
  motionZones = [triggerOptions2 motionZones];
  v32 = motionZones == 0;

  if (!v32)
  {
    v162 = 1;
    v164 = 0;
    v165 = 0;
    v163 = 0;
    transportOptions12 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    triggerOptions3 = [transportOptions12 triggerOptions];
    motionZones2 = [triggerOptions3 motionZones];
    v36 = motionZones2 == 0;

    if (v36)
    {
      if (v165 == 1)
      {
        LOBYTE(v165) = 0;
      }
    }

    else
    {
      v163 = 0;
      v164 = 0;
      LOBYTE(v165) = 1;
      transportOptions13 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      triggerOptions4 = [transportOptions13 triggerOptions];
      motionZones3 = [triggerOptions4 motionZones];
      v40 = [motionZones3 count] == 0;

      if (!v40)
      {
        operator new();
      }

      v163 = 0;
      v164 = 0;
    }
  }

  transportOptions14 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  triggerOptions5 = [transportOptions14 triggerOptions];
  motionSensitivity = [triggerOptions5 motionSensitivity];
  v44 = motionSensitivity == 0;

  if (!v44)
  {
    v166 = 1;
    v167 = 0;
    transportOptions15 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    triggerOptions6 = [transportOptions15 triggerOptions];
    motionSensitivity2 = [triggerOptions6 motionSensitivity];
    v48 = motionSensitivity2 == 0;

    if (v48)
    {
      if (HIBYTE(v167) == 1)
      {
        HIBYTE(v167) = 0;
      }
    }

    else
    {
      v167 = 256;
      transportOptions16 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      triggerOptions7 = [transportOptions16 triggerOptions];
      motionSensitivity3 = [triggerOptions7 motionSensitivity];
      LOBYTE(v167) = [motionSensitivity3 unsignedCharValue];
    }
  }

  transportOptions17 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  triggerOptions8 = [transportOptions17 triggerOptions];
  motionTimeControl = [triggerOptions8 motionTimeControl];
  v55 = motionTimeControl == 0;

  if (!v55)
  {
    v168 = 1;
    v169 = 0;
    v170 = 0;
    transportOptions18 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    triggerOptions9 = [transportOptions18 triggerOptions];
    motionTimeControl2 = [triggerOptions9 motionTimeControl];
    initialDuration = [motionTimeControl2 initialDuration];
    LOWORD(v169) = [initialDuration unsignedShortValue];

    transportOptions19 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    triggerOptions10 = [transportOptions19 triggerOptions];
    motionTimeControl3 = [triggerOptions10 motionTimeControl];
    augmentationDuration = [motionTimeControl3 augmentationDuration];
    WORD1(v169) = [augmentationDuration unsignedShortValue];

    transportOptions20 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    triggerOptions11 = [transportOptions20 triggerOptions];
    motionTimeControl4 = [triggerOptions11 motionTimeControl];
    maxDuration = [motionTimeControl4 maxDuration];
    HIDWORD(v169) = [maxDuration unsignedIntValue];

    transportOptions21 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    triggerOptions12 = [transportOptions21 triggerOptions];
    motionTimeControl5 = [triggerOptions12 motionTimeControl];
    blindDuration = [motionTimeControl5 blindDuration];
    LOWORD(v170) = [blindDuration unsignedShortValue];
  }

  transportOptions22 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  triggerOptions13 = [transportOptions22 triggerOptions];
  maxPreRollLen = [triggerOptions13 maxPreRollLen];
  v75 = maxPreRollLen == 0;

  if (!v75)
  {
    v171 = 1;
    unsignedShortValue = 0;
    transportOptions23 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    triggerOptions14 = [transportOptions23 triggerOptions];
    maxPreRollLen2 = [triggerOptions14 maxPreRollLen];
    unsignedShortValue = [maxPreRollLen2 unsignedShortValue];
  }

  transportOptions24 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  ingestMethod = [transportOptions24 ingestMethod];
  unsignedCharValue = [ingestMethod unsignedCharValue];

  transportOptions25 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  containerOptions = [transportOptions25 containerOptions];
  containerType = [containerOptions containerType];
  unsignedCharValue2 = [containerType unsignedCharValue];

  transportOptions26 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  containerOptions2 = [transportOptions26 containerOptions];
  cmafContainerOptions = [containerOptions2 cmafContainerOptions];
  v87 = cmafContainerOptions == 0;

  if (!v87)
  {
    v175 = 1;
    memset(v176, 0, sizeof(v176));
    v177 = 0u;
    memset(v178, 0, sizeof(v178));
    transportOptions27 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    containerOptions3 = [transportOptions27 containerOptions];
    cmafContainerOptions2 = [containerOptions3 cmafContainerOptions];
    cmafInterface = [cmafContainerOptions2 cmafInterface];
    LOBYTE(v176[0]) = [cmafInterface unsignedCharValue];

    transportOptions28 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    containerOptions4 = [transportOptions28 containerOptions];
    cmafContainerOptions3 = [containerOptions4 cmafContainerOptions];
    segmentDuration = [cmafContainerOptions3 segmentDuration];
    WORD1(v176[0]) = [segmentDuration unsignedShortValue];

    transportOptions29 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    containerOptions5 = [transportOptions29 containerOptions];
    cmafContainerOptions4 = [containerOptions5 cmafContainerOptions];
    chunkDuration = [cmafContainerOptions4 chunkDuration];
    WORD2(v176[0]) = [chunkDuration unsignedShortValue];

    transportOptions30 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    containerOptions6 = [transportOptions30 containerOptions];
    cmafContainerOptions5 = [containerOptions6 cmafContainerOptions];
    sessionGroup = [cmafContainerOptions5 sessionGroup];
    BYTE6(v176[0]) = [sessionGroup unsignedCharValue];

    transportOptions31 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    containerOptions7 = [transportOptions31 containerOptions];
    cmafContainerOptions6 = [containerOptions7 cmafContainerOptions];
    trackName = [cmafContainerOptions6 trackName];
    v108 = trackName;
    sub_238DB9BD8(buf, [trackName UTF8String], objc_msgSend(trackName, "lengthOfBytesUsingEncoding:", 4));

    *&v176[1] = *buf;
    transportOptions32 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    containerOptions8 = [transportOptions32 containerOptions];
    cmafContainerOptions7 = [containerOptions8 cmafContainerOptions];
    cencKey = [cmafContainerOptions7 cencKey];
    v113 = cencKey == 0;

    if (!v113)
    {
      LOBYTE(v176[3]) = 1;
      v177 = 0uLL;
      transportOptions33 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      containerOptions9 = [transportOptions33 containerOptions];
      cmafContainerOptions8 = [containerOptions9 cmafContainerOptions];
      cencKey2 = [cmafContainerOptions8 cencKey];
      v118 = cencKey2;
      sub_238DB6950(buf, [cencKey2 bytes], objc_msgSend(cencKey2, "length"));

      v177 = *buf;
    }

    transportOptions34 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    containerOptions10 = [transportOptions34 containerOptions];
    cmafContainerOptions9 = [containerOptions10 cmafContainerOptions];
    cencKeyID = [cmafContainerOptions9 cencKeyID];
    v123 = cencKeyID == 0;

    if (!v123)
    {
      LOBYTE(v178[0]) = 1;
      *&v178[1] = 0uLL;
      transportOptions35 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      containerOptions11 = [transportOptions35 containerOptions];
      cmafContainerOptions10 = [containerOptions11 cmafContainerOptions];
      cencKeyID2 = [cmafContainerOptions10 cencKeyID];
      v128 = cencKeyID2;
      sub_238DB6950(buf, [cencKeyID2 bytes], objc_msgSend(cencKeyID2, "length"));

      *&v178[1] = *buf;
    }

    transportOptions36 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    containerOptions12 = [transportOptions36 containerOptions];
    cmafContainerOptions11 = [containerOptions12 cmafContainerOptions];
    metadataEnabled = [cmafContainerOptions11 metadataEnabled];
    v133 = metadataEnabled == 0;

    if (!v133)
    {
      LOWORD(v178[3]) = 1;
      transportOptions37 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
      containerOptions13 = [transportOptions37 containerOptions];
      cmafContainerOptions12 = [containerOptions13 cmafContainerOptions];
      metadataEnabled2 = [cmafContainerOptions12 metadataEnabled];
      BYTE1(v178[3]) = [metadataEnabled2 BOOLValue];
    }
  }

  transportOptions38 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
  expiryTime = [transportOptions38 expiryTime];
  v140 = expiryTime == 0;

  if (!v140)
  {
    v179 = 1;
    unsignedIntValue = 0;
    transportOptions39 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self transportOptions];
    expiryTime2 = [transportOptions39 expiryTime];
    unsignedIntValue = [expiryTime2 unsignedIntValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v153);
  if (v153)
  {
    sub_2393C7B90(buf);
    v183 = 0;
    v184 = 0;
    v182 = &unk_284BB83A8;
    v185 = 0;
    sub_238EA16C4(&v182, &v153, 0);
    sub_2393C7BF0(buf, &v182, 0xFFFFFFFF);
    v143 = sub_238F24A40(v156, buf, 0x100uLL);
    v145 = v143;
    if (v143 || (v143 = sub_238DD2EFC(buf, &v153), v145 = v143, v143))
    {
      v146 = v144;
    }

    else
    {
      sub_238DD2F90(reader, &v153);
      v143 = sub_2393C7114(reader, 21, 256);
      v146 = v150;
      v145 = v143;
    }

    v147 = v143 & 0xFFFFFFFF00000000;
    v182 = &unk_284BB83A8;
    sub_238EA1758(&v184);
    sub_238EA1758(&v183);
  }

  else
  {
    v146 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v147 = 0x924600000000;
    v145 = 11;
  }

  sub_238EA1758(&v153);
  sub_238EA1790(&v154);
  v148 = v147 | v145;
  v149 = v146;
  result.mFile = v149;
  result.mError = v148;
  result.mLine = HIDWORD(v148);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x926300000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end
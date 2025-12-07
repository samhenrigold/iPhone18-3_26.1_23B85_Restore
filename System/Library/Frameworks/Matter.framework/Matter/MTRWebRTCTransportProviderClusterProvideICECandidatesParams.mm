@interface MTRWebRTCTransportProviderClusterProvideICECandidatesParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRWebRTCTransportProviderClusterProvideICECandidatesParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRWebRTCTransportProviderClusterProvideICECandidatesParams

- (MTRWebRTCTransportProviderClusterProvideICECandidatesParams)init
{
  v10.receiver = self;
  v10.super_class = MTRWebRTCTransportProviderClusterProvideICECandidatesParams;
  v2 = [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    webRTCSessionID = v2->_webRTCSessionID;
    v2->_webRTCSessionID = &unk_284C3E4C8;

    array = [MEMORY[0x277CBEA60] array];
    iceCandidates = v3->_iceCandidates;
    v3->_iceCandidates = array;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWebRTCTransportProviderClusterProvideICECandidatesParams);
  webRTCSessionID = [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)self webRTCSessionID];
  [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)v4 setWebRTCSessionID:webRTCSessionID];

  iceCandidates = [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)self iceCandidates];
  [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)v4 setIceCandidates:iceCandidates];

  timedInvokeTimeoutMs = [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)self timedInvokeTimeoutMs];
  [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)self serverSideProcessingTimeout];
  [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: webRTCSessionID:%@ iceCandidates:%@; >", v5, self->_webRTCSessionID, self->_iceCandidates];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v27 = *MEMORY[0x277D85DE8];
  unsignedShortValue = 0;
  v20 = 0;
  v21 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  webRTCSessionID = [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)self webRTCSessionID];
  unsignedShortValue = [webRTCSessionID unsignedShortValue];

  iceCandidates = [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)self iceCandidates];
  v6 = [iceCandidates count] == 0;

  if (!v6)
  {
    operator new();
  }

  v20 = 0;
  v21 = 0;
  sub_2393D9C18(0x62FuLL, 0, &v16);
  if (v16)
  {
    sub_2393C7B90(buf);
    v24 = 0;
    v25 = 0;
    v23 = &unk_284BB83A8;
    v26 = 0;
    sub_238EA16C4(&v23, &v16, 0);
    sub_2393C7BF0(buf, &v23, 0xFFFFFFFF);
    v7 = sub_238F33964(&unsignedShortValue, buf, 0x100uLL);
    v9 = v7;
    if (v7 || (v7 = sub_238DD2EFC(buf, &v16), v9 = v7, v7))
    {
      v10 = v8;
    }

    else
    {
      sub_238DD2F90(reader, &v16);
      v7 = sub_2393C7114(reader, 21, 256);
      v10 = v14;
      v9 = v7;
    }

    v11 = v7 & 0xFFFFFFFF00000000;
    v23 = &unk_284BB83A8;
    sub_238EA1758(&v25);
    sub_238EA1758(&v24);
  }

  else
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v11 = 0x8F7700000000;
    v9 = 11;
  }

  sub_238EA1758(&v16);
  sub_238EA1790(&v17);
  v12 = v11 | v9;
  v13 = v10;
  result.mFile = v13;
  result.mError = v12;
  result.mLine = HIDWORD(v12);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRWebRTCTransportProviderClusterProvideICECandidatesParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x8F9400000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end
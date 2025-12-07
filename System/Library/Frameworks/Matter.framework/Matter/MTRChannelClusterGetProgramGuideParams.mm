@interface MTRChannelClusterGetProgramGuideParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRChannelClusterGetProgramGuideParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterGetProgramGuideParams

- (MTRChannelClusterGetProgramGuideParams)init
{
  v14.receiver = self;
  v14.super_class = MTRChannelClusterGetProgramGuideParams;
  v2 = [(MTRChannelClusterGetProgramGuideParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    startTime = v2->_startTime;
    v2->_startTime = 0;

    endTime = v3->_endTime;
    v3->_endTime = 0;

    channelList = v3->_channelList;
    v3->_channelList = 0;

    pageToken = v3->_pageToken;
    v3->_pageToken = 0;

    recordingFlag = v3->_recordingFlag;
    v3->_recordingFlag = 0;

    externalIDList = v3->_externalIDList;
    v3->_externalIDList = 0;

    data = v3->_data;
    v3->_data = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterGetProgramGuideParams);
  startTime = [(MTRChannelClusterGetProgramGuideParams *)self startTime];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setStartTime:startTime];

  endTime = [(MTRChannelClusterGetProgramGuideParams *)self endTime];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setEndTime:endTime];

  channelList = [(MTRChannelClusterGetProgramGuideParams *)self channelList];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setChannelList:channelList];

  pageToken = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setPageToken:pageToken];

  recordingFlag = [(MTRChannelClusterGetProgramGuideParams *)self recordingFlag];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setRecordingFlag:recordingFlag];

  externalIDList = [(MTRChannelClusterGetProgramGuideParams *)self externalIDList];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setExternalIDList:externalIDList];

  data = [(MTRChannelClusterGetProgramGuideParams *)self data];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setData:data];

  timedInvokeTimeoutMs = [(MTRChannelClusterGetProgramGuideParams *)self timedInvokeTimeoutMs];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRChannelClusterGetProgramGuideParams *)self serverSideProcessingTimeout];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  startTime = self->_startTime;
  endTime = self->_endTime;
  channelList = self->_channelList;
  pageToken = self->_pageToken;
  recordingFlag = self->_recordingFlag;
  externalIDList = self->_externalIDList;
  v12 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v13 = [v3 stringWithFormat:@"<%@: startTime:%@ endTime:%@; channelList:%@; pageToken:%@; recordingFlag:%@; externalIDList:%@; data:%@; >", v5, startTime, endTime, channelList, pageToken, recordingFlag, externalIDList, v12];;

  return v13;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v79 = *MEMORY[0x277D85DE8];
  v56[0] = 0;
  v58 = 0;
  v60 = 0;
  v63 = 0;
  v67 = 0;
  v69 = 0;
  v72 = 0;
  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  startTime = [(MTRChannelClusterGetProgramGuideParams *)self startTime];
  v5 = startTime == 0;

  if (!v5)
  {
    v56[0] = 1;
    unsignedIntValue = 0;
    startTime2 = [(MTRChannelClusterGetProgramGuideParams *)self startTime];
    unsignedIntValue = [startTime2 unsignedIntValue];
  }

  endTime = [(MTRChannelClusterGetProgramGuideParams *)self endTime];
  v8 = endTime == 0;

  if (!v8)
  {
    v58 = 1;
    unsignedIntValue2 = 0;
    endTime2 = [(MTRChannelClusterGetProgramGuideParams *)self endTime];
    unsignedIntValue2 = [endTime2 unsignedIntValue];
  }

  channelList = [(MTRChannelClusterGetProgramGuideParams *)self channelList];
  v11 = channelList == 0;

  if (!v11)
  {
    v60 = 1;
    v61 = 0;
    v62 = 0;
    channelList2 = [(MTRChannelClusterGetProgramGuideParams *)self channelList];
    v13 = [channelList2 count] == 0;

    if (!v13)
    {
      operator new();
    }

    v61 = 0;
    v62 = 0;
  }

  pageToken = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
  v15 = pageToken == 0;

  if (!v15)
  {
    v63 = 1;
    v64 = 0u;
    v65 = 0u;
    memset(v66, 0, sizeof(v66));
    pageToken2 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
    limit = [pageToken2 limit];
    v18 = limit == 0;

    if (!v18)
    {
      LOBYTE(v64) = 1;
      WORD1(v64) = 0;
      pageToken3 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
      limit2 = [pageToken3 limit];
      WORD1(v64) = [limit2 unsignedShortValue];
    }

    pageToken4 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
    after = [pageToken4 after];
    v23 = after == 0;

    if (!v23)
    {
      BYTE8(v64) = 1;
      v65 = 0uLL;
      pageToken5 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
      after2 = [pageToken5 after];
      v26 = after2;
      sub_238DB9BD8(buf, [after2 UTF8String], objc_msgSend(after2, "lengthOfBytesUsingEncoding:", 4));

      v65 = *buf;
    }

    pageToken6 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
    before = [pageToken6 before];
    v29 = before == 0;

    if (!v29)
    {
      v66[0] = 1;
      *&v66[8] = 0;
      *&v66[16] = 0;
      pageToken7 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
      before2 = [pageToken7 before];
      v32 = before2;
      sub_238DB9BD8(buf, [before2 UTF8String], objc_msgSend(before2, "lengthOfBytesUsingEncoding:", 4));

      *&v66[8] = *buf;
    }
  }

  recordingFlag = [(MTRChannelClusterGetProgramGuideParams *)self recordingFlag];
  v34 = recordingFlag == 0;

  if (!v34)
  {
    v67 = 1;
    unsignedIntValue3 = 0;
    recordingFlag2 = [(MTRChannelClusterGetProgramGuideParams *)self recordingFlag];
    unsignedIntValue3 = [recordingFlag2 unsignedIntValue];
  }

  externalIDList = [(MTRChannelClusterGetProgramGuideParams *)self externalIDList];
  v37 = externalIDList == 0;

  if (!v37)
  {
    v69 = 1;
    v70 = 0;
    v71 = 0;
    externalIDList2 = [(MTRChannelClusterGetProgramGuideParams *)self externalIDList];
    v39 = [externalIDList2 count] == 0;

    if (!v39)
    {
      operator new();
    }

    v70 = 0;
    v71 = 0;
  }

  data = [(MTRChannelClusterGetProgramGuideParams *)self data];
  v41 = data == 0;

  if (!v41)
  {
    v72 = 1;
    v73 = 0uLL;
    data2 = [(MTRChannelClusterGetProgramGuideParams *)self data];
    v43 = data2;
    sub_238DB6950(buf, [data2 bytes], objc_msgSend(data2, "length"));

    v73 = *buf;
  }

  sub_2393D9C18(0x62FuLL, 0, &v53);
  if (v53)
  {
    sub_2393C7B90(buf);
    v76 = 0;
    v77 = 0;
    v75 = &unk_284BB83A8;
    v78 = 0;
    sub_238EA16C4(&v75, &v53, 0);
    sub_2393C7BF0(buf, &v75, 0xFFFFFFFF);
    v44 = sub_238F05BE4(v56, buf, 0x100uLL);
    v46 = v44;
    if (v44 || (v44 = sub_238DD2EFC(buf, &v53), v46 = v44, v44))
    {
      v47 = v45;
    }

    else
    {
      sub_238DD2F90(reader, &v53);
      v44 = sub_2393C7114(reader, 21, 256);
      v47 = v51;
      v46 = v44;
    }

    v48 = v44 & 0xFFFFFFFF00000000;
    v75 = &unk_284BB83A8;
    sub_238EA1758(&v77);
    sub_238EA1758(&v76);
  }

  else
  {
    v47 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v48 = 0x6E0B00000000;
    v46 = 11;
  }

  sub_238EA1758(&v53);
  sub_238EA1790(&v54);
  v49 = v46 | v48;
  v50 = v47;
  result.mFile = v50;
  result.mError = v49;
  result.mLine = HIDWORD(v49);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRChannelClusterGetProgramGuideParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x6E2800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end
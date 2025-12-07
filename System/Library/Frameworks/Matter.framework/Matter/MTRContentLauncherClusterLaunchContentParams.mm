@interface MTRContentLauncherClusterLaunchContentParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRContentLauncherClusterLaunchContentParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentLauncherClusterLaunchContentParams

- (MTRContentLauncherClusterLaunchContentParams)init
{
  v12.receiver = self;
  v12.super_class = MTRContentLauncherClusterLaunchContentParams;
  v2 = [(MTRContentLauncherClusterLaunchContentParams *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    search = v2->_search;
    v2->_search = v3;

    autoPlay = v2->_autoPlay;
    v2->_autoPlay = &unk_284C3E4C8;

    data = v2->_data;
    v2->_data = 0;

    playbackPreferences = v2->_playbackPreferences;
    v2->_playbackPreferences = 0;

    useCurrentContext = v2->_useCurrentContext;
    v2->_useCurrentContext = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentLauncherClusterLaunchContentParams);
  search = [(MTRContentLauncherClusterLaunchContentParams *)self search];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setSearch:search];

  autoPlay = [(MTRContentLauncherClusterLaunchContentParams *)self autoPlay];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setAutoPlay:autoPlay];

  data = [(MTRContentLauncherClusterLaunchContentParams *)self data];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setData:data];

  playbackPreferences = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setPlaybackPreferences:playbackPreferences];

  useCurrentContext = [(MTRContentLauncherClusterLaunchContentParams *)self useCurrentContext];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setUseCurrentContext:useCurrentContext];

  timedInvokeTimeoutMs = [(MTRContentLauncherClusterLaunchContentParams *)self timedInvokeTimeoutMs];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRContentLauncherClusterLaunchContentParams *)self serverSideProcessingTimeout];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: search:%@ autoPlay:%@; data:%@; playbackPreferences:%@; useCurrentContext:%@; >", v5, self->_search, self->_autoPlay, self->_data, self->_playbackPreferences, self->_useCurrentContext];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v66 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v55 = 0;
  LOBYTE(v60) = 0;
  v51 = 0uLL;
  bOOLValue = 0;
  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  search = [(MTRContentLauncherClusterLaunchContentParams *)self search];
  parameterList = [search parameterList];
  v5 = [parameterList count] == 0;

  if (!v5)
  {
    operator new();
  }

  v51 = 0uLL;
  autoPlay = [(MTRContentLauncherClusterLaunchContentParams *)self autoPlay];
  bOOLValue = [autoPlay BOOLValue];

  data = [(MTRContentLauncherClusterLaunchContentParams *)self data];
  v8 = data == 0;

  if (!v8)
  {
    v53 = 1;
    v54 = 0uLL;
    data2 = [(MTRContentLauncherClusterLaunchContentParams *)self data];
    v10 = data2;
    sub_238DB9BD8(buf, [data2 UTF8String], objc_msgSend(data2, "lengthOfBytesUsingEncoding:", 4));

    v54 = *buf;
  }

  playbackPreferences = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
  v12 = playbackPreferences == 0;

  if (!v12)
  {
    v55 = 1;
    memset(v56, 0, sizeof(v56));
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    playbackPreferences2 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    playbackPosition = [playbackPreferences2 playbackPosition];
    *&v56[0] = [playbackPosition unsignedLongLongValue];

    playbackPreferences3 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    textTrack = [playbackPreferences3 textTrack];
    languageCode = [textTrack languageCode];
    v18 = languageCode;
    sub_238DB9BD8(buf, [languageCode UTF8String], objc_msgSend(languageCode, "lengthOfBytesUsingEncoding:", 4));

    *(v56 + 8) = *buf;
    playbackPreferences4 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    textTrack2 = [playbackPreferences4 textTrack];
    characteristics = [textTrack2 characteristics];
    v22 = characteristics == 0;

    if (!v22)
    {
      BYTE8(v56[1]) = 1;
      v57 = 0uLL;
      playbackPreferences5 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
      textTrack3 = [playbackPreferences5 textTrack];
      characteristics2 = [textTrack3 characteristics];
      v26 = [characteristics2 count] == 0;

      if (!v26)
      {
        operator new();
      }

      v57 = 0uLL;
    }

    playbackPreferences6 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    textTrack4 = [playbackPreferences6 textTrack];
    audioOutputIndex = [textTrack4 audioOutputIndex];
    LOBYTE(v58) = [audioOutputIndex unsignedCharValue];

    playbackPreferences7 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    audioTracks = [playbackPreferences7 audioTracks];
    v32 = audioTracks == 0;

    if (!v32)
    {
      BYTE8(v58) = 1;
      v59 = 0uLL;
      playbackPreferences8 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
      audioTracks2 = [playbackPreferences8 audioTracks];
      v35 = [audioTracks2 count] == 0;

      if (!v35)
      {
        operator new();
      }

      v59 = 0uLL;
    }
  }

  useCurrentContext = [(MTRContentLauncherClusterLaunchContentParams *)self useCurrentContext];
  v37 = useCurrentContext == 0;

  if (!v37)
  {
    v60 = 1;
    useCurrentContext2 = [(MTRContentLauncherClusterLaunchContentParams *)self useCurrentContext];
    HIBYTE(v60) = [useCurrentContext2 BOOLValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v48);
  if (v48)
  {
    sub_2393C7B90(buf);
    v63 = 0;
    v64 = 0;
    v62 = &unk_284BB83A8;
    v65 = 0;
    sub_238EA16C4(&v62, &v48, 0);
    sub_2393C7BF0(buf, &v62, 0xFFFFFFFF);
    v40 = sub_238F0D1F4(&v51, buf, 0x100uLL);
    v41 = v40;
    if (v40 || (v40 = sub_238DD2EFC(buf, &v48), v41 = v40, v40))
    {
      v42 = v39;
    }

    else
    {
      sub_238DD2F90(reader, &v48);
      v40 = sub_2393C7114(reader, 21, 256);
      v42 = v45;
      v41 = v40;
    }

    v62 = &unk_284BB83A8;
    sub_238EA1758(&v64);
    sub_238EA1758(&v63);
  }

  else
  {
    v42 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v40 = 0x793F00000000;
    v41 = 11;
  }

  sub_238EA1758(&v48);
  sub_238EA1790(&v49);
  v43 = v40 & 0xFFFFFFFF00000000 | v41;
  v44 = v42;
  result.mFile = v44;
  result.mError = v43;
  result.mLine = HIDWORD(v43);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRContentLauncherClusterLaunchContentParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x795C00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end
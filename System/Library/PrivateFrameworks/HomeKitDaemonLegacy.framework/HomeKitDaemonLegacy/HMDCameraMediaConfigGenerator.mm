@interface HMDCameraMediaConfigGenerator
+ (id)logCategory;
- (BOOL)_loadAVCAudioStreamConfig:(id)config protocolParameters:(id)parameters;
- (BOOL)_loadAVCVideoStreamConfig:(id)config protocolParameters:(id)parameters;
- (BOOL)_loadConfig:(id)config cipherCuite:(id)cuite;
- (BOOL)extractReselectedConfigFromVideoTier:(id)tier videoStreamConfig:(id *)config;
- (BOOL)extractSelectedConfigFromProtocolParameters:(id)parameters videoStreamConfig:(id *)config audioStreamConfig:(id *)streamConfig;
- (void)_loadConfig:(id)config sendSrtpParameters:(id)parameters receiveSrtpParameters:(id)srtpParameters;
- (void)_loadMiscConfig:(id)config;
@end

@implementation HMDCameraMediaConfigGenerator

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_46749 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_46749, &__block_literal_global_46750);
  }

  v3 = logCategory__hmf_once_v9_46751;

  return v3;
}

uint64_t __44__HMDCameraMediaConfigGenerator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v9_46751;
  logCategory__hmf_once_v9_46751 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_loadMiscConfig:(id)config
{
  configCopy = config;
  [configCopy setRtcpEnabled:1];
  [configCopy setRtcpTimeOutEnabled:1];
  [configCopy setRtcpTimeOutInterval:30.0];
  [configCopy setRtpTimeOutEnabled:1];
  [configCopy setRtpTimeOutInterval:30.0];
  [configCopy setRateAdaptationEnabled:1];
}

- (BOOL)_loadConfig:(id)config cipherCuite:(id)cuite
{
  configCopy = config;
  srtpCryptoSuite = [cuite srtpCryptoSuite];
  v7 = (&unk_253D4BD28 + 8 * srtpCryptoSuite);
  if (srtpCryptoSuite >= 3)
  {
    v7 = &kIPCameraUnknownParameter;
  }

  v8 = *v7;
  if (*v7 != -1)
  {
    [configCopy setSRTPCipherSuite:*v7];
    [configCopy setSRTCPCipherSuite:v8];
  }

  return v8 != -1;
}

- (void)_loadConfig:(id)config sendSrtpParameters:(id)parameters receiveSrtpParameters:(id)srtpParameters
{
  srtpParametersCopy = srtpParameters;
  parametersCopy = parameters;
  configCopy = config;
  srtpMasterKey = [parametersCopy srtpMasterKey];
  v11 = [srtpMasterKey mutableCopy];

  srtpMasterSalt = [parametersCopy srtpMasterSalt];

  [v11 appendData:srtpMasterSalt];
  [configCopy setSendMasterKey:v11];
  srtpMasterKey2 = [srtpParametersCopy srtpMasterKey];
  v15 = [srtpMasterKey2 mutableCopy];

  srtpMasterSalt2 = [srtpParametersCopy srtpMasterSalt];

  [v15 appendData:srtpMasterSalt2];
  [configCopy setReceiveMasterKey:v15];
}

- (BOOL)extractReselectedConfigFromVideoTier:(id)tier videoStreamConfig:(id *)config
{
  v28 = *MEMORY[0x277D85DE8];
  tierCopy = tier;
  v6 = objc_alloc_init(HMDVideoStreamConfig);
  videoResolution = [tierCopy videoResolution];
  resolutionType = [videoResolution resolutionType];
  if ((resolutionType - 1) >= 0x1D)
  {
    v9 = &kIPCameraUnknownParameter;
  }

  else
  {
    v9 = (&unk_253D4BC40 + 8 * resolutionType - 8);
  }

  v10 = *v9;

  if (v10 == -1)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to translate image resolution", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

  else
  {
    video = [(AVCMediaStreamConfig *)v6 video];
    [video setVideoResolution:v10];

    framerate = [tierCopy framerate];
    unsignedIntegerValue = [framerate unsignedIntegerValue];
    video2 = [(AVCMediaStreamConfig *)v6 video];
    [video2 setFramerate:unsignedIntegerValue];

    maxBitRate = [tierCopy maxBitRate];
    unsignedIntegerValue2 = [maxBitRate unsignedIntegerValue];
    video3 = [(AVCMediaStreamConfig *)v6 video];
    [video3 setRxMaxBitrate:unsignedIntegerValue2];

    minBitRate = [tierCopy minBitRate];
    unsignedIntegerValue3 = [minBitRate unsignedIntegerValue];
    video4 = [(AVCMediaStreamConfig *)v6 video];
    [video4 setRxMinBitrate:unsignedIntegerValue3];

    v21 = v6;
    *config = v6;
  }

  return v10 != -1;
}

- (BOOL)_loadAVCVideoStreamConfig:(id)config protocolParameters:(id)parameters
{
  v104 = *MEMORY[0x277D85DE8];
  configCopy = config;
  parametersCopy = parameters;
  selectedStreamConfigurationWrite = [parametersCopy selectedStreamConfigurationWrite];
  videoParameters = [selectedStreamConfigurationWrite videoParameters];
  codec = [videoParameters codec];
  codecType = [codec codecType];

  if (codecType)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      selectedStreamConfigurationWrite2 = [parametersCopy selectedStreamConfigurationWrite];
      videoParameters2 = [selectedStreamConfigurationWrite2 videoParameters];
      codec2 = [videoParameters2 codec];
      v100 = 138543618;
      v101 = v14;
      v102 = 2048;
      decodedNumber = [codec2 decodedNumber];
      v18 = "%{public}@Failed to translate to video codec type from %lu";
LABEL_4:
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, v18, &v100, 0x16u);

LABEL_5:
    }
  }

  else
  {
    video = [configCopy video];
    [video setTxCodecType:0];

    video2 = [configCopy video];
    [video2 setRxCodecType:0];

    selectedStreamConfigurationWrite3 = [parametersCopy selectedStreamConfigurationWrite];
    videoParameters3 = [selectedStreamConfigurationWrite3 videoParameters];
    rtpParameters = [videoParameters3 rtpParameters];
    payloadType = [rtpParameters payloadType];
    [configCopy setTxPayloadType:{objc_msgSend(payloadType, "unsignedIntegerValue")}];

    selectedStreamConfigurationWrite4 = [parametersCopy selectedStreamConfigurationWrite];
    videoParameters4 = [selectedStreamConfigurationWrite4 videoParameters];
    rtpParameters2 = [videoParameters4 rtpParameters];
    payloadType2 = [rtpParameters2 payloadType];
    [configCopy setRxPayloadType:{objc_msgSend(payloadType2, "unsignedIntegerValue")}];

    [configCopy setDirection:2];
    selectedStreamConfigurationWrite5 = [parametersCopy selectedStreamConfigurationWrite];
    videoParameters5 = [selectedStreamConfigurationWrite5 videoParameters];
    videoAttributes = [videoParameters5 videoAttributes];
    videoResolution = [videoAttributes videoResolution];
    resolutionType = [videoResolution resolutionType];
    if ((resolutionType - 1) >= 0x1D)
    {
      v36 = &kIPCameraUnknownParameter;
    }

    else
    {
      v36 = (&unk_253D4BC40 + 8 * resolutionType - 8);
    }

    v37 = *v36;

    if (v37 == -1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v14 = HMFGetLogIdentifier();
      v100 = 138543362;
      v101 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to translate image resolution", &v100, 0xCu);
      goto LABEL_5;
    }

    video3 = [configCopy video];
    [video3 setVideoResolution:v37];

    selectedStreamConfigurationWrite6 = [parametersCopy selectedStreamConfigurationWrite];
    videoParameters6 = [selectedStreamConfigurationWrite6 videoParameters];
    videoAttributes2 = [videoParameters6 videoAttributes];
    framerate = [videoAttributes2 framerate];
    unsignedIntegerValue = [framerate unsignedIntegerValue];
    video4 = [configCopy video];
    [video4 setFramerate:unsignedIntegerValue];

    selectedStreamConfigurationWrite7 = [parametersCopy selectedStreamConfigurationWrite];
    videoParameters7 = [selectedStreamConfigurationWrite7 videoParameters];
    rtpParameters3 = [videoParameters7 rtpParameters];
    maximumBitrate = [rtpParameters3 maximumBitrate];
    unsignedIntegerValue2 = [maximumBitrate unsignedIntegerValue];
    video5 = [configCopy video];
    [video5 setRxMaxBitrate:unsignedIntegerValue2];

    selectedStreamConfigurationWrite8 = [parametersCopy selectedStreamConfigurationWrite];
    videoParameters8 = [selectedStreamConfigurationWrite8 videoParameters];
    rtpParameters4 = [videoParameters8 rtpParameters];
    minimumBitrate = [rtpParameters4 minimumBitrate];
    unsignedIntegerValue3 = [minimumBitrate unsignedIntegerValue];
    video6 = [configCopy video];
    [video6 setRxMinBitrate:unsignedIntegerValue3];

    selectedStreamConfigurationWrite9 = [parametersCopy selectedStreamConfigurationWrite];
    videoParameters9 = [selectedStreamConfigurationWrite9 videoParameters];
    rtpParameters5 = [videoParameters9 rtpParameters];
    rtcpInterval = [rtpParameters5 rtcpInterval];
    [rtcpInterval floatValue];
    [configCopy setRtcpSendInterval:v61];

    setupEndPointWrite = [parametersCopy setupEndPointWrite];
    address = [setupEndPointWrite address];
    ipAddress = [address ipAddress];
    localAddress = [configCopy localAddress];
    [localAddress setIp:ipAddress];

    setupEndPointWrite2 = [parametersCopy setupEndPointWrite];
    address2 = [setupEndPointWrite2 address];
    videoRTPPort = [address2 videoRTPPort];
    unsignedShortValue = [videoRTPPort unsignedShortValue];
    localAddress2 = [configCopy localAddress];
    [localAddress2 setPort:unsignedShortValue];

    setupEndPointWrite3 = [parametersCopy setupEndPointWrite];
    address3 = [setupEndPointWrite3 address];
    isIPv6Address = [address3 isIPv6Address];
    localAddress3 = [configCopy localAddress];
    [localAddress3 setIsIPv6:isIPv6Address];

    setupEndPointRead = [parametersCopy setupEndPointRead];
    address4 = [setupEndPointRead address];
    ipAddress2 = [address4 ipAddress];
    remoteAddress = [configCopy remoteAddress];
    [remoteAddress setIp:ipAddress2];

    setupEndPointRead2 = [parametersCopy setupEndPointRead];
    address5 = [setupEndPointRead2 address];
    videoRTPPort2 = [address5 videoRTPPort];
    unsignedShortValue2 = [videoRTPPort2 unsignedShortValue];
    remoteAddress2 = [configCopy remoteAddress];
    [remoteAddress2 setPort:unsignedShortValue2];

    setupEndPointRead3 = [parametersCopy setupEndPointRead];
    address6 = [setupEndPointRead3 address];
    isIPv6Address2 = [address6 isIPv6Address];
    remoteAddress3 = [configCopy remoteAddress];
    [remoteAddress3 setIsIPv6:isIPv6Address2];

    setupEndPointRead4 = [parametersCopy setupEndPointRead];
    address7 = [setupEndPointRead4 address];
    videoRTPPort3 = [address7 videoRTPPort];
    [configCopy setRtcpRemotePort:{objc_msgSend(videoRTPPort3, "unsignedShortValue")}];

    setupEndPointRead5 = [parametersCopy setupEndPointRead];
    videoSrtpParameters = [setupEndPointRead5 videoSrtpParameters];
    srtpCryptoSuite = [videoSrtpParameters srtpCryptoSuite];
    LOBYTE(remoteAddress3) = [(HMDCameraMediaConfigGenerator *)self _loadConfig:configCopy cipherCuite:srtpCryptoSuite];

    if (remoteAddress3)
    {
      setupEndPointWrite4 = [parametersCopy setupEndPointWrite];
      videoSrtpParameters2 = [setupEndPointWrite4 videoSrtpParameters];
      setupEndPointRead6 = [parametersCopy setupEndPointRead];
      videoSrtpParameters3 = [setupEndPointRead6 videoSrtpParameters];
      [(HMDCameraMediaConfigGenerator *)self _loadConfig:configCopy sendSrtpParameters:videoSrtpParameters2 receiveSrtpParameters:videoSrtpParameters3];

      [(HMDCameraMediaConfigGenerator *)self _loadMiscConfig:configCopy];
      setupEndPointRead7 = [parametersCopy setupEndPointRead];
      videoSSRC = [setupEndPointRead7 videoSSRC];
      [configCopy setRemoteSSRC:{objc_msgSend(videoSSRC, "unsignedIntegerValue")}];

      v19 = 1;
      goto LABEL_7;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      selectedStreamConfigurationWrite2 = [parametersCopy setupEndPointRead];
      videoParameters2 = [selectedStreamConfigurationWrite2 videoSrtpParameters];
      codec2 = [videoParameters2 srtpCryptoSuite];
      v100 = 138543618;
      v101 = v14;
      v102 = 2048;
      decodedNumber = [codec2 decodedNumber];
      v18 = "%{public}@Failed to translate to crypto suite for video from %lu";
      goto LABEL_4;
    }
  }

LABEL_6:

  objc_autoreleasePoolPop(v12);
  v19 = 0;
LABEL_7:

  return v19;
}

- (BOOL)_loadAVCAudioStreamConfig:(id)config protocolParameters:(id)parameters
{
  v117 = *MEMORY[0x277D85DE8];
  configCopy = config;
  parametersCopy = parameters;
  selectedStreamConfigurationWrite = [parametersCopy selectedStreamConfigurationWrite];
  audioParameters = [selectedStreamConfigurationWrite audioParameters];
  codecGroup = [audioParameters codecGroup];
  codec = [codecGroup codec];
  v109 = parametersCopy;
  selectedStreamConfigurationWrite2 = [parametersCopy selectedStreamConfigurationWrite];
  audioParameters2 = [selectedStreamConfigurationWrite2 audioParameters];
  codecParameters = [audioParameters2 codecParameters];
  audioSampleRates = [codecParameters audioSampleRates];
  v14 = [audioSampleRates objectAtIndexedSubscript:0];
  sampleRate = [v14 sampleRate];
  v16 = sampleRate;
  if (codec > 2)
  {
    switch(codec)
    {
      case 3:
        if (sampleRate == 1)
        {
          v17 = 0;
          v18 = 10;
          goto LABEL_23;
        }

        if (sampleRate == 2)
        {
          v17 = 0;
          v18 = 9;
          goto LABEL_23;
        }

        break;
      case 5:
        v17 = 0;
        v18 = 0;
        goto LABEL_23;
      case 6:
        v17 = 0;
        v18 = 1;
        goto LABEL_23;
    }
  }

  else
  {
    switch(codec)
    {
      case 0:
        v17 = 0;
        v18 = 2;
        goto LABEL_23;
      case 1:
        v17 = 0;
        v18 = 3;
        goto LABEL_23;
      case 2:
        if (sampleRate == 1)
        {
          v17 = 0;
          v18 = 4;
          goto LABEL_23;
        }

        if (sampleRate == 2)
        {
          v17 = 0;
          v18 = 5;
          goto LABEL_23;
        }

        break;
    }
  }

  v107 = selectedStreamConfigurationWrite;
  context = objc_autoreleasePoolPush();
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v105 = HMFGetLogIdentifier();
    *buf = 138543874;
    v112 = v105;
    v113 = 2048;
    v114 = codec;
    v115 = 2048;
    v116 = v16;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to translate the HMD audio codec type: %tu, sample rate: %tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(context);
  v18 = -1;
  v17 = 1;
  selectedStreamConfigurationWrite = v107;
LABEL_23:

  if (v17)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    v23 = v109;
    v22 = configCopy;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      selectedStreamConfigurationWrite3 = [v109 selectedStreamConfigurationWrite];
      audioParameters3 = [selectedStreamConfigurationWrite3 audioParameters];
      codecGroup2 = [audioParameters3 codecGroup];
      decodedNumber = [codecGroup2 decodedNumber];
      *buf = 138543618;
      v112 = v24;
      v113 = 2048;
      v114 = decodedNumber;
      v29 = "%{public}@Failed to translate to audio codec type from %lu";
LABEL_30:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);

      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v22 = configCopy;
  audio = [configCopy audio];
  [audio setCodecType:v18];

  audio2 = [configCopy audio];
  [audio2 setOctetAligned:1];

  audio3 = [configCopy audio];
  [audio3 setDtxEnabled:1];

  v23 = v109;
  selectedStreamConfigurationWrite4 = [v109 selectedStreamConfigurationWrite];
  audioParameters4 = [selectedStreamConfigurationWrite4 audioParameters];
  rtpParameters = [audioParameters4 rtpParameters];
  payloadType = [rtpParameters payloadType];
  [configCopy setTxPayloadType:{objc_msgSend(payloadType, "unsignedIntegerValue")}];

  selectedStreamConfigurationWrite5 = [v109 selectedStreamConfigurationWrite];
  audioParameters5 = [selectedStreamConfigurationWrite5 audioParameters];
  rtpParameters2 = [audioParameters5 rtpParameters];
  payloadType2 = [rtpParameters2 payloadType];
  [configCopy setRxPayloadType:{objc_msgSend(payloadType2, "unsignedIntegerValue")}];

  [configCopy setDirection:3];
  selectedStreamConfigurationWrite6 = [v109 selectedStreamConfigurationWrite];
  audioParameters6 = [selectedStreamConfigurationWrite6 audioParameters];
  rtpParameters3 = [audioParameters6 rtpParameters];
  rtcpInterval = [rtpParameters3 rtcpInterval];
  [rtcpInterval floatValue];
  [configCopy setRtcpSendInterval:v45];

  setupEndPointWrite = [v109 setupEndPointWrite];
  address = [setupEndPointWrite address];
  ipAddress = [address ipAddress];
  localAddress = [configCopy localAddress];
  [localAddress setIp:ipAddress];

  setupEndPointWrite2 = [v109 setupEndPointWrite];
  address2 = [setupEndPointWrite2 address];
  audioRTPPort = [address2 audioRTPPort];
  unsignedShortValue = [audioRTPPort unsignedShortValue];
  localAddress2 = [configCopy localAddress];
  [localAddress2 setPort:unsignedShortValue];

  setupEndPointWrite3 = [v109 setupEndPointWrite];
  address3 = [setupEndPointWrite3 address];
  isIPv6Address = [address3 isIPv6Address];
  localAddress3 = [configCopy localAddress];
  [localAddress3 setIsIPv6:isIPv6Address];

  setupEndPointRead = [v109 setupEndPointRead];
  address4 = [setupEndPointRead address];
  ipAddress2 = [address4 ipAddress];
  remoteAddress = [configCopy remoteAddress];
  [remoteAddress setIp:ipAddress2];

  setupEndPointRead2 = [v109 setupEndPointRead];
  address5 = [setupEndPointRead2 address];
  audioRTPPort2 = [address5 audioRTPPort];
  unsignedShortValue2 = [audioRTPPort2 unsignedShortValue];
  remoteAddress2 = [configCopy remoteAddress];
  [remoteAddress2 setPort:unsignedShortValue2];

  setupEndPointRead3 = [v109 setupEndPointRead];
  address6 = [setupEndPointRead3 address];
  isIPv6Address2 = [address6 isIPv6Address];
  remoteAddress3 = [configCopy remoteAddress];
  [remoteAddress3 setIsIPv6:isIPv6Address2];

  setupEndPointRead4 = [v109 setupEndPointRead];
  address7 = [setupEndPointRead4 address];
  audioRTPPort3 = [address7 audioRTPPort];
  [configCopy setRtcpRemotePort:{objc_msgSend(audioRTPPort3, "unsignedShortValue")}];

  audio4 = [configCopy audio];
  [audio4 setAudioStreamMode:3];

  selectedStreamConfigurationWrite7 = [v109 selectedStreamConfigurationWrite];
  audioParameters7 = [selectedStreamConfigurationWrite7 audioParameters];
  comfortNoiseEnabled = [audioParameters7 comfortNoiseEnabled];
  bOOLValue = [comfortNoiseEnabled BOOLValue];
  audio5 = [configCopy audio];
  [audio5 setCnEnabled:bOOLValue];

  selectedStreamConfigurationWrite8 = [v109 selectedStreamConfigurationWrite];
  audioParameters8 = [selectedStreamConfigurationWrite8 audioParameters];
  rtpParameters4 = [audioParameters8 rtpParameters];
  comfortNoisePayloadType = [rtpParameters4 comfortNoisePayloadType];
  unsignedIntegerValue = [comfortNoisePayloadType unsignedIntegerValue];
  audio6 = [configCopy audio];
  [audio6 setCnPayloadType:unsignedIntegerValue];

  selectedStreamConfigurationWrite9 = [v109 selectedStreamConfigurationWrite];
  audioParameters9 = [selectedStreamConfigurationWrite9 audioParameters];
  codecParameters2 = [audioParameters9 codecParameters];
  rtpPtime = [codecParameters2 rtpPtime];
  unsignedIntegerValue2 = [rtpPtime unsignedIntegerValue];
  audio7 = [configCopy audio];
  [audio7 setPtime:unsignedIntegerValue2];

  setupEndPointRead5 = [v109 setupEndPointRead];
  audioSrtpParameters = [setupEndPointRead5 audioSrtpParameters];
  srtpCryptoSuite = [audioSrtpParameters srtpCryptoSuite];
  LOBYTE(rtpPtime) = [(HMDCameraMediaConfigGenerator *)self _loadConfig:configCopy cipherCuite:srtpCryptoSuite];

  if ((rtpPtime & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      selectedStreamConfigurationWrite3 = [v109 setupEndPointRead];
      audioParameters3 = [selectedStreamConfigurationWrite3 audioSrtpParameters];
      codecGroup2 = [audioParameters3 srtpCryptoSuite];
      decodedNumber2 = [codecGroup2 decodedNumber];
      *buf = 138543618;
      v112 = v24;
      v113 = 2048;
      v114 = decodedNumber2;
      v29 = "%{public}@Failed to translate to crypto suite for audio from %lu";
      goto LABEL_30;
    }

LABEL_31:

    objc_autoreleasePoolPop(v20);
    v102 = 0;
    goto LABEL_32;
  }

  setupEndPointWrite4 = [v109 setupEndPointWrite];
  audioSrtpParameters2 = [setupEndPointWrite4 audioSrtpParameters];
  setupEndPointRead6 = [v109 setupEndPointRead];
  audioSrtpParameters3 = [setupEndPointRead6 audioSrtpParameters];
  [(HMDCameraMediaConfigGenerator *)self _loadConfig:configCopy sendSrtpParameters:audioSrtpParameters2 receiveSrtpParameters:audioSrtpParameters3];

  [(HMDCameraMediaConfigGenerator *)self _loadMiscConfig:configCopy];
  setupEndPointRead7 = [v109 setupEndPointRead];
  audioSSRC = [setupEndPointRead7 audioSSRC];
  [configCopy setRemoteSSRC:{objc_msgSend(audioSSRC, "unsignedIntegerValue")}];

  v102 = 1;
LABEL_32:

  return v102;
}

- (BOOL)extractSelectedConfigFromProtocolParameters:(id)parameters videoStreamConfig:(id *)config audioStreamConfig:(id *)streamConfig
{
  v23 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v9 = objc_alloc_init(HMDVideoStreamConfig);
  if ([(HMDCameraMediaConfigGenerator *)self _loadAVCVideoStreamConfig:v9 protocolParameters:parametersCopy])
  {
    v10 = objc_alloc_init(HMDAudioStreamConfig);
    v11 = [(HMDCameraMediaConfigGenerator *)self _loadAVCAudioStreamConfig:v10 protocolParameters:parametersCopy];
    if (v11)
    {
      if (config)
      {
        v12 = v9;
        *config = v9;
      }

      if (streamConfig)
      {
        v13 = v10;
        *streamConfig = v10;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to load audio config from the protocol parameters", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to load video config from the protocol parameters", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v11 = 0;
  }

  return v11;
}

@end
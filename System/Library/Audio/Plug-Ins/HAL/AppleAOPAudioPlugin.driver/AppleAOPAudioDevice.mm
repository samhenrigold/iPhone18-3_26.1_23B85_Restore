@interface AppleAOPAudioDevice
- (AppleAOPAudioDevice)initWithDeviceUID:(id)d withDeviceName:(id)name withModelName:(id)modelName withPlugin:(id)plugin withIOObject:(unsigned int)object;
- (BOOL)getCustomPropertyInfoByIndex:(unsigned int)index forCustPropInfo:(AudioServerPlugInCustomPropertyInfo *)info;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)tryGetProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(const void *)andData forClient:(int)client;
- (BOOL)tryHasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)trySetProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (__CFDictionary)voiceTriggerGetConfigureDataId;
- (__CFDictionary)voiceTriggerGetData;
- (basic_string<char,)getDiagonsticData;
- (id).cxx_construct;
- (int)tryPerformStartIO;
- (int)tryPerformStopIO;
- (unsigned)readAvailablePastData;
- (unsigned)tryDataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (void)enableListening:(BOOL)listening;
- (void)notifyDevicePropertiesChanged;
- (void)startInput:(BOOL)input;
- (void)updateStreamDescription;
@end

@implementation AppleAOPAudioDevice

- (__CFDictionary)voiceTriggerGetConfigureDataId
{
  VoiceTriggerConfiguration = AOPAudioDeviceHWManager::HW_GetVoiceTriggerConfiguration(self->mAOPAudioHWManagerPtr.__ptr_);
  v5.var0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *&v5.var1 = 256;
  CACFDictionary::AddString(&v5, @"CorealisRTModelVersion", VoiceTriggerConfiguration);
  CFRelease(VoiceTriggerConfiguration);
  var0 = v5.var0;
  sub_1FB8(&v5);
  return var0;
}

- (int)tryPerformStartIO
{
  kdebug_trace();
  ptr = self->mStateMutexPtr.__ptr_;
  v25 = ptr;
  v4 = (*(*ptr + 16))(ptr);
  v26 = v4;
  if (!self->mStartCount)
  {
    AOPAudioDeviceHWManager::HW_StatusReset(self->mAOPAudioHWManagerPtr.__ptr_);
    v5 = self->mAOPAudioHWManagerPtr.__ptr_;
    v23 = *(v5 + 56);
    v24 = *(v5 + 9);
    getBytesPerPacket = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerPacket];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_2440;
    v18[3] = &unk_249B0;
    v18[4] = &self->mIOMutexPtr;
    v18[5] = &self->mAOPAudioHWManagerPtr;
    v19 = v23;
    v22 = getBytesPerPacket;
    v20 = v24;
    p_mIOStatus = &self->mIOStatus;
    [(AppleAOPAudioDevice *)self setGetZeroTimestampBlock:v18];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_2BB8;
    v16[3] = &unk_249D0;
    hasInput = [(AppleAOPAudioDevice *)self hasInput];
    [(AppleAOPAudioDevice *)self setWillDoReadInputBlock:v16];
    getBytesPerPacket2 = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerPacket];
    getBytesPerSample = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerSample];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2FEC;
    v12[3] = &unk_249F0;
    v13 = getBytesPerPacket2;
    v14 = getBytesPerSample;
    v12[4] = self;
    v12[5] = &self->mAOPAudioHWManagerPtr;
    v12[6] = &self->mIOMutexPtr;
    InputDataBufferNull = ForceReadInputDataBufferNull();
    [(AppleAOPAudioStream *)self->_halInputAudioStream setReadInputBlock:v12];
  }

  [(AppleAOPAudioDevice *)self startInput:1];
  v11.receiver = self;
  v11.super_class = AppleAOPAudioDevice;
  performStartIO = [(AppleAOPAudioDevice *)&v11 performStartIO];
  kdebug_trace();
  if (v4)
  {
    (*(*ptr + 24))(ptr);
  }

  return performStartIO;
}

- (int)tryPerformStopIO
{
  kdebug_trace();
  ptr = self->mStateMutexPtr.__ptr_;
  v15 = ptr;
  v4 = (*(*ptr + 16))(ptr);
  v16 = v4;
  v14.receiver = self;
  v14.super_class = AppleAOPAudioDevice;
  performStopIO = [(AppleAOPAudioDevice *)&v14 performStopIO];
  [(AppleAOPAudioDevice *)self startInput:0];
  if (!self->mStartCount)
  {
    [(AppleAOPAudioDevice *)self setGetZeroTimestampBlock:0];
    [(AppleAOPAudioDevice *)self setWillDoReadInputBlock:0];
    [(AppleAOPAudioStream *)self->_halInputAudioStream setReadInputBlock:0];
    v6 = self->mAOPAudioHWManagerPtr.__ptr_;
    v7 = *(v6 + 31);
    if (v7 && v7 <= 100 * (v7 - *(v6 + 32)))
    {
      sub_AABC("Detected %lld/%lld zero checksums during I/O session\n", v7 - *(v6 + 32), v7);
      v6 = self->mAOPAudioHWManagerPtr.__ptr_;
    }

    v8 = *(v6 + 37);
    v9 = v8 - *(v6 + 38);
    if (v9)
    {
      sub_8C70("Detected %lld/%lld read attempts > ring buffer end bounds during I/O session\n", v9, v8);
      v6 = self->mAOPAudioHWManagerPtr.__ptr_;
    }

    v11 = v6 + 344;
    v10 = *(v6 + 43);
    v12 = v10 - *(v11 + 1);
    if (v12)
    {
      sub_8C70("Detected %lld/%lld read attempts < ring buffer start bounds during I/O session\n", v12, v10);
    }
  }

  kdebug_trace();
  if (v4)
  {
    (*(*ptr + 24))(ptr);
  }

  return performStopIO;
}

- (void)updateStreamDescription
{
  BytesPerSample = AOPAudioDeviceHWManager::HW_GetBytesPerSample(self->mAOPAudioHWManagerPtr.__ptr_);
  [(AppleAOPAudioStream *)self->_halInputAudioStream setBytesPerSample:BytesPerSample];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat setBytesPerSample:BytesPerSample];
  ChannelsPerFrame = AOPAudioDeviceHWManager::HW_GetChannelsPerFrame(self->mAOPAudioHWManagerPtr.__ptr_);
  [(AppleAOPAudioStream *)self->_halInputAudioStream setChannelsPerFrame:ChannelsPerFrame];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat setChannelsPerFrame:ChannelsPerFrame];
  FramesPerPacket = AOPAudioDeviceHWManager::HW_GetFramesPerPacket(self->mAOPAudioHWManagerPtr.__ptr_);
  [(AppleAOPAudioStream *)self->_halInputAudioStream setFramesPerPacket:FramesPerPacket];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat setFramesPerPacket:FramesPerPacket];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat setSampleRateHz:AOPAudioDeviceHWManager::HW_GetInputSamplesPerSec(self->mAOPAudioHWManagerPtr.__ptr_)];
  LODWORD(FramesPerPacket) = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerSample];
  getChannelsPerFrame = [(AppleAOPAudioStream *)self->_halInputAudioStream getChannelsPerFrame];
  getFramesPerPacket = [(AppleAOPAudioStream *)self->_halInputAudioStream getFramesPerPacket];
  [(AppleAOPAudioStream *)self->_halInputAudioStream getSampleRateHz];
  sub_1FF8("Device::updateStreamDescription() stream desc: { %d bytes/sample, %d channels/frame, %d frames/packet, %f samples/sec }\n", FramesPerPacket, getChannelsPerFrame, getFramesPerPacket, v8);
  LODWORD(FramesPerPacket) = [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat getBytesPerSample];
  getChannelsPerFrame2 = [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat getChannelsPerFrame];
  getFramesPerPacket2 = [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat getFramesPerPacket];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat getSampleRateHz];
  sub_1FF8("Device::updateStreamDescription() input stream desc: { %d bytes/sample, %d channels/frame, %d frames/packet, %f samples/sec }\n", FramesPerPacket, getChannelsPerFrame2, getFramesPerPacket2, v11);
}

- (void)notifyDevicePropertiesChanged
{
  v5 = 0u;
  LODWORD(v6) = 0;
  *(&v5 + 4) = 0x676C6F6273616674;
  v3 = [(AppleAOPAudioDevice *)self plugin:0x676C6F6272696E67];
  [v3 changedProperty:&v4 forObject:self];
}

- (AppleAOPAudioDevice)initWithDeviceUID:(id)d withDeviceName:(id)name withModelName:(id)modelName withPlugin:(id)plugin withIOObject:(unsigned int)object
{
  dCopy = d;
  nameCopy = name;
  modelNameCopy = modelName;
  pluginCopy = plugin;
  objectCopy = object;
  v26.receiver = self;
  v26.super_class = AppleAOPAudioDevice;
  v15 = [(AppleAOPAudioDevice *)&v26 initWithDeviceUID:dCopy withPlugin:pluginCopy];
  v16 = v15;
  if (v15)
  {
    [(AppleAOPAudioDevice *)v15 setDeviceName:nameCopy];
    [v16 setModelUID:modelNameCopy];
    [v16 setManufacturerName:@"Apple Inc."];
    [v16 setModelName:modelNameCopy];
    [v16 setCanBeDefaultDevice:1];
    [v16 setCanBeDefaultSystemDevice:1];
    [v16 setCanChangeDeviceName:0];
    [v16 setSamplingRates:&off_25200];
    [v16 setSamplingRate:16000.0];
    [v16 setTransportType:1986622068];
    v17 = [ASDStreamFormat alloc];
    [v16 samplingRate];
    v18 = [v17 initWithSampleRate:1 numChannels:3 commonPCMFormat:1 isInterleaved:?];
    [v18 setBytesPerFrame:{(objc_msgSend(v18, "bitsPerChannel") >> 3) * objc_msgSend(v18, "channelsPerFrame")}];
    [v18 setBytesPerPacket:{objc_msgSend(v18, "framesPerPacket") * objc_msgSend(v18, "bytesPerFrame")}];
    [v16 samplingRate];
    [v18 setSampleRate:?];
    [v16 samplingRate];
    [v18 setMinimumSampleRate:?];
    [v16 samplingRate];
    [v18 setMaximumSampleRate:?];
    v19 = +[NSMutableArray array];
    [v19 addObject:v18];
    v20 = [[AppleAOPAudioStream alloc] initWithDirection:1768845428 owningDevice:v16 plugin:pluginCopy formats:v19];
    v21 = v16[1];
    v16[1] = v20;

    [v16[1] setStreamName:@"InputStream"];
    v22 = [[AppleAOPAudioStream alloc] initWithDirection:1768845428 owningDevice:v16 plugin:pluginCopy formats:v19];
    v23 = v16[2];
    v16[2] = v22;

    [v16[2] setStreamName:@"dummy"];
    sub_BB30();
  }

  return 0;
}

- (BOOL)getCustomPropertyInfoByIndex:(unsigned int)index forCustPropInfo:(AudioServerPlugInCustomPropertyInfo *)info
{
  v5 = &aDpsdtslp[12 * index];
  if (!*v5 && !self->mChannelEnableMaskAvailable)
  {
    return 0;
  }

  if ([(AppleAOPAudioDevice *)self getNumCustomProperties]> index)
  {
    *&info->mSelector = *v5;
    info->mQualifierDataType = *(v5 + 2);
  }

  return 1;
}

- (BOOL)tryHasProperty:(const AudioObjectPropertyAddress *)property
{
  ptr = self->mStateMutexPtr.__ptr_;
  v15 = ptr;
  v6 = (*(*ptr + 16))(ptr, a2);
  v16 = v6;
  if (!property)
  {
    goto LABEL_11;
  }

  mSelector = property->mSelector;
  mChannelEnableMaskAvailable = 1;
  if (property->mSelector <= 1635152996)
  {
    if (mSelector <= 1634692198)
    {
      if (mSelector == 1633903475)
      {
        goto LABEL_30;
      }

      if (mSelector == 1634689389 || mSelector == 1634690413)
      {
        mChannelEnableMaskAvailable = self->mChannelEnableMaskAvailable;
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (mSelector > 1635152992)
    {
      if (mSelector == 1635152993)
      {
        goto LABEL_30;
      }

      v9 = 29795;
LABEL_21:
      if (mSelector == (v9 | 0x61760000))
      {
        goto LABEL_22;
      }

LABEL_28:
      v14.receiver = self;
      v14.super_class = AppleAOPAudioDevice;
      IsVoiceTriggerSupported = [(AppleAOPAudioDevice *)&v14 hasProperty:property];
      goto LABEL_29;
    }

    if (mSelector == 1634692199)
    {
      HasPropertyEnableListeningOnGesture = AOPAudioDeviceHWManager::HW_HasPropertyEnableListeningOnGesture(self->mAOPAudioHWManagerPtr.__ptr_);
      mChannelEnableMaskAvailable = HasPropertyEnableListeningOnGesture;
      sub_1FF8("Device::hasProperty(kAOPAudioDevicePropertyEnableListeningOnGesture) : %d\n", HasPropertyEnableListeningOnGesture);
      goto LABEL_30;
    }

    if (mSelector != 1634694002)
    {
      goto LABEL_28;
    }

LABEL_11:
    mChannelEnableMaskAvailable = 0;
    goto LABEL_30;
  }

  if (mSelector > 1684107363)
  {
    if (mSelector > 1685087595)
    {
      if (mSelector == 1685087596)
      {
        goto LABEL_30;
      }

      v10 = 1685287012;
    }

    else
    {
      if (mSelector == 1684107364)
      {
        goto LABEL_30;
      }

      v10 = 1684893796;
    }

LABEL_27:
    if (mSelector == v10)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (mSelector <= 1668641651)
  {
    if (mSelector == 1635152997)
    {
LABEL_22:
      IsVoiceTriggerSupported = AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_);
LABEL_29:
      mChannelEnableMaskAvailable = IsVoiceTriggerSupported;
      goto LABEL_30;
    }

    v9 = 29807;
    goto LABEL_21;
  }

  if (mSelector != 1668641652)
  {
    v10 = 1684105587;
    goto LABEL_27;
  }

  mChannelEnableMaskAvailable = [(AppleAOPAudioDevice *)self getNumCustomProperties]!= 0;
LABEL_30:
  if (v6)
  {
    (*(*ptr + 24))(ptr);
  }

  return mChannelEnableMaskAvailable;
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  ptr = self->mStateMutexPtr.__ptr_;
  v17 = 0;
  v15 = ptr;
  v6 = (*(*ptr + 16))(ptr, a2);
  v16 = v6;
  LOBYTE(HasPropertyEnableListeningOnGesture) = 0;
  if (!settable)
  {
    goto LABEL_36;
  }

  mSelector = settable->mSelector;
  if (settable->mSelector > 1635153006)
  {
    if (mSelector > 1684107363)
    {
      if (mSelector > 1685087595)
      {
        if (mSelector == 1685087596)
        {
          LOBYTE(HasPropertyEnableListeningOnGesture) = 1;
          goto LABEL_36;
        }

        v9 = 1685287012;
      }

      else
      {
        if (mSelector == 1684107364)
        {
          goto LABEL_36;
        }

        v9 = 1684893796;
      }

LABEL_29:
      if (mSelector == v9)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    if (mSelector == 1635153007 || mSelector == 1668641652 || mSelector == 1684105587)
    {
      goto LABEL_36;
    }

LABEL_30:
    v14.receiver = self;
    v14.super_class = AppleAOPAudioDevice;
    IsVoiceTriggerSupported = [(AppleAOPAudioDevice *)&v14 isPropertySettable:settable];
    goto LABEL_31;
  }

  if (mSelector <= 1634692198)
  {
    if (mSelector == 1633903475)
    {
      goto LABEL_36;
    }

    if (mSelector == 1634689389 || mSelector == 1634690413)
    {
      HasPropertyEnableListeningOnGesture = self->mChannelEnableMaskAvailable && AOPAudioDeviceHWManager::HW_AudioGetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 0, &v17);
      sub_1FF8("Device::isPropertySettable(kAOPAudioDriverEnabledChannelMask) --> %d\n", HasPropertyEnableListeningOnGesture);
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (mSelector > 1635152994)
  {
    if (mSelector == 1635152995 || mSelector == 1635152997)
    {
      IsVoiceTriggerSupported = AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_);
LABEL_31:
      LOBYTE(HasPropertyEnableListeningOnGesture) = IsVoiceTriggerSupported;
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (mSelector != 1634692199)
  {
    v9 = 1635152993;
    goto LABEL_29;
  }

  HasPropertyEnableListeningOnGesture = AOPAudioDeviceHWManager::HW_HasPropertyEnableListeningOnGesture(self->mAOPAudioHWManagerPtr.__ptr_);
  sub_1FF8("Device::isPropertySettable(kAOPAudioDevicePropertyEnableListeningOnGesture) --> %d\n", HasPropertyEnableListeningOnGesture);
LABEL_36:
  if (v6)
  {
    (*(*ptr + 24))(ptr);
  }

  return HasPropertyEnableListeningOnGesture;
}

- (unsigned)tryDataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  v6 = *&size;
  ptr = self->mStateMutexPtr.__ptr_;
  v17 = ptr;
  v10 = (*(*ptr + 16))(ptr, a2);
  v18 = v10;
  if (!property)
  {
    v12 = 0;
    goto LABEL_26;
  }

  mSelector = property->mSelector;
  v12 = 4;
  if (property->mSelector <= 1635153006)
  {
    if (mSelector > 1634692198)
    {
      if (mSelector <= 1635152994)
      {
        if (mSelector == 1634692199)
        {
          v12 = 4;
          sub_1FF8("sizeofProperty(kAOPAudioDevicePropertyEnableListeningOnGesture) : %d\n", 4);
          goto LABEL_26;
        }

        v13 = 29793;
        goto LABEL_21;
      }

      if (mSelector != 1635152995)
      {
        v13 = 29797;
LABEL_21:
        v14 = v13 | 0x61760000;
        goto LABEL_25;
      }

LABEL_22:
      v12 = 8;
      goto LABEL_26;
    }

    if (mSelector == 1633903475)
    {
      goto LABEL_22;
    }

    if (mSelector == 1634689389)
    {
      goto LABEL_26;
    }

    v14 = 1634690413;
LABEL_25:
    if (mSelector == v14)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if (mSelector > 1684107363)
  {
    if (mSelector > 1685087595)
    {
      if (mSelector == 1685087596)
      {
        goto LABEL_26;
      }

      v14 = 1685287012;
    }

    else
    {
      if (mSelector == 1684107364)
      {
        goto LABEL_26;
      }

      v14 = 1684893796;
    }

    goto LABEL_25;
  }

  switch(mSelector)
  {
    case 1635153007:
      goto LABEL_22;
    case 1668641652:
      v12 = 12 * self->mCustomPropertyInfoListEntries;
      goto LABEL_26;
    case 1684105587:
      goto LABEL_22;
  }

LABEL_31:
  v16.receiver = self;
  v16.super_class = AppleAOPAudioDevice;
  v12 = [(AppleAOPAudioDevice *)&v16 dataSizeForProperty:property withQualifierSize:v6 andQualifierData:data];
LABEL_26:
  if (v10)
  {
    (*(*ptr + 24))(ptr);
  }

  return v12;
}

- (BOOL)tryGetProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(const void *)andData forClient:(int)client
{
  v8 = *&client;
  v12 = *&size;
  ptr = self->mStateMutexPtr.__ptr_;
  v40 = ptr;
  v16 = (*(*ptr + 16))(ptr, a2);
  v17 = v16;
  v41 = v16;
  v18 = 1;
  if (!property || !dataSize || !andData)
  {
    goto LABEL_59;
  }

  v39 = 0;
  mSelector = property->mSelector;
  if (property->mSelector > 1635153006)
  {
    if (mSelector > 1684107363)
    {
      if (mSelector > 1685087595)
      {
        if (mSelector != 1685087596)
        {
          if (mSelector == 1685287012)
          {
            *dataSize = 4;
            *andData = 1;
            if (!v16)
            {
              return v18;
            }

            goto LABEL_60;
          }

          goto LABEL_62;
        }

        *dataSize = 4;
        mPastDataListeningEnabled = self->mPastDataListeningEnabled;
      }

      else
      {
        if (mSelector == 1684107364)
        {
          *dataSize = 4;
          IsVoiceTriggerSupported = [(AppleAOPAudioDevice *)self readAvailablePastData];
LABEL_35:
          *andData = IsVoiceTriggerSupported;
          if (!v17)
          {
            return v18;
          }

          goto LABEL_60;
        }

        if (mSelector != 1684893796)
        {
          goto LABEL_62;
        }

        *dataSize = 4;
        v21 = self->mAOPAudioHWManagerPtr.__ptr_;
        v22 = *(v21 + 16);
        mPastDataListeningEnabled = v22 / [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerPacket]- *(v21 + 17);
      }

LABEL_51:
      *andData = mPastDataListeningEnabled;
      if (!v17)
      {
        return v18;
      }

      goto LABEL_60;
    }

    if (mSelector == 1635153007)
    {
      if (!AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_))
      {
        goto LABEL_59;
      }

      *dataSize = 8;
      voiceTriggerGetData = [(AppleAOPAudioDevice *)self voiceTriggerGetData];
      goto LABEL_45;
    }

    if (mSelector == 1668641652)
    {
      getNumCustomProperties = [(AppleAOPAudioDevice *)self getNumCustomProperties];
      if (getNumCustomProperties)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          v36 += [(AppleAOPAudioDevice *)self getCustomPropertyInfoByIndex:v35 forCustPropInfo:andData + 12 * v36];
          v35 = (v35 + 1);
        }

        while (getNumCustomProperties != v35);
      }

      *dataSize = 12 * getNumCustomProperties;
      v18 = 1;
      goto LABEL_59;
    }

    if (mSelector != 1684105587)
    {
      goto LABEL_62;
    }

    *dataSize = 8;
    p_mIOStatus = &self->mIOStatus;
    goto LABEL_41;
  }

  if (mSelector <= 1634692198)
  {
    if (mSelector != 1633903475)
    {
      if (mSelector == 1634689389)
      {
        *dataSize = 4;
        if (!self->mChannelEnableMaskAvailable)
        {
          goto LABEL_53;
        }

        ControlValue = AOPAudioDeviceHWManager::HW_AudioGetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 1, &v39);
      }

      else
      {
        if (mSelector != 1634690413)
        {
          goto LABEL_62;
        }

        *dataSize = 4;
        if (!self->mChannelEnableMaskAvailable)
        {
          goto LABEL_53;
        }

        ControlValue = AOPAudioDeviceHWManager::HW_AudioGetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 0, &v39);
      }

      if (ControlValue)
      {
        mPastDataListeningEnabled = v39;
        goto LABEL_51;
      }

LABEL_53:
      v18 = 0;
      if (!v17)
      {
        return v18;
      }

      goto LABEL_60;
    }

    *dataSize = 8;
    p_mIOStatus = @"com.apple.private.audio.hal.aop-audio.user-access";
LABEL_41:
    *andData = p_mIOStatus;
    if (!v16)
    {
      return v18;
    }

    goto LABEL_60;
  }

  if (mSelector > 1635152994)
  {
    if (mSelector != 1635152995)
    {
      if (mSelector == 1635152997)
      {
        if (AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_))
        {
          IsVoiceTriggerSupported = AOPAudioDeviceHWManager::HW_VoiceTriggerGetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 0, v26, v27, v28, v29, v30, v31);
          goto LABEL_28;
        }

        goto LABEL_59;
      }

LABEL_62:
      v38.receiver = self;
      v38.super_class = AppleAOPAudioDevice;
      v18 = [(AppleAOPAudioDevice *)&v38 getProperty:property withQualifierSize:v12 qualifierData:data dataSize:dataSize andData:andData forClient:v8];
      if (!v17)
      {
        return v18;
      }

      goto LABEL_60;
    }

    if (!AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_))
    {
      goto LABEL_59;
    }

    *dataSize = 8;
    voiceTriggerGetData = [(AppleAOPAudioDevice *)self voiceTriggerGetConfigureDataId];
LABEL_45:
    *andData = voiceTriggerGetData;
    if (!v17)
    {
      return v18;
    }

    goto LABEL_60;
  }

  if (mSelector != 1634692199)
  {
    if (mSelector == 1635152993)
    {
      IsVoiceTriggerSupported = AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_);
LABEL_28:
      *dataSize = 4;
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *dataSize = 4;
  IsListeningOnGestureEnabled = AOPAudioDeviceHWManager::HW_IsListeningOnGestureEnabled(self->mAOPAudioHWManagerPtr.__ptr_);
  *andData = IsListeningOnGestureEnabled;
  sub_1FF8("getProperty(kAOPAudioDevicePropertyEnableListeningOnGesture) is %d\n", IsListeningOnGestureEnabled);
LABEL_59:
  if (v17)
  {
LABEL_60:
    (*(*ptr + 24))(ptr);
  }

  return v18;
}

- (BOOL)trySetProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  v8 = *&client;
  v10 = *&dataSize;
  v12 = *&size;
  ptr = self->mStateMutexPtr.__ptr_;
  v64[6] = ptr;
  v16 = (*(*ptr + 16))(ptr, a2);
  v65 = v16;
  if (!property || ![(AppleAOPAudioDevice *)self hasProperty:property]|| ![(AppleAOPAudioDevice *)self isPropertySettable:property])
  {
    goto LABEL_41;
  }

  mSelector = property->mSelector;
  if (property->mSelector > 1635152994)
  {
    switch(mSelector)
    {
      case 0x61767463u:
        v24 = AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_) ^ 1;
        if (v10 != 8)
        {
          LOBYTE(v24) = 1;
        }

        if ((v24 & 1) == 0)
        {
          v25 = *andData;
          if (!v25)
          {
            v34 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            if (v34)
            {
              sub_185A8(v34, v35, v36, v37, v38, v39, v40, v41);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_24B48;
            exception[2] = 560947818;
          }

          CFRetain(v25);
          v64[0] = _NSConcreteStackBlock;
          v64[1] = 3221225472;
          v64[2] = sub_A468;
          v64[3] = &unk_24968;
          v64[4] = self;
          v64[5] = v25;
          [(AppleAOPAudioDevice *)self requestConfigurationChange:v64];
        }

        goto LABEL_41;
      case 0x61767465u:
        v30 = AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_) ^ 1;
        if (v10 != 4)
        {
          LOBYTE(v30) = 1;
        }

        if ((v30 & 1) == 0)
        {
          v31 = *andData;
          AOPAudioDeviceHWManager::HW_VoiceTriggerSetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 0, v31);
          sub_1FF8("Device::setProperty(kAOPAudioDriverVoiceTriggerEnable) new value: %d\n", v31);
          v67 = 0;
          *v66 = *"etvabolg";
          plugin = [(AppleAOPAudioDevice *)self plugin];
          [plugin changedProperty:v66 forObject:self];
        }

        goto LABEL_41;
      case 0x6470656Cu:
        if (v10 == 4)
        {
          v20 = *andData;
          [(AppleAOPAudioDevice *)self enableListening:0];
          if (v20)
          {
            [(AppleAOPAudioDevice *)self enableListening:1];
          }

          sub_1FF8("Device::setProperty(kAudioDevicePropertyEnableListening) new value: %d\n", v20 != 0);
          v67 = 0;
          *v66 = *"lepdbolg";
          plugin2 = [(AppleAOPAudioDevice *)self plugin];
          [plugin2 changedProperty:v66 forObject:self];
        }

        goto LABEL_41;
    }

    goto LABEL_26;
  }

  if (mSelector == 1634689389)
  {
    if (self->mChannelEnableMaskAvailable)
    {
      if (v10 == 4)
      {
        v22 = *andData;
        if (!v22)
        {
          v43 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v43)
          {
            sub_18530(v43, v44, v45, v46, v47, v48, v49, v50);
          }

          v51 = __cxa_allocate_exception(0x10uLL);
          *v51 = off_24B48;
          v51[2] = 1852797029;
        }

        AOPAudioDeviceHWManager::HW_AudioSetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 1u, v22);
        sub_1FF8("Device::setProperty(kAOPAudioDriverActiveChannelMask) new value: %d\n", v22);
        v67 = 0;
        *v66 = *"maoabolg";
        plugin3 = [(AppleAOPAudioDevice *)self plugin];
        [plugin3 changedProperty:v66 forObject:self];
      }

      goto LABEL_41;
    }

LABEL_45:
    v26 = 0;
    if (!v16)
    {
      return v26;
    }

    goto LABEL_43;
  }

  if (mSelector != 1634690413)
  {
    if (mSelector == 1634692199)
    {
      if (v10 == 4)
      {
        v18 = *andData != 0;
        AOPAudioDeviceHWManager::HW_AudioSetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 3u, v18);
        sub_1FF8("Device::setProperty(kAOPAudioDevicePropertyEnableListeningOnGesture) new value: %d\n", v18);
        v67 = 0;
        *v66 = *"gloabolg";
        plugin4 = [(AppleAOPAudioDevice *)self plugin];
        [plugin4 changedProperty:v66 forObject:self];
      }

      goto LABEL_41;
    }

LABEL_26:
    v61.receiver = self;
    v61.super_class = AppleAOPAudioDevice;
    v26 = [(AppleAOPAudioDevice *)&v61 setProperty:property withQualifierSize:v12 qualifierData:data dataSize:v10 andData:andData forClient:v8];
    if (!v16)
    {
      return v26;
    }

    goto LABEL_43;
  }

  if (v10 != 4)
  {
LABEL_41:
    v26 = 1;
    goto LABEL_42;
  }

  v27 = *andData;
  v66[0] = 0;
  if (!self->mChannelEnableMaskAvailable)
  {
    goto LABEL_45;
  }

  ControlValue = AOPAudioDeviceHWManager::HW_AudioGetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 0, v66);
  if (!v27)
  {
    v52 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v52)
    {
      sub_1856C(v52, v53, v54, v55, v56, v57, v58, v59);
    }

    v60 = __cxa_allocate_exception(0x10uLL);
    *v60 = off_24B48;
    v60[2] = 1852797029;
  }

  if (v66[0] == v27 || !ControlValue)
  {
    goto LABEL_41;
  }

  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_A75C;
  v62[3] = &unk_24990;
  v62[4] = self;
  v63 = v27;
  [(AppleAOPAudioDevice *)self requestConfigurationChange:v62];
  AOPAudioDeviceHWManager::HW_AudioGetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 0, v66);
  v26 = v66[0] == v27;
  if (v66[0] != v27)
  {
    sub_8C70("Device::setProperty(kAOPAudioDriverEnabledChannelMask) failed to set mask to 0x%x, read back 0x%x\n", v27, v66[0]);
  }

LABEL_42:
  if (v16)
  {
LABEL_43:
    (*(*ptr + 24))(ptr);
  }

  return v26;
}

- (void)startInput:(BOOL)input
{
  mStartCount = self->mStartCount;
  if (input)
  {
    if (!mStartCount)
    {
      if (self->mMeasureTrigToIOStartDelta)
      {
        self->mMeasureTrigToIOStartDelta = 0;
        v5 = (clock() - self->mLastVoiceTrigEventTime) * 0.00100000005;
        sub_1FF8("Audio Plugin: Voice Trigger to IO start = %lf ms", v5);
        if (v5 > 200.0)
        {
          sub_AABC("Audio Plugin: Voice Trigger to IO start = %lf ms exceeds theshold of %d ms", v5, 200);
        }
      }

      AOPAudioDeviceHWManager::HW_StartIO(self->mAOPAudioHWManagerPtr.__ptr_);
      sub_1FF8("Device::startInput ,HW_StartIO(), inStart=%d, mStartCount=%d ", 1, self->mStartCount);
      mStartCount = self->mStartCount;
    }

    self->mStartCount = mStartCount + 1;
  }

  else if (mStartCount)
  {
    v6 = mStartCount - 1;
    self->mStartCount = v6;
    if (!v6)
    {
      AOPAudioDeviceHWManager::HW_StopIO(self->mAOPAudioHWManagerPtr.__ptr_);
      sub_1FF8("Device::startInput ,HW_StopIO(), inStart=%d, mStartCount=%d ", 0, self->mStartCount);
    }
  }

  else
  {
    sub_8C70("Device::startInput , Unmatched call to stop input, inStart=%d, mStartCount=%d ", 0, 0);
  }
}

- (void)enableListening:(BOOL)listening
{
  listeningCopy = listening;
  kdebug_trace();
  if (self->mPastDataListeningEnabled || !listeningCopy)
  {
    if (self->mPastDataListeningEnabled && !listeningCopy)
    {
      AOPAudioDeviceHWManager::HW_DisableListening(self->mAOPAudioHWManagerPtr.__ptr_);
      sub_1FF8("Device::enableListening, inEanble=%d, HW_DisableListening()");
    }
  }

  else
  {
    AOPAudioDeviceHWManager::HW_EnableListening(self->mAOPAudioHWManagerPtr.__ptr_);
    sub_1FF8("Device::enableListening, inEanble=%d, HW_EnableListening()");
  }

  self->mPastDataListeningEnabled = listeningCopy;

  kdebug_trace();
}

- (__CFDictionary)voiceTriggerGetData
{
  v10 = 0;
  AOPAudioDeviceHWManager::HW_GetVoiceTriggerData(self->mAOPAudioHWManagerPtr.__ptr_, &outputStruct);
  v8 = 0;
  v9.var0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *&v9.var1 = 256;
  v6 = 0;
  v7 = 0;
  AOPAudioDeviceHWManager::HW_ReadIOTimeStampStatusBuffer(self->mAOPAudioHWManagerPtr.__ptr_, &v8, &v10, &v7, &v6);
  v12 -= v10;
  CACFDictionary::AddUInt64(&v9, @"trigger-time", outputStruct);
  CACFDictionary::AddUInt64(&v9, @"trigger-sample-frame-time", v12);
  CACFDictionary::AddUInt32(&v9, @"trigger-length", v13);
  CACFDictionary::AddUInt32(&v9, @"trigger-type", 0);
  CACFDictionary::AddUInt32(&v9, @"trigger-woke-ap", v15 == 1651470949);
  sub_1FF8("AudioDevice::voiceTriggerGetData() data: {ts %lld, st %llu, cnt %u, woke %d}, st delta %lld\n", outputStruct, v12, v14, v15 == 1651470949, v10);
  v3 = CFDataCreate(kCFAllocatorDefault, &length[4], *length);
  if (v3)
  {
    CACFDictionary::AddData(&v9, @"trigger-config-blob", v3);
    CFRelease(v3);
  }

  else
  {
    sub_8C70("Device::voiceTriggerGetData failed to allocate CFDataRef for the VT config blob {%p, %u bytes}\n", &length[4], *length);
  }

  var0 = v9.var0;
  sub_1FB8(&v9);
  return var0;
}

- (unsigned)readAvailablePastData
{
  ptr = self->mIOMutexPtr.__ptr_;
  v15[1] = ptr;
  v4 = (*(*ptr + 16))(ptr, a2);
  v5 = v4;
  v16 = v4;
  if (!self->mStartCount && !self->mPastDataListeningEnabled)
  {
    v10 = 0;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v6 = self->mAOPAudioHWManagerPtr.__ptr_;
  v7 = *(v6 + 16);
  getBytesPerPacket = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerPacket];
  v9 = *(v6 + 17);
  v14 = 0;
  v15[0] = 0;
  v12 = 0;
  v13 = 0;
  AOPAudioDeviceHWManager::HW_ReadIOTimeStampStatusBuffer(self->mAOPAudioHWManagerPtr.__ptr_, v15, &v14, &v13, &v12);
  if (v13 - v15[0] >= v7 / getBytesPerPacket - v9)
  {
    v10 = v7 / getBytesPerPacket - v9;
  }

  else
  {
    v10 = v13 - LODWORD(v15[0]);
  }

  if (v5)
  {
LABEL_7:
    (*(*ptr + 24))(ptr);
  }

  return v10;
}

- (basic_string<char,)getDiagonsticData
{
  v2 = v1;
  sub_B67C(&v56);
  sub_C0F4(&v56, "AppleAOPAudioDevice[", 20);
  v3 = std::ostream::operator<<();
  sub_C0F4(v3, "] = \n", 5);
  v4 = sub_C0F4(&v56, "DeviceName:                             ", 40);
  deviceName = [v2 deviceName];
  uTF8String = [deviceName UTF8String];
  v7 = strlen(uTF8String);
  v8 = sub_C0F4(v4, uTF8String, v7);
  sub_C0F4(v8, "\n", 1);

  v9 = sub_C0F4(&v56, "DeviceUID:                              ", 40);
  deviceUID = [v2 deviceUID];
  uTF8String2 = [deviceUID UTF8String];
  v12 = strlen(uTF8String2);
  v13 = sub_C0F4(v9, uTF8String2, v12);
  sub_C0F4(v13, "\n", 1);

  v14 = sub_C0F4(&v56, "ModelUID:                               ", 40);
  modelUID = [v2 modelUID];
  uTF8String3 = [modelUID UTF8String];
  v17 = strlen(uTF8String3);
  v18 = sub_C0F4(v14, uTF8String3, v17);
  sub_C0F4(v18, "\n", 1);

  v19 = sub_C0F4(&v56, "ManufacturerName:                       ", 40);
  manufacturerName = [v2 manufacturerName];
  uTF8String4 = [manufacturerName UTF8String];
  v22 = strlen(uTF8String4);
  v23 = sub_C0F4(v19, uTF8String4, v22);
  sub_C0F4(v23, "\n", 1);

  v24 = sub_C0F4(&v56, "ModelName:                              ", 40);
  modelName = [v2 modelName];
  uTF8String5 = [modelName UTF8String];
  v27 = strlen(uTF8String5);
  v28 = sub_C0F4(v24, uTF8String5, v27);
  sub_C0F4(v28, "\n", 1);

  sub_C0F4(&v56, "StartCount:                             ", 40);
  [v2 getStartCount];
  v29 = std::ostream::operator<<();
  sub_C0F4(v29, "\n", 1);
  v30 = sub_C0F4(&v56, "HALsAudioStreamDescription:           \n", 39);
  v31 = *(v2 + 8);
  if (v31)
  {
    objc_msgSend_dumpToString(v31);
    v32 = HIBYTE(v55);
    v34 = __p;
    v33 = v54;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
    __p = 0;
    v54 = 0;
    v55 = 0;
  }

  if ((v32 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v34;
  }

  if ((v32 & 0x80u) == 0)
  {
    v36 = v32;
  }

  else
  {
    v36 = v33;
  }

  v37 = sub_C0F4(v30, p_p, v36);
  sub_C0F4(v37, "\n", 1);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p);
  }

  v38 = sub_C0F4(&v56, "AOPInputAudioStreamDescription:       \n", 39);
  v39 = *(v2 + 16);
  if (v39)
  {
    objc_msgSend_dumpToString(v39);
    v40 = HIBYTE(v55);
    v42 = __p;
    v41 = v54;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v40 = 0;
    __p = 0;
    v54 = 0;
    v55 = 0;
  }

  if ((v40 & 0x80u) == 0)
  {
    v43 = &__p;
  }

  else
  {
    v43 = v42;
  }

  if ((v40 & 0x80u) == 0)
  {
    v44 = v40;
  }

  else
  {
    v44 = v41;
  }

  v45 = sub_C0F4(v38, v43, v44);
  sub_C0F4(v45, "\n", 1);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p);
  }

  sub_C0F4(&v56, "HALsAudioStreamIsActive:                ", 40);
  [*(v2 + 8) isActive];
  v46 = std::ostream::operator<<();
  sub_C0F4(v46, "\n", 1);
  sub_C0F4(&v56, "PastDataListeningEnabled:               ", 40);
  v47 = std::ostream::operator<<();
  sub_C0F4(v47, "\n", 1);
  v48 = sub_C0F4(&v56, "AuxIOStatus:                          \n", 39);
  v49 = operator<<(v48, (v2 + 88));
  sub_C0F4(v49, "\n", 1);
  AOPAudioDeviceHWManager::HW_DumpDriverState(*(v2 + 24));
  if (v55 >= 0)
  {
    v50 = &__p;
  }

  else
  {
    v50 = __p;
  }

  if (v55 >= 0)
  {
    v51 = HIBYTE(v55);
  }

  else
  {
    v51 = v54;
  }

  sub_C0F4(&v56, v50, v51);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v59 < 0)
  {
    operator delete(v58[7].__locale_);
  }

  std::locale::~locale(v58);
  std::ostream::~ostream();
  return std::ios::~ios();
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end
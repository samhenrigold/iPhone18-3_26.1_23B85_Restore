@interface AUPasscodeEncoder
+ (AudioComponentDescription)getAUDesc;
+ (void)registerAU;
- (AUPasscodeEncoder)initWithComponentDescription:(AudioComponentDescription *)description options:(unsigned int)options error:(id *)error;
- (BOOL)allocateRenderResourcesAndReturnError:(id *)error;
- (id).cxx_construct;
- (id)internalRenderBlock;
- (void)dealloc;
- (void)deallocateRenderResources;
- (void)handleEOFReachedForAsset;
- (void)reset;
@end

@implementation AUPasscodeEncoder

+ (AudioComponentDescription)getAUDesc
{
  *&retstr->componentType = xmmword_2415B17F0;
  retstr->componentFlagsMask = 0;
  return result;
}

+ (void)registerAU
{
  if (+[AUPasscodeEncoder registerAU]::gOnce != -1)
  {
    +[AUPasscodeEncoder registerAU];
  }
}

uint64_t __31__AUPasscodeEncoder_registerAU__block_invoke()
{
  v0 = MEMORY[0x277CEFD18];
  v1 = objc_opt_class();
  objc_msgSend_getAUDesc(AUPasscodeEncoder);
  return [v0 registerSubclass:v1 asComponentDescription:v3 name:@"AUPasscodeEncoder" version:1];
}

- (AUPasscodeEncoder)initWithComponentDescription:(AudioComponentDescription *)description options:(unsigned int)options error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  *&v33.__r_.__value_.__l.__data_ = *&description->componentType;
  LODWORD(v33.__r_.__value_.__r.__words[2]) = description->componentFlagsMask;
  v32.receiver = self;
  v32.super_class = AUPasscodeEncoder;
  v5 = [(AUAudioUnit *)&v32 initWithComponentDescription:&v33 options:*&options error:error];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:1 channels:44100.0];
    BufferedAudioBus::init(&v5->_inputBus, v6, 8);
    v7 = [objc_alloc(MEMORY[0x277CEFD20]) initWithFormat:v6 error:0];
    outputBus = v5->_outputBus;
    v5->_outputBus = v7;

    v9 = objc_alloc(MEMORY[0x277CEFD28]);
    bus = v5->_inputBus.bus;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&bus count:1];
    v11 = [v9 initWithAudioUnit:v5 busType:1 busses:v10];
    inputBusArray = v5->_inputBusArray;
    v5->_inputBusArray = v11;

    v13 = objc_alloc(MEMORY[0x277CEFD28]);
    v34 = v5->_outputBus;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v15 = [v13 initWithAudioUnit:v5 busType:2 busses:v14];
    outputBusArray = v5->_outputBusArray;
    v5->_outputBusArray = v15;

    [(AVAudioFormat *)v6 sampleRate];
    v18 = v17;
    v31 = 0;
    v33.__r_.__value_.__r.__words[0] = &v31;
    v19 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v5->_apcEncoderConfig, &v31, &std::piecewise_construct, &v33);
    v20 = (v19 + 5);
    HIDWORD(v37) = 0;
    LODWORD(v37) = (v18 + 0.5);
    v36 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    if (&v36 != (v19 + 5))
    {
      v21 = *v20;
      if (*v20)
      {
        *&v33.__r_.__value_.__l.__data_ = 0uLL;
        v21(2, v20, &v33, 0, 0);
        v36(2, &v36, v20, 0, 0);
        (v33.__r_.__value_.__l.__data_)(2, &v33, &v36, 0, 0);
        std::any::reset[abi:ne200100](&v33);
      }

      else
      {
        *(v19 + 12) = (v18 + 0.5);
        v19[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        v36 = 0;
      }
    }

    std::any::reset[abi:ne200100](&v36);
    channelCount = [(AVAudioFormat *)v6 channelCount];
    v31 = 1;
    v33.__r_.__value_.__r.__words[0] = &v31;
    v23 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v5->_apcEncoderConfig, &v31, &std::piecewise_construct, &v33);
    v24 = (v23 + 5);
    v37 = channelCount;
    v36 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    if (&v36 != (v23 + 5))
    {
      v25 = *v24;
      if (*v24)
      {
        *&v33.__r_.__value_.__l.__data_ = 0uLL;
        v25(2, v24, &v33, 0, 0);
        v36(2, &v36, v24, 0, 0);
        (v33.__r_.__value_.__l.__data_)(2, &v33, &v36, 0, 0);
        std::any::reset[abi:ne200100](&v33);
      }

      else
      {
        *(v23 + 12) = channelCount;
        v23[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        v36 = 0;
      }
    }

    std::any::reset[abi:ne200100](&v36);
    isInterleaved = [(AVAudioFormat *)v6 isInterleaved];
    v31 = 2;
    v33.__r_.__value_.__r.__words[0] = &v31;
    v27 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v5->_apcEncoderConfig, &v31, &std::piecewise_construct, &v33);
    v28 = (v27 + 5);
    v37 = isInterleaved;
    v36 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    if (&v36 != (v27 + 5))
    {
      v29 = *v28;
      if (*v28)
      {
        *&v33.__r_.__value_.__l.__data_ = 0uLL;
        v29(2, v28, &v33, 0, 0);
        v36(2, &v36, v28, 0, 0);
        (v33.__r_.__value_.__l.__data_)(2, &v33, &v36, 0, 0);
        std::any::reset[abi:ne200100](&v33);
      }

      else
      {
        *(v27 + 48) = isInterleaved;
        v27[5] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
        v36 = 0;
      }
    }

    std::any::reset[abi:ne200100](&v36);
    v5->_assetLength = 0;
    v5->_silenceOutputOnNextAssetEnding = 0;
    v5->_fadeOutTimeSeconds = 0.3;
    v5->_triggerFadeOut = 0;
    v5->_outputIsSilenced = 0;
    v5->_fadeOutNumSamples = 0;
    v5->_fadeOutSampleIndex = 0;
    v5->_embedPasscode = 1;
    v5->_numLoopsToStopAfter = 0;
    v5->_loopNumber = 0;
    v5->_beginningTime = 0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUPasscodeEncoder;
  [(AUAudioUnit *)&v2 dealloc];
}

- (void)handleEOFReachedForAsset
{
  if (self->_assetEndedAndSilencedHandler)
  {
    dispatchQueue = [(AUPasscodeEncoder *)self dispatchQueue];
    if (dispatchQueue)
    {
      [(AUPasscodeEncoder *)self dispatchQueue];
    }

    else
    {
      dispatch_get_global_queue(0, 0);
    }
    v4 = ;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__AUPasscodeEncoder_handleEOFReachedForAsset__block_invoke;
    block[3] = &unk_278CE1D58;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (BOOL)allocateRenderResourcesAndReturnError:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  codecConfig = [(AUPasscodeEncoder *)self codecConfig];
  if (!codecConfig)
  {
    goto LABEL_12;
  }

  payload = [(AUPasscodeEncoder *)self payload];
  if (!payload)
  {

    goto LABEL_12;
  }

  assetLength = [(AUPasscodeEncoder *)self assetLength];

  if (!assetLength)
  {
    goto LABEL_12;
  }

  codecConfig2 = [(AUPasscodeEncoder *)self codecConfig];
  numChannels = [codecConfig2 numChannels];

  if (numChannels > 1)
  {
    goto LABEL_12;
  }

  format = [(AUAudioUnitBus *)self->_inputBus.bus format];
  isInterleaved = [format isInterleaved];
  if (isInterleaved)
  {
    format2 = [(AUAudioUnitBus *)self->_inputBus.bus format];
    if ([format2 channelCount] > 1)
    {
      goto LABEL_15;
    }
  }

  format3 = [(AUAudioUnitBus *)self->_inputBus.bus format];
  if (![format3 isStandard])
  {

    if (!isInterleaved)
    {
LABEL_16:

      goto LABEL_24;
    }

LABEL_15:

    goto LABEL_16;
  }

  format4 = [(AUAudioUnitBus *)self->_outputBus format];
  isInterleaved2 = [format4 isInterleaved];
  v15 = isInterleaved2;
  if (isInterleaved2)
  {
    format5 = [(AUAudioUnitBus *)self->_outputBus format];
    if ([format5 channelCount] > 1)
    {
      v16 = 1;
LABEL_19:

      goto LABEL_21;
    }
  }

  obj = format4;
  format6 = [(AUAudioUnitBus *)self->_outputBus format];
  v16 = [format6 isStandard] ^ 1;

  if (v15)
  {
    format4 = obj;
    goto LABEL_19;
  }

LABEL_21:
  if (isInterleaved)
  {
  }

  if ((v16 & 1) == 0)
  {
    format7 = [(AUAudioUnitBus *)self->_outputBus format];
    channelCount = [format7 channelCount];
    codecConfig3 = [(AUPasscodeEncoder *)self codecConfig];
    numChannels2 = [codecConfig3 numChannels];

    if (numChannels2 <= channelCount)
    {
      v71.receiver = self;
      v71.super_class = AUPasscodeEncoder;
      LODWORD(v17) = [(AUAudioUnit *)&v71 allocateRenderResourcesAndReturnError:error];
      if (!v17)
      {
        return v17;
      }

      BufferedAudioBus::allocateRenderResources(&self->_inputBus, [(AUAudioUnit *)self maximumFramesToRender]);
      inputBusses = [(AUPasscodeEncoder *)self inputBusses];
      v25 = [inputBusses objectAtIndexedSubscript:0];
      format8 = [v25 format];
      [format8 sampleRate];
      v28 = v27;
      integerValue = 0;
      v75 = &integerValue;
      v29 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_apcEncoderConfig, &integerValue, &std::piecewise_construct, &v75);
      v30 = (v29 + 5);
      HIDWORD(v74) = 0;
      LODWORD(v74) = (v28 + 0.5);
      v73 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      if (&v73 != (v29 + 5))
      {
        v31 = *v30;
        if (*v30)
        {
          v75 = 0;
          v76 = 0;
          v31(2, v30, &v75, 0, 0);
          v73(2, &v73, v30, 0, 0);
          (v75)(2, &v75, &v73, 0, 0);
          std::any::reset[abi:ne200100](&v75);
        }

        else
        {
          *(v29 + 12) = (v28 + 0.5);
          v29[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
          v73 = 0;
        }
      }

      std::any::reset[abi:ne200100](&v73);

      inputBusses2 = [(AUPasscodeEncoder *)self inputBusses];
      v33 = [inputBusses2 objectAtIndexedSubscript:0];
      format9 = [v33 format];
      channelCount2 = [format9 channelCount];
      integerValue = 1;
      v75 = &integerValue;
      v36 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_apcEncoderConfig, &integerValue, &std::piecewise_construct, &v75);
      v37 = (v36 + 5);
      v74 = channelCount2;
      v73 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      if (&v73 != (v36 + 5))
      {
        v38 = *v37;
        if (*v37)
        {
          v75 = 0;
          v76 = 0;
          v38(2, v37, &v75, 0, 0);
          v73(2, &v73, v37, 0, 0);
          (v75)(2, &v75, &v73, 0, 0);
          std::any::reset[abi:ne200100](&v75);
        }

        else
        {
          *(v36 + 12) = channelCount2;
          v36[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
          v73 = 0;
        }
      }

      std::any::reset[abi:ne200100](&v73);

      inputBusses3 = [(AUPasscodeEncoder *)self inputBusses];
      v40 = [inputBusses3 objectAtIndexedSubscript:0];
      format10 = [v40 format];
      isInterleaved3 = [format10 isInterleaved];
      integerValue = 2;
      v75 = &integerValue;
      v43 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_apcEncoderConfig, &integerValue, &std::piecewise_construct, &v75);
      v44 = (v43 + 5);
      v74 = isInterleaved3;
      v73 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
      if (&v73 != (v43 + 5))
      {
        v45 = *v44;
        if (*v44)
        {
          v75 = 0;
          v76 = 0;
          v45(2, v44, &v75, 0, 0);
          v73(2, &v73, v44, 0, 0);
          (v75)(2, &v75, &v73, 0, 0);
          std::any::reset[abi:ne200100](&v75);
        }

        else
        {
          *(v43 + 48) = isInterleaved3;
          v43[5] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
          v73 = 0;
        }
      }

      std::any::reset[abi:ne200100](&v73);

      passcodeEmbedInfo = self->_passcodeEmbedInfo;
      if (passcodeEmbedInfo)
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        obja = [(NSMutableDictionary *)passcodeEmbedInfo allKeys];
        v47 = [obja countByEnumeratingWithState:&v66 objects:v72 count:16];
        if (v47)
        {
          v48 = *v67;
          do
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v67 != v48)
              {
                objc_enumerationMutation(obja);
              }

              v50 = *(*(&v66 + 1) + 8 * i);
              v51 = [(NSMutableDictionary *)self->_passcodeEmbedInfo objectForKeyedSubscript:v50];
              unsignedLongValue = [v51 unsignedLongValue];
              integerValue = [v50 integerValue];
              v75 = &integerValue;
              v53 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_apcEncoderConfig, &integerValue, &std::piecewise_construct, &v75);
              v54 = (v53 + 5);
              v74 = unsignedLongValue;
              v73 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
              if (&v73 != (v53 + 5))
              {
                v55 = *v54;
                if (*v54)
                {
                  v75 = 0;
                  v76 = 0;
                  v55(2, v54, &v75, 0, 0);
                  v73(2, &v73, v54, 0, 0);
                  (v75)(2, &v75, &v73, 0, 0);
                  std::any::reset[abi:ne200100](&v75);
                }

                else
                {
                  *(v53 + 12) = unsignedLongValue;
                  v53[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
                  v73 = 0;
                }
              }

              std::any::reset[abi:ne200100](&v73);
            }

            v47 = [obja countByEnumeratingWithState:&v66 objects:v72 count:16];
          }

          while (v47);
        }
      }

      codecConfig4 = [(AUPasscodeEncoder *)self codecConfig];
      payload2 = [(AUPasscodeEncoder *)self payload];
      objc_msgSend_createEncoderWithConfig_apcConfig_payloadData_(APCCodecFactory);
      v58 = v75;
      v75 = 0;
      ptr = self->_kernel.__ptr_;
      self->_kernel.__ptr_ = v58;
      if (ptr)
      {
        (*(*ptr + 8))(ptr);
        v60 = v75;
        v75 = 0;
        if (v60)
        {
          (*(*v60 + 8))(v60);
        }
      }

      if (self->_kernel.__ptr_)
      {
        self->_assetSampleCount = 0;
        self->_silenceOutputOnNextAssetEnding = 0;
        self->_fadeOutNumSamples = 0;
        self->_triggerFadeOut = 0;
        LOBYTE(v17) = 1;
        self->_embedPasscode = 1;
        self->_loopNumber = 1;
        self->_beginningTime = 0;
        return v17;
      }

      [(AUAudioUnit *)self setRenderResourcesAllocated:0];
    }

    else if (error)
    {
      goto LABEL_25;
    }

LABEL_12:
    LOBYTE(v17) = 0;
    return v17;
  }

LABEL_24:
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_25:
  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10875 userInfo:0];
  v17 = v19;
  LOBYTE(v17) = 0;
  *error = v19;
  return v17;
}

- (void)deallocateRenderResources
{
  p_inputBus = &self->_inputBus;
  pcmBuffer = self->_inputBus.pcmBuffer;
  self->_inputBus.pcmBuffer = 0;

  p_inputBus->originalAudioBufferList = 0;
  p_inputBus->mutableAudioBufferList = 0;
  v5.receiver = self;
  v5.super_class = AUPasscodeEncoder;
  [(AUAudioUnit *)&v5 deallocateRenderResources];
}

- (void)reset
{
  self->_outputIsSilenced = 0;
  self->_silenceOutputOnNextAssetEnding = 0;
  self->_assetSampleCount = 0;
  self->_fadeOutNumSamples = 0;
  self->_triggerFadeOut = 0;
  self->_embedPasscode = 1;
  self->_loopNumber = 1;
  self->_beginningTime = 0;
  v2.receiver = self;
  v2.super_class = AUPasscodeEncoder;
  [(AUAudioUnit *)&v2 reset];
}

- (id)internalRenderBlock
{
  p_inputBus = &self->_inputBus;
  format = [(AUAudioUnitBus *)self->_inputBus.bus format];
  [format sampleRate];
  v6 = v5;

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = &self->_passcodeEmbedInfo;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__AUPasscodeEncoder_internalRenderBlock__block_invoke;
  v9[3] = &unk_278CE1EB0;
  v9[6] = &self->_assetSampleCount;
  v9[7] = &self->_beginningTime;
  v9[8] = &self->_assetLength;
  v9[9] = &self->_outputIsSilenced;
  v9[10] = &self->_embedPasscode;
  v9[11] = &self->_kernel;
  v9[4] = v10;
  v9[5] = p_inputBus;
  v9[12] = &self->_triggerFadeOut;
  v9[13] = &self->_fadeOutNumSamples;
  v9[14] = &self->_fadeOutTimeSeconds;
  v9[15] = v6;
  v9[16] = &self->_fadeOutSampleIndex;
  v9[17] = &self->_numLoopsToStopAfter;
  v9[18] = &self->_loopNumber;
  v9[19] = &self->_silenceOutputOnNextAssetEnding;
  v9[20] = &self->_rtMessenger;
  v9[21] = &self->_eofMessage;
  v7 = MEMORY[0x245CEABB0](v9);
  _Block_object_dispose(v10, 8);

  return v7;
}

uint64_t __40__AUPasscodeEncoder_internalRenderBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, void *a8)
{
  v12 = a8;
  v56 = 0;
  v13 = BufferedInputBus::pullInput(*(a1 + 40), &v56, a3, a4, 0, v12);
  if (!v13)
  {
    v51 = v12;
    v55 = *(*(a1 + 40) + 32);
    if (!*(a6 + 2))
    {
      v14 = *a6;
      if (v14)
      {
        v15 = (v55 + 16);
        v16 = a6 + 4;
        do
        {
          v17 = *v15;
          v15 += 2;
          *v16 = v17;
          v16 += 4;
          --v14;
        }

        while (v14);
      }
    }

    if (a4)
    {
      v18 = 0;
      v19 = 0x277CCA000uLL;
      v20 = a4;
      v52 = a4;
      v53 = a4;
      v54 = a6;
      do
      {
        v21 = **(a1 + 48);
        if (!v21)
        {
          v22 = mach_absolute_time();
          v23 = *(a1 + 48);
          **(a1 + 56) = v22;
          v21 = *v23;
        }

        v24 = **(a1 + 64) - v21;
        if (v20 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v20;
        }

        v26 = (*(a6 + 2) + 4 * v18);
        if (**(a1 + 72) == 1)
        {
          LODWORD(v25) = a4 - v18;
          vDSP_vclr((*(a6 + 2) + 4 * v18), 1, a4 - v18);
        }

        else
        {
          v27 = (*(v55 + 16) + 4 * v18);
          if (**(a1 + 80) == 1)
          {
            (*(***(a1 + 88) + 16))(**(a1 + 88), v27, *(a6 + 2) + 4 * v18, v25);
            if (!(*(***(a1 + 88) + 32))(**(a1 + 88)) && **(a1 + 56))
            {
              v28 = mach_absolute_time();
              v29 = **(*(*(a1 + 32) + 8) + 24);
              v30 = [*(v19 + 2992) numberWithUnsignedInteger:v28 - **(a1 + 56)];
              v31 = v19;
              v32 = v30;
              v33 = [*(v31 + 2992) numberWithInt:1001];
              [v29 setObject:v32 forKey:v33];

              **(a1 + 56) = 0;
            }
          }

          else if (v25)
          {
            memmove((*(a6 + 2) + 4 * v18), v27, 4 * v25);
          }

          v34 = *(a1 + 96);
          if (*v34 == 1)
          {
            v35 = llround(*(a1 + 120) * **(a1 + 112));
            if (v35 <= 1)
            {
              LODWORD(v35) = 1;
            }

            **(a1 + 104) = v35;
            **(a1 + 128) = 0;
            *v34 = 0;
          }

          v36 = **(a1 + 136);
          if (v36 && v36 <= **(a1 + 144))
          {
            **(a1 + 152) = 1;
          }

          if (**(a1 + 104))
          {
            v37 = v25 == 0;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v38 = v25;
            do
            {
              v39 = *(a1 + 72);
              if (*v39)
              {
                *v26 = 0.0;
              }

              else
              {
                v40 = *(a1 + 128);
                v41 = *v40;
                v42 = *(a1 + 104);
                v43 = *v40 / *v42;
                v44 = *v26;
                *v26 = (1.0 - v43) * (v44 * expf(v43 * -2.0));
                *v40 = v41 + 1;
                if (v41 + 1 >= *v42)
                {
                  *v39 = 1;
                  caulk::concurrent::messenger::enqueue(**(a1 + 160), **(a1 + 168));
                }
              }

              ++v26;
              --v38;
            }

            while (v38);
          }

          if (**(a1 + 64) - **(a1 + 48) <= v52)
          {
            (*(***(a1 + 88) + 24))(**(a1 + 88));
            LODWORD(a4) = v53;
            a6 = v54;
            v19 = 0x277CCA000;
            if (**(a1 + 152) == 1)
            {
              **(a1 + 72) = 1;
              caulk::concurrent::messenger::enqueue(**(a1 + 160), **(a1 + 168));
            }

            ++**(a1 + 144);
          }

          else
          {
            LODWORD(a4) = v53;
            a6 = v54;
            v19 = 0x277CCA000;
          }
        }

        v18 += v25;
        v20 -= v25;
        v45 = *(a1 + 48);
        v46 = *v45 + v25;
        *v45 = v46;
        if (v46 >= **(a1 + 64))
        {
          v46 = 0;
        }

        *v45 = v46;
      }

      while (v18 < a4);
    }

    if (*a6 >= 2)
    {
      v47 = 4 * a4;
      v48 = 1;
      v49 = 8;
      do
      {
        memcpy(*&a6[v49], *(a6 + 2), v47);
        ++v48;
        v49 += 4;
      }

      while (v48 < *a6);
    }

    v13 = 0;
    v12 = v51;
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 72) = 0;
  *(self + 73) = 0;
  *(self + 148) = 0;
  *(self + 76) = 0;
  *(self + 77) = 0;
  *(self + 75) = 0;
  *(self + 82) = 0;
  *(self + 83) = 0;
  *(self + 81) = self + 656;
  *(self + 86) = 0;
  *(self + 87) = 0;
  return self;
}

@end
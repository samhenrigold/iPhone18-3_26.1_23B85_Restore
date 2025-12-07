@interface AUAudioUnitOfflineProcessor
- (AUAudioUnitOfflineProcessor)initWithAudioUnit:(id)unit inputFileURL:(id)l outputFileURL:(id)rL ioSampleRate:(int64_t)rate;
- (BOOL)run;
- (_DWORD)initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:;
- (id).cxx_construct;
@end

@implementation AUAudioUnitOfflineProcessor

- (AUAudioUnitOfflineProcessor)initWithAudioUnit:(id)unit inputFileURL:(id)l outputFileURL:(id)rL ioSampleRate:(int64_t)rate
{
  v64 = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  lCopy = l;
  rLCopy = rL;
  v59.receiver = self;
  v59.super_class = AUAudioUnitOfflineProcessor;
  renderResourcesAllocated = [(AUAudioUnitOfflineProcessor *)&v59 init];
  v15 = renderResourcesAllocated;
  if (!renderResourcesAllocated)
  {
    goto LABEL_20;
  }

  if (!unitCopy)
  {
    goto LABEL_6;
  }

  renderResourcesAllocated = [unitCopy renderResourcesAllocated];
  v16 = renderResourcesAllocated ^ 1;
  if (!lCopy)
  {
    v16 = 0;
  }

  if ((v16 & 1) == 0)
  {
LABEL_6:
    v17 = APCLogObject(renderResourcesAllocated);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_24158E000, v17, OS_LOG_TYPE_ERROR, "Bad input argument to AUAudioUnitOfflineProcessor", buf, 2u);
    }

LABEL_18:

LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  inputBusses = [unitCopy inputBusses];
  if ([inputBusses count] != 1)
  {

LABEL_16:
    v17 = APCLogObject(v21);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_24158E000, v17, OS_LOG_TYPE_ERROR, "AUAudioUnitOfflineProcessor only supports single bus IO audio units", buf, 2u);
    }

    goto LABEL_18;
  }

  outputBusses = [unitCopy outputBusses];
  v20 = [outputBusses count] == 1;

  if (!v20)
  {
    goto LABEL_16;
  }

  objc_storeStrong((v15 + 24), unit);
  outExtAudioFile = 0;
  v22 = ExtAudioFileOpenURL(lCopy, &outExtAudioFile);
  v23 = v22;
  if (v22)
  {
    v24 = APCLogObject(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "open input file";
      *&buf[12] = 1024;
      *&buf[14] = v23;
      _os_log_impl(&dword_24158E000, v24, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", buf, 0x12u);
    }

    goto LABEL_19;
  }

  std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100]((v15 + 8), outExtAudioFile);
  ioPropertyDataSize = 8;
  Property = ExtAudioFileGetProperty(*(v15 + 8), 0x2366726Du, &ioPropertyDataSize, (v15 + 144));
  v27 = Property;
  if (Property)
  {
    v28 = APCLogObject(Property);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "query input file length";
      *&buf[12] = 1024;
      *&buf[14] = v27;
      _os_log_impl(&dword_24158E000, v28, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", buf, 0x12u);
    }

LABEL_34:

    goto LABEL_19;
  }

  v63 = 0;
  memset(buf, 0, sizeof(buf));
  ioPropertyDataSize = 40;
  v29 = ExtAudioFileGetProperty(*(v15 + 8), 0x66666D74u, &ioPropertyDataSize, buf);
  v30 = v29;
  if (v29)
  {
    v28 = APCLogObject(v29);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LODWORD(inPropertyData.mSampleRate) = 136315394;
      *(&inPropertyData.mSampleRate + 4) = "query input file format";
      LOWORD(inPropertyData.mFormatFlags) = 1024;
      *(&inPropertyData.mFormatFlags + 2) = v30;
      _os_log_impl(&dword_24158E000, v28, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", &inPropertyData, 0x12u);
    }

    goto LABEL_34;
  }

  rateCopy = *buf;
  if (rate >= 0)
  {
    rateCopy = rate;
  }

  inPropertyData.mSampleRate = rateCopy;
  *&inPropertyData.mFormatID = xmmword_2415B1840;
  *&inPropertyData.mBytesPerFrame = xmmword_2415B1850;
  v32 = ExtAudioFileSetProperty(*(v15 + 8), 0x63666D74u, 0x28u, &inPropertyData);
  v33 = v32;
  if (v32)
  {
    v28 = APCLogObject(v32);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v60 = 136315394;
      *&v60[4] = "set input file client data format";
      *&v60[12] = 1024;
      *&v60[14] = v33;
      _os_log_impl(&dword_24158E000, v28, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", v60, 0x12u);
    }

    goto LABEL_34;
  }

  v34 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&inPropertyData];
  inputBusses2 = [unitCopy inputBusses];
  v36 = [inputBusses2 objectAtIndexedSubscript:0];
  v56 = 0;
  [v36 setFormat:v34 error:&v56];
  v37 = v56;

  if (v37)
  {
    v39 = APCLogObject(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v60 = 138412290;
      *&v60[4] = v37;
      _os_log_impl(&dword_24158E000, v39, OS_LOG_TYPE_ERROR, "Error setting the AU input bus format: %@", v60, 0xCu);
    }

LABEL_43:
    v44 = v15;
LABEL_44:

    goto LABEL_19;
  }

  outputBusses2 = [unitCopy outputBusses];
  v41 = [outputBusses2 objectAtIndexedSubscript:0];
  v55 = 0;
  [v41 setFormat:v34 error:&v55];
  v37 = v55;

  if (v37)
  {
    v43 = APCLogObject(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v60 = 138412290;
      *&v60[4] = v37;
      _os_log_impl(&dword_24158E000, v43, OS_LOG_TYPE_ERROR, "Error setting the AU output bus format: %@", v60, 0xCu);
    }

    goto LABEL_43;
  }

  if (rLCopy)
  {
    v45 = ExtAudioFileCreateWithURL(rLCopy, 0x57415645u, &inPropertyData, 0, 1u, &outExtAudioFile);
    v46 = v45;
    if (v45)
    {
      v44 = APCLogObject(v45);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v60 = 136315394;
        *&v60[4] = "create output file";
        *&v60[12] = 1024;
        *&v60[14] = v46;
        _os_log_impl(&dword_24158E000, v44, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", v60, 0x12u);
      }

      v37 = v15;
      goto LABEL_44;
    }

    std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100]((v15 + 16), outExtAudioFile);
  }

  objc_initWeak(&location, v15);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __89__AUAudioUnitOfflineProcessor_initWithAudioUnit_inputFileURL_outputFileURL_ioSampleRate___block_invoke;
  v52[3] = &unk_278CE1ED8;
  objc_copyWeak(&v53, &location);
  v47 = MEMORY[0x245CEABB0](v52);
  v48 = *(v15 + 136);
  *(v15 + 136) = v47;

  [AUAudioUnitOfflineProcessor initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:]::$_0::operator()<CA::StreamDescription,std::vector<float>>(&inPropertyData, (v15 + 88), v60);
  v49 = *(v15 + 40);
  if (v49)
  {
    *(v15 + 48) = v49;
    operator delete(v49);
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
  }

  *(v15 + 40) = *v60;
  *(v15 + 56) = *&v60[16];
  [AUAudioUnitOfflineProcessor initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:]::$_0::operator()<CA::StreamDescription,std::vector<float>>(&inPropertyData, (v15 + 112), v60);
  v50 = *(v15 + 64);
  if (v50)
  {
    *(v15 + 72) = v50;
    operator delete(v50);
    *(v15 + 64) = 0;
    *(v15 + 72) = 0;
    *(v15 + 80) = 0;
  }

  *(v15 + 64) = *v60;
  *(v15 + 80) = *&v60[16];
  v51 = APCLogObject(v50);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *v60 = 0;
    _os_log_impl(&dword_24158E000, v51, OS_LOG_TYPE_INFO, "Finished offline processor init", v60, 2u);
  }

  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);

LABEL_20:
  return v15;
}

uint64_t __89__AUAudioUnitOfflineProcessor_initWithAudioUnit_inputFileURL_outputFileURL_ioSampleRate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, UInt32 a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  ioNumberFrames = a4;
  v9 = ExtAudioFileRead(*(WeakRetained + 1), &ioNumberFrames, *(WeakRetained + 5));
  v10 = v9;
  if (v9)
  {
    v11 = APCLogObject(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v10;
      _os_log_impl(&dword_24158E000, v11, OS_LOG_TYPE_ERROR, "Read of source file error: %d", buf, 8u);
    }
  }

  else
  {
    if (ioNumberFrames != a4)
    {
      v12 = APCLogObject(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v12, OS_LOG_TYPE_ERROR, "Read of source file returned an unexpected number of frames", buf, 2u);
      }
    }

    *a6 = 1;
    *(a6 + 8) = 1;
    v13 = *(WeakRetained + 5);
    v14 = *v13;
    if (v14 != (*(WeakRetained + 6) - v13 - 8) >> 4)
    {
      __89__AUAudioUnitOfflineProcessor_initWithAudioUnit_inputFileURL_outputFileURL_ioSampleRate___block_invoke_cold_1();
    }

    if (!v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "accessing a CA::BufferList with an out-of-range index");
      exception->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(exception, off_278CE1CD0, MEMORY[0x277D825F8]);
    }

    *(a6 + 16) = *(v13 + 2);
    *(a6 + 12) = v13[3];
  }

  return v10;
}

- (_DWORD)initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:
{
  if ((*(self + 12) & 0x20) != 0)
  {
    v6 = *(self + 28);
  }

  else
  {
    v6 = 1;
  }

  LOBYTE(v17) = 0;
  std::vector<char>::vector[abi:ne200100](&v18, (16 * v6) | 8, &v17);
  *v18 = v6;
  if ((*(self + 12) & 0x20) != 0)
  {
    v8 = (*(self + 28) << 11);
  }

  else
  {
    v8 = 2048;
  }

  v17 = 0;
  result = std::vector<float>::assign(a2, v8, &v17, v7);
  v10 = v18;
  v11 = v19;
  v12 = *v18;
  if (v12 != (v19 - v18 - 8) >> 4)
  {
    __89__AUAudioUnitOfflineProcessor_initWithAudioUnit_inputFileURL_outputFileURL_ioSampleRate___block_invoke_cold_1();
  }

  if (v12)
  {
    v13 = 0;
    v14 = *a2;
    v15 = v12 << 11;
    v16 = v18 + 4;
    do
    {
      *v16 = v14 + 4 * (v13 & 0xFFFFF800);
      *(v16 - 1) = 0x200000000001;
      v13 += 2048;
      v16 += 2;
    }

    while (v15 != v13);
  }

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v20;
  return result;
}

- (BOOL)run
{
  v30 = *MEMORY[0x277D85DE8];
  audioUnit = self->_audioUnit;
  v23 = 0;
  v4 = [(AUAudioUnit *)audioUnit allocateRenderResourcesAndReturnError:&v23];
  v5 = v23;
  v6 = v5;
  if (v5 != 0 || !v4)
  {
    v18 = APCLogObject(v5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&dword_24158E000, v18, OS_LOG_TYPE_ERROR, "Allocate resources failed on AU: %@", buf, 0xCu);
    }

LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  renderBlock = [(AUAudioUnit *)self->_audioUnit renderBlock];
  renderBlock = self->_renderBlock;
  self->_renderBlock = renderBlock;

  v28 = 0u;
  v29 = 0u;
  *buf = 0u;
  v27 = 0u;
  ExtAudioFileSeek(self->_srcFile.__ptr_, 0);
  outFrameOffset = 0;
  assetLength = self->_assetLength;
  if (assetLength >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = assetLength - v10;
      v12 = v11 >= 0x800 ? 2048 : v11;
      (*(self->_renderBlock + 2))();
      ptr = self->_destFile.__ptr_;
      if (ptr)
      {
        v14 = ExtAudioFileWrite(ptr, v12, self->_destBufferList.mStorage.__begin_);
        v15 = v14;
        if ((v14 + 66560) >= 2 && v14 != 0)
        {
          break;
        }
      }

      *buf = *buf + v12;
      ExtAudioFileTell(self->_srcFile.__ptr_, &outFrameOffset);
      v10 = outFrameOffset;
      assetLength = self->_assetLength;
      if (outFrameOffset >= assetLength)
      {
        goto LABEL_14;
      }
    }

    v20 = APCLogObject(v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v24 = 67109120;
      v25 = v15;
      _os_log_impl(&dword_24158E000, v20, OS_LOG_TYPE_ERROR, "AUAudioUnitOfflineProcessor write to output file failed (error %d)", v24, 8u);
    }

    goto LABEL_18;
  }

LABEL_14:
  std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](&self->_destFile.__ptr_, 0);
  v17 = 1;
LABEL_19:

  return v17;
}

- (id).cxx_construct
{
  self->_srcFile.__ptr_ = 0;
  self->_destFile.__ptr_ = 0;
  v4 = 0;
  std::vector<char>::vector[abi:ne200100](&self->_srcBufferList, 8, &v4);
  *self->_srcBufferList.mStorage.__begin_ = 0;
  v5 = 0;
  std::vector<char>::vector[abi:ne200100](&self->_destBufferList, 8, &v5);
  *self->_destBufferList.mStorage.__begin_ = 0;
  *&self->_srcAudioStorage.__begin_ = 0u;
  *&self->_srcAudioStorage.__cap_ = 0u;
  *&self->_destAudioStorage.__end_ = 0u;
  return self;
}

@end
@interface MotionDecoderWrapper
- (MotionDecoderWrapper)initWithEncoderSeqParams:(id)params;
- (char)getPointerToDataBuffer:(id)buffer;
- (id).cxx_construct;
- (id)motionDecoderWrapperLogSharedInstance;
- (int)decodeFrameInternal:(id)internal decodedFrame:(int *)frame decodeError:(unint64_t *)error;
- (void)dealloc;
@end

@implementation MotionDecoderWrapper

- (id)motionDecoderWrapperLogSharedInstance
{
  if ([MotionDecoderWrapper motionDecoderWrapperLogSharedInstance]::onceToken != -1)
  {
    [MotionDecoderWrapper motionDecoderWrapperLogSharedInstance];
  }

  v3 = [MotionDecoderWrapper motionDecoderWrapperLogSharedInstance]::sharedInstance;

  return v3;
}

void __61__MotionDecoderWrapper_motionDecoderWrapperLogSharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.signalcompression", "motionDecoderWrapper");
  v1 = [MotionDecoderWrapper motionDecoderWrapperLogSharedInstance]::sharedInstance;
  [MotionDecoderWrapper motionDecoderWrapperLogSharedInstance]::sharedInstance = v0;
}

- (char)getPointerToDataBuffer:(id)buffer
{
  bufferCopy = buffer;

  return [bufferCopy bytes];
}

- (MotionDecoderWrapper)initWithEncoderSeqParams:(id)params
{
  v33 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v20.receiver = self;
  v20.super_class = MotionDecoderWrapper;
  v5 = [(MotionDecoderWrapper *)&v20 init];
  if (v5)
  {
    v6 = operator new(8uLL);
    gcl::motion::Decoder::Decoder(v6);
    *(v5 + 1) = v6;
    v7 = [v5 getPointerToDataBuffer:paramsCopy];
    v8 = [paramsCopy length];
    __p = 0;
    v18 = 0;
    v19 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v7, v7 + v8, v8);
    v16 = 0;
    gcl::motion::Decoder::decodeSequenceParameterSet(*(v5 + 1), __p, [paramsCopy length], &v16, (v5 + 32));
    v9 = *(v5 + 5);
    *&v10 = v9;
    *(&v10 + 1) = SHIDWORD(v9);
    *(v5 + 1) = v10;
    motionDecoderWrapperLogSharedInstance = [v5 motionDecoderWrapperLogSharedInstance];
    if (os_log_type_enabled(motionDecoderWrapperLogSharedInstance, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v5[36];
      v13 = v5[37];
      v14 = *(v5 + 19);
      *buf = 67110400;
      v22 = v12;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      v27 = 1024;
      v28 = 0;
      v29 = 1024;
      v30 = 3;
      v31 = 1024;
      v32 = 0;
      _os_log_impl(&dword_26606F000, motionDecoderWrapperLogSharedInstance, OS_LOG_TYPE_DEFAULT, "Remote Encoder version is %d %d %d, Local Encoder version is %d %d %d", buf, 0x26u);
    }

    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  return v5;
}

- (void)dealloc
{
  decoder = self->decoder;
  if (decoder)
  {
    gcl::motion::Decoder::~Decoder(decoder);
    operator delete(v4);
  }

  v5.receiver = self;
  v5.super_class = MotionDecoderWrapper;
  [(MotionDecoderWrapper *)&v5 dealloc];
}

- (int)decodeFrameInternal:(id)internal decodedFrame:(int *)frame decodeError:(unint64_t *)error
{
  v41 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  v9 = [internalCopy length];
  v28 = 0;
  if (!v9)
  {
    v14 = 0;
    *error = 4;
    goto LABEL_12;
  }

  v10 = [(MotionDecoderWrapper *)self getPointerToDataBuffer:internalCopy];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v25, v10, &v10[v9], v9);
  std::vector<int>::vector[abi:ne200100](&__p, self->_componentsPerAttribute * self->_attributeCount);
  v11 = gcl::motion::Decoder::decodeFrame(self->decoder, v25, v9, &v28, __p);
  v12 = v11;
  if (v11)
  {
    *error = 5;
    if (v11 == 7)
    {
      *error = 6;
    }

    else if (v11 == 11)
    {
      *error = 7;
      motionDecoderWrapperLogSharedInstance = [(MotionDecoderWrapper *)self motionDecoderWrapperLogSharedInstance];
      if (os_log_type_enabled(motionDecoderWrapperLogSharedInstance, OS_LOG_TYPE_ERROR))
      {
        [MotionDecoderWrapper decodeFrameInternal:motionDecoderWrapperLogSharedInstance decodedFrame:? decodeError:?];
      }
    }

    motionDecoderWrapperLogSharedInstance2 = [(MotionDecoderWrapper *)self motionDecoderWrapperLogSharedInstance];
    if (os_log_type_enabled(motionDecoderWrapperLogSharedInstance2, OS_LOG_TYPE_ERROR))
    {
      CurrentFrameNumber = gcl::motion::Decoder::getCurrentFrameNumber(self->decoder);
      v18 = gcl::motion::Decoder::getlastDecodedFrameNumber(self->decoder);
      CurrentFrameQP = gcl::motion::Decoder::getCurrentFrameQP(self->decoder);
      CurrentFramePayloadLength = gcl::motion::Decoder::getCurrentFramePayloadLength(self->decoder);
      CurrentFrameFlags = gcl::motion::Decoder::getCurrentFrameFlags(self->decoder);
      *buf = 67110400;
      v30 = v12;
      v31 = 1024;
      v32 = CurrentFrameNumber;
      v33 = 1024;
      v34 = v18;
      v35 = 1024;
      v36 = CurrentFrameQP;
      v37 = 1024;
      v38 = CurrentFramePayloadLength;
      v39 = 1024;
      v40 = CurrentFrameFlags;
      _os_log_error_impl(&dword_26606F000, motionDecoderWrapperLogSharedInstance2, OS_LOG_TYPE_ERROR, "Failed to decode with error %d c:%d p:%d q:%d l:%d f:%d", buf, 0x26u);
    }

    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = __p;
    if (v24 != __p)
    {
      memmove(frame, __p, v24 - __p);
    }

    v14 = v28;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v24 = v15;
  operator delete(v15);
LABEL_9:
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

LABEL_12:

  return v14;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 45) = 0;
  return self;
}

- (void)decodeFrameInternal:(uint64_t)a1 decodedFrame:(NSObject *)a2 decodeError:.cold.1(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 36);
  v3 = *(a1 + 37);
  v4 = *(a1 + 38);
  v5[0] = 67110400;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  v10 = 1024;
  v11 = 0;
  v12 = 1024;
  v13 = 3;
  v14 = 1024;
  v15 = 0;
  _os_log_error_impl(&dword_26606F000, a2, OS_LOG_TYPE_ERROR, "Remote Encoder version is %d %d %d, Local Encoder version is %d %d %d", v5, 0x26u);
}

@end
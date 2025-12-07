@interface HSStageProxy
- (BOOL)decodeStateFromData:(id)data;
- (BOOL)hsDecode:(void *)decode;
- (BOOL)hsEncode:(void *)encode;
- (id)description;
- (id)name;
- (void)lock;
- (void)unlock;
@end

@implementation HSStageProxy

- (BOOL)decodeStateFromData:(id)data
{
  dataCopy = data;
  v8 = dataCopy;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(HSStageProxy *)self HSStageProxy_decodeStateFromData:v5];

  LOBYTE(self) = [v6 BOOLValue];
  return self;
}

- (BOOL)hsEncode:(void *)encode
{
  encodeStateToData = [(HSStageProxy *)self encodeStateToData];
  if (!encodeStateToData)
  {
    v7 = 0;
    goto LABEL_18;
  }

  HSUtil::Buffer::Buffer(v17, encodeStateToData);
  HSUtil::Decoder::Decoder(v14, v17, v5, v6);
  HSUtil::Decoder::decodeElement(v11, v14);
  if (!v14[0])
  {
    if (!*encode)
    {
      HSUtil::Encoder::_encodeDecoder(encode, v11);
      if (!*encode)
      {
        v7 = 1;
        goto LABEL_8;
      }
    }

    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStageProxy.mm", v18);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSStageProxy(Other) hsEncode:];
    }
  }

  v7 = 0;
LABEL_8:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v8 = v12;
  v12 = 0;
  if (v8)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v8);
    operator delete();
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v9 = v15;
  v15 = 0;
  if (v9)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v9);
    operator delete();
  }

  HSUtil::Buffer::~Buffer(v17);
LABEL_18:

  return v7;
}

- (BOOL)hsDecode:(void *)decode
{
  v5 = HSUtil::EncoderBuf::EncoderBuf(&v12);
  if (!v12)
  {
    HSUtil::Encoder::_encodeDecoder(v5, decode);
  }

  v6 = HSUtil::EncoderBuf::buffer(&v12);
  if (*(v6 + 5))
  {
    v8 = HSUtil::Buffer::getNSData(v6, v7);
    v9 = [(HSStageProxy *)self decodeStateFromData:v8];
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSStageProxy.mm", v11);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSStageProxy(Other) hsDecode:];
    }

    v9 = 0;
  }

  HSUtil::Buffer::~Buffer(&v18);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](&v13);
  return v9;
}

- (void)lock
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "-lock can't be called remotely");
}

- (void)unlock
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "-unlock can't be called remotely");
}

- (id)name
{
  v6.receiver = self;
  v6.super_class = HSStageProxy;
  name = [(HSStageProxy *)&v6 name];
  v3 = name;
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = @"HSStageProxy";
  }

  return v4;
}

- (id)description
{
  name = [(HSStageProxy *)self name];
  v4 = [NSString stringWithFormat:@"<HSStageProxy: %p : %@>", self, name];

  return v4;
}

@end
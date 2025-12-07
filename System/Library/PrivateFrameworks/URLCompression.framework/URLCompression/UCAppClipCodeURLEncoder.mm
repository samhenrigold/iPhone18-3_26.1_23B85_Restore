@interface UCAppClipCodeURLEncoder
+ (id)encoderWithExtendedInterfaceWithVersion:(int64_t)version;
- (UCAppClipCodeURLEncoder)initWithCodingVersion:(int64_t)version;
- (id).cxx_construct;
- (id)_convertRawURLEncodingBitsToAppClipCodeData:(const void *)data;
- (id)_errorFromCoderError:(const void *)error;
- (id)_errorWithCoderErrorCode:(int64_t)code codingErrorSymbol:(id)symbol message:(id)message;
- (id)_errorWithUnsupportedURLComponentType:(int64_t)type;
- (id)encodeURL:(id)l error:(id *)error;
- (id)encodeURLV0:(id)v0 error:(id *)error;
- (id)encodeURLV1:(id)v1 error:(id *)error;
- (id)resultForEncodingURL:(id)l error:(id *)error;
- (shared_ptr<UC::SUE::UCSegmentedURLEncodingResult>)_encodeURL:(id)l error:(id *)error;
- (void)clearCaches;
- (void)dealloc;
@end

@implementation UCAppClipCodeURLEncoder

+ (id)encoderWithExtendedInterfaceWithVersion:(int64_t)version
{
  v3 = [[self alloc] initWithCodingVersion:version];

  return v3;
}

- (UCAppClipCodeURLEncoder)initWithCodingVersion:(int64_t)version
{
  v8.receiver = self;
  v8.super_class = UCAppClipCodeURLEncoder;
  v4 = [(UCAppClipCodeURLEncoder *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_codingVersion = version;
    v4->_compressionVersion = [UCAppClipCodeEnDecUtility compressionVersionFromPayloadVersion:version];
    v6 = v5;
  }

  return v5;
}

- (void)dealloc
{
  std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](&self->_segmentedEncoder, 0);
  v3.receiver = self;
  v3.super_class = UCAppClipCodeURLEncoder;
  [(UCAppClipCodeURLEncoder *)&v3 dealloc];
}

- (id)_convertRawURLEncodingBitsToAppClipCodeData:(const void *)data
{
  if (self->_codingVersion)
  {
    v3 = *(data + 23);
    if (v3 >= 0)
    {
      dataCopy = data;
    }

    else
    {
      dataCopy = *data;
    }

    if (v3 >= 0)
    {
      v5 = *(data + 23);
    }

    else
    {
      v5 = *(data + 1);
    }

    UC::appClipCodeVersion1Bytes(dataCopy, v5, v12);
  }

  else
  {
    v6 = *(data + 23);
    if (v6 >= 0)
    {
      dataCopy2 = data;
    }

    else
    {
      dataCopy2 = *data;
    }

    if (v6 >= 0)
    {
      v8 = *(data + 23);
    }

    else
    {
      v8 = *(data + 1);
    }

    UC::appClipCodeVersion0Bytes(dataCopy2, v8, v12);
  }

  v9 = v12[0];
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v12[0] length:v12[1] - v12[0]];
  if (v9)
  {
    operator delete(v9);
  }

  return v10;
}

- (id)encodeURLV0:(id)v0 error:(id *)error
{
  v13 = 0;
  objc_msgSend__encodeURL_error_(self, a2, v0, &v13);
  v6 = v13;
  v7 = v6;
  if (error)
  {
    v8 = v6;
    *error = v7;
  }

  if (v14)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(v14);
    v10 = [(UCAppClipCodeURLEncoder *)self _convertRawURLEncodingBitsToAppClipCodeData:v11];
  }

  else
  {
    v10 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v10;
}

- (id)encodeURLV1:(id)v1 error:(id *)error
{
  v1Copy = v1;
  if (!self->_prefixedURLEncoder.__ptr_)
  {
    v6 = operator new(0x20uLL);
    UC::SUE::PrefixedURLEncoderImpl::PrefixedURLEncoderImpl(v6, self->_codingVersion);
    v14[0].__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<UC::SUE::PrefixedURLEncoderImpl>::reset[abi:ne200100](&self->_prefixedURLEncoder, v6);
    std::unique_ptr<UC::SUE::PrefixedURLEncoderImpl>::reset[abi:ne200100](v14, 0);
  }

  v7 = [UCAppClipCodeEnDecUtility prepareURL:v1Copy withCodingVersion:self->_codingVersion forCompressionVersion:self->_compressionVersion, v14[0].__r_.__value_.__r.__words[0]];

  ptr = self->_prefixedURLEncoder.__ptr_;
  UCURLComponentsFromNSURL(v14, v7);
  UC::SUE::PrefixedURLEncoderImpl::encodeURL(&v15, ptr, v14);
  UC::UCURLComponents::~UCURLComponents(&v14[0].__r_.__value_.__l.__data_);
  UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(&v15);
  v10 = [(UCAppClipCodeURLEncoder *)self _convertRawURLEncodingBitsToAppClipCodeData:v9];
  v11 = [UCAppClipCodeEnDecUtility prepareData:v10 withCompressionVersion:self->_compressionVersion forCodingVersion:self->_codingVersion];

  v12 = v16;
  v16 = 0;
  if (v12)
  {
    std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](&v16, v12);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v11;
}

- (id)encodeURL:(id)l error:(id *)error
{
  lCopy = l;
  compressionVersion = self->_compressionVersion;
  if (compressionVersion == 1)
  {
    v8 = [(UCAppClipCodeURLEncoder *)self encodeURLV1:lCopy error:error];
    goto LABEL_5;
  }

  if (!compressionVersion)
  {
    v8 = [(UCAppClipCodeURLEncoder *)self encodeURLV0:lCopy error:error];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)resultForEncodingURL:(id)l error:(id *)error
{
  lCopy = l;
  objc_msgSend__encodeURL_error_(self);
  v7 = 0;
  v8 = v7;
  if (error)
  {
    v9 = v7;
    *error = v8;
  }

  v10 = 0;
  if (v24 && !v8)
  {
    UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(v24);
    v12 = [(UCAppClipCodeURLEncoder *)self _convertRawURLEncodingBitsToAppClipCodeData:v11];
    v13 = MEMORY[0x277CCACA8];
    UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(v24);
    if (*(v14 + 23) >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *v14;
    }

    v16 = [v13 stringWithFormat:@"1%s", v15];
    v10 = [UCAppClipCodeURLEncodingResult resultWithRawEncodedBits:v16 appClipCodeBytes:v12];
    [(UCAppClipCodeURLEncodingResult *)v10 setUrl:lCopy];
    HostEncodingResult = UC::SUE::UCSegmentedURLEncodingResult::getHostEncodingResult(v24);
    UC::SUE::UCSegmentedURLEncodingResult::HostResult::getEncodingBits(HostEncodingResult);
    if (*(v18 + 23) >= 0)
    {
      v19 = *(v18 + 23);
    }

    else
    {
      v19 = *(v18 + 8);
    }

    [(UCAppClipCodeURLEncodingResult *)v10 setHostEncodedBitCount:v19];
    [(UCAppClipCodeURLEncodingResult *)v10 setHasPathOrQueryEncoding:UC::SUE::UCSegmentedURLEncodingResult::getHasPathOrQuery(v24)];
    v20 = UC::SUE::UCSegmentedURLEncodingResult::getHostEncodingResult(v24);
    FormatType = UC::SUE::UCSegmentedURLEncodingResult::HostResult::getFormatType(v20);
    if (FormatType == 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = FormatType == 1;
    }

    [(UCAppClipCodeURLEncodingResult *)v10 setHostEncodingFormat:v22];
    [(UCAppClipCodeURLEncodingResult *)v10 setTemplateType:UC::SUE::UCSegmentedURLEncodingResult::getTemplateType(v24) != 0];
    [(UCAppClipCodeURLEncodingResult *)v10 setSubdomainType:UC::SUE::UCSegmentedURLEncodingResult::HostResult::getFormatType(v24) != 0];
    [(UCAppClipCodeURLEncodingResult *)v10 setNonTemplatePathAndQueryEncodeType:UC::SUE::UCSegmentedURLEncodingResult::getNonTemplatePathAndQueryEncodeType(v24) != 0];
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  return v10;
}

- (id)_errorWithUnsupportedURLComponentType:(int64_t)type
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"UCURLCoderUnsupportedURLComponentType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.URLCompression.URLCoderErrorDomain" code:2 userInfo:v4];

  return v5;
}

- (id)_errorWithCoderErrorCode:(int64_t)code codingErrorSymbol:(id)symbol message:(id)message
{
  symbolCopy = symbol;
  messageCopy = message;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = dictionary;
  if (messageCopy)
  {
    [dictionary setObject:messageCopy forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (symbolCopy)
  {
    [v10 setObject:symbolCopy forKeyedSubscript:@"UCURLCoderErrorSymbol"];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.URLCompression.URLCoderErrorDomain" code:code userInfo:v10];

  return v11;
}

- (id)_errorFromCoderError:(const void *)error
{
  v5 = (error + 8);
  v6 = *(error + 31);
  if (v6 >= 0)
  {
    v7 = *(error + 31);
  }

  else
  {
    v7 = *(error + 2);
  }

  if (v7 != strlen("UCSegmentedURLCoderErrorDomain") || (v6 >= 0 ? (v8 = v5) : (v8 = *v5), memcmp(v8, "UCSegmentedURLCoderErrorDomain", v7)))
  {
    if (v7 != strlen("UCPrefixedURLCoderErrorDomain") || (v6 >= 0 ? (v9 = v5) : (v9 = *v5), memcmp(v9, "UCPrefixedURLCoderErrorDomain", v7)))
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = -1;
LABEL_15:
      v12 = [v10 errorWithDomain:@"com.apple.URLCompression.URLCoderErrorDomain" code:v11 userInfo:0];
LABEL_16:
      v13 = v12;
      goto LABEL_17;
    }
  }

  v13 = 0;
  v15 = *(error + 8);
  if (v15 <= 3)
  {
    switch(v15)
    {
      case 1:
        v10 = MEMORY[0x277CCA9B8];
        v11 = 1;
        goto LABEL_15;
      case 2:
        selfCopy3 = self;
        v29 = 0;
        break;
      case 3:
        selfCopy3 = self;
        v29 = 1;
        break;
      default:
        goto LABEL_17;
    }

    goto LABEL_72;
  }

  if (v15 <= 5)
  {
    if (v15 != 4)
    {
      v16 = *(error + 63);
      if (v16 >= 0)
      {
        v17 = error + 40;
      }

      else
      {
        v17 = *(error + 5);
      }

      if (v16 >= 0)
      {
        v18 = *(error + 63);
      }

      else
      {
        v18 = *(error + 6);
      }

      v19 = nsStringFromString(v17, v18);
      v22 = *(error + 8);
      v21 = error + 64;
      v20 = v22;
      v23 = v21[23];
      if (v23 >= 0)
      {
        v24 = v21;
      }

      else
      {
        v24 = v20;
      }

      if (v23 >= 0)
      {
        v25 = v21[23];
      }

      else
      {
        v25 = *(v21 + 1);
      }

      v26 = nsStringFromString(v24, v25);
      v27 = [(UCAppClipCodeURLEncoder *)self _errorWithCoderErrorCode:3 codingErrorSymbol:v19 message:v26];
      goto LABEL_70;
    }

    selfCopy3 = self;
    v29 = 2;
LABEL_72:
    v12 = [(UCAppClipCodeURLEncoder *)selfCopy3 _errorWithUnsupportedURLComponentType:v29];
    goto LABEL_16;
  }

  if (v15 == 6)
  {
    v39 = *(error + 63);
    if (v39 >= 0)
    {
      v40 = error + 40;
    }

    else
    {
      v40 = *(error + 5);
    }

    if (v39 >= 0)
    {
      v41 = *(error + 63);
    }

    else
    {
      v41 = *(error + 6);
    }

    v19 = nsStringFromString(v40, v41);
    v44 = *(error + 8);
    v43 = error + 64;
    v42 = v44;
    v45 = v43[23];
    if (v45 >= 0)
    {
      v46 = v43;
    }

    else
    {
      v46 = v42;
    }

    if (v45 >= 0)
    {
      v47 = v43[23];
    }

    else
    {
      v47 = *(v43 + 1);
    }

    v26 = nsStringFromString(v46, v47);
    v27 = [(UCAppClipCodeURLEncoder *)self _errorWithCoderErrorCode:4 codingErrorSymbol:v19 message:v26];
  }

  else
  {
    if (v15 != 8)
    {
      goto LABEL_17;
    }

    v30 = *(error + 63);
    if (v30 >= 0)
    {
      v31 = error + 40;
    }

    else
    {
      v31 = *(error + 5);
    }

    if (v30 >= 0)
    {
      v32 = *(error + 63);
    }

    else
    {
      v32 = *(error + 6);
    }

    v19 = nsStringFromString(v31, v32);
    v35 = *(error + 8);
    v34 = error + 64;
    v33 = v35;
    v36 = v34[23];
    if (v36 >= 0)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    if (v36 >= 0)
    {
      v38 = v34[23];
    }

    else
    {
      v38 = *(v34 + 1);
    }

    v26 = nsStringFromString(v37, v38);
    v27 = [(UCAppClipCodeURLEncoder *)self _errorWithCoderErrorCode:1003 codingErrorSymbol:v19 message:v26];
  }

LABEL_70:
  v13 = v27;

LABEL_17:

  return v13;
}

- (shared_ptr<UC::SUE::UCSegmentedURLEncodingResult>)_encodeURL:(id)l error:(id *)error
{
  v7 = v4;
  lCopy = l;
  if (!self->_segmentedEncoder.__ptr_)
  {
    v9 = +[UCResourceFilePath combinedPathAndQueryFilePathForSegmentedURLCoderVersion0];
    std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
    v10 = +[UCResourceFilePath segmentedPathAndQueryFilePathForSegmentedURLCoderVersion0];

    v11 = v10;
    std::string::basic_string[abi:ne200100]<0>(&v21, [v10 UTF8String]);
    v12 = +[UCResourceFilePath hostFilePathForSegmentedURLCoderVersion0];

    std::string::basic_string[abi:ne200100]<0>(v27, [v12 UTF8String]);
    std::allocate_shared[abi:ne200100]<UC::SUE::UCSegmentedURLCoderProvider,std::allocator<UC::SUE::UCSegmentedURLCoderProvider>,std::string &,std::string &,std::string &,0>(v27, __p, &v21, &v26);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v13 = operator new(0x18uLL);
    v14 = v13;
    *&v21.__r_.__value_.__l.__data_ = v26;
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    UC::SUE::SegmentedURLEncoderImpl::SegmentedURLEncoderImpl(v13, &v21);
    __p[0].__r_.__value_.__r.__words[0] = v14;
    if (v21.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21.__r_.__value_.__l.__size_);
      v14 = __p[0].__r_.__value_.__r.__words[0];
    }

    __p[0].__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](&self->_segmentedEncoder, v14);
    std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](__p, 0);
    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }
  }

  *v7 = 0;
  v7[1] = 0;
  if (lCopy)
  {
    ptr = self->_segmentedEncoder.__ptr_;
    UCURLComponentsFromNSURL(__p, lCopy);
    UC::SUE::SegmentedURLEncoderImpl::encodeURL(ptr, __p, &v21);
    v16 = operator new(0x50uLL);
    *(v16 + 1) = 0;
    *(v16 + 2) = 0;
    *v16 = &unk_28803D6A8;
    *(v16 + 24) = *&v21.__r_.__value_.__l.__data_;
    *&v21.__r_.__value_.__l.__data_ = 0uLL;
    v17 = v22;
    *(v16 + 5) = *(&v21.__r_.__value_.__l + 2);
    *(v16 + 6) = v17;
    *(v16 + 14) = v23;
    *(v16 + 8) = v24;
    v16[72] = v25;
    *v7 = v16 + 24;
    v7[1] = v16;
    v21.__r_.__value_.__r.__words[2] = 0;
    v24 = 0;
    UC::UCURLComponents::~UCURLComponents(&__p[0].__r_.__value_.__l.__data_);
  }

  else if (error)
  {
    *error = [(UCAppClipCodeURLEncoder *)self _errorWithCoderErrorCode:1001 codingErrorSymbol:0 message:@"Cannot encode a null URL. Make sure a valid URL is provided"];
  }

  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (void)clearCaches
{
  ptr = self->_segmentedEncoder.__ptr_;
  if (ptr)
  {
    UC::SUE::SegmentedURLEncoderImpl::clearCaches(ptr);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end
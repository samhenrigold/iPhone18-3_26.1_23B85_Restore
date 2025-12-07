@interface VSSpeechSynthesisCallbackResult
- (AudioStreamBasicDescription)asbd;
- (VSSpeechSynthesisCallbackResult)initWithCallback:(id)callback;
- (id).cxx_construct;
- (id)phonemes;
- (int)synthesisCallback:(int)callback;
- (unint64_t)utf16OffsetFromUTF8:(unint64_t)f8;
- (unint64_t)utf8BytesForChar:(unsigned __int16)char;
- (void)processMarkerBuffer;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
@end

@implementation VSSpeechSynthesisCallbackResult

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[4].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[4].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[5].mSampleRate;
  return self;
}

- (id)phonemes
{
  array = [MEMORY[0x277CBEB18] array];
  begin = self->_phonemeBuffer.__begin_;
  for (i = self->_phonemeBuffer.__end_; begin != i; begin += 3)
  {
    v6 = begin;
    if (*(begin + 23) < 0)
    {
      v6 = *begin;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    [array addObject:v7];
  }

  return array;
}

- (void)processMarkerBuffer
{
  begin = self->_markers.__begin_;
  end = self->_markers.__end_;
  if (begin != end)
  {
    v5 = &begin->markerName[26];
    do
    {
      v10 = *(v5 - 2);
      v11 = *(v5 - 1);
      if (v5[23] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
      }

      else
      {
        __p = *v5;
      }

      if (v10 == 2)
      {
        ++self->_numOfPromptsTriggered;
      }

      else if (!v10)
      {
        v6 = objc_alloc_init(VSSpeechWordTimingInfo);
        objc_msgSend_asbd(self);
        [(VSSpeechWordTimingInfo *)v6 setStartTime:*(&v11 + 1) / v9];
        v7 = [(VSSpeechSynthesisCallbackResult *)self utf16OffsetFromUTF8:*(&v10 + 1)];
        [(VSSpeechWordTimingInfo *)v6 setTextRange:v7, [(VSSpeechSynthesisCallbackResult *)self utf16OffsetFromUTF8:v11 + *(&v10 + 1)]- v7];
        [(NSMutableArray *)self->_wordTimings addObject:v6];
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = v5 - 32;
      v5 += 56;
    }

    while (v8 + 56 != end);
  }
}

- (unint64_t)utf16OffsetFromUTF8:(unint64_t)f8
{
  lastUTF8Offset = self->_lastUTF8Offset;
  v6 = lastUTF8Offset > f8;
  if (lastUTF8Offset >= f8)
  {
    while (v6)
    {
      lastUTF16Offset = self->_lastUTF16Offset;
      if (!lastUTF16Offset)
      {
        break;
      }

      text = self->_text;
      self->_lastUTF16Offset = lastUTF16Offset - 1;
      v15 = self->_lastUTF8Offset - [(VSSpeechSynthesisCallbackResult *)self utf8BytesForChar:[(NSString *)text characterAtIndex:?]];
      self->_lastUTF8Offset = v15;
      v6 = v15 > f8;
    }
  }

  else
  {
    v7 = [(NSString *)self->_text length];
    if (self->_lastUTF8Offset < f8)
    {
      v8 = v7;
      do
      {
        v9 = self->_lastUTF16Offset;
        if (v9 >= v8)
        {
          break;
        }

        v10 = self->_text;
        self->_lastUTF16Offset = v9 + 1;
        v11 = self->_lastUTF8Offset + [(VSSpeechSynthesisCallbackResult *)self utf8BytesForChar:[(NSString *)v10 characterAtIndex:?]];
        self->_lastUTF8Offset = v11;
      }

      while (v11 < f8);
    }
  }

  return self->_lastUTF16Offset;
}

- (unint64_t)utf8BytesForChar:(unsigned __int16)char
{
  v3 = 1;
  v4 = 2;
  if (char >= 0x7FFu)
  {
    v4 = 3;
  }

  if (char >= 0x7Fu)
  {
    v3 = v4;
  }

  if ((char & 0xF800) == 0xD800)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (int)synthesisCallback:(int)callback
{
  if (callback > 3)
  {
    if (callback == 4)
    {
      self->_state = 2;
      if (self->_stopMark == 1)
      {
        begin = self->_markers.__begin_;
        for (i = self->_markers.__end_; begin != i; begin = (begin + 56))
        {
          v11 = *&begin->markerName[10];
          v36 = *&begin->id;
          v37 = v11;
          if (begin->markerName[49] < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *&begin->markerName[26], *&begin->markerName[34]);
          }

          else
          {
            v12 = *&begin->markerName[26];
            __p.__r_.__value_.__r.__words[2] = *&begin->markerName[42];
            *&__p.__r_.__value_.__l.__data_ = v12;
          }

          if (!v36)
          {
            v13 = *(&v37 + 1);
            objc_msgSend_asbd(self, a2);
            v14 = v13 * v35;
            v16 = self->_samples.__begin_;
            end = self->_samples.__end_;
            v17 = (v14 - (end - v16));
            if (v14 <= end - v16)
            {
              if (v14 < end - v16)
              {
                self->_samples.__end_ = &v16[v14];
              }
            }

            else
            {
              if ((self->_samples.__cap_ - end) < v17)
              {
                if ((v14 & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v18 = &v16[v14];
              bzero(end, v17);
              self->_samples.__end_ = v18;
            }

            v19 = self->_markers.__begin_;
            v20 = self->_markers.__end_;
            v21 = 0x6DB6DB6DB6DB6DB7 * ((&v36 - v19) >> 3) + 1;
            v22 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 3);
            v23 = v21 >= v22;
            v24 = v21 - v22;
            if (v24 != 0 && v23)
            {
              cap = self->_markers.__cap_;
              if (0x6DB6DB6DB6DB6DB7 * ((cap - v20) >> 3) < v24)
              {
                if (v21 <= 0x492492492492492)
                {
                  v26 = 0x6DB6DB6DB6DB6DB7 * ((cap - v19) >> 3);
                  v27 = 2 * v26;
                  if (2 * v26 <= v21)
                  {
                    v27 = v21;
                  }

                  if (v26 >= 0x249249249249249)
                  {
                    v28 = 0x492492492492492;
                  }

                  else
                  {
                    v28 = v27;
                  }

                  if (v28 <= 0x492492492492492)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v30 = (v20 + 56 * v24);
              do
              {
                *&v20->markerName[42] = 0;
                *&v20->markerName[10] = 0uLL;
                *&v20->markerName[26] = 0uLL;
                *&v20->id = 0uLL;
                v20->markerName[49] = 1;
                v20 = (v20 + 56);
              }

              while (v20 != v30);
              self->_markers.__end_ = v30;
            }

            else if (!v23)
            {
              v29 = (v19 + 56 * v21);
              while (v20 != v29)
              {
                if (v20[-1].markerName[255] < 0)
                {
                  operator delete(*&v20[-1].markerName[232]);
                }

                v20 = (v20 - 56);
              }

              self->_markers.__end_ = v29;
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v31 = (*(self->_callback + 2))();
      error = self->_error;
      self->_error = v31;

      v33 = self->_samples.__end_ - self->_samples.__begin_;
      objc_msgSend_asbd(self);
      self->_samplesProcessed += v33 / DWORD2(v37);
      self->_samples.__end_ = self->_samples.__begin_;
    }

    else if (callback == 5)
    {
      [(VSSpeechSynthesisCallbackResult *)self processMarkerBuffer];
      std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](&self->_markers);
    }
  }

  else if (callback)
  {
    if (callback == 1)
    {
      self->_state = 3;
      v4 = (*(self->_callback + 2))();
      v5 = self->_error;
      self->_error = v4;

      callback = self->_callback;
      self->_callback = 0;
    }
  }

  else
  {
    self->_state = 1;
    self->_lastUTF8Offset = 0;
    self->_lastUTF16Offset = 0;
    self->_samplesProcessed = 0;
    v7 = (*(self->_callback + 2))();
    v8 = self->_error;
    self->_error = v7;

    [(NSMutableArray *)self->_wordTimings removeAllObjects];
  }

  return self->_error != 0;
}

- (VSSpeechSynthesisCallbackResult)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v11.receiver = self;
  v11.super_class = VSSpeechSynthesisCallbackResult;
  v5 = [(VSSpeechSynthesisCallbackResult *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x2743CEF70](callbackCopy);
    callback = v5->_callback;
    v5->_callback = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    wordTimings = v5->_wordTimings;
    v5->_wordTimings = v8;
  }

  return v5;
}

@end
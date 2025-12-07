OSStatus AudioUnitProcess(AudioUnit inUnit, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, UInt32 inNumberFrames, AudioBufferList *ioData)
{
  if (!inUnit)
  {
    return -50;
  }

  v6 = *&inNumberFrames;
  v9 = (*(*inUnit + 8))(inUnit);
  if (!v9)
  {
    return -4;
  }

  v10 = v9;
  if (*((**v9)(v9) + 38) != 24949)
  {
    return -3000;
  }

  v11 = *(*((**v10)(v10) + 112) + 128);
  if (!v11)
  {
    return -4;
  }

  v12 = v10[3];

  return v11(v12, ioActionFlags, inTimeStamp, v6, ioData);
}

OSStatus AudioUnitSetParameter(AudioUnit inUnit, AudioUnitParameterID inID, AudioUnitScope inScope, AudioUnitElement inElement, AudioUnitParameterValue inValue, UInt32 inBufferOffsetInFrames)
{
  if (!inUnit)
  {
    return -50;
  }

  v6 = *&inBufferOffsetInFrames;
  v8 = *&inElement;
  v9 = *&inScope;
  v10 = *&inID;
  v11 = (*(*inUnit + 8))(inUnit);
  if (!v11)
  {
    return 560947818;
  }

  v12 = v11;
  if (*((**v11)(v11) + 38) != 24949)
  {
    return -3000;
  }

  v13 = *(*((**v12)(v12) + 112) + 88);
  if (!v13)
  {
    return -4;
  }

  v15 = v12[3];
  v14.n128_f32[0] = inValue;

  return v13(v15, v10, v9, v8, v6, v14);
}

OSStatus AudioUnitProcessMultiple(AudioUnit inUnit, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, UInt32 inNumberFrames, UInt32 inNumberInputBufferLists, const AudioBufferList **inInputBufferLists, UInt32 inNumberOutputBufferLists, AudioBufferList **ioOutputBufferLists)
{
  if (!inUnit)
  {
    return -50;
  }

  v9 = *&inNumberOutputBufferLists;
  v11 = *&inNumberInputBufferLists;
  v12 = *&inNumberFrames;
  v15 = (*(*inUnit + 8))(inUnit);
  if (!v15)
  {
    return -4;
  }

  v16 = v15;
  if (*((**v15)(v15) + 38) != 24949)
  {
    return -3000;
  }

  v17 = *(*((**v16)(v16) + 112) + 136);
  if (!v17)
  {
    return -4;
  }

  v18 = v16[3];

  return v17(v18, ioActionFlags, inTimeStamp, v12, v11, inInputBufferLists, v9, ioOutputBufferLists);
}

OSStatus AudioCodecGetPropertyInfo(AudioCodec inCodec, AudioCodecPropertyID inPropertyID, UInt32 *outSize, Boolean *outWritable)
{
  if (!inCodec)
  {
    return -50;
  }

  v6 = *&inPropertyID;
  v7 = (*(*inCodec + 8))(inCodec);
  if (!v7)
  {
    return 560947818;
  }

  v8 = v7;
  v9 = **((**v7)(v7) + 112);
  if (!v9)
  {
    return -4;
  }

  v10 = v8[3];

  return v9(v10, v6, outSize, outWritable);
}

OSStatus AudioCodecGetProperty(AudioCodec inCodec, AudioCodecPropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  if (!inCodec)
  {
    return -50;
  }

  v6 = *&inPropertyID;
  v7 = (*(*inCodec + 8))(inCodec);
  if (!v7)
  {
    return 560947818;
  }

  v8 = v7;
  v9 = *(*((**v7)(v7) + 112) + 8);
  if (!v9)
  {
    return 0;
  }

  v10 = v8[3];

  return v9(v10, v6, ioPropertyDataSize, outPropertyData);
}

void ___ZN22AudioComponentMgr_Base41postLocalRegistrationsChangedNotificationEv_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"com.apple.coreaudio.AudioComponentLocalRegistrationsChanged", 0, 0, 1u);
}

uint64_t acv2::BlockCopyConverter::GetProperty(acv2::BlockCopyConverter *this, int a2, unsigned int *a3, int *a4)
{
  v5 = 1;
  result = 1886547824;
  if (a2 <= 1836016242)
  {
    if (a2 == 1667850867 || a2 == 1668244083)
    {
      return 0;
    }

    if (a2 != 1835623027)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (a2 > 2020175986)
  {
    if (a2 == 2020175987)
    {
      v5 = *(this + 8);
      goto LABEL_14;
    }

    if (a2 == 2020569203)
    {
      v5 = *(this + 18);
      goto LABEL_14;
    }

    return result;
  }

  if (a2 == 1836016243)
  {
LABEL_14:
    *a4 = v5;
    return 0;
  }

  if (a2 == 2020172403)
  {
    v5 = -1;
    goto LABEL_14;
  }

  return result;
}

void acv2::BlockCopyConverter::~BlockCopyConverter(acv2::BlockCopyConverter *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t acv2::BlockCopyConverter::ProduceOutput(uint64_t a1, ACBaseAudioSpan *a2, unsigned __int8 a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 1869627199;
  }

  if (!*(a1 + 32))
  {
    std::terminate();
  }

  acv2::AudioConverterChain::ObtainInput(v13, v4, a1, *(a2 + 1), a3);
  if (v14)
  {
    v7 = v13[0];
    v6 = v13[1];
    if (*(a2 + 1) >= *v13[0])
    {
      v8 = *v13[0];
    }

    else
    {
      v8 = *(a2 + 1);
    }

    v9 = ACBaseAudioSpan::append(a2, v13[0], v8, *(a1 + 72));
    v10 = HIDWORD(v9);
    if (HIDWORD(v9))
    {
      v9 = acv2::AudioConverterChain::ConsumedInput(*(a1 + 8), *v7, v6, v8);
      v10 = HIDWORD(v9);
      if (HIDWORD(v9))
      {
        v11 = 0;
        LOBYTE(v9) = v8 != 0;
        v10 = 0x100000000;
      }

      else
      {
        v11 = v9 & 0xFFFFFF00;
      }

      return v10 | v11 | v9;
    }
  }

  else
  {
    v10 = 0;
    LODWORD(v9) = v13[0];
  }

  v11 = v9 & 0xFFFFFF00;
  return v10 | v11 | v9;
}

uint64_t ACBaseAudioSpan::append(ACBaseAudioSpan *this, const ACBaseAudioSpan *a2, unsigned int a3, int a4)
{
  if (!a3)
  {
    v21 = 0;
LABEL_30:
    v22 = 0x100000000;
    return v22 | v21;
  }

  v7 = *(this + 4);
  if (v7)
  {
    v8 = *(a2 + 4);
    if (v8)
    {
      v9 = *(this + 2);
      if (*v9 != 1)
      {
        std::terminate();
      }

      v10 = v7 + 16 * *this;
      v11 = *(*(a2 + 2) + 16);
      v12 = *(this + 2);
      v13 = (*(v9 + 16) + v12);
      v14 = (v8 + 8);
      v15 = a3;
      do
      {
        v16 = *(v14 - 1);
        *v10 = v12;
        v17 = *v14;
        v18 = v14[1];
        v14 += 4;
        *(v10 + 8) = v17;
        *(v10 + 12) = v18;
        memmove(v13, (v11 + v16), v18);
        LODWORD(v12) = *(this + 2) + v18;
        *(this + 2) = v12;
        v13 += v18;
        v10 += 16;
        --v15;
      }

      while (v15);
LABEL_26:
      v36 = *(this + 5);
      if (v36)
      {
        v37 = *(a2 + 5);
        if (v37)
        {
          memmove((v36 + 16 * *this), v37, 16 * a3);
        }
      }

      v21 = 2003329280;
      *this += a3;
      goto LABEL_30;
    }
  }

  Packets = ACBaseAudioSpan::sizeOfFirstPackets(a2, a3, a4);
  v20 = Packets;
  if (HIDWORD(Packets))
  {
    if (*(this + 3) < Packets)
    {
      v23 = _os_log_pack_size();
      message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v23 + 88, 16);
      if (message)
      {
        v25 = message;
        v26 = _os_log_pack_fill(message + 40, v23, 0, &dword_18F5DF000, "No packet description was provided for the VBR input data, and the buffer byte size %u exceeds the maximum expected bytes %u for %u packets. Truncating.", v51, v52, v53);
        v27 = *(this + 3);
        v28 = *this;
        *v26 = 67109632;
        *(v26 + 4) = a3;
        *(v26 + 8) = 1024;
        *(v26 + 10) = v27;
        *(v26 + 14) = 1024;
        *(v26 + 16) = v28;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v25);
      }

      v20 = *(this + 3);
    }

    v29 = **(this + 2);
    if (v29 == **(a2 + 2))
    {
      if (v29)
      {
        v30 = 0;
        v31 = 16;
        do
        {
          v32 = *(*(a2 + 2) + v31);
          v33 = *(*(this + 2) + v31);
          v34 = v33 + *(this + 2);
          if (v32 != v34)
          {
            if (v32)
            {
              v35 = v33 == 0;
            }

            else
            {
              v35 = 1;
            }

            if (v35)
            {
              v21 = 2003329280;
              v39 = _os_log_pack_size();
              v40 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v39 + 88, 17);
              if (v40)
              {
                v41 = v40;
                v42 = _os_log_pack_fill(v40 + 40, v39, 0, &dword_18F5DF000, "Possible memory corruption detected!  Span buffer %u pointer NULL (%p -> %p)", v51, v52, v53);
                *v42 = 67109632;
                *(v42 + 4) = v30;
                *(v42 + 8) = 2048;
                *(v42 + 10) = v32;
                *(v42 + 18) = 2048;
                *(v42 + 20) = v34;
                v43 = *(gAudioConverterDeferredLog + 16);
                v44 = v41;
                goto LABEL_34;
              }

              goto LABEL_35;
            }

            memmove((v33 + *(this + 2)), *(*(a2 + 2) + v31), v20);
          }

          ++v30;
          v31 += 16;
        }

        while (v29 != v30);
      }

      *(this + 2) += v20;
      goto LABEL_26;
    }

    v21 = 2003329280;
    v45 = _os_log_pack_size();
    v46 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v45 + 88, 17);
    if (v46)
    {
      v47 = v46;
      v48 = _os_log_pack_fill(v46 + 40, v45, 0, &dword_18F5DF000, "Possible memory corruption detected!  Span buffer count mismatch (%u -> %u)", v51, v52);
      v49 = **(a2 + 2);
      v50 = **(this + 2);
      *v48 = 67109376;
      *(v48 + 4) = v49;
      *(v48 + 8) = 1024;
      *(v48 + 10) = v50;
      v43 = *(gAudioConverterDeferredLog + 16);
      v44 = v47;
LABEL_34:
      caulk::concurrent::messenger::enqueue(v43, v44);
    }

LABEL_35:
    v22 = 116;
  }

  else
  {
    v21 = Packets & 0xFFFFFF00;
    v22 = Packets;
  }

  return v22 | v21;
}

void acv2::Reinterleaver::SetLayouts(std::vector<int> *this, const AudioChannelLayout *const *a2, const AudioChannelLayout *a3)
{
  v3 = a3;
  v4 = a2;
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, sizeof(v32));
  v6 = *a2;
  if (*a2 == 0x10000)
  {
    v7 = vcnt_s8(*(a2 + 1));
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.i32[0])
    {
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    if (*a2)
    {
      goto LABEL_13;
    }
  }

  else if (*(a2 + 2))
  {
    goto LABEL_13;
  }

  if (a3->mChannelLayoutTag == 0x10000)
  {
    v8 = vcnt_s8(a3->mChannelBitmap);
    v8.i16[0] = vaddlv_u8(v8);
    if (!v8.i32[0])
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  if (a3->mChannelLayoutTag)
  {
    if (!a3->mChannelLayoutTag)
    {
      goto LABEL_39;
    }

LABEL_13:
    if (v6 == 0x10000)
    {
      v9 = vcnt_s8(*(a2 + 1));
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.i32[0])
      {
        goto LABEL_25;
      }
    }

    else if (v6)
    {
      if (*a2)
      {
        goto LABEL_25;
      }
    }

    else if (*(a2 + 2))
    {
      goto LABEL_25;
    }

    value_high = HIDWORD(this[1].__end_cap_.__value_);
    if (value_high >= 3)
    {
      goto LABEL_55;
    }

    if (value_high == 2)
    {
      v11 = 6619138;
    }

    else
    {
      v11 = 6553601;
    }

    LODWORD(v33[0]) = v11;
    v4 = v33;
LABEL_25:
    if (a3->mChannelLayoutTag == 0x10000)
    {
      v13 = vcnt_s8(a3->mChannelBitmap);
      v13.i16[0] = vaddlv_u8(v13);
      mChannelLayoutTag = v13.i32[0];
    }

    else if (a3->mChannelLayoutTag)
    {
      mChannelLayoutTag = a3->mChannelLayoutTag;
    }

    else
    {
      mChannelLayoutTag = a3->mNumberChannelDescriptions;
    }

    end_high = HIDWORD(this[3].__end_);
    if (mChannelLayoutTag)
    {
      goto LABEL_36;
    }

    if (end_high < 3)
    {
      if (end_high == 2)
      {
        v15 = 6619138;
      }

      else
      {
        v15 = 6553601;
      }

      LODWORD(v32[0]) = v15;
      v3 = v32;
LABEL_36:
      v16.__i_ = this[8].__begin_;
      this[8].__end_ = v16.__i_;
      __x = -1;
      std::vector<int>::insert(this + 8, v16, end_high, &__x);
      __x = HIDWORD(this[3].__end_);
      AudioFormatProperty_ChannelMap(v4, v3, &__x, this[8].__begin_);
      acv2::Reinterleaver::BuildInverseChannelMap(this);
      return;
    }

LABEL_55:
    std::terminate();
  }

  if (a3->mNumberChannelDescriptions)
  {
    goto LABEL_13;
  }

LABEL_39:
  v18 = this + 8;
  v17.__i_ = this[8].__begin_;
  this[8].__end_ = v17.__i_;
  v19 = HIDWORD(this[3].__end_);
  __x = -1;
  std::vector<int>::insert(this + 8, v17, v19, &__x);
  v20 = HIDWORD(v18[-7].__end_cap_.__value_);
  v21 = HIDWORD(v18[-5].__end_);
  if (v20 == 1)
  {
    if (v21)
    {
      bzero(v18->__begin_, 4 * v21);
    }
  }

  else
  {
    if (v21 >= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      v23 = 0;
      v24 = (v22 + 3) & 0x1FFFFFFFCLL;
      v25 = vdupq_n_s64(v22 - 1);
      v26 = xmmword_18F9016B0;
      v27 = xmmword_18F9016C0;
      v28 = v18->__begin_ + 2;
      v29 = vdupq_n_s64(4uLL);
      do
      {
        v30 = vmovn_s64(vcgeq_u64(v25, v27));
        if (vuzp1_s16(v30, *v25.i8).u8[0])
        {
          *(v28 - 2) = v23;
        }

        if (vuzp1_s16(v30, *&v25).i8[2])
        {
          *(v28 - 1) = v23 + 1;
        }

        if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, *&v26))).i32[1])
        {
          *v28 = v23 + 2;
          v28[1] = v23 + 3;
        }

        v23 += 4;
        v26 = vaddq_s64(v26, v29);
        v27 = vaddq_s64(v27, v29);
        v28 += 4;
      }

      while (v24 != v23);
    }
  }
}

uint64_t acv2::Reinterleaver::SetProperty(acv2::Reinterleaver *this, int a2, size_t a3, void *__src)
{
  if (a2 != 1667788144)
  {
    return 1886547824;
  }

  if (a3 < 4)
  {
LABEL_6:
    v8 = (4 * *(this + 21));
    if (v8 >= a3)
    {
      a3 = a3;
    }

    else
    {
      a3 = v8;
    }

    memcpy(*(this + 24), __src, a3);
    *(this + 264) = memcmp(*(this + 24), *(this + 27), v8) == 0;
    acv2::Reinterleaver::BuildInverseChannelMap(this);
    return 0;
  }

  else
  {
    v5 = a3 >> 2;
    v6 = __src;
    while (1)
    {
      v7 = *v6++;
      if (v7 >= *(this + 11))
      {
        return 4294967246;
      }

      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t DSPGraph::GraphInput::preflight(DSPGraph::GraphInput *this)
{
  v2 = *(*(this + 1) + 704);
  v3 = *(*(this + 2) + 304);
  v4 = v3 * (*(*this + 672))(this);
  v5 = (v2 + v4 - 1) / v4;
  LODWORD(v2) = (*(*this + 672))(this);
  v6 = *(this + 1);
  v7 = *(v6 + 704);
  v8 = *(v6 + 720);
  v9 = *(*(this + 2) + 304);
  v10 = v9 * (*(*this + 672))(this);
  return ((v7 + v8 + v10 - 1) / v10) * (*(*this + 672))(this) - v5 * v2;
}

uint64_t DSPGraph::GraphInput::bytesPerPacket(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 16);
}

void sub_18F60CBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphOutput::bytesPerPacket(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v6, "in");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 16);
}

void sub_18F60CD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Graph::processAll(DSPGraph::Graph *this)
{
  v25[0] = this + 1024;
  if (*(this + 131))
  {
    CurrentTimeInNanos = DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::GetCurrentTimeInNanos();
  }

  else
  {
    CurrentTimeInNanos = 0;
  }

  v25[1] = CurrentTimeInNanos;
  v26 = this;
  atomic_store(1u, this + 464);
  v3 = *(this + 85);
  v27 = *(this + 172);
  _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_5GraphEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(v3, &v26);
  v4 = *(this + 24);
  v5 = *(this + 25);
  while (v4 != v5)
  {
    DSPGraph::Buffer::setByteSize(*v4, *(*v4 + 25));
    ++v4;
  }

  if (*(this + 766))
  {
    v6 = *(this + 32);
    v7 = *(this + 33);
    while (v6 != v7)
    {
      DSPGraph::IsoGroup::processAll(*v6++);
    }
  }

  else
  {
    v8 = *(this + 35);
    v9 = *(this + 36);
    while (v8 != v9)
    {
      DSPGraph::GraphInput::copyInput(*v8++);
    }

    v10 = *(this + 32);
    v11 = *(this + 33);
    while (v10 != v11)
    {
      DSPGraph::IsoGroup::processAll(*v10++);
    }

    v12 = *(this + 38);
    v13 = *(this + 39);
    while (v12 != v13)
    {
      DSPGraph::GraphOutput::copyOutput(*v12++);
    }
  }

  v14 = *(this + 85);
  v15 = *(this + 172);
  v26 = this;
  v27 = v15;
  _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_5GraphEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_((v14 + 64), &v26);
  v16 = *(this + 124);
  v17 = *(this + 125);
  while (v16 != v17)
  {
    v18 = v16[1];
    v19 = v16[2];
    while (v18 != v19)
    {
      v20 = *v18;
      (*(*this + 48))(this, v20);
      (*(**v16 + 40))(*v16, v20);
      ++v18;
    }

    v21 = v16[4];
    v22 = v16[5];
    while (v21 != v22)
    {
      v23 = *(v21 + 1);
      LODWORD(v26) = v21[4] - v23;
      (*(*this + 72))(this, *v21, &v26, v23);
      (*(**v16 + 56))(*v16, *v21, v26, v23);
      v21 += 8;
    }

    v16 += 7;
  }

  *(this + 88) += *(this + 90);
  atomic_store(0, this + 464);
  return DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(v25);
}

void sub_18F60CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  atomic_store(0, (v9 + 464));
  DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(&a9);
  _Unwind_Resume(a1);
}

unsigned int **DSPGraph::Buffer::setByteSize(DSPGraph::Buffer *this, unsigned int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 25) < a2)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10562);
    }

    v6 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
    {
      v7 = *(this + 25);
      *buf = 67109376;
      v9 = a2;
      v10 = 1024;
      v11 = v7;
      _os_log_fault_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: DSPGraph buffer byte size %u is larger than byte capacity %u", buf, 0xEu);
    }

    snprintf(buf, 0x400uLL, "DSPGraph assertion failure: DSPGraph buffer byte size %u is larger than byte capacity %u", a2, *(this + 25));
    qword_1EAD0BBC0 = buf;
    __break(1u);
  }

  v4 = (this + 80);

  return DSPGraph::SimpleABL::setByteSize(v4, a2);
}

unsigned int **DSPGraph::SimpleABL::setByteSize(unsigned int **this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "setByteSize");
    std::string::basic_string[abi:ne200100]<0>(&v11, "null internal ABL");
    DSPGraph::ThrowException(1768843553, &v13, 587, &v12, &v11);
  }

  v3 = *v2;
  if (v3)
  {
    v4 = (v3 + 3) & 0x1FFFFFFFCLL;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_18F9016B0;
    v7 = xmmword_18F9016C0;
    v8 = v2 + 11;
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 8) = a2;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 4) = a2;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = a2;
        v8[4] = a2;
      }

      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 16;
      v4 -= 4;
    }

    while (v4);
  }

  return this;
}

void sub_18F60D230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::IsoGroup::processAll(uint64_t this)
{
  if (*(this + 264))
  {
    v2 = *(*(this + 8) + 720) + *(*(this + 8) + 704);
    v3 = *(this + 288);
    if (v2 <= v3)
    {
      if (*(this + 268) != 1)
      {
        return;
      }

      v4 = 0;
    }

    else
    {
      v4 = (v2 + ~v3 + *(this + 296)) / *(this + 296);
      if (*(this + 268) != 1)
      {
        for (; v4; LODWORD(v4) = v4 - 1)
        {
          DSPGraph::IsoGroup::process(this, *(this + 268));
          *(this + 288) += *(this + 296);
        }

        return;
      }
    }

    DSPGraph::IsoGroup::process(this, v4);
    *(this + 288) += *(this + 296) * v4;
    return;
  }

  DSPGraph::IsoGroup::process(this, 1);
}

void DSPGraph::GraphInput::process(DSPGraph::GraphInput *this, uint64_t a2, __n128 a3, __n128 a4)
{
  v4 = a2;
  v6 = *(this + 110);
  if (v6)
  {
    (*(*v6 + 96))(v6, a2, *(*(this + 106) + 72), *(this + 912), *(*(this + 106) + 8));
  }

  if ((*(*(this + 1) + 764) & 1) == 0)
  {
    v7 = v4 / (*(*this + 672))(this, a3, a4);
    if (*(*(this + 1) + 766) == 1)
    {
      v36 = *(*(this + 106) + 72);
      LOBYTE(v37) = 0;
      v8 = *(this + 11);
      if (*(this + 12) == v8)
      {
        std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v38, "out");
        v32 = this + 32;
        if (*(this + 55) < 0)
        {
          v32 = *v32;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v32, (*(this + 12) - *(this + 11)) >> 5, 0);
      }

      v9 = *((*(*v8 + 40))(v8) + 56);
      v10 = (*(*this + 656))(this);
      DSPGraph::SimpleABL::copy(&v36, (v9 + 80), 0, 0, v10 * v7, 1);
      v11 = *(this + 11);
      if (*(this + 12) == v11)
      {
        std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v38, "out");
        v34 = this + 32;
        if (*(this + 55) < 0)
        {
          v34 = *v34;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v34, (*(this + 12) - *(this + 11)) >> 5, 0);
      }

      v12 = *(this + 106);
      v13 = *((*(*v11 + 40))(v11) + 56);
      v14 = *(v12 + 8);
      v15 = *(v12 + 24);
      v16 = *(v12 + 40);
      *(v13 + 56) = *(v12 + 56);
      *(v13 + 40) = v16;
      *(v13 + 24) = v15;
      *(v13 + 8) = v14;
      v17 = *(this + 11);
      if (*(this + 12) == v17)
      {
        std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v38, "out");
        v35 = this + 32;
        if (*(this + 55) < 0)
        {
          v35 = *v35;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v35, (*(this + 12) - *(this + 11)) >> 5, 0);
      }

      v18 = *(*(this + 106) + 4);
      *(*((*(*v17 + 40))(v17) + 56) + 72) = v18;
      DSPGraph::SimpleABL::free(&v36);
      return;
    }

    v19 = *(this + 11);
    if (*(this + 12) == v19)
    {
      std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v38, "out");
      v33 = this + 32;
      if (*(this + 55) < 0)
      {
        v33 = *v33;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v33, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v20 = (*(*v19 + 40))(v19);
    DSPGraph::RingBuffer::read((this + 808), v7, v7, (*(v20 + 56) + 80));
  }

  v21 = *(this + 2);
  v22 = *(v21 + 256);
  if (*(this + 856) == 1)
  {
    a4.n128_u32[0] = *(v21 + 264);
    v23 = llround((v22 - *(this + 109)) / a4.n128_u64[0] * 24000000.0) + *(this + 108);
    v24 = 3;
  }

  else
  {
    v23 = 0;
    v24 = 1;
  }

  v25 = *(this + 11);
  v26 = *(this + 12);
  if (v25 != v26)
  {
    v27 = *(*(this + 106) + 4);
    v28 = v25;
    v29 = v25;
    do
    {
      v30 = *v29;
      v29 += 4;
      v31 = *((*(v30 + 40))(v28) + 56);
      *(v31 + 8) = v22;
      *(v31 + 16) = v23;
      *(v31 + 56) = 0;
      *(v31 + 40) = 0u;
      *(v31 + 24) = 0u;
      *(v31 + 64) = v24;
      *(v31 + 68) = 0;
      *(v31 + 72) = v27;
      v25 += 4;
      v28 = v29;
    }

    while (v29 != v26);
  }
}

void sub_18F60D840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  DSPGraph::SimpleABL::free(&a12);
  _Unwind_Resume(a1);
}

unsigned int **DSPGraph::SimpleABL::copy(unsigned int **this, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v17 = a4;
  v18 = a5;
  v15 = a3;
  v6 = *this;
  if (!*this)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "copy");
    std::string::basic_string[abi:ne200100]<0>(v19, "null internal ABL");
    DSPGraph::ThrowException(1768843553, &v21, 662, &v20, v19);
  }

  v8 = *a2;
  if (!*a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "copy");
    std::string::basic_string[abi:ne200100]<0>(v19, "null destination ABL");
    DSPGraph::ThrowException(1768843553, &v21, 666, &v20, v19);
  }

  v9 = this;
  if (*v6 != *v8)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "copy");
    DSPGraph::strprintf("mABL->mNumberBuffers (%u) != toABL->mNumberBuffers (%u)", **v9, *v8);
  }

  if (*v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = a5 + a3;
    v13 = a5 + a4;
    v14 = v8 + 2;
    do
    {
      if (v12 > v6[v10 + 3])
      {
        std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v20, "copy");
        DSPGraph::strprintf("fromBytePos (%u) + numBytesToCopy (%u) > mABL->mBuffers[%u].mDataByteSize (%u)", v15, v18, v11, (*v9)[4 * v11 + 3]);
      }

      if (v13 > v14[1])
      {
        std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v20, "copy");
        DSPGraph::strprintf("toBytePos (%u) + numBytesToCopy (%u) > toABL->mBuffers[%u].mDataByteSize (%u)", v17, v18, v11, v14[1]);
      }

      this = memmove((*(v14 + 1) + v17), (*&v6[v10 + 4] + v15), v18);
      ++v11;
      v6 = *v9;
      v14 += 4;
      v10 += 4;
    }

    while (v11 < **v9);
  }

  if (a6)
  {

    return DSPGraph::SimpleABL::setByteSize(a2, v18 + v17);
  }

  return this;
}

void sub_18F60DC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 81) < 0)
  {
    operator delete(*(v29 - 104));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::SimpleABL::free(DSPGraph::SimpleABL *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (!*this)
    {
      return;
    }

    if (*v2)
    {
      v3 = 0;
      v4 = 4;
      do
      {
        free(*&v2[v4]);
        ++v3;
        v2 = *this;
        v4 += 4;
      }

      while (v3 < **this);
    }

    free(v2);
    *(this + 8) = 0;
  }

  *this = 0;
}

void DSPGraph::AUBox::process(DSPGraph::AUBox *this, UInt32 a2)
{
  v4 = (*(*this + 64))(this);
  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v4)
  {
    if (v6 == v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v53, "in");
      v44 = this + 32;
      if (*(this + 55) < 0)
      {
        v44 = *v44;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v44, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v7 = (*(*v5 + 40))(v5);
    v8 = *(this + 11);
    if (*(this + 12) == v8)
    {
      std::string::basic_string[abi:ne200100]<0>(&__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v53, "out");
      v46 = this + 32;
      if (*(this + 55) < 0)
      {
        v46 = *v46;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v46, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v9 = *(v7 + 56);
    v10 = (*(*v8 + 40))(v8);
    v11 = *(v10 + 56);
    if (v11 != v9)
    {
      DSPGraph::Buffer::copyFrom(*(v10 + 56), v9);
      v12 = *(v9 + 8);
      v13 = *(v9 + 24);
      v14 = *(v9 + 40);
      *(v11 + 56) = *(v9 + 56);
      *(v11 + 40) = v14;
      *(v11 + 24) = v13;
      *(v11 + 8) = v12;
      *(v11 + 72) = *(v9 + 72);
    }

    *(v11 + 8) = *(*(this + 2) + 256);
    v15 = v11 + 8;
    v16 = *(v15 + 72);
    v17 = AudioUnitProcess(*(this + 106), (v15 + 64), v15, a2, v16);
    if (v17)
    {
      v48 = v17;
      std::string::basic_string[abi:ne200100]<0>(&__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v53, "process");
      std::operator+<char>();
      DSPGraph::ThrowException(v48, &__C, 1882, &v53, v52);
    }

    if ((*(v15 + 64) & 0x10) != 0 && v16->mNumberBuffers)
    {
      v18 = 0;
      v19 = a2;
      for (i = 16; ; i += 16)
      {
        LODWORD(__C.mSampleTime) = 0;
        vDSP_maxmgv(*(&v16->mNumberBuffers + i), 1, &__C, v19);
        if (*&__C.mSampleTime != 0.0)
        {
          break;
        }

        if (++v18 >= v16->mNumberBuffers)
        {
          return;
        }
      }

      *(v15 + 64) &= ~0x10u;
    }
  }

  else
  {
    if (v6 != v5)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        *(*(this + 97) + 8 * v22++) = *(*((*(*(v5 + v21) + 40))(v5 + v21) + 56) + 80);
        v5 = *(this + 8);
        v6 = *(this + 9);
        v21 += 32;
      }

      while (v22 < (v6 - v5) >> 5);
    }

    v23 = *(this + 11);
    if (*(this + 12) != v23)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = v23 + v24;
        v27 = *((*(*(v23 + v24) + 40))(v23 + v24) + 56);
        *(*(this + 100) + 8 * v25) = *(v27 + 10);
        v28 = (*(*v26 + 40))(v26);
        DSPGraph::Buffer::setByteSize(v27, *(*(v28 + 120) + 24) * a2);
        ++v25;
        v23 = *(this + 11);
        v24 += 32;
      }

      while (v25 < (*(this + 12) - v23) >> 5);
      v5 = *(this + 8);
      v6 = *(this + 9);
    }

    if (v6 == v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v53, "in");
      v45 = this + 32;
      if (*(this + 55) < 0)
      {
        v45 = *v45;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v29 = *((*(*v5 + 40))(v5) + 56);
    ioActionFlags = 0;
    v30 = *(v29 + 24);
    v31 = *(v29 + 56);
    v32 = *(v29 + 8);
    *&__C.mSMPTETime.mSubframes = *(v29 + 40);
    *&__C.mSMPTETime.mHours = v31;
    *&__C.mSampleTime = v32;
    *&__C.mRateScalar = v30;
    __C.mSampleTime = *(*(this + 2) + 256);
    v33 = AudioUnitProcessMultiple(*(this + 106), &ioActionFlags, &__C, a2, (*(this + 9) - *(this + 8)) >> 5, *(this + 97), (*(this + 12) - *(this + 11)) >> 5, *(this + 100));
    if (v33)
    {
      v47 = v33;
      std::string::basic_string[abi:ne200100]<0>(&v53, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(v52, "process");
      std::operator+<char>();
      DSPGraph::ThrowException(v47, &v53, 1916, v52, v49);
    }

    v35 = *(this + 11);
    v34 = *(this + 12);
    if (v35 != v34)
    {
      v36 = ioActionFlags;
      v37 = v35;
      v38 = v35;
      do
      {
        v39 = *v38;
        v38 += 4;
        v40 = *((*(v39 + 40))(v37) + 56);
        v42 = *&__C.mSMPTETime.mSubframes;
        v41 = *&__C.mSMPTETime.mHours;
        v43 = *&__C.mRateScalar;
        *(v40 + 8) = *&__C.mSampleTime;
        *(v40 + 24) = v43;
        *(v40 + 40) = v42;
        *(v40 + 56) = v41;
        *(v40 + 72) = v36;
        v35 += 4;
        v37 = v38;
      }

      while (v38 != v34);
    }
  }
}

void sub_18F60E2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (*(v23 - 49) < 0)
  {
    operator delete(*(v23 - 72));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::ChannelSplitterBox::process(DSPGraph::ChannelSplitterBox *this, int a2)
{
  v4 = this + 64;
  v3 = *(this + 8);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v41, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v40, "in");
    v38 = this + 32;
    if (*(this + 55) < 0)
    {
      v38 = *v38;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v38, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 8);
  if (*(this + 9) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v41, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v40, "in");
    v39 = this + 32;
    if (*(this + 55) < 0)
    {
      v39 = *v39;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v39, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = *(this + 12) - *(this + 11);
  result = (*(*v7 + 40))(v7);
  if ((v9 & 0x1FFFFFFFE0) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = ((4 * a2) << (*(*(result + 120) + 8) == 1718773105));
    v14 = v8 + 8;
    v15 = (v9 >> 5);
    do
    {
      v16 = *(this + 11);
      if (v11 >= (*(this + 12) - v16) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v41, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v40, "out");
        v33 = this + 32;
        if (*(this + 55) < 0)
        {
          v33 = *v33;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v33, (*(this + 12) - *(this + 11)) >> 5, v11);
      }

      v17 = *(*((*(*(v16 + 32 * v11) + 40))(v16 + 32 * v11) + 56) + 80);
      v18 = *v17;
      if (v18)
      {
        v19 = (v17 + 4);
        do
        {
          *(v19 - 1) = v13;
          v20 = *(v14 + 16 * v12 + 8);
          if (v20 != *v19)
          {
            memcpy(*v19, v20, v13);
          }

          ++v12;
          v19 += 2;
          --v18;
        }

        while (v18);
      }

      v21 = *(this + 8);
      if (*(this + 9) == v21)
      {
        std::string::basic_string[abi:ne200100]<0>(v41, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v40, "in");
        v34 = this + 32;
        if (*(this + 55) < 0)
        {
          v34 = *v34;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v34, (*(this + 9) - *(this + 8)) >> 5, 0);
      }

      v22 = (*(*v21 + 40))(v21);
      v23 = *(this + 11);
      if (v11 >= (*(this + 12) - v23) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v41, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v40, "out");
        v35 = this + 32;
        if (*(this + 55) < 0)
        {
          v35 = *v35;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v35, (*(this + 12) - *(this + 11)) >> 5, v11);
      }

      v24 = *(v22 + 56);
      v25 = *((*(*(v23 + 32 * v11) + 40))(v23 + 32 * v11) + 56);
      v26 = *(v24 + 8);
      v27 = *(v24 + 24);
      v28 = *(v24 + 40);
      *(v25 + 56) = *(v24 + 56);
      *(v25 + 40) = v28;
      *(v25 + 24) = v27;
      *(v25 + 8) = v26;
      v29 = *(this + 8);
      if (*(this + 9) == v29)
      {
        std::string::basic_string[abi:ne200100]<0>(v41, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v40, "in");
        v36 = this + 32;
        if (*(this + 55) < 0)
        {
          v36 = *v36;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v36, (*(this + 9) - *(this + 8)) >> 5, 0);
      }

      v30 = (*(*v29 + 40))(v29);
      v31 = *(this + 11);
      if (v11 >= (*(this + 12) - v31) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v41, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v40, "out");
        v37 = this + 32;
        if (*(this + 55) < 0)
        {
          v37 = *v37;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v37, (*(this + 12) - *(this + 11)) >> 5, v11);
      }

      v32 = *(*(v30 + 56) + 72);
      result = (*(*(v31 + 32 * v11) + 40))(v31 + 32 * v11);
      *(*(result + 56) + 72) = v32;
      ++v11;
    }

    while (v11 != v15);
  }

  return result;
}

void sub_18F60E914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::ChannelJoinerBox::process(DSPGraph::ChannelJoinerBox *this, unsigned int a2)
{
  v2 = this;
  v4 = this + 88;
  v3 = *(this + 11);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v51, "out");
    v43 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v43 = *v43;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v43, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(v2 + 11);
  if (*(v2 + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v51, "out");
    v44 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v44, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = *(*((*(*v7 + 40))(v7) + 120) + 8) == 1718773105;
  v10 = *(v2 + 8);
  v11 = *(v2 + 9);
  v50 = v2;
  if (((v11 - v10) & 0x1FFFFFFFE0) != 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = (4 * a2) << v9;
    v15 = (v11 - v10) >> 5;
    LOBYTE(v16) = 1;
    do
    {
      if (v15 <= v12)
      {
        std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v51, "in");
        v40 = v2 + 32;
        if (*(v2 + 55) < 0)
        {
          v40 = *v40;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v40, (*(v2 + 9) - *(v2 + 8)) >> 5, v12);
      }

      v17 = (*(*(v10 + 32 * v12) + 40))(v10 + 32 * v12);
      v18 = *(v2 + 8);
      if (v12 >= (*(v2 + 9) - v18) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v51, "in");
        v41 = v2 + 32;
        if (*(v2 + 55) < 0)
        {
          v41 = *v41;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v41, (*(v2 + 9) - *(v2 + 8)) >> 5, v12);
      }

      v19 = *(*(v17 + 56) + 80);
      v20 = (*(*(v18 + 32 * v12) + 40))(v18 + 32 * v12);
      v21 = *(v2 + 8);
      if (v12 >= (*(v2 + 9) - v21) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v51, "in");
        v42 = v2 + 32;
        if (*(v2 + 55) < 0)
        {
          v42 = *v42;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v42, (*(v2 + 9) - *(v2 + 8)) >> 5, v12);
      }

      v22 = *(v20 + 120);
      v23 = *(*((*(*(v21 + 32 * v12) + 40))(v21 + 32 * v12) + 56) + 72);
      if (*(v22 + 28))
      {
        v24 = 0;
        v25 = (v19 + 16);
        v26 = &v8[4 * v13 + 4];
        do
        {
          if (v13 + v24 >= *v8)
          {
            __assert_rtn("process", "DSPGraph_Box.cpp", 3417, "outBufferIndex < outABL->mNumberBuffers");
          }

          *(v26 - 1) = v14;
          if ((v23 & 0x10) != 0)
          {
            bzero(*v26, v14);
          }

          else if (*v25 != *v26)
          {
            memcpy(*v26, *v25, v14);
          }

          ++v24;
          v25 += 2;
          v26 += 2;
        }

        while (v24 < *(v22 + 28));
        v13 = (v13 + v24);
        v2 = v50;
      }

      v16 &= (v23 & 0x10) >> 4;
      ++v12;
      v10 = *(v2 + 8);
      v11 = *(v2 + 9);
      v15 = (v11 - v10) >> 5;
    }

    while (v12 < v15);
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  if (v11 == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v51, "in");
    v45 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v45 = *v45;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v27 = (*(*v10 + 40))(v10);
  v28 = *(v2 + 11);
  if (*(v2 + 12) == v28)
  {
    std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v51, "out");
    v46 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v46 = *v46;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v46, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v29 = *(v27 + 56);
  v30 = *((*(*v28 + 40))(v28) + 56);
  v31 = *(v29 + 8);
  v32 = *(v29 + 24);
  v33 = *(v29 + 40);
  *(v30 + 56) = *(v29 + 56);
  *(v30 + 40) = v33;
  *(v30 + 24) = v32;
  *(v30 + 8) = v31;
  v34 = *(v2 + 8);
  if (*(v2 + 9) == v34)
  {
    std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v51, "in");
    v47 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v47 = *v47;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v47, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v35 = (*(*v34 + 40))(v34);
  v36 = *(v2 + 11);
  if (*(v2 + 12) == v36)
  {
    std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v51, "out");
    v48 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v48 = *v48;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v48, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v37 = *(*(v35 + 56) + 72);
  result = (*(*v36 + 40))(v36);
  *(*(result + 56) + 72) = v37;
  if ((v16 & 1) == 0)
  {
    v39 = *(v2 + 11);
    if (*(v2 + 12) == v39)
    {
      std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v51, "out");
      v49 = v2 + 32;
      if (*(v2 + 55) < 0)
      {
        v49 = *v49;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v49, (*(v50 + 12) - *(v50 + 11)) >> 5, 0);
    }

    result = (*(*v39 + 40))(v39);
    *(*(result + 56) + 72) &= ~0x10u;
  }

  return result;
}

void sub_18F60F1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphOutput::process(DSPGraph::GraphOutput *this, uint64_t a2)
{
  if ((*(*(this + 1) + 764) & 1) == 0)
  {
    v3 = a2 / (*(*this + 672))(this);
    if (*(*(this + 1) + 766) == 1)
    {
      v14 = *(*(this + 106) + 72);
      LOBYTE(v15) = 0;
      v4 = *(this + 8);
      if (*(this + 9) == v4)
      {
        std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v16, "in");
        v12 = this + 32;
        if (*(this + 55) < 0)
        {
          v12 = *v12;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v12, (*(this + 9) - *(this + 8)) >> 5, 0);
      }

      v5 = *((*(*v4 + 40))(v4) + 56);
      v6 = (*(*this + 656))(this);
      DSPGraph::SimpleABL::copy((v5 + 80), &v14, 0, 0, (v6 * v3), 1);
      DSPGraph::SimpleABL::free(&v14);
    }

    else
    {
      v7 = *(this + 8);
      if (*(this + 9) == v7)
      {
        std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v16, "in");
        v13 = this + 32;
        if (*(this + 55) < 0)
        {
          v13 = *v13;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v13, (*(this + 9) - *(this + 8)) >> 5, 0);
      }

      v8 = (*(*v7 + 40))(v7);
      DSPGraph::RingBuffer::write((this + 808), v3, v3, (*(v8 + 56) + 80));
    }
  }

  v9 = *(this + 8);
  if (*(this + 9) == v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v16, "in");
    v11 = this + 32;
    if (*(this + 55) < 0)
    {
      v11 = *v11;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v11, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  result = (*(*v9 + 40))(v9, a2);
  *(*(this + 106) + 4) = *(*(result + 56) + 72);
  return result;
}

void sub_18F60F5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  DSPGraph::SimpleABL::free(&a12);
  _Unwind_Resume(a1);
}

DSPGraph::Graph *DSPGraph::Graph::propagateFlagsAndTimeStamp(DSPGraph::Graph *this, uint64_t a2)
{
  if (((*(this + 39) - *(this + 38)) & 0x7FFFFFFF8) != 0)
  {
    v2 = this;
    v3 = 0;
    v4 = (a2 + 8);
    do
    {
      v5 = DSPGraph::Graph::out(v2, v3);
      v6 = *(v5 + 64);
      if (*(v5 + 72) == v6)
      {
        std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v12, "in");
        v11 = (v5 + 32);
        if (*(v5 + 55) < 0)
        {
          v11 = *v11;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v11, (*(v5 + 72) - *(v5 + 64)) >> 5, 0);
      }

      this = (*(*v6 + 40))(v6);
      v7 = *(this + 7);
      *(v4 - 1) = *(v7 + 72);
      v8 = *(v7 + 8);
      v9 = *(v7 + 24);
      v10 = *(v7 + 56);
      v4[2] = *(v7 + 40);
      v4[3] = v10;
      *v4 = v8;
      v4[1] = v9;
      if ((*(v2 + 766) & 1) == 0)
      {
        *v4 = *(v5 + 856);
      }

      ++v3;
      v4 += 5;
    }

    while (v3 < ((*(v2 + 39) - *(v2 + 38)) >> 3));
  }

  return this;
}

void sub_18F60F7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Graph::reset(void *this)
{
  this[88] = 0;
  this[91] = 0;
  v1 = this[32];
  v2 = this[33];
  while (v1 != v2)
  {
    v3 = *v1;
    v3[32] = 0;
    v3[36] = 0;
    v4 = v3[28];
    v5 = v3[29];
    while (v4 != v5)
    {
      v6 = *v4++;
      this = (*(*v6 + 632))(v6);
    }

    ++v1;
  }

  return this;
}

void DSPGraph::RingBufferBox::reset(DSPGraph::RingBufferBox *this)
{
  if ((*(*this + 696))(this))
  {
    v2 = *(this + 194);
  }

  else
  {
    v2 = 0;
  }

  DSPGraph::RingBuffer::initialize((this + 808), v2);
}

void DSPGraph::RingBuffer::initialize(DSPGraph::RingBuffer *this, int a2)
{
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 7) = a2;
  v2 = *this;
  if (*this && *v2)
  {
    v4 = 0;
    v5 = (*(this + 6) * a2);
    v6 = 4;
    do
    {
      bzero(*&v2[v6], v5);
      ++v4;
      v2 = *this;
      v6 += 4;
    }

    while (v4 < **this);
  }
}

uint64_t DSPGraph::AUBox::reset(AudioUnit *this, AudioUnitScope a2, AudioUnitElement a3)
{
  result = AudioUnitReset(this[106], a2, a3);
  if (result)
  {
    v4 = result;
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v6, "reset");
    std::string::basic_string[abi:ne200100]<0>(&v5, "AudioUnitReset");
    DSPGraph::ThrowException(v4, &v7, 1846, &v6, &v5);
  }

  return result;
}

void sub_18F60F9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

__n128 DSPGraph::Graph::preflight(__n128 *this, _DWORD *a2, _DWORD *a3, unsigned int a4, unsigned int a5, char a6)
{
  if ((this[47].n128_u8[10] & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "preflight");
    std::string::basic_string[abi:ne200100]<0>(&v17, "not initialized");
    DSPGraph::ThrowException(1768843553, &v19, 423, &v18, &v17);
  }

  v7 = a3;
  v8 = a2;
  if (a2 == a3 && (this[47].n128_u8[11] & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "preflight");
    std::string::basic_string[abi:ne200100]<0>(&v17, "input and output data are identical, but graph cannot process in-place");
    DSPGraph::ThrowException(1768975393, &v19, 428, &v18, &v17);
  }

  result = this[45];
  if (this[47].n128_u8[8] != 1)
  {
    if (a4 && this[43].n128_u32[0] != a4 || a5 && this[43].n128_u32[1] != a5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v18, "preflight");
      std::string::basic_string[abi:ne200100]<0>(&v17, "the slice duration cannot vary, yet a different duration was supplied to preflight.");
      DSPGraph::ThrowException(1718775073, &v19, 446, &v18, &v17);
    }

    goto LABEL_14;
  }

  if (!a4 || !a5)
  {
LABEL_14:
    v11 = this[44].n128_u64[1];
    this[45].n128_u64[1] = v11;
    goto LABEL_15;
  }

  v11 = this[43].n128_u64[1] * a4 / a5;
  this[45].n128_u64[1] = v11;
  if ((a6 & 1) == 0 && v11 > this[44].n128_u64[1])
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "preflight");
    std::string::basic_string[abi:ne200100]<0>(&v17, "preflight slice duration is greater than the graph's maximum slice duration.");
    DSPGraph::ThrowException(1718775073, &v19, 438, &v18, &v17);
  }

LABEL_15:
  v16 = result;
  this[45].n128_u64[0] = v11;
  if (((this[18].n128_u64[0] - this[17].n128_u64[1]) & 0x7FFFFFFF8) != 0)
  {
    v12 = 0;
    do
    {
      v13 = DSPGraph::Graph::in(this, v12);
      *v8 = DSPGraph::GraphInput::preflight(v13);
      v8 += 20;
      ++v12;
    }

    while (v12 < ((this[18].n128_u64[0] - this[17].n128_u64[1]) >> 3));
  }

  if (((this[19].n128_u64[1] - this[19].n128_u64[0]) & 0x7FFFFFFF8) != 0)
  {
    v14 = 0;
    do
    {
      v15 = DSPGraph::Graph::out(this, v14);
      *v7 = DSPGraph::GraphOutput::preflight(v15);
      v7 += 20;
      ++v14;
    }

    while (v14 < ((this[19].n128_u64[1] - this[19].n128_u64[0]) >> 3));
  }

  if (a6)
  {
    result = v16;
    this[45] = v16;
  }

  return result;
}

void sub_18F60FCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Graph::in(DSPGraph::Graph *this, unsigned int a2)
{
  v2 = *(this + 35);
  if (a2 >= ((*(this + 36) - v2) >> 3))
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "in");
    std::string::basic_string[abi:ne200100]<0>(&v4, "Graph::in inIndex out of range");
    DSPGraph::ThrowException(1919837985, &v6, 1352, &v5, &v4);
  }

  return *(v2 + 8 * a2);
}

void sub_18F60FDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphInput::ringBufferFramesPerPacket(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 20);
}

void sub_18F60FEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphOutput::ringBufferFramesPerPacket(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v6, "in");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 20);
}

void sub_18F61001C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphOutput::preflight(DSPGraph::GraphOutput *this)
{
  v2 = *(*(this + 1) + 704);
  v3 = *(*(this + 2) + 304);
  v4 = v3 * (*(*this + 672))(this);
  v5 = (v2 + v4 - 1) / v4;
  LODWORD(v2) = (*(*this + 672))(this);
  v6 = *(this + 1);
  v7 = *(v6 + 704);
  v8 = *(v6 + 720);
  v9 = *(*(this + 2) + 304);
  v10 = v9 * (*(*this + 672))(this);
  return ((v7 + v8 + v10 - 1) / v10) * (*(*this + 672))(this) - v5 * v2;
}

DSPGraph::Graph *DSPGraph::Graph::processMultiple(DSPGraph::Graph *this, unsigned int *a2, unsigned int *a3)
{
  if ((*(this + 762) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "processMultiple");
    std::string::basic_string[abi:ne200100]<0>(&v11, "not initialized");
    DSPGraph::ThrowException(1768843553, &v13, 574, &v12, &v11);
  }

  if (*(this + 764) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "processMultiple");
    std::string::basic_string[abi:ne200100]<0>(&v11, "Graph::processMultiple. Graph must be processed in-place");
    DSPGraph::ThrowException(1836084257, &v13, 578, &v12, &v11);
  }

  if (((*(this + 36) - *(this + 35)) & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      *(DSPGraph::Graph::in(this, v6++) + 848) = v7;
      v7 += 20;
    }

    while (v6 < ((*(this + 36) - *(this + 35)) >> 3));
  }

  if (((*(this + 39) - *(this + 38)) & 0x7FFFFFFF8) != 0)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      *(DSPGraph::Graph::out(this, v8++) + 848) = v9;
      v9 += 20;
    }

    while (v8 < ((*(this + 39) - *(this + 38)) >> 3));
  }

  DSPGraph::Graph::checkCurSliceTicks(this, a2, a3);
  DSPGraph::Graph::processAll(this);

  return DSPGraph::Graph::propagateFlagsAndTimeStamp(this, a3);
}

void sub_18F610378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Graph::checkCurSliceTicks(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  v4 = this;
  if (*(this + 760) == 1)
  {
    v5 = *(this + 728);
    if (!v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v47, "checkCurSliceTicks");
      std::string::basic_string[abi:ne200100]<0>(v46, "preflighting is required if slice duration can vary.");
      DSPGraph::ThrowException(1718775073, &v48, 471, &v47, v46);
    }
  }

  else
  {
    v5 = *(this + 712);
  }

  *(this + 720) = v5;
  *(this + 728) = 0;
  if (((*(this + 288) - *(this + 280)) & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = DSPGraph::Graph::in(v4, v6);
      this = DSPGraph::GraphInput::preflight(v9);
      if (v8 != this)
      {
        std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v47, "checkCurSliceTicks");
        v39 = *v7;
        v40 = DSPGraph::Graph::in(v4, v6);
        v41 = DSPGraph::GraphInput::preflight(v40);
        DSPGraph::strprintf("input %u packet count %u is inconsistent with preflight %u", v6, v39, v41);
      }

      ++v6;
      v7 += 20;
    }

    while (v6 < ((*(v4 + 288) - *(v4 + 280)) >> 3));
  }

  v11 = *(v4 + 304);
  v10 = *(v4 + 312);
  if (((v10 - v11) & 0x7FFFFFFF8) != 0)
  {
    v12 = 0;
    v13 = a3;
    do
    {
      v14 = *v13;
      v15 = DSPGraph::Graph::out(v4, v12);
      this = DSPGraph::GraphOutput::preflight(v15);
      if (v14 != this)
      {
        std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v47, "checkCurSliceTicks");
        v42 = *v13;
        v43 = DSPGraph::Graph::out(v4, v12);
        v44 = DSPGraph::GraphOutput::preflight(v43);
        DSPGraph::strprintf("output %u frame count %u is inconsistent with preflight %u", v12, v42, v44);
      }

      ++v12;
      v11 = *(v4 + 304);
      v10 = *(v4 + 312);
      v13 += 20;
    }

    while (v12 < ((v10 - v11) >> 3));
  }

  if (*(v4 + 766))
  {
    if (a2 == a3)
    {
      if ((*(v4 + 763) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v47, "checkCurSliceTicks");
        std::string::basic_string[abi:ne200100]<0>(v46, "graph cannot process in-place.");
        DSPGraph::ThrowException(1768975393, &v48, 497, &v47, v46);
      }
    }

    else
    {
      v17 = *(v4 + 280);
      v16 = *(v4 + 288);
      if (((v16 - v17) & 0x7FFFFFFF8) != 0)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = &a2[20 * v18];
          if (v19)
          {
            if (*v21 != v20)
            {
              std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v47, "checkCurSliceTicks");
              DSPGraph::strprintf("number of frames are different in different ports though the sample rates are the same. %u %u", *v21, v20);
            }
          }

          else
          {
            v20 = *v21;
          }

          v22 = *(v21 + 9);
          if (*v22)
          {
            v23 = 0;
            v24 = v22 + 3;
            do
            {
              v25 = DSPGraph::Graph::in(v4, v18);
              v26 = *v21;
              v27 = v26 / (*(*v25 + 672))(v25);
              this = (*(*v25 + 656))(v25);
              v28 = this * v27;
              if (*v24 < this * v27)
              {
                std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v47, "checkCurSliceTicks");
                DSPGraph::strprintf("AudioBufferList mDataByteSize is too small for the number of packets for input %u.  mDataByteSize %u   expectedByteSize %u", v18, *v24, v28);
              }

              ++v23;
              v24 += 4;
            }

            while (v23 < *v22);
            v17 = *(v4 + 280);
            v16 = *(v4 + 288);
          }

          ++v18;
          v19 = 1;
        }

        while (v18 < ((v16 - v17) >> 3));
        v11 = *(v4 + 304);
        v10 = *(v4 + 312);
        v29 = 1;
        goto LABEL_30;
      }
    }

    v20 = 0;
    v29 = 0;
LABEL_30:
    if (((v10 - v11) & 0x7FFFFFFF8) != 0)
    {
      v30 = 0;
      do
      {
        v31 = &a3[20 * v30];
        if (v29)
        {
          if (*v31 != v20)
          {
            std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v47, "checkCurSliceTicks");
            DSPGraph::strprintf("number of frames are different in different ports though the sample rates are the same. %u %u", *v31, v20);
          }
        }

        else
        {
          v20 = *v31;
        }

        v32 = *(v31 + 9);
        if (*v32)
        {
          v33 = 0;
          v34 = v32 + 3;
          do
          {
            v35 = DSPGraph::Graph::out(v4, v30);
            v36 = *v31;
            v37 = v36 / (*(*v35 + 672))(v35);
            this = (*(*v35 + 656))(v35);
            v38 = this * v37;
            if (*v34 < this * v37)
            {
              std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v47, "checkCurSliceTicks");
              DSPGraph::strprintf("AudioBufferList mDataByteSize is too small for the number of frames for output %u.  mDataByteSize %u   expectedByteSize %u", v30, *v34, v38);
            }

            ++v33;
            v34 += 4;
          }

          while (v33 < *v32);
          v11 = *(v4 + 304);
          v10 = *(v4 + 312);
        }

        ++v30;
        v29 = 1;
      }

      while (v30 < ((v10 - v11) >> 3));
    }
  }

  return this;
}

void sub_18F610A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_5GraphEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(caulk::concurrent::details::lf_read_sync_write_impl *a1, uint64_t *a2)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::begin_access(a1);
  if (*(a1 + result + 8))
  {
    v5 = a1 + 24 * result;
    v6 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v6 == v7)
    {
      goto LABEL_6;
    }

    do
    {
      v8 = *(a2 + 2);
      v11 = *a2;
      v10 = v8;
      v9 = *(v6 + 32);
      if (!v9)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v9 + 48))(v9, &v11, &v10);
      v6 += 48;
    }

    while (v6 != v7);
    if (a1)
    {
LABEL_6:

      return caulk::concurrent::details::lf_read_sync_write_impl::end_access(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double DSPGraph::IsoGroup::process(DSPGraph::IsoGroup *this, uint64_t a2)
{
  for (i = *(this + 14); i; i = *i)
  {
    (*(*i[2] + 704))(i[2], a2);
  }

  v5 = *(this + 28);
  v6 = *(this + 29);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 464))(v7, a2);
  }

  result = *(this + 32) + a2;
  *(this + 32) = result;
  return result;
}

void *DSPGraph::Box::doProcess(DSPGraph::Box *this, uint64_t a2)
{
  v28[0] = this + 640;
  if (*(this + 83))
  {
    CurrentTimeInNanos = DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::GetCurrentTimeInNanos();
  }

  else
  {
    CurrentTimeInNanos = 0;
  }

  v28[1] = CurrentTimeInNanos;
  if (*(this + 744) == 1)
  {
    v5 = *(this + 11);
    v6 = *(this + 12) - v5;
    if ((v6 & 0x1FFFFFFFE0) != 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = v6 >> 5;
      do
      {
        if (v9 <= v8)
        {
          std::string::basic_string[abi:ne200100]<0>(&v30, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v29, "out");
          v27 = this + 32;
          if (*(this + 55) < 0)
          {
            v27 = *v27;
          }

          DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v27, (*(this + 12) - *(this + 11)) >> 5, v8);
        }

        v10 = v5 + v7;
        v11 = *((*(*(v5 + v7) + 40))(v5 + v7) + 56);
        v12 = *(*((*(*v10 + 40))(v10) + 120) + 8);
        v13 = *((*(*v10 + 40))(v10) + 120);
        if (v12 == 1819304813)
        {
          v14 = *(v13 + 24) * a2;
        }

        else
        {
          if (*(v13 + 8) != 1718773105)
          {
            DSPGraph::Buffer::setByteSize(v11, v11[25]);
            goto LABEL_14;
          }

          v14 = 2 * a2 * *(*((*(*v10 + 40))(v10) + 120) + 24);
        }

        DSPGraph::Buffer::setByteSize(v11, v14);
LABEL_14:
        ++v8;
        v5 = *(this + 11);
        v9 = (*(this + 12) - v5) >> 5;
        v7 += 32;
      }

      while (v8 < v9);
    }

    v15 = atomic_fetch_or(this + 192, 0x80000000);
    v16 = *this;
    if (v15)
    {
      (*(v16 + 480))(this);
      (*(*this + 488))(this);
      v17 = *(this + 92);
      v30 = this;
      v31 = a2;
      _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(v17, &v30);
      (*(*this + 472))(this, a2);
      v18 = *(this + 25);
      v19 = *(this + 26);
      while (v18 != v19)
      {
        if (((*(this + 12) - *(this + 11)) & 0x1FFFFFFFE0) != 0 || ((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) != 0)
        {
          DSPGraph::FileRecorder::record(*v18, a2);
        }

        ++v18;
      }

      v20 = *(this + 28);
      v21 = *(this + 29);
      while (v20 != v21)
      {
        DSPGraph::FileInjector::inject(*v20++, a2);
      }

      caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
      for (i = atomic_load(this + 45); ; i = atomic_load(v24))
      {
        v23 = (i & 0xFFFFFFFFFFFFFFFCLL);
        if ((this + 520) == v23)
        {
          break;
        }

        v24 = v23 + 3;
        atomic_load(v23 + 3);
        if (*(*v23 + 28) == 1)
        {
          (*(**v23 + 64))(*v23, *(*(*v23 + 8) + 56), a2);
        }
      }

      caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 560, v23);
      v25 = *(this + 92);
      v30 = this;
      v31 = a2;
      _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_((v25 + 64), &v30);
    }

    else
    {
      (*(v16 + 472))(this, a2);
    }

    atomic_fetch_and(this + 192, 0x7FFFFFFFu);
  }

  return DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(v28);
}

void sub_18F611080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  atomic_fetch_and((v31 + 768), 0x7FFFFFFFu);
  DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(&a12);
  _Unwind_Resume(a1);
}

void *DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::~DoTimePoint(void *a1)
{
  v2 = *a1;
  if (*(*a1 + 24))
  {
    v5 = (DSPGraph::details::DoTimePoint<std::function<void ()(double)>>::GetCurrentTimeInNanos() - a1[1]);
    v3 = *(v2 + 24);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v3 + 48))(v3, &v5);
  }

  return a1;
}

uint64_t DSPGraph::NonFiniteProtectionBox::process(DSPGraph::NonFiniteProtectionBox *this, unsigned int a2)
{
  v2 = this;
  v3 = atomic_load(this + 825);
  v6 = this + 64;
  v4 = *(this + 8);
  v5 = *(v6 + 1);
  if (v3)
  {
    if (v5 == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(__B, "in");
      v67 = v2 + 32;
      if (*(v2 + 55) < 0)
      {
        v67 = *v67;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v67, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
    }

    v7 = (*(*v4 + 40))(v4);
    v8 = *(v2 + 11);
    if (*(v2 + 12) == v8)
    {
      std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(__B, "out");
      v69 = v2 + 32;
      if (*(v2 + 55) < 0)
      {
        v69 = *v69;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v69, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
    }

    v9 = *(v7 + 56);
    v10 = (*(*v8 + 40))(v8);
    DSPGraph::SimpleABL::copy((v9 + 80), (*(v10 + 56) + 80), 1);
    goto LABEL_44;
  }

  if (v5 == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "in");
    v68 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v68 = *v68;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v68, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v11 = (*(*v4 + 40))(v4);
  v12 = *(v2 + 11);
  if (*(v2 + 12) == v12)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "out");
    v70 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v70 = *v70;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v70, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v13 = *(*(v11 + 56) + 80);
  v14 = *(*((*(*v12 + 40))(v12) + 56) + 80);
  v15 = *v13;
  v16 = COERCE_FLOAT(atomic_load(v2 + 193));
  v17 = __exp10f(v16 * 0.05);
  if (!v15)
  {
    v30 = *(v2 + 196);
    if (v30)
    {
      *(v2 + 196) = (v30 - a2) & ~((v30 - a2) >> 31);
    }

    goto LABEL_44;
  }

  v18 = v17;
  v74 = 0;
  v75 = v2;
  v19 = 0;
  v20 = 0;
  v73 = v14;
  v21 = -v17;
  v22 = v14 + 8;
  v23 = 4 * a2;
  while (1)
  {
    v24 = *&v13[4 * v19 + 4];
    v25 = *(v22 + 16 * v19 + 8);
    LODWORD(__C[0]) = 0;
    vDSP_sve(v24, 1, __C, a2);
    if ((__C[0] & 0x7FFFFFFF) >= 0x7F800000)
    {
      if (a2)
      {
        v26 = 4 * a2;
        v27 = v24;
        do
        {
          if ((*v27 & 0x7FFFFFFFu) >= 0x7F800000)
          {
            *v27 = 0.0;
          }

          ++v27;
          v26 -= 4;
        }

        while (v26);
      }

      v20 = 1;
    }

    *__C = v18;
    *__B = v21;
    LODWORD(v77[0]) = 0;
    vDSP_maxmgv(v24, 1, v77, a2);
    if (*v77 <= *__C)
    {
      if (v24 != v25)
      {
        memcpy(v25, v24, v23);
      }

      goto LABEL_21;
    }

    v28 = atomic_load(v75 + 780);
    if (v28)
    {
      break;
    }

    v74 = 1;
    vDSP_vclip(v24, 1, __B, __C, v25, 1, a2);
LABEL_21:
    if (++v19 == v15)
    {
      v29 = v74;
      v2 = v75;
      if (!*(v75 + 196))
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  v2 = v75;
  if (!*(v75 + 196))
  {
    atomic_load(v75 + 193);
    atomic_load(v75 + 194);
    v31 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v31 + 88, 16);
    if (message)
    {
      v33 = message;
      v34 = _os_log_pack_fill(message + 40, v31, 0, &dword_18F5DF000, "NonFiniteProtection Box encountered audio louder than %.2f dB. Silencing output for at least %.2f seconds.", v71, v72);
      v35 = COERCE_FLOAT(atomic_load(v75 + 193));
      v36 = v35;
      v37 = COERCE_FLOAT(atomic_load(v75 + 194));
      *v34 = 134218240;
      *(v34 + 4) = v36;
      *(v34 + 12) = 2048;
      *(v34 + 14) = v37;
      caulk::concurrent::messenger::enqueue(*(gCADefaultDeferredLog + 16), v33);
    }
  }

  v38 = COERCE_FLOAT(atomic_load(v75 + 194));
  v39 = (v38 * DSPGraph::Box::sampleRate(v75));
  *(v75 + 196) = v39;
  v29 = 1;
  if (v39)
  {
LABEL_30:
    v40 = (v13 + 4);
    v41 = (v73 + 16);
    do
    {
      v42 = *v41;
      if (v20)
      {
        v20 = 1;
      }

      else
      {
        v43 = *v40;
        LODWORD(__C[0]) = 0;
        vDSP_sve(v43, 1, __C, a2);
        v20 = (__C[0] & 0x7FFFFFFF) > 0x7F7FFFFF;
      }

      bzero(v42, v23);
      v40 += 2;
      v41 += 2;
      --v15;
    }

    while (v15);
    *(v2 + 196) = (*(v2 + 196) - a2) & ~((*(v2 + 196) - a2) >> 31);
  }

LABEL_36:
  if (v20)
  {
    ++*(v2 + 204);
    v44 = atomic_load(v2 + 826);
    if (v44)
    {
      v45 = *(v2 + 204);
      v46 = atomic_load(v2 + 207);
      if (!(v45 % v46))
      {
        DSPGraph::NonFiniteProtectionBox::addEvent(v2, 0);
      }
    }
  }

  if (v29)
  {
    ++*(v2 + 205);
    v47 = atomic_load(v2 + 826);
    if (v47)
    {
      v48 = *(v2 + 205);
      v49 = atomic_load(v2 + 207);
      if (!(v48 % v49))
      {
        DSPGraph::NonFiniteProtectionBox::addEvent(v2, 1);
      }
    }
  }

LABEL_44:
  v50 = *(v2 + 8);
  if (*(v2 + 9) == v50)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "in");
    v63 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v63 = *v63;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v63, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v51 = (*(*v50 + 40))(v50);
  v52 = *(v2 + 11);
  if (*(v2 + 12) == v52)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "out");
    v64 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v64 = *v64;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v64, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v53 = *(v51 + 56);
  v54 = *((*(*v52 + 40))(v52) + 56);
  v55 = *(v53 + 8);
  v56 = *(v53 + 24);
  v57 = *(v53 + 40);
  *(v54 + 56) = *(v53 + 56);
  *(v54 + 40) = v57;
  *(v54 + 24) = v56;
  *(v54 + 8) = v55;
  v58 = *(v2 + 8);
  if (*(v2 + 9) == v58)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "in");
    v65 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v65 = *v65;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v65, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  v59 = (*(*v58 + 40))(v58);
  v60 = *(v2 + 11);
  if (*(v2 + 12) == v60)
  {
    std::string::basic_string[abi:ne200100]<0>(__C, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(__B, "out");
    v66 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v66 = *v66;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v66, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v61 = *(*(v59 + 56) + 72);
  result = (*(*v60 + 40))(v60);
  *(*(result + 56) + 72) = v61;
  return result;
}

void sub_18F611ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *ACMetadataContainer::resetMetadataEvents(caulk::rt_safe_memory_resource *this, AudioMetadataFrame *a2)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  if (a2)
  {
    v3 = this;
    v4 = *this;
    v5 = *(v3 + 8) - v4;
    if (v5 >= 1)
    {
      bzero(v4, v5);
      v4 = *v3;
    }

    *(v3 + 8) = v4;
    memset(v9, 0, 44);
    BYTE8(v9[1]) = 1;
    *&v9[2] = 0x10000002CLL;
    this = AudioMetadataFrame::begin_new(v3, v9);
    v6 = *a2;
    if (*(a2 + 1) - *a2 >= 0x2CuLL && v6)
    {
      v7 = *(v6 + 40);
      v8 = v6 + 44;
      if (!v7)
      {
        v8 = 0;
      }

      *(v3 + 24) = v8;
      *(v3 + 32) = v7;
    }
  }

  return this;
}

void AudioConverterPrepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create("AudioConverterPrepareQueue", v4);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __AudioConverterPrepare_block_invoke;
  block[3] = &unk_1E72C0F88;
  block[4] = v8;
  dispatch_async(v5, block);
  dispatch_async(v5, &__block_literal_global_5290);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __AudioConverterPrepare_block_invoke_3;
  v6[3] = &unk_1E72C0FD0;
  v6[4] = a3;
  v6[5] = v8;
  dispatch_barrier_async(v5, v6);
  _Block_object_dispose(v8, 8);
  if (v5)
  {
    dispatch_release(v5);
  }
}

OSStatus ExtAudioFileOpenURL(CFURLRef inURL, ExtAudioFileRef *outExtAudioFile)
{
  v4 = *MEMORY[0x1E69E9840];
  result = -50;
  if (inURL)
  {
    if (outExtAudioFile)
    {
      *outExtAudioFile = 0;
      operator new();
    }
  }

  return result;
}

void sub_18F611FC8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v3);
  if (a2 == 4)
  {
    v6 = *(__cxa_begin_catch(exception_object) + 2);
  }

  else if (a2 == 3)
  {
    v6 = *(__cxa_begin_catch(exception_object) + 66);
  }

  else
  {
    v7 = __cxa_begin_catch(exception_object);
    if (a2 != 2)
    {
      __cxa_end_catch();
      v6 = -1;
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    v6 = *v7;
  }

  __cxa_end_catch();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (v6)
  {
    (*(*v2 + 8))(v2);
  }

LABEL_15:
  JUMPOUT(0x18F611E1CLL);
}

void ExtAudioFile::ExtAudioFile(ExtAudioFile *this)
{
  BaseOpaqueObject::BaseOpaqueObject(this);
  *v2 = &unk_1F0327008;
  *(v2 + 16) = 0;
  *(v2 + 29) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = -1;
  *(v2 + 72) = 0;
  *(v2 + 84) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 164) = 0u;
  *(v2 + 180) = 0u;
  *(v2 + 192) = 0u;
  CAAudioChannelLayout::CAAudioChannelLayout((v2 + 264));
  CAAudioChannelLayout::CAAudioChannelLayout((this + 272));
  *(this + 37) = 0;
  *(this + 40) = 0;
  *(this + 328) = 0;
  *(this + 42) = 0;
  *(this + 92) = 0;
  *(this + 416) = 0;
  *(this + 53) = 0;
  *(this + 14) = 0;
  *(this + 27) = 0;
  *(this + 284) = 0x4B00000000;
  *(this + 22) = 0x10000;
  *(this + 6) = 0;
  *(this + 392) = 0;
  *(this + 50) = 0;
  *(this + 51) = -1;
}

void ExtAudioFile::GetExistingFileInfo(ExtAudioFile *this, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  *outDataSize = 0;
  v34 = -1;
  PropertyInfo = AudioFileGetPropertyInfo(*(this + 2), 0x666C7374u, outDataSize, 0);
  v5 = outDataSize[0];
  if (PropertyInfo)
  {
    v6 = 1;
  }

  else
  {
    v6 = outDataSize[0] == 0;
  }

  if (v6)
  {
    v7 = 0;
    v8 = -1;
    goto LABEL_27;
  }

  v9 = outDataSize[0] / 0x30uLL;
  CADeprecated::CAAutoFree<AudioFormatListItem>::CAAutoFree(outPropertyData, v9, 0);
  if (AudioFileGetProperty(*(this + 2), 0x666C7374u, outDataSize, outPropertyData[0]))
  {
    v7 = 0;
  }

  else
  {
    if (a2)
    {
      if (v5 < 0x30)
      {
LABEL_14:
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v37, 0xFFFFFFCE);
          *buf = 136315906;
          *&buf[4] = "ExtAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 533;
          *&buf[18] = 2080;
          *&buf[20] = v37;
          *&buf[28] = 2080;
          *&buf[30] = "couldn't get preferred format ID";
          _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        exception = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(exception, "couldn't get preferred format ID", -50);
      }

      v10 = 0;
      v11 = (outPropertyData[0] + 8);
      while (1)
      {
        v12 = *v11;
        v11 += 12;
        if (v12 == a2)
        {
          break;
        }

        if (v9 == ++v10)
        {
          goto LABEL_14;
        }
      }

      v14 = outPropertyData[0] + 48 * v10;
      v15 = *v14;
      v16 = *(v14 + 1);
      *(this + 25) = *(v14 + 4);
      *(this + 184) = v16;
      *(this + 168) = v15;
      if (*(v14 + 10) <= 0xFFFEFFFF)
      {
        CAAudioChannelLayout::SetWithTag((this + 264));
      }
    }

    else
    {
      outDataSize[1] = 4;
      v7 = 0;
      if (AudioFormatGetProperty(0x6670666Cu, outDataSize[0], outPropertyData[0], &outDataSize[1], &v34) || (v34 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      v17 = outPropertyData[0] + 48 * v34;
      v18 = *(v17 + 4);
      v19 = *(v17 + 1);
      *(this + 168) = *v17;
      *(this + 184) = v19;
      *(this + 25) = v18;
      if (*(v17 + 10) <= 0xFFFEFFFF)
      {
        CAAudioChannelLayout::SetWithTag((this + 264));
      }
    }

    v7 = 1;
  }

LABEL_24:
  if (outPropertyData[0])
  {
    free(outPropertyData[0]);
  }

  v8 = v9 - 1;
LABEL_27:
  memset(buf, 0, sizeof(buf));
  outDataSize[1] = 40;
  Property = AudioFileGetProperty(*(this + 2), 0x64666D74u, &outDataSize[1], buf);
  if (Property)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(outPropertyData, Property);
      *v37 = 136315906;
      v38 = "ExtAudioFile.cpp";
      v39 = 1024;
      v40 = 551;
      v41 = 2080;
      v42 = outPropertyData;
      v43 = 2080;
      v44 = "get audio file's data format";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v37, 0x26u);
    }

    v28 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v28, "get audio file's data format", Property);
  }

  if (v7)
  {
    if (v34 != v8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v21 = *&buf[16];
    *(this + 168) = *buf;
    *(this + 184) = v21;
    *(this + 25) = *&buf[32];
  }

  if (!AudioFileGetPropertyInfo(*(this + 2), 0x636D6170u, &outDataSize[1], 0) && outDataSize[1])
  {
    v22 = malloc_type_malloc(outDataSize[1], 0x7FE3F34FuLL);
    if (!v22 && outDataSize[1])
    {
      v29 = __cxa_allocate_exception(8uLL);
      v30 = std::bad_alloc::bad_alloc(v29);
    }

    v23 = AudioFileGetProperty(*(this + 2), 0x636D6170u, &outDataSize[1], v22);
    if (v23)
    {
      free(v22);
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(outPropertyData, v23);
        *v37 = 136315906;
        v38 = "ExtAudioFile.cpp";
        v39 = 1024;
        v40 = 580;
        v41 = 2080;
        v42 = outPropertyData;
        v43 = 2080;
        v44 = "get audio file's channel layout";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v37, 0x26u);
      }

      v31 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v31, "get audio file's channel layout", v23);
    }

    if (outDataSize[1] <= 0xB)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(outPropertyData, 0x2173697Au);
        *v37 = 136315906;
        v38 = "ExtAudioFile.cpp";
        v39 = 1024;
        v40 = 571;
        v41 = 2080;
        v42 = outPropertyData;
        v43 = 2080;
        v44 = "channel layout's reported size is too small";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v37, 0x26u);
      }

      v32 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v32, "channel layout's reported size is too small", 561211770);
    }

    v24 = caulk::numeric::exceptional_mul<unsigned int>(v22[2], 0x14u);
    if (caulk::numeric::exceptional_add<unsigned int>(12, v24) > outDataSize[1])
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(outPropertyData, 0x2173697Au);
        *v37 = 136315906;
        v38 = "ExtAudioFile.cpp";
        v39 = 1024;
        v40 = 573;
        v41 = 2080;
        v42 = outPropertyData;
        v43 = 2080;
        v44 = "channel layout's reported size is larger than file chunk size";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", v37, 0x26u);
      }

      v33 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v33, "channel layout's reported size is larger than file chunk size", 561211770);
    }

    CAAudioChannelLayout::operator=();
    free(v22);
  }

LABEL_40:
  v25 = *(this + 21);
  v26 = 1.0;
  if (v25 != *buf && v25 != 0.0 && *buf != 0.0)
  {
    v26 = v25 / *buf;
  }

  *(this + 26) = v26;
  if (*(this + 8) == 1)
  {
    if (!AudioFileGetPropertyInfo(*(this + 2), 0x6D676963u, &outDataSize[1], 0))
    {
      if (outDataSize[1])
      {
        operator new[]();
      }
    }

    ExtAudioFile::InitFileMaxPacketSize(this);
    *(this + 6) = 0;
    *(this + 7) = 0;
    *(this + 8) = 0;
    ExtAudioFile::UpdateInternals(this, v27);
  }
}

void sub_18F612A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetFormatListInfo(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  v8 = 0;
  if ((*(*this + 568))(this, 1818522467, 0, &v8))
  {
    v5 = 0;
    v6 = 48;
  }

  else
  {
    if (v8 % 0x24)
    {
      return 1667787583;
    }

    v6 = 48 * (v8 / 0x24);
    v5 = 1;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

void *CADeprecated::CAAutoFree<AudioFormatListItem>::CAAutoFree(void *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  v5 = 48 * a2;
  if (a3)
  {
    v6 = malloc_type_malloc(48 * a2, 0xD7524C8FuLL);
    v7 = v6;
    if (!a2 || v6)
    {
      bzero(v6, v5);
      goto LABEL_7;
    }

LABEL_8:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
  }

  v8 = malloc_type_malloc(v5, 0x100004064842E6AuLL);
  v7 = v8;
  if (a2 && !v8)
  {
    goto LABEL_8;
  }

LABEL_7:
  *a1 = v7;
  return a1;
}

uint64_t CAFAudioFile::GetFormatList(CAFAudioFile *this, unsigned int *a2, AudioFormatListItem *a3)
{
  v15 = 0;
  if ((*(*this + 568))(this, 1818522467, 0, &v15))
  {
    AudioFileObject::GetFormatList(this, a2, a3);
    return v6;
  }

  else
  {
    v8 = *a2;
    if (v8 >= 0x30)
    {
      LODWORD(v9) = v15 / 0x24;
      if (v15 % 0x24)
      {
        return 1667787583;
      }

      else
      {
        bzero(a3, v8);
        CADeprecated::CAAutoFree<CAFAudioFormatListItem>::CAAutoFree(&v14, v9);
        v15 = 36 * v9;
        v7 = (*(*this + 584))(this, 1818522467, 0, &v15, v14);
        if (!v7)
        {
          v10 = *a2 / 0x30;
          if (v9 >= v10)
          {
            v9 = v10;
          }

          else
          {
            v9 = v9;
          }

          if (v9)
          {
            v11 = v14;
            v12 = v9;
            do
            {
              *&v11->mFormat.mSampleRate = bswap64(*&v11->mFormat.mSampleRate);
              *&v11->mFormat.mFormatID = vrev32q_s8(*&v11->mFormat.mFormatID);
              *&v11->mFormat.mChannelsPerFrame = vrev32_s8(*&v11->mFormat.mChannelsPerFrame);
              v11->mChannelLayoutTag = bswap32(v11->mChannelLayoutTag);
              CAFtoAF_FormatListItem(v11++, a3++);
              --v12;
            }

            while (v12);
          }

          v7 = 0;
          *a2 = 48 * v9;
        }

        if (v14)
        {
          free(v14);
        }
      }
    }

    else
    {
      return 561211770;
    }
  }

  return v7;
}

void sub_18F612E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

double AudioFileObject::GetFormatList(AudioFileObject *this, unsigned int *a2, AudioFormatListItem *a3)
{
  if (*a2 >= 0x30)
  {
    v6 = *(this + 40);
    v14 = *(this + 24);
    v15 = v6;
    v16 = *(this + 7);
    v7 = *(this + 13) | 0xFFFF0000;
    size = 0;
    if (!(*(*this + 408))())
    {
      v12 = 0;
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v12, HIDWORD(size), 0);
      v8 = v12;
      if ((*(*this + 416))(this, &size + 4, v12))
      {
        v9 = 0;
      }

      else
      {
        v9 = HIDWORD(size) >= 0xC;
      }

      if (v9)
      {
        if ((*v8 | 0x10000) != 0x10000)
        {
          v7 = *v8;
        }
      }

      else if (!v8)
      {
        goto LABEL_12;
      }

      free(v8);
    }

LABEL_12:
    result = *&v14;
    v11 = v15;
    *&a3->mASBD.mSampleRate = v14;
    *&a3->mASBD.mBytesPerPacket = v11;
    *&a3->mASBD.mBitsPerChannel = v16;
    a3->mChannelLayoutTag = v7;
    *a2 = 48;
  }

  return result;
}

void sub_18F612FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetChannelLayoutSize(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  v3 = *(this + 18);
  v4 = *(this + 19) - v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    v7 = 1;
    while (1)
    {
      v8 = (v3 + 24 * v5);
      if (*v8 == 1667785070)
      {
        break;
      }

      v5 = v7;
      if (v6 <= v7++)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8)
  {
    result = 0;
    v11 = v8[2] - 12;
  }

  else
  {
    v11 = 0;
    result = 1667787583;
  }

  *a2 = v11;
  return result;
}

uint64_t ExtAudioFile::InitFileMaxPacketSize(AudioFileID *this)
{
  v16 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  Property = AudioFileGetProperty(this[2], 0x706B7562u, &ioDataSize, this + 35);
  if (Property)
  {
    if (*(this + 44) != 1819304813)
    {
      v5 = Property;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v7, v5);
        *buf = 136315906;
        v9 = "ExtAudioFile.cpp";
        v10 = 1024;
        v11 = 466;
        v12 = 2080;
        v13 = v7;
        v14 = 2080;
        v15 = "get audio file's maximum packet size";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "get audio file's maximum packet size", v5);
    }

    *(this + 70) = *(this + 48);
  }

  return ExtAudioFile::AllocateBuffers(this, 1);
}

void __AudioConverterPrepare_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v1 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    object = "AudioConverterOOPOriginal.cpp";
    v5 = 1024;
    v6 = 684;
    _os_log_impl(&dword_18F5DF000, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Preparing AudioConverterService", buf, 0x12u);
  }

  remoteAudioConverterClientWithActivatedEndpoint(&v2);
}

void sub_18F6134C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void remoteAudioConverterClientWithActivatedEndpoint(void *a1)
{
  v2 = selectAudioConverterService();
  applesauce::xpc::connection::create(&object, v2, v3);
  v4 = object;
  if (object)
  {
    xpc_retain(object);
    v5 = v4;
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc_release(v5);
  xpc_null_create();
  remoteAudioConverterClient(a1, v4);
}

void sub_18F613674(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v3 + 8))(v3);
  xpc_release(v2);
  _Unwind_Resume(a1);
}

void applesauce::xpc::connection::create(applesauce::xpc::connection *this, const char *name, dispatch_queue_s *a3)
{
  v4 = xpc_connection_create(name, 0);
  v5 = v4;
  if (v4)
  {
    *this = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *this = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (object_getClass(v5) == MEMORY[0x1E69E9E68])
  {
    xpc_retain(v5);
    goto LABEL_7;
  }

LABEL_5:
  *this = xpc_null_create();
LABEL_7:
  xpc_release(v5);
}

OpaqueAudioComponent *__AudioConverterPrepare_block_invoke_2()
{
  result = 0;
  *&v1.componentType = xmmword_18F901880;
  v1.componentFlagsMask = 0;
  do
  {
    result = AudioComponentFindNext(result, &v1);
  }

  while (result);
  return result;
}

std::string *swix::connection_config::connection_config(std::string *this, const swix::connection_config *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 6);
  this[2].__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    this[2].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v7 = *(a2 + 7);
  this[2].__r_.__value_.__l.__size_ = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a2 + 8);
  LOWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 36);
  this[2].__r_.__value_.__r.__words[2] = v8;
  std::__optional_copy_base<swix::timeout_config,false>::__optional_copy_base[abi:ne200100](&this[3].__r_.__value_.__s.__data_[8], a2 + 80);
  return this;
}

void sub_18F613874(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *AudioConverterXPC_Client::AudioConverterXPC_Client(void *a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  std::optional<swix::connection_config>::optional[abi:ne200100](&v4, a2);
  swix::ipc_interface::ipc_interface();
  if (v10[40] == 1)
  {
    if (v10[32] == 1)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10);
    }

    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v8);
    v8 = 0;
    if (v7 < 0)
    {
      operator delete(__p);
    }

    if (v5 < 0)
    {
      operator delete(v4);
    }
  }

  *a1 = &unk_1F033FD28;
  return a1;
}

void sub_18F6139A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<swix::timeout_config,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    *a1 = *a2;
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((a1 + 8), a2 + 8);
    a1[40] = 1;
  }

  return a1;
}

void sub_18F613A24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<swix::connection_config>::optional[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(a1 + 48) = *(a2 + 6);
    v6 = xpc_null_create();
    *(a1 + 56) = *(a2 + 7);
    *(a2 + 6) = v6;
    *(a2 + 7) = 0;
    v7 = *(a2 + 8);
    *(a1 + 72) = *(a2 + 36);
    *(a1 + 64) = v7;
    *(a1 + 80) = 0;
    *(a1 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      *(a1 + 80) = *(a2 + 10);
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a1 + 88, a2 + 88);
      *(a1 + 120) = 1;
    }

    *(a1 + 128) = 1;
  }

  return a1;
}

void swix::connection::activate(swix::connection *this)
{
  swix::connection::xpc_connection(&connection, this);
  xpc_connection_activate(connection);
  xpc_release(connection);
}

void ___ZL32AudioConverterExecuteWorkaroundsv_block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 bundleIdentifier];
    v3 = v2;
    if (!v2)
    {
LABEL_23:

      goto LABEL_24;
    }

    if ([v2 isEqualToString:@"com.apple.mobilegarageband"])
    {
      v4 = [v1 infoDictionary];
      v5 = v4;
      if (v4 && ([v4 objectForKeyedSubscript:@"CFBundleVersion"], v6 = objc_claimAutoreleasedReturnValue(), (v7 = v6) != 0))
      {
        v8 = [v6 intValue];

        if (v8 >> 1 > 0xA22)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v8 = 0;
      }

      ACv2Workarounds::fix84702776_86723525_86479548_89800354_SinglePacketDesc = 1;
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v9 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315906;
        v13 = "ACv2Workarounds.mm";
        v14 = 1024;
        v15 = 41;
        v16 = 2112;
        v17 = v3;
        v18 = 1024;
        LODWORD(v19) = v8;
        _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ 0x%x: fix84702776_86723525_86479548_89800354_SinglePacketDesc", &v12, 0x22u);
      }
    }

LABEL_13:
    if (([v3 hasPrefix:@"com.iqiyi."] & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"com.qiyi."))
    {
      ACv2Workarounds::fix84702776_86723525_86479548_89800354_SinglePacketDesc = 1;
    }

    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v10 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "ACv2Workarounds.mm";
      v12 = 136315906;
      v14 = 1024;
      if (ACv2Workarounds::fix84702776_86723525_86479548_89800354_SinglePacketDesc)
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }

      v15 = 51;
      v16 = 2112;
      v17 = v3;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@: fix84702776_86723525_86479548_89800354_SinglePacketDesc: %s", &v12, 0x26u);
    }

    goto LABEL_23;
  }

LABEL_24:
}

double ExtAudioFile::SetClientFormat(ExtAudioFile *this, AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, BOOL a4, BOOL a5)
{
  outPropertyData[3] = *MEMORY[0x1E69E9840];
  if (a2->mFormatID != 1819304813)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(outPropertyData, 0xFFFEFBFD);
      *inSpecifier = 136315906;
      *&inSpecifier[4] = "ExtAudioFile.cpp";
      *&inSpecifier[12] = 1024;
      *&inSpecifier[14] = 638;
      v58 = 2080;
      v59 = outPropertyData;
      v60 = 2080;
      v61 = "non-PCM client format on audio file";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "non-PCM client format on audio file", -66563);
  }

  if (!*(this + 58) || !CAStreamBasicDescription::IsEquivalent((this + 224), a2, a3, a4, a5))
  {
    v17 = *(this + 19);
    if (v17)
    {
      AudioConverterDispose(v17);
      *(this + 19) = 0;
    }

    CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 40, 0);
    v12 = *&a2->mSampleRate;
    v18 = *&a2->mBytesPerPacket;
    *(this + 32) = *&a2->mBitsPerChannel;
    *(this + 14) = v12;
    *(this + 15) = v18;
    v13 = 1;
    if (!a3)
    {
      goto LABEL_5;
    }

LABEL_10:
    v16 = CAAudioChannelLayout::operator==() ^ 1;
    if (*&a3->mSampleRate && CAAudioChannelLayout::NumberChannels((*&a3->mSampleRate + 16), v15))
    {
      if (*&a3->mSampleRate)
      {
        v19 = CAAudioChannelLayout::NumberChannels((*&a3->mSampleRate + 16), v15);
      }

      else
      {
        v19 = 0;
      }

      if (v19 != *(this + 63))
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(outPropertyData, 0xFFFEFBFC);
          *inSpecifier = 136315906;
          *&inSpecifier[4] = "ExtAudioFile.cpp";
          *&inSpecifier[12] = 1024;
          *&inSpecifier[14] = 653;
          v58 = 2080;
          v59 = outPropertyData;
          v60 = 2080;
          v61 = "inappropriate channel map";
          _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
        }

        v46 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v46, "inappropriate channel map", -66564);
      }

      CAAudioChannelLayout::operator=();
    }

    goto LABEL_18;
  }

  v13 = 0;
  if (a3)
  {
    goto LABEL_10;
  }

LABEL_5:
  v14 = *(this + 34);
  if (!v14)
  {
    v16 = 0;
LABEL_29:
    v26 = 1;
    goto LABEL_30;
  }

  v16 = CAAudioChannelLayout::NumberChannels((v14 + 16), v8) != 0;
LABEL_18:
  v20 = *(this + 34);
  if (!v20)
  {
    goto LABEL_29;
  }

  if (!CAAudioChannelLayout::NumberChannels((v20 + 16), v15))
  {
    goto LABEL_29;
  }

  v22 = *(this + 33);
  if (!v22)
  {
    goto LABEL_29;
  }

  if (!CAAudioChannelLayout::NumberChannels((v22 + 16), v21))
  {
    goto LABEL_29;
  }

  v24 = *(this + 33);
  v23 = *(this + 34);
  if (v23 == v24)
  {
    goto LABEL_29;
  }

  LODWORD(outPropertyData[0]) = 0;
  ioPropertyDataSize.mType = 4;
  *inSpecifier = v23 + 16;
  *&inSpecifier[8] = v24 + 16;
  if (AudioFormatGetProperty(0x63686571u, 0x10u, inSpecifier, &ioPropertyDataSize.mType, outPropertyData))
  {
    v25 = 1;
  }

  else
  {
    v25 = LODWORD(outPropertyData[0]) == 0;
  }

  v26 = !v25;
LABEL_30:
  v27 = *(this + 19);
  if (v27)
  {
    v28 = v13;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) != 0 || v16)
  {
    if ((CAStreamBasicDescription::IsEquivalent((this + 224), (this + 168), v9, v10, v11) & v26) != 1 || *(this + 160) == 1)
    {
      v30 = *(this + 8);
      if ((v30 - 2) >= 2)
      {
        if (v30 != 1)
        {
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(outPropertyData, 0xFFFEFBFB);
            *inSpecifier = 136315906;
            *&inSpecifier[4] = "ExtAudioFile.cpp";
            *&inSpecifier[12] = 1024;
            *&inSpecifier[14] = 746;
            v58 = 2080;
            v59 = outPropertyData;
            v60 = 2080;
            v61 = "audio file format not yet known";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
          }

          v47 = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(v47, "audio file format not yet known", -66565);
        }

        if (!v27)
        {
          v35 = *(this + 41);
          if (v35)
          {
            v36 = *(this + 44);
            ioPropertyDataSize.mType = 1633969507;
            ioPropertyDataSize.mSubType = v36;
            ioPropertyDataSize.mManufacturer = v35;
            v37 = AudioConverterNewSpecific((this + 168), (this + 224), 1u, &ioPropertyDataSize, this + 19);
            if (v37)
            {
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                CAX4CCString::CAX4CCString(outPropertyData, v37);
                *inSpecifier = 136315906;
                *&inSpecifier[4] = "ExtAudioFile.cpp";
                *&inSpecifier[12] = 1024;
                *&inSpecifier[14] = 694;
                v58 = 2080;
                v59 = outPropertyData;
                v60 = 2080;
                v61 = "create audio converter";
                _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
              }

              v38 = __cxa_allocate_exception(0x110uLL);
              CAXException::CAXException(v38, "create audio converter", v37);
            }
          }

          else
          {
            v42 = AudioConverterNewWithOptions((this + 168), this + 224, 0, this + 152);
            if (v42)
            {
              v50 = v42;
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                CAX4CCString::CAX4CCString(outPropertyData, v50);
                *inSpecifier = 136315906;
                *&inSpecifier[4] = "ExtAudioFile.cpp";
                *&inSpecifier[12] = 1024;
                *&inSpecifier[14] = 696;
                v58 = 2080;
                v59 = outPropertyData;
                v60 = 2080;
                v61 = "create audio converter";
                _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
              }

              v51 = __cxa_allocate_exception(0x110uLL);
              CAXException::CAXException(v51, "create audio converter", v50);
            }
          }
        }

        v43 = *(this + 37);
        if (v43)
        {
          ExtAudioFile::SetConverterProperty(this, 1684891491, *(this + 76), v43, *(this + 44) == 1819304813, v29);
        }

        ExtAudioFile::SetConverterChannelLayout(this, 0, (this + 264));
        ExtAudioFile::SetConverterChannelLayout(this, 1, (this + 272));
        v44 = *(this + 19);
        v56 = 1886546285;
        v55 = 8;
        v53 = 0;
        *&ioPropertyDataSize.mType = &v53;
        outPropertyData[0] = &v56;
        outPropertyData[1] = &v55;
        outPropertyData[2] = &ioPropertyDataSize;
        *inSpecifier = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
        *&inSpecifier[8] = outPropertyData;
        with_resolved(v44, inSpecifier);
      }

      else
      {
        if (!v27)
        {
          v31 = *(this + 41);
          if (v31)
          {
            v32 = *(this + 44);
            ioPropertyDataSize.mType = 1634037347;
            ioPropertyDataSize.mSubType = v32;
            ioPropertyDataSize.mManufacturer = v31;
            v33 = AudioConverterNewSpecific((this + 224), (this + 168), 1u, &ioPropertyDataSize, this + 19);
            if (v33)
            {
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                CAX4CCString::CAX4CCString(outPropertyData, v33);
                *inSpecifier = 136315906;
                *&inSpecifier[4] = "ExtAudioFile.cpp";
                *&inSpecifier[12] = 1024;
                *&inSpecifier[14] = 729;
                v58 = 2080;
                v59 = outPropertyData;
                v60 = 2080;
                v61 = "create audio converter";
                _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
              }

              v34 = __cxa_allocate_exception(0x110uLL);
              CAXException::CAXException(v34, "create audio converter", v33);
            }
          }

          else
          {
            v39 = AudioConverterNewWithOptions((this + 224), this + 168, 0, this + 152);
            if (v39)
            {
              v48 = v39;
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                CAX4CCString::CAX4CCString(outPropertyData, v48);
                *inSpecifier = 136315906;
                *&inSpecifier[4] = "ExtAudioFile.cpp";
                *&inSpecifier[12] = 1024;
                *&inSpecifier[14] = 731;
                v58 = 2080;
                v59 = outPropertyData;
                v60 = 2080;
                v61 = "create audio converter";
                _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", inSpecifier, 0x26u);
              }

              v49 = __cxa_allocate_exception(0x110uLL);
              CAXException::CAXException(v49, "create audio converter", v48);
            }
          }
        }

        v40 = CADeprecated::CABufferList::New("", *(this + 59), *(this + 63));
        CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 40, v40);
        ExtAudioFile::SetConverterChannelLayout(this, 0, (this + 272));
        ExtAudioFile::SetConverterChannelLayout(this, 1, (this + 264));
        if (*(this + 8) == 3)
        {
          ExtAudioFile::FileFormatChanged(this, 0, 0, 0, v41);
        }
      }
    }

    *&v12 = ExtAudioFile::UpdateInternals(this, v29);
  }

  return *&v12;
}

OSStatus ExtAudioFileSetProperty(ExtAudioFileRef inExtAudioFile, ExtAudioFilePropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  v37[3] = *MEMORY[0x1E69E9840];
  v7 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v7)
  {
    LODWORD(v12) = -50;
    return v12;
  }

  v11 = v7;
  if (inPropertyID <= 1668112749)
  {
    if (inPropertyID <= 1633903461)
    {
      if (inPropertyID == 593916525)
      {
        inPropertyDataa = *inPropertyData;
        if (*(v7 + 188) == 1)
        {
          v25 = AudioFileSetProperty(*(v7 + 16), 0x70636E74u, 8u, &inPropertyDataa);
          if (!v25)
          {
            goto LABEL_48;
          }

          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v37, v25);
            LODWORD(buf.mSampleRate) = 136315906;
            *(&buf.mSampleRate + 4) = "ExtAudioFile.cpp";
            LOWORD(buf.mFormatFlags) = 1024;
            *(&buf.mFormatFlags + 2) = 501;
            HIWORD(buf.mBytesPerPacket) = 2080;
            *&buf.mFramesPerPacket = v37;
            LOWORD(buf.mChannelsPerFrame) = 2080;
            *(&buf.mChannelsPerFrame + 2) = "Couldn't set number of packets on audio file";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &buf, 0x26u);
          }

          exception = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(exception, "Couldn't set number of packets on audio file", v25);
        }

        else
        {
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v37, 0xFFFEFBFA);
            LODWORD(buf.mSampleRate) = 136315906;
            *(&buf.mSampleRate + 4) = "ExtAudioFile.cpp";
            LOWORD(buf.mFormatFlags) = 1024;
            *(&buf.mFormatFlags + 2) = 500;
            HIWORD(buf.mBytesPerPacket) = 2080;
            *&buf.mFramesPerPacket = v37;
            LOWORD(buf.mChannelsPerFrame) = 2080;
            *(&buf.mChannelsPerFrame + 2) = "SetNumberFrames only supported for PCM";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &buf, 0x26u);
          }

          exception = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(exception, "SetNumberFrames only supported for PCM", -66566);
        }
      }

      if (inPropertyID == 610889331)
      {
        v20 = *inPropertyData;
        *(v7 + 416) = *inPropertyData != 0;
        if (v20)
        {
          *(v7 + 424) = 0;
        }

        v12 = *(v7 + 152);
        if (v12)
        {
          v32 = v20 != 0;
          v35 = 610889331;
          v34 = 4;
          inPropertyDataa = &v32;
          v37[0] = &v35;
          v37[1] = &v34;
          v37[2] = &inPropertyDataa;
          *&buf.mSampleRate = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
          *&buf.mFormatID = v37;
          with_resolved(v12, &buf);
          goto LABEL_48;
        }

        return v12;
      }
    }

    else
    {
      switch(inPropertyID)
      {
        case 0x61636366u:
          buf.mSampleRate = *inPropertyData;
          ExtAudioFile::SetConverterProperty(v7, 1633906803, 8, &buf, 0, v10);
          goto LABEL_48;
        case 0x63636C6Fu:
          CAAudioChannelLayout::CAAudioChannelLayout(&buf, inPropertyData);
          v22.n128_f64[0] = ExtAudioFile::SetClientFormat(v11, (v11 + 224), &buf, v23, v24);
          goto LABEL_35;
        case 0x63666D74u:
          if (inPropertyDataSize > 0x23)
          {
            v13 = *(inPropertyData + 1);
            *&buf.mSampleRate = *inPropertyData;
            *&buf.mBytesPerPacket = v13;
            *&buf.mBitsPerChannel = *(inPropertyData + 4);
            ExtAudioFile::SetClientFormat(v7, &buf, 0, v8, v9);
            goto LABEL_48;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.mSampleRate) = 136315394;
            *(&buf.mSampleRate + 4) = "ExtendedAudioFile.cpp";
            LOWORD(buf.mFormatFlags) = 1024;
            *(&buf.mFormatFlags + 2) = 369;
            _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  bad property size", &buf, 0x12u);
          }

          v29 = __cxa_allocate_exception(4uLL);
          *v29 = -66562;
LABEL_58:
          __cxa_throw(v29, v30, 0);
      }
    }

LABEL_57:
    v29 = __cxa_allocate_exception(4uLL);
    *v29 = -66561;
    v30 = MEMORY[0x1E69E5478];
    goto LABEL_58;
  }

  if (inPropertyID > 1768907365)
  {
    switch(inPropertyID)
    {
      case 0x696F6266u:
        v27 = *inPropertyData;
        if ((*(v7 + 120) & 1) == 0)
        {
          v28 = *(v7 + 112);
          if (v28)
          {
            MEMORY[0x193ADF1F0](v28, 0x1000C8077774924);
          }
        }

        *(v11 + 112) = v27;
        *(v11 + 120) = *&v27 != 0;
        break;
      case 0x696F6273u:
        *(v7 + 88) = *inPropertyData;
        break;
      case 0x78707469u:
        LODWORD(v12) = 0;
        v14 = *inPropertyData;
        *(v11 + 400) = *inPropertyData;
        v15 = *(inPropertyData + 2);
        *(v11 + 408) = v15;
        v16 = *(inPropertyData + 3);
        *(v11 + 412) = v16;
        v17 = *&v14 - 1;
        v19 = (v15 & v16) != 0xFFFFFFFF || v17 < 0xFFFFFFFFFFFFFFFELL;
        *(v11 + 392) = v19;
        return v12;
      default:
        goto LABEL_57;
    }

    ExtAudioFile::AllocateBuffers(v11, 0);
    goto LABEL_48;
  }

  if (inPropertyID != 1668112750)
  {
    if (inPropertyID != 1717791855)
    {
      if (inPropertyID == 1717792374)
      {
        *(v7 + 160) = *inPropertyData != 0;
        ExtAudioFile::SetClientFormat(v7, (v7 + 224), 0, v8, v9);
LABEL_48:
        LODWORD(v12) = 0;
        return v12;
      }

      goto LABEL_57;
    }

    CAAudioChannelLayout::CAAudioChannelLayout(&buf, inPropertyData);
    CAAudioChannelLayout::operator=();
    if (*(v11 + 32) != 1)
    {
      ExtAudioFile::FileFormatChanged(v11, 0, 0, 0, v21);
    }

LABEL_35:
    MEMORY[0x193ADE5D0](&buf, v22);
    goto LABEL_48;
  }

  LODWORD(v12) = 0;
  *(v11 + 164) = *inPropertyData;
  return v12;
}

void sub_18F614DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    if (a2 == 4 || a2 == 3)
    {
      __cxa_begin_catch(exception_object);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(exception_object);
      __cxa_end_catch();
    }

    JUMPOUT(0x18F614C18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getAuditToken(integer_t *a1)
{
  task_info_outCnt = 8;
  result = task_info(*MEMORY[0x1E69E9A60], 0xFu, a1, &task_info_outCnt);
  if (result)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ___Z25_CAInitDefaultDeferredLogv_block_invoke()
{
  v0 = CADefaultLog();
  caulk::deferred_logger::create_v(&v4, v0, v1);
  v2 = v4;
  v4 = 0uLL;
  v3 = *(&gCADefaultDeferredLog + 1);
  gCADefaultDeferredLog = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (*(&v4 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
    }
  }
}

__objc2_class *CADefaultLog()
{
  v0 = AudioComponentRegistrarClient;
  {
    v0 = AudioComponentRegistrarClient;
    if (v2)
    {
      CADefaultLog::global = os_log_create("com.apple.coreaudio", "default");
      v0 = AudioComponentRegistrarClient;
    }
  }

  return v0[17].superclass;
}

uint64_t AudioFileObject::PacketToRollDistance(AudioFileObject *this, AudioPacketRollDistanceTranslation *a2)
{
  mPacket = *(this + 32);
  if (!mPacket)
  {
    v4 = *(this + 8);
    ioPropertyDataSize = 4;
    inSpecifier = v4;
    outPropertyData = 0;
    AudioFormatGetProperty(0x64726C6Cu, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData);
    mPacket = outPropertyData;
  }

  if (a2->mPacket < mPacket)
  {
    mPacket = a2->mPacket;
  }

  a2->mRollDistance = mPacket;
  return 0;
}

uint64_t ExtAudioFile::ReadInputProc(ExtAudioFile *this, OpaqueAudioConverter *a2, AudioStreamPacketDescription **a3, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v10 = a5 + 12;
    v11 = *(a5 + 23);
  }

  else
  {
    v12 = *(a5 + 70);
    if (!v12)
    {
      return 4294900729;
    }

    v11 = *(a3 + 3) / v12;
    if (v11 >= *a2)
    {
      v11 = *a2;
    }

    v10 = a3;
  }

  if (a5[16] && v11 >= *(a5 + 34))
  {
    v11 = *(a5 + 34);
  }

  v13 = *(a5 + 77);
  if (v11 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  ioNumPackets = ExtAudioFile::AlignIO(a5, v14);
  if (!ioNumPackets)
  {
    goto LABEL_28;
  }

  ioNumBytes = *(v10 + 3);
  if (*(a5 + 416) == 1)
  {
    v15 = mach_absolute_time();
  }

  else
  {
    v15 = 0;
  }

  v16 = AudioFileReadPacketData(a5[2], *(a5 + 29), &ioNumBytes, a5[16], a5[6], &ioNumPackets, v10[2]);
  if (*(a5 + 416) == 1)
  {
    a5[53] = (a5[53] + mach_absolute_time() - v15);
  }

  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "ExtAudioFile.cpp";
      v28 = 1024;
      v29 = 1362;
      v30 = 1024;
      v31 = v16;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Error %d from AudioFileReadPackets!!!\n", buf, 0x18u);
    }

    return v16;
  }

  v17 = ioNumPackets;
  if (!ioNumPackets)
  {
LABEL_28:
    v16 = 0;
    *a2 = 0;
    *(a3 + 3) = 0;
    return v16;
  }

  if (a4)
  {
    *&a4->mNumberBuffers = a5[16];
  }

  *(a3 + 3) = ioNumBytes;
  a3[2] = v10[2];
  a5[6] = (a5[6] + v17);
  if (*(a5 + 61) != 1)
  {
    v18 = *(a5 + 47);
    if (v18)
    {
      v19 = (a5[7] + (v18 * v17));
    }

    else
    {
      v19 = a5[7];
      p_mVariableFramesInPacket = &a5[16]->mVariableFramesInPacket;
      v21 = v17;
      do
      {
        v22 = *p_mVariableFramesInPacket;
        p_mVariableFramesInPacket += 4;
        v19 = (v19 + v22);
        --v21;
      }

      while (v21);
    }

    a5[7] = v19;
  }

  v16 = 0;
  *a2 = v17;
  return v16;
}

void sub_18F6153C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioFileReadPacketData(AudioFileID inAudioFile, Boolean inUseCache, UInt32 *ioNumBytes, AudioStreamPacketDescription *outPacketDescriptions, SInt64 inStartingPacket, UInt32 *ioNumPackets, void *outBuffer)
{
  if (!ioNumPackets)
  {
    return -50;
  }

  v7 = -50;
  if ((inStartingPacket & 0x8000000000000000) == 0 && *ioNumPackets)
  {
    v14 = inAudioFile;
    v15 = 0;
    if (AudioFileLocker::Lock(&v14))
    {
      if (v15)
      {
        if (!ioNumBytes && outPacketDescriptions && !outBuffer)
        {
          v11 = (*(*v15 + 104))();
          goto LABEL_16;
        }

        if (ioNumBytes && *ioNumBytes)
        {
          v11 = (*(*v15 + 112))();
LABEL_16:
          v12 = v11;
          AudioFileLocker::~AudioFileLocker(&v14);
          if (v12 == -39)
          {
            return 0;
          }

          else
          {
            return v12;
          }
        }
      }
    }

    else
    {
      v7 = -38;
    }

    AudioFileLocker::~AudioFileLocker(&v14);
  }

  return v7;
}

void sub_18F615518(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    __cxa_end_catch();
    JUMPOUT(0x18F6154F0);
  }

  __cxa_end_catch();
  JUMPOUT(0x18F6154F8);
}

uint64_t AudioFileObject::ReadPacketDataCBR(AudioFileObject *this, uint64_t a2, unsigned int *a3, uint64_t a4, unsigned int *a5, void *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 || !*a3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    v18 = 136315394;
    v19 = "AudioFileObject.cpp";
    v20 = 1024;
    v21 = 935;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  invalid ioNumBytes parameter";
LABEL_13:
    _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, v17, &v18, 0x12u);
    return 4294967246;
  }

  if (!a6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    v18 = 136315394;
    v19 = "AudioFileObject.cpp";
    v20 = 1024;
    v21 = 936;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  NULL buffer";
    goto LABEL_13;
  }

  v9 = *(this + 10);
  v10 = *a3 / v9;
  v11 = *a5;
  if (*a5 > v10)
  {
    *a5 = v10;
    v9 = *(this + 10);
    v11 = v10;
  }

  v18 = v9 * v11;
  result = (*(*this + 72))(this, a2, v9 * a4, &v18, a6);
  if (!result || result == -39)
  {
    v13 = v18;
    v14 = *(this + 10);
    if (v18 != v14 * *a5)
    {
      v15 = v18 / v14;
      *a5 = v18 / v14;
      v13 = *(this + 10) * v15;
    }

    *a3 = v13;
  }

  return result;
}

double ExtAudioFile::UpdateInternals(ExtAudioFile *this, double result)
{
  v26 = *MEMORY[0x1E69E9840];
  *(this + 20) = 0;
  v3 = *(this + 19);
  if (v3)
  {
    v4 = *(this + 8);
    v14 = 4;
    if (v4 == 1)
    {
      v5 = 2020569203;
    }

    else
    {
      v5 = 2020175987;
    }

    v17 = v5;
    v15 = this + 284;
    v16 = &v14;
    v23 = &v17;
    v24 = &v16;
    v25 = &v15;
    *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
    *&buf[8] = &v23;
    v6 = with_resolved(v3, buf);
    if (v6)
    {
      v12 = v6;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(&v23, v12);
        *buf = 136315906;
        *&buf[4] = "ExtAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 912;
        v19 = 2080;
        v20 = &v23;
        v21 = 2080;
        v22 = "get audio converter's maximum packet size";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "get audio converter's maximum packet size", v12);
    }

    v7 = *(this + 28);
    result = 1.0;
    if (v7 != 0.0)
    {
      v8 = *(this + 21);
      if (v8 != 0.0)
      {
        result = v7 / v8;
      }
    }

    *(this + 27) = result;
    if (!*(this + 50) && !ExtAudioFile::GetFilePacketTable(this, buf))
    {
      v9 = *(this + 26);
      v10 = *(this + 27);
      *(this + 20) = (*&buf[8] * v9 + 0.5);
      result = v9 * v10 * *buf + 0.5;
      *(this + 9) = result;
    }

    v11 = *(this + 19);
    if (v11)
    {
      v14 = *(this + 416);
      LODWORD(v15) = 610889331;
      v17 = 4;
      v16 = &v14;
      v23 = &v15;
      v24 = &v17;
      v25 = &v16;
      *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
      *&buf[8] = &v23;
      with_resolved(v11, buf);
    }
  }

  else
  {
    *(this + 71) = *(this + 70);
    *(this + 27) = 0x3FF0000000000000;
  }

  if (*(this + 8) == 1 && *(this + 58) == 1819304813)
  {
    *(this + 7) = -1;
    *(this + 8) = -1;
    return ExtAudioFile::Seek(this, 0);
  }

  return result;
}

OSStatus ExtAudioFileGetProperty(ExtAudioFileRef inExtAudioFile, ExtAudioFilePropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!ioPropertyDataSize)
  {
    return -50;
  }

  v8 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v8)
  {
    return -50;
  }

  v9 = v8;
  outSize = 0;
  result = ExtAudioFileGetPropertyInfo(inExtAudioFile, inPropertyID, &outSize, 0);
  if (!result)
  {
    v11 = -66562;
    if (*ioPropertyDataSize < outSize)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ExtendedAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 294;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid property size", buf, 0x12u);
      }

      goto LABEL_58;
    }

    v11 = -66561;
    v12 = MEMORY[0x1E69E5478];
    if (inPropertyID <= 1668116594)
    {
      if (inPropertyID <= 1634101611)
      {
        if (inPropertyID <= 1633903461)
        {
          if (inPropertyID == 593916525)
          {
            NumberFrames = ExtAudioFile::GetNumberFrames(v9);
            goto LABEL_48;
          }

          if (inPropertyID == 610889316)
          {
            NumberFrames = ExtAudioFile::GetInstrumentation(v9);
LABEL_48:
            *outPropertyData = NumberFrames;
            goto LABEL_54;
          }

LABEL_58:
          v22 = v12;
          exception = __cxa_allocate_exception(4uLL);
          *exception = v11;
          __cxa_throw(exception, v22, 0);
        }

        if (inPropertyID == 1633903462)
        {
          NumberFrames = ExtAudioFile::GetConverterConfig(*(v9 + 152));
          goto LABEL_48;
        }

        if (inPropertyID != 1633906294)
        {
          goto LABEL_58;
        }

        v16 = *(v9 + 152);
        goto LABEL_45;
      }

      if (inPropertyID <= 1667657075)
      {
        if (inPropertyID != 1634101612)
        {
          if (inPropertyID != 1667460207)
          {
            goto LABEL_58;
          }

          v14 = *(v9 + 272);
          if (v14)
          {
            goto LABEL_23;
          }

          goto LABEL_18;
        }

        v16 = *(v9 + 16);
LABEL_45:
        *outPropertyData = v16;
        goto LABEL_54;
      }

      if (inPropertyID != 1667657076)
      {
        if (inPropertyID != 1668112750)
        {
          goto LABEL_58;
        }

        v20 = *(v9 + 164);
        goto LABEL_53;
      }

      v17 = *(v9 + 224);
      v18 = *(v9 + 240);
      v19 = *(v9 + 256);
LABEL_51:
      *(outPropertyData + 4) = v19;
      *outPropertyData = v17;
      *(outPropertyData + 1) = v18;
      goto LABEL_54;
    }

    if (inPropertyID > 1718448242)
    {
      if (inPropertyID > 1768907378)
      {
        if (inPropertyID != 1768907379)
        {
          if (inPropertyID == 2020635753)
          {
            FilePacketTable = ExtAudioFile::GetFilePacketTable(v9, buf);
            if (FilePacketTable)
            {
              v24 = __cxa_allocate_exception(4uLL);
              *v24 = FilePacketTable;
              __cxa_throw(v24, MEMORY[0x1E69E5478], 0);
            }

            *outPropertyData = *buf;
            goto LABEL_54;
          }

          goto LABEL_58;
        }

        v20 = *(v9 + 88);
      }

      else
      {
        if (inPropertyID != 1718448243)
        {
          if (inPropertyID != 1768907366)
          {
            goto LABEL_58;
          }

          v16 = *(v9 + 112);
          goto LABEL_45;
        }

        v20 = *(v9 + 280);
      }
    }

    else
    {
      if (inPropertyID > 1717792373)
      {
        if (inPropertyID == 1717792374)
        {
          v20 = *(v9 + 160);
          goto LABEL_53;
        }

        if (inPropertyID != 1717988724)
        {
          goto LABEL_58;
        }

        v17 = *(v9 + 168);
        v18 = *(v9 + 184);
        v19 = *(v9 + 200);
        goto LABEL_51;
      }

      if (inPropertyID != 1668116595)
      {
        if (inPropertyID != 1717791855)
        {
          goto LABEL_58;
        }

        v14 = *(v9 + 264);
        if (v14)
        {
LABEL_23:
          v15 = *(v14 + 12);
          goto LABEL_24;
        }

LABEL_18:
        v15 = 0;
LABEL_24:
        memcpy(outPropertyData, (v14 + 16), v15);
LABEL_54:
        result = 0;
        *ioPropertyDataSize = outSize;
        return result;
      }

      v20 = *(v9 + 284);
    }

LABEL_53:
    *outPropertyData = v20;
    goto LABEL_54;
  }

  return result;
}

void sub_18F615DEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (a2 == 4 || a2 == 3)
    {
      __cxa_begin_catch(a1);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      __cxa_end_catch();
    }

    JUMPOUT(0x18F615B0CLL);
  }

  _Unwind_Resume(a1);
}

OSStatus ExtAudioFileGetPropertyInfo(ExtAudioFileRef inExtAudioFile, ExtAudioFilePropertyID inPropertyID, UInt32 *outSize, Boolean *outWritable)
{
  v7 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v7)
  {
    return -50;
  }

  if (inPropertyID > 1668116594)
  {
    if (inPropertyID > 1718448242)
    {
      if (inPropertyID > 1768907378)
      {
        if (inPropertyID != 1768907379)
        {
          if (inPropertyID != 2020635753)
          {
            goto LABEL_47;
          }

          LODWORD(v10) = 16;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (inPropertyID != 1718448243)
      {
        if (inPropertyID != 1768907366)
        {
          goto LABEL_47;
        }

        LODWORD(v10) = 8;
        goto LABEL_41;
      }
    }

    else
    {
      if (inPropertyID > 1717792373)
      {
        if (inPropertyID != 1717792374)
        {
          if (inPropertyID == 1717988724)
          {
            v11 = 0;
            LODWORD(v10) = 40;
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        goto LABEL_37;
      }

      if (inPropertyID != 1668116595)
      {
        if (inPropertyID != 1717791855)
        {
          goto LABEL_47;
        }

        v10 = *(v7 + 264);
        if (v10)
        {
LABEL_18:
          LODWORD(v10) = *(v10 + 12);
        }

LABEL_41:
        v11 = 1;
        goto LABEL_42;
      }
    }

    v11 = 0;
    LODWORD(v10) = 4;
    goto LABEL_42;
  }

  if (inPropertyID > 1634101611)
  {
    if (inPropertyID <= 1667657075)
    {
      if (inPropertyID == 1634101612)
      {
        goto LABEL_26;
      }

      if (inPropertyID != 1667460207)
      {
        goto LABEL_47;
      }

      v10 = *(v7 + 272);
      if (v10)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

    if (inPropertyID == 1667657076)
    {
      LODWORD(v10) = 40;
      goto LABEL_41;
    }

    if (inPropertyID != 1668112750)
    {
      goto LABEL_47;
    }

LABEL_37:
    LODWORD(v10) = 4;
    goto LABEL_41;
  }

  if (inPropertyID <= 1633903461)
  {
    if (inPropertyID == 593916525)
    {
      v11 = *(v7 + 188) == 1;
      goto LABEL_27;
    }

    v8 = 610889316;
LABEL_25:
    if (inPropertyID == v8)
    {
      goto LABEL_26;
    }

LABEL_47:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -66561;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (inPropertyID != 1633903462)
  {
    v8 = 1633906294;
    goto LABEL_25;
  }

LABEL_26:
  v11 = 0;
LABEL_27:
  LODWORD(v10) = 8;
LABEL_42:
  if (outSize)
  {
    *outSize = v10;
  }

  v9 = 0;
  if (outWritable)
  {
    *outWritable = v11;
  }

  return v9;
}

uint64_t CAFAudioFile::NumberValidFrames(CAFAudioFile *this)
{
  result = *(this + 22);
  if (result < 0)
  {
    v3 = *(this + 11);
    if (v3)
    {
      return (*(*this + 248))(this) * v3 - (*(this + 46) + *(this + 47));
    }
  }

  return result;
}

uint64_t ExtAudioFile::Close(ExtAudioFile *this, uint64_t a2, void *a3)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  if (!v3)
  {
    return 0;
  }

  if (*(this + 42))
  {
    v5 = CADeprecated::TSingleton<ExtAudioFileAsyncWriteMgr>::instance();
    std::mutex::lock(v5);
    v6 = *(v5 + 112);
    v7 = *(v5 + 120);
    v8 = v6;
    if (v6 != v7)
    {
      while (*v8 != this)
      {
        if (++v8 == v7)
        {
          v8 = *(v5 + 120);
          break;
        }
      }
    }

    if (v7 != v8)
    {
      v9 = v7 - (v8 + 1);
      if (v7 != v8 + 1)
      {
        memmove(v8, v8 + 1, v7 - (v8 + 1));
        v6 = *(v5 + 112);
      }

      v7 = (v8 + v9);
      *(v5 + 120) = v8 + v9;
    }

    if (v6 == v7)
    {
      v10 = dispatch_time(0, 2000000000);
      global_queue = dispatch_get_global_queue(0, 0);
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 0x40000000;
      *&block[16] = ___ZN25ExtAudioFileAsyncWriteMgr12RemoveClientEP12ExtAudioFile_block_invoke;
      *&block[24] = &__block_descriptor_tmp_1814;
      *&block[32] = v5;
      dispatch_after(v10, global_queue, block);
    }

    std::mutex::unlock(v5);
    ExtAudioFile::PerformAsyncWrites(this, 1);
    v12 = *(this + 42);
    if (v12)
    {
      AT::RingBuffer::~RingBuffer(v12);
      MEMORY[0x193ADF220]();
    }

    *(this + 42) = 0;
    v13 = *(this + 44);
    if (v13)
    {
      v14 = v13[1];
      if (v14)
      {
        MEMORY[0x193ADF1F0](v14, 0x1000C8077774924);
      }

      operator delete(v13);
    }

    *(this + 44) = 0;
    v15 = *(this + 45);
    if (v15)
    {
      v16 = v15[1];
      if (v16)
      {
        MEMORY[0x193ADF1F0](v16, 0x1000C8077774924);
      }

      operator delete(v15);
    }

    *(this + 45) = 0;
    v3 = *(this + 8);
  }

  if (v3 == 4 && *(this + 19))
  {
    *(this + 30) = 1;
    v17 = ExtAudioFile::WritePacketsFromCallback(this, this, a3);
    *(this + 30) = 0;
    if (!*(this + 50))
    {
      *isWritable = 0;
      if (!AudioFileGetPropertyInfo(*(this + 2), 0x706E666Fu, &isWritable[1], isWritable))
      {
        if (isWritable[0])
        {
          isWritable[1] = 8;
          v25 = *(this + 19);
          v36 = 1886546285;
          v38[0] = &isWritable[1];
          v35 = &v31;
          inPropertyData.mNumberValidFrames = &v36;
          *&inPropertyData.mPrimingFrames = v38;
          v34 = &v35;
          *block = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
          *&block[8] = &inPropertyData;
          if (!with_resolved(v25, block) && !ExtAudioFile::GetFilePacketTable(this, &inPropertyData))
          {
            mPrimingFrames = inPropertyData.mPrimingFrames;
            mRemainderFrames = inPropertyData.mRemainderFrames;
            *&inPropertyData.mPrimingFrames = v31;
            inPropertyData.mNumberValidFrames = inPropertyData.mNumberValidFrames + mPrimingFrames + mRemainderFrames - (v31 + SHIDWORD(v31));
            v28 = AudioFileSetProperty(*(this + 2), 0x706E666Fu, 0x10u, &inPropertyData);
            if (v28)
            {
              v29 = v28;
              if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
              {
                CAX4CCString::CAX4CCString(v38, v29);
                *block = 136315906;
                *&block[4] = "ExtAudioFile.cpp";
                *&block[12] = 1024;
                *&block[14] = 1597;
                *&block[18] = 2080;
                *&block[20] = v38;
                *&block[28] = 2080;
                *&block[30] = "couldn't set packet table info on audio file";
                _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", block, 0x26u);
              }

              exception = __cxa_allocate_exception(0x110uLL);
              CAXException::CAXException(exception, "couldn't set packet table info on audio file", v29);
            }
          }
        }
      }
    }

    ExtAudioFile::CopyEncoderCookieToFile(this, 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(this + 19);
  if (v18)
  {
    AudioConverterDispose(v18);
    *(this + 19) = 0;
  }

  v19 = *(this + 2);
  if (v19 && *(this + 28) == 1)
  {
    AudioFileClose(v19);
    *(this + 2) = 0;
  }

  if ((*(this + 120) & 1) == 0)
  {
    v20 = *(this + 14);
    if (v20)
    {
      MEMORY[0x193ADF1F0](v20, 0x1000C8077774924);
    }

    *(this + 14) = 0;
    *(this + 27) = 0;
  }

  v21 = *(this + 16);
  if (v21)
  {
    MEMORY[0x193ADF1F0](v21, 0x1000C80451B5BE8);
  }

  *(this + 16) = 0;
  *(this + 34) = 0;
  v22 = *(this + 18);
  if (v22)
  {
    MEMORY[0x193ADF1F0](v22, 0x1000C80451B5BE8);
  }

  *(this + 18) = 0;
  v23 = *(this + 37);
  if (v23)
  {
    MEMORY[0x193ADF1F0](v23, 0x1000C8077774924);
  }

  *(this + 37) = 0;
  *(this + 8) = 0;
  return v17;
}

OSStatus ExtAudioFileDispose(ExtAudioFileRef inExtAudioFile)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v1)
  {
    return -50;
  }

  v4 = v1;
  v5 = ExtAudioFile::Close(v1, v2, v3);
  (*(*v4 + 8))(v4);
  return v5;
}

void ExtAudioFile::~ExtAudioFile(ExtAudioFile *this, uint64_t a2, void *a3)
{
  *this = &unk_1F0327008;
  ExtAudioFile::Close(this, a2, a3);
  CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 40, 0);
  MEMORY[0x193ADE5D0](this + 272);
  MEMORY[0x193ADE5D0](this + 264);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  ExtAudioFile::~ExtAudioFile(this, a2, a3);

  JUMPOUT(0x193ADF220);
}

uint64_t ExtAudioFile::AllocateBuffers(uint64_t this, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 280);
  if (v2)
  {
    v3 = this;
    if (*(this + 88) <= v2)
    {
      v4 = *(this + 280);
    }

    else
    {
      v4 = *(this + 88);
    }

    *(this + 88) = v4;
    *(this + 92) = v4 / v2;
    if (*(this + 108) != v4)
    {
      *(this + 96) = 1;
      *(this + 104) = *(this + 196);
      if ((*(this + 120) & 1) == 0)
      {
        v5 = *(this + 112);
        if (v5)
        {
          MEMORY[0x193ADF1F0](v5, 0x1000C8077774924);
        }

        operator new[]();
      }

      *(this + 108) = v4;
    }

    if (*(this + 184))
    {
      v6 = *(this + 136);
      if (*(this + 188))
      {
        v7 = 0;
        v8 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v6 = *(this + 136);
    }

    v8 = *(this + 92);
    v7 = 1;
LABEL_20:
    if (v6 != v8)
    {
      v10 = *(this + 128);
      if (v10)
      {
        MEMORY[0x193ADF1F0](v10, 0x1000C80451B5BE8);
      }

      *(v3 + 128) = 0;
      *(v3 + 136) = 0;
      this = *(v3 + 144);
      if (this)
      {
        this = MEMORY[0x193ADF1F0](this, 0x1000C80451B5BE8);
      }

      *(v3 + 144) = 0;
      if (v7)
      {
        operator new[]();
      }
    }

    return this;
  }

  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v11, 0xFFFEFBF9);
      *buf = 136315906;
      v13 = "ExtAudioFile.cpp";
      v14 = 1024;
      v15 = 956;
      v16 = 2080;
      v17 = v11;
      v18 = 2080;
      v19 = "file's maximum packet size is 0";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "file's maximum packet size is 0", -66567);
  }

  return this;
}

uint64_t ExtAudioFile::GetNumberFrames(ExtAudioFile *this)
{
  v20 = *MEMORY[0x1E69E9840];
  ioDataSize = 16;
  if (!AudioFileGetProperty(*(this + 2), 0x706E666Fu, &ioDataSize, &outPropertyData))
  {
    return (outPropertyData * *(this + 26) + 0.5);
  }

  v2 = *(this + 47);
  v10 = 0;
  v9 = 8;
  Property = AudioFileGetProperty(*(this + 2), 0x70636E74u, &v9, &v10);
  if (Property)
  {
    v6 = Property;
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v11, v6);
      *buf = 136315906;
      v13 = "ExtAudioFile.h";
      v14 = 1024;
      v15 = 121;
      v16 = 2080;
      v17 = v11;
      v18 = 2080;
      v19 = "get audio file's packet count";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "get audio file's packet count", v6);
  }

  return v10 * v2 - *(this + 20);
}

void CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(void **a1, void *a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2)
    {
      v5 = v2[1];
      if (v5)
      {
        MEMORY[0x193ADF1F0](v5, 0x1000C8077774924);
      }

      operator delete(v2);
    }

    *a1 = a2;
  }
}

void createHapticCommandWriter(void *a1, int a2)
{
  v3 = a1;
  if (setupLogging(void)::once != -1)
  {
    dispatch_once(&setupLogging(void)::once, &__block_literal_global_2623);
  }

  v4 = v3;
  v5 = v4;
  if (!v4)
  {
    v5 = xpc_null_create();
  }

  v8 = 1;
  v7 = MEMORY[0x1E69E5078] + 16;
  v10 = xpc_null_create();
  v9 = a2;
  applesauce::xpc::object::object(&v11, v5);
  v6 = v10;
  v10 = v11;
  v11 = 0;

  operator new();
}

void sub_18F616E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x193ADE520](&a9, a2, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void **applesauce::xpc::object::object(void **a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *a1;
    *a1 = v4;
  }

  return a1;
}

void SharableMemoryBlock::SharableMemoryBlock(SharableMemoryBlock *this)
{
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = MEMORY[0x1E69E5068] + 16;
  *(this + 4) = 0xFFFFFFFF00000000;
  *(this + 10) = 0;
  *(this + 6) = xpc_null_create();
}

uint64_t AudioFormatProperty_NumberOfChannelsForLayout(const AudioChannelLayout *a1, unsigned int *a2)
{
  *a2 = 0;
  mChannelLayoutTag = a1->mChannelLayoutTag;
  if ((a1->mChannelLayoutTag & 0x80000000) != 0)
  {
    if (mChannelLayoutTag == -267386874)
    {
      mChannelLayoutTag = 6;
      goto LABEL_23;
    }

    if (mChannelLayoutTag == -266338299)
    {
      mChannelLayoutTag = 5;
LABEL_23:
      result = 0;
      *a2 = mChannelLayoutTag;
      return result;
    }
  }

  else
  {
    if (mChannelLayoutTag == 0x10000)
    {
      v6 = vcnt_s8(a1->mChannelBitmap);
      v6.i16[0] = vaddlv_u8(v6);
      mChannelLayoutTag = v6.i32[0];
      goto LABEL_23;
    }

    if (!mChannelLayoutTag)
    {
      mChannelLayoutTag = a1->mNumberChannelDescriptions;
      goto LABEL_23;
    }
  }

  v3 = (mChannelLayoutTag & 0xFFFEFFFF) == 0 || mChannelLayoutTag > 0xFFFEFFFF;
  if (v3 || ((v4 = mChannelLayoutTag & 0xFFFF0000, (mChannelLayoutTag & 0xFFFF0000) != 0x930000) ? (v5 = v4 == -268369920) : (v5 = 1), v5 || v4 == 12451840 || v4 == 12517376 || mChannelLayoutTag == -267386874 || mChannelLayoutTag == -266338299 || (result = 560360820, mChannelLayoutTag - 14417920 >= 0xFF880000) && gAllLayoutTags[HIWORD(mChannelLayoutTag) - 98] == mChannelLayoutTag))
  {
    mChannelLayoutTag = mChannelLayoutTag;
    goto LABEL_23;
  }

  return result;
}

uint64_t AudioFormatProperty_TagForChannelLayout(const AudioChannelLayout *a1, unsigned int *a2)
{
  v21 = 0;
  v4 = AudioFormatProperty_NumberOfChannelsForLayout(a1, &v21);
  if (!v4)
  {
    mChannelLayoutTag = a1->mChannelLayoutTag;
    if (a1->mChannelLayoutTag)
    {
      if (mChannelLayoutTag == 0x10000)
      {
        v7 = AudioFormatProperty_LayoutTagForBitmap(a1->mChannelBitmap);
        if (v7 == 0x10000)
        {
          return 560360820;
        }

        else
        {
          v4 = 0;
          *a2 = v7;
        }
      }

      else
      {
        v4 = 0;
        *a2 = mChannelLayoutTag;
      }
    }

    else
    {
      v20 = 0;
      v8 = v21;
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v20, 20 * v21 + 12, 0);
      v9 = 0;
      v19 = 0;
      *&v18.mChannelBitmap = 0;
      v10 = 1;
      v11 = v20;
      while (2)
      {
        v12 = v10;
        for (i = 2; i != 122; ++i)
        {
          v14 = gAllLayoutTags[i];
          if ((i & 0x7E) == 0x5C || i == 49)
          {
            v16 = v8;
          }

          else
          {
            v16 = 0;
          }

          v17 = v14 | v16;
          v18.mChannelLayoutTag = v14 | v16;
          if (!AudioFormatProperty_NumberOfChannelsForLayout(&v18, &v19) && v8 == v19 && !AudioFormatProperty_ChannelLayoutForTag(v17, v11) && (equalChannels(a1, v11, v9 & 1) & 1) != 0)
          {
            goto LABEL_27;
          }
        }

        if (!AudioFormatProperty_ChannelLayoutForTag(v8 | 0xF0010000, v11) && (equalChannels(a1, v11, v9 & 1) & 1) != 0)
        {
          v17 = v8 | 0xF0010000;
LABEL_27:
          v4 = 0;
          *a2 = v17;
          goto LABEL_28;
        }

        v10 = 0;
        v9 = 1;
        if (v12)
        {
          continue;
        }

        break;
      }

      v4 = 560360820;
LABEL_28:
      if (v11)
      {
        free(v11);
      }
    }
  }

  return v4;
}

void sub_18F61739C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SetDefaultChannelPosition(uint64_t result)
{
  if ((*(result + 4) & 3) != 0)
  {
    return result;
  }

  *(result + 4) = 2;
  *(result + 12) = 0x3F80000000000000;
  v1 = *result;
  if (*result > 207)
  {
    if (v1 > 300)
    {
      if (v1 == 302)
      {
LABEL_12:
        v2 = 1106247680;
        goto LABEL_44;
      }

      if (v1 != 301)
      {
LABEL_45:
        *(result + 4) = 0;
        *(result + 16) = 0;
        return result;
      }
    }

    else if (v1 != 208)
    {
      if (v1 != 209)
      {
        goto LABEL_45;
      }

      goto LABEL_12;
    }

LABEL_11:
    v2 = -1041235968;
LABEL_44:
    *(result + 8) = v2;
    return result;
  }

  switch(v1)
  {
    case 1:
      goto LABEL_11;
    case 2:
      goto LABEL_12;
    case 3:
      *(result + 8) = 0;
      return result;
    case 5:
    case 10:
      v2 = -1025769472;
      goto LABEL_44;
    case 6:
    case 11:
      v2 = 1121714176;
      goto LABEL_44;
    case 7:
      v2 = -1049624576;
      goto LABEL_44;
    case 8:
      v2 = 1097859072;
      goto LABEL_44;
    case 9:
    case 44:
      v2 = 1127481344;
      goto LABEL_44;
    case 12:
      v3 = 0x42B4000000000000;
      goto LABEL_42;
    case 13:
      v3 = 0x42340000C2340000;
      goto LABEL_42;
    case 14:
      v3 = 0x41F0000000000000;
      goto LABEL_42;
    case 15:
      v3 = vdup_n_s32(0x42340000u);
      goto LABEL_42;
    case 16:
      v3 = 0x41F00000C3160000;
      goto LABEL_42;
    case 17:
      v3 = 0x41F0000043340000;
      goto LABEL_42;
    case 18:
      v3 = 0x41F0000043160000;
      goto LABEL_42;
    case 33:
    case 63:
      v2 = -1021968384;
      goto LABEL_44;
    case 34:
    case 64:
      v2 = 1125515264;
      goto LABEL_44;
    case 35:
    case 65:
      v2 = -1032847360;
      goto LABEL_44;
    case 36:
    case 66:
      v2 = 1114636288;
      goto LABEL_44;
    case 37:
      v2 = -1036779520;
      goto LABEL_44;
    case 49:
      v3 = 0x42340000C2B40000;
      goto LABEL_42;
    case 51:
      v3 = 0x4234000042B40000;
      goto LABEL_42;
    case 52:
      v3 = 0x42340000C3070000;
      goto LABEL_42;
    case 53:
      v3 = 0x4234000043340000;
      goto LABEL_42;
    case 54:
      v3 = 0x4234000043070000;
      goto LABEL_42;
    case 55:
      v2 = -1028390912;
      goto LABEL_44;
    case 56:
      v2 = 1119092736;
      goto LABEL_44;
    case 57:
      v3 = 0xC1700000C2340000;
      goto LABEL_42;
    case 58:
      v3 = 0xC170000042340000;
      goto LABEL_42;
    case 59:
      v3 = 0xC170000000000000;
      goto LABEL_42;
    case 60:
      v3 = 0x420C0000C2DC0000;
      goto LABEL_42;
    case 61:
      v3 = 0x420C000042DC0000;
LABEL_42:
      *(result + 8) = v3;
      break;
    case 62:
      v2 = 1110704128;
      goto LABEL_44;
    default:
      goto LABEL_45;
  }

  return result;
}

uint64_t checkEnvVar(const char *a1)
{
  result = getenv(a1);
  if (result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v2, result);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 != 1)
      {
        return v4 != 2 || v2 != 20302;
      }

      return v2 != 48;
    }

    if (v3 == 1)
    {
      if (*v2 != 48)
      {
LABEL_10:
        operator delete(v2);
        return 1;
      }
    }

    else if (v3 != 2 || *v2 != 20302)
    {
      goto LABEL_10;
    }

    operator delete(v2);
    return 0;
  }

  return result;
}

void ExtAudioFile::SetConverterChannelLayout(uint64_t this, const AudioChannelLayout *a2, const CAAudioChannelLayout *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v4 = a2;
    if (CAAudioChannelLayout::NumberChannels((*a3 + 16), a2))
    {
      v7 = *a3;
      if (*a3)
      {
        v8 = CAAudioChannelLayout::NumberChannels((v7 + 16), v6) < 3;
        v7 = *a3;
      }

      else
      {
        v8 = 1;
      }

      v9 = *(this + 152);
      if (v4)
      {
        if (v7)
        {
          v10 = *(v7 + 12);
        }

        else
        {
          v10 = 0;
        }

        v20 = v10;
        v21 = 1868786720;
        v19 = v7 + 16;
        v27 = &v21;
        v28 = &v20;
        v29 = &v19;
        *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
        *&buf[8] = &v27;
        v12 = with_resolved(v9, buf);
        if (!v8 && v12 && v12 != 1869627199)
        {
          v14 = v12;
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(&v27, v14);
            *buf = 136315906;
            *&buf[4] = "ExtAudioFile.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 795;
            v23 = 2080;
            v24 = &v27;
            v25 = 2080;
            v26 = "couldn't set converter's output channel layout";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          exception = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(exception, "couldn't set converter's output channel layout", v14);
        }
      }

      else
      {
        if (v7)
        {
          v11 = *(v7 + 12);
        }

        else
        {
          v11 = 0;
        }

        v20 = v11;
        v21 = 1768123424;
        v19 = v7 + 16;
        v27 = &v21;
        v28 = &v20;
        v29 = &v19;
        *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
        *&buf[8] = &v27;
        v16 = with_resolved(v9, buf);
        if (!v8 && v16 && v16 != 1869627199)
        {
          v17 = v16;
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(&v27, v17);
            *buf = 136315906;
            *&buf[4] = "ExtAudioFile.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 799;
            v23 = 2080;
            v24 = &v27;
            v25 = 2080;
            v26 = "couldn't set converter's input channel layout";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          v18 = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(v18, "couldn't set converter's input channel layout", v17);
        }
      }

      if (*(this + 32) == 3)
      {

        ExtAudioFile::FileFormatChanged(this, 0, 0, 0, v13);
      }
    }
  }
}

double ExtAudioFile::Seek(ExtAudioFile *this, unint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(this + 7) != a2)
  {
    if ((a2 & 0x8000000000000000) != 0 || *(this + 8) != 1 || *(this + 58) != 1819304813)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(&outPropertyData, 0xFFFEFBF8);
        *buf = 136315906;
        *&buf[4] = "ExtAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1126;
        v24 = 2080;
        p_outPropertyData = &outPropertyData;
        v26 = 2080;
        v27 = "seek to frame in audio file";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "seek to frame in audio file", -66568);
    }

    v4 = *(this + 47);
    v5 = a2;
    if (v4 != 1)
    {
      if (v4)
      {
        v5 = a2 / v4;
      }

      else
      {
        outPropertyData = a2;
        ioDataSize = 24;
        Property = AudioFileGetProperty(*(this + 2), 0x6672706Bu, &ioDataSize, &outPropertyData);
        if (Property)
        {
          v17 = Property;
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v22, v17);
            *buf = 136315906;
            *&buf[4] = "ExtAudioFile.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1083;
            v24 = 2080;
            p_outPropertyData = v22;
            v26 = 2080;
            v27 = "packet <-> frame translation failed for format with variable frames/packet";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          v18 = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(v18, "packet <-> frame translation failed for format with variable frames/packet", v17);
        }

        v5 = v29;
      }
    }

    *buf = v5;
    LODWORD(outPropertyData) = 16;
    v7 = AudioFileGetProperty(*(this + 2), 0x706B726Cu, &outPropertyData, buf);
    v8 = *&buf[8];
    if (v7)
    {
      v8 = 0;
    }

    v9 = (v5 - v8) & ~((v5 - v8) >> 63);
    *(this + 6) = v9;
    v10 = *(this + 47);
    if (v10 != 1)
    {
      if (v10)
      {
        v9 *= v10;
      }

      else
      {
        v29 = v9;
        ioDataSize = 24;
        v11 = AudioFileGetProperty(*(this + 2), 0x706B6672u, &ioDataSize, &outPropertyData);
        if (v11)
        {
          v19 = v11;
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v22, v19);
            *buf = 136315906;
            *&buf[4] = "ExtAudioFile.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1051;
            v24 = 2080;
            p_outPropertyData = v22;
            v26 = 2080;
            v27 = "packet <-> frame translation unimplemented for format with variable frames/packet";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          v20 = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(v20, "packet <-> frame translation unimplemented for format with variable frames/packet", v19);
        }

        v9 = outPropertyData;
      }
    }

    v12 = v9 - *(this + 20);
    *(this + 7) = v12;
    v13 = *(this + 19);
    if (v13)
    {
      *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterReset::$_0>;
      *&buf[8] = &outPropertyData;
      with_resolved(v13, buf);
      v12 = *(this + 7);
    }

    v14 = *(this + 27);
    *(this + 21) = (((a2 - v12) & ~((a2 - v12) >> 31)) * v14 + 0.5);
    result = v14 * a2 + 0.5;
    *(this + 7) = a2;
    *(this + 8) = result;
  }

  return result;
}

uint64_t CAFAudioFile::PacketToRollDistance(CAFAudioFile *this, AudioPacketRollDistanceTranslation *a2)
{
  if ((*(*this + 280))(this))
  {
    v4 = *(this + 3);
    v5 = *(this + 10);
    if (v5)
    {
      v6 = *(this + 11) == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6 || *(this + 15) == 0;
    v8 = 0;
    v9 = -1;
    v21 = -1;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    memset(__p, 0, sizeof(__p));
    v10 = (v4 + v4);
    mPacket = a2->mPacket;
    for (i = 16 * a2->mPacket; ; i -= 16)
    {
      v17 = xmmword_18F901C70;
      if (mPacket < v9 || mPacket >= v9 + v20)
      {
        v20 = 0;
        if (CAFAudioFile::LoadPacketsForScanning(this, mPacket, -1, v10, &v21, &v20, v19, __p) == 1885563711 || !v20)
        {
          break;
        }

        v9 = v21;
      }

      if (v7)
      {
        v13 = (mPacket - v9) * v5;
        v14 = v5;
      }

      else
      {
        v15 = __p[0] + i + -16 * v9;
        v14 = *(v15 + 3);
        v13 = *v15;
      }

      CAFAudioFile::GetPacketDependencyForPacket(this, v19[0] + v13, v14, &v17);
      if (v17)
      {
        if (v8 >= DWORD1(v17))
        {
          break;
        }
      }

      --mPacket;
      ++v8;
    }

    a2->mRollDistance = v8;
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v19[0])
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    AudioFileObject::PacketToRollDistance(this, a2);
  }

  return 0;
}

void sub_18F618108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioConverterFillComplexBuffer(AudioConverterRef inAudioConverter, AudioConverterComplexInputDataProc inInputDataProc, void *inInputDataProcUserData, UInt32 *ioOutputDataPacketSize, AudioBufferList *outOutputData, AudioStreamPacketDescription *outPacketDescription)
{
  v12 = inInputDataProcUserData;
  v13 = inInputDataProc;
  v10 = outOutputData;
  v11 = ioOutputDataPacketSize;
  v9 = outPacketDescription;
  v7[0] = &v13;
  v7[1] = &v12;
  v7[2] = &v11;
  v7[3] = &v10;
  v7[4] = &v9;
  v8[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterFillComplexBuffer::$_0>;
  v8[1] = v7;
  return with_resolved(inAudioConverter, v8);
}

OSStatus ExtAudioFileRead(ExtAudioFileRef inExtAudioFile, UInt32 *ioNumberFrames, AudioBufferList *ioData)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = -50;
  if (ioNumberFrames)
  {
    if (ioData)
    {
      v6 = BaseOpaqueObject::ResolveOpaqueRef();
      if (v6)
      {
        v7 = v6;
        CrashIfClientProvidedBogusAudioBufferList();
        if (*(v7 + 152) && (*(v7 + 236) & 0x20) != 0)
        {
          v9 = *(v7 + 252);
        }

        else
        {
          v9 = 1;
        }

        if (ioData->mNumberBuffers != v9)
        {
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v46, 0xFFFFFFCE);
            *buf = 136315906;
            v48 = "ExtAudioFile.cpp";
            v49 = 1024;
            v50 = 1173;
            v51 = 2080;
            v52 = v46;
            v53 = 2080;
            v54 = "wrong number of buffers";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          exception = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(exception, "wrong number of buffers", -50);
          goto LABEL_73;
        }

        v10 = *(v7 + 284);
        if (!v10)
        {
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v46, 0xFFFEFBF9);
            *buf = 136315906;
            v48 = "ExtAudioFile.cpp";
            v49 = 1024;
            v50 = 1175;
            v51 = 2080;
            v52 = v46;
            v53 = 2080;
            v54 = "client maximum packet size is 0";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          exception = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(exception, "client maximum packet size is 0", -66567);
          goto LABEL_73;
        }

        v11 = *ioNumberFrames;
        if (!*(v7 + 112))
        {
          ExtAudioFile::AllocateBuffers(v7, 0);
          v10 = *(v7 + 284);
        }

        mDataByteSize = ioData->mBuffers[0].mDataByteSize;
        v13 = mDataByteSize / v10;
        if (mDataByteSize / v10 < v11)
        {
          v11 = mDataByteSize / v10;
        }

        v45 = v11;
        *(v7 + 308) = -1;
        if (*(v7 + 244) == 1)
        {
          v14 = *(v7 + 84);
          if (v14 >= 1)
          {
            do
            {
              if (v13 < v14)
              {
                v14 = v13;
              }

              ioOutputDataPacketSize = v14;
              v15 = *(v7 + 188);
              if (v15)
              {
                *(v7 + 308) = (v14 + v15 - 1) / v15;
              }

              v16 = *(v7 + 152);
              if (v16)
              {
                v17 = AudioConverterFillComplexBuffer(v16, ExtAudioFile::ReadInputProc, v7, &ioOutputDataPacketSize, ioData, 0);
                if (v17)
                {
                  v41 = v17;
                  if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
                  {
                    CAX4CCString::CAX4CCString(v46, v41);
                    *buf = 136315906;
                    v48 = "ExtAudioFile.cpp";
                    v49 = 1024;
                    v50 = 1197;
                    v51 = 2080;
                    v52 = v46;
                    v53 = 2080;
                    v54 = "convert audio packets (pcm read)";
                    _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
                  }

                  exception = __cxa_allocate_exception(0x110uLL);
                  CAXException::CAXException(exception, "convert audio packets (pcm read)", v41);
                  goto LABEL_73;
                }
              }

              else
              {
                InputProc = ExtAudioFile::ReadInputProc(0, &ioOutputDataPacketSize, ioData, 0, v7, v8);
                if (InputProc)
                {
                  v43 = InputProc;
                  if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
                  {
                    CAX4CCString::CAX4CCString(v46, v43);
                    *buf = 136315906;
                    v48 = "ExtAudioFile.cpp";
                    v49 = 1024;
                    v50 = 1195;
                    v51 = 2080;
                    v52 = v46;
                    v53 = 2080;
                    v54 = "read audio file";
                    _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
                  }

LABEL_72:
                  exception = __cxa_allocate_exception(0x110uLL);
                  CAXException::CAXException(exception, "read audio file", v43);
LABEL_73:
                }
              }

              v19 = ioOutputDataPacketSize;
              if (!ioOutputDataPacketSize)
              {
                goto LABEL_56;
              }

              v14 = *(v7 + 84) - ioOutputDataPacketSize;
              *(v7 + 84) = v14;
              mNumberBuffers = ioData->mNumberBuffers;
              if (mNumberBuffers >= 1)
              {
                v21 = 0;
                v22 = (mNumberBuffers + 3) & 0xFFFFFFFC;
                v23 = vdupq_n_s64(mNumberBuffers - 1);
                v24 = &ioData[-1].mNumberBuffers + 4 * mNumberBuffers + 1;
                do
                {
                  v25 = vdupq_n_s64(v21);
                  v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_18F9016C0)));
                  if (vuzp1_s16(v26, *v23.i8).u8[0])
                  {
                    v24[4] = mDataByteSize;
                  }

                  if (vuzp1_s16(v26, *&v23).i8[2])
                  {
                    *v24 = mDataByteSize;
                  }

                  if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_18F9016B0)))).i32[1])
                  {
                    *(v24 - 4) = mDataByteSize;
                    *(v24 - 8) = mDataByteSize;
                  }

                  v21 += 4;
                  v24 -= 16;
                }

                while (v22 != v21);
              }
            }

            while (v14 > 0);
          }
        }

        v27 = *(v7 + 188);
        if (v27)
        {
          *(v7 + 308) = v11 / v27 + 1;
        }

        v28 = *(v7 + 152);
        if (v28)
        {
          if (!v11)
          {
            v19 = 0;
LABEL_56:
            v3 = 0;
            *ioNumberFrames = v19;
            return v3;
          }

          v29 = AudioConverterFillComplexBuffer(v28, ExtAudioFile::ReadInputProc, v7, &v45, ioData, 0);
          if (v29)
          {
            v30 = v29;
            if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
            {
              CAX4CCString::CAX4CCString(v46, v30);
              *buf = 136315906;
              v48 = "ExtAudioFile.cpp";
              v49 = 1024;
              v50 = 1222;
              v51 = 2080;
              v52 = v46;
              v53 = 2080;
              v54 = "convert audio packets (read)";
              _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
            }

            exception = __cxa_allocate_exception(0x110uLL);
            CAXException::CAXException(exception, "convert audio packets (read)", v30);
            goto LABEL_73;
          }
        }

        else
        {
          v32 = ExtAudioFile::ReadInputProc(0, &v45, ioData, 0, v7, v8);
          if (v32)
          {
            v43 = v32;
            if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
            {
              CAX4CCString::CAX4CCString(v46, v43);
              *buf = 136315906;
              v48 = "ExtAudioFile.cpp";
              v49 = 1024;
              v50 = 1217;
              v51 = 2080;
              v52 = v46;
              v53 = 2080;
              v54 = "read audio file";
              _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
            }

            goto LABEL_72;
          }
        }

        v19 = v45;
        if (*(v7 + 244) == 1)
        {
          v33 = *(v7 + 72);
          v34 = *(v7 + 64) + v45;
          if (v33 && v34 > v33)
          {
            if (v34 - v33 <= v45)
            {
              v35 = v34 - v33;
            }

            else
            {
              v35 = v45;
            }

            v36 = ioData->mNumberBuffers;
            if (v36 >= 1)
            {
              v37 = *(v7 + 248) * v35;
              v38 = v36 + 1;
              v39 = (ioData + 16 * v36 - 4);
              do
              {
                v39->mNumberBuffers -= v37;
                v39 = (v39 - 16);
                --v38;
              }

              while (v38 > 1);
            }

            v19 -= v35;
            v34 = v33;
          }

          *(v7 + 56) = (v34 / *(v7 + 216));
          *(v7 + 64) = v34;
        }

        goto LABEL_56;
      }
    }
  }

  return v3;
}

void sub_18F618914(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x18F618558);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterFillComplexBuffer::$_0>(void ***a1, uint64_t a2)
{
  v3 = (*(*a2 + 80))(a2, ***a1, *(*a1)[1], *(*a1)[2], *(*a1)[3], *(*a1)[4], 0, 0);
  if (isRenderStatusConcerning(v3))
  {
    v4 = (*(*a2 + 104))(a2) ? 15 : 11;
    v5 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + 88 + v4, 16);
    if (message)
    {
      v7 = message;
      v8 = (message + v5 + 88);
      v9 = _os_log_pack_fill(message + 40, v5, 0, &dword_18F5DF000, "AudioConverter -> %p: FillComplexBuffer %s render returned %i", v12, v13, v14);
      if ((*(*a2 + 104))(a2))
      {
        v10 = "out-of-process";
      }

      else
      {
        v10 = "in-process";
      }

      stpcpy(v8, v10);
      *v9 = 134218498;
      *(v9 + 4) = a2;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v8;
      *(v9 + 22) = 1024;
      *(v9 + 24) = v3;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v7);
    }
  }

  return v3;
}

uint64_t ExtAudioFile::AlignIO(ExtAudioFile *this, uint64_t a2)
{
  v2 = a2;
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(this + 46);
  if (v3 && v3 * a2 >= (3 * *(this + 22)) >> 2)
  {
    v4 = *(this + 5);
    v6 = *(this + 6);
    v5 = (this + 40);
    if (v4 < 0)
    {
      ioDataSize = 8;
      Property = AudioFileGetProperty(*(this + 2), 0x646F6666u, &ioDataSize, v5);
      if (Property)
      {
        v14 = Property;
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v17, v14);
          *buf = 136315906;
          v19 = "ExtAudioFile.cpp";
          v20 = 1024;
          v21 = 479;
          v22 = 2080;
          v23 = v17;
          v24 = 2080;
          v25 = "couldn't get file's data offset";
          _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        exception = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(exception, "couldn't get file's data offset", v14);
      }

      v4 = *v5;
    }

    v8 = v4 + (v6 + v2) * v3;
    if ((v8 & 0xFFF) != 0)
    {
      LODWORD(v9) = (7 * v2) >> 3;
      v9 = v9 <= 1 ? 1 : v9;
      v10 = v4 + (v6 + v9) * v3;
      v11 = v8 & 0xFFFFFFFFFFFFF000;
      if (v11 > v10)
      {
        for (i = v11 - v4; i != i / v3 * v3; i -= 4096)
        {
          v11 -= 4096;
          if (v11 <= v10)
          {
            return v2;
          }
        }

        return (i / v3) - v6;
      }
    }
  }

  return v2;
}

uint64_t AudioFileObject::ReadPacketData(AudioFileObject *this, unsigned __int8 a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a6 && *a6)
  {
    if (*(this + 10))
    {
      v7 = *(*this + 112);

      return v7();
    }

    if (a4)
    {
      v7 = *(*this + 104);

      return v7();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "AudioFileObject.cpp";
      v13 = 1024;
      v14 = 916;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  invalid outPacketDescriptions parameter";
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "AudioFileObject.cpp";
    v13 = 1024;
    v14 = 911;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%25s:%-5d  invalid ioNumPackets parameter";
LABEL_9:
    _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, v10, &v11, 0x12u);
  }

  return 4294967246;
}

uint64_t AudioFormatProperty_MatrixMixMap(const AudioChannelLayout *const *a1, const AudioChannelLayout *a2, float *a3, _DWORD *a4)
{
  v198 = *MEMORY[0x1E69E9840];
  __dst = 0;
  v195 = 0;
  v193 = 0;
  v8 = AudioFormatProperty_NumberOfChannelsForLayout(a1, &v193);
  if (v8)
  {
    goto LABEL_2;
  }

  v192 = 0;
  v9 = AudioFormatProperty_NumberOfChannelsForLayout(a2, &v192);
  if (!v9)
  {
    v12 = v192;
    v11 = v193;
    v13 = v192 * v193;
    if (!a4)
    {
      v9 = 0;
      *a3 = v13;
      goto LABEL_4;
    }

    if (v13 > *a3)
    {
      v9 = 4294967246;
      goto LABEL_4;
    }

    *a3 = v13;
    mChannelLayoutTag = a2->mChannelLayoutTag;
    v15 = *a1;
    v190 = *a1;
    v191 = mChannelLayoutTag;
    *v187 = v11;
    v16 = (20 * v11 + 12);
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v195, v16, 0);
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&__dst, (20 * v12 + 12), 0);
    if (mChannelLayoutTag == 0x10000)
    {
      v18 = __dst;
      AudioFormatProperty_ChannelLayoutForBitmap(a2->mChannelBitmap, __dst, v17);
      v191 = AudioFormatProperty_LayoutTagForBitmap(a2->mChannelBitmap);
    }

    else if (mChannelLayoutTag)
    {
      v18 = __dst;
      v8 = AudioFormatProperty_ChannelLayoutForTag(a2->mChannelLayoutTag, __dst);
      if (v8)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v18 = __dst;
      memcpy(__dst, a2, (20 * v12 + 12));
      AudioFormatProperty_TagForChannelLayout(v18, &v191);
    }

    if (v15 == 0x10000)
    {
      v20 = v195;
      AudioFormatProperty_ChannelLayoutForBitmap(*(a1 + 1), v195, v19);
      v190 = AudioFormatProperty_LayoutTagForBitmap(*(a1 + 1));
      goto LABEL_23;
    }

    if (!v15)
    {
      v20 = v195;
      memcpy(v195, a1, v16);
      AudioFormatProperty_TagForChannelLayout(v20, &v190);
      goto LABEL_23;
    }

    v20 = v195;
    v8 = AudioFormatProperty_ChannelLayoutForTag(*a1, v195);
    if (!v8)
    {
LABEL_23:
      mNumberChannelDescriptions = v20->mNumberChannelDescriptions;
      if (mNumberChannelDescriptions)
      {
        mChannelDescriptions = v20->mChannelDescriptions;
        while (1)
        {
          mChannelLabel = mChannelDescriptions->mChannelLabel;
          if (mChannelDescriptions->mChannelLabel <= 207)
          {
            break;
          }

          if (mChannelLabel <= 300)
          {
            if (mChannelLabel == 208)
            {
              goto LABEL_37;
            }

            if (mChannelLabel != 209)
            {
              goto LABEL_39;
            }

LABEL_36:
            mChannelLabel = 2;
            goto LABEL_39;
          }

          if (mChannelLabel == 301)
          {
            goto LABEL_37;
          }

          if (mChannelLabel == 302)
          {
            goto LABEL_36;
          }

LABEL_39:
          mChannelDescriptions->mChannelLabel = mChannelLabel;
          ++mChannelDescriptions;
          if (!--mNumberChannelDescriptions)
          {
            goto LABEL_40;
          }
        }

        if (mChannelLabel == 42)
        {
          mChannelLabel = 3;
          goto LABEL_39;
        }

        if (mChannelLabel == 206)
        {
LABEL_37:
          mChannelLabel = 1;
          goto LABEL_39;
        }

        if (mChannelLabel != 207)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

LABEL_40:
      v24 = v18->mNumberChannelDescriptions;
      if (v24)
      {
        v25 = v18->mChannelDescriptions;
        while (1)
        {
          v26 = v25->mChannelLabel;
          if (v25->mChannelLabel <= 207)
          {
            break;
          }

          if (v26 <= 300)
          {
            if (v26 == 208)
            {
              goto LABEL_54;
            }

            if (v26 != 209)
            {
              goto LABEL_56;
            }

LABEL_53:
            v26 = 2;
            goto LABEL_56;
          }

          if (v26 == 301)
          {
            goto LABEL_54;
          }

          if (v26 == 302)
          {
            goto LABEL_53;
          }

LABEL_56:
          v25->mChannelLabel = v26;
          ++v25;
          if (!--v24)
          {
            goto LABEL_57;
          }
        }

        if (v26 == 42)
        {
          v26 = 3;
          goto LABEL_56;
        }

        if (v26 == 206)
        {
LABEL_54:
          v26 = 1;
          goto LABEL_56;
        }

        if (v26 != 207)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }

LABEL_57:
      octagonalCompatibility(v20, v18);
      singleSurroundPairCompatibility(v20, v18);
      bzero(a4, 4 * *a3);
      v27 = v18->mNumberChannelDescriptions;
      if (v27)
      {
        v28 = v18->mChannelDescriptions;
        v29 = v27 - 1;
        v30 = v18->mChannelDescriptions;
        do
        {
          v31 = HIWORD(v30->mChannelLabel) << 16;
          v32 = v29-- != 0;
          v33 = v32;
          if (v31 != 0x10000)
          {
            break;
          }

          ++v30;
        }

        while ((v33 & 1) != 0);
        if (v31 == 0x10000)
        {
          v34 = v20->mNumberChannelDescriptions;
          if (!v34)
          {
            goto LABEL_114;
          }

          v35 = v20->mChannelDescriptions;
          v36 = v34 - 1;
          do
          {
            v37 = HIWORD(v35->mChannelLabel) << 16;
            v38 = v37 == 0x10000 || v36-- == 0;
            ++v35;
          }

          while (!v38);
          if (v37 != 0x10000)
          {
LABEL_114:
            if (v12)
            {
              for (i = 0; i != v12; i = (i + 1))
              {
                mChannelLabel_low = LOWORD(v28->mChannelLabel);
                ++v28;
                v60 = mChannelLabel_low;
                if (mChannelLabel_low < v187[0])
                {
                  a4[i + v60 * v12] = 1065353216;
                }
              }
            }

            goto LABEL_171;
          }
        }
      }

      v39 = v190;
      if (!v190)
      {
        v49 = *(a1 + 2);
        if (v49)
        {
          v50 = a1 + 3;
          v51 = v49 - 1;
          v52 = a1 + 12;
          do
          {
            v53 = *(v52 + 1) << 16;
            v32 = v51-- != 0;
            v54 = v32;
            if (v53 != 0x10000)
            {
              break;
            }

            v52 += 20;
          }

          while ((v54 & 1) != 0);
          if (v53 == 0x10000)
          {
            v55 = -65536;
            do
            {
              v57 = *v50;
              v50 += 5;
              v56 = v57;
              if (v57 - 0x10000 < v12)
              {
                a4[v55 + v56] = 1065353216;
              }

              v55 += v12;
              --v49;
            }

            while (v49);
            goto LABEL_171;
          }
        }
      }

      if (v187[0])
      {
        v40 = 0;
        v41 = 0;
        do
        {
          v42 = v20->mChannelDescriptions[v40].mChannelLabel;
          if (HIWORD(v42) || ((v43 = v20->mChannelDescriptions[v40].mChannelLabel, v43 <= 0x2D) ? (v44 = ((1 << v42) & 0x3B0000070000) == 0) : (v44 = 1), !v44 || v43 - 304 < 2 || v43 == 400))
          {
            v45 = v18->mChannelDescriptions;
            v46 = v12;
            if (v12)
            {
              do
              {
                v47 = v45->mChannelLabel;
                ++v45;
                if (v42 == v47)
                {
                  a4[v41] = 1065353216;
                }

                ++v41;
                v46 = (v46 - 1);
              }

              while (v46);
            }
          }

          else
          {
            v41 += v12;
          }

          ++v40;
        }

        while (v40 != *v187);
      }

      if (v39 == 6750210)
      {
        v48 = v191;
        if (v191 > 6750209)
        {
          if (v191 > 6946817)
          {
            if (v191 == 6946818)
            {
              goto LABEL_124;
            }

            if (v191 == 8519688)
            {
              goto LABEL_128;
            }

            goto LABEL_129;
          }

          goto LABEL_112;
        }
      }

      else
      {
        if (v39 != 8519688)
        {
          goto LABEL_129;
        }

        v48 = v191;
        if (v191 > 6750209)
        {
          if (v191 > 6946817)
          {
            if (v191 != 6946818)
            {
              if (v191 == 8519688)
              {
                SetMatrixCoefficient(v20, v18, 1, 1, a4, 1.0);
                SetMatrixCoefficient(v20, v18, 2, 2, a4, 1.0);
                SetMatrixCoefficient(v20, v18, 3, 3, a4, 1.0);
                SetMatrixCoefficient(v20, v18, 4, 4, a4, 1.0);
                SetMatrixCoefficient(v20, v18, 5, 5, a4, 1.0);
                SetMatrixCoefficient(v20, v18, 6, 6, a4, 1.0);
LABEL_128:
                SetMatrixCoefficient(v20, v18, 38, 38, a4, 1.0);
                v62 = 1.0;
                v63 = v20;
                v64 = v18;
                v65 = 39;
LABEL_168:
                v66 = 39;
                goto LABEL_169;
              }

              goto LABEL_129;
            }

LABEL_124:
            SetMatrixCoefficient(v20, v18, 38, 1, a4, 1.0);
            v62 = 1.0;
            v63 = v20;
            v64 = v18;
            v65 = 39;
            goto LABEL_125;
          }

LABEL_112:
          if (v48 == 6750210)
          {
            goto LABEL_128;
          }

          v58 = 6881282;
          goto LABEL_123;
        }
      }

      if (v48 == 6553601)
      {
        SetMatrixCoefficient(v20, v18, 38, 3, a4, 1.0);
        v62 = 1.0;
        v63 = v20;
        v64 = v18;
        v65 = 39;
        goto LABEL_156;
      }

      if (v48 == 6619138)
      {
        goto LABEL_124;
      }

      v58 = 6684674;
LABEL_123:
      if (v48 == v58)
      {
        goto LABEL_124;
      }

LABEL_129:
      HIDWORD(v68) = v39 - 6619138;
      LODWORD(v68) = v39 - 6619138;
      v67 = v68 >> 16;
      if (v67 > 5 || ((1 << v67) & 0x33) == 0)
      {
        goto LABEL_138;
      }

      if (v191 <= 6750209)
      {
        if (v191 == -267386874)
        {
          SetMatrixCoefficient(v20, v18, 1, 1, a4, 1.0);
          SetMatrixCoefficient(v20, v18, 2, 2, a4, 1.0);
        }

        else if (v191 != -266338299)
        {
LABEL_138:
          if (v39 != 6553601)
          {
            goto LABEL_143;
          }

          if (v191 == -267386874)
          {
            SetMatrixCoefficient(v20, v18, 3, 1, a4, 1.0);
            SetMatrixCoefficient(v20, v18, 3, 2, a4, 1.0);
            v62 = 1.0;
            v63 = v20;
            v64 = v18;
            v65 = 3;
            v66 = 0x20000;
            goto LABEL_169;
          }

          if (v191 != -266338299)
          {
            if (v191 == 6684674)
            {
              SetMatrixCoefficient(v20, v18, 3, 1, a4, 1.0);
              v62 = 1.0;
              v63 = v20;
              v64 = v18;
              v65 = 3;
              goto LABEL_125;
            }

LABEL_143:
            ChannelLabelReduceMatrixStereo(v20);
            ChannelLabelReduceMatrixStereo(v18);
            ABitmapForCompare = AudioFormatProperty_GetABitmapForCompare(a2);
            v70 = AudioFormatProperty_GetABitmapForCompare(a1);
            if (ABitmapForCompare && v70 && (v70 & ~ABitmapForCompare & 0xFFFFFFF7) == 0)
            {
              if (v187[0])
              {
                v72 = 0;
                v73 = 0;
                do
                {
                  if (v12)
                  {
                    v74 = v20->mChannelDescriptions[v72].mChannelLabel;
                    v75 = v18->mChannelDescriptions;
                    v76 = v12;
                    do
                    {
                      v77 = v75->mChannelLabel;
                      ++v75;
                      if (v74 == v77)
                      {
                        a4[v73] = 1065353216;
                      }

                      ++v73;
                      v76 = (v76 - 1);
                    }

                    while (v76);
                  }

                  ++v72;
                }

                while (v72 != *v187);
              }

              optionallyMixInNonSpeakerChannels(v20, v187[0], v12, a4, v71);
              goto LABEL_171;
            }

            v78 = AudioFormatProperty_GetABitmapForCompare(v18);
            v79 = AudioFormatProperty_GetABitmapForCompare(v20);
            v81 = v79;
            if ((v78 & 0x825D0000) == 0 && v78 && v79 && (v79 & 0x825D0000) == 0)
            {
              if ((v79 & 4) == 0)
              {
                goto LABEL_179;
              }

              if ((v78 & 4) != 0)
              {
                v86 = 1.0;
                v82 = v20;
                v83 = v18;
                v84 = 3;
                v85 = a4;
              }

              else
              {
                if ((v78 & 3) == 0)
                {
                  goto LABEL_179;
                }

                SetMatrixCoefficient(v20, v18, 3, 1, a4, 0.70711);
                v82 = v20;
                v83 = v18;
                v84 = 2;
                v85 = a4;
                v86 = 0.70711;
              }

              SetMatrixCoefficient(v82, v83, 3, v84, v85, v86);
LABEL_179:
              if ((v81 & 3) == 0)
              {
                goto LABEL_185;
              }

              if ((v78 & 7) == 4)
              {
                SetMatrixCoefficient(v20, v18, 1, 3, a4, 0.70711);
                v88 = v20;
                v89 = v18;
                v90 = 3;
                v91 = a4;
                v92 = 0.70711;
              }

              else
              {
                if ((v78 & 3) == 0)
                {
                  goto LABEL_185;
                }

                SetMatrixCoefficient(v20, v18, 1, 1, a4, 1.0);
                v92 = 1.0;
                v88 = v20;
                v89 = v18;
                v90 = 2;
                v91 = a4;
              }

              SetMatrixCoefficient(v88, v89, 2, v90, v91, v92);
LABEL_185:
              if ((v81 & 0x2000) == 0)
              {
                goto LABEL_193;
              }

              if ((v78 & 0x2000) != 0)
              {
                v97 = 1.0;
                v93 = v20;
                v94 = v18;
                v95 = 14;
              }

              else
              {
                if ((v78 & 0x5000) != 0)
                {
                  SetMatrixCoefficient(v20, v18, 14, 13, a4, 0.70711);
                  v93 = v20;
                  v94 = v18;
                  v95 = 15;
LABEL_189:
                  v96 = a4;
                  v97 = 0.70711;
LABEL_192:
                  SetMatrixCoefficient(v93, v94, 14, v95, v96, v97);
                  goto LABEL_193;
                }

                if ((v78 & 7) != 4)
                {
                  if ((v78 & 3) == 0)
                  {
LABEL_193:
                    if ((v81 & 0xC0) == 0)
                    {
                      goto LABEL_208;
                    }

                    if ((~v78 & 0xC0) != 0)
                    {
                      if ((v78 & 7) == 4)
                      {
                        v103 = 1060439283;
                        SetMatrixCoefficient(v20, v18, 7, 3, a4, 0.70711);
                        v99 = v20;
                        v100 = v18;
                        v101 = 3;
                      }

                      else
                      {
                        if ((v78 & 7) == 7)
                        {
                          v103 = 1060439283;
                          v104 = v18;
                          SetMatrixCoefficient(v20, v18, 7, 1, a4, 0.70711);
                          SetMatrixCoefficient(v20, v18, 7, 3, a4, 0.70711);
                          v105 = v20;
                          v106 = v18;
                          v107 = 3;
                          v108 = a4;
                          v109 = 0.70711;
                        }

                        else
                        {
                          if ((v78 & 3) == 0)
                          {
                            goto LABEL_208;
                          }

                          v103 = 1063105495;
                          v104 = v18;
                          SetMatrixCoefficient(v20, v18, 7, 1, a4, 0.86603);
                          SetMatrixCoefficient(v20, v18, 7, 2, a4, 0.5);
                          v109 = 0.5;
                          v105 = v20;
                          v106 = v18;
                          v107 = 1;
                          v108 = a4;
                        }

                        SetMatrixCoefficient(v105, v106, 8, v107, v108, v109);
                        v99 = v20;
                        v100 = v104;
                        v101 = 2;
                      }

                      v102 = a4;
                      v98 = *&v103;
                    }

                    else
                    {
                      SetMatrixCoefficient(v20, v18, 7, 7, a4, 1.0);
                      v98 = 1.0;
                      v99 = v20;
                      v100 = v18;
                      v101 = 8;
                      v102 = a4;
                    }

                    SetMatrixCoefficient(v99, v100, 8, v101, v102, v98);
LABEL_208:
                    v188 = v78 & 0x30;
                    if ((v81 & 0x100) == 0)
                    {
                      goto LABEL_218;
                    }

                    if ((v78 & 0x100) != 0)
                    {
                      v113 = 1.0;
                      v110 = v20;
                      v111 = v18;
                      v112 = 9;
                    }

                    else
                    {
                      if (v78 >> 29)
                      {
                        SetMatrixCoefficient(v20, v18, 9, 33, a4, 0.70711);
                        v110 = v20;
                        v111 = v18;
                        v112 = 34;
                        goto LABEL_216;
                      }

                      if ((v78 & 0x30) != 0)
                      {
                        SetMatrixCoefficient(v20, v18, 9, 5, a4, 0.70711);
                        v110 = v20;
                        v111 = v18;
                        v112 = 6;
LABEL_216:
                        v114 = a4;
                        v113 = 0.70711;
                        goto LABEL_217;
                      }

                      if ((v78 & 3) != 0)
                      {
                        SetMatrixCoefficient(v20, v18, 9, 1, a4, 0.70711);
                        SetMatrixCoefficient(v20, v18, 9, 2, a4, 0.70711);
                        goto LABEL_218;
                      }

                      if ((v78 & 4) == 0)
                      {
LABEL_218:
                        if ((v81 & 0x30) == 0)
                        {
                          goto LABEL_228;
                        }

                        if ((v78 & 0x130) == 0x100)
                        {
                          SetMatrixCoefficient(v20, v18, 5, 9, a4, 0.70711);
                          v115 = v20;
                          v116 = v18;
                          v117 = 9;
LABEL_221:
                          v118 = a4;
                          v119 = 0.70711;
LABEL_227:
                          SetMatrixCoefficient(v115, v116, 6, v117, v118, v119);
                          goto LABEL_228;
                        }

                        if ((v78 & 0x30) != 0)
                        {
                          SetMatrixCoefficient(v20, v18, 5, 5, a4, 1.0);
                          v119 = 1.0;
                          v115 = v20;
                          v116 = v18;
                          v117 = 6;
                        }

                        else
                        {
                          if ((v78 & 7) != 4)
                          {
                            if ((v78 & 3) == 0)
                            {
LABEL_228:
                              if (!(v81 >> 29))
                              {
                                goto LABEL_268;
                              }

                              if ((~v78 & 0x60000000) == 0)
                              {
                                SetMatrixCoefficient(v20, v18, 33, 33, a4, 1.0);
                                v120 = 1.0;
                                v121 = v20;
                                v122 = v18;
                                v123 = 34;
                                v124 = a4;
LABEL_267:
                                SetMatrixCoefficient(v121, v122, 34, v123, v124, v120);
LABEL_268:
                                v132 = v78 & 0xA00000;
                                if ((v81 & 0x18000000) == 0)
                                {
                                  goto LABEL_277;
                                }

                                if ((~v78 & 0x18000000) != 0)
                                {
                                  if ((v78 & 3) != 0)
                                  {
                                    SetMatrixCoefficient(v20, v18, 35, 1, a4, 0.70711);
                                    v134 = v20;
                                    v135 = v18;
                                    v136 = 2;
                                  }

                                  else
                                  {
                                    if ((v78 & 4) == 0)
                                    {
                                      goto LABEL_277;
                                    }

                                    SetMatrixCoefficient(v20, v18, 35, 3, a4, 0.70711);
                                    v134 = v20;
                                    v135 = v18;
                                    v136 = 3;
                                  }

                                  v137 = a4;
                                  v133 = 0.70711;
                                }

                                else
                                {
                                  SetMatrixCoefficient(v20, v18, 35, 35, a4, 1.0);
                                  v133 = 1.0;
                                  v134 = v20;
                                  v135 = v18;
                                  v136 = 36;
                                  v137 = a4;
                                }

                                SetMatrixCoefficient(v134, v135, 36, v136, v137, v133);
LABEL_277:
                                v138 = v78 & 0x600;
                                if ((v81 & 0x5000) == 0)
                                {
                                  goto LABEL_284;
                                }

                                if ((v78 & 0x7000) == 0x2000)
                                {
                                  SetMatrixCoefficient(v20, v18, 13, 14, a4, 0.70711);
                                  v139 = v20;
                                  v140 = v18;
                                  v141 = 14;
LABEL_280:
                                  v142 = a4;
                                  v143 = 0.70711;
LABEL_283:
                                  SetMatrixCoefficient(v139, v140, 15, v141, v142, v143);
                                  goto LABEL_284;
                                }

                                if ((v78 & 0x5000) != 0)
                                {
                                  SetMatrixCoefficient(v20, v18, 13, 13, a4, 1.0);
                                  v143 = 1.0;
                                  v139 = v20;
                                  v140 = v18;
                                  v141 = 15;
                                  v142 = a4;
                                  goto LABEL_283;
                                }

                                if (v132)
                                {
                                  SetMatrixCoefficient(v20, v18, 13, 49, a4, 0.70711);
                                  v139 = v20;
                                  v140 = v18;
                                  v141 = 51;
                                  goto LABEL_280;
                                }

                                if (v138 == 1536)
                                {
                                  SetMatrixCoefficient(v20, v18, 13, 10, a4, 0.70711);
                                  v184 = v20;
                                  v185 = v18;
                                  v186 = 11;
                                }

                                else
                                {
                                  if ((v78 & 3) == 0)
                                  {
                                    if ((v78 & 4) != 0)
                                    {
                                      SetMatrixCoefficient(v20, v18, 13, 3, a4, 0.70711);
                                      v139 = v20;
                                      v140 = v18;
                                      v141 = 3;
                                      goto LABEL_280;
                                    }

LABEL_284:
                                    if ((v81 & 0xA00000) == 0)
                                    {
                                      goto LABEL_293;
                                    }

                                    if (v132 == 10485760)
                                    {
                                      SetMatrixCoefficient(v20, v18, 49, 49, a4, 1.0);
                                      v144 = 1.0;
                                      v145 = v20;
                                      v146 = v18;
                                      v147 = 51;
                                      v148 = a4;
LABEL_292:
                                      SetMatrixCoefficient(v145, v146, 51, v147, v148, v144);
                                      goto LABEL_293;
                                    }

                                    if ((~v78 & 0x5005000) == 0)
                                    {
                                      SetMatrixCoefficient(v20, v18, 49, 13, a4, 0.70711);
                                      SetMatrixCoefficient(v20, v18, 49, 52, a4, 0.70711);
                                      SetMatrixCoefficient(v20, v18, 51, 15, a4, 0.70711);
                                      v145 = v20;
                                      v146 = v18;
                                      v147 = 54;
LABEL_291:
                                      v148 = a4;
                                      v144 = 0.70711;
                                      goto LABEL_292;
                                    }

                                    if (v188 == 48)
                                    {
                                      SetMatrixCoefficient(v20, v18, 49, 5, a4, 0.70711);
                                      v145 = v20;
                                      v146 = v18;
                                      v147 = 6;
                                      goto LABEL_291;
                                    }

                                    if (v138 == 1536)
                                    {
                                      SetMatrixCoefficient(v20, v18, 49, 10, a4, 0.70711);
                                      v172 = v20;
                                      v173 = v18;
                                      v174 = 11;
                                    }

                                    else
                                    {
                                      if ((v78 & 3) == 0)
                                      {
                                        if ((v78 & 4) != 0)
                                        {
                                          SetMatrixCoefficient(v20, v18, 49, 3, a4, 0.70711);
                                          v145 = v20;
                                          v146 = v18;
                                          v147 = 3;
                                          goto LABEL_291;
                                        }

LABEL_293:
                                        if ((v81 & 0x5000000) == 0)
                                        {
LABEL_300:
                                          if ((v81 & 0x600) == 0)
                                          {
                                            goto LABEL_307;
                                          }

                                          if (v138 == 1536)
                                          {
                                            goto LABEL_302;
                                          }

                                          if ((~v78 & 0x5000000) == 0)
                                          {
                                            SetMatrixCoefficient(v20, v18, 10, 52, a4, 1.0);
                                            v154 = 1.0;
                                            v155 = v20;
                                            v156 = v18;
                                            v157 = 54;
                                            goto LABEL_305;
                                          }

                                          if (v132)
                                          {
                                            SetMatrixCoefficient(v20, v18, 10, 49, a4, 0.70711);
                                            v155 = v20;
                                            v156 = v18;
                                            v157 = 51;
LABEL_315:
                                            v158 = a4;
                                            v154 = 0.70711;
                                            goto LABEL_306;
                                          }

                                          if ((~v78 & 0x60000000) == 0)
                                          {
                                            SetMatrixCoefficient(v20, v18, 10, 33, a4, 0.70711);
                                            v181 = v20;
                                            v182 = v18;
                                            v183 = 34;
LABEL_373:
                                            SetMatrixCoefficient(v181, v182, 11, v183, a4, 0.70711);
                                            goto LABEL_307;
                                          }

                                          if (v188 == 48)
                                          {
                                            SetMatrixCoefficient(v20, v18, 10, 5, a4, 0.70711);
                                            v181 = v20;
                                            v182 = v18;
                                            v183 = 6;
                                            goto LABEL_373;
                                          }

                                          if ((v78 & 3) != 0)
                                          {
                                            SetMatrixCoefficient(v20, v18, 10, 1, a4, 0.70711);
                                            v181 = v20;
                                            v182 = v18;
                                            v183 = 2;
                                            goto LABEL_373;
                                          }

                                          if ((v78 & 4) != 0)
                                          {
                                            SetMatrixCoefficient(v20, v18, 10, 3, a4, 0.70711);
                                            v155 = v20;
                                            v156 = v18;
                                            v157 = 3;
                                            goto LABEL_315;
                                          }

LABEL_307:
                                          if ((v81 & 0x800) == 0)
                                          {
                                            goto LABEL_319;
                                          }

                                          if ((v78 & 0x800) != 0)
                                          {
                                            v163 = 1.0;
                                            v159 = v20;
                                            v160 = v18;
                                            v161 = 12;
                                          }

                                          else if ((v78 & 0x100) != 0)
                                          {
                                            v163 = 1.0;
                                            v159 = v20;
                                            v160 = v18;
                                            v161 = 9;
                                          }

                                          else
                                          {
                                            if ((~v78 & 0x60000000) == 0)
                                            {
                                              SetMatrixCoefficient(v20, v18, 12, 33, a4, 0.70711);
                                              v159 = v20;
                                              v160 = v18;
                                              v161 = 34;
                                              v162 = a4;
                                              v163 = 0.70711;
LABEL_318:
                                              SetMatrixCoefficient(v159, v160, 12, v161, v162, v163);
                                              goto LABEL_319;
                                            }

                                            if (v188 == 48)
                                            {
                                              SetMatrixCoefficient(v20, v18, 12, 5, a4, 0.70711);
                                              v175 = v20;
                                              v176 = v18;
                                              v177 = 6;
LABEL_353:
                                              SetMatrixCoefficient(v175, v176, 12, v177, a4, 0.70711);
                                              goto LABEL_319;
                                            }

                                            if ((v78 & 3) != 0)
                                            {
                                              SetMatrixCoefficient(v20, v18, 12, 1, a4, 0.70711);
                                              v175 = v20;
                                              v176 = v18;
                                              v177 = 2;
                                              goto LABEL_353;
                                            }

                                            if ((v78 & 4) == 0)
                                            {
LABEL_319:
                                              if ((v81 & 0x28000) == 0)
                                              {
LABEL_326:
                                                if ((v78 & v81 & 8) != 0)
                                                {
                                                  SetMatrixCoefficient(v20, v18, 4, 4, a4, 1.0);
                                                }

                                                optionallyMixInNonSpeakerChannels(v20, v193, v192, a4, v80);
                                                goto LABEL_171;
                                              }

                                              if ((~v78 & 0x28000) == 0)
                                              {
                                                SetMatrixCoefficient(v20, v18, 0x8000, 0x8000, a4, 1.0);
                                                v164 = 1.0;
                                                v165 = v20;
                                                v166 = v18;
                                                v167 = 0x20000;
LABEL_324:
                                                v168 = a4;
LABEL_325:
                                                SetMatrixCoefficient(v165, v166, 0x20000, v167, v168, v164);
                                                goto LABEL_326;
                                              }

                                              if ((~v78 & 0x5000000) == 0)
                                              {
                                                SetMatrixCoefficient(v20, v18, 0x8000, 52, a4, 1.0);
                                                v164 = 1.0;
                                                v165 = v20;
                                                v166 = v18;
                                                v167 = 54;
                                                goto LABEL_324;
                                              }

                                              if (v132)
                                              {
                                                SetMatrixCoefficient(v20, v18, 0x8000, 49, a4, 0.70711);
                                                v165 = v20;
                                                v166 = v18;
                                                v167 = 51;
LABEL_331:
                                                v168 = a4;
                                                v164 = 0.70711;
                                                goto LABEL_325;
                                              }

                                              if ((~v78 & 0x60000000) != 0)
                                              {
                                                if (v188 == 48)
                                                {
                                                  SetMatrixCoefficient(v20, v18, 0x8000, 5, a4, 0.70711);
                                                  v178 = v20;
                                                  v179 = v18;
                                                  v180 = 6;
                                                }

                                                else if (v138 == 1536)
                                                {
                                                  SetMatrixCoefficient(v20, v18, 0x8000, 10, a4, 0.70711);
                                                  v178 = v20;
                                                  v179 = v18;
                                                  v180 = 11;
                                                }

                                                else
                                                {
                                                  if ((v78 & 3) == 0)
                                                  {
                                                    if ((v78 & 4) == 0)
                                                    {
                                                      goto LABEL_326;
                                                    }

                                                    SetMatrixCoefficient(v20, v18, 0x8000, 3, a4, 0.70711);
                                                    v165 = v20;
                                                    v166 = v18;
                                                    v167 = 3;
                                                    goto LABEL_331;
                                                  }

                                                  SetMatrixCoefficient(v20, v18, 0x8000, 1, a4, 0.70711);
                                                  v178 = v20;
                                                  v179 = v18;
                                                  v180 = 2;
                                                }
                                              }

                                              else
                                              {
                                                SetMatrixCoefficient(v20, v18, 0x8000, 33, a4, 0.70711);
                                                v178 = v20;
                                                v179 = v18;
                                                v180 = 34;
                                              }

                                              SetMatrixCoefficient(v178, v179, 0x20000, v180, a4, 0.70711);
                                              goto LABEL_326;
                                            }

                                            v163 = 0.70711;
                                            v159 = v20;
                                            v160 = v18;
                                            v161 = 3;
                                          }

                                          v162 = a4;
                                          goto LABEL_318;
                                        }

                                        if ((~v78 & 0x5000000) == 0)
                                        {
                                          SetMatrixCoefficient(v20, v18, 52, 52, a4, 1.0);
                                          v149 = 1.0;
                                          v150 = v20;
                                          v151 = v18;
                                          v152 = 54;
                                          v153 = a4;
LABEL_299:
                                          SetMatrixCoefficient(v150, v151, 54, v152, v153, v149);
                                          goto LABEL_300;
                                        }

                                        if (v132)
                                        {
                                          SetMatrixCoefficient(v20, v18, 52, 49, a4, 0.70711);
                                          v150 = v20;
                                          v151 = v18;
                                          v152 = 51;
LABEL_298:
                                          v153 = a4;
                                          v149 = 0.70711;
                                          goto LABEL_299;
                                        }

                                        if ((~v78 & 0x60000000) != 0)
                                        {
                                          if (v188 == 48)
                                          {
                                            SetMatrixCoefficient(v20, v18, 52, 5, a4, 0.70711);
                                            v169 = v20;
                                            v170 = v18;
                                            v171 = 6;
                                          }

                                          else
                                          {
                                            if (v138 == 1536)
                                            {
                                              SetMatrixCoefficient(v20, v18, 52, 10, a4, 0.70711);
                                              SetMatrixCoefficient(v20, v18, 54, 11, a4, 0.70711);
                                              if ((v81 & 0x600) != 0)
                                              {
LABEL_302:
                                                SetMatrixCoefficient(v20, v18, 10, 10, a4, 1.0);
                                                v154 = 1.0;
                                                v155 = v20;
                                                v156 = v18;
                                                v157 = 11;
LABEL_305:
                                                v158 = a4;
LABEL_306:
                                                SetMatrixCoefficient(v155, v156, 11, v157, v158, v154);
                                                goto LABEL_307;
                                              }

                                              goto LABEL_307;
                                            }

                                            if ((v78 & 3) == 0)
                                            {
                                              if ((v78 & 4) == 0)
                                              {
                                                goto LABEL_300;
                                              }

                                              SetMatrixCoefficient(v20, v18, 52, 3, a4, 0.70711);
                                              v150 = v20;
                                              v151 = v18;
                                              v152 = 3;
                                              goto LABEL_298;
                                            }

                                            SetMatrixCoefficient(v20, v18, 52, 1, a4, 0.70711);
                                            v169 = v20;
                                            v170 = v18;
                                            v171 = 2;
                                          }
                                        }

                                        else
                                        {
                                          SetMatrixCoefficient(v20, v18, 52, 33, a4, 0.70711);
                                          v169 = v20;
                                          v170 = v18;
                                          v171 = 34;
                                        }

                                        SetMatrixCoefficient(v169, v170, 54, v171, a4, 0.70711);
                                        goto LABEL_300;
                                      }

                                      SetMatrixCoefficient(v20, v18, 49, 1, a4, 0.70711);
                                      v172 = v20;
                                      v173 = v18;
                                      v174 = 2;
                                    }

                                    SetMatrixCoefficient(v172, v173, 51, v174, a4, 0.70711);
                                    goto LABEL_293;
                                  }

                                  SetMatrixCoefficient(v20, v18, 13, 1, a4, 0.70711);
                                  v184 = v20;
                                  v185 = v18;
                                  v186 = 2;
                                }

                                SetMatrixCoefficient(v184, v185, 15, v186, a4, 0.70711);
                                goto LABEL_284;
                              }

                              if ((~v78 & 0x130) != 0)
                              {
                                if ((v78 & 0x30) == 0x30)
                                {
                                  SetMatrixCoefficient(v20, v18, 33, 5, a4, 0.70711);
                                  v121 = v20;
                                  v122 = v18;
                                  v123 = 6;
                                  goto LABEL_266;
                                }

                                if ((v78 & 0x100) == 0)
                                {
                                  if ((v78 & 3) != 0)
                                  {
                                    SetMatrixCoefficient(v20, v18, 33, 1, a4, 0.70711);
                                    v121 = v20;
                                    v122 = v18;
                                    v123 = 2;
                                  }

                                  else
                                  {
                                    if ((v78 & 4) == 0)
                                    {
                                      goto LABEL_268;
                                    }

                                    SetMatrixCoefficient(v20, v18, 33, 3, a4, 0.70711);
                                    v121 = v20;
                                    v122 = v18;
                                    v123 = 3;
                                  }

                                  goto LABEL_266;
                                }

                                v126 = v20;
                                v125 = v18;
                                v127 = v18;
                                v128 = 33;
                                v129 = 9;
                              }

                              else
                              {
                                v125 = v18;
                                SetMatrixCoefficient(v20, v18, 33, 5, a4, 0.70711);
                                SetMatrixCoefficient(v20, v18, 33, 9, a4, 0.70711);
                                v126 = v20;
                                v127 = v18;
                                v128 = 34;
                                v129 = 6;
                              }

                              SetMatrixCoefficient(v126, v127, v128, v129, a4, 0.70711);
                              v121 = v20;
                              v122 = v125;
                              v123 = 9;
LABEL_266:
                              v124 = a4;
                              v120 = 0.70711;
                              goto LABEL_267;
                            }

                            SetMatrixCoefficient(v20, v18, 5, 1, a4, 0.70711);
                            v115 = v20;
                            v116 = v18;
                            v117 = 2;
                            goto LABEL_221;
                          }

                          SetMatrixCoefficient(v20, v18, 5, 3, a4, 0.5);
                          v119 = 0.5;
                          v115 = v20;
                          v116 = v18;
                          v117 = 3;
                        }

                        v118 = a4;
                        goto LABEL_227;
                      }

                      v113 = 0.70711;
                      v110 = v20;
                      v111 = v18;
                      v112 = 3;
                    }

                    v114 = a4;
LABEL_217:
                    SetMatrixCoefficient(v110, v111, 9, v112, v114, v113);
                    goto LABEL_218;
                  }

                  SetMatrixCoefficient(v20, v18, 14, 1, a4, 0.70711);
                  v93 = v20;
                  v94 = v18;
                  v95 = 2;
                  goto LABEL_189;
                }

                v97 = 0.70711;
                v93 = v20;
                v94 = v18;
                v95 = 3;
              }

              v96 = a4;
              goto LABEL_192;
            }

            if (v39 == 7012356 || (v39 & 0xFFFE0000 | 0x10000) == 0xBF0000)
            {
              v196 = xmmword_18F901960;
              memset(v189, 0, sizeof(v189));
              std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v189, &v196, v197);
            }

            if ((~v78 & 3) == 0 && v39 == 6815746)
            {
              SetMatrixCoefficient(v20, v18, 204, 1, a4, 0.70711);
              SetMatrixCoefficient(v20, v18, 204, 2, a4, 0.70711);
              SetMatrixCoefficient(v20, v18, 205, 1, a4, 0.70711);
              v62 = -0.70711;
              v63 = v20;
              v64 = v18;
              v65 = 205;
              goto LABEL_125;
            }

            if (v191 == 6815746 && (v79 & 3) == 3)
            {
              SetMatrixCoefficient(v20, v18, 1, 204, a4, 0.70711);
              SetMatrixCoefficient(v20, v18, 2, 204, a4, 0.70711);
              SetMatrixCoefficient(v20, v18, 1, 205, a4, 0.70711);
              v62 = -0.70711;
              v63 = v20;
              v64 = v18;
              v65 = 2;
              v66 = 205;
              goto LABEL_169;
            }

            if (v191 <= 6750209)
            {
              if (v191 == 6553601)
              {
                if (v39 == 6815746)
                {
                  goto LABEL_380;
                }

                if (v39 == 9633793)
                {
                  v9 = 0;
                  *a4 = 1065353216;
                  goto LABEL_4;
                }

                goto LABEL_402;
              }

              if (v191 == 6619138)
              {
                goto LABEL_379;
              }

              v131 = 6684674;
            }

            else
            {
              if (v191 <= 6881281)
              {
                if (v191 != 6750210)
                {
                  if (v191 == 6815746)
                  {
                    v9 = 1718449215;
                    if (v39 > 6750209)
                    {
                      if (v39 != 6750210 && v39 != 6881282)
                      {
                        v130 = 6946818;
LABEL_400:
                        if (v39 != v130)
                        {
                          goto LABEL_4;
                        }
                      }

LABEL_401:
                      v9 = 0;
                      *a4 = xmmword_18F901950;
                      goto LABEL_4;
                    }

                    if (v39 != 6553601)
                    {
                      if (v39 != 6619138)
                      {
                        v130 = 6684674;
                        goto LABEL_400;
                      }

                      goto LABEL_401;
                    }

LABEL_380:
                    v9 = 0;
                    *a4 = 1065353216;
                    goto LABEL_4;
                  }

LABEL_402:
                  if (optionallyMixInNonSpeakerChannels(v20, v187[0], v12, a4, v80))
                  {
                    v9 = 0;
                  }

                  else
                  {
                    v9 = 1718449215;
                  }

                  goto LABEL_4;
                }

LABEL_379:
                if (v39 == 9633793)
                {
                  goto LABEL_380;
                }

                goto LABEL_402;
              }

              if (v191 == 6881282)
              {
                goto LABEL_379;
              }

              v131 = 6946818;
            }

            if (v191 != v131)
            {
              goto LABEL_402;
            }

            goto LABEL_379;
          }

          v62 = 1.0;
          v63 = v20;
          v64 = v18;
          v65 = 3;
LABEL_156:
          v66 = 3;
          goto LABEL_169;
        }

        SetMatrixCoefficient(v20, v18, 1, 0x20000, a4, 1.0);
        SetMatrixCoefficient(v20, v18, 2, 0x20000, a4, 1.0);
        SetMatrixCoefficient(v20, v18, 1, 131073, a4, 0.5);
        SetMatrixCoefficient(v20, v18, 2, 131073, a4, -0.5);
        SetMatrixCoefficient(v20, v18, 1, 131075, a4, 0.86603);
        v66 = 131075;
        v63 = v20;
        v64 = v18;
        v65 = 2;
        v87 = a4;
        v62 = 0.86603;
LABEL_170:
        SetMatrixCoefficient(v63, v64, v65, v66, v87, v62);
LABEL_171:
        v9 = 0;
        goto LABEL_4;
      }

      if (v191 == 6750210)
      {
        SetMatrixCoefficient(v20, v18, 1, 38, a4, 1.0);
        v62 = 1.0;
        v63 = v20;
        v64 = v18;
        v65 = 2;
        goto LABEL_168;
      }

      if (v191 != 8519688)
      {
        goto LABEL_138;
      }

      SetMatrixCoefficient(v20, v18, 1, 1, a4, 1.0);
      v62 = 1.0;
      v63 = v20;
      v64 = v18;
      v65 = 2;
LABEL_125:
      v66 = 2;
LABEL_169:
      v87 = a4;
      goto LABEL_170;
    }

LABEL_2:
    v9 = v8;
  }

LABEL_4:
  if (__dst)
  {
    free(__dst);
  }

  if (v195)
  {
    free(v195);
  }

  return v9;
}

void sub_18F61B56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F619A10);
  }

  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_ChannelLayoutForTag(signed int a1, AudioChannelLayout *a2)
{
  if (a1 == 0x10000)
  {
    return 1718449215;
  }

  v107 = v2;
  v108 = v3;
  a2->mChannelLayoutTag = a1;
  a2->mChannelBitmap = 0;
  v106.mChannelBitmap = 0;
  v106.mNumberChannelDescriptions = 0;
  v105 = 0;
  v106.mChannelLayoutTag = a1;
  AudioFormatProperty_NumberOfChannelsForLayout(&v106, &v105);
  v7 = v105;
  a2->mNumberChannelDescriptions = v105;
  mChannelDescriptions = a2->mChannelDescriptions;
  bzero(a2->mChannelDescriptions, 20 * v7);
  if (a1 == -266338299)
  {
    v10 = 131074;
    a2->mChannelLayoutTag = 0;
    v9 = 131075;
    v11 = 3;
    a2->mChannelDescriptions[0].mChannelLabel = 0x20000;
    v12 = 131073;
    v13 = 92;
    v14 = 72;
    v15 = 52;
    v16 = 32;
    goto LABEL_7;
  }

  if (a1 == -267386874)
  {
    v9 = 131074;
    v10 = 131073;
    a2->mChannelLayoutTag = 0;
    a2->mChannelDescriptions[0].mChannelLabel = 208;
    v11 = 131075;
    v12 = 0x20000;
    a2[1].mChannelLayoutTag = 209;
    v13 = 112;
    v14 = 92;
    v15 = 72;
    v16 = 52;
LABEL_7:
    result = 0;
    *(&a2->mChannelLayoutTag + v16) = v12;
    *(&a2->mChannelLayoutTag + v15) = v10;
    *(&a2->mChannelLayoutTag + v14) = v9;
    *(&a2->mChannelLayoutTag + v13) = v11;
    return result;
  }

  v17 = a1 & 0xFFFF0000;
  if ((a1 & 0xFFFF0000) >= 12451840)
  {
    if (v17 != 12451840 && v17 != 12517376)
    {
      goto LABEL_38;
    }

    result = 560360820;
    v25 = v17 == 12451840;
    v26 = 196608;
    if (v25)
    {
      v26 = 0x20000;
    }

    if (v7 <= 0xFE01)
    {
      v27 = sqrt(v7) + 0.5;
      if (v27 * v27 == v7)
      {
        if (!v7)
        {
          return 0;
        }

        v28 = (v7 + 3) & 0x1FFFC;
        v29 = vdupq_n_s64(v7 - 1);
        v30 = xmmword_18F9016B0;
        v31 = xmmword_18F9016C0;
        v32 = (a2 + 52);
        v33 = vdupq_n_s64(4uLL);
        result = 0;
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v29, v31));
          if (vuzp1_s16(v34, *v29.i8).u8[0])
          {
            LODWORD(v32[-2].mChannelDescriptions[0].mCoordinates[1]) = v26;
          }

          if (vuzp1_s16(v34, *&v29).i8[2])
          {
            v32[-1].mChannelDescriptions[0].mChannelLabel = v26 + 1;
          }

          if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v30))).i32[1])
          {
            v32->mChannelLayoutTag = v26 + 2;
            LODWORD(v32->mChannelDescriptions[0].mCoordinates[0]) = v26 + 3;
          }

          v30 = vaddq_s64(v30, v33);
          v31 = vaddq_s64(v31, v33);
          v26 += 4;
          v32 = (v32 + 80);
          v28 -= 4;
        }

        while (v28);
      }
    }
  }

  else
  {
    if (v17 != -268369920)
    {
      if (v17 == 9633792)
      {
        if (v7)
        {
          v18 = 0;
          v19 = vdupq_n_s64(v7 - 1);
          v20 = xmmword_18F9016B0;
          v21 = xmmword_18F9016C0;
          v22 = (a2 + 52);
          v23 = vdupq_n_s64(4uLL);
          do
          {
            v24 = vmovn_s64(vcgeq_u64(v19, v21));
            if (vuzp1_s16(v24, *v19.i8).u8[0])
            {
              LODWORD(v22[-2].mChannelDescriptions[0].mCoordinates[1]) = v18 | 0x10000;
            }

            if (vuzp1_s16(v24, *&v19).i8[2])
            {
              v22[-1].mChannelDescriptions[0].mChannelLabel = v18 | 0x10001;
            }

            if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v20))).i32[1])
            {
              v22->mChannelLayoutTag = v18 | 0x10002;
              LODWORD(v22->mChannelDescriptions[0].mCoordinates[0]) = v18 | 0x10003;
            }

            result = 0;
            v18 += 4;
            v20 = vaddq_s64(v20, v23);
            v21 = vaddq_s64(v21, v23);
            v22 = (v22 + 80);
          }

          while (((v7 + 3) & 0x1FFFFFFFCLL) != v18);
          return result;
        }

        return 0;
      }

LABEL_38:
      result = 560360820;
      if (a1 > 10420230)
      {
        if (a1 > 12320774)
        {
          if (a1 <= 13434887)
          {
            if (a1 > 12910595)
            {
              if (a1 <= 13172743)
              {
                if (a1 <= 13041670)
                {
                  if (a1 != 12910596)
                  {
                    if (a1 != 12976134)
                    {
                      return result;
                    }

                    a2->mChannelDescriptions[0].mChannelLabel = 1;
                    a2[1].mChannelLayoutTag = 2;
                    LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
                    a2[2].mNumberChannelDescriptions = 6;
                    LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 9;
                    v35 = 3;
                    goto LABEL_346;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 2;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 9;
                  v59 = 3;
                  goto LABEL_389;
                }

                if (a1 != 13041671)
                {
                  if (a1 != 13107207)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 3;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                  a2[2].mNumberChannelDescriptions = 5;
                  v77 = 9;
LABEL_385:
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v77;
                  v68 = 6;
                  goto LABEL_386;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
                a2[2].mNumberChannelDescriptions = 6;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 9;
                v68 = 3;
LABEL_386:
                a2[3].mChannelDescriptions[0].mChannelFlags = v68;
                v57 = 4;
                goto LABEL_398;
              }

              if (a1 <= 13303821)
              {
                if (a1 != 13172744)
                {
                  if (a1 != 13238284)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 2;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
                  a2[2].mNumberChannelDescriptions = 34;
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                  a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                  a2[4].mChannelBitmap = 3;
                  v58 = 4;
                  goto LABEL_305;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
                a2[2].mNumberChannelDescriptions = 6;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
                v79 = 34;
                goto LABEL_318;
              }

              if (a1 != 13303822)
              {
                if (a1 != 13369368)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 35;
                a2[1].mChannelLayoutTag = 36;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 37;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
                a2[3].mChannelDescriptions[0].mChannelFlags = 34;
                a2[4].mChannelBitmap = 1;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 2;
                a2[5].mChannelDescriptions[0].mChannelLabel = 9;
                a2[6].mChannelLayoutTag = 62;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 55;
                a2[7].mNumberChannelDescriptions = 56;
                LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 13;
                a2[8].mChannelDescriptions[0].mChannelFlags = 15;
                a2[9].mChannelBitmap = 14;
                LODWORD(a2[9].mChannelDescriptions[0].mCoordinates[1]) = 12;
                a2[10].mChannelDescriptions[0].mChannelLabel = 52;
                a2[11].mChannelLayoutTag = 54;
                LODWORD(a2[11].mChannelDescriptions[0].mCoordinates[0]) = 49;
                a2[12].mNumberChannelDescriptions = 51;
                LODWORD(a2[12].mChannelDescriptions[0].mCoordinates[2]) = 53;
                a2[13].mChannelDescriptions[0].mChannelFlags = 59;
                a2[14].mChannelBitmap = 57;
                LODWORD(a2[14].mChannelDescriptions[0].mCoordinates[1]) = 58;
LABEL_399:
                if (v7)
                {
                  do
                  {
                    SetDefaultChannelPosition(mChannelDescriptions);
                    result = 0;
                    ++mChannelDescriptions;
                    --v7;
                  }

                  while (v7);
                  return result;
                }

                return 0;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
              a2[2].mNumberChannelDescriptions = 34;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
              a2[3].mChannelDescriptions[0].mChannelFlags = 6;
              a2[4].mChannelBitmap = 3;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 4;
              a2[5].mChannelDescriptions[0].mChannelLabel = 13;
              a2[6].mChannelLayoutTag = 15;
              LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 49;
              a2[7].mNumberChannelDescriptions = 51;
              LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 52;
              v54 = 54;
LABEL_325:
              a2[8].mChannelDescriptions[0].mChannelFlags = v54;
              goto LABEL_399;
            }

            if (a1 > 12648463)
            {
              if (a1 <= 12779529)
              {
                if (a1 != 12648464)
                {
                  if (a1 != 12713992)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 2;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                  a2[2].mNumberChannelDescriptions = 4;
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                  a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                  a2[4].mChannelBitmap = 49;
                  v47 = 51;
                  goto LABEL_391;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 33;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 34;
                a2[5].mChannelDescriptions[0].mChannelLabel = 35;
                a2[6].mChannelLayoutTag = 36;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 13;
                a2[7].mNumberChannelDescriptions = 15;
                LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 49;
                a2[8].mChannelDescriptions[0].mChannelFlags = 51;
                a2[9].mChannelBitmap = 52;
                v70 = 54;
                goto LABEL_300;
              }

              if (a1 == 12779530)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 13;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 15;
                a2[5].mChannelDescriptions[0].mChannelLabel = 52;
                v67 = 54;
              }

              else
              {
                if (a1 != 12845066)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 33;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 34;
                a2[5].mChannelDescriptions[0].mChannelLabel = 49;
                v67 = 51;
              }

LABEL_303:
              a2[6].mChannelLayoutTag = v67;
              goto LABEL_399;
            }

            if (a1 != 12320775)
            {
              if (a1 != 12386312)
              {
                if (a1 != 12582924)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 33;
                v58 = 34;
                goto LABEL_305;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
              a2[3].mChannelDescriptions[0].mChannelFlags = 34;
              v74 = 5;
              goto LABEL_376;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            a2[2].mNumberChannelDescriptions = 4;
            v95 = 9;
            goto LABEL_380;
          }

          if (a1 > 13893636)
          {
            if (a1 <= 14155780)
            {
              if (a1 <= 14024710)
              {
                if (a1 != 13893637)
                {
                  if (a1 != 13959174)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 3;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                  a2[2].mNumberChannelDescriptions = 33;
                  v46 = 34;
                  goto LABEL_345;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 3;
                v97 = 2;
                goto LABEL_334;
              }

              if (a1 != 14024711)
              {
                if (a1 != 14090248)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                v78 = 3;
LABEL_261:
                a2[1].mChannelLayoutTag = v78;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                a2[2].mNumberChannelDescriptions = 5;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
                a2[3].mChannelDescriptions[0].mChannelFlags = 33;
                v80 = 34;
LABEL_350:
                a2[4].mChannelBitmap = v80;
                v47 = 4;
LABEL_391:
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = v47;
                goto LABEL_399;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              v73 = 3;
              goto LABEL_323;
            }

            if (a1 > 14286854)
            {
              if (a1 != 14286855)
              {
                if (a1 != 14352392)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
                a2[2].mNumberChannelDescriptions = 34;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                v79 = 6;
LABEL_318:
                a2[3].mChannelDescriptions[0].mChannelFlags = v79;
                v80 = 3;
                goto LABEL_350;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              v98 = 3;
LABEL_327:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v98;
              v68 = 9;
              goto LABEL_386;
            }

            if (a1 != 14155781)
            {
              if (a1 != 14221318)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
              v43 = 34;
              goto LABEL_153;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
            v56 = 34;
            goto LABEL_320;
          }

          if (a1 > 13631499)
          {
            if (a1 > 13762571)
            {
              if (a1 == 13762572)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
                a2[3].mChannelDescriptions[0].mChannelFlags = 34;
                a2[4].mChannelBitmap = 55;
                v58 = 56;
LABEL_305:
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = v58;
                a2[5].mChannelDescriptions[0].mChannelLabel = 13;
                a2[6].mChannelLayoutTag = 15;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 52;
                v94 = 54;
                goto LABEL_378;
              }

              if (a1 != 13828110)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
              a2[3].mChannelDescriptions[0].mChannelFlags = 34;
              a2[4].mChannelBitmap = 55;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 56;
              a2[5].mChannelDescriptions[0].mChannelLabel = 13;
              a2[6].mChannelLayoutTag = 15;
              LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 52;
              a2[7].mNumberChannelDescriptions = 54;
              LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 65;
              v54 = 66;
            }

            else
            {
              if (a1 == 13631500)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 13;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 15;
                a2[5].mChannelDescriptions[0].mChannelLabel = 14;
                a2[6].mChannelLayoutTag = 60;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 61;
                v94 = 12;
LABEL_378:
                a2[7].mNumberChannelDescriptions = v94;
                goto LABEL_399;
              }

              if (a1 != 13697038)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
              a2[3].mChannelDescriptions[0].mChannelFlags = 6;
              a2[4].mChannelBitmap = 63;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 64;
              a2[5].mChannelDescriptions[0].mChannelLabel = 13;
              a2[6].mChannelLayoutTag = 15;
              LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 14;
              a2[7].mNumberChannelDescriptions = 60;
              LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 61;
              v54 = 12;
            }

            goto LABEL_325;
          }

          if (a1 != 13434888)
          {
            if (a1 == 13500428)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 37;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
              a2[3].mChannelDescriptions[0].mChannelFlags = 34;
              a2[4].mChannelBitmap = 62;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 55;
              a2[5].mChannelDescriptions[0].mChannelLabel = 56;
              a2[6].mChannelLayoutTag = 13;
              LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 15;
              v94 = 53;
              goto LABEL_378;
            }

            if (a1 != 13565962)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            a2[2].mNumberChannelDescriptions = 4;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
            a2[3].mChannelDescriptions[0].mChannelFlags = 6;
            a2[4].mChannelBitmap = 13;
            LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 15;
            a2[5].mChannelDescriptions[0].mChannelLabel = 60;
            v67 = 61;
            goto LABEL_303;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
          a2[2].mNumberChannelDescriptions = 4;
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
          v99 = 6;
LABEL_382:
          a2[3].mChannelDescriptions[0].mChannelFlags = v99;
          a2[4].mChannelBitmap = 13;
          v47 = 15;
          goto LABEL_391;
        }

        if (a1 > 11337734)
        {
          if (a1 > 11796488)
          {
            if (a1 <= 12058631)
            {
              if (a1 <= 11927558)
              {
                if (a1 == 11796489)
                {
                  a2->mChannelDescriptions[0].mChannelLabel = 7;
                  a2[1].mChannelLayoutTag = 8;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
                  a2[2].mNumberChannelDescriptions = 2;
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                  a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                  a2[4].mChannelBitmap = 33;
                  v44 = 34;
                }

                else
                {
                  if (a1 != 11862025)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 7;
                  a2[1].mChannelLayoutTag = 3;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 8;
                  a2[2].mNumberChannelDescriptions = 1;
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 2;
                  a2[3].mChannelDescriptions[0].mChannelFlags = 5;
                  a2[4].mChannelBitmap = 9;
                  v44 = 6;
                }

                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = v44;
                a2[5].mChannelDescriptions[0].mChannelLabel = 4;
                goto LABEL_399;
              }

              if (a1 != 11927559)
              {
                if (a1 != 11993096)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 3;
                v78 = 1;
                goto LABEL_261;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 3;
              v100 = 1;
              goto LABEL_352;
            }

            if (a1 <= 12189700)
            {
              if (a1 != 12058632)
              {
                if (a1 != 12124164)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
                v59 = 34;
                goto LABEL_389;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 3;
              v85 = 1;
LABEL_331:
              a2[1].mChannelLayoutTag = v85;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 5;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
              v99 = 4;
              goto LABEL_382;
            }

            if (a1 == 12189701)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              v97 = 3;
LABEL_334:
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v97;
              a2[2].mNumberChannelDescriptions = 33;
              v84 = 34;
              goto LABEL_367;
            }

            if (a1 != 12255238)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            v71 = 4;
            goto LABEL_265;
          }

          if (a1 <= 11534342)
          {
            if (a1 != 11337735)
            {
              if (a1 == 11403271)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 3;
                a2[1].mChannelLayoutTag = 1;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                a2[2].mNumberChannelDescriptions = 33;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 34;
                v68 = 12;
              }

              else
              {
                if (a1 != 11468807)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 3;
                a2[1].mChannelLayoutTag = 9;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
                a2[2].mNumberChannelDescriptions = 2;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
                v68 = 34;
              }

              goto LABEL_386;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 7;
            a2[1].mChannelLayoutTag = 8;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
            a2[2].mNumberChannelDescriptions = 2;
            v77 = 5;
            goto LABEL_385;
          }

          if (a1 <= 11665415)
          {
            if (a1 == 11534343)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 7;
              a2[1].mChannelLayoutTag = 3;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 8;
              a2[2].mNumberChannelDescriptions = 1;
              v95 = 2;
LABEL_380:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v95;
              a2[3].mChannelDescriptions[0].mChannelFlags = 5;
              v57 = 6;
              goto LABEL_398;
            }

            if (a1 != 11599880)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 7;
            v55 = 3;
LABEL_349:
            a2[1].mChannelLayoutTag = v55;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 8;
            a2[2].mNumberChannelDescriptions = 1;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 2;
            a2[3].mChannelDescriptions[0].mChannelFlags = 5;
            v80 = 6;
            goto LABEL_350;
          }

          if (a1 != 11665416)
          {
            if (a1 != 11730952)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 7;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 8;
            a2[2].mNumberChannelDescriptions = 1;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 2;
            a2[3].mChannelDescriptions[0].mChannelFlags = 5;
            v74 = 9;
LABEL_376:
            a2[4].mChannelBitmap = v74;
            v47 = 6;
            goto LABEL_391;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 7;
          a2[1].mChannelLayoutTag = 8;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
          v83 = 2;
LABEL_308:
          a2[2].mNumberChannelDescriptions = v83;
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
          v96 = 6;
LABEL_355:
          a2[3].mChannelDescriptions[0].mChannelFlags = v96;
          a2[4].mChannelBitmap = 33;
          v47 = 34;
          goto LABEL_391;
        }

        if (a1 <= 10878983)
        {
          if (a1 > 10616839)
          {
            if (a1 <= 10747911)
            {
              if (a1 == 10616840)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 3;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                a2[2].mNumberChannelDescriptions = 5;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
                a2[3].mChannelDescriptions[0].mChannelFlags = 4;
                a2[4].mChannelBitmap = 10;
                v47 = 11;
              }

              else
              {
                if (a1 != 10682376)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 3;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                a2[2].mNumberChannelDescriptions = 5;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
                a2[3].mChannelDescriptions[0].mChannelFlags = 4;
                a2[4].mChannelBitmap = 35;
                v47 = 36;
              }

              goto LABEL_391;
            }

            if (a1 != 10747912)
            {
              if (a1 != 10813448)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 3;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 5;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
              a2[3].mChannelDescriptions[0].mChannelFlags = 4;
              a2[4].mChannelBitmap = 9;
              v47 = 12;
              goto LABEL_391;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            v85 = 3;
            goto LABEL_331;
          }

          if (a1 == 10420231)
          {
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            a2[3].mChannelDescriptions[0].mChannelFlags = 4;
            v57 = 14;
            goto LABEL_398;
          }

          if (a1 == 10485768)
          {
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            v96 = 4;
            goto LABEL_355;
          }

          if (a1 != 10551304)
          {
            return result;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 3;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
          a2[2].mNumberChannelDescriptions = 5;
          v62 = 6;
          goto LABEL_370;
        }

        if (a1 > 11075588)
        {
          if (a1 > 11206661)
          {
            if (a1 == 11206662)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 3;
              a2[1].mChannelLayoutTag = 1;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 33;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 34;
              v35 = 12;
              goto LABEL_346;
            }

            if (a1 != 11272198)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 3;
            a2[1].mChannelLayoutTag = 9;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
            v71 = 2;
LABEL_265:
            a2[2].mNumberChannelDescriptions = v71;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
            v35 = 34;
LABEL_346:
            a2[3].mChannelDescriptions[0].mChannelFlags = v35;
            goto LABEL_399;
          }

          if (a1 != 11075589)
          {
            if (a1 != 11141126)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 7;
            a2[1].mChannelLayoutTag = 8;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
            v50 = 2;
            goto LABEL_336;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 3;
          v82 = 1;
          goto LABEL_280;
        }

        switch(a1)
        {
          case 10878984:
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            a2[3].mChannelDescriptions[0].mChannelFlags = 4;
            v102 = 9;
            break;
          case 10944520:
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            a2[3].mChannelDescriptions[0].mChannelFlags = 4;
            v102 = 12;
            break;
          case 11010052:
            a2->mChannelDescriptions[0].mChannelLabel = 3;
            v45 = 1;
            goto LABEL_174;
          default:
            return result;
        }

        a2[4].mChannelBitmap = v102;
        v47 = 14;
        goto LABEL_391;
      }

      if (a1 <= 8454151)
      {
        if (a1 > 7471106)
        {
          if (a1 > 7929861)
          {
            if (a1 > 8192006)
            {
              if (a1 > 8323079)
              {
                if (a1 == 8323080)
                {
                  a2->mChannelDescriptions[0].mChannelLabel = 3;
                  v55 = 7;
                  goto LABEL_349;
                }

                if (a1 != 8388616)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                v83 = 4;
                goto LABEL_308;
              }

              if (a1 == 8192007)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                v101 = 6;
LABEL_353:
                a2[3].mChannelDescriptions[0].mChannelFlags = v101;
                v57 = 9;
LABEL_398:
                a2[4].mChannelBitmap = v57;
                goto LABEL_399;
              }

              if (a1 != 8257544)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
              v60 = 6;
LABEL_371:
              a2[3].mChannelDescriptions[0].mChannelFlags = v60;
              a2[4].mChannelBitmap = 7;
              v47 = 8;
              goto LABEL_391;
            }

            if (a1 > 8060933)
            {
              if (a1 == 8060934)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                v81 = 3;
              }

              else
              {
                if (a1 != 8126470)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 3;
                v81 = 1;
              }

              a2[1].mChannelLayoutTag = v81;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 5;
              v46 = 6;
              goto LABEL_345;
            }

            if (a1 != 7929862)
            {
              if (a1 != 7995398)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              v43 = 6;
LABEL_153:
              a2[2].mNumberChannelDescriptions = v43;
              v46 = 3;
LABEL_345:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v46;
              v35 = 4;
              goto LABEL_346;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            v50 = 4;
LABEL_336:
            a2[2].mNumberChannelDescriptions = v50;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
            v35 = 6;
            goto LABEL_346;
          }

          if (a1 > 7667716)
          {
            if (a1 > 7798788)
            {
              if (a1 == 7798789)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                v75 = 3;
              }

              else
              {
                if (a1 != 7864325)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 3;
                v75 = 1;
              }

              a2[1].mChannelLayoutTag = v75;
              v72 = 2;
            }

            else
            {
              if (a1 != 7667717)
              {
                if (a1 != 7733253)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
                v56 = 6;
LABEL_320:
                a2[2].mNumberChannelDescriptions = v56;
                v84 = 3;
                goto LABEL_367;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              v72 = 3;
            }

            goto LABEL_313;
          }

          if (a1 != 7471107)
          {
            if (a1 == 7536644)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              v89 = 3;
              goto LABEL_388;
            }

            if (a1 != 7602180)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 3;
            v69 = 1;
            goto LABEL_338;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 3;
          v76 = 1;
          goto LABEL_393;
        }

        if (a1 <= 7012355)
        {
          if (a1 <= 6750209)
          {
            switch(a1)
            {
              case 6553601:
                mChannelDescriptions->mChannelLabel = 42;
                goto LABEL_399;
              case 6619138:
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                v48 = 2;
                break;
              case 6684674:
                a2->mChannelDescriptions[0].mChannelLabel = 301;
                v48 = 302;
                break;
              default:
                return result;
            }
          }

          else if (a1 > 6881281)
          {
            if (a1 == 6881282)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 206;
              v48 = 207;
            }

            else
            {
              if (a1 != 6946818)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 208;
              v48 = 209;
            }
          }

          else if (a1 == 6750210)
          {
            a2->mChannelDescriptions[0].mChannelLabel = 38;
            v48 = 39;
          }

          else
          {
            if (a1 != 6815746)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 204;
            v48 = 205;
          }

          goto LABEL_361;
        }

        if (a1 > 7208965)
        {
          if (a1 <= 7340039)
          {
            if (a1 == 7208966)
            {
              v86 = &a2->mChannelDescriptions[0].mCoordinates[2];
              v87 = 6;
              do
              {
                *(v86 - 3) = 2;
                *v86 = 1.0;
                v86 += 5;
                --v87;
              }

              while (v87);
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 3;
              a2[3].mChannelDescriptions[0].mChannelFlags = 9;
              a2->mChannelDescriptions[0].mCoordinates[0] = -60.0;
              a2[1].mNumberChannelDescriptions = 1114636288;
              a2[1].mChannelDescriptions[0].mCoordinates[2] = -120.0;
              a2[2].mChannelDescriptions[0].mChannelFlags = 1123024896;
              a2[3].mChannelBitmap = 0;
              a2[3].mChannelDescriptions[0].mCoordinates[1] = 180.0;
            }

            else
            {
              if (a1 != 7274504)
              {
                return result;
              }

              v51 = &a2->mChannelDescriptions[0].mCoordinates[2];
              v52 = 8;
              do
              {
                *(v51 - 3) = 2;
                *v51 = 1.0;
                v51 += 5;
                --v52;
              }

              while (v52);
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 3;
              a2[3].mChannelDescriptions[0].mChannelFlags = 9;
              a2[4].mChannelBitmap = 35;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 36;
              a2->mChannelDescriptions[0].mCoordinates[0] = -45.0;
              a2[1].mNumberChannelDescriptions = 1110704128;
              a2[1].mChannelDescriptions[0].mCoordinates[2] = -135.0;
              a2[2].mChannelDescriptions[0].mChannelFlags = 1124532224;
              a2[3].mChannelBitmap = 0;
              a2[3].mChannelDescriptions[0].mCoordinates[1] = 180.0;
              a2[4].mChannelDescriptions[0].mChannelLabel = -1028390912;
              a2[5].mChannelLayoutTag = 1119092736;
            }

            goto LABEL_399;
          }

          if (a1 == 7340040)
          {
            v90 = 0;
            v91 = &a2->mChannelDescriptions[0].mCoordinates[2];
            do
            {
              *(v91 - 3) = 2;
              *v91 = 1.0;
              if (v90 >= 4)
              {
                v92 = 45.0;
              }

              else
              {
                v92 = 0.0;
              }

              *(v91 - 1) = v92;
              ++v90;
              v91 += 5;
            }

            while (v90 != 8);
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            a2[2].mNumberChannelDescriptions = 6;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 13;
            a2[3].mChannelDescriptions[0].mChannelFlags = 15;
            a2[4].mChannelBitmap = 52;
            LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 54;
            a2->mChannelDescriptions[0].mCoordinates[0] = -45.0;
            a2[1].mNumberChannelDescriptions = 1110704128;
            a2[1].mChannelDescriptions[0].mCoordinates[2] = -135.0;
            a2[2].mChannelDescriptions[0].mChannelFlags = 1124532224;
            a2[3].mChannelBitmap = -1036779520;
            a2[3].mChannelDescriptions[0].mCoordinates[1] = 45.0;
            a2[4].mChannelDescriptions[0].mChannelLabel = -1022951424;
            a2[5].mChannelLayoutTag = 1124532224;
            goto LABEL_399;
          }

          if (a1 != 7405571)
          {
            return result;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          v49 = 3;
          goto LABEL_394;
        }

        if (a1 != 7012356)
        {
          if (a1 == 7077892)
          {
            v103 = &a2->mChannelDescriptions[0].mCoordinates[2];
            v104 = 4;
            do
            {
              *(v103 - 3) = 2;
              *v103 = 1.0;
              v103 += 5;
              --v104;
            }

            while (v104);
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            a2[2].mNumberChannelDescriptions = 6;
            a2->mChannelDescriptions[0].mCoordinates[0] = -45.0;
            a2[1].mNumberChannelDescriptions = 1110704128;
            a2[1].mChannelDescriptions[0].mCoordinates[2] = -135.0;
            a2[2].mChannelDescriptions[0].mChannelFlags = 1124532224;
          }

          else
          {
            if (a1 != 7143429)
            {
              return result;
            }

            v64 = &a2->mChannelDescriptions[0].mCoordinates[2];
            v65 = 5;
            do
            {
              *(v64 - 3) = 2;
              *v64 = 1.0;
              v64 += 5;
              --v65;
            }

            while (v65);
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            a2[2].mNumberChannelDescriptions = 6;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 3;
            a2->mChannelDescriptions[0].mCoordinates[0] = -72.0;
            a2[1].mNumberChannelDescriptions = 1116733440;
            a2[1].mChannelDescriptions[0].mCoordinates[2] = -144.0;
            a2[2].mChannelDescriptions[0].mChannelFlags = 1125122048;
            a2[3].mChannelBitmap = 0;
          }

          goto LABEL_399;
        }

        a2->mChannelDescriptions[0].mChannelLabel = 200;
        a2[1].mChannelLayoutTag = 201;
        LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 202;
        v59 = 203;
        goto LABEL_389;
      }

      if (a1 <= 9371654)
      {
        if (a1 <= 8912899)
        {
          if (a1 <= 8650755)
          {
            if (a1 == 8454152)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              v62 = 3;
LABEL_370:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v62;
              v60 = 4;
              goto LABEL_371;
            }

            if (a1 == 8519688)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
              a2[3].mChannelDescriptions[0].mChannelFlags = 6;
              a2[4].mChannelBitmap = 38;
              v47 = 39;
              goto LABEL_391;
            }

            if (a1 != 8585219)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            v49 = 9;
LABEL_394:
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v49;
            goto LABEL_399;
          }

          if (a1 > 8781827)
          {
            if (a1 != 8781828)
            {
              if (a1 != 8847365)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              v72 = 4;
LABEL_313:
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v72;
              a2[2].mNumberChannelDescriptions = 5;
              v84 = 6;
              goto LABEL_367;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            v89 = 4;
LABEL_388:
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v89;
            v59 = 9;
            goto LABEL_389;
          }

          if (a1 != 8650756)
          {
            if (a1 != 8716291)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            v49 = 4;
            goto LABEL_394;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
          v59 = 6;
LABEL_389:
          a2[2].mNumberChannelDescriptions = v59;
          goto LABEL_399;
        }

        if (a1 <= 9109509)
        {
          if (a1 != 8912900)
          {
            if (a1 == 8978437)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              v84 = 9;
              goto LABEL_367;
            }

            if (a1 != 9043973)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            v66 = 6;
            goto LABEL_281;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          v63 = 3;
          goto LABEL_374;
        }

        if (a1 <= 9240581)
        {
          if (a1 != 9109510)
          {
            if (a1 != 9175047)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            a2[2].mNumberChannelDescriptions = 6;
            v53 = 3;
            goto LABEL_397;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
          a2[2].mNumberChannelDescriptions = 6;
          v88 = 3;
LABEL_342:
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v88;
          v35 = 9;
          goto LABEL_346;
        }

        if (a1 != 9240582)
        {
          if (a1 != 9306119)
          {
            return result;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 3;
          v73 = 1;
LABEL_323:
          a2[1].mChannelLayoutTag = v73;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
          a2[2].mNumberChannelDescriptions = 5;
          v98 = 6;
          goto LABEL_327;
        }

        a2->mChannelDescriptions[0].mChannelLabel = 3;
        v93 = 1;
      }

      else
      {
        if (a1 <= 9895939)
        {
          if (a1 > 9568276)
          {
            if (a1 <= 9764865)
            {
              if (a1 == 9568277)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 14;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 10;
                a2[3].mChannelDescriptions[0].mChannelFlags = 11;
                a2[4].mChannelBitmap = 5;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 6;
                a2[5].mChannelDescriptions[0].mChannelLabel = 13;
                a2[6].mChannelLayoutTag = 15;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 35;
                a2[7].mNumberChannelDescriptions = 36;
                LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 44;
                a2[8].mChannelDescriptions[0].mChannelFlags = 9;
                a2[9].mChannelBitmap = 4;
                LODWORD(a2[9].mChannelDescriptions[0].mCoordinates[1]) = 37;
                a2[10].mChannelDescriptions[0].mChannelLabel = 7;
                a2[11].mChannelLayoutTag = 8;
                LODWORD(a2[11].mChannelDescriptions[0].mCoordinates[0]) = 40;
                a2[12].mNumberChannelDescriptions = 41;
                LODWORD(a2[12].mChannelDescriptions[0].mCoordinates[2]) = 45;
                goto LABEL_399;
              }

              if (a1 != 9699335)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 3;
              a2[3].mChannelDescriptions[0].mChannelFlags = 7;
              v57 = 8;
              goto LABEL_398;
            }

            if (a1 != 9764866)
            {
              if (a1 != 9830403)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              v76 = 3;
LABEL_393:
              a2[1].mChannelLayoutTag = v76;
              v49 = 2;
              goto LABEL_394;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 3;
            v48 = 4;
LABEL_361:
            a2[1].mChannelLayoutTag = v48;
            goto LABEL_399;
          }

          if (a1 != 9371655)
          {
            if (a1 == 9437192)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 3;
              a2[1].mChannelLayoutTag = 1;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 5;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
              a2[3].mChannelDescriptions[0].mChannelFlags = 33;
              a2[4].mChannelBitmap = 34;
              v47 = 9;
              goto LABEL_391;
            }

            if (a1 != 9502736)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            a2[2].mNumberChannelDescriptions = 14;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 10;
            a2[3].mChannelDescriptions[0].mChannelFlags = 11;
            a2[4].mChannelBitmap = 5;
            LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 6;
            a2[5].mChannelDescriptions[0].mChannelLabel = 13;
            a2[6].mChannelLayoutTag = 15;
            LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 35;
            a2[7].mNumberChannelDescriptions = 36;
            LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 44;
            a2[8].mChannelDescriptions[0].mChannelFlags = 9;
            a2[9].mChannelBitmap = 4;
            v70 = 37;
LABEL_300:
            LODWORD(a2[9].mChannelDescriptions[0].mCoordinates[1]) = v70;
            goto LABEL_399;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 3;
          v61 = 1;
          goto LABEL_396;
        }

        if (a1 <= 10158085)
        {
          if (a1 > 10027011)
          {
            if (a1 != 10027012)
            {
              if (a1 != 10092549)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              v82 = 3;
LABEL_280:
              a2[1].mChannelLayoutTag = v82;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              v66 = 9;
LABEL_281:
              a2[2].mNumberChannelDescriptions = v66;
              v84 = 4;
LABEL_367:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v84;
              goto LABEL_399;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            v63 = 9;
            goto LABEL_374;
          }

          if (a1 != 9895940)
          {
            if (a1 != 9961476)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            v45 = 3;
LABEL_174:
            a2[1].mChannelLayoutTag = v45;
            v63 = 2;
LABEL_374:
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v63;
            v59 = 4;
            goto LABEL_389;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          v69 = 3;
LABEL_338:
          a2[1].mChannelLayoutTag = v69;
          v89 = 2;
          goto LABEL_388;
        }

        if (a1 > 10289158)
        {
          if (a1 != 10289159)
          {
            if (a1 != 10354695)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            a2[3].mChannelDescriptions[0].mChannelFlags = 4;
            v57 = 12;
            goto LABEL_398;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          v100 = 3;
LABEL_352:
          a2[1].mChannelLayoutTag = v100;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
          a2[2].mNumberChannelDescriptions = 5;
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
          v101 = 4;
          goto LABEL_353;
        }

        if (a1 != 10158086)
        {
          if (a1 != 10223623)
          {
            return result;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          v61 = 3;
LABEL_396:
          a2[1].mChannelLayoutTag = v61;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
          a2[2].mNumberChannelDescriptions = 5;
          v53 = 6;
LABEL_397:
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v53;
          a2[3].mChannelDescriptions[0].mChannelFlags = 33;
          v57 = 34;
          goto LABEL_398;
        }

        a2->mChannelDescriptions[0].mChannelLabel = 1;
        v93 = 3;
      }

      a2[1].mChannelLayoutTag = v93;
      LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
      a2[2].mNumberChannelDescriptions = 5;
      v88 = 6;
      goto LABEL_342;
    }

    if (!v7)
    {
      return 0;
    }

    v36 = 0;
    v37 = vdupq_n_s64(v7 - 1);
    v38 = xmmword_18F9016B0;
    v39 = xmmword_18F9016C0;
    v40 = (a2 + 52);
    v41 = vdupq_n_s64(4uLL);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v37, v39));
      if (vuzp1_s16(v42, *v37.i8).u8[0])
      {
        LODWORD(v40[-2].mChannelDescriptions[0].mCoordinates[1]) = v36 | 0x40000;
      }

      if (vuzp1_s16(v42, *&v37).i8[2])
      {
        v40[-1].mChannelDescriptions[0].mChannelLabel = v36 | 0x40001;
      }

      if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38))).i32[1])
      {
        v40->mChannelLayoutTag = v36 | 0x40002;
        LODWORD(v40->mChannelDescriptions[0].mCoordinates[0]) = v36 | 0x40003;
      }

      result = 0;
      v36 += 4;
      v38 = vaddq_s64(v38, v41);
      v39 = vaddq_s64(v39, v41);
      v40 = (v40 + 80);
    }

    while (((v7 + 3) & 0x1FFFFFFFCLL) != v36);
  }

  return result;
}
_DWORD *WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(_DWORD *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 26)
    {
      __break(0xC471u);
      JUMPOUT(0x19DAA0A90);
    }

    v3 = result;
    v4 = *result;
    v5 = result[3];
    v6 = (*result + (v5 << 6));
    v7 = WTF::fastMalloc(v5, (a2 << 6));
    *(v3 + 8) = v2;
    *v3 = v7;
    result = WTF::VectorMover<false,WebCore::TargetedElementAdjustment>::move(v4, v6, v7);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v4, v8);
    }
  }

  return result;
}

_DWORD *WTF::VectorMover<false,WebCore::TargetedElementAdjustment>::move(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result + 12;
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 1);
      *(a3 + 16) = *(v5 - 2);
      *(a3 + 32) = v7;
      *a3 = v6;
      *(a3 + 56) = 0;
      *(a3 + 48) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3 + 48, v5);
      result = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v8);
      v9 = v5 + 4;
      v5 += 16;
      a3 += 64;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = v3 << 6;
    v5 = *a1 + 48;
    do
    {
      v5 = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, a2) + 64;
      v4 -= 64;
    }

    while (v4);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35AdjustVisibilityForTargetedElementsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_6VectorIN7WebCore25TargetedElementAdjustmentELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F62B0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35AdjustVisibilityForTargetedElementsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_6VectorIN7WebCore25TargetedElementAdjustmentELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F62B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35AdjustVisibilityForTargetedElementsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_6VectorIN7WebCore25TargetedElementAdjustmentELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3750;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33NumberOfVisibilityAdjustmentRectsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F62D8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33NumberOfVisibilityAdjustmentRectsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F62D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33NumberOfVisibilityAdjustmentRectsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEE4callEy(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3832;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22ContentsToRootViewRectENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_9FloatRectEONS_17CompletionHandlerIFvSG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F6300;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22ContentsToRootViewRectENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_9FloatRectEONS_17CompletionHandlerIFvSG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6300;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22ContentsToRootViewRectENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_9FloatRectEONS_17CompletionHandlerIFvSG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2, float a3, float a4, float a5, float a6)
{
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3761;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v7;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v8, v13);
  IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23ContentsToRootViewPointENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_10FloatPointEONS_17CompletionHandlerIFvSG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F6328;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23ContentsToRootViewPointENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_10FloatPointEONS_17CompletionHandlerIFvSG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6328;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23ContentsToRootViewPointENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_10FloatPointEONS_17CompletionHandlerIFvSG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2, float a3, float a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3760;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v7;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v8, a3);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v8, a4);
  IPC::Connection::sendMessageImpl(v6, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35RemoteDictionaryPopupInfoToRootViewENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_19DictionaryPopupInfoEONS_17CompletionHandlerIFvSG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F6350;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35RemoteDictionaryPopupInfoToRootViewENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_19DictionaryPopupInfoEONS_17CompletionHandlerIFvSG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6350;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35RemoteDictionaryPopupInfoToRootViewENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_19DictionaryPopupInfoEONS_17CompletionHandlerIFvSG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3844;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::DictionaryPopupInfo,void>::encode(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18LoadAndDecodeImageENS2_10ConnectionEN6WebKit7WebPageES9_FvON7WebCore15ResourceRequestENSt3__18optionalINSA_9FloatSizeEEEyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_3RefINSA_15ShareableBitmapENS_12RawPtrTraitsISM_EENS_21DefaultRefDerefTraitsISM_EEEENSA_13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F6378;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18LoadAndDecodeImageENS2_10ConnectionEN6WebKit7WebPageES9_FvON7WebCore15ResourceRequestENSt3__18optionalINSA_9FloatSizeEEEyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_3RefINSA_15ShareableBitmapENS_12RawPtrTraitsISM_EENS_21DefaultRefDerefTraitsISM_EEEENSA_13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6378;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18LoadAndDecodeImageENS2_10ConnectionEN6WebKit7WebPageES9_FvON7WebCore15ResourceRequestENSt3__18optionalINSA_9FloatSizeEEEyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_3RefINSA_15ShareableBitmapENS_12RawPtrTraitsISM_EENS_21DefaultRefDerefTraitsISM_EEEENSA_13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EE4callESU_(uint64_t a1, WebCore::ShareableBitmap **a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3828;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (*(a2 + 80))
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (*(a2 + 80) == 1)
    {
      IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (*(a2 + 80))
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebCore::ShareableBitmap,void>::encode(v5, *a2);
LABEL_6:
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, v5);
  if (v6)
  {
    *a1 = v5[0];
    *(a1 + 8) = v5[1];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v4;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27GetInformationFromImageDataENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__14pairINS_6StringENSA_IN7WebCore7IntSizeELm0ESB_Lm16ESC_EEEENSN_18ImageDecodingErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F63A0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27GetInformationFromImageDataENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__14pairINS_6StringENSA_IN7WebCore7IntSizeELm0ESB_Lm16ESC_EEEENSN_18ImageDecodingErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F63A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebPage::GetInformationFromImageData,std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>>(uint64_t *a1, void *a2, char *a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3801;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>,void>::encode<IPC::Encoder>(v6, a3);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char *a2)
{
  if (a2[24])
  {
    v7 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (a2[24] == 1)
    {
      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v6 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if (a2[24])
  {
    goto LABEL_7;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  return IPC::VectorArgumentCoder<false,WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (a2 + 8));
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(a1, v6);
      v6 += 2;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[24] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a2, &v5);
  if (v6 == 1)
  {
    IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, a2, &v5);
    if (v6)
    {
      v4 = v5;
      v5 = 0;
      if (v4)
      {
        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

WTF *IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(_BYTE *a1, IPC::Decoder *a2, uint64_t *a3)
{
  result = IPC::Decoder::decode<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v7);
  if (v9 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a3, &v7);
    if (v9)
    {
      result = v7;
      if (v7)
      {
        v7 = 0;
        v8 = 0;
        return WTF::fastFree(result, v6);
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }

  return result;
}

void *IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(void *result, uint64_t *a2, uint64_t a3)
{
  if (a2[1] & 1) != 0 && (*(a3 + 16))
  {
    v3 = result;
    v4 = *a2;
    *a2 = 0;
    *result = v4;
    result[2] = 0;
    result[1] = 0;
    result = WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt((result + 1), a3);
    *(v3 + 24) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26CreateBitmapsFromImageDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsISC_EENS_21DefaultRefDerefTraitsISC_EEEERKNS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSJ_INSA_INSB_15ShareableBitmapENSD_ISQ_EENSF_ISQ_EEEELm0ESK_Lm16ESL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F63C8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26CreateBitmapsFromImageDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsISC_EENS_21DefaultRefDerefTraitsISC_EEEERKNS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSJ_INSA_INSB_15ShareableBitmapENSD_ISQ_EENSF_ISQ_EEEELm0ESK_Lm16ESL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F63C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebPage::CreateBitmapsFromImageData,WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3764;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v6, a3);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      result = IPC::ArgumentCoder<WebCore::ShareableBitmap,void>::encode(a1, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t std::optional<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      WTF::fastFree(v3, a2);
    }

    v4 = *a1;
    *a1 = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4, a2);
    }
  }

  return a1;
}

void IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,std::optional<WebCore::FloatSize>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,std::optional<WebCore::FloatSize>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 24) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,std::optional<WebCore::FloatSize>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a2, &v8);
  if (v9 == 1)
  {
    v4 = IPC::Decoder::decode<std::optional<WebCore::FloatSize>>(a2);
    if ((v5 & 0x100000000) != 0)
    {
      if (v9)
      {
        *a1 = v8;
        *(a1 + 8) = v4;
        *(a1 + 16) = v5;
        *(a1 + 24) = 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *a1 = 0;
      v6 = v9;
      *(a1 + 24) = 0;
      if (v6)
      {
        v7 = v8;
        v8 = 0;
        if (v7)
        {
          if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v7 + 2);
            (*(*v7 + 8))(v7);
          }
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15DecodeImageDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsISC_EENS_21DefaultRefDerefTraitsISC_EEEENSt3__18optionalINSB_9FloatSizeEEEONS_17CompletionHandlerIFvONS_6RefPtrINSB_15ShareableBitmapENSD_ISP_EENSF_ISP_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F63F0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15DecodeImageDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsISC_EENS_21DefaultRefDerefTraitsISC_EEEENSt3__18optionalINSB_9FloatSizeEEEONS_17CompletionHandlerIFvONS_6RefPtrINSB_15ShareableBitmapENSD_ISP_EENSF_ISP_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F63F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebPage::DecodeImageData,WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>>(uint64_t *a1, void *a2, WebCore::ShareableBitmap **a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3768;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,void>::encode<IPC::Encoder,WebCore::ShareableBitmap>(v6, a3);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&),WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::FloatSize>,WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &>(WebKit::WebPage *,void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&) WebKit::WebPage::*,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::FloatSize> &&,std::optional<WebCore::FloatSize><WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &> &&)::{lambda(WebKit::WebPage &&)#1}::operator()<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::FloatSize>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = (**a1 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7, a2, a3, a4, *(a1 + 16));
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28StartPlayingPredominantVideoENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F6418;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28StartPlayingPredominantVideoENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6418;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28StartPlayingPredominantVideoENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3883;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage63SimulateClickOverFirstMatchingTextInViewportWithUserInteractionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F6440;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage63SimulateClickOverFirstMatchingTextInViewportWithUserInteractionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6440;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage63SimulateClickOverFirstMatchingTextInViewportWithUserInteractionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3882;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage54TestProcessIncomingSyncMessagesWhenWaitingForSyncReplyEN6WebKit7WebPageES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6468;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage54TestProcessIncomingSyncMessagesWhenWaitingForSyncReplyEN6WebKit7WebPageES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6468;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage54TestProcessIncomingSyncMessagesWhenWaitingForSyncReplyEN6WebKit7WebPageES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage23SyncApplyAutocorrectionEN6WebKit7WebPageES8_FvRKNS_6StringESB_bONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6490;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage23SyncApplyAutocorrectionEN6WebKit7WebPageES8_FvRKNS_6StringESB_bONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6490;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage23SyncApplyAutocorrectionEN6WebKit7WebPageES8_FvRKNS_6StringESB_bONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage26ComputePagesForPrintingiOSEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS7_9PrintInfoEONS_17CompletionHandlerIFvyEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F64B8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage26ComputePagesForPrintingiOSEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS7_9PrintInfoEONS_17CompletionHandlerIFvyEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F64B8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage26ComputePagesForPrintingiOSEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS7_9PrintInfoEONS_17CompletionHandlerIFvyEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEE4callEy(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

WTF *IPC::ArgumentCoder<std::tuple<int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 3)
  {
    *(a1 + 2) = v3 + 1;
    if (v3)
    {
      v9 = *v3;
      v15 = 1;
      v14 = v9;
      return IPC::ArgumentCoder<std::tuple<int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,int>(a1, &v14, a2);
    }

    v12 = a2;
    v13 = a1;
  }

  else
  {
    v12 = a2;
    v13 = a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11);
        v4 = *v13;
        v2 = *(v13 + 1);
        goto LABEL_12;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

LABEL_12:
  *v13 = 0;
  *(v13 + 1) = 0;
  result = *(v13 + 3);
  if (result)
  {
    if (v2)
    {
      result = (*(*result + 16))(result, v4);
    }
  }

  *v12 = 0;
  v12[32] = 0;
  return result;
}

WTF *IPC::ArgumentCoder<std::tuple<int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,int>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v8 = result;
  v9 = v7;
  if (v7)
  {
    return IPC::ArgumentCoder<std::tuple<int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v8, a3);
  }

  *a3 = 0;
  a3[32] = 0;
  return result;
}

WTF *IPC::ArgumentCoder<std::tuple<int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::VectorArgumentCoder<true,unsigned char,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v13);
  if (v15 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v10), (v15)))
  {
    result = IPC::ArgumentCoder<std::tuple<int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, a3, &v13, a4);
    if (v15)
    {
      result = v13;
      if (v13)
      {
        v13 = 0;
        v14 = 0;
        return WTF::fastFree(result, v9);
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[32] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 4) & 1) != 0 && (*(a2 + 8) & 1) != 0 && (*(a3 + 16))
  {
    *a4 = *a1;
    *(a4 + 8) = *a2;
    *(a4 + 24) = 0;
    *(a4 + 16) = 0;
    result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a4 + 16, a3);
    *(a4 + 32) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage29BindRemoteAccessibilityFramesEN6WebKit7WebPageES8_FviNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvSI_iEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_iEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F64E0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage29BindRemoteAccessibilityFramesEN6WebKit7WebPageES8_FviNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvSI_iEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_iEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F64E0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage29BindRemoteAccessibilityFramesEN6WebKit7WebPageES8_FviNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvSI_iEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_iEE4callESI_i(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a1 + 8;
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v5, *a2, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, a3);
  v6 = *(v4 + 8);

  return IPC::Connection::sendMessageImpl(v6, v4, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage31GetStringSelectionForPasteboardEN6WebKit7WebPageES8_FvONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6508;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage31GetStringSelectionForPasteboardEN6WebKit7WebPageES8_FvONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6508;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage31GetStringSelectionForPasteboardEN6WebKit7WebPageES8_FvONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage29GetDataSelectionForPasteboardEN6WebKit7WebPageES8_FvNS_6StringEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6530;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage29GetDataSelectionForPasteboardEN6WebKit7WebPageES8_FvNS_6StringEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6530;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage29GetDataSelectionForPasteboardEN6WebKit7WebPageES8_FvNS_6StringEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, atomic_uint **a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage27ReadSelectionFromPasteboardEN6WebKit7WebPageES8_FvRKNS_6StringEONS_17CompletionHandlerIFvObEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6558;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage27ReadSelectionFromPasteboardEN6WebKit7WebPageES8_FvRKNS_6StringEONS_17CompletionHandlerIFvObEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6558;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage27ReadSelectionFromPasteboardEN6WebKit7WebPageES8_FvRKNS_6StringEONS_17CompletionHandlerIFvObEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, char *a2)
{
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage30ShouldDelayWindowOrderingEventEN6WebKit7WebPageES8_FvRKNS7_13WebMouseEventEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6580;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage30ShouldDelayWindowOrderingEventEN6WebKit7WebPageES8_FvRKNS7_13WebMouseEventEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F6580;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage30ShouldDelayWindowOrderingEventEN6WebKit7WebPageES8_FvRKNS7_13WebMouseEventEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::RenderAsTextFlag>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::RenderAsTextFlag>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v6);
  }

  *a2 = 0;
  a2[24] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::RenderAsTextFlag>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 7)
  {
    a1[2] = (v5 + 1);
    if (v5)
    {
      v15 = *v5;
      v16 = 1;
      return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::RenderAsTextFlag>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>(a3, &v15, a2, a1);
    }

    v13 = a2;
    v14 = a1;
  }

  else
  {
    v13 = a2;
    v14 = a1;
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v6 = *v14;
        v4 = v14[1];
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
  }

LABEL_12:
  *v14 = 0;
  v14[1] = 0;
  result = v14[3];
  if (result)
  {
    if (v4)
    {
      result = (*(*result + 16))(result, v6);
    }
  }

  *v13 = 0;
  v13[24] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::RenderAsTextFlag>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X0>)
{
  result = IPC::Decoder::decode<WTF::OptionSet<WebCore::RenderAsTextFlag>>(a4);
  if ((result & 0x10000) == 0)
  {
    v8 = 0;
    *a3 = 0;
LABEL_6:
    *(a3 + 24) = v8;
    return result;
  }

  if (*(a1 + 8) & 1) != 0 && (a2[1])
  {
    v9 = *a2;
    *a3 = *a1;
    *(a3 + 8) = v9;
    *(a3 + 16) = result;
    v8 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::RenderAsTextFlag>>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::RenderAsTextFlag>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v2;
      (*(*v6 + 16))(v6, v4);
      v2 = v8;
    }
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::RenderAsTextFlag>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 1)
  {
    *a1 = 0;
    a1[1] = 0;
    v15 = a1;
    v12 = a1[3];
    if (v12)
    {
      if (v1)
      {
        (*(*v12 + 16))(v12);
        v3 = *v15;
        v1 = v15[1];
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_12:
    *v15 = 0;
    v15[1] = 0;
    v13 = v15[3];
    if (v13 && v1)
    {
      (*(*v13 + 16))(v13, v3);
    }

    goto LABEL_13;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v15 = a1;
    goto LABEL_12;
  }

  v8 = *v2;
  if (v8 > 0x7FF)
  {
LABEL_13:
    v11 = 0;
    v10 = 0;
    v9 = 0;
    return v10 | v11 | v9;
  }

  v9 = v8 & 0x700;
  v10 = v8;
  v11 = 0x10000;
  return v10 | v11 | v9;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage26RenderTreeAsTextForTestingEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_16RenderAsTextFlagEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F65A8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage26RenderTreeAsTextForTestingEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_16RenderAsTextFlagEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F65A8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage26RenderTreeAsTextForTestingEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_16RenderAsTextFlagEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::LayerTreeAsTextOptions>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::LayerTreeAsTextOptions>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v6);
  }

  *a2 = 0;
  a2[24] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::LayerTreeAsTextOptions>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 7)
  {
    a1[2] = (v5 + 1);
    if (v5)
    {
      v15 = *v5;
      v16 = 1;
      return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::LayerTreeAsTextOptions>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>(a3, &v15, a2, a1);
    }

    v13 = a2;
    v14 = a1;
  }

  else
  {
    v13 = a2;
    v14 = a1;
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v6 = *v14;
        v4 = v14[1];
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
  }

LABEL_12:
  *v14 = 0;
  v14[1] = 0;
  result = v14[3];
  if (result)
  {
    if (v4)
    {
      result = (*(*result + 16))(result, v6);
    }
  }

  *v13 = 0;
  v13[24] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::LayerTreeAsTextOptions>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X0>)
{
  result = IPC::Decoder::decode<WTF::OptionSet<WebCore::LayerTreeAsTextOptions>>(a4);
  if ((result & 0x10000) == 0)
  {
    v8 = 0;
    *a3 = 0;
LABEL_6:
    *(a3 + 24) = v8;
    return result;
  }

  if (*(a1 + 8) & 1) != 0 && (a2[1])
  {
    v9 = *a2;
    *a3 = *a1;
    *(a3 + 8) = v9;
    *(a3 + 16) = result;
    v8 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::LayerTreeAsTextOptions>>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::LayerTreeAsTextOptions>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v2;
      (*(*v6 + 16))(v6, v4);
      v2 = v8;
    }
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::LayerTreeAsTextOptions>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 1)
  {
    *a1 = 0;
    a1[1] = 0;
    v15 = a1;
    v12 = a1[3];
    if (v12)
    {
      if (v1)
      {
        (*(*v12 + 16))(v12);
        v3 = *v15;
        v1 = v15[1];
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_12:
    *v15 = 0;
    v15[1] = 0;
    v13 = v15[3];
    if (v13 && v1)
    {
      (*(*v13 + 16))(v13, v3);
    }

    goto LABEL_13;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v15 = a1;
    goto LABEL_12;
  }

  v8 = *v2;
  if (v8 < 0)
  {
LABEL_13:
    v11 = 0;
    v10 = 0;
    v9 = 0;
    return v10 | v11 | v9;
  }

  v9 = v8 & 0x7F00;
  v10 = v8;
  v11 = 0x10000;
  return v10 | v11 | v9;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage25LayerTreeAsTextForTestingEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_22LayerTreeAsTextOptionsEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F65D0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage25LayerTreeAsTextForTestingEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_22LayerTreeAsTextOptionsEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F65D0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage25LayerTreeAsTextForTestingEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_22LayerTreeAsTextOptionsEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage19FrameTextForTestingEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F65F8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage19FrameTextForTestingEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F65F8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages7WebPage19FrameTextForTestingEN6WebKit7WebPageES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL>,void ()(std::optional<WebCore::RemoteUserInputEventData>&&)>(WebKit::WebPage *,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData>&&)> &&)::{lambda(void ()(std::optional<WebCore::RemoteUserInputEventData>&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL> &<std::optional<WebCore::RemoteUserInputEventData>&&>>(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(v2 + 40);
  *(a1 + 24) = *(v2 + 24);
  *(a1 + 40) = v4;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  (*(*v3 + 16))(v3, a1 + 24);
  (*(*v3 + 8))(v3);
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 8))();
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  return WTF::fastFree(a1, v5);
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL>,void ()(std::optional<WebCore::RemoteUserInputEventData>&&)>(WebKit::WebPage *,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData>&&)> &&)::{lambda(void ()(std::optional<WebCore::RemoteUserInputEventData>&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL> &<std::optional<WebCore::RemoteUserInputEventData>&&>>(WTF *this, void *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    (*(v3 + 8))(v3, a2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 8);
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&)>(WebKit::WebPage *,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int> &&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&)> &&)::{lambda(void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int> &<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&>>(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(a1 + 24) = v4;
  v6 = a1 + 24;
  *(a1 + 32) = v5;
  (*(*v3 + 16))(v3, a1 + 24);
  (*(*v3 + 8))(v3);
  v8 = *(v6 + 24);
  if (v8)
  {
    (*(v8 + 8))();
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  return WTF::fastFree(a1, v7);
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&)>(WebKit::WebPage *,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int> &&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&)> &&)::{lambda(void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int> &<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&>>(WTF *this, void *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    (*(v3 + 8))(v3, a2);
  }

  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZZN3IPC27callMemberFunctionCoroutineIN6WebKit7WebPageES2_FN3WTF9AwaitableINSt3__18optionalINS1_17FrameTreeNodeDataEEEEEvENS5_5tupleIJEEEFvOS8_EEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSF_E_clINSM_ISE_EEEENS3_4TaskESF__resume(void *a1)
{
  v2 = a1[53];
  WTF::Awaitable<std::optional<WebKit::FrameTreeNodeData>>::Promise<std::optional<WebKit::FrameTreeNodeData>>::result((a1 + 4), a1[3] + 16);
  (*(*v2 + 16))(v2, a1 + 4);
  (*(*v2 + 8))(v2);
  std::optional<WebKit::FrameTreeNodeData>::~optional((a1 + 4), v3);
  v5 = a1[52];
  if (v5)
  {
    (*(v5 + 8))();
  }

  v6 = a1[54];
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(a1, v4);
}

uint64_t _ZZN3IPC27callMemberFunctionCoroutineIN6WebKit7WebPageES2_FN3WTF9AwaitableINSt3__18optionalINS1_17FrameTreeNodeDataEEEEEvENS5_5tupleIJEEEFvOS8_EEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSF_E_clINSM_ISE_EEEENS3_4TaskESF__destroy(WTF *this, void *a2)
{
  v3 = *(this + 52);
  if (v3)
  {
    (*(v3 + 8))(v3, a2);
  }

  v4 = *(this + 54);
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 53);
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>,void ()(WebKit::DragInitiationResult&&)>(WebKit::WebPage *,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>> &&,WTF::CompletionHandler<void ()(WebKit::DragInitiationResult&&)> &&)::{lambda(void ()(WebKit::DragInitiationResult&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>> &<WebKit::DragInitiationResult&&>>(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 72);
  v4 = *(v2 + 40);
  *(a1 + 24) = *(v2 + 24);
  *(a1 + 40) = v4;
  *(v2 + 24) = 0;
  *(v2 + 48) = 0;
  (*(*v3 + 16))(v3, a1 + 24);
  (*(*v3 + 8))(v3);
  v6 = *(a1 + 64);
  if (v6)
  {
    (*(v6 + 8))();
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  return WTF::fastFree(a1, v5);
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>,void ()(WebKit::DragInitiationResult&&)>(WebKit::WebPage *,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>> &&,WTF::CompletionHandler<void ()(WebKit::DragInitiationResult&&)> &&)::{lambda(void ()(WebKit::DragInitiationResult&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>> &<WebKit::DragInitiationResult&&>>(WTF *this, void *a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    (*(v3 + 8))(v3, a2);
  }

  v4 = *(this + 10);
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

void sub_19DAA3E3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAA3EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *API::SecurityOrigin::create@<X0>(Object **__return_ptr a1@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = API::Object::newObject(0x30uLL, 18);
  WebCore::SecurityOriginData::isolatedCopy();
  API::Object::Object(v3);
  v3->var0 = &unk_1F10F67D0;
  LOBYTE(v3[1].var0) = 0;
  LOBYTE(v3[2].var1) = -1;
  v4 = v9;
  if (v9)
  {
    if (v9 == 255)
    {
      goto LABEL_4;
    }

    v3[1] = v7;
  }

  else
  {
    v5 = v7;
    v7 = 0;
    v3[1] = v5;
    LODWORD(v3[2].var0) = v8;
  }

  LOBYTE(v3[2].var1) = v4;
LABEL_4:
  *a1 = v3;
  return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v7);
}

{
  v10 = *MEMORY[0x1E69E9840];
  v3 = API::Object::newObject(0x30uLL, 18);
  WebCore::SecurityOriginData::isolatedCopy();
  API::Object::Object(v3);
  v3->var0 = &unk_1F10F67D0;
  LOBYTE(v3[1].var0) = 0;
  LOBYTE(v3[2].var1) = -1;
  v4 = v9;
  if (v9)
  {
    if (v9 == 255)
    {
      goto LABEL_4;
    }

    v3[1] = v7;
  }

  else
  {
    v5 = v7;
    v7 = 0;
    v3[1] = v5;
    LODWORD(v3[2].var0) = v8;
  }

  LOBYTE(v3[2].var1) = v4;
LABEL_4:
  *a1 = v3;
  return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v7);
}

void sub_19DAA4120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

id WebKit::wrapper<API::FrameHandle>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = WTF::checked_objc_cast<_WKFrameHandle>(*(*a1 + 8));
  *a2 = result;
  if (result)
  {

    return result;
  }

  return result;
}

void sub_19DAA423C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAA432C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAA4434(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAA46A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[4] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[4];
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAA47B4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAA4BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  _Block_release(v35);
  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v37);
  v38 = a12;
  a12 = 0;
  if (v38)
  {
    CFRelease(*(v38 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DAA4D34(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (v4)
  {
  }

  WebCore::Cookie::~Cookie(va, a2);
  v7 = *(v5 - 40);
  *(v5 - 40) = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DAA5288(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[4] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[4];
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAA53CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  _Block_release(v10);
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DAA54CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  _Block_release(v10);
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DAA56C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Block_release(0);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v13);
  }

  v14 = *(v11 - 40);
  *(v11 - 40) = 0;
  if (v14)
  {
    CFRelease(*(v14 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DAA5844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  _Block_release(v10);
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DAA5948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  _Block_release(v10);
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void *checkChallenge(NSURLAuthenticationChallenge *a1)
{
  v1 = objc_opt_class();
  result = objc_opt_class();
  if (v1 != result)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];

    return [v3 raise:v4 format:@"The challenge was not sent by the receiver."];
  }

  return result;
}

void sub_19DAA61D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, WTF::StringImpl *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CFTypeRef cf)
{
  v51 = cf;
  cf = 0;
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = a41;
  a41 = 0;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a37);
  v53 = a36;
  a36 = 0;
  if (v53)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a12);
  if (v49)
  {
    CFRelease(*(v49 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DAA65A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAA66E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  CFRelease(*(v10 + 24));
  _Unwind_Resume(a1);
}

void sub_19DAA699C(_Unwind_Exception *a1)
{
  CFRelease(*(v2 + 8));
  CFRelease(*(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_19DAA6AC0(_Unwind_Exception *a1)
{
  CFRelease(*(v2 + 8));
  CFRelease(*(v1 + 8));
  CFRelease(*(v3 + 8));
  _Unwind_Resume(a1);
}

void sub_19DAA6B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void API::SecurityOrigin::~SecurityOrigin(API::SecurityOrigin *this)
{
  *this = &unk_1F10F67D0;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 16);
}

{
  *this = &unk_1F10F67D0;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 16);

  JUMPOUT(0x19EB14CF0);
}

void WKHTTPCookieStoreObserver::~WKHTTPCookieStoreObserver(WKHTTPCookieStoreObserver *this)
{
  *this = &unk_1F10F6640;
  objc_destroyWeak(this + 3);
  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  *this = &unk_1F10F6640;
  objc_destroyWeak(this + 3);
  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);

    bmalloc::api::tzoneFree(this, v3);
  }

  else
  {
    __break(0xC471u);
  }
}

void WKHTTPCookieStoreObserver::cookiesDidChange(id *this, API::HTTPCookieStore *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a2 + 1);
    if (v3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }

      v4 = v3;
    }

    [WeakRetained cookiesDidChangeInCookieStore:v3];
    if (v3)
    {
    }
  }

  if (WeakRetained)
  {
  }
}

void sub_19DAA6E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void API::NavigationAction::~NavigationAction(API::NavigationAction *this, WTF::StringImpl *a2)
{
  v3 = *(this + 402);
  *(this + 402) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  WebKit::NavigationActionData::~NavigationActionData((this + 304), a2);
  v5 = *(this + 36);
  *(this + 36) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  v6 = *(this + 30);
  *(this + 30) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(this + 29);
  *(this + 29) = 0;
  if (v7)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((this + 40));
  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  v11 = *(this + 2);
  *(this + 2) = 0;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }
}

uint64_t WTF::checked_objc_cast<_WKFrameHandle>(uint64_t a1)
{
  if (!a1 || (WTF::ObjCTypeCastTraits<_WKFrameHandle>::isType(a1) & 1) != 0)
  {
    return a1;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

void *coreCookiesToNSCookies(uint64_t *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 3)];
  v3 = *(a1 + 3);
  if (v3)
  {
    v4 = *a1;
    v5 = 144 * v3;
    do
    {
      v6 = WebCore::Cookie::operator NSHTTPCookie *();
      if (v6)
      {
        [v2 addObject:v6];
      }

      v4 += 144;
      v5 -= 144;
    }

    while (v5);
  }

  if (v2)
  {
    v7 = v2;
  }

  return v2;
}

void sub_19DAA7100(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t **WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t **result, const WebCore::Cookie *a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  if (a3 < 0x1C71C72)
  {
    v5 = 144 * a3;
    v6 = WTF::fastMalloc((9 * a3), (144 * a3));
    *(v3 + 2) = v5 / 0x90;
    *v3 = v6;
    v7 = *(v3 + 3);
    do
    {
      WebCore::Cookie::Cookie(&(*v3)[18 * v7], a2);
      v7 = *(v3 + 3) + 1;
      *(v3 + 3) = v7;
      a2 = (a2 + 144);
      v5 -= 144;
    }

    while (v5);
    return v3;
  }

  __break(0xC471u);
  return result;
}

void sub_19DAA71C0(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

WebCore::Cookie *WebCore::Cookie::Cookie(WebCore::Cookie *this, const WebCore::Cookie *a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 1) = v5;
  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 2) = v6;
  v7 = *(a2 + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 3) = v7;
  v8 = *(a2 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 4) = v8;
  v9 = *(a2 + 40);
  *(this + 51) = *(a2 + 51);
  *(this + 40) = v9;
  v10 = *(a2 + 9);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(this + 9) = v10;
  v11 = *(a2 + 10);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(this + 10) = v11;
  v12 = *(a2 + 88);
  *(this + 104) = *(a2 + 104);
  *(this + 88) = v12;
  WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 120, a2 + 120, v11);
  *(this + 136) = *(a2 + 136);
  return this;
}

void sub_19DAA72CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = v2[10];
  v2[10] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = v2[9];
  v2[9] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = v2[4];
  v2[4] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = v2[3];
  v2[3] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = v2[2];
  v2[2] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = v2[1];
  v2[1] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *v2;
  *v2 = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = (v4 << (6 * *(v3 - 12) >= (2 * v4)));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = v4 - 1;
  v9[3] = v4;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            if (v26[4] == 1)
            {
              (*(*v26 + 8))(v26);
            }

            else
            {
              --v26[4];
            }
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            if (v28[4] == 1)
            {
              (*(*v28 + 8))(v28);
            }

            else
            {
              --v28[4];
            }
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            if (v15[4] == 1)
            {
              (*(*v15 + 8))(v15);
            }

            else
            {
              --v15[4];
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t WebKit::WebPageProxy::didReceiveSyncMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v491 = *MEMORY[0x1E69E9840];
  WebKit::WebProcessProxy::fromConnection(buf, v8, v8);
  v11 = *(*buf + 1104);
  v12 = *(*buf + 1112);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((*buf + 16), v13);
  CFRetain(v10[1]);
  v21 = *(v7 + 50);
  v22 = &v468;
  v23 = buf;
  switch(*(v7 + 50))
  {
    case 0x1023:
      *buf = IPC::Decoder::decode<std::tuple<WebCore::IntPoint>>(v7);
      buf[8] = v24;
      if ((v24 & 1) == 0)
      {
        goto LABEL_761;
      }

      v25 = *v5;
      *v5 = 0;
      while (1)
      {
        v26 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v27 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v27 == v26)
        {
          goto LABEL_389;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_389:
      v249 = WTF::fastMalloc(v26, 0x18);
      *v249 = &unk_1F10F7018;
      v249[1] = v25;
      v249[2] = v9;
      *&v468 = v249;
      WebKit::WebPageProxy::accessibilityScreenToRootView(v10, buf, &v468);
      v88 = v468;
      *&v468 = 0;
      if (!v88)
      {
        goto LABEL_761;
      }

      goto LABEL_593;
    case 0x1024:
      IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(v7, buf);
      if ((buf[16] & 1) == 0)
      {
        v351 = *v7;
        v352 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v353 = *(v7 + 24);
        if (!v353)
        {
          goto LABEL_761;
        }

        if (!v352)
        {
          goto LABEL_761;
        }

        (*(*v353 + 16))(v353, v351);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v119 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v120 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v120, v119 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v120 == v119)
        {
          goto LABEL_484;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_484:
      v286 = WTF::fastMalloc(v119, 0x18);
      *v286 = &unk_1F10F7108;
      v286[1] = v7;
      v286[2] = v9;
      *&v468 = v286;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::backForwardGoToItem(v10, *buf, *&buf[8], &v468);
      v88 = v468;
      *&v468 = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x1025:
      v97 = *(v7 + 8);
      v98 = ((*(v7 + 16) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v99 = v98 - *v7;
      v100 = v97 >= v99;
      v101 = v97 - v99;
      if (!v100 || v101 <= 3)
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        v407 = *(v7 + 24);
        if (v407)
        {
          if (v97)
          {
            (*(*v407 + 16))(v407);
            v97 = *(v7 + 8);
          }
        }

        else
        {
          v97 = 0;
        }

        goto LABEL_724;
      }

      *(v7 + 16) = v98 + 1;
      if (!v98)
      {
LABEL_724:
        *v7 = 0;
        *(v7 + 8) = 0;
        v408 = *(v7 + 24);
        if (v408 && v97)
        {
          (*(*v408 + 16))(v408);
        }

LABEL_725:
        v409 = *v7;
        v410 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v411 = *(v7 + 24);
        if (v411 && v410)
        {
          (*(*v411 + 16))(v411, v409);
        }

LABEL_726:
        v226 = 1;
        goto LABEL_762;
      }

      v103 = *v98;
      v104 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v7);
      if ((v105 & 1) == 0)
      {
        goto LABEL_725;
      }

      v106 = v104;
      v107 = *v5;
      *v5 = 0;
      while (1)
      {
        v108 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v109 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v109, v108 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v109 == v108)
        {
          goto LABEL_551;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_551:
      v306 = WTF::fastMalloc(v108, 0x18);
      *v306 = &unk_1F10F7130;
      v306[1] = v107;
      v306[2] = v9;
      *buf = v306;
      WebKit::WebPageProxy::backForwardItemAtIndex(v10, v103, v106, buf);
      v88 = *buf;
      *buf = 0;
      if (!v88)
      {
        goto LABEL_761;
      }

LABEL_593:
      (*(*v88 + 8))(v88);
      goto LABEL_761;
    case 0x1026:
      IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(v7, buf);
      if ((buf[16] & 1) == 0)
      {
        v348 = *v7;
        v349 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v350 = *(v7 + 24);
        if (!v350)
        {
          goto LABEL_761;
        }

        if (!v349)
        {
          goto LABEL_761;
        }

        (*(*v350 + 16))(v350, v348);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v115 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v116 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v116, v115 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v116 == v115)
        {
          goto LABEL_480;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_480:
      v285 = WTF::fastMalloc(v115, 0x18);
      *v285 = &unk_1F10F7158;
      v285[1] = v7;
      v285[2] = v9;
      *&v468 = v285;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::backForwardListContainsItem(v10, *buf, *&buf[8], &v468);
      v88 = v468;
      *&v468 = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x1027:
      v71 = *v5;
      *v5 = 0;
      while (1)
      {
        v72 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v73 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v73, v72 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v73 == v72)
        {
          goto LABEL_114;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_114:
      v87 = WTF::fastMalloc(v72, 0x18);
      *v87 = &unk_1F10F7180;
      v87[1] = v71;
      v87[2] = v9;
      *buf = v87;
      WebKit::WebPageProxy::backForwardListCounts(v10, buf);
      v88 = *buf;
      *buf = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x1028:
      if ((v11 & 0x4000000000000000) == 0)
      {
        goto LABEL_336;
      }

      IPC::ArgumentCoder<std::tuple<int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(v7, buf);
      if ((v439[0] & 1) == 0)
      {
        v374 = *v7;
        v375 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v376 = *(v7 + 24);
        if (!v376)
        {
          goto LABEL_761;
        }

        if (!v375)
        {
          goto LABEL_761;
        }

        (*(*v376 + 16))(v376, v374);
        if ((v439[0] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v141 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v142 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v142, v141 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v142 == v141)
        {
          goto LABEL_579;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_579:
      v320 = WTF::fastMalloc(v141, 0x18);
      *v320 = &unk_1F10F7540;
      v320[1] = v7;
      v320[2] = v9;
      *&v468 = v320;
      if ((v439[0] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::bindRemoteAccessibilityFrames(v10, *buf, *&buf[8], &buf[16], &v468);
      v321 = v468;
      *&v468 = 0;
      if (v321)
      {
        (*(*v321 + 8))(v321);
      }

      if ((v439[0] & 1) == 0)
      {
        goto LABEL_761;
      }

      v242 = *&buf[16];
      if (!*&buf[16])
      {
        goto LABEL_761;
      }

      *&buf[16] = 0;
      *&buf[24] = 0;
      goto LABEL_585;
    case 0x1029:
      v166 = IPC::Decoder::decode<std::tuple<WebCore::AudioSessionMayResume>>(v7);
      if (v166 < 0x100u)
      {
        goto LABEL_726;
      }

      v167 = v166;
      v168 = *v5;
      *v5 = 0;
      while (1)
      {
        v169 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v170 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v170, v169 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v170 == v169)
        {
          goto LABEL_394;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_394:
      v251 = WTF::fastMalloc(v169, 0x18);
      *v251 = &unk_1F10F71D0;
      v251[1] = v168;
      v251[2] = v9;
      *buf = v251;
      WebKit::WebPageProxy::canUndoRedo(v10, v167 & 1, buf);
      goto LABEL_395;
    case 0x102A:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(v7, buf);
      if ((buf[8] & 1) == 0)
      {
        v334 = *v7;
        v335 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v336 = *(v7 + 24);
        if (!v336)
        {
          goto LABEL_761;
        }

        if (!v335)
        {
          goto LABEL_761;
        }

        (*(*v336 + 16))(v336, v334);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v117 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v118 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v118, v117 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v118 == v117)
        {
          goto LABEL_496;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_496:
      v290 = WTF::fastMalloc(v117, 0x18);
      *v290 = &unk_1F10F72C0;
      v290[1] = v7;
      v290[2] = v9;
      *&v468 = v290;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::checkGrammarOfString(v10, buf, &v468);
      v289 = v468;
      *&v468 = 0;
      if (v289)
      {
        goto LABEL_506;
      }

      goto LABEL_507;
    case 0x102B:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(v7, buf);
      if ((buf[8] & 1) == 0)
      {
        v337 = *v7;
        v338 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v339 = *(v7 + 24);
        if (!v339)
        {
          goto LABEL_761;
        }

        if (!v338)
        {
          goto LABEL_761;
        }

        (*(*v339 + 16))(v339, v337);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v179 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v180 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v180, v179 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v180 == v179)
        {
          goto LABEL_500;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_500:
      v291 = WTF::fastMalloc(v179, 0x18);
      *v291 = &unk_1F10F7298;
      v291[1] = v7;
      v291[2] = v9;
      *&v468 = v291;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::checkSpellingOfString(v10, buf, &v468);
      v289 = v468;
      *&v468 = 0;
      if (v289)
      {
        goto LABEL_506;
      }

      goto LABEL_507;
    case 0x102C:
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, &v468);
      if ((BYTE8(v468) & 1) == 0)
      {
        v382 = *v7;
        v383 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v384 = *(v7 + 24);
        if (!v384)
        {
          goto LABEL_760;
        }

        if (!v383)
        {
          goto LABEL_760;
        }

        (*(*v384 + 16))(v384, v382);
        if ((BYTE8(v468) & 1) == 0)
        {
          goto LABEL_760;
        }
      }

      v82 = IPC::Decoder::decode<WTF::OptionSet<WebCore::TextCheckingType>>(v7);
      v83 = v82;
      if ((v82 & 0x100) == 0)
      {
        goto LABEL_106;
      }

      v307 = *(v7 + 8);
      v308 = ((*(v7 + 16) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v35 = *v7;
      v309 = v308 - *v7;
      v100 = v307 >= v309;
      v310 = v307 - v309;
      if (!v100 || v310 <= 3)
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        v417 = *(v7 + 24);
        if (v417)
        {
          if (v307)
          {
            (*(*v417 + 16))(v417);
            v35 = *v7;
            v307 = *(v7 + 8);
LABEL_746:
            *v7 = 0;
            *(v7 + 8) = 0;
            v418 = *(v7 + 24);
            if (v418 && v307)
            {
              (*(*v418 + 16))(v418);
            }

LABEL_106:
            v84 = 0;
            buf[0] = 0;
            goto LABEL_561;
          }
        }

        else
        {
          v307 = 0;
        }

        v35 = 0;
        goto LABEL_746;
      }

      *(v7 + 16) = v308 + 1;
      if (!v308)
      {
        goto LABEL_746;
      }

      if ((BYTE8(v468) & 1) == 0)
      {
        goto LABEL_611;
      }

      v21 = *v308;
      v312 = v468;
      *&v468 = 0;
      *buf = v312;
      buf[8] = v82;
      *&buf[12] = v21;
      v84 = 1;
LABEL_561:
      buf[16] = v84;
      if (BYTE8(v468))
      {
        v313 = v468;
        *&v468 = 0;
        if (v313)
        {
          if (atomic_fetch_add_explicit(v313, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v313, v35);
          }
        }
      }

      if ((v84 & 1) == 0)
      {
        goto LABEL_760;
      }

      v314 = *v5;
      *v5 = 0;
      while (1)
      {
        v315 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v316 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v316, v315 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v316 == v315)
        {
          goto LABEL_571;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_571:
      v317 = WTF::fastMalloc(v315, 0x18);
      *v317 = &unk_1F10F7270;
      v317[1] = v314;
      v317[2] = v9;
      *&v468 = v317;
      WebKit::WebPageProxy::checkTextOfParagraph(v10, buf, v83, v21, &v468);
      v318 = v468;
      *&v468 = 0;
      if (v318)
      {
        (*(*v318 + 8))(v318);
      }

      if (buf[16])
      {
        goto LABEL_508;
      }

      goto LABEL_761;
    case 0x102D:
      IPC::ArgumentCoder<WebCore::WindowFeatures,void>::decode(v7, v430);
      if ((v435 & 1) == 0)
      {
        v360 = *v7;
        v361 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v362 = *(v7 + 24);
        if (!v362 || !v361 || ((*(*v362 + 16))(v362, v360), (v435 & 1) == 0))
        {
          buf[0] = 0;
          v467 = 0;
          goto LABEL_267;
        }
      }

      IPC::ArgumentCoder<WebKit::NavigationActionData,void>::decode(v7, v174, v175);
      if (v490 & 1) != 0 || (v35 = *v7, v343 = *(v7 + 8), *v7 = 0, *(v7 + 8) = 0, (v344 = *(v7 + 24)) != 0) && v343 && ((*(*v344 + 16))(v344, v35), (v490))
      {
        if ((v435 & 1) == 0)
        {
          goto LABEL_611;
        }

        *buf = *v430;
        *&buf[16] = v431;
        *v439 = v432[0];
        *&v439[10] = *(v432 + 10);
        v440 = v433;
        v176 = v434;
        v433 = 0;
        v434 = 0;
        v441 = v176;
        WebKit::NavigationActionData::NavigationActionData(v442, &v468);
        v467 = 1;
        if (v490)
        {
          WebKit::NavigationActionData::~NavigationActionData(&v468, v35);
        }
      }

      else
      {
        buf[0] = 0;
        v467 = 0;
      }

      if ((v435 & 1) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_612;
    case 0x102E:
      IPC::Decoder::decode<std::tuple<WebKit::NavigationActionData>>(v7, buf, v14, v15);
      if (v466 != 1)
      {
        goto LABEL_761;
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v69 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v70 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v70, v69 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v70 == v69)
        {
          goto LABEL_377;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_377:
      v244 = WTF::fastMalloc(v69, 0x18);
      *v244 = &unk_1F10F70B8;
      v244[1] = v7;
      v244[2] = v9;
      *&v468 = v244;
      if ((v466 & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::decidePolicyForNavigationActionSync(v10, v9, buf, &v468);
      v246 = v468;
      *&v468 = 0;
      if (v246)
      {
        (*(*v246 + 8))(v246);
      }

      if (v466)
      {
        WebKit::NavigationActionData::~NavigationActionData(buf, v245);
      }

      goto LABEL_761;
    case 0x102F:
      v76 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v7);
      if ((v77 & 1) == 0)
      {
        goto LABEL_726;
      }

      v78 = v76;
      v79 = *v5;
      *v5 = 0;
      while (1)
      {
        v80 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v81 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v81, v80 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v81 == v80)
        {
          goto LABEL_383;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_383:
      v247 = WTF::fastMalloc(v80, 0x18);
      *v247 = &unk_1F10F7388;
      v247[1] = v79;
      v247[2] = v9;
      *buf = v247;
      WebKit::WebPageProxy::dictationAlternatives(v10, v78, buf);
      v88 = *buf;
      *buf = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x1030:
      v146 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v7);
      if ((v147 & 1) == 0)
      {
        goto LABEL_760;
      }

      v148 = v146;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, &v436);
      if ((v437 & 1) == 0)
      {
        v390 = *v7;
        v391 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v392 = *(v7 + 24);
        if (!v392)
        {
          goto LABEL_760;
        }

        if (!v391)
        {
          goto LABEL_760;
        }

        (*(*v392 + 16))(v392, v390);
        if ((v437 & 1) == 0)
        {
          goto LABEL_760;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, v430);
      if ((v430[1] & 1) == 0)
      {
        v35 = *v7;
        v396 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v397 = *(v7 + 24);
        if (!v397 || !v396 || ((*(*v397 + 16))(v397, v35), (v430[1] & 1) == 0))
        {
          v159 = 0;
          buf[0] = 0;
          LOBYTE(v440) = 0;
          goto LABEL_243;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, &v468);
      if ((BYTE8(v468) & 1) == 0)
      {
        v35 = *v7;
        v398 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v399 = *(v7 + 24);
        if (!v399 || !v398 || ((*(*v399 + 16))(v399, v35), (BYTE8(v468) & 1) == 0))
        {
          v159 = 0;
          buf[0] = 0;
          LOBYTE(v440) = 0;
          goto LABEL_239;
        }
      }

      v149 = *(v7 + 8);
      v150 = ((*(v7 + 16) + 7) & 0xFFFFFFFFFFFFFFF8);
      v35 = *v7;
      v151 = v150 - *v7;
      v100 = v149 >= v151;
      v152 = v149 - v151;
      if (!v100 || v152 <= 7)
      {
        goto LABEL_738;
      }

      *(v7 + 16) = v150 + 1;
      if (!v150)
      {
        goto LABEL_741;
      }

      v23 = *v150;
      v153 = ((v150 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v149 < v153 - v35 || v149 - (v153 - v35) <= 7)
      {
        goto LABEL_738;
      }

      *(v7 + 16) = v153 + 1;
      if (!v153)
      {
        goto LABEL_741;
      }

      v21 = *v153;
      v154 = ((v153 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v149 < v154 - v35 || v149 - (v154 - v35) <= 7)
      {
        goto LABEL_738;
      }

      *(v7 + 16) = v154 + 1;
      if (!v154)
      {
        goto LABEL_741;
      }

      v22 = *v154;
      v155 = ((v154 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v149 < v155 - v35 || v149 - (v155 - v35) <= 7)
      {
LABEL_738:
        *v7 = 0;
        *(v7 + 8) = 0;
        v415 = *(v7 + 24);
        if (v415)
        {
          if (v149)
          {
            (*(*v415 + 16))(v415);
            v35 = *v7;
            v149 = *(v7 + 8);
LABEL_741:
            *v7 = 0;
            *(v7 + 8) = 0;
            v416 = *(v7 + 24);
            if (v416 && v149)
            {
              (*(*v416 + 16))(v416);
            }

            v159 = 0;
            buf[0] = 0;
            goto LABEL_235;
          }
        }

        else
        {
          v149 = 0;
        }

        v35 = 0;
        goto LABEL_741;
      }

      *(v7 + 16) = v155 + 1;
      if (!v155)
      {
        goto LABEL_741;
      }

      if ((v437 & 1) == 0 || (v430[1] & 1) == 0)
      {
        goto LABEL_611;
      }

      v12 = *v155;
      v156 = v436;
      v436 = 0;
      *buf = v148;
      *&buf[8] = v156;
      v157 = v430[0];
      v430[0] = 0;
      v158 = v468;
      *&v468 = 0;
      *&buf[16] = v157;
      *&buf[24] = v158;
      *v439 = v23;
      *&v439[8] = v21;
      v159 = 1;
      *&v439[16] = v22;
      *&v439[24] = v12;
LABEL_235:
      LOBYTE(v440) = v159;
      if (BYTE8(v468))
      {
        v160 = v468;
        *&v468 = 0;
        if (v160)
        {
          if (atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v160, v35);
          }
        }
      }

LABEL_239:
      if (v430[1])
      {
        v161 = v430[0];
        v430[0] = 0;
        if (v161)
        {
          if (atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v161, v35);
          }
        }
      }

LABEL_243:
      if (v437)
      {
        v162 = v436;
        v436 = 0;
        if (v162)
        {
          if (atomic_fetch_add_explicit(v162, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v162, v35);
          }
        }
      }

      if ((v159 & 1) == 0)
      {
        goto LABEL_760;
      }

      v163 = *v5;
      *v5 = 0;
      while (1)
      {
        v164 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v165 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v165, v164 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v165 == v164)
        {
          goto LABEL_468;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_468:
      v280 = WTF::fastMalloc(v164, 0x18);
      *v280 = &unk_1F10F7248;
      v280[1] = v163;
      v280[2] = v9;
      *&v468 = v280;
      WebKit::WebPageProxy::exceededDatabaseQuota(v10, *buf, &buf[8], &buf[16], &buf[24], v23, v21, v22, v12, &v468);
      v281 = v468;
      *&v468 = 0;
      if (v281)
      {
        (*(*v281 + 8))(v281);
      }

      if (v440)
      {
        v282 = *&buf[24];
        *&buf[24] = 0;
        if (v282 && atomic_fetch_add_explicit(v282, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v282, v257);
        }

        v283 = *&buf[16];
        *&buf[16] = 0;
        if (v283 && atomic_fetch_add_explicit(v283, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v283, v257);
        }

LABEL_477:
        v284 = *&buf[8];
        *&buf[8] = 0;
        if (v284)
        {
LABEL_509:
          if (atomic_fetch_add_explicit(v284, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v284, v257);
          }
        }
      }

LABEL_761:
      v226 = 1;
      if (v10)
      {
LABEL_762:
        CFRelease(v10[1]);
      }

      return v226;
    case 0x1031:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(v7, buf);
      if ((buf[8] & 1) == 0)
      {
        v331 = *v7;
        v332 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v333 = *(v7 + 24);
        if (!v333)
        {
          goto LABEL_761;
        }

        if (!v332)
        {
          goto LABEL_761;
        }

        (*(*v333 + 16))(v333, v331);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v64 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v65 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v65, v64 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v65 == v64)
        {
          goto LABEL_492;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_492:
      v288 = WTF::fastMalloc(v64, 0x18);
      *v288 = &unk_1F10F7338;
      v288[1] = v7;
      v288[2] = v9;
      *&v468 = v288;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::executeSavedCommandBySelector(v10, v9, buf, &v468);
      v289 = v468;
      *&v468 = 0;
      if (v289)
      {
        goto LABEL_506;
      }

      goto LABEL_507;
    case 0x1032:
      v110 = IPC::Decoder::decode<std::tuple<WebCore::AudioSessionMayResume>>(v7);
      if (v110 < 0x100u)
      {
        goto LABEL_726;
      }

      v111 = v110;
      v112 = *v5;
      *v5 = 0;
      while (1)
      {
        v113 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v114 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v114, v113 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v114 == v113)
        {
          goto LABEL_386;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_386:
      v248 = WTF::fastMalloc(v113, 0x18);
      *v248 = &unk_1F10F71F8;
      v248[1] = v112;
      v248[2] = v9;
      *buf = v248;
      WebKit::WebPageProxy::executeUndoRedo(v10, v111 & 1, buf);
      v88 = *buf;
      *buf = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x1033:
      if ((v11 & 0x4000000000000000) == 0)
      {
        goto LABEL_336;
      }

      v55 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(v7);
      if ((v56 & 1) == 0)
      {
        goto LABEL_726;
      }

      v57 = v55;
      v58 = *v5;
      *v5 = 0;
      while (1)
      {
        v59 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v60 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v60, v59 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v60 == v59)
        {
          goto LABEL_592;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_592:
      v323 = WTF::fastMalloc(v59, 0x18);
      *v323 = &unk_1F10F74F0;
      v323[1] = v58;
      v323[2] = v9;
      *buf = v323;
      WebKit::WebPageProxy::frameTextForTesting(v10, v57, buf);
      v88 = *buf;
      *buf = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x1034:
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, v430);
      if ((v430[1] & 1) == 0)
      {
        v385 = *v7;
        v386 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v387 = *(v7 + 24);
        if (!v387)
        {
          goto LABEL_760;
        }

        if (!v386)
        {
          goto LABEL_760;
        }

        (*(*v387 + 16))(v387, v385);
        if ((v430[1] & 1) == 0)
        {
          goto LABEL_760;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, &v468);
      if ((BYTE8(v468) & 1) == 0)
      {
        v35 = *v7;
        v388 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v389 = *(v7 + 24);
        if (!v389 || !v388 || ((*(*v389 + 16))(v389, v35), (BYTE8(v468) & 1) == 0))
        {
          v131 = 0;
          buf[0] = 0;
          buf[24] = 0;
          goto LABEL_187;
        }
      }

      v125 = *(v7 + 8);
      v126 = ((*(v7 + 16) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v35 = *v7;
      v127 = v126 - *v7;
      v100 = v125 >= v127;
      v128 = v125 - v127;
      if (v100 && v128 > 3)
      {
        *(v7 + 16) = v126 + 1;
        if (v126)
        {
          if ((v430[1] & 1) == 0)
          {
            goto LABEL_611;
          }

          v23 = *v126;
          v130 = v430[0];
          v430[0] = 0;
          *buf = v130;
          *&buf[8] = v468;
          *&buf[16] = v23;
          v131 = 1;
          buf[24] = 1;
LABEL_187:
          if (v430[1])
          {
            v132 = v430[0];
            v430[0] = 0;
            if (v132)
            {
              if (atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v132, v35);
              }
            }
          }

          if (v131)
          {
            v133 = *v5;
            *v5 = 0;
            while (1)
            {
              v134 = *v9;
              if ((*v9 & 1) == 0)
              {
                break;
              }

              v135 = *v9;
              atomic_compare_exchange_strong_explicit(v9, &v135, v134 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v135 == v134)
              {
                goto LABEL_432;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_432:
            v266 = WTF::fastMalloc(v134, 0x18);
            *v266 = &unk_1F10F7310;
            v266[1] = v133;
            v266[2] = v9;
            *&v468 = v266;
            WebKit::WebPageProxy::getGuessesForWord(v10, buf, &buf[8], v23, &v468);
            v267 = v468;
            *&v468 = 0;
            if (v267)
            {
              (*(*v267 + 8))(v267);
            }

            if (buf[24])
            {
              v268 = *&buf[8];
              *&buf[8] = 0;
              if (v268 && atomic_fetch_add_explicit(v268, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v268, v257);
              }

LABEL_508:
              v284 = *buf;
              *buf = 0;
              if (v284)
              {
                goto LABEL_509;
              }
            }

            goto LABEL_761;
          }

LABEL_760:
          v426 = *v7;
          v427 = *(v7 + 8);
          *v7 = 0;
          *(v7 + 8) = 0;
          v428 = *(v7 + 24);
          if (v428 && v427)
          {
            (*(*v428 + 16))(v428, v426);
          }

          goto LABEL_761;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        v412 = *(v7 + 24);
        if (!v412)
        {
          v125 = 0;
LABEL_731:
          v35 = 0;
          goto LABEL_732;
        }

        if (!v125)
        {
          goto LABEL_731;
        }

        (*(*v412 + 16))(v412);
        v35 = *v7;
        v125 = *(v7 + 8);
      }

LABEL_732:
      *v7 = 0;
      *(v7 + 8) = 0;
      v413 = *(v7 + 24);
      if (v413 && v125)
      {
        (*(*v413 + 16))(v413);
      }

      buf[0] = 0;
      buf[24] = 0;
      if (BYTE8(v468))
      {
        v414 = v468;
        *&v468 = 0;
        if (v414)
        {
          if (atomic_fetch_add_explicit(v414, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v414, v35);
          }
        }
      }

      v131 = 0;
      goto LABEL_187;
    case 0x1035:
      v171 = *v5;
      *v5 = 0;
      while (1)
      {
        v172 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v173 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v173, v172 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v173 == v172)
        {
          goto LABEL_298;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_298:
      v198 = WTF::fastMalloc(v172, 0x18);
      *v198 = &unk_1F10F7360;
      v198[1] = v171;
      v198[2] = v9;
      *buf = v198;
      WebKit::WebPageProxy::getIsSpeaking(v10, buf);
      goto LABEL_395;
    case 0x1036:
      v205 = *v5;
      *v5 = 0;
      while (1)
      {
        v206 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v207 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v207, v206 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v207 == v206)
        {
          goto LABEL_334;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_334:
      v220 = WTF::fastMalloc(v206, 0x18);
      *v220 = &unk_1F10F6F28;
      v220[1] = v205;
      v220[2] = v9;
      *buf = v220;
      WebKit::WebPageProxy::getMenuBarIsVisible(v10, buf, v221);
      goto LABEL_395;
    case 0x1037:
      v138 = *v5;
      *v5 = 0;
      while (1)
      {
        v139 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v140 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v140, v139 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v140 == v139)
        {
          goto LABEL_278;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_278:
      v181 = WTF::fastMalloc(v139, 0x18);
      *v181 = &unk_1F10F6F50;
      v181[1] = v138;
      v181[2] = v9;
      *buf = v181;
      WebKit::WebPageProxy::getStatusBarIsVisible(v10, buf, v182);
      goto LABEL_395;
    case 0x1038:
      v143 = *v5;
      *v5 = 0;
      while (1)
      {
        v144 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v145 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v145, v144 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v145 == v144)
        {
          goto LABEL_280;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_280:
      v183 = WTF::fastMalloc(v144, 0x18);
      *v183 = &unk_1F10F6F00;
      v183[1] = v143;
      v183[2] = v9;
      *buf = v183;
      WebKit::WebPageProxy::getToolbarsAreVisible(v10, buf, v184);
      goto LABEL_395;
    case 0x1039:
      v199 = *v5;
      *v5 = 0;
      while (1)
      {
        v200 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v201 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v201, v200 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v201 == v200)
        {
          goto LABEL_304;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_304:
      v202 = WTF::fastMalloc(v200, 0x18);
      *v202 = &unk_1F10F6F78;
      v202[1] = v199;
      v202[2] = v9;
      *buf = v202;
      WebKit::WebPageProxy::getWindowFrame(v10, buf);
      v88 = *buf;
      *buf = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x103A:
      IPC::Decoder::decode<std::tuple<WTF::String,WebKit::UserData>>(buf, v7);
      if (buf[16] != 1)
      {
        goto LABEL_761;
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v211 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v212 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v212, v211 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v212 == v211)
        {
          goto LABEL_415;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_415:
      v256 = WTF::fastMalloc(v211, 0x18);
      *v256 = &unk_1F10F7428;
      v256[1] = v7;
      v256[2] = v9;
      *&v468 = v256;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::handleSynchronousMessage(v10, v9, buf, &buf[8], &v468);
      v258 = v468;
      *&v468 = 0;
      if (v258)
      {
        (*(*v258 + 8))(v258);
      }

      if ((buf[16] & 1) == 0)
      {
        goto LABEL_761;
      }

      v259 = *&buf[8];
      *&buf[8] = 0;
      if (v259)
      {
        CFRelease(*(v259 + 8));
      }

      goto LABEL_508;
    case 0x103B:
      IPC::Decoder::decode<WebKit::EditorState>(v7, &v468);
      if (v489 == 1)
      {
        IPC::ArgumentCoder<WebKit::KeyEventInterpretationContext,void>::decode(v7, v430);
        if (v432[0] & 1) != 0 || (v35 = *v7, v372 = *(v7 + 8), *v7 = 0, *(v7 + 8) = 0, (v373 = *(v7 + 24)) != 0) && v372 && ((*(*v373 + 16))(v373, v35), (v432[0]))
        {
          if ((v489 & 1) == 0)
          {
            goto LABEL_611;
          }

          WebKit::EditorState::EditorState(buf, &v468);
          v464[0] = *v430;
          v464[1] = v431;
          v89 = 1;
        }

        else
        {
          v89 = 0;
          buf[0] = 0;
        }

        v465 = v89;
        if (v489)
        {
          if (v488 == 1)
          {
            v90 = v486;
            if (v486)
            {
              v486 = 0;
              v487 = 0;
              WTF::fastFree(v90, v35);
            }

            v91 = v484;
            if (v484)
            {
              v484 = 0;
              v485 = 0;
              WTF::fastFree(v91, v35);
            }

            v92 = v482;
            if (v482)
            {
              v482 = 0;
              v483 = 0;
              WTF::fastFree(v92, v35);
            }
          }

          if (v480 == 1)
          {
            if ((v475 & 0x8000000000000) != 0)
            {
              v381 = (v475 & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add((v475 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v381);
                WTF::fastFree(v381, v35);
              }
            }

            v93 = v473;
            if (v473)
            {
              v473 = 0;
              v474 = 0;
              WTF::fastFree(v93, v35);
            }

            v94 = v472;
            v472 = 0;
            if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v94, v35);
            }

            v95 = v471;
            v471 = 0;
            if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v95, v35);
            }

            if ((v470 & 0x8000000000000) != 0)
            {
              v96 = (v470 & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add((v470 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v96);
                WTF::fastFree(v96, v35);
              }
            }
          }
        }
      }

      else
      {
        buf[0] = 0;
        v465 = 0;
      }

      if ((v465 & 1) == 0)
      {
        v363 = *v7;
        v364 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v365 = *(v7 + 24);
        if (!v365)
        {
          goto LABEL_761;
        }

        if (!v364)
        {
          goto LABEL_761;
        }

        (*(*v365 + 16))(v365, v363);
        if ((v465 & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v293 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v294 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v294, v293 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v294 == v293)
        {
          goto LABEL_518;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_518:
      v295 = WTF::fastMalloc(v293, 0x18);
      *v295 = &unk_1F10F70E0;
      v295[1] = v7;
      v295[2] = v9;
      *&v468 = v295;
      if ((v465 & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::interpretKeyEvent(v10, buf, v464, &v468);
      v296 = v468;
      *&v468 = 0;
      if (v296)
      {
        (*(*v296 + 8))(v296);
      }

      if ((v465 & 1) == 0)
      {
        goto LABEL_761;
      }

      if (v463 == 1)
      {
        v297 = v461;
        if (v461)
        {
          v461 = 0;
          v462 = 0;
          WTF::fastFree(v297, v240);
        }

        v298 = v456;
        if (v456)
        {
          v456 = 0;
          v457 = 0;
          WTF::fastFree(v298, v240);
        }

        v299 = v454;
        if (v454)
        {
          v454 = 0;
          v455 = 0;
          WTF::fastFree(v299, v240);
        }
      }

      if (v451 != 1)
      {
        goto LABEL_761;
      }

      if ((v445 & 0x8000000000000) != 0)
      {
        v380 = (v445 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v445 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v380);
          WTF::fastFree(v380, v240);
        }
      }

      v300 = v443;
      if (v443)
      {
        v443 = 0;
        v444 = 0;
        WTF::fastFree(v300, v240);
      }

      v301 = v442[0];
      v442[0] = 0;
      if (v301 && atomic_fetch_add_explicit(v301, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v301, v240);
      }

      v302 = v441;
      v441 = 0;
      if (v302 && atomic_fetch_add_explicit(v302, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v302, v240);
      }

      if ((*&v439[24] & 0x8000000000000) == 0)
      {
        goto LABEL_761;
      }

      v242 = (*&v439[24] & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((*&v439[24] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) != 1)
      {
        goto LABEL_761;
      }

      atomic_store(1u, v242);
      goto LABEL_585;
    case 0x103C:
      if ((v11 & 0x4000000000000000) == 0)
      {
        goto LABEL_336;
      }

      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::LayerTreeAsTextOptions>>,void>::decode<IPC::Decoder>(v7, buf);
      if ((buf[24] & 1) == 0)
      {
        v369 = *v7;
        v370 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v371 = *(v7 + 24);
        if (!v371)
        {
          goto LABEL_761;
        }

        if (!v370)
        {
          goto LABEL_761;
        }

        (*(*v371 + 16))(v371, v369);
        if ((buf[24] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v85 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v86 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v86, v85 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v86 == v85)
        {
          goto LABEL_576;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_576:
      v319 = WTF::fastMalloc(v85, 0x18);
      *v319 = &unk_1F10F7518;
      v319[1] = v7;
      v319[2] = v9;
      *&v468 = v319;
      if ((buf[24] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::layerTreeAsTextForTesting(v10, *buf, *&buf[8], *&buf[16], &v468);
      goto LABEL_589;
    case 0x103D:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(v7, buf);
      if ((buf[8] & 1) == 0)
      {
        v340 = *v7;
        v341 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v342 = *(v7 + 24);
        if (!v342)
        {
          goto LABEL_761;
        }

        if (!v341)
        {
          goto LABEL_761;
        }

        (*(*v342 + 16))(v342, v340);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v231 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v232 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v232, v231 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v232 == v231)
        {
          goto LABEL_504;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_504:
      v292 = WTF::fastMalloc(v231, 0x18);
      *v292 = &unk_1F10F73B0;
      v292[1] = v7;
      v292[2] = v9;
      *&v468 = v292;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::loadRecentSearches(v10, v9, buf, &v468);
      v289 = v468;
      *&v468 = 0;
      if (v289)
      {
LABEL_506:
        (*(*v289 + 8))(v289);
      }

LABEL_507:
      if (buf[8])
      {
        goto LABEL_508;
      }

      goto LABEL_761;
    case 0x103E:
      IPC::Decoder::decode<std::tuple<WebKit::URLSchemeTaskParameters>>(buf, v7);
      if (v465 != 1)
      {
        goto LABEL_360;
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v51 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v52 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v52, v51 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v52 == v51)
        {
          goto LABEL_357;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_357:
      v236 = WTF::fastMalloc(v51, 0x18);
      *v236 = &unk_1F10F7450;
      v236[1] = v7;
      v236[2] = v9;
      *&v468 = v236;
      if ((v465 & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::loadSynchronousURLSchemeTask(v10, v9, buf, &v468);
      v237 = v468;
      *&v468 = 0;
      if (v237)
      {
        (*(*v237 + 8))(v237);
      }

LABEL_360:
      std::optional<std::tuple<WebKit::URLSchemeTaskParameters>>::~optional(buf, v50);
      goto LABEL_761;
    case 0x103F:
      v213 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v7);
      if ((v214 & 1) == 0)
      {
        goto LABEL_760;
      }

      v215 = v213;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, &v468);
      if ((BYTE8(v468) & 1) == 0)
      {
        v393 = *v7;
        v394 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v395 = *(v7 + 24);
        if (!v395)
        {
          goto LABEL_760;
        }

        if (!v394)
        {
          goto LABEL_760;
        }

        (*(*v395 + 16))(v395, v393);
        if ((BYTE8(v468) & 1) == 0)
        {
          goto LABEL_760;
        }
      }

      v216 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(v7);
      if ((v35 & 1) == 0)
      {
        v419 = *v7;
        v420 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v421 = *(v7 + 24);
        if (v421 && v420)
        {
          (*(*v421 + 16))(v421, v419);
        }

        if (BYTE8(v468))
        {
          v422 = v468;
          *&v468 = 0;
          if (v422)
          {
            if (atomic_fetch_add_explicit(v422, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v422, v419);
            }
          }
        }

        goto LABEL_760;
      }

      if ((BYTE8(v468) & 1) == 0)
      {
        goto LABEL_611;
      }

      *buf = v215;
      *&buf[8] = v468;
      *&buf[16] = v216;
      buf[24] = 1;
      v217 = *v5;
      *v5 = 0;
      while (1)
      {
        v218 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v219 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v219, v218 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v219 == v218)
        {
          goto LABEL_439;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_439:
      v269 = WTF::fastMalloc(v218, 0x18);
      *v269 = &unk_1F10F7090;
      v269[1] = v217;
      v269[2] = v9;
      *&v468 = v269;
      WebKit::WebPageProxy::printFrame(v10, v9, v215, &buf[8], &buf[16], &v468);
      v270 = v468;
      *&v468 = 0;
      if (v270)
      {
        (*(*v270 + 8))(v270);
      }

      if ((buf[24] & 1) == 0)
      {
        goto LABEL_761;
      }

      goto LABEL_477;
    case 0x1040:
      if ((v11 & 0x4000000000000000) == 0)
      {
        goto LABEL_336;
      }

      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::RenderAsTextFlag>>,void>::decode<IPC::Decoder>(v7, buf);
      if ((buf[24] & 1) == 0)
      {
        v377 = *v7;
        v378 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v379 = *(v7 + 24);
        if (!v379)
        {
          goto LABEL_761;
        }

        if (!v378)
        {
          goto LABEL_761;
        }

        (*(*v379 + 16))(v379, v377);
        if ((buf[24] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v304 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v305 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v305, v304 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v305 == v304)
        {
          goto LABEL_587;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_587:
      v322 = WTF::fastMalloc(v304, 0x18);
      *v322 = &unk_1F10F74C8;
      v322[1] = v7;
      v322[2] = v9;
      *&v468 = v322;
      if ((buf[24] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::renderTreeAsTextForTesting(v10, *buf, *&buf[8], *&buf[16], &v468);
LABEL_589:
      v88 = v468;
      *&v468 = 0;
      if (!v88)
      {
        goto LABEL_761;
      }

      goto LABEL_593;
    case 0x1041:
      v185 = *(v7 + 8);
      v186 = *(v7 + 16);
      v187 = *v7;
      if (v185 <= &v186[-*v7])
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        v423 = *(v7 + 24);
        if (v423)
        {
          if (v185)
          {
            (*(*v423 + 16))(v423);
            v185 = *(v7 + 8);
          }
        }

        else
        {
          v185 = 0;
        }
      }

      else
      {
        *(v7 + 16) = v186 + 1;
        if (v186)
        {
          v188 = *v186;
          if (v188 < 2)
          {
            v189 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v7);
            if ((v190 & 1) == 0)
            {
              goto LABEL_760;
            }

            v191 = v189;
            IPC::Decoder::decode<WebCore::IntRect>(v7, &v468);
            if ((v469 & 1) == 0)
            {
              goto LABEL_760;
            }

            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, v430);
            if ((v430[1] & 1) == 0)
            {
              v404 = *v7;
              v405 = *(v7 + 8);
              *v7 = 0;
              *(v7 + 8) = 0;
              v406 = *(v7 + 24);
              if (!v406)
              {
                goto LABEL_760;
              }

              if (!v405)
              {
                goto LABEL_760;
              }

              (*(*v406 + 16))(v406, v404);
              if ((v430[1] & 1) == 0)
              {
                goto LABEL_760;
              }
            }

            if ((v469 & 1) == 0)
            {
              goto LABEL_611;
            }

            buf[0] = v188;
            *&buf[8] = v191;
            *&buf[16] = v468;
            *v439 = v430[0];
            v439[8] = 1;
            v192 = *v5;
            *v5 = 0;
            while (1)
            {
              v193 = *v9;
              if ((*v9 & 1) == 0)
              {
                break;
              }

              v194 = *v9;
              atomic_compare_exchange_strong_explicit(v9, &v194, v193 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v194 == v193)
              {
                goto LABEL_602;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_602:
            v326 = WTF::fastMalloc(v193, 0x18);
            *v326 = &unk_1F10F7220;
            v326[1] = v192;
            v326[2] = v9;
            *&v468 = v326;
            WebKit::WebPageProxy::requestDOMPasteAccess(v10, v9, v188, v191, &buf[16], v439, &v468);
            v327 = v468;
            *&v468 = 0;
            if (v327)
            {
              (*(*v327 + 8))(v327);
            }

            if ((v439[8] & 1) == 0)
            {
              goto LABEL_761;
            }

            v284 = *v439;
            *v439 = 0;
            if (!v284)
            {
              goto LABEL_761;
            }

            goto LABEL_509;
          }

          goto LABEL_759;
        }
      }

      *v7 = 0;
      *(v7 + 8) = 0;
      v424 = *(v7 + 24);
      if (v424)
      {
        if (v185)
        {
          (*(*v424 + 16))(v424);
          v187 = *v7;
          v185 = *(v7 + 8);
          goto LABEL_759;
        }
      }

      else
      {
        v185 = 0;
      }

      v187 = 0;
LABEL_759:
      *v7 = 0;
      *(v7 + 8) = 0;
      v425 = *(v7 + 24);
      if (v425 && v185)
      {
        (*(*v425 + 16))(v425, v187);
      }

      goto LABEL_760;
    case 0x1042:
      *buf = IPC::Decoder::decode<std::tuple<WebCore::IntPoint>>(v7);
      buf[8] = v121;
      if ((v121 & 1) == 0)
      {
        goto LABEL_761;
      }

      v122 = *v5;
      *v5 = 0;
      while (1)
      {
        v123 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v124 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v124, v123 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v124 == v123)
        {
          goto LABEL_392;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_392:
      v250 = WTF::fastMalloc(v123, 0x18);
      *v250 = &unk_1F10F6FC8;
      v250[1] = v122;
      v250[2] = v9;
      *&v468 = v250;
      WebKit::WebPageProxy::rootViewPointToScreen(v10, buf, &v468);
      goto LABEL_423;
    case 0x1043:
      IPC::Decoder::decode<std::tuple<WebCore::IntRect>>(buf, v7);
      if (buf[16] != 1)
      {
        goto LABEL_761;
      }

      v195 = *v5;
      *v5 = 0;
      while (1)
      {
        v196 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v197 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v197, v196 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v197 == v196)
        {
          goto LABEL_398;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_398:
      v252 = WTF::fastMalloc(v196, 0x18);
      *v252 = &unk_1F10F6FF0;
      v252[1] = v195;
      v252[2] = v9;
      *&v468 = v252;
      WebKit::WebPageProxy::rootViewRectToScreen(v10, buf, &v468);
      v88 = v468;
      *&v468 = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x1044:
      IPC::Decoder::decode<std::tuple<WebCore::IntRect>>(buf, v7);
      if (buf[16] != 1)
      {
        goto LABEL_761;
      }

      v66 = *v5;
      *v5 = 0;
      while (1)
      {
        v67 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v68 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v68, v67 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v68 == v67)
        {
          goto LABEL_374;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_374:
      v243 = WTF::fastMalloc(v67, 0x18);
      *v243 = &unk_1F10F7040;
      v243[1] = v66;
      v243[2] = v9;
      *&v468 = v243;
      WebKit::WebPageProxy::rootViewToAccessibilityScreen(v10, buf, &v468);
      v88 = v468;
      *&v468 = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x1045:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WTF::String>>(buf, v7);
      if (v460 != 1)
      {
        goto LABEL_366;
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v53 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v54 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v54, v53 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v54 == v53)
        {
          goto LABEL_362;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_362:
      v238 = WTF::fastMalloc(v53, 0x18);
      *v238 = &unk_1F10F7068;
      v238[1] = v7;
      v238[2] = v9;
      *&v468 = v238;
      if ((v460 & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::runBeforeUnloadConfirmPanel(v10, v9, *buf, &buf[16], &v458, &v468);
      goto LABEL_364;
    case 0x1046:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WTF::String>>(buf, v7);
      if (v460 != 1)
      {
        goto LABEL_366;
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v46 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v47 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v47, v46 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v47 == v46)
        {
          goto LABEL_350;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_350:
      v233 = WTF::fastMalloc(v46, 0x18);
      *v233 = &unk_1F10F6E88;
      v233[1] = v7;
      v233[2] = v9;
      *&v468 = v233;
      if ((v460 & 1) == 0)
      {
LABEL_611:
        while (1)
        {
          __break(1u);
LABEL_612:
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v433, v35);
LABEL_267:
          if ((v467 & 1) == 0)
          {
            v366 = *v7;
            v367 = *(v7 + 8);
            *v7 = 0;
            *(v7 + 8) = 0;
            v368 = *(v7 + 24);
            if (!v368)
            {
              goto LABEL_761;
            }

            if (!v367)
            {
              goto LABEL_761;
            }

            (*(*v368 + 16))(v368, v366);
            if ((v467 & 1) == 0)
            {
              goto LABEL_761;
            }
          }

          v7 = *v5;
          *v5 = 0;
          while (1)
          {
            v177 = *v9;
            if ((*v9 & 1) == 0)
            {
              break;
            }

            v178 = *v9;
            atomic_compare_exchange_strong_explicit(v9, &v178, v177 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v178 == v177)
            {
              goto LABEL_426;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_426:
          v261 = WTF::fastMalloc(v177, 0x18);
          *v261 = &unk_1F10F6E60;
          v261[1] = v7;
          v261[2] = v9;
          *&v468 = v261;
          if (v467)
          {
            WebKit::WebPageProxy::createNewPage(v10, v9, buf, v442, &v468);
            v263 = v468;
            *&v468 = 0;
            if (v263)
            {
              (*(*v263 + 8))(v263);
            }

            if (v467)
            {
              WebKit::NavigationActionData::~NavigationActionData(v442, v262);
              v265 = &v440;
              goto LABEL_600;
            }

            goto LABEL_761;
          }
        }
      }

      WebKit::WebPageProxy::runJavaScriptAlert(v10, v9, *buf, &buf[16], &v458, &v468);
      v234 = v468;
      *&v468 = 0;
      if (!v234)
      {
        goto LABEL_366;
      }

      goto LABEL_365;
    case 0x1047:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WTF::String>>(buf, v7);
      if (v460 != 1)
      {
        goto LABEL_366;
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v48 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v49 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v49, v48 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v49 == v48)
        {
          goto LABEL_354;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_354:
      v235 = WTF::fastMalloc(v48, 0x18);
      *v235 = &unk_1F10F6EB0;
      v235[1] = v7;
      v235[2] = v9;
      *&v468 = v235;
      if ((v460 & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::runJavaScriptConfirm(v10, v9, *buf, &buf[16], &v458, &v468);
LABEL_364:
      v234 = v468;
      *&v468 = 0;
      if (v234)
      {
LABEL_365:
        (*(*v234 + 8))(v234);
      }

LABEL_366:
      std::optional<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WTF::String>>::~optional(buf, v45);
      goto LABEL_761;
    case 0x1048:
      v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v7);
      if (v33)
      {
        v34 = v32;
        IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(v7, &v468);
        if (v484 & 1) != 0 || (v345 = *v7, v346 = *(v7 + 8), *v7 = 0, *(v7 + 8) = 0, (v347 = *(v7 + 24)) != 0) && v346 && ((*(*v347 + 16))(v347, v345), (v484))
        {
          IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, &v436);
          if (v437 & 1) != 0 || (v35 = *v7, v400 = *(v7 + 8), *v7 = 0, *(v7 + 8) = 0, (v401 = *(v7 + 24)) != 0) && v400 && ((*(*v401 + 16))(v401, v35), (v437))
          {
            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v7, v430);
            if (v430[1] & 1) != 0 || (v35 = *v7, v402 = *(v7 + 8), *v7 = 0, *(v7 + 8) = 0, (v403 = *(v7 + 24)) != 0) && v402 && ((*(*v403 + 16))(v403, v35), (v430[1]))
            {
              if ((v484 & 1) == 0 || (v437 & 1) == 0)
              {
                goto LABEL_611;
              }

              *buf = v34;
              std::__tuple_leaf<1ul,WebKit::FrameInfoData,false>::__tuple_leaf[abi:sn200100]<WebKit::FrameInfoData,0>(&buf[16], &v468);
              v36 = v436;
              v436 = 0;
              v458 = v36;
              v459 = v430[0];
              v37 = 1;
            }

            else
            {
              v37 = 0;
              buf[0] = 0;
            }

            v460 = v37;
            if (v437)
            {
              v38 = v436;
              v436 = 0;
              if (v38)
              {
                if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v38, v35);
                }
              }
            }
          }

          else
          {
            buf[0] = 0;
            v460 = 0;
          }

          if (v484)
          {
            v39 = cf;
            cf = 0;
            if (v39)
            {
              CFRelease(v39);
            }

            v40 = v479;
            v479 = 0;
            if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, v35);
            }

            if (!v478)
            {
              v41 = v477;
              v477 = 0;
              if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v41, v35);
              }

              v42 = v476;
              v476 = 0;
              if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v42, v35);
              }
            }

            v478 = -1;
            WebCore::ResourceRequest::~ResourceRequest((&v468 + 8));
          }
        }

        else
        {
          buf[0] = 0;
          v460 = 0;
        }

        if (v460)
        {
LABEL_39:
          v7 = *v5;
          *v5 = 0;
          while (1)
          {
            v43 = *v9;
            if ((*v9 & 1) == 0)
            {
              break;
            }

            v44 = *v9;
            atomic_compare_exchange_strong_explicit(v9, &v44, v43 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v44 == v43)
            {
              goto LABEL_444;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_444:
          v271 = WTF::fastMalloc(v43, 0x18);
          *v271 = &unk_1F10F6ED8;
          v271[1] = v7;
          v271[2] = v9;
          *&v468 = v271;
          if ((v460 & 1) == 0)
          {
            goto LABEL_611;
          }

          WebKit::WebPageProxy::runJavaScriptPrompt(v10, v9, *buf, &buf[16], &v458, &v459, &v468);
          v273 = v468;
          *&v468 = 0;
          if (v273)
          {
            (*(*v273 + 8))(v273);
          }

          if (v460)
          {
            v274 = v459;
            v459 = 0;
            if (v274 && atomic_fetch_add_explicit(v274, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v274, v272);
            }

            v275 = v458;
            v458 = 0;
            if (v275 && atomic_fetch_add_explicit(v275, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v275, v272);
            }

            v276 = v453;
            v453 = 0;
            if (v276)
            {
              CFRelease(v276);
            }

            v277 = v451;
            v451 = 0;
            if (v277 && atomic_fetch_add_explicit(v277, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v277, v272);
            }

            if (!v450)
            {
              v278 = v448;
              v448 = 0;
              if (v278 && atomic_fetch_add_explicit(v278, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v278, v272);
              }

              v279 = v447;
              v447 = 0;
              if (v279 && atomic_fetch_add_explicit(v279, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v279, v272);
              }
            }

            v450 = -1;
            WebCore::ResourceRequest::~ResourceRequest(&buf[24]);
          }

          goto LABEL_761;
        }
      }

      else
      {
        buf[0] = 0;
        v460 = 0;
      }

      v357 = *v7;
      v358 = *(v7 + 8);
      *v7 = 0;
      *(v7 + 8) = 0;
      v359 = *(v7 + 24);
      if (!v359)
      {
        goto LABEL_761;
      }

      if (!v358)
      {
        goto LABEL_761;
      }

      (*(*v359 + 16))(v359, v357);
      if ((v460 & 1) == 0)
      {
        goto LABEL_761;
      }

      goto LABEL_39;
    case 0x1049:
      *buf = IPC::Decoder::decode<std::tuple<WebCore::IntPoint>>(v7);
      buf[8] = v227;
      if ((v227 & 1) == 0)
      {
        goto LABEL_761;
      }

      v228 = *v5;
      *v5 = 0;
      while (1)
      {
        v229 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v230 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v230, v229 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v230 == v229)
        {
          goto LABEL_422;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_422:
      v260 = WTF::fastMalloc(v229, 0x18);
      *v260 = &unk_1F10F6FA0;
      v260[1] = v228;
      v260[2] = v9;
      *&v468 = v260;
      WebKit::WebPageProxy::screenToRootView(v10, buf, &v468);
LABEL_423:
      v88 = v468;
      *&v468 = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x104A:
      IPC::Decoder::decode<std::tuple<WebCore::CryptoKeyData>>(buf, v7);
      if (v452 != 1)
      {
        goto LABEL_761;
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v203 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v204 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v204, v203 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v204 == v203)
        {
          goto LABEL_401;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_401:
      v253 = WTF::fastMalloc(v203, 0x18);
      *v253 = &unk_1F10F73D8;
      v253[1] = v7;
      v253[2] = v9;
      *&v468 = v253;
      if ((v452 & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::serializeAndWrapCryptoKey(v10, v9, buf, &v468);
      v254 = v468;
      *&v468 = 0;
      if (v254)
      {
        (*(*v254 + 8))(v254);
      }

      if ((v452 & 1) == 0)
      {
        goto LABEL_761;
      }

      if (v449 == 1)
      {
        v255 = v448;
        v448 = 0;
        if (v255)
        {
          if (atomic_fetch_add_explicit(v255, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v255, v240);
          }
        }
      }

      if (v446 == 1)
      {
        WebCore::JsonWebKey::~JsonWebKey(v439, v240);
      }

      if (buf[24] != 1)
      {
        goto LABEL_761;
      }

      v242 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_761;
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      goto LABEL_585;
    case 0x104B:
      if ((v11 & 0x8000) == 0)
      {
        goto LABEL_336;
      }

      IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v7, buf);
      if (buf[16] != 1)
      {
        goto LABEL_761;
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v74 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v75 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v75, v74 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v75 == v74)
        {
          goto LABEL_595;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_595:
      v324 = WTF::fastMalloc(v74, 0x18);
      *v324 = &unk_1F10F7478;
      v324[1] = v7;
      v324[2] = v9;
      *&v468 = v324;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::serializedAttachmentDataForIdentifiers(v10, buf, &v468);
      v325 = v468;
      *&v468 = 0;
      if (v325)
      {
        (*(*v325 + 8))(v325);
      }

      if (buf[16])
      {
        v265 = buf;
LABEL_600:
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v265, v264);
      }

      goto LABEL_761;
    case 0x104C:
      IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(v7, buf);
      if ((buf[16] & 1) == 0)
      {
        v354 = *v7;
        v355 = *(v7 + 8);
        *v7 = 0;
        *(v7 + 8) = 0;
        v356 = *(v7 + 24);
        if (!v356)
        {
          goto LABEL_761;
        }

        if (!v355)
        {
          goto LABEL_761;
        }

        (*(*v356 + 16))(v356, v354);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_761;
        }
      }

      v7 = *v5;
      *v5 = 0;
      while (1)
      {
        v136 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v137 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v137, v136 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v137 == v136)
        {
          goto LABEL_488;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_488:
      v287 = WTF::fastMalloc(v136, 0x18);
      *v287 = &unk_1F10F71A8;
      v287[1] = v7;
      v287[2] = v9;
      *&v468 = v287;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_611;
      }

      WebKit::WebPageProxy::shouldGoToBackForwardListItemSync(v10, *buf, *&buf[8], &v468);
      v88 = v468;
      *&v468 = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x104D:
      if ((v12 & 1) == 0)
      {
        goto LABEL_336;
      }

      v208 = *v5;
      *v5 = 0;
      while (1)
      {
        v209 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v210 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v210, v209 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v210 == v209)
        {
          goto LABEL_543;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_543:
      v303 = WTF::fastMalloc(v209, 0x18);
      *v303 = &unk_1F10F74A0;
      v303[1] = v208;
      v303[2] = v9;
      *buf = v303;
      WebKit::WebPageProxy::speechSynthesisVoiceList(v10, buf);
      v88 = *buf;
      *buf = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x104E:
      v28 = *v5;
      *v5 = 0;
      while (1)
      {
        v29 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v30 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v30, v29 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v30 == v29)
        {
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_12:
      v31 = WTF::fastMalloc(v29, 0x18);
      *v31 = &unk_1F10F72E8;
      v31[1] = v28;
      v31[2] = v9;
      *buf = v31;
      WebKit::WebPageProxy::spellingUIIsShowing(v10, buf);
LABEL_395:
      v88 = *buf;
      *buf = 0;
      if (v88)
      {
        goto LABEL_593;
      }

      goto LABEL_761;
    case 0x104F:
      IPC::Decoder::decode<std::tuple<WebCore::WrappedCryptoKey>>(buf, v7, v15, v16, v17, v18, v19, v20);
      if (v439[24] != 1)
      {
        goto LABEL_761;
      }

      v61 = *v5;
      *v5 = 0;
      while (1)
      {
        v62 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v63 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v63, v62 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v63 == v62)
        {
          goto LABEL_368;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_368:
      v239 = WTF::fastMalloc(v62, 0x18);
      *v239 = &unk_1F10F7400;
      v239[1] = v61;
      v239[2] = v9;
      *&v468 = v239;
      WebKit::WebPageProxy::unwrapCryptoKey(v10, buf, &v468);
      v241 = v468;
      *&v468 = 0;
      if (v241)
      {
        (*(*v241 + 8))(v241);
      }

      if (v439[24])
      {
        v242 = *&buf[24];
        if (*&buf[24])
        {
          *&buf[24] = 0;
          *v439 = 0;
LABEL_585:
          WTF::fastFree(v242, v240);
        }
      }

      goto LABEL_761;
    default:
LABEL_336:
      v222 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v21 >= 0x107F)
        {
          v328 = 4223;
        }

        else
        {
          v328 = v21;
        }

        v329 = (&IPC::Detail::messageDescriptions)[3 * v328];
        v330 = *(v7 + 56);
        *buf = 136315394;
        *&buf[4] = v329;
        *&buf[12] = 2048;
        *&buf[14] = v330;
        _os_log_error_impl(&dword_19D52D000, v222, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
      }

      v223 = *v7;
      v224 = *(v7 + 8);
      *v7 = 0;
      *(v7 + 8) = 0;
      v225 = *(v7 + 24);
      if (v225 && v224)
      {
        (*(*v225 + 16))(v225, v223);
      }

      v226 = 0;
      goto LABEL_762;
  }
}

void WebKit::WebPageTesting::didReceiveMessage(WebKit::WebPageTesting *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  v6 = *(a3 + 25);
  if (v6 <= 0x977)
  {
    if (*(a3 + 25) > 0x975u)
    {
      if (v6 == 2422)
      {
        WebKit::WebPageTesting::clearWheelEventTestMonitor(this);
        goto LABEL_66;
      }

      if (v6 != 2423)
      {
        goto LABEL_48;
      }

      v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_66;
      }

      v16 = v15;
      while (1)
      {
        v17 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v18 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_53;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_53:
      v34 = WTF::fastMalloc(v17, 0x18);
      *v34 = &unk_1F10F7608;
      v34[1] = v16;
      v34[2] = a2;
      *buf = v34;
      WebKit::WebPageTesting::displayAndTrackRepaints(this, buf);
    }

    else
    {
      if (v6 != 2420)
      {
        if (v6 == 2421)
        {
          WebKit::WebPageTesting::clearNotificationPermissionState(this, a2);
          goto LABEL_66;
        }

        goto LABEL_48;
      }

      v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_66;
      }

      v20 = v19;
      while (1)
      {
        v21 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v22 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v22 == v21)
        {
          goto LABEL_55;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_55:
      v35 = WTF::fastMalloc(v21, 0x18);
      *v35 = &unk_1F10F75B8;
      v35[1] = v20;
      v35[2] = a2;
      *buf = v35;
      WebKit::WebPageTesting::clearCachedBackForwardListCounts(this, buf);
    }

LABEL_65:
    v43 = *buf;
    *buf = 0;
    if (!v43)
    {
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  if (*(a3 + 25) <= 0x979u)
  {
    if (v6 == 2424)
    {
      v27 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v8)
      {
        v28 = v27;
        while (1)
        {
          v29 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v30 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v30, v29 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v30 == v29)
          {
            goto LABEL_57;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_57:
        v36 = WTF::fastMalloc(v29, 0x18);
        *v36 = &unk_1F10F7568;
        v36[1] = v28;
        v36[2] = a2;
        *buf = v36;
        WebKit::WebPageTesting::isLayerTreeFrozen(this, buf);
        v37 = *buf;
        *buf = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }
      }

      goto LABEL_66;
    }

    if (v6 == 2425)
    {
      WebKit::WebPageTesting::resetStateBetweenTests(this);
      goto LABEL_66;
    }

LABEL_48:
    v32 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v45 = 4223;
      }

      else
      {
        v45 = v6;
      }

      v46 = (&IPC::Detail::messageDescriptions)[3 * v45];
      v47 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v46;
      LOWORD(v51[0]) = 2048;
      *(v51 + 2) = v47;
      _os_log_error_impl(&dword_19D52D000, v32, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    v8 = *a3;
    v9 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v33 = *(a3 + 3);
    if (v33 && v9)
    {
      (*(*v33 + 16))(v33, v8);
    }

    goto LABEL_66;
  }

  switch(v6)
  {
    case 0x97Au:
      IPC::ArgumentCoder<std::tuple<float,float,float,float>,void>::decode<IPC::Decoder>(a3, buf);
      if (v51[1] & 1) != 0 || (v8 = *a3, v9 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v48 = *(a3 + 3)) != 0) && v9 && ((*(*v48 + 16))(v48, v8), (v51[1]))
      {
        v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v8)
        {
          v24 = v23;
          while (1)
          {
            v25 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v26 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v26 == v25)
            {
              goto LABEL_60;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_60:
          v38 = WTF::fastMalloc(v25, 0x18);
          *v38 = &unk_1F10F7590;
          v38[1] = v24;
          v38[2] = a2;
          v49 = v38;
          if ((v51[1] & 1) == 0)
          {
            __break(1u);
          }

          v39.n128_u32[0] = *buf;
          v40.n128_u32[0] = *&buf[4];
          v41.n128_u32[0] = *&buf[8];
          v42.n128_u32[0] = v51[0];
          WebKit::WebPageTesting::setObscuredContentInsets(this, &v49, v39, v40, v41, v42);
          v43 = v49;
          v49 = 0;
          if (v43)
          {
LABEL_69:
            (*(*v43 + 8))(v43);
          }
        }
      }

      break;
    case 0x97Bu:
      IPC::Decoder::decode<std::tuple<WTF::String,BOOL>>(buf, a3);
      if (LOBYTE(v51[1]) == 1)
      {
        WebKit::WebPageTesting::setPermissionLevel(this, buf, buf[8]);
        if (v51[1])
        {
          v31 = *buf;
          *buf = 0;
          if (v31)
          {
            if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v8);
            }
          }
        }
      }

      break;
    case 0x97Cu:
      v7 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v7 & 0x100) == 0)
      {
        break;
      }

      v10 = v7;
      v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v12 = v11;
      while (1)
      {
        v13 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v14 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v14 == v13)
        {
          goto LABEL_64;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_64:
      v44 = WTF::fastMalloc(v13, 0x18);
      *v44 = &unk_1F10F75E0;
      v44[1] = v12;
      v44[2] = a2;
      *buf = v44;
      WebKit::WebPageTesting::setTracksRepaints(this, v10 & 1, buf);
      goto LABEL_65;
    default:
      goto LABEL_48;
  }

LABEL_66:
  if (*(this + 4) == 1)
  {
    (*(*this + 24))(this, v8, v9);
  }

  else
  {
    --*(this + 4);
  }
}

BOOL WebKit::WebPageTesting::didReceiveSyncMessage(_DWORD *a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  ++a1[4];
  v6 = *(a3 + 50);
  if (v6 == 4176)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
    if (buf[8] & 1) != 0 || (v13 = *a3, v14 = *(a3 + 8), *a3 = 0, *(a3 + 8) = 0, (v23 = *(a3 + 24)) != 0) && v14 && ((*(*v23 + 16))(v23, v13), (buf[8]))
    {
      v9 = *a4;
      *a4 = 0;
      while (1)
      {
        v10 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v11 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v10)
        {
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_12:
      v16 = WTF::fastMalloc(v10, 0x18);
      *v16 = &unk_1F10F7630;
      v16[1] = v9;
      v16[2] = a2;
      v24 = v16;
      if ((buf[8] & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebPageTesting::isEditingCommandEnabled(a1, buf, &v24);
      v17 = v24;
      v24 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      if (buf[8])
      {
        v18 = *buf;
        *buf = 0;
        if (v18)
        {
          if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v13);
          }
        }
      }
    }
  }

  else
  {
    v12 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v20 = 4223;
      }

      else
      {
        v20 = v6;
      }

      v21 = (&IPC::Detail::messageDescriptions)[3 * v20];
      v22 = *(a3 + 56);
      *buf = 136315394;
      *&buf[4] = v21;
      v26 = 2048;
      v27 = v22;
      _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
    }

    v13 = *a3;
    v14 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v15 = *(a3 + 24);
    if (v15 && v14)
    {
      (*(*v15 + 16))(v15, v13);
    }
  }

  if (a1[4] == 1)
  {
    (*(*a1 + 24))(a1, v13, v14);
  }

  else
  {
    --a1[4];
  }

  return v6 == 4176;
}

void WebKit::WebPasteboardProxy::didReceiveMessage(WebKit::WebPasteboardProxy *this, IPC::Connection *a2, IPC::Decoder **a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 25);
  if (v6 > 0xB35)
  {
    if (v6 == 2870)
    {
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[40] != 1)
      {
        return;
      }

      WebKit::WebPasteboardProxy::writeStringToPasteboard(this, a2, buf, &buf[8], &buf[16], *&buf[24], buf[32]);
      if ((buf[40] & 1) == 0)
      {
        return;
      }

      v18 = *&buf[16];
      *&buf[16] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v7);
      }

      v9 = *&buf[8];
      *&buf[8] = 0;
      if (!v9)
      {
        goto LABEL_34;
      }

LABEL_32:
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

LABEL_34:
      v19 = *buf;
      *buf = 0;
      if (v19)
      {
        if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v7);
        }
      }

      return;
    }

    if (v6 != 2872)
    {
      if (v6 == 2871)
      {
        IPC::Decoder::decode<std::tuple<WebCore::PasteboardURL,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
        if (BYTE8(v73) != 1)
        {
          return;
        }

        WebKit::WebPasteboardProxy::writeURLToPasteboard(this, a2, buf, v72, v72[1], v73);
        if ((BYTE8(v73) & 1) == 0)
        {
          return;
        }

        v8 = v72[0];
        v72[0] = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }

        v9 = *&buf[40];
        *&buf[40] = 0;
        if (!v9)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      goto LABEL_57;
    }

    IPC::ArgumentCoder<WebCore::PasteboardWebContent,void>::decode(a3, &v58);
    if ((v63 & 1) == 0)
    {
      v43 = *a3;
      v44 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v45 = a3[3];
      if (!v45)
      {
        goto LABEL_58;
      }

      if (!v44)
      {
        goto LABEL_58;
      }

      (*(*v45 + 16))(v45, v43);
      if ((v63 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v69);
    if ((v70 & 1) == 0)
    {
      v11 = *a3;
      v54 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v55 = a3[3];
      if (!v55)
      {
        goto LABEL_76;
      }

      if (!v54)
      {
        goto LABEL_76;
      }

      (*(*v55 + 16))(v55, v11);
      if ((v70 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    v10 = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v67);
    if ((v68 & 1) == 0)
    {
      v11 = *a3;
      v37 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v38 = a3[3];
      if (!v38 || !v37 || (v10 = (*(*v38 + 16))(v38, v11), (v68 & 1) == 0))
      {
        if (v70)
        {
          v39 = v69;
          v69 = 0;
          if (v39)
          {
            if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v11);
            }
          }
        }

LABEL_76:
        if (v63)
        {
          WebCore::PasteboardWebContent::~PasteboardWebContent(&v58, v11);
        }

        goto LABEL_58;
      }
    }

    if (v63 & 1) != 0 && (v70)
    {
      v20 = v58;
      *&v58 = 0;
      *buf = v20;
      buf[8] = BYTE8(v58);
      v21 = v59;
      v22 = v60;
      v59 = 0u;
      v60 = 0u;
      *&buf[16] = v21;
      *&buf[32] = v22;
      v23 = v61;
      v61 = 0u;
      *v72 = v23;
      v24 = *(&v62 + 1);
      *&v73 = v62;
      v62 = 0uLL;
      *(&v73 + 1) = v24;
      v74 = v69;
      v75 = v67;
      LOBYTE(v76) = 1;
      WebCore::PasteboardWebContent::~PasteboardWebContent(&v58, v11);
      WebKit::WebPasteboardProxy::writeWebContentToPasteboard(this, a2, buf, &v74, v75, SBYTE8(v75));
      if (v76)
      {
        v26 = v74;
        v74 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v25);
        }

        WebCore::PasteboardWebContent::~PasteboardWebContent(buf, v25);
      }

      return;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    if (v12)
    {
      (*(*v10 + 16))(v10, v11);
    }

    return;
  }

  if (v6 == 2868)
  {
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, &v67);
    if ((v68 & 1) == 0)
    {
      v49 = *a3;
      v50 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v51 = a3[3];
      if (!v51)
      {
        goto LABEL_58;
      }

      if (!v50)
      {
        goto LABEL_58;
      }

      (*(*v51 + 16))(v51, v49);
      if ((v68 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v69);
    if (v70 & 1) != 0 || (v11 = *a3, v52 = a3[1], *a3 = 0, a3[1] = 0, (v53 = a3[3]) != 0) && v52 && ((*(*v53 + 16))(v53, v11), (v70))
    {
      v10 = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v58);
      if (v59 & 1) != 0 || (v11 = *a3, v34 = a3[1], *a3 = 0, a3[1] = 0, (v35 = a3[3]) != 0) && v34 && (v10 = (*(*v35 + 16))(v35, v11), (v59))
      {
        if ((v68 & 1) == 0 || (v70 & 1) == 0)
        {
          goto LABEL_85;
        }

        v27 = *(&v67 + 1);
        *buf = v67;
        v67 = 0uLL;
        *&buf[8] = v27;
        *&buf[16] = v69;
        *&buf[24] = v58;
        buf[40] = 1;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v11);
        WebKit::WebPasteboardProxy::updateSupportedTypeIdentifiers(this, buf, &buf[16]);
        if (buf[40])
        {
          v29 = *&buf[16];
          *&buf[16] = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v28);
          }

          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v28);
        }

        return;
      }

      if (v70)
      {
        v36 = v69;
        v69 = 0;
        if (v36)
        {
          if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v36, v11);
          }
        }
      }
    }

    if (v68)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v11);
    }

LABEL_58:
    v11 = *a3;
    v12 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v10 = a3[3];
    if (!v10)
    {
      return;
    }

    goto LABEL_86;
  }

  if (v6 != 2869)
  {
LABEL_57:
    v30 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v31 = 4223;
      }

      else
      {
        v31 = v6;
      }

      v32 = (&IPC::Detail::messageDescriptions)[3 * v31];
      v33 = a3[7];
      *buf = 136315394;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      _os_log_error_impl(&dword_19D52D000, v30, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_58;
  }

  IPC::ArgumentCoder<WebCore::PasteboardImage,void>::decode(a3, &v58);
  if ((v66 & 1) == 0)
  {
    v46 = *a3;
    v47 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v48 = a3[3];
    if (!v48)
    {
      goto LABEL_58;
    }

    if (!v47)
    {
      goto LABEL_58;
    }

    (*(*v48 + 16))(v48, v46);
    if ((v66 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v69);
  if ((v70 & 1) == 0)
  {
    v11 = *a3;
    v56 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v57 = a3[3];
    if (!v57)
    {
      goto LABEL_83;
    }

    if (!v56)
    {
      goto LABEL_83;
    }

    (*(*v57 + 16))(v57, v11);
    if ((v70 & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  v10 = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v67);
  if ((v68 & 1) == 0)
  {
    v11 = *a3;
    v40 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v41 = a3[3];
    if (!v41 || !v40 || (v10 = (*(*v41 + 16))(v41, v11), (v68 & 1) == 0))
    {
      if (v70)
      {
        v42 = v69;
        v69 = 0;
        if (v42)
        {
          if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v11);
          }
        }
      }

LABEL_83:
      if (v66)
      {
        WebCore::PasteboardImage::~PasteboardImage(&v58, v11);
      }

      goto LABEL_58;
    }
  }

  if ((v66 & 1) == 0 || (v70 & 1) == 0)
  {
    goto LABEL_85;
  }

  v13 = v58;
  v58 = 0u;
  *buf = v13;
  *&buf[16] = v59;
  LODWORD(v59) = v59 & 0xFFFFFFFE;
  *&buf[32] = v60;
  *v72 = v61;
  v14 = v62;
  v61 = 0u;
  v62 = 0u;
  v73 = v14;
  v74 = v63;
  v15 = v64;
  v63 = 0;
  v64 = 0;
  *&v75 = v15;
  *(&v75 + 1) = v65;
  v76 = v69;
  v77 = v67;
  v78 = 1;
  if (v66)
  {
    WebCore::PasteboardImage::~PasteboardImage(&v58, v11);
  }

  WebKit::WebPasteboardProxy::writeImageToPasteboard(this, a2, buf, &v76, v77, SBYTE8(v77));
  if (v78)
  {
    v17 = v76;
    v76 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    WebCore::PasteboardImage::~PasteboardImage(buf, v16);
  }
}

void WebKit::WebPasteboardProxy::didReceiveSyncMessage(WebKit::WebPasteboardProxy *a1, atomic_ullong *a2, uint64_t a3, IPC::Decoder **a4, __n128 a5)
{
  v5 = a3;
  v276 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 50);
  switch(*(a3 + 50))
  {
    case 0x105C:
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[40] != 1)
      {
        return;
      }

      v10 = *a4;
      *a4 = 0;
      while (1)
      {
        v11 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v12 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_230;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_230:
      v135 = WTF::fastMalloc(v11, 0x18);
      *v135 = &unk_1F10F7928;
      v135[1] = v10;
      v135[2] = a2;
      v270[0] = v135;
      WebKit::WebPasteboardProxy::addPasteboardTypes(a1, a2, buf, &buf[8], *&buf[24], buf[32], v270);
      goto LABEL_243;
    case 0x105D:
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v264);
      if ((v264[1] & 1) == 0)
      {
        v227 = *v5;
        v228 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        v229 = *(v5 + 3);
        if (!v229 || v228 == 0)
        {
          goto LABEL_444;
        }

        (*(*v229 + 16))(v229, v227);
        if ((v264[1] & 1) == 0)
        {
          goto LABEL_444;
        }
      }

      v6 = IPC::Decoder::decode<long long>(v5);
      if (v75)
      {
        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v270);
        if (v271 & 1) != 0 || (v75 = *v5, v212 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v213 = *(v5 + 3)) != 0) && v212 && ((*(*v213 + 16))(v213, v75), (v271))
        {
          if ((v264[1] & 1) == 0)
          {
            goto LABEL_384;
          }

          v76 = v264[0];
          v264[0] = 0;
          *buf = v76;
          *&buf[8] = v6;
          *&buf[16] = *v270;
          v77 = 1;
        }

        else
        {
          v77 = 0;
          buf[0] = 0;
        }

        buf[32] = v77;
      }

      else
      {
        v77 = 0;
        buf[0] = 0;
        buf[32] = 0;
      }

      if (v264[1])
      {
        v164 = v264[0];
        v264[0] = 0;
        if (v164)
        {
          if (atomic_fetch_add_explicit(v164, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v164, v75);
          }
        }
      }

      if ((v77 & 1) == 0)
      {
        goto LABEL_444;
      }

      v165 = *a4;
      *a4 = 0;
      while (1)
      {
        v166 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v167 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v167, v166 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v167 == v166)
        {
          goto LABEL_319;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_319:
      v168 = WTF::fastMalloc(v166, 0x18);
      *v168 = &unk_1F10F76A8;
      v168[1] = v165;
      v168[2] = a2;
      v270[0] = v168;
      WebKit::WebPasteboardProxy::allPasteboardItemInfo(a1, a2, buf, v6, *&buf[16], buf[24], v270);
      v169 = v270[0];
      v270[0] = 0;
      if (v169)
      {
        (*(*v169 + 8))(v169);
      }

      if (buf[32])
      {
        goto LABEL_322;
      }

      return;
    case 0x105E:
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] != 1)
      {
        return;
      }

      v59 = *a4;
      *a4 = 0;
      while (1)
      {
        v60 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v61 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v61, v60 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v61 == v60)
        {
          goto LABEL_221;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_221:
      v132 = WTF::fastMalloc(v60, 0x18);
      *v132 = &unk_1F10F7798;
      v132[1] = v59;
      v132[2] = a2;
      v270[0] = v132;
      WebKit::WebPasteboardProxy::containsStringSafeForDOMToReadForType(a1, a2, buf, &buf[8], *&buf[16], buf[24], v270);
      v130 = v270[0];
      v270[0] = 0;
      if (v130)
      {
        goto LABEL_275;
      }

      goto LABEL_276;
    case 0x105F:
      IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[24] != 1)
      {
        return;
      }

      v69 = *a4;
      *a4 = 0;
      while (1)
      {
        v70 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v71 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v71, v70 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v71 == v70)
        {
          goto LABEL_224;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_224:
      v133 = WTF::fastMalloc(v70, 0x18);
      *v133 = &unk_1F10F7A18;
      v133[1] = v69;
      v133[2] = a2;
      v270[0] = v133;
      WebKit::WebPasteboardProxy::containsURLStringSuitableForLoading(a1, a2, buf, *&buf[8], buf[16], v270);
      v128 = v270[0];
      v270[0] = 0;
      if (v128)
      {
        goto LABEL_259;
      }

      goto LABEL_260;
    case 0x1060:
      IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[24] != 1)
      {
        return;
      }

      v37 = *a4;
      *a4 = 0;
      while (1)
      {
        v38 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v39 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v39, v38 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v39 == v38)
        {
          goto LABEL_210;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_210:
      v126 = WTF::fastMalloc(v38, 0x18);
      *v126 = &unk_1F10F77C0;
      v126[1] = v37;
      v126[2] = a2;
      v270[0] = v126;
      WebKit::WebPasteboardProxy::getNumberOfFiles(a1, a2, buf, *&buf[8], buf[16], v270);
      goto LABEL_258;
    case 0x1061:
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] != 1)
      {
        return;
      }

      v88 = *a4;
      *a4 = 0;
      while (1)
      {
        v89 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v90 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v90, v89 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v90 == v89)
        {
          goto LABEL_239;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_239:
      v140 = WTF::fastMalloc(v89, 0x18);
      *v140 = &unk_1F10F7888;
      v140[1] = v88;
      v140[2] = a2;
      v270[0] = v140;
      WebKit::WebPasteboardProxy::getPasteboardBufferForType(a1, a2, buf, &buf[8], *&buf[16], buf[24], v270);
      v130 = v270[0];
      v270[0] = 0;
      if (v130)
      {
        goto LABEL_275;
      }

      goto LABEL_276;
    case 0x1062:
      IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[24] != 1)
      {
        return;
      }

      v97 = *a4;
      *a4 = 0;
      while (1)
      {
        v98 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v99 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v99, v98 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v99 == v98)
        {
          goto LABEL_251;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_251:
      v144 = WTF::fastMalloc(v98, 0x18);
      *v144 = &unk_1F10F78B0;
      v144[1] = v97;
      v144[2] = a2;
      v270[0] = v144;
      WebKit::WebPasteboardProxy::getPasteboardChangeCount(a1, a2, buf, *&buf[8], buf[16], v270);
      v128 = v270[0];
      v270[0] = 0;
      if (v128)
      {
        goto LABEL_259;
      }

      goto LABEL_260;
    case 0x1063:
      IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[24] != 1)
      {
        return;
      }

      v72 = *a4;
      *a4 = 0;
      while (1)
      {
        v73 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v74 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v74, v73 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v74 == v73)
        {
          goto LABEL_227;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_227:
      v134 = WTF::fastMalloc(v73, 0x18);
      *v134 = &unk_1F10F78D8;
      v134[1] = v72;
      v134[2] = a2;
      v270[0] = v134;
      WebKit::WebPasteboardProxy::getPasteboardColor(a1, a2, buf, *&buf[8], buf[16], v270);
      v128 = v270[0];
      v270[0] = 0;
      if (v128)
      {
        goto LABEL_259;
      }

      goto LABEL_260;
    case 0x1064:
      IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[24] != 1)
      {
        return;
      }

      v106 = *a4;
      *a4 = 0;
      while (1)
      {
        v107 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v108 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v108, v107 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v108 == v107)
        {
          goto LABEL_257;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_257:
      v146 = WTF::fastMalloc(v107, 0x18);
      *v146 = &unk_1F10F76F8;
      v146[1] = v106;
      v146[2] = a2;
      v270[0] = v146;
      WebKit::WebPasteboardProxy::getPasteboardItemsCount(a1, a2, buf, *&buf[8], buf[16], v270);
LABEL_258:
      v128 = v270[0];
      v270[0] = 0;
      if (v128)
      {
        goto LABEL_259;
      }

      goto LABEL_260;
    case 0x1065:
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] != 1)
      {
        return;
      }

      v43 = *a4;
      *a4 = 0;
      while (1)
      {
        v44 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v45 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v45, v44 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v45 == v44)
        {
          goto LABEL_215;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_215:
      v129 = WTF::fastMalloc(v44, 0x18);
      *v129 = &unk_1F10F7810;
      v129[1] = v43;
      v129[2] = a2;
      v270[0] = v129;
      WebKit::WebPasteboardProxy::getPasteboardPathnamesForType(a1, a2, buf, &buf[8], *&buf[16], buf[24], v270);
      v130 = v270[0];
      v270[0] = 0;
      if (v130)
      {
        goto LABEL_275;
      }

      goto LABEL_276;
    case 0x1066:
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] != 1)
      {
        return;
      }

      v103 = *a4;
      *a4 = 0;
      while (1)
      {
        v104 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v105 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v105, v104 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v105 == v104)
        {
          goto LABEL_254;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_254:
      v145 = WTF::fastMalloc(v104, 0x18);
      *v145 = &unk_1F10F7838;
      v145[1] = v103;
      v145[2] = a2;
      v270[0] = v145;
      WebKit::WebPasteboardProxy::getPasteboardStringForType(a1, a2, buf, &buf[8], *&buf[16], buf[24], v270);
      v130 = v270[0];
      v270[0] = 0;
      if (v130)
      {
        goto LABEL_275;
      }

      goto LABEL_276;
    case 0x1067:
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] != 1)
      {
        return;
      }

      v34 = *a4;
      *a4 = 0;
      while (1)
      {
        v35 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v36 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v36 == v35)
        {
          goto LABEL_208;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_208:
      v124 = WTF::fastMalloc(v35, 0x18);
      *v124 = &unk_1F10F7860;
      v124[1] = v34;
      v124[2] = a2;
      v270[0] = v124;
      WebKit::WebPasteboardProxy::getPasteboardStringsForType(a1, a2, buf, &buf[8], *&buf[16], buf[24], v270);
      goto LABEL_274;
    case 0x1068:
      IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[24] != 1)
      {
        return;
      }

      v40 = *a4;
      *a4 = 0;
      while (1)
      {
        v41 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v42 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v42 == v41)
        {
          goto LABEL_212;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_212:
      v127 = WTF::fastMalloc(v41, 0x18);
      *v127 = &unk_1F10F77E8;
      v127[1] = v40;
      v127[2] = a2;
      v270[0] = v127;
      WebKit::WebPasteboardProxy::getPasteboardTypes(a1, a2, buf, *&buf[8], *&buf[16], v270);
      v128 = v270[0];
      v270[0] = 0;
      if (v128)
      {
        goto LABEL_259;
      }

      goto LABEL_260;
    case 0x1069:
      IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[24] != 1)
      {
        return;
      }

      v94 = *a4;
      *a4 = 0;
      while (1)
      {
        v95 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v96 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v96, v95 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v96 == v95)
        {
          goto LABEL_248;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_248:
      v143 = WTF::fastMalloc(v95, 0x18);
      *v143 = &unk_1F10F7900;
      v143[1] = v94;
      v143[2] = a2;
      v270[0] = v143;
      WebKit::WebPasteboardProxy::getPasteboardURL(a1, a2, buf, *&buf[8], buf[16], v270);
      v128 = v270[0];
      v270[0] = 0;
      if (v128)
      {
        goto LABEL_259;
      }

      goto LABEL_260;
    case 0x106A:
      v13 = *(a3 + 8);
      v26 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v27 = v26 - *v5;
      v16 = v13 >= v27;
      v28 = v13 - v27;
      if (!v16 || v28 <= 7)
      {
        goto LABEL_519;
      }

      *(v5 + 2) = v26 + 1;
      if (!v26)
      {
        goto LABEL_443;
      }

      v30 = *v26;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v5, v264);
      if ((v264[1] & 1) == 0)
      {
        v242 = *v5;
        v243 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        v244 = *(v5 + 3);
        if (!v244)
        {
          goto LABEL_444;
        }

        if (!v243)
        {
          goto LABEL_444;
        }

        (*(*v244 + 16))(v244, v242);
        if ((v264[1] & 1) == 0)
        {
          goto LABEL_444;
        }
      }

      v6 = IPC::Decoder::decode<long long>(v5);
      if (v31)
      {
        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v270);
        if (v271 & 1) != 0 || (v31 = *v5, v214 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v215 = *(v5 + 3)) != 0) && v214 && ((*(*v215 + 16))(v215, v31), (v271))
        {
          if ((v264[1] & 1) == 0)
          {
            goto LABEL_384;
          }

          v32 = v264[0];
          v264[0] = 0;
          *buf = v30;
          *&buf[8] = v32;
          *&buf[16] = v6;
          *&buf[24] = *v270;
          v33 = 1;
        }

        else
        {
          v33 = 0;
          buf[0] = 0;
        }

        buf[40] = v33;
      }

      else
      {
        v33 = 0;
        buf[0] = 0;
        buf[40] = 0;
      }

      if (v264[1])
      {
        v170 = v264[0];
        v264[0] = 0;
        if (v170)
        {
          if (atomic_fetch_add_explicit(v170, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v170, v31);
          }
        }
      }

      if ((v33 & 1) == 0)
      {
        goto LABEL_444;
      }

      v171 = *a4;
      *a4 = 0;
      while (1)
      {
        v172 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v173 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v173, v172 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v173 == v172)
        {
          goto LABEL_336;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_336:
      v174 = WTF::fastMalloc(v172, 0x18);
      *v174 = &unk_1F10F76D0;
      v174[1] = v171;
      v174[2] = a2;
      v270[0] = v174;
      WebKit::WebPasteboardProxy::informationForItemAtIndex(a1, a2, *buf, &buf[8], v6, *&buf[24], buf[32], v270);
      v175 = v270[0];
      v270[0] = 0;
      if (v175)
      {
        (*(*v175 + 8))(v175);
      }

      if (buf[40])
      {
        goto LABEL_339;
      }

      return;
    case 0x106B:
      IPC::Decoder::decode<std::optional<unsigned long long>>(a3, v264);
      if ((v265 & 1) == 0)
      {
        goto LABEL_444;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v5, &v266);
      if ((v267 & 1) == 0)
      {
        v252 = *v5;
        v253 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        v254 = *(v5 + 3);
        if (!v254)
        {
          goto LABEL_444;
        }

        if (!v253)
        {
          goto LABEL_444;
        }

        (*(*v254 + 16))(v254, v252);
        if ((v267 & 1) == 0)
        {
          goto LABEL_444;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v5, &v268);
      if (v269 & 1) != 0 || (v62 = *v5, v255 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v256 = *(v5 + 3)) != 0) && v255 && ((*(*v256 + 16))(v256, v62), (v269))
      {
        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v270);
        if (v271 & 1) != 0 || (v62 = *v5, v206 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v207 = *(v5 + 3)) != 0) && v206 && ((*(*v207 + 16))(v207, v62), (v271))
        {
          if ((v265 & 1) == 0 || (v267 & 1) == 0 || (v269 & 1) == 0)
          {
            goto LABEL_384;
          }

          *buf = *v264;
          v63 = v266;
          v266 = 0;
          *&buf[16] = v63;
          *&buf[24] = v268;
          *&buf[32] = *v270;
          v64 = 1;
          LOBYTE(v273[0]) = 1;
        }

        else
        {
          buf[0] = 0;
          LOBYTE(v273[0]) = 0;
          if (v269)
          {
            v208 = v268;
            v268 = 0;
            if (v208)
            {
              if (atomic_fetch_add_explicit(v208, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v208, v62);
              }
            }
          }

          v64 = 0;
        }
      }

      else
      {
        v64 = 0;
        buf[0] = 0;
        LOBYTE(v273[0]) = 0;
      }

      if (v267)
      {
        v65 = v266;
        v266 = 0;
        if (v65)
        {
          if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v65, v62);
          }
        }
      }

      if ((v64 & 1) == 0)
      {
        goto LABEL_444;
      }

      v66 = *a4;
      *a4 = 0;
      while (1)
      {
        v67 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v68 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v68, v67 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v68 == v67)
        {
          goto LABEL_295;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_295:
      v158 = WTF::fastMalloc(v67, 0x18);
      *v158 = &unk_1F10F7770;
      v158[1] = v66;
      v158[2] = a2;
      v270[0] = v158;
      WebKit::WebPasteboardProxy::readBufferFromPasteboard(a1, a2, *buf, *&buf[8], &buf[16], &buf[24], *&buf[32], buf[40], v270);
      v159 = v270[0];
      v270[0] = 0;
      if (v159)
      {
        (*(*v159 + 8))(v159);
      }

      if (v273[0])
      {
        v160 = *&buf[24];
        *&buf[24] = 0;
        if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v160, v125);
        }

        v161 = *&buf[16];
        *&buf[16] = 0;
        if (v161)
        {
          goto LABEL_323;
        }
      }

      return;
    case 0x106C:
      v13 = *(a3 + 8);
      v14 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v15 = v14 - *v5;
      v16 = v13 >= v15;
      v17 = v13 - v15;
      if (!v16 || v17 <= 7)
      {
        goto LABEL_519;
      }

      *(v5 + 2) = v14 + 1;
      if (!v14)
      {
        goto LABEL_443;
      }

      v6 = *v14;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v5, &v268);
      if ((v269 & 1) == 0)
      {
        v239 = *v5;
        v240 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        v241 = *(v5 + 3);
        if (!v241)
        {
          goto LABEL_444;
        }

        if (!v240)
        {
          goto LABEL_444;
        }

        (*(*v241 + 16))(v241, v239);
        if ((v269 & 1) == 0)
        {
          goto LABEL_444;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v5, v264);
      if (v264[1] & 1) != 0 || (v19 = *v5, v250 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v251 = *(v5 + 3)) != 0) && v250 && ((*(*v251 + 16))(v251, v19), (v264[1]))
      {
        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v270);
        if (v271 & 1) != 0 || (v19 = *v5, v203 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v204 = *(v5 + 3)) != 0) && v203 && ((*(*v204 + 16))(v204, v19), (v271))
        {
          if ((v269 & 1) == 0 || (v264[1] & 1) == 0)
          {
            goto LABEL_384;
          }

          v20 = v268;
          v268 = 0;
          *buf = v6;
          *&buf[8] = v20;
          *&buf[16] = v264[0];
          *&buf[24] = *v270;
          v21 = 1;
          buf[40] = 1;
        }

        else
        {
          buf[0] = 0;
          buf[40] = 0;
          if (v264[1])
          {
            v205 = v264[0];
            v264[0] = 0;
            if (v205)
            {
              if (atomic_fetch_add_explicit(v205, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v205, v19);
              }
            }
          }

          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
        buf[0] = 0;
        buf[40] = 0;
      }

      if (v269)
      {
        v22 = v268;
        v268 = 0;
        if (v22)
        {
          if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v19);
          }
        }
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_444;
      }

      v23 = *a4;
      *a4 = 0;
      while (1)
      {
        v24 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v25 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v25 == v24)
        {
          goto LABEL_281;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_281:
      v152 = WTF::fastMalloc(v24, 0x18);
      *v152 = &unk_1F10F7720;
      v152[1] = v23;
      v152[2] = a2;
      v270[0] = v152;
      WebKit::WebPasteboardProxy::readStringFromPasteboard(a1, a2, *buf, &buf[8], &buf[16], *&buf[24], buf[32], v270);
      v153 = v270[0];
      v270[0] = 0;
      if (v153)
      {
        (*(*v153 + 8))(v153);
      }

      if ((buf[40] & 1) == 0)
      {
        return;
      }

      v154 = *&buf[16];
      *&buf[16] = 0;
      if (v154 && atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v154, v125);
      }

      goto LABEL_339;
    case 0x106D:
      v13 = *(a3 + 8);
      v78 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v79 = v78 - *v5;
      v16 = v13 >= v79;
      v80 = v13 - v79;
      if (v16 && v80 > 7)
      {
        *(v5 + 2) = v78 + 1;
        if (!v78)
        {
          goto LABEL_443;
        }

        v6 = *v78;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v5, v264);
        if ((v264[1] & 1) == 0)
        {
          v245 = *v5;
          v246 = *(v5 + 1);
          *v5 = 0;
          *(v5 + 1) = 0;
          v247 = *(v5 + 3);
          if (!v247)
          {
            goto LABEL_444;
          }

          if (!v246)
          {
            goto LABEL_444;
          }

          (*(*v247 + 16))(v247, v245);
          if ((v264[1] & 1) == 0)
          {
            goto LABEL_444;
          }
        }

        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v270);
        if ((v271 & 1) == 0)
        {
          goto LABEL_385;
        }

        goto LABEL_129;
      }

LABEL_519:
      *v5 = 0;
      *(v5 + 1) = 0;
      v261 = *(v5 + 3);
      if (!v261)
      {
        v13 = 0;
        goto LABEL_443;
      }

      if (!v13)
      {
        goto LABEL_443;
      }

      goto LABEL_544;
    case 0x106E:
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v266);
      if (v267 & 1) != 0 || ((v231 = *v5, v232 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v233 = *(v5 + 3)) != 0) ? (v234 = v232 == 0) : (v234 = 1), !v234 && ((*(*v233 + 16))(v233, v231), (v267)))
      {
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v5, &v268);
        if (v269 & 1) != 0 || (v100 = *v5, v248 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v249 = *(v5 + 3)) != 0) && v248 && ((*(*v249 + 16))(v249, v100), (v269))
        {
          IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(v5, v264);
          if (LOBYTE(v264[1]) == 1)
          {
            IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v270);
            if (v271 & 1) != 0 || (v100 = *v5, v216 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v217 = *(v5 + 3)) != 0) && v216 && ((*(*v217 + 16))(v217, v100), (v271))
            {
              if ((v267 & 1) == 0 || (v269 & 1) == 0 || (v264[1] & 1) == 0)
              {
                goto LABEL_384;
              }

              v101 = v266;
              v266 = 0;
              v102 = v268;
              v268 = 0;
              *buf = v101;
              *&buf[8] = v102;
              *&buf[16] = v264[0];
              *&buf[24] = *v270;
              buf[40] = 1;
            }

            else
            {
              buf[0] = 0;
              buf[40] = 0;
              if (v264[1])
              {
                v218 = v264[0];
                v264[0] = 0;
                if (v218)
                {
                  if (atomic_fetch_add(v218 + 2, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v218 + 2);
                    (*(*v218 + 8))(v218, v100, v216);
                  }
                }
              }
            }
          }

          else
          {
            buf[0] = 0;
            buf[40] = 0;
          }

          if (v269)
          {
            v176 = v268;
            v268 = 0;
            if (v176)
            {
              if (atomic_fetch_add_explicit(v176, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v176, v100);
              }
            }
          }
        }

        else
        {
          buf[0] = 0;
          buf[40] = 0;
        }

        if (v267)
        {
          v177 = v266;
          v266 = 0;
          if (v177)
          {
            if (atomic_fetch_add_explicit(v177, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v177, v100);
            }
          }
        }
      }

      else
      {
        buf[0] = 0;
        buf[40] = 0;
      }

      if ((buf[40] & 1) == 0)
      {
        goto LABEL_444;
      }

      v178 = *a4;
      *a4 = 0;
      while (1)
      {
        v179 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v180 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v180, v179 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v180 == v179)
        {
          goto LABEL_356;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_356:
      v181 = WTF::fastMalloc(v179, 0x18);
      *v181 = &unk_1F10F79F0;
      v181[1] = v178;
      v181[2] = a2;
      v270[0] = v181;
      WebKit::WebPasteboardProxy::setPasteboardBufferForType(a1, a2, buf, &buf[8], &buf[16], *&buf[24], buf[32], v270);
      v182 = v270[0];
      v270[0] = 0;
      if (v182)
      {
        (*(*v182 + 8))(v182);
      }

      if ((buf[40] & 1) == 0)
      {
        return;
      }

      v183 = *&buf[16];
      *&buf[16] = 0;
      if (v183 && atomic_fetch_add(v183 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v183 + 2);
        (*(*v183 + 8))(v183);
      }

      goto LABEL_277;
    case 0x106F:
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v268);
      if (v269 & 1) != 0 || ((v235 = *v5, v236 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v237 = *(v5 + 3)) != 0) ? (v238 = v236 == 0) : (v238 = 1), !v238 && ((*(*v237 + 16))(v237, v235), (v269)))
      {
        IPC::ArgumentCoder<WebCore::Color,void>::decode(v5, v264);
        if (v264[1] & 1) != 0 || (v111 = *v5, v259 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v260 = *(v5 + 3)) != 0) && v259 && ((*(*v260 + 16))(v260, v111), (v264[1]))
        {
          IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v270);
          if (v271 & 1) != 0 || (v111 = *v5, v200 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v201 = *(v5 + 3)) != 0) && v200 && ((*(*v201 + 16))(v201, v111), (v271))
          {
            if ((v269 & 1) == 0 || (v264[1] & 1) == 0)
            {
              goto LABEL_384;
            }

            v112 = v268;
            v268 = 0;
            *buf = v112;
            *&buf[8] = v264[0];
            *&buf[16] = *v270;
            buf[32] = 1;
          }

          else
          {
            buf[0] = 0;
            buf[32] = 0;
            if ((v264[1] & 1) != 0 && (v264[0] & 0x8000000000000) != 0)
            {
              v202 = (v264[0] & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add((v264[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v202);
                WTF::fastFree(v202, v111);
              }
            }
          }
        }

        else
        {
          buf[0] = 0;
          buf[32] = 0;
        }

        if (v269)
        {
          v113 = v268;
          v268 = 0;
          if (v113)
          {
            if (atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v113, v111);
            }
          }
        }
      }

      else
      {
        buf[0] = 0;
        buf[32] = 0;
      }

      if ((buf[32] & 1) == 0)
      {
        goto LABEL_444;
      }

      v114 = *a4;
      *a4 = 0;
      while (1)
      {
        v115 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v116 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v116, v115 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v116 == v115)
        {
          goto LABEL_288;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_288:
      v155 = WTF::fastMalloc(v115, 0x18);
      *v155 = &unk_1F10F79A0;
      v155[1] = v114;
      v155[2] = a2;
      v270[0] = v155;
      WebKit::WebPasteboardProxy::setPasteboardColor(a1, a2, buf, &buf[8], *&buf[16], buf[24], v270);
      v156 = v270[0];
      v270[0] = 0;
      if (v156)
      {
        (*(*v156 + 8))(v156);
      }

      if ((buf[32] & 1) == 0)
      {
        return;
      }

      if ((*&buf[8] & 0x8000000000000) != 0)
      {
        v157 = (*&buf[8] & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*&buf[8] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v157);
          WTF::fastFree(v157, v125);
        }
      }

      goto LABEL_322;
    case 0x1070:
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[40] != 1)
      {
        return;
      }

      v85 = *a4;
      *a4 = 0;
      while (1)
      {
        v86 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v87 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v87, v86 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v87 == v86)
        {
          goto LABEL_232;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_232:
      v137 = WTF::fastMalloc(v86, 0x18);
      *v137 = &unk_1F10F79C8;
      v137[1] = v85;
      v137[2] = a2;
      v270[0] = v137;
      WebKit::WebPasteboardProxy::setPasteboardStringForType(a1, a2, buf, &buf[8], &buf[16], *&buf[24], buf[32], v270);
      v138 = v270[0];
      v270[0] = 0;
      if (v138)
      {
        (*(*v138 + 8))(v138);
      }

      if ((buf[40] & 1) == 0)
      {
        return;
      }

      v139 = *&buf[16];
      *&buf[16] = 0;
      if (v139 && atomic_fetch_add_explicit(v139, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v139, v125);
      }

      goto LABEL_277;
    case 0x1071:
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[40] != 1)
      {
        return;
      }

      v91 = *a4;
      *a4 = 0;
      while (1)
      {
        v92 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v93 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v93, v92 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v93 == v92)
        {
          goto LABEL_242;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_242:
      v141 = WTF::fastMalloc(v92, 0x18);
      *v141 = &unk_1F10F7950;
      v141[1] = v91;
      v141[2] = a2;
      v270[0] = v141;
      WebKit::WebPasteboardProxy::setPasteboardTypes(a1, a2, buf, &buf[8], *&buf[24], *&buf[32], v270);
LABEL_243:
      v142 = v270[0];
      v270[0] = 0;
      if (v142)
      {
        (*(*v142 + 8))(v142);
      }

      if ((buf[40] & 1) == 0)
      {
        return;
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v136);
      goto LABEL_322;
    case 0x1072:
      IPC::Decoder::decode<std::tuple<WebCore::PasteboardURL,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (v275 != 1)
      {
        return;
      }

      v5 = *a4;
      *a4 = 0;
      while (1)
      {
        v109 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v110 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v110, v109 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v110 == v109)
        {
          goto LABEL_263;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_263:
      v147 = WTF::fastMalloc(v109, 0x18);
      *v147 = &unk_1F10F7978;
      v147[1] = v5;
      v147[2] = a2;
      v270[0] = v147;
      if (v275)
      {
        WebKit::WebPasteboardProxy::setPasteboardURL(a1, a2, buf, v273, v273[1], v274, v270);
        v148 = v270[0];
        v270[0] = 0;
        if (v148)
        {
          (*(*v148 + 8))(v148);
        }

        if ((v275 & 1) == 0)
        {
          return;
        }

        v149 = v273[0];
        v273[0] = 0;
        if (v149 && atomic_fetch_add_explicit(v149, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v149, v125);
        }

        v150 = *&buf[40];
        *&buf[40] = 0;
        if (!v150)
        {
          goto LABEL_322;
        }

        goto LABEL_278;
      }

      do
      {
LABEL_384:
        __break(1u);
LABEL_385:
        v196 = *v5;
        v197 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        v198 = *(v5 + 3);
        if (!v198 || !v197 || ((*(*v198 + 16))(v198, v196), (v271 & 1) == 0))
        {
          if (v264[1])
          {
            v199 = v264[0];
            v264[0] = 0;
            if (v199)
            {
              if (atomic_fetch_add_explicit(v199, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v199, v196);
              }
            }
          }

          goto LABEL_444;
        }

LABEL_129:
        ;
      }

      while ((v264[1] & 1) == 0);
      *buf = v6;
      *&buf[8] = v264[0];
      *&buf[16] = *v270;
      buf[32] = 1;
      v82 = *a4;
      *a4 = 0;
      while (1)
      {
        v83 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v84 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v84, v83 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v84 == v83)
        {
          goto LABEL_304;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_304:
      v162 = WTF::fastMalloc(v83, 0x18);
      *v162 = &unk_1F10F7748;
      v162[1] = v82;
      v162[2] = a2;
      v270[0] = v162;
      WebKit::WebPasteboardProxy::readURLFromPasteboard(a1, a2, v6, &buf[8], *&buf[16], buf[24], v270);
      v163 = v270[0];
      v270[0] = 0;
      if (v163)
      {
        (*(*v163 + 8))(v163);
      }

      if (buf[32])
      {
LABEL_339:
        v161 = *&buf[8];
        *&buf[8] = 0;
        if (!v161)
        {
          return;
        }

        goto LABEL_323;
      }

      return;
    case 0x1073:
      IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] != 1)
      {
        return;
      }

      v117 = *a4;
      *a4 = 0;
      while (1)
      {
        v118 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v119 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v119, v118 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v119 == v118)
        {
          goto LABEL_273;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_273:
      v151 = WTF::fastMalloc(v118, 0x18);
      *v151 = &unk_1F10F7680;
      v151[1] = v117;
      v151[2] = a2;
      v270[0] = v151;
      WebKit::WebPasteboardProxy::typesSafeForDOMToReadAndWrite(a1, a2, buf, &buf[8], *&buf[16], buf[24], v270);
LABEL_274:
      v130 = v270[0];
      v270[0] = 0;
      if (v130)
      {
LABEL_275:
        (*(*v130 + 8))(v130);
      }

LABEL_276:
      if ((buf[32] & 1) == 0)
      {
        return;
      }

LABEL_277:
      v150 = *&buf[8];
      *&buf[8] = 0;
      if (v150)
      {
LABEL_278:
        if (atomic_fetch_add_explicit(v150, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v150, v125);
        }
      }

      goto LABEL_322;
    case 0x1074:
      IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[24] != 1)
      {
        return;
      }

      v56 = *a4;
      *a4 = 0;
      while (1)
      {
        v57 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v58 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v58, v57 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v58 == v57)
        {
          goto LABEL_218;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_218:
      v131 = WTF::fastMalloc(v57, 0x18);
      *v131 = &unk_1F10F7A40;
      v131[1] = v56;
      v131[2] = a2;
      v270[0] = v131;
      WebKit::WebPasteboardProxy::urlStringSuitableForLoading(a1, a2, buf, *&buf[8], buf[16], v270);
      v128 = v270[0];
      v270[0] = 0;
      if (v128)
      {
LABEL_259:
        (*(*v128 + 8))(v128);
      }

LABEL_260:
      if (buf[24])
      {
LABEL_322:
        v161 = *buf;
        *buf = 0;
        if (v161)
        {
LABEL_323:
          if (atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v161, v125);
          }
        }
      }

      return;
    case 0x1075:
      v46 = *(a3 + 8);
      v47 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v48 = *v5;
      v49 = v47 - *v5;
      v16 = v46 >= v49;
      v50 = v46 - v49;
      if (!v16 || v50 <= 7)
      {
        *v5 = 0;
        *(v5 + 1) = 0;
        v262 = *(v5 + 3);
        if (v262)
        {
          if (v46)
          {
            (*(*v262 + 16))(v262, a5);
            v46 = *(v5 + 1);
          }
        }

        else
        {
          v46 = 0;
        }

LABEL_524:
        *v5 = 0;
        *(v5 + 1) = 0;
        v261 = *(v5 + 3);
        if (v261 && v46)
        {
LABEL_544:
          (*(*v261 + 16))(v261, a5);
        }

LABEL_442:
        v13 = *(v5 + 1);
LABEL_443:
        *v5 = 0;
        *(v5 + 1) = 0;
        v223 = *(v5 + 3);
        if (v223 && v13)
        {
          (*(*v223 + 16))(v223, a5);
        }

LABEL_444:
        v224 = *v5;
        v225 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        v226 = *(v5 + 3);
        if (v226 && v225)
        {
          (*(*v226 + 16))(v226, v224);
        }

        return;
      }

      *(v5 + 2) = v47 + 1;
      if (!v47)
      {
        goto LABEL_524;
      }

      v52 = *v47;
      v270[0] = 0;
      v270[1] = 0;
      if (v52 < 0xAAAA)
      {
        if (v52)
        {
          LODWORD(v270[1]) = 24 * v52 / 0x18u;
          v270[0] = WTF::fastMalloc((3 * v52), (24 * v52));
          do
          {
            IPC::Decoder::decode<WebCore::PasteboardCustomData>(buf, v5);
            v53 = buf[24];
            if (buf[24] == 1)
            {
              v54 = HIDWORD(v270[1]);
              if (HIDWORD(v270[1]) == LODWORD(v270[1]))
              {
                WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PasteboardCustomData>(v270, buf);
              }

              else
              {
                WebCore::PasteboardCustomData::PasteboardCustomData();
                HIDWORD(v270[1]) = v54 + 1;
              }
            }

            if (buf[24] == 1)
            {
              WebCore::PasteboardCustomData::~PasteboardCustomData(buf);
            }

            if ((v53 & 1) == 0)
            {
              goto LABEL_441;
            }

            --v52;
          }

          while (v52);
          v6 = v270[0];
          v55 = v270[1];
          LODWORD(v52) = HIDWORD(v270[1]);
        }

        else
        {
          v55 = 0;
          v6 = 0;
        }

        a5.n128_u64[0] = 0;
        *v270 = a5;
        v264[0] = v6;
        LODWORD(v264[1]) = v55;
        goto LABEL_364;
      }

      do
      {
        IPC::Decoder::decode<WebCore::PasteboardCustomData>(buf, v5);
        v220 = buf[24];
        if (buf[24] == 1)
        {
          v221 = HIDWORD(v270[1]);
          if (HIDWORD(v270[1]) == LODWORD(v270[1]))
          {
            WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PasteboardCustomData>(v270, buf);
          }

          else
          {
            WebCore::PasteboardCustomData::PasteboardCustomData();
            HIDWORD(v270[1]) = v221 + 1;
          }
        }

        if (buf[24] == 1)
        {
          WebCore::PasteboardCustomData::~PasteboardCustomData(buf);
        }

        if ((v220 & 1) == 0)
        {
LABEL_441:
          WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v270, v48);
          goto LABEL_442;
        }

        --v52;
      }

      while (v52);
      v55 = v270[1];
      v6 = v270[0];
      v263 = HIDWORD(v270[1]);
      if (LODWORD(v270[1]) <= HIDWORD(v270[1]))
      {
        goto LABEL_440;
      }

      v222 = v270[0];
      if (!HIDWORD(v270[1]))
      {
        goto LABEL_435;
      }

      if (HIDWORD(v270[1]) >= 0xAAAAAAB)
      {
        __break(0xC471u);
      }

      else
      {
        v222 = WTF::fastMalloc((3 * HIDWORD(v270[1])), (24 * HIDWORD(v270[1])));
        v55 = 24 * v263 / 0x18;
        if (v222 != v6)
        {
          WTF::VectorMover<false,WebCore::PasteboardCustomData>::move(v6, (v6 + 24 * v263), v222);
        }

LABEL_435:
        if (v6)
        {
          if (v222 == v6)
          {
            v55 = 0;
            v222 = 0;
          }

          WTF::fastFree(v6, v48);
        }

        v6 = v222;
LABEL_440:
        *&v219 = 0;
        *v270 = v219;
        v264[0] = v6;
        LODWORD(v264[1]) = v55;
        LODWORD(v52) = v263;
LABEL_364:
        HIDWORD(v264[1]) = v52;
        v265 = 1;
        WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v270, v48);
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v5, &v268);
        if ((v269 & 1) == 0)
        {
          v184 = *v5;
          v257 = *(v5 + 1);
          *v5 = 0;
          *(v5 + 1) = 0;
          v258 = *(v5 + 3);
          if (!v258 || !v257 || ((*(*v258 + 16))(v258, v184), (v269 & 1) == 0))
          {
LABEL_412:
            WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v264, v184);
            goto LABEL_444;
          }
        }

        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v270);
        if ((v271 & 1) == 0)
        {
          v184 = *v5;
          v209 = *(v5 + 1);
          *v5 = 0;
          *(v5 + 1) = 0;
          v210 = *(v5 + 3);
          if (!v210 || !v209 || ((*(*v210 + 16))(v210, v184), (v271 & 1) == 0))
          {
            if (v269)
            {
              v211 = v268;
              v268 = 0;
              if (v211)
              {
                if (atomic_fetch_add_explicit(v211, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v211, v184);
                }
              }
            }

            goto LABEL_412;
          }
        }

        if ((v269 & 1) == 0)
        {
          goto LABEL_384;
        }

        *&v185 = 0;
        *v264 = v185;
        *buf = v6;
        *&buf[8] = v55;
        *&buf[12] = v52;
        *&buf[16] = v268;
        *&buf[24] = *v270;
        buf[40] = 1;
        WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v264, v184);
        v186 = *a4;
        *a4 = 0;
        while (1)
        {
          v187 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v188 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v188, v187 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v188 == v187)
          {
            goto LABEL_372;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_372:
        v189 = WTF::fastMalloc(v187, 0x18);
        *v189 = &unk_1F10F7658;
        v189[1] = v186;
        v189[2] = a2;
        v270[0] = v189;
        WebKit::WebPasteboardProxy::writeCustomData(a1, a2, buf, &buf[16], *&buf[24], buf[32], v270);
        v191 = v270[0];
        v270[0] = 0;
        if (v191)
        {
          (*(*v191 + 8))(v191);
        }

        if (buf[40])
        {
          v192 = *&buf[16];
          *&buf[16] = 0;
          if (v192 && atomic_fetch_add_explicit(v192, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v192, v190);
          }

          WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v190);
        }
      }

      return;
    default:
      v120 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v193 = 4223;
        }

        else
        {
          v193 = v6;
        }

        v194 = (&IPC::Detail::messageDescriptions)[3 * v193];
        v195 = *(v5 + 7);
        *buf = 136315394;
        *&buf[4] = v194;
        *&buf[12] = 2048;
        *&buf[14] = v195;
        _os_log_error_impl(&dword_19D52D000, v120, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
      }

      v121 = *v5;
      v122 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v123 = *(v5 + 3);
      if (v123 && v122)
      {
        (*(*v123 + 16))(v123, v121);
      }

      return;
  }
}

unsigned int **WebKit::WebPaymentCoordinator::didReceiveMessage(WebKit::WebPaymentCoordinator *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = (this + 8);
  ++*(this + 2);
  v6 = *(a3 + 25);
  if (v6 <= 0xB48)
  {
    if (v6 != 2886)
    {
      if (v6 != 2887)
      {
        if (v6 != 2888)
        {
          goto LABEL_25;
        }

        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, cf);
        if ((cf[8] & 1) == 0)
        {
          v7 = *a3;
          v23 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v24 = *(a3 + 3);
          if (!v24)
          {
            return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
          }

          if (!v23)
          {
            return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
          }

          (*(*v24 + 16))(v24, v7);
          if ((cf[8] & 1) == 0)
          {
            return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
          }
        }

        WebKit::WebPaymentCoordinator::didChangeCouponCode(this);
LABEL_18:
        if ((cf[8] & 1) == 0)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        v8 = *cf;
        *cf = 0;
        if (!v8)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        goto LABEL_44;
      }

      IPC::ArgumentCoder<WebCore::PaymentSessionError,void>::decode(a3, cf);
      if ((cf[8] & 1) == 0)
      {
        v7 = *a3;
        v42 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v43 = *(a3 + 3);
        if (!v43 || !v42)
        {
          goto LABEL_103;
        }

        (*(*v43 + 16))(v43, v7);
        if ((cf[8] & 1) == 0)
        {
          v11 = *(a3 + 3);
          v7 = *a3;
          v10 = *(a3 + 1);
          goto LABEL_116;
        }
      }

      v44[0] = *cf;
      if (*cf)
      {
        CFRetain(*cf);
        LOBYTE(v44[1]) = 1;
        if (cf[8])
        {
          v15 = *cf;
          *cf = 0;
          if (v15)
          {
            CFRelease(v15);
          }
        }
      }

      else
      {
        LOBYTE(v44[1]) = 1;
      }

      WebKit::WebPaymentCoordinator::didCancelPaymentSession(this);
      v16 = v44[0];
      v44[0] = 0;
      if (v16)
      {
        CFRelease(v16);
      }

      return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
    }

    IPC::ArgumentCoder<WebCore::Payment,void>::decode(a3, cf);
    if ((cf[16] & 1) == 0)
    {
      v25 = *a3;
      v26 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v27 = *(a3 + 3);
      if (!v27 || !v26 || ((*(*v27 + 16))(v27, v25), (cf[16] & 1) == 0))
      {
        LOBYTE(v44[0]) = 0;
        LOBYTE(v45[0]) = 0;
        v7 = *a3;
        v28 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v29 = *(a3 + 3);
        if (!v29)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        if (!v28)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        (*(*v29 + 16))(v29, v7);
        if ((v45[0] & 1) == 0)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        goto LABEL_56;
      }
    }

    v44[0] = (MEMORY[0x1E69E2EC0] + 16);
    v44[1] = *&cf[8];
    if (*&cf[8])
    {
      CFRetain(*&cf[8]);
      LOBYTE(v45[0]) = 1;
      if ((cf[16] & 1) == 0)
      {
LABEL_56:
        WebKit::WebPaymentCoordinator::didAuthorizePayment(this, v44);
        if (v45[0])
        {
          WebCore::Payment::~Payment(v44);
        }

        return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
      }
    }

    else
    {
      LOBYTE(v45[0]) = 1;
    }

    WebCore::Payment::~Payment(cf);
    goto LABEL_56;
  }

  if (*(a3 + 25) > 0xB4Au)
  {
    if (v6 != 2891)
    {
      if (v6 != 2892)
      {
        goto LABEL_25;
      }

      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, cf);
      if ((cf[8] & 1) == 0)
      {
        v7 = *a3;
        v21 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v22 = *(a3 + 3);
        if (!v22)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        if (!v21)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        (*(*v22 + 16))(v22, v7);
        if ((cf[8] & 1) == 0)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }
      }

      WebKit::WebPaymentCoordinator::validateMerchant(this, cf);
      goto LABEL_18;
    }

    IPC::ArgumentCoder<WebCore::ApplePayShippingMethod,void>::decode(a3, cf);
    if (v56)
    {
LABEL_34:
      *v44 = *cf;
      *v45 = *&cf[16];
      v48 = v54;
      *v49 = *v55;
      *&v49[13] = *&v55[13];
      v46 = v52;
      v47 = v53;
      v50 = 1;
      WebKit::WebPaymentCoordinator::didSelectShippingMethod(this);
      v12 = v45[1];
      v45[1] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v7);
      }

      v13 = v45[0];
      v45[0] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }

      v14 = v44[1];
      v44[1] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v7);
      }

      v8 = v44[0];
      v44[0] = 0;
      if (!v8)
      {
        return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
      }

LABEL_44:
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
    }

    v7 = *a3;
    v35 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v36 = *(a3 + 3);
    if (v36 && v35)
    {
      (*(*v36 + 16))(v36, v7);
      if (v56)
      {
        goto LABEL_34;
      }

      v7 = *a3;
      v10 = *(a3 + 1);
      v11 = *(a3 + 3);
LABEL_116:
      *a3 = 0;
      *(a3 + 1) = 0;
      if (!v11)
      {
        return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
      }

      goto LABEL_27;
    }

LABEL_103:
    *a3 = 0;
    *(a3 + 1) = 0;
    return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
  }

  if (v6 == 2889)
  {
    IPC::ArgumentCoder<WebCore::PaymentMethod,void>::decode(a3, cf);
    if ((cf[16] & 1) == 0)
    {
      v30 = *a3;
      v31 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v32 = *(a3 + 3);
      if (!v32 || !v31 || ((*(*v32 + 16))(v32, v30), (cf[16] & 1) == 0))
      {
        LOBYTE(v44[0]) = 0;
        LOBYTE(v45[0]) = 0;
        v7 = *a3;
        v33 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v34 = *(a3 + 3);
        if (!v34)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        if (!v33)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        (*(*v34 + 16))(v34, v7);
        if ((v45[0] & 1) == 0)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        goto LABEL_60;
      }
    }

    v44[0] = (MEMORY[0x1E69E2E38] + 16);
    v44[1] = *&cf[8];
    if (*&cf[8])
    {
      CFRetain(*&cf[8]);
      LOBYTE(v45[0]) = 1;
      if ((cf[16] & 1) == 0)
      {
LABEL_60:
        WebKit::WebPaymentCoordinator::didSelectPaymentMethod(this, v44);
        if (v45[0])
        {
          WebCore::PaymentMethod::~PaymentMethod(v44);
        }

        return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
      }
    }

    else
    {
      LOBYTE(v45[0]) = 1;
    }

    WebCore::PaymentMethod::~PaymentMethod(cf);
    goto LABEL_60;
  }

  if (v6 == 2890)
  {
    IPC::ArgumentCoder<WebCore::PaymentContact,void>::decode(a3, cf);
    if ((cf[16] & 1) == 0)
    {
      v37 = *a3;
      v38 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v39 = *(a3 + 3);
      if (!v39 || !v38 || ((*(*v39 + 16))(v39, v37), (cf[16] & 1) == 0))
      {
        LOBYTE(v44[0]) = 0;
        LOBYTE(v45[0]) = 0;
        v7 = *a3;
        v40 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v41 = *(a3 + 3);
        if (!v41)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        if (!v40)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        (*(*v41 + 16))(v41, v7);
        if ((v45[0] & 1) == 0)
        {
          return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
        }

        goto LABEL_64;
      }
    }

    v44[0] = (MEMORY[0x1E69E2E40] + 16);
    v44[1] = *&cf[8];
    if (*&cf[8])
    {
      CFRetain(*&cf[8]);
      LOBYTE(v45[0]) = 1;
      if ((cf[16] & 1) == 0)
      {
LABEL_64:
        WebKit::WebPaymentCoordinator::didSelectShippingContact(this, v44);
        if (v45[0])
        {
          WebCore::PaymentContact::~PaymentContact(v44);
        }

        return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
      }
    }

    else
    {
      LOBYTE(v45[0]) = 1;
    }

    WebCore::PaymentContact::~PaymentContact(cf);
    goto LABEL_64;
  }

LABEL_25:
  v9 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v6 >= 0x107F)
    {
      v18 = 4223;
    }

    else
    {
      v18 = v6;
    }

    v19 = (&IPC::Detail::messageDescriptions)[3 * v18];
    v20 = *(a3 + 7);
    *cf = 136315394;
    *&cf[4] = v19;
    *&cf[12] = 2048;
    *&cf[14] = v20;
    _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", cf, 0x16u);
  }

  v7 = *a3;
  v10 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v11 = *(a3 + 3);
  if (v11)
  {
LABEL_27:
    if (v10)
    {
      (*(*v11 + 16))(v11, v7);
    }
  }

  return WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(v5, v7);
}
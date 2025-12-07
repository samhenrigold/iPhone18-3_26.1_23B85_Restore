uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess36SetDomainsWithCrossPageStorageAccessENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_7HashMapIN7WebCore17RegistrableDomainENS_6VectorISC_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSJ_ISG_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESF_EEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7DD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess36SetDomainsWithCrossPageStorageAccessENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_7HashMapIN7WebCore17RegistrableDomainENS_6VectorISC_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSJ_ISG_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESF_EEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3935;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess41SendResourceLoadStatisticsDataImmediatelyENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7E00;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebProcess::SendResourceLoadStatisticsDataImmediately>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3934;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::ScriptTrackingPrivacyRules>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebKit::ScriptTrackingPrivacyRules>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[64] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::ScriptTrackingPrivacyRules>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebKit::ScriptTrackingPrivacyRules>(a2, v5);
  if (v6)
  {
    _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN6WebKit26ScriptTrackingPrivacyRulesEEEELb0EECI2NS_24__optional_destruct_baseIS4_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(a1, v5);
  }

  else
  {
    *a1 = 0;
    a1[64] = 0;
  }

  return std::optional<WebKit::ScriptTrackingPrivacyRules>::~optional(v5, v3);
}

uint64_t _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN6WebKit26ScriptTrackingPrivacyRulesEEEELb0EECI2NS_24__optional_destruct_baseIS4_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 32, a2 + 8);
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
  *(a1 + 64) = 1;
  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::AccessibilityPreferences>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebKit::AccessibilityPreferences>(a2, &v8);
  if (v10 == 1)
  {
    *a1 = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[24] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebCore::CaptionUserPreferencesDisplayMode>(a2);
  v5 = result;
  if (result > 0xFFu)
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::CaptionUserPreferencesDisplayMode>(a1, a2, &v5);
  }

  *a1 = 0;
  a1[24] = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::CaptionUserPreferencesDisplayMode>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::CaptionUserPreferencesDisplayMode,void>::decode<IPC::Decoder>(a1);
  if (v2 <= 0xFFu)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::CaptionUserPreferencesDisplayMode>(uint64_t a1, IPC::Decoder *a2, _BYTE *a3)
{
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v8);
  if (v10 == 1)
  {
    if (a3[1])
    {
      *a1 = *a3;
      *(a1 + 8) = v8;
      v7 = v9;
      v8 = 0;
      v9 = 0;
      *(a1 + 16) = v7;
      *(a1 + 24) = 1;
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::CaptionUserPreferencesDisplayMode,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v1 & 0x100) != 0 && (v2 = v1, WTF::isValidEnum<WebCore::CaptionUserPreferencesDisplayMode>(v1)))
  {
    v3 = 1;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess13ReleaseMemoryENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7E28;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess13ReleaseMemoryENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7E28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebProcess::ReleaseMemory>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3931;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,std::optional<unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::String,std::optional<unsigned long long>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 24) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,std::optional<unsigned long long>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v7);
  if (v8 == 1)
  {
    result = IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v9);
    if (v10 == 1)
    {
      if (v8)
      {
        *a1 = v7;
        *(a1 + 8) = v9;
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
      v6 = v8;
      *(a1 + 24) = 0;
      if (v6)
      {
        result = v7;
        v7 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
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

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess24GetNotifyStateForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7E50;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess24GetNotifyStateForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7E50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess24GetNotifyStateForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3926;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v5, v10);
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::WebCompiledContentRuleListData>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebKit::WebCompiledContentRuleListData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 80) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::WebCompiledContentRuleListData>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebKit::WebCompiledContentRuleListData>(a2, v9);
  if (v10)
  {
    v4 = v9[0];
    v5 = v9[1];
    v9[0] = 0uLL;
    *a1 = v4;
    *(a1 + 16) = v5;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = 1;
    *(a1 + 64) = v9[4];
  }

  else
  {
    v7 = 0;
    *a1 = 0;
  }

  *(a1 + 80) = v7;
  return std::optional<WebKit::WebCompiledContentRuleListData>::~optional(v9, v3);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess38SetResourceMonitorContentRuleListAsyncENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS8_30WebCompiledContentRuleListDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7E78;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess38SetResourceMonitorContentRuleListAsyncENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS8_30WebCompiledContentRuleListDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7E78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess38SetResourceMonitorContentRuleListAsyncENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS8_30WebCompiledContentRuleListDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3937;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::URL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::URL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= 2 * v3);
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  result = WTF::fastZeroedMalloc((48 * v5 + 16));
  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v8 = 0;
    v9 = v3;
    while (1)
    {
      v10 = v2 + 48 * v8;
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = v11[4];
          if (v16 < 0x100)
          {
            v17 = WTF::StringImpl::hashSlowCase(v11);
          }

          else
          {
            v17 = v16 >> 8;
          }

          v18 = 0;
          do
          {
            v19 = (v14 + 48 * (v17 & v15));
            v17 = ++v18 + (v17 & v15);
          }

          while (*v19);
          v20 = v19[1];
          v19[1] = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v7);
          }

          v21 = *v19;
          *v19 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v7);
          }

          v22 = *v10;
          *v10 = 0;
          *v19 = v22;
          WTF::URL::URL((v19 + 1), (v10 + 8));
          v23 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v7);
          }

          v13 = *v10;
          *v10 = 0;
          if (!v13 || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v12 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v7);
          }

          v13 = *v10;
          *v10 = 0;
          if (!v13 || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_35;
          }
        }

        WTF::StringImpl::destroy(v13, v7);
      }

LABEL_35:
      if (++v8 == v9)
      {
        goto LABEL_39;
      }
    }
  }

  if (v2)
  {
LABEL_39:

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::URL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::URL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = v4[1];
        v4[1] = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      v4 += 6;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool20StoppedUsingGamepadsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvRS7_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7EA0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool20StoppedUsingGamepadsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvRS7_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7EA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool20StoppedUsingGamepadsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvRS7_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3914;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool17PlayGamepadEffectENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEN7WebCore23GamepadHapticEffectTypeERKNSD_23GamepadEffectParametersEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7EC8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool17PlayGamepadEffectENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEN7WebCore23GamepadHapticEffectTypeERKNSD_23GamepadEffectParametersEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7EC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool17PlayGamepadEffectENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEN7WebCore23GamepadHapticEffectTypeERKNSD_23GamepadEffectParametersEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3912;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool18StopGamepadEffectsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7EF0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool18StopGamepadEffectsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7EF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool18StopGamepadEffectsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3913;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14WebProcessPool24HandleSynchronousMessageEN6WebKit14WebProcessPoolES8_FvRNS2_10ConnectionERKNS_6StringERKNS7_8UserDataEONS_17CompletionHandlerIFvOSE_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F7F18;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14WebProcessPool24HandleSynchronousMessageEN6WebKit14WebProcessPoolES8_FvRNS2_10ConnectionERKNS_6StringERKNS7_8UserDataEONS_17CompletionHandlerIFvOSE_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F7F18;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14WebProcessPool24HandleSynchronousMessageEN6WebKit14WebProcessPoolES8_FvRNS2_10ConnectionERKNS_6StringERKNS7_8UserDataEONS_17CompletionHandlerIFvOSE_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy16GetNotificationsENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7F40;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy16GetNotificationsENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7F40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy16GetNotificationsENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3916;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy14SetupLogStreamENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvjONS2_28StreamServerConnectionHandleENS_23ObjectIdentifierGenericINS8_23LogStreamIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRNS2_9SemaphoreESJ_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SJ_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7F68;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy29CreateServiceWorkerDebuggableENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_3URLENSB_26ServiceWorkerIsInspectableEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F7F90;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy29CreateServiceWorkerDebuggableENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_3URLENSB_26ServiceWorkerIsInspectableEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7F90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy29CreateServiceWorkerDebuggableENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_3URLENSB_26ServiceWorkerIsInspectableEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3915;
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

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<unsigned long long,WTF::String>,void>::decode<IPC::Decoder,unsigned long long>(a1, &v6, a2);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15ShouldTerminateEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F7FB8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15ShouldTerminateEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F7FB8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15ShouldTerminateEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy27GetNetworkProcessConnectionEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvONS7_28NetworkProcessConnectionInfoEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F7FE0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy27GetNetworkProcessConnectionEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvONS7_28NetworkProcessConnectionInfoEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F7FE0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy27GetNetworkProcessConnectionEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvONS7_28NetworkProcessConnectionInfoEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<WebKit::NetworkProcessConnectionInfo,void>::encode(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy43WaitForSharedPreferencesForWebProcessToSyncEN6WebKit15WebProcessProxyES8_FvyONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F8008;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy43WaitForSharedPreferencesForWebProcessToSyncEN6WebKit15WebProcessProxyES8_FvyONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F8008;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy43WaitForSharedPreferencesForWebProcessToSyncEN6WebKit15WebProcessProxyES8_FvyONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy25SerializeAndWrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore13CryptoKeyDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F8030;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy25SerializeAndWrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore13CryptoKeyDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F8030;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy25SerializeAndWrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore13CryptoKeyDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15UnwrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore16WrappedCryptoKeyEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F8058;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15UnwrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore16WrappedCryptoKeyEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F10F8058;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15UnwrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore16WrappedCryptoKeyEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(*(a1 + 8), a2);
  v3 = *(v2 + 8);

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

void sub_19DADCDDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DADCEB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DADD264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DADD344(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DADD5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DADDA08(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  CFRelease(*(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_19DADED30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DADEE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CFRelease(*(v5 + 8));
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v7);
  _Unwind_Resume(a1);
}

void sub_19DADEF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CFRelease(*(v5 + 8));
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v7);
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebRTCMonitor::didReceiveMessage(WebKit::WebRTCMonitor *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  WebKit::WebRTCMonitor::ref(this);
  v6 = *(a3 + 25);
  if (v6 != 3024)
  {
    v26 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v27 = 4223;
      }

      else
      {
        v27 = v6;
      }

      v28 = (&IPC::Detail::messageDescriptions)[3 * v27];
      v29 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v28;
      *v60 = 2048;
      *&v60[2] = v29;
      _os_log_error_impl(&dword_19D52D000, v26, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_38;
  }

  v7 = *(a3 + 1);
  v8 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *a3;
  v10 = v8 - *a3;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (!v11 || v12 <= 7)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v49 = *(a3 + 3);
    if (v49)
    {
      if (v7)
      {
        (*(*v49 + 16))(v49);
        v7 = *(a3 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_65;
  }

  *(a3 + 2) = v8 + 1;
  if (!v8)
  {
LABEL_65:
    *a3 = 0;
    *(a3 + 1) = 0;
    v50 = *(a3 + 3);
    if (v50 && v7)
    {
      (*(*v50 + 16))(v50);
    }

    goto LABEL_59;
  }

  v14 = *v8;
  v56[0] = 0;
  v56[1] = 0;
  if (v14 >= 0x2AAA)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::RTCNetwork>(buf, a3);
      v36 = v65;
      if (v65 == 1)
      {
        if (HIDWORD(v56[1]) == LODWORD(v56[1]))
        {
          WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RTCNetwork>(v56, buf);
        }

        else
        {
          v37 = v56[0] + 96 * HIDWORD(v56[1]);
          *v37 = 0;
          *(v37 + 1) = 0;
          v38 = *buf;
          *buf = 0;
          *v37 = v38;
          LODWORD(v38) = *&buf[8];
          *&buf[8] = 0;
          *(v37 + 2) = v38;
          LODWORD(v38) = *v60;
          *v60 = 0;
          *(v37 + 3) = v38;
          *(v37 + 2) = 0;
          *(v37 + 3) = 0;
          v39 = *&v60[4];
          *&v60[4] = 0;
          *(v37 + 2) = v39;
          LODWORD(v39) = *&v60[12];
          *&v60[12] = 0;
          *(v37 + 6) = v39;
          LODWORD(v39) = *&v60[16];
          *&v60[16] = 0;
          *(v37 + 7) = v39;
          v40 = *v61;
          v41 = *&v61[16];
          *(v37 + 60) = *&v61[28];
          *(v37 + 2) = v40;
          *(v37 + 3) = v41;
          *(v37 + 10) = 0;
          *(v37 + 11) = 0;
          v42 = v62;
          v62 = 0;
          *(v37 + 10) = v42;
          LODWORD(v42) = v63;
          v63 = 0;
          *(v37 + 22) = v42;
          LODWORD(v42) = v64;
          v64 = 0;
          *(v37 + 23) = v42;
          ++HIDWORD(v56[1]);
        }
      }

      if (v65 == 1)
      {
        v43 = v62;
        if (v62)
        {
          v62 = 0;
          v63 = 0;
          WTF::fastFree(v43, v9);
        }

        v44 = *&v60[4];
        if (*&v60[4])
        {
          *&v60[4] = 0;
          *&v60[12] = 0;
          WTF::fastFree(v44, v9);
        }

        v45 = *buf;
        if (*buf)
        {
          memset(buf, 0, sizeof(buf));
          WTF::fastFree(v45, v9);
        }
      }

      if ((v36 & 1) == 0)
      {
        goto LABEL_58;
      }

      if (!--v14)
      {
        WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v56, HIDWORD(v56[1]));
        v24 = v56[0];
        *&v51 = v56[0];
        LODWORD(v14) = v56[1];
        v25 = HIDWORD(v56[1]);
        v56[0] = 0;
        v56[1] = 0;
        goto LABEL_32;
      }
    }
  }

  if (v14)
  {
    LODWORD(v56[1]) = 96 * v14 / 0x60u;
    v56[0] = WTF::fastMalloc((3 * v14), (96 * v14));
    while (1)
    {
      IPC::Decoder::decode<WebKit::RTCNetwork>(buf, a3);
      v15 = v65;
      if (v65 == 1)
      {
        if (HIDWORD(v56[1]) == LODWORD(v56[1]))
        {
          WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RTCNetwork>(v56, buf);
        }

        else
        {
          v16 = v56[0] + 96 * HIDWORD(v56[1]);
          *v16 = 0;
          *(v16 + 1) = 0;
          v17 = *buf;
          *buf = 0;
          *v16 = v17;
          LODWORD(v17) = *&buf[8];
          *&buf[8] = 0;
          *(v16 + 2) = v17;
          LODWORD(v17) = *v60;
          *v60 = 0;
          *(v16 + 3) = v17;
          *(v16 + 2) = 0;
          *(v16 + 3) = 0;
          v18 = *&v60[4];
          *&v60[4] = 0;
          *(v16 + 2) = v18;
          LODWORD(v18) = *&v60[12];
          *&v60[12] = 0;
          *(v16 + 6) = v18;
          LODWORD(v18) = *&v60[16];
          *&v60[16] = 0;
          *(v16 + 7) = v18;
          v5 = *v61;
          v19 = *&v61[16];
          *(v16 + 60) = *&v61[28];
          *(v16 + 2) = v5;
          *(v16 + 3) = v19;
          *(v16 + 10) = 0;
          *(v16 + 11) = 0;
          v20 = v62;
          v62 = 0;
          *(v16 + 10) = v20;
          LODWORD(v20) = v63;
          v63 = 0;
          *(v16 + 22) = v20;
          LODWORD(v20) = v64;
          v64 = 0;
          *(v16 + 23) = v20;
          ++HIDWORD(v56[1]);
        }
      }

      if (v65 == 1)
      {
        v21 = v62;
        if (v62)
        {
          v62 = 0;
          v63 = 0;
          WTF::fastFree(v21, v9);
        }

        v22 = *&v60[4];
        if (*&v60[4])
        {
          *&v60[4] = 0;
          *&v60[12] = 0;
          WTF::fastFree(v22, v9);
        }

        v23 = *buf;
        if (*buf)
        {
          memset(buf, 0, sizeof(buf));
          WTF::fastFree(v23, v9);
        }
      }

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (!--v14)
      {
        v24 = v56[0];
        LODWORD(v14) = v56[1];
        v25 = HIDWORD(v56[1]);
        goto LABEL_31;
      }
    }

LABEL_58:
    WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v9);
LABEL_59:
    v46 = *a3;
    v47 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v48 = *(a3 + 3);
    if (v48 && v47)
    {
      (*(*v48 + 16))(v48, v46);
    }

    goto LABEL_38;
  }

  v25 = 0;
  v24 = 0;
LABEL_31:
  *&v5 = 0;
  *v56 = v5;
  *&v51 = v24;
LABEL_32:
  *(&v51 + 1) = __PAIR64__(v25, v14);
  v52 = 1;
  WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v9);
  IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a3, &v53);
  if ((v55 & 1) == 0 || (IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a3, v56), v58 != 1))
  {
    WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v30);
LABEL_38:
    v34 = *a3;
    v35 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result && v35)
    {
      result = (*(*result + 16))(result, v34);
    }

    goto LABEL_39;
  }

  if ((v55 & 1) == 0)
  {
    __break(1u);
  }

  *&v31 = 0;
  v51 = v31;
  *buf = v24;
  *&buf[8] = v14;
  *v60 = v25;
  *&v60[4] = v53;
  *v61 = v54;
  *&v61[4] = *v56;
  *&v61[20] = v57;
  v61[24] = 1;
  WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v30);
  result = WebKit::WebRTCMonitor::networksChanged(this, buf, &v60[4], &v61[4]);
  if (v61[24])
  {
    result = WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v33);
  }

LABEL_39:
  if (this)
  {
    return WebKit::WebRTCMonitor::ref(this);
  }

  return result;
}

WebKit::WebRTCResolver *WebKit::WebRTCResolver::didReceiveMessage(WebKit::WebRTCResolver *this, IPC::Connection *a2, IPC::Decoder *a3, __n128 a4, __n128 a5)
{
  v50 = *MEMORY[0x1E69E9840];
  ++*this;
  v7 = *(a3 + 25);
  if (v7 == 3025)
  {
    v24 = IPC::Decoder::decode<std::tuple<int>>(a3);
    if ((v24 & 0x100000000) != 0)
    {
      WebKit::WebRTCResolver::resolvedAddressError(this, v24);
    }
  }

  else if (v7 == 3026)
  {
    v8 = *(a3 + 1);
    v9 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v10 = v9 - *a3;
    v11 = v8 >= v10;
    v12 = v8 - v10;
    if (!v11 || v12 <= 7)
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v45 = *(a3 + 3);
      if (v45)
      {
        if (v8)
        {
          (*(*v45 + 16))(v45);
          v8 = *(a3 + 1);
        }
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_47;
    }

    *(a3 + 2) = v9 + 1;
    if (!v9)
    {
LABEL_47:
      *a3 = 0;
      *(a3 + 1) = 0;
      v46 = *(a3 + 3);
      if (v46 && v8)
      {
        (*(*v46 + 16))(v46);
      }

      goto LABEL_39;
    }

    v14 = *v9;
    v47 = 0;
    v48 = 0;
    if (v14 >= 0xCCCC)
    {
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a3, buf);
        if (buf[20] != 1)
        {
          goto LABEL_37;
        }

        v34 = HIDWORD(v48);
        if (HIDWORD(v48) == v48)
        {
          v35 = WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v47, HIDWORD(v48) + 1, buf);
          v34 = HIDWORD(v48);
          v36 = v47 + 20 * HIDWORD(v48);
          v37 = *(v35 + 16);
          *v36 = *v35;
          *(v36 + 4) = v37;
        }

        else
        {
          v38 = v47 + 20 * HIDWORD(v48);
          v39 = *buf;
          *(v38 + 4) = *&buf[16];
          *v38 = v39;
        }

        HIDWORD(v48) = v34 + 1;
        if (!--v14)
        {
          WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v47, (v34 + 1));
          v18 = v47;
          v23 = v48;
          v22 = HIDWORD(v48);
          goto LABEL_24;
        }
      }
    }

    if (v14)
    {
      LODWORD(v48) = 20 * v14 / 0x14u;
      v47 = WTF::fastMalloc((5 * v14), (20 * v14));
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a3, buf);
        if (buf[20] != 1)
        {
          break;
        }

        v16 = HIDWORD(v48);
        if (HIDWORD(v48) == v48)
        {
          v17 = WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v47, HIDWORD(v48) + 1, buf);
          v16 = HIDWORD(v48);
          v18 = v47;
          v19 = v47 + 20 * HIDWORD(v48);
          v20 = v17[1].n128_u32[0];
          a4 = *v17;
          *v19 = *v17;
          *(v19 + 4) = v20;
        }

        else
        {
          v18 = v47;
          v21 = (v47 + 20 * HIDWORD(v48));
          a4 = *buf;
          v21[1].n128_u32[0] = *&buf[16];
          *v21 = a4;
        }

        v22 = v16 + 1;
        HIDWORD(v48) = v22;
        if (!--v14)
        {
          v23 = v48;
          goto LABEL_24;
        }
      }

LABEL_37:
      v40 = v47;
      if (v47)
      {
        v47 = 0;
        LODWORD(v48) = 0;
        WTF::fastFree(v40, v15);
      }

LABEL_39:
      v41 = *a3;
      v42 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v43 = *(a3 + 3);
      if (!v43)
      {
        return WTF::RefCounted<WebKit::WebRTCResolver>::deref(this);
      }

      if (!v42)
      {
        return WTF::RefCounted<WebKit::WebRTCResolver>::deref(this);
      }

      (*(*v43 + 16))(v43, v41);
      v26 = *a3;
      v27 = *(a3 + 1);
      v28 = *(a3 + 3);
      *a3 = 0;
      *(a3 + 1) = 0;
      if (!v28)
      {
        return WTF::RefCounted<WebKit::WebRTCResolver>::deref(this);
      }

      goto LABEL_43;
    }

    v22 = 0;
    v23 = 0;
    v18 = 0;
LABEL_24:
    *buf = v18;
    *&buf[8] = v23;
    *&buf[12] = v22;
    buf[16] = 1;
    WebKit::WebRTCResolver::setResolvedAddress(this, buf, a4.n128_f64[0], a5);
    if (buf[16])
    {
      v30 = *buf;
      if (*buf)
      {
        *buf = 0;
        *&buf[8] = 0;
        WTF::fastFree(v30, v29);
      }
    }
  }

  else
  {
    v25 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v7 >= 0x107F)
      {
        v31 = 4223;
      }

      else
      {
        v31 = v7;
      }

      v32 = (&IPC::Detail::messageDescriptions)[3 * v31];
      v33 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    v26 = *a3;
    v27 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v28 = *(a3 + 3);
    if (v28)
    {
LABEL_43:
      if (v27)
      {
        (*(*v28 + 16))(v28, v26);
      }
    }
  }

  return WTF::RefCounted<WebKit::WebRTCResolver>::deref(this);
}

void WebKit::WebResourceLoader::didReceiveMessage(WebKit::WebResourceLoader *this, WTF::ThreadSafeWeakPtrControlBlock **a2, unsigned __int8 **a3)
{
  v69 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0xBD3:
      IPC::handleMessage<Messages::WebResourceLoader::ContentFilterDidBlockLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ContentFilterUnblockHandler const&,WTF::String &&,WebCore::ResourceError const&,WTF::URL const&,WebCore::SubstituteData &&)>(a3, this);
      goto LABEL_45;
    case 0xBD4:
      WebKit::WebResourceLoader::didBlockAuthenticationChallenge(this);
      goto LABEL_45;
    case 0xBD5:
      IPC::handleMessage<Messages::WebResourceLoader::DidFailResourceLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceError const&)>(a3, this);
      goto LABEL_45;
    case 0xBD6:
      IPC::handleMessage<Messages::WebResourceLoader::DidFailServiceWorkerLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceError const&)>(a3, this);
      goto LABEL_45;
    case 0xBD7:
      IPC::ArgumentCoder<std::tuple<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>(a3, buf);
      if (v57 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v57))
      {
        WebKit::WebResourceLoader::didFinishResourceLoad(this, buf);
        if (v57)
        {
          v30 = v56;
          v56 = 0;
          if (v30)
          {
            WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v30, v29);
          }

          v31 = v55;
          v55 = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v29);
          }
        }
      }

      goto LABEL_45;
    case 0xBD8:
      IPC::ArgumentCoder<IPC::SharedBufferReference,void>::decode(a3, &v39);
      if ((v41 & 1) == 0)
      {
        goto LABEL_69;
      }

      v6 = a3[1];
      v7 = (a3[2] + 7) & 0xFFFFFFFFFFFFFFF8;
      v8 = v7 - *a3;
      v9 = v6 >= v8;
      v10 = &v6[-v8];
      if (v9 && v10 > 7)
      {
        a3[2] = (v7 + 8);
        if (v7)
        {
          v12 = *v7;
          *&buf[8] = v40;
          *buf = v39;
          v53 = v12;
          v54 = 1;
          v40 = 0uLL;
LABEL_10:
          v13 = v40;
          *&v40 = 0;
          if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13 + 2);
            (*(*v13 + 8))(v13);
          }

          goto LABEL_13;
        }
      }

      else
      {
        IPC::Decoder::markInvalid(a3);
      }

      IPC::Decoder::markInvalid(a3);
      buf[0] = 0;
      v38 = *(&v40 + 1);
      v54 = 0;
      *(&v40 + 1) = 0;
      if (v38)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v38);
      }

      goto LABEL_10;
    case 0xBD9:
      IPC::ArgumentCoder<std::tuple<WebCore::ShareableResourceHandle>,void>::decode<IPC::Decoder>(a3, buf);
      if (v53 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v53))
      {
        WebKit::WebResourceLoader::didReceiveResource(this, buf);
        if (v53)
        {
          WTF::MachSendRight::~MachSendRight(buf);
        }
      }

      goto LABEL_45;
    case 0xBDA:
      IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, &v39);
      if ((v43 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v43 & 1) == 0)
        {
          buf[0] = 0;
          v68 = 0;
          goto LABEL_80;
        }
      }

      v17 = a3[1];
      v16 = a3[2];
      v18 = *a3;
      if (v17 <= v16 - *a3)
      {
        IPC::Decoder::markInvalid(a3);
        goto LABEL_94;
      }

      v19 = v16 + 1;
      a3[2] = v16 + 1;
      if (!v16)
      {
        goto LABEL_94;
      }

      v20 = *v16;
      if (v20 >= 2)
      {
LABEL_95:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_96;
      }

      if (v17 <= &v19[-v18])
      {
LABEL_94:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_95;
      }

      a3[2] = v16 + 2;
      if (v16 == -1)
      {
        goto LABEL_95;
      }

      v21 = *v19;
      if (v21 >= 2)
      {
LABEL_96:
        IPC::Decoder::markInvalid(a3);
        v23 = 0;
        buf[0] = 0;
        v68 = 0;
LABEL_32:
        if (v43)
        {
          v24 = cf;
          cf = 0;
          if (v24)
          {
            CFRelease(v24);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(&v39, v22);
          v23 = v68;
        }

        if (v23)
        {
LABEL_37:
          WebKit::WebResourceLoader::didReceiveResponse(this, buf, v59, v60, v61);
          if (v68)
          {
            if (v67 == 1)
            {
              v26 = v66;
              v66 = 0;
              if (v26)
              {
                WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v26, v25);
              }

              v27 = v63;
              v63 = 0;
              if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v27, v25);
              }
            }

            v28 = v58;
            v58 = 0;
            if (v28)
            {
              CFRelease(v28);
            }

            WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v25);
          }

          goto LABEL_45;
        }

LABEL_80:
        IPC::Decoder::markInvalid(a3);
        if ((v68 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      IPC::ArgumentCoder<std::optional<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>(v44, a3);
      if ((v51 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v51 & 1) == 0)
        {
          v23 = 0;
          buf[0] = 0;
LABEL_31:
          v68 = v23;
          goto LABEL_32;
        }
      }

      if (v43)
      {
        std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(buf, &v39);
        v59 = v20;
        v60 = v21;
        LOBYTE(v61[0]) = 0;
        v67 = 0;
        v23 = 1;
        if (v50 == 1)
        {
          v62 = v45;
          v61[2] = v44[2];
          v61[3] = v44[3];
          v61[4] = v44[4];
          v61[0] = v44[0];
          v61[1] = v44[1];
          v63 = v46;
          v64 = v47;
          v65 = v48;
          v66 = v49;
          v67 = 1;
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_69:
      IPC::Decoder::markInvalid(a3);
      buf[0] = 0;
      v54 = 0;
LABEL_13:
      if (v54)
      {
        WebKit::WebResourceLoader::didReceiveData(this, buf, v53);
        if (v54)
        {
          v14 = *&buf[16];
          *&buf[16] = 0;
          if (v14)
          {
            WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v14);
          }

          v15 = *&buf[8];
          *&buf[8] = 0;
          if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v15 + 2);
            (*(*v15 + 8))(v15);
          }
        }
      }

      else
      {
LABEL_86:
        IPC::Decoder::markInvalid(a3);
      }

LABEL_45:
      if (*(this + 2) == 1)
      {
        (*(*this + 8))(this);
      }

      else
      {
        --*(this + 2);
      }

      return;
    case 0xBDB:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::WebResourceLoader::didSendData(this);
      }

      goto LABEL_45;
    case 0xBDC:
      WebKit::WebResourceLoader::serviceWorkerDidNotHandle(this);
      goto LABEL_45;
    case 0xBDD:
      v32 = IPC::Decoder::decode<std::tuple<WTF::MonotonicTime>>(a3);
      if (v33)
      {
        *(this + 12) = v32;
      }

      goto LABEL_45;
    case 0xBDE:
      IPC::handleMessage<Messages::WebResourceLoader::StopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceResponse const&)>(a3, this);
      goto LABEL_45;
    case 0xBDF:
      IPC::Decoder::decode<std::tuple<WTF::UUID,WTF::UUID>>(buf, a3);
      if (v54 == 1)
      {
        WebKit::WebResourceLoader::updateResultingClientIdentifier(this, *buf, *&buf[8], *&buf[16], v53);
      }

      goto LABEL_45;
    case 0xBE0:
      IPC::handleMessageAsync<Messages::WebResourceLoader::WillSendRequest,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)>(a2, a3, this);
      goto LABEL_45;
    default:
      v34 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v35 = 4223;
        }

        else
        {
          v35 = v5;
        }

        v36 = (&IPC::Detail::messageDescriptions)[3 * v35];
        v37 = a3[7];
        *buf = 136315394;
        *&buf[4] = v36;
        *&buf[12] = 2048;
        *&buf[14] = v37;
        _os_log_error_impl(&dword_19D52D000, v34, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_86;
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebResourceLoader::WillSendRequest,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>>(v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v13 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v13, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(v9, 0x18);
        *v10 = &unk_1F10F80C8;
        v10[1] = v8;
        v10[2] = a1;
        v14 = v10;
        v9 = v18;
        if (v18)
        {
          break;
        }

        __break(1u);
      }

      WebKit::WebResourceLoader::willSendRequest(a3, v15, &v16, &v17, &v14);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  return std::optional<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>>::~optional(v15, v6);
}

uint64_t IPC::handleMessage<Messages::WebResourceLoader::DidFailResourceLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceError const&)>(IPC::Decoder *a1, WebKit::WebResourceLoader *a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::ResourceError>>(a1, v5);
  if (v5[80] == 1)
  {
    WebKit::WebResourceLoader::didFailResourceLoad(a2, v5);
  }

  return std::optional<std::tuple<WebCore::ResourceError>>::~optional(v5, v3);
}

WTF::StringImpl *IPC::handleMessage<Messages::WebResourceLoader::DidFailServiceWorkerLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceError const&)>(IPC::Decoder *a1, WebKit::WebResourceLoader *a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ResourceError>>(a1, &v8);
  if (v12 == 1)
  {
    result = WebKit::WebResourceLoader::didFailServiceWorkerLoad(a2, &v8);
    if (v12)
    {
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v10;
      v10 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v9;
      v9 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }

      result = v8;
      v8 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebResourceLoader::StopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceResponse const&)>(IPC::Decoder *a1, WebKit::WebResourceLoader *a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::ResourceResponse>>(v5, a1);
  if (v7 == 1)
  {
    WebKit::WebResourceLoader::stopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied(a2, v5);
    if (v7)
    {
      v4 = cf;
      cf = 0;
      if (v4)
      {
        CFRelease(v4);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v5, v3);
    }
  }
}

void IPC::handleMessage<Messages::WebResourceLoader::ContentFilterDidBlockLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ContentFilterUnblockHandler const&,WTF::String &&,WebCore::ResourceError const&,WTF::URL const&,WebCore::SubstituteData &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v161 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ContentFilterUnblockHandler,void>::decode(a1, &v148);
  if ((v160 & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v55);
    if ((v56 & 1) == 0)
    {
      v4 = *a1;
      v53 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v54 = *(a1 + 3);
      if (!v54 || !v53 || ((*(*v54 + 16))(v54, v4), (v56 & 1) == 0))
      {
        LOBYTE(v98[0]) = 0;
        v147 = 0;
        goto LABEL_36;
      }
    }

    IPC::Decoder::decode<WebCore::ResourceError>(a1, v57);
    if (v65 != 1)
    {
      LOBYTE(v98[0]) = 0;
      v147 = 0;
      goto LABEL_32;
    }

    IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v66);
    if ((v69 & 1) == 0)
    {
      v4 = *a1;
      v51 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v52 = *(a1 + 3);
      if (!v52 || !v51 || ((*(*v52 + 16))(v52, v4), (v69 & 1) == 0))
      {
        LOBYTE(v98[0]) = 0;
        v147 = 0;
        goto LABEL_31;
      }
    }

    IPC::ArgumentCoder<WebCore::SubstituteData,void>::decode(a1, v70);
    if ((v97 & 1) == 0)
    {
      v4 = *a1;
      v49 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v50 = *(a1 + 3);
      if (!v50 || !v49 || ((*(*v50 + 16))(v50, v4), (v97 & 1) == 0))
      {
        LOBYTE(v98[0]) = 0;
        v147 = 0;
        goto LABEL_27;
      }
    }

    if (v160 & 1) != 0 && (v56 & 1) != 0 && (v65 & 1) != 0 && (v69)
    {
      break;
    }

    __break(1u);
LABEL_79:
    v42 = *a1;
    v43 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (v44)
    {
      v45 = v43 == 0;
    }

    else
    {
      v45 = 1;
    }

    if (!v45)
    {
      (*(*v44 + 16))(v44, v42);
      if (v160)
      {
        continue;
      }
    }

    LOBYTE(v98[0]) = 0;
    v147 = 0;
    goto LABEL_38;
  }

  v5 = v148;
  v148 = 0uLL;
  v98[0] = v5;
  v98[1] = v149;
  v98[2] = v150;
  LODWORD(v149) = v149 & 0xFFFFFFFE;
  if (v152)
  {
    if (v152 == &v151)
    {
      v100 = &v99;
      (*(*v152 + 24))(v152);
    }

    else
    {
      v100 = v152;
      v152 = 0;
    }
  }

  else
  {
    v100 = 0;
  }

  LOBYTE(v101) = 0;
  v104 = 0;
  if (v156 == 1)
  {
    v6 = v153;
    v153 = 0;
    v101 = v6;
    v102 = v154;
    v103 = v155;
    LODWORD(v154) = v154 & 0xFFFFFFFE;
    v104 = 1;
  }

  v7 = v157;
  v157 = 0u;
  v105 = v7;
  v8 = v158;
  v158 = 0;
  v106 = v8;
  v107 = v159;
  v9 = v55;
  v55 = 0;
  v10 = *v57;
  *v57 = 0u;
  v109 = v10;
  v110 = v58;
  v111 = v59;
  LODWORD(v58) = v58 & 0xFFFFFFFE;
  v108 = v9;
  v112 = v60;
  v114 = v62;
  v113 = v61;
  v11 = v63;
  v60 = 0;
  v63 = 0;
  v115 = v11;
  v116 = v64;
  v12 = v66;
  v66 = 0;
  v117 = v12;
  v118 = v67;
  v119 = v68;
  LODWORD(v67) = v67 & 0xFFFFFFFE;
  v13 = *v70;
  *v70 = 0u;
  *v120 = v13;
  v121 = v71;
  v122 = v72;
  LODWORD(v71) = v71 & 0xFFFFFFFE;
  v14 = v74;
  LODWORD(v74) = v74 & 0xFFFFFFFE;
  v15 = v73;
  v16 = v76;
  v73 = 0;
  v124 = v14;
  v125 = v75;
  v76 = 0;
  v123 = v15;
  v126 = v16;
  v127 = v77;
  v17 = v78;
  v78 = 0u;
  v18 = v79;
  v79 = 0u;
  v128 = v17;
  v129 = v18;
  *&v17 = v80;
  v80 = 0;
  v130 = v17;
  v19 = v81;
  v81 = 0;
  v131 = v19;
  *&v17 = v82;
  v82 = 0;
  v132 = v17;
  v20 = v83;
  v83 = 0;
  v133 = v20;
  LOBYTE(v134) = 0;
  v135 = 0;
  if (v85 == 1)
  {
    v37 = v84;
    v84 = 0;
    v134 = v37;
    v135 = 1;
  }

  v136 = v86;
  v137 = v87;
  v141 = v91;
  v142 = v92;
  v139 = v89;
  v140 = v90;
  v143[0] = v93[0];
  v21 = v88;
  v88 = 0;
  *(v143 + 11) = *(v93 + 11);
  v138 = v21;
  cf = v94;
  v145 = v95;
  v146 = v96;
  v147 = 1;
  if (v97)
  {
    v94 = 0;
    WebCore::ResourceResponseBase::~ResourceResponseBase(&v73, v4);
    v22 = v70[1];
    v70[1] = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v4);
    }

    v23 = v70[0];
    v70[0] = 0;
    if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v23 + 2);
      (*(*v23 + 8))(v23);
    }
  }

LABEL_27:
  if (v69)
  {
    v24 = v66;
    v66 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v4);
      }
    }
  }

LABEL_31:
  if (v65)
  {
    v38 = v63;
    v63 = 0;
    if (v38)
    {
      CFRelease(v38);
    }

    v39 = v60;
    v60 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v4);
    }

    v40 = v57[1];
    v57[1] = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v4);
    }

    v41 = v57[0];
    v57[0] = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v4);
    }
  }

LABEL_32:
  if (v56)
  {
    v25 = v55;
    v55 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v4);
      }
    }
  }

LABEL_36:
  if (v160)
  {
    WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(&v148, v4);
  }

LABEL_38:
  if (v147 & 1) != 0 || (v46 = *a1, v47 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v48 = *(a1 + 3)) != 0) && v47 && ((*(*v48 + 16))(v48, v46), (v147))
  {
    WebKit::WebResourceLoader::contentFilterDidBlockLoad(a2, v98, &v108, &v109, &v117, v120);
    if (v147)
    {
      v27 = cf;
      cf = 0;
      if (v27)
      {
        CFRelease(v27);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v123, v26);
      v29 = v120[1];
      v120[1] = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v28);
      }

      v30 = v120[0];
      v120[0] = 0;
      if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v30 + 2);
        (*(*v30 + 8))(v30);
      }

      v31 = v117;
      v117 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v28);
      }

      v32 = v115;
      v115 = 0;
      if (v32)
      {
        CFRelease(v32);
      }

      v33 = v112;
      v112 = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v28);
      }

      v34 = *(&v109 + 1);
      *(&v109 + 1) = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v28);
      }

      v35 = v109;
      *&v109 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v28);
      }

      v36 = v108;
      v108 = 0;
      if (v36)
      {
        if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v28);
        }
      }

      WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(v98, v28);
    }
  }
}

void WebKit::WebSWClientConnection::didReceiveMessage(WebKit::WebSWClientConnection *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  if (*(a3 + 25) == 3052)
  {
    WebKit::WebSWClientConnection::setSWOriginTableIsImported(this);
  }

  else
  {
    switch(*(a3 + 25))
    {
      case 0xBE1:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v5)
        {
          WebCore::SWClientConnection::fireUpdateFoundEvent();
        }

        break;
      case 0xBE2:
        IPC::handleMessageAsync<Messages::WebSWClientConnection::FocusServiceWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&)>(a2, a3, this);
        break;
      case 0xBE3:
        IPC::handleMessage<Messages::WebSWClientConnection::JobRejectedInServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ExceptionData &&)>(a3, this);
        break;
      case 0xBE4:
        IPC::handleMessage<Messages::WebSWClientConnection::NotifyClientsOfControllerChange,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::HashSet<WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,std::optional<WebCore::ServiceWorkerData> &&)>(a3, this);
        break;
      case 0xBE5:
        IPC::handleMessage<Messages::WebSWClientConnection::NotifyRecordResponseBodyChunk,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::SharedBufferReference &&)>(a3, this);
        break;
      case 0xBE6:
        IPC::handleMessage<Messages::WebSWClientConnection::NotifyRecordResponseBodyEnd,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError &&)>(a3, this);
        break;
      case 0xBE7:
        IPC::handleMessage<Messages::WebSWClientConnection::PostMessageToServiceWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WebCore::MessageWithMessagePorts &&,WebCore::ServiceWorkerData &&,WTF::String &&)>(a3, this);
        break;
      case 0xBE8:
        IPC::handleMessage<Messages::WebSWClientConnection::RegistrationJobResolvedInServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationData &&,WebCore::ShouldNotifyWhenResolved)>(a3, this);
        break;
      case 0xBE9:
        IPC::handleMessage<Messages::WebSWClientConnection::ReportNetworkUsageToWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,unsigned long long)>(a3, this);
        break;
      case 0xBEA:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WallTime>>(&buf, a3);
        if (BYTE2(v14) == 1)
        {
          WebCore::SWClientConnection::setRegistrationLastUpdateTime();
        }

        break;
      case 0xBEB:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerUpdateViaCache>>(&buf, a3);
        if (BYTE2(v14) == 1)
        {
          WebCore::SWClientConnection::setRegistrationUpdateViaCache();
        }

        break;
      case 0xBED:
        IPC::handleMessage<Messages::WebSWClientConnection::SetSWOriginTableSharedMemory,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::SharedMemoryHandle &&)>(a3, this);
        break;
      case 0xBEE:
        IPC::handleMessageAsync<Messages::WebSWClientConnection::SetServiceWorkerClientIsControlled,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WebCore::ServiceWorkerRegistrationData &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
        break;
      case 0xBEF:
        IPC::handleMessage<Messages::WebSWClientConnection::StartScriptFetchForServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationKey &&,WebCore::FetchOptionsCache)>(a3, this);
        break;
      case 0xBF0:
        IPC::handleMessage<Messages::WebSWClientConnection::UpdateBackgroundFetchRegistration,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::BackgroundFetchInformation const&)>(a3, this);
        break;
      case 0xBF1:
        IPC::handleMessage<Messages::WebSWClientConnection::UpdateRegistrationState,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationState,std::optional<WebCore::ServiceWorkerData> const&)>(a3, this);
        break;
      case 0xBF2:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerState>>(&buf, a3);
        if (BYTE2(v14) == 1)
        {
          WebCore::SWClientConnection::updateWorkerState();
        }

        break;
      default:
        v10 = *(a3 + 25);
        v6 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v7 = 4223;
          }

          else
          {
            v7 = v10;
          }

          v8 = (&IPC::Detail::messageDescriptions)[3 * v7];
          v9 = *(a3 + 7);
          buf = 136315394;
          *buf_4 = v8;
          v13 = 2048;
          v14 = v9;
          _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &buf, 0x16u);
        }

        IPC::Decoder::markInvalid(a3);
        break;
    }
  }

  if (*(this + 2) == 1)
  {
    (*(*this + 8))(this);
  }

  else
  {
    --*(this + 2);
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebSWClientConnection::JobRejectedInServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ExceptionData &&)>(uint64_t *a1, uint64_t a2)
{
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v3)
  {
    IPC::ArgumentCoder<WebCore::Exception,void>::decode(a1, v13);
    if (v15)
    {
      v12 = v14;
      WebCore::SWClientConnection::jobRejectedInServer();
      result = v12;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(v12, v4);
        }
      }

      return result;
    }

    v6 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v8 = a1[3];
    if (v8 && v7)
    {
      (*(*v8 + 16))(v8, v6);
    }
  }

  v9 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

void IPC::handleMessage<Messages::WebSWClientConnection::RegistrationJobResolvedInServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationData &&,WebCore::ShouldNotifyWhenResolved)>(uint64_t *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v3 & 1) == 0 || (IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationData>(a1, v21), v22 != 1))
  {
    v20 = 0;
    goto LABEL_13;
  }

  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v14 = a1[3];
    if (v14)
    {
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_23:
    *a1 = 0;
    a1[1] = 0;
    v15 = a1[3];
    if (v15)
    {
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_26;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_26;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_23;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v19, v21);
    v19[352] = v7;
    v8 = 1;
    goto LABEL_7;
  }

LABEL_26:
  *a1 = 0;
  a1[1] = 0;
  v16 = a1[3];
  if (v16)
  {
    if (v4)
    {
      (*(*v16 + 16))(v16, v6);
      v17 = a1[3];
      v6 = *a1;
      v18 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 16))(v17, v6);
        }
      }
    }
  }

  v8 = 0;
LABEL_7:
  v20 = v8;
  if (v22)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v21, v6);
    if (v20)
    {
LABEL_9:
      WebCore::SWClientConnection::registrationJobResolvedInServer();
      if (v20)
      {
        WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v19, v9);
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_9;
  }

LABEL_13:
  v10 = *a1;
  v11 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v12 = a1[3];
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    (*(*v12 + 16))(v12, v10);
    if (v20)
    {
      goto LABEL_9;
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebSWClientConnection::StartScriptFetchForServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationKey &&,WebCore::FetchOptionsCache)>(uint64_t *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v3 & 1) == 0 || (IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationKey>(a1, v20), v24 != 1))
  {
LABEL_5:
    v6 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      return (*(*result + 16))(result, v6);
    }

    return result;
  }

  Options = IPC::Decoder::decode<WebCore::FetchOptionsCache>(a1);
  if ((Options & 0x100) != 0)
  {
    if ((v24 & 1) == 0)
    {
      __break(1u);
    }

    LOBYTE(v16[0]) = 0;
    v17 = -1;
    if (v21)
    {
      if (v21 == 255)
      {
        goto LABEL_14;
      }

      *v16 = *v20;
    }

    else
    {
      v10 = *v20;
      v20[0] = 0;
      v20[1] = 0;
      *v16 = v10;
    }

    v17 = v21;
LABEL_14:
    v11 = v22;
    v22 = 0;
    v18 = v11;
    LODWORD(v23) = v23 & 0xFFFFFFFE;
    v19 = 1;
    goto LABEL_15;
  }

  v19 = 0;
  if ((v24 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v12 = v22;
  v22 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v4);
  }

  if (!v21)
  {
    v13 = v20[1];
    v20[1] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v4);
    }

    v14 = v20[0];
    v20[0] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v4);
    }
  }

  if ((Options & 0x100) == 0)
  {
    goto LABEL_5;
  }

  result = WebCore::SWClientConnection::startScriptFetchForServer();
  if (v19)
  {
    result = v18;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v18, v15);
    }

    if (!v17)
    {
      if (v16[1] && atomic_fetch_add_explicit(v16[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16[1], v15);
      }

      result = v16[0];
      if (v16[0] && atomic_fetch_add_explicit(v16[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v16[0], v15);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebSWClientConnection::UpdateRegistrationState,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationState,std::optional<WebCore::ServiceWorkerData> const&)>(uint64_t *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationState,std::optional<WebCore::ServiceWorkerData>>>(&v4, a1);
  if (v7 == 1)
  {
    WebCore::SWClientConnection::updateRegistrationState();
    if ((v7 & 1) != 0 && v6 == 1)
    {
      v3 = v5;
      v5 = 0;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v3, v2);
        }
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebSWClientConnection::NotifyClientsOfControllerChange,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::HashSet<WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,std::optional<WebCore::ServiceWorkerData> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  v4 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = v4 - *a1;
  v6 = v3 >= v5;
  v7 = v3 - v5;
  if (!v6 || v7 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (v44)
    {
      if (v3)
      {
        (*(*v44 + 16))(v44);
        v3 = *(a1 + 1);
      }
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_77;
  }

  *(a1 + 2) = v4 + 1;
  if (!v4)
  {
LABEL_77:
    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (v45 && v3)
    {
      (*(*v45 + 16))(v45);
    }

    goto LABEL_68;
  }

  v9 = *v4;
  *&v46 = 0;
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, v53);
      if ((v55 & 1) == 0)
      {
        v11 = *a1;
        v36 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v37 = *(a1 + 3);
        if (v37)
        {
          v38 = v36 == 0;
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          (*(*v37 + 16))(v37, v11);
        }

        goto LABEL_66;
      }

      v12 = *&v53[16];
      if (*&v53[16] == -1)
      {
        goto LABEL_66;
      }

      v13 = *v53;
      if (!*&v53[16] && *v53 == 0)
      {
        goto LABEL_66;
      }

      if (!*&v53[16] && *v53 == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DAE3808);
      }

      v14 = v46;
      if (v46 || (WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WebCore::ProcessQualified<WTF::UUID>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(&v46, 0), (v14 = v46) != 0))
      {
        v15 = *(v14 - 8);
      }

      else
      {
        v15 = 0;
      }

      v16 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>::hash<WebCore::ProcessQualified<WTF::UUID>>(v13, *(&v13 + 1)) & v15;
      v11 = (v14 + 32 * v16);
      v18 = *v11;
      v17 = v11[1];
      v19 = v11[2];
      if (*v11 != 0 || v19 != 0)
      {
        v21 = 0;
        v22 = 1;
        while (1)
        {
          v23 = v17 == *(&v13 + 1) && v18 == v13;
          if (v23 && v19 == v12)
          {
            break;
          }

          if (v19 == -1)
          {
            v21 = v11;
          }

          v16 = (v16 + v22) & v15;
          v11 = (v14 + 32 * v16);
          v18 = *v11;
          v17 = v11[1];
          v19 = v11[2];
          ++v22;
          if (*v11 == 0 && v19 == 0)
          {
            if (v21)
            {
              *v21 = 0;
              v21[1] = 0;
              v21[2] = 0;
              --*(v14 - 16);
              v11 = v21;
            }

            goto LABEL_39;
          }
        }

LABEL_66:
        if (v46)
        {
          WTF::fastFree((v46 - 16), v11);
        }

LABEL_68:
        v39 = *a1;
        v40 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v41 = *(a1 + 3);
        if (v41 && v40)
        {
          (*(*v41 + 16))(v41, v39);
        }

LABEL_69:
        v42 = *a1;
        v43 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        result = *(a1 + 3);
        if (result)
        {
          if (v43)
          {
            return (*(*result + 16))(result, v42);
          }
        }

        return result;
      }

LABEL_39:
      v26 = *v53;
      v11[2] = *&v53[16];
      *v11 = v26;
      v27 = *(v14 - 16);
      v28 = *(v14 - 12) + 1;
      *(v14 - 12) = v28;
      v29 = (v27 + v28);
      v30 = *(v14 - 4);
      if (v30 > 0x400)
      {
        break;
      }

      if (3 * v30 <= 4 * v29)
      {
        goto LABEL_41;
      }

LABEL_42:
      if (++v10 == v9)
      {
        v35 = v46;
        goto LABEL_48;
      }
    }

    if (v30 > 2 * v29)
    {
      goto LABEL_42;
    }

LABEL_41:
    WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WebCore::ProcessQualified<WTF::UUID>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(&v46, v11);
    goto LABEL_42;
  }

  v35 = 0;
LABEL_48:
  IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerData>>(a1, &v46);
  if (v52 == 1)
  {
    *v53 = v35;
    v53[8] = 0;
    v58 = 0;
    if (v51 == 1)
    {
      *&v53[8] = v46;
      v32 = v47;
      v47 = 0;
      v54 = v32;
      v55 = v48;
      v56 = v49;
      LODWORD(v48) = v48 & 0xFFFFFFFE;
      v57 = v50;
      v58 = 1;
    }

    v59 = 1;
  }

  else
  {
    v53[0] = 0;
    v59 = 0;
    if (!v35)
    {
      goto LABEL_69;
    }

    WTF::fastFree((v35 - 16), v31);
    if ((v59 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  result = WebCore::SWClientConnection::notifyClientsOfControllerChange();
  if (v59)
  {
    if (v58 == 1)
    {
      result = v54;
      v54 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v34);
        }
      }
    }

    if (*v53)
    {
      return WTF::fastFree((*v53 - 16), v34);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebSWClientConnection::UpdateBackgroundFetchRegistration,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::BackgroundFetchInformation const&)>(uint64_t *a1, WebCore::SWClientConnection *a2)
{
  IPC::Decoder::decode<WebCore::BackgroundFetchInformation>(v9, a1);
  if (v10)
  {
    v8 = v9[1];
    WebCore::SWClientConnection::updateBackgroundFetchRegistration();
    result = v8;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v8, v3);
      }
    }
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebSWClientConnection::SetSWOriginTableSharedMemory,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::SharedMemoryHandle &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a1, v3);
  if (v4 == 1)
  {
    WebKit::WebSWClientConnection::setSWOriginTableSharedMemory(a2, v3);
    if (v4)
    {
      WTF::MachSendRight::~MachSendRight(v3);
    }
  }
}

atomic_uint *IPC::handleMessage<Messages::WebSWClientConnection::PostMessageToServiceWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WebCore::MessageWithMessagePorts &&,WebCore::ServiceWorkerData &&,WTF::String &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, v39);
  if ((v40 & 1) == 0)
  {
    v15 = *a1;
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      (*(*v17 + 16))(v17, v15);
    }

    goto LABEL_35;
  }

  IPC::Decoder::decode<WebCore::MessageWithMessagePorts>(a1, v23);
  if (v25 != 1)
  {
    goto LABEL_35;
  }

  IPC::Decoder::decode<WebCore::ServiceWorkerData>(a1, &v41);
  if (v44 != 1)
  {
    v2 = 0;
    LOBYTE(v28) = 0;
    v38 = 0;
    goto LABEL_12;
  }

  v5 = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v26);
  if (v27 & 1) != 0 || (v4 = *a1, v21 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v22 = *(a1 + 3)) != 0) && v21 && (v5 = (*(*v22 + 16))(v22, v4), (v27))
  {
    if ((v25 & 1) == 0 || (v44 & 1) == 0)
    {
      __break(1u);
LABEL_39:
      v23[1] = 0;
      LODWORD(v24) = 0;
      WTF::fastFree(v5, v4);
      goto LABEL_14;
    }

    v28 = v39[0];
    v29 = v39[1];
    v6 = *v23;
    v23[0] = 0;
    v23[1] = 0;
    *v30 = v6;
    *&v6 = v24;
    v24 = 0;
    v31 = v6;
    v32 = v41;
    v7 = v42[0];
    v42[0] = 0;
    v33 = v7;
    v34 = *&v42[1];
    v35 = *&v42[3];
    LODWORD(v42[1]) &= ~1u;
    v36 = v43;
    v37 = v26;
    v2 = 1;
    v38 = 1;
  }

  else
  {
    v2 = 0;
    LOBYTE(v28) = 0;
    v38 = 0;
    if ((v44 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v8 = v42[0];
  v42[0] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

LABEL_12:
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = v23[1];
  if (v23[1])
  {
    goto LABEL_39;
  }

LABEL_14:
  v9 = v23[0];
  v23[0] = 0;
  if (!v9)
  {
LABEL_15:
    if (v2)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

  WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v9);
  if (v2)
  {
LABEL_16:
    v41 = v28;
    *v42 = v29;
    result = WebCore::SWClientConnection::postMessageToServiceWorkerClient();
    if (v38)
    {
      v12 = v37;
      v37 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }

      v13 = v33;
      v33 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }

      v14 = v30[1];
      if (v30[1])
      {
        v30[1] = 0;
        LODWORD(v31) = 0;
        WTF::fastFree(v14, v11);
      }

      result = v30[0];
      v30[0] = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
      }
    }

    return result;
  }

LABEL_35:
  v19 = *a1;
  v20 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v20)
  {
    return (*(*result + 16))(result, v19);
  }

  return result;
}

void IPC::handleMessageAsync<Messages::WebSWClientConnection::SetServiceWorkerClientIsControlled,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WebCore::ServiceWorkerRegistrationData &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v27 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a2, v23);
  if ((v24 & 1) == 0)
  {
    v13 = *v4;
    v14 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v15 = *(v4 + 3);
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      (*(*v15 + 16))(v15, v13);
    }

    goto LABEL_21;
  }

  IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationData>(v4, v25);
  if (v26 != 1)
  {
LABEL_21:
    LOBYTE(v19) = 0;
    v22 = 0;
    goto LABEL_22;
  }

  v19 = v23[0];
  v20 = v23[1];
  WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v21, v25);
  v22 = 1;
  if (v26)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v4 = v7;
    while (1)
    {
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v10 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
    v11 = WTF::fastMalloc(v9, 0x18);
    *v11 = &unk_1F10F80F0;
    v11[1] = v4;
    v11[2] = a1;
    *&v23[0] = v11;
    if (v22)
    {
      v25[0] = v19;
      v25[1] = v20;
      WebKit::WebSWClientConnection::setServiceWorkerClientIsControlled(a3, v25, v21, v23);
      v12 = *&v23[0];
      *&v23[0] = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      break;
    }

    __break(1u);
LABEL_27:
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v25, v6);
    if ((v22 & 1) == 0)
    {
LABEL_22:
      v8 = *v4;
      v17 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v18 = *(v4 + 3);
      if (!v18)
      {
        break;
      }

      if (!v17)
      {
        break;
      }

      (*(*v18 + 16))(v18, v8);
      if ((v22 & 1) == 0)
      {
        break;
      }
    }
  }

  if (v22 == 1)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v21, v8);
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebSWClientConnection::FocusServiceWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::Document *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a2, v16);
  if (v17 & 1) != 0 || ((v12 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v14 = v13 == 0) : (v14 = 1), !v14 && (result = (*(*result + 16))(result, v12), (v17)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F8118;
      v11[1] = v8;
      v11[2] = a1;
      v15 = v11;
      if ((v17 & 1) == 0)
      {
        __break(1u);
      }

      v18[0] = v16[0];
      v18[1] = v16[1];
      WebKit::WebSWClientConnection::focusServiceWorkerClient(a3, v18, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebSWClientConnection::NotifyRecordResponseBodyChunk,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::SharedBufferReference &&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, IPC::Decoder::decode<IPC::SharedBufferReference>(&v16, a1), (v18))
  {
    v13 = v16;
    v14 = v17;
    v15 = 1;
    WebKit::WebSWClientConnection::notifyRecordResponseBodyChunk(a2, v6, &v13);
    if (v15)
    {
      v7 = *(&v14 + 1);
      *(&v14 + 1) = 0;
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v7);
      }

      v8 = v14;
      *&v14 = 0;
      if (v8)
      {
        if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v8 + 2);
          (*(*v8 + 8))(v8);
        }
      }
    }
  }

  else
  {
    v9 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*v10 + 16);

      v12();
    }
  }
}

void IPC::handleMessage<Messages::WebSWClientConnection::NotifyRecordResponseBodyEnd,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError &&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, IPC::Decoder::decode<WebCore::ResourceError>(a1, v25), (v31))
  {
    *v16 = v25[0];
    v17 = v25[1];
    v18 = v25[2];
    v19 = v26;
    v20 = v27;
    v21 = v28;
    cf = v29;
    v23 = v30;
    v24 = 1;
    WebKit::WebSWClientConnection::notifyRecordResponseBodyEnd(a2, v6, v16);
    if (v24)
    {
      v8 = cf;
      cf = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = v19;
      v19 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

      v10 = v16[1];
      v16[1] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v11 = v16[0];
      v16[0] = 0;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v7);
        }
      }
    }
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v14 = a1[3];
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      (*(*v14 + 16))(v14, v12);
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebSWClientConnection::ReportNetworkUsageToWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,unsigned long long)>(IPC::Decoder *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, v17);
  if ((v17[32] & 1) == 0)
  {
    v5 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v3 = *(a1 + 1);
  v4 = (*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *a1;
  v6 = v4 - *a1;
  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (v7 && v8 > 7)
  {
    *(a1 + 2) = v4 + 8;
    if (v4)
    {
      return WebCore::SWClientConnection::reportNetworkUsageToWorkerClient();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16)
    {
      if (v3)
      {
        (*(*v16 + 16))(v16);
        v5 = *a1;
        v3 = *(a1 + 1);
        goto LABEL_23;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
  }

LABEL_23:
  *a1 = 0;
  *(a1 + 1) = 0;
  v12 = *(a1 + 3);
  if (v12 && v3)
  {
LABEL_25:
    (*(*v12 + 16))(v12, v5);
  }

LABEL_15:
  v14 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v14)
  {
    v15 = *(*result + 16);

    return v15();
  }

  return result;
}

atomic_ullong *WebKit::WebSWContextManagerConnection::didReceiveMessage(WebKit::WebSWContextManagerConnection *this, atomic_ullong *a2, unsigned __int8 **a3, double a4, __n128 a5)
{
  v394 = *MEMORY[0x1E69E9840];
  v8 = (this + 24);
  while (1)
  {
    v9 = *v8;
    if ((*v8 & 1) == 0)
    {
      break;
    }

    v10 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_6:
  v11 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0xBF3:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (buf[24] == 1)
      {
        WebKit::WebSWContextManagerConnection::cancelFetch(this, *buf, *&buf[8], *&buf[16]);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xBF4:
      WebKit::WebSWContextManagerConnection::close(this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xBF5:
      v78 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v79 & 1) == 0)
      {
        goto LABEL_120;
      }

      v80 = a3[1];
      v81 = a3[2];
      v82 = *a3;
      if (v80 <= v81 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v294 = a3[3];
        if (v294)
        {
          if (v80)
          {
            (*(*v294 + 16))(v294);
            v80 = a3[1];
          }
        }

        else
        {
          v80 = 0;
        }
      }

      else
      {
        v83 = v81 + 1;
        a3[2] = v81 + 1;
        if (v81)
        {
          v84 = *v81;
          if (v84 >= 2)
          {
            goto LABEL_533;
          }

          if (v80 <= v83 - v82)
          {
            v296 = 0;
            v297 = 0;
            *a3 = 0;
            a3[1] = 0;
            v298 = a3[3];
            if (v298)
            {
              (*(*v298 + 16))(v298);
              v297 = *a3;
              v296 = a3[1];
            }
          }

          else
          {
            a3[2] = v81 + 2;
            if (v81 != -1)
            {
              v85 = *v83;
              if (v85 < 2)
              {
                WebKit::WebSWContextManagerConnection::connectToInspector(this, v78, v84 & 1, v85 & 1);
                return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
              }

LABEL_533:
              *a3 = 0;
              a3[1] = 0;
              v300 = a3[3];
              if (v300 && v80)
              {
                (*(*v300 + 16))(v300, v82);
              }

              goto LABEL_120;
            }

            v296 = v80;
            v297 = v82;
          }

          *a3 = 0;
          a3[1] = 0;
          v299 = a3[3];
          if (v299 && v296)
          {
            (*(*v299 + 16))(v299, v297, v296);
            goto LABEL_565;
          }

          goto LABEL_531;
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v295 = a3[3];
      if (v295)
      {
        if (v80)
        {
          (*(*v295 + 16))(v295);
LABEL_565:
          v82 = *a3;
          v80 = a3[1];
          goto LABEL_533;
        }

LABEL_532:
        v82 = 0;
        goto LABEL_533;
      }

LABEL_531:
      v80 = 0;
      goto LABEL_532;
    case 0xBF6:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (buf[24] == 1)
      {
        WebKit::WebSWContextManagerConnection::continueDidReceiveFetchResponse(this, *buf, *&buf[8], *&buf[16]);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xBF7:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (buf[24] == 1)
      {
        WebKit::WebSWContextManagerConnection::convertFetchToDownload(this, *buf, *&buf[8], *&buf[16]);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xBF8:
      v308 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v114 & 1) == 0)
      {
        goto LABEL_120;
      }

      IPC::Decoder::decode<WebCore::ScriptBuffer>(a3, &v390);
      if (BYTE8(v390) != 1)
      {
        buf[0] = 0;
        buf[24] = 0;
        goto LABEL_356;
      }

      v115 = a3[1];
      v116 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v117 = (v116 - *a3);
      v118 = v115 >= v117;
      v119 = v115 - v117;
      if (!v118 || v119 <= 3)
      {
        *a3 = 0;
        a3[1] = 0;
        v289 = a3[3];
        if (v289)
        {
          if (v115)
          {
            (*(*v289 + 16))(v289);
            v115 = a3[1];
          }
        }

        else
        {
          v115 = 0;
        }

        goto LABEL_503;
      }

      a3[2] = (v116 + 1);
      if (!v116)
      {
LABEL_503:
        *a3 = 0;
        a3[1] = 0;
        v290 = a3[3];
        if (v290 && v115)
        {
          (*(*v290 + 16))(v290);
        }

        goto LABEL_339;
      }

      v121 = *v116;
      v317 = 0;
      v309 = v121;
      if (!v121)
      {
        v212 = 0;
LABEL_355:
        *buf = v308;
        *&buf[8] = v390;
        *&buf[16] = v212;
        buf[24] = 1;
        goto LABEL_356;
      }

      v122 = 0;
      while (2)
      {
        v310 = v122;
        IPC::ArgumentCoder<WTF::URL,void>::decode(a3, buf);
        if ((buf[40] & 1) == 0)
        {
          v123 = *a3;
          v143 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v144 = a3[3];
          if (!v144 || v143 == 0)
          {
            goto LABEL_337;
          }

          (*(*v144 + 16))(v144, v123);
          if ((buf[40] & 1) == 0)
          {
            goto LABEL_337;
          }
        }

        IPC::Decoder::decode<WebCore::ScriptBuffer>(a3, v361);
        if (v361[8] == 1)
        {
          if ((buf[40] & 1) == 0)
          {
            goto LABEL_424;
          }

          if (*buf != -1 && (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(buf) & 1) == 0)
          {
            if ((buf[40] & 1) == 0 || (v361[8] & 1) == 0)
            {
              goto LABEL_424;
            }

            if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(buf))
            {
              __break(0xC471u);
              JUMPOUT(0x19DAE6B58);
            }

            if (*buf == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x19DAE6B78);
            }

            v124 = v317;
            if (v317 || (WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(&v317, 0), (v124 = v317) != 0))
            {
              v125 = *(v124 - 2);
            }

            else
            {
              v125 = 0;
            }

            v126 = *(*buf + 16);
            if (v126 < 0x100)
            {
              v127 = WTF::StringImpl::hashSlowCase(*buf);
            }

            else
            {
              v127 = v126 >> 8;
            }

            v128 = v127 & v125;
            v129 = (v124 + 48 * (v127 & v125));
            if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v129) & 1) == 0)
            {
              v131 = 0;
              v132 = 1;
              do
              {
                v133 = v129;
                if (*v129 != -1)
                {
                  v133 = v131;
                  if (WTF::equal(*v129, *buf, v130))
                  {
                    goto LABEL_329;
                  }
                }

                v128 = (v128 + v132) & v125;
                v129 = (v124 + 48 * v128);
                ++v132;
                v131 = v133;
              }

              while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v129));
              if (v133)
              {
                *v133 = 0;
                WTF::URL::invalidate(v133);
                *(v133 + 5) = 0;
                --*(v317 - 4);
                v129 = v133;
              }
            }

            WTF::URL::operator=(v129, buf);
            v135 = *v361;
            *v361 = 0;
            v136 = v129[5];
            v129[5] = v135;
            if (v136 && atomic_fetch_add(v136 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v136 + 2);
              (*(*v136 + 8))(v136);
            }

            v137 = v317;
            if (v317)
            {
              v138 = *(v317 - 3) + 1;
            }

            else
            {
              v138 = 1;
            }

            *(v317 - 3) = v138;
            v139 = (*(v137 - 4) + v138);
            v140 = *(v137 - 1);
            if (v140 > 0x400)
            {
              if (v140 > 2 * v139)
              {
                goto LABEL_177;
              }
            }

            else if (3 * v140 > 4 * v139)
            {
LABEL_177:
              if (v361[8] == 1)
              {
                v141 = *v361;
                *v361 = 0;
                if (v141)
                {
                  if (atomic_fetch_add(v141 + 2, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v141 + 2);
                    (*(*v141 + 8))(v141);
                  }
                }
              }

              if (buf[40] == 1)
              {
                v142 = *buf;
                *buf = 0;
                if (v142)
                {
                  if (atomic_fetch_add_explicit(v142, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v142, v134);
                  }
                }
              }

              v122 = v310 + 1;
              if (v310 + 1 == v309)
              {
                if ((BYTE8(v390) & 1) == 0)
                {
                  goto LABEL_424;
                }

                v212 = v317;
                goto LABEL_355;
              }

              continue;
            }

            WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(&v317, v129);
            goto LABEL_177;
          }
        }

        break;
      }

LABEL_329:
      if (v361[8] == 1)
      {
        v201 = *v361;
        *v361 = 0;
        if (v201)
        {
          if (atomic_fetch_add(v201 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v201 + 2);
            (*(*v201 + 8))(v201);
          }
        }
      }

      if (buf[40] == 1)
      {
        v202 = *buf;
        *buf = 0;
        if (v202)
        {
          if (atomic_fetch_add_explicit(v202, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v202, v123);
          }
        }
      }

LABEL_337:
      if (v317)
      {
        WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v317, v123);
      }

LABEL_339:
      v203 = *a3;
      v204 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v205 = a3[3];
      if (v205 && v204)
      {
        (*(*v205 + 16))(v205, v203);
      }

      buf[0] = 0;
      buf[24] = 0;
      if (BYTE8(v390))
      {
        v206 = v390;
        *&v390 = 0;
        if (v206)
        {
          if (atomic_fetch_add(v206 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v206 + 2);
            (*(*v206 + 8))(v206, v203, v204);
          }
        }
      }

LABEL_356:
      if (buf[24])
      {
        WebKit::WebSWContextManagerConnection::didSaveScriptsToDisk(this, *buf, &buf[8], &buf[16]);
        if (buf[24])
        {
          if (*&buf[16])
          {
            WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(*&buf[16], v12);
          }

          v213 = *&buf[8];
          *&buf[8] = 0;
          if (v213 && atomic_fetch_add(v213 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v213 + 2);
            (*(*v213 + 8))(v213);
          }
        }
      }

      else
      {
LABEL_120:
        v12 = *a3;
        v95 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v96 = a3[3];
        if (v96 && v95)
        {
          (*(*v96 + 16))(v96, v12);
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xBF9:
      v161 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::WebSWContextManagerConnection::disconnectFromInspector(this, v161);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xBFA:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::WebSWContextManagerConnection::dispatchMessageFromInspector(this, *buf, &buf[8]);
        if (buf[16])
        {
          v29 = *&buf[8];
          *&buf[8] = 0;
          if (v29)
          {
            goto LABEL_308;
          }
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xBFB:
      v175 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::WebSWContextManagerConnection::fireActivateEvent(this, v175);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xBFC:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation>>(buf, a3);
      if (buf[64] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
      }

      v38 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_280;
      }

      v39 = v38;
      while (1)
      {
        v40 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v41 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v41, v40 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v41 == v40)
        {
          goto LABEL_274;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_274:
      v181 = WTF::fastMalloc(v40, 0x18);
      *v181 = &unk_1F10F81B8;
      v181[1] = v39;
      v181[2] = a2;
      *v361 = v181;
      WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(this, *buf, &buf[8], v361);
      goto LABEL_277;
    case 0xBFD:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation>>(buf, a3);
      if (buf[64] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
      }

      v171 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_280;
      }

      v172 = v171;
      while (1)
      {
        v173 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v174 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v174, v173 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v174 == v173)
        {
          goto LABEL_276;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_276:
      v182 = WTF::fastMalloc(v173, 0x18);
      *v182 = &unk_1F10F8190;
      v182[1] = v172;
      v182[2] = a2;
      *v361 = v182;
      WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(this, *buf, &buf[8], v361);
LABEL_277:
      v183 = *v361;
      *v361 = 0;
      if (v183)
      {
        (*(*v183 + 8))(v183);
      }

      if ((buf[64] & 1) == 0)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
      }

LABEL_280:
      v29 = *&buf[16];
      *&buf[16] = 0;
      if (!v29)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
      }

      goto LABEL_308;
    case 0xBFE:
      v31 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::WebSWContextManagerConnection::fireInstallEvent(this, v31);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xBFF:
      v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v33 & 1) != 0 && ((v34 = v32, IPC::ArgumentCoder<WebCore::NotificationData,void>::decode(a3, v361), (v367) || (v263 = *a3, v264 = a3[1], *a3 = 0, a3[1] = 0, (v265 = a3[3]) != 0) && v264 && ((*(*v265 + 16))(v265, v263), (v367)))
      {
        v35 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
        if ((v35 & 0x100) != 0)
        {
          if ((v367 & 1) == 0)
          {
            goto LABEL_424;
          }

          v192 = *&v361[72];
          *buf = v34;
          *&buf[16] = *v361;
          *&buf[24] = *&v361[8];
          *&v361[8] &= ~1u;
          *v361 = 0;
          *&buf[40] = *&v361[24];
          v193 = *&v361[40];
          memset(&v361[40], 0, 40);
          *&buf[56] = v193;
          *&buf[72] = *&v361[56];
          *&buf[88] = v192;
          buf[96] = v361[80];
          v194 = v362;
          v362 = 0u;
          *&buf[104] = v194;
          *&buf[120] = v363;
          v320 = v364;
          LODWORD(v363) = v363 & 0xFFFFFFFE;
          v322 = *&v365[56];
          *v323 = *&v365[72];
          *&v321[24] = *&v365[24];
          *&v321[40] = *&v365[40];
          *&v321[8] = *&v365[8];
          v195 = *&v365[88];
          *&v365[88] = 0;
          *v324 = v195;
          *&v194 = *&v365[96];
          *&v365[96] = 0;
          *&v324[8] = v194;
          *&v324[16] = *&v365[104];
          v37 = 1;
          LOBYTE(cf) = v35;
        }

        else
        {
          v37 = 0;
          buf[0] = 0;
        }

        v327 = v37;
        if (v367)
        {
          WebCore::NotificationData::~NotificationData(v361, v36);
        }

        if (v37)
        {
          goto LABEL_318;
        }
      }

      else
      {
        buf[0] = 0;
        v327 = 0;
      }

      v12 = *a3;
      v266 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v267 = a3[3];
      if (!v267)
      {
        goto LABEL_327;
      }

      if (!v266)
      {
        goto LABEL_327;
      }

      (*(*v267 + 16))(v267, v12);
      if ((v327 & 1) == 0)
      {
        goto LABEL_327;
      }

LABEL_318:
      v196 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_327;
      }

      a3 = v196;
      while (1)
      {
        v197 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v198 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v198, v197 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v198 == v197)
        {
          goto LABEL_324;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_324:
      v199 = WTF::fastMalloc(v197, 0x18);
      *v199 = &unk_1F10F8168;
      v199[1] = a3;
      v199[2] = a2;
      *v361 = v199;
      if ((v327 & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::WebSWContextManagerConnection::fireNotificationEvent(this, *buf, &buf[16], cf, v361);
      v200 = *v361;
      *v361 = 0;
      if (v200)
      {
        (*(*v200 + 8))(v200);
      }

LABEL_327:
      if (v327 == 1)
      {
        WebCore::NotificationData::~NotificationData(&buf[16], v12);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC00:
      v147 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v148 & 1) != 0 && ((v149 = v147, IPC::ArgumentCoder<std::optional<std::span<unsigned char const,18446744073709551615ul>>,void>::decode<IPC::Decoder>(a3, &v390), (v391[8]) || (v242 = *a3, v243 = a3[1], *a3 = 0, a3[1] = 0, (v244 = a3[3]) != 0) && v243 && ((*(*v244 + 16))(v244, v242), (v391[8])))
      {
        IPC::ArgumentCoder<std::optional<WebCore::NotificationPayload>,void>::decode<IPC::Decoder>(a3, v361);
        if (v365[8] & 1) != 0 || (v268 = *a3, v269 = a3[1], *a3 = 0, a3[1] = 0, (v270 = a3[3]) != 0) && v269 && ((*(*v270 + 16))(v270, v268), (v365[8]))
        {
          if ((v391[8] & 1) == 0)
          {
            goto LABEL_424;
          }

          *buf = v149;
          *&buf[8] = v390;
          *&buf[24] = *v391;
          std::optional<WebCore::NotificationPayload>::optional[abi:sn200100](&buf[32], v361);
          v321[24] = 1;
          if ((v365[8] & 1) != 0 && v365[0] == 1)
          {
            if (v364 == 1)
            {
              v151 = v363;
              *&v363 = 0;
              if (v151 && atomic_fetch_add_explicit(v151, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v151, v150);
              }

              v152 = *(&v362 + 1);
              *(&v362 + 1) = 0;
              if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v152, v150);
              }

              v153 = v362;
              *&v362 = 0;
              if (v153 && atomic_fetch_add_explicit(v153, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v153, v150);
              }

              v154 = *&v361[80];
              *&v361[80] = 0;
              if (v154 && atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v154, v150);
              }

              v155 = *&v361[72];
              *&v361[72] = 0;
              if (v155 && atomic_fetch_add_explicit(v155, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v155, v150);
              }
            }

            v156 = *&v361[40];
            *&v361[40] = 0;
            if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v156, v150);
            }

            v157 = *v361;
            *v361 = 0;
            if (v157 && atomic_fetch_add_explicit(v157, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v157, v150);
            }
          }
        }

        else
        {
          buf[0] = 0;
          v321[24] = 0;
        }

        if (v321[24])
        {
          goto LABEL_228;
        }
      }

      else
      {
        buf[0] = 0;
        v321[24] = 0;
      }

      v12 = *a3;
      v245 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v246 = a3[3];
      if (!v246)
      {
        goto LABEL_286;
      }

      if (!v245)
      {
        goto LABEL_286;
      }

      (*(*v246 + 16))(v246, v12);
      if ((v321[24] & 1) == 0)
      {
        goto LABEL_286;
      }

LABEL_228:
      v158 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_286;
      }

      a3 = v158;
      while (1)
      {
        v159 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v160 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v160, v159 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v160 == v159)
        {
          goto LABEL_283;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_283:
      v184 = WTF::fastMalloc(v159, 0x18);
      *v184 = &unk_1F10F8140;
      v184[1] = a3;
      v184[2] = a2;
      *&v390 = v184;
      if ((v321[24] & 1) == 0)
      {
        goto LABEL_424;
      }

      *v361 = *&buf[8];
      *&v361[16] = *&buf[24];
      WebKit::WebSWContextManagerConnection::firePushEvent(this, *buf, v361, &buf[32], &v390);
      v185 = v390;
      *&v390 = 0;
      if (v185)
      {
        (*(*v185 + 8))(v185);
      }

LABEL_286:
      if (v321[24] != 1 || v321[16] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
      }

      if (v321[0] == 1)
      {
        v186 = v320;
        *&v320 = 0;
        if (v186 && atomic_fetch_add_explicit(v186, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v186, v12);
        }

        v187 = *&buf[128];
        *&buf[128] = 0;
        if (v187 && atomic_fetch_add_explicit(v187, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v187, v12);
        }

        v188 = *&buf[120];
        *&buf[120] = 0;
        if (v188 && atomic_fetch_add_explicit(v188, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v188, v12);
        }

        v189 = *&buf[112];
        *&buf[112] = 0;
        if (v189 && atomic_fetch_add_explicit(v189, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v189, v12);
        }

        v190 = *&buf[104];
        *&buf[104] = 0;
        if (v190 && atomic_fetch_add_explicit(v190, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v190, v12);
        }
      }

      v191 = *&buf[72];
      *&buf[72] = 0;
      if (v191 && atomic_fetch_add_explicit(v191, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v191, v12);
      }

LABEL_307:
      v29 = *&buf[32];
      *&buf[32] = 0;
      if (!v29)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
      }

LABEL_308:
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v12);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC01:
      v30 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebCore::SWContextManager::singleton(v30);
        WebCore::SWContextManager::fireUpdateFoundEvent();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC02:
      IPC::ArgumentCoder<WebCore::ServiceWorkerContextData,void>::decode(a3, v361);
      if ((v389 & 1) == 0)
      {
        v254 = *a3;
        v255 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v256 = a3[3];
        if (!v256 || !v255 || ((*(*v256 + 16))(v256, v254), (v389 & 1) == 0))
        {
          buf[0] = 0;
          v360 = 0;
          goto LABEL_377;
        }
      }

      IPC::Decoder::decode<WebCore::ServiceWorkerData>(a3, &v390);
      if (v393 != 1)
      {
        buf[0] = 0;
        v360 = 0;
        goto LABEL_375;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v317);
      if ((v318 & 1) == 0)
      {
        v86 = *a3;
        v287 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v288 = a3[3];
        if (!v288 || !v287 || ((*(*v288 + 16))(v288, v86), (v318 & 1) == 0))
        {
          buf[0] = 0;
          v360 = 0;
          goto LABEL_371;
        }
      }

      v87 = a3[1];
      v88 = a3[2];
      v86 = *a3;
      if (v87 <= v88 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v303 = a3[3];
        if (v303)
        {
          if (v87)
          {
            (*(*v303 + 16))(v303);
            v87 = a3[1];
          }
        }

        else
        {
          v87 = 0;
        }
      }

      else
      {
        a3[2] = v88 + 1;
        if (v88)
        {
          v89 = *v88;
          if (v89 < 2)
          {
            v90 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
            if ((v90 & 0x100) != 0)
            {
              v91 = v90;
              v92 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(a3);
              if ((v92 & 0x10000) != 0)
              {
                if ((v389 & 1) == 0 || (v393 & 1) == 0 || (v318 & 1) == 0)
                {
                  goto LABEL_424;
                }

                v215 = v92;
                *buf = *v361;
                *&buf[16] = *&v361[16];
                WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(&buf[24], &v361[24]);
                v331 = v369;
                v332 = v370;
                v217 = *(&v371 + 1);
                v216 = v371;
                v370 = 0u;
                v371 = 0u;
                v333 = __PAIR128__(v217, v216);
                v218 = v375;
                v219 = v376;
                v375 = 0u;
                v376 = 0u;
                v334 = v372;
                v335 = v373;
                v336 = v374;
                v337 = v218;
                v338 = v219;
                v339 = v377;
                v340 = v378;
                LODWORD(v377) = v377 & 0xFFFFFFFE;
                v341 = v379;
                v220 = v380;
                v380 = 0;
                v342 = v220;
                *&v218 = v381;
                v381 = 0;
                v343 = v218;
                LODWORD(v220) = v382;
                v382 = 0;
                v344 = v220;
                LOBYTE(v220) = v383;
                v383 = 0;
                v345 = v220;
                v347 = v385;
                v348 = v386;
                v346 = v384;
                v349 = v387;
                v221 = v388;
                v388 = 0;
                v350 = v221;
                v351 = v390;
                v222 = *v391;
                *v391 = 0;
                v352 = v222;
                v353 = *&v391[8];
                v354 = *&v391[24];
                *&v391[8] &= ~1u;
                v355 = v392;
                v223 = v317;
                v317 = 0;
                v356 = v223;
                v357 = v89;
                v358 = v91;
                v93 = 1;
                v359 = v215;
LABEL_367:
                v360 = v93;
                if (v318)
                {
                  v224 = v317;
                  v317 = 0;
                  if (v224)
                  {
                    if (atomic_fetch_add_explicit(v224, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v224, v86);
                    }
                  }
                }

LABEL_371:
                if (v393)
                {
                  v225 = *v391;
                  *v391 = 0;
                  if (v225)
                  {
                    if (atomic_fetch_add_explicit(v225, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v225, v86);
                    }
                  }
                }

LABEL_375:
                if (v389)
                {
                  WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(v361, v86);
                }

LABEL_377:
                if (v360 & 1) != 0 || (v12 = *a3, v261 = a3[1], *a3 = 0, a3[1] = 0, (v262 = a3[3]) != 0) && v261 && ((*(*v262 + 16))(v262, v12), (v360))
                {
                  WebKit::WebSWContextManagerConnection::installServiceWorker(this, buf, &v351, &v356, v357, v358, v359);
                  if (v360)
                  {
                    v226 = v356;
                    v356 = 0;
                    if (v226 && atomic_fetch_add_explicit(v226, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v226, v12);
                    }

                    v227 = v352;
                    v352 = 0;
                    if (v227 && atomic_fetch_add_explicit(v227, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v227, v12);
                    }

                    WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(buf, v12);
                  }
                }

                return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
              }
            }

LABEL_111:
            v93 = 0;
            buf[0] = 0;
            goto LABEL_367;
          }

          goto LABEL_546;
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v304 = a3[3];
      if (v304)
      {
        if (v87)
        {
          (*(*v304 + 16))(v304);
          v86 = *a3;
          v87 = a3[1];
          goto LABEL_546;
        }
      }

      else
      {
        v87 = 0;
      }

      v86 = 0;
LABEL_546:
      *a3 = 0;
      a3[1] = 0;
      v305 = a3[3];
      if (v305)
      {
        if (v87)
        {
          (*(*v305 + 16))(v305, v86);
          v306 = a3[3];
          v86 = *a3;
          v307 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          if (v306)
          {
            if (v307)
            {
              (*(*v306 + 16))(v306, v86);
            }
          }
        }
      }

      goto LABEL_111;
    case 0xC03:
      v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_120;
      }

      v19 = v17;
      v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v21 & 1) == 0)
      {
        goto LABEL_120;
      }

      v22 = v20;
      v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v24 & 1) == 0)
      {
        goto LABEL_120;
      }

      v25 = v23;
      IPC::Decoder::decode<WebCore::ResourceError>(a3, v361);
      if ((v361[80] & 1) == 0)
      {
        goto LABEL_120;
      }

      *buf = v19;
      *&buf[8] = v22;
      *&buf[16] = v25;
      *&buf[24] = *v361;
      *&buf[40] = *&v361[16];
      *&buf[56] = *&v361[32];
      *&v361[16] &= ~1u;
      *&buf[72] = *&v361[48];
      *&buf[80] = *&v361[56];
      *&buf[84] = *&v361[60];
      *&buf[88] = *&v361[64];
      buf[96] = v361[72];
      buf[104] = 1;
      WebKit::WebSWContextManagerConnection::navigationPreloadFailed(this, v19, v22, v25, &buf[24]);
      if (buf[104])
      {
        v26 = *&buf[88];
        *&buf[88] = 0;
        if (v26)
        {
          CFRelease(v26);
        }

        v27 = *&buf[72];
        *&buf[72] = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v12);
        }

        v28 = *&buf[32];
        *&buf[32] = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v12);
        }

        v29 = *&buf[24];
        *&buf[24] = 0;
        if (v29)
        {
          goto LABEL_308;
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC04:
      v97 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v98 & 1) == 0)
      {
        goto LABEL_120;
      }

      v99 = v97;
      v100 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v101 & 1) == 0)
      {
        goto LABEL_120;
      }

      v102 = v100;
      v103 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v104 & 1) == 0)
      {
        goto LABEL_120;
      }

      v105 = v103;
      IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v361);
      if ((v368 & 1) == 0)
      {
        v273 = *a3;
        v274 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v275 = a3[3];
        if (!v275)
        {
          goto LABEL_120;
        }

        if (!v274)
        {
          goto LABEL_120;
        }

        (*(*v275 + 16))(v275, v273);
        if ((v368 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      *&buf[32] = *&v361[8];
      *&buf[48] = *&v361[24];
      v107 = *&v361[56];
      memset(&v361[56], 0, 32);
      *buf = v99;
      *&buf[8] = v102;
      v108 = *v361;
      v109 = *&v361[40];
      *v361 = 0;
      *&buf[16] = v105;
      *&buf[24] = v108;
      *&v361[8] &= ~1u;
      *&v361[40] = 0;
      *&buf[64] = v109;
      *&buf[72] = *&v361[48];
      *&buf[80] = v107;
      *&buf[96] = *&v361[72];
      v110 = *(&v362 + 1);
      *&buf[112] = v362;
      v362 = 0uLL;
      *&buf[120] = v110;
      v111 = *(&v363 + 1);
      *&buf[128] = v363;
      v363 = 0uLL;
      *&v320 = v111;
      BYTE8(v320) = 0;
      v321[0] = 0;
      if (BYTE8(v364) == 1)
      {
        v214 = v364;
        *&v364 = 0;
        *(&v320 + 1) = v214;
        v321[0] = 1;
      }

      *&v321[8] = *v365;
      v321[10] = v365[2];
      *&v321[16] = *&v365[8];
      *&v365[8] = 0;
      v322 = *&v365[48];
      *v323 = *&v365[64];
      *v324 = *&v365[80];
      *&v324[11] = *&v365[91];
      *&v321[24] = *&v365[16];
      *&v321[40] = *&v365[32];
      cf = v366;
      LOBYTE(v326) = v367;
      v327 = 1;
      if (v368)
      {
        v366 = 0;
        WebCore::ResourceResponseBase::~ResourceResponseBase(v361, v106);
      }

      WebKit::WebSWContextManagerConnection::navigationPreloadIsReady(this, *buf, *&buf[8], *&buf[16], &buf[24]);
      if (v327)
      {
        v112 = cf;
        cf = 0;
        if (v112)
        {
          CFRelease(v112);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(&buf[24], v12);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC05:
      v162 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v163 & 1) == 0)
      {
        buf[0] = 0;
        v324[0] = 0;
        goto LABEL_435;
      }

      v164 = v162;
      IPC::Decoder::decode<WebCore::MessageWithMessagePorts>(a3, &v390);
      if (v391[8] != 1)
      {
        buf[0] = 0;
        v324[0] = 0;
        goto LABEL_401;
      }

      v165 = a3[1];
      v166 = a3[2];
      if (v165 <= v166 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v301 = a3[3];
        if (v301)
        {
          if (v165)
          {
            (*(*v301 + 16))(v301);
            v165 = a3[1];
          }
        }

        else
        {
          v165 = 0;
        }
      }

      else
      {
        a3[2] = v166 + 1;
        if (v166)
        {
          v167 = *v166;
          if (v167 >= 2)
          {
LABEL_240:
            v361[0] = 0;
            v365[72] = 0;
            goto LABEL_241;
          }

          if (!v167)
          {
            IPC::Decoder::decode<WebCore::ServiceWorkerData>(a3, buf);
            if (buf[64] == 1)
            {
              *v361 = *buf;
              *&v361[16] = *&buf[16];
              *&v361[24] = *&buf[24];
              *&v361[40] = *&buf[40];
              *&v361[56] = *&buf[56];
              v365[56] = 0;
              v365[72] = 1;
              goto LABEL_388;
            }

            goto LABEL_240;
          }

          IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::decode(a3, buf);
          if (v321[40] & 1) != 0 || (v168 = *a3, v279 = a3[1], *a3 = 0, a3[1] = 0, (v280 = a3[3]) != 0) && v279 && ((*(*v280 + 16))(v280, v168), (v321[40]))
          {
            *v361 = *buf;
            *&v361[16] = *&buf[16];
            *&v361[32] = *&buf[32];
            v207 = *&buf[40];
            *&buf[40] = 0;
            *&v361[40] = v207;
            *&v361[48] = *&buf[48];
            *&v361[64] = *&buf[64];
            *&buf[48] &= ~1u;
            v362 = *&buf[88];
            *&buf[88] &= ~1u;
            v208 = *&buf[80];
            *&buf[80] = 0;
            v363 = *&buf[104];
            *&v365[16] = *v321;
            *v365 = v320;
            v364 = *&buf[120];
            *&v361[80] = v208;
            *&v365[32] = *&v321[16];
            v209 = *&v321[24];
            *&v321[16] = 0;
            *&v321[24] = 0;
            *&v365[40] = v209;
            v365[56] = 1;
            v365[72] = 1;
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v321[16], v168);
            v210 = *&buf[80];
            *&buf[80] = 0;
            if (v210 && atomic_fetch_add_explicit(v210, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v210, v168);
            }

            v211 = *&buf[40];
            *&buf[40] = 0;
            if (v211 && atomic_fetch_add_explicit(v211, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v211, v168);
            }
          }

          else
          {
            v361[0] = 0;
            v365[72] = 0;
          }

          if (v365[72])
          {
            goto LABEL_388;
          }

LABEL_241:
          v168 = *a3;
          v169 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v170 = a3[3];
          if (!v170 || !v169 || ((*(*v170 + 16))(v170, v168), (v365[72] & 1) == 0))
          {
            buf[0] = 0;
            v324[0] = 0;
            goto LABEL_396;
          }

LABEL_388:
          if ((v391[8] & 1) == 0)
          {
            goto LABEL_424;
          }

          *buf = v164;
          v228 = v390;
          v390 = 0uLL;
          *&buf[8] = v228;
          *&v228 = *v391;
          *v391 = 0;
          *&buf[24] = v228;
          buf[32] = 0;
          LOBYTE(v323[0]) = -1;
          if (v365[56] == 255)
          {
            v324[0] = 1;
          }

          else
          {
            *&buf[32] = *v361;
            if (v365[56])
            {
              *&buf[48] = *&v361[16];
              *&buf[64] = *&v361[32];
              v230 = *&v361[40];
              *&v361[40] = 0;
              *&buf[72] = v230;
              *&buf[80] = *&v361[48];
              *&buf[96] = *&v361[64];
              *&v361[48] &= ~1u;
              *&buf[120] = v362;
              LODWORD(v362) = v362 & 0xFFFFFFFE;
              v231 = *&v361[80];
              v232 = *&v365[32];
              *&v361[80] = 0;
              v320 = v363;
              *&v321[32] = *&v365[16];
              *&v321[16] = *v365;
              *v321 = v364;
              *&v365[32] = 0;
              *&buf[112] = v231;
              *&v321[48] = v232;
              v233 = *&v365[40];
              *&v365[40] = 0;
              *&v322 = v233;
            }

            else
            {
              v229 = *&v361[16];
              *&v361[16] = 0;
              *&buf[48] = v229;
              *&buf[56] = *&v361[24];
              *&buf[72] = *&v361[40];
              *&v361[24] &= ~1u;
              *&buf[88] = *&v361[56];
            }

            LOBYTE(v323[0]) = v365[56];
            v324[0] = 1;
            if ((v365[72] & 1) == 0)
            {
              goto LABEL_396;
            }
          }

          mpark::variant<WebCore::ServiceWorkerData,WebCore::ServiceWorkerClientData>::~variant(v361, v168);
LABEL_396:
          if (v391[8])
          {
            v234 = *(&v390 + 1);
            if (*(&v390 + 1))
            {
              *(&v390 + 1) = 0;
              *v391 = 0;
              WTF::fastFree(v234, v168);
            }

            v235 = v390;
            *&v390 = 0;
            if (v235)
            {
              WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v235);
            }
          }

LABEL_401:
          if (v324[0])
          {
            goto LABEL_402;
          }

LABEL_435:
          v12 = *a3;
          v257 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v258 = a3[3];
          if (!v258)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
          }

          if (!v257)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
          }

          (*(*v258 + 16))(v258, v12);
          if ((v324[0] & 1) == 0)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
          }

LABEL_402:
          WebKit::WebSWContextManagerConnection::postMessageToServiceWorker(this, *buf, &buf[8], &buf[32]);
          if (v324[0])
          {
            mpark::variant<WebCore::ServiceWorkerData,WebCore::ServiceWorkerClientData>::~variant(&buf[32], v12);
            v236 = *&buf[16];
            if (*&buf[16])
            {
              *&buf[16] = 0;
              *&buf[24] = 0;
              WTF::fastFree(v236, v12);
            }

            v237 = *&buf[8];
            *&buf[8] = 0;
            if (v237)
            {
              WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v237);
            }
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v302 = a3[3];
      if (v302 && v165)
      {
        (*(*v302 + 16))(v302);
      }

      goto LABEL_240;
    case 0xC06:
      v178 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
      if ((v178 & 0x100) == 0)
      {
        goto LABEL_120;
      }

      WebKit::WebSWContextManagerConnection::setInspectable(v178 & 1, v179);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC07:
      v113 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WallTime>>(buf, a3);
      if (buf[16] == 1)
      {
        WebCore::SWContextManager::singleton(v113);
        WebCore::SWContextManager::setRegistrationLastUpdateTime();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC08:
      v146 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerUpdateViaCache>>(buf, a3);
      if (buf[16] == 1)
      {
        WebCore::SWContextManager::singleton(v146);
        WebCore::SWContextManager::setRegistrationUpdateViaCache();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC09:
      v177 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v177 & 0x100) != 0)
      {
        WebKit::WebSWContextManagerConnection::setThrottleState(this, v177 & 1);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC0A:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[8] & 1) != 0 || (v12 = *a3, v247 = a3[1], *a3 = 0, a3[1] = 0, (v248 = a3[3]) != 0) && v247 && ((*(*v248 + 16))(v248, v12), (buf[8]))
      {
        WebKit::WebSWContextManagerConnection::setUserAgent(this, buf);
        if (buf[8])
        {
          v29 = *buf;
          *buf = 0;
          if (v29)
          {
            goto LABEL_308;
          }
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC0B:
      v44 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v45 & 1) == 0)
      {
        goto LABEL_425;
      }

      v46 = v44;
      v47 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v48 & 1) == 0)
      {
        goto LABEL_425;
      }

      v49 = v47;
      v50 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v51 & 1) == 0)
      {
        goto LABEL_425;
      }

      v52 = v50;
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v361);
      if ((v365[64] & 1) == 0)
      {
        v276 = *a3;
        v277 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v278 = a3[3];
        if (!v278 || !v277 || ((*(*v278 + 16))(v278, v276), (v365[64] & 1) == 0))
        {
          buf[0] = 0;
          v330 = 0;
          goto LABEL_78;
        }
      }

      IPC::ArgumentCoder<WebCore::FetchOptions,void>::decode(a3, &v390);
      if ((v391[32] & 1) == 0)
      {
        v251 = *a3;
        v252 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v253 = a3[3];
        if (!v253 || !v252 || ((*(*v253 + 16))(v253, v251), (v391[32] & 1) == 0))
        {
          buf[0] = 0;
          v330 = 0;
          goto LABEL_76;
        }
      }

      IPC::ArgumentCoder<IPC::FormDataReference,void>::decode(a3, &v311);
      if ((v312 & 1) == 0)
      {
        v55 = *a3;
        v271 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v272 = a3[3];
        if (v272 && v271)
        {
          (*(*v272 + 16))(v272, v55);
        }

        buf[0] = 0;
        v330 = 0;
LABEL_72:
        if (v391[32])
        {
          v72 = *(&v390 + 1);
          *(&v390 + 1) = 0;
          if (v72)
          {
            if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v72, v55);
            }
          }
        }

LABEL_76:
        if (v365[64])
        {
          WebCore::ResourceRequest::~ResourceRequest(v361);
        }

LABEL_78:
        if (v330)
        {
          goto LABEL_79;
        }

LABEL_426:
        v12 = *a3;
        v249 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v250 = a3[3];
        if (!v250)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
        }

        if (!v249)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
        }

        (*(*v250 + 16))(v250, v12);
        if ((v330 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
        }

LABEL_79:
        WebKit::WebSWContextManagerConnection::startFetch(this, *buf, *&buf[8], *&buf[16], &buf[24], v323, &cf, &v326, v327, &v328, &v329);
        if (v330)
        {
          v73 = v329;
          v329 = 0;
          if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v73, v12);
          }

          v74 = v328;
          v328 = 0;
          if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v74, v12);
          }

          v75 = v326;
          v326 = 0;
          if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v75, v12);
          }

          v76 = cf;
          cf = 0;
          if (v76)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v76);
          }

          v77 = v323[1];
          v323[1] = 0;
          if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v77, v12);
          }

          WebCore::ResourceRequest::~ResourceRequest(&buf[24]);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v313);
      if ((v314 & 1) == 0)
      {
        v55 = *a3;
        v281 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v282 = a3[3];
        if (!v282 || !v281 || ((*(*v282 + 16))(v282, v55), (v314 & 1) == 0))
        {
          buf[0] = 0;
          v330 = 0;
LABEL_70:
          if (v311)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v311);
          }

          goto LABEL_72;
        }
      }

      v53 = a3[1];
      v54 = a3[2];
      v55 = *a3;
      if (v53 <= v54 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v291 = a3[3];
        if (v291)
        {
          if (v53)
          {
            (*(*v291 + 16))(v291);
            v53 = a3[1];
          }
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {
        a3[2] = v54 + 1;
        if (v54)
        {
          v56 = *v54;
          if (v56 < 2)
          {
            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v315);
            if (v316 & 1) != 0 || (v55 = *a3, v283 = a3[1], *a3 = 0, a3[1] = 0, (v284 = a3[3]) != 0) && v283 && ((*(*v284 + 16))(v284, v55), (v316))
            {
              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v317);
              if (v318 & 1) != 0 || (v55 = *a3, v285 = a3[1], *a3 = 0, a3[1] = 0, (v286 = a3[3]) != 0) && v285 && ((*(*v286 + 16))(v286, v55), (v318))
              {
                if ((v365[64] & 1) == 0 || (v391[32] & 1) == 0 || (v314 & 1) == 0 || (v316 & 1) == 0)
                {
LABEL_424:
                  __break(1u);
LABEL_425:
                  buf[0] = 0;
                  v330 = 0;
                  goto LABEL_426;
                }

                *buf = v46;
                *&buf[8] = v49;
                v57 = *v361;
                v58 = *&v361[40];
                *v361 = 0;
                *&buf[16] = v52;
                *&buf[24] = v57;
                *&buf[32] = *&v361[8];
                *&buf[48] = *&v361[24];
                *&v361[8] &= ~1u;
                *&v361[40] = 0;
                *&buf[64] = v58;
                *&buf[72] = *&v361[48];
                *&buf[88] = *&v361[64];
                *&v361[48] &= ~1u;
                *&buf[104] = *&v361[80];
                v59 = v362;
                v362 = 0u;
                *&buf[112] = v59;
                v60 = *(&v363 + 1);
                *&buf[128] = v363;
                v363 = 0uLL;
                *&v320 = v60;
                v61 = *(&v364 + 1);
                *(&v320 + 1) = v364;
                v364 = 0uLL;
                *v321 = v61;
                v62 = *v365;
                *v365 = 0;
                *&v321[8] = v62;
                v321[20] = v365[12];
                *&v321[16] = *&v365[8];
                v63 = *&v365[16];
                memset(&v365[16], 0, 24);
                *&v321[24] = v63;
                LOBYTE(v322) = v365[48];
                *&v321[40] = *&v365[32];
                v64 = *&v365[56];
                *&v365[56] = 0;
                *(&v322 + 1) = v64;
                *(v323 + 3) = *(&v390 + 3);
                LODWORD(v323[0]) = v390;
                v65 = *(&v390 + 1);
                *(&v390 + 1) = 0;
                v323[1] = v65;
                *v324 = *v391;
                *&v324[16] = *&v391[16];
                v66 = v311;
                v311 = 0;
                v67 = v313;
                v313 = 0;
                cf = v66;
                v326 = v67;
                v327 = v56;
                v68 = v315;
                v315 = 0;
                v69 = 1;
                v328 = v68;
                v329 = v317;
              }

              else
              {
                v69 = 0;
                buf[0] = 0;
              }

              v330 = v69;
              if (v316)
              {
                v70 = v315;
                v315 = 0;
                if (v70)
                {
                  if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v70, v55);
                  }
                }
              }

              goto LABEL_66;
            }

LABEL_476:
            buf[0] = 0;
            v330 = 0;
LABEL_66:
            if (v314)
            {
              v71 = v313;
              v313 = 0;
              if (v71)
              {
                if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v71, v55);
                }
              }
            }

            goto LABEL_70;
          }

          goto LABEL_511;
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v292 = a3[3];
      if (v292)
      {
        if (v53)
        {
          (*(*v292 + 16))(v292);
          v55 = *a3;
          v53 = a3[1];
          goto LABEL_511;
        }
      }

      else
      {
        v53 = 0;
      }

      v55 = 0;
LABEL_511:
      *a3 = 0;
      a3[1] = 0;
      v293 = a3[3];
      if (v293 && v53)
      {
        (*(*v293 + 16))(v293, v55);
      }

      goto LABEL_476;
    case 0xC0C:
      v42 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::WebSWContextManagerConnection::terminateWorker(v42, v43);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC0D:
      v180 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebCore::SWContextManager::singleton(v180);
        WebCore::SWContextManager::stopRunningDebuggerTasksOnServiceWorker();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC0E:
      v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_120;
      }

      v15 = v13;
      v16 = IPC::Decoder::decode<WebCore::LockBackForwardList>(a3);
      if ((v16 & 0x100) == 0)
      {
        goto LABEL_120;
      }

      WebKit::WebSWContextManagerConnection::updateAppInitiatedValue(this, v15, v16 & 1);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC0F:
      IPC::ArgumentCoder<std::tuple<WebKit::WebPreferencesStore>,void>::decode<IPC::Decoder>(a3, buf, a4, a5);
      if (buf[48] & 1) != 0 || (v12 = *a3, v259 = a3[1], *a3 = 0, a3[1] = 0, (v260 = a3[3]) != 0) && v259 && ((*(*v260 + 16))(v260, v12), (buf[48]))
      {
        WebKit::WebSWContextManagerConnection::updatePreferencesStore(this, buf);
        if (buf[48])
        {
          if (*&buf[24])
          {
            WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*&buf[24], *&buf[32]);
          }

          if (*buf)
          {
            WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*buf, *&buf[8]);
          }
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    case 0xC10:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationState,std::optional<WebCore::ServiceWorkerData>>>(buf, a3);
      if (buf[88] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
      }

      WebKit::WebSWContextManagerConnection::updateRegistrationState(this, *buf, buf[8], &buf[16]);
      if ((buf[88] & 1) == 0 || buf[80] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
      }

      goto LABEL_307;
    case 0xC11:
      v176 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerState>>(buf, a3);
      if (buf[16] == 1)
      {
        WebCore::SWContextManager::singleton(v176);
        WebCore::SWContextManager::updateWorkerState();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8, v12);
    default:
      v94 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v11 >= 0x107F)
        {
          v239 = 4223;
        }

        else
        {
          v239 = v11;
        }

        v240 = (&IPC::Detail::messageDescriptions)[3 * v239];
        v241 = a3[7];
        *buf = 136315394;
        *&buf[4] = v240;
        *&buf[12] = 2048;
        *&buf[14] = v241;
        _os_log_error_impl(&dword_19D52D000, v94, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_120;
  }
}

void WebKit::WebSWServerConnection::didReceiveMessage(WebKit::WebSWServerConnection *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = *(this + 10);
  if (v6 && (v3 = *(v6 + 8)) != 0)
  {
    v7 = 0;
    v3 = *(v3 + 280);
  }

  else
  {
LABEL_79:
    v7 = 1;
  }

  ++*(this + 4);
  switch(*(a3 + 25))
  {
    case 0xC12:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_AbortBackgroundFetch";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::AbortBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC13:
      if ((v3 & 0x200000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_AddCookieChangeSubscriptions";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::AddCookieChangeSubscriptions,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC14:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::AddRoutes,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC15:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v30)
      {
        WebCore::SWServer::Connection::addServiceWorkerRegistrationInServer();
      }

      goto LABEL_45;
    case 0xC16:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_BackgroundFetchIdentifiers";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::BackgroundFetchIdentifiers,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC17:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_BackgroundFetchInformation";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::BackgroundFetchInformation,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC18:
      if ((v3 & 0x200000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_CookieChangeSubscriptions";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::CookieChangeSubscriptions,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC19:
      IPC::handleMessage<Messages::WebSWServerConnection::DidResolveRegistrationPromise,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WebCore::ServiceWorkerRegistrationKey const&)>(a3, this);
      goto LABEL_45;
    case 0xC1A:
      if ((v3 & 0x400000000000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_DisableNavigationPreload";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::DisableNavigationPreload,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC1B:
      if ((v3 & 0x400000000000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_EnableNavigationPreload";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::EnableNavigationPreload,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC1C:
      IPC::handleMessage<Messages::WebSWServerConnection::FinishFetchingScriptInServer,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WebCore::ServiceWorkerJobDataIdentifier const&,WebCore::ServiceWorkerRegistrationKey const&,WebCore::WorkerFetchResult &&)>(a3, this);
      goto LABEL_45;
    case 0xC1D:
      if ((v3 & 0x400000000000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_GetNavigationPreloadState";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetNavigationPreloadState,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::NavigationPreloadState,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC1E:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetNotifications,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC1F:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetPushPermissionState,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC20:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetPushSubscription,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC21:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetRegistrations,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC22:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_MatchBackgroundFetch";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::MatchBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WebCore::RetrieveRecordsOptions &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC23:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::MatchRegistration,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC24:
      IPC::handleMessage<Messages::WebSWServerConnection::PostMessageToServiceWorker,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::MessageWithMessagePorts &&,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&)>(a3, this);
      goto LABEL_45;
    case 0xC25:
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, &v65);
      if ((v71 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v71 & 1) == 0)
        {
          buf[0] = 0;
          v64 = 0;
          goto LABEL_30;
        }
      }

      IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::decode(a3, v72);
      if ((v85 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v85 & 1) == 0)
        {
          buf[0] = 0;
          v64 = 0;
          goto LABEL_23;
        }
      }

      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v41);
      if (v42 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v42))
      {
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v43);
        if ((v44 & 1) == 0)
        {
          IPC::Decoder::markInvalid(a3);
          if ((v44 & 1) == 0)
          {
            v13 = 0;
            buf[0] = 0;
            goto LABEL_19;
          }
        }

        if ((v71 & 1) == 0 || (v85 & 1) == 0 || (v42 & 1) == 0)
        {
          __break(1u);
          goto LABEL_79;
        }

        buf[0] = 0;
        v46 = -1;
        if (v67)
        {
          if (v67 == 255)
          {
LABEL_15:
            LOBYTE(v47[0]) = 0;
            v49 = -1;
            if (v70)
            {
              if (v70 == 255)
              {
                goto LABEL_18;
              }

              *v47 = v68;
            }

            else
            {
              v9 = v68;
              v68 = 0uLL;
              *v47 = v9;
              v48 = v69;
            }

            v49 = v70;
LABEL_18:
            v50[0] = v72[0];
            v50[1] = v72[1];
            v51 = v73;
            v10 = v75;
            LODWORD(v75) = v75 & 0xFFFFFFFE;
            v11 = v74;
            v12 = v77;
            v74 = 0;
            v53 = v10;
            v54 = v76;
            v77 = 0;
            v52 = v11;
            v55 = v12;
            v56 = v78;
            v57 = v79;
            LODWORD(v78) = v78 & 0xFFFFFFFE;
            v60 = v82;
            v59 = v81;
            v58 = v80;
            v61[0] = v83;
            *&v10 = v84;
            v83 = 0;
            v84 = 0;
            v61[1] = v10;
            v62 = v41;
            v13 = 1;
            v63 = v43;
LABEL_19:
            v64 = v13;
            goto LABEL_20;
          }

          *buf = v65;
        }

        else
        {
          v8 = v65;
          v65 = 0uLL;
          *buf = v8;
          *&buf[16] = v66;
        }

        v46 = v67;
        goto LABEL_15;
      }

      buf[0] = 0;
      v64 = 0;
LABEL_20:
      if (v85)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, a2);
        v14 = v77;
        v77 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, a2);
        }

        v15 = v74;
        v74 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, a2);
        }
      }

LABEL_23:
      if (v71)
      {
        if (!v70)
        {
          v16 = *(&v68 + 1);
          *(&v68 + 1) = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, a2);
          }

          v17 = v68;
          *&v68 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, a2);
          }
        }

        v70 = -1;
        if (!v67)
        {
          v18 = *(&v65 + 1);
          *(&v65 + 1) = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, a2);
          }

          v19 = v65;
          *&v65 = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, a2);
          }
        }
      }

LABEL_30:
      if (v64 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v64))
      {
        WebKit::WebSWServerConnection::registerServiceWorkerClient(this, buf, v50, &v62, &v63);
        if (v64)
        {
          v21 = v63;
          v63 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v20);
          }

          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v61, v20);
          v23 = v55;
          v55 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v22);
          }

          v24 = v52;
          v52 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v22);
          }

          if (!v49)
          {
            v25 = v47[1];
            v47[1] = 0;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v22);
            }

            v26 = v47[0];
            v47[0] = 0;
            if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v26, v22);
            }
          }

          v49 = -1;
          if (!v46)
          {
            v27 = *&buf[8];
            *&buf[8] = 0;
            if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v22);
            }

            v28 = *buf;
            *buf = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v22);
            }
          }
        }
      }

LABEL_45:
      if (*(this + 4) == 1)
      {
        (*(*this + 8))(this);
      }

      else
      {
        --*(this + 4);
      }

      return;
    case 0xC26:
      if ((v3 & 0x200000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_RemoveCookieChangeSubscriptions";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::RemoveCookieChangeSubscriptions,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC27:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v31)
      {
        WebCore::SWServer::Connection::removeServiceWorkerRegistrationInServer();
      }

      goto LABEL_45;
    case 0xC28:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_RetrieveRecordResponse";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::RetrieveRecordResponse,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC29:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_RetrieveRecordResponseBody";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessage<Messages::WebSWServerConnection::RetrieveRecordResponseBody,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      goto LABEL_45;
    case 0xC2A:
      IPC::handleMessage<Messages::WebSWServerConnection::ScheduleJobInServer,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::ServiceWorkerJobData &&)>(a3, this);
      goto LABEL_45;
    case 0xC2B:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC2C:
      if ((v3 & 0x400000000000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_SetNavigationPreloadHeaderValue";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::SetNavigationPreloadHeaderValue,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC2D:
      v29 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v29 & 0x100) != 0)
      {
        WebKit::WebSWServerConnection::setThrottleState(this, v29 & 1);
      }

      goto LABEL_45;
    case 0xC2E:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_StartBackgroundFetch";
        v33 = "Message %s received by a disabled message endpoint";
LABEL_147:
        v34 = v32;
        v35 = 12;
        goto LABEL_148;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::StartBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC2F:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::StoreRegistrationsOnDisk,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC30:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::SubscribeToPushService,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC31:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::TerminateWorkerFromClient,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC32:
      IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a3, buf);
      if (v47[0] & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v47[0]))
      {
        WebKit::WebSWServerConnection::unregisterServiceWorkerClient(this, buf);
      }

      goto LABEL_45;
    case 0xC33:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::UnsubscribeFromPushService,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC34:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::WhenRegistrationReady,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC35:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::WhenServiceWorkerIsTerminatedForTesting,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_45;
    default:
      v40 = *(a3 + 25);
      v36 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v40 >= 0x107F)
        {
          v37 = 4223;
        }

        else
        {
          v37 = v40;
        }

        v38 = (&IPC::Detail::messageDescriptions)[3 * v37];
        v39 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v38;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        v33 = "Unhandled message %s to %llu";
        v34 = v36;
        v35 = 22;
LABEL_148:
        _os_log_error_impl(&dword_19D52D000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
      }

LABEL_113:
      IPC::Decoder::markInvalid(a3);
      goto LABEL_45;
  }
}

void IPC::handleMessage<Messages::WebSWServerConnection::ScheduleJobInServer,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::ServiceWorkerJobData &&)>(IPC::Decoder *a1, WebKit::WebSWServerConnection *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ServiceWorkerJobData,void>::decode(a1, &v42);
  v5 = v64;
  if ((v64 & 1) == 0)
  {
    v12 = *a1;
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    v15 = !v14 || v13 == 0;
    if (v15 || ((*(*v14 + 16))(v14, v12), v5 = v64, (v64 & 1) == 0))
    {
      v16 = *a1;
      v17 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v18 = *(a1 + 3);
      if (v18 && v17)
      {
        (*(*v18 + 16))(v18, v16);
      }

      return;
    }
  }

  v6 = v45;
  v19 = v42;
  v20 = v43;
  LODWORD(v43) = v43 & 0xFFFFFFFE;
  v42 = 0;
  v21 = v44;
  v45 = 0;
  v22 = v6;
  v23 = v46;
  v24 = v47;
  LODWORD(v46) = v46 & 0xFFFFFFFE;
  LOBYTE(v25) = 0;
  v27 = -1;
  if (v50)
  {
    if (v50 == 255)
    {
      goto LABEL_5;
    }

    v25 = v48;
  }

  else
  {
    v7 = v48;
    v48 = 0uLL;
    v25 = v7;
    v26 = v49;
  }

  v27 = v50;
LABEL_5:
  v8 = v51;
  v51 = 0;
  v28 = v8;
  v29 = v52;
  v30 = v53;
  LODWORD(v52) = v52 & 0xFFFFFFFE;
  v31 = v54;
  v32 = v55;
  v33 = v56;
  v34 = v57;
  v9 = v58;
  v58 = 0;
  v35 = v9;
  v36 = v59;
  LOBYTE(v37) = 0;
  v39 = 0;
  if (v62 == 1)
  {
    v10 = v60;
    v60 = 0;
    v37 = v10;
    v38 = v61;
    v39 = 1;
  }

  v40 = v63;
  v41 = 1;
  if (v5)
  {
    WebCore::ServiceWorkerJobData::~ServiceWorkerJobData(&v42, v4);
  }

  WebKit::WebSWServerConnection::scheduleJobInServer(a2, &v19);
  if (v41)
  {
    WebCore::ServiceWorkerJobData::~ServiceWorkerJobData(&v19, v11);
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10) && (v11 = v9, IPC::Decoder::decode<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v25, a2), (v28))
  {
    v22 = v25;
    v23 = v26;
    v24 = v27;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v13)
    {
      v14 = result;
      while (1)
      {
        v15 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v16 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v20 = WTF::fastMalloc(v15, 0x18);
      *v20 = &unk_1F10F81E0;
      v20[1] = v14;
      v20[2] = a1;
      v21 = v20;
      v25 = v22;
      v26 = v23;
      v27 = v24;
      WebKit::WebSWServerConnection::scheduleUnregisterJobInServer(a3, v8, v11, &v25, &v21);
      result = v21;
      v21 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v17 = *a2;
    v18 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      return (*(*result + 16))(result, v17);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebSWServerConnection::FinishFetchingScriptInServer,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WebCore::ServiceWorkerJobDataIdentifier const&,WebCore::ServiceWorkerRegistrationKey const&,WebCore::WorkerFetchResult &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ServiceWorkerJobDataIdentifier>(a1, &v23);
  if ((v24 & 1) == 0)
  {
    LOBYTE(v44) = 0;
    v66 = 0;
    goto LABEL_39;
  }

  IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationKey>(a1, &v67);
  if (v73 != 1)
  {
    LOBYTE(v44) = 0;
    v66 = 0;
    goto LABEL_23;
  }

  IPC::ArgumentCoder<WebCore::WorkerFetchResult,void>::decode(a1, &v25);
  if ((v43 & 1) == 0)
  {
    goto LABEL_44;
  }

  while ((v24 & 1) == 0 || (v73 & 1) == 0)
  {
    __break(1u);
LABEL_44:
    v3 = *a1;
    v21 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22)
    {
      if (v21)
      {
        (*(*v22 + 16))(v22, v3);
        if (v43)
        {
          continue;
        }
      }
    }

    LOBYTE(v44) = 0;
    v66 = 0;
    goto LABEL_11;
  }

  v44 = v23;
  LOBYTE(v45) = 0;
  v47 = -1;
  if (v69)
  {
    if (v69 == 255)
    {
      goto LABEL_9;
    }

    v45 = v67;
  }

  else
  {
    v4 = v67;
    v67 = 0uLL;
    v45 = v4;
    v46 = v68;
  }

  v47 = v69;
LABEL_9:
  v5 = v70;
  v70 = 0;
  v48 = v5;
  v49 = v71;
  v50 = v72;
  LODWORD(v71) = v71 & 0xFFFFFFFE;
  v51[0] = v25;
  v6 = v28;
  v51[2] = v27;
  v25 = 0u;
  v51[1] = v26;
  LODWORD(v26) = v26 & 0xFFFFFFFE;
  v28 = 0u;
  v51[3] = v6;
  v7 = v29;
  v29 = 0;
  v52 = v7;
  v54 = v31;
  v53 = v30;
  v55 = v32;
  v8 = v33;
  v33 = 0u;
  v9 = v34;
  v34 = 0u;
  v56 = v8;
  v57 = v9;
  v10 = v35;
  v35 = 0;
  v59 = v36;
  v60 = v37;
  LODWORD(v36) = v36 & 0xFFFFFFFE;
  v58 = v10;
  v61 = v38;
  v63 = v40;
  v62 = v39;
  v11 = v41;
  v38 = 0;
  v41 = 0;
  v64 = v11;
  v65 = v42;
  v66 = 1;
  if (v43)
  {
    WebCore::WorkerFetchResult::~WorkerFetchResult(&v25, v3);
  }

LABEL_11:
  if (v73)
  {
    v12 = v70;
    v70 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v3);
    }

    if (!v69)
    {
      v13 = *(&v67 + 1);
      *(&v67 + 1) = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v3);
      }

      v14 = v67;
      *&v67 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v3);
      }
    }
  }

LABEL_23:
  if ((v66 & 1) == 0)
  {
LABEL_39:
    v19 = *a1;
    v20 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      return result;
    }

    if (!v20)
    {
      return result;
    }

    result = (*(*result + 16))(result, v19);
    if ((v66 & 1) == 0)
    {
      return result;
    }
  }

  result = WebCore::SWServer::Connection::finishFetchingScriptInServer();
  if (v66)
  {
    WebCore::WorkerFetchResult::~WorkerFetchResult(v51, v16);
    result = v48;
    v48 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v17);
    }

    if (!v47)
    {
      v18 = *(&v45 + 1);
      *(&v45 + 1) = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }

      result = v45;
      *&v45 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v17);
        }
      }
    }
  }

  return result;
}

atomic_uint *IPC::handleMessage<Messages::WebSWServerConnection::PostMessageToServiceWorker,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::MessageWithMessagePorts &&,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&)>(uint64_t *a1, _DWORD *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v4;
  IPC::Decoder::decode<WebCore::MessageWithMessagePorts>(a1, v18);
  if (v20 != 1)
  {
    goto LABEL_18;
  }

  IPC::Decoder::decode<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v26, a1);
  v8 = v27;
  if (v27 == 1)
  {
    if ((v20 & 1) == 0)
    {
      __break(1u);
    }

    v21 = v6;
    v9 = *v18;
    v18[0] = 0;
    v18[1] = 0;
    *v22 = v9;
    *&v9 = v19;
    v19 = 0;
    v23 = v9;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v24[2] = v26[2];
    v25 = 1;
  }

  else
  {
    LOBYTE(v21) = 0;
    v25 = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }

    v10 = v18[1];
    if (v18[1])
    {
      v18[1] = 0;
      LODWORD(v19) = 0;
      WTF::fastFree(v10, v7);
    }
  }

  v11 = v18[0];
  v18[0] = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v11);
    if (v8)
    {
LABEL_11:
      result = WebKit::WebSWServerConnection::postMessageToServiceWorker(a2, v21, v22, v24);
      if (v25)
      {
        v14 = v22[1];
        if (v22[1])
        {
          v22[1] = 0;
          LODWORD(v23) = 0;
          WTF::fastFree(v14, v13);
        }

        result = v22[0];
        v22[0] = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
        }
      }

      return result;
    }
  }

  else if (v8)
  {
    goto LABEL_11;
  }

LABEL_18:
  v15 = *a1;
  v16 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    return (*(*result + 16))(result, v15);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebSWServerConnection::DidResolveRegistrationPromise,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WebCore::ServiceWorkerRegistrationKey const&)>(IPC::Decoder *a1, WebCore::SWServer::Connection *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationKey>(a1, v21);
  LOBYTE(v14[0]) = 0;
  if (v27 == 1)
  {
    v16 = -1;
    if (v23)
    {
      if (v23 == 255)
      {
        goto LABEL_5;
      }

      *v14 = *v21;
    }

    else
    {
      v5 = *v21;
      v21[0] = 0;
      v21[1] = 0;
      *v14 = v5;
      v15 = v22;
    }

    v16 = v23;
LABEL_5:
    v17 = v24;
    v18 = v25;
    v19 = v26;
    LODWORD(v25) = v25 & 0xFFFFFFFE;
    v20 = 1;
    v24 = 0;
    if (!v23)
    {
      v6 = v21[1];
      v21[1] = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v21[0];
      v21[0] = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }

    result = WebCore::SWServer::Connection::didResolveRegistrationPromise(a2, v14);
    if (v20)
    {
      result = v17;
      v17 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }

      if (!v16)
      {
        v10 = v14[1];
        v14[1] = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }

        result = v14[0];
        v14[0] = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v9);
          }
        }
      }
    }

    return result;
  }

  v11 = *a1;
  v12 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    return (*(*result + 16))(result, v11);
  }

  return result;
}

void IPC::handleMessageAsync<Messages::WebSWServerConnection::MatchRegistration,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)>(atomic_ullong *a1, WTF::StringImpl **a2, WebKit::WebSWServerConnection *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData,WTF::URL>>(&v17, a2);
  if (v21 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F8208;
      v11[1] = v8;
      v11[2] = a1;
      v16 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebSWServerConnection::matchRegistration(a3, &v17, &v20, &v16);
      v12 = v16;
      v16 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v21 == 1)
  {
    v13 = v20;
    v20 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v6);
    }

    if (!v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v6);
      }

      v15 = v17;
      v17 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v6);
        }
      }
    }
  }
}

void IPC::handleMessageAsync<Messages::WebSWServerConnection::WhenRegistrationReady,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)>(atomic_ullong *a1, WTF::StringImpl **a2, WebKit::WebSWServerConnection *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData,WTF::URL>>(&v17, a2);
  if (v21 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F8230;
      v11[1] = v8;
      v11[2] = a1;
      v16 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebSWServerConnection::whenRegistrationReady(a3, &v17, &v20, &v16);
      v12 = v16;
      v16 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v21 == 1)
  {
    v13 = v20;
    v20 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v6);
    }

    if (!v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v6);
      }

      v15 = v17;
      v17 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v6);
        }
      }
    }
  }
}

void IPC::handleMessageAsync<Messages::WebSWServerConnection::GetRegistrations,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(atomic_ullong *a1, WTF::StringImpl **a2, WebKit::WebSWServerConnection *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData,WTF::URL>>(&v17, a2);
  if (v21 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F8258;
      v11[1] = v8;
      v11[2] = a1;
      v16 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebSWServerConnection::getRegistrations(a3, &v17, &v20, &v16);
      v12 = v16;
      v16 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v21 == 1)
  {
    v13 = v20;
    v20 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v6);
    }

    if (!v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v6);
      }

      v15 = v17;
      v17 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v6);
        }
      }
    }
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::TerminateWorkerFromClient,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F8280;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::terminateWorkerFromClient(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::WhenServiceWorkerIsTerminatedForTesting,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F82A8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::whenServiceWorkerIsTerminatedForTesting(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::StoreRegistrationsOnDisk,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = result;
    while (1)
    {
      v7 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v8 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v9 = WTF::fastMalloc(v7, 0x18);
    *v9 = &unk_1F10F82D0;
    v9[1] = v6;
    v9[2] = a1;
    v10 = v9;
    WebCore::SWServer::Connection::storeRegistrationsOnDisk();
    result = v10;
    if (v10)
    {
      return (*(*v10 + 8))(v10);
    }
  }

  return result;
}

WTF *IPC::handleMessageAsync<Messages::WebSWServerConnection::SubscribeToPushService,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, unint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && ((v8 = v6, IPC::VectorArgumentCoder<true,unsigned char,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, v25), (v26) || (v16 = *a2, v17 = a2[1], *a2 = 0, a2[1] = 0, (v18 = a2[3]) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v26)))
  {
    v22 = v25[0];
    v23 = v25[1];
    v24 = 1;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    v11 = v9;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
    v14 = WTF::fastMalloc(v12, 0x18);
    *v14 = &unk_1F10F82F8;
    v14[1] = v11;
    v14[2] = a1;
    v25[0] = v14;
    WebKit::WebSWServerConnection::subscribeToPushService(a3, v8, &v22, v25);
    result = v25[0];
    v25[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v24)
    {
LABEL_12:
      result = v22;
      if (v22)
      {
        v22 = 0;
        LODWORD(v23) = 0;
        return WTF::fastFree(result, v10);
      }
    }
  }

  else
  {
    v19 = *a2;
    v20 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      return (*(*result + 16))(result, v19);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::UnsubscribeFromPushService,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, WebKit::WebSWServerConnection *a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10))
  {
    v11 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v13)
    {
      v14 = result;
      while (1)
      {
        v15 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v16 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_15;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
      v19 = WTF::fastMalloc(v15, 0x18);
      *v19 = &unk_1F10F8320;
      v19[1] = v14;
      v19[2] = a1;
      v21 = v19;
      WebKit::WebSWServerConnection::unsubscribeFromPushService(a3, v8, v11, &v21);
      result = v21;
      v21 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v17 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v20 = *(*result + 16);

      return v20();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::GetPushSubscription,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, WebKit::WebSWServerConnection *a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F8348;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::getPushSubscription(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::GetPushPermissionState,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, WebKit::WebSWServerConnection *a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F8370;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::getPushPermissionState(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::EnableNavigationPreload,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F8398;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::enableNavigationPreload(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::DisableNavigationPreload,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F83C0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::disableNavigationPreload(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebSWServerConnection::SetNavigationPreloadHeaderValue,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F83E8;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::WebSWServerConnection::setNavigationPreloadHeaderValue(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::GetNavigationPreloadState,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::NavigationPreloadState,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F8410;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::getNavigationPreloadState(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::WebSWServerConnection::StartBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v152 = *MEMORY[0x1E69E9840];
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v6 & 1) == 0 || (v7 = v5, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v97), (v98 & 1) == 0) && ((v88 = *a2, v89 = a2[1], *a2 = 0, a2[1] = 0, (v90 = a2[3]) == 0) || !v89 || ((*(*v90 + 16))(v90, v88), (v98 & 1) == 0)))
  {
    LOBYTE(v105) = 0;
    v114 = 0;
    goto LABEL_90;
  }

  v9 = a2[1];
  v10 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *a2;
  v12 = v10 - *a2;
  v13 = v9 >= v12;
  v14 = v9 - v12;
  if (!v13 || v14 <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v94 = a2[3];
    if (v94)
    {
      if (v9)
      {
        (*(*v94 + 16))(v94);
        v11 = *a2;
        v9 = a2[1];
        goto LABEL_102;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
LABEL_102:
    *a2 = 0;
    a2[1] = 0;
    v95 = a2[3];
    if (v95 && v9)
    {
      (*(*v95 + 16))(v95, v11);
    }

    goto LABEL_81;
  }

  a2[2] = (v10 + 1);
  if (!v10)
  {
    goto LABEL_102;
  }

  v16 = *v10;
  v101[0] = 0;
  v101[1] = 0;
  if (v16 >= 0xC30)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::BackgroundFetchRequest>(&v105, a2);
      v60 = v151;
      if (v151 == 1)
      {
        if (HIDWORD(v101[1]) == LODWORD(v101[1]))
        {
          WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BackgroundFetchRequest>(v101, &v105);
        }

        else
        {
          v61 = v101[0] + 336 * HIDWORD(v101[1]);
          WTF::URL::URL(v61, &v105);
          WTF::URL::URL((v61 + 40), &v111);
          *(v61 + 10) = v115;
          v62 = v116;
          v116 = 0;
          *(v61 + 12) = 0;
          *(v61 + 13) = 0;
          *(v61 + 11) = v62;
          v63 = v117;
          v117 = 0;
          *(v61 + 12) = v63;
          LODWORD(v63) = v118;
          v118 = 0;
          *(v61 + 26) = v63;
          LODWORD(v63) = v119;
          v119 = 0;
          *(v61 + 27) = v63;
          *(v61 + 14) = 0;
          *(v61 + 15) = 0;
          v64 = v120;
          v120 = 0;
          *(v61 + 14) = v64;
          LODWORD(v64) = v121;
          v121 = 0;
          *(v61 + 30) = v64;
          LODWORD(v64) = v122;
          v122 = 0;
          *(v61 + 31) = v64;
          *(v61 + 16) = 0;
          *(v61 + 17) = 0;
          v65 = v123;
          v123 = 0;
          *(v61 + 16) = v65;
          LODWORD(v65) = v124;
          v124 = 0;
          *(v61 + 34) = v65;
          LODWORD(v65) = v125;
          v125 = 0;
          *(v61 + 35) = v65;
          LODWORD(v65) = v126;
          v61[148] = v127;
          *(v61 + 36) = v65;
          v66 = v128;
          v128 = 0;
          *(v61 + 19) = v66;
          v67 = v129;
          v129 = 0;
          *(v61 + 20) = v67;
          v68 = v130;
          v130 = 0;
          *(v61 + 21) = v68;
          v69 = v131;
          v61[184] = v132;
          *(v61 + 22) = v69;
          v70 = v133;
          v133 = 0;
          *(v61 + 24) = v70;
          LODWORD(v70) = v134[0];
          *(v61 + 211) = *(v134 + 3);
          *(v61 + 52) = v70;
          v71 = v135;
          v135 = 0;
          *(v61 + 27) = v71;
          *(&v8 + 1) = *(&v136 + 1);
          v72 = v137;
          *(v61 + 14) = v136;
          *(v61 + 15) = v72;
          v61[256] = v138;
          *(v61 + 33) = 0;
          *(v61 + 34) = 0;
          v73 = v139;
          v139 = 0;
          *(v61 + 33) = v73;
          LODWORD(v73) = v140;
          v140 = 0;
          *(v61 + 68) = v73;
          LODWORD(v73) = v141;
          v141 = 0;
          *(v61 + 69) = v73;
          *(v61 + 35) = 0;
          *(v61 + 36) = 0;
          v74 = v142;
          v142 = 0;
          *(v61 + 35) = v74;
          LODWORD(v74) = v143;
          v143 = 0;
          *(v61 + 72) = v74;
          LODWORD(v74) = v144;
          v144 = 0;
          *(v61 + 73) = v74;
          v75 = v145;
          v145 = 0;
          *(v61 + 38) = 0;
          *(v61 + 39) = 0;
          *(v61 + 37) = v75;
          v76 = v146;
          v146 = 0;
          *(v61 + 38) = v76;
          LODWORD(v76) = v147;
          v147 = 0;
          *(v61 + 78) = v76;
          LODWORD(v76) = v148;
          v148 = 0;
          *(v61 + 79) = v76;
          LODWORD(v76) = v149;
          v61[324] = v150;
          *(v61 + 80) = v76;
          ++HIDWORD(v101[1]);
        }
      }

      if (v151 == 1)
      {
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v146, v11);
        v78 = v145;
        v145 = 0;
        if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v78, v77);
        }

        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v142, v77);
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v139, v79);
        v81 = v135;
        v135 = 0;
        if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v81, v80);
        }

        WebCore::ResourceRequest::~ResourceRequest(&v105);
      }

      if ((v60 & 1) == 0)
      {
        goto LABEL_80;
      }

      if (!--v16)
      {
        LODWORD(v16) = v101[1];
        v41 = HIDWORD(v101[1]);
        v40 = v101[0];
        if (LODWORD(v101[1]) <= HIDWORD(v101[1]))
        {
          goto LABEL_29;
        }

        v82 = v101[0];
        if (HIDWORD(v101[1]))
        {
          if (HIDWORD(v101[1]) >= 0xC30C31)
          {
            __break(0xC471u);
            goto LABEL_112;
          }

          v82 = WTF::fastMalloc(0x150, (336 * HIDWORD(v101[1])));
          LODWORD(v16) = 336 * v41 / 0x150;
          if (v82 != v40)
          {
            v96 = v82;
            WTF::VectorMover<false,WebCore::BackgroundFetchRequest>::move(v40, v40 + 336 * v41, v82);
            v82 = v96;
          }
        }

        if (v40)
        {
          if (v82 == v40)
          {
            LODWORD(v16) = 0;
            v83 = 0;
          }

          else
          {
            v83 = v82;
          }

          WTF::fastFree(v40, v11);
          v40 = v83;
        }

        else
        {
          v40 = v82;
        }

        goto LABEL_29;
      }
    }
  }

  if (v16)
  {
    v17 = WTF::fastMalloc(v10, (336 * v16));
    LODWORD(v101[1]) = 336 * v16 / 0x150u;
    v101[0] = v17;
    while (1)
    {
      IPC::Decoder::decode<WebCore::BackgroundFetchRequest>(&v105, a2);
      v18 = v151;
      if (v151 == 1)
      {
        if (HIDWORD(v101[1]) == LODWORD(v101[1]))
        {
          WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BackgroundFetchRequest>(v101, &v105);
        }

        else
        {
          v19 = v101[0] + 336 * HIDWORD(v101[1]);
          WTF::URL::URL(v19, &v105);
          WTF::URL::URL((v19 + 40), &v111);
          *(v19 + 10) = v115;
          v20 = v116;
          v116 = 0;
          *(v19 + 12) = 0;
          *(v19 + 13) = 0;
          *(v19 + 11) = v20;
          v21 = v117;
          v117 = 0;
          *(v19 + 12) = v21;
          LODWORD(v21) = v118;
          v118 = 0;
          *(v19 + 26) = v21;
          LODWORD(v21) = v119;
          v119 = 0;
          *(v19 + 27) = v21;
          *(v19 + 14) = 0;
          *(v19 + 15) = 0;
          v22 = v120;
          v120 = 0;
          *(v19 + 14) = v22;
          LODWORD(v22) = v121;
          v121 = 0;
          *(v19 + 30) = v22;
          LODWORD(v22) = v122;
          v122 = 0;
          *(v19 + 31) = v22;
          *(v19 + 16) = 0;
          *(v19 + 17) = 0;
          v23 = v123;
          v123 = 0;
          *(v19 + 16) = v23;
          LODWORD(v23) = v124;
          v124 = 0;
          *(v19 + 34) = v23;
          LODWORD(v23) = v125;
          v125 = 0;
          *(v19 + 35) = v23;
          LODWORD(v23) = v126;
          v19[148] = v127;
          *(v19 + 36) = v23;
          v24 = v128;
          v128 = 0;
          *(v19 + 19) = v24;
          v25 = v129;
          v129 = 0;
          *(v19 + 20) = v25;
          v26 = v130;
          v130 = 0;
          *(v19 + 21) = v26;
          v27 = v131;
          v19[184] = v132;
          *(v19 + 22) = v27;
          v28 = v133;
          v133 = 0;
          *(v19 + 24) = v28;
          LODWORD(v28) = v134[0];
          *(v19 + 211) = *(v134 + 3);
          *(v19 + 52) = v28;
          v29 = v135;
          v135 = 0;
          *(v19 + 27) = v29;
          *(&v8 + 1) = *(&v136 + 1);
          v30 = v137;
          *(v19 + 14) = v136;
          *(v19 + 15) = v30;
          v19[256] = v138;
          *(v19 + 33) = 0;
          *(v19 + 34) = 0;
          v31 = v139;
          v139 = 0;
          *(v19 + 33) = v31;
          LODWORD(v31) = v140;
          v140 = 0;
          *(v19 + 68) = v31;
          LODWORD(v31) = v141;
          v141 = 0;
          *(v19 + 69) = v31;
          *(v19 + 35) = 0;
          *(v19 + 36) = 0;
          v32 = v142;
          v142 = 0;
          *(v19 + 35) = v32;
          LODWORD(v32) = v143;
          v143 = 0;
          *(v19 + 72) = v32;
          LODWORD(v32) = v144;
          v144 = 0;
          *(v19 + 73) = v32;
          v33 = v145;
          v145 = 0;
          *(v19 + 38) = 0;
          *(v19 + 39) = 0;
          *(v19 + 37) = v33;
          v34 = v146;
          v146 = 0;
          *(v19 + 38) = v34;
          LODWORD(v34) = v147;
          v147 = 0;
          *(v19 + 78) = v34;
          LODWORD(v34) = v148;
          v148 = 0;
          *(v19 + 79) = v34;
          LODWORD(v34) = v149;
          v19[324] = v150;
          *(v19 + 80) = v34;
          ++HIDWORD(v101[1]);
        }
      }

      if (v151 == 1)
      {
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v146, v11);
        v36 = v145;
        v145 = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v35);
        }

        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v142, v35);
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v139, v37);
        v39 = v135;
        v135 = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v38);
        }

        WebCore::ResourceRequest::~ResourceRequest(&v105);
      }

      if ((v18 & 1) == 0)
      {
        break;
      }

      if (!--v16)
      {
        v40 = v101[0];
        LODWORD(v16) = v101[1];
        v41 = HIDWORD(v101[1]);
        goto LABEL_29;
      }
    }

LABEL_80:
    WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v101, v11);
LABEL_81:
    v47 = *a2;
    v84 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v85 = a2[3];
    if (v85 && v84)
    {
      (*(*v85 + 16))(v85, v47);
    }

    v46 = 0;
    LOBYTE(v105) = 0;
    v114 = 0;
    goto LABEL_33;
  }

  v41 = 0;
  v40 = 0;
LABEL_29:
  *&v8 = 0;
  *v101 = v8;
  *&v99 = v40;
  *(&v99 + 1) = __PAIR64__(v41, v16);
  v100 = 1;
  WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v101, v11);
  IPC::ArgumentCoder<WebCore::BackgroundFetchOptions,void>::decode(a2, v101);
  if (v104 & 1) != 0 || (v42 = *a2, v86 = a2[1], *a2 = 0, a2[1] = 0, (v87 = a2[3]) != 0) && v86 && ((*(*v87 + 16))(v87, v42), (v104))
  {
    if ((v98 & 1) == 0)
    {
      goto LABEL_112;
    }

    v43 = v97;
    v97 = 0;
    v105 = v7;
    v106 = v43;
    v99 = 0u;
    v107 = v40;
    v108 = v16;
    v109 = v41;
    v44 = v101[0];
    v45 = v101[1];
    *v101 = 0u;
    v110 = v44;
    v111 = v45;
    v112 = v102;
    v113 = v103;
    v46 = 1;
    v114 = 1;
    v102 = 0;
    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v101, v42);
  }

  else
  {
    v46 = 0;
    LOBYTE(v105) = 0;
    v114 = 0;
  }

  WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v99, v42);
LABEL_33:
  if ((v98 & 1) == 0 || (v48 = v97, v97 = 0, !v48) || atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if ((v46 & 1) == 0)
    {
      goto LABEL_90;
    }

LABEL_37:
    v49 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v50 & 1) == 0)
    {
      goto LABEL_46;
    }

    v51 = v49;
    while (1)
    {
      v52 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v53 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v53, v52 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v53 == v52)
      {
        goto LABEL_43;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_43:
    v54 = WTF::fastMalloc(v52, 0x18);
    *v54 = &unk_1F10F8438;
    v54[1] = v51;
    v54[2] = a1;
    v101[0] = v54;
    if (v114)
    {
      WebCore::SWServer::Connection::startBackgroundFetch();
      v55 = v101[0];
      v101[0] = 0;
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }

      goto LABEL_46;
    }

LABEL_112:
    __break(1u);
    return;
  }

  WTF::StringImpl::destroy(v48, v47);
  if (v46)
  {
    goto LABEL_37;
  }

LABEL_90:
  v50 = *a2;
  v91 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v92 = a2[3];
  if (v92)
  {
    v93 = v91 == 0;
  }

  else
  {
    v93 = 1;
  }

  if (!v93)
  {
    (*(*v92 + 16))(v92, v50);
    if (v114)
    {
      goto LABEL_37;
    }
  }

LABEL_46:
  if (v114 == 1)
  {
    v56 = v112;
    v112 = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v50);
    }

    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v110, v50);
    WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v57);
    v59 = v106;
    v106 = 0;
    if (v59)
    {
      if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v59, v58);
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebSWServerConnection::BackgroundFetchInformation,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v13, a2);
  if (v15 == 1)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = v6;
    while (1)
    {
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v10 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v11 = WTF::fastMalloc(v9, 0x18);
    *v11 = &unk_1F10F8460;
    v11[1] = v8;
    v11[2] = a1;
    v12 = v11;
    WebCore::SWServer::Connection::backgroundFetchInformation();
    result = v12;
    if (v12)
    {
      result = (*(*v12 + 8))(v12);
    }

    if (v15)
    {
LABEL_11:
      result = v14;
      v14 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::BackgroundFetchIdentifiers,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v6)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F8488;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebCore::SWServer::Connection::backgroundFetchIdentifiers();
      result = v12;
      if (v12)
      {
        return (*(*v12 + 8))(v12);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebSWServerConnection::AbortBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v13, a2);
  if (v15 == 1)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = v6;
    while (1)
    {
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v10 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v11 = WTF::fastMalloc(v9, 0x18);
    *v11 = &unk_1F10F84B0;
    v11[1] = v8;
    v11[2] = a1;
    v12 = v11;
    WebCore::SWServer::Connection::abortBackgroundFetch();
    result = v12;
    if (v12)
    {
      result = (*(*v12 + 8))(v12);
    }

    if (v15)
    {
LABEL_11:
      result = v14;
      v14 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebSWServerConnection::MatchBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WebCore::RetrieveRecordsOptions &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_35;
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v3, &v61);
  if (v62 & 1) != 0 || (v32 = *v3, v33 = v3[1], *v3 = 0, v3[1] = 0, (v34 = v3[3]) != 0) && v33 && ((*(*v34 + 16))(v34, v32), (v62))
  {
    IPC::ArgumentCoder<WebCore::RetrieveRecordsOptions,void>::decode(v3, &v63);
    if (v87 & 1) != 0 || (v6 = *v3, v30 = v3[1], *v3 = 0, v3[1] = 0, (v31 = v3[3]) != 0) && v30 && ((*(*v31 + 16))(v31, v6), (v87))
    {
      if ((v62 & 1) == 0)
      {
        goto LABEL_34;
      }

      v7 = v61;
      v61 = 0;
      v35 = v7;
      v8 = v63;
      v9 = v66;
      v63 = 0;
      v36 = v8;
      v37 = v64;
      v38 = v65;
      LODWORD(v64) = v64 & 0xFFFFFFFE;
      v66 = 0;
      v39 = v9;
      v40 = v67;
      v41 = v68;
      LODWORD(v67) = v67 & 0xFFFFFFFE;
      v10 = v71;
      v42 = v69;
      v11 = v70;
      v70 = 0u;
      v43 = v11;
      v71 = 0;
      v44 = v10;
      v12 = v72;
      v72 = 0;
      v45 = v12;
      v13 = v73;
      v73 = 0;
      v46 = v13;
      v14 = v74;
      v74 = 0;
      v47 = v14;
      v15 = v75;
      v75 = 0;
      v48 = v15;
      v50 = v77;
      v49 = v76;
      v16 = v78;
      v78 = 0u;
      v51 = v16;
      v54 = v81;
      v52 = v79;
      v53 = v80;
      v17 = v82;
      v79 = 0;
      v82 = 0;
      v55 = v17;
      v56 = v83;
      *v57 = v84;
      v58 = v85;
      v59 = v86;
      v60 = 1;
      if (v87)
      {
        v84 = 0uLL;
        v85 = 0;
        WebCore::ResourceRequest::~ResourceRequest(&v63);
      }
    }

    else
    {
      v60 = 0;
    }

    if (v62)
    {
      v18 = v61;
      v61 = 0;
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v6);
        }
      }
    }
  }

  else
  {
    v60 = 0;
  }

  if ((v60 & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
    if ((v20 & 1) == 0)
    {
      break;
    }

    v3 = result;
    while (1)
    {
      v21 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v22 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v22 == v21)
      {
        goto LABEL_18;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_18:
    v23 = WTF::fastMalloc(v21, 0x18);
    *v23 = &unk_1F10F84D8;
    v23[1] = v3;
    v23[2] = a1;
    v63 = v23;
    if (v60)
    {
      WebCore::SWServer::Connection::matchBackgroundFetch();
      result = v63;
      v63 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    v60 = 0;
LABEL_36:
    v20 = *v3;
    v28 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    result = v3[3];
    if (result)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      result = (*(*result + 16))(result, v20);
      if (v60)
      {
        continue;
      }
    }

    break;
  }

  if (v60 == 1)
  {
    v24 = v58;
    v58 = 0;
    if (v24)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v24, v20);
    }

    v25 = v57[1];
    v57[1] = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v20);
    }

    v26 = v57[0];
    v57[0] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v20);
    }

    WebCore::ResourceRequest::~ResourceRequest(&v36);
    result = v35;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v35, v27);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::RetrieveRecordResponse,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F8500;
      v11[1] = v8;
      v11[2] = a1;
      v15 = v11;
      WebCore::SWServer::Connection::retrieveRecordResponse();
      result = v15;
      if (v15)
      {
        return (*(*v15 + 8))(v15);
      }
    }
  }

  else
  {
    v12 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = *(*result + 16);

      return v14();
    }
  }

  return result;
}
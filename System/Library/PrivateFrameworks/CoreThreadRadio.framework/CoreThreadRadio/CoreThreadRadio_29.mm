uint64_t ot::Message::Read<ot::Tlv>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::Tlv>(a1, a2, a3);
}

uint64_t ot::Tlv::GetType(ot::Tlv *this)
{
  return *this;
}

{
  return ot::Tlv::GetType(this);
}

uint64_t ot::Message::Read<ot::ExtendedTlv>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::ExtendedTlv>(a1, a2, a3);
}

uint64_t ot::Tlv::ReadStringTlv(ot::Tlv *this, const ot::Message *a2, unsigned __int8 a3, char *a4, char *a5)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  v9 = ot::Tlv::ParsedInfo::ParseFrom(v7, this, a2);
  if (!v9)
  {
    ot::OffsetRange::ShrinkLength(v8, v11);
    ot::Message::ReadBytes(v13, v8, v10);
    v6 = v10;
    v6[ot::OffsetRange::GetLength(v8)] = 0;
  }

  return v9;
}

uint64_t ot::Tlv::FindStringTlv(ot::Tlv *this, const ot::Message *a2, unsigned __int8 a3, uint64_t a4, char *a5)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  *v12 = a4;
  v11 = 0;
  v11 = ot::Tlv::ParsedInfo::FindIn(v9, this, a2);
  if (!v11)
  {
    v8 = v15;
    Offset = ot::OffsetRange::GetOffset(&v10);
    return ot::Tlv::ReadStringTlv(v8, Offset, v13, *v12, v6);
  }

  return v11;
}

uint64_t ot::Tlv::FindTlv(ot::Tlv *this, const ot::Message *a2, void *a3, ot::OffsetRange *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(this, a2, &v5, a4);
  if (!TlvValueOffsetRange)
  {
    return ot::Message::Read(v10, &v5, v8, v7);
  }

  return TlvValueOffsetRange;
}

uint64_t ot::Tlv::AppendStringTlv(ot::Tlv *this, ot::Message *a2, unsigned __int8 a3, ot *a4, const char *a5)
{
  v8 = a2;
  if (a4)
  {
    v6 = ot::StringLength(a4, a3);
  }

  else
  {
    v6 = 0;
  }

  return ot::Tlv::AppendTlv(this, v8, a4, v6);
}

uint64_t ot::Message::Append<ot::Tlv>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::Tlv>(a1, a2);
}

ot::Tlv *ot::Tlv::FindTlv(ot::Tlv *this, const void *a2, unsigned __int8 a3)
{
  v7 = (this + a2);
  for (i = this; i < v7; i = ot::Tlv::GetNext(i))
  {
    if ((i + 2) > v7)
    {
      return 0;
    }

    if (ot::Tlv::IsExtended(i))
    {
      ot::As<ot::ExtendedTlv>();
      v6 = v3 + 4;
      ot::As<ot::ExtendedTlv>();
      if (v6 > v4)
      {
        return 0;
      }
    }

    if (ot::Tlv::GetNext(i) > v7)
    {
      return 0;
    }

    if (ot::Tlv::GetType(i) == a3)
    {
      return i;
    }
  }

  return 0;
}

uint64_t ot::Tlv::GetNext(ot::Tlv *this)
{
  return this + ot::Tlv::GetSize(this);
}

{
  return ot::Tlv::GetNext(this);
}

ot::TrickleTimer *ot::TrickleTimer::TrickleTimer(ot::TrickleTimer *this, ot::Instance *a2, void (*a3)(ot::TrickleTimer *))
{
  ot::TimerMilli::TimerMilli(this, a2, ot::TrickleTimer::HandleTimer);
  result = this;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 6) = a3;
  *(this + 56) = 0;
  *(this + 57) = 0;
  return result;
}

{
  ot::TrickleTimer::TrickleTimer(this, a2, a3);
  return this;
}

uint64_t ot::TrickleTimer::GetStartTimeOfCurrentInterval(ot::TrickleTimer *this)
{
  FireTime = ot::Timer::GetFireTime(this);
  if (*(this + 56) == 1)
  {
LABEL_6:
    ot::Time::operator-=(&FireTime, *(this + 8));
    return FireTime;
  }

  if (*(this + 57))
  {
    if (*(this + 57) != 1)
    {
      return FireTime;
    }

    goto LABEL_6;
  }

  ot::Time::operator-=(&FireTime, *(this + 9));
  return FireTime;
}

_DWORD *ot::Time::operator-=(_DWORD *result, int a2)
{
  *result -= a2;
  return result;
}

{
  return ot::Time::operator-=(result, a2);
}

uint64_t ot::TrickleTimer::SetIntervalMin(ot::TrickleTimer *this, int a2)
{
  result = ot::TrickleTimer::IsRunning(this);
  if (result)
  {
    *(this + 6) = a2;
    if (*(this + 7) < *(this + 6))
    {
      return ot::TrickleTimer::SetIntervalMax(this, *(this + 6));
    }
  }

  return result;
}

BOOL ot::TrickleTimer::IsRunning(ot::TrickleTimer *this)
{
  return ot::Timer::IsRunning(this);
}

{
  return ot::TrickleTimer::IsRunning(this);
}

uint64_t ot::TrickleTimer::SetIntervalMax(ot::TrickleTimer *this, unsigned int a2)
{
  v7 = this;
  v6 = a2;
  result = ot::TrickleTimer::IsRunning(this);
  if (result)
  {
    result = ot::Max<unsigned int>(*(this + 6), v6);
    v6 = result;
    if (result != *(this + 7))
    {
      *(this + 7) = v6;
      if (*(this + 7) < *(this + 8))
      {
        v4[0] = ot::TrickleTimer::GetStartTimeOfCurrentInterval(this);
        result = ot::Time::operator+(v4, *(this + 7));
        v4[1] = result;
        v5 = result;
        if (*(this + 56) == 1)
        {
          return ot::TimerMilli::FireAt(this, v5);
        }

        *(this + 8) = v6;
        if (*(this + 57))
        {
          if (*(this + 57) != 1)
          {
            return result;
          }

          return ot::TimerMilli::FireAt(this, v5);
        }

        if (v6 < *(this + 9))
        {
          *(this + 9) = v6;
          return ot::TimerMilli::FireAt(this, v5);
        }
      }
    }
  }

  return result;
}

uint64_t ot::TrickleTimer::Start(uint64_t a1, char a2, unsigned int a3, unsigned int a4, __int16 a5)
{
  v9 = 0;
  if (a4 >= a3)
  {
    v9 = a3 != 0;
  }

  if (!v9)
  {
    __assert_rtn("Start", "trickle_timer.cpp", 211, "(aIntervalMax >= aIntervalMin) && (aIntervalMin > 0)");
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 40) = a5;
  *(a1 + 56) = a2;
  *(a1 + 32) = ot::Random::NonCrypto::GetUint32InRange(*(a1 + 24), *(a1 + 28) + 1);
  return ot::TrickleTimer::StartNewInterval(a1, v5, v6);
}

uint64_t ot::TrickleTimer::StartNewInterval(ot::TrickleTimer *this, uint64_t a2, unsigned int a3)
{
  if (*(this + 56))
  {
    if (*(this + 56) == 1)
    {
      *(this + 9) = *(this + 8);
    }
  }

  else
  {
    if (*(this + 8) / 2u >= *(this + 8))
    {
      Uint32InRange = *(this + 8) / 2u;
    }

    else
    {
      Uint32InRange = ot::Random::NonCrypto::GetUint32InRange((*(this + 8) / 2u), *(this + 8));
    }

    *(this + 9) = Uint32InRange;
    *(this + 21) = 0;
    *(this + 57) = 0;
  }

  return ot::TimerMilli::Start(this, *(this + 9));
}

uint64_t ot::TrickleTimer::IndicateConsistent(uint64_t this)
{
  if (*(this + 42) != 0xFFFF)
  {
    ++*(this + 42);
  }

  return this;
}

uint64_t ot::TrickleTimer::IndicateInconsistent(uint64_t this)
{
  v3 = this;
  if (!*(this + 56))
  {
    this = ot::TrickleTimer::IsRunning(this);
    if ((this & 1) != 0 && *(v3 + 8) != *(v3 + 6))
    {
      *(v3 + 8) = *(v3 + 6);
      return ot::TrickleTimer::StartNewInterval(v3, v1, v2);
    }
  }

  return this;
}

uint64_t ot::TrickleTimer::HandleTimer(ot::TrickleTimer *this, uint64_t a2, unsigned int a3)
{
  if (*(this + 56))
  {
    if (*(this + 56) == 1)
    {
      *(this + 8) = ot::Random::NonCrypto::GetUint32InRange(*(this + 6), *(this + 7) + 1);
      ot::TrickleTimer::StartNewInterval(this, v3, v4);
    }

    return (*(this + 6))();
  }

  if (!*(this + 57))
  {
    *(this + 57) = 1;
    result = ot::TimerMilli::Start(this, *(this + 8) - *(this + 9));
    if (*(this + 21) >= *(this + 20))
    {
      return result;
    }

    return (*(this + 6))();
  }

  if (*(this + 57) != 1)
  {
    return (*(this + 6))();
  }

  if (*(this + 8))
  {
    if (*(this + 8) > (*(this + 7) - *(this + 8)))
    {
      *(this + 8) = *(this + 7);
    }

    else
    {
      *(this + 8) *= 2;
    }
  }

  else
  {
    *(this + 8) = 1;
  }

  return ot::TrickleTimer::StartNewInterval(this, a2, a3);
}

uint64_t ot::Crypto::AesCcm::SetKey(ot::Crypto::AesCcm *this, const unsigned __int8 *a2, __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::Crypto::Key::Set(v5, a2, a3);
  return ot::Crypto::AesCcm::SetKey(this, v5);
}

uint64_t ot::Crypto::AesCcm::SetKey(ot::Crypto::AesCcm *this, const ot::Crypto::Key *a2)
{
  return ot::Crypto::AesEcb::SetKey(this, a2);
}

{
  return ot::Crypto::AesCcm::SetKey(this, a2);
}

uint64_t ot::Crypto::AesCcm::SetKey(ot::Crypto::AesCcm *this, const ot::Mac::KeyMaterial *a2)
{
  v6 = this;
  v5 = a2;
  ot::Mac::KeyMaterial::ConvertToCryptoKey(a2, v4);
  return ot::Crypto::AesCcm::SetKey(this, v4);
}

void ot::Crypto::AesCcm::Init(ot::Crypto::AesCcm *this, unsigned int a2, unsigned int a3, unsigned __int8 a4, const void *a5, unsigned __int8 a6)
{
  v17 = a6;
  v14 = 0;
  v9 = 0;
  if ((a4 & 1) == 0)
  {
    v9 = 0;
    if (a4 >= 4u)
    {
      v9 = a4 <= 0x10u;
    }
  }

  if (!v9)
  {
    __assert_rtn("Init", "aes_ccm.cpp", 72, "((aTagLength & 0x1) == 0) && (kMinTagLength <= aTagLength) && (aTagLength <= kMaxTagLength)");
  }

  v11 = 0;
  for (i = a3; i; i >>= 8)
  {
    ++v11;
  }

  if (v11 <= 1u)
  {
    v11 = 2;
  }

  if (a6 > 0xDu)
  {
    v17 = 13;
  }

  if (v11 < 15 - v17)
  {
    v11 = 15 - v17;
  }

  if (v17 > 15 - v11)
  {
    v17 = 15 - v11;
  }

  *(this + 304) = (8 * ((a4 - 2) >> 1)) | ((a2 != 0) << 6) | (v11 - 1);
  memcpy(this + 305, a5, v17);
  v13 = a3;
  for (j = 15; j > v17; --j)
  {
    *(this + j + 304) = v13;
    v13 >>= 8;
  }

  ot::Crypto::AesEcb::Encrypt(this, this + 304, this + 304);
  if (a2)
  {
    if (a2 >= 0xFF00)
    {
      *(this + 304) = ~*(this + 304);
      *(this + 305) ^= 0xFEu;
      *(this + 306) ^= HIBYTE(a2);
      v14 = 4;
      *(this + 307) ^= BYTE2(a2);
    }

    v6 = v14;
    v15 = v14 + 1;
    *(this + v6 + 304) ^= BYTE1(a2);
    v7 = v15;
    v14 = v15 + 1;
    *(this + v7 + 304) ^= a2;
  }

  *(this + 320) = v11 - 1;
  memcpy(this + 321, a5, v17);
  bzero(this + v17 + 321, 15 - v17);
  *(this + 372) = v17;
  *(this + 88) = a2;
  *(this + 89) = 0;
  *(this + 90) = a3;
  *(this + 91) = 0;
  *(this + 184) = v14;
  *(this + 185) = 16;
  *(this + 373) = a4;
}

ot::Crypto::AesEcb *ot::Crypto::AesCcm::Header(ot::Crypto::AesEcb *this, _BYTE *a2, unsigned int a3)
{
  v5 = this;
  if (*(this + 89) + a3 > *(this + 88))
  {
    __assert_rtn("Header", "aes_ccm.cpp", 163, "mHeaderCur + aHeaderLength <= mHeaderLength");
  }

  for (i = 0; i < a3; ++i)
  {
    if (*(v5 + 184) == 16)
    {
      this = ot::Crypto::AesEcb::Encrypt(v5, v5 + 304, v5 + 304);
      *(v5 + 184) = 0;
    }

    v3 = a2[i];
    v4 = (*(v5 + 184))++;
    *(v5 + v4 + 304) ^= v3;
  }

  *(v5 + 89) += a3;
  if (*(v5 + 89) == *(v5 + 88))
  {
    if (*(v5 + 184))
    {
      this = ot::Crypto::AesEcb::Encrypt(v5, v5 + 304, v5 + 304);
    }

    *(v5 + 184) = 0;
  }

  return this;
}

void ot::Crypto::AesCcm::Payload(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  if (*(a1 + 364) + a4 > *(a1 + 360))
  {
    __assert_rtn("Payload", "aes_ccm.cpp", 197, "mPlainTextCur + aLength <= mPlainTextLength");
  }

  for (i = 0; i < a4; ++i)
  {
    if (*(a1 + 370) == 16)
    {
      for (j = 15; j > *(a1 + 372); --j)
      {
        v5 = (a1 + 320 + j);
        v6 = *v5 + 1;
        *v5 = v6;
        if (v6)
        {
          break;
        }
      }

      ot::Crypto::AesEcb::Encrypt(a1, (a1 + 320), (a1 + 336));
      *(a1 + 370) = 0;
    }

    if (a5)
    {
      v8 = *(a3 + i);
      v9 = (*(a1 + 370))++;
      v14 = v8 ^ *(a1 + 336 + v9);
      *(a2 + i) = v14;
    }

    else
    {
      v14 = *(a2 + i);
      v7 = (*(a1 + 370))++;
      *(a3 + i) = v14 ^ *(a1 + 336 + v7);
    }

    if (*(a1 + 368) == 16)
    {
      ot::Crypto::AesEcb::Encrypt(a1, (a1 + 304), (a1 + 304));
      *(a1 + 368) = 0;
    }

    v10 = (*(a1 + 368))++;
    *(a1 + 304 + v10) ^= v14;
  }

  *(a1 + 364) += a4;
  if (*(a1 + 364) >= *(a1 + 360))
  {
    if (*(a1 + 368))
    {
      ot::Crypto::AesEcb::Encrypt(a1, (a1 + 304), (a1 + 304));
    }

    bzero((a1 + 320 + *(a1 + 372) + 1), 15 - *(a1 + 372));
  }
}

uint64_t ot::Crypto::AesCcm::Payload(uint64_t a1, ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4, char a5)
{
  v16 = a1;
  v15 = a2;
  v14[1] = a3;
  v14[0] = a4;
  v13 = a5;
  ot::Message::GetFirstChunk(a2, a3, v14, v12);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v12);
    if (result <= 0)
    {
      break;
    }

    ot::Message::MutableChunk::GetBytes(v12);
    v9 = v6;
    ot::Message::MutableChunk::GetBytes(v12);
    v10 = v7;
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v12);
    ot::Crypto::AesCcm::Payload(a1, v9, v10, Length, v13);
    ot::Message::GetNextChunk(v15, v14, v12);
  }

  return result;
}

uint64_t ot::Crypto::AesCcm::Finalize(ot::Crypto::AesCcm *this, _BYTE *a2)
{
  if (*(this + 91) != *(this + 90))
  {
    __assert_rtn("Finalize", "aes_ccm.cpp", 268, "mPlainTextCur == mPlainTextLength");
  }

  result = ot::Crypto::AesEcb::Encrypt(this, this + 320, this + 336);
  for (i = 0; i < *(this + 373); ++i)
  {
    a2[i] = *(this + i + 304) ^ *(this + i + 336);
  }

  return result;
}

uint64_t ot::Crypto::AesCcm::GenerateNonce(ot::Crypto::AesCcm *this, const ot::Mac::ExtAddress *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5)
{
  v7 = a3;
  *a4 = *this;
  v6 = a4 + 1;
  result = ot::BigEndian::WriteUint32(a2, a4 + 8, a3);
  *(v6 + 4) = v7;
  return result;
}

ot::Crypto::AesEcb *ot::Crypto::AesEcb::AesEcb(ot::Crypto::AesEcb *this)
{
  *this = this + 16;
  *(this + 4) = 288;
  if (j__otPlatCryptoAesInit(this))
  {
    __assert_rtn("AesEcb", "aes_ecb.cpp", 45, "false");
  }

  return this;
}

{
  ot::Crypto::AesEcb::AesEcb(this);
  return this;
}

uint64_t ot::Crypto::AesEcb::SetKey(ot::Crypto::AesEcb *this, const ot::Crypto::Key *a2)
{
  result = j__otPlatCryptoAesSetKey(this, a2);
  if (result)
  {
    __assert_rtn("SetKey", "aes_ecb.cpp", 48, "false");
  }

  return result;
}

uint64_t ot::Crypto::AesEcb::Encrypt(ot::Crypto::AesEcb *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = j__otPlatCryptoAesEncrypt(this, a2, a3);
  if (result)
  {
    __assert_rtn("Encrypt", "aes_ecb.cpp", 52, "false");
  }

  return result;
}

void ot::Crypto::AesEcb::~AesEcb(ot::Crypto::AesEcb *this)
{
  if (j__otPlatCryptoAesFree(this))
  {
    __assert_rtn("~AesEcb", "aes_ecb.cpp", 55, "false");
  }
}

{
  ot::Crypto::AesEcb::~AesEcb(this);
}

ot::Crypto::HmacSha256 *ot::Crypto::HmacSha256::HmacSha256(ot::Crypto::HmacSha256 *this)
{
  *this = this + 16;
  *(this + 4) = 24;
  if (j__otPlatCryptoHmacSha256Init(this))
  {
    __assert_rtn("HmacSha256", "hmac_sha256.cpp", 47, "false");
  }

  return this;
}

{
  ot::Crypto::HmacSha256::HmacSha256(this);
  return this;
}

void ot::Crypto::HmacSha256::~HmacSha256(ot::Crypto::HmacSha256 *this)
{
  if (j__otPlatCryptoHmacSha256Deinit(this))
  {
    __assert_rtn("~HmacSha256", "hmac_sha256.cpp", 50, "false");
  }
}

{
  ot::Crypto::HmacSha256::~HmacSha256(this);
}

uint64_t ot::Crypto::HmacSha256::Start(ot::Crypto::HmacSha256 *this, const ot::Crypto::Key *a2)
{
  result = j__otPlatCryptoHmacSha256Start(this, a2);
  if (result)
  {
    __assert_rtn("Start", "hmac_sha256.cpp", 52, "false");
  }

  return result;
}

uint64_t ot::Crypto::HmacSha256::Update(ot::Crypto::HmacSha256 *this, uint64_t a2, unsigned __int16 a3)
{
  result = j__otPlatCryptoHmacSha256Update(this, a2, a3);
  if (result)
  {
    __assert_rtn("Update", "hmac_sha256.cpp", 56, "false");
  }

  return result;
}

uint64_t ot::Crypto::HmacSha256::Finish(ot::Crypto::HmacSha256 *this, ot::Crypto::Sha256::Hash *a2)
{
  result = j__otPlatCryptoHmacSha256Finish(this, a2);
  if (result)
  {
    __assert_rtn("Finish", "hmac_sha256.cpp", 61, "false");
  }

  return result;
}

uint64_t ot::Crypto::HmacSha256::Update(ot::Crypto::HmacSha256 *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v11 = this;
  v10 = a2;
  v9[1] = a3;
  v9[0] = a4;
  ot::Message::GetFirstChunk(a2, a3, v9, v8);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
    if (result <= 0)
    {
      break;
    }

    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v8);
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
    ot::Crypto::HmacSha256::Update(this, Bytes, Length);
    ot::Message::GetNextChunk(v10, v9, v8);
  }

  return result;
}

ot::Crypto::MbedTls *ot::Crypto::MbedTls::MbedTls(ot::Crypto::MbedTls *this)
{
  mbedtls_platform_set_calloc_free(ot::Heap::CAlloc, ot::Heap::Free);
  return this;
}

{
  ot::Crypto::MbedTls::MbedTls(this);
  return this;
}

uint64_t ot::Crypto::MbedTls::MapError(ot::Crypto::MbedTls *this)
{
  switch(this)
  {
    case 0xFFFF8100:
      return 3;
    case 0xFFFF8F00:
      return 7;
    case 0xFFFF9700:
      return 5;
    case 0xFFFF9780:
      return 3;
    case 0xFFFF9800:
      return 5;
    case 0xFFFFFFC0:
      return 8;
    case 0xFFFFFFC2:
      return 3;
    case 0xFFFFFFC4:
    case 0xFFFFFFC3:
      return 8;
    case 0xFFFFFFC8:
    case 0xFFFFFFCA:
      return 7;
    case 0xFFFFFFCC:
    case 0xFFFFFFE2:
    case 0xFFFFFFE4:
      return 8;
  }

  return this < 0;
}

uint64_t ot::Crypto::MbedTls::CryptoSecurePrng(ot::Crypto::MbedTls *this, ot::Random::Crypto *a2, unsigned __int8 *a3)
{
  ot::Random::Crypto::FillBuffer(a2, a3, a3);
  IgnoreError();
  return 0;
}

ot::Crypto::Sha256 *ot::Crypto::Sha256::Sha256(ot::Crypto::Sha256 *this)
{
  *this = this + 16;
  *(this + 4) = 104;
  if (j__otPlatCryptoSha256Init(this))
  {
    __assert_rtn("Sha256", "sha256.cpp", 47, "false");
  }

  return this;
}

{
  ot::Crypto::Sha256::Sha256(this);
  return this;
}

void ot::Crypto::Sha256::~Sha256(ot::Crypto::Sha256 *this)
{
  if (j__otPlatCryptoSha256Deinit(this))
  {
    __assert_rtn("~Sha256", "sha256.cpp", 50, "false");
  }
}

{
  ot::Crypto::Sha256::~Sha256(this);
}

uint64_t ot::Crypto::Sha256::Start(ot::Crypto::Sha256 *this)
{
  result = j__otPlatCryptoSha256Start(this);
  if (result)
  {
    __assert_rtn("Start", "sha256.cpp", 52, "false");
  }

  return result;
}

uint64_t ot::Crypto::Sha256::Update(ot::Crypto::Sha256 *this, uint64_t a2, unsigned __int16 a3)
{
  result = j__otPlatCryptoSha256Update(this, a2, a3);
  if (result)
  {
    __assert_rtn("Update", "sha256.cpp", 56, "false");
  }

  return result;
}

uint64_t ot::Crypto::Sha256::Update(ot::Crypto::Sha256 *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v11 = this;
  v10 = a2;
  v9[1] = a3;
  v9[0] = a4;
  ot::Message::GetFirstChunk(a2, a3, v9, v8);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
    if (result <= 0)
    {
      break;
    }

    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v8);
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
    ot::Crypto::Sha256::Update(this, Bytes, Length);
    ot::Message::GetNextChunk(v10, v9, v8);
  }

  return result;
}

uint64_t ot::Crypto::Sha256::Finish(ot::Crypto::Sha256 *this, ot::Crypto::Sha256::Hash *a2)
{
  result = j__otPlatCryptoSha256Finish(this, a2);
  if (result)
  {
    __assert_rtn("Finish", "sha256.cpp", 72, "false");
  }

  return result;
}

uint64_t ot::FactoryDiags::Diags::ProcessChannel(ot::FactoryDiags::Diags *this, char a2, ot::FactoryDiags::Diags **a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  if (otPlatDiagModeGet())
  {
    if (v10)
    {
      *v7 = 0;
      v8 = ot::FactoryDiags::Diags::ParseLong(*v9, v7, v3);
      if (!v8)
      {
        if (*v7 >= 11 && *v7 <= 25)
        {
          *(this + 32) = v7[0];
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
          ot::Radio::Receive(v4, *(this + 32));
          IgnoreError();
          otPlatDiagChannelSet(*(this + 32));
          ot::FactoryDiags::Diags::Output(this, "set channel to %d\r\nstatus 0x%02x\r\n", *(this + 32), v8);
        }

        else
        {
          v8 = 7;
        }
      }
    }

    else
    {
      ot::FactoryDiags::Diags::Output(this, "channel: %d\r\n", *(this + 32));
    }
  }

  else
  {
    v8 = 13;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, v8);
  return v8;
}

uint64_t ot::FactoryDiags::Diags::ProcessPower(ot::FactoryDiags::Diags *this, char a2, ot::FactoryDiags::Diags **a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  if (otPlatDiagModeGet())
  {
    if (v10)
    {
      *v7 = 0;
      v8 = ot::FactoryDiags::Diags::ParseLong(*v9, v7, v3);
      if (!v8)
      {
        *(this + 33) = v7[0];
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
        v8 = ot::Radio::SetTransmitPower(v4, *(this + 33));
        if (!v8)
        {
          otPlatDiagTxPowerSet(*(this + 33));
          ot::FactoryDiags::Diags::Output(this, "set tx power to %d dBm\r\nstatus 0x%02x\r\n", *(this + 33), v8);
        }
      }
    }

    else
    {
      ot::FactoryDiags::Diags::Output(this, "tx power: %d dBm\r\n", *(this + 33));
    }
  }

  else
  {
    v8 = 13;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, v8);
  return v8;
}

uint64_t ot::FactoryDiags::Diags::ProcessRadio(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v10 = 7;
  if (otPlatDiagModeGet())
  {
    if (a2)
    {
      if (!strcmp(*a3, "sleep"))
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
        v10 = ot::Radio::Sleep(v3);
        if (!v10)
        {
          ot::FactoryDiags::Diags::Output(this, "set radio from receive to sleep \r\nstatus 0x%02x\r\n", 0);
        }
      }

      else if (!strcmp(*a3, "receive"))
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
        v10 = ot::Radio::Receive(v4, *(this + 32));
        if (!v10)
        {
          v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
          v10 = ot::Radio::SetTransmitPower(v5, *(this + 33));
          if (!v10)
          {
            otPlatDiagChannelSet(*(this + 32));
            otPlatDiagTxPowerSet(*(this + 33));
            ot::FactoryDiags::Diags::Output(this, "set radio from sleep to receive on channel %d\r\nstatus 0x%02x\r\n", *(this + 32), 0);
          }
        }
      }

      else if (!strcmp(*a3, "state"))
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
        State = ot::Radio::GetState(v6);
        v10 = 0;
        if (State)
        {
          switch(State)
          {
            case 1:
              ot::FactoryDiags::Diags::Output(this, "sleep\r\n");
              break;
            case 2:
              ot::FactoryDiags::Diags::Output(this, "receive\r\n");
              break;
            case 3:
              ot::FactoryDiags::Diags::Output(this, "transmit\r\n");
              break;
            default:
              ot::FactoryDiags::Diags::Output(this, "invalid\r\n");
              break;
          }
        }

        else
        {
          ot::FactoryDiags::Diags::Output(this, "disabled\r\n");
        }
      }

      ot::FactoryDiags::Diags::AppendErrorResult(this, v10);
    }

    else
    {
      v10 = 7;
      ot::FactoryDiags::Diags::AppendErrorResult(this, 7);
    }
  }

  else
  {
    v10 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  return v10;
}

uint64_t ot::FactoryDiags::Diags::ProcessLinkRaw(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v8 = 0;
  if (a2)
  {
    if (!strcmp(*a3, "start"))
    {
      Instance = ot::InstanceLocator::GetInstance(this);
      v8 = otPlatRadioEnable(Instance);
      if (!v8)
      {
        ot::FactoryDiags::Diags::Output(this, "raw link started\r\n");
      }
    }

    else if (!strcmp(*a3, "stop"))
    {
      ot::InstanceLocator::GetInstance(this);
      v8 = otPlatRadioDisable();
      if (!v8)
      {
        ot::FactoryDiags::Diags::Output(this, "raw link stopped\r\n");
      }
    }

    else
    {
      return 35;
    }
  }

  else
  {
    ot::InstanceLocator::GetInstance(this);
    IsEnabled = otPlatRadioIsEnabled();
    v4 = "enabled";
    if (!IsEnabled)
    {
      v4 = "disabled";
    }

    ot::FactoryDiags::Diags::Output(this, "raw link is %s\r\n", v4);
  }

  return v8;
}

uint64_t ot::FactoryDiags::Diags::ProcessRepeat(ot::FactoryDiags::Diags *this, unsigned __int8 a2, ot::FactoryDiags::Diags **a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  if (otPlatDiagModeGet())
  {
    if (v12)
    {
      if (!strcmp(*v11, "stop"))
      {
        ot::InstanceLocator::GetInstance(this);
        otPlatAlarmMilliStop();
        *(this + 36) = 0;
        ot::FactoryDiags::Diags::Output(this, "repeated packet transmission is stopped\r\nstatus 0x%02x\r\n", v10);
      }

      else
      {
        *v9 = 0;
        v10 = ot::FactoryDiags::Diags::ParseLong(*v11, v9, v3);
        if (!v10)
        {
          *(this + 6) = *v9;
          if (v12 < 2u)
          {
            if ((*(this + 35) & 1) == 0)
            {
              v10 = 7;
              goto LABEL_19;
            }

            *v9 = *(*(this + 2) + 8);
          }

          else
          {
            v10 = ot::FactoryDiags::Diags::ParseLong(v11[1], v9, v4);
            if (v10)
            {
              goto LABEL_19;
            }

            *(this + 35) = 0;
          }

          if (*v9 <= 127)
          {
            if (*v9 >= 3)
            {
              *(this + 34) = v9[0];
              *(this + 36) = 1;
              Now = otPlatAlarmMilliGetNow();
              Instance = ot::InstanceLocator::GetInstance(this);
              otPlatAlarmMilliStartAt(Instance, Now, *(this + 6));
              ot::FactoryDiags::Diags::Output(this, "sending packets of length %#x at the delay of %#x ms\r\nstatus 0x%02x\r\n", *(this + 34), *(this + 6), v10);
            }

            else
            {
              v10 = 7;
            }
          }

          else
          {
            v10 = 7;
          }
        }
      }
    }

    else
    {
      v10 = 7;
    }
  }

  else
  {
    v10 = 13;
  }

LABEL_19:
  ot::FactoryDiags::Diags::AppendErrorResult(this, v10);
  return v10;
}

uint64_t ot::FactoryDiags::Diags::ProcessSend(ot::FactoryDiags::Diags *this, unsigned __int8 a2, ot::FactoryDiags::Diags **a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  *v8 = 0;
  if (otPlatDiagModeGet())
  {
    if (v11)
    {
      v4 = ot::FactoryDiags::Diags::ParseLong(*v10, v8, v3);
      v9 = v4;
      if (!v4)
      {
        *(this + 7) = *v8;
        if (v11 < 2u)
        {
          if ((*(this + 35) & 1) == 0)
          {
            v9 = 7;
            goto LABEL_18;
          }

          *v8 = *(*(this + 2) + 8);
        }

        else
        {
          if (ot::FactoryDiags::Diags::ParseLong(v10[1], v8, v5))
          {
            goto LABEL_18;
          }

          *(this + 35) = 0;
        }

        if (*v8 <= 127)
        {
          if (*v8 >= 3)
          {
            *(this + 34) = v8[0];
            ot::FactoryDiags::Diags::Output(this, "sending %#x packet(s), length %#x\r\nstatus 0x%02x\r\n", *(this + 7), *(this + 34), v9);
            ot::FactoryDiags::Diags::TransmitPacket(this);
          }

          else
          {
            v9 = 7;
          }
        }

        else
        {
          v9 = 7;
        }
      }
    }

    else
    {
      v9 = 7;
    }
  }

  else
  {
    v9 = 13;
  }

LABEL_18:
  ot::FactoryDiags::Diags::AppendErrorResult(this, v9);
  return v9;
}

uint64_t ot::FactoryDiags::Diags::ProcessStart(ot::FactoryDiags::Diags *this, unsigned __int8 a2, char **a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  if (ot::ThreadNetif::IsUp(v3))
  {
    v10 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  else
  {
    otPlatDiagChannelSet(*(this + 32));
    otPlatDiagTxPowerSet(*(this + 33));
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::Enable(v4);
    IgnoreError();
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetPromiscuous(v5, 1);
    ot::InstanceLocator::GetInstance(this);
    otPlatAlarmMilliStop();
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v10 = ot::Radio::Receive(v6, *(this + 32));
    if (!v10)
    {
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v10 = ot::Radio::SetTransmitPower(v7, *(this + 33));
      if (!v10)
      {
        otPlatDiagModeSet(1);
        ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(this);
        ot::FactoryDiags::Diags::Output(this, "start diagnostics mode\r\nstatus 0x%02x\r\n", 0);
      }
    }

    ot::FactoryDiags::Diags::AppendErrorResult(this, v10);
  }

  return v10;
}

uint64_t ot::FactoryDiags::Diags::ProcessStats(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v5 = 0;
  if (otPlatDiagModeGet())
  {
    if (a2 == 1 && !strcmp(*a3, "clear"))
    {
      ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(this);
      ot::FactoryDiags::Diags::Output(this, "stats cleared\r\n");
    }

    else
    {
      if (a2)
      {
        v5 = 7;
        ot::FactoryDiags::Diags::AppendErrorResult(this, 7);
        return v5;
      }

      ot::FactoryDiags::Diags::Output(this, "received packets: %d\r\nsent packets: %d\r\nfirst received packet: rssi=%d, lqi=%d\r\nlast received packet: rssi=%d, lqi=%d\r\n", *this, *(this + 1), *(this + 8), *(this + 9), *(this + 10), *(this + 11));
    }

    ot::FactoryDiags::Diags::AppendErrorResult(this, 0);
    return v5;
  }

  v5 = 13;
  ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  return v5;
}

uint64_t ot::FactoryDiags::Diags::ProcessStop(ot::FactoryDiags::Diags *this, unsigned __int8 a2, char **a3)
{
  v6 = 0;
  if (otPlatDiagModeGet())
  {
    ot::InstanceLocator::GetInstance(this);
    otPlatAlarmMilliStop();
    otPlatDiagModeSet(0);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetPromiscuous(v3, 0);
    ot::FactoryDiags::Diags::Output(this, "received packets: %d\r\nsent packets: %d\r\nfirst received packet: rssi=%d, lqi=%d\r\nlast received packet: rssi=%d, lqi=%d\r\n\nstop diagnostics mode\r\nstatus 0x%02x\r\n", *this, *(this + 1), *(this + 8), *(this + 9), *(this + 10), *(this + 11), 0);
    ot::FactoryDiags::Diags::AppendErrorResult(this, 0);
  }

  else
  {
    v6 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  return v6;
}

ot::FactoryDiags::Diags *ot::FactoryDiags::Diags::Diags(ot::FactoryDiags::Diags *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  *(this + 2) = ot::Radio::GetTransmitBuffer(v2);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 32) = 20;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(this);
  return this;
}

{
  ot::FactoryDiags::Diags::Diags(this, a2);
  return this;
}

uint64_t ot::Radio::GetTransmitBuffer(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetTransmitBuffer();
}

{
  return ot::Radio::GetTransmitBuffer(this);
}

uint64_t ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::FactoryDiags::Diags::Stats>(a1);
}

{
  return ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(a1);
}

uint64_t ot::FactoryDiags::Diags::ProcessFrame(unsigned __int16 ***this, char a2, ot::Utils::CmdLineParser **a3, unsigned __int8 *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  *v6 = 127;
  if (a2 == 1)
  {
    v7 = ot::Utils::CmdLineParser::ParseAsHexString(*v8, v6, *this[2], a4);
    if (!v7)
    {
      if (*v6 <= 0x7Fu)
      {
        if (*v6 >= 3u)
        {
          *(this[2] + 4) = *v6;
          *(this + 35) = 1;
        }

        else
        {
          v7 = 7;
        }
      }

      else
      {
        v7 = 7;
      }
    }
  }

  else
  {
    v7 = 7;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
  return v7;
}

ot::FactoryDiags::Diags *ot::FactoryDiags::Diags::AppendErrorResult(ot::FactoryDiags::Diags *result, int a2)
{
  if (a2)
  {
    return ot::FactoryDiags::Diags::Output(result, "failed\r\nstatus %#x\r\n", a2);
  }

  return result;
}

uint64_t ot::FactoryDiags::Diags::Output(uint64_t this, const char *a2, ...)
{
  va_start(va, a2);
  if (*(this + 40))
  {
    return (*(this + 40))(a2, va, *(this + 48));
  }

  return this;
}

uint64_t ot::FactoryDiags::Diags::ParseLong(ot::FactoryDiags::Diags *this, char *a2, uint64_t *a3)
{
  v7 = this;
  v6 = a2;
  __endptr = 0;
  v3 = strtol(this, &__endptr, 0);
  *v6 = v3;
  if (*__endptr)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t ot::Radio::Receive(ot::Radio *this, unsigned __int8 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioReceive(InstancePtr, a2);
}

{
  return ot::Radio::Receive(this, a2);
}

uint64_t ot::FactoryDiags::Diags::ProcessUartDisable(ot::FactoryDiags::Diags *this, char a2, ot::FactoryDiags::Diags **a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  if (otPlatDiagModeGet())
  {
    if (v11)
    {
      *v8 = 0;
      v9 = ot::FactoryDiags::Diags::ParseLong(*v10, v8, v3);
      if (!v9)
      {
        v7 = *v8;
        Instance = ot::InstanceLocator::GetInstance(this);
        v9 = otPlatVendorUartDisableStart(Instance, v7);
        if (!v9)
        {
          ot::FactoryDiags::Diags::Output(this, " Uart disabled for %d mSec\r\n", v7);
        }
      }
    }

    else
    {
      ot::FactoryDiags::Diags::Output(this, "missing argument for uart renable time in mSec:");
    }
  }

  else
  {
    v9 = 13;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, v9);
  return v9;
}

uint64_t ot::Radio::SetTransmitPower(ot::Radio *this, signed __int8 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetTransmitPower(InstancePtr, a2);
}

{
  return ot::Radio::SetTransmitPower(this, a2);
}

void ot::FactoryDiags::Diags::TransmitPacket(ot::FactoryDiags::Diags *this)
{
  *(*(this + 2) + 10) = *(this + 32);
  if ((*(this + 35) & 1) == 0)
  {
    *(*(this + 2) + 8) = *(this + 34);
    for (i = 0; i < *(this + 34); ++i)
    {
      *(**(this + 2) + i) = i;
    }
  }

  *(this + 37) = 1;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::Transmit(v1, *(this + 2));
  IgnoreError();
}

uint64_t ot::Radio::Enable(ot::Radio *this)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioEnable(InstancePtr);
}

{
  return ot::Radio::Enable(this);
}

uint64_t ot::Radio::SetPromiscuous(ot::Radio *this, char a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetPromiscuous(InstancePtr, a2 & 1);
}

{
  return ot::Radio::SetPromiscuous(this, a2);
}

uint64_t ot::Radio::Sleep(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioSleep();
}

{
  return ot::Radio::Sleep(this);
}

uint64_t ot::Radio::GetState(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetState();
}

{
  return ot::Radio::GetState(this);
}

void otPlatDiagAlarmFired(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::FactoryDiags::Diags>(v1);
  ot::FactoryDiags::Diags::AlarmFired(v2);
}

void ot::FactoryDiags::Diags::AlarmFired(ot::FactoryDiags::Diags *this)
{
  if (*(this + 36))
  {
    Now = otPlatAlarmMilliGetNow();
    ot::FactoryDiags::Diags::TransmitPacket(this);
    Instance = ot::InstanceLocator::GetInstance(this);
    otPlatAlarmMilliStartAt(Instance, Now, *(this + 6));
  }

  else
  {
    ot::InstanceLocator::GetInstance(this);
    otPlatDiagAlarmCallback();
  }
}

void ot::FactoryDiags::Diags::ReceiveDone(ot::InstanceLocator *a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    if (!*a1)
    {
      *(a1 + 8) = *(a2 + 29);
      *(a1 + 9) = *(a2 + 30);
    }

    *(a1 + 10) = *(a2 + 29);
    *(a1 + 11) = *(a2 + 30);
    ++*a1;
  }

  ot::InstanceLocator::GetInstance(a1);
  otPlatDiagRadioReceived();
}

void ot::FactoryDiags::Diags::TransmitDone(uint64_t a1, int a2)
{
  if (*(a1 + 37))
  {
    *(a1 + 37) = 0;
    if (!a2)
    {
      ++*(a1 + 4);
      if (*(a1 + 28) <= 1u)
      {
        return;
      }

      --*(a1 + 28);
    }

    if ((*(a1 + 36) & 1) == 0)
    {
      ot::FactoryDiags::Diags::TransmitPacket(a1);
    }
  }
}

uint64_t ot::FactoryDiags::Diags::ProcessContinuousWave(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v7 = 7;
  if (otPlatDiagModeGet())
  {
    if (a2)
    {
      if (!strcmp(*a3, "start"))
      {
        Instance = ot::InstanceLocator::GetInstance(this);
        v7 = otPlatDiagRadioTransmitCarrier(Instance, 1);
        ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
      }

      else
      {
        if (!strcmp(*a3, "stop"))
        {
          v4 = ot::InstanceLocator::GetInstance(this);
          v7 = otPlatDiagRadioTransmitCarrier(v4, 0);
        }

        ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
      }
    }

    else
    {
      v7 = 7;
      ot::FactoryDiags::Diags::AppendErrorResult(this, 7);
    }
  }

  else
  {
    v7 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  return v7;
}

uint64_t ot::FactoryDiags::Diags::ProcessStream(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v7 = 7;
  if (otPlatDiagModeGet())
  {
    if (a2)
    {
      if (!strcmp(*a3, "start"))
      {
        Instance = ot::InstanceLocator::GetInstance(this);
        v7 = otPlatDiagRadioTransmitStream(Instance, 1);
        ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
      }

      else
      {
        if (!strcmp(*a3, "stop"))
        {
          v4 = ot::InstanceLocator::GetInstance(this);
          v7 = otPlatDiagRadioTransmitStream(v4, 0);
        }

        ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
      }
    }

    else
    {
      v7 = 7;
      ot::FactoryDiags::Diags::AppendErrorResult(this, 7);
    }
  }

  else
  {
    v7 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  return v7;
}

uint64_t ot::FactoryDiags::Diags::GetPowerSettings(ot::InstanceLocator *a1, unsigned __int8 a2, uint64_t a3)
{
  *(a3 + 20) = 16;
  Instance = ot::InstanceLocator::GetInstance(a1);
  return otPlatDiagRadioGetPowerSettings(Instance, a2, a3, (a3 + 2), (a3 + 4), (a3 + 20));
}

uint64_t ot::FactoryDiags::Diags::ProcessPowerSettings(ot::FactoryDiags::Diags *this, char a2, ot::Utils::CmdLineParser **a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  PowerSettings = 7;
  i = 0;
  if (otPlatDiagModeGet())
  {
    if (v18)
    {
      if (v18 == 1)
      {
        PowerSettings = ot::Utils::CmdLineParser::ParseAsUint8(*v17, &i, v3);
        if (!PowerSettings)
        {
          if (i >= 0xBu && i <= 0x19u)
          {
            PowerSettings = ot::FactoryDiags::Diags::GetPowerSettings(this, i, v23);
            if (!PowerSettings)
            {
              v7 = *v23;
              v8 = *&v23[2];
              ot::FactoryDiags::Diags::RawPowerSetting::ToString(&v23[4], v20);
              v5 = ot::String<(unsigned short)33>::AsCString(v20);
              ot::FactoryDiags::Diags::Output(this, "TargetPower(0.01dBm): %d\r\nActualPower(0.01dBm): %d\r\nRawPowerSetting: %s\r\n", v7, v8, v5);
            }
          }

          else
          {
            PowerSettings = 7;
          }
        }
      }
    }

    else
    {
      v14 = 0;
      v13 = 0;
      ot::FactoryDiags::Diags::Output(this, "| StartCh | EndCh | TargetPower | ActualPower | RawPowerSetting |\r\n+---------+-------+-------------+-------------+-----------------+\r\n");
      for (i = 11; i <= 0x1Au; ++i)
      {
        if (i == 26)
        {
          v11 = 23;
        }

        else
        {
          v11 = ot::FactoryDiags::Diags::GetPowerSettings(this, i, v23);
        }

        PowerSettings = v11;
        if ((v14 & 1) != 0 && (ot::FactoryDiags::Diags::PowerSettings::operator!=(v23, v22) || PowerSettings))
        {
          v9 = v22[0];
          v10 = v22[1];
          ot::FactoryDiags::Diags::RawPowerSetting::ToString(&v22[2], v21);
          v4 = ot::String<(unsigned short)33>::AsCString(v21);
          ot::FactoryDiags::Diags::Output(this, "| %7u | %5u | %11d | %11d | %15s |\r\n", v13, i - 1, v9, v10, v4);
          v14 = 0;
        }

        if (!PowerSettings && (v14 & 1) == 0)
        {
          v13 = i;
          *v22 = *v23;
          *&v22[7] = *&v23[14];
          v14 = 1;
        }
      }

      PowerSettings = 0;
    }
  }

  else
  {
    PowerSettings = 13;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, PowerSettings);
  return PowerSettings;
}

BOOL ot::FactoryDiags::Diags::PowerSettings::operator!=(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v3 = 1;
  if (*a1 == *a2)
  {
    v3 = 1;
    if (a1[1] == a2[1])
    {
      return ot::FactoryDiags::Diags::RawPowerSetting::operator!=(a1 + 2, a2 + 2);
    }
  }

  return v3;
}

{
  return ot::FactoryDiags::Diags::PowerSettings::operator!=(a1, a2);
}

ot::StringWriter *ot::FactoryDiags::Diags::RawPowerSetting::ToString@<X0>(ot::FactoryDiags::Diags::RawPowerSetting *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)33>::String(a2);
  return ot::StringWriter::AppendHexBytes(a2, this, *(this + 8));
}

{
  return ot::FactoryDiags::Diags::RawPowerSetting::ToString(this, a2);
}

uint64_t ot::FactoryDiags::Diags::GetRawPowerSetting(ot::FactoryDiags::Diags *this, ot::FactoryDiags::Diags::RawPowerSetting *a2)
{
  *(a2 + 8) = 16;
  Instance = ot::InstanceLocator::GetInstance(this);
  return otPlatDiagRadioGetRawPowerSetting(Instance, a2, a2 + 16);
}

uint64_t ot::FactoryDiags::Diags::ProcessRawPowerSetting(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  if (otPlatDiagModeGet())
  {
    if (a2)
    {
      if (!strcmp(*a3, "enable"))
      {
        Instance = ot::InstanceLocator::GetInstance(this);
        RawPowerSetting = otPlatDiagRadioRawPowerSettingEnable(Instance, 1);
        ot::FactoryDiags::Diags::AppendErrorResult(this, RawPowerSetting);
        return RawPowerSetting;
      }

      if (!strcmp(*a3, "disable"))
      {
        v6 = ot::InstanceLocator::GetInstance(this);
        RawPowerSetting = otPlatDiagRadioRawPowerSettingEnable(v6, 0);
        ot::FactoryDiags::Diags::AppendErrorResult(this, RawPowerSetting);
        return RawPowerSetting;
      }

      v15 = 16;
      RawPowerSetting = ot::Utils::CmdLineParser::ParseAsHexString(*a3, &v15, v14, v5);
      if (!RawPowerSetting)
      {
        v7 = ot::InstanceLocator::GetInstance(this);
        RawPowerSetting = otPlatDiagRadioSetRawPowerSetting(v7, v14, v15);
      }
    }

    else
    {
      RawPowerSetting = ot::FactoryDiags::Diags::GetRawPowerSetting(this, v14);
      if (!RawPowerSetting)
      {
        ot::FactoryDiags::Diags::RawPowerSetting::ToString(v14, v13);
        v3 = ot::String<(unsigned short)33>::AsCString(v13);
        ot::FactoryDiags::Diags::Output(this, "%s\r\n", v3);
      }
    }

    ot::FactoryDiags::Diags::AppendErrorResult(this, RawPowerSetting);
    return RawPowerSetting;
  }

  RawPowerSetting = 13;
  ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  return RawPowerSetting;
}

uint64_t ot::FactoryDiags::Diags::ProcessGpio(ot::FactoryDiags::Diags *this, unsigned __int8 a2, char **a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  Mode = 7;
  *v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a2 == 2 && !strcmp(*v14, "get"))
  {
    Mode = ot::FactoryDiags::Diags::ParseLong(v14[1], v12, v3);
    if (!Mode)
    {
      v11 = v12[0];
      Mode = otPlatDiagGpioGet(v12[0], &v10);
      if (!Mode)
      {
        ot::FactoryDiags::Diags::Output(this, "%d\r\n", v10 & 1);
      }
    }
  }

  else if (v15 == 3 && !strcmp(*v14, "set"))
  {
    Mode = ot::FactoryDiags::Diags::ParseLong(v14[1], v12, v4);
    if (!Mode)
    {
      v11 = v12[0];
      Mode = ot::FactoryDiags::Diags::ParseBool(v14[2], &v10, v5);
      if (!Mode)
      {
        Mode = otPlatDiagGpioSet(v11, v10 & 1);
      }
    }
  }

  else if (v15 >= 2u && !strcmp(*v14, "mode"))
  {
    Mode = ot::FactoryDiags::Diags::ParseLong(v14[1], v12, v6);
    if (!Mode)
    {
      v11 = v12[0];
      if (v15 == 2)
      {
        Mode = otPlatDiagGpioGetMode(v11, &v9);
        if (!Mode)
        {
          if (v9)
          {
            if (v9 == 1)
            {
              ot::FactoryDiags::Diags::Output(this, "out\r\n");
            }
          }

          else
          {
            ot::FactoryDiags::Diags::Output(this, "in\r\n");
          }
        }
      }

      else if (v15 == 3 && !strcmp(v14[2], "in"))
      {
        Mode = otPlatDiagGpioSetMode(v11, 0);
      }

      else if (v15 == 3 && !strcmp(v14[2], "out"))
      {
        Mode = otPlatDiagGpioSetMode(v11, 1);
      }
    }
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, Mode);
  return Mode;
}

uint64_t ot::FactoryDiags::Diags::ParseBool(ot::FactoryDiags::Diags *this, char *a2, BOOL *a3)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  v5 = ot::FactoryDiags::Diags::ParseLong(this, &v4, a3);
  if (!v5)
  {
    if (v4 < 2)
    {
      *v6 = v4 != 0;
    }

    else
    {
      return 6;
    }
  }

  return v5;
}

uint64_t ot::FactoryDiags::Diags::ParseCmd(ot::FactoryDiags::Diags *this, ot::Utils::CmdLineParser *a2, unsigned __int8 *a3, char **a4)
{
  v7 = ot::Utils::CmdLineParser::ParseCmd<(unsigned char)33>(a2, v10, a3, a4);
  if (!v7)
  {
    *a3 = ot::Utils::CmdLineParser::Arg::GetArgsLength(v10, v4);
    ot::Utils::CmdLineParser::Arg::CopyArgsToStringArray(v10, a4, v5);
  }

  return v7;
}

uint64_t ot::Utils::CmdLineParser::ParseCmd<(unsigned char)33>(ot::Utils::CmdLineParser *a1, char *a2, uint64_t a3, unsigned __int8 a4)
{
  return ot::Utils::CmdLineParser::ParseCmd(a1, a2, 0x21);
}

{
  return ot::Utils::CmdLineParser::ParseCmd<(unsigned char)33>(a1, a2, a3, a4);
}

uint64_t ot::FactoryDiags::Diags::ProcessLine(ot::FactoryDiags::Diags *this, char *a2)
{
  v8 = this;
  __src = a2;
  v6 = 256;
  v5 = 0;
  memset(__b, 0, sizeof(__b));
  v4 = 0;
  if (ot::StringLength(__src, 0x100) < 256)
  {
    strcpy(__dst, __src);
    v5 = ot::FactoryDiags::Diags::ParseCmd(this, __dst, &v4, __b);
  }

  else
  {
    v5 = 3;
  }

  if (v5)
  {
    if (v5 == 3)
    {
      ot::FactoryDiags::Diags::Output(this, "failed: command string too long\r\n");
    }

    else if (v5 == 7)
    {
      ot::FactoryDiags::Diags::Output(this, "failed: command string contains too many arguments\r\n");
    }

    else
    {
      ot::FactoryDiags::Diags::Output(this, "failed to parse command string\r\n");
    }
  }

  else
  {
    return ot::FactoryDiags::Diags::ProcessCmd(this, v4, __b);
  }

  return v5;
}

uint64_t ot::FactoryDiags::Diags::ProcessCmd(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v18 = 0;
  if (a2)
  {
    ot::InstanceLocator::GetInstance(this);
    if (otPlatRadioGetRcp2Vendor2Enabled())
    {
      for (i = &ot::FactoryDiags::Diags::sCommandsProxima; i != &ot::FactoryDiags::Diags::sCommands; i += 3)
      {
        if (!strcmp(*a3, *i))
        {
          v5 = i[2];
          v14 = (this + (v5 >> 1));
          if (v5)
          {
            v13 = *(*v14 + i[1]);
          }

          else
          {
            v13 = i[1];
          }

          if (a2 <= 1u)
          {
            v6 = (v13)(v14, (a2 - 1), 0);
          }

          else
          {
            v6 = (v13)(v14, (a2 - 1), a3 + 1);
          }

          v18 = v6;
          goto LABEL_29;
        }
      }
    }

    for (j = &ot::FactoryDiags::Diags::sCommands; ; j += 3)
    {
      if (j == ot::Mac::Mac::OperationToString(ot::Mac::Mac::Operation)::kOperationStrings)
      {
        Instance = ot::InstanceLocator::GetInstance(this);
        v18 = otPlatDiagProcess(Instance, a2, a3);
        goto LABEL_29;
      }

      if (!strcmp(*a3, *j))
      {
        break;
      }
    }

    v7 = j[2];
    v12 = (this + (v7 >> 1));
    if (v7)
    {
      v11 = *(*v12 + j[1]);
    }

    else
    {
      v11 = j[1];
    }

    if (a2 <= 1u)
    {
      v8 = (v11)(v12, (a2 - 1), 0);
    }

    else
    {
      v8 = (v11)(v12, (a2 - 1), a3 + 1);
    }

    v18 = v8;
  }

  else
  {
    v3 = otPlatDiagModeGet();
    v4 = "enabled";
    if ((v3 & 1) == 0)
    {
      v4 = "disabled";
    }

    ot::FactoryDiags::Diags::Output(this, "diagnostics mode is %s\r\n", v4);
  }

LABEL_29:
  if (v18 == 35 && a2 > 1u)
  {
    ot::FactoryDiags::Diags::Output(this, "diag feature '%s' is not supported\r\n", *a3);
  }

  return v18;
}

uint64_t ot::FactoryDiags::Diags::SetOutputCallback(ot::FactoryDiags::Diags *this, void (*a2)(const char *, char *, void *), void *a3)
{
  *(this + 5) = a2;
  *(this + 6) = a3;
  Instance = ot::InstanceLocator::GetInstance(this);
  return otPlatDiagSetOutputCallback(Instance, a2, a3);
}

BOOL ot::FactoryDiags::Diags::RawPowerSetting::operator!=(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v3 = 1;
  if (a1[8] == a2[8])
  {
    return memcmp(a1, a2, a1[8]) != 0;
  }

  return v3;
}

{
  return ot::FactoryDiags::Diags::RawPowerSetting::operator!=(a1, a2);
}

uint64_t ot::ClearAllBytes<ot::FactoryDiags::Diags::Stats>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::FactoryDiags::Diags::Stats>(result);
}

uint64_t ot::Mac::ChannelMask::GetNumberOfChannels(ot::Mac::ChannelMask *this)
{
  v5 = this;
  v4 = 0;
  v3 = -1;
  while (!ot::Mac::ChannelMask::GetNextChannel(this, &v3))
  {
    ++v4;
  }

  return v4;
}

uint64_t ot::Mac::ChannelMask::GetNextChannel(ot::Mac::ChannelMask *this, unsigned __int8 *a2)
{
  v4 = 23;
  if (*a2 == 255)
  {
    *a2 = 10;
  }

  ++*a2;
  while (*a2 <= 0x19u)
  {
    if (ot::Mac::ChannelMask::ContainsChannel(this, *a2))
    {
      return 0;
    }

    ++*a2;
  }

  return v4;
}

BOOL ot::Mac::ChannelMask::ContainsChannel(ot::Mac::ChannelMask *this, unsigned __int8 a2)
{
  return a2 < 0x20uLL && ((1 << a2) & *this) != 0;
}

{
  return ot::Mac::ChannelMask::ContainsChannel(this, a2);
}

uint64_t ot::Mac::ChannelMask::GetNextChannelWithRollOver(ot::Mac::ChannelMask *this, unsigned __int8 a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = a2;
  if (ot::Mac::ChannelMask::IsEmpty(this))
  {
    if (++v4[0] > 0x19u)
    {
      v4[0] = 11;
    }
  }

  else if (ot::Mac::ChannelMask::GetNextChannel(this, v4) == 23)
  {
    v4[0] = -1;
    ot::Mac::ChannelMask::GetNextChannel(this, v4);
    IgnoreError();
  }

  return v4[0];
}

BOOL ot::Mac::ChannelMask::IsEmpty(ot::Mac::ChannelMask *this)
{
  return *this == 0;
}

{
  return ot::Mac::ChannelMask::IsEmpty(this);
}

uint64_t ot::Mac::ChannelMask::ChooseRandomChannel(ot::Mac::ChannelMask *this)
{
  v7 = this;
  v6 = -1;
  if (!ot::Mac::ChannelMask::IsEmpty(this))
  {
    NumberOfChannels = ot::Mac::ChannelMask::GetNumberOfChannels(this);
    Uint8InRange = ot::Random::NonCrypto::GetUint8InRange(0, NumberOfChannels);
    if (!ot::Mac::ChannelMask::GetNextChannel(this, &v6))
    {
      do
      {
        v2 = Uint8InRange--;
      }

      while (v2 && !ot::Mac::ChannelMask::GetNextChannel(this, &v6));
    }
  }

  return v6;
}

ot::StringWriter *ot::Mac::ChannelMask::ToString@<X0>(ot::Mac::ChannelMask *this@<X0>, ot::StringWriter *a2@<X8>)
{
  v12 = this;
  ot::String<(unsigned short)45>::String(a2);
  v11 = -1;
  v10 = 0;
  ot::StringWriter::Append(a2, "{");
  NextChannel = ot::Mac::ChannelMask::GetNextChannel(this, &v11);
  while (!NextChannel)
  {
    v8 = v11;
    for (i = v11; ; i = v11)
    {
      NextChannel = ot::Mac::ChannelMask::GetNextChannel(this, &v11);
      if (NextChannel || v11 != i + 1)
      {
        break;
      }
    }

    v2 = ", ";
    if ((v10 & 1) == 0)
    {
      v2 = " ";
    }

    ot::StringWriter::Append(a2, "%s%d", v2, v8);
    v10 = 1;
    if (v8 < i)
    {
      v3 = ", ";
      if (i != v8 + 1)
      {
        v3 = "-";
      }

      ot::StringWriter::Append(a2, "%s%d", v3, i);
    }
  }

  return ot::StringWriter::Append(a2, " }");
}

uint64_t ot::String<(unsigned short)45>::String(uint64_t a1)
{
  ot::String<(unsigned short)45>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 45);
  return a1;
}

ot::DataPollHandler::Callbacks *ot::DataPollHandler::Callbacks::Callbacks(ot::DataPollHandler::Callbacks *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  return this;
}

{
  ot::DataPollHandler::Callbacks::Callbacks(this, a2);
  return this;
}

ot::DataPollHandler *ot::DataPollHandler::DataPollHandler(ot::DataPollHandler *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 4) = 0;
  ot::DataPollHandler::Callbacks::Callbacks((this + 10), a2);
  return this;
}

{
  ot::DataPollHandler::DataPollHandler(this, a2);
  return this;
}

BOOL ot::DataPollHandler::Clear(ot::DataPollHandler *this)
{
  v13 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v11 = ot::ChildTable::Iterate(v1, 5);
  v12 = &v11;
  v16 = ot::ChildTable::IteratorBuilder::begin(&v11);
  v17 = v2;
  v9 = v16;
  v10 = v2;
  v14 = ot::ChildTable::IteratorBuilder::end(v12);
  v15 = v3;
  v7 = v14;
  v8 = v3;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v9, &v7);
    if (!result)
    {
      break;
    }

    v6 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v9);
    ot::DataPollHandler::ChildInfo::SetDataPollPending(v6 + 160, 0);
    ot::DataPollHandler::ChildInfo::SetFrameReplacePending(v6 + 160, 0);
    ot::DataPollHandler::ChildInfo::SetFramePurgePending(v6 + 160, 0);
    ot::DataPollHandler::ChildInfo::ResetIndirectTxAttempts(v6 + 160);
    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
  }

  *this = 0;
  return result;
}

uint64_t ot::DataPollHandler::ChildInfo::SetDataPollPending(uint64_t this, char a2)
{
  *(this + 6) = *(this + 6) & 0xDF | (32 * (a2 & 1));
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetDataPollPending(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::SetFrameReplacePending(uint64_t this, char a2)
{
  *(this + 6) = *(this + 6) & 0x7F | ((a2 & 1) << 7);
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetFrameReplacePending(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::SetFramePurgePending(uint64_t this, char a2)
{
  *(this + 6) = *(this + 6) & 0xBF | ((a2 & 1) << 6);
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetFramePurgePending(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::ResetIndirectTxAttempts(uint64_t this)
{
  *(this + 6) &= 0xE0u;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::ResetIndirectTxAttempts(this);
}

void ot::DataPollHandler::RequestFrameChange(uint64_t a1, char a2, ot::Child *a3)
{
  if (*a1 == a3 && (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1), ot::Mac::Mac::IsPerformingIndirectTransmit(v3)))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        ot::DataPollHandler::ChildInfo::SetFrameReplacePending(a3 + 160, 1);
      }
    }

    else
    {
      ot::DataPollHandler::ChildInfo::SetFramePurgePending(a3 + 160, 1);
    }
  }

  else
  {
    ot::DataPollHandler::ResetTxAttempts(a1, a3);
    ot::DataPollHandler::Callbacks::HandleFrameChangeDone((a1 + 10), a3);
  }
}

BOOL ot::Mac::Mac::IsPerformingIndirectTransmit(ot::Mac::Mac *this)
{
  return *(this + 1) == 7;
}

{
  return ot::Mac::Mac::IsPerformingIndirectTransmit(this);
}

void ot::DataPollHandler::Callbacks::HandleFrameChangeDone(ot::DataPollHandler::Callbacks *this, ot::Child *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(this);
  ot::IndirectSender::HandleFrameChangeDone(v2, a2);
}

{
  ot::DataPollHandler::Callbacks::HandleFrameChangeDone(this, a2);
}

void ot::DataPollHandler::HandleDataPoll(ot::DataPollHandler *this, ot::Mac::RxFrame *a2)
{
  v31 = this;
  v30 = a2;
  ot::Mac::Address::Address(v29);
  if (ot::Mac::Frame::GetSecurityEnabled(v30, v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (!ot::Mle::Mle::IsDetached(v3) && !ot::Mac::Frame::GetSrcAddr(v30, v29))
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ot::ChildTable::FindChild(v4, v29, 1);
      v28 = v5;
      if (v5)
      {
        Now = ot::TimerMilli::GetNow(v5);
        ot::Neighbor::SetLastHeard(v28, Now);
        ot::Neighbor::ResetLinkFailures(v28);
        IndirectMessageCount = ot::IndirectSender::ChildInfo::GetIndirectMessageCount((v28 + 144));
        ApplicationMessageCount = ot::IndirectSender::ChildInfo::GetApplicationMessageCount((v28 + 144));
        Rloc16 = ot::Neighbor::GetRloc16(v28);
        Rssi = ot::Mac::RxFrame::GetRssi(v30);
        IsAckedWithFramePending = ot::Mac::RxFrame::IsAckedWithFramePending(v30);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollHandlr", "Rx data poll, src:0x%04x, qed_msgs:%d, app_msgs:%d, rss:%d, ack-fp:%d", v14, v15, v16, v17, v18, v19, Rloc16, IndirectMessageCount, ApplicationMessageCount, Rssi, IsAckedWithFramePending & 1);
        if (ot::Mac::RxFrame::IsAckedWithFramePending(v30))
        {
          if (*this)
          {
            ot::DataPollHandler::ChildInfo::SetDataPollPending(v28 + 160, 1);
          }

          else
          {
            *this = v28;
            v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
            ot::Mac::Mac::RequestIndirectFrameTransmission(v21);
          }
        }

        else if (IndirectMessageCount)
        {
          if (ot::Mac::Address::IsShort(v29))
          {
            matched = ot::GetProvider<ot::InstanceLocator>::Get<ot::SourceMatchController>(this);
            ot::SourceMatchController::SetSrcMatchAsShort(matched, v28, 1);
          }
        }
      }

      else
      {
        ot::Mac::Address::ToString(v29, v32);
        v6 = ot::String<(unsigned short)17>::AsCString(v32);
        ot::Logger::LogAtLevel<(ot::LogLevel)3>("DataPollHandlr", "Rx data poll, child:%s not found", v7, v8, v9, v10, v11, v12, v6);
      }
    }
  }
}

uint64_t ot::Neighbor::ResetLinkFailures(uint64_t this)
{
  *(this + 35) = 0;
  return this;
}

{
  return ot::Neighbor::ResetLinkFailures(this);
}

uint64_t ot::IndirectSender::ChildInfo::GetApplicationMessageCount(ot::IndirectSender::ChildInfo *this)
{
  return HIDWORD(*(this + 1)) & 0x3FFF;
}

{
  return ot::IndirectSender::ChildInfo::GetApplicationMessageCount(this);
}

uint64_t ot::Mac::RxFrame::GetRssi(ot::Mac::RxFrame *this)
{
  return *(this + 29);
}

{
  return ot::Mac::RxFrame::GetRssi(this);
}

uint64_t ot::Mac::RxFrame::IsAckedWithFramePending(ot::Mac::RxFrame *this)
{
  return *(this + 31) & 1;
}

{
  return ot::Mac::RxFrame::IsAckedWithFramePending(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::SourceMatchController>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::SourceMatchController>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::SourceMatchController>(a1);
}

ot::Mac::TxFrame *ot::DataPollHandler::HandleFrameRequest(ot::DataPollHandler *this, ot::Mac::TxFrames *a2)
{
  TxFrame = 0;
  if (*this)
  {
    TxFrame = ot::Mac::TxFrames::GetTxFrame(a2);
    if (ot::DataPollHandler::Callbacks::PrepareFrameForChild((this + 10), TxFrame, this + 4, *this))
    {
      return 0;
    }

    else if (ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts((*this + 160)) <= 0 && ot::CslTxScheduler::ChildInfo::GetCslTxAttempts((*this + 168)) <= 0)
    {
      ot::Mac::TxFrame::SetIsARetransmission(TxFrame, 0);
    }

    else
    {
      ot::Mac::TxFrame::SetIsARetransmission(TxFrame, 1);
      IndirectDataSequenceNumber = ot::DataPollHandler::ChildInfo::GetIndirectDataSequenceNumber((*this + 160));
      ot::Mac::Frame::SetSequence(TxFrame, IndirectDataSequenceNumber);
      if (ot::Mac::Frame::GetSecurityEnabled(TxFrame, v3))
      {
        IndirectFrameCounter = ot::DataPollHandler::ChildInfo::GetIndirectFrameCounter((*this + 160));
        ot::Mac::Frame::SetFrameCounter(TxFrame, IndirectFrameCounter);
        IndirectKeyId = ot::DataPollHandler::ChildInfo::GetIndirectKeyId((*this + 160));
        ot::Mac::Frame::SetKeyId(TxFrame, IndirectKeyId);
      }
    }
  }

  return TxFrame;
}

uint64_t ot::DataPollHandler::Callbacks::PrepareFrameForChild(ot::InstanceLocator *a1, ot::Mac::TxFrame *a2, _WORD *a3, uint64_t a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(a1);
  return ot::IndirectSender::PrepareFrameForChild(v4, a2, a3, a4);
}

{
  return ot::DataPollHandler::Callbacks::PrepareFrameForChild(a1, a2, a3, a4);
}

uint64_t ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts(ot::DataPollHandler::ChildInfo *this)
{
  return *(this + 6) & 0x1F;
}

{
  return ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslTxAttempts(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 2) & 0x7F;
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslTxAttempts(this);
}

uint64_t ot::Mac::TxFrame::SetIsARetransmission(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xFD | (2 * (a2 & 1));
  return this;
}

{
  return ot::Mac::TxFrame::SetIsARetransmission(this, a2);
}

uint64_t ot::Mac::Frame::SetSequence(ot::Mac::Frame *this, char a2)
{
  Psdu = ot::Mac::Frame::GetPsdu(this);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, v2);
  FcfSize = ot::Mac::Frame::GetFcfSize(FrameControlField, v4);
  result = Psdu;
  *(Psdu + FcfSize) = a2;
  return result;
}

{
  return ot::Mac::Frame::SetSequence(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::GetIndirectDataSequenceNumber(ot::DataPollHandler::ChildInfo *this)
{
  return *(this + 5);
}

{
  return ot::DataPollHandler::ChildInfo::GetIndirectDataSequenceNumber(this);
}

uint64_t ot::DataPollHandler::ChildInfo::GetIndirectFrameCounter(ot::DataPollHandler::ChildInfo *this)
{
  return *this;
}

{
  return ot::DataPollHandler::ChildInfo::GetIndirectFrameCounter(this);
}

uint64_t ot::DataPollHandler::ChildInfo::GetIndirectKeyId(ot::DataPollHandler::ChildInfo *this)
{
  return *(this + 4);
}

{
  return ot::DataPollHandler::ChildInfo::GetIndirectKeyId(this);
}

void ot::DataPollHandler::HandleSentFrame(ot::DataPollHandler *a1, ot::Mac::TxFrame *a2, int a3)
{
  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    ot::DataPollHandler::HandleSentFrame(a1, a2, a3, v4);
  }

  ot::DataPollHandler::ProcessPendingPolls(a1);
}

void ot::DataPollHandler::HandleSentFrame(unsigned __int16 *a1, ot::Mac::TxFrame *a2, int a3, uint64_t a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  if (ot::DataPollHandler::ChildInfo::IsFramePurgePending((a4 + 160)))
  {
    ot::DataPollHandler::ChildInfo::SetFramePurgePending(v19 + 160, 0);
    ot::DataPollHandler::ChildInfo::SetFrameReplacePending(v19 + 160, 0);
    ot::DataPollHandler::ResetTxAttempts(a1, v19);
    ot::DataPollHandler::Callbacks::HandleFrameChangeDone((a1 + 5), v19);
    return;
  }

  if (!v20)
  {
    ot::DataPollHandler::ResetTxAttempts(a1, v19);
    ot::DataPollHandler::ChildInfo::SetFrameReplacePending(v19 + 160, 0);
LABEL_28:
    ot::DataPollHandler::Callbacks::HandleSentFrameToChild((a1 + 5), v21, a1 + 4, v20, v19);
    return;
  }

  if (v20 != 11)
  {
    if (v20 == 14)
    {
      IsHeaderUpdated = 1;
      if (ot::Mac::Frame::GetSecurityEnabled(v21, v4))
      {
        IsHeaderUpdated = ot::Mac::TxFrame::IsHeaderUpdated(v21);
      }

      if ((IsHeaderUpdated & 1) == 0)
      {
        __assert_rtn("HandleSentFrame", "data_poll_handler.cpp", 300, "!aFrame.GetSecurityEnabled() || aFrame.IsHeaderUpdated()");
      }

      ot::DataPollHandler::ChildInfo::IncrementIndirectTxAttempts(v19 + 160);
      Rloc16 = ot::Neighbor::GetRloc16(v19);
      IndirectTxAttempts = ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts((v19 + 160));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollHandlr", "Indirect tx to child %04x failed, attempt %d/%d", v6, v7, v8, v9, v10, v11, Rloc16, IndirectTxAttempts, 4);
    }

    else if (v20 != 15 && v20 != 29)
    {
      __assert_rtn("HandleSentFrame", "data_poll_handler.cpp", 347, "false");
    }
  }

  if (ot::DataPollHandler::ChildInfo::IsFrameReplacePending((v19 + 160)))
  {
    ot::DataPollHandler::ChildInfo::SetFrameReplacePending(v19 + 160, 0);
    ot::DataPollHandler::ResetTxAttempts(a1, v19);
    ot::DataPollHandler::Callbacks::HandleFrameChangeDone((a1 + 5), v19);
    return;
  }

  if (ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts((v19 + 160)) >= 4 || ot::Mac::Frame::IsEmpty(v21))
  {
    ot::DataPollHandler::ChildInfo::ResetIndirectTxAttempts(v19 + 160);
    goto LABEL_28;
  }

  Sequence = ot::Mac::Frame::GetSequence(v21);
  ot::DataPollHandler::ChildInfo::SetIndirectDataSequenceNumber(v19 + 160, Sequence);
  if (ot::Mac::Frame::GetSecurityEnabled(v21, v13) && (ot::Mac::TxFrame::IsHeaderUpdated(v21) & 1) != 0)
  {
    v18 = 0;
    v17 = 0;
    if (ot::Mac::Frame::GetFrameCounter(v21, &v18))
    {
      __assert_rtn("HandleSentFrame", "data_poll_handler.cpp", 333, "false");
    }

    ot::DataPollHandler::ChildInfo::SetIndirectFrameCounter(v19 + 40, v18);
    if (ot::Mac::Frame::GetKeyId(v21, &v17))
    {
      __assert_rtn("HandleSentFrame", "data_poll_handler.cpp", 336, "false");
    }

    ot::DataPollHandler::ChildInfo::SetIndirectKeyId(v19 + 160, v17);
  }
}

void ot::DataPollHandler::ProcessPendingPolls(ot::Neighbor **this)
{
  v16 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v14 = ot::ChildTable::Iterate(v1, 1);
  v15 = &v14;
  v19 = ot::ChildTable::IteratorBuilder::begin(&v14);
  v20 = v2;
  v12 = v19;
  v13 = v2;
  v17 = ot::ChildTable::IteratorBuilder::end(v15);
  v18 = v3;
  v10 = v17;
  v11 = v3;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v12, &v10))
  {
    v9 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v12);
    if (ot::DataPollHandler::ChildInfo::IsDataPollPending((v9 + 160)))
    {
      v5 = 1;
      if (*this)
      {
        LastHeard = ot::Neighbor::GetLastHeard(v9);
        v7 = ot::Neighbor::GetLastHeard(*this);
        v5 = ot::Time::operator<(&LastHeard, &v7);
      }

      if (v5)
      {
        *this = v9;
      }
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v12);
  }

  if (*this)
  {
    ot::DataPollHandler::ChildInfo::SetDataPollPending(*this + 160, 0);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::RequestIndirectFrameTransmission(v4);
  }
}

uint64_t ot::DataPollHandler::ChildInfo::IsFramePurgePending(ot::DataPollHandler::ChildInfo *this)
{
  return (*(this + 6) >> 6) & 1;
}

{
  return ot::DataPollHandler::ChildInfo::IsFramePurgePending(this);
}

uint64_t ot::Mac::TxFrame::IsHeaderUpdated(ot::Mac::TxFrame *this)
{
  return *(this + 45) & 1;
}

{
  return ot::Mac::TxFrame::IsHeaderUpdated(this);
}

uint64_t ot::DataPollHandler::ChildInfo::IncrementIndirectTxAttempts(uint64_t this)
{
  *(this + 6) = *(this + 6) & 0xE0 | ((*(this + 6) & 0x1F) + 1) & 0x1F;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::IncrementIndirectTxAttempts(this);
}

uint64_t ot::DataPollHandler::ChildInfo::IsFrameReplacePending(ot::DataPollHandler::ChildInfo *this)
{
  return (*(this + 6) >> 7) & 1;
}

{
  return ot::DataPollHandler::ChildInfo::IsFrameReplacePending(this);
}

BOOL ot::Mac::Frame::IsEmpty(ot::Mac::Frame *this)
{
  return *(this + 4) == 0;
}

{
  return ot::Mac::Frame::IsEmpty(this);
}

uint64_t ot::DataPollHandler::ChildInfo::SetIndirectDataSequenceNumber(uint64_t this, char a2)
{
  *(this + 5) = a2;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetIndirectDataSequenceNumber(this, a2);
}

uint64_t ot::Mac::Frame::GetSequence(ot::Mac::Frame *this)
{
  Psdu = ot::Mac::Frame::GetPsdu(this);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, v1);
  return *(Psdu + ot::Mac::Frame::GetFcfSize(FrameControlField, v3));
}

{
  return ot::Mac::Frame::GetSequence(this);
}

_DWORD *ot::DataPollHandler::ChildInfo::SetIndirectFrameCounter(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetIndirectFrameCounter(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::SetIndirectKeyId(uint64_t this, char a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetIndirectKeyId(this, a2);
}

void ot::DataPollHandler::Callbacks::HandleSentFrameToChild(ot::InstanceLocator *a1, ot::Mac::Frame *a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(a1);
  ot::IndirectSender::HandleSentFrameToChild(v5, a2, a3, a4, a5);
}

{
  ot::DataPollHandler::Callbacks::HandleSentFrameToChild(a1, a2, a3, a4, a5);
}

uint64_t ot::DataPollHandler::ChildInfo::IsDataPollPending(ot::DataPollHandler::ChildInfo *this)
{
  return (*(this + 6) >> 5) & 1;
}

{
  return ot::DataPollHandler::ChildInfo::IsDataPollPending(this);
}

uint64_t ot::Neighbor::GetLastHeard(ot::Neighbor *this)
{
  return *(this + 2);
}

{
  return ot::Neighbor::GetLastHeard(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::ResetCslTxAttempts(uint64_t this)
{
  *(this + 2) &= 0x80u;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::ResetCslTxAttempts(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::IndirectSender>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(a1);
}

uint64_t ot::Instance::Get<ot::IndirectSender>(uint64_t a1)
{
  return a1 + 90200;
}

{
  return ot::Instance::Get<ot::IndirectSender>(a1);
}

uint64_t ot::Mac::Frame::GetPsdu(ot::Mac::Frame *this)
{
  return *this;
}

{
  return *this;
}

{
  return ot::Mac::Frame::GetPsdu(this);
}

{
  return ot::Mac::Frame::GetPsdu(this);
}

uint64_t ot::Mac::Frame::GetFcfSize(ot::Mac::Frame *this, unsigned __int16 a2)
{
  if (ot::Mac::Frame::IsShortFcf(this))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

{
  return ot::Mac::Frame::GetFcfSize(this, a2);
}

uint64_t ot::Instance::Get<ot::SourceMatchController>(uint64_t a1)
{
  return a1 + 90201;
}

{
  return ot::Instance::Get<ot::SourceMatchController>(a1);
}

ot::DataPollSender *ot::DataPollSender::DataPollSender(ot::DataPollSender *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Time::Time(this, 0);
  ot::Time::Time((this + 4), 0);
  ot::Time::Time((this + 8), 0);
  *(this + 4) = 0;
  *(this + 5) &= 0xFC000000;
  *(this + 5) &= 0x3FFFFFFu;
  ot::TimerMilliIn<ot::DataPollSender,&ot::DataPollSender::HandlePollTimer>::TimerMilliIn((this + 24), a2);
  result = this;
  *(this + 24) &= ~1u;
  *(this + 24) &= ~2u;
  *(this + 24) &= ~4u;
  *(this + 24) &= 0xFF87u;
  *(this + 24) &= 0xF0FFu;
  *(this + 24) &= 0xFFFu;
  return result;
}

{
  ot::DataPollSender::DataPollSender(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::DataPollSender,&ot::DataPollSender::HandlePollTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::DataPollSender,&ot::DataPollSender::HandlePollTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::DataPollSender,&ot::DataPollSender::HandlePollTimer>::HandleTimer);
  return a1;
}

ot::Neighbor *ot::DataPollSender::GetParent(ot::DataPollSender *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ParentCandidate = ot::Mle::Mle::GetParentCandidate(v1);
  if (ot::Neighbor::IsStateValid(ParentCandidate))
  {
    return ParentCandidate;
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  return ot::Mle::Mle::GetParent(v2);
}

uint64_t ot::Mle::Mle::GetParentCandidate(ot::Mle::Mle *this)
{
  return this + 368;
}

{
  return ot::Mle::Mle::GetParentCandidate(this);
}

BOOL ot::Neighbor::IsStateValid(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 7;
}

{
  return ot::Neighbor::IsStateValid(this);
}

void ot::DataPollSender::StartPolling(ot::InstanceLocator *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::IsRxOnWhenIdle(v1))
    {
      __assert_rtn("StartPolling", "data_poll_sender.cpp", 86, "!Get<Mle::MleRouter>().IsRxOnWhenIdle()");
    }

    *(this + 24) = *(this + 24) & 0xFFFE | 1;
    ot::DataPollSender::ScheduleNextPoll(this, 1);
  }
}

BOOL ot::Mle::Mle::IsRxOnWhenIdle(ot::Mle::Mle *this)
{
  return ot::Mle::DeviceMode::IsRxOnWhenIdle((this + 131));
}

{
  return ot::Mle::Mle::IsRxOnWhenIdle(this);
}

void ot::DataPollSender::ScheduleNextPoll(ot::DataPollSender *a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v8 = a1;
  v12 = *(a1 + 4);
  if (a2 == 1)
  {
    a1 = ot::DataPollSender::CalculatePollPeriod(a1);
    *(v8 + 4) = a1;
  }

  Now = ot::TimerMilli::GetNow(a1);
  v13 = Now;
  if (ot::Timer::IsRunning((v8 + 24)))
  {
    if (v12 != *(v8 + 4))
    {
      v10 = ot::Time::operator+(v8, *(v8 + 4));
      v9 = ot::Time::operator+(&v13, 10);
      if (ot::Time::operator<(&v10, &v9))
      {
        ot::TimerMilli::StartAt((v8 + 24), v13, 0xAu);
      }

      else
      {
        ot::TimerMilli::StartAt((v8 + 24), *v8, *(v8 + 4));
      }
    }
  }

  else
  {
    *v8 = v13;
    ot::TimerMilli::StartAt((v8 + 24), *v8, *(v8 + 4));
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: oldPeriod: %d, mPollPeriod: %d", v2, v3, v4, v5, v6, v7, "ScheduleNextPoll", v12, *(v8 + 4));
}

uint64_t ot::DataPollSender::StopPolling(ot::DataPollSender *this)
{
  result = ot::TimerMilli::Stop((this + 24));
  *(this + 24) &= ~2u;
  *(this + 24) &= ~4u;
  *(this + 24) &= 0xFF87u;
  *(this + 24) &= 0xF0FFu;
  *(this + 24) &= 0xFFFu;
  *(this + 5) &= 0x3FFFFFFu;
  *(this + 24) &= ~1u;
  return result;
}

uint64_t ot::DataPollSender::SendDataPoll(ot::DataPollSender *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 24))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::GetRxOnWhenIdle(v8))
    {
      v20 = 13;
    }

    else
    {
      Parent = ot::DataPollSender::GetParent(this);
      if (ot::Neighbor::IsStateValidOrRestoring(Parent))
      {
        ot::TimerMilli::Stop((this + 24));
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v20 = ot::Mac::Mac::RequestDataPollTransmission(v10);
      }

      else
      {
        v20 = 13;
      }
    }
  }

  else
  {
    v20 = 13;
  }

  if (v20)
  {
    if (v20 == 13)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("DataPollSender", "Data poll tx requested while data polling was not enabled!", a3, a4, a5, a6, a7, a8);
      ot::DataPollSender::StopPolling(this);
    }

    else
    {
      v11 = ot::ErrorToString(v20);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("DataPollSender", "Unexpected error %s requesting data poll", v12, v13, v14, v15, v16, v17, v11);
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("DataPollSender", "Sending data poll", a3, a4, a5, a6, a7, a8);
    ot::DataPollSender::ScheduleNextPoll(this, 0);
  }

  return v20;
}

uint64_t ot::Mac::Mac::GetRxOnWhenIdle(ot::Mac::Mac *this)
{
  return (*this >> 2) & 1;
}

{
  return ot::Mac::Mac::GetRxOnWhenIdle(this);
}

uint64_t ot::DataPollSender::GetPollDestinationAddress(ot::DataPollSender *this, ot::Mac::Address *a2)
{
  v9 = 0;
  Parent = ot::DataPollSender::GetParent(this);
  if (ot::Neighbor::IsStateValidOrRestoring(Parent))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::GetShortAddress(v2) == 65534 || (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this), Parent == ot::Mle::Mle::GetParentCandidate(v3)))
    {
      ot::Neighbor::GetExtAddress(Parent);
      ot::Mac::Address::SetExtended(a2, v4);
    }

    else
    {
      Rloc16 = ot::Neighbor::GetRloc16(Parent);
      ot::Mac::Address::SetShort(a2, Rloc16);
    }
  }

  else
  {
    return 11;
  }

  return v9;
}

uint64_t ot::Mac::Address::SetShort(uint64_t this, __int16 a2)
{
  *this = a2;
  *(this + 8) = 1;
  return this;
}

{
  return ot::Mac::Address::SetShort(this, a2);
}

uint64_t ot::DataPollSender::SetExternalPollPeriod(ot::DataPollSender *this, unsigned int a2)
{
  v5 = a2;
  v4 = 0;
  if (a2)
  {
    if (a2 < 0xA)
    {
      return 7;
    }

    v5 = ot::Min<unsigned int>(a2, 0x3FFFFFFu);
  }

  if ((*(this + 5) & 0x3FFFFFF) != v5)
  {
    *(this + 5) = *(this + 5) & 0xFC000000 | v5 & 0x3FFFFFF;
    if (*(this + 24))
    {
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }

  return v4;
}

uint64_t ot::DataPollSender::GetKeepAlivePollPeriod(ot::DataPollSender *this)
{
  DefaultPollPeriod = ot::DataPollSender::GetDefaultPollPeriod(this);
  if ((*(this + 5) & 0x3FFFFFF) != 0)
  {
    return ot::Min<unsigned int>(DefaultPollPeriod, *(this + 5) & 0x3FFFFFF);
  }

  return DefaultPollPeriod;
}

uint64_t ot::DataPollSender::GetDefaultPollPeriod(ot::DataPollSender *this)
{
  v21 = 4000;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Timeout = ot::Mle::Mle::GetTimeout(v1);
  v2 = ot::Time::MsecToSec(0x7FFFFFFF);
  v3 = ot::Min<unsigned int>(Timeout, v2);
  v20 = ot::Time::SecToMsec(v3);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  if (ot::Mac::Mac::IsCslEnabled(v4))
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    CslTimeout = ot::Mle::Mle::GetCslTimeout(v5);
    v7 = ot::Time::SecToMsec(CslTimeout);
    v20 = ot::Min<unsigned int>(v20, v7);
    v21 = 1000;
  }

  if (v20 > v21)
  {
    v20 -= v21;
  }

  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  v17 = ot::Mle::Mle::GetTimeout(v8);
  v9 = ot::Time::MsecToSec(0x7FFFFFFF);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: period - %u, timeout - %u, pollAhead - %u, delay = %u", v10, v11, v12, v13, v14, v15, "GetDefaultPollPeriod", v20, v17, v21, v9);
  return v20;
}

void ot::DataPollSender::HandlePollSent(uint64_t a1, ot::Mac::Frame *a2, int a3)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  ot::Mac::Address::Address(v29);
  v28 = 0;
  v27 = 4;
  ot::Time::Time(&v26, 0);
  v25 = 0;
  if (*(a1 + 48))
  {
    if (!ot::Mac::Frame::IsEmpty(v31))
    {
      ot::Mac::Frame::GetDstAddr(v31, v29);
      IgnoreError();
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
      ot::MeshForwarder::UpdateNeighborOnSentFrame(v3, v31, v30, v29, 1);
    }

    Parent = ot::DataPollSender::GetParent(a1);
    if (ot::Neighbor::IsStateInvalid(Parent))
    {
      ot::DataPollSender::StopPolling(a1);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      ot::Mle::Mle::BecomeDetached(v5);
      IgnoreError();
    }

    else
    {
      if (v30)
      {
        if (v30 == 11 || v30 == 15 || v30 == 29)
        {
          *(a1 + 48) = *(a1 + 48) & 0xFFFB | 4;
          v28 = 1;
        }

        else
        {
          *(a1 + 48) = *(a1 + 48) & 0xF0FF | ((((HIBYTE(*(a1 + 48)) & 0xF) + 1) & 0xF) << 8);
          ot::Mac::Frame::GetHeaderIe(v31, 0x1Au);
          v14 = 15;
          if (!v13)
          {
            v14 = 4;
          }

          v27 = v14;
          v15 = ot::ErrorToString(v30);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "Failed to send data poll, error:%s, retx:%d/%d", v16, v17, v18, v19, v20, v21, v15, HIBYTE(*(a1 + 48)) & 0xF, v27);
          if (v27 <= (HIBYTE(*(a1 + 48)) & 0xF))
          {
            *(a1 + 48) &= ~4u;
            *(a1 + 48) &= 0xF0FFu;
            v28 = 1;
          }

          else if ((*(a1 + 48) & 4) == 0)
          {
            *(a1 + 48) = *(a1 + 48) & 0xFFFB | 4;
            v28 = 1;
          }
        }
      }

      else
      {
        if (*(a1 + 48) >> 12)
        {
          *(a1 + 48) = *(a1 + 48) & 0xFFF | ((((*(a1 + 48) >> 12) - 1) & 0xF) << 12);
          if (!(*(a1 + 48) >> 12))
          {
            v28 = 1;
            *(a1 + 20) &= 0x3FFFFFFu;
          }
        }

        if ((*(a1 + 48) & 4) != 0)
        {
          *(a1 + 48) &= ~4u;
          *(a1 + 48) &= 0xF0FFu;
          v28 = 1;
        }

        isThreadAlwaysOnFeatureEnabled = ot::DataPollSender::isThreadAlwaysOnFeatureEnabled(a1);
        if (isThreadAlwaysOnFeatureEnabled)
        {
          Now = ot::TimerMilli::GetNow(isThreadAlwaysOnFeatureEnabled);
          v26 = Now;
          ot::Time::Time(&v23, 0);
          if (ot::Time::operator==((a1 + 8), &v23))
          {
            *(a1 + 8) = v26;
          }

          v25 = ot::Time::operator-(&v26, (a1 + 8));
          if (v25 > 0x2710)
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: time since last successful TX: %u, switching to slow poll period from %d to %d", v7, v8, v9, v10, v11, v12, "HandlePollSent", v25, *(a1 + 20) & 0x3FFFFFF, 10000);
            ot::DataPollSender::SetExternalPollPeriod(a1, 0x2710u);
          }
        }
      }

      if (v28)
      {
        ot::DataPollSender::ScheduleNextPoll(a1, 1);
      }
    }
  }
}

BOOL ot::Neighbor::IsStateInvalid(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 0;
}

{
  return ot::Neighbor::IsStateInvalid(this);
}

void ot::Mac::Frame::GetHeaderIe(ot::Mac::Frame *this, unsigned __int8 a2)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetHeaderIe(v2, a2);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Mac::Frame::GetHeaderIe(this, a2);
}

void ot::DataPollSender::HandlePollTimeout(ot::DataPollSender *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 24))
  {
    *(this + 24) = *(this + 24) & 0xFF87 | (8 * ((((*(this + 24) >> 3) & 0xF) + 1) & 0xF));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "Data poll timeout, retry:%d/%d", a3, a4, a5, a6, a7, a8, (*(this + 24) >> 3) & 0xF, 5);
    if (((*(this + 24) >> 3) & 0xFu) < 5)
    {
      ot::DataPollSender::addB2BDataPollDelay(this, v8, v9, v10, v11, v12, v13, v14);
    }

    else
    {
      *(this + 24) &= 0xFF87u;
    }
  }
}

void ot::DataPollSender::addB2BDataPollDelay(ot::DataPollSender *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = this;
  if (*(this + 24))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: Add delay %d, session priority %d", a3, a4, a5, a6, a7, a8, "addB2BDataPollDelay", *(this + 12), *(this + 13));
    Now = ot::TimerMilli::GetNow(v8);
    v20 = Now;
    ot::TimerMilli::Stop((this + 24));
    if (*(this + 12))
    {
      v18 = ot::Time::operator+(this + 1, *(this + 12));
      v17 = ot::Time::operator+(&v20, 10);
      if (ot::Time::operator<(&v18, &v17))
      {
        ot::TimerMilli::StartAt((this + 24), v20, 0xAu);
      }

      else
      {
        ot::TimerMilli::StartAt((this + 24), *(this + 1), *(this + 12));
      }
    }

    else
    {
      ot::DataPollSender::SendDataPoll(this, v9, v10, v11, v12, v13, v14, v15);
      IgnoreError();
    }
  }
}

void ot::DataPollSender::ProcessRxFrame(ot::DataPollSender *this, const ot::Mac::RxFrame *a2)
{
  if (*(this + 24))
  {
    *(this + 24) &= 0xFF87u;
    if (ot::Mac::Frame::GetFramePending(a2, a2))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      if (ot::Mac::Mac::IsCslEnabled(v2))
      {
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        IsCslEnabled = ot::Mac::Mac::IsCslEnabled(v16);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: DataPollSender::ProcessRxFrame FramePending bit set in Rx Frame, but suppressing as CSL is enabled %d", v18, v19, v20, v21, v22, v23, "ProcessRxFrame", IsCslEnabled);
      }

      else
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: DataPollSender::ProcessRxFrame FramePending bit set in Rx Frame", v3, v4, v5, v6, v7, v8, "ProcessRxFrame");
        ot::DataPollSender::addB2BDataPollDelay(this, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

BOOL ot::Mac::Frame::GetFramePending(ot::Mac::Frame *this, unsigned __int16 a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  return ot::Mac::Frame::IsFramePending(FrameControlField, v3, v4, v5);
}

{
  return ot::Mac::Frame::GetFramePending(this, a2);
}

void ot::DataPollSender::ProcessTxDone(uint64_t a1, ot::Mac::Frame *a2, ot::Mac::Frame *a3, int a4)
{
  v45 = a1;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v41 = 0;
  if (*(a1 + 48))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
    Parent = ot::Mle::Mle::GetParent(v4);
    if (ot::Neighbor::IsEnhancedKeepAliveSupported(Parent) && ot::Mac::Frame::GetSecurityEnabled(v44, v6))
    {
      if ((*(v44 + 45) & 2) != 0 && ot::Mac::Frame::GetHeaderIe(v44, 0x1Au))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: For retransmission frame, use a data poll to resync its parent with correct CSL phase", v8, v9, v10, v11, v12, v13, "ProcessTxDone");
        v41 = 1;
      }

      if (!v42 && v43)
      {
        *(a1 + 48) &= 0xFF87u;
        if (ot::Mac::Frame::GetFramePending(v43, v7))
        {
          v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
          if (ot::Mac::Mac::IsCslEnabled(v14))
          {
            v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
            IsCslEnabled = ot::Mac::Mac::IsCslEnabled(v21);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: FramePending bit set in ACK, but suppressing as CSL is enabled %d", v23, v24, v25, v26, v27, v28, "ProcessTxDone", IsCslEnabled);
          }

          else
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: FramePending bit set in ACK", v15, v16, v17, v18, v19, v20, "ProcessTxDone");
            v41 = 1;
          }
        }

        else
        {
          v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
          if (!ot::Mac::Mac::IsCslEnabled(v29))
          {
            ot::DataPollSender::SendFastPolls(a1, 0xAu);
          }

          ot::DataPollSender::ResetKeepAliveTimer(a1);
        }

        isThreadAlwaysOnFeatureEnabled = ot::DataPollSender::isThreadAlwaysOnFeatureEnabled(a1);
        if (isThreadAlwaysOnFeatureEnabled)
        {
          Now = ot::TimerMilli::GetNow(isThreadAlwaysOnFeatureEnabled);
          ot::Time::Time(&v39, 0);
          if (ot::Time::operator==((a1 + 8), &v39))
          {
            *(a1 + 8) = Now;
          }

          v31 = ot::Time::operator-(&Now, (a1 + 8));
          if ((*(a1 + 20) & 0x3FFFFFFu) > 0x1C2)
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: time since last successful TX: %u, switching to poll period from %d to %d", v32, v33, v34, v35, v36, v37, "ProcessTxDone", v31, *(a1 + 20) & 0x3FFFFFF, 450);
            v31 = ot::DataPollSender::SetExternalPollPeriod(a1, 0x1C2u);
          }

          *(a1 + 8) = ot::TimerMilli::GetNow(v31);
        }
      }

      if (v41)
      {
        ot::DataPollSender::addB2BDataPollDelay(a1, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }
}

BOOL ot::Neighbor::IsEnhancedKeepAliveSupported(ot::Neighbor *this)
{
  v2 = 0;
  if ((*(this + 30) & 0xF) != 0)
  {
    return *(this + 18) >= 3u;
  }

  return v2;
}

{
  return ot::Neighbor::IsEnhancedKeepAliveSupported(this);
}

void ot::DataPollSender::SendFastPolls(ot::DataPollSender *this, unsigned __int8 a2)
{
  v4 = *(this + 24) >> 12 == 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (!ot::Mle::Mle::IsSleepyRouter(v2))
  {
    if (*(this + 5) >> 26 != 63)
    {
      *(this + 5) = *(this + 5) & 0x3FFFFFF | ((((*(this + 5) >> 26) + 1) & 0x3F) << 26);
    }

    if (!a2)
    {
      a2 = 8;
    }

    v6 = ot::Min<unsigned char>(a2, 0xFu);
    *(this + 24) = *(this + 24) & 0xFFF | ((ot::Max<unsigned char>(*(this + 24) >> 12, v6) & 0xF) << 12);
    if ((*(this + 24) & 1) != 0 && v4)
    {
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }
}

uint64_t ot::DataPollSender::ResetKeepAliveTimer(ot::DataPollSender *this)
{
  result = ot::Timer::IsRunning((this + 24));
  if (result)
  {
    v2 = *(this + 4);
    result = ot::DataPollSender::GetDefaultPollPeriod(this);
    if (v2 == result)
    {
      *this = ot::TimerMilli::GetNow(result);
      return ot::TimerMilli::StartAt((this + 24), *this, *(this + 4));
    }
  }

  return result;
}

void ot::DataPollSender::RecalculatePollPeriod(ot::DataPollSender *this)
{
  if (*(this + 24))
  {
    ot::DataPollSender::ScheduleNextPoll(this, 1);
  }
}

void ot::DataPollSender::SetAttachMode(ot::DataPollSender *this, char a2)
{
  if (((*(this + 24) & 2) != 0) != (a2 & 1))
  {
    *(this + 24) = *(this + 24) & 0xFFFD | (2 * (a2 & 1));
    if (*(this + 24))
    {
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }
}

BOOL ot::Mle::Mle::IsSleepyRouter(ot::Mle::Mle *this)
{
  return !ot::Mle::Mle::IsRxOnWhenIdle(this) && ot::Mle::Mle::IsFullThreadDevice(this);
}

{
  return ot::Mle::Mle::IsSleepyRouter(this);
}

uint64_t ot::Min<unsigned char>(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >= a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

{
  return ot::Min<unsigned char>(a1, a2);
}

uint64_t ot::Max<unsigned char>(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >= a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

{
  return ot::Max<unsigned char>(a1, a2);
}

void ot::DataPollSender::StopFastPolls(uint64_t this)
{
  if (*(this + 20) >> 26 && *(this + 20) >> 26 != 63)
  {
    *(this + 20) = *(this + 20) & 0x3FFFFFF | ((((*(this + 20) >> 26) - 1) & 0x3F) << 26);
    if (!(*(this + 20) >> 26))
    {
      *(this + 48) &= 0xFFFu;
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }
}

uint64_t ot::DataPollSender::CalculatePollPeriod(ot::DataPollSender *this)
{
  DefaultPollPeriod = ot::DataPollSender::GetDefaultPollPeriod(this);
  if ((*(this + 24) & 2) != 0)
  {
    DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, 0x64u);
  }

  if ((*(this + 24) & 4) != 0)
  {
    DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, 0x3E8u);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::GetCslPeriodInMsec(v7))
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      CslPeriodInMsec = ot::Mac::Mac::GetCslPeriodInMsec(v8);
      DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, CslPeriodInMsec);
    }
  }

  if (*(this + 24) >> 12)
  {
    DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, 0x64u);
  }

  if ((*(this + 5) & 0x3FFFFFF) != 0)
  {
    DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, *(this + 5) & 0x3FFFFFF);
  }

  if (!DefaultPollPeriod)
  {
    DefaultPollPeriod = 10;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: period: %d, mAttachMode:%d/ kAttachDataPollPeriod: %d, mRetxMode:%d/ kRetxPollPeriod: %d, mRemainingFastPolls:%d/ kFastPollPeriod: %d, mExternalPollPeriod: %d, kMinPollPeriod: %d", v1, v2, v3, v4, v5, v6, "CalculatePollPeriod", DefaultPollPeriod, (*(this + 24) & 2) != 0, 100, (*(this + 24) & 4) != 0, 1000, *(this + 24) >> 12, 100, *(this + 5) & 0x3FFFFFF, 10);
  return DefaultPollPeriod;
}

ot::Mac::Frame *ot::DataPollSender::PrepareDataRequest(ot::DataPollSender *this, ot::Mac::TxFrame **a2)
{
  v18 = this;
  v17 = a2;
  TxFrame = 0;
  ot::Mac::Addresses::Addresses(v14);
  ot::Mac::PanIds::PanIds(v13);
  if (!ot::DataPollSender::GetPollDestinationAddress(this, v15))
  {
    TxFrame = ot::Mac::TxFrames::GetTxFrame(v17);
    if (ot::Mac::Address::IsExtended(v15))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v2);
      ot::Mac::Address::SetExtended(v14, ExtAddress);
    }

    else
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ShortAddress = ot::Mac::Mac::GetShortAddress(v4);
      ot::Mac::Address::SetShort(v14, ShortAddress);
    }

    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    PanId = ot::Mac::Mac::GetPanId(v6);
    ot::Mac::PanIds::SetBothSourceDestination(v13, PanId);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::PrepareMacHeaders(v8, TxFrame, 3, v14, v13, 5, 8, 0);
    ot::Mac::Frame::GetHeaderIe(TxFrame, 0x1Au);
    if (v9)
    {
      ot::Mac::TxFrames::SetMaxFrameRetries(v17, 0);
    }

    ot::Mac::Frame::SetCommandId(TxFrame, 4);
    IgnoreError();
    *(this + 1) = ot::TimerMilli::GetNow(v10);
  }

  return TxFrame;
}

ot::Mac::Addresses *ot::Mac::Addresses::Addresses(ot::Mac::Addresses *this)
{
  ot::Mac::Addresses::Addresses(this);
  return this;
}

{
  ot::Mac::Address::Address(this);
  ot::Mac::Address::Address((this + 10));
  return this;
}

ot::Mac::PanIds *ot::Mac::PanIds::PanIds(ot::Mac::PanIds *this)
{
  ot::Mac::PanIds::PanIds(this);
  return this;
}

{
  ot::Clearable<ot::Mac::PanIds>::Clear(this);
  return this;
}

uint64_t ot::Mac::TxFrames::SetMaxFrameRetries(ot::Mac::TxFrame **this, char a2)
{
  return ot::Mac::TxFrame::SetMaxFrameRetries(*this, a2);
}

{
  return ot::Mac::TxFrames::SetMaxFrameRetries(this, a2);
}

BOOL ot::Mac::Frame::IsFramePending(ot::Mac::Frame *this, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  return ot::Mac::Frame::GetFcfBit(this, 0x10u, 2048) != 0;
}

{
  return ot::Mac::Frame::IsFramePending(this, a2, a3, a4);
}

BOOL ot::Mle::Mle::IsFullThreadDevice(ot::Mle::Mle *this)
{
  return ot::Mle::DeviceMode::IsFullThreadDevice((this + 131));
}

{
  return ot::Mle::Mle::IsFullThreadDevice(this);
}

BOOL ot::Mle::DeviceMode::IsFullThreadDevice(ot::Mle::DeviceMode *this)
{
  return (*this & 2) != 0;
}

{
  return ot::Mle::DeviceMode::IsFullThreadDevice(this);
}

uint64_t ot::Clearable<ot::Mac::PanIds>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::Mac::PanIds>(a1);
}

{
  return ot::Clearable<ot::Mac::PanIds>::Clear(a1);
}

uint64_t ot::ClearAllBytes<ot::Mac::PanIds>(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mac::PanIds>(result);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::DataPollSender>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
}

ot::Mac::LinkRaw *ot::Mac::LinkRaw::LinkRaw(ot::Mac::LinkRaw *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 11;
  *(this + 1) = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = ot::Instance::Get<ot::Mac::SubMac>(a2);
  ot::Mac::LinkRaw::Init(this);
  return this;
}

{
  ot::Mac::LinkRaw::LinkRaw(this, a2);
  return this;
}

uint64_t ot::Mac::LinkRaw::Init(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *this = 11;
  *(this + 2) = -1;
  *(this + 8) = 0;
  return this;
}

uint64_t ot::Mac::LinkRaw::SetReceiveDone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[4] = 0;
  *v13 = a2 != 0;
  v8 = "true";
  if (!a2)
  {
    v8 = "false";
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkRaw", "Enabled(%s)", a3, a4, a5, a6, a7, a8, v8);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  if (ot::ThreadNetif::IsUp(v9))
  {
    *&v13[1] = 13;
  }

  else if ((v13[0] & 1) != 0 || !ot::Mac::SubMac::IsTransmittingOrScanning(*(a1 + 32)))
  {
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    ot::Mac::Mac::SetEnabled(v10, (v13[0] ^ 1) & 1);
    *(a1 + 8) = a2;
  }

  else
  {
    *&v13[1] = 5;
  }

  return *&v13[1];
}

BOOL ot::Mac::SubMac::IsTransmittingOrScanning(ot::Mac::SubMac *this)
{
  v2 = 1;
  if (*(this + 2) != 4)
  {
    return *(this + 2) == 5;
  }

  return v2;
}

{
  return ot::Mac::SubMac::IsTransmittingOrScanning(this);
}

uint64_t ot::Mac::LinkRaw::SetPanId(ot::Mac::SubMac **this, unsigned __int16 a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetPanId(this[4], a2);
    *(this + 1) = a2;
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::SetChannel(ot::Mac::LinkRaw *this, char a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    *this = a2;
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::SetExtAddress(ot::Mac::SubMac **this, const ot::Mac::ExtAddress *a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetExtAddress(this[4], a2);
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::SetShortAddress(ot::Mac::SubMac **this, __int16 a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetShortAddress(this[4], a2);
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::SetAlternateShortAddress(ot::Mac::SubMac **this, unsigned __int16 a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetAlternateShortAddress(this[4], a2);
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::Receive(ot::Mac::SubMac **this)
{
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    return ot::Mac::SubMac::Receive(this[4], *this);
  }

  else
  {
    return 13;
  }
}

void ot::Mac::LinkRaw::InvokeReceiveDone(ot::InstanceLocator *a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v12 = *(a2 + 8);
  }

  else
  {
    v12 = 0;
  }

  v3 = ot::ErrorToString(a3);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkRaw", "ReceiveDone(%d bytes), error:%s", v4, v5, v6, v7, v8, v9, v12, v3);
  if (*(a1 + 1))
  {
    if (!a3)
    {
      v11 = *(a1 + 1);
      Instance = ot::InstanceLocator::GetInstance(a1);
      v11(Instance, a2, 0);
    }
  }
}

uint64_t ot::Mac::LinkRaw::Transmit(uint64_t a1, uint64_t a2)
{
  if (ot::Mac::LinkRaw::IsEnabled(a1))
  {
    v4 = ot::Mac::SubMac::Send(*(a1 + 32));
    if (!v4)
    {
      *(a1 + 16) = a2;
    }
  }

  else
  {
    return 13;
  }

  return v4;
}

void ot::Mac::LinkRaw::InvokeTransmitDone(ot::InstanceLocator *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = *(a2 + 8);
  v4 = ot::ErrorToString(a4);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkRaw", "LinkRaw::TransmitDone(%d bytes), error:%s", v5, v6, v7, v8, v9, v10, v13, v4);
  if (*(a1 + 2))
  {
    v12 = *(a1 + 2);
    Instance = ot::InstanceLocator::GetInstance(a1);
    v12(Instance, a2, a3, a4);
    *(a1 + 2) = 0;
  }
}

uint64_t ot::Mac::LinkRaw::EnergyScan(uint64_t a1, unsigned __int8 a2, unsigned __int16 a3, uint64_t a4)
{
  if (ot::Mac::LinkRaw::IsEnabled(a1))
  {
    v6 = ot::Mac::SubMac::EnergyScan(*(a1 + 32), a2, a3);
    if (!v6)
    {
      *(a1 + 24) = a4;
    }
  }

  else
  {
    return 13;
  }

  return v6;
}

uint64_t ot::Mac::LinkRaw::InvokeEnergyScanDone(ot::Mac::LinkRaw *this, char a2)
{
  result = ot::Mac::LinkRaw::IsEnabled(this);
  if (result)
  {
    if (*(this + 3))
    {
      v4 = *(this + 3);
      Instance = ot::InstanceLocator::GetInstance(this);
      result = v4(Instance, a2);
      *(this + 3) = 0;
    }
  }

  return result;
}

uint64_t ot::Mac::LinkRaw::SetMacKey(ot::Mac::SubMac **this, unsigned __int8 a2, unsigned __int8 a3, __n128 *a4, __n128 *a5, __n128 *a6)
{
  v8 = 0;
  ot::Mac::KeyMaterial::KeyMaterial(&v16);
  ot::Mac::KeyMaterial::KeyMaterial(&v15);
  ot::Mac::KeyMaterial::KeyMaterial(&v14);
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::KeyMaterial::SetFrom(&v16, a4);
    ot::Mac::KeyMaterial::SetFrom(&v15, a5);
    ot::Mac::KeyMaterial::SetFrom(&v14, a6);
    ot::Mac::SubMac::SetMacKey(this[4], a2, a3, &v16, &v15, &v14);
  }

  else
  {
    return 13;
  }

  return v8;
}

ot::Mac::KeyMaterial *ot::Mac::KeyMaterial::KeyMaterial(ot::Mac::KeyMaterial *this)
{
  ot::Mac::KeyMaterial::KeyMaterial(this);
  return this;
}

{
  ot::Mac::KeyMaterial::GetKey(this);
  ot::Clearable<ot::Mac::Key>::Clear(v1);
  return this;
}

uint64_t ot::Mac::LinkRaw::SetMacFrameCounter(ot::Mac::SubMac **this, unsigned int a2, char a3)
{
  v5 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetFrameCounter(this[4], a2, a3 & 1);
  }

  else
  {
    return 13;
  }

  return v5;
}

void ot::Mac::LinkRaw::RecordFrameTransmitStatus(uint64_t result, ot::Mac::TxFrame *a2, int a3, unsigned __int8 a4, char a5)
{
  v19 = result;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  if (a3)
  {
    v13 = ot::ErrorToString(v17);
    MaxFrameRetries = ot::Mac::TxFrame::GetMaxFrameRetries(v18);
    v12 = v20;
    ot::Mac::Frame::ToInfoString(v18, v20);
    v5 = ot::String<(unsigned short)150>::AsCString(v20);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("LinkRaw", "Frame tx failed, error:%s, retries:%d/%d, %s", v6, v7, v8, v9, v10, v11, v13, v16, MaxFrameRetries, v5);
  }
}

uint64_t ot::Mac::TxFrame::GetMaxFrameRetries(ot::Mac::TxFrame *this)
{
  return *(this + 41);
}

{
  return ot::Mac::TxFrame::GetMaxFrameRetries(this);
}

void ot::Mac::KeyMaterial::GetKey(ot::Mac::KeyMaterial *this)
{
  ;
}

{
  ;
}

{
  ot::Mac::KeyMaterial::GetKey(this);
}

{
  ot::Mac::KeyMaterial::GetKey(this);
}

void *ot::Clearable<ot::Mac::Key>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Mac::Key>(a1);
}

{
  return ot::Clearable<ot::Mac::Key>::Clear(a1);
}

void *ot::ClearAllBytes<ot::Mac::Key>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mac::Key>(result);
}

void ot::Mac::Mac::RequestWakeupFrameTransmission(ot::Mac::Mac *this)
{
  if (ot::Mac::Mac::IsEnabled(this))
  {
    ot::Mac::Mac::StartOperation(this, 9u);
  }
}

void ot::Mac::Mac::PerformNextOperation(uint64_t this)
{
  if (!*(this + 1))
  {
    if ((ot::Mac::Mac::IsEnabled(this) & 1) == 0)
    {
      *(this + 2) = 0;
      ot::TimerMilli::Stop((this + 312));
      return;
    }

    if (ot::Mac::Mac::IsPending(this, 6))
    {
      *(this + 1) = 6;
    }

    else if (ot::Mac::Mac::IsPending(this, 9))
    {
      *(this + 1) = 9;
    }

    else if (ot::Mac::Mac::IsPending(this, 8))
    {
      *(this + 1) = 8;
    }

    else if (ot::Mac::Mac::IsPending(this, 1))
    {
      *(this + 1) = 1;
    }

    else if (ot::Mac::Mac::IsPending(this, 2))
    {
      *(this + 1) = 2;
    }

    else if (ot::Mac::Mac::IsPending(this, 3))
    {
      *(this + 1) = 3;
    }

    else if (ot::Mac::Mac::IsPending(this, 7))
    {
      *(this + 1) = 7;
    }

    else if (ot::Mac::Mac::IsPending(this, 5) && (!ot::Mac::Mac::IsPending(this, 4) || (*this & 2) != 0))
    {
      *(this + 1) = 5;
    }

    else if (ot::Mac::Mac::IsPending(this, 4))
    {
      *(this + 1) = 4;
      if (ot::Mac::Mac::IsPending(this, 5))
      {
        *this = *this & 0xFD | 2;
      }
    }

    if (*(this + 1))
    {
      ot::Mac::Mac::ClearPending(this, *(this + 1));
      v1 = ot::Mac::Mac::OperationToString(*(this + 1));
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Starting operation %s pendOp:0x%x", v2, v3, v4, v5, v6, v7, v1, *(this + 2));
      ot::TimerMilli::Stop((this + 312));
    }

    v14 = *(this + 1);
    if (!*(this + 1))
    {
      ot::Mac::Mac::UpdateIdleMode(this);
      return;
    }

    if (v14 == 1)
    {
      ot::Mac::Mac::PerformActiveScan(this);
      return;
    }

    if (v14 == 2)
    {
      ot::Mac::Mac::PerformEnergyScan(this);
      return;
    }

    if ((v14 - 3) <= 2)
    {
      goto LABEL_37;
    }

    if (v14 == 6)
    {
      ot::Mac::Links::Receive((this + 56), *(this + 11));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "DataPollTimeout:%d Timer start", v8, v9, v10, v11, v12, v13, ot::Mac::kDataPollTimeoutCoex);
      ot::TimerMilli::Start((this + 312), ot::Mac::kDataPollTimeoutCoex);
      return;
    }

    if ((v14 - 7) <= 2)
    {
LABEL_37:
      ot::Mac::Mac::BeginTransmit(this);
    }
  }
}

void ot::Mac::Mac::HandleTimer(ot::Mac::Mac *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(this + 1);
  if (*(this + 1))
  {
    if (v17 == 1)
    {
      ot::Mac::Mac::PerformActiveScan(this);
    }

    else
    {
      if (v17 != 6)
      {
        __assert_rtn("HandleTimer", "mac.cpp", 2073, "false");
      }

      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Data poll timeout", a3, a4, a5, a6, a7, a8);
      ot::Mac::Mac::FinishOperation(this);
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
      ot::DataPollSender::HandlePollTimeout(v8, v9, v10, v11, v12, v13, v14, v15);
      ot::Mac::Mac::PerformNextOperation(this);
    }
  }

  else if (ot::Mac::Mac::IsPending(this, 8))
  {
    ot::Mac::Mac::PerformNextOperation(this);
  }
}

ot::Mac::Mac *ot::Mac::Mac::Mac(ot::Mac::Mac *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this &= ~1u;
  *this &= ~2u;
  *this &= ~4u;
  *this &= ~8u;
  *this &= ~0x10u;
  *this &= ~0x20u;
  *(this + 1) = 0;
  *(this + 1) = 0;
  Uint8 = ot::Random::NonCrypto::GetUint8(v2);
  *(this + 4) = Uint8;
  *(this + 5) = ot::Random::NonCrypto::GetUint8(Uint8);
  *(this + 6) = 0;
  *(this + 4) = -1;
  *(this + 10) = 11;
  *(this + 11) = 11;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  SupportedChannelMask = ot::Radio::GetSupportedChannelMask(v4);
  ot::Mac::ChannelMask::ChannelMask((this + 12), SupportedChannelMask);
  *(this + 16) = 11;
  *(this + 9) = 0;
  ot::Mac::ChannelMask::ChannelMask((this + 20));
  *(this + 24) = 15;
  *(this + 25) = 0;
  *(this + 26) = 1;
  ot::Time::Time((this + 28), -1);
  *(this + 32) = 0;
  *(this + 17) = 0;
  *(this + 36) = 11;
  *(this + 5) = 0;
  *(this + 6) = 0;
  ot::Mac::Links::Links((this + 56), a2);
  ot::TaskletIn<ot::Mac::Mac,&ot::Mac::Mac::PerformNextOperation>::TaskletIn((this + 296), a2);
  ot::TimerMilliIn<ot::Mac::Mac,&ot::Mac::Mac::HandleTimer>::TimerMilliIn((this + 312), a2);
  *(this + 130) = 0;
  *(this + 263) = 0;
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::CountHistogram(this + 732);
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::CountHistogram(this + 836);
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::CountHistogram(this + 940);
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(this + 1196);
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(this + 1252);
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(this + 1308);
  ot::Mac::Filter::Filter((this + 1364));
  ot::Mac::KeyMaterial::KeyMaterial((this + 1688));
  v20[7] = 21;
  v20[6] = -95;
  v20[5] = 87;
  v20[4] = -19;
  v20[3] = 94;
  v20[2] = -18;
  v20[1] = -1;
  v20[0] = -64;
  ot::Mac::ExtAddress::SetGroup(v20, 0);
  ot::Mac::ExtAddress::SetLocal(v20, 1);
  ot::Clearable<ot::SuccessRateTracker>::Clear(this + 262);
  ot::Mac::Mac::ResetCounters(this);
  ot::Mac::Mac::SetEnabled(this, 1);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  ot::KeyManager::UpdateKeyMaterial(v6);
  ot::Mac::Mac::SetPanId(this, *(this + 4));
  ot::Mac::ExtAddress::ToString(v20, v19);
  v7 = ot::String<(unsigned short)17>::AsCString(v19);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Random Generated RadioExtAddress: %s", v8, v9, v10, v11, v12, v13, v7);
  ot::Mac::Mac::SetExtAddress(this, v20);
  ShortAddress = ot::Mac::Mac::GetShortAddress(this);
  ot::Mac::Mac::SetShortAddress(this, ShortAddress);
  ot::Mac::Mac::SetAlternateShortAddress(this, 0xFFFEu);
  ot::AsCoreType<otMacKey>(&ot::Mac::Mac::Mac(ot::Instance &)::sMode2Key);
  ot::Mac::KeyMaterial::SetFrom((this + 1688), v15);
  return this;
}

{
  ot::Mac::Mac::Mac(this, a2);
  return this;
}

uint64_t ot::Radio::GetSupportedChannelMask(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetSupportedChannelMask();
}

{
  return ot::Radio::GetSupportedChannelMask(this);
}

ot::InstanceLocator *ot::TaskletIn<ot::Mac::Mac,&ot::Mac::Mac::PerformNextOperation>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::Mac::Mac,&ot::Mac::Mac::PerformNextOperation>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::Mac::Mac,&ot::Mac::Mac::PerformNextOperation>::HandleTasklet);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mac::Mac,&ot::Mac::Mac::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mac::Mac,&ot::Mac::Mac::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mac::Mac,&ot::Mac::Mac::HandleTimer>::HandleTimer);
  return a1;
}

void *ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::CountHistogram(void *a1)
{
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::CountHistogram(a1);
  return a1;
}

{
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Clear(a1);
  return a1;
}

void *ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::CountHistogram(void *a1)
{
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::CountHistogram(a1);
  return a1;
}

{
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Clear(a1);
  return a1;
}

void *ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(void *a1)
{
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(a1);
  return a1;
}

{
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Clear(a1);
  return a1;
}

_BYTE *ot::Mac::ExtAddress::SetGroup(_BYTE *this, char a2)
{
  if (a2)
  {
    *this |= 1u;
  }

  else
  {
    *this &= ~1u;
  }

  return this;
}

{
  return ot::Mac::ExtAddress::SetGroup(this, a2);
}

_BYTE *ot::Mac::ExtAddress::SetLocal(_BYTE *this, char a2)
{
  if (a2)
  {
    *this |= 2u;
  }

  else
  {
    *this &= ~2u;
  }

  return this;
}

{
  return ot::Mac::ExtAddress::SetLocal(this, a2);
}

_WORD *ot::Clearable<ot::SuccessRateTracker>::Clear(_WORD *a1)
{
  return ot::ClearAllBytes<ot::SuccessRateTracker>(a1);
}

{
  return ot::Clearable<ot::SuccessRateTracker>::Clear(a1);
}

void ot::Mac::Mac::SetEnabled(ot::Mac::Mac *this, char a2)
{
  *this = *this & 0xFE | a2 & 1;
  if (a2)
  {
    ot::Mac::Links::Enable((this + 56));
  }

  else
  {
    ot::Mac::Links::Disable((this + 56));
  }
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::KeyManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
}

void ot::Mac::Mac::SetPanId(ot::Mac::Mac *this, __int16 a2)
{
  v5 = this;
  v4 = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  if (!ot::Notifier::Update<unsigned short>(v2, this + 4, &v4, 0x8000))
  {
    ot::Mac::Links::SetPanId((this + 56), *(this + 4));
  }
}

void ot::Mac::Mac::SetShortAddress(ot::Mac::Mac *this, __int16 a2)
{
  ot::Mac::Links::SetShortAddress((this + 56), a2);
}

{
  ot::Mac::Mac::SetShortAddress(this, a2);
}

void ot::Mac::Mac::SetAlternateShortAddress(ot::Mac::Mac *this, unsigned __int16 a2)
{
  ot::Mac::Links::SetAlternateShortAddress((this + 56), a2);
}

{
  ot::Mac::Mac::SetAlternateShortAddress(this, a2);
}

void ot::AsCoreType<otMacKey>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otMacKey>(a1);
}

void ot::Mac::Mac::RegenerateExtAddr(ot::Mac::Mac *this, uint64_t a2, unsigned __int16 a3)
{
  v13 = this;
  v11 = this;
  v12 = v15;
  ot::Mac::ExtAddress::GenerateRandom(v15, a2, a3);
  v10 = v14;
  ot::Mac::ExtAddress::ToString(v15, v14);
  v3 = ot::String<(unsigned short)17>::AsCString(v14);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Random Regenerated RadioExtAddress: %s", v4, v5, v6, v7, v8, v9, v3);
  ot::Mac::Mac::SetExtAddress(v11, v12);
}

void ot::Mac::Links::Enable(ot::Mac::Links *this)
{
  ot::Mac::SubMac::Enable((this + 8));
  IgnoreError();
}

{
  ot::Mac::Links::Enable(this);
}

void ot::Mac::Links::Disable(ot::Mac::Links *this)
{
  ot::Mac::SubMac::Disable((this + 8));
  IgnoreError();
}

{
  ot::Mac::Links::Disable(this);
}

uint64_t ot::Mac::Mac::ActiveScan(ot::Mac::Mac *a1, unsigned int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  if (ot::Mac::Mac::IsEnabled(a1))
  {
    if (ot::Mac::Mac::IsActiveScanInProgress(a1) || ot::Mac::Mac::IsEnergyScanInProgress(a1))
    {
      return 5;
    }

    else
    {
      *(a1 + 5) = a4;
      *(a1 + 6) = a5;
      if (!a3)
      {
        a3 = 300;
      }

      ot::Mac::Mac::Scan(a1, 1u, a2, a3);
    }
  }

  else
  {
    return 13;
  }

  return v7;
}

void ot::Mac::Mac::Scan(uint64_t a1, unsigned __int8 a2, unsigned int a3, __int16 a4)
{
  Mask = a3;
  *(a1 + 18) = a4;
  *(a1 + 16) = -1;
  if (!a3)
  {
    Mask = ot::Mac::ChannelMask::GetMask((a1 + 12));
  }

  ot::Mac::ChannelMask::SetMask((a1 + 20), Mask);
  ot::Mac::ChannelMask::Intersect((a1 + 20), (a1 + 12));
  ot::Mac::Mac::StartOperation(a1, a2);
}

uint64_t ot::Mac::Mac::EnergyScan(ot::Mac::Mac *a1, unsigned int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  if (ot::Mac::Mac::IsEnabled(a1))
  {
    if (ot::Mac::Mac::IsActiveScanInProgress(a1) || ot::Mac::Mac::IsEnergyScanInProgress(a1))
    {
      return 5;
    }

    else
    {
      *(a1 + 5) = a4;
      *(a1 + 6) = a5;
      ot::Mac::Mac::Scan(a1, 2u, a2, a3);
    }
  }

  else
  {
    return 13;
  }

  return v7;
}

_DWORD *ot::Mac::ChannelMask::SetMask(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mac::ChannelMask::SetMask(this, a2);
}

_DWORD *ot::Mac::ChannelMask::Intersect(_DWORD *this, const ot::Mac::ChannelMask *a2)
{
  *this &= *a2;
  return this;
}

{
  return ot::Mac::ChannelMask::Intersect(this, a2);
}

void ot::Mac::Mac::StartOperation(uint64_t result, unsigned __int8 a2)
{
  if (a2)
  {
    ot::Mac::Mac::SetPending(result, a2);
    v2 = ot::Mac::Mac::OperationToString(a2);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Requesting operation %s pendOp:0x%x", v3, v4, v5, v6, v7, v8, v2, *(result + 2));
  }

  if (!*(result + 1))
  {
    ot::Tasklet::Post((result + 296));
  }
}

uint64_t ot::Mac::Mac::IsInTransmitState(ot::Mac::Mac *this)
{
  v3 = 0;
  v2 = *(this + 1);
  if (v2 <= 2)
  {
    goto LABEL_6;
  }

  if (v2 - 3 <= 2)
  {
LABEL_5:
    v3 = 1;
    return v3 & 1;
  }

  if (v2 == 6)
  {
LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  if (v2 - 7 <= 2)
  {
    goto LABEL_5;
  }

  return v3 & 1;
}

uint64_t ot::Mac::Mac::ConvertBeaconToActiveScanResult(ot::Mac::Mac *a1, ot::Mac::Frame *a2, char *a3)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  SrcAddr = 0;
  ot::Mac::Address::Address(v28);
  v27 = 0;
  Payload = 0;
  PayloadLength = 0;
  ot::ClearAllBytes<otActiveScanResult>(v30);
  if (v31)
  {
    if (ot::Mac::Frame::GetType(v31))
    {
      return 6;
    }

    else
    {
      SrcAddr = ot::Mac::Frame::GetSrcAddr(v31, v28);
      if (!SrcAddr)
      {
        if (ot::Mac::Address::IsExtended(v28))
        {
          ot::Mac::Address::GetExtended(v28);
          *v30 = *v3;
          if (ot::Mac::Frame::GetSrcPanId(v31, v30 + 25))
          {
            ot::Mac::Frame::GetDstPanId(v31, v30 + 25);
            IgnoreError();
          }

          Channel = ot::Mac::Frame::GetChannel(v31);
          v30[54] = Channel;
          Rssi = ot::Mac::RxFrame::GetRssi(v31);
          v30[55] = Rssi;
          Lqi = ot::Mac::RxFrame::GetLqi(v31);
          v30[56] = Lqi;
          PayloadLength = ot::Mac::Frame::GetPayloadLength(v31);
          Payload = ot::Mac::Frame::GetPayload(v31);
          v27 = ot::Mac::Beacon::GetPayload(Payload);
          if (PayloadLength >= 0x1EuLL && ot::Mac::Beacon::IsValid(Payload, v7) && ot::Mac::BeaconPayload::IsValid(v27))
          {
            ProtocolVersion = ot::Mac::BeaconPayload::GetProtocolVersion(v27);
            v30[57] = v30[57] & 0xF0 | ProtocolVersion & 0xF;
            IsJoiningPermitted = ot::Mac::BeaconPayload::IsJoiningPermitted(v27);
            v30[57] = v30[57] & 0xBF | (IsJoiningPermitted << 6);
            IsNative = ot::Mac::BeaconPayload::IsNative(v27);
            v30[57] = v30[57] & 0xEF | (16 * IsNative);
            ot::AsCoreType<otNetworkName>((v30 + 8));
            v22 = v17;
            v24[0] = ot::Mac::BeaconPayload::GetNetworkName(v27);
            v24[1] = v18;
            ot::MeshCoP::NetworkName::Set(v22, v24);
            IgnoreError();
            if ((ot::IsValidUtf8String((v30 + 8), v19) & 1) == 0)
            {
              return 6;
            }

            ExtendedPanId = ot::Mac::BeaconPayload::GetExtendedPanId(v27);
            *(v30 + 25) = *ExtendedPanId;
          }

          ot::Mac::Mac::LogBeacon(a1, "Received", v8, v9, v10, v11, v12, v13);
          return SrcAddr;
        }

        return 6;
      }
    }
  }

  else
  {
    return 7;
  }

  return SrcAddr;
}

void *ot::ClearAllBytes<otActiveScanResult>(void *a1)
{
  return memset(a1, 0, 0x3CuLL);
}

{
  return ot::ClearAllBytes<otActiveScanResult>(a1);
}

uint64_t ot::Mac::Frame::GetType(ot::Mac::Frame *this)
{
  return *ot::Mac::Frame::GetPsdu(this) & 7;
}

{
  return ot::Mac::Frame::GetType(this);
}

void ot::Mac::Address::GetExtended(ot::Mac::Address *this)
{
  ;
}

{
  ;
}

{
  ot::Mac::Address::GetExtended(this);
}

{
  ot::Mac::Address::GetExtended(this);
}

uint64_t ot::Mac::Frame::GetChannel(ot::Mac::Frame *this)
{
  return *(this + 10);
}

{
  return ot::Mac::Frame::GetChannel(this);
}

uint64_t ot::Mac::RxFrame::GetLqi(ot::Mac::RxFrame *this)
{
  return *(this + 30);
}

{
  return ot::Mac::RxFrame::GetLqi(this);
}

uint64_t ot::Mac::Beacon::GetPayload(ot::Mac::Beacon *this)
{
  return this + 4;
}

{
  return this + 4;
}

{
  return ot::Mac::Beacon::GetPayload(this);
}

{
  return ot::Mac::Beacon::GetPayload(this);
}

BOOL ot::Mac::Beacon::IsValid(ot::Mac::Beacon *this, unsigned __int16 a2)
{
  v4 = *this;
  v5 = 0;
  if (v4 == ot::LittleEndian::HostSwap16(4095))
  {
    v5 = 0;
    if (!*(this + 2))
    {
      return *(this + 3) == 0;
    }
  }

  return v5;
}

{
  return ot::Mac::Beacon::IsValid(this, a2);
}

BOOL ot::Mac::BeaconPayload::IsValid(ot::Mac::BeaconPayload *this)
{
  return *this == 3;
}

{
  return ot::Mac::BeaconPayload::IsValid(this);
}

uint64_t ot::Mac::BeaconPayload::GetProtocolVersion(ot::Mac::BeaconPayload *this)
{
  return *(this + 1) >> 4;
}

{
  return ot::Mac::BeaconPayload::GetProtocolVersion(this);
}

BOOL ot::Mac::BeaconPayload::IsJoiningPermitted(ot::Mac::BeaconPayload *this)
{
  return (*(this + 1) & 1) != 0;
}

{
  return ot::Mac::BeaconPayload::IsJoiningPermitted(this);
}

BOOL ot::Mac::BeaconPayload::IsNative(ot::Mac::BeaconPayload *this)
{
  return (*(this + 1) & 8) != 0;
}

{
  return ot::Mac::BeaconPayload::IsNative(this);
}

uint64_t ot::Mac::BeaconPayload::GetNetworkName(ot::Mac::BeaconPayload *this)
{
  ot::MeshCoP::NameData::NameData(&v2, this + 2, 16);
  return v2;
}

{
  return ot::Mac::BeaconPayload::GetNetworkName(this);
}

uint64_t ot::Mac::BeaconPayload::GetExtendedPanId(ot::Mac::BeaconPayload *this)
{
  return this + 18;
}

{
  return ot::Mac::BeaconPayload::GetExtendedPanId(this);
}

uint64_t ot::Mac::Mac::UpdateScanChannel(ot::Mac::Mac *this)
{
  if (ot::Mac::Mac::IsEnabled(this))
  {
    return ot::Mac::ChannelMask::GetNextChannel((this + 20), this + 16);
  }

  else
  {
    return 11;
  }
}

uint64_t ot::Mac::Mac::PerformActiveScan(ot::Mac::Mac *this)
{
  if (!ot::Mac::Mac::UpdateScanChannel(this))
  {
    return ot::Mac::Mac::BeginTransmit(this);
  }

  ot::Mac::Links::SetPanId((this + 56), *(this + 4));
  ot::Mac::Mac::FinishOperation(this);
  ot::Mac::Mac::ReportActiveScanResult(this, 0);
  return ot::Mac::Mac::PerformNextOperation(this);
}

uint64_t ot::Mac::Mac::BeginTransmit(ot::Mac::Mac *this)
{
  v49 = this;
  BroadcastTxFrame = 0;
  TxFrames = ot::Mac::Links::GetTxFrames((this + 56));
  ot::Mac::Address::Address(v46);
  ot::Mac::Address::Address(v45);
  v44 = 0;
  v43 = 0;
  v42[11] = 0;
  v42[10] = 0;
  ot::Mac::Address::Address(v42);
  ot::Mac::TxFrames::Clear(TxFrames);
  result = ot::Mac::Mac::IsEnabled(this);
  if ((result & 1) == 0)
  {
    goto LABEL_50;
  }

  v35 = *(this + 1);
  switch(v35)
  {
    case 1:
      ot::Mac::Links::SetPanId((this + 56), 0xFFFFu);
      result = ot::Mac::Mac::PrepareBeaconRequest(this);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      ot::Mac::TxFrame::SetChannel(BroadcastTxFrame, *(this + 16));
      ot::Mac::Frame::SetSequence(BroadcastTxFrame, 0);
      ot::Mac::TxFrame::SetMaxCsmaBackoffs(BroadcastTxFrame, 4);
      ot::Mac::TxFrame::SetMaxFrameRetries(BroadcastTxFrame, *(this + 24));
      goto LABEL_47;
    case 3:
      result = ot::Mac::Mac::PrepareBeacon(this);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      ot::Mac::TxFrame::SetChannel(BroadcastTxFrame, *(this + 11));
      v2 = BroadcastTxFrame;
      v3 = *(this + 4);
      *(this + 4) = v3 + 1;
      ot::Mac::Frame::SetSequence(v2, v3);
      ot::Mac::TxFrame::SetMaxCsmaBackoffs(BroadcastTxFrame, 4);
      ot::Mac::TxFrame::SetMaxFrameRetries(BroadcastTxFrame, *(this + 24));
      goto LABEL_47;
    case 4:
      ot::Mac::TxFrames::SetChannel(TxFrames, *(this + 11));
      if (enablebackoff)
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 4);
      }

      else
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 0);
      }

      ot::Mac::TxFrames::SetMaxFrameRetries(TxFrames, *(this + 24));
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      result = ot::MeshForwarder::HandleFrameRequest(v7, TxFrames);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      v8 = BroadcastTxFrame;
      v9 = *(this + 5);
      *(this + 5) = v9 + 1;
      ot::Mac::Frame::SetSequence(v8, v9);
      ot::Mac::Frame::GetDstAddr(BroadcastTxFrame, v46);
      IgnoreError();
      ot::Mac::Frame::GetSrcAddr(BroadcastTxFrame, v45);
      IgnoreError();
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ot::ChildTable::FindChild(v10, v46, 0);
      v44 = v11;
      if (v11)
      {
        DeviceMode = ot::Neighbor::GetDeviceMode(v44);
        IsMinimalEndDevice = 1;
        if (ot::Mle::DeviceMode::IsRxOnWhenIdle(&DeviceMode))
        {
          v40 = ot::Neighbor::GetDeviceMode(v44);
          IsMinimalEndDevice = ot::Mle::DeviceMode::IsMinimalEndDevice(&v40);
        }

        if (IsMinimalEndDevice)
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
          SendMessage = ot::MeshForwarder::GetSendMessage(v12);
          if (SendMessage)
          {
            if (ot::Message::GetSubType(SendMessage) != 13)
            {
              ot::Mac::Address::ToString(v45, v51);
              v28 = ot::String<(unsigned short)17>::AsCString(v51);
              ot::Mac::Address::ToString(v46, v50);
              v29 = ot::String<(unsigned short)17>::AsCString(v50);
              v38 = ot::Neighbor::GetDeviceMode(v44);
              IsRxOnWhenIdle = ot::Mle::DeviceMode::IsRxOnWhenIdle(&v38);
              v37 = ot::Neighbor::GetDeviceMode(v44);
              v31 = ot::Mle::DeviceMode::IsMinimalEndDevice(&v37);
              Version = ot::Neighbor::GetVersion(v44);
              State = ot::Neighbor::GetState(v44);
              v33 = ot::Neighbor::StateToString(State);
              SubType = ot::Message::GetSubType(SendMessage);
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mac::kLogModuleName, "Tx frame to SED as direct transmission src:%s dst:%s isRxOnWhenIdle:%d isMinimalEndDevice:%d child_ver:%d child_state:%s msgType:%d", v15, v16, v17, v18, v19, v20, v28, v29, IsRxOnWhenIdle, v31, Version, v33, SubType);
            }
          }
        }
      }

      goto LABEL_47;
    case 5:
      ot::Mac::TxFrames::SetChannel(TxFrames, *(this + 11));
      if (enablebackoff)
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 4);
      }

      else
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 0);
      }

      ot::Mac::TxFrames::SetMaxFrameRetries(TxFrames, *(this + 24));
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
      result = ot::DataPollSender::PrepareDataRequest(v4, TxFrames);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      v5 = BroadcastTxFrame;
      v6 = *(this + 5);
      *(this + 5) = v6 + 1;
      ot::Mac::Frame::SetSequence(v5, v6);
      goto LABEL_47;
    case 7:
      ot::Mac::TxFrames::SetChannel(TxFrames, *(this + 11));
      if (enablebackoff)
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 4);
      }

      else
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 0);
      }

      ot::Mac::TxFrames::SetMaxFrameRetries(TxFrames, *(this + 25));
      v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(this);
      result = ot::DataPollHandler::HandleFrameRequest(v21, TxFrames);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      if ((ot::Mac::TxFrame::IsARetransmission(BroadcastTxFrame) & 1) == 0)
      {
        v22 = BroadcastTxFrame;
        v23 = *(this + 5);
        *(this + 5) = v23 + 1;
        ot::Mac::Frame::SetSequence(v22, v23);
      }

      goto LABEL_47;
    case 8:
      ot::Mac::TxFrames::SetChannel(TxFrames, *(this + 11));
      if (enablebackoff)
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 2);
      }

      else
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 0);
      }

      ot::Mac::TxFrames::SetMaxFrameRetries(TxFrames, 0);
      v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(this);
      result = ot::CslTxScheduler::HandleFrameRequest(v24, TxFrames);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      if ((ot::Mac::TxFrame::IsARetransmission(BroadcastTxFrame) & 1) == 0)
      {
        v25 = BroadcastTxFrame;
        v26 = *(this + 5);
        *(this + 5) = v26 + 1;
        ot::Mac::Frame::SetSequence(v25, v26);
      }

      goto LABEL_47;
  }

  if (v35 != 9)
  {
    __assert_rtn("BeginTransmit", "mac.cpp", 1372, "false");
  }

  v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::WakeupTxScheduler>(this);
  result = ot::WakeupTxScheduler::PrepareWakeupFrame(v27, TxFrames);
  BroadcastTxFrame = result;
  if (result)
  {
    ot::Mac::TxFrame::SetChannel(BroadcastTxFrame, *(this + 36));
    ot::Mac::TxFrame::SetRxChannelAfterTxDone(BroadcastTxFrame, *(this + 11));
LABEL_47:
    if ((ot::Mac::TxFrame::IsSecurityProcessed(BroadcastTxFrame) & 1) == 0)
    {
      ot::Mac::Mac::ProcessTransmitSecurity(this, BroadcastTxFrame);
    }

    *(this + 6) = 0;
    result = ot::Mac::Links::Send(this + 7);
  }

LABEL_50:
  if (!BroadcastTxFrame)
  {
    BroadcastTxFrame = ot::Mac::TxFrames::GetBroadcastTxFrame(TxFrames);
    ot::Mac::Frame::SetLength(BroadcastTxFrame, 0);
    return ot::Mac::Mac::HandleTransmitDone(this, BroadcastTxFrame, 0, 11);
  }

  return result;
}

void ot::Mac::Links::SetPanId(ot::Mac::Links *this, unsigned __int16 a2)
{
  ot::Mac::SubMac::SetPanId((this + 8), a2);
}

{
  ot::Mac::Links::SetPanId(this, a2);
}

void ot::Mac::Mac::FinishOperation(ot::Mac::Mac *this)
{
  v1 = ot::Mac::Mac::OperationToString(*(this + 1));
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Finishing operation %s pendOp:0x%x", v2, v3, v4, v5, v6, v7, v1, *(this + 1));
  *(this + 1) = 0;
}

uint64_t ot::Mac::Mac::ReportActiveScanResult(uint64_t this, const ot::Mac::RxFrame *a2)
{
  v2 = this;
  if (*(this + 40))
  {
    if (a2)
    {
      this = ot::Mac::Mac::ConvertBeaconToActiveScanResult(this, a2, v3);
      if (!this)
      {
        return (*(v2 + 40))(v3, *(v2 + 48));
      }
    }

    else
    {
      return (*(this + 40))(0, *(this + 48));
    }
  }

  return this;
}

uint64_t ot::Mac::Mac::PerformEnergyScan(ot::Mac::Mac *this)
{
  result = ot::Mac::Mac::UpdateScanChannel(this);
  v4 = result;
  if (!result)
  {
    if (*(this + 9))
    {
      if ((*this & 4) == 0)
      {
        ot::Mac::Links::Receive((this + 56), *(this + 16));
      }

      result = ot::Mac::Links::EnergyScan((this + 56), *(this + 16), *(this + 9));
      v4 = result;
    }

    else
    {
      do
      {
        ot::Mac::Links::Receive((this + 56), *(this + 16));
        Rssi = ot::Mac::Links::GetRssi((this + 56));
        ot::Mac::Mac::ReportEnergyScanResult(this, Rssi);
        result = ot::Mac::Mac::UpdateScanChannel(this);
        v4 = result;
      }

      while (!result);
    }
  }

  if (v4)
  {
    ot::Mac::Mac::FinishOperation(this);
    if (*(this + 5))
    {
      (*(this + 5))(0, *(this + 6));
    }

    return ot::Mac::Mac::PerformNextOperation(this);
  }

  return result;
}

void ot::Mac::Links::Receive(ot::Mac::Links *this, unsigned __int8 a2)
{
  ot::Mac::SubMac::Receive((this + 8), a2);
  IgnoreError();
}

{
  ot::Mac::Links::Receive(this, a2);
}

uint64_t ot::Mac::Mac::ReportEnergyScanResult(uint64_t this, char a2)
{
  v4 = this;
  v3 = a2;
  if (*(this + 40))
  {
    if (v3 != 127)
    {
      v2[0] = *(this + 16);
      v2[1] = v3;
      return (*(this + 40))(v2, *(this + 48));
    }
  }

  return this;
}

uint64_t ot::Mac::Links::GetRssi(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetRssi((this + 8));
}

{
  return ot::Mac::Links::GetRssi(this);
}

uint64_t ot::Mac::Links::EnergyScan(ot::Mac::Links *this, unsigned __int8 a2, unsigned __int16 a3)
{
  return ot::Mac::SubMac::EnergyScan((this + 8), a2, a3);
}

{
  return ot::Mac::Links::EnergyScan(this, a2, a3);
}

void ot::Mac::Mac::SetRxOnWhenIdle(ot::Mac::Mac *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mac::kLogModuleName, "%s: aRxOnWhenIdle = %d, mRxOnWhenIdle = %d", a3, a4, a5, a6, a7, a8, "SetRxOnWhenIdle", a2 & 1, (*this & 4) != 0);
  if (((*this & 4) != 0) != (a2 & 1))
  {
    *this = *this & 0xFB | (4 * (a2 & 1));
    if ((*this & 4) != 0)
    {
      if (ot::Mac::Mac::IsPending(this, 6))
      {
        ot::TimerMilli::Stop((this + 312));
        ot::Mac::Mac::ClearPending(this, 6);
      }

      if (*(this + 1) == 6)
      {
        ot::TimerMilli::Stop((this + 312));
        ot::Mac::Mac::FinishOperation(this);
        ot::Tasklet::Post((this + 296));
      }
    }

    LOBYTE(v8) = 1;
    if ((*this & 4) == 0)
    {
      v8 = (*this >> 3) & 1;
    }

    ot::Mac::Links::SetRxOnWhenIdle((this + 56), v8 & 1);
    ot::Mac::Mac::UpdateIdleMode(this);
  }
}

BOOL ot::Mac::Mac::IsPending(uint64_t a1, char a2)
{
  return (*(a1 + 2) & (1 << a2)) != 0;
}

{
  return ot::Mac::Mac::IsPending(a1, a2);
}

uint64_t ot::Mac::Mac::ClearPending(uint64_t result, char a2)
{
  *(result + 2) &= ~(1 << a2);
  return result;
}

{
  return ot::Mac::Mac::ClearPending(result, a2);
}

void ot::Mac::Links::SetRxOnWhenIdle(ot::Mac::Links *this, char a2)
{
  ot::Mac::SubMac::SetRxOnWhenIdle((this + 8), a2 & 1);
}

{
  ot::Mac::Links::SetRxOnWhenIdle(this, a2);
}

void ot::Mac::Mac::UpdateIdleMode(_BYTE *this)
{
  v14 = 0;
  if ((*this & 4) == 0)
  {
    v14 = (*this & 8) == 0;
  }

  if (!this[1])
  {
    if (ot::Mac::Mac::IsPending(this, 8))
    {
      ot::TimerMilli::FireAt((this + 312), *(this + 7));
    }

    if (v14)
    {
      ot::Mac::Links::Sleep((this + 56));
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Idle mode: Radio sleeping pendOp:0x%x", v1, v2, v3, v4, v5, v6, *(this + 1));
    }

    else
    {
      ot::Mac::Links::Receive((this + 56), this[11]);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Idle mode: Radio receiving on channel %u pendOp:0x%x", v7, v8, v9, v10, v11, v12, this[11], *(this + 1));
    }
  }
}

uint64_t ot::Mac::Mac::SetPanChannel(ot::Mac::Mac *this, unsigned __int8 a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  if (ot::Mac::ChannelMask::ContainsChannel((this + 12), a2))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    if (!ot::Notifier::Update<unsigned char>(v2, this + 10, &v6, 0x4000))
    {
      ot::Clearable<ot::SuccessRateTracker>::Clear(this + 262);
      if ((*this & 0x20) == 0)
      {
        *(this + 11) = *(this + 10);
        ot::Mac::Mac::UpdateCsl(this, 0);
        ot::Mac::Mac::UpdateIdleMode(this);
      }
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Notifier::Update<unsigned char>(void *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = 0;
  if (*a2 == *a3)
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v5;
}

{
  return ot::Notifier::Update<unsigned char>(a1, a2, a3, a4);
}

void ot::Mac::Mac::UpdateCsl(ot::Mac::Mac *this, ot::Neighbor *a2)
{
  v32 = this;
  v31 = a2;
  v30 = 0;
  CslPeripheral = a2;
  if (ot::Mac::Mac::IsCslEnabled(this))
  {
    CslPeriod = ot::Mac::Mac::GetCslPeriod(this);
  }

  else
  {
    CslPeriod = 0;
  }

  EcslPeriod = CslPeriod;
  if (ot::Mac::Mac::GetCslChannel(this))
  {
    CslChannel = ot::Mac::Mac::GetCslChannel(this);
  }

  else
  {
    CslChannel = *(this + 11);
  }

  v27 = CslChannel;
  v26 = 0;
  if (!CslPeripheral)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    CslPeripheral = ot::Mle::Mle::GetCslPeripheral(v2);
    ot::Mac::Links::WedPresent((this + 56), CslPeripheral != 0);
  }

  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsSleepyRouter(v3))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::IsCslPeripheralDetached(v4))
    {
      EcslPeriod = 0;
    }

    else
    {
      Instance = ot::InstanceLocator::GetInstance(this);
      EcslPeriod = otThreadWedGetEcslPeriod(Instance);
    }

    *(this + 17) = EcslPeriod;
  }

  if (CslPeripheral)
  {
    Parent = CslPeripheral;
  }

  else
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Parent = ot::Mle::Mle::GetParent(v6);
  }

  CslPeripheral = Parent;
  if (ot::Neighbor::GetRloc16(Parent))
  {
    Rloc16 = ot::Neighbor::GetRloc16(CslPeripheral);
  }

  else
  {
    Rloc16 = -2;
  }

  v30 = Rloc16;
  ot::Neighbor::GetExtAddress(CslPeripheral);
  if (ot::Mac::Links::UpdateCsl(this + 56, EcslPeriod, v27, Rloc16, v7, &v26))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsChild(v8))
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
      ot::DataPollSender::RecalculatePollPeriod(v9);
      if (EcslPeriod)
      {
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        ot::Mle::Mle::ScheduleChildUpdateRequest(v10);
      }
    }

    v14 = CslPeripheral;
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (v14 == ot::Mle::Mle::GetCslPeripheral(v11))
    {
      v25 = CslPeripheral;
      ot::InstanceLocator::GetInstance(this);
      Now = otPlatRadioGetNow();
      v23 = 0;
      ot::Time::Time(&v23, Now);
      v22 = 0;
      ot::Time::Time(&v20, v26);
      v21 = ot::Time::operator-(&v20, 240 * EcslPeriod);
      v22 = ot::Time::operator-(&v21, 32);
      if (ot::Time::operator>(&v23, &v22))
      {
        v12 = ot::Time::operator-(&v23, &v22);
        Now -= v12;
      }

      else
      {
        v13 = ot::Time::operator-(&v22, &v23);
        Now += v13;
      }

      ot::CslTxScheduler::ChildInfo::SetCslPeriod(v25 + 168, EcslPeriod);
      ot::CslTxScheduler::ChildInfo::SetCslPhase(v25 + 168, 0);
      ot::CslTxScheduler::ChildInfo::SetLastRxTimestamp(v25 + 168, Now);
      ot::CslTxScheduler::ChildInfo::SetCslChannel(v25 + 168, v27);
      ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v25 + 168, 1);
    }

    ot::Mac::Mac::UpdateIdleMode(this);
  }
}

uint64_t ot::Mac::Mac::SetTemporaryChannel(ot::Mac::Mac *this, unsigned __int8 a2)
{
  v4 = 0;
  if (ot::Mac::ChannelMask::ContainsChannel((this + 12), a2))
  {
    *this = *this & 0xDF | 0x20;
    *(this + 11) = a2;
    ot::Mac::Mac::UpdateIdleMode(this);
  }

  else
  {
    return 7;
  }

  return v4;
}

void ot::Mac::Mac::ClearTemporaryChannel(_BYTE *this)
{
  if ((*this & 0x20) != 0)
  {
    *this &= ~0x20u;
    this[11] = this[10];
    ot::Mac::Mac::UpdateIdleMode(this);
  }
}

void ot::Mac::Mac::SetSupportedChannelMask(ot::Mac::Mac *this, const ot::Mac::ChannelMask *a2)
{
  v6 = this;
  v5 = a2;
  v4 = *a2;
  ot::Mac::ChannelMask::Intersect(&v4, (this + 12));
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  ot::Notifier::Update<ot::Mac::ChannelMask>(v2, this + 3, &v4, 0x400000);
  IgnoreError();
}

uint64_t ot::Notifier::Update<ot::Mac::ChannelMask>(void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Mac::ChannelMask::operator==(a2, a3))
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v6;
}

{
  return ot::Notifier::Update<ot::Mac::ChannelMask>(a1, a2, a3, a4);
}

uint64_t ot::Notifier::Update<unsigned short>(void *a1, _WORD *a2, _WORD *a3, uint64_t a4)
{
  v5 = 0;
  if (*a2 == *a3)
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v5;
}

{
  return ot::Notifier::Update<unsigned short>(a1, a2, a3, a4);
}

void ot::Mac::Mac::RequestDirectFrameTransmission(ot::Mac::Mac *this)
{
  if ((ot::Mac::Mac::IsEnabled(this) & 1) != 0 && !ot::Mac::Mac::IsActiveOrPending(this, 4))
  {
    ot::Mac::Mac::StartOperation(this, 4u);
  }
}

BOOL ot::Mac::Mac::IsActiveOrPending(uint64_t a1, char a2)
{
  v3 = 1;
  if (*(a1 + 1) != a2)
  {
    return ot::Mac::Mac::IsPending(a1, a2);
  }

  return v3;
}

void ot::Mac::Mac::RequestIndirectFrameTransmission(ot::Mac::Mac *this)
{
  if ((ot::Mac::Mac::IsEnabled(this) & 1) != 0 && !ot::Mac::Mac::IsActiveOrPending(this, 7))
  {
    ot::Mac::Mac::StartOperation(this, 7u);
  }
}

void ot::Mac::Mac::RequestCslFrameTransmission(ot::TimerMilli *this, int a2)
{
  v6 = this;
  v5 = a2;
  if (*this)
  {
    Now = ot::TimerMilli::GetNow(this);
    v4 = ot::Time::operator+(&Now, v5);
    *(this + 7) = v4;
    ot::Mac::Mac::StartOperation(this, 8u);
  }
}

uint64_t ot::Mac::Mac::RequestDataPollTransmission(ot::Mac::Mac *this)
{
  v3 = 0;
  if (ot::Mac::Mac::IsEnabled(this))
  {
    if (!ot::Mac::Mac::IsActiveOrPending(this, 5))
    {
      *this = *this & 0xFD | (2 * !ot::Mac::Mac::IsPending(this, 4));
      ot::Mac::Mac::StartOperation(this, 5u);
    }
  }

  else
  {
    return 13;
  }

  return v3;
}

void ot::Mac::Links::Sleep(ot::Mac::Links *this)
{
  ot::Mac::SubMac::Sleep((this + 8));
  IgnoreError();
}

{
  ot::Mac::Links::Sleep(this);
}

uint64_t ot::Mac::Mac::SetPending(uint64_t result, char a2)
{
  *(result + 2) |= 1 << a2;
  return result;
}

{
  return ot::Mac::Mac::SetPending(result, a2);
}

ot::Mac::Frame *ot::Mac::Mac::PrepareBeaconRequest(ot::Mac::Mac *this)
{
  v13 = this;
  TxFrames = ot::Mac::Links::GetTxFrames((this + 56));
  BroadcastTxFrame = ot::Mac::TxFrames::GetBroadcastTxFrame(TxFrames);
  ot::Mac::Addresses::Addresses(v10);
  ot::Mac::PanIds::PanIds(v9);
  ot::Mac::Address::SetNone(v10);
  ot::Mac::Address::SetShort(&v11, 0xFFFF);
  ot::Mac::PanIds::SetDestination(v9, 0xFFFF);
  ot::Mac::Frame::InitMacHeader(BroadcastTxFrame, 3, 0, v10, v9, 0, 0);
  ot::Mac::Frame::SetCommandId(BroadcastTxFrame, 7);
  IgnoreError();
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Sending Beacon Request", v2, v3, v4, v5, v6, v7);
  return BroadcastTxFrame;
}

uint64_t ot::Mac::Links::GetTxFrames(ot::Mac::Links *this)
{
  return this + 232;
}

{
  return ot::Mac::Links::GetTxFrames(this);
}

uint64_t ot::Mac::TxFrames::GetBroadcastTxFrame(ot::Mac::TxFrames *this)
{
  return ot::Mac::TxFrames::GetTxFrame(this);
}

{
  return ot::Mac::TxFrames::GetBroadcastTxFrame(this);
}

uint64_t ot::Mac::Address::SetNone(uint64_t this)
{
  *(this + 8) = 0;
  return this;
}

{
  return ot::Mac::Address::SetNone(this);
}

ot::Mac::Frame *ot::Mac::Mac::PrepareBeacon(ot::Mac::Mac *this)
{
  v27 = this;
  BroadcastTxFrame = 0;
  v25 = 0;
  ot::Mac::Addresses::Addresses(v23);
  ot::Mac::PanIds::PanIds(v22);
  v21 = 0;
  Payload = 0;
  TxFrames = ot::Mac::Links::GetTxFrames((this + 56));
  BroadcastTxFrame = ot::Mac::TxFrames::GetBroadcastTxFrame(TxFrames);
  ExtAddress = ot::Mac::Mac::GetExtAddress(this);
  ot::Mac::Address::SetExtended(v23, ExtAddress);
  ot::Mac::PanIds::SetSource(v22, *(this + 4));
  ot::Mac::Address::SetNone(&v24);
  ot::Mac::Frame::InitMacHeader(BroadcastTxFrame, 0, 0, v23, v22, 0, 0);
  ot::Mac::Frame::GetPayload(BroadcastTxFrame);
  v25 = v3;
  ot::Mac::Beacon::Init(v3, v4);
  v21 = 4;
  Payload = ot::Mac::Beacon::GetPayload(v25);
  ot::Mac::BeaconPayload::Init(Payload);
  if (ot::Mac::Mac::IsJoinable(this))
  {
    ot::Mac::BeaconPayload::SetJoiningPermitted(Payload);
  }

  else
  {
    ot::Mac::BeaconPayload::ClearJoiningPermitted(Payload);
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(this);
  ot::MeshCoP::NetworkNameManager::GetNetworkName(v5);
  v19[0] = ot::MeshCoP::NetworkName::GetAsData(v6);
  v19[1] = v7;
  ot::Mac::BeaconPayload::SetNetworkName(Payload, v19);
  v17 = Payload;
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(this);
  ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(v8);
  ot::Mac::BeaconPayload::SetExtendedPanId(v17, v9);
  v21 += 26;
  ot::Mac::Frame::SetPayloadLength(BroadcastTxFrame, v21);
  ot::Mac::Mac::LogBeacon(this, "Sending", v10, v11, v12, v13, v14, v15);
  return BroadcastTxFrame;
}

void ot::Mac::Frame::GetPayload(ot::Mac::Frame *this)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetPayload(v1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Mac::Frame::GetPayload(this);
}

uint64_t ot::Mac::Beacon::Init(ot::Mac::Beacon *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(4095);
  *this = result;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

{
  return ot::Mac::Beacon::Init(this, a2);
}

_BYTE *ot::Mac::BeaconPayload::Init(_BYTE *this)
{
  *this = 3;
  this[1] = 32;
  return this;
}

{
  return ot::Mac::BeaconPayload::Init(this);
}

BOOL ot::Mac::Mac::IsJoinable(ot::Mac::Mac *this)
{
  v4 = this;
  v3 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
  ot::Ip6::Filter::GetUnsecurePorts(v1, &v3);
  return v3 != 0;
}

uint64_t ot::Mac::BeaconPayload::SetJoiningPermitted(uint64_t this)
{
  *(this + 1) |= 1u;
  *(this + 1) &= 0xFu;
  *(this + 1) |= 0x40u;
  return this;
}

{
  return ot::Mac::BeaconPayload::SetJoiningPermitted(this);
}

uint64_t ot::Mac::BeaconPayload::ClearJoiningPermitted(uint64_t this)
{
  *(this + 1) &= ~1u;
  return this;
}

{
  return ot::Mac::BeaconPayload::ClearJoiningPermitted(this);
}

uint64_t ot::Mac::BeaconPayload::SetNetworkName(ot::Mac::BeaconPayload *this, const ot::MeshCoP::NameData *a2)
{
  return ot::MeshCoP::NameData::CopyTo(a2, this + 2, 16);
}

{
  return ot::Mac::BeaconPayload::SetNetworkName(this, a2);
}

uint64_t ot::Mac::BeaconPayload::SetExtendedPanId(uint64_t result, void *a2)
{
  *(result + 18) = *a2;
  return result;
}

{
  return ot::Mac::BeaconPayload::SetExtendedPanId(result, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(a1);
}

uint64_t ot::Mac::Mac::ShouldSendBeacon(ot::Mac::Mac *this)
{
  IsBeaconEnabled = 0;
  if (ot::Mac::Mac::IsEnabled(this))
  {
    IsBeaconEnabled = ot::Mac::Mac::IsBeaconEnabled(this);
  }

  return IsBeaconEnabled & 1;
}

uint64_t ot::Mac::Mac::IsBeaconEnabled(ot::Mac::Mac *this)
{
  return (*this >> 4) & 1;
}

{
  return ot::Mac::Mac::IsBeaconEnabled(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Ip6::Filter>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(a1);
}

void ot::Mac::Mac::ProcessTransmitSecurity(ot::Mac::Mac *this, ot::Mac::TxFrame *a2)
{
  v17 = this;
  v16 = a2;
  v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  v14 = 0;
  ExtAddress = 0;
  if (ot::Mac::Frame::GetSecurityEnabled(v16, v2))
  {
    ot::Mac::Frame::GetKeyIdMode(v16, &v14);
    IgnoreError();
    if (v14)
    {
      if (v14 == 8)
      {
        return;
      }

      if (v14 != 16)
      {
        __assert_rtn("ProcessTransmitSecurity", "mac.cpp", 1166, "false");
      }

      *v12 = -1;
      if (ot::Mac::Frame::IsWakeupFrame(v16, v3))
      {
        CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v15);
        ot::BigEndian::WriteUint32(CurrentKeySequence, v12, v7);
        ot::Mac::Frame::SetKeySource(v16, v12);
        return;
      }

      ot::Mac::TxFrame::SetAesKey(v16, (this + 1688));
      ot::Mac::Frame::SetFrameCounter(v16, ++*(this + 130));
      ot::Mac::Frame::SetKeySource(v16, v12);
      ot::Mac::Frame::SetKeyId(v16, 0xFFu);
      ot::AsCoreType<otExtAddress>(&ot::Mac::Mac::sMode2ExtAddress);
      ExtAddress = v8;
    }

    else
    {
      v10 = v16;
      Kek = ot::KeyManager::GetKek(v15);
      ot::Mac::TxFrame::SetAesKey(v10, Kek);
      ExtAddress = ot::Mac::Mac::GetExtAddress(this);
      if ((ot::Mac::TxFrame::IsHeaderUpdated(v16) & 1) == 0)
      {
        v9 = v16;
        KekFrameCounter = ot::KeyManager::GetKekFrameCounter(v15);
        ot::Mac::Frame::SetFrameCounter(v9, KekFrameCounter);
        ot::KeyManager::IncrementKekFrameCounter(v15);
      }
    }

    if ((ot::Mac::TxFrame::IsCslIePresent(v16) & 1) == 0)
    {
      ot::Mac::TxFrame::ProcessTransmitAesCcm(v16, ExtAddress);
    }
  }
}

uint64_t ot::Mac::TxFrame::SetAesKey(uint64_t this, const ot::Mac::KeyMaterial *a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetAesKey(this, a2);
}

uint64_t ot::KeyManager::GetKek(ot::KeyManager *this)
{
  return this + 120;
}

{
  return ot::KeyManager::GetKek(this);
}

uint64_t ot::KeyManager::GetKekFrameCounter(ot::KeyManager *this)
{
  return *(this + 34);
}

{
  return ot::KeyManager::GetKekFrameCounter(this);
}

uint64_t ot::KeyManager::IncrementKekFrameCounter(uint64_t this)
{
  ++*(this + 136);
  return this;
}

{
  return ot::KeyManager::IncrementKekFrameCounter(this);
}

uint64_t ot::Mac::TxFrame::IsCslIePresent(ot::Mac::TxFrame *this)
{
  return (*(this + 45) >> 3) & 1;
}

{
  return ot::Mac::TxFrame::IsCslIePresent(this);
}

uint64_t ot::Mac::TxFrames::Clear(ot::Mac::Frame **this)
{
  ot::Mac::Frame::SetLength(*this, 0);
  ot::Mac::TxFrame::SetIsARetransmission(*this, 0);
  ot::Mac::TxFrame::SetIsSecurityProcessed(*this, 0);
  ot::Mac::TxFrame::SetCsmaCaEnabled(*this, 1);
  ot::Mac::TxFrame::SetIsHeaderUpdated(*this, 0);
  ot::Mac::TxFrame::SetTxDelay(*this, 0);
  ot::Mac::TxFrame::SetTxDelayBaseTime(*this, 0);
  ot::Mac::TxFrame::SetTxPower(*this, 127);
  return ot::Mac::TxFrame::SetCslIePresent(*this, 0);
}

{
  return ot::Mac::TxFrames::Clear(this);
}

uint64_t ot::Mac::TxFrame::SetChannel(ot::Mac::TxFrame *this, char a2)
{
  *(this + 10) = a2;
  return ot::Mac::TxFrame::SetRxChannelAfterTxDone(this, a2);
}

{
  return ot::Mac::TxFrame::SetChannel(this, a2);
}

uint64_t ot::Mac::TxFrames::SetChannel(ot::Mac::TxFrame **this, char a2)
{
  return ot::Mac::TxFrame::SetChannel(*this, a2);
}

{
  return ot::Mac::TxFrames::SetChannel(this, a2);
}

uint64_t ot::Mac::TxFrames::SetMaxCsmaBackoffs(ot::Mac::TxFrame **this, char a2)
{
  return ot::Mac::TxFrame::SetMaxCsmaBackoffs(*this, a2);
}

{
  return ot::Mac::TxFrames::SetMaxCsmaBackoffs(this, a2);
}

BOOL ot::Mle::DeviceMode::IsMinimalEndDevice(ot::Mle::DeviceMode *this)
{
  return !ot::Mle::DeviceMode::IsFullThreadDevice(this);
}

{
  return ot::Mle::DeviceMode::IsMinimalEndDevice(this);
}

uint64_t ot::MeshForwarder::GetSendMessage(ot::MeshForwarder *this)
{
  return *(this + 7);
}

{
  return ot::MeshForwarder::GetSendMessage(this);
}

uint64_t ot::Neighbor::GetVersion(ot::Neighbor *this)
{
  return *(this + 18);
}

{
  return ot::Neighbor::GetVersion(this);
}

uint64_t ot::Neighbor::GetState(ot::Neighbor *this)
{
  return *(this + 30) & 0xF;
}

{
  return ot::Neighbor::GetState(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::DataPollHandler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(a1);
}

uint64_t ot::Mac::TxFrame::IsARetransmission(ot::Mac::TxFrame *this)
{
  return (*(this + 45) >> 1) & 1;
}

{
  return ot::Mac::TxFrame::IsARetransmission(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::CslTxScheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::WakeupTxScheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::WakeupTxScheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::WakeupTxScheduler>(a1);
}

uint64_t ot::Mac::TxFrame::SetRxChannelAfterTxDone(uint64_t this, char a2)
{
  *(this + 43) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetRxChannelAfterTxDone(this, a2);
}

uint64_t ot::Mac::TxFrame::IsSecurityProcessed(ot::Mac::TxFrame *this)
{
  return (*(this + 45) >> 4) & 1;
}

{
  return ot::Mac::TxFrame::IsSecurityProcessed(this);
}

uint64_t ot::Mac::Links::Send(ot::Mac::Frame **this)
{
  result = ot::Mac::SubMac::Send(this + 1);
  if (result)
  {
    __assert_rtn("Send", "mac_links.hpp", 616, "false");
  }

  return result;
}

{
  return ot::Mac::Links::Send(this);
}

uint64_t ot::Mac::Frame::SetLength(uint64_t this, __int16 a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::Mac::Frame::SetLength(this, a2);
}

uint64_t ot::Mac::Mac::HandleTransmitDone(ot::InstanceLocator *a1, ot::Mac::TxFrame *a2, ot::Mac::Frame *a3, int a4)
{
  v75 = a1;
  v74 = a2;
  v73 = a3;
  v72 = a4;
  v66 = a1;
  if (!a4)
  {
    v65 = v66 + 836;
    Length = ot::Mac::Frame::GetLength(v74);
    ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Update(v66 + 836, Length);
  }

  AckRequest = ot::Mac::Frame::GetAckRequest(v74, a2);
  if (!ot::Mac::Frame::IsEmpty(v74))
  {
    v64 = v70;
    ot::Mac::Address::Address(v70);
    ot::Mac::Frame::GetDstAddr(v74, v70);
    IgnoreError();
    if (ot::Mac::Address::IsBroadcast(v70))
    {
      v5 = v66;
      ++*(v66 + 6);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v5);
      SendMessage = ot::MeshForwarder::GetSendMessage(v6);
      if (SendMessage && ot::Message::GetSubType(SendMessage) == 12)
      {
        if (*(v66 + 6) < *(v66 + 26))
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "ReTx MLE Advertisement, current tx count=%d", v7, v8, v9, v10, v11, v12, *(v66 + 6));
          return ot::Mac::Links::Send(v66 + 7);
        }
      }

      else if (!*(v66 + 6))
      {
        return ot::Mac::Links::Send(v66 + 7);
      }

      *(v66 + 6) = 0;
    }

    if (AckRequest && v73)
    {
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(v66);
      Neighbor = ot::NeighborTable::FindNeighbor(v14, v70, 1);
      if (!v72)
      {
        if (Neighbor)
        {
          v63 = (v66 + 1364);
          v62 = v73;
          ot::Neighbor::GetExtAddress(Neighbor);
          if (ot::Mac::Filter::ApplyToRxFrame((v66 + 1364), v62, v15, Neighbor))
          {
            v72 = 14;
          }
        }
      }

      if (!v72 && ot::Mac::Mac::ProcessEnhAckSecurity(v66, v74, v73))
      {
        v72 = 14;
      }

      if (!v72 && Neighbor)
      {
        ot::Mac::Mac::UpdateNeighborLinkInfo(v66, Neighbor, v73);
        ot::Mac::Mac::ProcessEnhAckProbing(v66, v73, Neighbor);
        if (ot::Mac::Frame::GetVersion(v73, v16) == 0x2000)
        {
          ot::Mac::Mac::ProcessCsl(v66, v73, v70);
        }

        if ((*v66 & 4) == 0)
        {
          ot::Mac::Frame::GetHeaderIe(v74, 0x1Au);
          if (v17)
          {
            v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(v66);
            ot::DataPollSender::ResetKeepAliveTimer(v18);
          }
        }
      }
    }
  }

  v61 = *(v66 + 1);
  switch(v61)
  {
    case 1:
      v19 = v66;
      ++*(v66 + 93);
      return ot::TimerMilli::Start((v19 + 312), *(v19 + 9));
    case 3:
      v20 = v66;
      ++*(v66 + 92);
      ot::Mac::Mac::FinishOperation(v20);
      return ot::Mac::Mac::PerformNextOperation(v66);
    case 4:
      ++*(v66 + 90);
      if (v72)
      {
        ++*(v66 + 96);
      }

      else if (ot::Mac::Links::GetTransmitRetries((v66 + 56)) < 16)
      {
        v59 = v66 + 528;
        TransmitRetries = ot::Mac::Links::GetTransmitRetries((v66 + 56));
        ++*(v66 + TransmitRetries + 132);
      }

      SubMac = ot::Mac::Links::GetSubMac((v66 + 56));
      if (ot::Mac::SubMac::GetTransmitErrorsNoAck(SubMac) < 17)
      {
        v58 = v66 + 596;
        v33 = ot::Mac::Links::GetSubMac((v66 + 56));
        TransmitErrorsNoAck = ot::Mac::SubMac::GetTransmitErrorsNoAck(v33);
        ++*(v66 + TransmitErrorsNoAck + 149);
      }

      v35 = ot::Mac::Links::GetSubMac((v66 + 56));
      if (ot::Mac::SubMac::GetTransmitErrorsChannelAccessFailure(v35) < 17)
      {
        v36 = ot::Mac::Links::GetSubMac((v66 + 56));
        TransmitErrorsChannelAccessFailure = ot::Mac::SubMac::GetTransmitErrorsChannelAccessFailure(v36);
        ++*(v66 + TransmitErrorsChannelAccessFailure + 166);
      }

      ot::Mac::Mac::FinishOperation(v66);
      v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v66);
      ot::MeshForwarder::HandleSentFrame(v38, v74, v72);
      v39 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(v66);
      ot::DataPollSender::ProcessTxDone(v39, v74, v73, v72);
      return ot::Mac::Mac::PerformNextOperation(v66);
    case 5:
      v60 = 1;
      if (!ot::Mac::Frame::IsEmpty(v74))
      {
        v60 = AckRequest;
      }

      if ((v60 & 1) == 0)
      {
        __assert_rtn("HandleTransmitDone", "mac.cpp", 1855, "aFrame.IsEmpty() || ackRequested");
      }

      if (!v72 && v73)
      {
        FramePending = ot::Mac::Frame::GetFramePending(v73, v21);
        if ((ot::Mac::Mac::IsEnabled(v66) & 1) != 0 && FramePending)
        {
          ot::Mac::Mac::StartOperation(v66, 6u);
        }

        v22 = ot::ToYesNo(FramePending);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Sent data poll, fp:%s", v23, v24, v25, v26, v27, v28, v22);
      }

      v29 = v66;
      ++*(v66 + 91);
      ot::Mac::Mac::FinishOperation(v29);
      v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(v66);
      ot::DataPollSender::HandlePollSent(v30, v74, v72);
      return ot::Mac::Mac::PerformNextOperation(v66);
    case 7:
      ++*(v66 + 90);
      if (v72)
      {
        ++*(v66 + 97);
      }

      else if (ot::Mac::Links::GetTransmitRetries((v66 + 56)) < 1)
      {
        v42 = ot::Mac::Links::GetTransmitRetries((v66 + 56));
        ++*(v66 + v42 + 148);
      }

      ot::Mac::Mac::FinishOperation(v66);
      v43 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(v66);
      ot::DataPollHandler::HandleSentFrame(v43, v74, v72);
      return ot::Mac::Mac::PerformNextOperation(v66);
    case 8:
      v40 = v66;
      ++*(v66 + 90);
      ot::Mac::Mac::FinishOperation(v40);
      v41 = ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(v66);
      ot::CslTxScheduler::HandleSentFrame(v41, v74, v72);
      return ot::Mac::Mac::PerformNextOperation(v66);
    case 9:
      ot::Mac::Mac::FinishOperation(v66);
      v44 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(v66);
      if (!ot::Mle::Mle::isThreadRegulatoryCertEnabled(v44))
      {
        ot::InstanceLocator::GetInstance(v66);
        if (otPlatRadioGetRcp2Vendor2Enabled())
        {
          v45 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(v66);
          if (!ot::Mle::Mle::IsCslPeripheralAttached(v45))
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "%s:kOperationTransmitWakeup complete,stop Wakeup explicitly in mOperation = %d", v46, v47, v48, v49, v50, v51, "HandleTransmitDone", *(v66 + 1));
            ot::InstanceLocator::GetInstance(v66);
            otPlatRadioStopWakeup();
            ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "%s:Stop wakeup completed", v52, v53, v54, v55, v56, v57, "HandleTransmitDone");
          }
        }
      }

      return ot::Mac::Mac::PerformNextOperation(v66);
    default:
      __assert_rtn("HandleTransmitDone", "mac.cpp", 1984, "false");
  }
}

uint64_t ot::Mac::Mac::RecordCcaStatus(ot::Mac::Mac *this, char a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    ++*(this + 98);
    if (ot::Mac::Mac::IsPerformingCslTransmit(this))
    {
      ++*(this + 103);
    }
  }

  if (a3 == *(this + 10) || (result = ot::Mac::Mac::IsCslEnabled(this), (result & 1) != 0) && a3 == *(this + 32))
  {
    if (*(this + 263) < 0x200u)
    {
      ++*(this + 263);
    }

    return ot::SuccessRateTracker::AddSample(this + 262, a2 & 1, *(this + 263));
  }

  return result;
}

BOOL ot::Mac::Mac::IsPerformingCslTransmit(ot::Mac::Mac *this)
{
  return *(this + 1) == 8;
}

{
  return ot::Mac::Mac::IsPerformingCslTransmit(this);
}

BOOL ot::Mac::Mac::IsCslEnabled(ot::Mac::Mac *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  v4 = 0;
  if (!ot::Mle::Mle::IsRxOnWhenIdle(v1))
  {
    return ot::Mac::Mac::IsCslCapable(this);
  }

  return v4;
}

uint64_t ot::Mac::Mac::RecordFrameTransmitStatus(ot::Mac::Mac *a1, ot::Mac::Frame *a2, int a3, unsigned __int8 a4, char a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  AckRequest = ot::Mac::Frame::GetAckRequest(a2, a2);
  ot::Mac::Address::Address(v14);
  v12 = "";
  result = ot::Mac::Frame::IsEmpty(v19);
  if (result)
  {
    return result;
  }

  ot::Mac::Frame::GetDstAddr(v19, v14);
  IgnoreError();
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
  Neighbor = ot::NeighborTable::FindNeighbor(v6, v14, 1);
  if (Neighbor && AckRequest)
  {
    v11 = 1;
    if (!v18)
    {
LABEL_7:
      LinkInfo = ot::Neighbor::GetLinkInfo(Neighbor);
      ot::LinkQualityInfo::AddFrameTxStatus(LinkInfo, v11 & 1);
      goto LABEL_8;
    }

    if (v18 == 14)
    {
      v11 = 0;
      goto LABEL_7;
    }
  }

LABEL_8:
  if (Neighbor)
  {
    v8 = ot::Neighbor::GetLinkInfo(Neighbor);
    ot::LinkQualityInfo::ToErrorRateInfoString(v8, v21);
    v12 = ot::String<(unsigned short)128>::AsCString(v21);
  }

  if (v18)
  {
    ot::Mac::Mac::LogFrameTxFailure(a1, v19, v18, v17, v16 & 1, v12);
    Header = ot::Mac::Frame::GetHeader(v19);
    result = ot::Logger::Dump<(ot::LogLevel)5,&ot::Mac::kLogModuleName>("TX ERR", Header, 16);
    if (v16)
    {
      ++*(a1 + 95);
      return result;
    }
  }

  else
  {
    ot::Mac::Mac::LogFrameTx(a1, v19, v12);
  }

  ++*(a1 + 84);
  if (v18 == 11)
  {
    ++*(a1 + 99);
  }

  if (v18 == 15)
  {
    ++*(a1 + 100);
  }

  if (AckRequest)
  {
    ++*(a1 + 87);
    if (!v18)
    {
      ++*(a1 + 88);
    }
  }

  else
  {
    ++*(a1 + 89);
  }

  result = ot::Mac::Address::IsBroadcast(v14);
  if (result)
  {
    ++*(a1 + 86);
  }

  else
  {
    ++*(a1 + 85);
  }

  return result;
}

BOOL ot::Mac::Frame::GetAckRequest(ot::Mac::Frame *this, unsigned __int16 a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  return ot::Mac::Frame::IsAckRequest(FrameControlField, v3, v4, v5);
}

{
  return ot::Mac::Frame::GetAckRequest(this, a2);
}

_WORD *ot::LinkQualityInfo::AddFrameTxStatus(ot::LinkQualityInfo *this, char a2)
{
  return ot::SuccessRateTracker::AddSample(this + 2, a2 & 1, 0x80u);
}

{
  return ot::LinkQualityInfo::AddFrameTxStatus(this, a2);
}

uint64_t ot::String<(unsigned short)128>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)128>::AsCString(a1);
}

void ot::Mac::Mac::LogFrameTx(ot::Mac::Mac *this, const ot::Mac::TxFrame *a2, const char *a3)
{
  v117 = this;
  v116 = a2;
  v115 = a3;
  v111 = this;
  Airtime = ot::Mac::TxFrame::GetAirtime(a2);
  v109 = ot::Mac::TxFrame::GetAirtime(v116);
  v113 = v109 + ot::Mac::TxFrame::GetIFS(v116);
  LODWORD(v3) = Airtime;
  *&v4 = v3;
  LODWORD(v4) = v113;
  *&v3 = 100.0 * v3 / v4;
  v112 = *&v3;
  Rcp2FrameVersion = ot::Mac::TxFrame::GetRcp2FrameVersion(v116);
  switch(Rcp2FrameVersion)
  {
    case 1:
      goto LABEL_11;
    case 2:
      Channel = ot::Mac::Frame::GetChannel(v116);
      v102 = 0.25 * ot::Mac::TxFrame::GetTxPower(v116);
      TxRetryCount = ot::Mac::TxFrame::GetTxRetryCount(v116);
      v99 = v122;
      ot::Mac::Frame::ToInfoString(v116, v122);
      v104 = ot::String<(unsigned short)150>::AsCString(v122);
      v100 = 100;
      v105 = ot::Mac::Mac::GetCcaFailureRatePercent(v111) / 0x64;
      v106 = ot::Mac::Mac::GetCcaFailureRatePercent(v111) % 0x64;
      Antenna = ot::Mac::TxFrame::GetAntenna(v116);
      IFS = ot::Mac::TxFrame::GetIFS(v116);
      v108 = &v53;
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, %s, ccaFailureRate:%d.%02d%%%s antenna=%d, ifs=%d microSec", v6, v7, v8, v9, v10, v11, Channel, *&v102, TxRetryCount, v104, v105, v106, v115, Antenna, IFS);
      return;
    case 4:
    case 3:
      v90 = ot::Mac::Frame::GetChannel(v116);
      v91 = 0.25 * ot::Mac::TxFrame::GetTxPower(v116);
      v92 = ot::Mac::TxFrame::GetTxRetryCount(v116);
      v88 = v121;
      ot::Mac::Frame::ToInfoString(v116, v121);
      v93 = ot::String<(unsigned short)150>::AsCString(v121);
      v89 = 100;
      v94 = ot::Mac::Mac::GetCcaFailureRatePercent(v111) / 0x64;
      v95 = ot::Mac::Mac::GetCcaFailureRatePercent(v111) % 0x64;
      v96 = ot::Mac::TxFrame::GetAntenna(v116);
      v97 = ot::Mac::TxFrame::GetIFS(v116);
      v12 = ot::Mac::TxFrame::GetAirtime(v116);
      v98 = &v53;
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, %s, ccaFailureRate:%d.%02d%%%s antenna=%d, ifs=%d microSec, airtime=%d microSec, DutyCycle=%2.3f%%", v13, v14, v15, v16, v17, v18, v90, *&v91, v92, v93, v94, v95, v115, v96, v97, v12, v112);
      return;
    case 5:
      v76 = ot::Mac::Frame::GetChannel(v116);
      v77 = 0.25 * ot::Mac::TxFrame::GetTxPower(v116);
      v78 = ot::Mac::TxFrame::GetTxRetryCount(v116);
      v74 = v120;
      ot::Mac::Frame::ToInfoString(v116, v120);
      v79 = ot::String<(unsigned short)150>::AsCString(v120);
      v75 = 100;
      v80 = ot::Mac::Mac::GetCcaFailureRatePercent(v111) / 0x64;
      v81 = ot::Mac::Mac::GetCcaFailureRatePercent(v111) % 0x64;
      v82 = v115;
      v83 = ot::Mac::TxFrame::GetAntenna(v116);
      v84 = ot::Mac::TxFrame::GetIFS(v116);
      v85 = ot::Mac::TxFrame::GetAirtime(v116);
      v86 = v112;
      PcapMode = ot::Mac::TxFrame::GetPcapMode(v116);
      v87 = &v53;
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, %s, ccaFailureRate:%d.%02d%%%s antenna=%d, ifs=%d microSec, airtime=%d microSec, DutyCycle=%2.3f%%, pcap mode=%d", v20, v21, v22, v23, v24, v25, v76, *&v77, v78, v79, v80, v81, v115, v83, v84, v85, v112, PcapMode);
      v26 = ot::Mac::TxFrame::GetPcapMode(v116);
      ot::Mac::Mac::UpdatePcapStats(v111, v26, v27, v28, v29, v30, v31, v32);
      return;
    case 6:
      v61 = ot::Mac::Frame::GetChannel(v116);
      v62 = 0.25 * ot::Mac::TxFrame::GetTxPower(v116);
      v63 = ot::Mac::TxFrame::GetTxRetryCount(v116);
      RCPTimeStamp = ot::Mac::TxFrame::GetRCPTimeStamp(v116);
      v59 = v119;
      ot::Mac::Frame::ToInfoString(v116, v119);
      v65 = ot::String<(unsigned short)150>::AsCString(v119);
      v60 = 100;
      v66 = ot::Mac::Mac::GetCcaFailureRatePercent(v111) / 0x64;
      v67 = ot::Mac::Mac::GetCcaFailureRatePercent(v111) % 0x64;
      v68 = v115;
      v69 = ot::Mac::TxFrame::GetAntenna(v116);
      v70 = ot::Mac::TxFrame::GetIFS(v116);
      v71 = ot::Mac::TxFrame::GetAirtime(v116);
      v72 = v112;
      v33 = ot::Mac::TxFrame::GetPcapMode(v116);
      v73 = &v53;
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, rcpTs:%u, %s, ccaFailureRate:%d.%02d%%%s antenna=%d, ifs=%d microSec, airtime=%d microSec, DutyCycle=%2.3f%%, pcap mode=%d", v61, v34, v35, v36, v37, v38, v61, *&v62, v63, RCPTimeStamp, v65, v66, v67, v115, v69, v70, v71, v112, v33);
      v39 = ot::Mac::TxFrame::GetPcapMode(v116);
      ot::Mac::Mac::UpdatePcapStats(v111, v39, v40, v41, v42, v43, v44, v45);
      break;
    default:
LABEL_11:
      LOBYTE(v54) = ot::Mac::Frame::GetChannel(v116);
      v55 = 0.25 * ot::Mac::TxFrame::GetTxPower(v116);
      LOBYTE(v56) = ot::Mac::TxFrame::GetTxRetryCount(v116);
      ot::Mac::Frame::ToInfoString(v116, v118);
      v58 = ot::String<(unsigned short)150>::AsCString(v118);
      v57 = ot::Mac::Mac::GetCcaFailureRatePercent(v111) / 0x64;
      CcaFailureRatePercent = ot::Mac::Mac::GetCcaFailureRatePercent(v111);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, %s, ccaFailureRate:%d.%02d%%%s", v47, v48, v49, v50, v51, v52, v54, *&v55, v56, v58, v57, CcaFailureRatePercent % 0x64, v115);
      break;
  }
}

void ot::Mac::Mac::LogFrameTxFailure(ot::InstanceLocator *a1, ot::Mac::TxFrame *a2, int a3, unsigned __int8 a4, char a5, const char *a6)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v34 = a1;
  v36 = ot::Mac::TxFrame::GetMaxFrameRetries(a2) + 1;
  if (v38)
  {
    v33 = v39 + 1;
  }

  else
  {
    v33 = v36;
  }

  v35 = v33;
  ot::InstanceLocator::GetInstance(v34);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    v20 = v35;
    v21 = v36;
    TxPower = ot::Mac::TxFrame::GetTxPower(v41);
    TxRetryCount = ot::Mac::TxFrame::GetTxRetryCount(v41);
    v24 = otThreadErrorToString(v40);
    RCPTimeStamp = ot::Mac::TxFrame::GetRCPTimeStamp(v41);
    v18[13] = v43;
    ot::Mac::Frame::ToInfoString(v41, v43);
    v26 = ot::String<(unsigned short)150>::AsCString(v43);
    v19 = 100;
    v27 = ot::Mac::Mac::GetCcaFailureRatePercent(v34) / 0x64;
    v28 = ot::Mac::Mac::GetCcaFailureRatePercent(v34) % 0x64;
    v29 = v37;
    v30 = *(v41 + 57);
    Antenna = ot::Mac::TxFrame::GetAntenna(v41);
    PcapMode = ot::Mac::TxFrame::GetPcapMode(v41);
    v32 = v18;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Frame tx attempt %d/%d failed, txPower=%f, retryCount=%d, error:%s, rcpTs:%u, %s, ccaFailureRate:%d.%02d%%%s, RCP2Status=%d antenna=%d, pcap mode=%d", v36, v35, v7, v8, v9, v10, v35, v36, *&TxPower, TxRetryCount, v24, RCPTimeStamp, v26, v27, v28, v37, v30, Antenna, PcapMode);
    v11 = ot::Mac::TxFrame::GetPcapMode(v41);
    ot::Mac::Mac::UpdatePcapStats(v34, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    ot::Mac::Mac::LogVendorRCP2(v34, v41, v37, v35, v36, v40);
  }
}

uint64_t ot::Mac::Frame::GetHeader(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetPsdu(this);
}

{
  return ot::Mac::Frame::GetPsdu(this);
}

{
  return ot::Mac::Frame::GetHeader(this);
}

{
  return ot::Mac::Frame::GetHeader(this);
}

BOOL ot::Mac::Address::IsBroadcast(ot::Mac::Address *this)
{
  v2 = 0;
  if (*(this + 8) == 1)
  {
    return ot::Mac::Address::GetShort(this) == 0xFFFF;
  }

  return v2;
}

{
  return ot::Mac::Address::IsBroadcast(this);
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Update(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if (a2 > 0)
  {
    v3 = a2 / 5;
  }

  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::IncrementRange(a1, v3);
}

{
  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Update(a1, a2);
}

uint64_t ot::Mac::Frame::GetLength(ot::Mac::Frame *this)
{
  return *(this + 4);
}

{
  return ot::Mac::Frame::GetLength(this);
}

uint64_t ot::Mac::Mac::ProcessEnhAckSecurity(ot::Mac::Mac *this, ot::Mac::TxFrame *a2, ot::Mac::RxFrame *a3)
{
  v45 = this;
  v44 = a2;
  v43 = a3;
  v42 = 8;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  ot::Mac::Address::Address(v36);
  ot::Mac::Address::Address(v35);
  Neighbor = 0;
  v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  if (!ot::Mac::Frame::GetSecurityEnabled(v43, v3))
  {
    v42 = 0;
    goto LABEL_30;
  }

  if (ot::Mac::Frame::IsVersion2015(v43, v4) && !ot::Mac::Frame::ValidatePsdu(v43))
  {
    ot::Mac::Frame::GetSecurityLevel(v43, &v41);
    IgnoreError();
    if (v41 == 5)
    {
      ot::Mac::Frame::GetKeyIdMode(v43, &v38);
      IgnoreError();
      if (v38 == 8)
      {
        ot::Mac::Frame::GetKeyId(v44, &v40);
        IgnoreError();
        ot::Mac::Frame::GetKeyId(v43, &v39);
        IgnoreError();
        if (v40 == v39)
        {
          ot::Mac::Frame::GetFrameCounter(v43, &v37);
          IgnoreError();
          v11 = ot::ToUlong(v37);
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security - Ack frame counter %lu", v12, v13, v14, v15, v16, v17, v11);
          ot::Mac::Frame::GetSrcAddr(v43, v36);
          IgnoreError();
          if (ot::Mac::Address::IsNone(v36))
          {
            ot::Mac::Frame::GetDstAddr(v44, v35);
            IgnoreError();
            if (!ot::Mac::Address::IsNone(v35))
            {
              v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
              Neighbor = ot::NeighborTable::FindNeighbor(v19, v35, 1);
            }
          }

          else
          {
            v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
            Neighbor = ot::NeighborTable::FindNeighbor(v18, v36, 1);
          }

          if (!ot::Mac::Address::IsExtended(v36) && Neighbor)
          {
            ot::Neighbor::GetExtAddress(Neighbor);
            ot::Mac::Address::SetExtended(v36, v20);
          }

          if (ot::Mac::Address::IsExtended(v36) && Neighbor)
          {
            v30 = --v39;
            if (v30 == (ot::KeyManager::GetCurrentKeySequence(v33) & 0x7F))
            {
              SubMac = ot::Mac::Links::GetSubMac((this + 56));
              CurrentMacKey = ot::Mac::SubMac::GetCurrentMacKey(SubMac);
            }

            else
            {
              v29 = v39;
              if (v29 == ((ot::KeyManager::GetCurrentKeySequence(v33) - 1) & 0x7F))
              {
                v22 = ot::Mac::Links::GetSubMac((this + 56));
                CurrentMacKey = ot::Mac::SubMac::GetPreviousMacKey(v22);
              }

              else
              {
                v28 = v39;
                if (v28 != ((ot::KeyManager::GetCurrentKeySequence(v33) + 1) & 0x7F))
                {
                  goto LABEL_30;
                }

                v23 = ot::Mac::Links::GetSubMac((this + 56));
                CurrentMacKey = ot::Mac::SubMac::GetNextMacKey(v23);
              }
            }

            if (!ot::Neighbor::IsStateValid(Neighbor) || (v27 = v37, v27 >= ot::Neighbor::GetLinkAckFrameCounter(Neighbor)))
            {
              v26 = v43;
              ot::Mac::Address::GetExtended(v36);
              v42 = ot::Mac::RxFrame::ProcessReceiveAesCcm(v26, v24, CurrentMacKey);
              if (!v42 && ot::Neighbor::IsStateValid(Neighbor))
              {
                ot::Neighbor::SetLinkAckFrameCounter(Neighbor, v37 + 1);
              }
            }
          }
        }
      }
    }
  }

LABEL_30:
  if (v42)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Frame tx attempt failed, error: Enh-ACK security check fail", v5, v6, v7, v8, v9, v10);
  }

  return v42;
}

void ot::Mac::Mac::UpdateNeighborLinkInfo(ot::Mac::Mac *this, ot::Neighbor *a2, const ot::Mac::RxFrame *a3)
{
  LinkInfo = ot::Neighbor::GetLinkInfo(a2);
  LinkQuality = ot::LinkQualityInfo::GetLinkQuality(LinkInfo);
  v11 = ot::Neighbor::GetLinkInfo(a2);
  Rssi = ot::Mac::RxFrame::GetRssi(a3);
  ot::LinkQualityInfo::AddRss(v11, Rssi);
  Type = ot::Mac::Frame::GetType(a3);
  Lqi = ot::Mac::RxFrame::GetLqi(a3);
  v5 = ot::Mac::RxFrame::GetRssi(a3);
  ot::Neighbor::AggregateLinkMetrics(a2, 0, Type, Lqi, v5);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsChild(v6))
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (a2 == ot::Mle::Mle::GetParent(v7))
    {
      v8 = ot::Neighbor::GetLinkInfo(a2);
      if (ot::LinkQualityInfo::GetLinkQuality(v8) != LinkQuality)
      {
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
        ot::Notifier::Signal(v9, 0x80000000);
      }
    }
  }
}

ot::Mac::HeaderIe *ot::Mac::Mac::ProcessEnhAckProbing(ot::Mac::Mac *this, const ot::Mac::RxFrame *a2, const ot::Neighbor *a3)
{
  result = ot::Mac::Frame::GetThreadIe(a2, 0);
  v7 = result + 6;
  if (result)
  {
    result = ot::Mac::HeaderIe::GetLength(result);
    v6 = result - 4;
    if ((result - 4) <= 2u)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(this);
      return ot::LinkMetrics::Initiator::ProcessEnhAckIeData(v4, v7, v6, a3);
    }
  }

  return result;
}

uint64_t ot::Mac::Frame::GetVersion(ot::Mac::Frame *this, unsigned __int16 a2)
{
  return ot::Mac::Frame::GetFrameControlField(this, a2) & 0x3000;
}

{
  return ot::Mac::Frame::GetVersion(this, a2);
}

uint64_t ot::Mac::Mac::ProcessCsl(ot::Mac::Mac *this, const ot::Mac::RxFrame *a2, const ot::Mac::Address *a3)
{
  v61 = 0;
  v58 = 0;
  if (ot::Mac::Frame::IsVersion2015(a2, a2) && ot::Mac::Frame::GetSecurityEnabled(a2, v3))
  {
    HeaderIe = ot::Mac::Frame::GetHeaderIe(a2, 0x1Au);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    ot::ChildTable::FindChild(v4, a3, 5);
    v59 = v5;
    if (v5)
    {
      if (HeaderIe)
      {
        v58 = (HeaderIe + 2);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        if (ot::Mle::Mle::IsCslPeripheralPresent(v6))
        {
          if (ot::CslTxScheduler::ChildInfo::GetCslPeriod((v59 + 168)))
          {
            CslPeriod = ot::CslTxScheduler::ChildInfo::GetCslPeriod((v59 + 168));
            if (CslPeriod != ot::Mac::CslIe::GetPeriod(v58, v8))
            {
              Short = ot::Mac::Address::GetShort(a3);
              v51 = ot::CslTxScheduler::ChildInfo::GetCslPeriod((v59 + 168));
              Period = ot::Mac::CslIe::GetPeriod(v58, v9);
              ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Child %x sent CSL period with error %d", v11, v12, v13, v14, v15, v16, Short, (v51 - Period));
            }
          }

          v48 = *ot::Mac::RxFrame::GetTimestamp(a2);
          v49 = v48 - ot::CslTxScheduler::ChildInfo::GetLastRxTimestamp((v59 + 168));
          v50 = v49 + 160 * ot::Mac::CslIe::GetPhase(v58, v17);
          v57 = v50 % (160 * ot::CslTxScheduler::ChildInfo::GetCslPeriod((v59 + 168)));
          if (v57 > (160 * ot::CslTxScheduler::ChildInfo::GetCslPeriod((v59 + 168)) / 2))
          {
            v57 -= 160 * ot::CslTxScheduler::ChildInfo::GetCslPeriod((v59 + 168));
          }

          v18 = ot::Mac::Address::GetShort(a3);
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Child %x sent CSL phase with error %d us", v19, v20, v21, v22, v23, v24, v18, v57);
        }

        else if (ot::Mac::CslIe::GetPeriod(v58, v7) >= 10)
        {
          v26 = ot::Mac::CslIe::GetPeriod(v58, v25);
          ot::CslTxScheduler::ChildInfo::SetCslPeriod(v59 + 168, v26);
          Phase = ot::Mac::CslIe::GetPhase(v58, v27);
          ot::CslTxScheduler::ChildInfo::SetCslPhase(v59 + 168, Phase);
          v29 = ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v59 + 168, 1);
          Now = ot::TimerMilli::GetNow(v29);
          ot::CslTxScheduler::ChildInfo::SetCslLastHeard(v59 + 168, Now);
          Timestamp = ot::Mac::RxFrame::GetTimestamp(a2);
          ot::CslTxScheduler::ChildInfo::SetLastRxTimestamp(v59 + 168, *Timestamp);
          v31 = ot::Mac::RxFrame::GetTimestamp(a2);
          v44 = ot::ToUlong(*v31);
          Sequence = ot::Mac::Frame::GetSequence(a2);
          v46 = ot::Mac::CslIe::GetPeriod(v58, v32);
          v47 = ot::Mac::CslIe::GetPhase(v58, v33);
          CslPhase = ot::CslTxScheduler::ChildInfo::GetCslPhase((v59 + 168));
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Timestamp=%lu Sequence=%u CslPeriod=%u CslPhase=%u TransmitPhase=%u", v35, v36, v37, v38, v39, v40, v44, Sequence, v46, v47, CslPhase);
          v41 = ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(this);
          ot::CslTxScheduler::Update(v41);
        }
      }

      if (!ot::Mac::Frame::IsAck(a2) && ot::Mac::Frame::GetSecurityEnabled(a2, v42))
      {
        if (ot::Mac::Frame::GetType(a2) == 1 && v58)
        {
          v55 = ot::Mac::Frame::GetSequence(a2);
          if ((ot::CslTxScheduler::ChildInfo::IsCslPrevSnValid((v59 + 168)) & 1) != 0 && ot::CslTxScheduler::ChildInfo::GetCslPrevSn((v59 + 168)) == v55)
          {
            return 29;
          }

          else
          {
            ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid((v59 + 168), 1);
            ot::CslTxScheduler::ChildInfo::SetCslPrevSn(v59 + 168, v55);
          }
        }

        else
        {
          ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid((v59 + 168), 0);
        }
      }
    }
  }

  return v61;
}

uint64_t ot::Mac::Links::GetTransmitRetries(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetTransmitRetries((this + 8));
}

{
  return ot::Mac::Links::GetTransmitRetries(this);
}

uint64_t ot::Mac::SubMac::GetTransmitErrorsNoAck(ot::Mac::SubMac *this)
{
  return *(this + 4);
}

{
  return ot::Mac::SubMac::GetTransmitErrorsNoAck(this);
}

uint64_t ot::Mac::SubMac::GetTransmitErrorsChannelAccessFailure(ot::Mac::SubMac *this)
{
  return *(this + 5);
}

{
  return ot::Mac::SubMac::GetTransmitErrorsChannelAccessFailure(this);
}

uint64_t ot::Mac::Mac::ProcessReceiveSecurity(ot::Mac::Mac *this, ot::Mac::RxFrame *a2, const ot::Mac::Address *a3, ot::Neighbor *a4)
{
  v157 = this;
  v156 = a2;
  v155 = a3;
  v154 = a4;
  v143 = this;
  v153 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  v152 = 8;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  CurrentMacKey = 0;
  v146 = 0;
  v145 = 0;
  if (ot::Mac::Frame::GetSecurityEnabled(v156, v4))
  {
    ot::Mac::Frame::GetSecurityLevel(v156, &v151 + 1);
    IgnoreError();
    if (HIBYTE(v151) == 5)
    {
      ot::Mac::Frame::GetFrameCounter(v156, &v150);
      IgnoreError();
      ot::Mac::Frame::GetKeyIdMode(v156, &v151);
      IgnoreError();
      if (v154)
      {
        v135 = ot::ToUlong(v150);
        v136 = v151;
        v137 = HIBYTE(v151);
        Rloc16 = ot::Neighbor::GetRloc16(v154);
        ot::Neighbor::GetExtAddress(v154);
        v134 = v164;
        ot::Mac::ExtAddress::ToString(v11, v164);
        v139 = ot::String<(unsigned short)17>::AsCString(v164);
        State = ot::Neighbor::GetState(v154);
        IsStateValid = ot::Neighbor::IsStateValid(v154);
        KeySequence = ot::Neighbor::GetKeySequence(v154);
        v142 = &v90;
        ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security - frame counter %lu keyIdMode:%u securityLevel:%d nbr.rloc:0x%x nbr.ext:%s nbr.state:%d nbr.isStateValid:%d nbr.keSeq:%d", v13, v14, v15, v16, v17, v18, v135, v136, v137, Rloc16, v139, State, IsStateValid, KeySequence);
      }

      else
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security - frame counter %u keyIdMode:%u securityLevel:%d", v5, v6, v7, v8, v9, v10, v150, v151, HIBYTE(v151));
      }

      v133 = v151;
      if (v151)
      {
        if (v133 == 8)
        {
          if (!v154)
          {
            goto LABEL_45;
          }

          v145 = ot::Neighbor::IsStateValid(v154);
          ot::Mac::Frame::GetKeyId(v156, &v149);
          IgnoreError();
          v132 = --v149;
          CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v153);
          if (v132 == (CurrentKeySequence & 0x7F))
          {
            v148 = ot::KeyManager::GetCurrentKeySequence(v153);
            CurrentMacKey = ot::Mac::Links::GetCurrentMacKey((v143 + 56), v156);
          }

          else
          {
            v131 = v149;
            v21 = ot::KeyManager::GetCurrentKeySequence(v153);
            if (v131 == ((v21 - 1) & 0x7F))
            {
              v148 = ot::KeyManager::GetCurrentKeySequence(v153) - 1;
              CurrentMacKey = ot::Mac::Links::GetTemporaryMacKey((v143 + 56), v156, v148);
            }

            else
            {
              v130 = v149;
              v22 = ot::KeyManager::GetCurrentKeySequence(v153);
              if (v130 != ((v22 + 1) & 0x7F))
              {
                v126 = ot::ErrorToString(v152);
                v127 = v148;
                v128 = CurrentMacKey;
                v129 = v149;
                v23 = ot::KeyManager::GetCurrentKeySequence(v153);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security error exit:%s keySequence(%d) macKey(%d) keyId(%d) keyManager.CurrentKeySeq:%d frameCounter:%u", v24, v25, v26, v27, v28, v29, v126, v127, v128, v129, v23, v150);
                goto LABEL_45;
              }

              v148 = ot::KeyManager::GetCurrentKeySequence(v153) + 1;
              CurrentMacKey = ot::Mac::Links::GetTemporaryMacKey((v143 + 56), v156, v148);
            }
          }

          if (v145)
          {
            v125 = v148;
            v30 = ot::Neighbor::GetKeySequence(v154);
            if (v125 < v30)
            {
              v120 = ot::ErrorToString(v152);
              v121 = v151;
              v122 = v148;
              v123 = ot::Neighbor::GetKeySequence(v154);
              v124 = ot::Neighbor::GetRloc16(v154);
              ot::Neighbor::GetExtAddress(v154);
              v119 = v163;
              ot::Mac::ExtAddress::ToString(v31, v163);
              v32 = ot::String<(unsigned short)17>::AsCString(v119);
              ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security error exit seqnum mismatch error:%s keyIdMode:%d keySequence:%u nbr.keySequence:%u nbr.rloc16:0x%x nbr.extAddr:%s", v33, v34, v35, v36, v37, v38, v120, v121, v122, v123, v124, v32);
              goto LABEL_45;
            }

            v118 = v148;
            v39 = ot::Neighbor::GetKeySequence(v154);
            if (v118 == v39)
            {
              v144 = 0;
              LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(v154);
              v144 = ot::Mac::LinkFrameCounters::Get(LinkFrameCounters);
              if (v150 + 1 == v144)
              {
                v113 = ot::ErrorToString(29);
                v114 = v151;
                v115 = v150;
                v116 = v144;
                v117 = ot::Neighbor::GetRloc16(v154);
                ot::Neighbor::GetExtAddress(v154);
                v112 = v162;
                ot::Mac::ExtAddress::ToString(v41, v162);
                v42 = ot::String<(unsigned short)17>::AsCString(v112);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx error: %s keyIdMode:%d frameCounter:%u nbr.FrameCounter:%u nbr.rloc16:0x%x nbr.extAddr:%s", v43, v44, v45, v46, v47, v48, v113, v114, v115, v116, v117, v42);
              }

              else if (v150 < v144)
              {
                v107 = ot::ErrorToString(8);
                v108 = v151;
                v109 = v150;
                v110 = v144;
                v111 = ot::Neighbor::GetRloc16(v154);
                ot::Neighbor::GetExtAddress(v154);
                v106 = v161;
                ot::Mac::ExtAddress::ToString(v49, v161);
                v50 = ot::String<(unsigned short)17>::AsCString(v106);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx error: %s frame counter mismatch, keyIdMode:%d frameCounter:%u nbr.FrameCounter:%u nbr.rloc16:0x%x nbr.extAddr:%s", v51, v52, v53, v54, v55, v56, v107, v108, v109, v110, v111, v50);
              }

              if (v150 + 1 == v144)
              {
                v152 = 29;
                goto LABEL_45;
              }

              if (v150 < v144)
              {
                goto LABEL_45;
              }
            }
          }

          ot::Mac::Address::GetExtended(v155);
          v146 = v57;
        }

        else
        {
          if (v133 != 16)
          {
            goto LABEL_45;
          }

          CurrentMacKey = (v143 + 1688);
          ot::AsCoreType<otExtAddress>(&ot::Mac::Mac::sMode2ExtAddress);
          v146 = v58;
        }
      }

      else
      {
        CurrentMacKey = ot::KeyManager::GetKek(v153);
        ot::Mac::Address::GetExtended(v155);
        v146 = v19;
      }

      if (!ot::Mac::RxFrame::ProcessReceiveAesCcm(v156, v146, CurrentMacKey))
      {
        if (v151 == 8 && v145)
        {
          v59 = ot::Neighbor::GetKeySequence(v154);
          if (v59 != v148)
          {
            v105 = v148;
            v60 = ot::Neighbor::GetKeySequence(v154);
            if (v105 < v60)
            {
              v101 = ot::Neighbor::GetRloc16(v154);
              ot::Neighbor::GetExtAddress(v154);
              v100 = v160;
              ot::Mac::ExtAddress::ToString(v61, v160);
              v102 = ot::String<(unsigned short)17>::AsCString(v100);
              v103 = ot::KeyManager::GetCurrentKeySequence(v153);
              v104 = v148;
              v62 = ot::Neighbor::GetKeySequence(v154);
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mac::kLogModuleName, "%s Neighbor KeySequence is lower than previous RLOC16: 0x%x, ExtAddr: %s, ourKeySeq:%u, nbrCurKeySeq:%u, nbrPrevKeySeq:%u", v63, v64, v65, v66, v67, v68, "ProcessReceiveSecurity", v101, v102, v103, v104, v62);
            }

            ot::Neighbor::SetKeySequence(v154, v148);
            ot::Neighbor::SetMleFrameCounter(v154, 0);
            v69 = ot::Neighbor::GetLinkFrameCounters(v154);
            ot::Mac::LinkFrameCounters::Reset(v69);
          }

          v70 = ot::Neighbor::GetLinkFrameCounters(v154);
          ot::Mac::LinkFrameCounters::Set(v70, v150 + 1);
          v99 = v150 + 1;
          LinkAckFrameCounter = ot::Neighbor::GetLinkAckFrameCounter(v154);
          if (v99 > LinkAckFrameCounter)
          {
            ot::Neighbor::SetLinkAckFrameCounter(v154, v150 + 1);
          }

          v98 = v148;
          v72 = ot::KeyManager::GetCurrentKeySequence(v153);
          if (v98 > v72)
          {
            v94 = ot::Neighbor::GetRloc16(v154);
            ot::Neighbor::GetExtAddress(v154);
            v93 = v159;
            ot::Mac::ExtAddress::ToString(v73, v159);
            v95 = ot::String<(unsigned short)17>::AsCString(v93);
            v96 = ot::KeyManager::GetCurrentKeySequence(v153);
            v97 = v148;
            v74 = ot::Neighbor::GetKeySequence(v154);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "%s Neighbor KeySequence changed RLOC16: 0x%x, ExtAddr: %s, ourKeySeq:%u, nbrCurKeySeq:%u, nbrTableKeySeq:%u", v75, v76, v77, v78, v79, v80, "ProcessReceiveSecurity", v94, v95, v96, v97, v74);
            ot::KeyManager::SetCurrentKeySequence(v153, v148, 3);
          }
        }

        v152 = 0;
      }
    }
  }

  else
  {
    v152 = 0;
  }

LABEL_45:
  if (v152 && v154)
  {
    v92 = ot::Neighbor::GetRloc16(v154);
    ot::Neighbor::GetExtAddress(v154);
    v91 = v158;
    ot::Mac::ExtAddress::ToString(v81, v158);
    v82 = ot::String<(unsigned short)17>::AsCString(v91);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "RX security error: Neighbor's RLOC16: 0x%x, ExtAddr: %s", v83, v84, v85, v86, v87, v88, v92, v82);
  }

  return v152;
}

uint64_t ot::Neighbor::GetKeySequence(ot::Neighbor *this)
{
  return *(this + 6);
}

{
  return ot::Neighbor::GetKeySequence(this);
}

uint64_t ot::Neighbor::GetLinkFrameCounters(ot::Neighbor *this)
{
  return this + 12;
}

{
  return ot::Neighbor::GetLinkFrameCounters(this);
}

uint64_t ot::Mac::LinkFrameCounters::Get(ot::Mac::LinkFrameCounters *this)
{
  return *this;
}

{
  return ot::Mac::LinkFrameCounters::Get(this);
}

uint64_t ot::Neighbor::SetKeySequence(uint64_t this, int a2)
{
  *(this + 24) = a2;
  return this;
}

{
  return ot::Neighbor::SetKeySequence(this, a2);
}

uint64_t ot::Neighbor::SetMleFrameCounter(uint64_t this, int a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Neighbor::SetMleFrameCounter(this, a2);
}

_DWORD *ot::Mac::LinkFrameCounters::Reset(ot::Mac::LinkFrameCounters *this)
{
  return ot::Mac::LinkFrameCounters::SetAll(this, 0);
}

{
  return ot::Mac::LinkFrameCounters::Reset(this);
}

_DWORD *ot::Mac::LinkFrameCounters::Set(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mac::LinkFrameCounters::Set(this, a2);
}

uint64_t ot::Neighbor::GetLinkAckFrameCounter(ot::Neighbor *this)
{
  return *(this + 5);
}

{
  return ot::Neighbor::GetLinkAckFrameCounter(this);
}

uint64_t ot::Neighbor::SetLinkAckFrameCounter(uint64_t this, int a2)
{
  *(this + 20) = a2;
  return this;
}

{
  return ot::Neighbor::SetLinkAckFrameCounter(this, a2);
}

BOOL ot::Mac::Frame::IsVersion2015(ot::Mac::Frame *this, unsigned __int16 a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this, a2);
  return ot::Mac::Frame::IsVersion2015(FrameControlField);
}

{
  return ot::Mac::Frame::IsVersion2015(this, a2);
}

BOOL ot::Mac::Address::IsNone(ot::Mac::Address *this)
{
  return *(this + 8) == 0;
}

{
  return ot::Mac::Address::IsNone(this);
}

uint64_t ot::Mac::SubMac::GetCurrentMacKey(ot::Mac::SubMac *this)
{
  return this + 80;
}

{
  return ot::Mac::SubMac::GetCurrentMacKey(this);
}

uint64_t ot::Mac::SubMac::GetPreviousMacKey(ot::Mac::SubMac *this)
{
  return this + 64;
}

{
  return ot::Mac::SubMac::GetPreviousMacKey(this);
}

uint64_t ot::Mac::SubMac::GetNextMacKey(ot::Mac::SubMac *this)
{
  return this + 96;
}

{
  return ot::Mac::SubMac::GetNextMacKey(this);
}

uint64_t ot::Mac::Mac::FilterDestShortAddress(ot::Mac::Mac *this, unsigned __int16 a2)
{
  v4 = 0;
  if (a2 != ot::Mac::Mac::GetShortAddress(this) && (ot::Mac::Mac::GetAlternateShortAddress(this) == 65534 || a2 != ot::Mac::Mac::GetAlternateShortAddress(this)) && ((*this & 4) == 0 || a2 != 0xFFFF))
  {
    return 22;
  }

  return v4;
}

void ot::Mac::Mac::HandleReceivedFrame(uint64_t a1, ot::Mac::Frame *a2, int a3)
{
  v68 = a1;
  v67 = a2;
  v66 = a3;
  ot::Mac::Address::Address(v65);
  ot::Mac::Address::Address(v64);
  v63 = 0;
  RxOnlyNeighborRouter = 0;
  v61 = v66;
  ++*(a1 + 432);
  if (v61)
  {
    goto LABEL_97;
  }

  if (!v67)
  {
    v61 = 18;
    goto LABEL_97;
  }

  if ((ot::Mac::Mac::IsEnabled(a1) & 1) == 0)
  {
    v61 = 13;
    goto LABEL_97;
  }

  v61 = ot::Mac::Frame::ValidatePsdu(v67);
  if (v61)
  {
    goto LABEL_97;
  }

  ot::Mac::Frame::GetSrcAddr(v67, v65);
  IgnoreError();
  ot::Mac::Frame::GetDstAddr(v67, v64);
  IgnoreError();
  if (ot::Mac::Address::IsNone(v65))
  {
    Neighbor = 0;
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
    Neighbor = ot::NeighborTable::FindNeighbor(v3, v65, 1);
  }

  RxOnlyNeighborRouter = Neighbor;
  Type = ot::Mac::Address::GetType(v64);
  if (Type)
  {
    if (Type == 1)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      if (ot::Mle::Mle::IsSleepyRouter(v4))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
        IsSleepyRouter = ot::Mle::Mle::IsSleepyRouter(v5);
        IsBroadcast = ot::Mac::Address::IsBroadcast(v64);
        Short = ot::Mac::Address::GetShort(v65);
        v53 = ot::Mac::Address::GetShort(v64);
        ShortAddress = ot::Mac::Mac::GetShortAddress(a1);
        ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Received frame , isSleepyRouter = [%d], isBroadcast = [%d], srcaddr = [0x%04x], dstaddr = [0x%04x], GetShortAddress = [0x%04x]", v7, v8, v9, v10, v11, v12, IsSleepyRouter, IsBroadcast, Short, v53, ShortAddress);
        v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        if (!ot::Mle::Mle::IsFullThreadDevice(v13))
        {
          goto LABEL_97;
        }

        v14 = ot::Mac::Address::GetShort(v64);
        v61 = ot::Mac::Mac::FilterDestShortAddress(a1, v14);
        if (v61)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v15 = ot::Mac::Address::GetShort(v64);
        v61 = ot::Mac::Mac::FilterDestShortAddress(a1, v15);
        if (v61)
        {
          goto LABEL_97;
        }
      }

      if (!RxOnlyNeighborRouter && ot::Mac::Address::IsBroadcast(v64))
      {
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        if (ot::Mle::Mle::IsFullThreadDevice(v16))
        {
          v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
          RxOnlyNeighborRouter = ot::NeighborTable::FindRxOnlyNeighborRouter(v17, v65);
        }
      }
    }

    else if (Type == 2)
    {
      ot::Mac::Address::GetExtended(v64);
      v49 = v18;
      ExtAddress = ot::Mac::Mac::GetExtAddress(a1);
      if (!ot::Equatable<ot::Mac::ExtAddress>::operator==(v49, ExtAddress))
      {
        v61 = 22;
        goto LABEL_97;
      }
    }
  }

  if (!ot::Mac::Frame::GetDstPanId(v67, &v63) && v63 != 0xFFFF && v63 != *(a1 + 8))
  {
    v61 = 22;
    goto LABEL_97;
  }

  v48 = ot::Mac::Address::GetType(v65);
  if (v48)
  {
    if (v48 == 1)
    {
      v20 = ot::Mac::Address::GetShort(v65);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Received frame from short address 0x%04x", v21, v22, v23, v24, v25, v26, v20);
      if (!RxOnlyNeighborRouter)
      {
        v61 = 19;
        goto LABEL_97;
      }

      ot::Neighbor::GetExtAddress(RxOnlyNeighborRouter);
      ot::Mac::Address::SetExtended(v65, v27);
    }

    else if (v48 != 2)
    {
      goto LABEL_42;
    }

    ot::Mac::Address::GetExtended(v65);
    v47 = v28;
    v29 = ot::Mac::Mac::GetExtAddress(a1);
    if (!ot::Unequatable<ot::Mac::ExtAddress>::operator!=(v47, v29))
    {
      v61 = 20;
      goto LABEL_97;
    }

    v46 = v67;
    ot::Mac::Address::GetExtended(v65);
    v61 = ot::Mac::Filter::ApplyToRxFrame((a1 + 1364), v46, v30, RxOnlyNeighborRouter);
    if (v61)
    {
      goto LABEL_97;
    }
  }

LABEL_42:
  Length = ot::Mac::Frame::GetLength(v67);
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Update(a1 + 732, Length);
  Lqi = ot::Mac::RxFrame::GetLqi(v67);
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Update(a1 + 940, Lqi);
  if (ot::Mac::Address::IsBroadcast(v64))
  {
    ++*(a1 + 440);
  }

  else
  {
    ++*(a1 + 436);
  }

  v61 = ot::Mac::Mac::ProcessReceiveSecurity(a1, v67, v65, RxOnlyNeighborRouter);
  if (v61 && (v61 != 29 || *(a1 + 1) != 6))
  {
    goto LABEL_97;
  }

  if (!*(a1 + 1) && ot::Mac::Mac::IsCslEnabled(a1))
  {
    v60 = *ot::Mac::RxFrame::GetTimestamp(v67) + 32;
    SubMac = ot::Mac::Links::GetSubMac((a1 + 56));
    v59 = v60 - ot::Mac::SubMac::GetLastCslSampleTime(SubMac);
    if (*(a1 + 508))
    {
      v45 = ot::Min<int>(*(a1 + 500), v59);
    }

    else
    {
      v45 = v59;
    }

    *(a1 + 500) = v45;
    *(a1 + 504) = ot::Max<int>(*(a1 + 504), v59);
    *(a1 + 512) += v59;
    ++*(a1 + 508);
  }

  if (ot::Mac::Frame::GetVersion(v67, v33) == 0x2000)
  {
    v61 = ot::Mac::Mac::ProcessCsl(a1, v67, v65);
    if (v61)
    {
      goto LABEL_97;
    }
  }

  v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
  ot::DataPollSender::ProcessRxFrame(v35, v67);
  if (RxOnlyNeighborRouter)
  {
    ot::Mac::Mac::UpdateNeighborLinkInfo(a1, RxOnlyNeighborRouter, v67);
    if (ot::Mac::Frame::GetSecurityEnabled(v67, v36))
    {
      v58 = 0;
      ot::Mac::Frame::GetKeyIdMode(v67, &v58);
      IgnoreError();
      if (v58 == 8)
      {
        State = ot::Neighbor::GetState(RxOnlyNeighborRouter);
        if (State == 1 || State == 6)
        {
          if (!ot::Mac::Frame::IsDataRequestCommand(v67))
          {
            v61 = 2;
            goto LABEL_97;
          }
        }

        else
        {
          if (State != 7)
          {
            v61 = 19;
            goto LABEL_97;
          }

          if ((ot::Neighbor::GetRloc16(RxOnlyNeighborRouter) & 0x3FF) != 0)
          {
            Rssi = ot::Mac::RxFrame::GetRssi(v67);
            ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Update(a1 + 1252, Rssi);
          }

          else
          {
            v38 = ot::Mac::RxFrame::GetRssi(v67);
            ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Update(a1 + 1196, v38);
          }
        }

        if (ot::Mac::Frame::GetType(v67) == 1 && !ot::Neighbor::IsRxOnWhenIdle(RxOnlyNeighborRouter))
        {
          IsEnhancedKeepAliveSupported = ot::Neighbor::IsEnhancedKeepAliveSupported(RxOnlyNeighborRouter);
          if (IsEnhancedKeepAliveSupported)
          {
            v43 = RxOnlyNeighborRouter;
            Now = ot::TimerMilli::GetNow(IsEnhancedKeepAliveSupported);
            ot::Neighbor::SetLastHeard(v43, Now);
          }
        }
      }
    }
  }

  v42 = *(a1 + 1);
  if (v42 == 1)
  {
    if (!ot::Mac::Frame::GetType(v67))
    {
      ++*(a1 + 452);
      ot::Mac::Mac::ReportActiveScanResult(a1, v67);
      goto LABEL_97;
    }
  }

  else if (v42 != 2)
  {
    if (v42 == 6)
    {
      if (!ot::Mac::Address::IsNone(v64))
      {
        ot::TimerMilli::Stop((a1 + 312));
        ot::Mac::Mac::FinishOperation(a1);
        ot::Mac::Mac::PerformNextOperation(a1);
      }

      if (v61)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_87;
  }

  if (*(a1 + 16) != *(a1 + 10))
  {
    ++*(a1 + 460);
    goto LABEL_97;
  }

LABEL_87:
  v41 = ot::Mac::Frame::GetType(v67);
  if (v41)
  {
    if (v41 == 1)
    {
      ++*(a1 + 444);
    }

    else
    {
      if (v41 != 3)
      {
        ++*(a1 + 460);
        goto LABEL_97;
      }

      if (ot::Mac::Mac::HandleMacCommand(a1, v67))
      {
        v61 = 0;
        goto LABEL_97;
      }
    }
  }

  else
  {
    ++*(a1 + 452);
  }

  ot::Mac::Mac::LogFrameRx(a1, v67);
  v40 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
  ot::MeshForwarder::HandleReceivedFrame(v40, v67);
  ot::Mac::Mac::UpdateIdleMode(a1);
LABEL_97:
  if (v61)
  {
    ot::Mac::Mac::LogFrameRxFailure(a1, v67, v61);
    switch(v61)
    {
      case 8:
        ++*(a1 + 488);
        break;
      case 17:
        ++*(a1 + 492);
        break;
      case 18:
        ++*(a1 + 476);
        break;
      case 19:
        ++*(a1 + 480);
        break;
      case 20:
        ++*(a1 + 484);
        break;
      case 21:
        ++*(a1 + 464);
        break;
      case 22:
        ++*(a1 + 468);
        break;
      case 29:
        ++*(a1 + 472);
        break;
      default:
        ++*(a1 + 496);
        break;
    }
  }
}

uint64_t ot::Mac::Address::GetType(ot::Mac::Address *this)
{
  return *(this + 8);
}

{
  return ot::Mac::Address::GetType(this);
}

BOOL ot::Equatable<ot::Mac::ExtAddress>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) == 0;
}

{
  return ot::Equatable<ot::Mac::ExtAddress>::operator==(a1, a2);
}

BOOL ot::Unequatable<ot::Mac::ExtAddress>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Mac::ExtAddress>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Mac::ExtAddress>::operator!=(a1, a2);
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Update(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if (a2 > 0)
  {
    v3 = a2 / 4;
  }

  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::IncrementRange(a1, v3);
}

{
  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Update(a1, a2);
}

uint64_t ot::Mac::RxFrame::GetTimestamp(ot::Mac::RxFrame *this)
{
  return this + 16;
}

{
  return ot::Mac::RxFrame::GetTimestamp(this);
}

uint64_t ot::Mac::SubMac::GetLastCslSampleTime(ot::Mac::SubMac *this)
{
  return ot::Time::GetValue((this + 176)) - 160 * *(this + 80);
}

{
  return ot::Mac::SubMac::GetLastCslSampleTime(this);
}

uint64_t ot::Min<int>(int a1, int a2)
{
  if (a1 >= a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

{
  return ot::Min<int>(a1, a2);
}

uint64_t ot::Max<int>(int a1, int a2)
{
  if (a1 >= a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

{
  return ot::Max<int>(a1, a2);
}

uint64_t ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Update(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if (a2 < -41)
  {
    v3 = -(a2 + 41) / 5;
  }

  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::IncrementRange(a1, v3);
}

{
  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Update(a1, a2);
}

uint64_t ot::Mac::Mac::HandleMacCommand(ot::Mac::Mac *this, ot::Mac::RxFrame *a2)
{
  v14 = this;
  v13 = a2;
  v12 = 0;
  v11 = 0;
  ot::Mac::Frame::GetCommandId(a2, &v11);
  IgnoreError();
  if (v11 == 4)
  {
    ++*(this + 112);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(this);
    ot::DataPollHandler::HandleDataPoll(v8, v13);
    v12 = 1;
  }

  else if (v11 == 7)
  {
    ++*(this + 114);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Received Beacon Request", v2, v3, v4, v5, v6, v7);
    if (ot::Mac::Mac::ShouldSendBeacon(this))
    {
      ot::Mac::Mac::StartOperation(this, 3u);
    }

    v12 = 1;
  }

  else
  {
    ++*(this + 115);
  }

  return v12 & 1;
}

void ot::Mac::Mac::LogFrameRx(ot::Mac::Mac *this, const ot::Mac::RxFrame *a2)
{
  v12 = this;
  v11 = a2;
  v10 = *ot::Mac::RxFrame::GetTimestamp(a2);
  v9 = v13;
  ot::Mac::Frame::ToInfoString(v11, v13);
  v2 = ot::String<(unsigned short)150>::AsCString(v13);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame rx, ts:%llu, %s", v3, v4, v5, v6, v7, v8, v10, v2);
}

unint64_t ot::Mac::Mac::LogFrameRxFailure(ot::InstanceLocator *a1, ot::Mac::RxFrame *a2, int a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v12 = a1;
  v14 = 0;
  v13 = a3;
  if (a3 == 11 || v13 == 18 || v13 == 22 || v13 == 21)
  {
    v14 = 5;
  }

  else
  {
    v14 = 4;
  }

  if (v15 != 17)
  {
    if (v16)
    {
      v10 = v14;
      v8 = ot::ErrorToString(v15);
      v9 = *ot::Mac::RxFrame::GetTimestamp(v16);
      v7 = v18;
      ot::Mac::Frame::ToInfoString(v16, v18);
      v4 = ot::String<(unsigned short)150>::AsCString(v18);
      ot::Logger::LogInModule(&ot::Mac::kLogModuleName, v14, "Frame rx failed, error:%s, ts:%llu, %s", v8, v9, v4);
    }

    else
    {
      v11 = v14;
      v3 = ot::ErrorToString(v15);
      ot::Logger::LogInModule(&ot::Mac::kLogModuleName, v14, "Frame rx failed, error:%s", v3);
    }
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v12);
  return ot::AppMetricsManager::UpdateSystemWideThreadRXReachabilityStatusLastTimestamp(v5, v15, 0);
}

uint64_t ot::LinkQualityInfo::GetLinkQuality(ot::LinkQualityInfo *this)
{
  return *(this + 2);
}

{
  return ot::LinkQualityInfo::GetLinkQuality(this);
}

void ot::Mac::Mac::SetPromiscuous(ot::Mac::Mac *this, char a2)
{
  *this = *this & 0xF7 | (8 * (a2 & 1));
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::SetPromiscuous(v2, a2 & 1);
  LOBYTE(v4) = 1;
  if ((*this & 4) == 0)
  {
    v4 = (*this >> 3) & 1;
  }

  ot::Mac::Links::SetRxOnWhenIdle((this + 56), v4 & 1);
  ot::Mac::Mac::UpdateIdleMode(this);
}

uint64_t ot::Mac::Mac::SetRegion(ot::Mac::Mac *this, unsigned __int16 a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  v8 = *(this + 3);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  v9 = ot::Radio::SetRegion(v2, v10);
  if (!v9)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    SupportedChannelMask = ot::Radio::GetSupportedChannelMask(v3);
    ot::Mac::ChannelMask::SetMask(this + 3, SupportedChannelMask);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Update<ot::Mac::ChannelMask>(v5, &v8, this + 3, 0x400000);
    IgnoreError();
  }

  return v9;
}

uint64_t ot::Radio::SetRegion(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetRegion(InstancePtr, a2);
}

{
  return ot::Radio::SetRegion(this, a2);
}

uint64_t ot::Radio::GetRegion(ot::Radio *this, unsigned __int16 *a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetRegion(InstancePtr, a2);
}

{
  return ot::Radio::GetRegion(this, a2);
}

uint64_t ot::Mac::Mac::GetDirectRetrySuccessHistogram(ot::Mac::Mac *this, unsigned __int8 *a2)
{
  if (*(this + 24) < 0x10u)
  {
    *a2 = *(this + 24) + 1;
  }

  else
  {
    *a2 = 16;
  }

  return this + 528;
}

uint64_t ot::Mac::Mac::GetIndirectRetrySuccessHistogram(ot::Mac::Mac *this, unsigned __int8 *a2)
{
  if (*(this + 25))
  {
    *a2 = 1;
  }

  else
  {
    *a2 = *(this + 25) + 1;
  }

  return this + 592;
}

void *ot::ClearAllBytes<ot::Mac::Mac::RetryHistogram>(void *a1)
{
  return memset(a1, 0, 0x44uLL);
}

{
  return ot::ClearAllBytes<ot::Mac::Mac::RetryHistogram>(a1);
}

uint64_t ot::Mac::Mac::GetDirectErrorNoAckHistogram(ot::Mac::Mac *this, unsigned __int8 *a2)
{
  if (*(this + 24) < 0x11u)
  {
    *a2 = *(this + 24) + 2;
  }

  else
  {
    *a2 = 17;
  }

  return this + 596;
}

uint64_t ot::Mac::Mac::GetDirectErrorChannelAccessFailureHistogram(ot::Mac::Mac *this, unsigned __int8 *a2)
{
  if (*(this + 24) < 0x11u)
  {
    *a2 = *(this + 24) + 2;
  }

  else
  {
    *a2 = 17;
  }

  return this + 664;
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::GetCount()
{
  return 26;
}

{
  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::GetCount();
}

void ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::GetData()
{
  ;
}

{
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::GetData();
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::GetCount()
{
  return 64;
}

{
  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::GetCount();
}

void ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::GetData()
{
  ;
}

{
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::GetData();
}

uint64_t ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::GetCount()
{
  return 14;
}

{
  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::GetCount();
}

void ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::GetData()
{
  ;
}

{
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::GetData();
}

void *ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Clear(void *a1)
{
  return memset(a1, 0, 0x38uLL);
}

{
  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Clear(a1);
}

void *ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Clear(void *a1)
{
  return memset(a1, 0, 0x68uLL);
}

{
  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Clear(a1);
}

void *ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Clear(void *a1)
{
  return memset(a1, 0, 0x100uLL);
}

{
  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Clear(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::AppMetricsManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
}

uint64_t ot::Mac::TxFrame::GetAirtime(ot::Mac::TxFrame *this)
{
  return *(this + 13);
}

{
  return ot::Mac::TxFrame::GetAirtime(this);
}

uint64_t ot::Mac::TxFrame::GetIFS(ot::Mac::TxFrame *this)
{
  return *(this + 12);
}

{
  return ot::Mac::TxFrame::GetIFS(this);
}

void ot::Mac::Mac::UpdatePcapStats(ot::Mac::Mac *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 13)
  {
    if (ot::Mac::mPcapModeCount[a2] == 0x7FFF)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "pcap mode count overflow", a3, a4, a5, a6, a7, a8);
    }

    else
    {
      ++ot::Mac::mPcapModeCount[a2];
    }
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Invalid pcap mode", a3, a4, a5, a6, a7, a8);
  }
}

uint64_t ot::Mac::Mac::SetMleAdvTxNum(ot::Mac::Mac *this, unsigned __int8 a2)
{
  v3 = 0;
  if (a2)
  {
    if (a2 <= 0xFu)
    {
      *(this + 26) = a2;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t ot::Mac::Links::WedPresent(ot::Mac::Links *this, char a2)
{
  return ot::Mac::SubMac::WedPresent(this + 8, a2 & 1);
}

{
  return ot::Mac::Links::WedPresent(this, a2);
}

BOOL ot::Mle::Mle::IsCslPeripheralDetached(ot::Mle::Mle *this)
{
  return *(this + 128) == 0;
}

{
  return ot::Mle::Mle::IsCslPeripheralDetached(this);
}

uint64_t ot::Mac::Links::UpdateCsl(uint64_t a1, unsigned __int16 a2, unsigned __int8 a3, unsigned __int16 a4, uint64_t *a5, int *a6)
{
  return ot::Mac::SubMac::UpdateCsl(a1 + 8, a2, a3, a4, a5, a6) & 1;
}

{
  return ot::Mac::Links::UpdateCsl(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslPeriod(uint64_t this, __int16 a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslPeriod(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslPhase(uint64_t this, __int16 a2)
{
  *(this + 10) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslPhase(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetLastRxTimestamp(uint64_t this, uint64_t a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetLastRxTimestamp(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslChannel(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslChannel(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslSynchronized(uint64_t this, char a2)
{
  *(this + 2) = *(this + 2) & 0x7F | ((a2 & 1) << 7);
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslSynchronized(this, a2);
}

void ot::Mac::Mac::SetCslParentAccuracy(ot::Mac::Mac *this, const ot::Mac::CslAccuracy *a2)
{
  SubMac = ot::Mac::Links::GetSubMac((this + 56));
  ot::Mac::SubMac::SetCslParentAccuracy(SubMac, a2);
  ot::Mac::Mac::UpdateCsl(this, 0);
}

uint64_t ot::Mac::SubMac::SetCslParentAccuracy(ot::Mac::SubMac *this, const ot::Mac::CslAccuracy *a2)
{
  *(this + 92) = *a2;
  Instance = ot::InstanceLocator::GetInstance(this);
  ClockAccuracy = ot::Mac::CslAccuracy::GetClockAccuracy((this + 184));
  otPlatRadioSetCslParentClockAccuracy(Instance, ClockAccuracy);
  v7 = ot::InstanceLocator::GetInstance(this);
  Uncertainty = ot::Mac::CslAccuracy::GetUncertainty((this + 184));
  return otPlatRadioSetCslParentUncertainty(v7, Uncertainty);
}

{
  return ot::Mac::SubMac::SetCslParentAccuracy(this, a2);
}

uint64_t ot::Mac::Mac::GetCslPeriodInMsec(ot::Mac::Mac *this)
{
  CslPeriod = ot::Mac::Mac::GetCslPeriod(this);
  v2 = ot::Mac::Mac::CslPeriodToUsec(CslPeriod);
  return ot::DivideAndRoundToClosest<unsigned int>(v2, 0x3E8u);
}

uint64_t ot::DivideAndRoundToClosest<unsigned int>(int a1, unsigned int a2)
{
  return (a1 + a2 / 2) / a2;
}

{
  return ot::DivideAndRoundToClosest<unsigned int>(a1, a2);
}

BOOL ot::Mac::Mac::IsCslCapable(ot::Mac::Mac *this)
{
  v3 = 0;
  if (ot::Mac::Mac::GetCslPeriod(this) > 0)
  {
    return ot::Mac::Mac::IsCslSupported(this);
  }

  return v3;
}

BOOL ot::Mac::Mac::IsCslSupported(ot::Mac::Mac *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsChild(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Parent = ot::Mle::Mle::GetParent(v2);
    return ot::Neighbor::IsEnhancedKeepAliveSupported(Parent);
  }

  else
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    return ot::Mle::Mle::IsCslPeripheralAttached(v4);
  }
}

BOOL ot::Mac::Mac::IsCstEnabled(ot::Mac::Mac *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  v4 = 0;
  if (ot::Mle::Mle::IsRouterOrLeader(v1))
  {
    return ot::Mac::Mac::IsCslEnabled(this);
  }

  return v4;
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslPeriod(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 4);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslPeriod(this);
}

uint64_t ot::Mac::CslIe::GetPeriod(ot::Mac::CslIe *this, unsigned __int16 a2)
{
  return ot::LittleEndian::HostSwap16(*(this + 1));
}

{
  return ot::Mac::CslIe::GetPeriod(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetLastRxTimestamp(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 2);
}

{
  return ot::CslTxScheduler::ChildInfo::GetLastRxTimestamp(this);
}

uint64_t ot::Mac::CslIe::GetPhase(ot::Mac::CslIe *this, unsigned __int16 a2)
{
  return ot::LittleEndian::HostSwap16(*this);
}

{
  return ot::Mac::CslIe::GetPhase(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslLastHeard(uint64_t result, int a2)
{
  *(result + 12) = a2;
  return result;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslLastHeard(result, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslPhase(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 5);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslPhase(this);
}

BOOL ot::Mac::Frame::IsAck(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetType(this) == 2;
}

{
  return ot::Mac::Frame::IsAck(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::IsCslPrevSnValid(ot::CslTxScheduler::ChildInfo *this)
{
  return *this & 1;
}

{
  return ot::CslTxScheduler::ChildInfo::IsCslPrevSnValid(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslPrevSn(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 1);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslPrevSn(this);
}

_BYTE *ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid(_BYTE *this, char a2)
{
  *this = *this & 0xFE | a2 & 1;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslPrevSn(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslPrevSn(this, a2);
}

uint64_t ot::Mac::HeaderIe::GetLength(ot::Mac::HeaderIe *this)
{
  return *this & 0x7F;
}

{
  return ot::Mac::HeaderIe::GetLength(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::LinkMetrics::Initiator>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(a1);
}

void ot::Mac::Mac::SetRadioFilterEnabled(ot::Mac::Mac *this, char a2)
{
  SubMac = ot::Mac::Links::GetSubMac((this + 56));
  ot::Mac::SubMac::SetRadioFilterEnabled(SubMac, a2 & 1);
  ot::Mac::Mac::UpdateIdleMode(this);
}

uint64_t ot::Mac::SubMac::SetRadioFilterEnabled(uint64_t this, char a2)
{
  *(this + 20) = *(this + 20) & 0xFD | (2 * (a2 & 1));
  return this;
}

{
  return ot::Mac::SubMac::SetRadioFilterEnabled(this, a2);
}

void ot::Mac::Mac::ResetPcapStats(ot::Mac::Mac *this)
{
  for (i = 0; i < 13; ++i)
  {
    ot::Mac::mPcapModeCount[i] = 0;
  }
}

void ot::Mac::Links::SetShortAddress(ot::Mac::Links *this, __int16 a2)
{
  ot::Mac::SubMac::SetShortAddress((this + 8), a2);
}

{
  ot::Mac::Links::SetShortAddress(this, a2);
}

void ot::Mac::Links::SetAlternateShortAddress(ot::Mac::Links *this, unsigned __int16 a2)
{
  ot::Mac::SubMac::SetAlternateShortAddress(this + 4, a2);
}

{
  ot::Mac::Links::SetAlternateShortAddress(this, a2);
}

ot::MeshCoP::NameData *ot::MeshCoP::NameData::NameData(ot::MeshCoP::NameData *this, const char *a2, char a3)
{
  ot::MeshCoP::NameData::NameData(this, a2, a3);
  return this;
}

{
  ot::Data<(ot::DataLengthType)0>::Init(this, a2, a3);
  return this;
}

uint64_t ot::Mac::TxFrame::SetIsSecurityProcessed(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xEF | (16 * (a2 & 1));
  return this;
}

{
  return ot::Mac::TxFrame::SetIsSecurityProcessed(this, a2);
}

uint64_t ot::Mac::TxFrame::SetTxPower(uint64_t this, char a2)
{
  *(this + 44) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetTxPower(this, a2);
}

uint64_t ot::Mac::TxFrame::SetCslIePresent(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xF7 | (8 * (a2 & 1));
  return this;
}

{
  return ot::Mac::TxFrame::SetCslIePresent(this, a2);
}

BOOL ot::Mac::Frame::IsAckRequest(ot::Mac::Frame *this, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  return ot::Mac::Frame::GetFcfBit(this, 0x20u, 0x4000) != 0;
}

{
  return ot::Mac::Frame::IsAckRequest(this, a2, a3, a4);
}

uint64_t ot::Mac::SubMac::GetTransmitRetries(ot::Mac::SubMac *this)
{
  return *(this + 6);
}

{
  return ot::Mac::SubMac::GetTransmitRetries(this);
}

BOOL ot::Mac::Frame::IsVersion2015(ot::Mac::Frame *this)
{
  return (this & 0x3000) == 0x2000;
}

{
  return ot::Mac::Frame::IsVersion2015(this);
}

uint64_t ot::Mac::CslAccuracy::GetClockAccuracy(ot::Mac::CslAccuracy *this)
{
  return *this;
}

{
  return ot::Mac::CslAccuracy::GetClockAccuracy(this);
}

uint64_t ot::Mac::CslAccuracy::GetUncertainty(ot::Mac::CslAccuracy *this)
{
  return *(this + 1);
}

{
  return ot::Mac::CslAccuracy::GetUncertainty(this);
}

_WORD *ot::ClearAllBytes<ot::SuccessRateTracker>(_WORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::SuccessRateTracker>(result);
}

BOOL ot::Mac::ChannelMask::operator==(_DWORD *a1, _DWORD *a2)
{
  return *a1 == *a2;
}

{
  return ot::Mac::ChannelMask::operator==(a1, a2);
}

uint64_t ot::Instance::Get<ot::DataPollHandler>(uint64_t a1)
{
  return a1 + 90208;
}

{
  return ot::Instance::Get<ot::DataPollHandler>(a1);
}

uint64_t ot::Instance::Get<ot::WakeupTxScheduler>(uint64_t a1)
{
  return a1 + 91232;
}

{
  return ot::Instance::Get<ot::WakeupTxScheduler>(a1);
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::IncrementRange(uint64_t result, unsigned __int16 a2)
{
  if (a2 >= 0x1Au)
  {
    v2 = 25;
  }

  else
  {
    v2 = a2;
  }

  ++*(result + 4 * v2);
  return result;
}

{
  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::IncrementRange(result, a2);
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::IncrementRange(uint64_t result, unsigned __int16 a2)
{
  if (a2 >= 0x40u)
  {
    v2 = 63;
  }

  else
  {
    v2 = a2;
  }

  ++*(result + 4 * v2);
  return result;
}

{
  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::IncrementRange(result, a2);
}

uint64_t ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::IncrementRange(uint64_t result, unsigned __int16 a2)
{
  if (a2 >= 0xEu)
  {
    v2 = 13;
  }

  else
  {
    v2 = a2;
  }

  ++*(result + 4 * v2);
  return result;
}

{
  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::IncrementRange(result, a2);
}

uint64_t otMeshDiagDiscoverTopology(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    __assert_rtn("otMeshDiagDiscoverTopology", "mesh_diag_api.cpp", 51, "(aConfig) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::MeshDiag>(v4);
  return ot::Utils::MeshDiag::DiscoverTopology(v5, a2, a3, a4);
}

uint64_t otMeshDiagCancel(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::MeshDiag>(v1);
  return ot::Utils::MeshDiag::Cancel(v2);
}

uint64_t otMeshDiagGetNextIp6Address(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otMeshDiagIp6AddrIterator>(a1);
  v5 = v2;
  ot::AsCoreType<otIp6Address>(a2);
  return ot::Utils::MeshDiag::Ip6AddrIterator::GetNextAddress(v5, v3);
}

void ot::AsCoreType<otMeshDiagIp6AddrIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otMeshDiagIp6AddrIterator>(a1);
}

uint64_t otMeshDiagGetNextChildInfo(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otMeshDiagChildIterator>(a1);
  v5 = v2;
  ot::AsCoreType<otMeshDiagChildInfo>(a2);
  return ot::Utils::MeshDiag::ChildIterator::GetNextChildInfo(v5, v3);
}

void ot::AsCoreType<otMeshDiagChildIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otMeshDiagChildIterator>(a1);
}

void ot::AsCoreType<otMeshDiagChildInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otMeshDiagChildInfo>(a1);
}

uint64_t otMeshDiagQueryChildTable(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::MeshDiag>(v4);
  return ot::Utils::MeshDiag::QueryChildTable(v5, a2, a3, a4);
}

uint64_t otMeshDiagQueryChildrenIp6Addrs(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::MeshDiag>(v4);
  return ot::Utils::MeshDiag::QueryChildrenIp6Addrs(v5, a2, a3, a4);
}

uint64_t otMeshDiagQueryRouterNeighborTable(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::MeshDiag>(v4);
  return ot::Utils::MeshDiag::QueryRouterNeighborTable(v5, a2, a3, a4);
}

uint64_t ot::Ip6::Hap::Header::ParseFrom(ot::Ip6::Hap::Header *this, const ot::Message *a2, unsigned __int16 a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  *(this + 24) = 0;
  v8 = 0;
  v9 = ot::Message::Read<unsigned char>(v11, v10, &v8);
  if (!v9)
  {
    ++v10;
    *this = (v8 >> 4) & 3;
    *(this + 1) = v8 & 0xF;
    v9 = ot::Message::Read<unsigned char>(v11, v10, &v8);
    if (!v9)
    {
      ++v10;
      *(this + 1) = ((v8 >> 5) & 7) + ((v8 & 0x1F) / 100.0);
      v9 = ot::Message::Read<unsigned short>(v11, v10, this + 8);
      if (!v9)
      {
        v10 += 2;
        *(this + 2) = 0;
        for (i = 0; i < *(this + 1); ++i)
        {
          v9 = ot::Message::Read<unsigned char>(v11, v10, &v8);
          if (v9)
          {
            break;
          }

          ++v10;
          *(this + 2) = v8 + (*(this + 2) << 8);
        }
      }
    }
  }

  if (v9)
  {
    *(this + 24) = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v3 = ot::ErrorToString(v9);
        __os_log_helper_16_2_1_8_32(v14, v3);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "Hap header can not be parsed (MsgType:kTypeIp6), error=%s", v14, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v13, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v13, 0x16u);
    }
  }

  return v9;
}

uint64_t ot::Message::Read<unsigned char>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 1u);
}

{
  return ot::Message::Read<unsigned char>(a1, a2, a3);
}

uint64_t ot::Ip6::Hap::Header::ParseFrom(ot::Ip6::Hap::Header *this, ot::FrameData *a2)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  *(this + 24) = 0;
  v7 = 0;
  v8 = ot::FrameData::Read<unsigned char>(v9, &v7);
  if (!v8)
  {
    *this = (v7 >> 4) & 3;
    *(this + 1) = v7 & 0xF;
    v8 = ot::FrameData::Read<unsigned char>(v9, &v7);
    if (!v8)
    {
      *(this + 1) = ((v7 >> 5) & 7) + ((v7 & 0x1F) / 100.0);
      v8 = ot::FrameData::Read<unsigned short>(v9, this + 8);
      if (!v8)
      {
        *(this + 2) = 0;
        for (i = 0; i < *(this + 1); ++i)
        {
          v8 = ot::FrameData::Read<unsigned char>(v9, &v7);
          if (v8)
          {
            break;
          }

          *(this + 2) = v7 + (*(this + 2) << 8);
        }
      }
    }
  }

  if (v8)
  {
    *(this + 24) = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v2 = ot::ErrorToString(v8);
        __os_log_helper_16_2_1_8_32(v12, v2);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "Hap header can not be parsed (MsgType:kType6lowpan), error=%s", v12, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
    }
  }

  return v8;
}

uint64_t ot::FrameData::Read<unsigned char>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 1u);
}

{
  return ot::FrameData::Read<unsigned char>(a1, a2);
}

uint64_t ot::FrameData::Read<unsigned short>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 2u);
}

{
  return ot::FrameData::Read<unsigned short>(a1, a2);
}

_BYTE *ot::Mac::Filter::Filter(_BYTE *this)
{
  *this = 0;
  this[1] = 127;
  for (i = this + 2; i != this + 322; i += 10)
  {
    *i = 0;
    i[1] = 127;
  }

  return this;
}

ot::Mac::Filter::FilterEntry *ot::Mac::Filter::FindEntry(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  v5 = 0;
  v4 = this + 2;
  v3 = this + 322;
  while (v4 != v3)
  {
    if (ot::Mac::Filter::FilterEntry::IsInUse(v4) && ot::Equatable<ot::Mac::ExtAddress>::operator==(a2, v4 + 2))
    {
      return v4;
    }

    v4 += 10;
  }

  return v5;
}

BOOL ot::Mac::Filter::FilterEntry::IsInUse(ot::Mac::Filter::FilterEntry *this)
{
  v2 = 1;
  if ((*this & 1) == 0)
  {
    return *(this + 1) != 127;
  }

  return v2;
}

{
  return ot::Mac::Filter::FilterEntry::IsInUse(this);
}

ot::Mac::Filter::FilterEntry *ot::Mac::Filter::FindAvailableEntry(ot::Mac::Filter *this)
{
  v4 = 0;
  v3 = (this + 2);
  v2 = (this + 322);
  while (v3 != v2)
  {
    if (!ot::Mac::Filter::FilterEntry::IsInUse(v3))
    {
      return v3;
    }

    v3 = (v3 + 10);
  }

  return v4;
}

uint64_t ot::Mac::Filter::AddAddress(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  v6 = 0;
  ot::Mac::Filter::FindEntry(this, a2);
  AvailableEntry = v2;
  if (v2)
  {
    goto LABEL_5;
  }

  AvailableEntry = ot::Mac::Filter::FindAvailableEntry(this);
  if (AvailableEntry)
  {
    *(AvailableEntry + 2) = *a2;
LABEL_5:
    *AvailableEntry = 1;
    return v6;
  }

  return 3;
}

void ot::Mac::Filter::FindEntry(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  ot::AsConst<ot::Mac::Filter>();
  ot::Mac::Filter::FindEntry(v2, a2);
  ot::AsNonConst<ot::Mac::Filter::FilterEntry>();
}

{
  ot::Mac::Filter::FindEntry(this, a2);
}

void ot::Mac::Filter::RemoveAddress(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  ot::Mac::Filter::FindEntry(this, a2);
  if (v2)
  {
    *v2 = 0;
  }
}

uint64_t ot::Mac::Filter::ClearAddresses(uint64_t this)
{
  for (i = (this + 2); i != (this + 322); i += 10)
  {
    *i = 0;
  }

  return this;
}

uint64_t ot::Mac::Filter::GetNextAddress(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = 23;
  while (1)
  {
    v4 = *a2;
    if (v4 >= ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>())
    {
      break;
    }

    v6 = a1 + 2 + 10 * *a2;
    if (*v6)
    {
      *a3 = *(v6 + 2);
      *(a3 + 8) = *(v6 + 1);
      v7 = 0;
      ++*a2;
      return v7;
    }

    ++*a2;
  }

  return v7;
}

uint64_t ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>()
{
  return 32;
}

{
  return ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>();
}

uint64_t ot::Mac::Filter::AddRssIn(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2, char a3)
{
  v7 = 0;
  ot::Mac::Filter::FindEntry(this, a2);
  AvailableEntry = v3;
  if (v3)
  {
    goto LABEL_5;
  }

  AvailableEntry = ot::Mac::Filter::FindAvailableEntry(this);
  if (AvailableEntry)
  {
    *(AvailableEntry + 2) = *a2;
LABEL_5:
    *(AvailableEntry + 1) = a3;
    return v7;
  }

  return 3;
}

void ot::Mac::Filter::RemoveRssIn(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  ot::Mac::Filter::FindEntry(this, a2);
  if (v2)
  {
    *(v2 + 1) = 127;
  }
}

uint64_t ot::Mac::Filter::ClearAllRssIn(uint64_t this)
{
  for (i = this + 2; i != this + 322; i += 10)
  {
    *(i + 1) = 127;
  }

  *(this + 1) = 127;
  return this;
}

uint64_t ot::Mac::Filter::GetNextRssIn(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v9 = 23;
  while (1)
  {
    v6 = *a2;
    if (v6 >= ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>())
    {
      break;
    }

    v8 = a1 + 2 + 10 * *a2;
    if (*(v8 + 1) != 127)
    {
      *a3 = *(v8 + 2);
      *(a3 + 8) = *(v8 + 1);
      v9 = 0;
      ++*a2;
      return v9;
    }

    ++*a2;
  }

  v5 = *a2;
  if (v5 == ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>() && *(a1 + 1) != 127)
  {
    ot::AsCoreType<otExtAddress>(a3);
    ot::Mac::ExtAddress::Fill(v3, 0xFFu);
    *(a3 + 8) = *(a1 + 1);
    v9 = 0;
    ++*a2;
  }

  return v9;
}

void *ot::Mac::ExtAddress::Fill(void *this, unsigned __int8 a2)
{
  *this = 0x101010101010101 * a2;
  return this;
}

{
  return ot::Mac::ExtAddress::Fill(this, a2);
}

uint64_t ot::Mac::Filter::Apply(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2, signed __int8 *a3)
{
  v8 = 0;
  Entry = ot::Mac::Filter::FindEntry(this, a2);
  *a3 = *(this + 1);
  v6 = 0;
  if (Entry)
  {
    v6 = *Entry;
  }

  v4 = *this;
  if (*this)
  {
    if (v4 == 1)
    {
      if ((v6 & 1) == 0)
      {
        return 21;
      }
    }

    else if (v4 == 2 && (v6 & 1) != 0)
    {
      return 21;
    }
  }

  if (Entry && *(Entry + 1) != 127)
  {
    *a3 = *(Entry + 1);
  }

  return v8;
}
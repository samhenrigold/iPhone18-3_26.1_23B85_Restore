double CMMsl::PoseState::PoseState(CMMsl::PoseState *this)
{
  *this = off_100421090;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100421090;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CMMsl::BioMotionPredictedPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  v5 = *(v3 + 28);
  if (v5)
  {
    this = PB::Writer::write(a2, *(v3 + 16), 2u);
    v5 = *(v3 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 24);

    return PB::Writer::writeVarInt(a2, v6, 3u);
  }

  return this;
}

BOOL CMMsl::BioMotionPredictedPose::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::PoseState::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  result = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) == 0)
  {
    return result;
  }

  return (*(a2 + 28) & 2) != 0 && *(a1 + 24) == *(a2 + 24);
}

BOOL CMMsl::PoseState::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || !CMMsl::Pose::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v6 - v7 != *(a2 + 16) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
  }

  result = (*(a2 + 44) & 1) == 0;
  if (*(a1 + 44))
  {
    return (*(a2 + 44) & 1) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

unint64_t CMMsl::BioMotionPredictedPose::hash_value(CMMsl::BioMotionPredictedPose *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::PoseState::hash_value(v2);
  }

  if (*(this + 28))
  {
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    return *&v3 ^ v2 ^ v4;
  }

  v3 = 0.0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(this + 6);
  return *&v3 ^ v2 ^ v4;
}

void *CMMsl::BioMotionPredictedPose::makeState(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void *CMMsl::BioMotionPropagatedAnchor::BioMotionPropagatedAnchor(void *this)
{
  *this = off_10041D3F8;
  this[1] = 0;
  return this;
}

{
  *this = off_10041D3F8;
  this[1] = 0;
  return this;
}

void CMMsl::BioMotionPropagatedAnchor::~BioMotionPropagatedAnchor(CMMsl::BioMotionPropagatedAnchor *this)
{
  v2 = *(this + 1);
  *this = off_10041D3F8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BioMotionPropagatedAnchor::~BioMotionPropagatedAnchor(this);

  operator delete();
}

CMMsl::BioMotionPropagatedAnchor *CMMsl::BioMotionPropagatedAnchor::BioMotionPropagatedAnchor(CMMsl::BioMotionPropagatedAnchor *this, const CMMsl::PropagatedAnchor **a2)
{
  *this = off_10041D3F8;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BioMotionPropagatedAnchor::operator=(uint64_t a1, const CMMsl::PropagatedAnchor **a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPropagatedAnchor::BioMotionPropagatedAnchor(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::BioMotionPropagatedAnchor::~BioMotionPropagatedAnchor(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BioMotionPropagatedAnchor *a2, CMMsl::BioMotionPropagatedAnchor *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::BioMotionPropagatedAnchor::BioMotionPropagatedAnchor(void *a1, uint64_t a2)
{
  *a1 = off_10041D3F8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = off_10041D3F8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::BioMotionPropagatedAnchor::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041D3F8;
    v6[1] = v4;
    CMMsl::BioMotionPropagatedAnchor::~BioMotionPropagatedAnchor(v6);
  }

  return a1;
}

uint64_t CMMsl::BioMotionPropagatedAnchor::formatText(CMMsl::BioMotionPropagatedAnchor *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BioMotionPropagatedAnchor::readFrom(CMMsl::BioMotionPropagatedAnchor *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::PropagatedAnchor::PropagatedAnchor(uint64_t this)
{
  *this = off_1004214B8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = off_1004214B8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t CMMsl::BioMotionPropagatedAnchor::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::BioMotionPropagatedAnchor::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::PropagatedAnchor::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::PropagatedAnchor::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (!v5 || !CMMsl::Pose::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v6 - v7 != *(a2 + 16) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
  }

  result = (*(a2 + 48) & 1) == 0;
  if (*(a1 + 48))
  {
    return (*(a2 + 48) & 1) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

CMMsl::PropagatedAnchor *CMMsl::BioMotionPropagatedAnchor::hash_value(CMMsl::BioMotionPropagatedAnchor *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::PropagatedAnchor::hash_value(result);
  }

  return result;
}

void *CMMsl::BioMotionPropagatedAnchor::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(uint64_t this)
{
  *this = off_10041D430;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041D430;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::BleedToZeroCorrection::~BleedToZeroCorrection(CMMsl::BleedToZeroCorrection *this)
{
  v2 = *(this + 1);
  *this = off_10041D430;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BleedToZeroCorrection::~BleedToZeroCorrection(this);

  operator delete();
}

CMMsl::BleedToZeroCorrection *CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(CMMsl::BleedToZeroCorrection *this, const CMMsl::DeviceMotionCorrection **a2)
{
  *this = off_10041D430;
  *(this + 1) = 0;
  *(this + 5) = 0;
  if (a2[1])
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(this + 20) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

uint64_t CMMsl::BleedToZeroCorrection::operator=(uint64_t a1, const CMMsl::DeviceMotionCorrection **a2)
{
  if (a1 != a2)
  {
    CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::BleedToZeroCorrection::~BleedToZeroCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BleedToZeroCorrection *a2, CMMsl::BleedToZeroCorrection *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  return this;
}

uint64_t CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D430;
  *(a1 + 8) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t CMMsl::BleedToZeroCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::BleedToZeroCorrection::~BleedToZeroCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::BleedToZeroCorrection::formatText(CMMsl::BleedToZeroCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  if (*(this + 20))
  {
    PB::TextFormatter::format(a2, "withAnchoredStaticPose", *(this + 16));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BleedToZeroCorrection::readFrom(CMMsl::BleedToZeroCorrection *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_35;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2))
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*a2 + v23);
          *(a2 + 1) = v24;
          v26 = v25 != 0;
        }

        *(this + 16) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
        {
          v28 = 0;
          return v28 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_35:
  v28 = v4 ^ 1;
  return v28 & 1;
}

uint64_t CMMsl::BleedToZeroCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::BleedToZeroCorrection::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::DeviceMotionCorrection::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

unint64_t CMMsl::BleedToZeroCorrection::hash_value(CMMsl::BleedToZeroCorrection *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::DeviceMotionCorrection::hash_value(v2);
  }

  if (*(this + 20))
  {
    v3 = *(this + 16);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

void *CMMsl::BleedToZeroCorrection::makeCorrection(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BodyMetrics::BodyMetrics(uint64_t this)
{
  *this = off_10041D468;
  *(this + 64) = 0;
  return this;
}

{
  *this = off_10041D468;
  *(this + 64) = 0;
  return this;
}

void CMMsl::BodyMetrics::~BodyMetrics(CMMsl::BodyMetrics *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::BodyMetrics::BodyMetrics(CMMsl::BodyMetrics *this, const CMMsl::BodyMetrics *a2)
{
  *this = off_10041D468;
  *(this + 16) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 16;
    *(this + 32) = 16;
    *(this + 6) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    result = *(a2 + 7);
    v3 |= 0x20u;
    *(this + 32) = v3;
    *(this + 7) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x1000) != 0)
  {
    result = *(a2 + 14);
    v3 |= 0x1000u;
    *(this + 32) = v3;
    *(this + 14) = result;
    v2 = *(a2 + 32);
    if ((v2 & 0x800) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 13);
  v3 |= 0x800u;
  *(this + 32) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 3);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 9);
  v3 |= 0x80u;
  *(this + 32) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 8);
  v3 |= 0x40u;
  *(this + 32) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 10);
  v3 |= 0x100u;
  *(this + 32) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 11);
  v3 |= 0x200u;
  *(this + 32) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = *(a2 + 5);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 5) = v6;
  v2 = *(a2 + 32);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(a2 + 12);
  v3 |= 0x400u;
  *(this + 32) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x2000) == 0)
  {
LABEL_16:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = *(a2 + 60);
  v3 |= 0x2000u;
  *(this + 32) = v3;
  *(this + 60) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_17:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_30:
    result = *(a2 + 2);
    *(this + 32) = v3 | 1;
    *(this + 2) = result;
    return result;
  }

LABEL_29:
  v8 = *(a2 + 4);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 4) = v8;
  if (*(a2 + 32))
  {
    goto LABEL_30;
  }

  return result;
}

CMMsl *CMMsl::BodyMetrics::operator=(CMMsl *a1, const CMMsl::BodyMetrics *a2)
{
  if (a1 != a2)
  {
    CMMsl::BodyMetrics::BodyMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::BodyMetrics *a2, CMMsl::BodyMetrics *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v6;
  v7 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  v12 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v12;
  v13 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  LOBYTE(v13) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v13;
  v15 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v15;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float CMMsl::BodyMetrics::BodyMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D468;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

CMMsl *CMMsl::BodyMetrics::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::BodyMetrics::BodyMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::BodyMetrics::formatText(CMMsl::BodyMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "adaptiveExerciseMinuteThreshold", *(this + 2));
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "age", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 0x2000) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "betaBlockerUse", *(this + 60));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "biologicalSex", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "condition", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "gender", *(this + 6));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "heightM", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "hrmax", *(this + 8));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "hrmin", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "hronset", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "pal", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "runVo2max", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "vo2max", *(this + 13));
  if ((*(this + 32) & 0x1000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(a2, "weightKG", *(this + 14));
  }

LABEL_16:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BodyMetrics::readFrom(CMMsl::BodyMetrics *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_125;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 32) |= 0x10u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v64 = v2 - v22;
            v65 = (v23 + v22);
            v66 = v22 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_120;
              }

              v67 = v66;
              v68 = *v65;
              *(a2 + 1) = v67;
              v26 |= (v68 & 0x7F) << v62;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              --v64;
              ++v65;
              v66 = v67 + 1;
              v14 = v63++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
                goto LABEL_119;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

LABEL_119:
            v2 = v67;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = (v23 + v22);
            v28 = v22 + 1;
            do
            {
              v2 = v28;
              *(a2 + 1) = v28;
              v29 = *v27++;
              v26 |= (v29 & 0x7F) << v24;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_120;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            LODWORD(v26) = 0;
          }

LABEL_120:
          *(this + 6) = v26;
          goto LABEL_121;
        case 2u:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_105;
        case 3u:
          *(this + 32) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_105;
        case 4u:
          *(this + 32) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_105;
        case 5u:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_105;
        case 6u:
          *(this + 32) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_105;
        case 7u:
          *(this + 32) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_105;
        case 8u:
          *(this + 32) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_105;
        case 9u:
          *(this + 32) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_105;
        case 0xAu:
          *(this + 32) |= 8u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v55 = 0;
            v56 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(a2 + 1);
            }

            v57 = v2 - v40;
            v58 = (v41 + v40);
            v59 = v40 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v44) = 0;
                *(a2 + 24) = 1;
                goto LABEL_116;
              }

              v60 = v59;
              v61 = *v58;
              *(a2 + 1) = v60;
              v44 |= (v61 & 0x7F) << v55;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              --v57;
              ++v58;
              v59 = v60 + 1;
              v14 = v56++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_115:
                v2 = v60;
                goto LABEL_116;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_115;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(a2 + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_116;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_116:
          *(this + 5) = v44;
          goto LABEL_121;
        case 0xBu:
          *(this + 32) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_105;
        case 0xCu:
          *(this + 32) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v31 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v30 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v31 = v30 != 0;
          }

          *(this + 60) = v31;
          goto LABEL_121;
        case 0xDu:
          *(this + 32) |= 4u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v48 = 0;
            v49 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v50 = v2 - v32;
            v51 = (v33 + v32);
            v52 = v32 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v53 = v52;
              v54 = *v51;
              *(a2 + 1) = v53;
              v36 |= (v54 & 0x7F) << v48;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              --v50;
              ++v51;
              v52 = v53 + 1;
              v14 = v49++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_111:
                v2 = v53;
                goto LABEL_112;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_111;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_112;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_112:
          *(this + 4) = v36;
          goto LABEL_121;
        case 0xEu:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_75:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 2) = *(*a2 + v2);
LABEL_105:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          goto LABEL_121;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v69 = 0;
            return v69 & 1;
          }

          v2 = *(a2 + 1);
LABEL_121:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_125;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_125:
  v69 = v4 ^ 1;
  return v69 & 1;
}

uint64_t CMMsl::BodyMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 24), 1u);
    v4 = *(v3 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28), 2u);
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 56), 3u);
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 52), 4u);
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 12), 5u);
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 36), 6u);
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 32), 7u);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 40), 8u);
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 44), 9u);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::writeVarInt(a2, *(v3 + 20), 0xAu);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 48), 0xBu);
  v4 = *(v3 + 64);
  if ((v4 & 0x2000) == 0)
  {
LABEL_13:
    if ((v4 & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = PB::Writer::writeVarInt(a2, *(v3 + 16), 0xDu);
    if ((*(v3 + 64) & 1) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 60), 0xCu);
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_29:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5, 0xEu);
}

BOOL CMMsl::BodyMetrics::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x1000) != 0)
  {
    if ((*(a2 + 64) & 0x1000) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x1000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x800) != 0)
  {
    if ((*(a2 + 64) & 0x800) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x100) != 0)
  {
    if ((*(a2 + 64) & 0x100) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x200) != 0)
  {
    if ((*(a2 + 64) & 0x200) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x400) != 0)
  {
    if ((*(a2 + 64) & 0x400) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x2000) != 0)
  {
    if ((*(a2 + 64) & 0x2000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 1) == 0;
  if (v2)
  {
    return (v3 & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v4;
}

uint64_t CMMsl::BodyMetrics::hash_value(CMMsl::BodyMetrics *this)
{
  v1 = *(this + 32);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_37:
    v4 = 0;
    if ((*(this + 32) & 0x1000) != 0)
    {
      goto LABEL_6;
    }

LABEL_38:
    v6 = 0;
    if ((*(this + 32) & 0x800) != 0)
    {
      goto LABEL_9;
    }

LABEL_39:
    v8 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_40:
    v10 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_41:
    v12 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_42:
    v14 = 0;
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_21;
    }

LABEL_43:
    v16 = 0;
    if ((*(this + 32) & 0x200) != 0)
    {
      goto LABEL_24;
    }

LABEL_44:
    v18 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_45;
  }

  v2 = *(this + 6);
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_37;
  }

LABEL_3:
  v3 = *(this + 7);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 32) & 0x1000) == 0)
  {
    goto LABEL_38;
  }

LABEL_6:
  v5 = *(this + 14);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((*(this + 32) & 0x800) == 0)
  {
    goto LABEL_39;
  }

LABEL_9:
  v7 = *(this + 13);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_40;
  }

LABEL_12:
  v9 = *(this + 3);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_41;
  }

LABEL_15:
  v11 = *(this + 9);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_42;
  }

LABEL_18:
  v13 = *(this + 8);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_43;
  }

LABEL_21:
  v15 = *(this + 10);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((*(this + 32) & 0x200) == 0)
  {
    goto LABEL_44;
  }

LABEL_24:
  v17 = *(this + 11);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_27:
    v19 = *(this + 5);
    if ((*(this + 32) & 0x400) != 0)
    {
      goto LABEL_28;
    }

LABEL_46:
    v21 = 0;
    if ((*(this + 32) & 0x2000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

LABEL_45:
  v19 = 0;
  if ((*(this + 32) & 0x400) == 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  v20 = *(this + 12);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((*(this + 32) & 0x2000) != 0)
  {
LABEL_31:
    v22 = *(this + 60);
    if ((v1 & 4) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_32:
    v23 = *(this + 4);
    if (v1)
    {
      goto LABEL_33;
    }

LABEL_49:
    v25 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v25;
  }

LABEL_48:
  v23 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_33:
  v24 = *(this + 2);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v25;
}

void *CMMsl::BraveHeartAccel::BraveHeartAccel(void *this)
{
  *this = off_10041D4A0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_10041D4A0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::BraveHeartAccel::~BraveHeartAccel(CMMsl::BraveHeartAccel *this)
{
  *this = off_10041D4A0;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041D4A0;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041D4A0;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

CMMsl::BraveHeartAccel *CMMsl::BraveHeartAccel::BraveHeartAccel(CMMsl::BraveHeartAccel *this, const CMMsl::BraveHeartAccel *a2)
{
  *(this + 1) = 0;
  *this = off_10041D4A0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    sub_10009AC30(this + 1, *v2);
  }

  return this;
}

uint64_t CMMsl::BraveHeartAccel::operator=(uint64_t a1, const CMMsl::BraveHeartAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartAccel::BraveHeartAccel(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = off_10041D4A0;
    v9 = &v7;
    sub_1002A2E24(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::BraveHeartAccel *a2, CMMsl::BraveHeartAccel *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

void **CMMsl::BraveHeartAccel::BraveHeartAccel(void **a1, uint64_t a2)
{
  *a1 = off_10041D4A0;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v4 = a1 + 1;
  sub_1002A2EE4(a1 + 1);
  *v4 = *(a2 + 8);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = off_10041D4A0;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v4 = a1 + 1;
  sub_1002A2EE4(a1 + 1);
  *v4 = *(a2 + 8);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::BraveHeartAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_10041D4A0;
    v10 = 0uLL;
    v11 = 0;
    sub_1002A2EE4(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = off_10041D4A0;
    sub_1002A2E24(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartAccel::formatText(CMMsl::BraveHeartAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "accel");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BraveHeartAccel::readFrom(const void **this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        sub_10009B25C(this + 1);
      }

      if ((PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::BraveHeartAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5, 1u))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL sub_10009B41C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::Accel::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::BraveHeartAccel::hash_value(CMMsl::BraveHeartAccel *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::Accel::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void *CMMsl::BraveHeartDeviceMotion::BraveHeartDeviceMotion(void *this)
{
  *this = off_10041D4D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_10041D4D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::BraveHeartDeviceMotion::~BraveHeartDeviceMotion(CMMsl::BraveHeartDeviceMotion *this)
{
  *this = off_10041D4D8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041D4D8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041D4D8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

CMMsl::BraveHeartDeviceMotion *CMMsl::BraveHeartDeviceMotion::BraveHeartDeviceMotion(CMMsl::BraveHeartDeviceMotion *this, const CMMsl::BraveHeartDeviceMotion *a2)
{
  *(this + 1) = 0;
  *this = off_10041D4D8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    sub_10009B6CC(this + 1, *v2);
  }

  return this;
}

uint64_t CMMsl::BraveHeartDeviceMotion::operator=(uint64_t a1, const CMMsl::BraveHeartDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartDeviceMotion::BraveHeartDeviceMotion(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = off_10041D4D8;
    v9 = &v7;
    sub_1002A2E24(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::BraveHeartDeviceMotion *a2, CMMsl::BraveHeartDeviceMotion *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

void **CMMsl::BraveHeartDeviceMotion::BraveHeartDeviceMotion(void **a1, uint64_t a2)
{
  *a1 = off_10041D4D8;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v4 = a1 + 1;
  sub_1002A2EE4(a1 + 1);
  *v4 = *(a2 + 8);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = off_10041D4D8;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v4 = a1 + 1;
  sub_1002A2EE4(a1 + 1);
  *v4 = *(a2 + 8);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::BraveHeartDeviceMotion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_10041D4D8;
    v10 = 0uLL;
    v11 = 0;
    sub_1002A2EE4(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = off_10041D4D8;
    sub_1002A2E24(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartDeviceMotion::formatText(CMMsl::BraveHeartDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "deviceMotion");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BraveHeartDeviceMotion::readFrom(const void **this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        sub_10009BCF8(this + 1);
      }

      if ((PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::BraveHeartDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5, 1u))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL sub_10009BEB8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::DeviceMotion::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::BraveHeartDeviceMotion::hash_value(CMMsl::BraveHeartDeviceMotion *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::DeviceMotion::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t CMMsl::BraveHeartNatalieData::BraveHeartNatalieData(uint64_t this)
{
  *this = off_10041D510;
  *(this + 44) = 0;
  return this;
}

{
  *this = off_10041D510;
  *(this + 44) = 0;
  return this;
}

void CMMsl::BraveHeartNatalieData::~BraveHeartNatalieData(CMMsl::BraveHeartNatalieData *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::BraveHeartNatalieData::BraveHeartNatalieData(uint64_t this, const CMMsl::BraveHeartNatalieData *a2)
{
  *this = off_10041D510;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 8;
    *(this + 44) = 8;
    *(this + 32) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 10);
      *(this + 44) = v3 | 0x10;
      *(this + 40) = v8;
      return this;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 44) = v3;
  *(this + 8) = v7;
  if ((*(a2 + 44) & 0x10) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::BraveHeartNatalieData::operator=(uint64_t a1, const CMMsl::BraveHeartNatalieData *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartNatalieData::BraveHeartNatalieData(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    *&v4 = *(a1 + 40);
    *(a1 + 40) = v9;
    v9 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BraveHeartNatalieData *a2, CMMsl::BraveHeartNatalieData *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  return result;
}

double CMMsl::BraveHeartNatalieData::BraveHeartNatalieData(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D510;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

{
  *a1 = off_10041D510;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t CMMsl::BraveHeartNatalieData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_10041D510;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a2 + 44) = 0;
    v10 = *(a1 + 24);
    v6 = *(a1 + 8);
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v9 = v6;
    *&v3 = *(a1 + 40);
    *(a1 + 40) = v5;
    v11 = v3;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartNatalieData::formatText(CMMsl::BraveHeartNatalieData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "basalNatalies", *(this + 1));
    v5 = *(this + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "mets", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "natalies", *(this + 3));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "session", *(this + 10));
  if ((*(this + 44) & 8) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "startDate", *(this + 4));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BraveHeartNatalieData::readFrom(CMMsl::BraveHeartNatalieData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_68;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_46:
            *(a2 + 24) = 1;
            goto LABEL_64;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_58;
        }

        if (v22 == 2)
        {
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_46;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_58;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 44) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_46;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_58;
          case 4:
            *(this + 44) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_46;
            }

            *(this + 1) = *(*a2 + v2);
LABEL_58:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
            goto LABEL_64;
          case 5:
            *(this + 44) |= 0x10u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v31 = 0;
              v32 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v33 = v2 - v23;
              v34 = (v24 + v23);
              v35 = v23 + 1;
              while (1)
              {
                if (!v33)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_63;
                }

                v36 = v35;
                v37 = *v34;
                *(a2 + 1) = v36;
                v27 |= (v37 & 0x7F) << v31;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                --v33;
                ++v34;
                v35 = v36 + 1;
                v14 = v32++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_62;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_62:
              v2 = v36;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_63:
            *(this + 10) = v27;
            goto LABEL_64;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_64:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_68:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::BraveHeartNatalieData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32), 1u);
    v4 = *(v3 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 8), 4u);
    if ((*(v3 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 44);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 40);

  return PB::Writer::writeVarInt(a2, v5, 5u);
}

BOOL CMMsl::BraveHeartNatalieData::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 8) != 0)
  {
    if ((*(a2 + 44) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 4) != 0)
  {
    if ((*(a2 + 44) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  v2 = (*(a2 + 44) & 0x10) == 0;
  if ((*(a1 + 44) & 0x10) != 0)
  {
    return (*(a2 + 44) & 0x10) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v2;
}

uint64_t CMMsl::BraveHeartNatalieData::hash_value(CMMsl::BraveHeartNatalieData *this)
{
  if ((*(this + 44) & 8) == 0)
  {
    v1 = 0.0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v2 = 0.0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v3 = 0.0;
    if (*(this + 44))
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v1 = *(this + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v3 = *(this + 3);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if (*(this + 44))
  {
LABEL_9:
    v4 = *(this + 1);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v5 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ v5;
  }

LABEL_18:
  v4 = 0.0;
  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v5 = *(this + 10);
  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ v5;
}

void *CMMsl::BraveHeartVO2MaxInput::BraveHeartVO2MaxInput(void *this)
{
  *this = off_10041D548;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_10041D548;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::BraveHeartVO2MaxInput::~BraveHeartVO2MaxInput(CMMsl::BraveHeartVO2MaxInput *this)
{
  *this = off_10041D548;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041D548;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041D548;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

CMMsl::BraveHeartVO2MaxInput *CMMsl::BraveHeartVO2MaxInput::BraveHeartVO2MaxInput(CMMsl::BraveHeartVO2MaxInput *this, const CMMsl::BraveHeartVO2MaxInput *a2)
{
  *(this + 1) = 0;
  *this = off_10041D548;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    sub_10009CB48(this + 1, *v2);
  }

  return this;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::operator=(uint64_t a1, const CMMsl::BraveHeartVO2MaxInput *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartVO2MaxInput::BraveHeartVO2MaxInput(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = off_10041D548;
    v9 = &v7;
    sub_1002A2E24(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::BraveHeartVO2MaxInput *a2, CMMsl::BraveHeartVO2MaxInput *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

void **CMMsl::BraveHeartVO2MaxInput::BraveHeartVO2MaxInput(void **a1, uint64_t a2)
{
  *a1 = off_10041D548;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v4 = a1 + 1;
  sub_1002A2EE4(a1 + 1);
  *v4 = *(a2 + 8);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = off_10041D548;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v4 = a1 + 1;
  sub_1002A2EE4(a1 + 1);
  *v4 = *(a2 + 8);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_10041D548;
    v10 = 0uLL;
    v11 = 0;
    sub_1002A2EE4(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = off_10041D548;
    sub_1002A2E24(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::formatText(CMMsl::BraveHeartVO2MaxInput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "vo2MaxInput");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BraveHeartVO2MaxInput::readFrom(const void **this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        sub_10009D174(this + 1);
      }

      if ((PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5, 1u))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL sub_10009D334(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::VO2MaxInput::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::BraveHeartVO2MaxInput::hash_value(CMMsl::BraveHeartVO2MaxInput *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::VO2MaxInput::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::BraveHeartWorkoutEvent(uint64_t this)
{
  *this = off_10041D580;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_10041D580;
  *(this + 24) = 0;
  return this;
}

void CMMsl::BraveHeartWorkoutEvent::~BraveHeartWorkoutEvent(CMMsl::BraveHeartWorkoutEvent *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::BraveHeartWorkoutEvent::BraveHeartWorkoutEvent(CMMsl::BraveHeartWorkoutEvent *this, const CMMsl::BraveHeartWorkoutEvent *a2)
{
  *this = off_10041D580;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 4;
    *(this + 24) = 4;
    *(this + 5) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 4) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    *(this + 24) = v3 | 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::operator=(uint64_t a1, const CMMsl::BraveHeartWorkoutEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::BraveHeartWorkoutEvent::BraveHeartWorkoutEvent(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v10;
    *(a1 + 8) = v9;
    *(a1 + 16) = v6;
    v9 = v5;
    v10 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BraveHeartWorkoutEvent *a2, CMMsl::BraveHeartWorkoutEvent *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::BraveHeartWorkoutEvent::BraveHeartWorkoutEvent(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D580;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_10041D580;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_10041D580;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v10 = *(a1 + 24);
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    *(a1 + 24) = v3;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    v9[1] = v7;
    v9[2] = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::formatText(CMMsl::BraveHeartWorkoutEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "eventTime", *(this + 1));
    v5 = *(this + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "eventType", *(this + 4));
  if ((*(this + 24) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "workoutType", *(this + 5));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BraveHeartWorkoutEvent::readFrom(CMMsl::BraveHeartWorkoutEvent *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_75;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v41 = v2 - v31;
          v42 = (v32 + v31);
          v43 = v31 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_66;
            }

            v44 = v43;
            v45 = *v42;
            *(a2 + 1) = v44;
            v35 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            --v41;
            ++v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_65;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_65:
          v2 = v44;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v2 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_66:
        *(this + 4) = v35;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 4u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v48 = v2 - v23;
          v49 = (v24 + v23);
          v50 = v23 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_70;
            }

            v51 = v50;
            v52 = *v49;
            *(a2 + 1) = v51;
            v27 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            --v48;
            ++v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_69;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_69:
          v2 = v51;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_70:
        *(this + 5) = v27;
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_75:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2, *(v3 + 16), 2u);
    if ((*(v3 + 24) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::writeVarInt(a2, *(this + 20), 1u);
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5, 3u);
}

BOOL CMMsl::BraveHeartWorkoutEvent::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::BraveHeartWorkoutEvent::hash_value(CMMsl::BraveHeartWorkoutEvent *this)
{
  if ((*(this + 24) & 4) != 0)
  {
    v1 = *(this + 5);
    if ((*(this + 24) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 4);
      if (*(this + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v3 = 0.0;
      return v2 ^ v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return v2 ^ v1 ^ *&v3;
}

uint64_t CMMsl::BumpToWakeState::BumpToWakeState(uint64_t this)
{
  *this = off_10041D5B8;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041D5B8;
  *(this + 20) = 0;
  return this;
}

void CMMsl::BumpToWakeState::~BumpToWakeState(CMMsl::BumpToWakeState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::BumpToWakeState::BumpToWakeState(uint64_t this, const CMMsl::BumpToWakeState *a2)
{
  *this = off_10041D5B8;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::BumpToWakeState::operator=(uint64_t a1, const CMMsl::BumpToWakeState *a2)
{
  if (a1 != a2)
  {
    CMMsl::BumpToWakeState::BumpToWakeState(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 16);
    LODWORD(v3) = *(a1 + 20);
    v5 = v10;
    *(a1 + 16) = v9;
    *(a1 + 20) = v5;
    v9 = v4;
    v10 = v3;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BumpToWakeState *a2, CMMsl::BumpToWakeState *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t CMMsl::BumpToWakeState::BumpToWakeState(uint64_t result, uint64_t a2)
{
  *result = off_10041D5B8;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = off_10041D5B8;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::BumpToWakeState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v8[0] = off_10041D5B8;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    v6 = *(a1 + 20);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::BumpToWakeState::formatText(CMMsl::BumpToWakeState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "state", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BumpToWakeState::readFrom(CMMsl::BumpToWakeState *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_73;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v32 = *(a2 + 1);
        v2 = *(a2 + 2);
        v33 = *a2;
        if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v36 = 0;
          if (v2 <= v32)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v49 = v3 - v32;
          v50 = (v33 + v32);
          v51 = v32 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v36) = 0;
              *(a2 + 24) = 1;
              goto LABEL_68;
            }

            v52 = v51;
            v53 = *v50;
            *(a2 + 1) = v52;
            v36 |= (v53 & 0x7F) << v47;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            v51 = v52 + 1;
            v14 = v48++ > 8;
            if (v14)
            {
              LODWORD(v36) = 0;
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v36) = 0;
          }

LABEL_67:
          v3 = v52;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          while (1)
          {
            v3 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
            if (v14)
            {
              LODWORD(v36) = 0;
              break;
            }
          }
        }

LABEL_68:
        *(this + 4) = v36;
      }

      else if (v23 == 1)
      {
        *(this + 20) |= 1u;
        v24 = *(a2 + 1);
        v2 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
        {
          v40 = 0;
          v41 = 0;
          v28 = 0;
          if (v2 <= v24)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v42 = v3 - v24;
          v43 = (v25 + v24);
          v44 = v24 + 1;
          while (1)
          {
            if (!v42)
            {
              v28 = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v45 = v44;
            v46 = *v43;
            *(a2 + 1) = v45;
            v28 |= (v46 & 0x7F) << v40;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            --v42;
            ++v43;
            v44 = v45 + 1;
            v14 = v41++ > 8;
            if (v14)
            {
              v28 = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
          }

LABEL_63:
          v3 = v45;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            v3 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              v28 = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 1) = v28;
      }

      else
      {
        if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
        {
          v54 = 0;
          return v54 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_73:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t CMMsl::BumpToWakeState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::BumpToWakeState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::BumpToWakeState::hash_value(CMMsl::BumpToWakeState *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ v1;
}

uint64_t CMMsl::CMPedEntry::CMPedEntry(uint64_t this)
{
  *this = off_10041D5F0;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041D5F0;
  *(this + 28) = 0;
  return this;
}

void CMMsl::CMPedEntry::~CMPedEntry(CMMsl::CMPedEntry *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::CMPedEntry::CMPedEntry(CMMsl::CMPedEntry *this, const CMMsl::CMPedEntry *a2)
{
  *this = off_10041D5F0;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 5) = v4;
    if ((*(a2 + 28) & 8) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 6);
  *(this + 28) = v3 | 8;
  *(this + 6) = v4;
  return *&v4;
}

uint64_t CMMsl::CMPedEntry::operator=(uint64_t a1, const CMMsl::CMPedEntry *a2)
{
  if (a1 != a2)
  {
    CMMsl::CMPedEntry::CMPedEntry(&v9, a2);
    v3 = v11;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v10;
    *(a1 + 16) = v3;
    v6 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v6;
    v10 = v4;
    v11 = v5;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CMPedEntry *a2, CMMsl::CMPedEntry *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::CMPedEntry::CMPedEntry(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D5F0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = off_10041D5F0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::CMPedEntry::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v7;
    v9[0] = off_10041D5F0;
    v11 = *(a1 + 28);
    *(a1 + 28) = v3;
    v9[1] = v5;
    v9[2] = v6;
    LODWORD(v5) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::CMPedEntry::formatText(CMMsl::CMPedEntry *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "distance", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "speed", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "speedUncertainty", *(this + 6));
  if (*(this + 28))
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CMPedEntry::readFrom(CMMsl::CMPedEntry *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_48;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(this + 28) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_44;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_42:
          v2 = *(a2 + 1) + 4;
LABEL_43:
          *(a2 + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 28) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_44:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::CMPedEntry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20), 3u);
      if ((*(v3 + 28) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5, 4u);
}

BOOL CMMsl::CMPedEntry::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::CMPedEntry::hash_value(CMMsl::CMPedEntry *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 4) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7;
}

uint64_t CMMsl::CMPedometerStep::CMPedometerStep(uint64_t this)
{
  *this = off_10041D628;
  *(this + 64) = 0;
  return this;
}

{
  *this = off_10041D628;
  *(this + 64) = 0;
  return this;
}

void CMMsl::CMPedometerStep::~CMPedometerStep(CMMsl::CMPedometerStep *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::CMPedometerStep::CMPedometerStep(uint64_t this, const CMMsl::CMPedometerStep *a2)
{
  *this = off_10041D628;
  *(this + 64) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 64) = 16;
    *(this + 40) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 8u;
    *(this + 64) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 13);
    v3 |= 0x40u;
    *(this + 64) = v3;
    *(this + 52) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 3);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 24) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 2);
  v3 |= 2u;
  *(this + 64) = v3;
  *(this + 16) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 64) = v3;
  *(this + 8) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 14);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 56) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 60);
    *(this + 64) = v3 | 0x100;
    *(this + 60) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 12);
  v3 |= 0x20u;
  *(this + 64) = v3;
  *(this + 48) = v11;
  if ((*(a2 + 32) & 0x100) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::CMPedometerStep::operator=(uint64_t a1, const CMMsl::CMPedometerStep *a2)
{
  if (a1 != a2)
  {
    CMMsl::CMPedometerStep::CMPedometerStep(v10, a2);
    v3 = v11;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v11 = v5;
    v12 = v4;
    *&v5 = v14;
    v6 = *(a1 + 40);
    *&v4 = *(a1 + 48);
    *(a1 + 40) = v13;
    *(a1 + 48) = v5;
    v7 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v7;
    v8 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v8;
    v13 = v6;
    v14 = v4;
    LOBYTE(v8) = *(a1 + 60);
    *(a1 + 60) = v16;
    v16 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CMPedometerStep *a2, CMMsl::CMPedometerStep *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v10 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  LOBYTE(v11) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v11;
  return result;
}

double CMMsl::CMPedometerStep::CMPedometerStep(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D628;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  return result;
}

uint64_t CMMsl::CMPedometerStep::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CMPedometerStep::CMPedometerStep(v10, a2);
    v3 = v11;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v11 = v5;
    v12 = v4;
    *&v5 = v14;
    v6 = *(a1 + 40);
    *&v4 = *(a1 + 48);
    *(a1 + 40) = v13;
    *(a1 + 48) = v5;
    v7 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v7;
    v8 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v8;
    v13 = v6;
    v14 = v4;
    LOBYTE(v8) = *(a1 + 60);
    *(a1 + 60) = v16;
    v16 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::CMPedometerStep::formatText(CMMsl::CMPedometerStep *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "configMask", *(this + 12));
    v5 = *(this + 32);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "count", *(this + 13));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "currentCadence", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "currentPace", *(this + 2));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "distance", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "endTime", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "isStepPace", *(this + 60));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "pedometerArmConstrainedState", *(this + 14));
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "startTime", *(this + 5));
  }

LABEL_11:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CMPedometerStep::readFrom(CMMsl::CMPedometerStep *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_121;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(this + 32) |= 0x40u;
            v25 = *(a2 + 1);
            v2 = *(a2 + 2);
            v26 = *a2;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v49 = 0;
              v50 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(a2 + 1);
              }

              v51 = v2 - v25;
              v52 = (v26 + v25);
              v53 = v25 + 1;
              while (1)
              {
                if (!v51)
                {
                  LODWORD(v29) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_108;
                }

                v54 = v53;
                v55 = *v52;
                *(a2 + 1) = v54;
                v29 |= (v55 & 0x7F) << v49;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                --v51;
                ++v52;
                v53 = v54 + 1;
                v14 = v50++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_107;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_107:
              v2 = v54;
            }

            else
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = (v26 + v25);
              v31 = v25 + 1;
              while (1)
              {
                v2 = v31;
                *(a2 + 1) = v31;
                v32 = *v30++;
                v29 |= (v32 & 0x7F) << v27;
                if ((v32 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                ++v31;
                v14 = v28++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  break;
                }
              }
            }

LABEL_108:
            *(this + 13) = v29;
            goto LABEL_117;
          }

          if (v22 == 4)
          {
            *(this + 32) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_64:
              *(a2 + 24) = 1;
              goto LABEL_117;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_101;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(this + 32) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_64;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_101;
          }

          if (v22 == 2)
          {
            *(this + 32) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_64;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_101;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_64;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_101;
        }

        if (v22 == 6)
        {
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_64;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_101:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_117;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 32) |= 0x80u;
            v33 = *(a2 + 1);
            v2 = *(a2 + 2);
            v34 = *a2;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v56 = 0;
              v57 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(a2 + 1);
              }

              v58 = v2 - v33;
              v59 = (v34 + v33);
              v60 = v33 + 1;
              while (1)
              {
                if (!v58)
                {
                  LODWORD(v37) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_112;
                }

                v61 = v60;
                v62 = *v59;
                *(a2 + 1) = v61;
                v37 |= (v62 & 0x7F) << v56;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                --v58;
                ++v59;
                v60 = v61 + 1;
                v14 = v57++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  goto LABEL_111;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v37) = 0;
              }

LABEL_111:
              v2 = v61;
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                v2 = v39;
                *(a2 + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v14 = v36++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  break;
                }
              }
            }

LABEL_112:
            *(this + 14) = v37;
            goto LABEL_117;
          case 8:
            *(this + 32) |= 0x20u;
            v41 = *(a2 + 1);
            v2 = *(a2 + 2);
            v42 = *a2;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v63 = 0;
              v64 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(a2 + 1);
              }

              v65 = v2 - v41;
              v66 = (v42 + v41);
              v67 = v41 + 1;
              while (1)
              {
                if (!v65)
                {
                  LODWORD(v45) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_116;
                }

                v68 = v67;
                v69 = *v66;
                *(a2 + 1) = v68;
                v45 |= (v69 & 0x7F) << v63;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                --v65;
                ++v66;
                v67 = v68 + 1;
                v14 = v64++ > 8;
                if (v14)
                {
                  LODWORD(v45) = 0;
                  goto LABEL_115;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v45) = 0;
              }

LABEL_115:
              v2 = v68;
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v46 = (v42 + v41);
              v47 = v41 + 1;
              while (1)
              {
                v2 = v47;
                *(a2 + 1) = v47;
                v48 = *v46++;
                v45 |= (v48 & 0x7F) << v43;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                ++v47;
                v14 = v44++ > 8;
                if (v14)
                {
                  LODWORD(v45) = 0;
                  break;
                }
              }
            }

LABEL_116:
            *(this + 12) = v45;
            goto LABEL_117;
          case 9:
            *(this + 32) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v24 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v23 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v24 = v23 != 0;
            }

            *(this + 60) = v24;
            goto LABEL_117;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v70 = 0;
        return v70 & 1;
      }

      v2 = *(a2 + 1);
LABEL_117:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_121:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t CMMsl::CMPedometerStep::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40), 1u);
    v4 = *(v3 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 3u);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 24), 4u);
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 16), 5u);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 8), 6u);
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::writeVarInt(a2, *(v3 + 48), 8u);
    if ((*(v3 + 64) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 7u);
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v5 = *(v3 + 60);

  return PB::Writer::write(a2, v5, 9u);
}

BOOL CMMsl::CMPedometerStep::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x100) == 0;
  if ((*(a1 + 64) & 0x100) != 0)
  {
    return (*(a2 + 64) & 0x100) != 0 && *(a1 + 60) == *(a2 + 60);
  }

  return v4;
}

uint64_t CMMsl::CMPedometerStep::hash_value(CMMsl::CMPedometerStep *this)
{
  v1 = *(this + 32);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  v2 = *(this + 5);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = *(this + 4);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x40) != 0)
  {
LABEL_6:
    v4 = *(this + 13);
    if ((v1 & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_24:
    v5 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v6 = 0.0;
    if (v1)
    {
      goto LABEL_13;
    }

LABEL_26:
    v7 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_23:
  v4 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v7 = *(this + 1);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_16:
    v8 = *(this + 14);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    v9 = 0;
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v10 = 0;
    return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_27:
  v8 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  v9 = *(this + 12);
  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v10 = *(this + 60);
  return *&v3 ^ *&v2 ^ v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ v10;
}

double CMMsl::CV3DPredictedPose::CV3DPredictedPose(CMMsl::CV3DPredictedPose *this)
{
  *this = off_10041D660;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_10041D660;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::CV3DPredictedPose::~CV3DPredictedPose(CMMsl::CV3DPredictedPose *this)
{
  *this = off_10041D660;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::CV3DPredictedPose::~CV3DPredictedPose(this);

  operator delete();
}

CMMsl::CV3DPredictedPose *CMMsl::CV3DPredictedPose::CV3DPredictedPose(CMMsl::CV3DPredictedPose *this, const CMMsl::CV3DPredictedPose *a2)
{
  *this = off_10041D660;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((*(a2 + 72) & 2) != 0)
  {
    v5 = *(a2 + 8);
    *(this + 72) = 2;
    *(this + 8) = v5;
  }

  if (this != a2)
  {
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_100035BF0(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  }

  if (*(a2 + 72))
  {
    v6 = *(a2 + 7);
    *(this + 72) |= 1u;
    *(this + 7) = v6;
  }

  return this;
}

uint64_t CMMsl::CV3DPredictedPose::operator=(uint64_t a1, const CMMsl::CV3DPredictedPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::CV3DPredictedPose::CV3DPredictedPose(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    CMMsl::CV3DPredictedPose::~CV3DPredictedPose(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CV3DPredictedPose *a2, CMMsl::CV3DPredictedPose *a3)
{
  v3 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::CV3DPredictedPose::CV3DPredictedPose(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D660;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 64) = *(a2 + 64);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t CMMsl::CV3DPredictedPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CV3DPredictedPose::CV3DPredictedPose(&v9, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    CMMsl::CV3DPredictedPose::~CV3DPredictedPose(&v9);
  }

  return a1;
}

uint64_t CMMsl::CV3DPredictedPose::formatText(CMMsl::CV3DPredictedPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "rotationMatrix", v7);
  }

  v8 = *(this + 72);
  if (v8)
  {
    PB::TextFormatter::format(a2, "targetTimestamp", *(this + 7));
    v8 = *(this + 72);
  }

  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "translation", v11);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CV3DPredictedPose::readFrom(CMMsl::CV3DPredictedPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (v18)
        {
          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v23 == 3)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_114:
              v84 = 0;
              return v84 & 1;
            }

            v42 = *(a2 + 1);
            v43 = *(a2 + 2);
            while (v42 < v43 && (*(a2 + 24) & 1) == 0)
            {
              v45 = *(this + 5);
              v44 = *(this + 6);
              if (v45 >= v44)
              {
                v47 = *(this + 4);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 3;
                v50 = v49 + 1;
                if ((v49 + 1) >> 61)
                {
                  goto LABEL_115;
                }

                v51 = v44 - v47;
                if (v51 >> 2 > v50)
                {
                  v50 = v51 >> 2;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v52 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  sub_10000CDCC(this + 32, v52);
                }

                v53 = (v45 - v47) >> 3;
                v54 = (8 * v49);
                v55 = (8 * v49 - 8 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(this + 4);
                *(this + 4) = v55;
                *(this + 5) = v46;
                *(this + 6) = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v45 = 0;
                v46 = v45 + 8;
              }

              *(this + 5) = v46;
              v57 = *(a2 + 1);
              if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(a2 + 2))
              {
LABEL_79:
                *(a2 + 24) = 1;
                goto LABEL_80;
              }

              *(v46 - 1) = *(*a2 + v57);
              v43 = *(a2 + 2);
              v42 = *(a2 + 1) + 8;
              *(a2 + 1) = v42;
            }

            goto LABEL_80;
          }

          v62 = *(this + 5);
          v61 = *(this + 6);
          if (v62 >= v61)
          {
            v69 = *(this + 4);
            v70 = v62 - v69;
            v71 = (v62 - v69) >> 3;
            v72 = v71 + 1;
            if ((v71 + 1) >> 61)
            {
LABEL_115:
              sub_10000CD24();
            }

            v73 = v61 - v69;
            if (v73 >> 2 > v72)
            {
              v72 = v73 >> 2;
            }

            if (v73 >= 0x7FFFFFFFFFFFFFF8)
            {
              v74 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v74 = v72;
            }

            if (v74)
            {
              sub_10000CDCC(this + 32, v74);
            }

            v79 = (v62 - v69) >> 3;
            v80 = (8 * v71);
            v81 = (8 * v71 - 8 * v79);
            *v80 = 0;
            v60 = v80 + 1;
            memcpy(v81, v69, v70);
            v82 = *(this + 4);
            *(this + 4) = v81;
            *(this + 5) = v60;
            *(this + 6) = 0;
            if (v82)
            {
              operator delete(v82);
            }
          }

          else
          {
            *v62 = 0;
            v60 = v62 + 8;
          }

          *(this + 5) = v60;
          goto LABEL_103;
        }

        if (v23 != 4)
        {
LABEL_50:
          if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
          {
            goto LABEL_114;
          }

          goto LABEL_108;
        }

        *(this + 72) |= 1u;
        v40 = *(a2 + 1);
        if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
        {
LABEL_105:
          *(a2 + 24) = 1;
          goto LABEL_108;
        }

        *(this + 7) = *(*a2 + v40);
      }

      else
      {
        if (v23 != 1)
        {
          if (v23 != 2)
          {
            goto LABEL_50;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_114;
            }

            v24 = *(a2 + 1);
            v25 = *(a2 + 2);
            while (v24 < v25 && (*(a2 + 24) & 1) == 0)
            {
              v27 = *(this + 2);
              v26 = *(this + 3);
              if (v27 >= v26)
              {
                v29 = *(this + 1);
                v30 = v27 - v29;
                v31 = (v27 - v29) >> 3;
                v32 = v31 + 1;
                if ((v31 + 1) >> 61)
                {
                  goto LABEL_115;
                }

                v33 = v26 - v29;
                if (v33 >> 2 > v32)
                {
                  v32 = v33 >> 2;
                }

                if (v33 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v34 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  sub_10000CDCC(this + 8, v34);
                }

                v35 = (v27 - v29) >> 3;
                v36 = (8 * v31);
                v37 = (8 * v31 - 8 * v35);
                *v36 = 0;
                v28 = v36 + 1;
                memcpy(v37, v29, v30);
                v38 = *(this + 1);
                *(this + 1) = v37;
                *(this + 2) = v28;
                *(this + 3) = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v27 = 0;
                v28 = v27 + 8;
              }

              *(this + 2) = v28;
              v39 = *(a2 + 1);
              if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
              {
                goto LABEL_79;
              }

              *(v28 - 1) = *(*a2 + v39);
              v25 = *(a2 + 2);
              v24 = *(a2 + 1) + 8;
              *(a2 + 1) = v24;
            }

LABEL_80:
            PB::Reader::recallMark();
            goto LABEL_108;
          }

          v59 = *(this + 2);
          v58 = *(this + 3);
          if (v59 >= v58)
          {
            v63 = *(this + 1);
            v64 = v59 - v63;
            v65 = (v59 - v63) >> 3;
            v66 = v65 + 1;
            if ((v65 + 1) >> 61)
            {
              goto LABEL_115;
            }

            v67 = v58 - v63;
            if (v67 >> 2 > v66)
            {
              v66 = v67 >> 2;
            }

            if (v67 >= 0x7FFFFFFFFFFFFFF8)
            {
              v68 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v68 = v66;
            }

            if (v68)
            {
              sub_10000CDCC(this + 8, v68);
            }

            v75 = (v59 - v63) >> 3;
            v76 = (8 * v65);
            v77 = (8 * v65 - 8 * v75);
            *v76 = 0;
            v60 = v76 + 1;
            memcpy(v77, v63, v64);
            v78 = *(this + 1);
            *(this + 1) = v77;
            *(this + 2) = v60;
            *(this + 3) = 0;
            if (v78)
            {
              operator delete(v78);
            }
          }

          else
          {
            *v59 = 0;
            v60 = v59 + 8;
          }

          *(this + 2) = v60;
LABEL_103:
          v83 = *(a2 + 1);
          if (v83 > 0xFFFFFFFFFFFFFFF7 || v83 + 8 > *(a2 + 2))
          {
            goto LABEL_105;
          }

          *(v60 - 1) = *(*a2 + v83);
          goto LABEL_107;
        }

        *(this + 72) |= 2u;
        v41 = *(a2 + 1);
        if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
        {
          goto LABEL_105;
        }

        *(this + 8) = *(*a2 + v41);
      }

LABEL_107:
      *(a2 + 1) += 8;
LABEL_108:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t CMMsl::CV3DPredictedPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 72) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64), 1u);
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  if (*(v3 + 72))
  {
    v10 = *(v3 + 56);

    return PB::Writer::write(a2, v10, 4u);
  }

  return this;
}

BOOL CMMsl::CV3DPredictedPose::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & 2) != 0)
  {
    if ((*(a2 + 72) & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 32);
  if (v5 - v6 != *(a2 + 40) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v8 = (*(a2 + 72) & 1) == 0;
  if (*(a1 + 72))
  {
    return (*(a2 + 72) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v8;
}

uint64_t CMMsl::CV3DPredictedPose::hash_value(CMMsl::CV3DPredictedPose *this)
{
  if ((*(this + 72) & 2) != 0)
  {
    if (*(this + 8) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 8);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = PBHashBytes();
  v4 = PBHashBytes();
  if (*(this + 72))
  {
    v5 = *(this + 7);
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
  }

  return v3 ^ v2 ^ v4 ^ *&v5;
}

void CMMsl::CV3DSLAMState::~CV3DSLAMState(CMMsl::CV3DSLAMState *this)
{
  *this = off_10041D698;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::CV3DSLAMState::~CV3DSLAMState(this);

  operator delete();
}

CMMsl::CV3DSLAMState *CMMsl::CV3DSLAMState::CV3DSLAMState(CMMsl::CV3DSLAMState *this, const CMMsl::CV3DSLAMState *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *this = off_10041D698;
  *(this + 22) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  if (*(a2 + 88))
  {
    v5 = *(a2 + 10);
    *(this + 88) = 1;
    *(this + 10) = v5;
  }

  if (this != a2)
  {
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_100035BF0(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_100035BF0(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  }

  return this;
}

uint64_t CMMsl::CV3DSLAMState::operator=(uint64_t a1, const CMMsl::CV3DSLAMState *a2)
{
  if (a1 != a2)
  {
    CMMsl::CV3DSLAMState::CV3DSLAMState(&v11, a2);
    v3 = *(a1 + 88);
    *(a1 + 88) = v18;
    v18 = v3;
    v4 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v7;
    v8 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v8;
    v9 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v9;
    CMMsl::CV3DSLAMState::~CV3DSLAMState(&v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CV3DSLAMState *a2, CMMsl::CV3DSLAMState *a3)
{
  v3 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v13;
  return result;
}

uint64_t CMMsl::CV3DSLAMState::CV3DSLAMState(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D698;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 80) = *(a2 + 80);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v4, (a2 + 56));
  return a1;
}

uint64_t CMMsl::CV3DSLAMState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::CV3DSLAMState::CV3DSLAMState(&v11, a2);
    v3 = *(a1 + 88);
    *(a1 + 88) = v18;
    v18 = v3;
    v4 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v7;
    v8 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v8;
    v9 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v9;
    CMMsl::CV3DSLAMState::~CV3DSLAMState(&v11);
  }

  return a1;
}

uint64_t CMMsl::CV3DSLAMState::formatText(CMMsl::CV3DSLAMState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "rotationMatrix", v7);
  }

  if (*(this + 88))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 10));
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "translation", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "velocity", v13);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CV3DSLAMState::readFrom(CMMsl::CV3DSLAMState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (v18)
        {
          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_142;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_142;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v23 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_67;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_144;
          }

          v24 = *(a2 + 1);
          v25 = *(a2 + 2);
          while (v24 < v25 && (*(a2 + 24) & 1) == 0)
          {
            v27 = *(this + 2);
            v26 = *(this + 3);
            if (v27 >= v26)
            {
              v29 = *(this + 1);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_145;
              }

              v33 = v26 - v29;
              if (v33 >> 2 > v32)
              {
                v32 = v33 >> 2;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFF8)
              {
                v34 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                sub_10000CDCC(this + 8, v34);
              }

              v35 = (v27 - v29) >> 3;
              v36 = (8 * v31);
              v37 = (8 * v31 - 8 * v35);
              *v36 = 0;
              v28 = v36 + 1;
              memcpy(v37, v29, v30);
              v38 = *(this + 1);
              *(this + 1) = v37;
              *(this + 2) = v28;
              *(this + 3) = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            else
            {
              *v27 = 0;
              v28 = v27 + 8;
            }

            *(this + 2) = v28;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
            {
              goto LABEL_98;
            }

            *(v28 - 1) = *(*a2 + v39);
            v25 = *(a2 + 2);
            v24 = *(a2 + 1) + 8;
            *(a2 + 1) = v24;
          }

LABEL_99:
          PB::Reader::recallMark();
          goto LABEL_138;
        }

        v74 = *(this + 2);
        v73 = *(this + 3);
        if (v74 >= v73)
        {
          v80 = *(this + 1);
          v81 = v74 - v80;
          v82 = (v74 - v80) >> 3;
          v83 = v82 + 1;
          if ((v82 + 1) >> 61)
          {
            goto LABEL_145;
          }

          v84 = v73 - v80;
          if (v84 >> 2 > v83)
          {
            v83 = v84 >> 2;
          }

          if (v84 >= 0x7FFFFFFFFFFFFFF8)
          {
            v85 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v85 = v83;
          }

          if (v85)
          {
            sub_10000CDCC(this + 8, v85);
          }

          v98 = (v74 - v80) >> 3;
          v99 = (8 * v82);
          v100 = (8 * v82 - 8 * v98);
          *v99 = 0;
          v75 = v99 + 1;
          memcpy(v100, v80, v81);
          v101 = *(this + 1);
          *(this + 1) = v100;
          *(this + 2) = v75;
          *(this + 3) = 0;
          if (v101)
          {
            operator delete(v101);
          }
        }

        else
        {
          *v74 = 0;
          v75 = v74 + 8;
        }

        *(this + 2) = v75;
LABEL_133:
        v110 = *(a2 + 1);
        if (v110 > 0xFFFFFFFFFFFFFFF7 || v110 + 8 > *(a2 + 2))
        {
          goto LABEL_135;
        }

        *(v75 - 1) = *(*a2 + v110);
        goto LABEL_137;
      }

      *(this + 88) |= 1u;
      v56 = *(a2 + 1);
      if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
      {
LABEL_135:
        *(a2 + 24) = 1;
        goto LABEL_138;
      }

      *(this + 10) = *(*a2 + v56);
LABEL_137:
      *(a2 + 1) += 8;
LABEL_138:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_142;
      }
    }

    if (v23 == 3)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_144:
          v111 = 0;
          return v111 & 1;
        }

        v57 = *(a2 + 1);
        v58 = *(a2 + 2);
        while (v57 < v58 && (*(a2 + 24) & 1) == 0)
        {
          v60 = *(this + 5);
          v59 = *(this + 6);
          if (v60 >= v59)
          {
            v62 = *(this + 4);
            v63 = v60 - v62;
            v64 = (v60 - v62) >> 3;
            v65 = v64 + 1;
            if ((v64 + 1) >> 61)
            {
              goto LABEL_145;
            }

            v66 = v59 - v62;
            if (v66 >> 2 > v65)
            {
              v65 = v66 >> 2;
            }

            if (v66 >= 0x7FFFFFFFFFFFFFF8)
            {
              v67 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v67 = v65;
            }

            if (v67)
            {
              sub_10000CDCC(this + 32, v67);
            }

            v68 = (v60 - v62) >> 3;
            v69 = (8 * v64);
            v70 = (8 * v64 - 8 * v68);
            *v69 = 0;
            v61 = v69 + 1;
            memcpy(v70, v62, v63);
            v71 = *(this + 4);
            *(this + 4) = v70;
            *(this + 5) = v61;
            *(this + 6) = 0;
            if (v71)
            {
              operator delete(v71);
            }
          }

          else
          {
            *v60 = 0;
            v61 = v60 + 8;
          }

          *(this + 5) = v61;
          v72 = *(a2 + 1);
          if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(a2 + 2))
          {
LABEL_98:
            *(a2 + 24) = 1;
            goto LABEL_99;
          }

          *(v61 - 1) = *(*a2 + v72);
          v58 = *(a2 + 2);
          v57 = *(a2 + 1) + 8;
          *(a2 + 1) = v57;
        }

        goto LABEL_99;
      }

      v79 = *(this + 5);
      v78 = *(this + 6);
      if (v79 >= v78)
      {
        v92 = *(this + 4);
        v93 = v79 - v92;
        v94 = (v79 - v92) >> 3;
        v95 = v94 + 1;
        if ((v94 + 1) >> 61)
        {
LABEL_145:
          sub_10000CD24();
        }

        v96 = v78 - v92;
        if (v96 >> 2 > v95)
        {
          v95 = v96 >> 2;
        }

        if (v96 >= 0x7FFFFFFFFFFFFFF8)
        {
          v97 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v97 = v95;
        }

        if (v97)
        {
          sub_10000CDCC(this + 32, v97);
        }

        v106 = (v79 - v92) >> 3;
        v107 = (8 * v94);
        v108 = (8 * v94 - 8 * v106);
        *v107 = 0;
        v75 = v107 + 1;
        memcpy(v108, v92, v93);
        v109 = *(this + 4);
        *(this + 4) = v108;
        *(this + 5) = v75;
        *(this + 6) = 0;
        if (v109)
        {
          operator delete(v109);
        }
      }

      else
      {
        *v79 = 0;
        v75 = v79 + 8;
      }

      *(this + 5) = v75;
    }

    else
    {
      if (v23 != 4)
      {
LABEL_67:
        if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_144;
        }

        v40 = *(a2 + 1);
        v41 = *(a2 + 2);
        while (v40 < v41 && (*(a2 + 24) & 1) == 0)
        {
          v43 = *(this + 8);
          v42 = *(this + 9);
          if (v43 >= v42)
          {
            v45 = *(this + 7);
            v46 = v43 - v45;
            v47 = (v43 - v45) >> 3;
            v48 = v47 + 1;
            if ((v47 + 1) >> 61)
            {
              goto LABEL_145;
            }

            v49 = v42 - v45;
            if (v49 >> 2 > v48)
            {
              v48 = v49 >> 2;
            }

            if (v49 >= 0x7FFFFFFFFFFFFFF8)
            {
              v50 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              sub_10000CDCC(this + 56, v50);
            }

            v51 = (v43 - v45) >> 3;
            v52 = (8 * v47);
            v53 = (8 * v47 - 8 * v51);
            *v52 = 0;
            v44 = v52 + 1;
            memcpy(v53, v45, v46);
            v54 = *(this + 7);
            *(this + 7) = v53;
            *(this + 8) = v44;
            *(this + 9) = 0;
            if (v54)
            {
              operator delete(v54);
            }
          }

          else
          {
            *v43 = 0;
            v44 = v43 + 8;
          }

          *(this + 8) = v44;
          v55 = *(a2 + 1);
          if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(v44 - 1) = *(*a2 + v55);
          v41 = *(a2 + 2);
          v40 = *(a2 + 1) + 8;
          *(a2 + 1) = v40;
        }

        goto LABEL_99;
      }

      v77 = *(this + 8);
      v76 = *(this + 9);
      if (v77 >= v76)
      {
        v86 = *(this + 7);
        v87 = v77 - v86;
        v88 = (v77 - v86) >> 3;
        v89 = v88 + 1;
        if ((v88 + 1) >> 61)
        {
          goto LABEL_145;
        }

        v90 = v76 - v86;
        if (v90 >> 2 > v89)
        {
          v89 = v90 >> 2;
        }

        if (v90 >= 0x7FFFFFFFFFFFFFF8)
        {
          v91 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v91 = v89;
        }

        if (v91)
        {
          sub_10000CDCC(this + 56, v91);
        }

        v102 = (v77 - v86) >> 3;
        v103 = (8 * v88);
        v104 = (8 * v88 - 8 * v102);
        *v103 = 0;
        v75 = v103 + 1;
        memcpy(v104, v86, v87);
        v105 = *(this + 7);
        *(this + 7) = v104;
        *(this + 8) = v75;
        *(this + 9) = 0;
        if (v105)
        {
          operator delete(v105);
        }
      }

      else
      {
        *v77 = 0;
        v75 = v77 + 8;
      }

      *(this + 8) = v75;
    }

    goto LABEL_133;
  }

LABEL_142:
  v111 = v4 ^ 1;
  return v111 & 1;
}

uint64_t CMMsl::CV3DSLAMState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 88))
  {
    this = PB::Writer::write(a2, *(this + 80), 1u);
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v7 = v3[4];
  v8 = v3[5];
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  v11 = v3[7];
  v10 = v3[8];
  while (v11 != v10)
  {
    v12 = *v11++;
    this = PB::Writer::write(a2, v12, 4u);
  }

  return this;
}

uint64_t CMMsl::CV3DSLAMState::hash_value(CMMsl::CV3DSLAMState *this)
{
  if (*(this + 88))
  {
    if (*(this + 10) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 10);
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = PBHashBytes() ^ v1;
  v3 = PBHashBytes();
  return v2 ^ v3 ^ PBHashBytes();
}

uint64_t CMMsl::CVIMUMeasurement::CVIMUMeasurement(uint64_t this)
{
  *this = off_10041D6D0;
  *(this + 68) = 0;
  return this;
}

{
  *this = off_10041D6D0;
  *(this + 68) = 0;
  return this;
}

void CMMsl::CVIMUMeasurement::~CVIMUMeasurement(CMMsl::CVIMUMeasurement *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::CVIMUMeasurement::CVIMUMeasurement(uint64_t this, const CMMsl::CVIMUMeasurement *a2)
{
  *this = off_10041D6D0;
  *(this + 68) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 64;
    *(this + 68) = 64;
    *(this + 56) = v4;
    v2 = *(a2 + 68);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 68) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 8u;
    *(this + 68) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 0x10u;
    *(this + 68) = v3;
    *(this + 40) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 68) = v3;
  *(this + 48) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 68) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 2);
  v3 |= 2u;
  *(this + 68) = v3;
  *(this + 16) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_18:
    v11 = *(a2 + 16);
    *(this + 68) = v3 | 0x80;
    *(this + 64) = v11;
    return this;
  }

LABEL_17:
  v10 = *(a2 + 3);
  v3 |= 4u;
  *(this + 68) = v3;
  *(this + 24) = v10;
  if ((*(a2 + 68) & 0x80) != 0)
  {
    goto LABEL_18;
  }

  return this;
}

uint64_t CMMsl::CVIMUMeasurement::operator=(uint64_t a1, const CMMsl::CVIMUMeasurement *a2)
{
  if (a1 != a2)
  {
    CMMsl::CVIMUMeasurement::CVIMUMeasurement(v9, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v4 = v11;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v6;
    v12 = v3;
    *&v6 = v14;
    *&v3 = *(a1 + 56);
    v7 = *(a1 + 64);
    *(a1 + 56) = v13;
    *(a1 + 64) = v6;
    v13 = v3;
    v14 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CVIMUMeasurement *a2, CMMsl::CVIMUMeasurement *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v11 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  return result;
}

double CMMsl::CVIMUMeasurement::CVIMUMeasurement(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D6D0;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

{
  *a1 = off_10041D6D0;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

uint64_t CMMsl::CVIMUMeasurement::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = off_10041D6D0;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    v6 = *(a2 + 56);
    v7 = *(a2 + 64);
    *(a2 + 68) = 0;
    v8 = *(a1 + 40);
    v12 = *(a1 + 8);
    v9 = *(a1 + 24);
    *(a1 + 40) = v5;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
    v13 = v9;
    v14 = v8;
    *&v3 = *(a1 + 56);
    *&v4 = *(a1 + 64);
    *(a1 + 56) = v6;
    *(a1 + 64) = v7;
    v15 = v3;
    v16 = v4;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::CVIMUMeasurement::formatText(CMMsl::CVIMUMeasurement *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 68);
  if (v5)
  {
    PB::TextFormatter::format(a2, "accelX", *(this + 1));
    v5 = *(this + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 68) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "accelY", *(this + 2));
  v5 = *(this + 68);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "accelZ", *(this + 3));
  v5 = *(this + 68);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "gyroX", *(this + 4));
  v5 = *(this + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "gyroY", *(this + 5));
  v5 = *(this + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "gyroZ", *(this + 6));
  v5 = *(this + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "sequenceNumber", *(this + 16));
  if ((*(this + 68) & 0x40) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

LABEL_10:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CVIMUMeasurement::readFrom(CMMsl::CVIMUMeasurement *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_82;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            *(this + 68) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_60:
              *(a2 + 24) = 1;
              goto LABEL_78;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_72;
          }

          if (v22 == 8)
          {
            *(this + 68) |= 0x80u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v31 = 0;
              v32 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v33 = v2 - v23;
              v34 = (v24 + v23);
              v35 = v23 + 1;
              while (1)
              {
                if (!v33)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_77;
                }

                v36 = v35;
                v37 = *v34;
                *(a2 + 1) = v36;
                v27 |= (v37 & 0x7F) << v31;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                --v33;
                ++v34;
                v35 = v36 + 1;
                v14 = v32++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_76;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_76:
              v2 = v36;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_77:
            *(this + 16) = v27;
            goto LABEL_78;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(this + 68) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_60;
            }

            *(this + 1) = *(*a2 + v2);
            goto LABEL_72;
          }

          if (v22 == 6)
          {
            *(this + 68) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_60;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_72;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 68) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_72;
        }

        if (v22 == 4)
        {
          *(this + 68) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_72;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 68) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_72;
        }

        if (v22 == 2)
        {
          *(this + 68) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_72:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_78;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_78:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_82:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::CVIMUMeasurement::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(this + 56), 1u);
    v4 = *(v3 + 68);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 68) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32), 2u);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 40), 3u);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 48), 4u);
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 8), 5u);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 24), 7u);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 16), 6u);
  v4 = *(v3 + 68);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v5 = *(v3 + 64);

  return PB::Writer::writeVarInt(a2, v5, 8u);
}

BOOL CMMsl::CVIMUMeasurement::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x80) != 0)
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  else
  {
    return ((v2 | v3) & 0x80u) == 0;
  }
}
AudioDSPGraph::Boxes::SRCBox *AudioDSPGraph::Boxes::SRCBox::asOperativeSRCBox(AudioDSPGraph::Boxes::SRCBox *this)
{
  if ((*(*this + 680))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

double AudioDSPGraph::Boxes::SRCBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.28569068e248;
  *a1 = xmmword_1C925F2A0;
  *(a1 + 16) = 0;
  return result;
}

unint64_t AudioDSPGraph::Boxes::SRCBox::selfLatencyInTicks(AudioDSPGraph::Boxes::SRCBox *this)
{
  if ((*(*this + 680))(this))
  {
    return 0;
  }

  v3 = 0.0;
  if (*(this + 888) == 1)
  {
    AudioSampleRateConverterGetLatency();
  }

  v4 = *(*(this + 2) + 848);
  v5 = llround(ceil(v3 * v4));
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(this + 192);
  return v7 + v4 / (*(*this + 648))(this) * v8;
}

void AudioDSPGraph::Boxes::SRCBox::~SRCBox(AudioDSPGraph::Boxes::SRCBox *this)
{
  *this = &unk_1F48D2968;
  AudioDSPGraph::SimpleABL::free((this + 904));
  if (*(this + 888) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D2968;
  AudioDSPGraph::SimpleABL::free((this + 904));
  if (*(this + 888) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::Box::~Box(this);
}

void AudioDSPGraph::Boxes::ReblockerBox::initialize(AudioDSPGraph::Boxes::ReblockerBox *this)
{
  if (((*(this + 10) - *(this + 9)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "ReblockerBox has no inputs");
    AudioDSPGraph::ThrowException(1970168609, v8, off_1E83377D8);
  }

  AudioDSPGraph::Boxes::RingBufferBox::initialize(this);
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v5 = (this + 40);
    if (*(this + 63) < 0)
    {
      v5 = *v5;
    }

    caulk::make_string(&v9, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v5, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v9, off_1E8337C78);
  }

  v4 = *(this + 9);
  if (*(this + 10) == v4)
  {
    v6 = (this + 40);
    if (*(this + 63) < 0)
    {
      v6 = *v6;
    }

    caulk::make_string(&v9, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v2, v6, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v9, off_1E8337C60);
  }

  if (*(*(*(v4 + 16) + 120) + 28) != *(*(*(v3 + 16) + 120) + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "input and output channel counts don't match");
    AudioDSPGraph::ThrowException(1667788321, v7, off_1E83377F0);
  }
}

void sub_1C924AC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::ReblockerBox::process(AudioDSPGraph::Boxes::ReblockerBox *this, unsigned int a2)
{
  if ((*(*this + 680))(this))
  {
    v5 = *(this + 12);
    if (*(this + 13) == v5)
    {
      v19 = (this + 40);
      if (*(this + 63) < 0)
      {
        v19 = *v19;
      }

      caulk::make_string(&v22, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v19, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v22, off_1E8337C78);
    }

    v6 = *(this + 9);
    if (*(this + 10) == v6)
    {
      v21 = (this + 40);
      if (*(this + 63) < 0)
      {
        v21 = *v21;
      }

      caulk::make_string(&v22, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v21, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v22, off_1E8337C60);
    }

    AudioDSPGraph::Buffer::copyFrom(*(*(v5 + 16) + 56), *(*(v6 + 16) + 56));
  }

  else
  {
    v9 = *(this + 9);
    if (*(this + 10) == v9)
    {
      v20 = (this + 40);
      if (*(this + 63) < 0)
      {
        v20 = *v20;
      }

      caulk::make_string(&v22, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v20, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v22, off_1E8337C60);
    }

    AudioDSPGraph::RingBuffer::write((this + 800), a2, (*(*(v9 + 16) + 56) + 80));
  }

  v10 = *(this + 9);
  if (*(this + 10) == v10)
  {
    v18 = (this + 40);
    if (*(this + 63) < 0)
    {
      v18 = *v18;
    }

    caulk::make_string(&v22, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v7, v18, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v22, off_1E8337C60);
  }

  v11 = *(this + 12);
  v12 = *(this + 13);
  if (v11 != v12)
  {
    v13 = *(*(v10 + 16) + 56);
    v14 = *(v13 + 72);
    do
    {
      v15 = *(*(v11 + 16) + 56);
      result = *(v13 + 8);
      v16 = *(v13 + 24);
      v17 = *(v13 + 40);
      *(v15 + 56) = *(v13 + 56);
      *(v15 + 40) = v17;
      *(v15 + 24) = v16;
      *(v15 + 8) = result;
      *(v15 + 72) = v14;
      v11 += 32;
    }

    while (v11 != v12);
  }

  return result;
}

void sub_1C924AE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ReblockerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.14073544e243;
  *a1 = xmmword_1C925F2B0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ReblockerBox::~ReblockerBox(AudioDSPGraph::Boxes::ReblockerBox *this)
{
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::Box::~Box(this);
}

void AudioDSPGraph::Boxes::FreqSRCBox::uninitialize(AudioDSPGraph::Boxes::FreqSRCBox *this)
{
  AudioDSPGraph::Box::uninitialize(this);
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::SimpleABL::free((this + 880));
}

void AudioDSPGraph::Boxes::FreqSRCBox::initialize(AudioDSPGraph::Boxes::FreqSRCBox *this, const char *a2)
{
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v15 = (this + 40);
    if (*(this + 63) < 0)
    {
      v15 = *v15;
    }

    caulk::make_string(&v34, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v15, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E8337C78);
  }

  v4 = *(this + 9);
  v5 = *(this + 10);
  if (((v5 - v4) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "FreqSRCBox has no inputs");
    AudioDSPGraph::ThrowException(1970168609, v33, off_1E8337808);
  }

  if (v5 == v4)
  {
    v16 = (v5 - v4) >> 5;
    v17 = (this + 40);
    if (*(this + 63) < 0)
    {
      v17 = *v17;
    }

    caulk::make_string(&v34, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v17, v16, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E8337C60);
  }

  v6 = *(*(*(v3 + 16) + 120) + 28);
  if (*(*(*(v4 + 16) + 120) + 28) != v6)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "FreqSRCBox input and output channel counts don't match");
    AudioDSPGraph::ThrowException(1667788321, v32, off_1E8337820);
  }

  if (!AudioDSPGraph::Boxes::FreqSRCBox::isValidFreqSRCBoxConnection(this, a2))
  {
    v18 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v7);
    v20 = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this, v19);
    v22 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v21);
    v24 = AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this, v23);
    caulk::make_string(&v31, "FreqSRCBox I/O sample rates and block sizes invalid  %u / %u <> %u / %u", v25, v18, v20, v22, v24);
    AudioDSPGraph::ThrowException(1718444833, &v31, off_1E8337838);
  }

  if (((*(*this + 424))(this) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v30, "FreqSRCBox box can not have ring buffer padding zeros");
    AudioDSPGraph::ThrowException(1634628385, v30, off_1E8337850);
  }

  v9 = *(this + 9);
  if (*(this + 10) == v9)
  {
    v26 = (this + 40);
    if (*(this + 63) < 0)
    {
      v26 = *v26;
    }

    caulk::make_string(&v34, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v8, v26, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E8337898);
  }

  v10 = *(*(v9 + 16) + 120);
  if (*(v10 + 16) != 8 || *(v10 + 8) != 1718773105)
  {
    std::string::basic_string[abi:ne200100]<0>(v29, "FreqSRCBox box needs 8 byte packets at input");
    AudioDSPGraph::ThrowException(1718449215, v29, off_1E8337868);
  }

  v11 = *(this + 12);
  if (*(this + 13) == v11)
  {
    v27 = (this + 40);
    if (*(this + 63) < 0)
    {
      v27 = *v27;
    }

    caulk::make_string(&v34, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v8, v27, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v34, off_1E83378B0);
  }

  v12 = *(*(v11 + 16) + 120);
  if (*(v12 + 16) != 8 || *(v12 + 8) != 1718773105)
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "FreqSRCBox box needs 8 byte packets at output");
    AudioDSPGraph::ThrowException(1718449215, v28, off_1E8337880);
  }

  AudioDSPGraph::Boxes::RingBufferBox::initialize(this);
  v14 = 8 * AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v13);

  AudioDSPGraph::SimpleABL::alloc((this + 880), v6, v14, 0);
}

void sub_1C924B39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v37 - 49) < 0)
  {
    operator delete(*(v37 - 72));
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Boxes::FreqSRCBox::isValidFreqSRCBoxConnection(AudioDSPGraph::Boxes::FreqSRCBox *this, const char *a2)
{
  v3 = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this, a2);
  v5 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v4) * v3;
  v7 = AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this, v6);
  return v5 == AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v8) * v7;
}

unsigned int *AudioDSPGraph::Boxes::FreqSRCBox::process(AudioDSPGraph::Boxes::FreqSRCBox *this, const char *a2)
{
  if (!AudioDSPGraph::Boxes::FreqSRCBox::isValidFreqSRCBoxConnection(this, a2))
  {
    __assert_rtn("process", "SRCBox.cpp", 452, "isValidFreqSRCBoxConnection()");
  }

  v4 = *(this + 9);
  if (*(this + 10) == v4)
  {
    v45 = (this + 40);
    if (*(this + 63) < 0)
    {
      v45 = *v45;
    }

    caulk::make_string(&v51, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v45, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v51, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v46 = (this + 40);
    if (*(this + 63) < 0)
    {
      v46 = *v46;
    }

    caulk::make_string(&v51, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v46, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v51, off_1E8337C78);
  }

  v6 = *(*(*(v4 + 16) + 56) + 80);
  v7 = *v6;
  if (v7 != **(*(*(v5 + 16) + 56) + 80))
  {
    __assert_rtn("process", "SRCBox.cpp", 456, "inBuf->mNumberBuffers == outBuf->mNumberBuffers");
  }

  v8 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v3);
  v49 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v9);
  v50 = v8;
  if (v8 <= v49)
  {
    v11 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v10);
    v16 = 0;
  }

  else
  {
    v11 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v10);
    v13 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v12);
    v16 = 4 * (v13 - AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v14));
  }

  v48 = (this + 880);
  if (v7)
  {
    v17 = (4 * v11);
    v18 = (v6 + 4);
    v19 = (*v48 + 16);
    while (1)
    {
      v20 = *v19;
      v21 = *v18;
      v22 = &v20[4 * AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v15)];
      v24 = &v21[4 * AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v23)];
      memcpy(v20, v21, v17);
      v26 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v25);
      bzero(&v20[4 * v26], v16);
      memcpy(v22, v24, v17);
      v28 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v27);
      bzero(&v22[4 * v28], v16);
      if (v50 > v49)
      {
        break;
      }

      v32 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v29);
      if (v32 < AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v33))
      {
        v31 = *&v21[4 * AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v15)];
        goto LABEL_14;
      }

LABEL_15:
      v18 += 2;
      v19 += 2;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    v30 = *v24;
    *&v20[4 * AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v29)] = v30;
    v31 = 0;
LABEL_14:
    *v22 = v31;
    goto LABEL_15;
  }

LABEL_16:
  v34 = *(this + 9);
  if (*(this + 10) == v34)
  {
    v47 = (this + 40);
    if (*(this + 63) < 0)
    {
      v47 = *v47;
    }

    caulk::make_string(&v51, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v15, v47, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v51, off_1E8337C60);
  }

  v35 = *(this + 12);
  v36 = *(this + 13);
  if (v35 != v36)
  {
    v37 = *(*(v34 + 16) + 56);
    v38 = *(v37 + 72);
    do
    {
      v39 = *(*(v35 + 16) + 56);
      v40 = *(v37 + 8);
      v41 = *(v37 + 24);
      v42 = *(v37 + 40);
      *(v39 + 56) = *(v37 + 56);
      *(v39 + 40) = v42;
      *(v39 + 24) = v41;
      *(v39 + 8) = v40;
      *(v39 + 72) = v38;
      v35 += 32;
    }

    while (v35 != v36);
  }

  v43 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v15);

  return AudioDSPGraph::RingBuffer::write((this + 800), v43, v48);
}

void sub_1C924B810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

AudioDSPGraph::Boxes::FreqSRCBox *AudioDSPGraph::Boxes::FreqSRCBox::asOperativeFreqSRCBox(AudioDSPGraph::Boxes::FreqSRCBox *this)
{
  if ((*(*this + 680))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

double AudioDSPGraph::Boxes::FreqSRCBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.3052639e185;
  *a1 = xmmword_1C925F2C0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::FreqSRCBox::~FreqSRCBox(AudioDSPGraph::Boxes::FreqSRCBox *this)
{
  *this = &unk_1F48D2EE8;
  AudioDSPGraph::SimpleABL::free((this + 880));
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D2EE8;
  AudioDSPGraph::SimpleABL::free((this + 880));
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::Box::~Box(this);
}

uint64_t AudioDSPGraph::Boxes::SumBox::initialize(AudioDSPGraph::Boxes::SumBox *this)
{
  if (((*(this + 10) - *(this + 9)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "SumBox has no inputs");
    AudioDSPGraph::ThrowException(1970168609, v21, off_1E83378C8);
  }

  result = AudioDSPGraph::Box::initialize(this);
  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v16 = (this + 40);
    if (*(this + 63) < 0)
    {
      v16 = *v16;
    }

    caulk::make_string(&v22, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v16, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v22, off_1E8337C78);
  }

  v5 = *(*(v4 + 16) + 120);
  v6 = v5[2];
  if (v6 == 1819304813)
  {
    v7 = v5[3];
    if ((v7 & 1) == 0 || v5[8] != 32)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v6 != 1718773105 || v5[8] != 64)
    {
LABEL_29:
      std::string::basic_string[abi:ne200100]<0>(v20, "SumBox output format must be non-interleaved float");
      AudioDSPGraph::ThrowException(1718449215, v20, off_1E83378E0);
    }

    v7 = v5[3];
  }

  if ((v7 & 0x20) == 0)
  {
    goto LABEL_29;
  }

  v8 = *(this + 9);
  v9 = *(this + 10);
  if (v8 != v9)
  {
    v10 = (v9 - v8) & 0x1FFFFFFFE0;
    do
    {
      v11 = *(*(v8 + 16) + 120);
      v12 = v11[2];
      if (v12 == 1819304813)
      {
        v13 = v11[3];
        if ((v13 & 1) == 0 || v11[8] != 32)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v12 != 1718773105 || v11[8] != 64)
        {
LABEL_26:
          std::string::basic_string[abi:ne200100]<0>(v19, "SumBox input format must be non-interleaved float");
          AudioDSPGraph::ThrowException(1718449215, v19, off_1E83378F8);
        }

        v13 = v11[3];
      }

      if ((v13 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      v14 = v11[7];
      v15 = v5[7];
      if (v14 != v15)
      {
        if (v10 != 32)
        {
          std::string::basic_string[abi:ne200100]<0>(v17, "SumBox channel mismatch");
          AudioDSPGraph::ThrowException(1718449215, v17, off_1E8337928);
        }

        if (v15 != 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v18, "SumBox output channel count must be mono or matched when input is single-bus");
          AudioDSPGraph::ThrowException(1718449215, v18, off_1E8337910);
        }
      }

      v8 += 32;
    }

    while (v8 != v9);
  }

  return result;
}

void sub_1C924BC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 17) < 0)
  {
    operator delete(*(v30 - 40));
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::SumBox::process(AudioDSPGraph::Boxes::SumBox *this, char *a2)
{
  v2 = this;
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string(&v43, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v37, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v43, off_1E8337C78);
  }

  v4 = *(*(*(v3 + 16) + 56) + 80);
  v5 = *v4;
  v6 = *(this + 9);
  v7 = *(this + 10);
  v8 = v7 - v6;
  v9 = (4 * a2);
  if (((v7 - v6) & 0x1FFFFFFFE0) == 0)
  {
LABEL_30:
    if (v5)
    {
      v27 = (v4 + 4);
      do
      {
        v28 = *v27;
        *(v27 - 1) = v9;
        bzero(v28, v9);
        v27 += 2;
        --v5;
      }

      while (v5);
      v6 = *(v2 + 9);
      v7 = *(v2 + 10);
    }

    v29 = 16;
    goto LABEL_36;
  }

  v10 = 0;
  v11 = a2;
  v13 = v5 != 1 || ((v7 - v6) & 0x1FFFFFFFE0) != 32;
  v39 = v4;
  v41 = (v4 + 4);
  v42 = *v4;
  v14 = 1;
  do
  {
    if (v8 >> 5 <= v10)
    {
      v36 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v36 = *v36;
      }

      caulk::make_string(&v43, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v36, v8 >> 5, v10);
      AudioDSPGraph::ThrowException(1919837985, &v43, off_1E8337C60);
    }

    v15 = *(*(v6 + 32 * v10 + 16) + 56);
    if ((*(v15 + 72) & 0x10) == 0)
    {
      v16 = *(v15 + 80);
      if (v14)
      {
        if (*v16)
        {
          v17 = 0;
          v18 = 0;
          v19 = 4;
          v20 = v41;
          do
          {
            a2 = *&v16[v19];
            v21 = *v20;
            *(v20 - 1) = v9;
            if (v18 == v17)
            {
              if (a2 != v21)
              {
                memcpy(v21, a2, v9);
              }
            }

            else
            {
              MEMORY[0x1CCA85330](a2, 1, v21, 1, v21, 1, v11);
            }

            ++v18;
            v17 += v13;
            v20 += 2 * v13;
            v19 += 4;
          }

          while (v18 < *v16);
          v14 = 0;
          v2 = this;
          goto LABEL_25;
        }
      }

      else if (v5)
      {
        v23 = (v16 + 4);
        v24 = v41;
        do
        {
          v25 = *v23;
          v23 += 2;
          v26 = *v24;
          *(v24 - 1) = v9;
          MEMORY[0x1CCA85330](v25, 1, v26, 1, v26, 1, v11);
          v24 += 2;
          --v5;
        }

        while (v5);
        v14 = 0;
LABEL_25:
        v5 = v42;
        goto LABEL_27;
      }

      v14 = 0;
    }

LABEL_27:
    ++v10;
    v6 = *(v2 + 9);
    v7 = *(v2 + 10);
    v8 = v7 - v6;
  }

  while (v10 < ((v7 - v6) >> 5));
  if (v14)
  {
    v4 = v39;
    goto LABEL_30;
  }

  v29 = 0;
LABEL_36:
  if (v7 == v6)
  {
    v38 = (v2 + 40);
    if (*(v2 + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string(&v43, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v43, off_1E8337C60);
  }

  v30 = *(v2 + 12);
  v31 = *(v2 + 13);
  if (v30 != v31)
  {
    v32 = *(*(v6 + 16) + 56);
    do
    {
      v33 = *(*(v30 + 16) + 56);
      result = *(v32 + 8);
      v34 = *(v32 + 24);
      v35 = *(v32 + 40);
      *(v33 + 56) = *(v32 + 56);
      *(v33 + 40) = v35;
      *(v33 + 24) = v34;
      *(v33 + 8) = result;
      *(v33 + 72) = v29;
      v30 += 32;
    }

    while (v30 != v31);
  }

  return result;
}

void sub_1C924BFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::SumBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.49819016e248;
  *a1 = xmmword_1C925F270;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::SumBox::~SumBox(AudioDSPGraph::Boxes::SumBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 87) < 0)
      {
        operator delete(v2[8]);
      }

      MEMORY[0x1CCA84AD0](v2, 64);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,void *>>>::operator()[abi:ne200100](uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

LABEL_5:

    JUMPOUT(0x1CCA84AD0);
  }

  if (a2)
  {
    goto LABEL_5;
  }

  return result;
}

void *non-virtual thunk toAudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::boxDidProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Box *a2, unsigned int a3)
{
  result = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(this + 71, a2 + 5);
  if (result)
  {
    v5 = (result + 16);

    return AudioDSPGraph::Metrics::stop(v5, a3);
  }

  return result;
}

void *AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::boxDidProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Box *a2, unsigned int a3)
{
  result = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(this + 72, a2 + 5);
  if (result)
  {
    v5 = (result + 16);

    return AudioDSPGraph::Metrics::stop(v5, a3);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (AudioDSPGraph::IR::BoxAlias::operator==(v11 + 8, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

double non-virtual thunk toAudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::boxWillProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Box *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(this + 71, a2 + 5);
  if (v2)
  {
    v4 = (v2 + 16);

    *&result = AudioDSPGraph::Metrics::start(v4).u64[0];
  }

  return result;
}

double AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::boxWillProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Box *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(this + 72, a2 + 5);
  if (v2)
  {
    v4 = (v2 + 16);

    *&result = AudioDSPGraph::Metrics::start(v4).u64[0];
  }

  return result;
}

void non-virtual thunk toAudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::~Implementation(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this)
{
  *(this - 1) = &unk_1F48D3750;
  *this = &unk_1F48D3790;
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(this + 568);

  JUMPOUT(0x1CCA84AD0);
}

{
  *(this - 1) = &unk_1F48D3750;
  *this = &unk_1F48D3790;
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(this + 568);
}

uint64_t AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::graphDidProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Graph *a2, double a3, double a4)
{
  v4 = 832;
  if (*(a2 + 920))
  {
    v4 = 880;
  }

  v5 = 836;
  if (*(a2 + 920))
  {
    v5 = 884;
  }

  LODWORD(a3) = *(a2 + v5);
  LODWORD(a4) = *(a2 + v4);
  *&v6 = *&a4;
  v7 = *&v6 / *&a3;
  LODWORD(v6) = *(a2 + 209);
  return AudioDSPGraph::Metrics::stop((this + 64), (v7 * v6));
}

void AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::~Implementation(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this)
{
  *this = &unk_1F48D3750;
  *(this + 1) = &unk_1F48D3790;
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(this + 576);

  JUMPOUT(0x1CCA84AD0);
}

{
  *this = &unk_1F48D3750;
  *(this + 1) = &unk_1F48D3790;
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(this + 576);
}

void std::__shared_ptr_emplace<AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48D3718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AD0);
}

void AudioDSPGraph::Extras::ThreadCounterProfiler::~ThreadCounterProfiler(AudioDSPGraph::Extras::ThreadCounterProfiler *this)
{
  v2 = *this;
  v3 = *(this + 3);
  v12[0] = *(this + 2);
  v12[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AudioDSPGraph::Graph::removeEventHandler(v2, v12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  for (i = *(*this + 32); i; i = *i)
  {
    v5 = i[2];
    v6 = *(this + 2);
    v7 = *(this + 3);
    if (v6)
    {
      v8 = v6 + 8;
    }

    else
    {
      v8 = 0;
    }

    v11[0] = v8;
    v11[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AudioDSPGraph::Box::removeEventHandler(v5, v11);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v9 = *(this + 3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::copyStatistics(AudioDSPGraph::Graph const&)const::{lambda(AudioDSPGraph::Metrics::Statistics const&)#1}::operator()(CFDictionaryRef *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(v11, "WNumBlocks", a2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v12, "WNumFrames", a2 + 1);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v13, "WCPUTime", a2 + 2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v14, "WCPUCycleCount", a2 + 3);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v15, "WCPUInstrCount", a2 + 4);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v16, "WWallClockTime", a2 + 5);
  applesauce::CF::TypeRef::TypeRef(&v17, "WPeakCPU");
  valuePtr = a2[6];
  if (!CFNumberCreate(0, kCFNumberDoubleType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v19, "WPeakCPUBlockNum", a2 + 7);
  LODWORD(valuePtr) = 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(&v20, "WAvgMemDelta", &valuePtr);
  v8 = 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(&v21, "CurrMem", &v8);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v22, "TNumBlocks", a2 + 8);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v23, "TNumFrames", a2 + 9);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v24, "TCPUTime", a2 + 10);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v25, "TCPUCycleCount", a2 + 11);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v26, "TCPUInstrCount", a2 + 12);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(v27, "TWallClockTime", a2 + 13);
  v9[0] = v11;
  v9[1] = 16;
  v4 = 0;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(v9);
  do
  {
    v5 = *&v27[v4 + 8];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *&v27[v4];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 -= 16;
  }

  while (v4 != -256);
}

void sub_1C924C938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v15 + 104));
  applesauce::CF::TypeRef::~TypeRef(v14);
  while (v14 != &a14)
  {
    v14 -= 2;
    applesauce::CF::TypeRefPair::~TypeRefPair(v14);
  }

  _Unwind_Resume(a1);
}

CFTypeRef std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>(applesauce::CF::TypeRef *a1, const char *a2, const void **a3)
{
  result = applesauce::CF::TypeRef::TypeRef(a1, a2);
  v6 = *a3;
  if (v6)
  {
    result = CFRetain(v6);
  }

  *(a1 + 1) = v6;
  return result;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(char **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  keys = 0;
  v33 = 0;
  v34 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v30 = 0;
  v31 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v4 = *a1;
  v3 = a1[1];
  v5 = keys;
  v6 = values;
  v28 = v3;
  if (v4 != v3)
  {
    v27 = v2;
    v7 = v33;
    v8 = v34;
    v10 = v30;
    v9 = v31;
    do
    {
      v11 = *v4;
      if (!*v4 || !*(v4 + 1))
      {
        keys = v5;
        values = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v7 >= v8)
      {
        v12 = v7 - v5;
        v13 = (v7 - v5) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v5) >> 2 > v14)
        {
          v14 = (v8 - v5) >> 2;
        }

        if (v8 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v5, v12);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = *(v4 + 1);
      if (v10 >= v9)
      {
        v18 = v10 - v6;
        v19 = (v10 - v6) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v6) >> 2 > v20)
        {
          v20 = (v9 - v6) >> 2;
        }

        if (v9 - v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v6, v18);
        if (v6)
        {
          operator delete(v6);
        }

        v6 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v4 += 16;
    }

    while (v4 != v28);
    v33 = v7;
    v34 = v8;
    v31 = v9;
    keys = v5;
    values = v6;
    v30 = v10;
    v2 = v27;
  }

  v23 = CFDictionaryCreate(0, v5, v6, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_1C924CCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::DictionaryRef,void,0>(void *a1, const UInt8 *a2, const void **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 2;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, const char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *this = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_1C924D148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(applesauce::CF::TypeRef *a1, const char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1C924D21C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(applesauce::CF::TypeRef *a1, const char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1C924D2E8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t *AudioDSPGraph::Boxes::TimeFreqBox::uninitialize(uint64_t **this)
{
  AudioDSPGraph::Box::uninitialize(this);
  result = this[97];
  v3 = this[96];
  while (result != v3)
  {
    result = std::unique_ptr<TimeFreqConverter>::~unique_ptr[abi:ne200100](result - 1);
  }

  this[97] = v3;
  return result;
}

const void **AudioDSPGraph::Boxes::TimeFreqBox::initialize(const void **this)
{
  AudioDSPGraph::Box::initialize(this);
  v3 = this[9];
  if (this[10] == v3)
  {
    v11 = this + 5;
    if (*(this + 63) < 0)
    {
      v11 = *v11;
    }

    caulk::make_string(&v15, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v2, v11, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v15, off_1E8337C60);
  }

  v4 = this[12];
  if (this[13] == v4)
  {
    v12 = this + 5;
    if (*(this + 63) < 0)
    {
      v12 = *v12;
    }

    caulk::make_string(&v15, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v12, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v15, off_1E8337C78);
  }

  v5 = *(v3[2] + 120);
  v6 = *(v4[2] + 120);
  v7 = *(v5 + 28);
  if (v7 != *(v6 + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(v14, "channel mismatch.");
    AudioDSPGraph::ThrowException(1718444833, v14, off_1E8337940);
  }

  v8 = *(v5 + 8);
  if (v8 != 1718773105)
  {
    if (v8 == 1819304813 && *(v6 + 8) == 1718773105)
    {
      v9 = 0;
      goto LABEL_10;
    }

LABEL_13:
    std::string::basic_string[abi:ne200100]<0>(v13, "formats are not between freq and time domains.");
    AudioDSPGraph::ThrowException(1718444833, v13, off_1E8337958);
  }

  if (*(v6 + 8) != 1819304813)
  {
    goto LABEL_13;
  }

  v9 = 1;
LABEL_10:
  *(this + 198) = v9;
  result = std::vector<std::unique_ptr<TimeFreqConverter>>::reserve(this + 96, v7);
  if (v7)
  {
    operator new();
  }

  return result;
}

void sub_1C924D660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::TimeFreqBox::process(AudioDSPGraph::Boxes::TimeFreqBox *this, const char *a2)
{
  if (*(*(this + 3) + 268) != a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v35, "inNumFrames != blockSize.");
    AudioDSPGraph::ThrowException(1718188065, v35, off_1E83379A0);
  }

  v3 = *(this + 9);
  v4 = *(this + 10);
  v5 = (v4 - v3) >> 5;
  if (v4 == v3)
  {
    v29 = (this + 40);
    if (*(this + 63) < 0)
    {
      v29 = *v29;
    }

    caulk::make_string(&v36, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v29, v5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v36, off_1E8337C60);
  }

  v6 = *(this + 12);
  if (*(this + 13) == v6)
  {
    v30 = (this + 40);
    if (*(this + 63) < 0)
    {
      v30 = *v30;
    }

    caulk::make_string(&v36, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v30, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v36, off_1E8337C78);
  }

  v7 = *(*(*(v3 + 16) + 56) + 80);
  v8 = *v7;
  if (v8 != (*(this + 97) - *(this + 96)) >> 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v34, "buffer list number of buffers doesn't match format channel count.");
    AudioDSPGraph::ThrowException(1667788321, v34, off_1E83379B8);
  }

  if (v8)
  {
    v9 = 0;
    v10 = *(v6 + 16);
    v11 = *(*(v10 + 120) + 24) * a2;
    v12 = a2;
    v13 = (v7 + 4);
    v14 = (*(*(v10 + 56) + 80) + 16);
    do
    {
      *(v14 - 1) = v11;
      v15 = *v13;
      v16 = *v14;
      if (*(this + 198))
      {
        v17 = TimeFreqConverter::Synthesize(*(*(this + 96) + 8 * v9), v15, v15 + v12, v16);
        if (v17)
        {
          v27 = v17;
          std::string::basic_string[abi:ne200100]<0>(v32, "TimeFreqConverter_Synthesize");
          AudioDSPGraph::ThrowException(v27, v32, off_1E83379E8);
        }
      }

      else
      {
        v36.__r_.__value_.__r.__words[0] = *v14;
        v36.__r_.__value_.__l.__size_ = v16 + 4 * v12;
        v19 = TimeFreqConverter::Analyze(*(*(this + 96) + 8 * v9), v15, &v36);
        if (v19)
        {
          v28 = v19;
          std::string::basic_string[abi:ne200100]<0>(v33, "TimeFreqConverter_Analyze");
          AudioDSPGraph::ThrowException(v28, v33, off_1E83379D0);
        }
      }

      ++v9;
      v13 += 2;
      v14 += 2;
    }

    while (v9 < *v7);
    v3 = *(this + 9);
    v4 = *(this + 10);
    v5 = (v4 - v3) >> 5;
  }

  if (v4 == v3)
  {
    v31 = (this + 40);
    if (*(this + 63) < 0)
    {
      v31 = *v31;
    }

    caulk::make_string(&v36, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v31, v5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v36, off_1E8337C60);
  }

  v20 = *(this + 12);
  v21 = *(this + 13);
  if (v20 != v21)
  {
    v22 = *(*(v3 + 16) + 56);
    v23 = *(v22 + 72);
    do
    {
      v24 = *(*(v20 + 16) + 56);
      result = *(v22 + 8);
      v25 = *(v22 + 24);
      v26 = *(v22 + 40);
      *(v24 + 56) = *(v22 + 56);
      *(v24 + 40) = v26;
      *(v24 + 24) = v25;
      *(v24 + 8) = result;
      *(v24 + 72) = v23;
      v20 += 32;
    }

    while (v20 != v21);
  }

  return result;
}

void sub_1C924D9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::TimeFreqBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 6.73591209e252;
  *a1 = xmmword_1C925F2D0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t AudioDSPGraph::Boxes::TimeFreqBox::selfLatencyInTicks(AudioDSPGraph::Boxes::TimeFreqBox *this, const char *a2)
{
  if ((*(*(this + 2) + 921) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "not configured");
    AudioDSPGraph::ThrowException(1667655457, v11, off_1E8337970);
  }

  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v7 = (this + 40);
    if (*(this + 63) < 0)
    {
      v7 = *v7;
    }

    caulk::make_string(&v12, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v7, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v12, off_1E8337C60);
  }

  v3 = *(*(*(v2 + 16) + 120) + 8);
  if (v3 != 1718773105)
  {
    if (v3 == 1819304813)
    {
      v4 = *(this + 12);
      if (*(this + 13) == v4)
      {
        v8 = (this + 40);
        if (*(this + 63) < 0)
        {
          v8 = *v8;
        }

        caulk::make_string(&v12, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v8, 0, 0);
        AudioDSPGraph::ThrowException(1919837985, &v12, off_1E8337C78);
      }

      if (*(*(*(v4 + 16) + 120) + 8) == 1718773105)
      {
        return 0;
      }
    }

LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(v10, "formats are not between freq and time domains.");
    AudioDSPGraph::ThrowException(1718444833, v10, off_1E8337988);
  }

  v6 = *(this + 12);
  if (*(this + 13) == v6)
  {
    v9 = (this + 40);
    if (*(this + 63) < 0)
    {
      v9 = *v9;
    }

    caulk::make_string(&v12, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v9, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v12, off_1E8337C78);
  }

  if (*(*(*(v6 + 16) + 120) + 8) != 1819304813)
  {
    goto LABEL_12;
  }

  return *(*(this + 3) + 296);
}

void sub_1C924DC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::TimeFreqBox::~TimeFreqBox(AudioDSPGraph::Boxes::TimeFreqBox *this)
{
  *this = &unk_1F48D37C0;
  v2 = (this + 768);
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D37C0;
  v2 = (this + 768);
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);

  AudioDSPGraph::Box::~Box(this);
}

void std::vector<float>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 4 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = &v4[4 * v6];
  }

  a1[1] = v11;
}

uint64x2_t CreateMagicalWindow(float *a1, unsigned int a2, uint64x2_t result)
{
  if (a2 >= 1)
  {
    *result.i32 = a2;
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v43 = vdupq_lane_s32(*result.i8, 0);
    v44 = vdupq_n_s64(a2 - 1);
    v4 = xmmword_1C925F0F0;
    result = xmmword_1C925F100;
    v5 = xmmword_1C925F420;
    v6 = a1 + 2;
    __asm { FMOV            V1.4S, #4.0 }

    v42 = _Q1;
    __asm { FMOV            V1.4S, #1.0 }

    v53 = _Q1;
    __asm { FMOV            V4.4S, #3.0 }

    v40 = vdupq_n_s64(0x3FF459A5D6E6692DuLL);
    v41 = _Q4;
    __asm { FMOV            V1.2D, #-0.5 }

    v38 = _Q1;
    v39 = vdupq_n_s64(0x3FF921FB54442D18uLL);
    __asm { FMOV            V1.2D, #0.5 }

    v37 = _Q1;
    do
    {
      v51 = result;
      v52 = v4;
      v16 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v44, result), vcgeq_u64(v44, v4)));
      v50 = v5;
      v17 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v5), v42), v43);
      v18 = vmovn_s32(vcgtq_f32(v53, v17));
      v19 = vbic_s8(v16, v18);
      v20.i64[0] = 0x4000000040000000;
      v20.i64[1] = 0x4000000040000000;
      v21 = vmovn_s32(vcgtq_f32(v20, v17));
      v22 = vbic_s8(v19, v21);
      v23 = vmovn_s32(vcgtq_f32(v41, v17));
      v24 = vbic_s8(v22, v23);
      v25 = vsubq_f32(v20, v17);
      v26 = vand_s8(v22, v23);
      v27.i64[0] = 0xC0000000C0000000;
      v27.i64[1] = 0xC0000000C0000000;
      v28 = vand_s8(v19, v21);
      v49 = vorr_s8(vorr_s8(v24, vorr_s8(vand_s8(v16, v18), v28)), v26);
      v29 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v24), 0x1FuLL)), vaddq_f32(v25, v20), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v26), 0x1FuLL)), vaddq_f32(v17, v27), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v28), 0x1FuLL)), v25, v17)));
      v48 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v24, vorr_s8(v26, v28))), 0x1FuLL));
      v54 = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(vcvt_hight_f64_f32(v29), v40))), v39);
      __x = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v29.f32), v40))), v39);
      v46 = cos(__x.f64[1]);
      v30.f64[0] = cos(__x.f64[0]);
      v30.f64[1] = v46;
      v47 = v30;
      __x.f64[0] = cos(v54.f64[1]);
      v31.f64[0] = cos(v54.f64[0]);
      v31.f64[1] = __x.f64[0];
      v32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v37, v38, v47)), vmlaq_f64(v37, v38, v31));
      v33 = vmulq_f32(v32, v32);
      v34 = vsqrtq_f32(vbslq_s8(v48, v33, vsubq_f32(v53, v33)));
      if (v49.i8[0])
      {
        *(v6 - 2) = v34.f32[0];
      }

      if (v49.i8[2])
      {
        *(v6 - 1) = v34.f32[1];
      }

      if (v49.i8[4])
      {
        *v6 = v34.f32[2];
      }

      if (v49.i8[6])
      {
        v6[1] = v34.f32[3];
      }

      v35 = vdupq_n_s64(4uLL);
      v4 = vaddq_s64(v52, v35);
      result = vaddq_s64(v51, v35);
      v36.i64[0] = 0x400000004;
      v36.i64[1] = 0x400000004;
      v5 = vaddq_s32(v50, v36);
      v6 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void TimeFreqConverter::TimeFreqConverter(TimeFreqConverter *this, int a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  *(this + 72) = 0u;
  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 120) = 0u;
  *(this + 168) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 23) = 0;
  v3 = 2 * a3;
  if (2 * a3)
  {
    *this = 0;
    *(this + 1) = a2;
    *(this + 2) = a3;
    *(this + 3) = a3;
    *(this + 4) = v3;
    *(this + 5) = v3;
    *(this + 6) = 1.0 / v3;
    *(this + 7) = a3 & 0x7FFFFFFF;
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  v7 = 4;
  strcpy(v6, "....");
  caulk::make_string(&v8, "failed to setup time-frequency converter with error %s", v5, v6);
  std::runtime_error::runtime_error(exception, &v8);
}

void sub_1C924E728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C924E788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (v35)
  {
    __cxa_free_exception(v34);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v31 + 176) = v37;
    operator delete(v37);
  }

  v38 = *(v32 + 72);
  if (v38)
  {
    *(v31 + 152) = v38;
    operator delete(v38);
  }

  v39 = *a12;
  if (*a12)
  {
    *(v31 + 128) = v39;
    operator delete(v39);
  }

  v40 = *(v32 + 24);
  if (v40)
  {
    *(v31 + 104) = v40;
    operator delete(v40);
  }

  v41 = *v32;
  if (*v32)
  {
    *(v31 + 80) = v41;
    operator delete(v41);
  }

  if (*(v31 + 48) == 1)
  {
    v42 = *(v31 + 40);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C924E834(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t TimeFreqConverter::Analyze(TimeFreqConverter *this, const float *a2, DSPSplitComplex *a3)
{
  if ((*(this + 1) | 2) != 2)
  {
    return 1937006964;
  }

  v10 = v3;
  v11 = v4;
  if (*this)
  {
    return 4294967292;
  }

  memcpy(*(this + 9), (*(this + 9) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
  memcpy((*(this + 9) + 4 * (*(this + 4) - *(this + 3))), a2, 4 * *(this + 3));
  MEMORY[0x1CCA85390](*(this + 18), 1, *(this + 9), 1, *(this + 12), 1, *(this + 4));
  MEMORY[0x1CCA853E0](*(this + 12), 1, this + 24, *(this + 12), 1, *(this + 4));
  vDSP_ctoz(*(this + 12), 2, a3, 1, **(this + 4) >> 1);
  vDSP_DFT_Execute(*(*(this + 4) + 8), a3->realp, a3->imagp, a3->realp, a3->imagp);
  v9 = 1056964608;
  MEMORY[0x1CCA853E0](a3->realp, 1, &v9, a3->realp, 1, **(this + 4) >> 1);
  MEMORY[0x1CCA853E0](a3->imagp, 1, &v9, a3->imagp, 1, **(this + 4) >> 1);
  return 0;
}

uint64_t TimeFreqConverter::Synthesize(TimeFreqConverter *this, const DSPSplitComplex *a2, float *a3, void *a4)
{
  if ((*(this + 1) - 1) > 1)
  {
    return 1937006964;
  }

  if (*this)
  {
    return 4294967292;
  }

  MultiRadixRealFFT::RealOutOfPlaceInverseTransform((this + 32), a2, a3, *(this + 12));
  MEMORY[0x1CCA85390](*(this + 12), 1, *(this + 21), 1, *(this + 12), 1, *(this + 4));
  MEMORY[0x1CCA85330](*(this + 12), 1, *(this + 15), 1, *(this + 15), 1, *(this + 4));
  memcpy(a4, *(this + 15), 4 * *(this + 3));
  memmove(*(this + 15), (*(this + 15) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
  bzero((*(this + 15) + 4 * (*(this + 4) - *(this + 3))), 4 * *(this + 3));
  return 0;
}

uint64_t AudioDSPGraph::MinimalSafetyCheck(AudioDSPGraph *this, const AudioStreamBasicDescription *a2)
{
  result = 0;
  if (*this >= 0.0 && *this < 3000000.0)
  {
    v4 = *(this + 4);
    if (v4 >= 0xF4240)
    {
      return 0;
    }

    v5 = *(this + 5);
    if (v5 >= 0xF4240)
    {
      return 0;
    }

    v6 = *(this + 6);
    if (v6 >= 0xF4240)
    {
      return 0;
    }

    result = 0;
    if ((*(this + 7) - 1) > 0x3FF || *(this + 8) > 0x400u)
    {
      return result;
    }

    v7 = *(this + 2);
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == 1 && v4 == v6;
    return v7 != 1819304813 || v9;
  }

  return result;
}

void AudioDSPGraph::printi(void *a1, unsigned int a2, char *__s, ...)
{
  v4 = a2;
  if (a2 >= 0x40)
  {
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "                                                                ", 64);
      v4 -= 64;
    }

    while (v4 > 0x3F);
  }

  if (v4)
  {
    v6 = &asc_1C927C13D[-v4];
    v7 = strlen(v6 + 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, (v6 + 64), v7);
  }

  strlen(__s);
  operator new[]();
}

void *AudioDSPGraph::print4cc(void *a1, unsigned int a2)
{
  v3 = 0;
  v4 = 0;
  v16 = *MEMORY[0x1E69E9840];
  *__s = 0;
  v15 = 0;
  v13 = bswap32(a2);
  v5 = MEMORY[0x1E69E9830];
  do
  {
    v6 = __s[v4 - 4];
    if ((v6 & 0x80000000) != 0)
    {
      v7 = __maskrune(__s[v4 - 4], 0x40000uLL);
    }

    else
    {
      v7 = *(v5 + 4 * v6 + 60) & 0x40000;
    }

    if (v6 == 92 || v7 == 0)
    {
      v9 = snprintf(&__s[v3], 16 - v3, "\\x%02x", v6);
      v3 += v9 & ~(v9 >> 31);
    }

    else
    {
      __s[v3++] = v6;
    }

    if (v4 > 2)
    {
      break;
    }

    ++v4;
  }

  while (v3 < 16);
  v10 = 15;
  if (v3 < 16)
  {
    v10 = v3;
  }

  __s[v10] = 0;
  v11 = strlen(__s);
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v11);
}

void *AudioDSPGraph::printACD(void *a1, unsigned int *a2, int a3)
{
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " (", 2);
  AudioDSPGraph::print4cc(v6, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  AudioDSPGraph::print4cc(v7, a2[1]);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  AudioDSPGraph::print4cc(v8, a2[2]);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ") ", 3);
  if (a3)
  {
    v10 = 10;
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v10, 1);
  }

  return result;
}

void AudioDSPGraph::asDecompileString(std::string *this, char *a2)
{
  LODWORD(v4) = a2[23];
  if (a2[23] < 0)
  {
    if (!*(a2 + 1))
    {
      v4 = 0;
      *&this->__r_.__value_.__l.__data_ = 0uLL;
      this->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_31;
    }

    v5 = *a2;
  }

  else
  {
    v5 = a2;
    if (!a2[23])
    {
      *&this->__r_.__value_.__l.__data_ = 0uLL;
      this->__r_.__value_.__r.__words[2] = 0;
LABEL_12:
      v4 = v4;
LABEL_31:
      std::string::reserve(this, v4 + 2);
      std::string::push_back(this, 34);
      v17 = a2[23];
      if (v17 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      if (v17 >= 0)
      {
        v19 = a2[23];
      }

      else
      {
        v19 = *(a2 + 1);
      }

      std::string::append(this, v18, v19);
      std::string::push_back(this, 34);
      return;
    }
  }

  v6 = *v5;
  if ((v6 & 0x80000000) != 0)
  {
    v7 = __maskrune(*v5, 0x500uLL);
    LODWORD(v4) = a2[23];
  }

  else
  {
    v7 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x500;
  }

  if (v6 != 95 && !v7)
  {
LABEL_11:
    this->__r_.__value_.__r.__words[0] = 0;
    this->__r_.__value_.__l.__size_ = 0;
    this->__r_.__value_.__r.__words[2] = 0;
    if ((v4 & 0x80) != 0)
    {
      v4 = *(a2 + 1);
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v8 = (v4 & 0x80u) != 0;
  v9 = *(a2 + 1);
  v10 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v10 = *(a2 + 1);
  }

  if (v10 >= 2)
  {
    v11 = 1;
    v12 = MEMORY[0x1E69E9830];
    do
    {
      v13 = *a2;
      if (!v8)
      {
        v13 = a2;
      }

      v14 = v13[v11];
      if ((v14 & 0x80000000) != 0)
      {
        if (!__maskrune(v13[v11], 0x500uLL))
        {
LABEL_23:
          v15 = memchr("_-+=|./:!@#$%^&*<>?~", v14, 0x15uLL);
          LODWORD(v4) = a2[23];
          if (!v15)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      else if ((*(v12 + 4 * v14 + 60) & 0x500) == 0)
      {
        goto LABEL_23;
      }

      LODWORD(v4) = a2[23];
LABEL_24:
      ++v11;
      v8 = (v4 & 0x80u) != 0;
      v9 = *(a2 + 1);
      v16 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v16 = *(a2 + 1);
      }
    }

    while (v11 < v16);
  }

  if ((v4 & 0x80) != 0)
  {
    v20 = *a2;

    std::string::__init_copy_ctor_external(this, v20, v9);
  }

  else
  {
    *&this->__r_.__value_.__l.__data_ = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
  }
}

void sub_1C924F084(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::SimpleABL::alloc(AudioDSPGraph::SimpleABL *this, unsigned int a2, unsigned int a3, int a4)
{
  AudioDSPGraph::SimpleABL::free(this);
  if (a2 && a3)
  {
    *(this + 8) = 1;
    if (a4)
    {
      v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
      *this = v8;
      if (!v8)
      {
        std::string::basic_string[abi:ne200100]<0>(v17, "AudioBufferList allocation failed");
        AudioDSPGraph::ThrowException(-108, v17, off_1E8337A00);
      }

      *v8 = 1;
      v8[2] = a2;
      v8[3] = a3;
      v9 = malloc_type_calloc(1uLL, a3, 0x6D00FF8EuLL);
      *(*this + 16) = v9;
      if (!v9)
      {
        std::string::basic_string[abi:ne200100]<0>(v16, "AudioBufferList data allocation failed");
        AudioDSPGraph::ThrowException(-108, v16, off_1E8337A18);
      }
    }

    else
    {
      v10 = malloc_type_calloc(1uLL, 16 * (a2 - 1) + 24, 0x10800404ACF7207uLL);
      *this = v10;
      if (!v10)
      {
        std::string::basic_string[abi:ne200100]<0>(v15, "AudioBufferList allocation failed");
        AudioDSPGraph::ThrowException(-108, v15, off_1E8337A30);
      }

      v11 = 0;
      *v10 = a2;
      do
      {
        v12 = &v10[v11];
        v12[2] = 1;
        v12[3] = a3;
        v13 = malloc_type_calloc(1uLL, a3, 0x5395335uLL);
        v10 = *this;
        *(*this + v11 * 4 + 16) = v13;
        if (!v13)
        {
          std::string::basic_string[abi:ne200100]<0>(v14, "AudioBufferList data allocation failed");
          AudioDSPGraph::ThrowException(-108, v14, off_1E8337A48);
        }

        v11 += 4;
      }

      while (4 * a2 != v11);
    }
  }
}

void sub_1C924F258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

AudioDSPGraph::SimpleABL *AudioDSPGraph::SimpleABL::copy(AudioDSPGraph::SimpleABL *this, AudioDSPGraph::SimpleABL *a2)
{
  v2 = *this;
  if (!*this)
  {
    std::string::basic_string[abi:ne200100]<0>(v14, "null internal ABL");
    AudioDSPGraph::ThrowException(1768843553, v14, off_1E8337A78);
  }

  v3 = a2;
  if (!a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "null destination ABL");
    AudioDSPGraph::ThrowException(1768843553, v13, off_1E8337A90);
  }

  v4 = *v2;
  if (v4 != *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "mABL->mNumberBuffers != toABL->mNumberBuffers");
    AudioDSPGraph::ThrowException(1718444833, v12, off_1E8337AA8);
  }

  if (*v2)
  {
    v5 = this;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v2[v6 + 3];
      v9 = v3 + v6 * 4;
      v10 = *(v3 + v6 * 4 + 12);
      if (v8 > v10)
      {
        caulk::make_string(&v11, "mABL->mBuffers[%u].mDataByteSize (%u) > toABL->mBuffers[%u].mDataByteSize (%u)", a2, v7, v8, v7, v10);
        AudioDSPGraph::ThrowException(1718775073, &v11, off_1E8337AC0);
      }

      a2 = *&v2[v6 + 4];
      this = *(v9 + 2);
      if (a2 != this)
      {
        this = memcpy(this, a2, v8);
        v2 = *v5;
        v4 = **v5;
      }

      *(v9 + 3) = v2[v6 + 3];
      ++v7;
      v6 += 4;
    }

    while (v7 < v4);
  }

  return this;
}

void sub_1C924F420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::convert_to<std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef>,0>(uint64_t *a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  Count = CFDictionaryGetCount(a2);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  std::vector<void const*>::vector[abi:ne200100](keys, Count);
  std::vector<void const*>::vector[abi:ne200100](values, Count);
  CFDictionaryGetKeysAndValues(a2, keys[0], values[0]);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      v7 = keys[0][i];
      if (v7)
      {
        CFRetain(keys[0][i]);
        v21 = v7;
        v8 = CFGetTypeID(v7);
        if (v8 != CFStringGetTypeID())
        {
          v19 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v19, "Could not construct");
        }
      }

      else
      {
        v21 = 0;
      }

      v9 = values[0][i];
      if (v9)
      {
        CFRetain(values[0][i]);
      }

      cf[0] = v21;
      cf[1] = v9;
      v10 = std::hash<applesauce::CF::StringRef>::operator()(v21);
      v11 = v10;
      v12 = a1[1];
      if (!*&v12)
      {
        goto LABEL_26;
      }

      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      v14 = v13.u32[0];
      if (v13.u32[0] > 1uLL)
      {
        v15 = v10;
        if (v10 >= *&v12)
        {
          v15 = v10 % *&v12;
        }
      }

      else
      {
        v15 = (*&v12 - 1) & v10;
      }

      v16 = *(*a1 + 8 * v15);
      if (!v16 || (v17 = *v16) == 0)
      {
LABEL_26:
        operator new();
      }

      while (1)
      {
        v18 = v17[1];
        if (v18 == v11)
        {
          break;
        }

        if (v14 > 1)
        {
          if (v18 >= *&v12)
          {
            v18 %= *&v12;
          }
        }

        else
        {
          v18 &= *&v12 - 1;
        }

        if (v18 != v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v17[2], cf))
      {
        goto LABEL_25;
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::find<applesauce::CF::StringRef>(void *a1, const __CFString **a2)
{
  v4 = std::hash<applesauce::CF::StringRef>::operator()(*a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(i[2], a2) == kCFCompareEqualTo)
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::vector<applesauce::CF::TypeRefPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(void *result, CFTypeRef cf, const void **a3)
{
  v5 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v5 = cf;
  v6 = *a3;
  if (v6)
  {
    result = CFRetain(v6);
  }

  v5[1] = v6;
  return result;
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v7);
  }

  v14 = 0;
  v15 = 16 * v3;
  std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>((16 * v3), *a2, a3);
  v16 = (16 * v3 + 16);
  v8 = *(a1 + 8);
  v9 = (16 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v14);
  return v13;
}

uint64_t applesauce::CF::DictionaryRef_iterator<std::string,std::string>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = v2[2];
      if (v5)
      {
        CFRelease(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = a4[6];
  v6 = a4[1] - *a4;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v8 = *a1;
  v9 = a1[1];
  v10 = v9;
  v11 = v9 - *a1;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v13 = v7 - v12;
  if (v7 <= v12)
  {
    if (v7 < v12)
    {
      v10 = v8 + v6;
      a1[1] = v8 + v6;
    }
  }

  else
  {
    v14 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 3) < v13)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v14 - v8) >> 3) > v7)
        {
          v7 = 0x5555555555555556 * ((v14 - v8) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v14 - v8) >> 3) >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v7;
        }

        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v16 = 8 * (v6 >> 3) - 8 * (v11 >> 3);
    do
    {
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      v10 += 24;
      v16 -= 24;
    }

    while (v16);
    a1[1] = v9 + 24 * v13;
    v10 = v9 + 24 * v13;
  }

  v17 = *a1;
  if (v10 == *a1)
  {
    v20 = a2 - v5;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = a2 - v5;
    v22 = *a4;
    v21 = a4[1];
    do
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
      v24 = (v22 + v18);
      if (v23 <= v19)
      {
        v25 = a4 + 3;
      }

      else
      {
        v25 = v24;
      }

      *(v17 + v18) = v20 + *v25;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v19)
      {
        v26 = a4 + 3;
      }

      else
      {
        v26 = (*a4 + v18);
      }

      *(*a1 + v18 + 8) = v20 + v26[1];
      v22 = *a4;
      v21 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v21 - *a4) >> 3) <= v19)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = (*a4 + v18);
      }

      v28 = *(v27 + 16);
      v17 = *a1;
      v29 = a1[1];
      *(*a1 + v18 + 16) = v28;
      ++v19;
      v18 += 24;
    }

    while (v19 < 0xAAAAAAAAAAAAAAABLL * ((v29 - v17) >> 3));
  }

  a1[3] = a3;
  a1[4] = a3;
  *(a1 + 40) = 0;
  v30 = v20 + a4[6];
  a1[6] = v30;
  a1[7] = v20 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  a1[9] = v20 + a4[9];
  a1[10] = v20 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[13] = v30;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v123, 0, 48);
    v61 = *(a1 + 40);
    if (!v61)
    {
LABEL_186:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v123);
      return v61;
    }

    *v127 = 0;
    memset(&v127[8], 0, 32);
    v128 = 0uLL;
    memset(v129, 0, 37);
    std::deque<std::__state<char>>::push_back(v123, v127);
    if (v129[0])
    {
      operator delete(v129[0]);
    }

    if (*&v127[32])
    {
      operator delete(*&v127[32]);
    }

    v118 = a4;
    v62 = *&v123[8];
    v63 = *&v123[40] + *&v123[32] - 1;
    v64 = v63 / 0x2A;
    v65 = *(*&v123[8] + 8 * (v63 / 0x2A));
    v66 = 3 * (v63 % 0x2A);
    v67 = v65 + 32 * v66;
    *v67 = 0;
    *(v67 + 8) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 16) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v62 + 8 * v64) + 32 * v66 + 56), *(a1 + 32));
    v122 = 0;
    v68 = 0;
    v120 = 0;
    v69 = (a3 - a2);
    v70 = *&v123[40];
    v71 = *&v123[8];
    v72 = *&v123[40] + *&v123[32] - 1;
    v73 = v72 / 0x2A;
    v74 = 3 * (v72 % 0x2A);
    *(*(*&v123[8] + 8 * v73) + 32 * v74 + 80) = v61;
    v75 = *(v71 + 8 * v73) + 32 * v74;
    v76 = a5;
    *(v75 + 88) = a5;
    *(v75 + 92) = a6;
    v77 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v68 & 0xFFF) == 0 && (v68 >> 12) >= v69)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v79 = v70 + *&v123[32] - 1;
      v80 = (((v79 >> 1) * v77) >> 64) >> 4;
      v81 = *(*&v123[8] + 8 * v80) - 4032 * v80 + 96 * v79;
      v83 = (v81 + 80);
      v82 = *(v81 + 80);
      if (v82)
      {
        (*(*v82 + 16))(v82, v81);
      }

      v84 = *v81;
      if (*v81 <= -995)
      {
        switch(v84)
        {
          case -1000:
            v89 = *(v81 + 16);
            v91 = (v76 & 0x1000) == 0 || v89 == a3;
            v92 = v89 != a2 || (v76 & 0x20) == 0;
            if (!v92 || !v91)
            {
              goto LABEL_181;
            }

            v93 = &v89[-*(v81 + 8)];
            v94 = v120;
            if (v120 <= v93)
            {
              v94 = v93;
            }

            if (v122)
            {
              v93 = v94;
            }

            if (v93 == v69)
            {
              v95 = *&v123[8];
              v96 = *&v123[16];
              if (*&v123[16] == *&v123[8])
              {
                v96 = *&v123[8];
              }

              else
              {
                v97 = (((*&v123[32] >> 1) * v77) >> 64) >> 4;
                v98 = (*&v123[8] + 8 * v97);
                v99 = (*v98 - 4032 * v97 + 96 * *&v123[32]);
                v100 = v77;
                v101 = ((((*&v123[40] + *&v123[32]) >> 1) * v77) >> 64) >> 4;
                v102 = *(*&v123[8] + 8 * v101) - 4032 * v101 + 96 * (*&v123[40] + *&v123[32]);
                if (v99 != v102)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v99);
                    v99 += 12;
                    if ((v99 - *v98) == 4032)
                    {
                      v103 = v98[1];
                      ++v98;
                      v99 = v103;
                    }
                  }

                  while (v99 != v102);
                  v95 = *&v123[8];
                  v96 = *&v123[16];
                }

                v76 = a5;
                v77 = v100;
              }

              *&v123[40] = 0;
              v106 = (v96 - v95) >> 3;
              if (v106 >= 3)
              {
                do
                {
                  operator delete(*v95);
                  v95 = (*&v123[8] + 8);
                  *&v123[8] = v95;
                  v106 = (*&v123[16] - v95) >> 3;
                }

                while (v106 > 2);
              }

              if (v106 == 1)
              {
                v107 = 21;
LABEL_172:
                *&v123[32] = v107;
              }

              else if (v106 == 2)
              {
                v107 = 42;
                goto LABEL_172;
              }

              v122 = 1;
              v120 = (a3 - a2);
              break;
            }

            v120 = v93;
            std::deque<std::__state<char>>::pop_back(v123);
            v122 = 1;
            break;
          case -999:
            break;
          case -995:
            v85 = *&v123[32];
            v86 = *&v123[8];
            v87 = *&v123[16];
            if (!*&v123[32])
            {
              v88 = 42 * ((*&v123[16] - *&v123[8]) >> 3) - 1;
              if (*&v123[16] == *&v123[8])
              {
                v88 = 0;
              }

              if ((v88 - *&v123[40]) < 0x2A)
              {
                if (*&v123[16] - *&v123[8] < *&v123[24] - *v123)
                {
                  if (*&v123[8] != *v123)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v123[24] == *v123)
                {
                  v108 = 1;
                }

                else
                {
                  v108 = (*&v123[24] - *v123) >> 2;
                }

                *&v127[32] = v123;
                std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v108);
              }

              *&v123[32] = 42;
              *v127 = *(*&v123[16] - 8);
              *&v123[16] -= 8;
              std::__split_buffer<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::allocator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *>>::emplace_front<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *&>(v123, v127);
              v85 = *&v123[32];
              v86 = *&v123[8];
              v87 = *&v123[16];
            }

            v109 = (((v85 >> 1) * v77) >> 64) >> 4;
            v110 = (v86 + 8 * v109);
            v111 = *v110 - 4032 * v109 + 96 * v85;
            if (v87 == v86)
            {
              v112 = 0;
            }

            else
            {
              v112 = v111;
            }

            if (v112 == *v110)
            {
              v112 = *(v110 - 1) + 4032;
            }

            v113 = *(v81 + 16);
            *(v112 - 96) = *v81;
            *(v112 - 80) = v113;
            *(v112 - 56) = 0;
            *(v112 - 48) = 0;
            *(v112 - 64) = 0;
            *(v112 - 64) = *(v81 + 32);
            *(v112 - 48) = *(v81 + 48);
            *(v81 + 32) = 0;
            *(v81 + 40) = 0;
            *(v81 + 48) = 0;
            *(v112 - 40) = 0;
            *(v112 - 32) = 0;
            *(v112 - 24) = 0;
            *(v112 - 40) = *(v81 + 56);
            *(v112 - 24) = *(v81 + 72);
            *(v81 + 56) = 0;
            *(v81 + 64) = 0;
            *(v81 + 72) = 0;
            v114 = *v83;
            *(v112 - 11) = *(v81 + 85);
            *(v112 - 16) = v114;
            *&v123[32] = vaddq_s64(*&v123[32], xmmword_1C925F440);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v84 > -993)
        {
          if (v84 == -992)
          {
            v104 = *(v81 + 16);
            *v127 = *v81;
            *&v127[16] = v104;
            v128 = 0uLL;
            *&v127[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v127[32], *(v81 + 32), *(v81 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v81 + 40) - *(v81 + 32)) >> 3));
            memset(v129, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v129, *(v81 + 56), *(v81 + 64), (*(v81 + 64) - *(v81 + 56)) >> 4);
            v105 = *v83;
            *(&v129[3] + 5) = *(v81 + 85);
            v129[3] = v105;
            (*(**(v81 + 80) + 24))(*(v81 + 80), 1, v81);
            (*(*v129[3] + 24))(v129[3], 0, v127);
            std::deque<std::__state<char>>::push_back(v123, v127);
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
            }

            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
            }
          }

          else if (v84 != -991)
          {
LABEL_189:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_182;
        }

        if (v84 != -994)
        {
          if (v84 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          std::deque<std::__state<char>>::pop_back(v123);
        }
      }

LABEL_182:
      v70 = *&v123[40];
      if (!*&v123[40])
      {
        if (v122)
        {
          v115 = *v118;
          *v115 = a2;
          *(v115 + 8) = &v120[a2];
          v61 = 1;
          *(v115 + 16) = 1;
        }

        else
        {
          v61 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v130 = 0;
  v131 = 0;
  v132 = 0;
  *v127 = 0;
  memset(&v127[8], 0, 32);
  v128 = 0u;
  memset(v129, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_94:
    v61 = 0;
    goto LABEL_95;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v123 = 0;
  memset(&v123[8], 0, 48);
  *__p = 0uLL;
  memset(v125, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v123[32])
  {
    operator delete(*&v123[32]);
  }

  v117 = a4;
  v13 = v131;
  *(v131 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v131 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v119 = a3;
  v121 = a2;
  v17 = (a3 - a2);
  v18 = v131;
  *(v131 - 2) = v12;
  *(v18 - 2) = a5;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v36 = *(v18 - 5);
          *v123 = *v22;
          *&v123[16] = v36;
          memset(&v123[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v123[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v125[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v125[1] + 5) = *(v18 - 11);
          v125[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v125[1] + 24))(v125[1], 0, v123);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v123[32])
          {
            *&v123[40] = *&v123[32];
            operator delete(*&v123[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v23 != -1000)
      {
        goto LABEL_188;
      }

      v24 = *(v18 - 10);
      if ((a5 & 0x20) != 0 && v24 == v121 || (a5 & 0x1000) != 0 && v24 != v119)
      {
LABEL_40:
        v35 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v35;
        goto LABEL_45;
      }

      v25 = &v24[-*(v18 - 11)];
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v127 = *v22;
        *&v127[16] = v26;
        if (v127 != v22)
        {
          v27 = *(v18 - 8);
          v28 = *(v18 - 7);
          v29 = v28 - v27;
          v30 = *(&v128 + 1);
          v31 = *&v127[32];
          if (*(&v128 + 1) - *&v127[32] < (v28 - v27))
          {
            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
              v30 = 0;
              *&v127[32] = 0;
              v128 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v34);
              }
            }

            std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
          }

          v38 = v128;
          if (v128 - *&v127[32] >= v29)
          {
            while (v27 != v28)
            {
              *v31 = *v27;
              *(v31 + 16) = *(v27 + 16);
              v27 = (v27 + 24);
              v31 += 24;
            }
          }

          else
          {
            if (v128 != *&v127[32])
            {
              v39 = (v27 + v128 - *&v127[32]);
              do
              {
                *v31 = *v27;
                *(v31 + 16) = *(v27 + 16);
                v27 = (v27 + 24);
                v31 += 24;
              }

              while (v27 != v39);
              v27 = v39;
            }

            while (v27 != v28)
            {
              v40 = *v27;
              *(v38 + 16) = *(v27 + 2);
              *v38 = v40;
              v38 += 24;
              v27 = (v27 + 24);
            }

            v31 = v38;
          }

          *&v128 = v31;
          v41 = *(v18 - 5);
          v42 = *(v18 - 4);
          v43 = v42 - v41;
          v44 = v129[2];
          v45 = v129[0];
          if ((v129[2] - v129[0]) < (v42 - v41))
          {
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
              v44 = 0;
              memset(v129, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v47);
              }
            }

            std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
          }

          v48 = v129[1];
          if ((v129[1] - v129[0]) >= v43)
          {
            while (v41 != v42)
            {
              *v45 = *v41;
              v45[1] = *(v41 + 1);
              v41 += 16;
              v45 += 2;
            }
          }

          else
          {
            if (v129[1] != v129[0])
            {
              v49 = &v41[v129[1] - v129[0]];
              do
              {
                *v45 = *v41;
                v45[1] = *(v41 + 1);
                v41 += 16;
                v45 += 2;
              }

              while (v41 != v49);
              v41 = v49;
            }

            while (v41 != v42)
            {
              *v48 = *v41;
              v48[1] = *(v41 + 1);
              v41 += 16;
              v48 += 2;
            }

            v45 = v48;
          }

          v129[1] = v45;
        }

        v50 = *v21;
        *(&v129[3] + 5) = *(v21 + 5);
        v129[3] = v50;
        v14 = v25;
      }

      v51 = v131;
      if (v14 == v17)
      {
        v52 = v130;
        while (v51 != v52)
        {
          v51 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v51);
        }

        v131 = v52;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v53 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v53;
        v15 = 1;
      }
    }

LABEL_45:
    v18 = v131;
  }

  while (v130 != v131);
  if ((v15 & 1) == 0)
  {
    goto LABEL_94;
  }

  v55 = *v117;
  *v55 = v121;
  *(v55 + 8) = &v14[v121];
  *(v55 + 16) = 1;
  if (v128 != *&v127[32])
  {
    v56 = 0xAAAAAAAAAAAAAAABLL * ((v128 - *&v127[32]) >> 3);
    v57 = (*&v127[32] + 16);
    v58 = 1;
    do
    {
      v59 = v55 + 24 * v58;
      *v59 = *(v57 - 1);
      v60 = *v57;
      v57 += 24;
      *(v59 + 16) = v60;
      v19 = v56 > v58++;
    }

    while (v19);
  }

  v61 = 1;
LABEL_95:
  if (v129[0])
  {
    v129[1] = v129[0];
    operator delete(v129[0]);
  }

  if (*&v127[32])
  {
    *&v128 = *&v127[32];
    operator delete(*&v127[32]);
  }

  *v127 = &v130;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v127);
  return v61;
}

void sub_1C9251598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_1C9251BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 12);
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C9252244(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C92522B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 16);
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::deque<std::__state<char>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v4 - v5) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v4)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v18 = a1;
      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v12);
    }

    a1[4] = v8 - 42;
    *&v17 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<std::string *>::emplace_back<std::string *&>(a1, &v17);
    v5 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = v5[v9 / 0x2A] - 4032 * (v9 / 0x2A) + 96 * v9;
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_1C9252734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_1C9252AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x1CCA848F0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

void sub_1C9252F78(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 17);
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, char *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = v8 + 1;
      v11 = v8 + 1;
      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v11, a3);
      }

      while (v8 != v11);
      if (v10 == v8)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != a3);
    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3)
{
  v3 = a3;
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  if (v7 != v3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, v3);
      if (v8 + 1 == v10)
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != v3);
    return v8;
  }

  return v3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 14);
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F48D3E38;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x1CCA84AE0);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1CCA84AE0);
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 15);
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_2:
    v8 = a2;
    goto LABEL_3;
  }

  v8 = a2;
  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_37;
  }

  if (((1 << (v9 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_9;
  }

  if (v10 == 5)
  {
    v8 = a2;
    if (*(a1 + 36))
    {
      goto LABEL_9;
    }

    v19 = 41;
  }

  else
  {
LABEL_37:
    if ((v9 - 123) < 2)
    {
      goto LABEL_9;
    }

    v19 = *a2;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
  v8 = a2 + 1;
LABEL_9:
  if (v8 != a2)
  {
    goto LABEL_18;
  }

  if (a2 == a3)
  {
    goto LABEL_2;
  }

  v11 = a2 + 1;
  if (a2 + 1 == a3 || *a2 != 92)
  {
    goto LABEL_2;
  }

  v12 = *v11;
  v13 = *v11;
  if ((v12 - 36) <= 0x3A && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
    v8 = a2 + 2;
  }

  else if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  else if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v13))
  {
    v8 = a2 + 2;
  }

  else
  {
    v8 = a2;
  }

LABEL_3:
  if (v8 == a2)
  {
    if (a2 != a3 && *v8 == 46)
    {
      operator new();
    }

    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

LABEL_18:
  if (v8 == a2 && v8 != a3)
  {
    v14 = *v8;
    switch(v14)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v15 = *(a1 + 28);
        ++*(a1 + 36);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, (v8 + 1), a3);
        if (v16 == a3 || (v8 = v16, *v16 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v15);
        --*(a1 + 36);
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_29;
    }

    ++v8;
  }

LABEL_29:
  if (v8 == a2)
  {
    return a2;
  }

  v17 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, v6, (v7 + 1), v17);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 6);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v16 + 1, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6 == a3;
    }

    if (!v19 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result == a2)
      {
        return a2;
      }

      else
      {
        while (1)
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          if (++result == a2)
          {
            return a2;
          }
        }
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 8);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 7);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_219;
    }

    j = (a2[1] == 94 ? a2 + 2 : a2 + 1);
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (j == a3)
    {
      goto LABEL_219;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *j == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++j;
    }

    if (j == a3)
    {
      v8 = j;
LABEL_13:
      if (v8 != a3)
      {
        if (*v8 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
          ++v8;
        }

        if (v8 != a3 && *v8 == 93)
        {
          return v8 + 1;
        }
      }

LABEL_219:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    while (1)
    {
      v8 = j;
      v10 = j;
      if (j == a3)
      {
        goto LABEL_129;
      }

      v11 = *j;
      v10 = j;
      if (v11 == 93)
      {
        goto LABEL_129;
      }

      v12 = 0;
      v13 = (j + 1);
      __p[0] = 0;
      __p[1] = 0;
      v72 = 0;
      v14 = 0;
      v10 = v8;
      if (v8 + 1 == a3 || v11 != 91)
      {
        goto LABEL_46;
      }

      v15 = *v13;
      switch(v15)
      {
        case '.':
          v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v8 + 2, a3, __p);
          v14 = HIBYTE(v72);
          v12 = __p[1];
          goto LABEL_46;
        case ':':
          LOWORD(__src[0]) = 23866;
          v20 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, __src, __src + 2);
          if (v20 == a3)
          {
LABEL_220:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
          }

          v17 = v20;
          v21 = *(a1 + 24);
          std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v8 + 2, v20, v20 - (v8 + 2));
          v22 = HIBYTE(v78);
          if (v78 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if (v78 < 0)
          {
            v22 = *(&__dst + 1);
          }

          (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, p_dst + v22);
          if (v78 >= 0)
          {
            v24 = &__dst;
          }

          else
          {
            v24 = __dst;
          }

          classname = std::__get_classname(v24, v21 & 1);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(__dst);
          }

          if (!classname)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
          }

          v26 = 0;
          *(v7 + 160) |= classname;
          break;
        case '=':
          LOWORD(v69[0]) = 23869;
          v16 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, v69, v69 + 2);
          if (v16 == a3)
          {
            goto LABEL_220;
          }

          v17 = v16;
          std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(__src, a1, v8 + 2, v16);
          v18 = SHIBYTE(v76);
          if ((SHIBYTE(v76) & 0x8000000000000000) != 0)
          {
            v18 = __src[1];
            if (!__src[1])
            {
LABEL_221:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            v19 = __src[0];
          }

          else
          {
            if (!HIBYTE(v76))
            {
              goto LABEL_221;
            }

            v19 = __src;
          }

          std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v19, v19 + v18, v18);
          (*(**(a1 + 16) + 32))(__s);
          v30 = HIBYTE(v74);
          if (v74 < 0)
          {
            v30 = __s[1];
          }

          if (v30 != 1)
          {
            if (v30 == 12)
            {
              v31 = __s;
              if (v74 < 0)
              {
                v31 = __s[0];
              }

              *(v31 + 11) = *(v31 + 3);
            }

            else if (SHIBYTE(v74) < 0)
            {
              *__s[0] = 0;
              __s[1] = 0;
            }

            else
            {
              LOBYTE(__s[0]) = 0;
              HIBYTE(v74) = 0;
            }
          }

          if (SHIBYTE(v78) < 0)
          {
            operator delete(__dst);
          }

          v36 = HIBYTE(v74);
          if (v74 < 0)
          {
            v36 = __s[1];
          }

          if (v36)
          {
            v37 = *(v7 + 144);
            if (v37 >= *(v7 + 152))
            {
              v41 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v7 + 136, __s);
            }

            else
            {
              if (SHIBYTE(v74) < 0)
              {
                std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
              }

              else
              {
                v38 = *__s;
                *(v37 + 16) = v74;
                *v37 = v38;
              }

              v41 = (v37 + 24);
              *(v7 + 144) = v37 + 24;
            }

            *(v7 + 144) = v41;
          }

          else
          {
            v39 = HIBYTE(v76);
            if (v76 < 0)
            {
              v39 = __src[1];
            }

            if (v39 == 2)
            {
              v42 = __src;
              if (v76 < 0)
              {
                v42 = __src[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v42, *(v42 + 1));
            }

            else
            {
              if (v39 != 1)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
              }

              v40 = __src;
              if (v76 < 0)
              {
                v40 = __src[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v40);
            }
          }

          if (SHIBYTE(v74) < 0)
          {
            operator delete(__s[0]);
          }

          if (SHIBYTE(v76) < 0)
          {
            operator delete(__src[0]);
          }

          v26 = 0;
          break;
        default:
          v12 = 0;
          v14 = 0;
          v10 = v8;
LABEL_46:
          j = *(a1 + 24) & 0x1F0;
          if (v14 >= 0)
          {
            v12 = v14;
          }

          if (!v12)
          {
            if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
            {
              v27 = *v10;
              if (v27 == 92)
              {
                if ((*(a1 + 24) & 0x1F0) != 0)
                {
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, __p);
                }

                else
                {
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, __p, v7);
                }

                v10 = v28;
                goto LABEL_71;
              }
            }

            else
            {
              LOBYTE(v27) = *v10;
            }

            if (v14 < 0)
            {
              v29 = __p[0];
              __p[1] = 1;
            }

            else
            {
              HIBYTE(v72) = 1;
              v29 = __p;
            }

            *v29 = v27;
            *(v29 + 1) = 0;
            ++v10;
          }

LABEL_71:
          if (v10 != a3)
          {
            v32 = *v10;
            if (v32 != 93)
            {
              v34 = v10 + 1;
              if (v10 + 1 != a3 && v32 == 45 && *v34 != 93)
              {
                v69[0] = 0;
                v69[1] = 0;
                v70 = 0;
                v10 += 2;
                if (v34 + 1 != a3 && *v34 == 91 && *v10 == 46)
                {
                  v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v34 + 2, a3, v69);
                  goto LABEL_135;
                }

                if ((j | 0x40) == 0x40)
                {
                  LODWORD(v34) = *v34;
                  if (v34 == 92)
                  {
                    if (j)
                    {
                      v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10, a3, v69);
                    }

                    else
                    {
                      v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10, a3, v69, v7);
                    }

LABEL_135:
                    v10 = v35;
LABEL_136:
                    *v67 = *__p;
                    v68 = v72;
                    __p[1] = 0;
                    v72 = 0;
                    *v65 = *v69;
                    v66 = v70;
                    v69[0] = 0;
                    v69[1] = 0;
                    v70 = 0;
                    __p[0] = 0;
                    if (*(v7 + 170) == 1)
                    {
                      if (*(v7 + 169) == 1)
                      {
                        for (i = 0; ; ++i)
                        {
                          if ((SHIBYTE(v68) & 0x8000000000000000) != 0)
                          {
                            if (i >= v67[1])
                            {
LABEL_184:
                              for (j = 0; ; ++j)
                              {
                                if ((SHIBYTE(v66) & 0x8000000000000000) != 0)
                                {
                                  if (j >= v65[1])
                                  {
                                    goto LABEL_194;
                                  }

                                  v58 = v65[0];
                                }

                                else
                                {
                                  if (j >= SHIBYTE(v66))
                                  {
                                    goto LABEL_194;
                                  }

                                  v58 = v65;
                                }

                                v59 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(v58 + j));
                                if (v66 >= 0)
                                {
                                  v60 = v65;
                                }

                                else
                                {
                                  v60 = v65[0];
                                }

                                *(v60 + j) = v59;
                              }
                            }

                            v44 = v67[0];
                          }

                          else
                          {
                            if (i >= SHIBYTE(v68))
                            {
                              goto LABEL_184;
                            }

                            v44 = v67;
                          }

                          v45 = (*(**(v7 + 24) + 40))(*(v7 + 24), i[v44]);
                          if (v68 >= 0)
                          {
                            v46 = v67;
                          }

                          else
                          {
                            v46 = v67[0];
                          }

                          i[v46] = v45;
                        }
                      }

                      v56 = 0;
                      if (v68 < 0)
                      {
                        goto LABEL_175;
                      }

                      while (v56 < HIBYTE(v68))
                      {
                        while (1)
                        {
                          ++v56;
                          if ((v68 & 0x8000000000000000) == 0)
                          {
                            break;
                          }

LABEL_175:
                          if (v56 >= v67[1])
                          {
                            goto LABEL_178;
                          }
                        }
                      }

LABEL_178:
                      v57 = 0;
                      if (v66 < 0)
                      {
                        goto LABEL_181;
                      }

                      while (v57 < HIBYTE(v66))
                      {
                        while (1)
                        {
                          ++v57;
                          if ((v66 & 0x8000000000000000) == 0)
                          {
                            break;
                          }

LABEL_181:
                          if (v57 >= v65[1])
                          {
                            goto LABEL_194;
                          }
                        }
                      }

LABEL_194:
                      v61 = HIBYTE(v68);
                      if (v68 >= 0)
                      {
                        v62 = v67;
                      }

                      else
                      {
                        v62 = v67[0];
                      }

                      if (v68 < 0)
                      {
                        v61 = v67[1];
                      }

                      std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__src, v7 + 16, v62, &v61[v62]);
                      v63 = HIBYTE(v66);
                      if (v66 >= 0)
                      {
                        v64 = v65;
                      }

                      else
                      {
                        v64 = v65[0];
                      }

                      if (v66 < 0)
                      {
                        v63 = v65[1];
                      }

                      std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__s, v7 + 16, v64, &v63[v64]);
                      __dst = *__src;
                      v78 = v76;
                      __src[1] = 0;
                      v76 = 0;
                      v79 = *__s;
                      v80 = v74;
                      __s[0] = 0;
                      __s[1] = 0;
                      v74 = 0;
                      __src[0] = 0;
                      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                      if (SHIBYTE(v80) < 0)
                      {
                        operator delete(v79);
                      }

                      if (SHIBYTE(v78) < 0)
                      {
                        operator delete(__dst);
                      }

                      if (SHIBYTE(v74) < 0)
                      {
                        operator delete(__s[0]);
                      }

                      if (SHIBYTE(v76) < 0)
                      {
                        v55 = __src[0];
LABEL_212:
                        operator delete(v55);
                      }
                    }

                    else
                    {
                      v47 = HIBYTE(v68);
                      if (v68 < 0)
                      {
                        v47 = v67[1];
                      }

                      if (v47 != 1)
                      {
                        goto LABEL_223;
                      }

                      v48 = HIBYTE(v66);
                      if (v66 < 0)
                      {
                        v48 = v65[1];
                      }

                      if (v48 != 1)
                      {
LABEL_223:
                        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
                      }

                      if (*(v7 + 169) == 1)
                      {
                        if (v68 >= 0)
                        {
                          v49 = v67;
                        }

                        else
                        {
                          v49 = v67[0];
                        }

                        v50 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v49);
                        if (v68 >= 0)
                        {
                          v51 = v67;
                        }

                        else
                        {
                          v51 = v67[0];
                        }

                        *v51 = v50;
                        if (v66 >= 0)
                        {
                          v52 = v65;
                        }

                        else
                        {
                          v52 = v65[0];
                        }

                        v53 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v52);
                        if (v66 >= 0)
                        {
                          v54 = v65;
                        }

                        else
                        {
                          v54 = v65[0];
                        }

                        *v54 = v53;
                      }

                      __dst = *v67;
                      v78 = v68;
                      v67[0] = 0;
                      v67[1] = 0;
                      v68 = 0;
                      v79 = *v65;
                      v80 = v66;
                      v65[0] = 0;
                      v65[1] = 0;
                      v66 = 0;
                      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                      if (SHIBYTE(v80) < 0)
                      {
                        operator delete(v79);
                      }

                      if (SHIBYTE(v78) < 0)
                      {
                        v55 = __dst;
                        goto LABEL_212;
                      }
                    }

                    if (SHIBYTE(v66) < 0)
                    {
                      operator delete(v65[0]);
                    }

                    if (SHIBYTE(v68) < 0)
                    {
                      operator delete(v67[0]);
                    }

                    if (SHIBYTE(v70) < 0)
                    {
                      operator delete(v69[0]);
                    }

LABEL_90:
                    v26 = 1;
                    goto LABEL_127;
                  }
                }

                else
                {
                  LOBYTE(v34) = *v34;
                }

                HIBYTE(v70) = 1;
                LOWORD(v69[0]) = v34;
                goto LABEL_136;
              }
            }
          }

          if (SHIBYTE(v72) < 0)
          {
            if (!__p[1])
            {
              operator delete(__p[0]);
LABEL_129:
              j = v10;
              goto LABEL_130;
            }

            if (__p[1] != 1)
            {
              v33 = __p[0];
LABEL_89:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v33, v33[1]);
              goto LABEL_90;
            }

            v33 = __p[0];
          }

          else
          {
            if (!HIBYTE(v72))
            {
              goto LABEL_129;
            }

            v33 = __p;
            if (HIBYTE(v72) != 1)
            {
              goto LABEL_89;
            }
          }

          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v33);
          goto LABEL_90;
      }

      j = (v17 + 2);
      v10 = v8;
LABEL_127:
      if (SHIBYTE(v72) < 0)
      {
        operator delete(__p[0]);
        if ((v26 & 1) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_129;
      }

      if (v26)
      {
        goto LABEL_129;
      }

LABEL_130:
      if (v8 == j)
      {
        goto LABEL_13;
      }
    }
  }

  return a2;
}

void sub_1C9255400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 5);
}

void sub_1C925570C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x1CCA84AE0](v10, v11);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = 23854;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v15, &v16);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v13, a1, a2, v8);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v9 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 != 87)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  *(a5 + 164) |= 0x500u;
  v15 = 95;
  if (*(a5 + 169) == 1)
  {
    v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
    v10 = a5 + 64;
    v11 = &v14;
  }

  else
  {
    if (*(a5 + 170) != 1)
    {
      std::vector<char>::push_back[abi:ne200100](a5 + 64, &v15);
      return a2 + 1;
    }

    v13 = 95;
    v10 = a5 + 64;
    v11 = &v13;
  }

  std::vector<char>::push_back[abi:ne200100](v10, v11);
  return a2 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_82:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v11 = 12;
          goto LABEL_77;
        }

        v5 = 12;
        goto LABEL_61;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v11 = 10;
          goto LABEL_77;
        }

        v5 = 10;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 13;
            goto LABEL_77;
          }

          v5 = 13;
          goto LABEL_61;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 9;
            goto LABEL_77;
          }

          v5 = 9;
          goto LABEL_61;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 11;
            goto LABEL_77;
          }

          v5 = 11;
          goto LABEL_61;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_61;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v11 = 7;
        goto LABEL_77;
      }

      v5 = 7;
LABEL_61:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v11 = 8;
LABEL_77:
        *a4 = v11;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_61;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_82;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v7 & 0xF8) != 0x30)
    {
      goto LABEL_51;
    }

    v6 = *v7 + 8 * v6 - 48;
    if (a2 + 2 != a3)
    {
      v8 = a2[2];
      v9 = v8 & 0xF8;
      v10 = v8 + 8 * v6 - 48;
      if (v9 == 48)
      {
        v7 = a2 + 3;
      }

      else
      {
        v7 = a2 + 2;
      }

      if (v9 == 48)
      {
        v6 = v10;
      }

      goto LABEL_51;
    }
  }

  v7 = a3;
LABEL_51:
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C925605C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0uLL;
    v13 = *(a2 + 24);
    a2[1] = 0uLL;
    *(v12 + 40) = *(a2 + 5);
    a2[2] = 0uLL;
    v7 = (48 * v8 + 48);
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = (48 * v8 - v15);
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
  }

  a1[1] = v7;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 9);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 3);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1C9256454(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x1CCA84AE0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3C88;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3C88;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3C58;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3C58;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 <= 0x71)
  {
    if (*a2 <= 0x65u)
    {
      if (v5 != 48)
      {
        if (v5 != 99)
        {
          if (v5 == 95)
          {
            goto LABEL_93;
          }

          goto LABEL_70;
        }

        v4 = a2 + 1;
        if (a2 + 1 != a3 && *v4 >= 65)
        {
          v6 = *v4;
          if (v6 < 0x5B || (v6 - 97) <= 0x19u)
          {
            v7 = v6 & 0x1F;
            goto LABEL_72;
          }
        }

LABEL_93:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 0;
        return ++v4;
      }

      v7 = 0;
      goto LABEL_75;
    }

    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 12;
        goto LABEL_90;
      }

      v7 = 12;
      goto LABEL_75;
    }

    if (v5 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 10;
        goto LABEL_90;
      }

      v7 = 10;
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 13;
        goto LABEL_90;
      }

      v7 = 13;
      goto LABEL_75;
    }

    if (v5 == 116)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 9;
        goto LABEL_90;
      }

      v7 = 9;
LABEL_75:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
      return ++v4;
    }

LABEL_70:
    v7 = v5;
    if (v5 < 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
LABEL_72:
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v7;
        *(a4 + 1) = 0;
        return ++v4;
      }

      goto LABEL_75;
    }

    goto LABEL_93;
  }

  if (v5 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_93;
    }

    v8 = a2[1];
    if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
    {
      goto LABEL_93;
    }

    v4 = a2 + 2;
    if (a2 + 2 == a3)
    {
      goto LABEL_93;
    }

    v9 = *v4;
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_93;
    }

    goto LABEL_43;
  }

  if (v5 == 118)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v15 = 11;
LABEL_90:
      *a4 = v15;
      return ++v4;
    }

    v7 = 11;
    goto LABEL_75;
  }

  if (v5 != 120)
  {
    goto LABEL_70;
  }

LABEL_43:
  if (v4 + 1 == a3)
  {
    goto LABEL_93;
  }

  v10 = v4[1];
  v11 = -48;
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    v10 |= 0x20u;
    if ((v10 - 97) >= 6u)
    {
      goto LABEL_93;
    }

    v11 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_93;
  }

  v12 = v4[2];
  v13 = -48;
  if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
  {
    v12 |= 0x20u;
    if ((v12 - 97) >= 6u)
    {
      goto LABEL_93;
    }

    v13 = -87;
  }

  v14 = v13 + v12 + 16 * (v11 + v10);
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v14;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
  }

  v4 += 3;
  return v4;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

unsigned __int8 *std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = (a2 - v4 + 1);
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1C9256FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 2);
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_61;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_38;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v75, &__s);
  __p = v75;
  size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v75);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v75;
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v75.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v75.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_167;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_167:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_38:
    negate = 0;
    v9 = 1;
    goto LABEL_39;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_38;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_163;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v75);
    v16 = this->__ranges_.__begin_;
    v17 = this->__ranges_.__end_ - v16;
    if (v17)
    {
      v18 = 0;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v16->second.__r_.__value_.__r.__words) >= 1)
      {
        ++v18;
        ++v16;
        if (v18 >= v19)
        {
          goto LABEL_32;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    else
    {
LABEL_32:
      v20 = 0;
      v21 = 0;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_143;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v22 = 0;
    goto LABEL_145;
  }

  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v75);
  v38 = this->__equivalences_.__begin_;
  v39 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v40 = this->__equivalences_.__end_ - v38;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v41 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = v38->__r_.__value_.__l.__size_;
      }

      if (v42 == v47)
      {
        v49 = v48 >= 0 ? v38 : v38->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v49, v42))
        {
          break;
        }
      }

      v46 = v45++ < v41;
      ++v38;
      if (!--v44)
      {
        goto LABEL_140;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v39 < 0)
    {
LABEL_141:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_140:
    v21 = 0;
    v22 = 0;
    if (v39 < 0)
    {
      goto LABEL_141;
    }
  }

  if (!v46)
  {
LABEL_145:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v69 = tab[__src];
      if (((v69 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_163;
      }

      neg_mask = this->__neg_mask_;
      if ((v69 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_162:
        negate = v22;
LABEL_164:
        v9 = 2;
        goto LABEL_61;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_162;
    }

LABEL_163:
    negate = 1;
    goto LABEL_164;
  }

LABEL_143:
  v9 = 2;
  negate = v22;
  if (v21)
  {
    goto LABEL_61;
  }

LABEL_39:
  v24 = *a2->__current_;
  v75.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v24) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v24);
    v75.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = this->__chars_.__begin_;
  v26 = this->__chars_.__end_ - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_60;
      }
    }

    while (--v26);
  }

  v28 = this->__neg_mask_;
  if (v28 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v24 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v24] & v28) == 0)
    {
      v29 = (v24 == 95) & (v28 >> 7);
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    end = this->__neg_chars_.__end_;
    v31 = memchr(this->__neg_chars_.__begin_, v24, end - this->__neg_chars_.__begin_);
    v32 = !v31 || v31 == end;
    v33 = !v32;
    if ((v29 & 1) == 0 && !v33)
    {
LABEL_60:
      negate = 1;
      goto LABEL_61;
    }
  }

  v37 = this->__ranges_.__begin_;
  v36 = this->__ranges_.__end_;
  if (v37 == v36)
  {
    goto LABEL_99;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v37 = this->__ranges_.__begin_;
    v36 = this->__ranges_.__end_;
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  v50 = v36 - v37;
  if (v50)
  {
    v51 = 0;
    v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 4);
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v37->second.__r_.__value_.__r.__words) >= 1)
    {
      ++v51;
      ++v37;
      if (v51 >= v52)
      {
        goto LABEL_95;
      }
    }

    v53 = 1;
    negate = 1;
  }

  else
  {
LABEL_95:
    v53 = 0;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v53 & 1) == 0)
  {
LABEL_99:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_134:
      v65 = this->__mask_;
      if ((v75.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v75.__r_.__value_.__s.__data_[0]] & v65) != 0)
      {
        goto LABEL_60;
      }

      v66 = (v65 >> 7) & 1;
      if (v75.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v66) = 0;
      }

      negate |= v66;
      goto LABEL_61;
    }

    v54 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v55 = this->__equivalences_.__begin_;
    v56 = this->__equivalences_.__end_ - v55;
    if (v56)
    {
      v71 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v72 = v9;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      }

      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = v55->__r_.__value_.__l.__size_;
        }

        if (v58 == v62)
        {
          v64 = v63 >= 0 ? v55 : v55->__r_.__value_.__r.__words[0];
          if (!memcmp(v54, v64, v58))
          {
            break;
          }
        }

        v61 = v60++ < v57;
        ++v55;
        if (!--v59)
        {
          goto LABEL_131;
        }
      }

      negate = 1;
LABEL_131:
      v9 = v72;
      if ((v71 & 0x80) == 0)
      {
LABEL_133:
        if (v61)
        {
          goto LABEL_61;
        }

        goto LABEL_134;
      }
    }

    else
    {
      v61 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_133;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_133;
  }

LABEL_61:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v35 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v35 = -995;
  }

  a2->__do_ = v35;
  a2->__node_ = first;
}

void sub_1C9257940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C9257A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C9257BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::__init_with_size[abi:ne200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 4);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3D18;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3D18;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3CE8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3CE8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a3;
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = a2;
    if (v9 != a3)
    {
      v12 = *a2;
      if (v12 != 92)
      {
LABEL_17:
        if (v12 == 46)
        {
          operator new();
        }

        goto LABEL_19;
      }

      v13 = *v9;
      if ((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x580000000000441) == 0)
      {
LABEL_19:
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, v3, v4);
        goto LABEL_20;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v11 = v3 + 2;
      if (v3 + 2 != v3)
      {
        goto LABEL_41;
      }
    }

    v12 = *v11;
    goto LABEL_17;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v11 = v3 + 1;
LABEL_20:
  if (v11 == v3)
  {
    if (v9 == v4 || *v11 != 92)
    {
      return v3;
    }

    v15 = v3[1];
    if (v15 == 40)
    {
      v16 = v3 + 2;
    }

    else
    {
      v16 = v11;
    }

    if (v16 == v3)
    {
      if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v15))
      {
        v11 = v3 + 2;
      }

      goto LABEL_41;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    v17 = a1->__marked_count_;
    do
    {
      v18 = v16;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, v16, v4);
    }

    while (v18 != v16);
    v11 = v4;
    if (v18 != v4)
    {
      if (v18 + 1 == v4 || *v18 != 92)
      {
        goto LABEL_76;
      }

      if (v18[1] == 41)
      {
        v11 = v18 + 2;
      }

      else
      {
        v11 = v18;
      }
    }

    if (v11 != v18)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v17);
      goto LABEL_41;
    }

LABEL_76:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_41:
  if (v11 != v3)
  {
    if (v11 == v4)
    {
      return v4;
    }

    v19 = a1->__marked_count_ + 1;
    v20 = *v11;
    if (v20 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v11 + 1;
    }

    if (v11 + 1 == v4 || v20 != 92)
    {
      return v11;
    }

    v21 = v11[1] == 123 ? v11 + 2 : v11;
    v3 = v11;
    if (v11 != v21)
    {
      v30 = 0;
      v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v21, v4, &v30);
      if (v22 == v21)
      {
        goto LABEL_78;
      }

      if (v22 != v4)
      {
        v23 = *v22;
        if (v23 == 44)
        {
          v29 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v22 + 1, v4, &v29);
          if (v24 != v4)
          {
            if (v24 + 1 == v4 || *v24 != 92)
            {
              goto LABEL_77;
            }

            if (v24[1] == 125)
            {
              v4 = v24 + 2;
            }

            else
            {
              v4 = v24;
            }
          }

          if (v4 != v24)
          {
            v26 = v29;
            v25 = v30;
            if (v29 == -1)
            {
              v27 = a1;
              v26 = -1;
              goto LABEL_75;
            }

            if (v29 >= v30)
            {
              v27 = a1;
LABEL_75:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(v27, v25, v26, end, marked_count + 1, v19, 1);
              return v4;
            }

LABEL_78:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }
        }

        else if (v22 + 1 != v4 && v23 == 92)
        {
          v4 = v22[1] == 125 ? v22 + 2 : v22;
          if (v22 != v4)
          {
            v25 = v30;
            v27 = a1;
            v26 = v30;
            goto LABEL_75;
          }
        }
      }

LABEL_77:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, char *a3)
{
  if (a2 == a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
LABEL_3:
    v8 = a2;
    goto LABEL_4;
  }

  v12 = *a2;
  if (v12 > 0x5B)
  {
    if (v12 == 92)
    {
      if (a2 + 1 != a3)
      {
        v16 = a2[1];
        if (v16 == 66)
        {
          v17 = 1;
        }

        else
        {
          if (v16 != 98)
          {
            goto LABEL_28;
          }

          v17 = 0;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v17);
        v9 = a2 + 2;
        goto LABEL_29;
      }

LABEL_28:
      v9 = a2;
      goto LABEL_29;
    }

    v9 = a2;
    if (v12 != 94)
    {
      goto LABEL_29;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
LABEL_23:
    v9 = a2 + 1;
    goto LABEL_29;
  }

  if (v12 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
    goto LABEL_23;
  }

  v9 = a2;
  if (v12 != 40)
  {
    goto LABEL_29;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_28;
  }

  v13 = a2[2];
  if (v13 == 33)
  {
    std::regex_traits<char>::regex_traits(&v40.__traits_);
    memset(&v40.__flags_, 0, 40);
    v40.__flags_ = a1->__flags_;
    v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
    v27 = v40.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 1, a1->__marked_count_);
    a1->__marked_count_ += v27;
    if (v14 == a3 || *v14 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_59;
  }

  if (v13 != 61)
  {
    goto LABEL_28;
  }

  std::regex_traits<char>::regex_traits(&v40.__traits_);
  memset(&v40.__flags_, 0, 40);
  v40.__flags_ = a1->__flags_;
  v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
  v15 = v40.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 0, a1->__marked_count_);
  a1->__marked_count_ += v15;
  if (v14 == a3 || *v14 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_59:
  v9 = (v14 + 1);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40.__traits_.__loc_);
LABEL_29:
  if (v9 != a2)
  {
    return v9;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  if (a2 == a3)
  {
    goto LABEL_3;
  }

  v18 = *a2;
  if (v18 <= 0x3E)
  {
    v8 = a2;
    if (*a2 <= 0x28u)
    {
      if (v18 == 36)
      {
        goto LABEL_4;
      }

      if (v18 == 40)
      {
        if (a2 + 1 != a3)
        {
          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            ++a1->__open_count_;
            v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 3, a3);
            if (v23 != a3 && *v23 == 41)
            {
              --a1->__open_count_;
              v8 = (v23 + 1);
              goto LABEL_4;
            }
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v24 = a1->__marked_count_;
            ++a1->__open_count_;
            v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
            if (v25 != a3)
            {
              v26 = v25;
              if (*v25 == 41)
              {
                std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v24);
                --a1->__open_count_;
                v8 = (v26 + 1);
                goto LABEL_4;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }
    }

    else
    {
      if (v18 == 41)
      {
        goto LABEL_4;
      }

      if (v18 == 46)
      {
        operator new();
      }

      if (v18 - 42 < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }
    }

LABEL_74:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
    v8 = a2 + 1;
    goto LABEL_4;
  }

  v19 = v18 - 92;
  if (v19 > 0x21)
  {
LABEL_71:
    if (v18 == 91)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_4;
    }

    if (v18 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_74;
  }

  v8 = a2;
  if (((1 << (v18 - 92)) & 0x300000006) != 0)
  {
    goto LABEL_4;
  }

  if (v18 != 92)
  {
    if (v19 == 31)
    {
      goto LABEL_101;
    }

    goto LABEL_71;
  }

  v20 = a2 + 1;
  if (a3 == (a2 + 1))
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v21 = *v20;
  v22 = v21 - 48;
  if (v21 == 48)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v22);
    v8 = a2 + 2;
    goto LABEL_78;
  }

  v8 = a2 + 1;
  if ((v21 - 49) <= 8)
  {
    v8 = a2 + 2;
    if (a2 + 2 == a3)
    {
      v8 = a3;
    }

    else
    {
      while (1)
      {
        v28 = *v8;
        if ((v28 - 48) > 9)
        {
          break;
        }

        if (v22 >= 0x19999999)
        {
          goto LABEL_103;
        }

        ++v8;
        v22 = v28 + 10 * v22 - 48;
        if (v8 == a3)
        {
          v8 = a3;
          break;
        }
      }

      if (!v22)
      {
LABEL_103:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }
    }

    if (v22 > marked_count)
    {
      goto LABEL_103;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v22);
  }

LABEL_78:
  if (v20 != v8)
  {
    goto LABEL_4;
  }

  v29 = *v20;
  if (v29 <= 0x63)
  {
    if (v29 != 68)
    {
      if (v29 != 83)
      {
        v8 = a2 + 1;
        if (v29 != 87)
        {
          goto LABEL_97;
        }

        v30 = a1;
        v31 = 1;
        goto LABEL_91;
      }

      v37 = a1;
      v38 = 1;
      goto LABEL_94;
    }

    v32 = a1;
    v33 = 1;
    goto LABEL_89;
  }

  if (v29 != 119)
  {
    if (v29 == 115)
    {
      v37 = a1;
      v38 = 0;
LABEL_94:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v37, v38);
      v35 = started->__mask_ | 0x4000;
      goto LABEL_95;
    }

    v8 = a2 + 1;
    if (v29 != 100)
    {
      goto LABEL_97;
    }

    v32 = a1;
    v33 = 0;
LABEL_89:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v32, v33);
    v35 = started->__mask_ | 0x400;
LABEL_95:
    started->__mask_ = v35;
    goto LABEL_96;
  }

  v30 = a1;
  v31 = 0;
LABEL_91:
  v36 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v30, v31);
  v36->__mask_ |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v36, 95);
LABEL_96:
  v8 = a2 + 2;
LABEL_97:
  if (v20 == v8)
  {
    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    if (v39 == v20)
    {
      v8 = a2;
    }

    else
    {
      v8 = v39;
    }
  }

LABEL_4:
  v9 = a2;
  if (v8 == a2)
  {
    return v9;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 11);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * (v10 + v12 - 2);
    *v15 = v14->std::pair<const char *, const char *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
  }

  while (v9 > v12++);
LABEL_11:

  operator delete(begin);
}

void sub_1C9259510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3BE0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3BE0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3BB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1CCA84AE0);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F48D3BB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

CFHashCode std::hash<applesauce::CF::StringRef>::operator()(const void *a1)
{
  if (a1)
  {
    return CFHash(a1);
  }

  else
  {
    return 0xD7C06285B9DE677ALL;
  }
}

CFComparisonResult applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(const __CFString *cf, const __CFString **a2)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(cf);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (cf)
  {
    v5 = CFStringCompare(cf, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (cf)
  {
    goto LABEL_9;
  }

  return v5;
}

void std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = __p[2];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AudioDSPGraph::Boxes::VectorGainBox::initialize(AudioDSPGraph::Boxes::VectorGainBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 9);
  v4 = *(this + 10);
  v5 = v4 - v3;
  v6 = (v4 - v3) >> 5;
  if (v6 != 1)
  {
    v9 = *(this + 13) - *(this + 12);
    goto LABEL_59;
  }

  v7 = *(this + 12);
  v8 = *(this + 13);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) != 0x20)
  {
    v6 = 1;
LABEL_59:
    caulk::make_string(&v58, "There must be one input and output, instead of %u and %u.", v2, v6, v9 >> 5);
    AudioDSPGraph::ThrowException(1667788321, &v58, off_1E8337C18);
  }

  if (v4 == v3)
  {
    v47 = (this + 40);
    if (*(this + 63) < 0)
    {
      v47 = *v47;
    }

    caulk::make_string(&v59, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v2, v47, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v59, off_1E8337C60);
  }

  if (v8 == v7)
  {
    v48 = v9 >> 5;
    v49 = (this + 40);
    if (*(this + 63) < 0)
    {
      v49 = *v49;
    }

    caulk::make_string(&v59, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v49, v48, 0);
    AudioDSPGraph::ThrowException(1919837985, &v59, off_1E8337C78);
  }

  v10 = *(*(v3 + 16) + 120);
  v11 = *(*(v7 + 16) + 120);
  if (v10[7] != *(v11 + 28))
  {
    v50 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v51 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string(&v57, "The input and output ports must have the same number of channels, but have %u and %u.", v52, v50, *(*(*(v51 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v57, off_1E8337C30);
  }

  if (v10[2] != 1718773105 || *(v11 + 8) != 1718773105)
  {
    if (*(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 8) == 1718773105)
    {
      v44 = "freq";
    }

    else
    {
      v44 = "time";
    }

    if (*(*(*(AudioDSPGraph::Box::out(this, 0) + 16) + 120) + 8) == 1718773105)
    {
      v46 = "freq";
    }

    else
    {
      v46 = "time";
    }

    caulk::make_string(&v56, "The input and output must both be frequency-domain, but are '%s' and '%s'", v45, v44, v46);
    AudioDSPGraph::ThrowException(1718449215, &v56, off_1E8337C48);
  }

  v12 = v10[10];
  *(this + 191) = v12;
  v13 = *(this + 192);
  v53 = 1065353216;
  std::vector<float>::vector[abi:ne200100](&__p, v12, &v53);
  v14 = *(this + 101);
  v15 = *(this + 100);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3);
  v17 = v13 - v16;
  if (v13 <= v16)
  {
    if (v13 >= v16)
    {
      goto LABEL_27;
    }

    v22 = (v15 + 24 * v13);
    if (v14 != v22)
    {
      v23 = *(this + 101);
      do
      {
        v25 = *(v23 - 3);
        v23 -= 3;
        v24 = v25;
        if (v25)
        {
          *(v14 - 2) = v24;
          operator delete(v24);
        }

        v14 = v23;
      }

      while (v23 != v22);
    }
  }

  else
  {
    v18 = *(this + 102);
    if (0xAAAAAAAAAAAAAAABLL * ((v18 - v14) >> 3) < v17)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v15) >> 3);
      v20 = 0x5555555555555556 * ((v18 - v15) >> 3);
      if (v20 <= v13)
      {
        v20 = v13;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      v60 = this + 800;
      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v22 = &v14[3 * v17];
    v26 = 24 * v13 - 8 * ((v14 - v15) >> 3);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v14, __p, v55, (v55 - __p) >> 2);
      v14 += 3;
      v26 -= 24;
    }

    while (v26);
  }

  *(this + 101) = v22;
LABEL_27:
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  v27 = *(this + 191);
  v28 = *(this + 98);
  v29 = *(this + 97);
  v30 = (v28 - v29) >> 2;
  if (v27 <= v30)
  {
    if (v27 >= v30)
    {
      return;
    }

    v36 = v29 + 4 * v27;
  }

  else
  {
    v31 = v27 - v30;
    v32 = *(this + 99);
    if (v31 > (v32 - v28) >> 2)
    {
      v33 = v32 - v29;
      v34 = (v32 - v29) >> 1;
      if (v34 <= v27)
      {
        v34 = *(this + 191);
      }

      if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v35 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v34;
      }

      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v35);
    }

    v37 = (v31 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v38 = vdupq_n_s64(v37);
    v39 = v37 - ((v31 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v40 = (v28 + 8);
    v41 = -4;
    do
    {
      v42 = vdupq_n_s64(v41 + 4);
      v43 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(v42, xmmword_1C925F100)));
      if (vuzp1_s16(v43, *v38.i8).u8[0])
      {
        *(v40 - 2) = 1065353216;
      }

      if (vuzp1_s16(v43, *&v38).i8[2])
      {
        *(v40 - 1) = 1065353216;
      }

      if (vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, vorrq_s8(v42, xmmword_1C925F0F0)))).i32[1])
      {
        *v40 = 1065353216;
        v40[1] = 1065353216;
      }

      v41 += 4;
      v40 += 4;
    }

    while (v39 != v41);
    v36 = v28 + 4 * v31;
  }

  *(this + 98) = v36;
}

void sub_1C925A44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C925A53C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AudioDSPGraph::Boxes::VectorGainBox::process(AudioDSPGraph::Boxes::VectorGainBox *this, const char *a2)
{
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v27 = (this + 40);
    if (*(this + 63) < 0)
    {
      v27 = *v27;
    }

    caulk::make_string(&v35, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v27, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v35, off_1E8337C60);
  }

  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v28 = (this + 40);
    if (*(this + 63) < 0)
    {
      v28 = *v28;
    }

    caulk::make_string(&v35, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v28, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v35, off_1E8337C78);
  }

  v5 = a2;
  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v4 + 16) + 56) + 80);
  v8 = *v6;
  __A = 1.0;
  vDSP_vfill(&__A, *(this + 97), 1, (*(this + 98) - *(this + 97)) >> 2);
  v10 = *(this + 100);
  v11 = *(this + 101);
  while (v10 != v11)
  {
    v12 = *v10;
    v10 += 3;
    vDSP_vmin(*(this + 97), 1, v12, 1, *(this + 97), 1, (*(this + 98) - *(this + 97)) >> 2);
  }

  if (v8)
  {
    v13 = (v7 + 16);
    v14 = (v6 + 4);
    do
    {
      v15 = *v14;
      v14 += 2;
      v16 = *v13;
      v35.__r_.__value_.__r.__words[0] = v15;
      v35.__r_.__value_.__l.__size_ = v15 + 4 * v5;
      __C.realp = v16;
      __C.imagp = &v16[v5];
      v17 = *v35.__r_.__value_.__l.__size_;
      vDSP_zrvmul(&v35, 1, *(this + 97), 1, &__C, 1, (*(this + 98) - *(this + 97)) >> 2);
      *__C.imagp = v17;
      *(v13 - 1) = 8 * v5;
      v13 += 2;
      --v8;
    }

    while (v8);
  }

  v18 = *(this + 9);
  if (*(this + 10) == v18)
  {
    v29 = (this + 40);
    if (*(this + 63) < 0)
    {
      v29 = *v29;
    }

    caulk::make_string(&v35, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v9, v29, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v35, off_1E8337C60);
  }

  v19 = *(this + 12);
  if (*(this + 13) == v19)
  {
    v30 = (this + 40);
    if (*(this + 63) < 0)
    {
      v30 = *v30;
    }

    caulk::make_string(&v35, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v9, v30, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v35, off_1E8337C78);
  }

  v20 = *(*(v18 + 16) + 56);
  v21 = *(*(v19 + 16) + 56);
  v22 = *(v20 + 8);
  v23 = *(v20 + 24);
  v24 = *(v20 + 40);
  *(v21 + 56) = *(v20 + 56);
  *(v21 + 40) = v24;
  *(v21 + 24) = v23;
  *(v21 + 8) = v22;
  v25 = *(this + 9);
  if (*(this + 10) == v25)
  {
    v31 = (this + 40);
    if (*(this + 63) < 0)
    {
      v31 = *v31;
    }

    caulk::make_string(&v35, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v9, v31, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v35, off_1E8337C60);
  }

  v26 = *(this + 12);
  if (*(this + 13) == v26)
  {
    v32 = (this + 40);
    if (*(this + 63) < 0)
    {
      v32 = *v32;
    }

    caulk::make_string(&v35, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v9, v32, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v35, off_1E8337C78);
  }

  *(*(*(v26 + 16) + 56) + 72) = *(*(*(v25 + 16) + 56) + 72);
}

void sub_1C925A934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::VectorGainBox::setProperty(AudioDSPGraph::Boxes::VectorGainBox *this, int a2, int a3, unsigned int a4, unsigned int a5, int *a6)
{
  if (!(a4 | a3 | (a2 - 100)))
  {
    v8 = *(this + 2);
    if (v8 && (*(v8 + 922) & 1) != 0)
    {
      return 4294956447;
    }

    if (a5 != 4)
    {
      return 4294956445;
    }

    v9 = 0;
    *(this + 192) = *a6;
    return v9;
  }

  if (a2 != 100 && !(a4 | a3) && (a2 - 100) <= *(this + 192))
  {
    v10 = a5 >> 2;
    if (v10 == *(this + 191))
    {
      v11 = (*(this + 100) + 24 * (a2 - 101));
      v12 = 4 * (a5 >> 2);
      v13 = v11[2];
      v14 = *v11;
      if (v10 > (v13 - *v11) >> 2)
      {
        if (v14)
        {
          v11[1] = v14;
          operator delete(v14);
          v13 = 0;
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
        }

        v15 = v13 >> 1;
        if (v13 >> 1 <= v10)
        {
          v15 = v10;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        std::vector<unsigned int>::__vallocate[abi:ne200100](v11, v16);
      }

      v17 = v11[1];
      v18 = v17 - v14;
      if (v10 <= (v17 - v14) >> 2)
      {
        if (a5 >= 4)
        {
          memmove(*v11, a6, 4 * (a5 >> 2));
        }

        v9 = 0;
        v19 = &v14[v12];
      }

      else
      {
        if (v17 != v14)
        {
          memmove(*v11, a6, v17 - v14);
        }

        v20 = v11[1];
        if (v18 != v12)
        {
          v21 = (a6 + v18);
          v22 = (&v14[v12] - v17);
          v20 = v11[1];
          do
          {
            v23 = *v21++;
            *v20 = v23;
            v20 += 4;
            v22 -= 4;
          }

          while (v22);
        }

        v9 = 0;
        v19 = v20;
      }

      v11[1] = v19;
      return v9;
    }

    return 4294956445;
  }

  return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
}

void AudioDSPGraph::Boxes::VectorGainBox::getProperty(AudioDSPGraph::Boxes::VectorGainBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, __n128 *__dst, __n128 a7)
{
  if (a4 | a3 | (a2 - 100))
  {
    if (a2 == 100 || a4 | a3 || (a2 - 100) > *(this + 192))
    {

      AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, __dst, a7);
    }

    else if (*a5 == 4 * *(this + 191))
    {
      if (__dst)
      {
        v8 = *(this + 100) + 24 * (a2 - 101);
        v9 = *v8;
        v10 = *(v8 + 8);
        if (v10 != v9)
        {
          memmove(__dst, v9, v10 - v9);
        }
      }
    }
  }

  else if (*a5 == 4 && __dst)
  {
    __dst->n128_u32[0] = *(this + 192);
  }
}

uint64_t AudioDSPGraph::Boxes::VectorGainBox::getPropertyInfo(AudioDSPGraph::Boxes::VectorGainBox *this, int a2, int a3, int a4)
{
  if (a4 | a3 | (a2 - 100))
  {
    if (a2 == 100 || a4 | a3 || (a2 - 100) > *(this + 192))
    {
      return AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
    }

    else
    {
      return (4 * *(this + 191)) | 0x100000000;
    }
  }

  else
  {
    result = 0x100000004;
    v6 = *(this + 2);
    if (v6 && *(v6 + 922))
    {
      return 4;
    }
  }

  return result;
}

double AudioDSPGraph::Boxes::VectorGainBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.90940534e262;
  *a1 = xmmword_1C925F250;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::VectorGainBox::~VectorGainBox(AudioDSPGraph::Boxes::VectorGainBox *this)
{
  *this = &unk_1F48D3F28;
  v3 = (this + 800);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 97);
  if (v2)
  {
    *(this + 98) = v2;
    operator delete(v2);
  }

  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D3F28;
  v3 = (this + 800);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 97);
  if (v2)
  {
    *(this + 98) = v2;
    operator delete(v2);
  }

  AudioDSPGraph::Box::~Box(this);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double AudioDSPGraph::Boxes::VolumeCurveBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.29504994e171;
  *a1 = xmmword_1C925F360;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::VolumeCurveBox::getParameterInfo(AudioDSPGraph::Boxes::VolumeCurveBox *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = 0;
    v6 = -10866;
LABEL_6:
    *a4 = v6;
    goto LABEL_7;
  }

  AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(this);
  if (0x4EC4EC4EC4EC4EC5 * ((qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3) <= a3)
  {
    v5 = 0;
    v6 = -10878;
    goto LABEL_6;
  }

  AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(v8);
  v9 = AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos + 104 * a3;
  v10 = *(v9 + 80);
  *(a4 + 64) = *(v9 + 64);
  *(a4 + 80) = v10;
  *(a4 + 96) = *(v9 + 96);
  v11 = *(v9 + 16);
  *a4 = *v9;
  *(a4 + 16) = v11;
  v12 = *(v9 + 48);
  *(a4 + 32) = *(v9 + 32);
  *(a4 + 48) = v12;
  v5 = 1;
LABEL_7:
  *(a4 + 104) = v5;
}

void sub_1C925AF30(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = -1;
  *(v1 + 104) = 0;
  __cxa_end_catch();
  JUMPOUT(0x1C925AF24);
}

void AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(AudioDSPGraph::Boxes::VolumeCurveBox *this)
{
  {
    if (v1)
    {
      AudioDSPGraph::Boxes::VolumeCurveBox::ParameterInfos::ParameterInfos(v1);
    }
  }
}

void AudioDSPGraph::Boxes::VolumeCurveBox::ParameterInfos::ParameterInfos(AudioDSPGraph::Boxes::VolumeCurveBox::ParameterInfos *this)
{
  v8 = *MEMORY[0x1E69E9840];
  qword_1EC3955C8 = 0;
  qword_1EC3955D0 = 0;
  AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos = 0;
  v4 = 0;
  v6 = 0u;
  v7 = 3355443200;
  LODWORD(v6) = 1;
  DWORD2(v6) = 1097859072;
  strcpy(v1, "Transfer function");
  *&v1[18] = unk_1C92627E3;
  *&v1[20] = unk_1C92627E5;
  *&v1[24] = unk_1C92627E9;
  v2 = xmmword_1C92627F1;
  v3 = 0u;
  LODWORD(v3) = 0;
  v5 = @"Transfer function";
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v1);
  v4 = 0;
  LODWORD(v6) = 13;
  *(&v6 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  HIDWORD(v6) = -1032847360;
  v7 = 3355443200;
  *v1 = *"Minimum volume";
  *&v1[16] = unk_1C9262816;
  v2 = xmmword_1C9262826;
  v3 = 0u;
  LODWORD(v3) = 0;
  v5 = @"Minimum volume";
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v1);
  v4 = 0;
  HIDWORD(v6) = 0;
  LODWORD(v6) = 13;
  *(&v6 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  *v1 = *"Maximum volume";
  *&v1[16] = unk_1C926284B;
  v2 = xmmword_1C926285B;
  v3 = 0u;
  LODWORD(v3) = 0;
  v5 = @"Maximum volume";
  v7 = 3355443200;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v1);
  v4 = 0;
  *&v6 = 0;
  *(&v6 + 1) = 0x3E8000003F800000;
  strcpy(v1, "Raw slider value");
  v1[17] = 0;
  *&v1[18] = 0;
  *&v1[20] = 0;
  *&v1[24] = 0;
  v2 = xmmword_1C9262890;
  v3 = 0u;
  LODWORD(v3) = 0;
  v5 = @"Raw slider value";
  v7 = 3355443200;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v1);
  v4 = 0;
  *&v6 = 0;
  v7 = 1207959552;
  *(&v6 + 1) = 0x3E8000003F800000;
  strcpy(v1, "Mapped slider value");
  *&v1[20] = unk_1C92628B9;
  *&v1[24] = unk_1C92628BD;
  v2 = xmmword_1C92628C5;
  v3 = 0u;
  LODWORD(v3) = 0;
  v5 = @"Mapped slider value";
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v1);
  v4 = 0;
  LODWORD(v6) = 13;
  *(&v6 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  HIDWORD(v6) = -1036779520;
  v7 = 1207959552;
  *v1 = *"Decibel gain";
  *&v1[16] = unk_1C92628EA;
  v2 = xmmword_1C92628FA;
  v3 = 0u;
  LODWORD(v3) = 0;
  v5 = @"Decibel gain";
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](v1);
}

void sub_1C925B210(_Unwind_Exception *exception_object)
{
  if (AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos)
  {
    qword_1EC3955C8 = AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    operator delete(AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](__int128 *a1)
{
  v1 = qword_1EC3955C8;
  if (qword_1EC3955C8 >= qword_1EC3955D0)
  {
    v8 = AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    v9 = qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x276276276276276)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    if (0x9D89D89D89D89D8ALL * ((qword_1EC3955D0 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3) > v11)
    {
      v11 = 0x9D89D89D89D89D8ALL * ((qword_1EC3955D0 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((qword_1EC3955D0 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v12 = 0x276276276276276;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0x276276276276276)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = a1[5];
    v14 = 8 * ((qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    *(v14 + 64) = a1[4];
    *(v14 + 80) = v13;
    *(v14 + 96) = *(a1 + 12);
    v15 = a1[1];
    *v14 = *a1;
    *(v14 + 16) = v15;
    v16 = a1[3];
    *(v14 + 32) = a1[2];
    *(v14 + 48) = v16;
    v7 = 104 * v10 + 104;
    v17 = v14 - v9;
    memcpy((v14 - v9), v8, v9);
    AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos = v17;
    qword_1EC3955C8 = v7;
    qword_1EC3955D0 = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v2 = *a1;
    v3 = a1[2];
    *(qword_1EC3955C8 + 16) = a1[1];
    *(v1 + 32) = v3;
    *v1 = v2;
    v4 = a1[3];
    v5 = a1[4];
    v6 = a1[5];
    *(v1 + 96) = *(a1 + 12);
    *(v1 + 64) = v5;
    *(v1 + 80) = v6;
    *(v1 + 48) = v4;
    v7 = v1 + 104;
  }

  qword_1EC3955C8 = v7;
}

AudioDSPGraph::Boxes::VolumeCurveBox *AudioDSPGraph::Boxes::VolumeCurveBox::getParameterList@<X0>(AudioDSPGraph::Boxes::VolumeCurveBox *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(this);
    this = std::vector<unsigned int>::vector[abi:ne200100](a3, 0x4EC4EC4EC4EC4EC5 * ((qword_1EC3955C8 - AudioDSPGraph::Boxes::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3));
    v5 = *a3;
    v4 = a3[1];
    if (*a3 != v4)
    {
      v6 = 0;
      v7 = (v4 - v5 - 4) >> 2;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v10 = (v5 + 8);
      do
      {
        v11 = vdupq_n_s64(v6);
        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_1C925F100)));
        if (vuzp1_s16(v12, *v8.i8).u8[0])
        {
          *(v10 - 2) = v6;
        }

        if (vuzp1_s16(v12, *&v8).i8[2])
        {
          *(v10 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_1C925F0F0)))).i32[1])
        {
          *v10 = v6 + 2;
          v10[1] = v6 + 3;
        }

        v6 += 4;
        v10 += 4;
      }

      while (v9 != v6);
    }
  }

  return this;
}

void AudioDSPGraph::Boxes::VolumeCurveBox::getParameter(AudioDSPGraph::Boxes::VolumeCurveBox *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    LODWORD(v6) = -10866;
    v5 = off_1E8337CD8;
    goto LABEL_14;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v4 = *(this + 196);
        goto LABEL_17;
      case 4:
        v4 = *(this + 197);
        goto LABEL_17;
      case 5:
        v4 = *(this + 198);
        goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!a2)
  {
    v4 = *(this + 191);
    goto LABEL_17;
  }

  if (a2 == 1)
  {
    v4 = *(this + 194);
    goto LABEL_17;
  }

  if (a2 != 2)
  {
LABEL_13:
    LODWORD(v6) = -10878;
    v5 = off_1E8334BA8;
LABEL_14:
    *(&v6 + 1) = v5;
    v7 = 0;
    *a4 = v6;
    *(a4 + 16) = 0;
    v8 = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v6);
    return;
  }

  v4 = *(this + 195);
LABEL_17:
  *a4 = v4;
  *(a4 + 32) = 1;
}

void AudioDSPGraph::Boxes::VolumeCurveBox::setParameter(AudioDSPGraph::Boxes::VolumeCurveBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, uint64_t a5@<X8>)
{
  if (a4)
  {
    LODWORD(v24) = -10866;
    v15 = off_1E8337C90;
    goto LABEL_19;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v19 = *(this + 194);
      if (v19 <= a2)
      {
        *(this + 195) = a2;
        v20 = *(this + 196);
        if (v20 < 0.0)
        {
          v20 = 0.0;
        }

        if (v20 > 1.0)
        {
          v20 = 1.0;
        }

        v21 = powf(v20, *(this + 192) / *(this + 193));
        *(this + 197) = v21;
        v11 = v19 + (v21 * (a2 - v19));
        goto LABEL_34;
      }

      LODWORD(v24) = -66743;
      *(&v24 + 1) = off_1E8337CC0;
      v25 = 0;
      v26 = 0;
      v22 = "maximum volume must be greater than minimum volume";
LABEL_38:
      AudioDSPGraph::Error::setDescription<>(&v24, v22);
      *a5 = v24;
      v23 = v25;
      v25 = 0;
      *(a5 + 16) = v23;
      LODWORD(v23) = v26;
      v26 = 0;
      *(a5 + 24) = v23;
      goto LABEL_20;
    }

    if (a3 != 3)
    {
      goto LABEL_18;
    }

    v12 = 0.0;
    if (a2 >= 0.0)
    {
      v12 = a2;
    }

    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    *(this + 196) = v12;
    v13 = *(this + 192);
    v14 = *(this + 193);
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = *(this + 195);
        if (v8 >= a2)
        {
          *(this + 194) = a2;
          v9 = *(this + 196);
          if (v9 < 0.0)
          {
            v9 = 0.0;
          }

          if (v9 > 1.0)
          {
            v9 = 1.0;
          }

          v10 = powf(v9, *(this + 192) / *(this + 193));
          *(this + 197) = v10;
          v11 = a2 + (v10 * (v8 - a2));
          goto LABEL_34;
        }

        LODWORD(v24) = -66743;
        *(&v24 + 1) = off_1E8337CA8;
        v25 = 0;
        v26 = 0;
        v22 = "minimum volume must be less than maximum volume";
        goto LABEL_38;
      }

LABEL_18:
      LODWORD(v24) = -10878;
      v15 = off_1E8334BC0;
LABEL_19:
      *(&v24 + 1) = v15;
      v25 = 0;
      *a5 = v24;
      *(a5 + 16) = 0;
      v26 = 0;
      *(a5 + 24) = 0;
LABEL_20:
      *(a5 + 32) = 0;
      AudioDSPGraph::Error::~Error(&v24);
      return;
    }

    v16 = a2;
    *(this + 191) = a2;
    v12 = 1.0;
    v13 = 2.0;
    v14 = 1.0;
    if (v16 <= 0xF)
    {
      v13 = flt_1C9262910[v16];
      v14 = flt_1C9262950[v16];
    }

    *(this + 192) = v13;
    *(this + 193) = v14;
    v17 = *(this + 196);
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    if (v17 <= 1.0)
    {
      v12 = v17;
    }
  }

  v18 = powf(v12, v13 / v14);
  *(this + 197) = v18;
  v11 = *(this + 194) + (v18 * (*(this + 195) - *(this + 194)));
LABEL_34:
  *(this + 198) = v11;
  *(a5 + 32) = 1;
}

void AudioDSPGraph::Boxes::VolumeCurveBox::~VolumeCurveBox(AudioDSPGraph::Boxes::VolumeCurveBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Wire::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 4)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    AudioDSPGraph::printi(a2, v4 + 4, "block size %u\n", *(*(v6 + 120) + 40));
  }

  return result;
}

void sub_1C925BA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Wire::~Wire(AudioDSPGraph::Wire *this)
{
  *this = &unk_1F48D4428;
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 16);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D4428;
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 16);
}

uint64_t AudioDSPGraph::Wire::setSource(uint64_t this, AudioDSPGraph::OutputPort *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v14 = this;
    v6 = *(v2 + 1);
    v7 = v6 + 40;
    if (v6[63] < 0)
    {
      v7 = *v7;
    }

    v8 = (*(*v6 + 16))(v6, a2);
    caulk::make_string(&v17, "wire already has a source: %s %s output %u", v9, v7, v8, *(*(v14 + 8) + 24));
    AudioDSPGraph::ThrowException(1633903905, &v17, off_1E8337CF0);
  }

  v4 = *(a2 + 2);
  if (v4)
  {
    v5 = v4 == this;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v10 = *(a2 + 1);
    v11 = v10 + 40;
    if (v10[63] < 0)
    {
      v11 = *v11;
    }

    v12 = (*(*v10 + 16))(v10);
    caulk::make_string(&v16, "output port already has a wire: %s %s output %u", v13, v11, v12, *(a2 + 6));
    AudioDSPGraph::ThrowException(1633903905, &v16, off_1E8337D08);
  }

  *(this + 8) = a2;
  *(a2 + 2) = this;
  return this;
}

void sub_1C925BC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

AudioDSPGraph::Wire *AudioDSPGraph::Wire::Wire(AudioDSPGraph::Wire *this, AudioDSPGraph::OutputPort *a2)
{
  *this = &unk_1F48D4428;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = 1065353216;
  *(this + 7) = 0;
  *(this + 64) = 0;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 72) = 0u;
  *(this + 28) = 1;
  *(this + 15) = this + 72;
  if (a2)
  {
    AudioDSPGraph::Wire::setSource(this, a2);
  }

  return this;
}

void std::__hash_table<AudioDSPGraph::InputPort *,std::hash<AudioDSPGraph::InputPort *>,std::equal_to<AudioDSPGraph::InputPort *>,std::allocator<AudioDSPGraph::InputPort *>>::__emplace_unique_key_args<AudioDSPGraph::InputPort *,AudioDSPGraph::InputPort * const&>(float *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

void AudioDSPGraph::Wire::addAll(AudioDSPGraph::Wire *this, AudioDSPGraph::Wire *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *(v2 + 2);
      v5 = v4;
      std::__hash_table<AudioDSPGraph::InputPort *,std::hash<AudioDSPGraph::InputPort *>,std::equal_to<AudioDSPGraph::InputPort *>,std::allocator<AudioDSPGraph::InputPort *>>::__emplace_unique_key_args<AudioDSPGraph::InputPort *,AudioDSPGraph::InputPort * const&>(this + 4, v4, &v5);
      *(v4 + 16) = this;
      v2 = *v2;
    }

    while (v2);
  }
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x1EEE63B28](this, a2);
}

{
  return MEMORY[0x1EEE63B40](this, a2);
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x1EEE64438](this, a2, a3, a4);
}

{
  return MEMORY[0x1EEE64450](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x1EEE64440]();
}

{
  return MEMORY[0x1EEE64448]();
}

{
  return MEMORY[0x1EEE64458]();
}

{
  return MEMORY[0x1EEE64460]();
}

{
  return MEMORY[0x1EEE64470]();
}

{
  return MEMORY[0x1EEE64478]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}
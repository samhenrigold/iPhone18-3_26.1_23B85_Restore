void MT3BSegmentProducer::MT3BSegmentProducer(uint64_t a1, uint64_t a2, MT3BSegmentProducer *this, __int16 *a4)
{
  *a1 = &unk_2868F4518;
  *(a1 + 8) = a2;
  *(a1 + 16) = this;
  *(a1 + 24) = a4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 28927;
  *(a1 + 98) = 0;
  *(a1 + 104) = 0;
  *(a1 + 282) = 4096;
  v5 = 1374389535 * (a4[6] << 13);
  *(a1 + 280) = (v5 >> 37) + (v5 >> 63);
  v6 = &MT3BSegmentProducer::sHPNoise;
  if (a4[30] == 1)
  {
    v6 = MT3BSegmentProducer::sNoiseWave;
  }

  if (a4[30])
  {
    v7 = v6;
  }

  else
  {
    v7 = MT3BSegmentProducer::sBandNoise;
  }

  *(a1 + 296) = v7;
  *(a1 + 116) = 0;
  *(a1 + 132) = 0;
  *(a1 + 114) = 0;
  v8 = a4[8];
  if (v8 >= 801)
  {
    v8 = MTBEParam::HzToPitch(this, a4[8]);
    this = *(a1 + 16);
    a4 = *(a1 + 24);
  }

  v9 = MTBEParam::HzToPitch(this, a4[10]);
  v10 = MTBEParam::HzToPitch(*(a1 + 16), *(*(a1 + 24) + 24));
  v11 = MTBEParam::HzToPitch(*(a1 + 16), 0x125Cu);
  v12 = MTBEParam::HzToPitch(*(a1 + 16), *(*(a1 + 24) + 32));
  *(a1 + 276) = v12;
  v13 = *(a1 + 24);
  v14 = v13[9];
  if (v14 >= 1225)
  {
    v14 = 1225;
  }

  if (v14 <= 50)
  {
    v15 = 50;
  }

  else
  {
    v15 = v14;
  }

  if (v8 <= 256)
  {
    v16 = 256;
  }

  else
  {
    v16 = v8;
  }

  v17 = (v15 - 50) / 5u;
  v18 = sCcoeffTbl[v17];
  *(a1 + 220) = v18;
  v19 = sBcoeffTbl[v17] * sCosTbl[v16 - 256];
  *(a1 + 218) = v19 >> 12;
  *(a1 + 216) = 0x2000 - (v18 + (v19 >> 12));
  v20 = v13[11];
  if (v20 >= 1225)
  {
    v20 = 1225;
  }

  if (v20 <= 50)
  {
    LOWORD(v20) = 50;
  }

  if (v9 <= 256)
  {
    v21 = 256;
  }

  else
  {
    v21 = v9;
  }

  v22 = (v20 - 50) / 5u;
  v23 = sCcoeffTbl[v22];
  *(a1 + 238) = v23;
  v24 = sBcoeffTbl[v22] * sCosTbl[v21 - 256];
  *(a1 + 236) = v24 >> 12;
  *(a1 + 234) = (3200 * (0x2000 - (v23 + (v24 >> 12)))) >> 13;
  v25 = v13[13];
  if (v25 >= 1225)
  {
    v25 = 1225;
  }

  if (v25 <= 50)
  {
    LOWORD(v25) = 50;
  }

  if (v10 <= 256)
  {
    v26 = 256;
  }

  else
  {
    v26 = v10;
  }

  v27 = (v25 - 50) / 5u;
  v28 = sCcoeffTbl[v27];
  *(a1 + 226) = v28;
  v29 = sBcoeffTbl[v27] * sCosTbl[v26 - 256];
  *(a1 + 224) = v29 >> 12;
  *(a1 + 222) = (3200 * (0x2000 - (v28 + (v29 >> 12)))) >> 13;
  v30 = v13[15];
  if (v30 >= 1225)
  {
    v30 = 1225;
  }

  if (v30 <= 50)
  {
    LOWORD(v30) = 50;
  }

  if (v11 <= 256)
  {
    v31 = 256;
  }

  else
  {
    v31 = v11;
  }

  v32 = (v30 - 50) / 5u;
  v33 = sCcoeffTbl[v32];
  *(a1 + 232) = v33;
  v34 = sBcoeffTbl[v32] * sCosTbl[v31 - 256];
  *(a1 + 230) = v34 >> 12;
  *(a1 + 228) = (3200 * (0x2000 - (v33 + (v34 >> 12)))) >> 13;
  if (v13[18] >= 1225)
  {
    v35 = 1225;
  }

  else
  {
    v35 = v13[18];
  }

  if (v35 <= 50)
  {
    LOWORD(v35) = 50;
  }

  v36 = (v35 - 50) / 5u;
  v37 = sCcoeffTbl[v36];
  if (v12 <= 256)
  {
    v38 = 256;
  }

  else
  {
    v38 = v12;
  }

  *(a1 + 250) = v37;
  v39 = sBcoeffTbl[v36] * sCosTbl[v38 - 256];
  *(a1 + 248) = v39 >> 12;
  *(a1 + 246) = 0x2000 - (v37 + (v39 >> 12));
  *(a1 + 268) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 266) = (3200 * *(a1 + 280)) >> 13;
  *(a1 + 140) = 0;
  *(a1 + 288) = 0;
  v40 = 1374389535 * (v13[156] << 13);
  *(a1 + 278) = (v40 >> 37) + (v40 >> 63);
  v41 = v13[155];
  *(a1 + 284) = v41;
  if (v41 > 100)
  {
    v41 = 100;
LABEL_49:
    *(a1 + 284) = v41;
    goto LABEL_50;
  }

  if (v41 <= 9)
  {
    v41 = 10;
    goto LABEL_49;
  }

LABEL_50:
  v42 = (v41 << 16) / 100;
  *(a1 + 284) = v42;
  *(a1 + 304) = (2318 * v42) >> 16;
  *(a1 + 306) = (2909 * v42) >> 16;
  *(a1 + 308) = (3723 * v42) >> 16;
  v42 >>= 4;
  *(a1 + 310) = v42;
  *(a1 + 274) = v42;
  *(a1 + 272) = 0;
  bzero((a1 + 320), 0x2000uLL);
}

void MT3BSegmentProducer::CalcPoleCoefficients(MT3BSegmentProducer *this, int a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  if (a3 >= 1225)
  {
    v6 = 1225;
  }

  else
  {
    v6 = a3;
  }

  if (v6 <= 50)
  {
    LOWORD(v6) = 50;
  }

  if (a2 <= 256)
  {
    v7 = 256;
  }

  else
  {
    v7 = a2;
  }

  v8 = (v6 - 50) / 5u;
  *a6 = sCcoeffTbl[v8];
  v9 = sBcoeffTbl[v8] * sCosTbl[v7 - 256];
  *a5 = v9 >> 12;
  *a4 = 0x2000 - (*a6 + (v9 >> 12));
}

void MT3BSegmentProducer::~MT3BSegmentProducer(MT3BSegmentProducer *this)
{
  *this = &unk_2868F4518;
  v2 = *(this + 11);
  if (v2)
  {
    if ((*v2)-- == 1)
    {
      MEMORY[0x259C6DA90]();
    }
  }

  MTMBProducerComponent::~MTMBProducerComponent(this);
}

{
  MT3BSegmentProducer::~MT3BSegmentProducer(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MT3BSegmentProducer::NextSegment(MT3BSegmentProducer *this, MTMBSegment *a2)
{
  v3 = *(this + 96);
  if (v3 > 0)
  {
LABEL_2:
    v4 = *(this + 16);
    v49 = *(this + 34);
    v55 = *(this + 18);
    v57 = *(this + 19);
    v5 = *(this + 20);
    v6 = *(this + 21);
    v7 = *(this + 22);
    v8 = *(this + 23);
    v59 = *(this + 24);
    v60 = *(this + 25);
    v64 = *(this + 26);
    v65 = *(this + 27);
    v63 = *(this + 28);
    v53 = *(this + 29);
    v9 = *(this + 30);
    v10 = *(this + 31);
    v62 = *(this + 32);
    v50 = *(this + 10);
    Frame = MTFEFrameFiller::FillNextFrame(*(this + 1), this + 32);
    *(this + 96) = Frame;
    if (!Frame || *(this + 34))
    {
      *(this + 141) |= *(this + 104) << 7;
      *(this + 104) = *(*(this + 1) + 80);
    }

    if (v49)
    {
      v12 = *(this + 11);
      if (v12)
      {
        if ((*v12)-- == 1)
        {
          MEMORY[0x259C6DA90]();
        }
      }

      operator new();
    }

    if (!*(this + 53) && !*(this + 55))
    {
      *(this + 29) = 0;
      *(this + 30) = 0;
      *(this + 148) = 0;
      *(this + 140) = 0;
      *(this + 39) = 0;
      *(this + 180) = 0;
      *(this + 47) = 0;
    }

    v15 = *(this + 3);
    v16 = v15[23] + v5;
    v17 = v16;
    *(this + 96) = v16;
    v18 = v15[24] + v6;
    v19 = v18;
    *(this + 97) = v18;
    v20 = v15[25] + v7;
    v21 = v20;
    *(this + 98) = v20;
    v22 = v9;
    if (v9 >= 1225)
    {
      v22 = 1225;
    }

    if (v22 <= 50)
    {
      LOWORD(v22) = 50;
    }

    if (v17 <= 256)
    {
      v17 = 256;
    }

    v23 = (v22 - 50) / 5u;
    v24 = sCcoeffTbl[v23];
    *(this + 101) = v24;
    v25 = sBcoeffTbl[v23] * sCosTbl[v17 - 256];
    *(this + 100) = v25 >> 12;
    *(this + 99) = 0x2000 - (v24 + (v25 >> 12));
    v26 = v10;
    if (v10 >= 1225)
    {
      v26 = 1225;
    }

    if (v26 <= 50)
    {
      LOWORD(v26) = 50;
    }

    if (v19 <= 256)
    {
      v27 = 256;
    }

    else
    {
      v27 = v19;
    }

    v28 = (v26 - 50) / 5u;
    v29 = sCcoeffTbl[v28];
    *(this + 104) = sCcoeffTbl[v28];
    v30 = (sBcoeffTbl[v28] * sCosTbl[v27 - 256]) >> 12;
    *(this + 103) = v30;
    *(this + 102) = 0x2000 - (v29 + v30);
    v31 = v62;
    if (v62 >= 1225)
    {
      v31 = 1225;
    }

    if (v31 <= 50)
    {
      LOWORD(v31) = 50;
    }

    v32 = (v31 - 50) / 5u;
    v33 = sCcoeffTbl[v32];
    if (v21 <= 256)
    {
      v21 = 256;
    }

    *(this + 107) = v33;
    v34 = (sBcoeffTbl[v32] * sCosTbl[v21 - 256]) >> 12;
    *(this + 106) = v34;
    *(this + 105) = 0x2000 - (v33 + v34);
    v35 = v15[148] + v63;
    v36 = v15[18];
    if (v36 >= 1225)
    {
      v36 = 1225;
    }

    v37 = (((1717986919 * (v36 - 50)) >> 33) + ((1717986919 * (v36 - 50)) >> 63));
    v38 = sCcoeffTbl[v37];
    *(this + 122) = -v38;
    LODWORD(v37) = sBcoeffTbl[v37] * sCosTbl[v35 - 256];
    *(this + 121) = -(v37 >> 12);
    *(this + 120) = 0x2000 - (v38 + (v37 >> 12));
    *(this + 54) = v55 << 8;
    v39 = v57 << 8;
    *(this + 55) = v57 << 8;
    *(this + 56) = v53 << 8;
    if (v8)
    {
      v40 = v8 << 8;
      v58 = ((0x2000 - (v29 + v30)) * (v8 << 8)) >> 13;
    }

    else
    {
      v40 = 0;
      v58 = 0;
      *(this + 42) = 0;
    }

    v41 = a2;
    *(this + 126) = v40;
    v42 = v59;
    if (v59)
    {
      v42 = v59 << 8;
      v56 = ((0x2000 - (v33 + v34)) * (v59 << 8)) >> 13;
    }

    else
    {
      v56 = 0;
      *(this + 43) = 0;
    }

    *(this + 127) = v42;
    if (!v60 || v39)
    {
      v43 = 0;
      v54 = 0;
      *(this + 44) = 0;
    }

    else
    {
      v43 = v60 << 8;
      v54 = (*(this + 117) * (v60 << 8)) >> 13;
    }

    *(this + 128) = v43;
    if (v64)
    {
      v44 = v64 << 8;
      v52 = (*(this + 111) * (v64 << 8)) >> 13;
    }

    else
    {
      v44 = 0;
      v52 = 0;
      *(this + 40) = 0;
    }

    v45 = v4;
    *(this + 129) = v44;
    v46 = v65;
    if (v65)
    {
      v46 = v65 << 8;
      v51 = (*(this + 114) * (v65 << 8)) >> 13;
    }

    else
    {
      v51 = 0;
      *(this + 41) = 0;
    }

    *(this + 130) = v46;
    if ((MTBEDebugFlags::sMEOWDebug & 2) != 0)
    {
      printf("P %8d%7d%7d %8d%7d%7d %8d%7d%7d %8d%7d%7d %8d%7d%7d\n", v58, v30, v29, v56, v34, v33, v54, *(this + 118), *(this + 119), v52, *(this + 112), *(this + 113), v51, *(this + 115), *(this + 116));
      v41 = a2;
    }

    *(this + 131) = v4;
    v47 = *(this + 2);
    if (*(v47 + 210) == 1)
    {
      if (*(this + 54))
      {
        *(this + 132) = *(v47 + 8);
      }

      *(this + 31) = MT3BSegmentProducer::sTopOctave[(*(v47 + 192) + v4)] >> (3 - ((*(v47 + 192) + v4) >> 8));
      if (*(v47 + 50) == 1)
      {
        if (v50 != -1)
        {
          *(this + 33) = v50 << 14;
          *(this + 34) = v50 << 14;
        }
      }

      else
      {
        if (!*(v47 + 200))
        {
          v45 = *(v47 + 190);
          *(this + 131) = v45;
        }

        if (*(*(this + 3) + 52))
        {
          *(this + 131) = (*(*(this + 3) + 52) + v45) & ~((*(*(this + 3) + 52) + v45) >> 15);
        }
      }
    }

    else
    {
      *(this + 31) = MT3BSegmentProducer::sTopOctave[v4] >> (3 - HIBYTE(v4));
      if (*(*(this + 3) + 52))
      {
        v48 = (*(*(this + 3) + 52) + v4) & ~((*(*(this + 3) + 52) + v4) >> 31);
        *(this + 131) = v48;
        *(this + 32) = MT3BSegmentProducer::sTopOctave[v48] >> (3 - BYTE1(v48));
      }
    }

    *(this + 35) = *(this + 54) << 16;
    MTMBSegment::Allocate(v41, 0);
  }

  *(this + 25) = 0;
  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  result = MTFEFrameFiller::FillNextFrame(*(this + 1), this + 32);
  *(this + 96) = result;
  *(this + 104) = *(*(this + 1) + 80);
  if (result)
  {
    goto LABEL_2;
  }

  return result;
}

void MT3BSegmentProducer::CalcZeroCoefficients(MT3BSegmentProducer *this, int a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  if (a3 >= 1225)
  {
    v6 = 1225;
  }

  else
  {
    v6 = a3;
  }

  v7 = (((1717986919 * (v6 - 50)) >> 33) + ((1717986919 * (v6 - 50)) >> 63));
  *a6 = -sCcoeffTbl[v7];
  LODWORD(v7) = sBcoeffTbl[v7] * sCosTbl[a2 - 256];
  *a5 = -(v7 >> 12);
  *a4 = *a6 - (v7 >> 12) + 0x2000;
}

void sub_257B0A828(_Unwind_Exception *a1)
{
  v5 = v4;
  MEMORY[0x259C6DA90](v5, 0x10E1C404B4880CALL);

  _Unwind_Resume(a1);
}

void sub_257B0AA48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MTFrontendSimple;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void MT3BTextSource::MT3BTextSource(MT3BTextSource *this, const __CFString **a2)
{
  SLCFStringTextSource::SLCFStringTextSource(this, a2[26]);
  *v3 = &unk_2868F45A8;
  *(v3 + 296) = a2;
  *(v3 + 304) = 0;
}

{
  SLCFStringTextSource::SLCFStringTextSource(this, a2[26]);
  *v3 = &unk_2868F45A8;
  *(v3 + 296) = a2;
  *(v3 + 304) = 0;
}

uint64_t MT3BTextSource::CreateMoreText(MT3BTextSource *this)
{
  if ((*(this + 304) & 1) == 0)
  {
    *(this + 304) = 1;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v1 = *(this + 37);
    v2 = *(v1 + 376);
    if (v2)
    {
      if (*(v1 + 424) == 1)
      {
        v2(*(v1 + 72), *(v1 + 312), &v6, &v5, &v4);
      }
    }
  }

  return 0;
}

void MTBEDoneTask::Execute(MTBEDoneTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Done %p\n", a2, a2);
  SpeechChannelManager::RegisterCurSpeechState(a2, 0);
  v3 = *(a2 + 48);
  if (v3 && a2[424] == 1)
  {
    v4 = *(a2 + 9);
    v5 = *(a2 + 39);
    pthread_mutex_unlock((sCallbackSchedule + 104));
    v3(v4, v5);
    v6 = (sCallbackSchedule + 104);

    pthread_mutex_lock(v6);
  }
}

uint64_t MTBESoundOutputDoneTask::Execute(MTBESoundOutputDoneTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Sound Output Done %p\n", a2, a2);
  pthread_mutex_unlock((sSampleSchedule + 104));
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  v3 = (sSampleSchedule + 104);

  return pthread_mutex_lock(v3);
}

void MT3BEngineTask::MT3BEngineTask(MT3BEngineTask *this, const __CFString **a2)
{
  *this = &unk_2868F4638;
  *(this + 1) = &unk_2868F4680;
  *(this + 2) = &unk_2868F46B8;
  *(this + 3) = this;
  *(this + 4) = MT3BEngineTask::Word;
  *(this + 5) = 0;
  sprintf(this + 48, "%s<%p>", "Word", this);
  *(this + 10) = &unk_2868F46B8;
  *(this + 11) = this;
  *(this + 12) = MT3BEngineTask::Phon;
  *(this + 13) = 0;
  sprintf(this + 112, "%s<%p>", "Phon", this);
  *(this + 18) = &unk_2868F46B8;
  *(this + 19) = this;
  *(this + 20) = MT3BEngineTask::Sync;
  *(this + 21) = 0;
  sprintf(this + 176, "%s<%p>", "Sync", this);
  *(this + 26) = &unk_2868F46B8;
  *(this + 27) = this;
  *(this + 28) = MT3BEngineTask::Pause;
  *(this + 29) = 0;
  sprintf(this + 240, "%s<%p>", "Pause", this);
  *(this + 34) = &unk_2868F46B8;
  *(this + 35) = this;
  *(this + 36) = MT3BEngineTask::Boundary;
  *(this + 37) = 0;
  sprintf(this + 304, "%s<%p>", "Boundary", this);
  *(this + 42) = &unk_2868F46B8;
  *(this + 43) = this;
  *(this + 44) = MT3BEngineTask::Stopped;
  *(this + 45) = 0;
  sprintf(this + 368, "%s<%p>", "Stopped", this);
  *(this + 50) = &unk_2868F46B8;
  *(this + 51) = this;
  *(this + 52) = MT3BEngineTask::CheckAudio;
  *(this + 53) = 0;
  sprintf(this + 432, "%s<%p>", "Audio?", this);
  *(this + 58) = &unk_2868F46B8;
  *(this + 59) = this;
  *(this + 60) = MT3BEngineTask::Ping;
  *(this + 61) = 0;
  sprintf(this + 496, "%s<%p>", "Ping", this);
  *(this + 66) = &unk_2868F46B8;
  *(this + 67) = this;
  *(this + 68) = MT3BEngineTask::ParseNextPhrase;
  *(this + 69) = 0;
  sprintf(this + 560, "%s<%p>", "Parse", this);
  *(this + 74) = a2;
  SLCFStringTextSource::SLCFStringTextSource((this + 616), a2[26]);
  *(this + 77) = &unk_2868F45A8;
  *(this + 114) = a2;
  *(this + 920) = 0;
  *(this + 116) = 0;
  *(this + 118) = 0;
  *(this + 117) = 0;
  MTBEPersistentParam::MTBEPersistentParam((this + 1016));
  *(this + 308) = 257;
  *(this + 618) = 1;
  *(this + 155) = 0;
  v4 = *(*(this + 74) + 32);
  *(this + 157) = &unk_2868F4960;
  v5 = *(v4 + 8);
  v6 = *(v4 + 24);
  v7 = *(v4 + 40);
  *(this + 328) = *(v4 + 56);
  *(this + 81) = v7;
  *(this + 80) = v6;
  *(this + 79) = v5;
  *(this + 660) = 0;
  MTBEWorker::DebugLog("Create Engine %p\n", v8, this);
  gettimeofday(&v9, 0);
  *(this + 156) = v9.tv_usec + 1000000 * v9.tv_sec;
  pthread_once(&sScheduleInit, InitSchedules);
  pthread_mutex_init((this + 952), 0);
  *(this + 138) = a2[8];
  *(this + 134) = SLLexer::Create();
  operator new();
}

void sub_257B0B3A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, MTBEWorker::Task *a11, MTBEWorker::Task *a12, MTBEWorker::Task *a13, MTBEWorker::Task *a14, MTBEWorker::Task *a15)
{
  MEMORY[0x259C6DA90](v20, 0x10A1C402F3E04C9, a3, a4, a5, a6, a7, a8);
  MTBENotifier::~MTBENotifier(v19);
  MTBEPersistentParam::~MTBEPersistentParam((v15 + 1016));
  SLCFStringTextSource::~SLCFStringTextSource(v18);
  MTBEWorker::Task::~Task(v17);
  MTBEWorker::Task::~Task(v16);
  MTBEWorker::Task::~Task(v22);
  MTBEWorker::Task::~Task(v21);
  MTBEWorker::Task::~Task(a11);
  MTBEWorker::Task::~Task(a12);
  MTBEWorker::Task::~Task(a13);
  MTBEWorker::Task::~Task(a14);
  MTBEWorker::Task::~Task(a15);
  MTBEWorker::Task::~Task(v15);
  _Unwind_Resume(a1);
}

uint64_t MT3BEngineTask::Word(MT3BEngineTask *this, const char *a2)
{
  v3 = a2 >> 8;
  v4 = a2;
  MTBEWorker::DebugLog("Word %d %d\n", a2, a2 >> 8, a2);
  v5 = *(this + 74);
  pthread_mutex_unlock((sCallbackSchedule + 104));
  v9.location = v3;
  v9.length = v4;
  SpeechChannelManager::CallWordCallBackProc(v5, v9);
  v6 = (sCallbackSchedule + 104);

  return pthread_mutex_lock(v6);
}

uint64_t MT3BEngineTask::AncillaryTask::AncillaryTask(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = &unk_2868F46B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  sprintf((a1 + 32), "%s<%p>", a5, a2);
  return a1;
}

{
  *a1 = &unk_2868F46B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  sprintf((a1 + 32), "%s<%p>", a5, a2);
  return a1;
}

uint64_t MT3BEngineTask::Phon(MT3BEngineTask *this, const char *a2)
{
  v2 = a2;
  MTBEWorker::DebugLog("Phoneme %d\n", a2, a2);
  v4 = *(this + 74);
  pthread_mutex_unlock((sCallbackSchedule + 104));
  v5 = *(v4 + 408);
  if (v5 && *(v4 + 424) == 1)
  {
    v5(*(v4 + 72), *(v4 + 312), v2);
  }

  v6 = (sCallbackSchedule + 104);

  return pthread_mutex_lock(v6);
}

uint64_t MT3BEngineTask::Sync(MT3BEngineTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Sync %08X\n", a2, a2);
  v4 = *(this + 74);
  pthread_mutex_unlock((sCallbackSchedule + 104));
  *(v4 + 336) = a2;
  v5 = *(v4 + 392);
  if (v5 && *(v4 + 424) == 1)
  {
    v5(*(v4 + 72), *(v4 + 312), a2);
  }

  v6 = (sCallbackSchedule + 104);

  return pthread_mutex_lock(v6);
}

void MT3BEngineTask::Pause(MT3BEngineTask *this, const char *a2)
{
  *(this + 660) = a2;
  v3 = "Immediate";
  if (*(this + 116) && *(*(this + 74) + 340) == 2)
  {
    v3 = "Deferred";
  }

  MTBEWorker::DebugLog("Pause %04x %s\n", a2, a2, v3);
  v4 = *(this + 116);
  if (v4 && *(*(this + 74) + 340) == 2)
  {
    v5 = *(this + 310);
    v6 = *(this + 660);
    if ((v6 & 0x100) != 0)
    {
      if (v5 != 4)
      {
        v7 = 2;
        goto LABEL_20;
      }
    }

    else if (!v5)
    {
      v7 = 1;
LABEL_20:
      *(this + 310) = v7;
    }

    MTFEFrameFiller::PauseAt(v4 + 2728, v6);
    if (!*(this + 1320))
    {
      (*(**(this + 75) + 56))(*(this + 75), 1, 1);
      (*(**(this + 116) + 64))(*(this + 116));
    }

    if ((v5 - 1) >= 2)
    {

      MT3BEngineTask::CheckAudio(this, v9);
    }

    return;
  }

  if ((*(this + 660) & 0x100) != 0)
  {
    if (*(this + 310) != 4)
    {
      *(this + 310) = 2;
    }

    MT3BEngineTask::ShutUp(this, 1);
  }

  else
  {
    MT3BEngineTask::ShutUp(this, 1);
    *(this + 310) = 3;
    *(this + 1233) = 0;
    v8 = *(this + 74);

    SpeechChannelManager::RegisterCurSpeechState(v8, 3);
  }
}

uint64_t MT3BEngineTask::Boundary(MT3BEngineTask *this, void *a2)
{
  result = MT3BEngineTask::ShutUp(this, 1);
  *(this + 660) = 0;
  return result;
}

void MT3BEngineTask::Stopped(uint64_t this, const char *a2)
{
  v2 = *(this + 592);
  if (!*(v2 + 340))
  {
    return;
  }

  v4 = *(this + 1240);
  if (v4 == 2)
  {
    goto LABEL_5;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      return;
    }

LABEL_5:
    *(this + 1240) = 4;
    v5 = sCallbackSchedule;

    MTBEWorker::AddTask(v5, sDoneTask, v2);
    return;
  }

  *(this + 1240) = 3;
  *(this + 1233) = 0;
  MTBEWorker::DebugLog("Paused\n", a2);
  v6 = *(this + 592);

  SpeechChannelManager::RegisterCurSpeechState(v6, 3);
}

void MT3BEngineTask::CheckAudio(MT3BEngineTask *this, void *a2)
{
  (*(**(this + 75) + 104))(*(this + 75), a2);
  if ((*(this + 310) - 3) >= 2)
  {
    v3 = sSampleSchedule;
    gettimeofday(&v4, 0);
    v4.tv_sec = v4.tv_usec + 1000000 * v4.tv_sec + 50000;
    MTBEWorker::AddTask(v3, this + 50, 0, &v4.tv_sec);
  }
}

void MT3BEngineTask::Ping(MT3BEngineTask *this, void *a2)
{
  v3 = SpeechBusy();
  *(this + 1234) = v3 > 0;
  if (v3 >= 1)
  {
    v4 = sSampleSchedule;
    gettimeofday(&v5, 0);
    v5.tv_sec = v5.tv_usec + 1000000 * v5.tv_sec + 1000000;
    MTBEWorker::AddTask(v4, this + 58, 0, &v5.tv_sec);
  }
}

uint64_t MT3BEngineTask::ParseNextPhrase(MT3BEngineTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Parse\n", a2);
  if ((*(this + 1234) & 1) == 0)
  {
    *(this + 1234) = 1;
    v4 = sSampleSchedule;
    gettimeofday(&v22, 0);
    v22.tv_sec = v22.tv_usec + 1000000 * v22.tv_sec + 1000000;
    MTBEWorker::AddTask(v4, this + 58, 0, &v22.tv_sec);
  }

  if (a2)
  {
    pthread_mutex_lock((this + 952));
    if (*(this + 1237) == 1)
    {
      v6 = *(this + 116);
      if (v6)
      {
        (*(*v6 + 48))(v6);
      }

      v7 = 0;
    }

    else
    {
      v7 = *(this + 117);
    }

    *(this + 118) = v7;
    *(this + 58) = 0u;
    MTBEWorker::DebugLog("Restart at phrase %p\n", v5, v7);
    pthread_mutex_unlock((this + 952));
  }

  v8 = *(this + 118);
  if (v8)
  {
    *(this + 1232) = 1;
    do
    {
      v9 = v8[533];
      v8[533] = 0;
      *(this + 118) = v9;
      ClonedWord = MTFEFrameFiller::NextClonedWord((v8 + 341));
      if (ClonedWord == -1)
      {
        v12 = 0;
        v13 = "At end of phrase %p\n";
      }

      else
      {
        v12 = v8[532];
        v8[532] = 0;
        v13 = "Restart phrase %p\n";
      }

      MTBEWorker::DebugLog(v13, v10, v8);
      (*(*v8 + 48))(v8);
      v8 = *(this + 118);
      v14 = v12 != 0;
      if (v8)
      {
        v15 = v12 == 0;
      }

      else
      {
        v15 = 0;
      }
    }

    while (v15);
  }

  else
  {
    ClonedWord = 0;
    v12 = 0;
    v14 = 0;
  }

  if (*(this + 1232) != 1 || v14)
  {
    if (!v14)
    {
      return (*(**(this + 75) + 56))(*(this + 75), 0, 0);
    }

    goto LABEL_27;
  }

  MTFEBuilder::ParseSentence(*(this + 76));
  v16 = *(this + 76);
  var2 = v16->var2;
  MTFEBuilder::ResetProduct(v16, 0);
  if (var2)
  {
    goto LABEL_28;
  }

  *(this + 1232) = 0;
  if (v14)
  {
LABEL_27:
    var2 = 0;
LABEL_28:
    v19 = *(this + 74);
    v20.var0 = *(v19 + 304);
    MTBEPhraseParam::MTBEPhraseParam(&v22, v20, var2, *(v19 + 32), (this + 1256), *(v19 + 40), (this + 1016));
    if (v14)
    {
      MTBEPhraseMemo::Thaw(v12, &v22);
      v23 = ClonedWord;
      MTBEPhraseMemo::~MTBEPhraseMemo(v12);
      MEMORY[0x259C6DA90]();
    }

    MTBEPhraseProcessor::Create(*(*(this + 74) + 264), (*(*(this + 74) + 264) + 362), &v22, v21);
  }

  return (*(**(this + 75) + 56))(*(this + 75), 0, 0);
}

uint64_t MT3BEngineTask::ShutUp(MT3BEngineTask *this, int a2)
{
  pthread_mutex_lock((sSampleSchedule + 104));
  MTBEWorker::PurgeTasks(sSampleSchedule, this);
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 528));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 208));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 272));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 464));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 400));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 336));
  pthread_mutex_unlock((sSampleSchedule + 104));
  if (a2)
  {
    (*(**(this + 75) + 56))(*(this + 75), 1, 0);
  }

  pthread_mutex_lock((sCallbackSchedule + 104));
  MTBEWorker::PurgeTasks(sCallbackSchedule, this);
  MTBEWorker::PurgeTasks(sCallbackSchedule, (this + 144));
  MTBEWorker::PurgeTasks(sCallbackSchedule, (this + 80));
  MTBEWorker::PurgeTasks(sCallbackSchedule, (this + 16));
  v4 = (sCallbackSchedule + 104);

  return pthread_mutex_unlock(v4);
}

void MT3BEngineTask::~MT3BEngineTask(MT3BEngineTask *this, const char *a2)
{
  *this = &unk_2868F4638;
  *(this + 1) = &unk_2868F4680;
  MTBEWorker::DebugLog("Delete Engine %p\n", a2, this);
  MT3BEngineTask::ShutUp(this, 0);
  pthread_mutex_lock((sSampleSchedule + 104));
  pthread_mutex_lock((sCallbackSchedule + 104));
  (*(**(this + 75) + 72))(*(this + 75), 0);
  if (atomic_fetch_add((*(this + 75) + 16), 0xFFFFFFFF) == 1)
  {
    MTBEWorker::AddTask(sSampleSchedule, &sSoundOutputDoneTask, *(this + 75));
  }

  v3 = *(this + 76);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 117);
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  v5 = *(this + 134);
  if (v5)
  {
    (*(*v5 + 56))(v5);
  }

  pthread_mutex_unlock((sCallbackSchedule + 104));
  pthread_mutex_unlock((sSampleSchedule + 104));
  MTBENotifier::~MTBENotifier((this + 1256));
  MTBEPersistentParam::~MTBEPersistentParam((this + 1016));
  SLCFStringTextSource::~SLCFStringTextSource((this + 616));
  MTBEWorker::Task::~Task((this + 528));
  MTBEWorker::Task::~Task((this + 464));
  MTBEWorker::Task::~Task((this + 400));
  MTBEWorker::Task::~Task((this + 336));
  MTBEWorker::Task::~Task((this + 272));
  MTBEWorker::Task::~Task((this + 208));
  MTBEWorker::Task::~Task((this + 144));
  MTBEWorker::Task::~Task((this + 80));
  MTBEWorker::Task::~Task((this + 16));

  MTBEWorker::Task::~Task(this);
}

{
  MT3BEngineTask::~MT3BEngineTask(this, a2);

  JUMPOUT(0x259C6DA90);
}

void MTBEWorker::AddTask(MTBEWorker *this, MTBEWorker::Task *a2, uint64_t a3)
{
  gettimeofday(&v6, 0);
  v6.tv_sec = v6.tv_usec + 1000000 * v6.tv_sec;
  MTBEWorker::AddTask(this, a2, a3, &v6.tv_sec);
}

void non-virtual thunk toMT3BEngineTask::~MT3BEngineTask(MT3BEngineTask *this, const char *a2)
{
  MT3BEngineTask::~MT3BEngineTask((this - 8), a2);
}

{
  MT3BEngineTask::~MT3BEngineTask((this - 8), a2);

  JUMPOUT(0x259C6DA90);
}

uint64_t MT3BEngineTask::WakeupSoundAndContinue(MT3BEngineTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Waking up Sound\n", a2);
  (*(**(this + 75) + 64))(*(this + 75), 0);
  v3 = *(*this + 40);

  return v3(this);
}

void MT3BEngineTask::SoundIsAwake(MT3BEngineTask *this, const char *a2)
{
  if (*(*(this + 74) + 340))
  {
    MTBEWorker::DebugLog("Sound is awake\n", a2);
    if (*(this + 1233) == 1)
    {

      MT3BEngineTask::ScheduleParse(this);
    }

    else
    {

      MT3BEngineTask::ScheduleContinue(this);
    }
  }

  else
  {

    MTBEWorker::DebugLog("Sound is awake, but Speech already stopped\n", a2);
  }
}

void MT3BEngineTask::ScheduleParse(MT3BEngineTask *this)
{
  v2 = sSampleSchedule;
  gettimeofday(&v3, 0);
  v3.tv_sec = v3.tv_usec + 1000000 * v3.tv_sec;
  MTBEWorker::AddTask(v2, this + 66, 0, &v3.tv_sec);
}

void MT3BEngineTask::ScheduleContinue(MT3BEngineTask *this)
{
  *(this + 660) = 0;
  *(this + 310) = 0;
  MTBEWorker::PurgeTasks(sSampleSchedule, this);
  v2 = 797831567000 * *(this + 311);
  v3 = (v2 >> 44) + (v2 >> 63);
  v4 = *(this + 74);
  if (*(v4 + 340) == 3)
  {
    *(this + 1233) = 1;
    *(this + 311) = 0;
    SpeechChannelManager::RegisterCurSpeechState(v4, 2);
  }

  else
  {
    v3 -= 100;
  }

  v5 = *(this + 156) + 1000 * v3;
  MTBEWorker::AddTask(sSampleSchedule, this + 66, this, &v5);
}

const char *MT3BEngineTask::Latency(MT3BEngineTask *this, const char *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x40000) != 0)
  {
    v3 = clock();
    printf("\nStartSpeakingLatency %.8f\n", ((v3 * 1000.0) / 1000000.0));
  }

  result = MTBEWorker::DebugLog("Latency\n", a2);
  v5 = *(this + 74);
  v6 = v5[50];
  if (v6)
  {
    result = v6(v5[9], v5[39], 1818326117);
  }

  *(this + 1236) = 0;
  return result;
}

const char *MT3BEngineTask::AdjustBaseline(const char *this)
{
  if (*(this + 311) >= 23)
  {
    v11 = v1;
    v12 = v2;
    v3 = this;
    if ((this[1235] & 1) == 0)
    {
      gettimeofday(&v10, 0);
      v4 = (v10.tv_usec + 1000000 * v10.tv_sec - *(v3 + 1248)) / 1000;
      v5 = 797831567000 * *(v3 + 1244);
      this = MTBEWorker::DebugLog("Now: %d Lead %d\n", v6, v4, (v5 >> 44) + (v5 >> 63) - 20);
      v8 = 797831567000 * *(v3 + 1244);
      if (((v8 >> 44) + (v8 >> 63) - 20) < v4)
      {
        MTBEWorker::DebugLog("Running late!\n", v7);
        this = (*(**(v3 + 600) + 64))(*(v3 + 600), 0);
        v9 = 0xFFFFFF463D886968 * *(v3 + 1244);
        *(v3 + 1248) += 1000 * (v4 + (v9 >> 44) + (v9 >> 63) + 20);
      }
    }
  }

  return this;
}

void MT3BEngineTask::Execute(uint64_t this, const char *a2)
{
  if (*(*(this + 592) + 340) != 2)
  {
    *(this + 1233) = 0;
    return;
  }

  v3 = *(this + 928);
  if (!v3)
  {
    return;
  }

  if (*(v3 + 2881) == 1)
  {
    MTFEFrameFiller::SyncWithUnitSearch(v3 + 2728);
    MT3BEngineTask::AdjustBaseline(this);
  }

  if (*(this + 1233) == 1)
  {
    MTBEWorker::DebugLog("Baseline\n", a2);
    if (*(this + 1235) == 1)
    {
      gettimeofday(&v17, 0);
      v4 = v17.tv_usec + 1000000 * v17.tv_sec - 1728000000000;
    }

    else
    {
      gettimeofday(&v17, 0);
      v4 = v17.tv_usec + 1000000 * v17.tv_sec;
    }

    *(this + 1248) = v4;
    *(this + 1233) = 0;
  }

  updated = MTBEPhraseProcessor::UpdateEngineFromNotifier(*(this + 928));
  if (*(this + 1236) == 1 && ((*(**(this + 600) + 96))(*(this + 600), updated) & 1) == 0)
  {
    (*(*this + 48))(this);
  }

  v6 = *(this + 1244);
  v8 = (*(**(this + 928) + 56))(*(this + 928), *(this + 600), this + 1244);
  v9 = "";
  if (v8)
  {
    v9 = ", more to come";
  }

  MTBEWorker::DebugLog("Generated %d samples%s\n", v7, (*(this + 1244) - v6), v9);
  MTBEPhraseProcessor::UpdateNotifierFromEngine(*(this + 928));
  v10 = *(this + 1244);
  if (v10 >= 44101)
  {
    *(this + 1248) += 1000000;
    v10 -= 22050;
    *(this + 1244) = v10;
  }

  if (v8)
  {
    v11 = sSampleSchedule;
    if (v10 == v6)
    {
      gettimeofday(&v17, 0);
      v12 = v17.tv_usec + 1000000 * v17.tv_sec + 20000;
    }

    else
    {
      v12 = *(this + 1248) + 1000 * (1000 * v10 / 22050) - 100000;
    }

    v17.tv_sec = v12;
    v15 = v11;
    v14 = this;
    v16 = this;
  }

  else
  {
    if (*(this + 1320))
    {
      return;
    }

    v13 = sSampleSchedule;
    gettimeofday(&v17, 0);
    v17.tv_sec = v17.tv_usec + 1000000 * v17.tv_sec + 1000;
    v14 = (this + 528);
    v15 = v13;
    v16 = 0;
  }

  MTBEWorker::AddTask(v15, v14, v16, &v17.tv_sec);
}

uint64_t SpeechChannelManager::CallWordCallBackProc(SpeechChannelManager *this, CFRange a2)
{
  length = a2.length;
  location = a2.location;
  *(this + 27) = a2.location;
  result = pthread_mutex_lock((this + 144));
  if (!result)
  {
    v6 = *(this + 28);
    if (v6 && (v15.location = location, v15.length = length, MT3UnicodeString::shouldReturnWordCallback(v6, v15)))
    {
      v16.location = location;
      v16.length = length;
      v7 = MT3UnicodeString::MapRangeToSrc(*(this + 28), v16);
      v9 = v8;
      result = pthread_mutex_unlock((this + 144));
      v10 = *(this + 52);
      if (v10 && *(this + 424) == 1)
      {
        v11 = *(this + 9);
        v12 = *(this + 39);
        v13 = *(this + 26);

        return v10(v11, v12, v13, v7, v9);
      }
    }

    else
    {

      return pthread_mutex_unlock((this + 144));
    }
  }

  return result;
}

void MT3BEngineTask::SchedulePause(MT3BEngineTask *this, int a2, int a3)
{
  v3 = 4096;
  if (a2)
  {
    v3 = 4352;
  }

  MTBEWorker::AddTask(sSampleSchedule, (this + 208), v3 + a3);
}

uint64_t MT3BEngineTask::StopAtBoundary(MT3BEngineTask *this, const char *a2)
{
  if ((a2 & 8) != 0)
  {
    MTBEWorker::DebugLog("End of Text\n", a2);
    MTBEWorker::AddTask(sSampleSchedule, (this + 336), this);
  }

  if ((a2 & 4) != 0)
  {
    v4 = (this + 952);
    pthread_mutex_lock((this + 952));
    v7 = *(this + 117);
    if (v7)
    {
      if (v7 == *(this + 116))
      {
        *(this + 1237) = 1;
      }

      else
      {
        v8 = v7[533];
        v7[533] = 0;
        *(this + 117) = v8;
        MTBEWorker::DebugLog("History %p\n", v6, v8);
        (*(*v7 + 48))(v7);
      }
    }

    goto LABEL_11;
  }

  if ((a2 & 2) != 0)
  {
    MTBEWorker::DebugLog("Word Up\n", a2);
    v4 = (this + 952);
    pthread_mutex_lock((this + 952));
    v5 = *(this + 117);
    if (v5)
    {
      ++*(v5 + 2874);
    }

LABEL_11:
    pthread_mutex_unlock(v4);
  }

  v9 = *(this + 660);
  if (!v9 || ((1 << v9) & a2) == 0)
  {
    return 0;
  }

  v10 = sSampleSchedule;
  gettimeofday(&v13, 0);
  v13.tv_sec = v13.tv_usec + 1000000 * v13.tv_sec;
  MTBEWorker::AddTask(v10, this + 34, this, &v13.tv_sec);
  v11 = *(this + 116);
  if (v11)
  {
    (*(*v11 + 64))(v11);
  }

  return 1;
}

uint64_t MT3BEngineTask::AncillaryTask::Execute(MT3BEngineTask::AncillaryTask *this, void *a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = (*(this + 1) + (v3 >> 1));
  if (v3)
  {
    return (*(*v4 + v2))();
  }

  else
  {
    return v2(v4, a2);
  }
}

uint64_t MT3BNotifier::ResetFromVoice(MTBENotifier *this, void *a2, BOOL a3)
{
  MTBENotifier::ResetFromVoice(this, a2, a3);
  MTBEParam::MTBEParam(v6, 0, a2, 0);
  this->var1 = MTBEParam::GetRate(v6) << 16;
  this->var2 = 3072 * MTBEParam::GetPitch(v6) + 2054400;
  this->var3 = MTBEParam::GetModulation(v6);
  result = MTBEParam::GetVolume(v6);
  this->var4 = result;
  return result;
}

void MT3BNotifier::NotifyError(MTBENotifier *this, int a2, uint64_t a3)
{
  MTBENotifier::NotifyError(this, a2, a3);
  var0 = this[1].var0;

  SpeechChannelManager::RegisterCurSpeechError(var0, a2, a3);
}

uint64_t MT3BNotifier::NotifyTextDone(uint64_t this, const void **a2, unint64_t *a3, int *a4)
{
  v4 = *(this + 64);
  v5 = *(v4 + 376);
  if (v5 && *(v4 + 424) == 1)
  {
    return v5(*(v4 + 72), *(v4 + 312), a2, a3, a4);
  }

  *a2 = 0;
  return this;
}

void MT3BNotifier::NotifySync(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(*(this + 64) + 24);
  if (v3)
  {
    v4 = 797831567000 * *(v3 + 1244);
    v5 = *(v3 + 1248) + 1000 * a3 + (1000 * ((v4 >> 44) + (v4 >> 63)));
    MTBEWorker::AddTask(sCallbackSchedule, (v3 + 144), a2, &v5);
  }
}

void MT3BNotifier::NotifyPhoneme(MTBENotifier *this, int a2, int a3, int a4)
{
  MTBENotifier::NotifyPhoneme(this, a2);
  v7 = *(this[1].var0 + 3);
  if (v7)
  {
    v8 = 797831567000 * *(v7 + 1244);
    v9 = *(v7 + 1248) + 1000 * a4 + (1000 * ((v8 >> 44) + (v8 >> 63))) + 1;
    MTBEWorker::AddTask(sCallbackSchedule, (v7 + 80), a2, &v9);
  }
}

void MT3BNotifier::NotifyWord(uint64_t this, uint64_t a2, unsigned __int8 a3, int a4)
{
  v4 = *(*(this + 64) + 24);
  if (v4)
  {
    v5 = 797831567000 * *(v4 + 1244);
    v6 = *(v4 + 1248) + 1000 * a4 + (1000 * ((v5 >> 44) + (v5 >> 63)));
    MTBEWorker::AddTask(sCallbackSchedule, (v4 + 16), a3 | (a2 << 8), &v6);
  }
}

uint64_t MT3BNotifier::WantSpeechDone(MT3BNotifier *this)
{
  v1 = *(this + 8);
  if (*(v1 + 384))
  {
    v2 = *(v1 + 424);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MT3BNotifier::WantSync(MT3BNotifier *this)
{
  v1 = *(this + 8);
  if (*(v1 + 392))
  {
    v2 = *(v1 + 424);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MT3BNotifier::WantPhoneme(MT3BNotifier *this)
{
  v1 = *(this + 8);
  if (*(v1 + 408))
  {
    v2 = *(v1 + 424);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MT3BNotifier::WantWord(MT3BNotifier *this)
{
  v1 = *(this + 8);
  if (*(v1 + 416))
  {
    v2 = *(v1 + 424);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTPBNotifier::ResetFromVoice(MTBENotifier *this, void *a2, BOOL a3)
{
  MTBENotifier::ResetFromVoice(this, a2, a3);
  MTPBVoice::MTPBVoice(v7, a2);
  MTBEParam::MTBEParam(v6, 1, v7, 0);
  this->var1 = MTBEParam::GetRate(v6) << 16;
  this->var2 = 3072 * MTBEParam::GetPitch(v6) + 2054400;
  this->var3 = MTBEParam::GetModulation(v6);
  result = MTBEParam::GetVolume(v6);
  this->var4 = result;
  return result;
}

void InitSpeechProcessing(SpeechChannelManager *a1)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Init %p\n", v2, a1);
  v3 = *(*(a1 + 33) + 4);
  if (v3 != 1835364215 && v3 != 1734437985)
  {
    operator new();
  }

  operator new();
}

uint64_t ResetSpeechProcessing(SpeechChannelManager *a1)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Reset %p\n", v2, a1);
  (*(**(a1 + 4) + 96))(*(a1 + 4), *(a1 + 33) + 362, 1);
  v3 = *(**(a1 + 5) + 96);

  return v3();
}

uint64_t ClearSpeechProcessing(SpeechChannelManager *a1)
{
  MTBEDebugFlags::Update(a1);
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Clear %p\n", v2, a1);
  pthread_mutex_lock((sSampleSchedule + 104));
  pthread_mutex_lock((sSampleSchedule + 40));
  v3 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  pthread_mutex_unlock((sSampleSchedule + 40));
  v4 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v4);
}

uint64_t ShutdownSpeechProcessing(SpeechChannelManager *a1)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Shutdown %p\n", v2, a1);
  pthread_mutex_lock((sCallbackSchedule + 104));
  MTBEWorker::PurgeTasks(sCallbackSchedule, a1);
  pthread_mutex_unlock((sCallbackSchedule + 104));
  result = MTBEWorker::PendingTasks(sSampleSchedule, &sSoundOutputDoneTask);
  if (result)
  {
    do
    {
      usleep(0x3E8u);
      result = MTBEWorker::PendingTasks(sSampleSchedule, &sSoundOutputDoneTask);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t StartSpeechProcessing(SpeechChannelManager *a1, int a2)
{
  MTBEDebugFlags::Update(a1);
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Start %p\n", v3, a1);
  pthread_mutex_lock((sSampleSchedule + 104));
  pthread_mutex_lock((sSampleSchedule + 40));
  if (*(a1 + 9))
  {
    v4 = *(a1 + 3);
    *(a1 + 3) = 0;
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    pthread_mutex_unlock((sSampleSchedule + 40));
    if (*(a1 + 26))
    {
      operator new();
    }

    SpeechChannelManager::RegisterCurSpeechState(a1, 0);
  }

  else
  {
    pthread_mutex_unlock((sSampleSchedule + 40));
  }

  v5 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v5);
}

uint64_t StopSpeechProcessing(SpeechChannelManager *a1, char a2)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Stop %p\n", v4, a1);
  pthread_mutex_lock((sSampleSchedule + 104));
  v5 = *(a1 + 3);
  if (v5)
  {
    MTBEWorker::AddTask(sSampleSchedule, (v5 + 208), a2 + 4352);
  }

  else
  {
    SpeechChannelManager::RegisterCurSpeechState(a1, 0);
  }

  v6 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v6);
}

uint64_t PauseSpeechProcessing(SpeechChannelManager *a1, char a2)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Pause %p\n", v4, a1);
  pthread_mutex_lock((sSampleSchedule + 104));
  v5 = *(a1 + 3);
  if (v5)
  {
    MTBEWorker::AddTask(sSampleSchedule, (v5 + 208), a2 + 4096);
  }

  else
  {
    SpeechChannelManager::RegisterCurSpeechState(a1, 0);
  }

  v6 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v6);
}

uint64_t ContinueSpeechProcessing(SpeechChannelManager *a1)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Continue requested\n", v2);
  pthread_mutex_lock((sSampleSchedule + 104));
  v4 = *(a1 + 3);
  if (v4)
  {
    MT3BEngineTask::WakeupSoundAndContinue(v4, v3);
  }

  else
  {
    SpeechChannelManager::RegisterCurSpeechState(a1, 0);
  }

  v5 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v5);
}

void DoTextToPhon(SpeechChannelManager *a1, const __CFString *a2, unint64_t a3, MTBEWritePhonemes *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  MTBEDebugFlags::Update(a1);
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("TextToPhon %p\n", v6, a1);
  SLCFStringTextSource::SLCFStringTextSource(&v19, a2);
  MTBEPersistentParam::MTBEPersistentParam(&v20);
  v7 = CFLocaleCreate(0, @"en_US");
  v20.var9 = SLLexer::Create();
  CFRelease(v7);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 0x40000000;
  v18[2] = ___Z12DoTextToPhonP20SpeechChannelManagerPK10__CFStringlP17MTBEWritePhonemes_block_invoke;
  v18[3] = &__block_descriptor_tmp_54;
  v18[4] = a1;
  (*(v20.var9->var0 + 5))(v20.var9, v18);
  *&v20.var10 = *(a1 + 232);
  v20.var12 = *(a1 + 31);
  v20.var6 = *(a1 + 6);
  v8 = *(a1 + 4);
  v17.var0 = &unk_2868F4960;
  v9 = *(v8 + 24);
  v10 = *(v8 + 56);
  v11 = *(v8 + 40);
  *&v17.var1 = *(v8 + 8);
  *(&v17.var5.newPos + 2) = v11;
  *&v17.var8[2] = v10;
  *&v17.var5.count = v9;
  (*(v20.var9->var0 + 2))(v20.var9, DWORD2(v11));
  (*(v20.var9->var0 + 3))(v20.var9, v17.var8);
  MTFEBuilder::MTFEBuilder(&v16, v20.var9);
  MTFEBuilder::ParseSentence(&v16);
  var2 = v16.var2;
  MTFEBuilder::ResetProduct(&v16, 0);
  if (var2)
  {
    v13.var0 = *(a1 + 304);
    MTBEPhraseParam::MTBEPhraseParam(v15, v13, var2, *(a1 + 4), &v17, *(a1 + 5), &v20);
    v15[61] = 1;
    MTBEPhraseProcessor::Create(*(a1 + 33), (*(a1 + 33) + 362), v15, v14);
  }

  if (v20.var9)
  {
    (*(v20.var9->var0 + 7))(v20.var9);
  }

  MTFEBuilder::~MTFEBuilder(&v16);
  MTBENotifier::~MTBENotifier(&v17);
  MTBEPersistentParam::~MTBEPersistentParam(&v20);
  SLCFStringTextSource::~SLCFStringTextSource(&v19);
}

void sub_257B0DD04(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, MTFEBuilder *a12, MTBENotifier *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, SLCFStringTextSource *a19, MTBEPersistentParam *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  MTBENotifier::~MTBENotifier(&a33);
  MTBEPersistentParam::~MTBEPersistentParam(&STACK[0x250]);
  SLCFStringTextSource::~SLCFStringTextSource(&a46);
  _Unwind_Resume(a1);
}

void TextToPhonemesProcessing(SpeechChannelManager *a1, const __CFString *a2, unint64_t a3, const __CFString **a4)
{
  if ((a3 & 1) == 0)
  {
    operator new();
  }

  operator new();
}

void MT3BTextSource::~MT3BTextSource(SLCFStringTextSource *this)
{
  SLCFStringTextSource::~SLCFStringTextSource(this);

  JUMPOUT(0x259C6DA90);
}

void MTBEDoneTask::~MTBEDoneTask(MTBEDoneTask *this)
{
  MTBEWorker::Task::~Task(this);

  JUMPOUT(0x259C6DA90);
}

void MTBESoundOutputDoneTask::~MTBESoundOutputDoneTask(MTBESoundOutputDoneTask *this)
{
  MTBEWorker::Task::~Task(this);

  JUMPOUT(0x259C6DA90);
}

void MT3BEngineTask::AncillaryTask::~AncillaryTask(MT3BEngineTask::AncillaryTask *this)
{
  MTBEWorker::Task::~Task(this);

  JUMPOUT(0x259C6DA90);
}

void MT3BNotifier::~MT3BNotifier(MTBENotifier *this)
{
  MTBENotifier::~MTBENotifier(this);

  JUMPOUT(0x259C6DA90);
}

void MTPBNotifier::~MTPBNotifier(MTBENotifier *this)
{
  MTBENotifier::~MTBENotifier(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t _GLOBAL__sub_I_MT3Processing_cp()
{
  __cxa_atexit(MTBEDoneTask::~MTBEDoneTask, sDoneTask, &dword_257B07000);

  return __cxa_atexit(MTBESoundOutputDoneTask::~MTBESoundOutputDoneTask, &sSoundOutputDoneTask, &dword_257B07000);
}

uint64_t SpeechChannelManager::ValidSpeechChannel(uint64_t this)
{
  if ((this & 7) != 0)
  {
    return 0;
  }

  if (*(this + 72) != this)
  {
    return 0;
  }

  return this;
}

void SpeechChannelManager::SpeechChannelManager(SpeechChannelManager *this)
{
  *this = &unk_2868F48D0;
  *(this + 1) = 0;
  *(this + 85) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 72) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 52) = 0;
  *(this + 424) = 1;
  *(this + 54) = 0;
  *(this + 110) = 0;
  *(this + 59) = 0;
  *(this + 37) = 0;
  *(this + 358) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 464) = 0;
  *(this + 9) = this;
  v2 = CFLocaleCreate(0, @"en_US");
  *(this + 2) = v2;
  v4 = SLDictLookup::Create(v2, v3);
  *(this + 8) = v4;
  *(this + 7) = SLPronouncer::Create(*(this + 2), v4, v5);
  pthread_mutex_init((this + 80), 0);
  pthread_mutex_init((this + 144), 0);
  if (SpeechChannelManager::SpeechChannelManager(void)::sInitInactiveChannelSet != -1)
  {
    SpeechChannelManager::SpeechChannelManager();
  }

  v6 = SLGetSpeechDictionaryBundle();
  if (v6)
  {
    v7 = CFBundleCopyResourceURL(v6, @"HomophonesEng", 0, 0);
    if (v7)
    {
      v8 = v7;
      v9 = CFReadStreamCreateWithFile(0, v7);
      if (v9)
      {
        v10 = v9;
        CFReadStreamOpen(v9);
        *(this + 6) = CFPropertyListCreateWithStream(0, v10, 0, 0, 0, 0);
        CFRelease(v10);
      }

      CFRelease(v8);
    }
  }
}

dispatch_queue_t ___ZN20SpeechChannelManagerC2Ev_block_invoke()
{
  result = dispatch_queue_create("MacintalkSpeechQueue", 0);
  sMacintalkSpeechChannelQueue = result;
  return result;
}

void SpeechChannelManager::CloseSpeechChannel(SpeechChannelManager *this)
{
  *(this + 9) = 0;
  if (*(this + 85))
  {
    StopSpeechProcessing(this, 0);
    if (*(this + 85))
    {
      v2 = -1;
      v3 = 1;
      do
      {
        usleep(0x1388u);
        if (!(v2 + 10 * (v3 / 0xA)))
        {
          StopSpeechProcessing(this, 0);
        }

        --v2;
        ++v3;
      }

      while (*(this + 85));
    }
  }

  ClearSpeechProcessing(this);
  ShutdownSpeechProcessing(this);
  SpeechChannelManager::DisposeSoundChannel(this, 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN20SpeechChannelManager18CloseSpeechChannelEv_block_invoke;
  block[3] = &__block_descriptor_tmp_6;
  block[4] = this;
  dispatch_async(sMacintalkSpeechChannelQueue, block);
}

OpaqueExtAudioFile *SpeechChannelManager::DisposeSoundChannel(SpeechChannelManager *this, int a2)
{
  v3 = *(this + 56);
  if (v3)
  {
    if (a2)
    {
      (*(*v3 + 40))(v3);
      v3 = *(this + 56);
    }

    if (atomic_fetch_add(v3 + 4, 0xFFFFFFFF) == 1)
    {
      v4 = *(this + 56);
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    *(this + 56) = 0;
  }

  result = *(this + 57);
  if (result)
  {
    if (*(this + 464) == 1)
    {
      result = ExtAudioFileDispose(result);
    }

    *(this + 57) = 0;
    *(this + 464) = 0;
  }

  return result;
}

void SpeechChannelManager::~SpeechChannelManager(SpeechChannelManager *this)
{
  *this = &unk_2868F48D0;
  *(this + 9) = 0;
  ClearSpeechProcessing(this);
  ShutdownSpeechProcessing(this);
  SpeechChannelManager::DisposeSoundChannel(this, 1);
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 30);
  if (v5)
  {
    v6 = (v5 + 79968);
    v7 = -80000;
    do
    {
      MEOWVectorBase::~MEOWVectorBase(v6);
      v6 = (v8 - 32);
      v7 += 32;
    }

    while (v7);
    MEMORY[0x259C6DA90](v5, 0x1080C404F240F48);
  }

  v9 = *(this + 8);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  CFRelease(*(this + 2));
  v13 = *(this + 59);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 38);
  if (v14)
  {
    v15 = *(this + 64);
    if (v15 == 1734437985)
    {
      PROWReader::~PROWReader(v14);
    }

    else
    {
      if (v15 != 1835364215)
      {
        goto LABEL_25;
      }

      MEOWReader::~MEOWReader(v14);
    }

    MEMORY[0x259C6DA90]();
  }

LABEL_25:
  v16 = *(this + 33);
  if (v16)
  {
    free(v16);
  }

  v17 = *(this + 34);
  if (v17)
  {
    SLMMapCache::Unmap(v17, v12);
  }

  v18 = *(this + 37);
  if (v18)
  {
    free(v18);
  }

  v19 = *(this + 26);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(this + 29);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(this + 6);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(this + 31);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(this + 54);
  if (v23)
  {
    _Block_release(v23);
  }
}

{
  SpeechChannelManager::~SpeechChannelManager(this);

  JUMPOUT(0x259C6DA90);
}

MTBESoundOutput *SpeechChannelManager::CreateSoundChannel(SpeechChannelManager *this, OpaqueExtAudioFile *a2)
{
  result = *(this + 56);
  if (!result)
  {
    v4 = *(this + 57);
    if (v4 == -1)
    {
      v4 = 0;
    }

    else if (!v4)
    {
      MTBESoundOutput::CreateChannel(*(this + 110));
    }

    MTBESoundOutput::CreateFileStream(v4, a2);
  }

  return result;
}

CFIndex SpeechChannelManager::SpeakCFString(SpeechChannelManager *this, CFStringRef theString, const __CFDictionary *a3)
{
  if (*(this + 85))
  {
    if (TestOption(a3, @"NoSpeechInterrupt"))
    {
      return -242;
    }

    if (*(this + 85))
    {
      StopSpeechProcessing(this, 0);
      if (*(this + 85))
      {
        v7 = -1;
        v8 = 1;
        do
        {
          usleep(0x1388u);
          if (!(v7 + 10 * (v8 / 0xA)))
          {
            StopSpeechProcessing(this, 0);
          }

          --v7;
          ++v8;
        }

        while (*(this + 85));
      }
    }
  }

  v9 = *(this + 26);
  if (v9)
  {
    CFRelease(v9);
    *(this + 26) = 0;
    *(this + 27) = 0;
  }

  if (theString)
  {
    result = CFStringGetLength(theString);
    if (!result)
    {
      return result;
    }

    if (!pthread_mutex_lock((this + 144)))
    {
      v10 = *(this + 28);
      if (v10)
      {
        (*(*v10 + 8))(v10);
        *(this + 28) = 0;
      }

      operator new();
    }

    TextWithEmojiDesc = MT3UnicodeString::getTextWithEmojiDesc(*(this + 28));
    Copy = CFStringCreateCopy(0, TextWithEmojiDesc);
    *(this + 26) = Copy;
    if (!Copy)
    {
      return -108;
    }

    *(this + 85) = 1;
    *(this + 43) = 0;
    *(this + 44) = 0;
    *(this + 358) = 0;
    v13 = TestOption(a3, @"PreflightThenPause");
    StartSpeechProcessing(this, v13);
  }

  return 0;
}

const __CFDictionary *TestOption(const __CFDictionary *result, const __CFString *a2)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v2 = result;
      v3 = CFGetTypeID(result);
      if (v3 == CFBooleanGetTypeID())
      {
        v4 = CFBooleanGetValue(v2) == 0;
      }

      else
      {
        v5 = CFGetTypeID(v2);
        if (v5 != CFNumberGetTypeID())
        {
          return 0;
        }

        valuePtr = 0;
        Value = CFNumberGetValue(v2, kCFNumberSInt8Type, &valuePtr);
        if (valuePtr)
        {
          v4 = Value == 0;
        }

        else
        {
          v4 = 1;
        }
      }

      return !v4;
    }
  }

  return result;
}

uint64_t SpeechChannelManager::UseVoice(SpeechChannelManager *this, VoiceSpec *a2, __CFBundle *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return -50;
  }

  if (*(this + 85))
  {
    return -231;
  }

  ClearSpeechProcessing(this);
  if (*a2 == *(this + 32))
  {
    v9 = *a2;
    *(this + 1) = a3;
    v10 = (this + 8);
    v11 = *(this + 31);
    *(this + 32) = v9;
    if (v11)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v12 = *(this + 33);
  if (v12)
  {
    free(v12);
    *(this + 33) = 0;
  }

  if (*(this + 34))
  {
    v13 = *(this + 64);
    if (v13 == 1734437985)
    {
      v15 = *(this + 38);
      if (!v15)
      {
LABEL_18:
        SLMMapCache::Unmap(*(this + 34), v7);
        *(this + 34) = 0;
        goto LABEL_19;
      }

      PROWReader::~PROWReader(v15);
    }

    else
    {
      if (v13 != 1835364215)
      {
        goto LABEL_18;
      }

      v14 = *(this + 38);
      if (!v14)
      {
        goto LABEL_18;
      }

      MEOWReader::~MEOWReader(v14);
    }

    MEMORY[0x259C6DA90]();
    goto LABEL_18;
  }

LABEL_19:
  v16 = *(this + 37);
  if (v16)
  {
    free(v16);
    *(this + 37) = 0;
  }

  v17 = *(this + 31);
  if (v17)
  {
    CFRelease(v17);
    *(this + 31) = 0;
  }

  v18 = *a2;
  *(this + 1) = a3;
  v10 = (this + 8);
  *(this + 32) = v18;
LABEL_24:
  *(this + 31) = SpeechChannelManager::ReadVoicePitchCoefficients(a3, v7);
LABEL_25:
  if (*(this + 33))
  {
    goto LABEL_26;
  }

  result = SpeechChannelManager::ReadPCMVoiceData(*(this + 1), *(this + 32), this + 38, this + 35, this + 34, v8);
  if ((result & 0x8000000000000000) == 0)
  {
    SpeechChannelManager::ReadVoiceDescription(*v10, (this + 264), v19);
    if (*(this + 33))
    {
LABEL_26:
      InitSpeechProcessing(this);
    }

    Identifier = CFBundleGetIdentifier(a3);
    CFStringGetCString(Identifier, buffer, 200, 0x8000100u);
    asl_log(0, 0, 3, "SpeechChannelManager::UseVoice - %s voiceDescription file reading failed", buffer);
    return -241;
  }

  return result;
}

CFPropertyListRef SpeechChannelManager::ReadVoicePitchCoefficients(SpeechChannelManager *this, __CFBundle *a2)
{
  v2 = CFBundleCopyResourceURL(this, @"PitchCoeffs.plist", 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFReadStreamCreateWithFile(0, v2);
  if (v4)
  {
    v5 = v4;
    CFReadStreamOpen(v4);
    v6 = CFPropertyListCreateWithStream(0, v5, 0, 0, 0, 0);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

uint64_t SpeechChannelManager::ReadPCMVoiceData(SpeechChannelManager *this, unint64_t a2, PROWReader **a3, MTBEVoiceContents *a4, void **a5, void **a6)
{
  v8 = a2;
  v27 = *MEMORY[0x277D85DE8];
  v10 = CFBundleCopyResourceURL(this, @"PCMWave", 0, 0);
  v23 = 0;
  if (v10)
  {
    v12 = v10;
    *buffer = &unk_2868F4920;
    v26 = v8 == 1835364215;
    v13 = SLMMapCache::Map(v10, buffer, v11);
    v23 = v13;
    a4->var0 = v25;
    CFRelease(v12);
    if (v13 == 0xFFFFFFFFLL)
    {
      v16 = *MEMORY[0x277D85DF8];
      v17 = __error();
      fprintf(v16, "Speech Synthesis can't map voice file (%d)\n", *v17);
      v23 = 0;
    }

    else if (v13 && *&buffer[8] != -1)
    {
      if (v26)
      {
        MEOWReader::AdvisePreload(*&buffer[8], &v23, v25, v14);
      }

      else
      {
        v21 = 0;
        v22 = 0;
        LODWORD(v22) = a4->var0;
        fcntl(*&buffer[8], 44, &v21);
      }

      if (v8 != 1835364215)
      {
        close(*&buffer[8]);
      }
    }

    SLMMapHint::~SLMMapHint(buffer);
    v15 = v23;
  }

  else
  {
    v15 = 0;
  }

  v18 = v8 == 1734437985 || v8 == 1835364215;
  if (!v18 || v15)
  {
    if (v8 == 1835364215)
    {
      LODWORD(v25) = 0;
      *buffer = *"ceda caa";
      if (AudioComponentCount(buffer))
      {
        operator new();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SpeechChannelManager::ReadPCMVoiceData();
      }

      return -241;
    }

    else
    {
      if (v8 == 1734437985)
      {
        operator new();
      }

      result = 0;
      *a3 = v15;
    }
  }

  else
  {
    Identifier = CFBundleGetIdentifier(this);
    CFStringGetCString(Identifier, buffer, 200, 0x8000100u);
    asl_log(0, 0, 3, "SpeechChannelManager::ReadPCMVoiceData - %s PCMWave file not found", buffer);
    return -43;
  }

  return result;
}

void sub_257B0F074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  SLMMapHint::~SLMMapHint(va);
  _Unwind_Resume(a1);
}

uint64_t SpeechChannelManager::ReadVoiceDescription(SpeechChannelManager *this, __CFBundle *a2, void **a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  if (OpenResourceFile(this, @"VoiceDescription", &v19))
  {
    Identifier = CFBundleGetIdentifier(this);
    CFStringGetCString(Identifier, &buffer, 200, 0x8000100u);
    asl_log(0, 0, 3, "SpeechChannelManager::ReadVoiceDescription VoiceDescription file -  Open %s failed with code %ld");
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  if (fstat(v19, &buffer))
  {
    goto LABEL_4;
  }

  st_size = buffer.st_size;
  v6 = malloc_type_malloc(buffer.st_size, 0xC15436DuLL);
  if (v6 && read(v19, v6, st_size) != st_size)
  {
    free(v6);
    __error();
    asl_log(0, 0, 3, "SpeechChannelManager::ReadVoiceDescription -  Read failed with code %d");
    goto LABEL_4;
  }

  v9 = vrev32_s8(*(v6 + 4));
  *(v6 + 4) = v9;
  *(v6 + 3) = bswap32(*(v6 + 3));
  *(v6 + 42) = vrev16_s8(*(v6 + 336));
  *(v6 + 172) = bswap32(*(v6 + 172)) >> 16;
  *(v6 + 346) = vrev32q_s8(*(v6 + 346));
  if (v9.i32[0] == 1734437985)
  {
LABEL_11:
    *(v6 + 362) = vrev16q_s8(*(v6 + 362));
    *(v6 + 189) = bswap32(*(v6 + 189)) >> 16;
    *(v6 + 95) = bswap32(*(v6 + 95));
    *(v6 + 48) = vrev16_s8(*(v6 + 384));
    *(v6 + 98) = bswap32(*(v6 + 98));
    *(v6 + 396) = vrev16q_s8(*(v6 + 396));
    goto LABEL_5;
  }

  if (v9.i32[0] != 1836346163)
  {
    if (v9.i32[0] != 1835364215)
    {
      fwrite("Unknown voice creator in SpeechChannelManager::ReadVoiceDescription\n", 0x44uLL, 1uLL, *MEMORY[0x277D85DF8]);
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v10 = vrev16q_s8(*(v6 + 378));
  *(v6 + 362) = vrev16q_s8(*(v6 + 362));
  *(v6 + 378) = v10;
  v11 = vrev16q_s8(*(v6 + 410));
  *(v6 + 394) = vrev16q_s8(*(v6 + 394));
  *(v6 + 410) = v11;
  *(v6 + 426) = vrev16_s8(*(v6 + 426));
  *(v6 + 434) = bswap32(*(v6 + 434));
  v12 = vrev16_s8(*(v6 + 438));
  *(v6 + 446) = bswap32(*(v6 + 446));
  *(v6 + 225) = bswap32(*(v6 + 225)) >> 16;
  *(v6 + 226) = bswap32(*(v6 + 226)) >> 16;
  *(v6 + 227) = bswap32(*(v6 + 227)) >> 16;
  v13 = 456;
  *(v6 + 438) = v12;
  do
  {
    *&v6[v13] = vrev16q_s8(*&v6[v13]);
    v13 += 16;
  }

  while (v13 != 552);
  do
  {
    *&v6[v13] = vrev16q_s8(*&v6[v13]);
    v13 += 16;
  }

  while (v13 != 648);
  *(v6 + 324) = bswap32(*(v6 + 324)) >> 16;
  *(v6 + 325) = bswap32(*(v6 + 325)) >> 16;
  *(v6 + 163) = bswap32(*(v6 + 163));
  *(v6 + 41) = vrev16q_s8(*(v6 + 41));
  *(v6 + 336) = bswap32(*(v6 + 336)) >> 16;
  *(v6 + 337) = bswap32(*(v6 + 337)) >> 16;
  *(v6 + 338) = bswap32(*(v6 + 338)) >> 16;
  *(v6 + 678) = vrev32q_s8(*(v6 + 678));
  *(v6 + 694) = vrev32q_s8(*(v6 + 694));
  v14 = *(v6 + 355);
  v15 = __rev16(v14);
  *(v6 + 355) = v15;
  if (v14)
  {
    v16 = v15;
    v17 = 356;
    do
    {
      *&v6[2 * v17] = bswap32(*&v6[2 * v17]) >> 16;
      v18 = v17 - 355;
      ++v17;
    }

    while (v18 < v16);
  }

LABEL_5:
  *a2 = v6;
  return close(v19);
}

uint64_t MEOWMMapHint::MappedSize(MEOWMMapHint *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 32) == 1)
  {
    return MEOWReader::MappedSize(*(this + 2), *(this + 2));
  }

  else
  {
    return *(this + 2);
  }
}

void SpeechChannelManager::RegisterCurSpeechState(uint64_t a1, int a2)
{
  if (*(a1 + 256) != 1835364215)
  {
    v4 = *(a1 + 272);
    if (v4)
    {
      v5 = *(a1 + 340);
      if (v5 != a2)
      {
        if (a2 == 2)
        {
          *(a1 + 288) = 0;
          if (mlock(v4, *(a1 + 280)))
          {
            v9 = *(a1 + 280);
            if (v9)
            {
              v10 = 0;
              v11 = *(a1 + 272);
              v12 = *(a1 + 288);
              do
              {
                v12 += *(v11 + v10);
                *(a1 + 288) = v12;
                v10 += 4096;
              }

              while (v10 < v9);
            }
          }
        }

        else if (v5 == 2)
        {
          munlock(v4, *(a1 + 280));
        }
      }
    }
  }

  v6 = (*(a1 + 340) & 0xFFFFFFFE) == 2;
  *(a1 + 340) = a2;
  if (((((a2 & 0xFFFFFFFE) != 2) ^ v6) & 1) == 0)
  {
    SpeechBusy();
  }

  v7 = *(a1 + 432);
  if (v7)
  {
    global_queue = dispatch_get_global_queue(0, 0);

    dispatch_async(global_queue, v7);
  }
}

void SpeechChannelManager::RegisterCurSpeechError(SpeechChannelManager *this, CFIndex a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (!pthread_mutex_lock((this + 80)))
    {
      ++*(this + 172);
      *(this + 178) = a2;
      *(this + 358) = a3;
      if (!*(this + 173))
      {
        *(this + 173) = a2;
        *(this + 348) = a3;
      }

      pthread_mutex_unlock((this + 80));
    }

    if (*(this + 46))
    {
      if (*(this + 424) == 1)
      {
        userInfoKeys[0] = @"SpokenString";
        userInfoKeys[1] = @"CharacterOffset";
        userInfoValues = *(this + 26);
        valuePtr = a3;
        cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        v6 = CFErrorCreateWithUserInfoKeysAndValues(0, *MEMORY[0x277CBEE40], a2, userInfoKeys, &userInfoValues, 2);
        CFRelease(cf);
        if (v6)
        {
          v7 = *(this + 46);
          if (v7)
          {
            if (*(this + 424) == 1)
            {
              v7(*(this + 9), *(this + 39), v6);
            }
          }

          CFRelease(v6);
        }
      }
    }
  }
}

uint64_t SpeechChannelManager::GetCurSpeechErrors(SpeechChannelManager *this)
{
  *__p = 0u;
  v11 = 0u;
  v9 = 0u;
  pthread_mutex_lock((this + 80));
  valuePtr = *(this + 172);
  v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"Count", v2);
  valuePtr = *(this + 173);
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"OldestCode", v3);
  valuePtr = *(this + 178);
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"NewestCode", v4);
  valuePtr = *(this + 348);
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"OldestCharacterOffset", v5);
  valuePtr = *(this + 358);
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"NewestCharacterOffset", v6);
  pthread_mutex_unlock((this + 80));
  Dictionary = SLCFDictionaryBuilder::CreateDictionary(&v9);
  if (__p[1])
  {
    *&v11 = __p[1];
    operator delete(__p[1]);
  }

  SLCFArrayBuilder::~SLCFArrayBuilder(&v9);
  return Dictionary;
}

void SLCFDictionaryBuilder::~SLCFDictionaryBuilder(SLCFDictionaryBuilder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  SLCFArrayBuilder::~SLCFArrayBuilder(this);
}

CFComparisonResult SpeechChannelManager::CopySpeechProperty(SpeechChannelManager *this, CFStringRef theString1, const void **a3)
{
  if (!a3)
  {
    return -50;
  }

  if (CFStringCompare(theString1, @"stat", 0) == kCFCompareEqualTo)
  {
    *__p = 0u;
    v27 = 0u;
    v25 = 0u;
    valuePtr = (*(this + 85) - 1) < 2;
    v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    SLCFDictionaryBuilder::push_back(&v25, @"OutputBusy", v8);
    valuePtr = *(this + 85) == 3;
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    SLCFDictionaryBuilder::push_back(&v25, @"OutputPaused", v9);
    v10 = *(this + 26);
    if (v10)
    {
      LODWORD(v10) = CFStringGetLength(v10);
    }

    valuePtr = v10 - *(this + 54);
    v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    SLCFDictionaryBuilder::push_back(&v25, @"NumberOfCharactersLeft", v11);
    if (*(this + 85) == 2 && (v12 = *(this + 4)) != 0)
    {
      v13 = *(v12 + 46);
    }

    else
    {
      v13 = -1;
    }

    valuePtr = v13;
    v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    SLCFDictionaryBuilder::push_back(&v25, @"PhonemeCode", v14);
    *a3 = SLCFDictionaryBuilder::CreateDictionary(&v25);
    if (__p[1])
    {
      *&v27 = __p[1];
      operator delete(__p[1]);
    }

    SLCFArrayBuilder::~SLCFArrayBuilder(&v25);
    return 0;
  }

  if (CFStringCompare(theString1, @"rate", 0) == kCFCompareEqualTo)
  {
    v15 = *(*(this + 4) + 8);
LABEL_34:
    *&v25 = v15 * 0.000015259;
    v16 = kCFNumberFloatType;
LABEL_35:
    CurSpeechErrors = CFNumberCreate(0, v16, &v25);
    goto LABEL_36;
  }

  if (CFStringCompare(theString1, @"pbas", 0) == kCFCompareEqualTo)
  {
    v15 = *(*(this + 4) + 12);
    goto LABEL_34;
  }

  if (CFStringCompare(theString1, @"pmod", 0) == kCFCompareEqualTo)
  {
    v15 = *(*(this + 4) + 16);
    goto LABEL_34;
  }

  if (CFStringCompare(theString1, @"volm", 0) == kCFCompareEqualTo)
  {
    v15 = *(*(this + 4) + 20);
    goto LABEL_34;
  }

  if (CFStringCompare(theString1, @"erro", 0) == kCFCompareEqualTo)
  {
    CurSpeechErrors = SpeechChannelManager::GetCurSpeechErrors(this);
    goto LABEL_36;
  }

  if (CFStringCompare(theString1, @"inpt", 0) == kCFCompareEqualTo)
  {
    if ((*(*(this + 4) + 48) & 0xF) == 3)
    {
      result = kCFCompareEqualTo;
      v19 = &kSpeechModeTune;
    }

    else
    {
      result = kCFCompareEqualTo;
      if ((*(*(this + 4) + 48) & 0xF) == 2)
      {
        v19 = &kSpeechModePhoneme;
      }

      else
      {
        v19 = &kSpeechModeText;
      }
    }

    goto LABEL_50;
  }

  result = CFStringCompare(theString1, @"char", 0);
  if (result == kCFCompareEqualTo)
  {
    v20 = (*(*(this + 4) + 48) & 0x10) == 0;
    goto LABEL_45;
  }

  result = CFStringCompare(theString1, @"nmbr", 0);
  if (result == kCFCompareEqualTo)
  {
    v20 = (*(*(this + 4) + 48) & 0x20) == 0;
LABEL_45:
    if (v20)
    {
      v19 = &kSpeechModeNormal;
    }

    else
    {
      v19 = &kSpeechModeLiteral;
    }

LABEL_50:
    v18 = *v19;
    goto LABEL_38;
  }

  if (CFStringCompare(theString1, @"sync", 0) == kCFCompareEqualTo)
  {
    LODWORD(v25) = *(this + 84);
LABEL_52:
    v16 = kCFNumberIntType;
    goto LABEL_35;
  }

  if (CFStringCompare(theString1, @"phsy", 0) == kCFCompareEqualTo)
  {
    CurSpeechErrors = SLDictLookup::CreatePhonemeSymbols(*(this + 2), v7);
    goto LABEL_36;
  }

  if (CFStringCompare(theString1, @"popt", 0) == kCFCompareEqualTo)
  {
    v21 = *(this + 40);
LABEL_56:
    *&v25 = v21;
    v16 = kCFNumberLongType;
    goto LABEL_35;
  }

  if (CFStringCompare(theString1, kSpeechDiphoneOptionsProperty, 0) == kCFCompareEqualTo)
  {
    v21 = *(this + 41);
    goto LABEL_56;
  }

  if (CFStringCompare(theString1, kSpeechDiphoneLogProperty, 0))
  {
    if (CFStringCompare(theString1, kSpeechDiphoneStatisticsProperty, 0) == kCFCompareEqualTo)
    {
      v24 = *(this + 30);
      if (!v24)
      {
        v18 = 0;
        goto LABEL_37;
      }

      CurSpeechErrors = MTMBDiphoneStatistics::CreateArray(v24);
LABEL_36:
      v18 = CurSpeechErrors;
LABEL_37:
      result = kCFCompareEqualTo;
LABEL_38:
      *a3 = v18;
      return result;
    }

    if (CFStringCompare(theString1, kSpeechPreloadVoiceMetadataProperty, 0))
    {
      return -231;
    }

    if (*(this + 64) == 1835364215)
    {
      MEOWReader::PercentageResidentMetadata(*(this + 38));
    }

    LODWORD(v25) = 100;
    goto LABEL_52;
  }

  v22 = *(this + 29);
  *a3 = v22;
  if (!v22)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  result = kCFCompareEqualTo;
  *(this + 29) = Mutable;
  return result;
}

uint64_t SpeechChannelManager::GetSpeechInfo(SpeechChannelManager *this, int a2, void *a3)
{
  if (a2 != 2020896356 || *a3 != 1836346163 || *(this + 64) != 1836346163 || *(a3 + 1) != 1986290036)
  {
    return -231;
  }

  memcpy(*(a3 + 1), (*(this + 33) + 362), 0x160uLL);
  return 0;
}

uint64_t SpeechChannelManager::SetSpeechProperty(SpeechChannelManager *this, CFStringRef theString1, const __CFNumber *a3)
{
  if (CFStringCompare(theString1, @"sdcb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      Value = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v7 = valuePtr;
      if (!Value)
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    *(this + 48) = v7;
    return 0;
  }

  if (CFStringCompare(theString1, @"phcb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v8 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v9 = valuePtr;
      if (!v8)
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    *(this + 51) = v9;
    return 0;
  }

  if (CFStringCompare(theString1, @"sycb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v10 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v11 = valuePtr;
      if (!v10)
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    *(this + 49) = v11;
    return 0;
  }

  if (CFStringCompare(theString1, @"wccb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v12 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v13 = valuePtr;
      if (!v12)
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    *(this + 52) = v13;
    return 0;
  }

  if (CFStringCompare(theString1, @"tdcb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v14 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v15 = valuePtr;
      if (!v14)
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    *(this + 47) = v15;
    return 0;
  }

  if (CFStringCompare(theString1, @"eccb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v16 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v17 = valuePtr;
      if (!v16)
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    *(this + 46) = v17;
    return 0;
  }

  if (CFStringCompare(theString1, kSpeechLatencyCallBack, 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v18 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v19 = valuePtr;
      if (!v18)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    *(this + 50) = v19;
    return 0;
  }

  if (CFStringCompare(theString1, @"refc", 0) == kCFCompareEqualTo)
  {
    *(this + 39) = longVal(a3);
    return 0;
  }

  if (CFStringCompare(theString1, @"rate", 0) == kCFCompareEqualTo)
  {
    v20 = fixedVal(a3);
    *(*(this + 4) + 8) = v20;
    *(*(this + 5) + 8) = v20;
    return 0;
  }

  if (CFStringCompare(theString1, @"volm", 0) == kCFCompareEqualTo)
  {
    v22 = fixedVal(a3);
    *(*(this + 4) + 20) = v22;
    *(*(this + 5) + 20) = v22;
    return 0;
  }

  if (CFStringCompare(theString1, @"pbas", 0) == kCFCompareEqualTo)
  {
    v23 = fixedVal(a3);
    *(*(this + 4) + 12) = v23;
    *(*(this + 5) + 12) = v23;
    return 0;
  }

  if (CFStringCompare(theString1, @"pmod", 0) == kCFCompareEqualTo)
  {
    v24 = fixedVal(a3);
    *(*(this + 4) + 16) = v24;
    *(*(this + 5) + 16) = v24;
    return 0;
  }

  if (CFStringCompare(theString1, @"rset", 0) == kCFCompareEqualTo)
  {
    ResetSpeechProcessing(this);
    return 0;
  }

  if (CFStringCompare(theString1, @"inpt", 0) == kCFCompareEqualTo)
  {
    if (!a3)
    {
      return -50;
    }

    if (CFStringCompare(a3, @"TEXT", 0))
    {
      if (CFStringCompare(a3, @"PHON", 0))
      {
        if (CFStringCompare(a3, @"TUNE", 0))
        {
          return -50;
        }

        v25 = *(this + 4);
        v26 = *(v25 + 48) & 0xFFFFFFF0 | 3;
      }

      else
      {
        v25 = *(this + 4);
        v26 = *(v25 + 48) & 0xFFFFFFF0 | 2;
      }
    }

    else
    {
      v25 = *(this + 4);
      v26 = *(v25 + 48) & 0xFFFFFFF0;
    }

LABEL_120:
    *(v25 + 48) = v26;
    return 0;
  }

  if (CFStringCompare(theString1, @"char", 0) == kCFCompareEqualTo)
  {
    if (!a3)
    {
      return -50;
    }

    if (CFStringCompare(a3, @"NORM", 0))
    {
      if (CFStringCompare(a3, @"LTRL", 0))
      {
        return -50;
      }

      v25 = *(this + 4);
      v26 = *(v25 + 48) | 0x10;
    }

    else
    {
      v25 = *(this + 4);
      v26 = *(v25 + 48) & 0xFFFFFFEF;
    }

    goto LABEL_120;
  }

  if (CFStringCompare(theString1, @"nmbr", 0) == kCFCompareEqualTo)
  {
    if (!a3)
    {
      return -50;
    }

    if (CFStringCompare(a3, @"NORM", 0))
    {
      if (CFStringCompare(a3, @"LTRL", 0))
      {
        return -50;
      }

      v25 = *(this + 4);
      v26 = *(v25 + 48) | 0x20;
    }

    else
    {
      v25 = *(this + 4);
      v26 = *(v25 + 48) & 0xFFFFFFDF;
    }

    goto LABEL_120;
  }

  if (CFStringCompare(theString1, @"dlim", 0) == kCFCompareEqualTo)
  {
    valuePtr = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"Prefix", &valuePtr))
    {
      Length = CFStringGetLength(valuePtr);
      if (Length)
      {
        if (Length != 1)
        {
          CFStringGetCharacterAtIndex(valuePtr, 1);
        }

        CFStringGetCharacterAtIndex(valuePtr, 0);
      }
    }

    if (CFDictionaryGetValueIfPresent(a3, @"Suffix", &valuePtr))
    {
      v28 = CFStringGetLength(valuePtr);
      if (v28)
      {
        if (v28 != 1)
        {
          CFStringGetCharacterAtIndex(valuePtr, 3);
        }

        CFStringGetCharacterAtIndex(valuePtr, 2);
      }
    }

    return 0;
  }

  if (CFStringCompare(theString1, @"opaf", 0) == kCFCompareEqualTo)
  {
    if (a3 | *(this + 57))
    {
      SpeechChannelManager::DisposeSoundChannel(this, 1);
      if (a3)
      {
        if (ExtAudioFileCreateWithURL(a3, 0x41494646u, &SpeechChannelManager::SetSpeechProperty(__CFString const*,void const*)::sDefaultAudioFormat, 0, 1u, this + 57))
        {
          *(this + 57) = -1;
        }

        else
        {
          *(this + 464) = 1;
        }
      }
    }

    return 0;
  }

  if (CFStringCompare(theString1, @"opax", 0) == kCFCompareEqualTo)
  {
    if (a3 | *(this + 57))
    {
      SpeechChannelManager::DisposeSoundChannel(this, 1);
      if (a3)
      {
        CFNumberGetValue(a3, kCFNumberLongType, this + 456);
      }
    }

    return 0;
  }

  if (CFStringCompare(theString1, @"chnm", 0) == kCFCompareEqualTo)
  {
    v29 = *(this + 59);
    if (v29)
    {
      CFRelease(v29);
    }

    *(this + 59) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    v30 = *(this + 56);
    if (v30)
    {
      MTBESoundOutput::SetChannelMap(v30, *(this + 59));
    }

    return 0;
  }

  if (CFStringCompare(theString1, @"popt", 0) == kCFCompareEqualTo)
  {
    *(this + 40) = longVal(a3);
    return 0;
  }

  if (CFStringCompare(theString1, kSpeechDiphoneOptionsProperty, 0) == kCFCompareEqualTo)
  {
    *(this + 41) = longVal(a3);
    v31 = *(this + 29);
    if (v31)
    {
      CFRelease(v31);
    }

    v32 = *(this + 30);
    if (v32)
    {
      CFRelease(v32);
    }

    v33 = *(this + 41);
    if (v33)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v33 = *(this + 41);
    }

    else
    {
      Mutable = 0;
    }

    *(this + 29) = Mutable;
    if ((v33 & 2) != 0)
    {
      operator new();
    }

    *(this + 30) = 0;
    return 0;
  }

  if (CFStringCompare(theString1, @"xtnd", 0) == kCFCompareEqualTo)
  {
    v35 = CFDictionaryGetValue(a3, @"creator");
    if (longVal(v35) == 1836346163 && *(this + 64) == 1836346163)
    {
      v36 = CFDictionaryGetValue(a3, @"selector");
      if (longVal(v36) == 1986290036)
      {
        v37 = CFDictionaryGetValue(a3, @"data");
        v38 = *(this + 33);
        BytePtr = CFDataGetBytePtr(v37);
        memmove((v38 + 362), BytePtr, 0x160uLL);
        return 0;
      }
    }

    return -231;
  }

  if (CFStringCompare(theString1, kSpeechPitchCoeffProperty, 0) == kCFCompareEqualTo)
  {
    v40 = *(this + 31);
    if (v40)
    {
      CFRelease(v40);
    }

    Copy = CFDictionaryCreateCopy(0, a3);
    *(this + 31) = Copy;
    if (!a3 || Copy)
    {
      return 0;
    }

    return -50;
  }

  if (CFStringCompare(theString1, kSpeechPreloadVoiceMetadataProperty, 0) == kCFCompareEqualTo)
  {
    if (*(this + 64) == 1835364215)
    {
      v42 = *(this + 38);
      v43 = longVal(a3);
      MEOWReader::MakeMetadataResident(v42, v43);
    }

    return 0;
  }

  if (CFStringCompare(theString1, kSpeechChannelStatusChangeBlock, 0) == kCFCompareEqualTo)
  {
    *(this + 54) = _Block_copy(a3);
    return 0;
  }

  if (CFStringCompare(theString1, kSpeechChannelAudioSessionID, 0))
  {
    return -231;
  }

  *(this + 110) = longVal(a3);
  return 0;
}

const __CFNumber *longVal(const __CFNumber *result)
{
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberLongType, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int fixedVal(const __CFNumber *a1)
{
  if (a1)
  {
    valuePtr = 0.0;
    LODWORD(a1) = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
    if (a1)
    {
      LODWORD(a1) = vcvts_n_s32_f32(valuePtr, 0x10uLL);
    }
  }

  return a1;
}

void MEOWMMapHint::~MEOWMMapHint(MEOWMMapHint *this)
{
  SLMMapHint::~SLMMapHint(this);

  JUMPOUT(0x259C6DA90);
}

void *std::__list_imp<SpeechChannelManager *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void MTMBDiphoneStatistics::MTMBDiphoneStatistics(MTMBDiphoneStatistics *this)
{
  for (i = 0; i != 80000; i += 32)
  {
    MEOWVectorBase::MEOWVectorBase((this + i), 8);
  }
}

void sub_257B1096C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = (v1 - 32);
    do
    {
      MEOWVectorBase::~MEOWVectorBase(v5);
      v5 = (v6 - 32);
      v4 += 32;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_MT3SpeechChannelMgt_cp()
{
  sListOfActiveSpeechChannels = &sListOfActiveSpeechChannels;
  qword_2811816F8 = &sListOfActiveSpeechChannels;
  qword_281181700 = 0;
  return __cxa_atexit(std::list<SpeechChannelManager *>::~list, &sListOfActiveSpeechChannels, &dword_257B07000);
}

void MTBENotifier::MTBENotifier(MTBENotifier *this)
{
  this->var0 = &unk_2868F4960;
  this->var4 = 0x10000;
  this->var6 = 0;
  this->var7 = 0;
  *this->var8 = 0x5D005D005B005BLL;
  *&this->var5.count = 0;
  *(&this->var5.oldPos + 4) = 0;
  this->var5.newPos = 0;
}

{
  this->var0 = &unk_2868F4960;
  this->var4 = 0x10000;
  this->var6 = 0;
  this->var7 = 0;
  *this->var8 = 0x5D005D005B005BLL;
  *&this->var5.count = 0;
  *(&this->var5.oldPos + 4) = 0;
  this->var5.newPos = 0;
}

MTBENotifier *MTBENotifier::NotifyError(MTBENotifier *this, OSErr a2, uint64_t a3)
{
  count = this->var5.count;
  this->var5.count = count + 1;
  if (!count)
  {
    this->var5.oldest = a2;
    this->var5.oldPos = a3;
  }

  this->var5.newest = a2;
  this->var5.newPos = a3;
  return this;
}

double MTBENotifier::ResetFromVoice(MTBENotifier *this, void *a2, int a3)
{
  if (a3)
  {
    if ((MTBEDebugFlags::sMTXDebug & 4) != 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "MTX: Reset vol %x -> %x behavior %x -> %x\n", this->var4, 0x10000, this->var7, 0);
    }

    this->var7 = 0;
    this->var4 = 0x10000;
    result = 6.45302995e-307;
    *this->var8 = 0x5D005D005B005BLL;
    *&this->var5.count = 0;
    *(&this->var5.oldPos + 4) = 0;
    this->var5.newPos = 0;
  }

  return result;
}

void MTBEDelayedNotifier::MTBEDelayedNotifier(MTBEDelayedNotifier *this, MTBENotifier *a2)
{
  *(this + 5) = 0x10000;
  *(this + 23) = 0;
  *(this + 12) = 0;
  *(this + 52) = 0x5D005D005B005BLL;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 38) = 0;
  *this = &unk_2868F49D8;
  *(this + 8) = a2;
  *(this + 18) = 0;
  MEOWVectorBase::MEOWVectorBase((this + 80), 8);
  MEOWVectorBase::MEOWVectorBase((this + 112), 8);
}

void MTBEDelayedNotifier::~MTBEDelayedNotifier(MTBEDelayedNotifier *this)
{
  *this = &unk_2868F49D8;
  for (i = *(this + 16); i; *(this + 16) = i)
  {
    v3 = *(*(this + 14) + 8 * i - 8);
    if (v3)
    {
      (*(*v3 + 16))(v3);
      i = *(this + 16);
    }

    --i;
  }

  MEOWVectorBase::~MEOWVectorBase(this + 14);
  MEOWVectorBase::~MEOWVectorBase(this + 10);
}

{
  MTBEDelayedNotifier::~MTBEDelayedNotifier(this);

  JUMPOUT(0x259C6DA90);
}

MEOWVectorBase *MTBEDelayedNotifier::StartUnit(MTBEDelayedNotifier *this)
{
  *(this + 9) = 0x3F80000000000000;
  result = MEOWVectorBase::Append((this + 80));
  *(*(this + 10) + 8 * *(this + 12) - 8) = 0;
  return result;
}

void MTBEDelayedNotifier::ForwardUnit(MTBEDelayedNotifier *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    v3 = **(this + 10);
    if (!v3)
    {
      goto LABEL_6;
    }

    for (i = 0; i != v3; ++i)
    {
      v5 = *(*(this + 14) + 8 * i);
      (**v5)(v5, *(this + 8));
      (*(*v5 + 16))(v5);
    }

    v1 = *(this + 12);
    if (!v1)
    {
      MEOWVectorBase::clear(this + 10);

      MEOWVectorBase::clear(this + 14);
    }

    else
    {
LABEL_6:
      memmove(*(this + 10), (*(this + 10) + 8), 8 * v1 - 8);
      v6 = *(this + 12);
      v7 = v6 - 1;
      if (*(this + 13) < (v6 - 1))
      {
        MEOWVectorBase::Allocate((this + 80), v6 - 1, 1);
      }

      v8 = *(this + 14);
      *(this + 12) = v7;
      memmove(v8, &v8[8 * v3], 8 * (*(this + 16) - v3));
      v9 = *(this + 16);
      v10 = v9 - v3;
      if (*(this + 17) < (v9 - v3))
      {
        MEOWVectorBase::Allocate((this + 112), v9 - v3, 1);
      }

      *(this + 16) = v10;
    }
  }

  else
  {
    v11 = *MEMORY[0x277D85DF8];

    fwrite("MacinTalk: No unit callbacks to forward!\n", 0x29uLL, 1uLL, v11);
  }
}

MEOWVectorBase *MEOWVectorBase::Append(MEOWVectorBase *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 == *(this + 3))
  {
    this = MEOWVectorBase::Allocate(this, v2 + 1, 0);
    v2 = *(v1 + 2);
  }

  *(v1 + 2) = v2 + 1;
  return this;
}

void MTBEPhraseParam::MTBEPhraseParam(MTBEPhraseParam *this, MTBEVoiceContents a2, MTFESpeechElement *a3, MTBENotifier *a4, MTBENotifier *a5, MTBENotifier *a6, MTBEPersistentParam *a7)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a7;
  *(this + 6) = 0;
  *(this + 61) = 0;
  v7 = MTBEDebugFlags::sMTXDebug;
  v8 = vdupq_n_s64(MTBEDebugFlags::sMTXDebug);
  *v8.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vceqzq_s64(vandq_s8(v8, xmmword_257B89310)), vceqzq_s64(vandq_s8(v8, xmmword_257B89320)))), 0x1000100010001);
  *(this + 14) = vuzp1_s8(*v8.i8, *v8.i8).u32[0];
  *(this + 60) = (v7 & 0x8000) == 0;
}

void MTBEPhraseProcessor::MTBEPhraseProcessor(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  *(a1 + 56) = a3[3];
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  *(a1 + 8) = v6;
  *a1 = &unk_2868F4B70;
  *(a1 + 80) = a2;
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a3;
  }

  MTBEParam::MTBEParam(a1 + 88, v4, a2, v9);
  memcpy((a1 + 1392), (a1 + 88), 0x518uLL);
  *(a1 + 2696) = 1024;
  operator new[]();
}

void sub_257B113E8(_Unwind_Exception *a1)
{
  MEMORY[0x259C6DA90](v3, 0x10E0C4036EBA818);
  MTFEFrameFiller::~MTFEFrameFiller((v1 + 2728));
  v5 = *(v1 + 2704);
  if (v5)
  {
    MEMORY[0x259C6DA70](v5, v2);
  }

  _Unwind_Resume(a1);
}

void MTBEPhraseProcessor::~MTBEPhraseProcessor(MTBEPhraseProcessor *this)
{
  *this = &unk_2868F4B70;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 529);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 532);
  if (v5)
  {
    MTBEPhraseMemo::~MTBEPhraseMemo(v5);
    MEMORY[0x259C6DA90]();
  }

  v6 = *(this + 533);
  if (v6)
  {
    (*(*v6 + 48))(v6);
  }

  MTFEFrameFiller::~MTFEFrameFiller((this + 2728));
  v7 = *(this + 338);
  if (v7)
  {
    MEMORY[0x259C6DA70](v7, 0x1000C80274DC3F3);
  }
}

{
  MTBEPhraseProcessor::~MTBEPhraseProcessor(this);

  JUMPOUT(0x259C6DA90);
}

void MTBEPhraseProcessor::ProcessPhrase(MTBEPhraseProcessor *this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = (this + 88);
  MTBEParam::SetRate(this + 11, *(*(this + 3) + 10));
  v3 = MTBEParam::MidiToPitch(v2, *(*(this + 3) + 12) >> 8);
  MTBEParam::SetPitch(v2, v3);
  MTBEParam::SetModulation(v2, *(*(this + 3) + 16));
  MTBEParam::SetVolume(v2, *(*(this + 3) + 20));
  MTBEParam::SetRate(this + 174, *(*(this + 5) + 10));
  v4 = MTBEParam::MidiToPitch((this + 1392), *(*(this + 5) + 12) >> 8);
  MTBEParam::SetPitch(this + 1392, v4);
  MTBEParam::SetModulation(this + 1392, *(*(this + 5) + 16));
  MTBEParam::SetVolume(this + 696, *(*(this + 5) + 20));
  v32[0] = &unk_2868F4F40;
  v33 = 0;
  MTFEWord::MTFEWord(&v34, 0, 0);
  MTFESpeechVisitor::Visit(v32, *(this + 2));
  v31[0] = &unk_2868F7A98;
  MTFESpeechVisitor::Visit(v31, *(this + 2));
  v30[0] = &unk_2868F8BB8;
  MTFESpeechVisitor::Visit(v30, *(this + 2));
  if (kMTFEBoundaryModel)
  {
    MTBEDebugParams::GetParam(kMTFEBoundaryModel, &byte_27F8F08F8, byte_27F8F08F8);
    kMTFEBoundaryModel = 0;
  }

  v28 = &unk_2868F4E88;
  v29 = byte_27F8F08F8;
  MTFESpeechVisitor::Visit(&v28, *(this + 2));
  if (kMTFEBoundaryModel)
  {
    MTBEDebugParams::GetParam(kMTFEBoundaryModel, &byte_27F8F08F8, byte_27F8F08F8);
    kMTFEBoundaryModel = 0;
  }

  if (byte_27F8F08F8 == 1)
  {
    v11 = &unk_2868F8930;
    MTFESpeechVisitor::Visit(&v11, *(this + 2));
    MTFESpeechVisitor::~MTFESpeechVisitor(&v11);
  }

  MTFEMarkStress::MTFEMarkStress(v27, *(this + 10), v2, this + 1392, *(this + 3));
  MTFESpeechVisitor::Visit(v27, *(this + 2));
  v26[0] = &unk_2868F77E0;
  MTFESpeechVisitor::Visit(v26, *(this + 2));
  v23 = &unk_2868F57B8;
  v24 = &unk_2868F5860;
  v25 = &unk_2868F5908;
  MTFESpeechVisitor::Visit(&v23, *(this + 2));
  (**this)(this, *(this + 2));
  v22[0] = &unk_2868F8C40;
  MTFESpeechVisitor::Visit(v22, *(this + 2));
  v19[0] = &unk_2868F6158;
  v20 = 0;
  v21 = 0;
  MTFESpeechVisitor::Visit(v19, *(this + 2));
  if (*(this + 1391) == 1)
  {
    MTFEDuration::MTFEDuration(&v11, v2);
    MTFESpeechVisitor::Visit(&v11, *(this + 2));
    MTFESpeechVisitor::~MTFESpeechVisitor(&v11);
  }

  (*(*this + 8))(this, *(this + 2));
  v5 = *(this + 4216);
  v6 = *(this + 1391);
  v16 = 0;
  v15[0] = &unk_2868F5DE0;
  v17 = v5;
  v18 = v6;
  MTFESpeechVisitor::Visit(v15, *(this + 2));
  if ((*(this + 65) & 1) == 0)
  {
    v11 = &unk_2868F5A38;
    v12[0] = &unk_2868F59B0;
    v13 = &v11;
    MTFESpeechVisitor::Visit(&v11, *(this + 2));
    v11 = &unk_2868F5A38;
    MTFESpeechVisitor::~MTFESpeechVisitor(v12);
    MTFESpeechVisitor::~MTFESpeechVisitor(&v11);
  }

  MTFEModDuration::MTFEModDuration(v10, v2, *(this + 10), *(this + 1057));
  MTFESpeechVisitor::Visit(v10, *(this + 2));
  (*(*this + 16))(this, *(this + 2));
  if (*(this + 65) == 1)
  {
    if (*(*(this + 6) + 80))
    {
      operator new();
    }

    operator new();
  }

  v9[0] = &unk_2868F5E98;
  v9[2] = v2;
  MTFESpeechVisitor::Visit(v9, *(this + 2));
  v7 = *(this + 10);
  v11 = &unk_2868F5AF0;
  v12[0] = this + 2696;
  v12[1] = v7;
  v13 = v2;
  MTFESpeechVisitor::Visit(&v11, *(this + 2));
  MTFESpeechVisitor::~MTFESpeechVisitor(&v11);
  MTFESpeechVisitor::~MTFESpeechVisitor(v9);
  v9[0] = &unk_2868F78B8;
  MTFESpeechVisitor::Visit(v9, *(this + 2));
  v8 = *(this + 7);
  if (v8)
  {
    v11 = &unk_2868F79F8;
    v14 = v8;
    MTFESpeechVisitor::Visit(&v11, *(this + 2));
    MTFESpeechVisitor::~MTFESpeechVisitor(&v11);
  }

  (*(*this + 24))(this, *(this + 2));
  MTFEFrameFiller::InitPhrase((this + 2728), *(this + 2));
  MTFESpeechVisitor::~MTFESpeechVisitor(v9);
  MTFESpeechVisitor::~MTFESpeechVisitor(v10);
  MTFESpeechVisitor::~MTFESpeechVisitor(v15);
  MTFESpeechVisitor::~MTFESpeechVisitor(v19);
  MTFESpeechVisitor::~MTFESpeechVisitor(v22);
  v23 = &unk_2868F57B8;
  MTFESpeechVisitor::~MTFESpeechVisitor(&v25);
  MTFESpeechVisitor::~MTFESpeechVisitor(&v24);
  MTFESpeechVisitor::~MTFESpeechVisitor(&v23);
  MTFESpeechVisitor::~MTFESpeechVisitor(v26);
  MTFESpeechVisitor::~MTFESpeechVisitor(v27);
  MTFESpeechVisitor::~MTFESpeechVisitor(&v28);
  MTFESpeechVisitor::~MTFESpeechVisitor(v30);
  MTFESpeechVisitor::~MTFESpeechVisitor(v31);
  v32[0] = &unk_2868F4F40;
  v34.var0 = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement(&v34.var18);
  MTFESpeechElement::~MTFESpeechElement(&v34);
  MTFESpeechVisitor::~MTFESpeechVisitor(v32);
}

void sub_257B11DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  MEMORY[0x259C6DA90](v48, 0x1000C404A43BE38, a3, a4, a5, a6, a7, a8);
  MTFESpeechVisitor::~MTFESpeechVisitor(&a48);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x3F8]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x4D8]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x518]);
  MTFESyllablify::~MTFESyllablify(&STACK[0x538]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x588]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x5B8]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x678]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x688]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x6A0]);
  MTFEPOSResolver::~MTFEPOSResolver(&STACK[0x6B0]);
  _Unwind_Resume(a1);
}

void MTBEPhraseProcessor::SelectUnits(MTBEPhraseProcessor *this, MTFESpeechElement *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 2) != 0)
  {
    v2 = *MEMORY[0x277D85DF8];
    v3[0] = &unk_2868F4E00;
    v3[1] = v2;
    v3[2] = 0;
    v4 = 0;
    v5 = 0;
    MTFESpeechVisitor::Visit(v3, a2);
    MTFESpeechVisitor::~MTFESpeechVisitor(v3);
  }
}

void sub_257B1200C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MTFESpeechVisitor::~MTFESpeechVisitor(va);
  _Unwind_Resume(a1);
}

uint64_t MTBEPhraseProcessor::GenerateSamples(MTBEPhraseProcessor *this, MTBESoundOutput *a2, int *a3)
{
  v4 = a2;
  v28 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 48))(a2) >= 0x200)
  {
    v6 = -7;
    v7 = MEMORY[0x277D85DF8];
    do
    {
      if (__CFADD__(v6++, 1))
      {
        break;
      }

      v26 = 0;
      __Y = 0;
      *__N = 0;
      v25 = 0;
      if (((***(this + 9))() & 1) == 0)
      {
        (*(*v4 + 32))(v4);
        LODWORD(v4) = *(this + 2882);
        *(this + 2882) = 0;
        if ((v4 & 1) == 0)
        {
          if (MTBEDebugFlags::sMEOWDebug)
          {
            fprintf(*v7, "Phrase has %ld samples\n", *(this + 531));
          }

          *(this + 531) = 0;
        }

        v21 = 0;
        return (v21 | v4) & 1;
      }

      v12 = MTBEDebugFlags::sMEOWDebug;
      if (MTBEDebugFlags::sMEOWDebug)
      {
        v13 = v26;
        if (v26 != *(this + 530))
        {
          *(this + 530) = v26;
          if (v13)
          {
            v14 = MTMBDemiProperties::Phon(v13, v27);
          }

          else
          {
            v14 = "SIL";
          }

          fprintf(*v7, "Cut %s at sample %ld\n", v14, *(this + 531));
          (*(*v4 + 24))(v4, v14);
          v12 = MTBEDebugFlags::sMEOWDebug;
        }
      }

      if ((v12 & 0x10) != 0)
      {
        v15 = *v7;
        v16 = MTMBSegment::Abstract(&__Y, v9, v10, v11);
        v17 = cblas_sdot(LOWORD(__N[0]), __Y, 1, __Y, 1);
        LOWORD(v18) = __N[0];
        fprintf(v15, "PP %s %f\n", v16, sqrtf(v17 / v18));
      }

      v19 = LOWORD(__N[0]);
      if (a3)
      {
        *a3 += LOWORD(__N[0]);
      }

      *(this + 531) += v19;
      v20 = (*(*v4 + 16))(v4, __Y);
      MTMBSegment::Free(&__Y);
    }

    while ((v20 & 1) != 0);
  }

  v21 = 1;
  return (v21 | v4) & 1;
}

__n128 MTBEPhraseProcessor::UpdateEngineFromNotifier(float32x2_t *this)
{
  if ((MTBEDebugFlags::sMTXDebug & 4) != 0)
  {
    v3 = this[3];
    v2 = this[4];
    fprintf(*MEMORY[0x277D85DF8], "MTX: UpdateEngineFromNotifier rate %x -> %x pb %x -> %x pm %x -> %x vol %x -> %x behavior %x -> %x\n", v2[2], v3[2], v2[3], v3[3], v2[4], v3[4], v2[5], v3[5], v2[12], v3[12]);
  }

  v4 = this[3];
  v5 = this[4];
  v6 = *(*&v4 + 8);
  if (v6 != *(*&v5 + 8))
  {
    MTBEParam::SetRate(this + 11, v6 >> 16);
    MTBEParam::SetRate(this + 174, *(*&this[5] + 10));
    v4 = this[3];
    v5 = this[4];
  }

  v7 = *(*&v4 + 12);
  if (v7 != *(*&v5 + 12))
  {
    v8 = MTBEParam::MidiToPitch(&this[11], v7 >> 8);
    MTBEParam::SetPitch(&this[11], v8);
    v9 = MTBEParam::MidiToPitch(&this[174], *(*&this[5] + 12) >> 8);
    MTBEParam::SetPitch(&this[174], v9);
    v4 = this[3];
    v5 = this[4];
  }

  v10 = *(*&v4 + 16);
  if (v10 != *(*&v5 + 16))
  {
    MTBEParam::SetModulation(&this[11], v10);
    MTBEParam::SetModulation(&this[174], *(*&this[5] + 16));
    v4 = this[3];
    v5 = this[4];
  }

  v11 = *(*&v4 + 20);
  if (v11 != *(*&v5 + 20))
  {
    MTBEParam::SetVolume(&this[11], v11);
    MTBEParam::SetVolume(&this[174], *(*&this[5] + 20));
    v4 = this[3];
    v5 = this[4];
  }

  result = *(*&v4 + 8);
  v13 = *(*&v4 + 24);
  v14 = *(*&v4 + 40);
  *(*&v5 + 56) = *(*&v4 + 56);
  *(*&v5 + 40) = v14;
  *(*&v5 + 24) = v13;
  *(*&v5 + 8) = result;
  return result;
}

uint64_t MTBEPhraseProcessor::UpdateNotifierFromEngine(MTBEPhraseProcessor *this)
{
  v2 = *(this + 3);
  *(v2 + 8) = MTBEParam::GetRate((this + 88)) << 16;
  v3 = *(this + 3);
  *(v3 + 12) = 3072 * MTBEParam::GetPitch((this + 88)) + 2054400;
  v4 = *(this + 3);
  *(v4 + 16) = MTBEParam::GetModulation((this + 88));
  v5 = *(this + 3);
  *(v5 + 20) = MTBEParam::GetVolume((this + 88));
  if ((MTBEDebugFlags::sMTXDebug & 4) != 0)
  {
    v6 = *(this + 3);
    v7 = *(this + 4);
    fprintf(*MEMORY[0x277D85DF8], "MTX: UpdateNotifierFromEngine rate %x -> %x pb %x -> %x pm %x -> %x vol %x -> %x behavior %x -> %x\n", v6[2], v7[2], v6[3], v7[3], v6[4], v7[4], v6[5], v7[5], v6[12], v7[12]);
  }

  v8 = *(this + 3);
  v9 = *(this + 4);
  v10 = *(v8 + 8);
  v11 = *(v8 + 24);
  v12 = *(v8 + 40);
  *(v9 + 56) = *(v8 + 56);
  *(v9 + 40) = v12;
  *(v9 + 24) = v11;
  *(v9 + 8) = v10;
  v13 = *(this + 5);
  *(v13 + 8) = MTBEParam::GetRate((this + 1392)) << 16;
  v14 = *(this + 5);
  *(v14 + 12) = 3072 * MTBEParam::GetPitch((this + 1392)) + 2054400;
  v15 = *(this + 5);
  *(v15 + 16) = MTBEParam::GetModulation((this + 1392));
  v16 = *(this + 5);
  result = MTBEParam::GetVolume((this + 1392));
  *(v16 + 20) = result;
  return result;
}

void MTBEPhraseProcessor::Create(MTBEPhraseProcessor *this, const VoiceDescription *a2, const void *a3, const MTBEPhraseParam *a4)
{
  v4 = *(this + 1);
  if (v4 != 1734437985)
  {
    if (v4 == 1835364215)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void MTFEPitchRaiseFall::~MTFEPitchRaiseFall(MTFEPitchRaiseFall *this)
{
  *this = &unk_2868F5A38;
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 8));

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F5A38;
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 8));

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F5A38;
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 8));
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESmoothPitch::~MTFESmoothPitch(MTFESmoothPitch *this)
{
  *this = &unk_2868F6628;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x259C6DA70](v2, 0x1000C8052888210);
  }

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  MTFESmoothPitch::~MTFESmoothPitch(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESegmentalPerturbations::~MTFESegmentalPerturbations(MTFESegmentalPerturbations *this)
{
  *this = &unk_2868F6998;
  v2 = (this + 16);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 64));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F6998;
  v2 = (this + 16);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 64));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F6998;
  v2 = (this + 16);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 64));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESyllablify::~MTFESyllablify(MTFESyllablify *this)
{
  *this = &unk_2868F57B8;
  v2 = (this + 8);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 24));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F57B8;
  v2 = (this + 8);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 24));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F57B8;
  v2 = (this + 8);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 24));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEPOSResolver::~MTFEPOSResolver(MTFEPOSResolver *this)
{
  *this = &unk_2868F4F40;
  v2 = (this + 48);
  *(this + 6) = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement((this + 160));
  MTFESpeechElement::~MTFESpeechElement(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F4F40;
  v2 = (this + 48);
  *(this + 6) = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement((this + 160));
  MTFESpeechElement::~MTFESpeechElement(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F4F40;
  v2 = (this + 48);
  *(this + 6) = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement((this + 160));
  MTFESpeechElement::~MTFESpeechElement(v2);
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTBESampleBuffer::MTBESampleBuffer(MTBESampleBuffer *this)
{
  *this = &unk_2868F4C00;
  *(this + 1) = this + 32;
  *(this + 2) = this + 17952;
  *(this + 3) = 0;
}

uint64_t MTBESampleBuffer::NextBuffer(uint64_t this)
{
  v1 = (*(this + 24) + 1) % 3;
  *(this + 24) = v1;
  *(this + 28) = 0;
  v2 = *(this + 8);
  *(this + 8) = this + 8960 * v1 + 32;
  *(this + 16) = v2;
  return this;
}

void MTBEWorker::ExecuteTasks(MTBEWorker *this, const char *a2)
{
  MTBEWorker::DebugLog("<%s> ExecuteTasks\n", a2, *this);
  pthread_mutex_lock((this + 104));
  pthread_mutex_lock((this + 40));
  for (i = *(this + 1); i != *(this + 2); i = *(this + 1))
  {
    v4 = *i;
    v5 = i[2];
    v6 = i[3];
    gettimeofday(&v31, 0);
    v8 = v31.tv_usec + 1000000 * v31.tv_sec;
    if (v8 < v4)
    {
      break;
    }

    v9 = *(this + 1);
    v10 = *(this + 2);
    v11 = (v10 - v9) >> 5;
    if (v11 >= 2)
    {
      v12 = 0;
      v13 = *(v9 + 16);
      v31 = *v9;
      v32 = v13;
      v14 = v9;
      do
      {
        v15 = &v14[2 * v12 + 2];
        v16 = (2 * v12) | 1;
        v17 = 2 * v12 + 2;
        if (v17 < v11)
        {
          v18 = *v15 > *(v15 + 32);
          v15 += 32 * v18;
          if (v18)
          {
            v16 = v17;
          }
        }

        v19 = *(v15 + 16);
        *v14 = *v15;
        v14[1] = v19;
        v14 = v15;
        v12 = v16;
      }

      while (v16 <= ((v11 - 2) >> 1));
      v20 = (v10 - 32);
      if (v15 == v20)
      {
        v7 = v31;
        v23 = v32;
        *v15 = v31;
        *(v15 + 16) = v23;
      }

      else
      {
        v21 = v20[1];
        *v15 = *v20;
        *(v15 + 16) = v21;
        v22 = v32;
        *v20 = v31;
        v20[1] = v22;
        v7 = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v9, v15 + 32, &v30, (v15 + 32 - v9) >> 5);
      }

      v10 = *(this + 2);
    }

    *(this + 2) = v10 - 32;
    v24 = MTBEWorker::sBigBang;
    v25 = *this;
    v26 = (**v5)(v5, v7);
    if (v8 == v4 || v4 == v24)
    {
      MTBEWorker::DebugLog("<%s> Executing [%s]\n", v27, v25, v26, v29);
    }

    else
    {
      MTBEWorker::DebugLog("<%s> Executing [%s] with slippage %.2fms\n", v27, v25, v26, (v8 - v4) / 1000.0);
    }

    pthread_mutex_unlock((this + 40));
    (*(*v5 + 8))(v5, v6);
    pthread_mutex_lock((this + 40));
  }

  pthread_mutex_unlock((this + 40));
  pthread_mutex_unlock((this + 104));
  MTBEWorker::SleepTillReady(this);
}

void MTBEWorker::MTBEWorker(MTBEWorker *this, const char *a2)
{
  *(this + 1) = 0;
  *this = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (MTBEWorker::MTBEWorker(char const*)::sOnceBigBang != -1)
  {
    MTBEWorker::MTBEWorker();
  }

  pthread_mutex_init((this + 40), &MTBEWorker::MTBEWorker(char const*)::sRecursiveMutex);
  pthread_mutex_init((this + 104), &MTBEWorker::MTBEWorker(char const*)::sRecursiveMutex);
  *(this + 46) = 0;
  inactive = dispatch_workloop_create_inactive("com.apple.macintalk.synthesis");
  dispatch_set_qos_class_fallback();
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  *(this + 21) = inactive;
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, inactive);
  *(this + 22) = v4;
  dispatch_set_context(v4, this);
  dispatch_source_set_event_handler_f(*(this + 22), MTBEWorkerExecuteTasks);
  dispatch_source_set_timer(*(this + 22), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x4C4B40uLL);
  dispatch_resume(*(this + 22));
}

void sub_257B12C88(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN10MTBEWorkerC2EPKc_block_invoke()
{
  gettimeofday(&v1, 0);
  MTBEWorker::sBigBang = v1.tv_usec + 1000000 * v1.tv_sec;
  pthread_mutexattr_init(&MTBEWorker::MTBEWorker(char const*)::sRecursiveMutex);

  return pthread_mutexattr_settype(&MTBEWorker::MTBEWorker(char const*)::sRecursiveMutex, 2);
}

void MTBEWorker::~MTBEWorker(MTBEWorker *this, const char *a2)
{
  MTBEWorker::Purge(this, a2);
  dispatch_release(*(this + 22));
  dispatch_release(*(this + 21));
  pthread_mutex_destroy((this + 40));
  pthread_mutex_destroy((this + 104));
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void MTBEWorker::Purge(MTBEWorker *this, const char *a2)
{
  MTBEWorker::DebugLog("<%s> Purge\n", a2, *this);
  pthread_mutex_lock((this + 40));
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; *(this + 2) = i)
  {
    v5 = (i - v3) >> 5;
    if (v5 >= 2)
    {
      v6 = 0;
      v7 = *(v3 + 1);
      v19 = *v3;
      v20 = v7;
      v8 = v3;
      do
      {
        v9 = &v8[2 * v6 + 2];
        v10 = (2 * v6) | 1;
        v11 = 2 * v6 + 2;
        if (v11 < v5)
        {
          v12 = *v9 > *(v9 + 32);
          v9 += 32 * v12;
          if (v12)
          {
            v10 = v11;
          }
        }

        v13 = *(v9 + 16);
        *v8 = *v9;
        v8[1] = v13;
        v8 = v9;
        v6 = v10;
      }

      while (v10 <= ((v5 - 2) >> 1));
      v14 = i - 32;
      if (v9 == v14)
      {
        v17 = v20;
        *v9 = v19;
        *(v9 + 16) = v17;
      }

      else
      {
        v15 = *(v14 + 1);
        *v9 = *v14;
        *(v9 + 16) = v15;
        v16 = v20;
        *v14 = v19;
        *(v14 + 1) = v16;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v3, v9 + 32, &v18, (v9 + 32 - v3) >> 5);
      }

      v3 = *(this + 1);
      i = *(this + 2);
    }

    i -= 32;
  }

  pthread_mutex_unlock((this + 40));
  MTBEWorker::SleepTillReady(this);
}

void MTBEWorker::AddTask(uint64_t *a1, uint64_t (***a2)(void), uint64_t a3, uint64_t *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  sprintf(v26, "%u", (*a4 - MTBEWorker::sBigBang) / 1000);
  v8 = *a1;
  v9 = (**a2)(a2);
  MTBEWorker::DebugLog("<%s> Add Task %p[%s]@%s\n", v10, v8, a2, v9, v26);
  v11 = *a4;
  pthread_mutex_lock((a1 + 5));
  v12 = a1[2];
  v13 = a1[3];
  if (v12 >= v13)
  {
    v15 = a1[1];
    v16 = (v12 - v15) >> 5;
    v17 = v16 + 1;
    if ((v16 + 1) >> 59)
    {
      std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
    }

    v18 = v13 - v15;
    if (v18 >> 4 > v17)
    {
      v17 = v18 >> 4;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>((a1 + 1), v19);
    }

    v20 = (32 * v16);
    *v20 = v11;
    v20[1] = a1;
    v20[2] = a2;
    v20[3] = a3;
    v14 = 32 * v16 + 32;
    v21 = a1[1];
    v22 = a1[2] - v21;
    v23 = (32 * v16 - v22);
    memcpy(v23, v21, v22);
    v24 = a1[1];
    a1[1] = v23;
    a1[2] = v14;
    a1[3] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v12 = v11;
    v12[1] = a1;
    v14 = (v12 + 4);
    v12[2] = a2;
    v12[3] = a3;
  }

  a1[2] = v14;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(a1[1], v14, &v25, (v14 - a1[1]) >> 5);
  pthread_mutex_unlock((a1 + 5));
  MTBEWorker::SleepTillReady(a1);
}

const char *MTBEWorker::DebugLog(const char *this, const char *a2, ...)
{
  va_start(va, a2);
  v5 = *MEMORY[0x277D85DE8];
  if (MTBEDebugFlags::sMTXDebug)
  {
    v2 = this;
    gettimeofday(&v3, 0);
    sprintf(v4, "%u", (v3.tv_usec + 1000000 * v3.tv_sec - MTBEWorker::sBigBang) / 1000);
    vsprintf(&v3, v2, va);
    return asl_log(0, 0, 3, "MTX %s: %s", v4, &v3);
  }

  return this;
}

void MTBEWorker::SleepTillReady(MTBEWorker *this)
{
  v10 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 40));
  v2 = *(this + 1);
  if (v2 == *(this + 2))
  {

    pthread_mutex_unlock((this + 40));
  }

  else
  {
    v3 = *v2;
    pthread_mutex_unlock((this + 40));
    gettimeofday(&v9, 0);
    if (v3 <= v9.tv_usec + 1000000 * v9.tv_sec)
    {
      v7 = *(this + 21);

      dispatch_async_f(v7, this, MTBEWorkerExecuteTasks);
    }

    else
    {
      sprintf(&v9, "%u", (v3 - MTBEWorker::sBigBang) / 1000);
      MTBEWorker::DebugLog("<%s> Sleep till %s\n", v4, *this, &v9);
      when.tv_sec = v3 / 0xF4240;
      when.tv_nsec = 1000 * (v3 % 0xF4240);
      v5 = *(this + 22);
      v6 = dispatch_walltime(&when, 0);
      dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x4C4B40uLL);
    }
  }
}

void MTBEWorker::PurgeTasks(MTBEWorker *this, const char *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = (this + 40);
  MTBEWorker::DebugLog("<%s> PurgeTasks %p\n", a2, *this, a2);
  __p = 0;
  v36 = 0;
  v37 = 0;
  pthread_mutex_lock(v4);
  v5 = *(this + 1);
  for (i = *(this + 2); v5 != i; *(this + 2) = i)
  {
    v7 = *(v5 + 24);
    v31 = *(v5 + 16);
    if (v7 != a2)
    {
      v8 = v36;
      if (v36 >= v37)
      {
        v11 = (v36 - __p) >> 5;
        v12 = v11 + 1;
        if ((v11 + 1) >> 59)
        {
          std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
        }

        v13 = v37 - __p;
        if ((v37 - __p) >> 4 > v12)
        {
          v12 = v13 >> 4;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFE0)
        {
          v14 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(&__p, v14);
        }

        v15 = 32 * v11;
        *v15 = *v5;
        *(v15 + 16) = v31;
        *(v15 + 24) = v7;
        v10 = (32 * v11 + 32);
        v16 = (32 * v11 - (v36 - __p));
        memcpy((v15 - (v36 - __p)), __p, v36 - __p);
        v17 = __p;
        __p = v16;
        v36 = v10;
        v37 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        v9 = *(v5 + 16);
        *v36 = *v5;
        *(v8 + 2) = v9;
        *(v8 + 3) = v7;
        v10 = v8 + 32;
      }

      v36 = v10;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(__p, v10, &v33, (v10 - __p) >> 5);
      v5 = *(this + 1);
      i = *(this + 2);
    }

    v18 = (i - v5) >> 5;
    if (v18 >= 2)
    {
      v19 = 0;
      v20 = *(v5 + 16);
      v33 = *v5;
      v34 = v20;
      v21 = v5;
      do
      {
        v22 = &v21[2 * v19 + 2];
        v23 = (2 * v19) | 1;
        v24 = 2 * v19 + 2;
        if (v24 < v18)
        {
          v25 = *v22 > *(v22 + 32);
          v22 += 32 * v25;
          if (v25)
          {
            v23 = v24;
          }
        }

        v26 = *(v22 + 16);
        *v21 = *v22;
        v21[1] = v26;
        v21 = v22;
        v19 = v23;
      }

      while (v23 <= ((v18 - 2) >> 1));
      v27 = (i - 32);
      if (v22 == v27)
      {
        v30 = v34;
        *v22 = v33;
        *(v22 + 16) = v30;
      }

      else
      {
        v28 = v27[1];
        *v22 = *v27;
        *(v22 + 16) = v28;
        v29 = v34;
        *v27 = v33;
        v27[1] = v29;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v5, v22 + 32, &v32, (v22 + 32 - v5) >> 5);
      }

      v5 = *(this + 1);
      i = *(this + 2);
    }

    i -= 32;
  }

  if ((this + 8) != &__p)
  {
    std::vector<MTBEWorker::TaskRec>::__assign_with_size[abi:ne200100]<MTBEWorker::TaskRec*,MTBEWorker::TaskRec*>(this + 1, __p, v36, (v36 - __p) >> 5);
  }

  pthread_mutex_unlock(v4);
  MTBEWorker::SleepTillReady(this);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }
}

void sub_257B1368C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTBEWorker::PurgeTasks(MTBEWorker *this, MTBEWorker::Task *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = (this + 40);
  v5 = *this;
  v6 = (**a2)(a2);
  MTBEWorker::DebugLog("<%s> PurgeTasks %s\n", v7, v5, v6);
  __p = 0;
  v38 = 0;
  v39 = 0;
  pthread_mutex_lock(v4);
  v8 = *(this + 1);
  for (i = *(this + 2); v8 != i; *(this + 2) = i)
  {
    v10 = *(v8 + 16);
    if (v10 != a2)
    {
      v11 = *(v8 + 24);
      v12 = v38;
      if (v38 >= v39)
      {
        v14 = (v38 - __p) >> 5;
        v15 = v14 + 1;
        if ((v14 + 1) >> 59)
        {
          std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
        }

        v16 = v39 - __p;
        if ((v39 - __p) >> 4 > v15)
        {
          v15 = v16 >> 4;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFE0)
        {
          v17 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(&__p, v17);
        }

        v18 = 32 * v14;
        *v18 = *v8;
        *(v18 + 16) = v10;
        *(v18 + 24) = v11;
        v13 = (32 * v14 + 32);
        v19 = (32 * v14 - (v38 - __p));
        memcpy(v19, __p, v38 - __p);
        v20 = __p;
        __p = v19;
        v38 = v13;
        v39 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v38 = *v8;
        *(v12 + 2) = v10;
        *(v12 + 3) = v11;
        v13 = v12 + 32;
      }

      v38 = v13;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(__p, v13, &v35, (v13 - __p) >> 5);
      v8 = *(this + 1);
      i = *(this + 2);
    }

    v21 = (i - v8) >> 5;
    if (v21 >= 2)
    {
      v22 = 0;
      v23 = *(v8 + 16);
      v35 = *v8;
      v36 = v23;
      v24 = v8;
      do
      {
        v25 = &v24[2 * v22 + 2];
        v26 = (2 * v22) | 1;
        v27 = 2 * v22 + 2;
        if (v27 < v21)
        {
          v28 = *v25 > *(v25 + 32);
          v25 += 32 * v28;
          if (v28)
          {
            v26 = v27;
          }
        }

        v29 = *(v25 + 16);
        *v24 = *v25;
        v24[1] = v29;
        v24 = v25;
        v22 = v26;
      }

      while (v26 <= ((v21 - 2) >> 1));
      v30 = (i - 32);
      if (v25 == v30)
      {
        v33 = v36;
        *v25 = v35;
        *(v25 + 16) = v33;
      }

      else
      {
        v31 = v30[1];
        *v25 = *v30;
        *(v25 + 16) = v31;
        v32 = v36;
        *v30 = v35;
        v30[1] = v32;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v8, v25 + 32, &v34, (v25 + 32 - v8) >> 5);
      }

      v8 = *(this + 1);
      i = *(this + 2);
    }

    i -= 32;
  }

  if ((this + 8) != &__p)
  {
    std::vector<MTBEWorker::TaskRec>::__assign_with_size[abi:ne200100]<MTBEWorker::TaskRec*,MTBEWorker::TaskRec*>(this + 1, __p, v38, (v38 - __p) >> 5);
  }

  pthread_mutex_unlock(v4);
  MTBEWorker::SleepTillReady(this);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }
}

void sub_257B13978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTBEWorker::PendingTasks(MTBEWorker *this, MTBEWorker::Task *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  __p = 0;
  v40 = 0;
  v41 = 0;
  pthread_mutex_lock((this + 40));
  v4 = *(this + 1);
  if (v4 == *(this + 2))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 16);
      v7 = *(v4 + 24);
      v8 = v6 == a2;
      v9 = v40;
      if (v40 >= v41)
      {
        v11 = (v40 - __p) >> 5;
        v12 = v11 + 1;
        if ((v11 + 1) >> 59)
        {
          std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
        }

        v13 = v41 - __p;
        if ((v41 - __p) >> 4 > v12)
        {
          v12 = v13 >> 4;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFE0)
        {
          v14 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(&__p, v14);
        }

        v15 = 32 * v11;
        *v15 = *v4;
        *(v15 + 16) = v6;
        *(v15 + 24) = v7;
        v10 = (32 * v11 + 32);
        v16 = (32 * v11 - (v40 - __p));
        memcpy(v16, __p, v40 - __p);
        v17 = __p;
        __p = v16;
        v40 = v10;
        v41 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v40 = *v4;
        *(v9 + 2) = v6;
        *(v9 + 3) = v7;
        v10 = v9 + 32;
      }

      v40 = v10;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(__p, v10, &v37, (v10 - __p) >> 5);
      v4 = *(this + 1);
      v18 = *(this + 2);
      v19 = (v18 - v4) >> 5;
      if (v19 >= 2)
      {
        v20 = 0;
        v37 = *v4;
        v38 = *(v4 + 16);
        v21 = v4;
        do
        {
          v22 = &v21[2 * v20 + 2];
          v23 = (2 * v20) | 1;
          v24 = 2 * v20 + 2;
          if (v24 < v19)
          {
            v25 = *v22 > *(v22 + 32);
            v22 += 32 * v25;
            if (v25)
            {
              v23 = v24;
            }
          }

          v26 = *(v22 + 16);
          *v21 = *v22;
          v21[1] = v26;
          v21 = v22;
          v20 = v23;
        }

        while (v23 <= ((v19 - 2) >> 1));
        v27 = (v18 - 32);
        if (v22 == v27)
        {
          v29 = v38;
          *v22 = v37;
          *(v22 + 16) = v29;
        }

        else
        {
          v28 = v27[1];
          *v22 = *v27;
          *(v22 + 16) = v28;
          *v27 = v37;
          v27[1] = v38;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v4, v22 + 32, &v36, (v22 + 32 - v4) >> 5);
        }

        v4 = *(this + 1);
        v18 = *(this + 2);
      }

      v5 |= v8;
      v30 = v18 - 32;
      *(this + 2) = v30;
    }

    while (v4 != v30);
  }

  if ((this + 8) != &__p)
  {
    std::vector<MTBEWorker::TaskRec>::__assign_with_size[abi:ne200100]<MTBEWorker::TaskRec*,MTBEWorker::TaskRec*>(this + 1, __p, v40, (v40 - __p) >> 5);
  }

  pthread_mutex_unlock((this + 40));
  v31 = *this;
  v32 = (**a2)(a2);
  v34 = "NO";
  if (v5)
  {
    v34 = "YES";
  }

  MTBEWorker::DebugLog("<%s> PendingTasks %s? -> %s\n", v33, v31, v32, v34);
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  return v5 & 1;
}

void sub_257B13C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279851758, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (a1 + 32 * (v4 >> 1));
    v7 = (a2 - 32);
    v8 = *(a2 - 32);
    if (*v6 > v8)
    {
      v12 = *(a2 - 24);
      v13 = *(a2 - 8);
      do
      {
        v9 = v7;
        v7 = v6;
        v10 = v6[1];
        *v9 = *v6;
        v9[1] = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 32 * v5);
      }

      while (*v6 > v8);
      *v7 = v8;
      result = v12;
      *(v7 + 8) = v12;
      *(v7 + 3) = v13;
    }
  }

  return result;
}

void **std::vector<MTBEWorker::TaskRec>::__assign_with_size[abi:ne200100]<MTBEWorker::TaskRec*,MTBEWorker::TaskRec*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTBEWorker::TaskRec>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<MTBEWorker::TaskRec>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(a1, a2);
  }

  std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
}

void MTBEWritePhonemes::MTBEWritePhonemes(MTBEWritePhonemes *this, char a2)
{
  *this = &unk_2868F4C98;
  *(this + 8) = a2;
  *(this + 9) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

{
  *this = &unk_2868F4C98;
  *(this + 8) = a2;
  *(this + 9) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

MTFESpeechElement *MTBEWritePhonemes::VisitWord(MTBEWritePhonemes *this, MTFEWord *a2)
{
  MTBEWritePhonemes::HandleWord(this, a2);

  return MTFESpeechElement::VisitChildren(a2, this);
}

void MTBEWritePhonemes::HandleWord(MTBEWritePhonemes *this, MTFEWord *a2)
{
  *(this + 12) = 1;
  *(this + 10) = 0;
  *(this + 11) = a2->var15 == 31;
  MTFECommands::Visit(&a2->var18, this);
  if (*(this + 9) == 1)
  {
    v4 = 0;
    v5 = 93;
    do
    {
      v6 = v4 + 1;
      v7 = &asc_257B976CD[v4];
      std::string::push_back((this + 16), v5);
      v5 = v7[1];
      v4 = v6;
    }

    while (v6 != 2);
    *(this + 9) = 0;
  }

  var10 = a2->var10;
  if (var10 == 1)
  {
    v9 = 74;
  }

  else if (var10 == 2)
  {
    v9 = 75;
  }

  else
  {
    var15 = a2->var15;
    if (((1 << var15) & 0xA5273) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 75;
    }

    if (var15 == 255)
    {
      v9 = 2;
    }

    else
    {
      v9 = v11;
    }
  }

  *(this + 13) = v9;
}

void MTBEWritePhonemes::Write(MTBEWritePhonemes *this, std::string::value_type *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2 + 1;
    do
    {
      std::string::push_back((this + 16), v2);
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }
}

void MTBEWritePhonemes::VisitPhoneme(MTBEWritePhonemes *this, MTFEPhoneme *a2)
{
  if (*(this + 12) == 1)
  {
    if (a2->var9)
    {
      v4 = *(this + 39);
      if (v4 < 0)
      {
        v4 = *(this + 3);
      }

      if (v4)
      {
        std::string::push_back((this + 16), 32);
      }

      v5 = *(MEMORY[0x277D65558] + 8 * *(this + 13));
      v6 = *v5;
      if (*v5)
      {
        v7 = (v5 + 1);
        do
        {
          std::string::push_back((this + 16), v6);
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }

    else if (a2->var13 < 2.0)
    {
      return;
    }

    *(this + 12) = 0;
  }

  var9 = a2->var9;
  if (a2->var9 || a2->var6)
  {
    var15 = a2->var15;
    if ((var15 & 0x4000) == 0)
    {
      v11 = MEMORY[0x277D65558];
      if ((var15 & 0x10000000) != 0)
      {
        if (*(this + 10) == 1)
        {
          v12 = *(MEMORY[0x277D65558] + 480);
          v13 = *v12;
          if (*v12)
          {
            v14 = (v12 + 1);
            do
            {
              std::string::push_back((this + 16), v13);
              v15 = *v14++;
              v13 = v15;
            }

            while (v15);
            var9 = a2->var9;
          }
        }

        *(this + 10) = *(this + 8);
      }

      if (*(MEMORY[0x277D65568] + 4 * var9))
      {
        v16 = a2->var15;
        if ((v16 & 0x80000000) != 0)
        {
          *(this + 10) = 1;
        }

        if ((v16 & 0x1400) != 0)
        {
          v17 = *(v11 + 8);
          v18 = *v17;
          if (*v17)
          {
            v19 = (v17 + 1);
            do
            {
              std::string::push_back((this + 16), v18);
              v20 = *v19++;
              v18 = v20;
            }

            while (v20);
          }
        }

        else if ((v16 & 0x800) != 0)
        {
          v22 = *(v11 + 464);
          v23 = *v22;
          if (*v22)
          {
            v24 = (v22 + 1);
            do
            {
              std::string::push_back((this + 16), v23);
              v25 = *v24++;
              v23 = v25;
            }

            while (v25);
          }
        }
      }

      v26 = *(v11 + 8 * a2->var9);
      v27 = *v26;
      if (*v26)
      {
        v28 = (v26 + 1);
        do
        {
          std::string::push_back((this + 16), v27);
          v29 = *v28++;
          v27 = v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    if (*(this + 14) - 68 >= 5)
    {
      v21 = 46;
    }

    else
    {
      v21 = 0x213F2E3A2CuLL >> (8 * (*(this + 14) - 68));
    }

    std::string::push_back((this + 16), v21 & 0x3F);
  }
}

void MTBEWritePhonemes::VisitCommand(uint64_t this, MTFECommand *a2)
{
  if (a2->var8 == 2003792484)
  {
    return;
  }

  v16[7] = v2;
  v16[8] = v3;
  if (*(this + 9))
  {
    std::string::push_back((this + 16), 59);
  }

  else
  {
    v6 = 0;
    v7 = 91;
    do
    {
      v8 = v6 + 1;
      v9 = &asc_257B976D0[v6];
      std::string::push_back((this + 16), v7);
      v7 = v9[1];
      v6 = v8;
    }

    while (v8 != 2);
    *(this + 9) = 1;
  }

  v10 = 0;
  var8 = a2->var8;
  v16[0] = var8;
  if (var8 > 1918989425)
  {
    if (var8 == 1987013746)
    {
      v12 = 1987013741;
    }

    else
    {
      if (var8 != 1918989426)
      {
        goto LABEL_17;
      }

      v12 = 1918989413;
    }
  }

  else if (var8 == 1885495666)
  {
    v12 = 1885495667;
  }

  else
  {
    if (var8 != 1886220146)
    {
      goto LABEL_17;
    }

    v12 = 1886220132;
  }

  v16[0] = v12;
  v10 = 1;
LABEL_17:
  for (i = 0; i != 4; ++i)
  {
    std::string::push_back((this + 16), *(v16 + i));
  }

  var9 = a2->var9;
  if (v10)
  {
    v15 = (this + 16);
    if ((var9 & 0x8000000000000000) != 0)
    {
      std::string::push_back(v15, 45);
      var9 = -var9;
    }

    else
    {
      std::string::push_back(v15, 43);
    }
  }

  MTBEWritePhonemes::WriteFixed(this, var9, 4);
}

void MTBEWritePhonemes::Write(MTBEWritePhonemes *this, std::string::value_type *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      --v3;
      v6 = *a2++;
      std::string::push_back((this + 16), v6);
    }

    while (v3);
  }
}

void MTBEWritePhonemes::WriteFixed(MTBEWritePhonemes *this, unint64_t a2, int a3)
{
  *&v10[19] = *MEMORY[0x277D85DE8];
  v4 = vcvtd_n_f64_s64(a2, 0x10uLL);
  v5 = __exp10(a3);
  sprintf(&v9, "%g", floor(v4 * v5 + 0.5) / v5);
  v6 = v9;
  if (v9)
  {
    v7 = v10;
    do
    {
      std::string::push_back((this + 16), v6);
      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }
}

void MTBEWritePhonemes::WriteLong(MTBEWritePhonemes *this, unint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    do
    {
      std::string::push_back((this + 16), 45);
      v4 = -v2;
      v5 = v2 <= 0;
      v2 = -v2;
    }

    while (!v5);
  }

  else
  {
    v4 = a2;
  }

  if (v4 >= 0xA)
  {
    MTBEWritePhonemes::WriteLong(this, v4 / 0xA);
  }

  std::string::push_back((this + 16), (v4 % 0xA) | 0x30);
}

void MTBEWritePhonemes::~MTBEWritePhonemes(void **this)
{
  *this = &unk_2868F4C98;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F4C98;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEBuilder::MTFEBuilder(MTFEBuilder *this, SLLexer *a2)
{
  this->var0 = &unk_2868F4DC8;
  this->var1 = a2;
  *&this->var2 = 0u;
  *&this->var4 = 0u;
  this->var8 = 1;
  this->var10 = 0;
  *&this->var12 = 0;
  *&this->var15 = 0;
  *&this->var17 = 0x4E4F524D00000000;
  this->var19 = 0;
}

{
  this->var0 = &unk_2868F4DC8;
  this->var1 = a2;
  *&this->var2 = 0u;
  *&this->var4 = 0u;
  this->var8 = 1;
  this->var10 = 0;
  *&this->var12 = 0;
  *&this->var15 = 0;
  *&this->var17 = 0x4E4F524D00000000;
  this->var19 = 0;
}

void MTFEBuilder::~MTFEBuilder(MTFEBuilder *this)
{
  this->var0 = &unk_2868F4DC8;
  var2 = this->var2;
  if (var2)
  {
    (*(var2->var0 + 2))(var2);
  }

  if (this->var19)
  {
    SLTokenRelease();
  }
}

{
  MTFEBuilder::~MTFEBuilder(this);

  JUMPOUT(0x259C6DA90);
}

SLToken *MTFEBuilder::PeekToken(MTFEBuilder *this)
{
  result = this->var19;
  if (!result)
  {
    result = (*this->var1->var0)(this->var1);
    this->var19 = result;
  }

  return result;
}

MTFEBuilder *MTFEBuilder::ParseSentence(MTFEBuilder *this)
{
  this->var7 = 0;
  this->var10 = 0;
  while (1)
  {
    var19 = this->var19;
    if (!var19)
    {
      break;
    }

    this->var19 = 0;
LABEL_5:
    Class = SLTokenGetClass();
    if (Class > 45)
    {
      switch(Class)
      {
        case '[':
          MTFEBuilder::ProcessCommand(this, var19);
          break;
        case '/':
          if (this->var19)
          {
            v5 = 0;
          }

          else
          {
            v6 = (*this->var1->var0)(this->var1);
            this->var19 = v6;
            v5 = v6 == 0;
          }

          (*(this->var0 + 2))(this, v5);
          break;
        case '.':
          if (this->var19 || (v4 = (*this->var1->var0)(this->var1), (this->var19 = v4) != 0))
          {
            if (SLTokenGetClass() == 43)
            {
              SLTokenGetInfo();
            }
          }

          MTFEBuilder::ProcessPunctuation(this, var19);
      }
    }

    else
    {
      switch(Class)
      {
        case ' ':
          MTFEBuilder::ProcessWord(this, var19, 1);
        case '#':
          MTFEBuilder::ProcessMelody(this, var19);
          break;
        case '+':
          MTFEBuilder::ProcessInsert(this, var19, 0);
          break;
      }
    }

    SLTokenRelease();
    if (this->var10)
    {
      return MTFEBuilder::EndIntonationalPhrase(this, 0);
    }
  }

  var19 = (*this->var1->var0)(this->var1);
  this->var19 = 0;
  if (var19)
  {
    goto LABEL_5;
  }

  if (!this->var10)
  {
    (*(this->var0 + 2))(this, 1);
  }

  return MTFEBuilder::EndIntonationalPhrase(this, 0);
}

uint64_t MTFEBuilder::ProcessInsert(MTFEBuilder *this, SLToken *a2, char a3)
{
  SLTokenGetInfo();
  Info = SLTokenGetInfo();
  v8 = Info;
  if (v6 && (Info & 1) == 0 && this->var3)
  {
    MTFEBuilder::ProcessInsertWord(this, a2, 1);
  }

  result = MTFEBuilder::MakeIntonationalPhrase(this);
  if (!((v6 != 0) | v8 & 1) && (a3 & 1) == 0)
  {
    if (!this->var19)
    {
      v10 = (*this->var1->var0)(this->var1);
      this->var19 = v10;
      if (!v10)
      {
        MTFEBuilder::ProcessInsertWord(this, a2, 0);
      }
    }

    result = SLTokenGetClass();
    if (result != 43 && result != 46)
    {
      MTFEBuilder::ProcessInsertWord(this, a2, 0);
    }
  }

  if (v8)
  {
    this->var13 = 1;
  }

  return result;
}

void MTFEBuilder::ProcessCommand(MTFEBuilder *this, SLToken *a2)
{
  SLTokenGetInfo();
  SLTokenGetInfo();
  MTFEBuilder::MakeIntonationalPhrase(this);
  operator new();
}

void sub_257B158B4(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C6DA90](v1, v3);
  _Unwind_Resume(a1);
}

unsigned __int8 *MTFEBuilder::ProcessMelody(MTFEBuilder *this, SLToken *a2)
{
  MTFEBuilder::MakeIntonationalPhrase(this);
  if (!this->var3->var28)
  {
    operator new();
  }

  SLTokenGetHomograph();
  var28 = this->var3->var28;
  Phonemes = SLHomographGetPhonemes();
  result = MTFEMelody::AddNotes(var28, Phonemes);
  for (i = this->var5; i; i = i->var7)
  {
    if ((i->var9 & 0x80000000) == 0)
    {
      break;
    }

    i->var9 = *(this->var3->var28 + 2);
  }

  return result;
}

MTFEBuilder *MTFEBuilder::EndIntonationalPhrase(MTFEBuilder *this, int a2)
{
  v2 = this;
  if (this->var3 && !this->var4)
  {
    MTFEBuilder::MakePhrase(this);
    operator new();
  }

  this->var3 = 0;
  this->var4 = 0;
  if (a2)
  {
    if (this->var20 >= 0xFBu)
    {
      this = MTFEFirstPhoneme(this->var5);
      BYTE2(this->var7) = 70;
      v2->var10 = 1;
    }
  }

  return this;
}

MTFEBuilder *MTFEBuilder::MakePhrase(MTFEBuilder *this)
{
  if (!this->var4)
  {
    MTFEBuilder::MakeIntonationalPhrase(this);
    operator new();
  }

  return this;
}

MTFEBuilder *MTFEBuilder::MakeIntonationalPhrase(MTFEBuilder *this)
{
  if (!this->var3)
  {
    MTFEBuilder::MakeSentence(this);
    operator new();
  }

  return this;
}

MTFEBuilder *MTFEBuilder::EndParagraph(MTFEBuilder *this, int a2)
{
  var2 = this->var2;
  if (var2)
  {
    if (a2)
    {
      v3 = 6;
    }

    else
    {
      v3 = 2;
    }

    var2->var8 |= v3;
    this->var10 = 1;
    var7 = this->var7;
    if (var7)
    {
      var7->var9 = 70;
    }
  }

  this->var8 = 1;
  return this;
}

MTFEBuilder *MTFEBuilder::ResetProduct(MTFEBuilder *this, int a2)
{
  v2 = this;
  if (a2)
  {
    this = this->var2;
    if (this)
    {
      this = (*(this->var0 + 2))(this);
    }
  }

  v2->var2 = 0;
  v2->var10 = 0;
  return this;
}

MTFEBuilder *MTFEBuilder::MakeSentence(MTFEBuilder *this)
{
  if (!this->var2)
  {
    operator new();
  }

  return this;
}

uint64_t MTFEDebugVisitor::StartElement(FILE **this, const char *a2, int a3)
{
  if (*(this + 28) == 1)
  {
    fputc(10, this[1]);
  }

  *(this + 28) = a3 ^ 1;
  fprintf(this[1], "%*s", *(this + 6), "");
  v6 = 32;
  if (a3)
  {
    v6 = 10;
  }

  result = fprintf(this[1], "%s {%c", a2, v6);
  *(this + 6) += 3;
  return result;
}

size_t MTFEDebugVisitor::EndElement(MTFEDebugVisitor *this)
{
  v2 = *(this + 6) - 3;
  *(this + 6) = v2;
  v3 = *(this + 1);
  if (*(this + 28))
  {
    fputc(32, v3);
    *(this + 28) = 0;
  }

  else
  {
    fprintf(v3, "%*s", v2, "");
  }

  v4 = *(this + 1);

  return fwrite("}\n", 2uLL, 1uLL, v4);
}

size_t MTFEDebugVisitor::PrintTags(size_t this, const SLWordTagSet *a2)
{
  if (a2->var0[0])
  {
    v3 = this;
    fputc(123, *(this + 8));
    if (a2->var0[0])
    {
      v4 = 0;
      do
      {
        v5 = SLTagEng::Name(a2->var0[v4 + 1]);
        if (v5 && *v5)
        {
          fprintf(*(v3 + 8), "%s%s");
        }

        else
        {
          fprintf(*(v3 + 8), "%s(?%d?)");
        }

        ++v4;
      }

      while (v4 < a2->var0[0]);
    }

    v6 = *(v3 + 8);

    return fwrite("} ", 2uLL, 1uLL, v6);
  }

  return this;
}

uint64_t MTFEDebugVisitor::VisitSentence(FILE **this, MTFESpeechElement *a2)
{
  MTFEDebugVisitor::StartElement(this, "Sentence", 0);
  if (LOWORD(a2[1].var0))
  {
    fprintf(this[1], " %04x", SLOWORD(a2[1].var0));
  }

  v4 = *(&a2[1].var0 + 1);
  if (v4 != 0.0)
  {
    fprintf(this[1], " %f", v4);
  }

  if (*&a2[1].var2)
  {
    fprintf(this[1], " F %d", *&a2[1].var2);
  }

  v5 = *(&a2[1].var2 + 2);
  if (v5 > 1.0)
  {
    fprintf(this[1], " V %f %f", v5, *&a2[1].var3);
  }

  v6 = *(&a2[1].var3 + 1);
  if (v6 > 1.0)
  {
    fprintf(this[1], " R %f", v6);
  }

  MTFESpeechElement::VisitChildren(a2, this);
  MTFEDebugVisitor::EndElement(this);
  v7 = this[1];

  return fflush(v7);
}

size_t MTFEDebugVisitor::VisitIntonationalPhrase(MTFEDebugVisitor *this, MTFESpeechElement *a2)
{
  *(this + 4) = 0;
  MTFEDebugVisitor::StartElement(this, "IntonationalPhrase", 0);
  if (a2[1].var0)
  {
    fprintf(*(this + 1), " %04x", a2[1].var0);
  }

  if (a2[3].var1 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      fputc(sBegInsertName[(a2[3].var3 >> v4) & 3], *(this + 1));
      ++v5;
      v4 += 2;
    }

    while (v5 < a2[3].var1);
  }

  if (*&a2[3].var2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      fputc(sEndInsertName[(a2[3].var4 >> v6) & 3], *(this + 1));
      ++v7;
      v6 += 2;
    }

    while (v7 < *&a2[3].var2);
  }

  if (*(&a2[2].var2 + 1))
  {
    fprintf(*(this + 1), " C:%d/%d N<%d:%d>", *(&a2[2].var2 + 2), *(&a2[2].var2 + 1), *&a2[2].var2, a2[2].var1);
  }

  if (BYTE6(a2[2].var6) - 68 <= 4)
  {
    fwrite(off_279851808[(BYTE6(a2[2].var6) - 68)], 4uLL, 1uLL, *(this + 1));
  }

  if (a2[3].var6)
  {
    MTFEDebugVisitor::StartElement(this, "Melody", 0);
    var6 = a2[3].var6;
    if (var6->var3)
    {
      v9 = 0;
      do
      {
        v10 = *(this + 1);
        if (v9)
        {
          v11 = " ";
        }

        else
        {
          v11 = "";
        }

        v12 = MTFEMelody::Pitch(var6, v9);
        v13 = MTFEMelody::Duration(a2[3].var6, v9);
        fprintf(v10, "%s%3.0f:%4.2f", v11, v12, v13);
        ++v9;
        var6 = a2[3].var6;
      }

      while (v9 < var6->var3);
    }

    MTFEDebugVisitor::EndElement(this);
  }

  MTFESpeechElement::VisitChildren(a2, this);
  MTFECommands::Visit(&a2[1].var1, this);
  if (BYTE5(a2[2].var6))
  {
    MTFEDebugVisitor::StartElement(this, "FinalBoundary", 0);
    fprintf(*(this + 1), " %s", MTFEToBI::sTone[SBYTE5(a2[2].var6)]);
    v14 = *&a2[3].var5;
    if (v14 != 0.0)
    {
      fprintf(*(this + 1), " %4.2f", v14);
    }

    MTFEDebugVisitor::EndElement(this);
  }

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitIntermediatePhrase(FILE **this, MTFESpeechElement *a2)
{
  MTFEDebugVisitor::StartElement(this, "IntermediatePhrase", 0);
  v4 = SWORD2(a2[1].var0);
  if (WORD2(a2[1].var0))
  {
    v5 = this[1];
    v6 = SWORD1(a2[1].var0);
    var0_low = SLOWORD(a2[1].var0);
    var0_high = SHIWORD(a2[1].var0);
    v9 = *&a2[1].var2;
    var1 = a2[1].var1;
    v11 = SLBndEng::Name(LOBYTE(a2[1].var4));
    fprintf(v5, "%d:%d - %d:%d N<%d:%d> [%s] %p", v6, var0_low, var0_high, v4, v9, var1, v11, a2);
  }

  MTFESpeechElement::VisitChildren(a2, this);
  if (BYTE1(a2[1].var4))
  {
    MTFEDebugVisitor::StartElement(this, "PhraseAccent", 0);
    fprintf(this[1], " %s", MTFEToBI::sTone[SBYTE1(a2[1].var4)]);
    v12 = *(&a2[1].var4 + 1);
    if (v12 != 0.0)
    {
      fprintf(this[1], " %4.2f", v12);
    }

    MTFEDebugVisitor::EndElement(this);
  }

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitWord(FILE **this, MTFESpeechElement *a2)
{
  MTFECommands::Visit(&a2[2], this);
  MTFEDebugVisitor::StartElement(this, "Word", 0);
  if (LOBYTE(a2[3].var5))
  {
    var0 = a2[1].var0;
    if ((var0 & 4) != 0)
    {
      v5 = "-";
    }

    else
    {
      v5 = "";
    }

    if ((var0 & 8) != 0)
    {
      v6 = "-";
    }

    else
    {
      v6 = "";
    }

    fprintf(this[1], "%s%s%s ", v5, &a2[3].var5, v6);
  }

  v7 = a2[1].var0;
  if ((v7 & 0x1000) != 0)
  {
    fwrite("Morph ", 6uLL, 1uLL, this[1]);
    v7 = a2[1].var0;
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_11;
  }

  fwrite("Flex ", 5uLL, 1uLL, this[1]);
  v7 = a2[1].var0;
  if ((v7 & 1) == 0)
  {
LABEL_12:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  fwrite("TUNE ", 5uLL, 1uLL, this[1]);
  v7 = a2[1].var0;
  if ((v7 & 0x800) == 0)
  {
LABEL_13:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  fwrite("ExactPitch ", 0xBuLL, 1uLL, this[1]);
  v7 = a2[1].var0;
  if ((v7 & 0x20) == 0)
  {
LABEL_14:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_22:
  v10 = this[1];
  if ((v7 & 0x8000) != 0)
  {
    fprintf(v10, "CapitalizedButIgnored ");
  }

  else
  {
    fprintf(v10, "Capitalized ");
  }

  if ((a2[1].var0 & 0x40) != 0)
  {
LABEL_15:
    fwrite("Silence ", 8uLL, 1uLL, this[1]);
  }

LABEL_16:
  v8 = BYTE6(a2[1].var4);
  v9 = MEMORY[0x277D65538];
  if (v8 == 255)
  {
    if (LODWORD(a2[1].var5) == 0x7FFFFFFF)
    {
      fwrite("Any ", 4uLL, 1uLL, this[1]);
    }

    else
    {
      for (i = 0; i != 32; ++i)
      {
        if ((LODWORD(a2[1].var5) >> i))
        {
          fprintf(this[1], "%s ", *(v9 + 8 * i));
        }
      }
    }
  }

  else
  {
    fprintf(this[1], "%s ", *(MEMORY[0x277D65538] + 8 * v8));
  }

  MTFEDebugVisitor::PrintTags(this, (&a2[1].var5 + 4));
  if (*(&a2[1].var2 + 2) != 255)
  {
    if (*&a2[1].var1 != 60)
    {
      fputs("...", this[1]);
    }

    fputc(60, this[1]);
    fputs(*(v9 + 8 * *(&a2[1].var2 + 2)), this[1]);
    if (*(&a2[1].var2 + 2))
    {
      fputc(32, this[1]);
      MTFEDebugVisitor::PrintTags(this, (&a2[1].var2 + 4));
    }

    fputc(62, this[1]);
    if (*&a2[1].var1 != 62)
    {
      fputs("...", this[1]);
    }

    fputc(32, this[1]);
  }

  if (HIBYTE(a2[1].var0))
  {
    v12 = this[1];
    v13 = SLBndEng::Name(HIBYTE(a2[1].var0));
    fprintf(v12, "[%s] ", v13);
  }

  if (WORD2(a2[3].var0))
  {
    fprintf(this[1], "%d:%d - %d:%d ", SWORD1(a2[3].var0), SLOWORD(a2[3].var0), SHIWORD(a2[3].var0), SWORD2(a2[3].var0));
  }

  if (a2[3].var1)
  {
    fprintf(this[1], "[%d] ", a2[3].var1);
  }

  if (BYTE6(a2[1].var0))
  {
    fputs(*(MEMORY[0x277D65530] + 8 * BYTE6(a2[1].var0)), this[1]);
  }

  if (*&a2[3].var2)
  {
    fprintf(this[1], " %d", *&a2[3].var2);
  }

  if (*(&a2[3].var2 + 1))
  {
    fprintf(this[1], " <%d>", *(&a2[3].var2 + 1));
  }

  if ((SWORD2(a2[1].var0) & 0x80000000) == 0)
  {
    fprintf(this[1], " :%d", SWORD2(a2[1].var0));
  }

  var6 = a2[4].var6;
  if (var6)
  {
    v15 = this[1];
    v16 = MEOWPhon::Name(LOBYTE(var6->var0));
    v17 = MEOWPhon::Name(BYTE1(var6->var0));
    v18 = bswap32(WORD1(var6->var0)) >> 16;
    v19 = MEOWPhon::Name(BYTE4(var6->var0));
    v20 = MEOWPhon::Name(BYTE5(var6->var0));
    fprintf(v15, " [%s-%s#%d - %s-%s#%d]", v16, v17, v18, v19, v20, bswap32(HIWORD(var6->var0)) >> 16);
  }

  MTFESpeechElement::VisitChildren(a2, this);

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitHomograph(FILE **this, MTFESpeechElement *a2)
{
  MTFEDebugVisitor::StartElement(this, "Homograph", 0);
  if (LODWORD(a2[1].var0) == 0x7FFFFFFF)
  {
    fwrite("Any", 3uLL, 1uLL, this[1]);
  }

  else
  {
    v4 = 0;
    v5 = MEMORY[0x277D65538];
    do
    {
      if ((LODWORD(a2[1].var0) >> v4))
      {
        fprintf(this[1], "%s ", *(v5 + 8 * v4));
      }

      ++v4;
    }

    while (v4 != 32);
  }

  MTFEDebugVisitor::PrintTags(this, (&a2[1].var0 + 4));
  MTFESpeechElement::VisitChildren(a2, this);

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitSyllable(FILE **this, MTFESpeechElement *a2)
{
  MTFEDebugVisitor::StartElement(this, "Syllable", 0);
  if (WORD2(a2[1].var0))
  {
    fprintf(this[1], "%d:%d-%d", SLOWORD(a2[1].var0), SWORD1(a2[1].var0), SWORD2(a2[1].var0));
  }

  if (HIWORD(a2[1].var0))
  {
    fprintf(this[1], " %s", MTFEToBI::sTone[SHIWORD(a2[1].var0)]);
    v4 = *&a2[1].var1;
    if (v4 != 0.0)
    {
      fprintf(this[1], " %4.2f", v4);
    }
  }

  MTFESpeechElement::VisitChildren(a2, this);

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitPhoneme(FILE **this, MTFESpeechElement *a2)
{
  v4 = BYTE2(a2[1].var0);
  v5 = BYTE3(a2[1].var0);
  if (BYTE3(a2[1].var0))
  {
    if ((v4 - 46) > 4)
    {
      v6 = "!!!";
    }

    else
    {
      v6 = off_279851830[(v4 - 46)];
    }
  }

  else
  {
    v6 = *(MEMORY[0x277D65550] + 8 * v4);
  }

  v7 = MEOWPhon::sP2M[v4];
  MTFEDebugVisitor::StartElement(this, "Phoneme", 0);
  v8 = *&a2[1].var1;
  v9 = *(&a2[1].var2 + 2);
  v10 = v8;
  v11 = (v8 * v9);
  v12 = (v8 * (1.0 - v9));
  var7 = a2->var7;
  if (var7)
  {
    if (var7 == this[4])
    {
      v14 = 60;
    }

    else
    {
      v14 = 33;
    }
  }

  else
  {
    v14 = 32;
  }

  v15 = 62;
  if (!a2->var6)
  {
    v15 = 32;
  }

  fprintf(this[1], "%3s %08x %3d %5.1f(%5.1f/%5.1f) %c%c %d", v6, LODWORD(a2[1].var3), SWORD2(a2[1].var0), v10, v11, v12, v14, v15, SLOWORD(a2[1].var0));
  if (BYTE5(a2[1].var5))
  {
    fputc(32, this[1]);
    if (this[2] && SLOWORD(a2[1].var5) != -1 && SWORD1(a2[1].var5) != -1)
    {
      MEOWVectorBase::MEOWVectorBase(v35, 2);
      v16 = this[2];
      DemiRecord = MEOWReader::GetDemiRecord(v16, BYTE4(a2[1].var5), BYTE5(a2[1].var5), LOWORD(a2[1].var5), 1);
      MEOWReader::GetDemi(v16, DemiRecord, 1, v33);
      v18 = v34;
      v19 = this[2];
      v20 = MEOWReader::GetDemiRecord(v19, BYTE5(a2[1].var5), BYTE6(a2[1].var5), WORD1(a2[1].var5), 0);
      MEOWReader::GetDemi(v19, v20, 0, v33);
      if (v34 == v18)
      {
        fputc(38, this[1]);
      }

      MEOWVectorBase::~MEOWVectorBase(v35);
    }

    fputc(91, this[1]);
    if (SLOWORD(a2[1].var5) != -1)
    {
      v21 = this[1];
      v22 = MEOWPhon::Name(BYTE4(a2[1].var5));
      v23 = MEOWPhon::Name(BYTE5(a2[1].var5));
      if (SWORD1(a2[1].var5) == -1)
      {
        v24 = " ...";
      }

      else
      {
        v24 = " ";
      }

      fprintf(v21, "%s>%s#%d%s", v22, v23, LOWORD(a2[1].var5), v24);
    }

    if (SWORD1(a2[1].var5) != -1)
    {
      v25 = this[1];
      if (SLOWORD(a2[1].var5) == -1)
      {
        v26 = "... ";
      }

      else
      {
        v26 = "";
      }

      v27 = MEOWPhon::Name(BYTE5(a2[1].var5));
      v28 = MEOWPhon::Name(BYTE6(a2[1].var5));
      fprintf(v25, "%s%s<%s#%d", v26, v27, v28, WORD1(a2[1].var5));
    }

    fputc(93, this[1]);
  }

  if (HIDWORD(a2[1].var3))
  {
    fprintf(this[1], " @%u", HIDWORD(a2[1].var3));
  }

  if (a2[1].var4)
  {
    MTFEDebugVisitor::StartElement(this, "Pitch", 0);
    var4 = a2[1].var4;
    if (SLODWORD(var4->var0) >= 1)
    {
      v30 = 0;
      do
      {
        fprintf(this[1], " %5.1f:%d", ((*(&var4->var1 + v30) & 0xFFFFFFLL) / 100.0), *(&var4->var1 + v30) >> 24);
        ++v30;
        var4 = a2[1].var4;
      }

      while (v30 < SLODWORD(var4->var0));
    }

    MTFEDebugVisitor::EndElement(this);
  }

  if (v5)
  {
    v31 = v7 + 1;
  }

  else
  {
    v31 = v7;
  }

  MTFESpeechElement::VisitChildren(a2, this);
  result = MTFEDebugVisitor::EndElement(this);
  *(this + 29) = v31;
  this[4] = a2;
  return result;
}

size_t MTFEDebugVisitor::VisitCommand(FILE **this, MTFECommand *a2)
{
  MTFEDebugVisitor::StartElement(this, "Command", 0);
  var9 = a2->var9;
  if ((var9 >> 24) <= 0x7F)
  {
    v5 = *(MEMORY[0x277D85DE0] + 4 * ((var9 >> 24) & 0x7F) + 60) & 0x100;
  }

  else
  {
    v5 = __maskrune(var9 >> 24, 0x100uLL);
  }

  v6 = this[1];
  if (v5)
  {
    fprintf(v6, "%c%c%c%c %c%c%c%c", (SLODWORD(a2->var8) >> 24), ((LODWORD(a2->var8) << 8) >> 24));
  }

  else
  {
    fprintf(v6, "%c%c%c%c %08X");
  }

  return MTFEDebugVisitor::EndElement(this);
}

void MTFEDebugVisitor::Dump(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  v2 = *MEMORY[0x277D85DF8];
  v3[0] = &unk_2868F4E00;
  v3[1] = v2;
  v3[2] = 0;
  v4 = 0;
  v5 = 0;
  MTFESpeechVisitor::Visit(v3, this);
  MTFESpeechVisitor::~MTFESpeechVisitor(v3);
}

void sub_257B1766C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MTFESpeechVisitor::~MTFESpeechVisitor(va);
  _Unwind_Resume(a1);
}

void MTFEDebugVisitor::~MTFEDebugVisitor(MTFEDebugVisitor *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFEPhrasing::VisitIntonationalPhrase(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  if (!BYTE4(a2[2].var6))
  {
    HIBYTE(this->var1) = a2->var1 < 10;
    *&this->var2 = 0;
    *(&this->var2 + 2) = 0;
    return MTFESpeechElement::VisitChildren(a2, this);
  }

  return this;
}

MTFEWord *MTFEPhrasing::VisitWord(MTFEWord *this, MTFEWord *a2)
{
  v3 = this;
  var15 = a2->var15;
  var11 = a2->var11;
  v6 = a2->var11 != 0;
  var1_low = LOBYTE(this->var1);
  v30 = -1;
  if (a2->var12 == 60 || (this = MTFEWord::PrevWord(a2)) == 0)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v8 = this;
    this = MTFEWord::POSForPrev(this, &v30, 0, 0);
    if (v8->var12 == 62)
    {
      LOBYTE(v9) = 0;
      if (!var11)
      {
LABEL_5:
        v6 = v8->var11 > 2u;
        goto LABEL_9;
      }
    }

    else
    {
      v9 = (LOBYTE(v8->var8) >> 4) & 1;
      if (!var11)
      {
        goto LABEL_5;
      }
    }

    v6 = 1;
  }

LABEL_9:
  v29 = -1;
  v28 = -1;
  v27 = -1;
  v10 = 1;
  v11 = 1;
  v12 = 1;
  if (a2->var12 != 62)
  {
    this = MTFEWord::NextWord(a2);
    if (this && (v25 = 0, v26 = 0, MTFEWord::POSForNext(this, &v29, 0, &v26), v12 = v29 == 31, (this = v26) != 0) && (MTFEWord::POSForNext(v26, &v28, 0, &v25), v10 = v28 == 31, (this = v25) != 0))
    {
      this = MTFEWord::POSForNext(v25, &v27, 0, 0);
      v11 = v27 == 31;
    }

    else
    {
      v11 = 1;
    }
  }

  v13 = 1 << var15;
  if (var15 == 255)
  {
    v13 = 0;
  }

  v14 = v30;
  v15 = 1 << v30;
  if (v30 == 255)
  {
    v15 = 0;
  }

  v16 = v29;
  if (v29 == 255)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1 << v29;
  }

  if (var15 == 31)
  {
    v18 = *(&v3->var2 + 2);
    goto LABEL_57;
  }

  if (v12)
  {
    goto LABEL_53;
  }

  if (v3->var2 == 1)
  {
    v3->var2 = 0;
    v19 = 11;
    goto LABEL_51;
  }

  v20 = v27;
  v21 = (v17 & 0x102000) != 0;
  if (var15 != 14)
  {
    v21 = 0;
  }

  if (v30 != 255)
  {
    v21 = 0;
  }

  v3->var2 = v21;
  if (v6)
  {
    goto LABEL_53;
  }

  if (v14 == 255 || var15 != 11)
  {
    if (var15 != 14 || *(&v3->var2 + 2) < 5 || v16 == 6 || v14 == 8 || (v14 & 0xFE) == 2)
    {
      goto LABEL_43;
    }

LABEL_50:
    v19 = 12;
    goto LABEL_51;
  }

  if ((*(&v3->var2 + 1) & 1) == 0 && *(&v3->var2 + 2) >= 4 && v28 != 10)
  {
    goto LABEL_50;
  }

LABEL_43:
  if ((v15 & 0x200000) != 0 && *(&v3->var2 + 2) > 2)
  {
    goto LABEL_50;
  }

  if ((v13 & 0x140000) != 0 && *(&v3->var2 + 2) >= 4 && (v15 & 0x400) == 0)
  {
    goto LABEL_50;
  }

  v22 = *(&v3->var2 + 2);
  if (var15 == 12 && v22 > 4)
  {
    goto LABEL_50;
  }

  if (v22 >= 3 && (v15 & 0x33) != 0 && (v13 & 0x10C) != 0)
  {
    goto LABEL_61;
  }

  if (v14)
  {
    if (var15 == 10)
    {
LABEL_64:
      if (v22 >= 4 && !v10 && (v15 & 0xC00) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_79;
    }

    goto LABEL_79;
  }

  if (v22 >= 5 && (v17 & 0x110C) == 0 && v28 != 2 && (v13 & 0x10C) != 0 || ((var15 != 12) & v9) == 1 && (v17 & 0xC04) == 0 && v22 >= 4 && var15 == 1)
  {
LABEL_61:
    v19 = 13;
    goto LABEL_51;
  }

  if (var15 == 10)
  {
    goto LABEL_64;
  }

  if (var15 == 1)
  {
    if (v22 <= 2)
    {
      goto LABEL_100;
    }

    goto LABEL_61;
  }

LABEL_79:
  if (v14 == 19 && (v13 & 0x2080) == 0 && v22 >= 3 && (v13 & 0x41) != 0)
  {
LABEL_83:
    v19 = 14;
    goto LABEL_51;
  }

  if (var15 == 12)
  {
    v24 = v20 != 255 && ((1 << v20) & 0x10C) != 0;
    if (v22 < 4 || (v15 & 0x33) == 0 || v24)
    {
      goto LABEL_100;
    }

LABEL_99:
    v19 = 15;
    goto LABEL_51;
  }

  if (var15 == 17 && v22 >= 6 && (v15 & 0x214C) == 0 && v28 != 11)
  {
    goto LABEL_99;
  }

LABEL_100:
  if ((v15 & 0xA5273) != 0 && (v13 & 0xA5273) == 0)
  {
    var1_low = 0;
    v19 = 16;
    if (v14 != 4 || (v13 & 0x200000) == 0)
    {
LABEL_51:
      if (((v6 | var1_low) & 1) == 0)
      {
        a2->var11 = v19;
      }

      goto LABEL_53;
    }
  }

  if (var15 == 15 && v22 >= 4 && !v10 && !v11)
  {
    var1_low = 0;
    v19 = 16;
    goto LABEL_51;
  }

LABEL_53:
  v18 = *(&v3->var2 + 2);
  if (v18 >= 2)
  {
    *(&v3->var2 + 1) = 0;
  }

  if ((v13 & 0x2000) != 0)
  {
    *(&v3->var2 + 1) = 1;
  }

LABEL_57:
  *(&v3->var2 + 2) = v18 + 1;
  return this;
}

void MTFEPhrasing::~MTFEPhrasing(MTFEPhrasing *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFEPOSResolver::VisitSentence(MTFEPOSResolver *this, MTFESpeechElement *a2)
{
  v2 = (a2[1].var0 & 8) != 0 || a2->var1 == 1 && a2->var3->var3->var1 == 1;
  *(this + 9) = v2;
  *(this + 10) = 0;
  return MTFESpeechElement::VisitChildren(a2, this);
}

MTFESpeechElement *MTFEPOSResolver::VisitIntonationalPhrase(MTFEPOSResolver *this, MTFESpeechElement *a2)
{
  *(this + 8) = 0;
  *(this + 4) = 100;
  *(this + 12) = a2[1].var0 & 1;
  var6 = a2->var6;
  if (var6)
  {
    if (var6[3].var1)
    {
      LOBYTE(var6) = (var6[3].var3 & 3) == 1;
    }

    else
    {
      LOBYTE(var6) = 0;
    }
  }

  *(this + 13) = var6;
  *(this + 14) = a2[3].var6 != 0;
  return MTFESpeechElement::VisitChildren(a2, this);
}

void MTFEPOSResolver::VisitWord(MTFEPOSResolver *this, MTFESpeechElement *a2)
{
  *(this + 11) = 0;
  MTFECommands::Visit(&a2[2], this);
  var5 = a2[1].var5;
  v857 = *(&a2[1].var5 + 4);
  v856 = -1;
  v855 = 0;
  MTFESpeechPedigree::MTFESpeechPedigree(v852, a2);
  if ((BYTE1(a2[1].var0) & 2) != 0)
  {
    BYTE6(a2[1].var4) = SLFirstPOSInSet();
  }

  v842 = a2;
  if (!var5)
  {
    v10 = 0;
    v840 = 0;
    var3 = a2->var3;
    LODWORD(var15) = 255;
    LODWORD(v13) = 255;
    goto LABEL_237;
  }

  v4.i32[0] = var5;
  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  v7 = a2->var1 == 1 && v5.i32[0] <= 1u && (var5 & 0x10880) == 0;
  v840 = var5;
  if (v7)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v14 = *MEMORY[0x277D85E08];
      v15 = *(MEMORY[0x277D65538] + 8 * var15);
      v16 = SLTagEng::Name(0);
      fprintf(v14, "POS %s %s%s%s %s [%d] %08x %08x\n", &a2[3].var5, v15, "", "", v16, 352, v840, v855);
    }

    var3 = 0;
    v10 = 0;
    goto LABEL_207;
  }

  v851 = 0;
  var17.var0[0] = 0;
  v849 = -1;
  v848.var0[0] = 0;
  if (*&a2[1].var1 == 60)
  {
    v8 = 0;
    v9 = 0;
    v832 = 1;
  }

  else
  {
    Word = MTFEWord::PrevWord(a2);
    v9 = Word;
    if (Word)
    {
      MTFEWord::POSForPrev(Word, &v856, &var17, &v851);
    }

    if (v851)
    {
      MTFEWord::POSForPrev(v851, &v849, &v848, 0);
    }

    if (v856 == 255)
    {
      v832 = *(v853 + 48) == 0;
      if (*(v853 + 176))
      {
        v8 = (*(v853 + 184) & 3) == 1;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v832 = 0;
    }
  }

  v846 = 0;
  v847 = 0;
  *v845 = 0;
  v844.var0[0] = 0;
  v843.var0[0] = 0;
  if (*&a2[1].var1 == 62)
  {
    v18 = 0;
    v834 = 0;
    v836 = 0;
    v19 = 0;
    v831 = 1;
    v829 = 0;
    v830 = 1;
    goto LABEL_56;
  }

  v20 = MTFEWord::NextWord(a2);
  v18 = v20;
  if (v20)
  {
    if ((v20[1].var0 & 0x40) != 0)
    {
      v21 = LOBYTE(v20[3].var5) != 60 || BYTE1(v20[3].var5) != 32 || BYTE2(v20[3].var5) != 0;
    }

    else
    {
      v21 = 0;
    }

    var0_high = HIBYTE(v20[1].var0);
    v19 = var0_high == 9 || var0_high == 4;
    MTFEWord::POSForNext(v20, &v855, &v844, &v847);
    if (v847)
    {
      if (v21)
      {
        v21 = (LOBYTE(v847->var8) >> 6) & 1;
      }

      MTFEWord::POSForNext(v847, &v845[1], &v843, &v846);
    }

    if (v846)
    {
      if (v21)
      {
        v21 = (LOBYTE(v846->var8) >> 6) & 1;
      }

      MTFEWord::POSForNext(v846, v845, 0, 0);
    }

    if (!v21)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v19 = 0;
  }

  if (!*(v854 + 40))
  {
    v834 = *(this + 13);
    v836 = 0;
    goto LABEL_55;
  }

LABEL_54:
  v834 = 0;
  v836 = 1;
LABEL_55:
  v830 = (v845[1] & 0x7FFFFFFF) == 0;
  v831 = (v855 & 0x7FFFFFFF) == 0;
  v829 = (v845[0] & 0x7FFFFFFF) != 0;
LABEL_56:
  if (SLWordTagSet::find(&v857))
  {
    var8 = v842->var8;
    if ((var8 & 0x80) != 0)
    {
      v26 = this;
      if ((*(this + 10) & ((var8 & 0x10000) >> 16)) != 0)
      {
        v25 = 71;
      }

      else
      {
        v25 = 70;
      }
    }

    else
    {
      v25 = 71;
      v26 = this;
    }

    if (MTFEPOSResolver::RequireTagAndPOS(v26, v842, v25, 0x7FFFFFFF))
    {
      v840 = *(this + 7);
      v857 = *(this + 2);
    }
  }

  else if (v842->var27[1])
  {
    *(this + 10) = (v842->var8 & 0x80) != 0;
  }

  if (SLWordTagSet::find(&v857))
  {
    v27 = (v842->var8 & 0x100) != 0 ? 72 : 73;
    if (MTFEPOSResolver::RequireTagAndPOS(this, v842, v27, 0x7FFFFFFF))
    {
      v840 = *(this + 7);
      v857 = *(this + 2);
    }
  }

  if (SLWordTagSet::find(&v857))
  {
    if ((v842->var8 & 0x200) != 0)
    {
      v28 = 1039;
    }

    else
    {
      v28 = SLWordTagSet::find(&v844) ? 1038 : 1039;
    }

    if (MTFEPOSResolver::RequireTagAndPOS(this, v842, v28, 0x7FFFFFFF))
    {
      v29 = *(this + 7);
      v857 = *(this + 2);
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v30 = *MEMORY[0x277D85E08];
        v31 = *(MEMORY[0x277D65538] + 2040);
        v32 = SLTagEng::Name(0);
        fprintf(v30, "POS %s %s%s%s %s [%d] %08x %08x\n", v842->var27, v31, "", "", v32, 480, v29, v855);
      }

      v840 = v29;
    }
  }

  if (SLWordTagSet::find(&v857))
  {
    if ((*(this + 9) & 1) != 0 || (*(this + 11) & 1) != 0 || *(this + 14) == 1 && strcmp(v842->var27, "THE") && (v842->var27[0] != 65 || v842->var27[1]))
    {
      goto LABEL_87;
    }

    LOWORD(v838) = 66;
    if (v842->var10 == 1)
    {
      goto LABEL_90;
    }

    v70 = (v842->var8 & 0x2000) != 0 ? 66 : 67;
    LOWORD(v838) = v70;
    if ((v836 | ((v842->var8 & 0x2000) >> 13)))
    {
      goto LABEL_90;
    }

    if (v19 || v842->var27[0] == 73 && v842->var27[1] == 84 && !v842->var27[2])
    {
      v842->var10 = 2;
    }

    if ((v834 & 1) == 0 || strcmp(v842->var27, "THE") && (v842->var27[0] != 65 || v842->var27[1]))
    {
LABEL_87:
      v33 = 66;
    }

    else
    {
      v33 = 67;
    }

    LOWORD(v838) = v33;
  }

  else
  {
    LOWORD(v838) = 0;
  }

LABEL_90:
  if (!SLWordTagSet::find(&v857))
  {
    goto LABEL_104;
  }

  v34 = v842;
  if ((v842->var8 & 0x8020) != 0x20 || *(this + 12) == 1 && (v35 = SLWordTagSet::find(&v844), v34 = v842, !v35) || (var27 = v34->var27, v34->var27[0] == 73) && !v34->var27[1])
  {
    if (MTFEPOSResolver::RequireTagAndPOS(this, v34, 77, 0x7FFFFFFF))
    {
      v840 = *(this + 7);
      v857 = *(this + 2);
    }

    goto LABEL_104;
  }

  if (!MTFEPOSResolver::RequireTagAndPOS(this, v34, 76, 0x7FFFFFFF))
  {
LABEL_104:
    LODWORD(var15) = 255;
    goto LABEL_105;
  }

  if (kMTFEDebugPOS)
  {
    MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
    kMTFEDebugPOS = 0;
  }

  if (byte_27F8F0908 == 1)
  {
    v37 = *MEMORY[0x277D85E08];
    v38 = *MEMORY[0x277D65538];
    v39 = SLTagEng::Name(0x4C);
    fprintf(v37, "POS %s %s%s%s %s [%d] %08x %08x\n", var27, v38, "", "", v39, 520, v840, v855);
  }

  LODWORD(var15) = 0;
  LOWORD(v838) = 76;
LABEL_105:
  v40 = v842->var27;
  if (!strcmp(v842->var27, "PRES."))
  {
    if (SLWordTagSet::find(&v844))
    {
      HIBYTE(v18[1].var0) = 2;
      strcpy(v40, "PRESIDENT");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v41 = *MEMORY[0x277D85E08];
        v42 = *(MEMORY[0x277D65538] + 8 * var15);
        v43 = SLTagEng::Name(0x40C);
        fprintf(v41, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v42, "", "", v43, 536, v840, v855);
      }

      v44 = 1036;
    }

    else
    {
      strcpy(v40, "PRESENTS");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v45 = *MEMORY[0x277D85E08];
        v46 = *(MEMORY[0x277D65538] + 8);
        v47 = SLTagEng::Name(0x40D);
        fprintf(v45, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v46, "", "", v47, 541, v840, v855);
      }

      LODWORD(var15) = 1;
      v44 = 1037;
    }

    LOWORD(v838) = v44;
  }

  if (!strcmp(v40, "EXPY"))
  {
    if ((SLWordTagSet::find(&var17) & 1) != 0 || v9 && (v9->var8 & 0x20) != 0)
    {
      v48 = 1056;
    }

    else
    {
      v48 = 1057;
    }

    v838 = v48;
    MTFEPOSResolver::RequireTagAndPOS(this, v842, v48, 0x7FFFFFFF);
    v49 = *(this + 7);
    v857 = *(this + 2);
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v50 = *MEMORY[0x277D85E08];
      v51 = *(MEMORY[0x277D65538] + 8 * var15);
      v52 = SLTagEng::Name(v838);
      fprintf(v50, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v51, "", "", v52, 556, v49, v855);
    }

    v840 = v49;
  }

  if (SLWordTagSet::find(&v857))
  {
    v53 = SLWordTagSet::find(&v857);
    if (SLWordTagSet::find(&var17))
    {
      *&v842->var10 = 516;
      strcpy(v40, "DRIVE");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v54 = *MEMORY[0x277D85E08];
        v55 = *MEMORY[0x277D65538];
        v56 = SLTagEng::Name(0x402);
        fprintf(v54, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v55, "", "", v56, 577, v840, v855);
      }

LABEL_206:
      LODWORD(var15) = 0;
      var3 = 0;
      v10 = 1026;
      goto LABEL_207;
    }

    if (v53)
    {
      if (SLWordTagSet::find(&v844))
      {
        HIBYTE(v18[1].var0) = 2;
        strcpy(v40, "DOCTOR");
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v64 = *MEMORY[0x277D85E08];
          v65 = *MEMORY[0x277D65538];
          v66 = SLTagEng::Name(0x403);
          fprintf(v64, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v65, "", "", v66, 582, v840, v855);
        }

LABEL_157:
        LODWORD(var15) = 0;
        var3 = 0;
        v10 = 1027;
        goto LABEL_207;
      }

      if (((1 << v856) & 0x41) == 0)
      {
        if ((v855 & 0x41) != 0)
        {
          HIBYTE(v18[1].var0) = 2;
          strcpy(v40, "DOCTOR");
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v118 = *MEMORY[0x277D85E08];
            v119 = *MEMORY[0x277D65538];
            v120 = SLTagEng::Name(0x403);
            fprintf(v118, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v119, "", "", v120, 593, v840, v855);
          }
        }

        else
        {
          strcpy(v40, "DOCTOR");
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v139 = *MEMORY[0x277D85E08];
            v140 = *MEMORY[0x277D65538];
            v141 = SLTagEng::Name(0x403);
            fprintf(v139, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v140, "", "", v141, 598, v840, v855);
          }
        }

        goto LABEL_157;
      }

LABEL_202:
      *&v842->var10 = 516;
      strcpy(v40, "DRIVE");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v81 = *MEMORY[0x277D85E08];
        v82 = *MEMORY[0x277D65538];
        v83 = SLTagEng::Name(0x402);
        fprintf(v81, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v82, "", "", v83, 588, v840, v855);
      }

      goto LABEL_206;
    }

    if (((1 << v856) & 0x41) != 0)
    {
      goto LABEL_202;
    }

    goto LABEL_332;
  }

  if (SLWordTagSet::find(&v857))
  {
    v57 = SLWordTagSet::find(&v857);
    if (v57 && SLWordTagSet::find(&v844))
    {
      HIBYTE(v18[1].var0) = 2;
      strcpy(v40, "SAINT");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v58 = *MEMORY[0x277D85E08];
        v59 = *MEMORY[0x277D65538];
        v60 = SLTagEng::Name(0x401);
        fprintf(v58, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v59, "", "", v60, 618, v840, v855);
      }

LABEL_142:
      LODWORD(var15) = 0;
      var3 = 0;
      v10 = 1025;
LABEL_207:
      LODWORD(v13) = 255;
      goto LABEL_208;
    }

    if (SLWordTagSet::find(&var17))
    {
      *&v842->var10 = 516;
      if (v57)
      {
        strcpy(v40, "STREET");
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v67 = *MEMORY[0x277D85E08];
        v68 = *MEMORY[0x277D65538];
        v69 = SLTagEng::Name(0x400);
        fprintf(v67, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v68, "", "", v69, 625, v840, v855);
      }
    }

    else if (((1 << v856) & 0x41) != 0)
    {
      v842->var10 = 4;
      if (v57)
      {
        strcpy(v40, "STREET");
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v78 = *MEMORY[0x277D85E08];
        v79 = *MEMORY[0x277D65538];
        v80 = SLTagEng::Name(0x400);
        fprintf(v78, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v79, "", "", v80, 631, v840, v855);
      }
    }

    else
    {
      if (!v57)
      {
        goto LABEL_332;
      }

      if ((v855 & 0x41) != 0)
      {
        HIBYTE(v18[1].var0) = 2;
        strcpy(v40, "SAINT");
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v110 = *MEMORY[0x277D85E08];
          v111 = *MEMORY[0x277D65538];
          v112 = SLTagEng::Name(0x401);
          fprintf(v110, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v111, "", "", v112, 636, v840, v855);
        }

        goto LABEL_142;
      }

      strcpy(v40, "STREET");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v149 = *MEMORY[0x277D85E08];
        v150 = *MEMORY[0x277D65538];
        v151 = SLTagEng::Name(0x400);
        fprintf(v149, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v150, "", "", v151, 642, v840, v855);
      }
    }

    LODWORD(var15) = 0;
    var3 = 0;
    v10 = 1024;
    goto LABEL_207;
  }

  if (SLWordTagSet::find(&v857))
  {
    if (SLWordTagSet::find(&v857) && SLWordTagSet::find(&v844))
    {
      HIBYTE(v18[1].var0) = 2;
      strcpy(v40, "FORT");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v61 = *MEMORY[0x277D85E08];
        v62 = *MEMORY[0x277D65538];
        v63 = SLTagEng::Name(0x404);
        fprintf(v61, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v62, "", "", v63, 652, v840, v855);
      }

      LODWORD(var15) = 0;
      var3 = 0;
      v10 = 1028;
    }

    else
    {
      v842->var11 = 2;
      strcpy(v40, "FEET");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v75 = *MEMORY[0x277D85E08];
        v76 = *MEMORY[0x277D65538];
        v77 = SLTagEng::Name(0x405);
        fprintf(v75, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v76, "", "", v77, 657, v840, v855);
      }

      LODWORD(var15) = 0;
      var3 = 0;
      v10 = 1029;
    }

    goto LABEL_207;
  }

  if (SLWordTagSet::find(&v857))
  {
    if (SLWordTagSet::find(&var17))
    {
      v842->var11 = 2;
      if (v842->var27[2] == 83)
      {
        v71 = "POINTS";
      }

      else
      {
        v71 = "POINT";
      }

      strcpy(v40, v71);
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v72 = *MEMORY[0x277D85E08];
        v73 = *(MEMORY[0x277D65538] + 8 * var15);
        v74 = SLTagEng::Name(0x417);
        fprintf(v72, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v73, "", "", v74, 664, v840, v855);
      }
    }

    else
    {
      if (SLWordTagSet::find(&v844))
      {
        HIBYTE(v18[1].var0) = 2;
        if (v842->var27[2] == 83)
        {
          v113 = "PARTS";
        }

        else
        {
          v113 = "PART";
        }

        strcpy(v40, v113);
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v114 = *MEMORY[0x277D85E08];
          v115 = *(MEMORY[0x277D65538] + 8 * var15);
          v116 = SLTagEng::Name(0x416);
          fprintf(v114, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v115, "", "", v116, 669, v840, v855);
        }

        v117 = 1046;
        goto LABEL_328;
      }

      if (v842->var27[2] == 83)
      {
        v121 = "POINTS";
      }

      else
      {
        v121 = "POINT";
      }

      strcpy(v40, v121);
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v122 = *MEMORY[0x277D85E08];
        v123 = *(MEMORY[0x277D65538] + 8 * var15);
        v124 = SLTagEng::Name(0x417);
        fprintf(v122, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v123, "", "", v124, 673, v840, v855);
      }
    }

    v117 = 1047;
LABEL_328:
    LOWORD(v838) = v117;
    goto LABEL_329;
  }

  if (SLWordTagSet::find(&v857) && SLWordTagSet::find(&var17))
  {
    if (MTFEPOSResolver::RequireTagAndPOS(this, v842, 86, 0x7FFFFFFF))
    {
      v104 = *(this + 7);
      v857 = *(this + 2);
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v105 = *MEMORY[0x277D85E08];
        v106 = *(MEMORY[0x277D65538] + 8 * var15);
        v107 = SLTagEng::Name(v838);
        fprintf(v105, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v106, "", "", v107, 682, v104, v855);
      }

      v840 = v104;
    }

    goto LABEL_329;
  }

  v108 = SLWordTagSet::find(&v857) ^ 1;
  if (v838 == 66)
  {
    LOBYTE(v108) = 1;
  }

  if ((v108 & 1) == 0)
  {
    v109 = v842->var8;
    if ((v109 & 0x200) != 0)
    {
      if (v842->var15 || !MTFEPOSResolver::RequireTagAndPOS(this, v842, 65, 1))
      {
        goto LABEL_329;
      }

LABEL_436:
      v840 = *(this + 7);
      v857 = *(this + 2);
      goto LABEL_329;
    }

    if (v838)
    {
      if (!MTFEPOSResolver::RequireTagAndPOS(this, v842, 65, 0x7FFFFFFF))
      {
        goto LABEL_329;
      }

      goto LABEL_436;
    }

    v157 = (*(this + 12) != 1 || ((v155 = SLWordTagSet::find(&v857), v109 = v842->var8, (v109 & 0x4000) == 0) ? (v156 = 1) : (v156 = v155), v156 == 1)) && (v109 & 0x8000) == 0;
    v162 = SLWordTagSet::find(&var17);
    v163 = SLWordTagSet::find(&v844);
    if (v842->var8 & 0x20) != 0 && ((v157 | v162 | v163))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v164 = *MEMORY[0x277D85E08];
        v165 = *MEMORY[0x277D65538];
        v166 = SLTagEng::Name(0x40);
        fprintf(v164, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v165, "", "", v166, 707, v840, v855);
      }
    }

    else
    {
      if (!SLWordTagSet::find(&var17))
      {
        v170 = 65;
        goto LABEL_434;
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v167 = *MEMORY[0x277D85E08];
        v168 = *MEMORY[0x277D65538];
        v169 = SLTagEng::Name(0x40);
        fprintf(v167, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v168, "", "", v169, 714, v840, v855);
      }
    }

    LODWORD(var15) = 0;
    v170 = 64;
LABEL_434:
    if (!MTFEPOSResolver::RequireTagAndPOS(this, v842, v170, 0x7FFFFFFF))
    {
      LOWORD(v838) = 0;
      goto LABEL_329;
    }

    LOWORD(v838) = 0;
    goto LABEL_436;
  }

LABEL_329:
  if (var15 != 255)
  {
LABEL_330:
    var3 = 0;
LABEL_331:
    LODWORD(v13) = 255;
LABEL_401:
    v10 = v838;
    goto LABEL_208;
  }

LABEL_332:
  v125 = v842->var8;
  if ((v125 & 0x200) != 0)
  {
    v842->var8 = v125 & 0xFFFFFDFF;
    var15 = v842->var15;
    if ((v840 >> var15))
    {
      LODWORD(v13) = 255;
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "TTS: Tuple forced illegal POS %s for %s\n", *(MEMORY[0x277D65538] + 8 * var15), v40);
      LODWORD(var15) = SLFirstPOSInSet();
      LODWORD(v13) = v842->var15;
    }

    v129 = byte_27F8F0908;
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, (byte_27F8F0908 & 1));
      kMTFEDebugPOS = 0;
      v129 = byte_27F8F0908;
    }

    if (v129)
    {
      v130 = "";
      if (v13 == 255)
      {
        v131 = "";
      }

      else
      {
        v131 = "->";
      }

      if (v13 == 255)
      {
        v132 = 255;
      }

      else
      {
        v132 = v13;
        v130 = *(MEMORY[0x277D65538] + 8 * v13);
      }

      v136 = *MEMORY[0x277D85E08];
      v137 = *(MEMORY[0x277D65538] + 8 * var15);
      v138 = SLTagEng::Name(v838);
      fprintf(v136, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v137, v131, v130, v138, 754, v840, v855);
      v10 = v838;
      LODWORD(v13) = v132;
      goto LABEL_557;
    }

    goto LABEL_556;
  }

  if ((v840 & 0x100000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, (byte_27F8F0908 & 1));
      kMTFEDebugPOS = 0;
      if (byte_27F8F0908)
      {
        goto LABEL_370;
      }
    }

    else if (byte_27F8F0908)
    {
LABEL_370:
      v133 = *MEMORY[0x277D85E08];
      v134 = *(MEMORY[0x277D65538] + 160);
      v135 = SLTagEng::Name(v838);
      fprintf(v133, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v134, "", "", v135, 761, v840, v855);
    }

    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 20;
    goto LABEL_401;
  }

  if ((v840 & 0x200000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, (byte_27F8F0908 & 1));
      kMTFEDebugPOS = 0;
      if (byte_27F8F0908)
      {
        goto LABEL_399;
      }
    }

    else if (byte_27F8F0908)
    {
LABEL_399:
      v152 = *MEMORY[0x277D85E08];
      v153 = *(MEMORY[0x277D65538] + 168);
      v154 = SLTagEng::Name(v838);
      fprintf(v152, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v153, "", "", v154, 768, v840, v855);
    }

    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 21;
    goto LABEL_401;
  }

  if ((SLWordTagSet::find(&var17) & v840) == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v126 = *MEMORY[0x277D85E08];
      v127 = *MEMORY[0x277D65538];
      v128 = SLTagEng::Name(v838);
      fprintf(v126, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v127, "", "", v128, 775, v840, v855);
    }

    goto LABEL_340;
  }

  if (SLWordTagSet::find(&var17) && (v840 & 0x40) != 0 && (v855 & 1) != 0 || ((v142 = SLWordTagSet::find(&v848), v143 = v856, v856 == 14) ? (v144 = v142) : (v144 = 0), v144 == 1 && (v840 & 0x40) != 0 && (v855 & 1) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v158 = *MEMORY[0x277D85E08];
      v159 = *(MEMORY[0x277D65538] + 48);
      v160 = SLTagEng::Name(v838);
      fprintf(v158, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v159, "", "", v160, 784, v840, v855);
    }

    goto LABEL_412;
  }

  if ((~v840 & 0x483) == 0)
  {
    v145 = 1 << v856;
    if (((1 << v856) & 0x22000) != 0 && (v855 & 0x22000) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      v10 = v838;
      if (byte_27F8F0908 == 1)
      {
        v146 = *MEMORY[0x277D85E08];
        v147 = *MEMORY[0x277D65538];
        v148 = SLTagEng::Name(v838);
        fprintf(v146, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v147, "", "", v148, 801, v840, v855);
LABEL_340:
        LODWORD(var15) = 0;
        goto LABEL_330;
      }

      goto LABEL_482;
    }

    if (!(v855 & 0x8000 | v145 & 0x100000) && ((v145 & 0x14100) == 0 || (v845[1] & 0x10E) != 0) && ((v145 & 0x10E) != 0 || (v855 & 0x200000) == 0 || (v845[1] & 0x10E) != 0))
    {
      if ((v145 & 0x250012) != 0 && ((v855 & 0x40000) != 0 || (v855 & 0x110000) != 0 && (v845[1] & 0x10E) != 0))
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v186 = *MEMORY[0x277D85E08];
          v187 = *(MEMORY[0x277D65538] + 80);
          v188 = SLTagEng::Name(v838);
          fprintf(v186, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v187, "", "", v188, 820, v840, v855);
        }

LABEL_522:
        var3 = 0;
        LODWORD(v13) = 255;
        LODWORD(var15) = 10;
        goto LABEL_401;
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v195 = *MEMORY[0x277D85E08];
        v196 = *(MEMORY[0x277D65538] + 56);
        v197 = SLTagEng::Name(v838);
        fprintf(v195, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v196, "", "", v197, 826, v840, v855);
      }

      goto LABEL_554;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    v10 = v838;
    if (byte_27F8F0908 == 1)
    {
      v171 = *MEMORY[0x277D85E08];
      v172 = *(MEMORY[0x277D65538] + 8);
      v173 = SLTagEng::Name(v838);
      fprintf(v171, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v172, "", "", v173, 811, v840, v855);
LABEL_527:
      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 1;
      goto LABEL_401;
    }

    var3 = 0;
LABEL_474:
    LODWORD(v13) = 255;
    LODWORD(var15) = 1;
    goto LABEL_208;
  }

  if ((~v840 & 0x403) == 0)
  {
    if (((1 << v856) & 0x22000) != 0 && (v855 & 0x22000) == 0)
    {
LABEL_478:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      v10 = v838;
      if (byte_27F8F0908 == 1)
      {
        v183 = *MEMORY[0x277D85E08];
        v184 = *MEMORY[0x277D65538];
        v185 = SLTagEng::Name(v838);
        fprintf(v183, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v184, "", "", v185, 840, v840, v855);
        goto LABEL_340;
      }

LABEL_482:
      LODWORD(var15) = 0;
      var3 = 0;
      goto LABEL_207;
    }

    if (((0x22000u >> v849) & 1) != 0 && v856 == 6)
    {
      v161 = v855;
      if ((v855 & 0x22000) == 0)
      {
        goto LABEL_478;
      }
    }

    else
    {
      if (v856 == 15)
      {
LABEL_523:
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v201 = *MEMORY[0x277D85E08];
          v202 = *(MEMORY[0x277D65538] + 8);
          v203 = SLTagEng::Name(v838);
          fprintf(v201, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v202, "", "", v203, 846, v840, v855);
        }

        goto LABEL_527;
      }

      if (v856 == 16)
      {
        v161 = v855;
        if ((v855 & 0x80000) == 0)
        {
          goto LABEL_478;
        }
      }

      else
      {
        v161 = v855;
      }
    }

    if ((v161 & 0x80000) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v198 = *MEMORY[0x277D85E08];
        v199 = *(MEMORY[0x277D65538] + 80);
        v200 = SLTagEng::Name(v838);
        fprintf(v198, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v199, "", "", v200, 852, v840, v855);
      }

      goto LABEL_522;
    }

    goto LABEL_523;
  }

  if ((~v840 & 0x12400) == 0)
  {
    if (((v832 & 1) != 0 || ((1 << v856) & 0xBE) != 0) && (v855 & 0x30000) == 0 && (v845[1] & 0x30000) == 0 && (v845[0] & 0x30000) == 0 && (v830 & ((v855 & 0x20) >> 5) & 1) == 0 && ((v855 & 0x20) == 0 || (v845[1] & 0x80) == 0 || v829) && ((v855 & 0x41) != 0 || (v855 & 0x4000) != 0 && (v845[1] & 0x41) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v247 = *MEMORY[0x277D85E08];
        v248 = *(MEMORY[0x277D65538] + 104);
        v249 = SLTagEng::Name(v838);
        fprintf(v247, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v248, "", "", v249, 868, v840, v855);
      }

LABEL_507:
      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 13;
      goto LABEL_401;
    }

    v174 = 1 << v856;
    if (((1 << v856) & 0x4000) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v192 = *MEMORY[0x277D85E08];
        v193 = *(MEMORY[0x277D65538] + 80);
        v194 = SLTagEng::Name(v838);
        fprintf(v192, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v193, "", "", v194, 874, v840, v855);
      }

      goto LABEL_522;
    }

    if ((((v856 == 255) & ~v832) != 0 || (v174 & 0x210033) != 0) && (*(&v855 + 1) & 0x1720) != 0 && (v845[1] & 0x1CF) != 0 || (v174 & 0x32) != 0 && (v855 & 0x10) != 0 && (v845[1] & 0x10000) != 0 || (v174 & 0x290001) != 0 && (v855 & 0x10E) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v175 = *MEMORY[0x277D85E08];
        v176 = *(MEMORY[0x277D65538] + 80);
        v177 = SLTagEng::Name(v838);
        fprintf(v175, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v176, "", "", v177, 885, v840, v855);
      }

      goto LABEL_522;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v209 = *MEMORY[0x277D85E08];
      v210 = *(MEMORY[0x277D65538] + 128);
      v211 = SLTagEng::Name(v838);
      fprintf(v209, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v210, "", "", v211, 891, v840, v855);
    }

    goto LABEL_547;
  }

  v178 = v840 & 0x8080;
  if (v178 == 32896)
  {
    if ((v855 & 0x480) != 0 && (v855 & 0x2000) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v179 = *MEMORY[0x277D85E08];
        v180 = *(MEMORY[0x277D65538] + 56);
        v181 = *(MEMORY[0x277D65538] + 152);
        v182 = SLTagEng::Name(0x42);
        fprintf(v179, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v180, "->", v181, v182, 907, v840, v855);
      }

      LODWORD(var15) = 7;
      LODWORD(v13) = 19;
      goto LABEL_472;
    }

    if (v856 == 7)
    {
      if (v9->var27[0] != 79 || v9->var27[1] != 70)
      {
        goto LABEL_550;
      }

      v204 = v831;
      if (v9->var27[2])
      {
        v204 = 1;
      }

      if (v204)
      {
        goto LABEL_550;
      }
    }

    else if (v831)
    {
LABEL_550:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v212 = *MEMORY[0x277D85E08];
        v213 = *(MEMORY[0x277D65538] + 56);
        v214 = SLTagEng::Name(v838);
        fprintf(v212, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v213, "", "", v214, 923, v840, v855);
      }

LABEL_554:
      LODWORD(var15) = 7;
LABEL_555:
      LODWORD(v13) = 255;
LABEL_556:
      v10 = v838;
      goto LABEL_557;
    }

    if ((v855 & 0x32C00) == 0 && ((v855 & 0x10E) != 0 || (v855 & 0x4000) != 0 && (v845[1] & 0x10E) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v241 = *MEMORY[0x277D85E08];
        v242 = *(MEMORY[0x277D65538] + 120);
        v243 = SLTagEng::Name(v838);
        fprintf(v241, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v242, "", "", v243, 916, v840, v855);
      }

      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 15;
      goto LABEL_401;
    }

    goto LABEL_550;
  }

  if ((~v840 & 0x12000) == 0)
  {
    if ((v855 & 0x103) == 1 || (~v855 & 0x101) == 0 && (v845[1] & 0x10C) != 0 || (v855 & 0x4040) != 0 && (v845[1] & 0x41) != 0 && (v845[1] & 0x100) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v189 = *MEMORY[0x277D85E08];
        v190 = *(MEMORY[0x277D65538] + 104);
        v191 = SLTagEng::Name(v838);
        fprintf(v189, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v190, "", "", v191, 939, v840, v855);
      }

      goto LABEL_507;
    }

    if ((~v855 & 3) == 0 && (((1 << v856) & 0x32) != 0 || v830))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v229 = *MEMORY[0x277D85E08];
        v230 = *(MEMORY[0x277D65538] + 104);
        v231 = SLTagEng::Name(v838);
        fprintf(v229, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v230, "", "", v231, 947, v840, v855);
      }

      goto LABEL_507;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v232 = *MEMORY[0x277D85E08];
      v233 = *(MEMORY[0x277D65538] + 128);
      v234 = SLTagEng::Name(v838);
      fprintf(v232, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v233, "", "", v234, 953, v840, v855);
    }

LABEL_547:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 16;
    goto LABEL_401;
  }

  if ((~v840 & 0x14200) == 0)
  {
    v205 = v831 ^ 1;
    if (v856 != 255)
    {
      v205 = 1;
    }

    if ((v205 & 1) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v206 = *MEMORY[0x277D85E08];
        v207 = *(MEMORY[0x277D65538] + 72);
        v208 = SLTagEng::Name(v838);
        fprintf(v206, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v207, "", "", v208, 965, v840, v855);
      }

LABEL_579:
      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 9;
      goto LABEL_401;
    }

    if ((v855 & 0x10C) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v221 = *MEMORY[0x277D85E08];
        v222 = *(MEMORY[0x277D65538] + 128);
        v223 = SLTagEng::Name(v838);
        fprintf(v221, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v222, "", "", v223, 972, v840, v855);
      }

      goto LABEL_547;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v244 = *MEMORY[0x277D85E08];
      v245 = *(MEMORY[0x277D65538] + 112);
      v246 = SLTagEng::Name(v838);
      fprintf(v244, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v245, "", "", v246, 979, v840, v855);
    }

    goto LABEL_675;
  }

  if ((~v840 & 0x4201) == 0)
  {
    v217 = v831 ^ 1;
    if (v856 != 255)
    {
      v217 = 1;
    }

    if ((v217 & 1) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v218 = *MEMORY[0x277D85E08];
        v219 = *(MEMORY[0x277D65538] + 72);
        v220 = SLTagEng::Name(v838);
        fprintf(v218, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v219, "", "", v220, 991, v840, v855);
      }

      goto LABEL_579;
    }

    if (((0x22040u >> v856) & 1) != 0 && (v855 & 0x60) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v272 = *MEMORY[0x277D85E08];
        v273 = *MEMORY[0x277D65538];
        v274 = SLTagEng::Name(v838);
        fprintf(v272, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v273, "", "", v274, 998, v840, v855);
      }

      goto LABEL_340;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v235 = *MEMORY[0x277D85E08];
      v236 = *(MEMORY[0x277D65538] + 112);
      v237 = SLTagEng::Name(v838);
      fprintf(v235, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v236, "", "", v237, 1005, v840, v855);
    }

LABEL_675:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 14;
    goto LABEL_401;
  }

  if ((v840 & 0x4043) == 0x4043)
  {
    v224 = 1 << v856;
    if (((1 << v856) & 0x108C00) != 0 || (((1 << v849) & 0x3E) != 0 ? (v225 = 1) : (v225 = (v224 & 0x10001) == 0), ((v831 | v225) & 1) == 0))
    {
      if ((v855 & 0x10E) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v257 = *MEMORY[0x277D85E08];
          v258 = *(MEMORY[0x277D65538] + 8);
          v259 = SLTagEng::Name(v838);
          fprintf(v257, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v258, "", "", v259, 1020, v840, v855);
        }

        goto LABEL_527;
      }
    }

    if ((v224 & 0x22040) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v265 = *MEMORY[0x277D85E08];
        v266 = *(MEMORY[0x277D65538] + 112);
        v267 = SLTagEng::Name(v838);
        fprintf(v265, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v266, "", "", v267, 1041, v840, v855);
      }

      goto LABEL_675;
    }

    if ((v855 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v275 = *MEMORY[0x277D85E08];
        v276 = *MEMORY[0x277D65538];
        v277 = SLTagEng::Name(v838);
        fprintf(v275, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v276, "", "", v277, 1027, v840, v855);
      }

      goto LABEL_340;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v226 = *MEMORY[0x277D85E08];
      v227 = *(MEMORY[0x277D65538] + 48);
      v228 = SLTagEng::Name(v838);
      fprintf(v226, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v227, "", "", v228, 1034, v840, v855);
    }

LABEL_412:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 6;
    goto LABEL_401;
  }

  if ((~v840 & 0x4042) == 0)
  {
    if (v856 == 15 || v9 && (!strcmp(v9->var27, "HELP") || !strcmp(v9->var27, "HELPS") || !strcmp(v9->var27, "HELPED")) || (v268 = v851) != 0 && (!strcmp(v851->var27, "HELP") && ((1 << v143) & 0x210000) != 0 || !strcmp(v268->var27, "HELPS") && ((1 << v143) & 0x210000) != 0 || !strcmp(v268->var27, "HELPED") && ((1 << v143) & 0x210000) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v238 = *MEMORY[0x277D85E08];
        v239 = *(MEMORY[0x277D65538] + 8);
        v240 = SLTagEng::Name(v838);
        fprintf(v238, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v239, "", "", v240, 1059, v840, v855);
      }

      goto LABEL_527;
    }

    if (v18 && !strcmp(&v18[3].var5, "FROM") && SLWordTagSet::find(&v843))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v269 = *MEMORY[0x277D85E08];
        v270 = *(MEMORY[0x277D65538] + 112);
        v271 = SLTagEng::Name(v838);
        fprintf(v269, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v270, "", "", v271, 1066, v840, v855);
      }

      goto LABEL_675;
    }

    if ((v832 & 1) != 0 || ((1 << v856) & 0x100D00) != 0 || (v285 = 1 << v849, ((1 << v856) & 0x10001) != 0) && (v285 & 0x13E) == 0 || v856 == 17 && v849 == 8 || !v856 && v849 == 10 || v856 == 14 && (v285 & 0x110001) != 0)
    {
      if ((v831 & 1) != 0 || (v855 & 0x880) != 0 || (v855 & 0x10E) == 0 || (~v855 & 0x43) == 0 && (v845[1] & 0x80080) == 0x80080 || (v845[1] & 0x10000) != 0 && (v845[0] & 0x10E) != 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v286 = *MEMORY[0x277D85E08];
          v287 = *(MEMORY[0x277D65538] + 8);
          v288 = SLTagEng::Name(v838);
          fprintf(v286, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v287, "", "", v288, 1086, v840, v855);
        }

        goto LABEL_527;
      }
    }

    if (((0x22040u >> v856) & 1) == 0 && ((v855 & 0x41) == 0 || (v855 & 0x10E) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v320 = *MEMORY[0x277D85E08];
        v321 = *(MEMORY[0x277D65538] + 112);
        v322 = SLTagEng::Name(v838);
        fprintf(v320, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v321, "", "", v322, 1100, v840, v855);
      }

      goto LABEL_675;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v305 = *MEMORY[0x277D85E08];
      v306 = *(MEMORY[0x277D65538] + 48);
      v307 = SLTagEng::Name(v838);
      fprintf(v305, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v306, "", "", v307, 1093, v840, v855);
    }

    goto LABEL_412;
  }

  v250 = v840 & 0x880;
  if (v250 == 2176 && (v855 & 0x100000) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v251 = *MEMORY[0x277D85E08];
      v252 = *(MEMORY[0x277D65538] + 56);
      v253 = SLTagEng::Name(v838);
      fprintf(v251, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v252, "", "", v253, 1109, v840, v855);
    }

    goto LABEL_554;
  }

  if ((~v840 & 0x4800) == 0 && v856 != 255 && (((v855 & 0x414E) == 0) & ~v831) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v254 = *MEMORY[0x277D85E08];
      v255 = *(MEMORY[0x277D65538] + 112);
      v256 = SLTagEng::Name(v838);
      fprintf(v254, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v255, "", "", v256, 1118, v840, v855);
    }

    goto LABEL_675;
  }

  if (!strcmp(v40, "WIND") && ((v855 & 0x2000) != 0 && (v845[1] & 0x41) != 0 || (v855 & 0x10000) != 0 && (v845[1] & 0x480) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v278 = *MEMORY[0x277D85E08];
      v279 = *(MEMORY[0x277D65538] + 8);
      v280 = SLTagEng::Name(v838);
      fprintf(v278, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v279, "", "", v280, 1128, v840, v855);
    }

    goto LABEL_527;
  }

  if ((v840 & 0x10000) != 0 && v143 == 6 && (!strcmp(v40, "ONE") || !strcmp(v40, "ONES")))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v289 = *MEMORY[0x277D85E08];
      v290 = *(MEMORY[0x277D65538] + 128);
      v291 = SLTagEng::Name(v838);
      fprintf(v289, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v290, "", "", v291, 1137, v840, v855);
    }

    goto LABEL_547;
  }

  v260 = strcmp(v40, "CLOSE");
  v261 = v831 ^ 1;
  if (v260)
  {
    v261 = 1;
  }

  if ((v261 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v262 = *MEMORY[0x277D85E08];
      v263 = *(MEMORY[0x277D65538] + 48);
      v264 = SLTagEng::Name(v838);
      fprintf(v262, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v263, "", "", v264, 1147, v840, v855);
    }

    goto LABEL_412;
  }

  if ((v840 & 0x800) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v292 = *MEMORY[0x277D85E08];
      v293 = *(MEMORY[0x277D65538] + 88);
      v294 = SLTagEng::Name(v838);
      fprintf(v292, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v293, "", "", v294, 1153, v840, v855);
    }

    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 11;
    goto LABEL_401;
  }

  if ((v832 & ((v840 & 0x1000) >> 12)) == 1)
  {
    v281 = v855;
    if ((v855 & 0x10C) != 0 || (v855 & 0x41) != 0 && (v845[1] & 0x10C) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v282 = *MEMORY[0x277D85E08];
        v283 = *(MEMORY[0x277D65538] + 96);
        v284 = SLTagEng::Name(v838);
        fprintf(v282, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v283, "", "", v284, 1164, v840, v855);
      }

      goto LABEL_792;
    }

LABEL_781:
    if (v281 < 0)
    {
      if (((v831 | ((v845[1] & 2) >> 1)) & 1) == 0)
      {
        goto LABEL_783;
      }
    }

    else if (!v831)
    {
LABEL_783:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v308 = *MEMORY[0x277D85E08];
        v309 = *(MEMORY[0x277D65538] + 80);
        v310 = SLTagEng::Name(v838);
        fprintf(v308, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v309, "", "", v310, 1179, v840, v855);
      }

      goto LABEL_522;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v311 = *MEMORY[0x277D85E08];
      v312 = *(MEMORY[0x277D65538] + 96);
      v313 = SLTagEng::Name(v838);
      fprintf(v311, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v312, "", "", v313, 1172, v840, v855);
    }

LABEL_792:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 12;
    goto LABEL_401;
  }

  if ((v840 & 0x1000) != 0)
  {
    v281 = v855;
    goto LABEL_781;
  }

  if ((v840 & 0x400) != 0 && (v855 & 0x150001) != 0 && (v845[1] & 0x10E) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v295 = *MEMORY[0x277D85E08];
      v296 = *(MEMORY[0x277D65538] + 80);
      v297 = SLTagEng::Name(v838);
      fprintf(v295, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v296, "", "", v297, 1186, v840, v855);
    }

    goto LABEL_522;
  }

  if ((~v840 & 0x4400) == 0 && ((v855 & 0x42) == 2 || (v855 & 0x410C) != 0 || (v855 & 3) == 2))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v317 = *MEMORY[0x277D85E08];
      v318 = *(MEMORY[0x277D65538] + 112);
      v319 = SLTagEng::Name(v838);
      fprintf(v317, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v318, "", "", v319, 1196, v840, v855);
    }

    goto LABEL_675;
  }

  v828 = v840 & 0x63;
  if (!v838 && v828 == 99)
  {
    v298 = v842->var3;
    v299 = 1 << v143;
    v300 = 1 << v849;
    if (((1 << v143) & 0x22040) != 0)
    {
      v301 = v855;
      if (!((1 << v849) & 0x10C | v855 & 0x22041))
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v302 = *MEMORY[0x277D85E08];
          v303 = *MEMORY[0x277D65538];
          v304 = SLTagEng::Name(0);
          fprintf(v302, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v303, "", "", v304, 1211, v840, v855);
        }

        LODWORD(var15) = 0;
        v10 = 0;
LABEL_842:
        var3 = v298;
        goto LABEL_207;
      }
    }

    else
    {
      if (v143 != 14 || (v300 & 0x26000) == 0)
      {
        goto LABEL_836;
      }

      v301 = v855;
    }

    if ((v301 & 0x41) != 0)
    {
      v298 = v298->var6;
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v323 = *MEMORY[0x277D85E08];
        v324 = *(MEMORY[0x277D65538] + 48);
        v325 = SLTagEng::Name(0);
        fprintf(v323, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v324, "", "", v325, 1219, v840, v855);
      }

      v10 = 0;
      LODWORD(var15) = 6;
      goto LABEL_842;
    }

LABEL_836:
    if ((v299 & 0x118100) != 0 || v9 && (!strcmp(v9->var27, "HELP") || !strcmp(v9->var27, "HELPS") || !strcmp(v9->var27, "HELPED")) || (v300 & 0x118100) != 0 && v143 == 14 || (v339 = v851) != 0 && ((v340 = strcmp(v851->var27, "HELP"), (v299 & 0x200000) != 0) && !v340 || (v341 = strcmp(v339->var27, "HELPS"), (v299 & 0x200000) != 0) && !v341 || (v342 = strcmp(v339->var27, "HELPED"), (v299 & 0x200000) != 0) && !v342))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v329 = *MEMORY[0x277D85E08];
        v330 = *(MEMORY[0x277D65538] + 8);
        v331 = SLTagEng::Name(0);
        fprintf(v329, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v330, "", "", v331, 1233, v840, v855);
      }

      v10 = 0;
      LODWORD(var15) = 1;
    }

    else
    {
      v298 = v298->var6;
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v343 = *MEMORY[0x277D85E08];
        v344 = *(MEMORY[0x277D65538] + 40);
        v345 = SLTagEng::Name(0);
        fprintf(v343, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v344, "", "", v345, 1243, v840, v855);
      }

      v10 = 0;
      LODWORD(var15) = 5;
    }

    goto LABEL_842;
  }

  if (!strcmp(v40, "USED"))
  {
    if ((v855 & 0x8000) != 0 && ((v845[1] & 0xE) != 0 || (v845[1] & 0x4000) != 0 && (v845[0] & 0xE) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v336 = *MEMORY[0x277D85E08];
        v337 = *(MEMORY[0x277D65538] + 8);
        v338 = SLTagEng::Name(0x41F);
        fprintf(v336, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v337, "", "", v338, 1256, v840, v855);
      }

      var3 = 0;
      v10 = 1055;
      goto LABEL_474;
    }

    if ((((1 << v143) & 0x22040) != 0 || v143 == 14 && ((1 << v849) & 0x26000) != 0) && (v855 & 0x41) != 0 && (v855 & 0x40C00) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v326 = *MEMORY[0x277D85E08];
        v327 = *(MEMORY[0x277D65538] + 48);
        v328 = SLTagEng::Name(0x41E);
        fprintf(v326, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v327, "", "", v328, 1264, v840, v855);
      }

LABEL_939:
      var3 = 0;
      v10 = 1054;
      LODWORD(v13) = 255;
      LODWORD(var15) = 6;
      goto LABEL_208;
    }

    if ((v855 & 0x8000) != 0 && (v845[1] & 0x10) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v373 = *MEMORY[0x277D85E08];
        v374 = *(MEMORY[0x277D65538] + 48);
        v375 = SLTagEng::Name(0x41E);
        fprintf(v373, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v374, "", "", v375, 1271, v840, v855);
      }

      goto LABEL_939;
    }

    if (((1 << v143) & 0x4003C) != 0)
    {
      if (v855)
      {
LABEL_930:
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v370 = *MEMORY[0x277D85E08];
          v371 = *(MEMORY[0x277D65538] + 8);
          v372 = SLTagEng::Name(0x41E);
          fprintf(v370, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v371, "", "", v372, 1286, v840, v855);
        }

        var3 = 0;
        v10 = 1054;
        goto LABEL_474;
      }
    }

    else if (v143 != 14 || (v855 & 1) != 0 || ((1 << v849) & 0x4003C) == 0)
    {
      goto LABEL_930;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v367 = *MEMORY[0x277D85E08];
      v368 = *(MEMORY[0x277D65538] + 40);
      v369 = SLTagEng::Name(0x41E);
      fprintf(v367, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v368, "", "", v369, 1279, v840, v855);
    }

    var3 = 0;
    v10 = 1054;
    LODWORD(v13) = 255;
    LODWORD(var15) = 5;
    goto LABEL_208;
  }

  v314 = v178 == 128 || v250 == 128;
  v315 = v314;
  if (v314 && (((v831 | ((v855 & 0x800) >> 11)) & 1) != 0 || (v855 & 0x4001) == 0x4000 && v830) && (*(this + 9) & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v350 = *MEMORY[0x277D85E08];
      v351 = *(MEMORY[0x277D65538] + 56);
      v352 = *(MEMORY[0x277D65538] + 152);
      v353 = SLTagEng::Name(v838);
      fprintf(v350, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v351, "->", v352, v353, 1305, v840, v855);
    }

    goto LABEL_905;
  }

  v316 = v849;
  if (v178 != 128)
  {
    if (v250 != 128 || v849 != 19 || v143 != 11)
    {
      if (!v315)
      {
        goto LABEL_885;
      }

      goto LABEL_880;
    }

    goto LABEL_846;
  }

  if (v849 != 19)
  {
    goto LABEL_880;
  }

  if (v143 == 11)
  {
LABEL_846:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v332 = *MEMORY[0x277D85E08];
      v333 = *(MEMORY[0x277D65538] + 56);
      v334 = *(MEMORY[0x277D65538] + 152);
      v335 = SLTagEng::Name(v838);
      fprintf(v332, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v333, "->", v334, v335, 1315, v840, v855);
    }

    goto LABEL_905;
  }

  v316 = 19;
LABEL_880:
  if ((((1 << v143) & 0x32) != 0 || ((1 << v143) & 0x210000) != 0 && ((1 << v316) & 0x32) != 0) && ((v855 & 0x2080) == 0x80 || (v855 & 0x236441) == 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v357 = *MEMORY[0x277D85E08];
      v358 = *(MEMORY[0x277D65538] + 56);
      v359 = *(MEMORY[0x277D65538] + 152);
      v360 = SLTagEng::Name(v838);
      fprintf(v357, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v358, "->", v359, v360, 1332, v840, v855);
    }

    goto LABEL_905;
  }

LABEL_885:
  if ((v840 & 0x80080) == 0x80080 && v143 == 14)
  {
    if ((v855 & 0x10C00) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v346 = *MEMORY[0x277D85E08];
        v347 = *(MEMORY[0x277D65538] + 56);
        v348 = *(MEMORY[0x277D65538] + 152);
        v349 = SLTagEng::Name(v838);
        fprintf(v346, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v347, "->", v348, v349, 1342, v840, v855);
      }

LABEL_905:
      LODWORD(var15) = 7;
      LODWORD(v13) = 19;
      goto LABEL_556;
    }

LABEL_897:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v354 = *MEMORY[0x277D85E08];
      v355 = *(MEMORY[0x277D65538] + 56);
      v356 = SLTagEng::Name(v838);
      fprintf(v354, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v355, "", "", v356, 1348, v840, v855);
    }

    goto LABEL_554;
  }

  if ((v840 & 0x80080) == 0x80080)
  {
    goto LABEL_897;
  }

  v361 = (~v840 & 0x4002) == 0 && v143 == 255;
  v362 = v361;
  v363 = v831;
  if (!v361)
  {
    v363 = 0;
  }

  if (v363 == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v364 = *MEMORY[0x277D85E08];
      v365 = *(MEMORY[0x277D65538] + 8);
      v366 = SLTagEng::Name(v838);
      fprintf(v364, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v365, "", "", v366, 1359, v840, v855);
    }

    goto LABEL_527;
  }

  if (v143 != 255)
  {
    v381 = v143 == 11 && v316 == 255;
    v382 = (v840 >> 5) & 1;
    if (!v381)
    {
      v382 = 0;
    }

    if ((v831 & v382 & 1) == 0)
    {
      v386 = v143 == 0;
      v387 = v840 & 0x43;
      v388 = v387 == 67;
      v389 = v387 == 67 && v143 == 0;
      if (v831 & v389)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v390 = *MEMORY[0x277D85E08];
          v391 = *MEMORY[0x277D65538];
          v392 = SLTagEng::Name(v838);
          fprintf(v390, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v391, "", "", v392, 1377, v840, v855);
        }

        goto LABEL_340;
      }

      v377 = (~v840 & 0x4040) == 0;
      v827 = (~v840 & 3) == 0;
      goto LABEL_982;
    }

LABEL_955:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v383 = *MEMORY[0x277D85E08];
      v384 = *(MEMORY[0x277D65538] + 40);
      v385 = SLTagEng::Name(v838);
      fprintf(v383, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v384, "", "", v385, 1365, v840, v855);
    }

    goto LABEL_959;
  }

  v376 = v831 ^ 1;
  if ((v840 & 0x20) == 0)
  {
    v376 = 1;
  }

  if ((v376 & 1) == 0)
  {
    goto LABEL_955;
  }

  v377 = (~v840 & 0x4040) == 0;
  if (v377 && v830)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v378 = *MEMORY[0x277D85E08];
      v379 = *(MEMORY[0x277D65538] + 48);
      v380 = SLTagEng::Name(v838);
      fprintf(v378, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v379, "", "", v380, 1371, v840, v855);
    }

    goto LABEL_412;
  }

  v827 = (v840 & 3) == 3;
  if ((v840 & 3) == 3 && ((v830 & ((v855 & 0x10000) >> 16) & 1) != 0 || (v855 & 2) != 0 && (v845[1] & 0x4000) != 0 && !v829))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v393 = *MEMORY[0x277D85E08];
      v394 = *(MEMORY[0x277D65538] + 8);
      v395 = SLTagEng::Name(v838);
      fprintf(v393, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v394, "", "", v395, 1392, v840, v855);
    }

    goto LABEL_527;
  }

  if ((v840 & 0x43) == 0x43)
  {
    if ((*(&v855 + 1) & 0x220) != 0 && (v845[1] & 1) != 0 && !v829)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v417 = *MEMORY[0x277D85E08];
        v418 = *(MEMORY[0x277D65538] + 8);
        v419 = SLTagEng::Name(v838);
        fprintf(v417, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v418, "", "", v419, 1400, v840, v855);
      }

      goto LABEL_527;
    }

    v386 = 0;
    v387 = 67;
    v388 = 1;
  }

  else
  {
    v387 = v840 & 0x43;
    v388 = 0;
    v386 = 0;
  }

LABEL_982:
  if ((v832 | v8))
  {
    if (!v827)
    {
      v827 = 0;
      goto LABEL_994;
    }
  }

  else
  {
    v397 = v316 == 255 && v143 == 11;
    if (!v397 || !v827)
    {
      goto LABEL_994;
    }
  }

  if ((v831 | v830))
  {
    if (v838)
    {
      goto LABEL_994;
    }

LABEL_1018:
    v406 = v842->var3;
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v407 = *MEMORY[0x277D85E08];
      v408 = *(MEMORY[0x277D65538] + 8 * var15);
      v409 = SLTagEng::Name(v838);
      fprintf(v407, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v408, "", "", v409, 1409, v840, v855);
    }

    v10 = 0;
    LODWORD(v13) = 255;
    var3 = v406;
    goto LABEL_208;
  }

  v405 = v829;
  if (v838)
  {
    v405 = 1;
  }

  if ((v405 & 1) == 0)
  {
    goto LABEL_1018;
  }

LABEL_994:
  if ((v840 & 0x400) != 0 && v143 == 255 && (v855 & 0x10000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v411 = *MEMORY[0x277D85E08];
      v412 = *(MEMORY[0x277D65538] + 80);
      v413 = SLTagEng::Name(v838);
      fprintf(v411, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v412, "", "", v413, 1421, v840, v855);
    }

    goto LABEL_522;
  }

  v398 = v143 == 12 || v143 == 255;
  if (v398 && (v840 & 0x100) != 0 && (v845[1] & 0x10E) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v399 = *MEMORY[0x277D85E08];
      v400 = *(MEMORY[0x277D65538] + 64);
      v401 = SLTagEng::Name(v838);
      fprintf(v399, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v400, "", "", v401, 1438, v840, v855);
    }

LABEL_1008:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 8;
    goto LABEL_401;
  }

  if (v362)
  {
    if ((v855 & 0x10E) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v402 = *MEMORY[0x277D85E08];
        v403 = *(MEMORY[0x277D65538] + 112);
        v404 = SLTagEng::Name(v838);
        fprintf(v402, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v403, "", "", v404, 1444, v840, v855);
      }

      goto LABEL_675;
    }
  }

  else if (v143 != 11 && v143 != 255)
  {
    v826 = v840 & 0x10;
    v410 = (v840 & 0x10) == 0;
    goto LABEL_1043;
  }

  v826 = v840 & 0x10;
  v410 = v826 == 0;
  if ((v840 & 0x10) != 0)
  {
    if ((v855 & 0x320E0) != 0 || (v855 & 0x4000) != 0 && (v845[1] & 0x320E0) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v414 = *MEMORY[0x277D85E08];
        v415 = *(MEMORY[0x277D65538] + 32);
        v416 = SLTagEng::Name(v838);
        fprintf(v414, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v415, "", "", v416, 1452, v840, v855);
      }

      goto LABEL_1037;
    }

    v423 = v832;
    if (v143 != 255)
    {
      v423 = 1;
    }

    if ((v423 & 1) == 0)
    {
      if ((v855 & 0x41) != 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v424 = *MEMORY[0x277D85E08];
          v425 = *(MEMORY[0x277D65538] + 32);
          v426 = SLTagEng::Name(v838);
          fprintf(v424, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v425, "", "", v426, 1460, v840, v855);
        }

        goto LABEL_1037;
      }

      v410 = 0;
      goto LABEL_1045;
    }
  }

  if (v143 != 255)
  {
LABEL_1043:
    if (v143 != 11 || v316 != 255)
    {
      goto LABEL_1065;
    }
  }

LABEL_1045:
  if ((v388 || v827) && ((v855 & 0x222400) != 0 || (v855 & 0x10000) != 0 && (v845[1] & 0x80) != 0 || (v855 & 0x4000) != 0 && (v845[1] & 0x262080) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v420 = *MEMORY[0x277D85E08];
      v421 = *(MEMORY[0x277D65538] + 8);
      v422 = SLTagEng::Name(v838);
      fprintf(v420, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v421, "", "", v422, 1472, v840, v855);
    }

    goto LABEL_527;
  }

LABEL_1065:
  v427 = v832 ^ 1;
  if ((v840 & 2) == 0)
  {
    v427 = 1;
  }

  if ((v427 & 1) == 0 && (~v855 & 0x42) != 0 && (v855 & 0x11413C) == 0 && (v845[1] & 0x413C) == 0 && ((v855 & 1) == 0 || (v845[1] & 2) == 0))
  {
    if ((v855 & 0x80) != 0)
    {
      if (((v831 | ((v845[1] & 0x2000) >> 13)) & 1) == 0)
      {
        goto LABEL_1075;
      }
    }

    else if ((v831 & 1) == 0)
    {
LABEL_1075:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v428 = *MEMORY[0x277D85E08];
        v429 = *(MEMORY[0x277D65538] + 8);
        v430 = SLTagEng::Name(v838);
        fprintf(v428, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v429, "", "", v430, 1488, v840, v855);
      }

      goto LABEL_527;
    }
  }

  v431 = v840 & 0x42;
  v432 = v832;
  if (v431 != 66)
  {
    v432 = 0;
  }

  if ((v831 & v432) == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v433 = *MEMORY[0x277D85E08];
      v434 = *(MEMORY[0x277D65538] + 48);
      v435 = SLTagEng::Name(v838);
      fprintf(v433, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v434, "", "", v435, 1496, v840, v855);
    }

    goto LABEL_412;
  }

  if (v143 == 255 && (v840 & 0x40C0) == 0x40 && (~v855 & 0x41) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v436 = *MEMORY[0x277D85E08];
      v437 = *(MEMORY[0x277D65538] + 48);
      v438 = SLTagEng::Name(v838);
      fprintf(v436, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v437, "", "", v438, 1503, v840, v855);
    }

    goto LABEL_412;
  }

  if (v143 == 255 && (v840 & 0x4000) != 0 && (v855 & 0x51) == 0x50)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v439 = *MEMORY[0x277D85E08];
      v440 = *(MEMORY[0x277D65538] + 112);
      v441 = SLTagEng::Name(v838);
      fprintf(v439, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v440, "", "", v441, 1510, v840, v855);
    }

    goto LABEL_675;
  }

  v825 = v840 & 0x101;
  if (v825 == 257)
  {
    if (((1 << v143) & 0x2000) != 0 || ((1 << v143) & 0x40) != 0 && v316 == 13 || v143 == 17 && ((v855 & 0x20000) == 0 || (v845[1] & 2) == 0) && ((v855 & 4) == 0 || (v845[1] & 0x20) == 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v442 = *MEMORY[0x277D85E08];
        v443 = *MEMORY[0x277D65538];
        v444 = SLTagEng::Name(v838);
        fprintf(v442, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v443, "", "", v444, 1526, v840, v855);
      }

      goto LABEL_340;
    }

    if ((v855 & 0x10E) != 0 || (v855 & 0x20000) != 0 && (v845[1] & 0x10E) != 0 || (v855 & 0x10000) != 0 && (v845[1] & 0x10E) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v445 = *MEMORY[0x277D85E08];
        v446 = *(MEMORY[0x277D65538] + 64);
        v447 = SLTagEng::Name(v838);
        fprintf(v445, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v446, "", "", v447, 1535, v840, v855);
      }

      goto LABEL_1008;
    }
  }

  if (v143 == 5 && (v840 & 0x20) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v448 = *MEMORY[0x277D85E08];
      v449 = *(MEMORY[0x277D65538] + 40);
      v450 = SLTagEng::Name(v838);
      fprintf(v448, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v449, "", "", v450, 1554, v840, v855);
    }

LABEL_959:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 5;
    goto LABEL_401;
  }

  if ((v840 & 8) != 0 && (v855 & 0x8000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v458 = *MEMORY[0x277D85E08];
      v459 = *(MEMORY[0x277D65538] + 24);
      v460 = *(MEMORY[0x277D65538] + 8);
      v461 = SLTagEng::Name(0x42);
      fprintf(v458, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v459, "->", v460, v461, 1564, v840, v855);
    }

    var3 = 0;
    v10 = 66;
    LODWORD(v13) = 1;
    LODWORD(var15) = 3;
    goto LABEL_208;
  }

  v452 = v143 == 14 && v316 == 15;
  if ((v143 == 15 || v452) && (v840 & 0x10C) != 0 && (v855 & 0x20) == 0)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v453 = *MEMORY[0x277D85E08];
      v454 = *(MEMORY[0x277D65538] + 8 * var15);
      v455 = *(MEMORY[0x277D65538] + 8);
      v456 = SLTagEng::Name(0x42);
      fprintf(v453, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v454, "->", v455, v456, 1575, v840, v855);
    }

LABEL_1269:
    LODWORD(v13) = 1;
LABEL_472:
    v10 = 66;
LABEL_557:
    v215 = var15 == 7 && v10 == 66;
    v216 = v836;
    if (!v215)
    {
      v216 = 1;
    }

    if (v216)
    {
      var3 = 0;
    }

    else
    {
      if (*(this + 9))
      {
        var3 = 0;
        v10 = 66;
      }

      else
      {
        v10 = 66;
        var3 = 0;
        if ((*(this + 11) & 1) == 0)
        {
          if (v842->var10 == 1)
          {
            v10 = 66;
          }

          else
          {
            v10 = 67;
          }
        }
      }

      LODWORD(var15) = 7;
    }

    goto LABEL_208;
  }

  v457 = 1 << v143;
  if (((1 << v143) & 0x110401) != 0)
  {
    if ((v840 & 0x100) == 0)
    {
      if ((v457 & 0x118441) != 0)
      {
        goto LABEL_1185;
      }

LABEL_1168:
      if (v143 != 14 || ((1 << v316) & 0x118441) == 0 || (v840 & 0x100) == 0)
      {
        goto LABEL_1178;
      }

      goto LABEL_1171;
    }
  }

  else if (v143 != 14 || ((1 << v316) & 0x110401) == 0 || (v840 & 0x100) == 0)
  {
    goto LABEL_1165;
  }

  if ((~v855 & 0x43) == 0 || (v855 & 0x4000) != 0 && (~v845[1] & 0x43) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v462 = *MEMORY[0x277D85E08];
      v463 = *(MEMORY[0x277D65538] + 64);
      v464 = SLTagEng::Name(v838);
      fprintf(v462, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v463, "", "", v464, 1586, v840, v855);
    }

    goto LABEL_1008;
  }

LABEL_1165:
  if ((v457 & 0x118441) == 0)
  {
    goto LABEL_1168;
  }

  if ((v840 & 0x100) == 0)
  {
    goto LABEL_1185;
  }

LABEL_1171:
  if ((v855 & 0x10E) != 0 || (v855 & 0x4000) != 0 && (v845[1] & 0x10E) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v465 = *MEMORY[0x277D85E08];
      v466 = *(MEMORY[0x277D65538] + 64);
      v467 = SLTagEng::Name(v838);
      fprintf(v465, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v466, "", "", v467, 1597, v840, v855);
    }

    goto LABEL_1008;
  }

LABEL_1178:
  if ((v457 & 0x1C00) != 0 && (v840 & 0x100) != 0 && (v855 & 0x10E) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v468 = *MEMORY[0x277D85E08];
      v469 = *(MEMORY[0x277D65538] + 64);
      v470 = SLTagEng::Name(v838);
      fprintf(v468, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v469, "", "", v470, 1605, v840, v855);
    }

    goto LABEL_1008;
  }

LABEL_1185:
  if (v143 == 8)
  {
    goto LABEL_1193;
  }

  if (v316 != 8)
  {
    if (v143 != 18)
    {
      if (v316 != 18 || v143 != 14)
      {
        goto LABEL_1199;
      }

      goto LABEL_1197;
    }

LABEL_1193:
    if ((v840 & 0x108) != 0)
    {
      goto LABEL_1198;
    }

    goto LABEL_1199;
  }

  if ((v457 & 0x14000) == 0 && v143 != 18)
  {
    goto LABEL_1199;
  }

LABEL_1197:
  if ((v840 & 0x108) != 0)
  {
LABEL_1198:
    if ((v855 & 0x30) == 0)
    {
      LODWORD(var15) = SLFirstPOSInSet();
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v481 = *MEMORY[0x277D85E08];
        v482 = *(MEMORY[0x277D65538] + 8 * var15);
        v483 = *(MEMORY[0x277D65538] + 8);
        v484 = SLTagEng::Name(0x42);
        fprintf(v481, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v482, "->", v483, v484, 1618, v840, v855);
      }

      goto LABEL_1269;
    }
  }

LABEL_1199:
  if (v143 == 12 && (v840 & 0x10C) != 0 && (v855 & 0x10000) != 0)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v503 = *MEMORY[0x277D85E08];
      v504 = *(MEMORY[0x277D65538] + 8 * var15);
      v505 = *(MEMORY[0x277D65538] + 8);
      v506 = SLTagEng::Name(0x42);
      fprintf(v503, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v504, "->", v505, v506, 1629, v840, v855);
    }

    goto LABEL_1269;
  }

  if ((v457 & 0x13E) == 0)
  {
    v476 = v831 ^ 1;
    if ((v840 & 0x10C) == 0)
    {
      v476 = 1;
    }

    if ((v476 & 1) == 0)
    {
      LODWORD(var15) = SLFirstPOSInSet();
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v477 = *MEMORY[0x277D85E08];
        v478 = *(MEMORY[0x277D65538] + 8 * var15);
        v479 = *(MEMORY[0x277D65538] + 8);
        v480 = SLTagEng::Name(0x42);
        fprintf(v477, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v478, "->", v479, v480, 1641, v840, v855);
      }

      goto LABEL_1269;
    }

    if ((v840 & 0x100) != 0 && (v855 & 0x13E) == 0 && (v845[1] & 0x13E) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v499 = *MEMORY[0x277D85E08];
        v500 = *(MEMORY[0x277D65538] + 64);
        v501 = *(MEMORY[0x277D65538] + 8);
        v502 = SLTagEng::Name(0x42);
        fprintf(v499, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v500, "->", v501, v502, 1655, v840, v855);
      }

      var3 = 0;
      v10 = 66;
      LODWORD(v13) = 1;
      LODWORD(var15) = 8;
      goto LABEL_208;
    }
  }

  if ((v457 & 0x22000) != 0)
  {
    if ((v840 & 0x10C) == 0)
    {
      goto LABEL_1229;
    }
  }

  else
  {
    if ((v840 & 0x10C) == 0)
    {
      goto LABEL_1229;
    }

    if (((v831 | ((v855 & 0x800) >> 11)) & 1) != 0 || (v830 & ((v855 & 0x4000) >> 14)) == 1)
    {
      LODWORD(var15) = SLFirstPOSInSet();
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v485 = *MEMORY[0x277D85E08];
        v486 = *(MEMORY[0x277D65538] + 8 * var15);
        v487 = *(MEMORY[0x277D65538] + 8);
        v488 = SLTagEng::Name(0x42);
        fprintf(v485, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v486, "->", v487, v488, 1667, v840, v855);
      }

      goto LABEL_1269;
    }
  }

  if ((((v855 & 0x800) == 0) & ~v831) == 0)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v472 = *MEMORY[0x277D85E08];
      v473 = *(MEMORY[0x277D65538] + 8 * var15);
      v474 = *MEMORY[0x277D65538];
      v475 = SLTagEng::Name(0x42);
      fprintf(v472, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v473, "->", v474, v475, 1677, v840, v855);
    }

    LODWORD(v13) = 0;
    goto LABEL_472;
  }

LABEL_1229:
  if ((v457 & 0x110C00) != 0 && (v840 & 0x100) != 0 && (v855 & 0x4000) != 0 && (v845[1] & 0xE) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v489 = *MEMORY[0x277D85E08];
      v490 = *(MEMORY[0x277D65538] + 64);
      v491 = SLTagEng::Name(v838);
      fprintf(v489, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v490, "", "", v491, 1686, v840, v855);
    }

    goto LABEL_1008;
  }

  v492 = 1 << v316;
  if (((1 << v316) & 0x110000) != 0 && (v457 & 0xE) != 0 && (v840 & 0x100) != 0 && (v855 & 0xE) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v493 = *MEMORY[0x277D85E08];
      v494 = *(MEMORY[0x277D65538] + 64);
      v495 = SLTagEng::Name(v838);
      fprintf(v493, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v494, "", "", v495, 1695, v840, v855);
    }

    goto LABEL_1008;
  }

  if (v316 == 12 && (v457 & 0x41) != 0 && (v840 & 0x100) != 0 && ((v855 & 0x10000) != 0 && (v845[1] & 0xE) != 0 || (v855 & 0x22000) != 0 && (v845[1] & 0xE) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v513 = *MEMORY[0x277D85E08];
      v514 = *(MEMORY[0x277D65538] + 64);
      v515 = SLTagEng::Name(v838);
      fprintf(v513, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v514, "", "", v515, 1704, v840, v855);
    }

    goto LABEL_1008;
  }

  if (v825 == 257)
  {
    if ((v855 & 0xE) != 0 || (v855 & 0x4000) != 0 && (v845[1] & 0xE) != 0)
    {
      goto LABEL_1253;
    }

    if (v143 == 11)
    {
      if ((v855 & 0x10000) == 0 || (v845[1] & 0xE) == 0)
      {
        goto LABEL_1282;
      }

LABEL_1253:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v496 = *MEMORY[0x277D85E08];
        v497 = *(MEMORY[0x277D65538] + 64);
        v498 = SLTagEng::Name(v838);
        fprintf(v496, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v497, "", "", v498, 1714, v840, v855);
      }

      goto LABEL_1008;
    }
  }

  if (v143 == 15 && (v840 & 2) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v507 = *MEMORY[0x277D85E08];
      v508 = *(MEMORY[0x277D65538] + 8);
      v509 = SLTagEng::Name(v838);
      fprintf(v507, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v508, "", "", v509, 1725, v840, v855);
    }

    goto LABEL_527;
  }

LABEL_1282:
  if (((v457 & 0x4001C) != 0 || v143 == 14 && (v492 & 0x4001C) != 0) && (v840 & 0x20) != 0 && (v855 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v510 = *MEMORY[0x277D85E08];
      v511 = *(MEMORY[0x277D65538] + 40);
      v512 = SLTagEng::Name(v838);
      fprintf(v510, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v511, "", "", v512, 1735, v840, v855);
    }

    goto LABEL_959;
  }

  if ((v457 & 0x40024) != 0)
  {
    if ((v831 | v410))
    {
      goto LABEL_1293;
    }

LABEL_1308:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v518 = *MEMORY[0x277D85E08];
      v519 = *(MEMORY[0x277D65538] + 32);
      v520 = SLTagEng::Name(v838);
      fprintf(v518, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v519, "", "", v520, 1743, v840, v855);
    }

    goto LABEL_1037;
  }

  v517 = (v492 & 0x40024) == 0 || v143 != 14;
  if (((v831 | v410 | v517) & 1) == 0)
  {
    goto LABEL_1308;
  }

LABEL_1293:
  if ((v457 & 0x4000C) != 0)
  {
    if (v828 != 66)
    {
      goto LABEL_1319;
    }

LABEL_1315:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v521 = *MEMORY[0x277D85E08];
      v522 = *(MEMORY[0x277D65538] + 48);
      v523 = SLTagEng::Name(v838);
      fprintf(v521, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v522, "", "", v523, 1752, v840, v855);
    }

    goto LABEL_412;
  }

  if (v143 == 14 && v828 == 66 && (v492 & 0x4000C) != 0)
  {
    goto LABEL_1315;
  }

LABEL_1319:
  if ((v457 & 0x22080) != 0)
  {
    if (v828 != 66)
    {
      goto LABEL_1330;
    }
  }

  else if (v143 != 14 || v828 != 66 || (v492 & 0x22080) == 0)
  {
    goto LABEL_1330;
  }

  if ((((v855 & 1) == 0) & ~v831) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v524 = *MEMORY[0x277D85E08];
      v525 = *(MEMORY[0x277D65538] + 48);
      v526 = SLTagEng::Name(v838);
      fprintf(v524, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v525, "", "", v526, 1761, v840, v855);
    }

    goto LABEL_412;
  }

LABEL_1330:
  if ((v386 || v143 == 14 && !v316) && (v840 & 0x62) == 0x60 && (((v855 & 0x80) == 0) & ~v831) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v527 = *MEMORY[0x277D85E08];
      v528 = *(MEMORY[0x277D65538] + 40);
      v529 = SLTagEng::Name(v838);
      fprintf(v527, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v528, "", "", v529, 1770, v840, v855);
    }

    goto LABEL_959;
  }

  if ((v457 & 0x40100) != 0)
  {
    if ((v840 & 2) == 0)
    {
      v530 = v492 & 0x40100;
      goto LABEL_1349;
    }

LABEL_1345:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v531 = *MEMORY[0x277D85E08];
      v532 = *(MEMORY[0x277D65538] + 8);
      v533 = SLTagEng::Name(v838);
      fprintf(v531, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v532, "", "", v533, 1778, v840, v855);
    }

    goto LABEL_527;
  }

  v530 = v492 & 0x40100;
  if (v143 == 14 && v530 && (v840 & 2) != 0)
  {
    goto LABEL_1345;
  }

LABEL_1349:
  if (v530 && (v457 & 0x310000) != 0 && (v840 & 2) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v534 = *MEMORY[0x277D85E08];
      v535 = *(MEMORY[0x277D65538] + 8);
      v536 = SLTagEng::Name(v838);
      fprintf(v534, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v535, "", "", v536, 1785, v840, v855);
    }

    goto LABEL_527;
  }

  if (v826)
  {
    if ((v855 & 0x21) == 0x20 && (v845[1] & 1) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v537 = *MEMORY[0x277D85E08];
        v538 = *(MEMORY[0x277D65538] + 32);
        v539 = SLTagEng::Name(v838);
        fprintf(v537, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v538, "", "", v539, 1792, v840, v855);
      }

LABEL_1037:
      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 4;
      goto LABEL_401;
    }

    if ((v457 & 0x4090) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v540 = *MEMORY[0x277D85E08];
        v541 = *(MEMORY[0x277D65538] + 32);
        v542 = SLTagEng::Name(v838);
        fprintf(v540, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v541, "", "", v542, 1800, v840, v855);
      }

      goto LABEL_1037;
    }

    if (v143 == 10)
    {
      v543 = v831;
      if ((v855 & 0x10E) != 0)
      {
        v543 = 1;
      }

      if ((v543 & 1) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v547 = *MEMORY[0x277D85E08];
          v548 = *(MEMORY[0x277D65538] + 32);
          v549 = SLTagEng::Name(v838);
          fprintf(v547, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v548, "", "", v549, 1808, v840, v855);
        }

        goto LABEL_1037;
      }
    }

    if (v386 && SLWordTagSet::find(&v844) && (v845[1] & 0x4040) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v544 = *MEMORY[0x277D85E08];
        v545 = *(MEMORY[0x277D65538] + 32);
        v546 = SLTagEng::Name(v838);
        fprintf(v544, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v545, "", "", v546, 1815, v840, v855);
      }

      goto LABEL_1037;
    }
  }

  v550 = v856;
  if (v856 == 17)
  {
    if ((~v840 & 0x62) != 0)
    {
LABEL_1403:
      v554 = 0;
      goto LABEL_1405;
    }

LABEL_1389:
    if ((((v855 & 0x80) == 0) & ~v831) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v551 = *MEMORY[0x277D85E08];
        v552 = *(MEMORY[0x277D65538] + 40);
        v553 = SLTagEng::Name(v838);
        fprintf(v551, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v552, "", "", v553, 1824, v840, v855);
      }

      goto LABEL_959;
    }

    goto LABEL_1403;
  }

  if (v856 == 14 && v849 == 17 && (v840 & 0x62) == 0x62)
  {
    goto LABEL_1389;
  }

  v554 = v856 == 0;
  if (v554 && v388)
  {
    if ((v855 & 0x80) != 0 && (v845[1] & 0x32001) != 0 || (v855 & 3) == 1 && ((v845[1] & 0x10E) != 0 || v830))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v555 = *MEMORY[0x277D85E08];
        v556 = *(MEMORY[0x277D65538] + 48);
        v557 = SLTagEng::Name(v838);
        fprintf(v555, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v556, "", "", v557, 1834, v840, v855);
      }

      goto LABEL_412;
    }

    v554 = 1;
  }

LABEL_1405:
  if (v849 != 255)
  {
    v558 = ((0x22041u >> v849) & 1) == 0 && v554;
    if (v558 && v827 && ((v855 & 0x80) != 0 && (v845[1] & 0x32001) != 0 || (v855 & 3) == 1 && ((v845[1] & 0x10E) != 0 || v830)))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v559 = *MEMORY[0x277D85E08];
        v560 = *MEMORY[0x277D65538];
        v561 = SLTagEng::Name(v838);
        fprintf(v559, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v560, "", "", v561, 1846, v840, v855);
      }

      goto LABEL_340;
    }
  }

  v562 = 1 << v856;
  if (((1 << v856) & 0x118401) != 0)
  {
    if (v828 != 66)
    {
      goto LABEL_1425;
    }
  }

  else if (v828 != 66 || v856 != 14 || ((1 << v849) & 0x118401) == 0)
  {
    goto LABEL_1425;
  }

  if (((v831 | v855) & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v563 = *MEMORY[0x277D85E08];
      v564 = *(MEMORY[0x277D65538] + 8);
      v565 = SLTagEng::Name(v838);
      fprintf(v563, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v564, "", "", v565, 1856, v840, v855);
    }

    goto LABEL_1989;
  }

LABEL_1425:
  if (((v562 & 0x15C500) != 0 || v856 == 14 && ((1 << v849) & 0x158500) != 0) && v387 == 3)
  {
    if ((v855 & 0x480) == 0 && ((~v855 & 3) != 0 || ((BYTE2(v845[1]) | v830) & 1) == 0))
    {
      if ((v855 & 0x101) == 1 && (v845[1] & 0x10C) != 0)
      {
        goto LABEL_1445;
      }

      if ((v855 & 0x10C) != 0)
      {
        v387 = 3;
        if ((v855 & 0x22) == 2 || (v845[1] & 0x22) != 0 || v830)
        {
          goto LABEL_1446;
        }
      }

      else if ((v855 & 0x22) == 2)
      {
LABEL_1445:
        v387 = 3;
        goto LABEL_1446;
      }

      if ((v855 & 1) != 0 && (v845[1] & 0x22) == 2)
      {
        goto LABEL_1445;
      }
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v569 = *MEMORY[0x277D85E08];
      v570 = *(MEMORY[0x277D65538] + 8);
      v571 = SLTagEng::Name(v838);
      fprintf(v569, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v570, "", "", v571, 1871, v840, v855);
    }

    goto LABEL_1989;
  }

LABEL_1446:
  if (((1 << v849) & 0xC00) != 0 && (v562 & 0x110000) != 0 && v827)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v566 = *MEMORY[0x277D85E08];
      v567 = *(MEMORY[0x277D65538] + 8);
      v568 = SLTagEng::Name(v838);
      fprintf(v566, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v567, "", "", v568, 1880, v840, v855);
    }

LABEL_1989:
    var3 = 0;
    LODWORD(var15) = 1;
    goto LABEL_331;
  }

  if (v827 && (v830 & (v855 >> 7)) == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v572 = *MEMORY[0x277D85E08];
      v573 = *(MEMORY[0x277D65538] + 8);
      v574 = SLTagEng::Name(v838);
      fprintf(v572, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v573, "", "", v574, 1888, v840, v855);
    }

    goto LABEL_1989;
  }

  if (!((((1 << v856) & 0xC00) == 0 || !v827) | v831 & 1) && v18 && (LOBYTE(v18[3].var5) != 79 || BYTE1(v18[3].var5) != 70 || BYTE2(v18[3].var5)) && (v855 & 0x10E) == 0 && (v845[1] & 0x10E) == 0 && (v845[0] & 0x10E) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v577 = *MEMORY[0x277D85E08];
      v578 = *(MEMORY[0x277D65538] + 8);
      v579 = SLTagEng::Name(v838);
      fprintf(v577, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v578, "", "", v579, 1898, v840, v855);
    }

    goto LABEL_1989;
  }

  v575 = v827 && v554;
  if (v827 && v554 && (v855 & 0x2000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v580 = *MEMORY[0x277D85E08];
      v581 = *(MEMORY[0x277D65538] + 8);
      v582 = SLTagEng::Name(v838);
      fprintf(v580, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v581, "", "", v582, 1907, v840, v855);
    }

    goto LABEL_1989;
  }

  if (v856 == 20)
  {
    v576 = v827;
    if (!v827)
    {
      goto LABEL_1520;
    }

LABEL_1487:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v584 = *MEMORY[0x277D85E08];
      v585 = *(MEMORY[0x277D65538] + 8);
      v586 = SLTagEng::Name(v838);
      fprintf(v584, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v585, "", "", v586, 1915, v840, v855);
    }

    goto LABEL_1989;
  }

  v576 = v856 == 14;
  v583 = v849 == 20 && v856 == 14;
  if (v827 && v583)
  {
    goto LABEL_1487;
  }

  if (v575 && (v855 & 0x4000) != 0 && ((v830 | (LOBYTE(v845[1]) >> 7)) & 1) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v587 = *MEMORY[0x277D85E08];
      v588 = *(MEMORY[0x277D65538] + 8);
      v589 = SLTagEng::Name(v838);
      fprintf(v587, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v588, "", "", v589, 1924, v840, v855);
    }

    goto LABEL_1989;
  }

  v591 = v856 == 14 && v849 != 2;
  if (v591 && v388)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v592 = *MEMORY[0x277D85E08];
      v593 = *(MEMORY[0x277D65538] + 8);
      v594 = SLTagEng::Name(v838);
      fprintf(v592, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v593, "", "", v594, 1931, v840, v855);
    }

    goto LABEL_1989;
  }

  if (((v856 == 255) & ~v832 & v388) == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v595 = *MEMORY[0x277D85E08];
      v596 = *(MEMORY[0x277D65538] + 48);
      v597 = SLTagEng::Name(v838);
      fprintf(v595, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v596, "", "", v597, 1938, v840, v855);
    }

    goto LABEL_1977;
  }

  if (v856 != 1)
  {
LABEL_1520:
    v598 = v849 == 1 && v576;
    if (v598 && (v840 & 0x51) == 0x51)
    {
      goto LABEL_1525;
    }

    v602 = (~v840 & 0x60) == 0 && v598;
    if (!v602 || (v855 & 1) == 0)
    {
      if (v387 != 66)
      {
        LOBYTE(v598) = 0;
      }

      if (!v598)
      {
        goto LABEL_1549;
      }

      goto LABEL_1537;
    }

LABEL_1544:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v607 = *MEMORY[0x277D85E08];
      v608 = *(MEMORY[0x277D65538] + 48);
      v609 = SLTagEng::Name(v838);
      fprintf(v607, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v608, "", "", v609, 1963, v840, v855);
    }

    goto LABEL_1977;
  }

  if ((~v840 & 0x51) == 0)
  {
LABEL_1525:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v599 = *MEMORY[0x277D85E08];
      v600 = *(MEMORY[0x277D65538] + 32);
      v601 = SLTagEng::Name(v838);
      fprintf(v599, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v600, "", "", v601, 1955, v840, v855);
    }

LABEL_1983:
    var3 = 0;
    LODWORD(var15) = 4;
    goto LABEL_331;
  }

  if (~v840 & 0x60) == 0 && (v855)
  {
    goto LABEL_1544;
  }

  if (v387 != 66)
  {
    goto LABEL_1549;
  }

LABEL_1537:
  v603 = v831 ^ 1;
  if ((v840 & 0x62) != 0x42)
  {
    v603 = 1;
  }

  if ((v603 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v604 = *MEMORY[0x277D85E08];
      v605 = *(MEMORY[0x277D65538] + 48);
      v606 = SLTagEng::Name(v838);
      fprintf(v604, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v605, "", "", v606, 1973, v840, v855);
    }

    goto LABEL_1977;
  }

  v387 = 66;
LABEL_1549:
  if ((v562 & 0xE) != 0)
  {
    goto LABEL_1554;
  }

  v610 = !v576;
  if (((1 << v849) & 0xE) == 0)
  {
    v610 = 1;
  }

  if ((v610 & 1) == 0)
  {
LABEL_1554:
    if ((v840 & 0x4041) == 0x41 && v387 == 66)
    {
      if ((v855 & 0x80) == 0)
      {
        if (v855)
        {
          if (((v831 | SLWordTagSet::find(&v844)) & 1) == 0)
          {
            v550 = v856;
            v562 = 1 << v856;
            goto LABEL_1565;
          }
        }

        else if (!v831)
        {
          goto LABEL_1565;
        }
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v611 = *MEMORY[0x277D85E08];
        v612 = *(MEMORY[0x277D65538] + 48);
        v613 = SLTagEng::Name(v838);
        fprintf(v611, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v612, "", "", v613, 1985, v840, v855);
      }

      goto LABEL_1977;
    }
  }

LABEL_1565:
  if (((v562 & 0x22040) != 0 || v550 == 14 && ((1 << v849) & 0x220C0) != 0) && v387 == 66)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v614 = *MEMORY[0x277D85E08];
      v615 = *(MEMORY[0x277D65538] + 48);
      v616 = SLTagEng::Name(v838);
      fprintf(v614, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v615, "", "", v616, 1995, v840, v855);
    }

    goto LABEL_1977;
  }

  v617 = !v827;
  if (v550)
  {
    v617 = 1;
  }

  if ((v617 & 1) == 0)
  {
    if ((v855 & 0x8000) != 0)
    {
      if ((~v855 & 3) == 0 || (v845[1] & 3) != 1)
      {
        goto LABEL_1601;
      }
    }

    else if ((~v855 & 3) == 0)
    {
      goto LABEL_1601;
    }

    if ((v855 & 0x32000) != 0 && (v845[1] & 0x41) != 0)
    {
      goto LABEL_1607;
    }

    if ((v855 & 0x80) != 0)
    {
      if ((v855 & 0x80080) == 0x80000 || (v845[1] & 0x10) != 0)
      {
        goto LABEL_1607;
      }
    }

    else if ((v855 & 0x80000) != 0)
    {
LABEL_1607:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v621 = *MEMORY[0x277D85E08];
        v622 = *(MEMORY[0x277D65538] + 8);
        v623 = SLTagEng::Name(v838);
        fprintf(v621, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v622, "", "", v623, 2015, v840, v855);
      }

      goto LABEL_1989;
    }

    if (v855 & 2) != 0 && (v845[1] & 0x22080) != 0 && (v845[0] & 0x51) != 0 || (v855 & 0x800) != 0 && (v845[1] & 3) == 2 && (v845[0] & 0x22041) != 0 || (v855 & 1) != 0 && (v845[1] & 0x80) != 0 && (v845[0] & 0x22041) != 0 || (v855 & 0x40) != 0 && ((v830 | ((BYTE1(v845[1]) & 4) >> 2)) & 1) != 0 || (v855 & 0x41) != 0 && (v845[1])
    {
      goto LABEL_1607;
    }
  }

LABEL_1601:
  if (v387 == 2 && (v855 & 0x22000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v618 = *MEMORY[0x277D85E08];
      v619 = *(MEMORY[0x277D65538] + 8);
      v620 = SLTagEng::Name(v838);
      fprintf(v618, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v619, "", "", v620, 2022, v840, v855);
    }

    goto LABEL_1989;
  }

  if ((v840 & 2) != 0 && v550 == 20)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v624 = *MEMORY[0x277D85E08];
      v625 = *(MEMORY[0x277D65538] + 8);
      v626 = SLTagEng::Name(v838);
      fprintf(v624, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v625, "", "", v626, 2028, v840, v855);
    }

    goto LABEL_1989;
  }

  v627 = v387 == 3 && v550 == 14;
  v628 = v831;
  if (!v627)
  {
    v628 = 1;
  }

  if ((v628 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v632 = *MEMORY[0x277D85E08];
      v633 = *(MEMORY[0x277D65538] + 8);
      v634 = SLTagEng::Name(v838);
      fprintf(v632, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v633, "", "", v634, 2043, v840, v855);
    }

    goto LABEL_1989;
  }

  if ((v840 & 2) != 0 && v550 == 11)
  {
    if ((v855 & 0x200000) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v642 = *MEMORY[0x277D85E08];
        v643 = *(MEMORY[0x277D65538] + 8);
        v644 = SLTagEng::Name(v838);
        fprintf(v642, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v643, "", "", v644, 2050, v840, v855);
      }

      goto LABEL_1989;
    }

    if ((v830 & ((v855 & 0x4000) >> 14)) == 1)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v629 = *MEMORY[0x277D85E08];
        v630 = *(MEMORY[0x277D65538] + 8);
        v631 = SLTagEng::Name(v838);
        fprintf(v629, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v630, "", "", v631, 2057, v840, v855);
      }

      goto LABEL_1989;
    }
  }

  else
  {
    v7 = (v849 | v550) == 0;
    v635 = !v827;
    if (!v7)
    {
      v635 = 1;
    }

    if ((v635 & 1) == 0 && (v855 & 0x41) != 0 && (v845[1] & 0x41) != 0 && !v829)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v645 = *MEMORY[0x277D85E08];
        v646 = *(MEMORY[0x277D65538] + 8);
        v647 = SLTagEng::Name(v838);
        fprintf(v645, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v646, "", "", v647, 2088, v840, v855);
      }

      goto LABEL_1989;
    }
  }

  v636 = SLWordTagSet::find(&v857);
  v637 = v840 & 0x41;
  if (v637 == 65)
  {
    v638 = v636;
  }

  else
  {
    v638 = 0;
  }

  if (v638 == 1)
  {
    if ((SLWordTagSet::find(&v844) & 1) != 0 || SLWordTagSet::find(&v844))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v639 = *MEMORY[0x277D85E08];
        v640 = *MEMORY[0x277D65538];
        v641 = SLTagEng::Name(v838);
        fprintf(v639, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v640, "", "", v641, 2100, v840, v855);
      }

      goto LABEL_340;
    }

    v651 = v855;
    if ((v855 & 0x400) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v666 = *MEMORY[0x277D85E08];
        v667 = *MEMORY[0x277D65538];
        v668 = SLTagEng::Name(v838);
        fprintf(v666, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v667, "", "", v668, 2106, v840, v855);
      }

      goto LABEL_340;
    }

    if ((v855 & 0x41) == 1)
    {
      if (SLWordTagSet::find(&v844))
      {
        if (!MTFEPOSResolver::RequireTagAndPOS(this, v18, 65, 1))
        {
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v672 = *MEMORY[0x277D85E08];
            v673 = *MEMORY[0x277D65538];
            v674 = SLTagEng::Name(v838);
            fprintf(v672, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v673, "", "", v674, 2119, v840, v855);
          }

          goto LABEL_340;
        }

        HIBYTE(v18[1].var0) = 2;
        LODWORD(v18[1].var5) = *(this + 7);
        *(&v18[1].var5 + 4) = *(this + 2);
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v652 = *MEMORY[0x277D85E08];
          v653 = *(MEMORY[0x277D65538] + 48);
          v654 = SLTagEng::Name(v838);
          fprintf(v652, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v653, "", "", v654, 2116, v840, v855);
        }

LABEL_1977:
        var3 = 0;
        LODWORD(var15) = 6;
        goto LABEL_331;
      }

      v651 = v855;
    }

    if ((v651 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v681 = *MEMORY[0x277D85E08];
        v682 = *MEMORY[0x277D65538];
        v683 = SLTagEng::Name(v838);
        fprintf(v681, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v682, "", "", v683, 2127, v840, v855);
      }

      goto LABEL_340;
    }

    HIBYTE(v18[1].var0) = 2;
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v669 = *MEMORY[0x277D85E08];
      v670 = *(MEMORY[0x277D65538] + 48);
      v671 = SLTagEng::Name(v838);
      fprintf(v669, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v670, "", "", v671, 2124, v840, v855);
    }

    goto LABEL_1977;
  }

  if ((v840 & 0x4043) == 0x41 && ((v831 | !v830 | v855) & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v655 = *MEMORY[0x277D85E08];
      v656 = *MEMORY[0x277D65538];
      v657 = SLTagEng::Name(v838);
      fprintf(v655, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v656, "", "", v657, 2135, v840, v855);
    }

    goto LABEL_340;
  }

  if (v856 != 17 && v856 != 13)
  {
    goto LABEL_1687;
  }

  if (v387 == 65 && (v855 & 0x41) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v658 = *MEMORY[0x277D85E08];
      v659 = *MEMORY[0x277D65538];
      v660 = SLTagEng::Name(v838);
      fprintf(v658, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v659, "", "", v660, 2142, v840, v855);
    }

    goto LABEL_340;
  }

  if (v856 == 17 || v856 == 13)
  {
    if (v387 == 3)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v648 = *MEMORY[0x277D85E08];
        v649 = *MEMORY[0x277D65538];
        v650 = SLTagEng::Name(v838);
        fprintf(v648, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v649, "", "", v650, 2149, v840, v855);
      }

      goto LABEL_340;
    }

    v662 = 0;
    v661 = 1 << v856;
  }

  else
  {
LABEL_1687:
    v661 = 1 << v856;
    if (v387 == 3 && (v661 & 0x22040) != 0 && (v855 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v675 = *MEMORY[0x277D85E08];
        v676 = *MEMORY[0x277D65538];
        v677 = SLTagEng::Name(v838);
        fprintf(v675, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v676, "", "", v677, 2156, v840, v855);
      }

      goto LABEL_340;
    }

    v662 = v856 == 1;
    if (v856 == 1 && v637 == 65)
    {
      if ((~v855 & 0x80080) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v663 = *MEMORY[0x277D85E08];
          v664 = *MEMORY[0x277D65538];
          v665 = SLTagEng::Name(v838);
          fprintf(v663, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v664, "", "", v665, 2164, v840, v855);
        }

        goto LABEL_340;
      }

      v662 = 1;
    }
  }

  if (v825 == 1 && (v855 & 0x10C) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v678 = *MEMORY[0x277D85E08];
      v679 = *MEMORY[0x277D65538];
      v680 = SLTagEng::Name(v838);
      fprintf(v678, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v679, "", "", v680, 2170, v840, v855);
    }

    goto LABEL_340;
  }

  if (v856 == 17 || v856 == 13)
  {
    if (v637 == 1 && (v855 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v688 = *MEMORY[0x277D85E08];
        v689 = *MEMORY[0x277D65538];
        v690 = SLTagEng::Name(v838);
        fprintf(v688, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v689, "", "", v690, 2176, v840, v855);
      }

      goto LABEL_340;
    }

    v684 = 0;
  }

  else
  {
    v684 = v856 == 6;
    if (v856 == 6 && (v840 & 0x10041) == 1)
    {
      if ((v855 & 0x41) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v691 = *MEMORY[0x277D85E08];
          v692 = *MEMORY[0x277D65538];
          v693 = SLTagEng::Name(v838);
          fprintf(v691, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v692, "", "", v693, 2183, v840, v855);
        }

        goto LABEL_340;
      }

      v684 = 1;
    }
  }

  if ((v840 & 0x143) == 1 && *(this + 4) <= 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v685 = *MEMORY[0x277D85E08];
      v686 = *MEMORY[0x277D65538];
      v687 = SLTagEng::Name(v838);
      fprintf(v685, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v686, "", "", v687, 2189, v840, v855);
    }

    goto LABEL_340;
  }

  if ((v855 & 0x100000) != 0 && v637 == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v694 = *MEMORY[0x277D85E08];
      v695 = *MEMORY[0x277D65538];
      v696 = SLTagEng::Name(v838);
      fprintf(v694, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v695, "", "", v696, 2195, v840, v855);
    }

    goto LABEL_340;
  }

  if (v856 == 7 && v637 == 1)
  {
    if ((v855 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v697 = *MEMORY[0x277D85E08];
        v698 = *MEMORY[0x277D65538];
        v699 = SLTagEng::Name(v838);
        fprintf(v697, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v698, "", "", v699, 2202, v840, v855);
      }

      goto LABEL_340;
    }
  }

  else
  {
    v700 = (v855 & 0x41) == 0 && v856 == 10;
    v701 = v827;
    if (!v700)
    {
      v701 = 0;
    }

    if (v701)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v702 = *MEMORY[0x277D85E08];
        v703 = *MEMORY[0x277D65538];
        v704 = SLTagEng::Name(v838);
        fprintf(v702, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v703, "", "", v704, 2209, v840, v855);
      }

      goto LABEL_340;
    }
  }

  if (v827)
  {
    if ((v855 & 0x43) == 2)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v705 = *MEMORY[0x277D85E08];
        v706 = *MEMORY[0x277D65538];
        v707 = SLTagEng::Name(v838);
        fprintf(v705, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v706, "", "", v707, 2216, v840, v855);
      }

      goto LABEL_340;
    }

    if (!v662)
    {
      goto LABEL_1786;
    }

    if ((v855 & 0x14000) != 0)
    {
      if ((v855 & 0x10000) == 0)
      {
        goto LABEL_1785;
      }

      v708 = v831;
      if ((v845[1] & 0x10E) == 0)
      {
        v708 = 1;
      }

      if (v708)
      {
LABEL_1785:
        if (((v831 | ((v855 & 0x4000) >> 14)) & 1) == 0)
        {
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v716 = *MEMORY[0x277D85E08];
            v717 = *(MEMORY[0x277D65538] + 8);
            v718 = SLTagEng::Name(v838);
            fprintf(v716, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v717, "", "", v718, 2231, v840, v855);
          }

          goto LABEL_1989;
        }

LABEL_1786:
        v709 = v831;
        if (v856 != 21)
        {
          v709 = 1;
        }

        if ((v709 & 1) == 0)
        {
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v710 = *MEMORY[0x277D85E08];
            v711 = *(MEMORY[0x277D65538] + 8);
            v712 = SLTagEng::Name(v838);
            fprintf(v710, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v711, "", "", v712, 2238, v840, v855);
          }

          goto LABEL_1989;
        }

        goto LABEL_1794;
      }
    }

    else if (v831)
    {
      goto LABEL_1794;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v719 = *MEMORY[0x277D85E08];
      v720 = *MEMORY[0x277D65538];
      v721 = SLTagEng::Name(v838);
      fprintf(v719, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v720, "", "", v721, 2224, v840, v855);
    }

    goto LABEL_340;
  }

LABEL_1794:
  if ((v855 & 0x41) == 0)
  {
    v684 = 0;
  }

  if (v388 && v684 && ((v855 & 2) == 0 || ((v830 | (BYTE1(v845[1]) >> 3)) & 1) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v713 = *MEMORY[0x277D85E08];
      v714 = *(MEMORY[0x277D65538] + 48);
      v715 = SLTagEng::Name(v838);
      fprintf(v713, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v714, "", "", v715, 2253, v840, v855);
    }

    goto LABEL_1977;
  }

  if (v856 == 255 || (v661 & 0x220C0) != 0)
  {
    if (v637 != 65 && (v840 & 0x50) != 0x50 && (v840 & 0x60) != 0x60)
    {
      goto LABEL_1832;
    }

    if ((v855 & 0x43) == 0x41 && ((v845[1] & 0xC41) != 0 || v830) && ((v855 & 0x10) == 0 || (v845[1] & 0x22000) == 0) && ((v855 & 0x4000) == 0 || (v845[1] & 2) == 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v725 = *MEMORY[0x277D85E08];
        v726 = *(MEMORY[0x277D65538] + 48);
        v727 = SLTagEng::Name(v838);
        fprintf(v725, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v726, "", "", v727, 2267, v840, v855);
      }

      goto LABEL_1977;
    }
  }

  if (v637 == 65 && v856 == 14)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v722 = *MEMORY[0x277D85E08];
      v723 = *(MEMORY[0x277D65538] + 48);
      v724 = SLTagEng::Name(v838);
      fprintf(v722, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v723, "", "", v724, 2274, v840, v855);
    }

    goto LABEL_1977;
  }

LABEL_1832:
  if (v840 != 1)
  {
    v732 = 1 << v856;
    if ((v855 & 0x43) == 0x41 && (v732 & 0x220C0) != 0 && (v840 & 0x40) != 0 && ((v855 & 0x10) == 0 || (v845[1] & 0x22000) == 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v737 = *MEMORY[0x277D85E08];
        v738 = *(MEMORY[0x277D65538] + 48);
        v739 = SLTagEng::Name(v838);
        fprintf(v737, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v738, "", "", v739, 2300, v840, v855);
      }

      goto LABEL_1977;
    }

    if (v732 & 0xC0) != 0 && (v840 & 0x40) != 0 && (v855 & v830)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v733 = *MEMORY[0x277D85E08];
        v734 = *(MEMORY[0x277D65538] + 48);
        v735 = SLTagEng::Name(v838);
        fprintf(v733, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v734, "", "", v735, 2308, v840, v855);
      }

      goto LABEL_1977;
    }

    if ((v855 & 0xCC1) != 0 && v856 == 1 && v431 == 66)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v740 = *MEMORY[0x277D85E08];
        v741 = *(MEMORY[0x277D65538] + 48);
        v742 = SLTagEng::Name(v838);
        fprintf(v740, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v741, "", "", v742, 2315, v840, v855);
      }

      goto LABEL_1977;
    }

    if ((v732 & 0x30) != 0 && v431 == 66)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v743 = *MEMORY[0x277D85E08];
        v744 = *(MEMORY[0x277D65538] + 48);
        v745 = SLTagEng::Name(v838);
        fprintf(v743, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v744, "", "", v745, 2322, v840, v855);
      }

      goto LABEL_1977;
    }

    v736 = v856 == 0;
    v746 = v431 == 66 && v856 == 0;
    if ((v831 & v746) == 1)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v747 = *MEMORY[0x277D85E08];
        v748 = *(MEMORY[0x277D65538] + 48);
        v749 = SLTagEng::Name(v838);
        fprintf(v747, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v748, "", "", v749, 2329, v840, v855);
      }

      goto LABEL_1977;
    }

    if (v856 == 14 && (v840 & 0x62) == 0x42)
    {
      if ((((v855 & 0x41) == 0) & ~v831) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v750 = *MEMORY[0x277D85E08];
          v751 = *(MEMORY[0x277D65538] + 48);
          v752 = SLTagEng::Name(v838);
          fprintf(v750, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v751, "", "", v752, 2337, v840, v855);
        }

        goto LABEL_1977;
      }
    }

    else
    {
      if ((~v840 & 0x60) != 0 || v856 != 10)
      {
        goto LABEL_1894;
      }

      if ((v855 & 0x41) != 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v753 = *MEMORY[0x277D85E08];
          v754 = *(MEMORY[0x277D65538] + 48);
          v755 = SLTagEng::Name(v838);
          fprintf(v753, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v754, "", "", v755, 2344, v840, v855);
        }

        goto LABEL_1977;
      }
    }

    v736 = 0;
    goto LABEL_1894;
  }

  if ((SLWordTagSet::find(&v857) & 1) == 0 && (v855 & 3) == 1 && SLWordTagSet::find(&v844))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v728 = *MEMORY[0x277D85E08];
      v729 = *MEMORY[0x277D65538];
      v730 = *(MEMORY[0x277D65538] + 48);
      v731 = SLTagEng::Name(v838);
      fprintf(v728, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v729, "->", v730, v731, 2287, 1, v855);
      LODWORD(var15) = 0;
      var3 = 0;
      LODWORD(v13) = 6;
      v840 = 1;
    }

    else
    {
      LODWORD(var15) = 0;
      var3 = 0;
      v840 = 1;
      LODWORD(v13) = 6;
    }

    goto LABEL_401;
  }

  v736 = v856 == 0;
  v732 = 1 << v856;
LABEL_1894:
  if (v377)
  {
    if ((v855 & 0x41) == 1)
    {
      if ((v855 & 2) != 0)
      {
        if ((v732 & 0x22080) == 0)
        {
          goto LABEL_1912;
        }

LABEL_1908:
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v759 = *MEMORY[0x277D85E08];
          v760 = *(MEMORY[0x277D65538] + 48);
          v761 = SLTagEng::Name(v838);
          fprintf(v759, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v760, "", "", v761, 2361, v840, v855);
        }

        goto LABEL_1977;
      }

LABEL_1902:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v756 = *MEMORY[0x277D85E08];
        v757 = *(MEMORY[0x277D65538] + 48);
        v758 = SLTagEng::Name(v838);
        fprintf(v756, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v757, "", "", v758, 2353, v840, v855);
      }

      goto LABEL_1977;
    }

    if (v855 & 0x40) != 0 && !v830 && (v855 & 2) == 0 && (v845[1])
    {
      goto LABEL_1902;
    }

    if ((v732 & 0x22080) != 0 && (v855 & 0x41) != 0)
    {
      goto LABEL_1908;
    }
  }

LABEL_1912:
  if ((~v840 & 0xC0) == 0 && (v732 & 0x41) != 0 && (v732 & 2) == 0 && (v855 & 0x41) != 0 && (v855 & 2) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v762 = *MEMORY[0x277D85E08];
      v763 = *(MEMORY[0x277D65538] + 56);
      v764 = SLTagEng::Name(v838);
      fprintf(v762, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v763, "", "", v764, 2376, v840, v855);
    }

LABEL_2019:
    LODWORD(v13) = 255;
    LODWORD(var15) = 7;
    goto LABEL_556;
  }

  if (~v840 & 0xC2) == 0 && (v855 & 1) != 0 && ((v830 | (LOBYTE(v845[1]) >> 1)))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v765 = *MEMORY[0x277D85E08];
      v766 = *(MEMORY[0x277D65538] + 56);
      v767 = SLTagEng::Name(v838);
      fprintf(v765, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v766, "", "", v767, 2384, v840, v855);
    }

    goto LABEL_2019;
  }

  if ((~v840 & 0x11) == 0 && v736)
  {
    v768 = v831;
    if ((v855 & 0x41) != 0)
    {
      v768 = 1;
    }

    if ((v768 & 1) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v772 = *MEMORY[0x277D85E08];
        v773 = *(MEMORY[0x277D65538] + 32);
        v774 = SLTagEng::Name(v838);
        fprintf(v772, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v773, "", "", v774, 2392, v840, v855);
      }

      goto LABEL_1983;
    }
  }

  if ((v840 & 0x400) != 0 && (v855 & 0x132000) == 0x100000 && !v830)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v775 = *MEMORY[0x277D85E08];
      v776 = *(MEMORY[0x277D65538] + 80);
      v777 = SLTagEng::Name(v838);
      fprintf(v775, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v776, "", "", v777, 2399, v840, v855);
    }

    goto LABEL_1999;
  }

  if ((v840 & 0x80) != 0 && (v855 & 0x22000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v769 = *MEMORY[0x277D85E08];
      v770 = *(MEMORY[0x277D65538] + 56);
      v771 = SLTagEng::Name(v838);
      fprintf(v769, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v770, "", "", v771, 2406, v840, v855);
    }

    goto LABEL_2019;
  }

  if ((v840 & 0x24000) == 0x4000 && (v855 & 0x40) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v782 = *MEMORY[0x277D85E08];
      v783 = *(MEMORY[0x277D65538] + 112);
      v784 = SLTagEng::Name(v838);
      fprintf(v782, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v783, "", "", v784, 2413, v840, v855);
    }

    goto LABEL_2009;
  }

  v778 = v831 ^ 1;
  if ((v840 & 0x4000) == 0)
  {
    v778 = 1;
  }

  if ((v778 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v785 = *MEMORY[0x277D85E08];
      v786 = *(MEMORY[0x277D65538] + 112);
      v787 = SLTagEng::Name(v838);
      fprintf(v785, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v786, "", "", v787, 2420, v840, v855);
    }

    goto LABEL_2009;
  }

  if ((v840 & 8) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v788 = *MEMORY[0x277D85E08];
      v789 = *(MEMORY[0x277D65538] + 24);
      v790 = SLTagEng::Name(v838);
      fprintf(v788, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v789, "", "", v790, 2431, v840, v855);
    }

    var3 = 0;
    LODWORD(var15) = 3;
    goto LABEL_331;
  }

  if ((v840 & 0x40) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v791 = *MEMORY[0x277D85E08];
      v792 = *(MEMORY[0x277D65538] + 48);
      v793 = SLTagEng::Name(v838);
      fprintf(v791, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v792, "", "", v793, 2437, v840, v855);
    }

    goto LABEL_1977;
  }

  if (v840)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v779 = *MEMORY[0x277D85E08];
      v780 = *MEMORY[0x277D65538];
      v781 = SLTagEng::Name(v838);
      fprintf(v779, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v780, "", "", v781, 2443, v840, v855);
    }

    goto LABEL_340;
  }

  if (v826)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v794 = *MEMORY[0x277D85E08];
      v795 = *(MEMORY[0x277D65538] + 32);
      v796 = SLTagEng::Name(v838);
      fprintf(v794, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v795, "", "", v796, 2449, v840, v855);
    }

    goto LABEL_1983;
  }

  if ((v840 & 2) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v797 = *MEMORY[0x277D85E08];
      v798 = *(MEMORY[0x277D65538] + 8);
      v799 = SLTagEng::Name(v838);
      fprintf(v797, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v798, "", "", v799, 2455, v840, v855);
    }

    goto LABEL_1989;
  }

  if ((v840 & 0x20000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v803 = *MEMORY[0x277D85E08];
      v804 = *(MEMORY[0x277D65538] + 136);
      v805 = SLTagEng::Name(v838);
      fprintf(v803, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v804, "", "", v805, 2461, v840, v855);
    }

    var3 = 0;
    LODWORD(var15) = 17;
    goto LABEL_331;
  }

  if ((v840 & 0x4000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v806 = *MEMORY[0x277D85E08];
      v807 = *(MEMORY[0x277D65538] + 112);
      v808 = SLTagEng::Name(v838);
      fprintf(v806, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v807, "", "", v808, 2467, v840, v855);
    }

LABEL_2009:
    var3 = 0;
    LODWORD(var15) = 14;
    goto LABEL_331;
  }

  if ((v840 & 0x20) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v809 = *MEMORY[0x277D85E08];
      v810 = *(MEMORY[0x277D65538] + 40);
      v811 = SLTagEng::Name(v838);
      fprintf(v809, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v810, "", "", v811, 2473, v840, v855);
    }

    var3 = 0;
    LODWORD(var15) = 5;
    goto LABEL_331;
  }

  if ((v840 & 0x80) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v812 = *MEMORY[0x277D85E08];
      v813 = *(MEMORY[0x277D65538] + 56);
      v814 = SLTagEng::Name(v838);
      fprintf(v812, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v813, "", "", v814, 2479, v840, v855);
    }

    goto LABEL_2019;
  }

  if ((v840 & 0x400) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v800 = *MEMORY[0x277D85E08];
      v801 = *(MEMORY[0x277D65538] + 80);
      v802 = SLTagEng::Name(v838);
      fprintf(v800, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v801, "", "", v802, 2485, v840, v855);
    }

LABEL_1999:
    var3 = 0;
    LODWORD(var15) = 10;
    goto LABEL_331;
  }

  if ((v840 & 0x2000) == 0)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v815 = *MEMORY[0x277D85E08];
      v816 = *(MEMORY[0x277D65538] + 8 * var15);
      v817 = SLTagEng::Name(v838);
      fprintf(v815, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v816, "", "", v817, 2517, v840, v855);
    }

    goto LABEL_555;
  }

  if (*v40 != 65 || (v842->var27[1] != 0) | v834 & 1 || (((v855 & 0x800) == 0) & ~v831) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v822 = *MEMORY[0x277D85E08];
      v823 = *(MEMORY[0x277D65538] + 104);
      v824 = SLTagEng::Name(v838);
      fprintf(v822, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v823, "", "", v824, 2501, v840, v855);
    }

    var3 = 0;
    LODWORD(var15) = 13;
    goto LABEL_331;
  }

  if (kMTFEDebugPOS)
  {
    MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
    kMTFEDebugPOS = 0;
  }

  if (byte_27F8F0908 == 1)
  {
    v818 = *MEMORY[0x277D85E08];
    v819 = *(MEMORY[0x277D65538] + 104);
    v820 = *MEMORY[0x277D65538];
    v821 = SLTagEng::Name(0x42);
    fprintf(v818, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v819, "->", v820, v821, 2495, v840, v855);
  }

  LODWORD(v13) = 0;
  var3 = 0;
  v10 = 66;
  LODWORD(var15) = 13;
LABEL_208:
  if (var15 != 13)
  {
    goto LABEL_237;
  }

  *(this + 4) = 0;
  v839 = 13;
  LODWORD(var15) = 13;
  if (var3)
  {
    goto LABEL_255;
  }

  while (1)
  {
    v833 = v13;
    var3 = v842->var3;
    if (var3)
    {
      break;
    }

LABEL_236:
    MTBEAbort(v842);
    __break(1u);
LABEL_237:
    ++*(this + 4);
    v839 = var15;
    if (var3)
    {
      goto LABEL_255;
    }
  }

  v13 = 0;
  v84 = 0;
  v85 = v10;
  LODWORD(var15) = 1 << var15;
  v835 = v10 != 67;
  v837 = v10 == 67;
  do
  {
    v87 = v86;
    if (!v85)
    {
      if ((*(v86 + 14) & var15) == 0)
      {
        goto LABEL_234;
      }

      v90 = byte_27F8F0908;
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, (byte_27F8F0908 & 1));
        kMTFEDebugPOS = 0;
        v90 = byte_27F8F0908;
      }

      if ((v90 & 1) == 0)
      {
        goto LABEL_252;
      }

      v89 = "POS match";
      goto LABEL_251;
    }

    if (SLWordTagSet::find((v86 + 60)))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if ((byte_27F8F0908 & 1) == 0)
      {
        goto LABEL_252;
      }

      v89 = "Positive tag match";
      goto LABEL_251;
    }

    if ((SLWordTagSet::find(&v857) & 1) == 0 && !SLWordTagSet::find((v87 + 60)))
    {
      if ((*(v87 + 14) & var15) == 0)
      {
        if (v84)
        {
LABEL_226:
          v84 = 1;
          goto LABEL_234;
        }

        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        v88 = "Negative tag match";
        v84 = v835;
        if ((byte_27F8F0908 & 1) == 0)
        {
          v84 = v835;
          goto LABEL_233;
        }

LABEL_231:
        fprintf(*MEMORY[0x277D85E08], "POS %s\n", v88);
        goto LABEL_233;
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if ((byte_27F8F0908 & 1) == 0)
      {
        goto LABEL_252;
      }

      v89 = "POS match / no tag mismatch";
LABEL_251:
      fprintf(*MEMORY[0x277D85E08], "POS %s\n", v89);
      goto LABEL_252;
    }

    if (v84)
    {
      goto LABEL_226;
    }

    if ((*(v87 + 14) & var15) == 0)
    {
      v84 = 0;
      goto LABEL_234;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    v88 = "POS match / tag mismatch";
    v84 = v837;
    if (byte_27F8F0908)
    {
      goto LABEL_231;
    }

    v84 = v837;
LABEL_233:
    v13 = v87;
LABEL_234:
    var3 = var3->var6;
  }

  while (var3);
  var3 = v13;
  if (!v13)
  {
    goto LABEL_236;
  }

LABEL_252:
  {
    v839 = SLFirstPOSInSet();
  }

  LODWORD(v13) = v833;
LABEL_255:
  p_var17 = &v842->var17;
  var17 = v842->var17;
  v842->var17.var0[0] = 0;
  v92 = var17.var0[0];
  if (var17.var0[0])
  {
    v93 = &var17.var0[1];
    do
    {
      v95 = *v93++;
      v94 = v95;
      if (SLWordTagSet::find(&v848))
      {
        if (SLWordTagSet::find(p_var17))
        {
          goto LABEL_265;
        }

        v96 = p_var17->var0[0];
        if (v96 >= 7)
        {
          goto LABEL_265;
        }
      }

      else
      {
        if (v94)
        {
          goto LABEL_265;
        }

        v94 |= 1u;
        if (SLWordTagSet::find(p_var17))
        {
          goto LABEL_265;
        }

        v96 = p_var17->var0[0];
        if (v96 > 6)
        {
          goto LABEL_265;
        }
      }

      v97 = v96 + 1;
      p_var17->var0[0] = v97;
      p_var17->var0[v97] = v94;
LABEL_265:
      --v92;
    }

    while (v92);
  }

  MTFESpeechElement::SelectChild(v842, var3);
  if (v13 != 255)
  {
    v842->var8 |= 0x200u;
    v839 = v13;
  }

  v842->var15 = v839;
  if ((v840 & (v840 - 1)) != 0)
  {
    v842->var8 |= 0x10u;
  }

  if (v856 == 255 && v839 <= 8 && ((1 << v839) & 0x10C) != 0)
  {
    *(this + 8) = 1;
  }

  if (!strcmp(v842->var27, "THAT"))
  {
    if (v839 != 13)
    {
      v102 = p_var17->var0[0];
      if (v102 <= 6)
      {
        v103 = v102 + 1;
        p_var17->var0[0] = v103;
        p_var17->var0[v103] = 75;
      }

      goto LABEL_275;
    }

    v101 = strchr(v842->var27, 124);
    if (v101)
    {
      v99 = v101;
      goto LABEL_281;
    }
  }

  else
  {
LABEL_275:
    v98 = strchr(v842->var27, 124);
    if (v98)
    {
      v99 = v98;
      if (v839 == 6)
      {
        v100 = strlen(v98 + 1);
        memmove(v842->var27, v99 + 1, v100 + 1);
        goto LABEL_282;
      }

LABEL_281:
      *v99 = 0;
    }
  }

LABEL_282:
  MTFESpeechVisitor::~MTFESpeechVisitor(v852);
}
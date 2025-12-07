uint64_t VoiceProcessorV6::ApplyGMCoexNoiseMitigation(VoiceProcessorV6 *this, const AudioBufferList *a2, AudioBufferList *a3, const AudioTimeStamp *a4, UInt32 a5)
{
  inInputBufferLists[1] = *MEMORY[0x277D85DE8];
  v10 = atomic_load(this + 16576);
  AudioUnitSetParameter(*(this + 355), 0x676D636Fu, 0, 0, (v10 & 1), 0);
  ioActionFlags = 512;
  ioOutputBufferLists = a3;
  inInputBufferLists[0] = a2;
  return AudioUnitProcessMultiple(*(this + 355), &ioActionFlags, a4, a5, 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
}

uint64_t VoiceProcessorV6::ProcessLevelDrivenSuppressor(uint64_t this, AudioTimeStamp *inTimeStamp)
{
  inInputBufferLists[1] = *MEMORY[0x277D85DE8];
  if ((*(this + 4696) & 4) != 0)
  {
    v2 = this;
    if ((*(this + 4712) & 4) != 0)
    {
      this = *(this + 3320);
      if (this)
      {
        v4 = *(v2 + 1096);
        if (*v4)
        {
          v5 = 0;
          v6 = 4;
          do
          {
            v7 = *(v2 + 17416);
            v8 = *&v4[v6];
            v9 = (*(*(v2 + 17424) + v6 * 4) + 4 * *(v2 + 516));
            v16.realp = *(*(v2 + 17424) + v6 * 4);
            v16.imagp = v9;
            VPTimeFreqConverter_Analyze(v7, v8, &v16);
            ++v5;
            v4 = *(v2 + 1096);
            v6 += 4;
          }

          while (v5 < *v4);
          this = *(v2 + 3320);
        }

        ioOutputBufferLists = *(v2 + 17424);
        inInputBufferLists[0] = ioOutputBufferLists;
        ioActionFlags = 512;
        this = AudioUnitProcessMultiple(this, &ioActionFlags, inTimeStamp, *(v2 + 516), 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
        v10 = *(v2 + 1096);
        if (v10->mNumberBuffers)
        {
          v11 = 0;
          v12 = 16;
          do
          {
            this = *(v2 + 17416);
            v13 = *(&v10->mNumberBuffers + v12);
            v14 = (*(*(v2 + 17424) + v12) + 4 * *(v2 + 516));
            v16.realp = *(*(v2 + 17424) + v12);
            v16.imagp = v14;
            if (this)
            {
              this = VPTimeFreqConverter::Synthesize(this, &v16, v13);
              v10 = *(v2 + 1096);
            }

            ++v11;
            v12 += 16;
          }

          while (v11 < v10->mNumberBuffers);
        }

        if ((*(v2 + 15881) & 1) != 0 || *(v2 + 15882) == 1)
        {
          return VoiceProcessorV2::SaveFilesWriteSignal(v2, 0x2Eu, *(v2 + 516), v10, inTimeStamp);
        }
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV7::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v345 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 516), *(v3 + 1080)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 516), *(v3 + 1088)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 1080);
      v9 = (v3 + 516);
      v10 = *(v3 + 516);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 1080);
    goto LABEL_19;
  }

  v6 = *(v3 + 1080);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 1080);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 516);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 516);
    v11 = *(v3 + 1088);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 1088);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 1424);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 516);
  v12 = *(v3 + 1424);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v326 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v26 = *(v3 + 4688);
    if (v26 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v325 = 0;
      *(v3 + 17096) = 0;
      *(v3 + 17112) = 0;
      *(v3 + 17104) = 0;
      *(v3 + 17096) = 1;
      *(v3 + 17104) = *(*(v3 + 1080) + 8);
      if (v26 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 2792);
        if (this)
        {
          v27 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v27;
          v28 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v28;
          v325 = 512;
          this = AudioUnitProcess(this, &v325, &buf, *(v3 + 516), *(v3 + 1088));
        }
      }

      MEMORY[0x28223BE20](this);
      v30 = (&v309 - ((v29 + 15) & 0x3FFFFFFFF0));
      v31 = *(v3 + 1088);
      if (*v31)
      {
        v32 = 0;
        v33 = 2;
        v34 = v30;
        do
        {
          *&v34->mNumberBuffers = 0;
          *&v34->mBuffers[0].mNumberChannels = 0;
          v34->mBuffers[0].mData = 0;
          v34->mNumberBuffers = 1;
          v34->mBuffers[0] = *&v31[v33];
          ++v32;
          v33 += 4;
          ++v34;
        }

        while (v32 < *v31);
      }

      v35 = *(v3 + 4688);
      if ((v35 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v36 = *(v3 + 2800);
        if (v36)
        {
          v37 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v37;
          v38 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v38;
          v325 = 512;
          AudioUnitProcess(v36, &v325, &buf, *v9, v30);
          v44 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v44, v30, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1112), v30, v44, v39, v40, v41, v42, v43, v309);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v45 = *(v3 + 2808);
        if (v45)
        {
          v46 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v46;
          v47 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v47;
          v325 = 512;
          AudioUnitProcess(v45, &v325, &buf, *v9, v30 + 1);
          v53 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v53, v30 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1120), v30 + 1, v53, v48, v49, v50, v51, v52, v309);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v54 = *(v3 + 2816);
        if (v54)
        {
          v55 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v55;
          v56 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v56;
          v325 = 512;
          AudioUnitProcess(v54, &v325, &buf, *v9, v30 + 2);
          v62 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v62, v30 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1128), v30 + 2, v62, v57, v58, v59, v60, v61, v309);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v63 = *(v3 + 2824);
        if (v63)
        {
          v64 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v64;
          v65 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v65;
          v325 = 512;
          AudioUnitProcess(v63, &v325, &buf, *v9, v30 + 3);
          v71 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v71, v30 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1136), v30 + 3, v71, v66, v67, v68, v69, v70, v309);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 0x40) != 0 && (*(v3 + 4704) & 0x40) != 0 && *(v3 + 2840))
      {
        v72 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v72;
        v73 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v73;
        VoiceProcessorV6::ApplyGMCoexNoiseMitigation(v3, *(v3 + 1088), *(v3 + 1088), &buf, *(v3 + 516));
      }

      v74 = *(v3 + 1088);
      v75 = *v74;
      v314 = &v309;
      if (v75 < 3)
      {
        *(v3 + 16912) = *(v74 + 8);
        if (*v74 < 2u)
        {
          LODWORD(v313) = 0;
          v81 = 0;
          v78 = 0;
          v77 = 0;
        }

        else if (*(v3 + 17160) == 1)
        {
          LODWORD(v313) = 0;
          v81 = 0;
          v78 = 0;
          *(v3 + 16912) = *(v74 + 24);
          *(v3 + 16936) = *(v74 + 8);
          v77 = 1;
        }

        else
        {
          LODWORD(v313) = 0;
          v81 = 0;
          v77 = 0;
          *(v3 + 16936) = *(v74 + 24);
          v78 = 1;
        }

LABEL_124:
        v83 = *(v3 + 4688);
        LODWORD(v315) = v78;
        if ((v83 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
        {
          v84 = *(v3 + 2848);
          if (v84)
          {
            v85 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v85;
            v86 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v86;
            v325 = 512;
            AudioUnitProcess(v84, &v325, &buf, *(v3 + 516), (v3 + 16904));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 516), (v3 + 16904), &buf);
            }

            v83 = *(v3 + 4688);
          }
        }

        if (v83 & 0x100) != 0 && (*(v3 + 4705))
        {
          v87 = *(v3 + 2856);
          if (v87)
          {
            v88 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v88;
            v89 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v89;
            v325 = 512;
            AudioUnitProcess(v87, &v325, &buf, *(v3 + 516), (v3 + 16928));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 516), (v3 + 16928), &buf);
            }

            v83 = *(v3 + 4688);
          }
        }

        if ((v83 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
        {
          v90 = *(v3 + 2872);
          if (v90)
          {
            v91 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v91;
            v92 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v92;
            v325 = 512;
            AudioUnitProcess(v90, &v325, &buf, *(v3 + 516), (v3 + 16976));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 516), (v3 + 16976), &buf);
            }

            v83 = *(v3 + 4688);
          }
        }

        if ((v83 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
        {
          v93 = *(v3 + 2880);
          if (v93)
          {
            MEMORY[0x28223BE20](v93);
            *(&v309 - 6) = 2;
            *(&v309 - 5) = *(v3 + 16912);
            *(&v309 - 3) = *(v3 + 16936);
            *&v335.mSampleTime = &v309 - 6;
            v335.mHostTime = 0;
            *&inInputBufferLists.mSampleTime = v3 + 16904;
            memset(&inInputBufferLists.mHostTime, 0, 24);
            v325 = 512;
            v94 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v94;
            v95 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v95;
            AudioUnitProcessMultiple(v96, &v325, &buf, *(v3 + 516), 2u, &v335, 4u, &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 516), (v3 + 16904), &buf);
            }

            v83 = *(v3 + 4688);
          }
        }

        v324 = 0;
        v97 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v97;
        v98 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v98;
        if ((v83 & 0x4000000) == 0 || (*(v3 + 4707) & 4) == 0 || !*(v3 + 3000))
        {
LABEL_168:
          v323 = 0;
          if ((v83 & 0x8000000) == 0 || (*(v3 + 4707) & 8) == 0 || !*(v3 + 3008))
          {
            goto LABEL_183;
          }

          v102 = *(v3 + 16880);
          if ((*(v3 + 16888) - v102) <= 0x28)
          {
            goto LABEL_668;
          }

          ECApplicator::apply(*(v102 + 40), &buf, v315, &v323, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
          v103 = *(v3 + 516);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x22u, v103, *(v3 + 1096), &buf);
            v103 = *(v3 + 516);
            v104 = *(v3 + 17192);
            if (*(v3 + 15881))
            {
LABEL_178:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x11u, v103, v104, &buf);
              LODWORD(v103) = *(v3 + 516);
              v104 = *(v3 + 17192);
LABEL_179:
              inInputBufferLists.mSampleTime = *(*(v3 + 4096) + 16);
              inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v103;
              VPTimeFreqConverter_Analyze(*(v3 + 17256), *(v104 + 16), &inInputBufferLists);
              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x17u, *(v3 + 516), *(v3 + 4096), &buf);
              }

              v83 = *(v3 + 4688);
LABEL_183:
              if ((v83 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0 && *(v3 + 2968))
              {
                v105 = *(v3 + 16880);
                if (*(v3 + 16888) == v105)
                {
                  goto LABEL_668;
                }

                ECApplicator::apply(*v105, &buf, v77, &v324 + 1, (v3 + 4216), (v3 + 4232), (v3 + 4248), (v3 + 4264), (v3 + 4280), (v3 + 4296));
                v106 = *(v3 + 516);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v106, (v3 + 16904), &buf);
                  v106 = *(v3 + 516);
                  v107 = *(v3 + 3360);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_227;
                  }
                }

                else
                {
                  v107 = *(v3 + 3360);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_227:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v106, v107, &buf);
                }
              }

              else
              {
                v108 = 0;
                while (((*(v3 + 472) >> v108) & 1) == 0)
                {
                  if (++v108 == 32)
                  {
                    v108 = 33;
                    break;
                  }
                }

                if (v108 >= **(v3 + 1088))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v109 = VPLogScope(void)::scope;
                  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                  {
                    v110 = (*v109 ? *v109 : MEMORY[0x277D86220]);
                    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                    {
                      v111 = **(v3 + 1088);
                      LODWORD(inInputBufferLists.mSampleTime) = 136315906;
                      *(&inInputBufferLists.mSampleTime + 4) = "vpProcessUplink_v7.cpp";
                      WORD2(inInputBufferLists.mHostTime) = 1024;
                      *(&inInputBufferLists.mHostTime + 6) = 334;
                      WORD1(inInputBufferLists.mRateScalar) = 1024;
                      HIDWORD(inInputBufferLists.mRateScalar) = v108;
                      LOWORD(inInputBufferLists.mWordClockTime) = 1024;
                      *(&inInputBufferLists.mWordClockTime + 2) = v111;
                      _os_log_impl(&dword_2724B4000, v110, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &inInputBufferLists, 0x1Eu);
                    }
                  }

                  v112 = *(v3 + 12704);
                  if (v112 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v112, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v7.cpp", 334, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v108, **(v3 + 1088));
                  }

                  v108 = 0;
                }

                v113 = *(v3 + 1088) + 16 * v108;
                memcpy(*(*(v3 + 1096) + 16), *(v113 + 16), *(v113 + 12));
              }

              if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
              {
                v114 = *(v3 + 3344);
                if (v114)
                {
                  inInputBufferLists.mSampleTime = *(v3 + 1088);
                  inInputBufferLists.mHostTime = v3 + 17096;
                  v335.mSampleTime = *(v3 + 1096);
                  v325 = 512;
                  AudioUnitProcessMultiple(v114, &v325, &buf, *(v3 + 516), 2u, &inInputBufferLists, 1u, &v335);
                }
              }

              v322 = 0;
              if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0 && *(v3 + 2976))
              {
                v115 = *(v3 + 16880);
                if ((*(v3 + 16888) - v115) <= 8)
                {
                  goto LABEL_668;
                }

                ECApplicator::apply(*(v115 + 8), &buf, v315, &v322, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
                v116 = *(v3 + 516);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v116, (v3 + 16928), &buf);
                  v116 = *(v3 + 516);
                  v117 = *(v3 + 3368);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_230;
                  }
                }

                else
                {
                  v117 = *(v3 + 3368);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_230:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v116, v117, &buf);
                }
              }

              v321 = 0;
              if ((*(v3 + 4691) & 1) == 0 || (*(v3 + 4707) & 1) == 0 || !*(v3 + 2984))
              {
                goto LABEL_242;
              }

              v118 = *(v3 + 16880);
              if ((*(v3 + 16888) - v118) <= 0x10)
              {
                goto LABEL_668;
              }

              ECApplicator::apply(*(v118 + 16), &buf, v313, &v321, (v3 + 4224), (v3 + 4240), (v3 + 4256), (v3 + 4272), (v3 + 4288), (v3 + 4304));
              v119 = *(v3 + 516);
              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v119, (v3 + 16952), &buf);
                v119 = *(v3 + 516);
                v120 = *(v3 + 3384);
                if (*(v3 + 15881))
                {
LABEL_241:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v119, v120, &buf);
LABEL_242:
                  v320 = 0;
                  if ((*(v3 + 4691) & 2) == 0 || (*(v3 + 4707) & 2) == 0 || !*(v3 + 2992))
                  {
                    goto LABEL_253;
                  }

                  v121 = *(v3 + 16880);
                  if ((*(v3 + 16888) - v121) > 0x18)
                  {
                    ECApplicator::apply(*(v121 + 24), &buf, v81, &v320, (v3 + 4228), (v3 + 4244), (v3 + 4260), (v3 + 4276), (v3 + 4292), (v3 + 4308));
                    v122 = *(v3 + 516);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v122, (v3 + 16976), &buf);
                      v122 = *(v3 + 516);
                      v123 = *(v3 + 3376);
                      if (*(v3 + 15881))
                      {
                        goto LABEL_252;
                      }
                    }

                    else
                    {
                      v123 = *(v3 + 3376);
                    }

                    if (*(v3 + 15882) == 1)
                    {
LABEL_252:
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v122, v123, &buf);
                    }

LABEL_253:
                    if ((*(v3 + 8869) & 8) != 0 && (*(v3 + 8877) & 8) != 0)
                    {
                      if (*(v3 + 3856))
                      {
                        *(v3 + 17128) = 0;
                        if (*(v3 + 4691) & 1) != 0 && (*(v3 + 4707))
                        {
                          v124 = *(v3 + 2984);
                          if (v124)
                          {
                            if (*(v3 + 17120))
                            {
                              LODWORD(inInputBufferLists.mSampleTime) = 0;
                              if (!AudioUnitGetPropertyInfo(v124, 0xF3Cu, 0, 0, &inInputBufferLists, 0) && LODWORD(inInputBufferLists.mSampleTime) == 4 * *v9)
                              {
                                v125 = *(*(v3 + 17120) + 16);
                                Property = AudioUnitGetProperty(*(v3 + 2984), 0xF3Cu, 0, 0, v125, &inInputBufferLists);
                                if (*(v3 + 489) == 1)
                                {
                                  AudioUnitSetProperty(*(v3 + 3856), 0xF3Cu, 0, 0, v125, LODWORD(inInputBufferLists.mSampleTime));
                                }

                                *(v3 + 17128) = Property == 0;
                              }
                            }
                          }
                        }
                      }
                    }

                    v127 = (*(*(v3 + 4112) + 16) + 4 * *(v3 + 516));
                    v319.realp = *(*(v3 + 4112) + 16);
                    v319.imagp = v127;
                    VPTimeFreqConverter_Analyze(*(v3 + 4176), *(v3 + 17112), &v319);
                    if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0)
                    {
                      if (*(v3 + 2968))
                      {
                        v129 = (*(*(v3 + 3440) + 16) + 4 * *(v3 + 516));
                        v319.realp = *(*(v3 + 3440) + 16);
                        v319.imagp = v129;
                        VPTimeFreqConverter_Analyze(*(v3 + 4128), *(v3 + 16920), &v319);
                        v130 = (*(*(v3 + 4064) + 16) + 4 * *(v3 + 516));
                        v319.realp = *(*(v3 + 4064) + 16);
                        v319.imagp = v130;
                        VPTimeFreqConverter_Analyze(*(v3 + 4160), *(*(v3 + 3360) + 16), &v319);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 516), *(v3 + 3440), &buf);
                        }
                      }
                    }

                    if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0)
                    {
                      if (*(v3 + 2976))
                      {
                        v131 = (*(*(v3 + 4072) + 16) + 4 * *(v3 + 516));
                        v319.realp = *(*(v3 + 4072) + 16);
                        v319.imagp = v131;
                        VPTimeFreqConverter_Analyze(*(v3 + 4136), *(v3 + 16944), &v319);
                        v132 = (*(*(v3 + 4064) + 32) + 4 * *(v3 + 516));
                        v319.realp = *(*(v3 + 4064) + 32);
                        v319.imagp = v132;
                        VPTimeFreqConverter_Analyze(*(v3 + 4168), *(*(v3 + 3368) + 16), &v319);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 516), *(v3 + 4072), &buf);
                        }
                      }
                    }

                    if ((*(v3 + 4691) & 2) != 0 && (*(v3 + 4707) & 2) != 0)
                    {
                      if (*(v3 + 2992))
                      {
                        v133 = (*(*(v3 + 4080) + 16) + 4 * *(v3 + 516));
                        v319.realp = *(*(v3 + 4080) + 16);
                        v319.imagp = v133;
                        VPTimeFreqConverter_Analyze(*(v3 + 4152), *(v3 + 16992), &v319);
                        v134 = (*(*(v3 + 4064) + 64) + 4 * *(v3 + 516));
                        v319.realp = *(*(v3 + 4064) + 64);
                        v319.imagp = v134;
                        VPTimeFreqConverter_Analyze(*(v3 + 16864), *(*(v3 + 3376) + 16), &v319);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 516), *(v3 + 4080), &buf);
                        }
                      }
                    }

                    v318 = 0.0;
                    v135 = *(v3 + 4688);
                    if ((v135 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0)
                    {
                      Parameter = *(v3 + 3136);
                      if (Parameter)
                      {
                        Parameter = AudioUnitGetParameter(Parameter, 0x2Bu, 0, 0, &v318);
                        v135 = *(v3 + 4688);
                      }
                    }

                    if ((v135 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v318 == 1.0)
                    {
                      v136 = (*(*(v3 + 4064) + 48) + 4 * *(v3 + 516));
                      v319.realp = *(*(v3 + 4064) + 48);
                      v319.imagp = v136;
                      VPTimeFreqConverter_Analyze(*(v3 + 17152), *(*(v3 + 3384) + 16), &v319);
                      v135 = *(v3 + 4688);
                    }

                    if ((v135 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || (Parameter = *(v3 + 3144)) == 0)
                    {
LABEL_305:
                      v317 = 0;
                      if ((v135 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 3032))
                      {
                        v144 = 1;
                        v145 = 1;
                      }

                      else if ((v135 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
                      {
                        v144 = 0;
                        v145 = *(v3 + 3056) != 0;
                      }

                      else
                      {
                        v144 = 0;
                        v145 = 0;
                      }

                      v146 = v135 & 0x80000000;
                      if ((v135 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
                      {
                        v147 = 1;
                        v144 = 1;
                        v148 = 1;
                        if ((v135 & 0x100000000) == 0)
                        {
                          goto LABEL_330;
                        }
                      }

                      else
                      {
                        if ((v135 & 0x100000000) == 0)
                        {
                          v147 = 0;
                          v148 = 1;
                          goto LABEL_330;
                        }

                        v148 = 1;
                        if (*(v3 + 4708))
                        {
                          v149 = *(v3 + 3048);
                          v147 = v149 != 0;
                          if (v149)
                          {
                            v148 = 2;
                          }

                          else
                          {
                            v148 = 1;
                          }
                        }

                        else
                        {
                          v147 = 0;
                        }
                      }

                      v150 = *(v3 + 4704);
                      if ((v150 & 0x100000000) != 0 && *(v3 + 3048) && (v135 & v150 & 0x200000000) != 0 && *(v3 + 3056))
                      {
                        v148 = 2;
                        v144 = 2;
                      }

LABEL_330:
                      if ((v135 & 0x40000000) == 0)
                      {
                        goto LABEL_347;
                      }

                      if ((*(v3 + 4707) & 0x40) == 0)
                      {
                        goto LABEL_347;
                      }

                      Parameter = *(v3 + 3032);
                      if (!Parameter)
                      {
                        goto LABEL_347;
                      }

                      AudioUnitSetProperty(Parameter, 0x457u, 0, 0, (v3 + 2332), 4u);
                      if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
                      {
                        v151 = *(v3 + 3032);
                        if (*(v3 + 3040))
                        {
                          v152 = *(v3 + 2752);
LABEL_337:
                          AudioUnitSetParameter(v151, 0x1Bu, 0, 0, v152, 0);
                          v153 = *(v3 + 4688);
                          if ((v153 & 0x400000) != 0)
                          {
                            v154 = *(v3 + 4704);
                            if ((v154 & 0x400000) != 0 && *(v3 + 2968) && (v153 & v154 & 0x800000) != 0 && *(v3 + 2976))
                            {
                              AudioUnitSetParameter(*(v3 + 3032), 0x3Fu, 0, 0, *(v3 + 4248) * *(v3 + 4252), 0);
                            }
                          }

                          *&v155 = *(v3 + 1112) + 24;
                          *&v156 = *(v3 + 1120) + 24;
                          if (**(v3 + 1088) <= 2u)
                          {
                            *&v335.mSampleTime = *(v3 + 1112) + 24;
                            *&v335.mHostTime = v156;
                            v335.mRateScalar = 0.0;
                            v335.mWordClockTime = v3 + 17096;
                            *&v335.mSMPTETime.mSubframes = *(v3 + 3360);
                          }

                          else
                          {
                            v157 = *(v3 + 1128) + 24;
                            v335.mWordClockTime = v3 + 17096;
                            *&v335.mSMPTETime.mSubframes = *(v3 + 3360);
                            v335.mSampleTime = v156;
                            v335.mHostTime = v157;
                            v335.mRateScalar = v155;
                          }

                          *&v338.mNumberBuffers = 0;
                          v325 = 512;
                          AudioUnitSetParameter(*(v3 + 3032), 0x2Cu, 0, 0, *(v3 + 4392), 0);
                          v158 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v158;
                          v159 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v159;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 3032), &v325, &inInputBufferLists, *(v3 + 516), 6u, &v335, 1u, &v338);
                          v135 = *(v3 + 4688);
                          v146 = v135 & 0x80000000;
LABEL_347:
                          if (v146 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
                          {
                            memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4192) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                            memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4196) + 16), *(*(v3 + 4072) + 16), 4 * (2 * *(v3 + 516)));
                            if (*(v3 + 4296) == 0.0 && *(v3 + 4300) == 0.0)
                            {
                              v160 = 0.0;
                            }

                            else
                            {
                              v160 = 1.0;
                            }

                            AudioUnitSetParameter(*(v3 + 3040), 0x20u, 0, 0, v160, 0);
                            v335.mSampleTime = *(v3 + 3488);
                            *&v338.mNumberBuffers = *(v3 + 3448);
                            v161 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v161;
                            v162 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v162;
                            v325 = 512;
                            AudioUnitProcessMultiple(*(v3 + 3040), &v325, &inInputBufferLists, *(v3 + 516), 1u, &v335, 1u, &v338);
                            ioDataSize[0] = 8 * *(v3 + 516);
                            AudioUnitGetProperty(*(v3 + 3040), 0xE7Au, 0, 0, *(*(v3 + 4328) + 16), ioDataSize);
                            ioDataSize[0] = 8 * *(v3 + 516);
                            Parameter = AudioUnitGetProperty(*(v3 + 3040), 0xE79u, 0, 0, *(*(v3 + 4328) + 32), ioDataSize);
                            v163 = *(v3 + 516);
                            v164 = *(v3 + 3448);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              p_inInputBufferLists = &inInputBufferLists;
                              v166 = v3;
                              v167 = 10;
LABEL_356:
                              Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v166, v167, v163, v164, p_inInputBufferLists);
                            }

LABEL_384:
                            MEMORY[0x28223BE20](Parameter);
                            v180 = (&v309 - 8);
                            *(&v309 - 3) = 0u;
                            *(&v309 - 2) = 0u;
                            *(&v309 - 4) = 0u;
                            *(&v309 - 16) = 3;
                            *&v183 = MEMORY[0x28223BE20](v181);
                            v315 = (&v309 - 8);
                            v308 = 0;
                            *(&v309 - 3) = v183;
                            *(&v309 - 2) = v183;
                            *(&v309 - 4) = v183;
                            *(&v309 - 16) = v184;
                            v185 = *(v3 + 4688);
                            if ((v185 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 3064) || (v185 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 3072) || (v185 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 3088))
                            {
                              *(&v309 - 7) = *(*(v3 + 3440) + 8);
                              *(&v309 - 5) = *(*(v3 + 4072) + 8);
                              *(&v309 - 3) = *(*(v3 + 4080) + 8);
                              v186 = *(v3 + 4064);
                              v187 = v315;
                              v315->mBuffers[0] = *(v186 + 8);
                              *&v187[1].mNumberBuffers = *(v186 + 24);
                              *&v187[1].mBuffers[0].mData = *(v186 + 56);
                            }

                            if ((v185 & 0x400000000) == 0 || (*(v3 + 4708) & 4) == 0 || !*(v3 + 3064))
                            {
LABEL_407:
                              if ((v185 & 0x800000000) == 0 || (*(v3 + 4708) & 8) == 0 || !*(v3 + 3072))
                              {
LABEL_420:
                                if ((v185 & 0x2000000000) == 0 || (*(v3 + 4708) & 0x20) == 0 || !*(v3 + 3088))
                                {
LABEL_433:
                                  if (v144 == 2)
                                  {
                                    VoiceProcessorV4::SignalParamSwitchMixNF(v3, v147, v145, &v317);
                                  }

                                  else if (v144 == 1)
                                  {
                                    VoiceProcessorV2::SignalParamSwitchMix(v3, v147, v145, &v317, v182);
                                  }

                                  if (v148 == 1)
                                  {
                                    VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, HIBYTE(v324), v322, v147, v317);
                                  }

                                  else
                                  {
                                    VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, HIBYTE(v324), v320, v147, v317);
                                  }

                                  v200 = memcpy(*(*(v3 + 3472) + 16), *(*(v3 + 4064) + 16), *(v3 + 4316));
                                  v201 = *(v3 + 4688);
                                  if ((v201 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v318 == 1.0)
                                  {
                                    v200 = memcpy(*(*(v3 + 17144) + 16), *(*(v3 + 4064) + 48), *(v3 + 4316));
                                    v201 = *(v3 + 4688);
                                  }

                                  if ((v201 & 0x400000000000) == 0 || (v202 = *(v3 + 4704), (v202 & 0x400000000000) == 0) || !*(v3 + 3160))
                                  {
LABEL_463:
                                    if ((v201 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 3224))
                                    {
                                      v218 = 1;
                                    }

                                    else
                                    {
                                      v218 = (v201 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 3232) != 0;
                                    }

                                    LODWORD(v336) = 0;
                                    LODWORD(v333) = 0;
                                    LODWORD(v331) = 0;
                                    AudioUnitGetParameter(*(v3 + 3136), 0x1Du, 0, 0, &v336);
                                    v219 = *&v336 < 1.0 && v218;
                                    if (v218)
                                    {
                                      LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                      if (*&v336 < 1.0)
                                      {
                                        vDSP_vfill(&inInputBufferLists, *(*(v3 + 4040) + 16), 1, *(v3 + 516));
                                      }

                                      vDSP_vfill(&inInputBufferLists, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
                                    }

                                    else if ((*(v3 + 4693) & 8) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 3136))
                                    {
                                      LODWORD(v220) = 0;
                                      goto LABEL_486;
                                    }

                                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 516), *(v3 + 3440), &buf);
                                    }

                                    LODWORD(v220) = 1;
LABEL_486:
                                    v221 = *(v3 + 4032);
                                    v222 = *(v3 + 4688);
                                    if ((v222 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v223 = *(v3 + 3224)) != 0)
                                    {
                                      v224 = *(v3 + 4024);
                                      v335.mSampleTime = *(v3 + 3440);
                                      v335.mHostTime = v224;
                                      *&v335.mRateScalar = v3 + 16904;
                                      v225 = *(v3 + 4040);
                                      *&v338.mNumberBuffers = *(v3 + 3448);
                                      *&v338.mBuffers[0].mNumberChannels = v225;
                                      v338.mBuffers[0].mData = v221;
                                      v325 = 512;
                                      v226 = *&a2->mRateScalar;
                                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                      *&inInputBufferLists.mRateScalar = v226;
                                      v227 = *&a2->mSMPTETime.mHours;
                                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&inInputBufferLists.mSMPTETime.mHours = v227;
                                      AudioUnitProcessMultiple(v223, &v325, &inInputBufferLists, *(v3 + 516), 3u, &v335, 3u, &v338);
                                      AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v333);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                                      {
                                        goto LABEL_501;
                                      }

                                      v228 = *(v3 + 3224);
                                      v229 = 2;
                                    }

                                    else
                                    {
                                      if ((v222 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v230 = *(v3 + 3232)) == 0)
                                      {
                                        v235 = 0;
                                        goto LABEL_506;
                                      }

                                      AudioUnitSetParameter(v230, 0x14u, 0, 0, *(v3 + 16756), 0);
                                      v231 = *(v3 + 3464);
                                      v335.mSampleTime = *(v3 + 3440);
                                      v335.mHostTime = v231;
                                      v335.mRateScalar = *(v3 + 4024);
                                      v335.mWordClockTime = v3 + 16904;
                                      v232 = *(v3 + 3504);
                                      *&v338.mNumberBuffers = *(v3 + 3448);
                                      *&v338.mBuffers[0].mNumberChannels = v232;
                                      v338.mBuffers[0].mData = *(v3 + 4040);
                                      v339 = v221;
                                      v233 = *&a2->mRateScalar;
                                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                      *&inInputBufferLists.mRateScalar = v233;
                                      v234 = *&a2->mSMPTETime.mHours;
                                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&inInputBufferLists.mSMPTETime.mHours = v234;
                                      v325 = 512;
                                      AudioUnitProcessMultiple(*(v3 + 3232), &v325, &inInputBufferLists, *(v3 + 516), 4u, &v335, 4u, &v338);
                                      AudioUnitGetParameter(*(v3 + 3232), 2u, 0, 0, &v333);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                                      {
LABEL_501:
                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 3448), &inInputBufferLists);
                                        }

                                        v235 = 1;
LABEL_506:
                                        v236 = *(v3 + 4688);
                                        if ((v236 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
                                        {
                                          v237 = *(v3 + 3248);
                                          if (v237)
                                          {
                                            LODWORD(v315) = v235;
                                            v313 = v221;
                                            v238 = v219;
                                            v239 = v220;
                                            v335.mSampleTime = *(v3 + 3440);
                                            *&v338.mNumberBuffers = 0;
                                            v240 = *&a2->mSMPTETime.mHours;
                                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&inInputBufferLists.mSMPTETime.mHours = v240;
                                            v241 = *&a2->mRateScalar;
                                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                            *&inInputBufferLists.mRateScalar = v241;
                                            v325 = 512;
                                            v242 = *(v3 + 4048);
                                            v243 = *(v242 + 16);
                                            v244 = *(v242 + 12);
                                            if ((AudioUnitProcessMultiple(v237, &v325, &inInputBufferLists, *(v3 + 516), 1u, &v335, 1u, &v338) || AudioUnitGetProperty(*(v3 + 3248), 0x13EDu, 0, 0, *(*(v3 + 4048) + 16), (*(v3 + 4048) + 12))) && v244 >= 4)
                                            {
                                              memset_pattern16(v243, &unk_2727568B0, v244 & 0xFFFFFFFC);
                                            }

                                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 516), *(v3 + 4048), &inInputBufferLists);
                                            }

                                            v236 = *(v3 + 4688);
                                            LODWORD(v220) = v239;
                                            v219 = v238;
                                            v221 = v313;
                                            v235 = v315;
                                          }
                                        }

                                        if ((v236 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0)
                                        {
                                          if (*(v3 + 3256))
                                          {
                                            v245 = *(v3 + 17376);
                                            if (v245)
                                            {
                                              LODWORD(v315) = v235;
                                              if (v245 == 1)
                                              {
                                                v246 = 1136;
                                                v247 = 1112;
                                              }

                                              else
                                              {
                                                v246 = 1128;
                                                v247 = 1120;
                                              }

                                              LODWORD(v313) = v220;
                                              v248 = *(v3 + v246);
                                              v249 = *(v3 + v247);
                                              v250 = *(*(v3 + 17232) + 16) + 4 * *(v3 + 516);
                                              v335.mSampleTime = *(*(v3 + 17232) + 16);
                                              v335.mHostTime = v250;
                                              VPTimeFreqConverter_Analyze(*(v3 + 17264), *(v249 + 40), &v335);
                                              v251 = *(*(v3 + 17232) + 32) + 4 * *(v3 + 516);
                                              v335.mSampleTime = *(*(v3 + 17232) + 32);
                                              v335.mHostTime = v251;
                                              VPTimeFreqConverter_Analyze(*(v3 + 17272), *(v248 + 40), &v335);
                                              *&v338.mNumberBuffers = *(v3 + 17232);
                                              *ioDataSize = *&v338.mNumberBuffers;
                                              v325 = 512;
                                              v252 = *&a2->mRateScalar;
                                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                              *&inInputBufferLists.mRateScalar = v252;
                                              v253 = *&a2->mSMPTETime.mHours;
                                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                              *&inInputBufferLists.mSMPTETime.mHours = v253;
                                              v254 = AudioUnitProcessMultiple(*(v3 + 3256), &v325, &inInputBufferLists, *(v3 + 516), 1u, &v338, 1u, ioDataSize);
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Fu, *(v3 + 516), *(v3 + 17232), &inInputBufferLists);
                                              }

                                              v255 = *(v3 + 17240);
                                              v258 = *(v255 + 12);
                                              v256 = v255 + 12;
                                              v257 = v258;
                                              v259 = *(v256 + 4);
                                              if ((v254 || AudioUnitGetProperty(*(v3 + 3256), 0x15FEu, 0, 0, *(v256 + 4), v256)) && v257 >= 4)
                                              {
                                                memset_pattern16(v259, &unk_2727568B0, v257 & 0xFFFFFFFC);
                                              }

                                              v235 = v315;
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x70u, *(v3 + 516), *(v3 + 17240), &inInputBufferLists);
                                              }

                                              v236 = *(v3 + 4688);
                                              LOBYTE(v220) = v313;
                                            }
                                          }
                                        }

                                        if ((v236 & 0x80000000000) == 0)
                                        {
                                          goto LABEL_576;
                                        }

                                        if ((*(v3 + 4709) & 8) == 0 || (v260 = *(v3 + 3136)) == 0)
                                        {
LABEL_566:
                                          if ((*(v3 + 4709) & 8) != 0 && *(v3 + 3136) != 0 && v219)
                                          {
                                            v273 = *(*(v3 + 4040) + 16);
                                            vDSP_vmin(*(*(v3 + 4024) + 16), 1, v273, 1, v273, 1, *(v3 + 516));
                                            v274 = *(v3 + 4688);
                                            if ((v274 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0 && *(v3 + 3248))
                                            {
                                              vDSP_vmin(*(*(v3 + 4048) + 16), 1, v273, 1, v273, 1, *(v3 + 516));
                                              v274 = *(v3 + 4688);
                                            }

                                            v275 = v220;
                                            if ((v274 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0 && *(v3 + 3256))
                                            {
                                              vDSP_vmin(*(*(v3 + 17240) + 16), 1, v273, 1, v273, 1, *(v3 + 516));
                                            }

                                            v220 = *(*(v3 + 3440) + 16);
                                            v276 = *(*(v3 + 3448) + 16);
                                            MEMORY[0x2743CCDD0](v220, 1, v273, 1, v276, 1, *(v3 + 516));
                                            MEMORY[0x2743CCDD0](v220 + 4 * *(v3 + 516) + 4, 1, v273 + 1, 1, v276 + 4 * *(v3 + 516) + 4, 1, (*(v3 + 516) - 1));
                                            *(v220 + 4 * *(v3 + 516)) = *(v220 + 4 * *(v3 + 516)) * v273[*(v3 + 516) - 1];
                                            LOBYTE(v220) = v275;
                                            goto LABEL_578;
                                          }

                                          if ((*(v3 + 4709) & 8) != 0)
                                          {
                                            if (*(v3 + 3136) != 0 || v218)
                                            {
                                              goto LABEL_578;
                                            }

                                            goto LABEL_577;
                                          }

LABEL_576:
                                          if (v218)
                                          {
LABEL_578:
                                            if (((v220 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 3136)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 516), *(v3 + 3448), &buf);
                                            }

                                            if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                                            {
                                              v278 = *(v3 + 3272);
                                              if (v278)
                                              {
                                                AudioUnitSetParameter(v278, 0, 0, 0, *(v3 + 12612), 0);
                                                AudioUnitSetParameter(*(v3 + 3272), 4u, 0, 0, *(v3 + 4216), 0);
                                                AudioUnitSetParameter(*(v3 + 3272), 0x13u, 0, 0, *(v3 + 4232), 0);
                                                AudioUnitSetParameter(*(v3 + 3272), 3u, 0, 0, *&v333, 0);
                                                AudioUnitSetParameter(*(v3 + 3272), 0xEu, 0, 0, *(v3 + 2320), 0);
                                                v279 = *(v3 + 4112);
                                                v335.mSampleTime = *(v3 + 3360);
                                                v335.mHostTime = v279;
                                                v335.mRateScalar = *(v3 + 3448);
                                                v280 = *(v3 + 4024);
                                                v335.mWordClockTime = *(v3 + 4104);
                                                *&v335.mSMPTETime.mSubframes = v280;
                                                *&v335.mSMPTETime.mType = *(v3 + 4040);
                                                *&v338.mNumberBuffers = *(v3 + 1096);
                                                v325 = 512;
                                                v281 = *&a2->mRateScalar;
                                                *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                                *&inInputBufferLists.mRateScalar = v281;
                                                v282 = *&a2->mSMPTETime.mHours;
                                                *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                *&inInputBufferLists.mSMPTETime.mHours = v282;
                                                AudioUnitProcessMultiple(*(v3 + 3272), &v325, &inInputBufferLists, *(v3 + 516), 6u, &v335, 1u, &v338);
                                                ioDataSize[0] = 0;
                                                AudioUnitGetParameter(*(v3 + 3272), 1u, 0, 0, ioDataSize);
                                                *(v3 + 12616) = ioDataSize[0];
                                                if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
                                                {
                                                  AudioUnitGetParameter(*(v3 + 3272), 2u, 0, 0, &v333);
                                                  AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, *&v333, 0);
                                                }
                                              }
                                            }

                                            goto LABEL_592;
                                          }

LABEL_577:
                                          LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                          v277 = *(v3 + 516);
                                          vDSP_vfill(&inInputBufferLists, *(*(v3 + 4040) + 16), 1, v277);
                                          memcpy(*(*(v3 + 3448) + 16), *(*(v3 + 3440) + 16), 8 * v277);
                                          goto LABEL_578;
                                        }

                                        AudioUnitSetParameter(v260, 6u, 0, 0, *(v3 + 4248), 0);
                                        AudioUnitSetParameter(*(v3 + 3136), 7u, 0, 0, *(v3 + 4264), 0);
                                        AudioUnitSetParameter(*(v3 + 3136), 0xDu, 0, 0, *(v3 + 4280), 0);
                                        v261 = *(v3 + 3472);
                                        v335.mSampleTime = *(v3 + 3440);
                                        v335.mHostTime = v261;
                                        v335.mRateScalar = *(v3 + 4120);
                                        v335.mWordClockTime = *(v3 + 4040);
                                        *&v335.mSMPTETime.mSubframes = v221;
                                        *&v335.mSMPTETime.mType = 0;
                                        if (!v219)
                                        {
                                          v335.mWordClockTime = 0;
                                        }

                                        v262 = *(v3 + 4104);
                                        *&v338.mNumberBuffers = 0;
                                        *&v338.mBuffers[0].mNumberChannels = v262;
                                        v338.mBuffers[0].mData = 0;
                                        v263 = *(v3 + 4688);
                                        if ((v263 & 0x4000000) != 0 && (v264 = *(v3 + 4704), (v264 & 0x4000000) != 0) && (v266 = *(v3 + 3000)) != 0 && (v263 & v264 & 0x400000) != 0 && *(v3 + 2968))
                                        {
                                          v265 = v235;
                                          LODWORD(inInputBufferLists.mSampleTime) = 0;
                                          *&v335.mSMPTETime.mType = *(v3 + 4088);
                                          AudioUnitGetParameter(v266, 0x2Du, 0, 0, &inInputBufferLists);
                                          AudioUnitSetParameter(*(v3 + 3136), 0x2Au, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                          AudioUnitGetParameter(*(v3 + 2968), 0x2Du, 0, 0, &inInputBufferLists);
                                          AudioUnitSetParameter(*(v3 + 3136), 0x29u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                        }

                                        else
                                        {
                                          v265 = v235;
                                          if ((v263 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v318 == 1.0)
                                          {
                                            *&v335.mSMPTETime.mType = *(v3 + 17144);
                                          }
                                        }

                                        if (v219)
                                        {
                                          v267 = 3464;
                                        }

                                        else
                                        {
                                          v267 = 3448;
                                        }

                                        v268 = 4040;
                                        *&v338.mNumberBuffers = *(v3 + v267);
                                        if (v219)
                                        {
                                          v268 = 4024;
                                        }

                                        v338.mBuffers[0].mData = *(v3 + v268);
                                        v269 = *&a2->mRateScalar;
                                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                        *&inInputBufferLists.mRateScalar = v269;
                                        v270 = *&a2->mSMPTETime.mHours;
                                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                        *&inInputBufferLists.mSMPTETime.mHours = v270;
                                        v325 = 512;
                                        AudioUnitProcessMultiple(*(v3 + 3136), &v325, &inInputBufferLists, *(v3 + 516), 6u, &v335, 3u, &v338);
                                        if ((v265 & v219 & 1) == 0)
                                        {
                                          AudioUnitGetParameter(*(v3 + 3136), 0x20u, 0, 0, &v333);
                                        }

                                        v271 = *(v3 + 516);
                                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v271, *(v3 + v267), &inInputBufferLists);
                                          v271 = *(v3 + 516);
                                          v272 = *(v3 + 4024);
                                          if (*(v3 + 15881))
                                          {
LABEL_564:
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v271, v272, &inInputBufferLists);
LABEL_565:
                                            if ((*(v3 + 4693) & 8) == 0)
                                            {
                                              goto LABEL_576;
                                            }

                                            goto LABEL_566;
                                          }
                                        }

                                        else
                                        {
                                          v272 = *(v3 + 4024);
                                        }

                                        if (*(v3 + 15882) != 1)
                                        {
                                          goto LABEL_565;
                                        }

                                        goto LABEL_564;
                                      }

                                      v228 = *(v3 + 3232);
                                      v229 = 9;
                                    }

                                    AudioUnitGetParameter(v228, v229, 0, 0, &v331);
                                    AudioUnitSetParameter(*(v3 + 3312), 0x12u, 0, 0, *&v331, 0);
                                    goto LABEL_501;
                                  }

                                  ioDataSize[0] = 1092616192;
                                  if ((v201 & v202 & 0x80000000000000) != 0)
                                  {
                                    v200 = *(v3 + 3232);
                                    if (v200)
                                    {
                                      v200 = AudioUnitGetParameter(v200, 9u, 0, 0, ioDataSize);
                                      v201 = *(v3 + 4688);
                                    }
                                  }

                                  if ((v201 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 3048))
                                  {
                                    LODWORD(inInputBufferLists.mSampleTime) = 0;
                                    LODWORD(v335.mSampleTime) = 0;
                                    v338.mNumberBuffers = 0;
                                    AudioUnitGetParameter(*(v3 + 3056), 0x18u, 0, 0, &inInputBufferLists);
                                    AudioUnitGetParameter(*(v3 + 3056), 0x19u, 0, 0, &v335);
                                    AudioUnitGetParameter(*(v3 + 3056), 5u, 0, 0, &v338.mNumberBuffers);
                                    AudioUnitSetParameter(*(v3 + 3160), 3u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                    AudioUnitSetParameter(*(v3 + 3160), 4u, 0, 0, *&v335.mSampleTime, 0);
                                    AudioUnitSetParameter(*(v3 + 3160), 5u, 0, 0, *&v338.mNumberBuffers, 0);
                                    v200 = AudioUnitSetParameter(*(v3 + 3160), 6u, 0, 0, *ioDataSize, 0);
                                  }

                                  MEMORY[0x28223BE20](v200);
                                  v308 = 0;
                                  *(&v309 - 3) = 0u;
                                  *(&v309 - 2) = 0u;
                                  *(&v309 - 12) = 2;
                                  v203 = *(v3 + 3440);
                                  *(&v309 - 4) = *(v203 + 16);
                                  *(&v309 - 5) = *(v203 + 8);
                                  v204 = *(v3 + 3464);
                                  v308 = *(v204 + 16);
                                  *(&v309 - 3) = *(v204 + 8);
                                  *&v206 = MEMORY[0x28223BE20](v205);
                                  *(&v309 - 3) = v206;
                                  *(&v309 - 2) = v206;
                                  *(&v309 - 12) = v207;
                                  MEMORY[0x28223BE20](v208);
                                  *(&v309 - 3) = 0;
                                  v308 = 0;
                                  *(&v309 - 4) = 0;
                                  *(&v309 - 8) = 1;
                                  v209 = *(v3 + 3472);
                                  *(v210 - 32) = *(v209 + 16);
                                  *(v210 - 40) = *(v209 + 8);
                                  v211 = *(v3 + 4064);
                                  *(v210 - 16) = *(v211 + 32);
                                  *(v210 - 24) = *(v211 + 24);
                                  v308 = *(v209 + 16);
                                  *(&v309 - 3) = *(v209 + 8);
                                  v335.mSampleTime = v212;
                                  v335.mHostTime = v213;
                                  *&v338.mNumberBuffers = v212;
                                  *&v338.mBuffers[0].mNumberChannels = &v309 - 4;
                                  v214 = *&a2->mRateScalar;
                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                  *&inInputBufferLists.mRateScalar = v214;
                                  v215 = *&a2->mSMPTETime.mHours;
                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                  *&inInputBufferLists.mSMPTETime.mHours = v215;
                                  v325 = 512;
                                  AudioUnitProcessMultiple(*(v3 + 3160), &v325, &inInputBufferLists, *(v3 + 516), 2u, &v335, 2u, &v338);
                                  v216 = *(v3 + 516);
                                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                  {
                                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v216, *(v3 + 3440), &inInputBufferLists);
                                    v216 = *(v3 + 516);
                                    v217 = *(v3 + 3464);
                                    if (*(v3 + 15881))
                                    {
                                      goto LABEL_461;
                                    }
                                  }

                                  else
                                  {
                                    v217 = *(v3 + 3464);
                                  }

                                  if (*(v3 + 15882) != 1)
                                  {
LABEL_462:
                                    v201 = *(v3 + 4688);
                                    goto LABEL_463;
                                  }

LABEL_461:
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v216, v217, &inInputBufferLists);
                                  goto LABEL_462;
                                }

                                v309 = v180;
                                v310 = v148;
                                v311 = v147;
                                v312 = v144;
                                LODWORD(v313) = v145;
                                v196 = 0;
                                v336 = *(v3 + 4216);
                                LODWORD(v337) = *(v3 + 4228);
                                v333 = *(v3 + 4232);
                                v334 = *(v3 + 4244);
                                v331 = *(v3 + 4248);
                                v332 = *(v3 + 4260);
                                v329 = *(v3 + 4264);
                                v330 = *(v3 + 4276);
                                v327 = *(v3 + 4280);
                                v328 = *(v3 + 4292);
                                do
                                {
                                  AudioUnitSetParameter(*(v3 + 3088), 0x64u, 4u, v196, *(&v336 + v196), 0);
                                  AudioUnitSetParameter(*(v3 + 3088), 0x65u, 4u, v196, *(&v333 + v196), 0);
                                  AudioUnitSetParameter(*(v3 + 3088), 0x66u, 4u, v196, *(&v331 + v196), 0);
                                  AudioUnitSetParameter(*(v3 + 3088), 0x67u, 4u, v196, *(&v329 + v196), 0);
                                  AudioUnitSetParameter(*(v3 + 3088), 0x68u, 4u, v196, *(&v327 + v196), 0);
                                  ++v196;
                                }

                                while (v196 != 3);
                                *&v338.mNumberBuffers = 1;
                                *&v338.mBuffers[0].mNumberChannels = 0;
                                v338.mBuffers[0].mData = 0;
                                v338.mBuffers[0] = *(*(v3 + 4064) + 8);
                                *ioDataSize = v309;
                                v342 = v315;
                                v335.mSampleTime = *(v3 + 3440);
                                v335.mHostTime = &v338;
                                v335.mWordClockTime = 0;
                                v335.mRateScalar = 0.0;
                                v325 = 512;
                                v197 = *&a2->mRateScalar;
                                *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                *&inInputBufferLists.mRateScalar = v197;
                                v198 = *&a2->mSMPTETime.mHours;
                                *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                *&inInputBufferLists.mSMPTETime.mHours = v198;
                                AudioUnitProcessMultiple(*(v3 + 3088), &v325, &inInputBufferLists, *(v3 + 516), 2u, ioDataSize, 4u, &v335);
                                v316 = 0.0;
                                AudioUnitGetParameter(*(v3 + 3088), 0xAu, 0, 0, &v316);
                                v199 = *(v3 + 516);
                                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v199, *(v3 + 3440), &inInputBufferLists);
                                  v199 = *(v3 + 516);
                                  v144 = v312;
                                  v145 = v313;
                                  v148 = v310;
                                  v147 = v311;
                                  if (*(v3 + 15881))
                                  {
                                    goto LABEL_431;
                                  }
                                }

                                else
                                {
                                  v144 = v312;
                                  v145 = v313;
                                  v148 = v310;
                                  v147 = v311;
                                }

                                if (*(v3 + 15882) != 1)
                                {
LABEL_432:
                                  AudioUnitGetParameter(*(v3 + 3088), 0x64u, 4u, 0, (v3 + 4216));
                                  AudioUnitGetParameter(*(v3 + 3088), 0x65u, 4u, 0, (v3 + 4232));
                                  AudioUnitGetParameter(*(v3 + 3088), 0x66u, 4u, 0, (v3 + 4248));
                                  AudioUnitGetParameter(*(v3 + 3088), 0x67u, 4u, 0, (v3 + 4264));
                                  AudioUnitGetParameter(*(v3 + 3088), 0x68u, 4u, 0, (v3 + 4280));
                                  goto LABEL_433;
                                }

LABEL_431:
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v199, &v338, &inInputBufferLists);
                                goto LABEL_432;
                              }

                              v309 = v180;
                              v310 = v148;
                              v311 = v147;
                              v312 = v144;
                              LODWORD(v313) = v145;
                              v192 = 0;
                              *ioDataSize = *(v3 + 4216);
                              LODWORD(v342) = *(v3 + 4228);
                              v336 = *(v3 + 4232);
                              LODWORD(v337) = *(v3 + 4244);
                              v333 = *(v3 + 4248);
                              v334 = *(v3 + 4260);
                              v331 = *(v3 + 4264);
                              v332 = *(v3 + 4276);
                              v329 = *(v3 + 4280);
                              v330 = *(v3 + 4292);
                              do
                              {
                                AudioUnitSetParameter(*(v3 + 3072), 0x12u, 4u, v192, *&ioDataSize[v192], 0);
                                AudioUnitSetParameter(*(v3 + 3072), 0x13u, 4u, v192, *(&v336 + v192), 0);
                                AudioUnitSetParameter(*(v3 + 3072), 0x14u, 4u, v192, *(&v333 + v192), 0);
                                AudioUnitSetParameter(*(v3 + 3072), 0x15u, 4u, v192, *(&v331 + v192), 0);
                                AudioUnitSetParameter(*(v3 + 3072), 0x16u, 4u, v192, *(&v329 + v192), 0);
                                ++v192;
                              }

                              while (v192 != 3);
                              v180 = v309;
                              *&v335.mSampleTime = v309;
                              v335.mHostTime = v315;
                              *&v338.mNumberBuffers = v309;
                              *&v338.mBuffers[0].mNumberChannels = v315;
                              v325 = 512;
                              v193 = *&a2->mRateScalar;
                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                              *&inInputBufferLists.mRateScalar = v193;
                              v194 = *&a2->mSMPTETime.mHours;
                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                              *&inInputBufferLists.mSMPTETime.mHours = v194;
                              AudioUnitProcessMultiple(*(v3 + 3072), &v325, &inInputBufferLists, *(v3 + 516), 2u, &v335, 2u, &v338);
                              v195 = *(v3 + 516);
                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v195, v180, &inInputBufferLists);
                                v195 = *(v3 + 516);
                                v144 = v312;
                                v145 = v313;
                                v148 = v310;
                                v147 = v311;
                                if (*(v3 + 15881))
                                {
                                  goto LABEL_418;
                                }
                              }

                              else
                              {
                                v144 = v312;
                                v145 = v313;
                                v148 = v310;
                                v147 = v311;
                              }

                              if (*(v3 + 15882) != 1)
                              {
LABEL_419:
                                v185 = *(v3 + 4688);
                                goto LABEL_420;
                              }

LABEL_418:
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v195, v315, &inInputBufferLists);
                              goto LABEL_419;
                            }

                            v309 = (&v309 - 8);
                            v310 = v148;
                            v311 = v147;
                            v312 = v144;
                            LODWORD(v313) = v145;
                            v188 = 0;
                            *ioDataSize = *(v3 + 4216);
                            LODWORD(v342) = *(v3 + 4228);
                            v336 = *(v3 + 4232);
                            LODWORD(v337) = *(v3 + 4244);
                            v333 = *(v3 + 4248);
                            v334 = *(v3 + 4260);
                            v331 = *(v3 + 4264);
                            v332 = *(v3 + 4276);
                            v329 = *(v3 + 4280);
                            v330 = *(v3 + 4292);
                            do
                            {
                              AudioUnitSetParameter(*(v3 + 3064), 9u, 4u, v188, *&ioDataSize[v188], 0);
                              AudioUnitSetParameter(*(v3 + 3064), 0xAu, 4u, v188, *(&v336 + v188), 0);
                              AudioUnitSetParameter(*(v3 + 3064), 0xBu, 4u, v188, *(&v333 + v188), 0);
                              AudioUnitSetParameter(*(v3 + 3064), 0xCu, 4u, v188, *(&v331 + v188), 0);
                              AudioUnitSetParameter(*(v3 + 3064), 0xDu, 4u, v188, *(&v329 + v188), 0);
                              ++v188;
                            }

                            while (v188 != 3);
                            v180 = v309;
                            *&v335.mSampleTime = v309;
                            v335.mHostTime = v315;
                            *&v338.mNumberBuffers = v309;
                            *&v338.mBuffers[0].mNumberChannels = v315;
                            v325 = 512;
                            v189 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v189;
                            v190 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v190;
                            AudioUnitProcessMultiple(*(v3 + 3064), &v325, &inInputBufferLists, *(v3 + 516), 2u, &v335, 2u, &v338);
                            v191 = *(v3 + 516);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v191, v180, &inInputBufferLists);
                              v191 = *(v3 + 516);
                              v144 = v312;
                              v145 = v313;
                              v148 = v310;
                              v147 = v311;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_405;
                              }
                            }

                            else
                            {
                              v144 = v312;
                              v145 = v313;
                              v148 = v310;
                              v147 = v311;
                            }

                            if (*(v3 + 15882) != 1)
                            {
LABEL_406:
                              v185 = *(v3 + 4688);
                              goto LABEL_407;
                            }

LABEL_405:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v191, v315, &inInputBufferLists);
                            goto LABEL_406;
                          }

                          if ((v135 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 3048))
                          {
                            goto LABEL_384;
                          }

                          memcpy(*(*(v3 + 3488) + 16), *(*(v3 + 3440) + 16), 8 * *(v3 + 516));
                          memcpy(*(*(v3 + 3488) + 32), *(*(v3 + 4080) + 16), 8 * *(v3 + 516));
                          v333 = *(v3 + 3488);
                          v168 = *(v3 + 3480);
                          *ioDataSize = *(v3 + 3448);
                          v342 = v168;
                          v169 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v169;
                          v170 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v170;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 3048), &v325, &inInputBufferLists, *(v3 + 516), 1u, &v333, 2u, ioDataSize);
                          v171 = *(v3 + 516);
                          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                          {
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v171, *ioDataSize, &inInputBufferLists);
                            v171 = *(v3 + 516);
                            v172 = v342;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_368;
                            }
                          }

                          else
                          {
                            v172 = v342;
                          }

                          if (*(v3 + 15882) != 1)
                          {
LABEL_369:
                            if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 3056))
                            {
                              goto LABEL_384;
                            }

                            memcpy(*(*(v3 + 3496) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                            memcpy(*(*(v3 + 3456) + 16), *(*(v3 + 3464) + 16), 4 * (2 * *(v3 + 516)));
                            LODWORD(v331) = 1092616192;
                            v173 = *(v3 + 3480);
                            *&v338.mNumberBuffers = *(v3 + 3448);
                            *&v338.mBuffers[0].mNumberChannels = v173;
                            v174 = *(v3 + 4080);
                            v338.mBuffers[0].mData = *(v3 + 3496);
                            v339 = v174;
                            v340 = *(v3 + 3456);
                            v175 = *(v3 + 3464);
                            v176 = 10.0;
                            v336 = *(v3 + 3440);
                            v337 = v175;
                            if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                            {
                              v177 = *(v3 + 3232);
                              if (v177)
                              {
                                AudioUnitGetParameter(v177, 9u, 0, 0, &v331);
                                v176 = *&v331;
                              }
                            }

                            AudioUnitSetParameter(*(v3 + 3056), 0xAu, 0, 0, v176, 0);
                            AudioUnitSetParameter(*(v3 + 3056), 0x17u, 0, 0, *(v3 + 16756), 0);
                            v178 = *&a2->mRateScalar;
                            *&v335.mSampleTime = *&a2->mSampleTime;
                            *&v335.mRateScalar = v178;
                            v179 = *&a2->mSMPTETime.mHours;
                            *&v335.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&v335.mSMPTETime.mHours = v179;
                            Parameter = AudioUnitProcessMultiple(*(v3 + 3056), &v325, &v335, *(v3 + 516), 5u, &v338, 2u, &v336);
                            v163 = *(v3 + 516);
                            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                            {
                              Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v163, v336, &v335);
                              v163 = *(v3 + 516);
                              v164 = v337;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_383;
                              }
                            }

                            else
                            {
                              v164 = v337;
                            }

                            if (*(v3 + 15882) != 1)
                            {
                              goto LABEL_384;
                            }

LABEL_383:
                            p_inInputBufferLists = &v335;
                            v166 = v3;
                            v167 = 27;
                            goto LABEL_356;
                          }

LABEL_368:
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v171, v172, &inInputBufferLists);
                          goto LABEL_369;
                        }
                      }

                      else
                      {
                        v151 = *(v3 + 3032);
                      }

                      v152 = 2.0;
                      goto LABEL_337;
                    }

                    v137 = *(v3 + 4252);
                    if (v137 == 0.0)
                    {
                      v138 = *(*(v3 + 3496) + 16) + 4 * *(v3 + 516);
                      inInputBufferLists.mSampleTime = *(*(v3 + 3496) + 16);
                      inInputBufferLists.mHostTime = v138;
                      VPTimeFreqConverter_Analyze(*(v3 + 16872), *(*(v3 + 3408) + 16), &inInputBufferLists);
                      v137 = *(v3 + 4252);
                      Parameter = *(v3 + 3144);
                    }

                    AudioUnitSetParameter(Parameter, 6u, 0, 0, v137, 0);
                    AudioUnitSetParameter(*(v3 + 3144), 7u, 0, 0, *(v3 + 4268), 0);
                    AudioUnitSetParameter(*(v3 + 3144), 0xDu, 0, 0, *(v3 + 4284), 0);
                    memcpy(*(*(v3 + 3480) + 16), *(*(v3 + 4064) + 32), *(v3 + 4316));
                    v139 = *(v3 + 3480);
                    v335.mSampleTime = *(v3 + 4072);
                    v335.mHostTime = v139;
                    v335.mRateScalar = *(v3 + 4120);
                    memset(&v335.mWordClockTime, 0, 24);
                    *&v338.mNumberBuffers = *(v3 + 3464);
                    *&v338.mBuffers[0].mNumberChannels = 0;
                    v338.mBuffers[0].mData = *(v3 + 4032);
                    v140 = *&a2->mRateScalar;
                    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                    *&inInputBufferLists.mRateScalar = v140;
                    v141 = *&a2->mSMPTETime.mHours;
                    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&inInputBufferLists.mSMPTETime.mHours = v141;
                    v325 = 512;
                    Parameter = AudioUnitProcessMultiple(*(v3 + 3144), &v325, &inInputBufferLists, *(v3 + 516), 6u, &v335, 3u, &v338);
                    v142 = *(v3 + 516);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v142, *(v3 + 3464), &inInputBufferLists);
                      v142 = *(v3 + 516);
                      v143 = *(v3 + 4032);
                      if (*(v3 + 15881))
                      {
                        goto LABEL_303;
                      }
                    }

                    else
                    {
                      v143 = *(v3 + 4032);
                    }

                    if (*(v3 + 15882) != 1)
                    {
LABEL_304:
                      v135 = *(v3 + 4688);
                      goto LABEL_305;
                    }

LABEL_303:
                    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v142, v143, &inInputBufferLists);
                    goto LABEL_304;
                  }

LABEL_668:
                  std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
                }
              }

              else
              {
                v120 = *(v3 + 3384);
              }

              if (*(v3 + 15882) != 1)
              {
                goto LABEL_242;
              }

              goto LABEL_241;
            }
          }

          else
          {
            v104 = *(v3 + 17192);
          }

          if (*(v3 + 15882) != 1)
          {
            goto LABEL_179;
          }

          goto LABEL_178;
        }

        v99 = *(v3 + 16880);
        if ((*(v3 + 16888) - v99) <= 0x20)
        {
          goto LABEL_668;
        }

        ECApplicator::apply(*(v99 + 32), &buf, v77, &v324, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
        v100 = *(v3 + 516);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v100, *(v3 + 1096), &buf);
          v100 = *(v3 + 516);
          v101 = *(v3 + 3392);
          if (*(v3 + 15881))
          {
LABEL_163:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v100, v101, &buf);
            LODWORD(v100) = *(v3 + 516);
            v101 = *(v3 + 3392);
LABEL_164:
            inInputBufferLists.mSampleTime = *(*(v3 + 4088) + 16);
            inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v100;
            VPTimeFreqConverter_Analyze(*(v3 + 17136), *(v101 + 16), &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 516), *(v3 + 4088), &buf);
            }

            v83 = *(v3 + 4688);
            goto LABEL_168;
          }
        }

        else
        {
          v101 = *(v3 + 3392);
        }

        if (*(v3 + 15882) != 1)
        {
          goto LABEL_164;
        }

        goto LABEL_163;
      }

      v76 = *(v3 + 12536);
      if (v75 != 3)
      {
        if (v76 == 2)
        {
          v77 = 1;
          v78 = 3;
          LODWORD(v313) = 2;
          v79 = 56;
          v80 = 40;
          goto LABEL_121;
        }

        v76 = *(v3 + 12536);
        if (v76 <= 0xC && ((0x1028u >> v76) & 1) != 0)
        {
          v77 = 3;
          v78 = 2;
          LODWORD(v313) = 1;
          v79 = 40;
          v80 = 24;
          goto LABEL_121;
        }
      }

      v77 = 1;
      v78 = 2;
      if (v76 != 9)
      {
        LODWORD(v313) = 0;
        v81 = 0;
        goto LABEL_123;
      }

      LODWORD(v313) = 3;
      v79 = 40;
      v80 = 56;
LABEL_121:
      *(v3 + 16960) = *(v74 + v80);
      *(v3 + 16984) = *(v74 + v79);
      v81 = v78;
      v78 = v77;
      v77 = 0;
LABEL_123:
      v82 = v74 + 8;
      *(v3 + 16912) = *(v82 + 16 * v77);
      *(v3 + 16936) = *(v82 + 16 * v78);
      goto LABEL_124;
    }
  }

  v13 = 0;
  while (((*(v3 + 472) >> v13) & 1) == 0)
  {
    if (++v13 == 32)
    {
      v13 = 33;
      break;
    }
  }

  v14 = *(v3 + 1088);
  if (v13 >= *v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v17 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = **(v3 + 1088);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v7.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 50;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v13;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v19;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v20 = *(v3 + 12704);
    if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v7.cpp", 50, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 1088));
    }

    v15 = *(*(v3 + 1096) + 16);
    v16 = *(v3 + 1088);
  }

  else
  {
    v15 = *(*(v3 + 1096) + 16);
    v16 = &v14[4 * v13];
  }

  memcpy(v15, v16[2], *(v16 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v21 = *(v3 + 3224);
    if (v21)
    {
      v22 = *(v3 + 4024);
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      inInputBufferLists.mHostTime = v22;
      v23 = *(v3 + 4040);
      v335.mSampleTime = inInputBufferLists.mSampleTime;
      v335.mHostTime = v23;
      v24 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v24;
      v25 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v25;
      v338.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v21, &v338.mNumberBuffers, &buf, *(v3 + 516), 2u, &inInputBufferLists, 2u, &v335);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 1096), &buf);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
      {
        AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v326);
        AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v326, 0);
      }
    }
  }

LABEL_592:
  v338.mNumberBuffers = 0;
  v283 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v284 = v283;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 16424) != 0) | v283 & 1))
    {
      goto LABEL_608;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v284 & 1) == 0)
    {
      goto LABEL_608;
    }
  }

  else
  {
    if ((v283 & 1) == 0)
    {
      goto LABEL_608;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v285 = *(v3 + 4688);
  if ((v285 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v286 = *(v3 + 3280);
    if (v286)
    {
      v287 = 1936748646;
LABEL_606:
      AudioUnitGetParameter(v286, v287, 0, 0, &v338.mNumberBuffers);
      goto LABEL_608;
    }
  }

  if ((v285 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v286 = *(v3 + 3272);
    if (v286)
    {
      v287 = 2;
      goto LABEL_606;
    }
  }

  *&v338.mNumberBuffers = v326;
LABEL_608:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 1096) + 16), 4 * *(v3 + 516));
    v338.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 16432) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v288 = *(v3 + 3632);
    if (((v288 != 0) & v284) == 1)
    {
      AudioUnitSetParameter(v288, 0x12u, 0, 0, *&v338.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 516), *(v3 + 1096), a2);
  }

  if ((*(v3 + 4695) & 8) != 0 && (*(v3 + 4711) & 8) != 0)
  {
    v289 = *(v3 + 3264);
    if (v289)
    {
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      v335.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v319.realp) = 512;
      v290 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v290;
      v291 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v291;
      AudioUnitProcessMultiple(v289, &v319, &buf, *(v3 + 516), 1u, &inInputBufferLists, 1u, &v335);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v292 = *(v3 + 3352);
    if (v292)
    {
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      v335.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v319.realp) = 512;
      v293 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v293;
      v294 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v294;
      AudioUnitProcessMultiple(v292, &v319, &buf, *(v3 + 516), 1u, &inInputBufferLists, 1u, &v335);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  if ((*(v3 + 4688) & 0x8000000000000000) != 0 && (*(v3 + 4704) & 0x8000000000000000) != 0)
  {
    v295 = *(v3 + 3296);
    if (v295)
    {
      v296 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v296;
      v297 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v297;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v295, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  v298 = *(v3 + 4696);
  if (v298 & 1) != 0 && (*(v3 + 4712))
  {
    v299 = *(v3 + 3304);
    if (v299)
    {
      v300 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v300;
      v301 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v301;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v299, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
      v298 = *(v3 + 4696);
    }
  }

  if ((v298 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v302 = *(v3 + 3312)) != 0)
  {
    v303 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v303;
    v304 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v304;
    LODWORD(inInputBufferLists.mSampleTime) = 512;
    AudioUnitProcess(v302, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 516), *(v3 + 1096), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 3272))
    {
      LODWORD(v335.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 3312), 1u, 0, 0, &v335);
      AudioUnitSetParameter(*(v3 + 3272), 0x11u, 0, 0, *&v335.mSampleTime, 0);
    }

    LODWORD(v335.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 3312), 0x1Bu, 0, 0, &v335);
    mSampleTime_low = LODWORD(v335.mSampleTime);
    if (*(v3 + 2308) != *&v335.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v306 = *(v3 + 3272);
        if (v306)
        {
          AudioUnitSetParameter(v306, 0x12u, 0, 0, *&v335.mSampleTime, 0);
          mSampleTime_low = LODWORD(v335.mSampleTime);
        }
      }

      *(v3 + 2308) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 4396) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 1096) + 16), 1, &buf, *(*(v3 + 1096) + 16), 1, *(v3 + 516));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 516), *(v3 + 1096), a2);
    }
  }

  VoiceProcessorV6::ProcessLevelDrivenSuppressor(v3, a2);
  return 0;
}

uint64_t VoiceProcessorV8::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v488 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 516), *(v3 + 1080)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 516), *(v3 + 1088)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 1080);
      v9 = (v3 + 516);
      v10 = *(v3 + 516);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 1080);
    goto LABEL_19;
  }

  v6 = *(v3 + 1080);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 1080);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 516);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 516);
    v11 = *(v3 + 1088);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 1088);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 1424);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 516);
  v12 = *(v3 + 1424);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v470 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v26 = *(v3 + 4688);
    if (v26 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v469 = 0;
      *(v3 + 17096) = 0;
      *(v3 + 17112) = 0;
      *(v3 + 17104) = 0;
      *(v3 + 17096) = 1;
      *(v3 + 17104) = *(*(v3 + 1080) + 8);
      if (v26 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 2792);
        if (this)
        {
          v27 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v27;
          v28 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v28;
          v469 = 512;
          this = AudioUnitProcess(this, &v469, &buf, *(v3 + 516), *(v3 + 1088));
        }
      }

      v459 = &v453;
      MEMORY[0x28223BE20](this);
      v30 = (&v453 - ((v29 + 15) & 0x3FFFFFFFF0));
      v31 = *(v3 + 1088);
      if (*v31)
      {
        v32 = 0;
        v33 = 2;
        v34 = v30;
        do
        {
          *&v34->mNumberBuffers = 0;
          *&v34->mBuffers[0].mNumberChannels = 0;
          v34->mBuffers[0].mData = 0;
          v34->mNumberBuffers = 1;
          v34->mBuffers[0] = *&v31[v33];
          ++v32;
          v33 += 4;
          ++v34;
        }

        while (v32 < *v31);
      }

      v35 = *(v3 + 4688);
      if ((v35 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v36 = *(v3 + 2800);
        if (v36)
        {
          v37 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v37;
          v38 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v38;
          v469 = 512;
          AudioUnitProcess(v36, &v469, &buf, *v9, v30);
          v44 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v44, v30, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1112), v30, v44, v39, v40, v41, v42, v43, v453);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v45 = *(v3 + 2808);
        if (v45)
        {
          v46 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v46;
          v47 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v47;
          v469 = 512;
          AudioUnitProcess(v45, &v469, &buf, *v9, v30 + 1);
          v53 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v53, v30 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1120), v30 + 1, v53, v48, v49, v50, v51, v52, v453);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v54 = *(v3 + 2816);
        if (v54)
        {
          v55 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v55;
          v56 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v56;
          v469 = 512;
          AudioUnitProcess(v54, &v469, &buf, *v9, v30 + 2);
          v62 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v62, v30 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1128), v30 + 2, v62, v57, v58, v59, v60, v61, v453);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v63 = *(v3 + 2824);
        if (v63)
        {
          v64 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v64;
          v65 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v65;
          v469 = 512;
          AudioUnitProcess(v63, &v469, &buf, *v9, v30 + 3);
          v71 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v71, v30 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1136), v30 + 3, v71, v66, v67, v68, v69, v70, v453);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 0x40) != 0 && (*(v3 + 4704) & 0x40) != 0 && *(v3 + 2840))
      {
        v72 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v72;
        v73 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v73;
        VoiceProcessorV6::ApplyGMCoexNoiseMitigation(v3, *(v3 + 1088), *(v3 + 1088), &buf, *(v3 + 516));
      }

      v74 = *(v3 + 1088);
      if (*v74 < 3u)
      {
        *(v3 + 16912) = *(v74 + 8);
        if (*v74 < 2u)
        {
          v458 = 0;
          v80 = 0;
          v77 = 0;
          v76 = 0;
        }

        else if (*(v3 + 17160) == 1)
        {
          v458 = 0;
          v80 = 0;
          v77 = 0;
          *(v3 + 16912) = *(v74 + 24);
          *(v3 + 16936) = *(v74 + 8);
          v76 = 1;
        }

        else
        {
          v458 = 0;
          v80 = 0;
          v76 = 0;
          *(v3 + 16936) = *(v74 + 24);
          v77 = 1;
        }

LABEL_124:
        v82 = *(v3 + 4688);
        LODWORD(v460) = v77;
        if ((v82 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
        {
          v83 = *(v3 + 2848);
          if (v83)
          {
            v84 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v84;
            v85 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v85;
            v469 = 512;
            AudioUnitProcess(v83, &v469, &buf, *(v3 + 516), (v3 + 16904));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 516), (v3 + 16904), &buf);
            }

            v82 = *(v3 + 4688);
          }
        }

        if (v82 & 0x100) != 0 && (*(v3 + 4705))
        {
          v86 = *(v3 + 2856);
          if (v86)
          {
            v87 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v87;
            v88 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v88;
            v469 = 512;
            AudioUnitProcess(v86, &v469, &buf, *(v3 + 516), (v3 + 16928));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 516), (v3 + 16928), &buf);
            }

            v82 = *(v3 + 4688);
          }
        }

        if ((v82 & 0x200) != 0)
        {
          v89 = *(v3 + 4704);
          if ((v89 & 0x200) != 0)
          {
            v90 = *(v3 + 2864);
            if (v90)
            {
              if ((v82 & v89 & 0x1000000000000) != 0 && *(v3 + 3176))
              {
                v91 = *&a2->mRateScalar;
                *&buf.mSampleTime = *&a2->mSampleTime;
                *&buf.mRateScalar = v91;
                v92 = *&a2->mSMPTETime.mHours;
                *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                *&buf.mSMPTETime.mHours = v92;
                v469 = 512;
                AudioUnitProcess(v90, &v469, &buf, *(v3 + 516), (v3 + 16952));
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 8u, *(v3 + 516), (v3 + 16952), &buf);
                }

                v82 = *(v3 + 4688);
              }
            }
          }
        }

        if ((v82 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
        {
          v93 = *(v3 + 2872);
          if (v93)
          {
            v94 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v94;
            v95 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v95;
            v469 = 512;
            AudioUnitProcess(v93, &v469, &buf, *(v3 + 516), (v3 + 16976));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 516), (v3 + 16976), &buf);
            }

            v82 = *(v3 + 4688);
          }
        }

        if ((v82 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0)
        {
          if (*(v3 + 2968))
          {
            v96 = *(v3 + 17600);
            if (v96)
            {
              v97 = *(v3 + 16920);
              v98 = *(*(v3 + 17560) + 16) + 4 * *(v3 + 516);
              buf.mSampleTime = *(*(v3 + 17560) + 16);
              buf.mHostTime = v98;
              VPTimeFreqConverter_Analyze(v96, v97, &buf);
              v82 = *(v3 + 4688);
            }
          }
        }

        if ((v82 & 0x800000) != 0 && (*(v3 + 4706) & 0x80) != 0)
        {
          if (*(v3 + 2976))
          {
            v99 = *(v3 + 17608);
            if (v99)
            {
              v100 = *(v3 + 16944);
              v101 = *(*(v3 + 17568) + 16) + 4 * *(v3 + 516);
              buf.mSampleTime = *(*(v3 + 17568) + 16);
              buf.mHostTime = v101;
              VPTimeFreqConverter_Analyze(v99, v100, &buf);
              v82 = *(v3 + 4688);
            }
          }
        }

        if (v82 & 0x1000000) != 0 && (*(v3 + 4707))
        {
          if (*(v3 + 2984))
          {
            v102 = *(v3 + 17616);
            if (v102)
            {
              v103 = *(v3 + 16968);
              v104 = *(*(v3 + 17576) + 16) + 4 * *(v3 + 516);
              buf.mSampleTime = *(*(v3 + 17576) + 16);
              buf.mHostTime = v104;
              VPTimeFreqConverter_Analyze(v102, v103, &buf);
              v82 = *(v3 + 4688);
            }
          }
        }

        if ((v82 & 0x2000000) != 0 && (*(v3 + 4707) & 2) != 0)
        {
          if (*(v3 + 2992))
          {
            v105 = *(v3 + 17624);
            if (v105)
            {
              v106 = *(v3 + 16992);
              v107 = *(*(v3 + 17584) + 16) + 4 * *(v3 + 516);
              buf.mSampleTime = *(*(v3 + 17584) + 16);
              buf.mHostTime = v107;
              VPTimeFreqConverter_Analyze(v105, v106, &buf);
              v82 = *(v3 + 4688);
            }
          }
        }

        if (((v82 & 0x1000000000000) == 0 || (*(v3 + 4710) & 1) == 0 || !*(v3 + 3176)) && (v82 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
        {
          v108 = *(v3 + 2880);
          if (v108)
          {
            MEMORY[0x28223BE20](v108);
            *(&v453 - 6) = 2;
            *(&v453 - 5) = *(v3 + 16912);
            *(&v453 - 3) = *(v3 + 16936);
            *&v479.mSampleTime = &v453 - 6;
            v479.mHostTime = 0;
            *&v484.mSampleTime = v3 + 16904;
            memset(&v484.mHostTime, 0, 24);
            v469 = 512;
            v109 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v109;
            v110 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v110;
            AudioUnitProcessMultiple(v111, &v469, &buf, *(v3 + 516), 2u, &v479, 4u, &v484);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 516), (v3 + 16904), &buf);
            }

            v82 = *(v3 + 4688);
          }
        }

        v468 = 0;
        v112 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v112;
        v113 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v113;
        if ((v82 & 0x4000000) == 0 || (*(v3 + 4707) & 4) == 0 || !*(v3 + 3000))
        {
LABEL_199:
          v467 = 0;
          if ((*(v3 + 4691) & 8) == 0 || (*(v3 + 4707) & 8) == 0 || !*(v3 + 3008))
          {
            goto LABEL_213;
          }

          v119 = *(v3 + 16880);
          if ((*(v3 + 16888) - v119) <= 0x28)
          {
            goto LABEL_856;
          }

          ECApplicator::apply(*(v119 + 40), &buf, v460, &v467, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
          v120 = *(v3 + 516);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x22u, v120, *(v3 + 1096), &buf);
            v120 = *(v3 + 516);
            v121 = *(v3 + 17192);
            if (*(v3 + 15881))
            {
              goto LABEL_209;
            }
          }

          else
          {
            v121 = *(v3 + 17192);
          }

          if (*(v3 + 15882) != 1)
          {
LABEL_210:
            v122 = *(v3 + 17256);
            v123 = *(v121 + 16);
            v484.mSampleTime = *(*(v3 + 4096) + 16);
            v484.mHostTime = *&v484.mSampleTime + 4 * v120;
            VPTimeFreqConverter_Analyze(v122, v123, &v484);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x17u, *(v3 + 516), *(v3 + 4096), &buf);
            }

LABEL_213:
            if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0 && *(v3 + 2968))
            {
              v124 = *(v3 + 16880);
              if (*(v3 + 16888) == v124)
              {
                goto LABEL_856;
              }

              ECApplicator::apply(*v124, &buf, v76, &v468 + 1, (v3 + 4216), (v3 + 4232), (v3 + 4248), (v3 + 4264), (v3 + 4280), (v3 + 4296));
              v125 = *(v3 + 516);
              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v125, (v3 + 16904), &buf);
                v125 = *(v3 + 516);
                v126 = *(v3 + 3360);
                if (*(v3 + 15881))
                {
                  goto LABEL_257;
                }
              }

              else
              {
                v126 = *(v3 + 3360);
              }

              if (*(v3 + 15882) == 1)
              {
LABEL_257:
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v125, v126, &buf);
              }
            }

            else
            {
              v127 = 0;
              while (((*(v3 + 472) >> v127) & 1) == 0)
              {
                if (++v127 == 32)
                {
                  v127 = 33;
                  break;
                }
              }

              if (v127 >= **(v3 + 1088))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v128 = VPLogScope(void)::scope;
                if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                {
                  v129 = (*v128 ? *v128 : MEMORY[0x277D86220]);
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                  {
                    v130 = **(v3 + 1088);
                    LODWORD(v484.mSampleTime) = 136315906;
                    *(&v484.mSampleTime + 4) = "vpProcessUplink_v8.cpp";
                    WORD2(v484.mHostTime) = 1024;
                    *(&v484.mHostTime + 6) = 371;
                    WORD1(v484.mRateScalar) = 1024;
                    HIDWORD(v484.mRateScalar) = v127;
                    LOWORD(v484.mWordClockTime) = 1024;
                    *(&v484.mWordClockTime + 2) = v130;
                    _os_log_impl(&dword_2724B4000, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &v484, 0x1Eu);
                  }
                }

                v131 = *(v3 + 12704);
                if (v131 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v131, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v8.cpp", 371, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v127, **(v3 + 1088));
                }

                v127 = 0;
              }

              v132 = *(v3 + 1088) + 16 * v127;
              memcpy(*(*(v3 + 1096) + 16), *(v132 + 16), *(v132 + 12));
            }

            if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
            {
              v133 = *(v3 + 3344);
              if (v133)
              {
                v484.mSampleTime = *(v3 + 1088);
                v484.mHostTime = v3 + 17096;
                v479.mSampleTime = *(v3 + 1096);
                v469 = 512;
                AudioUnitProcessMultiple(v133, &v469, &buf, *(v3 + 516), 2u, &v484, 1u, &v479);
              }
            }

            v466 = 0;
            if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0 && *(v3 + 2976))
            {
              v134 = *(v3 + 16880);
              if ((*(v3 + 16888) - v134) <= 8)
              {
                goto LABEL_856;
              }

              ECApplicator::apply(*(v134 + 8), &buf, v460, &v466, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
              v135 = *(v3 + 516);
              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v135, (v3 + 16928), &buf);
                v135 = *(v3 + 516);
                v136 = *(v3 + 3368);
                if (*(v3 + 15881))
                {
                  goto LABEL_260;
                }
              }

              else
              {
                v136 = *(v3 + 3368);
              }

              if (*(v3 + 15882) == 1)
              {
LABEL_260:
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v135, v136, &buf);
              }
            }

            v465 = 0;
            if ((*(v3 + 4691) & 1) == 0 || (*(v3 + 4707) & 1) == 0 || !*(v3 + 2984))
            {
              goto LABEL_272;
            }

            v137 = *(v3 + 16880);
            if ((*(v3 + 16888) - v137) <= 0x10)
            {
              goto LABEL_856;
            }

            ECApplicator::apply(*(v137 + 16), &buf, v458, &v465, (v3 + 4224), (v3 + 4240), (v3 + 4256), (v3 + 4272), (v3 + 4288), (v3 + 4304));
            v138 = *(v3 + 516);
            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v138, (v3 + 16952), &buf);
              v138 = *(v3 + 516);
              v139 = *(v3 + 3384);
              if (*(v3 + 15881))
              {
LABEL_271:
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v138, v139, &buf);
LABEL_272:
                v464 = 0;
                if ((*(v3 + 4691) & 2) == 0 || (*(v3 + 4707) & 2) == 0 || !*(v3 + 2992))
                {
                  goto LABEL_283;
                }

                v140 = *(v3 + 16880);
                if ((*(v3 + 16888) - v140) > 0x18)
                {
                  ECApplicator::apply(*(v140 + 24), &buf, v80, &v464, (v3 + 4228), (v3 + 4244), (v3 + 4260), (v3 + 4276), (v3 + 4292), (v3 + 4308));
                  v141 = *(v3 + 516);
                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v141, (v3 + 16976), &buf);
                    v141 = *(v3 + 516);
                    v142 = *(v3 + 3376);
                    if (*(v3 + 15881))
                    {
                      goto LABEL_282;
                    }
                  }

                  else
                  {
                    v142 = *(v3 + 3376);
                  }

                  if (*(v3 + 15882) == 1)
                  {
LABEL_282:
                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v141, v142, &buf);
                  }

LABEL_283:
                  if ((*(v3 + 8869) & 8) != 0 && (*(v3 + 8877) & 8) != 0)
                  {
                    if (*(v3 + 3856))
                    {
                      *(v3 + 17128) = 0;
                      if (*(v3 + 4691) & 1) != 0 && (*(v3 + 4707))
                      {
                        v143 = *(v3 + 2984);
                        if (v143)
                        {
                          if (*(v3 + 17120))
                          {
                            LODWORD(v484.mSampleTime) = 0;
                            if (!AudioUnitGetPropertyInfo(v143, 0xF3Cu, 0, 0, &v484, 0) && LODWORD(v484.mSampleTime) == 4 * *v9)
                            {
                              v144 = *(*(v3 + 17120) + 16);
                              Property = AudioUnitGetProperty(*(v3 + 2984), 0xF3Cu, 0, 0, v144, &v484);
                              if (*(v3 + 489) == 1)
                              {
                                AudioUnitSetProperty(*(v3 + 3856), 0xF3Cu, 0, 0, v144, LODWORD(v484.mSampleTime));
                              }

                              *(v3 + 17128) = Property == 0;
                            }
                          }
                        }
                      }
                    }
                  }

                  v146 = *(v3 + 4176);
                  v147 = *(v3 + 17112);
                  v148 = *(*(v3 + 4112) + 16) + 4 * *(v3 + 516);
                  v484.mSampleTime = *(*(v3 + 4112) + 16);
                  v484.mHostTime = v148;
                  VPTimeFreqConverter_Analyze(v146, v147, &v484);
                  v463 = 0.0;
                  if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0)
                  {
                    if (*(v3 + 2968))
                    {
                      v150 = *(v3 + 4128);
                      v151 = *(v3 + 16920);
                      v152 = *(*(v3 + 3440) + 16) + 4 * *(v3 + 516);
                      v484.mSampleTime = *(*(v3 + 3440) + 16);
                      v484.mHostTime = v152;
                      VPTimeFreqConverter_Analyze(v150, v151, &v484);
                      v153 = *(v3 + 4160);
                      v154 = *(*(v3 + 3360) + 16);
                      v155 = *(*(v3 + 4064) + 16) + 4 * *(v3 + 516);
                      v484.mSampleTime = *(*(v3 + 4064) + 16);
                      v484.mHostTime = v155;
                      VPTimeFreqConverter_Analyze(v153, v154, &v484);
                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 516), *(v3 + 3440), &buf);
                      }
                    }
                  }

                  if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0)
                  {
                    if (*(v3 + 2976))
                    {
                      v156 = *(v3 + 4136);
                      v157 = *(v3 + 16944);
                      v158 = *(*(v3 + 4072) + 16) + 4 * *(v3 + 516);
                      v484.mSampleTime = *(*(v3 + 4072) + 16);
                      v484.mHostTime = v158;
                      VPTimeFreqConverter_Analyze(v156, v157, &v484);
                      v159 = *(v3 + 4168);
                      v160 = *(*(v3 + 3368) + 16);
                      v161 = *(*(v3 + 4064) + 32) + 4 * *(v3 + 516);
                      v484.mSampleTime = *(*(v3 + 4064) + 32);
                      v484.mHostTime = v161;
                      VPTimeFreqConverter_Analyze(v159, v160, &v484);
                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 516), *(v3 + 4072), &buf);
                      }
                    }
                  }

                  v162 = *(v3 + 4688);
                  if ((v162 & 0x1000000) != 0)
                  {
                    v163 = *(v3 + 4704);
                    if ((v163 & 0x1000000) != 0)
                    {
                      if (*(v3 + 2984))
                      {
                        if ((v162 & v163 & 0x80000000000) != 0)
                        {
                          Parameter = *(v3 + 3136);
                          if (Parameter)
                          {
                            Parameter = AudioUnitGetParameter(Parameter, 0x2Bu, 0, 0, &v463);
                          }
                        }

                        if (v463 != 0.0 || (*(v3 + 4694) & 1) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 3176))
                        {
                          v164 = *(v3 + 4144);
                          v165 = *(v3 + 16968);
                          v166 = *(*(v3 + 17432) + 16) + 4 * *(v3 + 516);
                          v484.mSampleTime = *(*(v3 + 17432) + 16);
                          v484.mHostTime = v166;
                          VPTimeFreqConverter_Analyze(v164, v165, &v484);
                          v167 = *(v3 + 17152);
                          v168 = *(*(v3 + 3384) + 16);
                          v169 = *(*(v3 + 4064) + 48) + 4 * *(v3 + 516);
                          v484.mSampleTime = *(*(v3 + 4064) + 48);
                          v484.mHostTime = v169;
                          VPTimeFreqConverter_Analyze(v167, v168, &v484);
                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                          {
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x14u, *(v3 + 516), *(v3 + 17432), &buf);
                          }
                        }
                      }
                    }
                  }

                  if ((*(v3 + 4691) & 2) != 0 && (*(v3 + 4707) & 2) != 0)
                  {
                    if (*(v3 + 2992))
                    {
                      v170 = *(v3 + 4152);
                      v171 = *(v3 + 16992);
                      v172 = *(*(v3 + 4080) + 16) + 4 * *(v3 + 516);
                      v484.mSampleTime = *(*(v3 + 4080) + 16);
                      v484.mHostTime = v172;
                      VPTimeFreqConverter_Analyze(v170, v171, &v484);
                      v173 = *(v3 + 16864);
                      v174 = *(*(v3 + 3376) + 16);
                      v175 = *(*(v3 + 4064) + 64) + 4 * *(v3 + 516);
                      v484.mSampleTime = *(*(v3 + 4064) + 64);
                      v484.mHostTime = v175;
                      VPTimeFreqConverter_Analyze(v173, v174, &v484);
                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 516), *(v3 + 4080), &buf);
                      }
                    }
                  }

                  v176 = *(v3 + 4688);
                  if ((v176 & 0x1000) != 0 && (*(v3 + 4705) & 0x10) != 0)
                  {
                    Parameter = *(v3 + 2888);
                    if (Parameter)
                    {
                      MEMORY[0x28223BE20](Parameter);
                      *(&v453 - 6) = 2;
                      *(&v453 - 5) = *(v3 + 16912);
                      *(&v453 - 3) = *(v3 + 16936);
                      inInputBufferLists = (&v453 - 6);
                      v486 = 0;
                      v479.mSampleTime = *(v3 + 17472);
                      memset(&v479.mHostTime, 0, 24);
                      v469 = 512;
                      v177 = *&a2->mRateScalar;
                      *&v484.mSampleTime = *&a2->mSampleTime;
                      *&v484.mRateScalar = v177;
                      v178 = *&a2->mSMPTETime.mHours;
                      *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&v484.mSMPTETime.mHours = v178;
                      AudioUnitProcessMultiple(v179, &v469, &v484, *(v3 + 516), 2u, &inInputBufferLists, 4u, &v479);
                      v180 = *(v3 + 17496);
                      v181 = *(*(v3 + 17472) + 16);
                      v182 = *(*(v3 + 17480) + 16) + 4 * *(v3 + 516);
                      *&v480.mNumberBuffers = *(*(v3 + 17480) + 16);
                      *&v480.mBuffers[0].mNumberChannels = v182;
                      VPTimeFreqConverter_Analyze(v180, v181, &v480);
                      if (*(v3 + 17632) == 1)
                      {
                        v183 = *(v3 + 516);
                        *&v480.mNumberBuffers = *(*(v3 + 3440) + 16);
                        *&v480.mBuffers[0].mNumberChannels = *&v480.mNumberBuffers + 4 * v183;
                        v483.realp = *(*(v3 + 17480) + 16);
                        v483.imagp = &v483.realp[v183];
                        v184 = *(*(v3 + 17488) + 16);
                        v185 = &v184[v183];
                        vDSP_zvabs(&v480, 1, v184, 1, v183);
                        vDSP_zvabs(&v483, 1, v185, 1, *(v3 + 516));
                        vDSP_vmin(v184, 1, v185, 1, v184, 1, *(v3 + 516));
                        LODWORD(v477) = 507307272;
                        MEMORY[0x2743CCE00](v185, 1, &v477, v185, 1, *(v3 + 516));
                        vDSP_vdiv(v185, 1, v184, 1, v185, 1, *(v3 + 516));
                        MEMORY[0x2743CCDD0](v483.realp, 1, v185, 1, v483.realp, 1, *(v3 + 516));
                        Parameter = MEMORY[0x2743CCDD0](v483.imagp, 1, v185, 1, v483.imagp, 1, *(v3 + 516));
                      }

                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x61u, *(v3 + 516), *(v3 + 17480), &v484);
                      }

                      v176 = *(v3 + 4688);
                    }
                  }

                  if ((v176 & 0x20000000) != 0 && (*(v3 + 4707) & 0x20) != 0)
                  {
                    Parameter = *(v3 + 3024);
                    if (Parameter)
                    {
                      v479.mSampleTime = *(v3 + 3440);
                      *&v480.mNumberBuffers = v479.mSampleTime;
                      v469 = 512;
                      v186 = *&a2->mRateScalar;
                      *&v484.mSampleTime = *&a2->mSampleTime;
                      *&v484.mRateScalar = v186;
                      v187 = *&a2->mSMPTETime.mHours;
                      *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&v484.mSMPTETime.mHours = v187;
                      Parameter = AudioUnitProcessMultiple(Parameter, &v469, &v484, *(v3 + 516), 1u, &v479, 1u, &v480);
                      if (!Parameter)
                      {
                        Parameter = AudioUnitGetProperty(*(v3 + 3024), 0x1450u, 0, 0, *(*(v3 + 17464) + 16), (*(v3 + 17464) + 12));
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x20u, (*(v3 + 516) + 1), *(v3 + 17464), &v484);
                        }
                      }

                      v176 = *(v3 + 4688);
                    }
                  }

                  if ((v176 & 0x100000000000) == 0 || (v188 = *(v3 + 4704), (v188 & 0x100000000000) == 0) || (Parameter = *(v3 + 3144)) == 0 || (v176 & v188 & 0x1000000000000) != 0 && *(v3 + 3176))
                  {
LABEL_358:
                    v462 = 0;
                    if ((v176 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 3032))
                    {
                      v198 = 1;
                      v199 = 1;
                    }

                    else if ((v176 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
                    {
                      v198 = 0;
                      v199 = *(v3 + 3056) != 0;
                    }

                    else
                    {
                      v198 = 0;
                      v199 = 0;
                    }

                    v200 = v176 & 0x80000000;
                    if ((v176 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
                    {
                      v201 = 1;
                      v198 = 1;
                      v202 = 1;
                      if ((v176 & 0x100000000) == 0)
                      {
                        goto LABEL_383;
                      }
                    }

                    else
                    {
                      if ((v176 & 0x100000000) == 0)
                      {
                        v201 = 0;
                        v202 = 1;
                        goto LABEL_383;
                      }

                      v202 = 1;
                      if (*(v3 + 4708))
                      {
                        v203 = *(v3 + 3048);
                        v201 = v203 != 0;
                        if (v203)
                        {
                          v202 = 2;
                        }

                        else
                        {
                          v202 = 1;
                        }
                      }

                      else
                      {
                        v201 = 0;
                      }
                    }

                    v204 = *(v3 + 4704);
                    if ((v204 & 0x100000000) != 0 && *(v3 + 3048) && (v176 & v204 & 0x200000000) != 0 && *(v3 + 3056))
                    {
                      v202 = 2;
                      v198 = 2;
                    }

LABEL_383:
                    if ((v176 & 0x40000000) == 0)
                    {
                      goto LABEL_400;
                    }

                    if ((*(v3 + 4707) & 0x40) == 0)
                    {
                      goto LABEL_400;
                    }

                    Parameter = *(v3 + 3032);
                    if (!Parameter)
                    {
                      goto LABEL_400;
                    }

                    AudioUnitSetProperty(Parameter, 0x457u, 0, 0, (v3 + 2332), 4u);
                    if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
                    {
                      v205 = *(v3 + 3032);
                      if (*(v3 + 3040))
                      {
                        v206 = *(v3 + 2752);
LABEL_390:
                        AudioUnitSetParameter(v205, 0x1Bu, 0, 0, v206, 0);
                        v207 = *(v3 + 4688);
                        if ((v207 & 0x400000) != 0)
                        {
                          v208 = *(v3 + 4704);
                          if ((v208 & 0x400000) != 0 && *(v3 + 2968) && (v207 & v208 & 0x800000) != 0 && *(v3 + 2976))
                          {
                            AudioUnitSetParameter(*(v3 + 3032), 0x3Fu, 0, 0, *(v3 + 4248) * *(v3 + 4252), 0);
                          }
                        }

                        *&v209 = *(v3 + 1112) + 24;
                        *&v210 = *(v3 + 1120) + 24;
                        if (**(v3 + 1088) <= 2u)
                        {
                          *&v479.mSampleTime = *(v3 + 1112) + 24;
                          *&v479.mHostTime = v210;
                          v479.mRateScalar = 0.0;
                          v479.mWordClockTime = v3 + 17096;
                          *&v479.mSMPTETime.mSubframes = *(v3 + 3360);
                        }

                        else
                        {
                          v211 = *(v3 + 1128) + 24;
                          *&v479.mSMPTETime.mSubframes = *(v3 + 3360);
                          v479.mSampleTime = v210;
                          v479.mHostTime = v211;
                          v479.mRateScalar = v209;
                          v479.mWordClockTime = v3 + 17096;
                        }

                        *&v480.mNumberBuffers = 0;
                        v469 = 512;
                        AudioUnitSetParameter(*(v3 + 3032), 0x2Cu, 0, 0, *(v3 + 4392), 0);
                        v212 = *&a2->mRateScalar;
                        *&v484.mSampleTime = *&a2->mSampleTime;
                        *&v484.mRateScalar = v212;
                        v213 = *&a2->mSMPTETime.mHours;
                        *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&v484.mSMPTETime.mHours = v213;
                        Parameter = AudioUnitProcessMultiple(*(v3 + 3032), &v469, &v484, *(v3 + 516), 6u, &v479, 1u, &v480);
                        v176 = *(v3 + 4688);
                        v200 = v176 & 0x80000000;
LABEL_400:
                        if (v200 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
                        {
                          memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4192) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                          memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4196) + 16), *(*(v3 + 4072) + 16), 4 * (2 * *(v3 + 516)));
                          if (*(v3 + 4296) == 0.0 && *(v3 + 4300) == 0.0)
                          {
                            v214 = 0.0;
                          }

                          else
                          {
                            v214 = 1.0;
                          }

                          AudioUnitSetParameter(*(v3 + 3040), 0x20u, 0, 0, v214, 0);
                          v479.mSampleTime = *(v3 + 3488);
                          *&v480.mNumberBuffers = *(v3 + 3448);
                          v215 = *&a2->mRateScalar;
                          *&v484.mSampleTime = *&a2->mSampleTime;
                          *&v484.mRateScalar = v215;
                          v216 = *&a2->mSMPTETime.mHours;
                          *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&v484.mSMPTETime.mHours = v216;
                          v469 = 512;
                          AudioUnitProcessMultiple(*(v3 + 3040), &v469, &v484, *(v3 + 516), 1u, &v479, 1u, &v480);
                          LODWORD(inInputBufferLists) = 8 * *(v3 + 516);
                          AudioUnitGetProperty(*(v3 + 3040), 0xE7Au, 0, 0, *(*(v3 + 4328) + 16), &inInputBufferLists);
                          LODWORD(inInputBufferLists) = 8 * *(v3 + 516);
                          Parameter = AudioUnitGetProperty(*(v3 + 3040), 0xE79u, 0, 0, *(*(v3 + 4328) + 32), &inInputBufferLists);
                          v217 = *(v3 + 516);
                          imagp = *(v3 + 3448);
                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                          {
                            v219 = &v484;
                            v220 = v3;
                            v221 = 10;
LABEL_409:
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v220, v221, v217, imagp, v219);
                          }

LABEL_437:
                          MEMORY[0x28223BE20](Parameter);
                          v234 = (&v453 - 8);
                          *(&v453 - 3) = 0u;
                          *(&v453 - 2) = 0u;
                          *(&v453 - 4) = 0u;
                          *(&v453 - 16) = 3;
                          *&v237 = MEMORY[0x28223BE20](v235);
                          v460 = (&v453 - 8);
                          v452 = 0;
                          *(&v453 - 3) = v237;
                          *(&v453 - 2) = v237;
                          *(&v453 - 4) = v237;
                          *(&v453 - 16) = v238;
                          v239 = *(v3 + 4688);
                          if ((v239 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 3064) || (v239 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 3072) || (v239 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 3088))
                          {
                            *(&v453 - 7) = *(*(v3 + 3440) + 8);
                            *(&v453 - 5) = *(*(v3 + 4072) + 8);
                            *(&v453 - 3) = *(*(v3 + 4080) + 8);
                            v240 = *(v3 + 4064);
                            v241 = v460;
                            v460->mBuffers[0] = *(v240 + 8);
                            *&v241[1].mNumberBuffers = *(v240 + 24);
                            *&v241[1].mBuffers[0].mData = *(v240 + 56);
                          }

                          if ((v239 & 0x400000000) == 0 || (*(v3 + 4708) & 4) == 0 || !*(v3 + 3064))
                          {
LABEL_460:
                            if ((v239 & 0x800000000) == 0 || (*(v3 + 4708) & 8) == 0 || !*(v3 + 3072))
                            {
LABEL_473:
                              if ((v239 & 0x2000000000) == 0 || (*(v3 + 4708) & 0x20) == 0 || !*(v3 + 3088))
                              {
LABEL_486:
                                if (v198 == 2)
                                {
                                  VoiceProcessorV4::SignalParamSwitchMixNF(v3, v201, v199, &v462);
                                }

                                else if (v198 == 1)
                                {
                                  VoiceProcessorV2::SignalParamSwitchMix(v3, v201, v199, &v462, v236);
                                }

                                if (v202 == 1)
                                {
                                  VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, HIBYTE(v468), v466, v201, v462);
                                }

                                else
                                {
                                  VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, HIBYTE(v468), v464, v201, v462);
                                }

                                LODWORD(inInputBufferLists) = 0;
                                if ((*(v3 + 4688) & 0x2000000000000) != 0 && (*(v3 + 4704) & 0x2000000000000) != 0)
                                {
                                  v254 = *(v3 + 3184);
                                  if (v254)
                                  {
                                    MEMORY[0x28223BE20](v254);
                                    *(&v453 - 3) = 0u;
                                    *(&v453 - 2) = 0u;
                                    *(&v453 - 4) = 0u;
                                    *(&v453 - 16) = 3;
                                    *&v257 = MEMORY[0x28223BE20](v255);
                                    v452 = 0;
                                    *(&v453 - 3) = v257;
                                    *(&v453 - 2) = v257;
                                    *(&v453 - 4) = v257;
                                    *(&v453 - 16) = v258;
                                    *(v259 - 56) = *(*(v3 + 3440) + 8);
                                    *(v259 - 40) = *(*(v3 + 3464) + 8);
                                    *(v259 - 24) = *(*(v3 + 17432) + 8);
                                    v260 = *(v3 + 4064);
                                    *(&v453 - 7) = *(v260 + 8);
                                    *(&v453 - 5) = *(v260 + 24);
                                    *(&v453 - 3) = *(v260 + 40);
                                    v479.mSampleTime = v261;
                                    v479.mHostTime = (&v453 - 8);
                                    *&v480.mNumberBuffers = *(v3 + 17440);
                                    if ((v262 & v263 & 0x400000000000000) != 0)
                                    {
                                      v264 = *(v3 + 3256);
                                      if (v264)
                                      {
                                        LODWORD(v484.mSampleTime) = 0;
                                        AudioUnitGetParameter(v264, 0, 0, 0, &v484);
                                        AudioUnitSetParameter(*(v3 + 3184), 0, 0, 0, *&v484.mSampleTime, 0);
                                        AudioUnitGetParameter(*(v3 + 3184), 0xDu, 0, 0, &inInputBufferLists);
                                        v256 = *(v3 + 3184);
                                      }
                                    }

                                    v265 = *&a2->mRateScalar;
                                    *&v484.mSampleTime = *&a2->mSampleTime;
                                    *&v484.mRateScalar = v265;
                                    v266 = *&a2->mSMPTETime.mHours;
                                    *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                    *&v484.mSMPTETime.mHours = v266;
                                    AudioUnitProcessMultiple(v256, &v469, &v484, *(v3 + 516), 2u, &v479, 2u, &v480);
                                    v267 = *(v3 + 516);
                                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x81u, v267, *(v3 + 17440), &v484);
                                      v267 = *(v3 + 516);
                                      v268 = *(v3 + 17448);
                                      if (*(v3 + 15881))
                                      {
                                        goto LABEL_505;
                                      }
                                    }

                                    else
                                    {
                                      v268 = *(v3 + 17448);
                                    }

                                    if (*(v3 + 15882) == 1)
                                    {
LABEL_505:
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x82u, v267, v268, &v484);
                                    }
                                  }
                                }

                                v269 = memcpy(*(*(v3 + 3472) + 16), *(*(v3 + 4064) + 16), *(v3 + 4316));
                                v270 = *(v3 + 4688);
                                if ((v270 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v463 == 1.0)
                                {
                                  v269 = memcpy(*(*(v3 + 17144) + 16), *(*(v3 + 4064) + 48), *(v3 + 4316));
                                  v270 = *(v3 + 4688);
                                }

                                if ((v270 & 0x400000000000) == 0 || (v271 = *(v3 + 4704), (v271 & 0x400000000000) == 0) || !*(v3 + 3160))
                                {
LABEL_529:
                                  if ((v270 & 0x800000000000) != 0 && (*(v3 + 4704) & 0x800000000000) != 0)
                                  {
                                    v287 = *(v3 + 3168);
                                    if (v287)
                                    {
                                      MEMORY[0x28223BE20](v287);
                                      *(&v453 - 3) = 0u;
                                      *(&v453 - 2) = 0u;
                                      *(&v453 - 12) = 2;
                                      *&v289 = MEMORY[0x28223BE20](v288);
                                      v452 = 0;
                                      *(&v453 - 3) = v289;
                                      *(&v453 - 2) = v289;
                                      *(&v453 - 12) = v290;
                                      *(v291 - 40) = *(*(v3 + 3440) + 8);
                                      *(v291 - 24) = *(*(v3 + 17440) + 8);
                                      *(&v453 - 5) = *(*(v3 + 4064) + 8);
                                      *(&v453 - 3) = *(*(v3 + 17448) + 8);
                                      *&v293 = MEMORY[0x28223BE20](v292);
                                      *(&v453 - 3) = v293;
                                      *(&v453 - 2) = v293;
                                      *(&v453 - 12) = v294;
                                      *&v297 = MEMORY[0x28223BE20](v295);
                                      v452 = 0;
                                      *(&v453 - 3) = v297;
                                      *(&v453 - 2) = v297;
                                      *(&v453 - 12) = v298;
                                      v299 = *(v3 + 17456);
                                      *(v300 - 40) = *(v299 + 8);
                                      *(v300 - 24) = *(v299 + 24);
                                      *(&v453 - 5) = *(v299 + 40);
                                      *(&v453 - 3) = *(v299 + 56);
                                      if ((v301 & v302 & 0x2000000000000) != 0)
                                      {
                                        v303 = *(v3 + 3184);
                                        if (v303)
                                        {
                                          LODWORD(v484.mSampleTime) = 0;
                                          AudioUnitGetParameter(v303, 1u, 0, 0, &v484);
                                          AudioUnitSetParameter(*(v3 + 3168), 0, 4u, 0, *&v484.mSampleTime, 0);
                                          AudioUnitSetParameter(*(v3 + 3192), 0, 0, 0, *&v484.mSampleTime, 0);
                                          v296 = *(v3 + 3168);
                                        }
                                      }

                                      *&v479.mSampleTime = &v453 - 6;
                                      v479.mHostTime = (&v453 - 6);
                                      *&v480.mNumberBuffers = &v453 - 6;
                                      *&v480.mBuffers[0].mNumberChannels = &v453 - 6;
                                      v304 = *&a2->mRateScalar;
                                      *&v484.mSampleTime = *&a2->mSampleTime;
                                      *&v484.mRateScalar = v304;
                                      v305 = *&a2->mSMPTETime.mHours;
                                      *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&v484.mSMPTETime.mHours = v305;
                                      v469 = 512;
                                      AudioUnitProcessMultiple(v296, &v469, &v484, *(v3 + 516), 2u, &v479, 2u, &v480);
                                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                      {
                                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x85u, *(v3 + 516), *(v3 + 17456), &v484);
                                      }

                                      v270 = *(v3 + 4688);
                                    }
                                  }

                                  if ((v270 & 0x4000000000000) != 0)
                                  {
                                    v306 = *(v3 + 4704);
                                    if ((v306 & 0x4000000000000) != 0)
                                    {
                                      v307 = *(v3 + 3192);
                                      if (v307)
                                      {
                                        if ((v270 & v306 & 0x800000000000) != 0 && *(v3 + 3168))
                                        {
                                          MEMORY[0x28223BE20](v307);
                                          v452 = 0;
                                          *(&v453 - 3) = 0u;
                                          *(&v453 - 2) = 0u;
                                          *(&v453 - 12) = 2;
                                          v308 = *(v3 + 17456);
                                          *(&v453 - 5) = *(v308 + 8);
                                          *(&v453 - 3) = *(v308 + 24);
                                          *&v479.mSampleTime = &v453 - 6;
                                          *&v480.mNumberBuffers = *(v3 + 3464);
                                          v309 = *&a2->mRateScalar;
                                          *&v484.mSampleTime = *&a2->mSampleTime;
                                          *&v484.mRateScalar = v309;
                                          v310 = *&a2->mSMPTETime.mHours;
                                          *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                          *&v484.mSMPTETime.mHours = v310;
                                          v469 = 512;
                                          AudioUnitProcessMultiple(v311, &v469, &v484, *(v3 + 516), 1u, &v479, 1u, &v480);
                                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                          {
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x87u, *(v3 + 516), *(v3 + 3464), &v484);
                                          }

                                          v270 = *(v3 + 4688);
                                        }
                                      }
                                    }
                                  }

                                  if ((v270 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 3224))
                                  {
                                    v312 = 1;
                                  }

                                  else
                                  {
                                    v312 = (v270 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 3232) != 0;
                                  }

                                  LODWORD(v483.realp) = 0;
                                  LODWORD(v477) = 0;
                                  v313 = AudioUnitGetParameter(*(v3 + 3136), 0x1Du, 0, 0, &v483);
                                  v314 = *&v483.realp < 1.0 && v312;
                                  v458 = v314;
                                  if (v312)
                                  {
                                    LODWORD(v484.mSampleTime) = 1065353216;
                                    if (*&v483.realp < 1.0)
                                    {
                                      vDSP_vfill(&v484, *(*(v3 + 4040) + 16), 1, *(v3 + 516));
                                    }

                                    vDSP_vfill(&v484, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
                                    v315 = *(v3 + 4688);
                                  }

                                  else
                                  {
                                    v315 = *(v3 + 4688);
                                    if ((v315 & 0x80000000000) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 3136))
                                    {
                                      goto LABEL_573;
                                    }
                                  }

                                  if ((v315 & 0x1000000000000) == 0 || (*(v3 + 4710) & 1) == 0 || !*(v3 + 3176))
                                  {
                                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                    {
                                      v313 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 516), *(v3 + 3440), &buf);
                                      v315 = *(v3 + 4688);
                                    }

                                    LODWORD(v460) = 1;
LABEL_574:
                                    v316 = *(v3 + 4032);
                                    if ((v315 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v313 = *(v3 + 3224)) != 0)
                                    {
                                      v317 = *(v3 + 4024);
                                      v479.mSampleTime = *(v3 + 3440);
                                      v479.mHostTime = v317;
                                      *&v479.mRateScalar = v3 + 16904;
                                      v318 = *(v3 + 4040);
                                      *&v480.mNumberBuffers = *(v3 + 3448);
                                      *&v480.mBuffers[0].mNumberChannels = v318;
                                      v480.mBuffers[0].mData = v316;
                                      v469 = 512;
                                      v319 = *&a2->mRateScalar;
                                      *&v484.mSampleTime = *&a2->mSampleTime;
                                      *&v484.mRateScalar = v319;
                                      v320 = *&a2->mSMPTETime.mHours;
                                      *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&v484.mSMPTETime.mHours = v320;
                                      AudioUnitProcessMultiple(v313, &v469, &v484, *(v3 + 516), 3u, &v479, 3u, &v480);
                                      AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v470);
                                      v313 = AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, (v3 + 17508));
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                                      {
                                        goto LABEL_589;
                                      }

                                      v321 = *(v3 + 3224);
                                      v322 = 2;
                                    }

                                    else
                                    {
                                      if ((v315 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v313 = *(v3 + 3232)) == 0)
                                      {
                                        v328 = 0;
                                        goto LABEL_594;
                                      }

                                      MEMORY[0x28223BE20](v313);
                                      *(&v453 - 3) = 0;
                                      v452 = 0;
                                      *(&v453 - 4) = 0;
                                      *(&v453 - 8) = 1;
                                      *(&v453 - 3) = *(*(v3 + 17456) + 8);
                                      AudioUnitSetParameter(v323, 0x14u, 0, 0, *(v3 + 16756), 0);
                                      v324 = *(v3 + 3464);
                                      *&v479.mSampleTime = &v453 - 4;
                                      v479.mHostTime = v324;
                                      v479.mRateScalar = *(v3 + 4024);
                                      v479.mWordClockTime = v3 + 16904;
                                      v325 = *(v3 + 3504);
                                      *&v480.mNumberBuffers = *(v3 + 3448);
                                      *&v480.mBuffers[0].mNumberChannels = v325;
                                      v480.mBuffers[0].mData = *(v3 + 4040);
                                      v481 = v316;
                                      v326 = *&a2->mRateScalar;
                                      *&v484.mSampleTime = *&a2->mSampleTime;
                                      *&v484.mRateScalar = v326;
                                      v327 = *&a2->mSMPTETime.mHours;
                                      *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&v484.mSMPTETime.mHours = v327;
                                      v469 = 512;
                                      AudioUnitProcessMultiple(*(v3 + 3232), &v469, &v484, *(v3 + 516), 4u, &v479, 4u, &v480);
                                      v313 = AudioUnitGetParameter(*(v3 + 3232), 2u, 0, 0, &v470);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                                      {
LABEL_589:
                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          v313 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 3448), &v484);
                                        }

                                        v328 = 1;
LABEL_594:
                                        v329 = *(v3 + 4688);
                                        if ((v329 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
                                        {
                                          v313 = *(v3 + 3248);
                                          if (v313)
                                          {
                                            v479.mSampleTime = *(v3 + 3440);
                                            *&v480.mNumberBuffers = 0;
                                            v330 = *&a2->mSMPTETime.mHours;
                                            *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&v484.mSMPTETime.mHours = v330;
                                            v331 = *&a2->mRateScalar;
                                            *&v484.mSampleTime = *&a2->mSampleTime;
                                            *&v484.mRateScalar = v331;
                                            v469 = 512;
                                            v332 = *(v3 + 4048);
                                            v333 = *(v332 + 16);
                                            v334 = *(v332 + 12);
                                            v313 = AudioUnitProcessMultiple(v313, &v469, &v484, *(v3 + 516), 1u, &v479, 1u, &v480);
                                            if (v313 || (v313 = AudioUnitGetProperty(*(v3 + 3248), 0x13EDu, 0, 0, *(*(v3 + 4048) + 16), (*(v3 + 4048) + 12)), v313))
                                            {
                                              if (v334 >= 4)
                                              {
                                                memset_pattern16(v333, &unk_2727568B0, v334 & 0xFFFFFFFC);
                                              }
                                            }

                                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                            {
                                              v313 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 516), *(v3 + 4048), &v484);
                                            }

                                            v329 = *(v3 + 4688);
                                          }
                                        }

                                        if ((v329 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0)
                                        {
                                          if (*(v3 + 3256))
                                          {
                                            v335 = *(v3 + 17376);
                                            if (v335)
                                            {
                                              if (v335 == 1)
                                              {
                                                v336 = 1136;
                                                v337 = 1112;
                                              }

                                              else
                                              {
                                                v336 = 1128;
                                                v337 = 1120;
                                              }

                                              v338 = *(v3 + v336);
                                              v339 = *(v3 + 17264);
                                              v340 = *(*(v3 + v337) + 40);
                                              v341 = *(*(v3 + 17232) + 16) + 4 * *(v3 + 516);
                                              v484.mSampleTime = *(*(v3 + 17232) + 16);
                                              v484.mHostTime = v341;
                                              VPTimeFreqConverter_Analyze(v339, v340, &v484);
                                              v342 = *(v3 + 17272);
                                              v343 = *(v338 + 40);
                                              v344 = *(*(v3 + 17232) + 32) + 4 * *(v3 + 516);
                                              v484.mSampleTime = *(*(v3 + 17232) + 32);
                                              v484.mHostTime = v344;
                                              VPTimeFreqConverter_Analyze(v342, v343, &v484);
                                              v479.mSampleTime = *(v3 + 17232);
                                              *&v480.mNumberBuffers = v479.mSampleTime;
                                              v469 = 512;
                                              v345 = *&a2->mRateScalar;
                                              *&v484.mSampleTime = *&a2->mSampleTime;
                                              *&v484.mRateScalar = v345;
                                              v346 = *&a2->mSMPTETime.mHours;
                                              *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                              *&v484.mSMPTETime.mHours = v346;
                                              v347 = AudioUnitProcessMultiple(*(v3 + 3256), &v469, &v484, *(v3 + 516), 1u, &v479, 1u, &v480);
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Fu, *(v3 + 516), *(v3 + 17232), &v484);
                                              }

                                              v348 = *(v3 + 17240);
                                              v351 = *(v348 + 12);
                                              v349 = v348 + 12;
                                              v350 = v351;
                                              v352 = *(v349 + 4);
                                              if ((v347 || AudioUnitGetProperty(*(v3 + 3256), 0x15FEu, 0, 0, *(v349 + 4), v349)) && v350 >= 4)
                                              {
                                                memset_pattern16(v352, &unk_2727568B0, v350 & 0xFFFFFFFC);
                                              }

                                              v313 = AudioUnitGetParameter(*(v3 + 3256), 0, 0, 0, (v3 + 17504));
                                              if (v313)
                                              {
                                                *(v3 + 17504) = 0;
                                              }

                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                v313 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x70u, *(v3 + 516), *(v3 + 17240), &v484);
                                              }

                                              v329 = *(v3 + 4688);
                                            }
                                          }
                                        }

                                        if ((v329 & 0x80000000000) == 0 || (*(v3 + 4704) & 0x80000000000) == 0 || !*(v3 + 3136))
                                        {
LABEL_665:
                                          if ((v329 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 3176))
                                          {
                                            LODWORD(v475) = 0;
                                            AudioUnitGetParameter(*(v3 + 2968), 0x25u, 0, 0, &v475);
                                            AudioUnitSetParameter(*(v3 + 3176), 0, 4u, 2u, *&v475, 0);
                                            AudioUnitSetParameter(*(v3 + 3176), 0, 4u, 3u, *&v475, 0);
                                            v373 = memcpy(*(*(v3 + 17592) + 16), *(*(v3 + 3440) + 16), *(*(v3 + 3440) + 12));
                                            MEMORY[0x28223BE20](v373);
                                            v452 = 0;
                                            *(&v453 - 3) = 0u;
                                            *(&v453 - 2) = 0u;
                                            *(&v453 - 5) = 0u;
                                            *(&v453 - 4) = 0u;
                                            *(&v453 - 20) = 4;
                                            *(&v453 - 9) = *(*(v3 + 3440) + 8);
                                            *(&v453 - 7) = *(*(v3 + 17432) + 8);
                                            *(&v453 - 5) = *(*(v3 + 4080) + 8);
                                            *(&v453 - 3) = *(*(v3 + 4072) + 8);
                                            *&v375 = MEMORY[0x28223BE20](v374);
                                            v452 = 0;
                                            *(&v453 - 3) = v375;
                                            *(&v453 - 2) = v375;
                                            *(&v453 - 5) = v375;
                                            *(&v453 - 4) = v375;
                                            *(&v453 - 20) = 4;
                                            *(&v453 - 9) = *(*(v3 + 17560) + 8);
                                            *(&v453 - 7) = *(*(v3 + 17576) + 8);
                                            *(&v453 - 5) = *(*(v3 + 17584) + 8);
                                            *(&v453 - 3) = *(*(v3 + 17568) + 8);
                                            *&v479.mSampleTime = &v453 - 10;
                                            v479.mHostTime = (&v453 - 10);
                                            *&v480.mNumberBuffers = &v453 - 10;
                                            *&v480.mBuffers[0].mNumberChannels = &v453 - 10;
                                            v376 = *&a2->mRateScalar;
                                            *&v484.mSampleTime = *&a2->mSampleTime;
                                            *&v484.mRateScalar = v376;
                                            v377 = *&a2->mSMPTETime.mHours;
                                            *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&v484.mSMPTETime.mHours = v377;
                                            v469 = 512;
                                            AudioUnitProcessMultiple(*(v3 + 3176), &v469, &v484, *(v3 + 516), 2u, &v479, 2u, &v480);
                                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x86u, *(v3 + 516), (&v453 - 10), &v484);
                                            }

                                            v329 = *(v3 + 4688);
                                          }

                                          if ((v329 & 0x4000000000000) != 0)
                                          {
                                            v378 = *(v3 + 4704);
                                            if ((v378 & 0x4000000000000) != 0)
                                            {
                                              v379 = *(v3 + 3192);
                                              if (v379)
                                              {
                                                if ((v329 & v378 & 0x1000000000000) != 0 && *(v3 + 3176))
                                                {
                                                  MEMORY[0x28223BE20](v379);
                                                  v452 = 0;
                                                  *(&v453 - 3) = 0u;
                                                  *(&v453 - 2) = 0u;
                                                  *(&v453 - 12) = 2;
                                                  *(&v453 - 5) = *(*(v3 + 3440) + 8);
                                                  *(&v453 - 3) = *(*(v3 + 17432) + 8);
                                                  *&v479.mSampleTime = &v453 - 6;
                                                  *&v480.mNumberBuffers = *(v3 + 3464);
                                                  v380 = *&a2->mRateScalar;
                                                  *&v484.mSampleTime = *&a2->mSampleTime;
                                                  *&v484.mRateScalar = v380;
                                                  v381 = *&a2->mSMPTETime.mHours;
                                                  *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                  *&v484.mSMPTETime.mHours = v381;
                                                  v469 = 512;
                                                  AudioUnitProcessMultiple(v382, &v469, &v484, *(v3 + 516), 1u, &v479, 1u, &v480);
                                                  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                                  {
                                                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x87u, *(v3 + 516), *(v3 + 3464), &v484);
                                                  }

                                                  v329 = *(v3 + 4688);
                                                }
                                              }
                                            }
                                          }

                                          LODWORD(v475) = 0;
                                          LODWORD(v473) = 0;
                                          if ((v329 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0 && (v383 = *(v3 + 2968)) != 0)
                                          {
                                            AudioUnitGetParameter(v383, 0x43u, 0, 0, &v475);
                                            AudioUnitGetParameter(*(v3 + 2968), 0x47u, 0, 0, &v473);
                                            v329 = *(v3 + 4688);
                                            v384 = *&v473 == 0.0 || *&v475 == 0.0;
                                          }

                                          else
                                          {
                                            v384 = 1;
                                          }

                                          if ((v329 & 0x100000000000) == 0 || (v385 = *(v3 + 4704), (v385 & 0x100000000000) == 0) || (v386 = *(v3 + 3144)) == 0 || (v329 & v385 & 0x1000000000000) == 0 || !*(v3 + 3176))
                                          {
LABEL_703:
                                            if ((v329 & 0x200000000000) == 0)
                                            {
                                              goto LABEL_718;
                                            }

                                            v396 = *(v3 + 4704);
                                            if ((v396 & 0x200000000000) == 0)
                                            {
                                              goto LABEL_718;
                                            }

                                            v397 = *(v3 + 3152);
                                            if (!v397 || (v329 & v396 & 0x1000000000000) != 0 && *(v3 + 3176))
                                            {
                                              goto LABEL_718;
                                            }

                                            MEMORY[0x28223BE20](v397);
                                            *(&v453 - 4) = 0;
                                            *(&v453 - 3) = 0;
                                            *(&v453 - 8) = 1;
                                            MEMORY[0x28223BE20](v398);
                                            *(&v453 - 3) = 0;
                                            v452 = 0;
                                            *(&v453 - 4) = 0;
                                            *(&v453 - 8) = v399;
                                            *(v400 - 24) = *(*(v3 + 17432) + 8);
                                            *(&v453 - 3) = *(*(v3 + 4064) + 40);
                                            AudioUnitSetParameter(v401, 6u, 0, 0, *(v3 + 4248), 0);
                                            AudioUnitSetParameter(*(v3 + 3152), 7u, 0, 0, *(v3 + 4264), 0);
                                            AudioUnitSetParameter(*(v3 + 3152), 0xDu, 0, 0, *(v3 + 4280), 0);
                                            *&v479.mSampleTime = &v453 - 4;
                                            v479.mHostTime = (&v453 - 4);
                                            v402 = *(v3 + 4040);
                                            v479.mRateScalar = *(v3 + 4120);
                                            v479.mWordClockTime = v402;
                                            *&v479.mSMPTETime.mSubframes = v316;
                                            *&v479.mSMPTETime.mType = 0;
                                            *&v480.mNumberBuffers = *(v3 + 3464);
                                            *&v480.mBuffers[0].mNumberChannels = 0;
                                            v480.mBuffers[0].mData = *(v3 + 17528);
                                            v403 = *&a2->mRateScalar;
                                            *&v484.mSampleTime = *&a2->mSampleTime;
                                            *&v484.mRateScalar = v403;
                                            v404 = *&a2->mSMPTETime.mHours;
                                            *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&v484.mSMPTETime.mHours = v404;
                                            v469 = 512;
                                            AudioUnitProcessMultiple(*(v3 + 3152), &v469, &v484, *(v3 + 516), 6u, &v479, 3u, &v480);
                                            v405 = *(v3 + 516);
                                            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x26u, v405, *(v3 + 3464), &v484);
                                              v405 = *(v3 + 516);
                                              v406 = *(v3 + 17528);
                                              if (*(v3 + 15881))
                                              {
                                                goto LABEL_714;
                                              }
                                            }

                                            else
                                            {
                                              v406 = *(v3 + 17528);
                                            }

                                            if (*(v3 + 15882) != 1)
                                            {
LABEL_715:
                                              if (*&inInputBufferLists != 0.0)
                                              {
                                                vDSP_vmin(*(*(v3 + 4024) + 16), 1, *(*(v3 + 17528) + 16), 1, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
                                              }

                                              v329 = *(v3 + 4688);
LABEL_718:
                                              if ((v329 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 3136))
                                              {
                                                if (!v458)
                                                {
LABEL_739:
                                                  if ((*(v3 + 4709) & 8) != 0)
                                                  {
                                                    if (*(v3 + 3136) != 0 || v312)
                                                    {
LABEL_754:
                                                      if (((v460 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 3136)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                                                      {
                                                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 516), *(v3 + 3448), a2);
                                                      }

                                                      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                                                      {
                                                        v413 = *(v3 + 3272);
                                                        if (v413)
                                                        {
                                                          AudioUnitSetParameter(v413, 0, 0, 0, *(v3 + 12612), 0);
                                                          AudioUnitSetParameter(*(v3 + 3272), 4u, 0, 0, *(v3 + 4216), 0);
                                                          AudioUnitSetParameter(*(v3 + 3272), 0x13u, 0, 0, *(v3 + 4232), 0);
                                                          AudioUnitSetParameter(*(v3 + 3272), 3u, 0, 0, v470, 0);
                                                          LODWORD(v471) = 0;
                                                          AudioUnitGetParameter(*(v3 + 3272), 0x1Cu, 0, 0, &v471);
                                                          if (*&v471 == 1.0)
                                                          {
                                                            v414 = v3 + 2792;
                                                            LODWORD(v484.mSampleTime) = -1082130432;
                                                            AudioUnitGetParameter(*(v3 + 3272), 0x1Du, 0, 0, &v484);
                                                            v415 = *&v484.mSampleTime != 2.0 || *&v484.mSampleTime == 1.0;
                                                            v416 = v415 ? 22 : 23;
                                                            v417 = *(v414 + 8 * v416);
                                                            if (v417)
                                                            {
                                                              LODWORD(v479.mSampleTime) = 0;
                                                              if (!AudioUnitGetPropertyInfo(v417, 0xED8u, 0, 0, &v479, 0))
                                                              {
                                                                v418 = *(v3 + 17536);
                                                                if (*(v3 + 17544) - v418 >= LODWORD(v479.mSampleTime))
                                                                {
                                                                  AudioUnitGetProperty(*(v414 + 8 * v416), 0xED8u, 0, 0, v418, &v479);
                                                                }
                                                              }

                                                              v480.mNumberBuffers = 0;
                                                              AudioUnitGetParameter(*(v414 + 8 * v416), 1u, 0, 0, &v480.mNumberBuffers);
                                                              AudioUnitSetProperty(*(v3 + 3272), 0x846u, 0, 0, *(v3 + 17536), vcvts_n_u32_f32(*&v480.mNumberBuffers, 2uLL));
                                                            }
                                                          }

                                                          AudioUnitSetParameter(*(v3 + 3272), 0xEu, 0, 0, *(v3 + 2320), 0);
                                                          v419 = *(v3 + 4112);
                                                          v479.mSampleTime = *(v3 + 3360);
                                                          v479.mHostTime = v419;
                                                          v420 = *(v3 + 4104);
                                                          v479.mRateScalar = *(v3 + 3448);
                                                          v479.mWordClockTime = v420;
                                                          *&v479.mSMPTETime.mSubframes = *(v3 + 4024);
                                                          *&v479.mSMPTETime.mType = *(v3 + 4040);
                                                          *&v480.mNumberBuffers = *(v3 + 1096);
                                                          v469 = 512;
                                                          v421 = *&a2->mRateScalar;
                                                          *&v484.mSampleTime = *&a2->mSampleTime;
                                                          *&v484.mRateScalar = v421;
                                                          v422 = *&a2->mSMPTETime.mHours;
                                                          *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                          *&v484.mSMPTETime.mHours = v422;
                                                          AudioUnitProcessMultiple(*(v3 + 3272), &v469, &v484, *(v3 + 516), 6u, &v479, 1u, &v480);
                                                          v461 = 0.0;
                                                          AudioUnitGetParameter(*(v3 + 3272), 1u, 0, 0, &v461);
                                                          *(v3 + 12616) = v461;
                                                          if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
                                                          {
                                                            AudioUnitGetParameter(*(v3 + 3272), 2u, 0, 0, &v470);
                                                            AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v470, 0);
                                                          }
                                                        }
                                                      }

                                                      goto LABEL_780;
                                                    }

LABEL_743:
                                                    LODWORD(v484.mSampleTime) = 1065353216;
                                                    v410 = *(v3 + 516);
                                                    vDSP_vfill(&v484, *(*(v3 + 4040) + 16), 1, v410);
                                                    memcpy(*(*(v3 + 3448) + 16), *(*(v3 + 3440) + 16), 8 * v410);
                                                    goto LABEL_754;
                                                  }

LABEL_740:
                                                  if (v312)
                                                  {
                                                    goto LABEL_754;
                                                  }

                                                  goto LABEL_743;
                                                }
                                              }

                                              else if ((v329 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || ((*(v3 + 3144) != 0) & v458) == 0)
                                              {
                                                if ((v329 & 0x80000000000) == 0)
                                                {
                                                  goto LABEL_740;
                                                }

                                                goto LABEL_739;
                                              }

                                              v407 = *(*(v3 + 4040) + 16);
                                              vDSP_vmin(*(*(v3 + 4024) + 16), 1, v407, 1, v407, 1, *(v3 + 516));
                                              v408 = *(v3 + 4688);
                                              if ((v408 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0 && *(v3 + 3248))
                                              {
                                                vDSP_vmin(*(*(v3 + 4048) + 16), 1, v407, 1, v407, 1, *(v3 + 516));
                                                v408 = *(v3 + 4688);
                                              }

                                              if ((v408 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0 && *(v3 + 3256))
                                              {
                                                vDSP_vmin(*(*(v3 + 17240) + 16), 1, v407, 1, v407, 1, *(v3 + 516));
                                                v408 = *(v3 + 4688);
                                              }

                                              if ((v408 & 0x1000) != 0 && (*(v3 + 4705) & 0x10) != 0 && *(v3 + 2888))
                                              {
                                                v409 = 17480;
                                              }

                                              else if ((v408 & 0x800000000000) != 0 && (*(v3 + 4709) & 0x80) != 0 && *(v3 + 3168))
                                              {
                                                v409 = 17456;
                                              }

                                              else if (v408 & 0x1000000000000) != 0 && (*(v3 + 4710))
                                              {
                                                v409 = 3440;
                                                if (*(v3 + 3176) != 0 && v384)
                                                {
                                                  v409 = 17592;
                                                }
                                              }

                                              else
                                              {
                                                v409 = 3440;
                                              }

                                              v411 = *(*(v3 + v409) + 16);
                                              v412 = *(*(v3 + 3448) + 16);
                                              MEMORY[0x2743CCDD0](v411, 1, v407, 1, v412, 1, *(v3 + 516));
                                              MEMORY[0x2743CCDD0](v411 + 4 * *(v3 + 516) + 4, 1, v407 + 1, 1, v412 + 4 * *(v3 + 516) + 4, 1, (*(v3 + 516) - 1));
                                              *(v411 + 4 * *(v3 + 516)) = *(v411 + 4 * *(v3 + 516)) * v407[*(v3 + 516) - 1];
                                              goto LABEL_754;
                                            }

LABEL_714:
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x53u, v405, v406, &v484);
                                            goto LABEL_715;
                                          }

                                          MEMORY[0x28223BE20](v386);
                                          *(&v453 - 4) = 0;
                                          *(&v453 - 3) = 0;
                                          *(&v453 - 8) = 1;
                                          MEMORY[0x28223BE20](v387);
                                          *(&v453 - 3) = 0;
                                          v452 = 0;
                                          *(&v453 - 4) = 0;
                                          *(&v453 - 8) = v388;
                                          *(v389 - 24) = *(*(v3 + 3440) + 8);
                                          *(&v453 - 3) = *(*(v3 + 3464) + 8);
                                          AudioUnitSetParameter(v390, 6u, 0, 0, *(v3 + 4248), 0);
                                          AudioUnitSetParameter(*(v3 + 3144), 7u, 0, 0, *(v3 + 4264), 0);
                                          AudioUnitSetParameter(*(v3 + 3144), 0xDu, 0, 0, *(v3 + 4280), 0);
                                          *&v479.mSampleTime = &v453 - 4;
                                          v479.mHostTime = (&v453 - 4);
                                          v391 = *(v3 + 4040);
                                          *&v479.mRateScalar = &v453 - 4;
                                          v479.mWordClockTime = v391;
                                          *&v479.mSMPTETime.mSubframes = v316;
                                          *&v479.mSMPTETime.mType = 0;
                                          *&v480.mNumberBuffers = *(v3 + 3464);
                                          *&v480.mBuffers[0].mNumberChannels = 0;
                                          v480.mBuffers[0].mData = *(v3 + 4032);
                                          v392 = *&a2->mRateScalar;
                                          *&v484.mSampleTime = *&a2->mSampleTime;
                                          *&v484.mRateScalar = v392;
                                          v393 = *&a2->mSMPTETime.mHours;
                                          *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                          *&v484.mSMPTETime.mHours = v393;
                                          v469 = 512;
                                          AudioUnitProcessMultiple(*(v3 + 3144), &v469, &v484, *(v3 + 516), 6u, &v479, 3u, &v480);
                                          v394 = *(v3 + 516);
                                          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                          {
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v394, *(v3 + 3464), &v484);
                                            v394 = *(v3 + 516);
                                            v395 = *(v3 + 4032);
                                            if (*(v3 + 15881))
                                            {
                                              goto LABEL_699;
                                            }
                                          }

                                          else
                                          {
                                            v395 = *(v3 + 4032);
                                          }

                                          if (*(v3 + 15882) != 1)
                                          {
LABEL_700:
                                            if (!v384)
                                            {
                                              vDSP_vmin(*(*(v3 + 4024) + 16), 1, *(*(v3 + 4032) + 16), 1, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
                                            }

                                            v329 = *(v3 + 4688);
                                            goto LABEL_703;
                                          }

LABEL_699:
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v394, v395, &v484);
                                          goto LABEL_700;
                                        }

                                        MEMORY[0x28223BE20](v313);
                                        *(&v453 - 4) = 0;
                                        *(&v453 - 3) = 0;
                                        *(&v453 - 8) = 1;
                                        MEMORY[0x28223BE20](v353);
                                        *(&v453 - 4) = 0;
                                        *(&v453 - 3) = 0;
                                        v452 = 0;
                                        *(&v453 - 8) = v356;
                                        if ((v354 & v355 & 0x800000000000) != 0)
                                        {
                                          v357 = &v453 - 3;
                                          v358 = &v453 - 3;
                                          if (*(v3 + 3168))
                                          {
                                            v359 = *(v3 + 17456);
                                            *v357 = *(v359 + 8);
                                            v360 = (v359 + 40);
LABEL_633:
                                            *v358 = *v360;
                                            AudioUnitSetParameter(*(v3 + 3136), 6u, 0, 0, *(v3 + 4248), 0);
                                            AudioUnitSetParameter(*(v3 + 3136), 7u, 0, 0, *(v3 + 4264), 0);
                                            AudioUnitSetParameter(*(v3 + 3136), 0xDu, 0, 0, *(v3 + 4280), 0);
                                            *&v479.mSampleTime = &v453 - 4;
                                            v479.mHostTime = (&v453 - 4);
                                            v361 = *(v3 + 4040);
                                            v479.mRateScalar = *(v3 + 4120);
                                            v479.mWordClockTime = v361;
                                            *&v479.mSMPTETime.mSubframes = v316;
                                            *&v479.mSMPTETime.mType = 0;
                                            v362 = *(v3 + 4688);
                                            if ((v362 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 3176))
                                            {
                                              *&v479.mSMPTETime.mType = *(v3 + 4088);
                                            }

                                            if ((v458 & 1) == 0)
                                            {
                                              v479.mWordClockTime = 0;
                                            }

                                            v363 = *(v3 + 4104);
                                            *&v480.mNumberBuffers = 0;
                                            *&v480.mBuffers[0].mNumberChannels = v363;
                                            v480.mBuffers[0].mData = 0;
                                            if ((v362 & 0x4000000) != 0 && (v364 = *(v3 + 4704), (v364 & 0x4000000) != 0) && (v365 = *(v3 + 3000)) != 0 && (v362 & v364 & 0x400000) != 0 && *(v3 + 2968))
                                            {
                                              LODWORD(v484.mSampleTime) = 0;
                                              *&v479.mSMPTETime.mType = *(v3 + 4088);
                                              AudioUnitGetParameter(v365, 0x2Du, 0, 0, &v484);
                                              AudioUnitSetParameter(*(v3 + 3136), 0x2Au, 0, 0, *&v484.mSampleTime, 0);
                                              AudioUnitGetParameter(*(v3 + 2968), 0x2Du, 0, 0, &v484);
                                              AudioUnitSetParameter(*(v3 + 3136), 0x29u, 0, 0, *&v484.mSampleTime, 0);
                                            }

                                            else if ((v362 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v463 == 1.0)
                                            {
                                              *&v479.mSMPTETime.mType = *(v3 + 17144);
                                            }

                                            v366 = v458;
                                            if (v458)
                                            {
                                              v367 = 3464;
                                            }

                                            else
                                            {
                                              v367 = 3448;
                                            }

                                            v368 = 4040;
                                            *&v480.mNumberBuffers = *(v3 + v367);
                                            if (v458)
                                            {
                                              v368 = 4024;
                                            }

                                            v480.mBuffers[0].mData = *(v3 + v368);
                                            v369 = *&a2->mRateScalar;
                                            *&v484.mSampleTime = *&a2->mSampleTime;
                                            *&v484.mRateScalar = v369;
                                            v370 = *&a2->mSMPTETime.mHours;
                                            *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&v484.mSMPTETime.mHours = v370;
                                            v469 = 512;
                                            AudioUnitProcessMultiple(*(v3 + 3136), &v469, &v484, *(v3 + 516), 6u, &v479, 3u, &v480);
                                            if ((v328 & v366 & 1) == 0)
                                            {
                                              AudioUnitGetParameter(*(v3 + 3136), 0x20u, 0, 0, &v470);
                                            }

                                            v371 = *(v3 + 516);
                                            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v371, *(v3 + v367), &v484);
                                              v371 = *(v3 + 516);
                                              v372 = *(v3 + 4024);
                                              if (*(v3 + 15881))
                                              {
                                                goto LABEL_663;
                                              }
                                            }

                                            else
                                            {
                                              v372 = *(v3 + 4024);
                                            }

                                            if (*(v3 + 15882) != 1)
                                            {
LABEL_664:
                                              v329 = *(v3 + 4688);
                                              goto LABEL_665;
                                            }

LABEL_663:
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v371, v372, &v484);
                                            goto LABEL_664;
                                          }
                                        }

                                        else
                                        {
                                          v357 = &v453 - 3;
                                          v358 = &v453 - 3;
                                        }

                                        *v357 = *(*(v3 + 3440) + 8);
                                        v360 = (*(v3 + 3472) + 8);
                                        goto LABEL_633;
                                      }

                                      v321 = *(v3 + 3232);
                                      v322 = 9;
                                    }

                                    AudioUnitGetParameter(v321, v322, 0, 0, &v477);
                                    v313 = AudioUnitSetParameter(*(v3 + 3312), 0x12u, 0, 0, *&v477, 0);
                                    goto LABEL_589;
                                  }

LABEL_573:
                                  LODWORD(v460) = 0;
                                  goto LABEL_574;
                                }

                                LODWORD(v483.realp) = 1092616192;
                                if ((v270 & v271 & 0x80000000000000) != 0)
                                {
                                  v269 = *(v3 + 3232);
                                  if (v269)
                                  {
                                    v269 = AudioUnitGetParameter(v269, 9u, 0, 0, &v483);
                                    v270 = *(v3 + 4688);
                                  }
                                }

                                if ((v270 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 3048))
                                {
                                  LODWORD(v484.mSampleTime) = 0;
                                  LODWORD(v479.mSampleTime) = 0;
                                  v480.mNumberBuffers = 0;
                                  AudioUnitGetParameter(*(v3 + 3056), 0x18u, 0, 0, &v484);
                                  AudioUnitGetParameter(*(v3 + 3056), 0x19u, 0, 0, &v479);
                                  AudioUnitGetParameter(*(v3 + 3056), 5u, 0, 0, &v480.mNumberBuffers);
                                  AudioUnitSetParameter(*(v3 + 3160), 3u, 0, 0, *&v484.mSampleTime, 0);
                                  AudioUnitSetParameter(*(v3 + 3160), 4u, 0, 0, *&v479.mSampleTime, 0);
                                  AudioUnitSetParameter(*(v3 + 3160), 5u, 0, 0, *&v480.mNumberBuffers, 0);
                                  v269 = AudioUnitSetParameter(*(v3 + 3160), 6u, 0, 0, *&v483.realp, 0);
                                }

                                MEMORY[0x28223BE20](v269);
                                v452 = 0;
                                *(&v453 - 3) = 0u;
                                *(&v453 - 2) = 0u;
                                *(&v453 - 12) = 2;
                                v272 = *(v3 + 3440);
                                *(&v453 - 4) = *(v272 + 16);
                                *(&v453 - 5) = *(v272 + 8);
                                v273 = *(v3 + 3464);
                                v452 = *(v273 + 16);
                                *(&v453 - 3) = *(v273 + 8);
                                *&v275 = MEMORY[0x28223BE20](v274);
                                *(&v453 - 3) = v275;
                                *(&v453 - 2) = v275;
                                *(&v453 - 12) = v276;
                                MEMORY[0x28223BE20](v277);
                                *(&v453 - 3) = 0;
                                v452 = 0;
                                *(&v453 - 4) = 0;
                                *(&v453 - 8) = 1;
                                v278 = *(v3 + 3472);
                                *(v279 - 32) = *(v278 + 16);
                                *(v279 - 40) = *(v278 + 8);
                                v280 = *(v3 + 4064);
                                *(v279 - 16) = *(v280 + 32);
                                *(v279 - 24) = *(v280 + 24);
                                v452 = *(v278 + 16);
                                *(&v453 - 3) = *(v278 + 8);
                                v479.mSampleTime = v281;
                                v479.mHostTime = v282;
                                *&v480.mNumberBuffers = v281;
                                *&v480.mBuffers[0].mNumberChannels = &v453 - 4;
                                v283 = *&a2->mRateScalar;
                                *&v484.mSampleTime = *&a2->mSampleTime;
                                *&v484.mRateScalar = v283;
                                v284 = *&a2->mSMPTETime.mHours;
                                *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                *&v484.mSMPTETime.mHours = v284;
                                v469 = 512;
                                AudioUnitProcessMultiple(*(v3 + 3160), &v469, &v484, *(v3 + 516), 2u, &v479, 2u, &v480);
                                v285 = *(v3 + 516);
                                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v285, *(v3 + 3440), &v484);
                                  v285 = *(v3 + 516);
                                  v286 = *(v3 + 3464);
                                  if (*(v3 + 15881))
                                  {
                                    goto LABEL_527;
                                  }
                                }

                                else
                                {
                                  v286 = *(v3 + 3464);
                                }

                                if (*(v3 + 15882) != 1)
                                {
LABEL_528:
                                  v270 = *(v3 + 4688);
                                  goto LABEL_529;
                                }

LABEL_527:
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v285, v286, &v484);
                                goto LABEL_528;
                              }

                              v454 = v234;
                              v455 = v202;
                              v456 = v201;
                              v457 = v198;
                              v458 = v199;
                              v250 = 0;
                              v483.realp = *(v3 + 4216);
                              LODWORD(v483.imagp) = *(v3 + 4228);
                              v477 = *(v3 + 4232);
                              v478 = *(v3 + 4244);
                              v475 = *(v3 + 4248);
                              v476 = *(v3 + 4260);
                              v473 = *(v3 + 4264);
                              v474 = *(v3 + 4276);
                              v471 = *(v3 + 4280);
                              v472 = *(v3 + 4292);
                              do
                              {
                                AudioUnitSetParameter(*(v3 + 3088), 0x64u, 4u, v250, *(&v483.realp + v250), 0);
                                AudioUnitSetParameter(*(v3 + 3088), 0x65u, 4u, v250, *(&v477 + v250), 0);
                                AudioUnitSetParameter(*(v3 + 3088), 0x66u, 4u, v250, *(&v475 + v250), 0);
                                AudioUnitSetParameter(*(v3 + 3088), 0x67u, 4u, v250, *(&v473 + v250), 0);
                                AudioUnitSetParameter(*(v3 + 3088), 0x68u, 4u, v250, *(&v471 + v250), 0);
                                ++v250;
                              }

                              while (v250 != 3);
                              *&v480.mNumberBuffers = 1;
                              *&v480.mBuffers[0].mNumberChannels = 0;
                              v480.mBuffers[0].mData = 0;
                              v480.mBuffers[0] = *(*(v3 + 4064) + 8);
                              inInputBufferLists = v454;
                              v486 = v460;
                              v479.mSampleTime = *(v3 + 3440);
                              v479.mHostTime = &v480;
                              v479.mRateScalar = 0.0;
                              v479.mWordClockTime = 0;
                              v469 = 512;
                              v251 = *&a2->mRateScalar;
                              *&v484.mSampleTime = *&a2->mSampleTime;
                              *&v484.mRateScalar = v251;
                              v252 = *&a2->mSMPTETime.mHours;
                              *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                              *&v484.mSMPTETime.mHours = v252;
                              AudioUnitProcessMultiple(*(v3 + 3088), &v469, &v484, *(v3 + 516), 2u, &inInputBufferLists, 4u, &v479);
                              v461 = 0.0;
                              AudioUnitGetParameter(*(v3 + 3088), 0xAu, 0, 0, &v461);
                              v253 = *(v3 + 516);
                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v253, *(v3 + 3440), &v484);
                                v253 = *(v3 + 516);
                                v198 = v457;
                                v199 = v458;
                                v202 = v455;
                                v201 = v456;
                                if (*(v3 + 15881))
                                {
                                  goto LABEL_484;
                                }
                              }

                              else
                              {
                                v198 = v457;
                                v199 = v458;
                                v202 = v455;
                                v201 = v456;
                              }

                              if (*(v3 + 15882) != 1)
                              {
LABEL_485:
                                AudioUnitGetParameter(*(v3 + 3088), 0x64u, 4u, 0, (v3 + 4216));
                                AudioUnitGetParameter(*(v3 + 3088), 0x65u, 4u, 0, (v3 + 4232));
                                AudioUnitGetParameter(*(v3 + 3088), 0x66u, 4u, 0, (v3 + 4248));
                                AudioUnitGetParameter(*(v3 + 3088), 0x67u, 4u, 0, (v3 + 4264));
                                AudioUnitGetParameter(*(v3 + 3088), 0x68u, 4u, 0, (v3 + 4280));
                                goto LABEL_486;
                              }

LABEL_484:
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v253, &v480, &v484);
                              goto LABEL_485;
                            }

                            v454 = v234;
                            v455 = v202;
                            v456 = v201;
                            v457 = v198;
                            v458 = v199;
                            v246 = 0;
                            inInputBufferLists = *(v3 + 4216);
                            LODWORD(v486) = *(v3 + 4228);
                            v483.realp = *(v3 + 4232);
                            LODWORD(v483.imagp) = *(v3 + 4244);
                            v477 = *(v3 + 4248);
                            v478 = *(v3 + 4260);
                            v475 = *(v3 + 4264);
                            v476 = *(v3 + 4276);
                            v473 = *(v3 + 4280);
                            v474 = *(v3 + 4292);
                            do
                            {
                              AudioUnitSetParameter(*(v3 + 3072), 0x12u, 4u, v246, *(&inInputBufferLists + v246), 0);
                              AudioUnitSetParameter(*(v3 + 3072), 0x13u, 4u, v246, *(&v483.realp + v246), 0);
                              AudioUnitSetParameter(*(v3 + 3072), 0x14u, 4u, v246, *(&v477 + v246), 0);
                              AudioUnitSetParameter(*(v3 + 3072), 0x15u, 4u, v246, *(&v475 + v246), 0);
                              AudioUnitSetParameter(*(v3 + 3072), 0x16u, 4u, v246, *(&v473 + v246), 0);
                              ++v246;
                            }

                            while (v246 != 3);
                            v234 = v454;
                            *&v479.mSampleTime = v454;
                            v479.mHostTime = v460;
                            *&v480.mNumberBuffers = v454;
                            *&v480.mBuffers[0].mNumberChannels = v460;
                            v469 = 512;
                            v247 = *&a2->mRateScalar;
                            *&v484.mSampleTime = *&a2->mSampleTime;
                            *&v484.mRateScalar = v247;
                            v248 = *&a2->mSMPTETime.mHours;
                            *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&v484.mSMPTETime.mHours = v248;
                            AudioUnitProcessMultiple(*(v3 + 3072), &v469, &v484, *(v3 + 516), 2u, &v479, 2u, &v480);
                            v249 = *(v3 + 516);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v249, v234, &v484);
                              v249 = *(v3 + 516);
                              v198 = v457;
                              v199 = v458;
                              v202 = v455;
                              v201 = v456;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_471;
                              }
                            }

                            else
                            {
                              v198 = v457;
                              v199 = v458;
                              v202 = v455;
                              v201 = v456;
                            }

                            if (*(v3 + 15882) != 1)
                            {
LABEL_472:
                              v239 = *(v3 + 4688);
                              goto LABEL_473;
                            }

LABEL_471:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v249, v460, &v484);
                            goto LABEL_472;
                          }

                          v454 = (&v453 - 8);
                          v455 = v202;
                          v456 = v201;
                          v457 = v198;
                          v458 = v199;
                          v242 = 0;
                          inInputBufferLists = *(v3 + 4216);
                          LODWORD(v486) = *(v3 + 4228);
                          v483.realp = *(v3 + 4232);
                          LODWORD(v483.imagp) = *(v3 + 4244);
                          v477 = *(v3 + 4248);
                          v478 = *(v3 + 4260);
                          v475 = *(v3 + 4264);
                          v476 = *(v3 + 4276);
                          v473 = *(v3 + 4280);
                          v474 = *(v3 + 4292);
                          do
                          {
                            AudioUnitSetParameter(*(v3 + 3064), 9u, 4u, v242, *(&inInputBufferLists + v242), 0);
                            AudioUnitSetParameter(*(v3 + 3064), 0xAu, 4u, v242, *(&v483.realp + v242), 0);
                            AudioUnitSetParameter(*(v3 + 3064), 0xBu, 4u, v242, *(&v477 + v242), 0);
                            AudioUnitSetParameter(*(v3 + 3064), 0xCu, 4u, v242, *(&v475 + v242), 0);
                            AudioUnitSetParameter(*(v3 + 3064), 0xDu, 4u, v242, *(&v473 + v242), 0);
                            ++v242;
                          }

                          while (v242 != 3);
                          v234 = v454;
                          *&v479.mSampleTime = v454;
                          v479.mHostTime = v460;
                          *&v480.mNumberBuffers = v454;
                          *&v480.mBuffers[0].mNumberChannels = v460;
                          v469 = 512;
                          v243 = *&a2->mRateScalar;
                          *&v484.mSampleTime = *&a2->mSampleTime;
                          *&v484.mRateScalar = v243;
                          v244 = *&a2->mSMPTETime.mHours;
                          *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&v484.mSMPTETime.mHours = v244;
                          AudioUnitProcessMultiple(*(v3 + 3064), &v469, &v484, *(v3 + 516), 2u, &v479, 2u, &v480);
                          v245 = *(v3 + 516);
                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                          {
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v245, v234, &v484);
                            v245 = *(v3 + 516);
                            v198 = v457;
                            v199 = v458;
                            v202 = v455;
                            v201 = v456;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_458;
                            }
                          }

                          else
                          {
                            v198 = v457;
                            v199 = v458;
                            v202 = v455;
                            v201 = v456;
                          }

                          if (*(v3 + 15882) != 1)
                          {
LABEL_459:
                            v239 = *(v3 + 4688);
                            goto LABEL_460;
                          }

LABEL_458:
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v245, v460, &v484);
                          goto LABEL_459;
                        }

                        if ((v176 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 3048))
                        {
                          goto LABEL_437;
                        }

                        memcpy(*(*(v3 + 3488) + 16), *(*(v3 + 3440) + 16), 8 * *(v3 + 516));
                        memcpy(*(*(v3 + 3488) + 32), *(*(v3 + 4080) + 16), 8 * *(v3 + 516));
                        v477 = *(v3 + 3488);
                        v222 = *(v3 + 3480);
                        inInputBufferLists = *(v3 + 3448);
                        v486 = v222;
                        v223 = *&a2->mRateScalar;
                        *&v484.mSampleTime = *&a2->mSampleTime;
                        *&v484.mRateScalar = v223;
                        v224 = *&a2->mSMPTETime.mHours;
                        *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&v484.mSMPTETime.mHours = v224;
                        Parameter = AudioUnitProcessMultiple(*(v3 + 3048), &v469, &v484, *(v3 + 516), 1u, &v477, 2u, &inInputBufferLists);
                        v225 = *(v3 + 516);
                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v225, inInputBufferLists, &v484);
                          v225 = *(v3 + 516);
                          v226 = v486;
                          if (*(v3 + 15881))
                          {
                            goto LABEL_421;
                          }
                        }

                        else
                        {
                          v226 = v486;
                        }

                        if (*(v3 + 15882) != 1)
                        {
LABEL_422:
                          if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 3056))
                          {
                            goto LABEL_437;
                          }

                          memcpy(*(*(v3 + 3496) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                          memcpy(*(*(v3 + 3456) + 16), *(*(v3 + 3464) + 16), 4 * (2 * *(v3 + 516)));
                          LODWORD(v475) = 1092616192;
                          v227 = *(v3 + 3480);
                          *&v480.mNumberBuffers = *(v3 + 3448);
                          *&v480.mBuffers[0].mNumberChannels = v227;
                          v228 = *(v3 + 4080);
                          v480.mBuffers[0].mData = *(v3 + 3496);
                          v481 = v228;
                          v482 = *(v3 + 3456);
                          v229 = *(v3 + 3464);
                          v230 = 10.0;
                          v483.realp = *(v3 + 3440);
                          v483.imagp = v229;
                          if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                          {
                            v231 = *(v3 + 3232);
                            if (v231)
                            {
                              AudioUnitGetParameter(v231, 9u, 0, 0, &v475);
                              v230 = *&v475;
                            }
                          }

                          AudioUnitSetParameter(*(v3 + 3056), 0xAu, 0, 0, v230, 0);
                          AudioUnitSetParameter(*(v3 + 3056), 0x17u, 0, 0, *(v3 + 16756), 0);
                          v232 = *&a2->mRateScalar;
                          *&v479.mSampleTime = *&a2->mSampleTime;
                          *&v479.mRateScalar = v232;
                          v233 = *&a2->mSMPTETime.mHours;
                          *&v479.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&v479.mSMPTETime.mHours = v233;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 3056), &v469, &v479, *(v3 + 516), 5u, &v480, 2u, &v483);
                          v217 = *(v3 + 516);
                          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                          {
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v217, v483.realp, &v479);
                            v217 = *(v3 + 516);
                            imagp = v483.imagp;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_436;
                            }
                          }

                          else
                          {
                            imagp = v483.imagp;
                          }

                          if (*(v3 + 15882) != 1)
                          {
                            goto LABEL_437;
                          }

LABEL_436:
                          v219 = &v479;
                          v220 = v3;
                          v221 = 27;
                          goto LABEL_409;
                        }

LABEL_421:
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v225, v226, &v484);
                        goto LABEL_422;
                      }
                    }

                    else
                    {
                      v205 = *(v3 + 3032);
                    }

                    v206 = 2.0;
                    goto LABEL_390;
                  }

                  v189 = *(v3 + 4252);
                  if (v189 == 0.0)
                  {
                    v190 = *(v3 + 16872);
                    v191 = *(*(v3 + 3408) + 16);
                    v192 = *(*(v3 + 3496) + 16) + 4 * *(v3 + 516);
                    v484.mSampleTime = *(*(v3 + 3496) + 16);
                    v484.mHostTime = v192;
                    VPTimeFreqConverter_Analyze(v190, v191, &v484);
                    v189 = *(v3 + 4252);
                    Parameter = *(v3 + 3144);
                  }

                  AudioUnitSetParameter(Parameter, 6u, 0, 0, v189, 0);
                  AudioUnitSetParameter(*(v3 + 3144), 7u, 0, 0, *(v3 + 4268), 0);
                  AudioUnitSetParameter(*(v3 + 3144), 0xDu, 0, 0, *(v3 + 4284), 0);
                  memcpy(*(*(v3 + 3480) + 16), *(*(v3 + 4064) + 32), *(v3 + 4316));
                  v193 = *(v3 + 3480);
                  v479.mSampleTime = *(v3 + 4072);
                  v479.mHostTime = v193;
                  v479.mRateScalar = *(v3 + 4120);
                  memset(&v479.mWordClockTime, 0, 24);
                  *&v480.mNumberBuffers = *(v3 + 3464);
                  *&v480.mBuffers[0].mNumberChannels = 0;
                  v480.mBuffers[0].mData = *(v3 + 4032);
                  v194 = *&a2->mRateScalar;
                  *&v484.mSampleTime = *&a2->mSampleTime;
                  *&v484.mRateScalar = v194;
                  v195 = *&a2->mSMPTETime.mHours;
                  *&v484.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                  *&v484.mSMPTETime.mHours = v195;
                  v469 = 512;
                  Parameter = AudioUnitProcessMultiple(*(v3 + 3144), &v469, &v484, *(v3 + 516), 6u, &v479, 3u, &v480);
                  v196 = *(v3 + 516);
                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                  {
                    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v196, *(v3 + 3464), &v484);
                    v196 = *(v3 + 516);
                    v197 = *(v3 + 4032);
                    if (*(v3 + 15881))
                    {
                      goto LABEL_356;
                    }
                  }

                  else
                  {
                    v197 = *(v3 + 4032);
                  }

                  if (*(v3 + 15882) != 1)
                  {
LABEL_357:
                    v176 = *(v3 + 4688);
                    goto LABEL_358;
                  }

LABEL_356:
                  Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v196, v197, &v484);
                  goto LABEL_357;
                }

LABEL_856:
                std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
              }
            }

            else
            {
              v139 = *(v3 + 3384);
            }

            if (*(v3 + 15882) != 1)
            {
              goto LABEL_272;
            }

            goto LABEL_271;
          }

LABEL_209:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x11u, v120, v121, &buf);
          v121 = *(v3 + 17192);
          LODWORD(v120) = *(v3 + 516);
          goto LABEL_210;
        }

        v114 = *(v3 + 16880);
        if ((*(v3 + 16888) - v114) <= 0x20)
        {
          goto LABEL_856;
        }

        ECApplicator::apply(*(v114 + 32), &buf, v76, &v468, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
        v115 = *(v3 + 516);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v115, *(v3 + 1096), &buf);
          v115 = *(v3 + 516);
          v116 = *(v3 + 3392);
          if (*(v3 + 15881))
          {
            goto LABEL_195;
          }
        }

        else
        {
          v116 = *(v3 + 3392);
        }

        if (*(v3 + 15882) != 1)
        {
LABEL_196:
          v117 = *(v3 + 17136);
          v118 = *(v116 + 16);
          v484.mSampleTime = *(*(v3 + 4088) + 16);
          v484.mHostTime = *&v484.mSampleTime + 4 * v115;
          VPTimeFreqConverter_Analyze(v117, v118, &v484);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 516), *(v3 + 4088), &buf);
          }

          goto LABEL_199;
        }

LABEL_195:
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v115, v116, &buf);
        v116 = *(v3 + 3392);
        LODWORD(v115) = *(v3 + 516);
        goto LABEL_196;
      }

      v75 = *(v3 + 12536);
      if (*v74 != 3)
      {
        if (v75 == 2)
        {
          v76 = 1;
          v77 = 3;
          v458 = 2;
          v78 = 56;
          v79 = 40;
          goto LABEL_121;
        }

        v75 = *(v3 + 12536);
        if (v75 <= 0xC && ((0x1028u >> v75) & 1) != 0)
        {
          v76 = 3;
          v77 = 2;
          v458 = 1;
          v78 = 40;
          v79 = 24;
          goto LABEL_121;
        }
      }

      v76 = 1;
      v77 = 2;
      if (v75 != 9)
      {
        v458 = 0;
        v80 = 0;
        goto LABEL_123;
      }

      v458 = 3;
      v78 = 40;
      v79 = 56;
LABEL_121:
      *(v3 + 16960) = *(v74 + v79);
      *(v3 + 16984) = *(v74 + v78);
      v80 = v77;
      v77 = v76;
      v76 = 0;
LABEL_123:
      v81 = v74 + 8;
      *(v3 + 16912) = *(v81 + 16 * v76);
      *(v3 + 16936) = *(v81 + 16 * v77);
      goto LABEL_124;
    }
  }

  v13 = 0;
  while (((*(v3 + 472) >> v13) & 1) == 0)
  {
    if (++v13 == 32)
    {
      v13 = 33;
      break;
    }
  }

  v14 = *(v3 + 1088);
  if (v13 >= *v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v17 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = **(v3 + 1088);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v8.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 50;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v13;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v19;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v20 = *(v3 + 12704);
    if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v8.cpp", 50, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 1088));
    }

    v15 = *(*(v3 + 1096) + 16);
    v16 = *(v3 + 1088);
  }

  else
  {
    v15 = *(*(v3 + 1096) + 16);
    v16 = &v14[4 * v13];
  }

  memcpy(v15, v16[2], *(v16 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v21 = *(v3 + 3224);
    if (v21)
    {
      v22 = *(v3 + 4024);
      v484.mSampleTime = *(v3 + 1096);
      v484.mHostTime = v22;
      v23 = *(v3 + 4040);
      v479.mSampleTime = v484.mSampleTime;
      v479.mHostTime = v23;
      v24 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v24;
      v25 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v25;
      v480.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v21, &v480.mNumberBuffers, &buf, *(v3 + 516), 2u, &v484, 2u, &v479);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 1096), &buf);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
      {
        AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v470);
        AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v470, 0);
      }
    }
  }

LABEL_780:
  v480.mNumberBuffers = 0;
  v423 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v424 = v423;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 16424) != 0) | v423 & 1))
    {
      goto LABEL_796;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v424 & 1) == 0)
    {
      goto LABEL_796;
    }
  }

  else
  {
    if ((v423 & 1) == 0)
    {
      goto LABEL_796;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v425 = *(v3 + 4688);
  if ((v425 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v426 = *(v3 + 3280);
    if (v426)
    {
      v427 = 1936748646;
LABEL_794:
      AudioUnitGetParameter(v426, v427, 0, 0, &v480.mNumberBuffers);
      goto LABEL_796;
    }
  }

  if ((v425 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v426 = *(v3 + 3272);
    if (v426)
    {
      v427 = 2;
      goto LABEL_794;
    }
  }

  *&v480.mNumberBuffers = v470;
LABEL_796:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 1096) + 16), 4 * *(v3 + 516));
    v480.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 16432) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v428 = *(v3 + 3632);
    if (((v428 != 0) & v424) == 1)
    {
      AudioUnitSetParameter(v428, 0x12u, 0, 0, *&v480.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 516), *(v3 + 1096), a2);
  }

  if ((*(v3 + 4695) & 8) != 0 && (*(v3 + 4711) & 8) != 0)
  {
    v429 = *(v3 + 3264);
    if (v429)
    {
      v484.mSampleTime = *(v3 + 1096);
      v479.mSampleTime = v484.mSampleTime;
      LODWORD(inInputBufferLists) = 512;
      v430 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v430;
      v431 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v431;
      AudioUnitProcessMultiple(v429, &inInputBufferLists, &buf, *(v3 + 516), 1u, &v484, 1u, &v479);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v432 = *(v3 + 3352);
    if (v432)
    {
      v484.mSampleTime = *(v3 + 1096);
      v479.mSampleTime = v484.mSampleTime;
      LODWORD(inInputBufferLists) = 512;
      v433 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v433;
      v434 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v434;
      AudioUnitProcessMultiple(v432, &inInputBufferLists, &buf, *(v3 + 516), 1u, &v484, 1u, &v479);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  if ((*(v3 + 4688) & 0x8000000000000000) != 0 && (*(v3 + 4704) & 0x8000000000000000) != 0)
  {
    v435 = *(v3 + 3296);
    if (v435)
    {
      v436 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v436;
      v437 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v437;
      LODWORD(v484.mSampleTime) = 512;
      AudioUnitProcess(v435, &v484, &buf, *(v3 + 516), *(v3 + 1096));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  v438 = *(v3 + 4696);
  if (v438 & 1) != 0 && (*(v3 + 4712))
  {
    v439 = *(v3 + 3304);
    if (v439)
    {
      v440 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v440;
      v441 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v441;
      LODWORD(v484.mSampleTime) = 512;
      AudioUnitProcess(v439, &v484, &buf, *(v3 + 516), *(v3 + 1096));
      v438 = *(v3 + 4696);
    }
  }

  if ((v438 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v442 = *(v3 + 3312)) != 0)
  {
    v443 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v443;
    v444 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v444;
    LODWORD(v484.mSampleTime) = 512;
    AudioUnitProcess(v442, &v484, &buf, *(v3 + 516), *(v3 + 1096));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 516), *(v3 + 1096), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 3272))
    {
      LODWORD(v479.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 3312), 1u, 0, 0, &v479);
      AudioUnitSetParameter(*(v3 + 3272), 0x11u, 0, 0, *&v479.mSampleTime, 0);
    }

    LODWORD(v479.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 3312), 0x1Bu, 0, 0, &v479);
    mSampleTime_low = LODWORD(v479.mSampleTime);
    if (*(v3 + 2308) != *&v479.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v446 = *(v3 + 3272);
        if (v446)
        {
          AudioUnitSetParameter(v446, 0x12u, 0, 0, *&v479.mSampleTime, 0);
          mSampleTime_low = LODWORD(v479.mSampleTime);
        }
      }

      *(v3 + 2308) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 4396) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 1096) + 16), 1, &buf, *(*(v3 + 1096) + 16), 1, *(v3 + 516));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 516), *(v3 + 1096), a2);
    }
  }

  VoiceProcessorV6::ProcessLevelDrivenSuppressor(v3, a2);
  if ((*(v3 + 4696) & 8) != 0 && (*(v3 + 4712) & 8) != 0)
  {
    v447 = *(v3 + 3328);
    if (v447)
    {
      v448 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v448;
      v449 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v449;
      LODWORD(v484.mSampleTime) = 512;
      v450 = atomic_load(gWirelessChargingMatIsAttached);
      AudioUnitSetParameter(v447, 5u, 0, 0, (v450 & 1), 0);
      AudioUnitProcess(*(v3 + 3328), &v484, &buf, *(v3 + 516), *(v3 + 1096));
    }
  }

  return 0;
}

uint64_t VoiceProcessorV9::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v534 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 516), *(v3 + 1080)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 516), *(v3 + 1088)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 1080);
      v9 = (v3 + 516);
      v10 = *(v3 + 516);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 1080);
    goto LABEL_19;
  }

  v6 = *(v3 + 1080);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 1080);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 516);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 516);
    v11 = *(v3 + 1088);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 1088);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 1424);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 516);
  v12 = *(v3 + 1424);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v517 = 0.0;
  if ((*(v3 + 2091) & 1) != 0 || (*(v3 + 2093) & 1) != 0 || (*(v3 + 480) & 1) != 0 || (v26 = *(v3 + 4688)) == 0 && (*(v3 + 4696) & 0x7F) == 0)
  {
    v13 = 0;
    while (((*(v3 + 472) >> v13) & 1) == 0)
    {
      if (++v13 == 32)
      {
        v13 = 33;
        break;
      }
    }

    v14 = *(v3 + 1088);
    if (v13 >= *v14)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v17 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = **(v3 + 1088);
          LODWORD(buf.mSampleTime) = 136315906;
          *(&buf.mSampleTime + 4) = "vpProcessUplink_v9.cpp";
          WORD2(buf.mHostTime) = 1024;
          *(&buf.mHostTime + 6) = 53;
          WORD1(buf.mRateScalar) = 1024;
          HIDWORD(buf.mRateScalar) = v13;
          LOWORD(buf.mWordClockTime) = 1024;
          *(&buf.mWordClockTime + 2) = v19;
          _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
        }
      }

      v20 = *(v3 + 12704);
      if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v9.cpp", 53, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 1088));
      }

      v15 = *(*(v3 + 1096) + 16);
      v16 = *(v3 + 1088);
    }

    else
    {
      v15 = *(*(v3 + 1096) + 16);
      v16 = &v14[4 * v13];
    }

    memcpy(v15, v16[2], *(v16 + 3));
    if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
    {
      v21 = *(v3 + 3224);
      if (v21)
      {
        v22 = *(v3 + 4024);
        inInputBufferLists.mSampleTime = *(v3 + 1096);
        inInputBufferLists.mHostTime = v22;
        v23 = *(v3 + 4040);
        v526.mSampleTime = inInputBufferLists.mSampleTime;
        v526.mHostTime = v23;
        v24 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v24;
        v25 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v25;
        v527.mNumberBuffers = 512;
        AudioUnitProcessMultiple(v21, &v527.mNumberBuffers, &buf, *(v3 + 516), 2u, &inInputBufferLists, 2u, &v526);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 1096), &buf);
        }

        if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
        {
          AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v517);
          AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v517, 0);
        }
      }
    }

    goto LABEL_878;
  }

  v516 = 0;
  *(v3 + 17096) = 0;
  *(v3 + 17112) = 0;
  *(v3 + 17104) = 0;
  *(v3 + 17096) = 1;
  *(v3 + 17104) = *(*(v3 + 1080) + 8);
  if (v26 & 1) != 0 && (*(v3 + 4704))
  {
    this = *(v3 + 2792);
    if (this)
    {
      v27 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v27;
      v28 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v28;
      v516 = 512;
      this = AudioUnitProcess(this, &v516, &buf, *(v3 + 516), *(v3 + 1088));
    }
  }

  MEMORY[0x28223BE20](this);
  v31 = (&v498 - ((v30 + 15) & 0x3FFFFFFFF0));
  v32 = *(v3 + 1088);
  if (*v32)
  {
    v33 = 0;
    v34 = 2;
    v35 = v31;
    do
    {
      *&v35->mNumberBuffers = 0;
      *&v35->mBuffers[0].mNumberChannels = 0;
      v35->mBuffers[0].mData = 0;
      v35->mNumberBuffers = 1;
      v35->mBuffers[0] = *&v32[v34];
      ++v33;
      v34 += 4;
      ++v35;
    }

    while (v33 < *v32);
  }

  v36 = *(v3 + 4688);
  if ((v36 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
  {
    Parameter = *(v3 + 2800);
    if (Parameter)
    {
      v37 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v37;
      v38 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v38;
      v516 = 512;
      AudioUnitProcess(Parameter, &v516, &buf, *v9, v31);
      v44 = *v9;
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v44, v31, &buf);
      }

      Parameter = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1112), v31, v44, v39, v40, v41, v42, v43, v498);
      v36 = *(v3 + 4688);
    }
  }

  if ((v36 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
  {
    Parameter = *(v3 + 2808);
    if (Parameter)
    {
      v45 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v45;
      v46 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v46;
      v516 = 512;
      AudioUnitProcess(Parameter, &v516, &buf, *v9, v31 + 1);
      v52 = *v9;
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v52, v31 + 1, &buf);
      }

      Parameter = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1120), v31 + 1, v52, v47, v48, v49, v50, v51, v498);
      v36 = *(v3 + 4688);
    }
  }

  if ((v36 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
  {
    Parameter = *(v3 + 2816);
    if (Parameter)
    {
      v53 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v53;
      v54 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v54;
      v516 = 512;
      AudioUnitProcess(Parameter, &v516, &buf, *v9, v31 + 2);
      v60 = *v9;
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v60, v31 + 2, &buf);
      }

      Parameter = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1128), v31 + 2, v60, v55, v56, v57, v58, v59, v498);
      v36 = *(v3 + 4688);
    }
  }

  if ((v36 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
  {
    Parameter = *(v3 + 2824);
    if (Parameter)
    {
      v61 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v61;
      v62 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v62;
      v516 = 512;
      AudioUnitProcess(Parameter, &v516, &buf, *v9, v31 + 3);
      v68 = *v9;
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v68, v31 + 3, &buf);
      }

      Parameter = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1136), v31 + 3, v68, v63, v64, v65, v66, v67, v498);
      v36 = *(v3 + 4688);
    }
  }

  if ((v36 & 0x40) != 0 && (*(v3 + 4704) & 0x40) != 0 && *(v3 + 2840))
  {
    v69 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v69;
    v70 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v70;
    Parameter = VoiceProcessorV6::ApplyGMCoexNoiseMitigation(v3, *(v3 + 1088), *(v3 + 1088), &buf, *(v3 + 516));
  }

  v71 = *(v3 + 1088);
  v72 = *v71;
  v505 = &v498;
  if (v72 >= 3)
  {
    v73 = *(v3 + 12536);
    if (v72 != 3)
    {
      if (v73 == 2)
      {
        v74 = 1;
        v75 = 3;
        v76 = 56;
        v77 = 40;
        goto LABEL_122;
      }

      v73 = *(v3 + 12536);
      if (v73 <= 0xC && ((0x1028u >> v73) & 1) != 0)
      {
        v74 = 3;
        v75 = 2;
        v73 = 1;
        v76 = 40;
        v77 = 24;
        goto LABEL_122;
      }
    }

    v78 = 0;
    v74 = 1;
    v75 = 2;
    v76 = 40;
    if (v73 == 14)
    {
      v79 = 16960;
      goto LABEL_125;
    }

    if (v73 != 9)
    {
      LODWORD(v506) = 0;
      goto LABEL_127;
    }

    v73 = 3;
    v77 = 56;
LABEL_122:
    v78 = v75;
    *(v3 + 16960) = *(v71 + v77);
    v79 = 16984;
    v75 = v73;
LABEL_125:
    v80 = *(v71 + v76);
    LODWORD(v506) = v78;
    *(v3 + v79) = v80;
    v78 = v75;
    v75 = v74;
    v74 = 0;
LABEL_127:
    v81 = v71 + 8;
    *(v3 + 16912) = *(v81 + 16 * v74);
    *(v3 + 16936) = *(v81 + 16 * v75);
    goto LABEL_128;
  }

  *(v3 + 16912) = *(v71 + 8);
  if (*v71 < 2u)
  {
    v78 = 0;
    LODWORD(v506) = 0;
    v75 = 0;
    v74 = 0;
  }

  else
  {
    v78 = 0;
    if (*(v3 + 17160) == 1)
    {
      LODWORD(v506) = 0;
      v75 = 0;
      *(v3 + 16912) = *(v71 + 24);
      *(v3 + 16936) = *(v71 + 8);
      v74 = 1;
    }

    else
    {
      LODWORD(v506) = 0;
      v74 = 0;
      *(v3 + 16936) = *(v71 + 24);
      v75 = 1;
    }
  }

LABEL_128:
  v82 = *(v3 + 4688);
  if ((v82 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
  {
    Parameter = *(v3 + 2848);
    if (Parameter)
    {
      v83 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v83;
      v84 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v84;
      v516 = 512;
      Parameter = AudioUnitProcess(Parameter, &v516, &buf, *(v3 + 516), (v3 + 16904));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 516), (v3 + 16904), &buf);
      }

      v82 = *(v3 + 4688);
    }
  }

  if (v82 & 0x100) != 0 && (*(v3 + 4705))
  {
    Parameter = *(v3 + 2856);
    if (Parameter)
    {
      v85 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v85;
      v86 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v86;
      v516 = 512;
      Parameter = AudioUnitProcess(Parameter, &v516, &buf, *(v3 + 516), (v3 + 16928));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 516), (v3 + 16928), &buf);
      }

      v82 = *(v3 + 4688);
    }
  }

  if ((v82 & 0x200) != 0)
  {
    v87 = *(v3 + 4704);
    if ((v87 & 0x200) != 0)
    {
      Parameter = *(v3 + 2864);
      if (Parameter)
      {
        if ((v88 = v82 & v87, (v88 & 0x1000000000000) != 0) && *(v3 + 3176) || (v88 & 0x1000000000) != 0 && *(v3 + 3080) || (v88 & 0x10000000) != 0 && *(v3 + 3016))
        {
          v89 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v89;
          v90 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v90;
          v516 = 512;
          Parameter = AudioUnitProcess(Parameter, &v516, &buf, *(v3 + 516), (v3 + 16952));
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 8u, *(v3 + 516), (v3 + 16952), &buf);
          }

          v82 = *(v3 + 4688);
        }
      }
    }
  }

  if ((v82 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
  {
    Parameter = *(v3 + 2872);
    if (Parameter)
    {
      v91 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v91;
      v92 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v92;
      v516 = 512;
      Parameter = AudioUnitProcess(Parameter, &v516, &buf, *(v3 + 516), (v3 + 16976));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 516), (v3 + 16976), &buf);
      }

      v82 = *(v3 + 4688);
    }
  }

  if ((v82 & 0x10000000) != 0 && (*(v3 + 4707) & 0x10) != 0)
  {
    Parameter = *(v3 + 3016);
    if (Parameter)
    {
      if (**(v3 + 1416))
      {
        v93 = 1.0;
      }

      else
      {
        v93 = 0.0;
      }

      AudioUnitSetParameter(Parameter, 0x66616331u, 0, 0, v93, 0);
      if (*(*(v3 + 1416) + 1))
      {
        v94 = 1.0;
      }

      else
      {
        v94 = 0.0;
      }

      AudioUnitSetParameter(*(v3 + 3016), 0x66616332u, 0, 0, v94, 0);
      if (*(*(v3 + 1416) + 2))
      {
        v95 = 1.0;
      }

      else
      {
        v95 = 0.0;
      }

      AudioUnitSetParameter(*(v3 + 3016), 0x66616333u, 0, 0, v95, 0);
      v96 = 0;
      qmemcpy(&buf, "1dmr2dmr3dmr", 12);
      do
      {
        AudioUnitSetParameter(*(v3 + 3016), *(&buf.mSampleTime + v96), 0, 0, *(v3 + 4400), 0);
        v96 += 4;
      }

      while (v96 != 12);
      v527.mNumberBuffers = 0;
      AudioUnitGetParameter(*(v3 + 3312), 1u, 0, 0, &v527.mNumberBuffers);
      AudioUnitSetParameter(*(v3 + 3016), 0x67746479u, 0, 0, *&v527.mNumberBuffers, 0);
      LODWORD(v531.realp) = 0;
      AudioUnitGetParameter(*(v3 + 3312), 0x1Bu, 0, 0, &v531);
      if (*(v3 + 2308) != *&v531.realp)
      {
        AudioUnitSetParameter(*(v3 + 3016), 0x67747067u, 0, 0, *&v531.realp, 0);
        *(v3 + 2308) = v531.realp;
      }

      AudioUnitSetParameter(*(v3 + 3016), 0x67746467u, 0, 0, *(v3 + 12612), 0);
      v97 = AudioUnitSetParameter(*(v3 + 3272), 0x6774706Du, 0, 0, *(v3 + 2320), 0);
      MEMORY[0x28223BE20](v97);
      *(&v498 - 8) = 3;
      *(&v498 - 7) = *(v3 + 16912);
      *(&v498 - 5) = *(v3 + 16936);
      *(&v498 - 3) = *(v3 + 16960);
      v98 = *(v3 + 1080);
      *&inInputBufferLists.mSampleTime = &v498 - 8;
      inInputBufferLists.mHostTime = v98;
      v526.mSampleTime = *(v3 + 1096);
      v99 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v99;
      v100 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v100;
      LODWORD(v530.realp) = 512;
      AudioUnitProcessMultiple(*(v3 + 3016), &v530, &buf, *(v3 + 516), 2u, &inInputBufferLists, 1u, &v526);
      if (*(v3 + 16752))
      {
        v101 = 1852142452;
      }

      else
      {
        v101 = 0;
      }

      if (*(v3 + 16752))
      {
        v102 = 1733326433;
      }

      else
      {
        v102 = 1852142452;
      }

      AudioUnitGetProperty(*(v3 + 3016), v102, 0, v101, *(*(v3 + 17464) + 16), (*(v3 + 17464) + 12));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x20u, (*(v3 + 516) + 1), *(v3 + 17464), &buf);
      }

      AudioUnitGetParameter(*(v3 + 3016), 0x776E6466u, 0, 0, (v3 + 17504));
      AudioUnitGetParameter(*(v3 + 3016), 0x67747370u, 0, 0, &v517);
      v103 = v517;
      *(v3 + 17508) = v517;
      AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v103, 0);
      Parameter = AudioUnitGetParameter(*(v3 + 3016), 0x67746774u, 0, 0, (v3 + 12616));
      v82 = *(v3 + 4688);
    }
  }

  if ((v82 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0)
  {
    if (*(v3 + 2968))
    {
      Parameter = *(v3 + 17600);
      if (Parameter)
      {
        v104 = *(v3 + 16920);
        v105 = *(*(v3 + 17560) + 16) + 4 * *(v3 + 516);
        buf.mSampleTime = *(*(v3 + 17560) + 16);
        buf.mHostTime = v105;
        VPTimeFreqConverter_Analyze(Parameter, v104, &buf);
        v82 = *(v3 + 4688);
      }
    }
  }

  if ((v82 & 0x800000) != 0 && (*(v3 + 4706) & 0x80) != 0)
  {
    if (*(v3 + 2976))
    {
      Parameter = *(v3 + 17608);
      if (Parameter)
      {
        v106 = *(v3 + 16944);
        v107 = *(*(v3 + 17568) + 16) + 4 * *(v3 + 516);
        buf.mSampleTime = *(*(v3 + 17568) + 16);
        buf.mHostTime = v107;
        VPTimeFreqConverter_Analyze(Parameter, v106, &buf);
        v82 = *(v3 + 4688);
      }
    }
  }

  if (v82 & 0x1000000) != 0 && (*(v3 + 4707))
  {
    if (*(v3 + 2984))
    {
      Parameter = *(v3 + 17616);
      if (Parameter)
      {
        v108 = *(v3 + 16968);
        v109 = *(*(v3 + 17576) + 16) + 4 * *(v3 + 516);
        buf.mSampleTime = *(*(v3 + 17576) + 16);
        buf.mHostTime = v109;
        VPTimeFreqConverter_Analyze(Parameter, v108, &buf);
        v82 = *(v3 + 4688);
      }
    }
  }

  if ((v82 & 0x2000000) != 0 && (*(v3 + 4707) & 2) != 0)
  {
    if (*(v3 + 2992))
    {
      Parameter = *(v3 + 17624);
      if (Parameter)
      {
        v110 = *(v3 + 16992);
        v111 = *(*(v3 + 17584) + 16) + 4 * *(v3 + 516);
        buf.mSampleTime = *(*(v3 + 17584) + 16);
        buf.mHostTime = v111;
        VPTimeFreqConverter_Analyze(Parameter, v110, &buf);
        v82 = *(v3 + 4688);
      }
    }
  }

  if (((v82 & 0x1000000000000) == 0 || (*(v3 + 4710) & 1) == 0 || !*(v3 + 3176)) && (v82 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
  {
    Parameter = *(v3 + 2880);
    if (Parameter)
    {
      MEMORY[0x28223BE20](Parameter);
      *(&v498 - 6) = 2;
      *(&v498 - 5) = *(v3 + 16912);
      *(&v498 - 3) = *(v3 + 16936);
      *&v526.mSampleTime = &v498 - 6;
      v526.mHostTime = 0;
      *&inInputBufferLists.mSampleTime = v3 + 16904;
      memset(&inInputBufferLists.mHostTime, 0, 24);
      v516 = 512;
      v112 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v112;
      v113 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v113;
      Parameter = AudioUnitProcessMultiple(v114, &v516, &buf, *(v3 + 516), 2u, &v526, 4u, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 516), (v3 + 16904), &buf);
      }

      v82 = *(v3 + 4688);
    }
  }

  v515 = 0;
  v115 = *&a2->mRateScalar;
  *&buf.mSampleTime = *&a2->mSampleTime;
  *&buf.mRateScalar = v115;
  v116 = *&a2->mSMPTETime.mHours;
  *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&buf.mSMPTETime.mHours = v116;
  if ((v82 & 0x4000000) != 0 && (*(v3 + 4707) & 4) != 0 && *(v3 + 3000))
  {
    v117 = *(v3 + 16880);
    if ((*(v3 + 16888) - v117) <= 0x20)
    {
      goto LABEL_954;
    }

    ECApplicator::apply(*(v117 + 32), &buf, v74, &v515, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
    v118 = *(v3 + 516);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v118, *(v3 + 1096), &buf);
      v118 = *(v3 + 516);
      v119 = *(v3 + 3392);
      if (*(v3 + 15881))
      {
        goto LABEL_228;
      }
    }

    else
    {
      v119 = *(v3 + 3392);
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_229:
      v120 = *(v3 + 17136);
      v121 = *(v119 + 16);
      inInputBufferLists.mSampleTime = *(*(v3 + 4088) + 16);
      inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v118;
      VPTimeFreqConverter_Analyze(v120, v121, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 516), *(v3 + 4088), &buf);
      }

      goto LABEL_232;
    }

LABEL_228:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v118, v119, &buf);
    v119 = *(v3 + 3392);
    LODWORD(v118) = *(v3 + 516);
    goto LABEL_229;
  }

LABEL_232:
  v514 = 0;
  if ((*(v3 + 4691) & 8) == 0 || (*(v3 + 4707) & 8) == 0 || !*(v3 + 3008))
  {
    goto LABEL_246;
  }

  v122 = *(v3 + 16880);
  if ((*(v3 + 16888) - v122) <= 0x28)
  {
    goto LABEL_954;
  }

  ECApplicator::apply(*(v122 + 40), &buf, v75, &v514, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
  v123 = *(v3 + 516);
  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x22u, v123, *(v3 + 1096), &buf);
    v123 = *(v3 + 516);
    v124 = *(v3 + 17192);
    if (*(v3 + 15881))
    {
      goto LABEL_242;
    }
  }

  else
  {
    v124 = *(v3 + 17192);
  }

  if (*(v3 + 15882) == 1)
  {
LABEL_242:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x11u, v123, v124, &buf);
    v124 = *(v3 + 17192);
    LODWORD(v123) = *(v3 + 516);
  }

  v125 = *(v3 + 17256);
  v126 = *(v124 + 16);
  inInputBufferLists.mSampleTime = *(*(v3 + 4096) + 16);
  inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v123;
  VPTimeFreqConverter_Analyze(v125, v126, &inInputBufferLists);
  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x17u, *(v3 + 516), *(v3 + 4096), &buf);
  }

LABEL_246:
  v127 = *(v3 + 4688);
  v503 = v9;
  if ((v127 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0 && *(v3 + 2968))
  {
    v128 = *(v3 + 16880);
    if (*(v3 + 16888) == v128)
    {
      goto LABEL_954;
    }

    Parameter = ECApplicator::apply(*v128, &buf, v74, &v515 + 1, (v3 + 4216), (v3 + 4232), (v3 + 4248), (v3 + 4264), (v3 + 4280), (v3 + 4296));
    v129 = *(v3 + 516);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v129, (v3 + 16904), &buf);
      v129 = *(v3 + 516);
      v130 = *(v3 + 3360);
      if (*(v3 + 15881))
      {
        goto LABEL_289;
      }
    }

    else
    {
      v130 = *(v3 + 3360);
    }

    if (*(v3 + 15882) == 1)
    {
LABEL_289:
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v129, v130, &buf);
    }
  }

  else if ((v127 & 0x10000000) == 0 || (*(v3 + 4707) & 0x10) == 0 || !*(v3 + 3016))
  {
    v131 = 0;
    while (((*(v3 + 472) >> v131) & 1) == 0)
    {
      if (++v131 == 32)
      {
        v131 = 33;
        break;
      }
    }

    if (v131 >= **(v3 + 1088))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v132 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
      if (v132)
      {
        v133 = v132;
        if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          v134 = **(v3 + 1088);
          LODWORD(inInputBufferLists.mSampleTime) = 136315906;
          *(&inInputBufferLists.mSampleTime + 4) = "vpProcessUplink_v9.cpp";
          WORD2(inInputBufferLists.mHostTime) = 1024;
          *(&inInputBufferLists.mHostTime + 6) = 514;
          WORD1(inInputBufferLists.mRateScalar) = 1024;
          HIDWORD(inInputBufferLists.mRateScalar) = v131;
          LOWORD(inInputBufferLists.mWordClockTime) = 1024;
          *(&inInputBufferLists.mWordClockTime + 2) = v134;
          _os_log_impl(&dword_2724B4000, v133, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &inInputBufferLists, 0x1Eu);
        }
      }

      v135 = *(v3 + 12704);
      if (v135 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v9 = v503;
        CALegacyLog::log(v135, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v9.cpp", 514, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v131, **(v3 + 1088));
        v131 = 0;
      }

      else
      {
        v131 = 0;
        v9 = v503;
      }
    }

    v136 = *(v3 + 1088) + 16 * v131;
    Parameter = memcpy(*(*(v3 + 1096) + 16), *(v136 + 16), *(v136 + 12));
  }

  v137 = (v3 + 17096);
  if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
  {
    Parameter = *(v3 + 3344);
    if (Parameter)
    {
      inInputBufferLists.mSampleTime = *(v3 + 1088);
      inInputBufferLists.mHostTime = v3 + 17096;
      v526.mSampleTime = *(v3 + 1096);
      v516 = 512;
      Parameter = AudioUnitProcessMultiple(Parameter, &v516, &buf, *(v3 + 516), 2u, &inInputBufferLists, 1u, &v526);
    }
  }

  v513 = 0;
  if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0 && *(v3 + 2976))
  {
    v138 = *(v3 + 16880);
    if ((*(v3 + 16888) - v138) <= 8)
    {
      goto LABEL_954;
    }

    Parameter = ECApplicator::apply(*(v138 + 8), &buf, v75, &v513, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
    v139 = *(v3 + 516);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v139, (v3 + 16928), &buf);
      v139 = *(v3 + 516);
      v140 = *(v3 + 3368);
      if (*(v3 + 15881))
      {
        goto LABEL_292;
      }
    }

    else
    {
      v140 = *(v3 + 3368);
    }

    if (*(v3 + 15882) == 1)
    {
LABEL_292:
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v139, v140, &buf);
    }
  }

  v512 = 0;
  if ((*(v3 + 4691) & 1) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984))
  {
    v141 = *(v3 + 16880);
    if ((*(v3 + 16888) - v141) <= 0x10)
    {
      goto LABEL_954;
    }

    Parameter = ECApplicator::apply(*(v141 + 16), &buf, v78, &v512, (v3 + 4224), (v3 + 4240), (v3 + 4256), (v3 + 4272), (v3 + 4288), (v3 + 4304));
    v142 = *(v3 + 516);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v142, (v3 + 16952), &buf);
      v142 = *(v3 + 516);
      v143 = *(v3 + 3384);
      if (*(v3 + 15881))
      {
        goto LABEL_303;
      }
    }

    else
    {
      v143 = *(v3 + 3384);
    }

    if (*(v3 + 15882) == 1)
    {
LABEL_303:
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v142, v143, &buf);
    }
  }

  v511 = 0;
  if ((*(v3 + 4691) & 2) == 0 || (*(v3 + 4707) & 2) == 0 || !*(v3 + 2992))
  {
    goto LABEL_315;
  }

  v144 = *(v3 + 16880);
  if ((*(v3 + 16888) - v144) <= 0x18)
  {
LABEL_954:
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
  }

  Parameter = ECApplicator::apply(*(v144 + 24), &buf, v506, &v511, (v3 + 4228), (v3 + 4244), (v3 + 4260), (v3 + 4276), (v3 + 4292), (v3 + 4308));
  v145 = *(v3 + 516);
  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
  {
    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v145, (v3 + 16976), &buf);
    v145 = *(v3 + 516);
    v146 = *(v3 + 3376);
    if (*(v3 + 15881))
    {
      goto LABEL_314;
    }
  }

  else
  {
    v146 = *(v3 + 3376);
  }

  if (*(v3 + 15882) == 1)
  {
LABEL_314:
    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v145, v146, &buf);
  }

LABEL_315:
  if ((*(v3 + 8869) & 8) != 0 && (*(v3 + 8877) & 8) != 0)
  {
    if (*(v3 + 3856))
    {
      *(v3 + 17128) = 0;
      if (*(v3 + 4691) & 1) != 0 && (*(v3 + 4707))
      {
        Parameter = *(v3 + 2984);
        if (Parameter)
        {
          if (*(v3 + 17120))
          {
            LODWORD(inInputBufferLists.mSampleTime) = 0;
            Parameter = AudioUnitGetPropertyInfo(Parameter, 0xF3Cu, 0, 0, &inInputBufferLists, 0);
            if (!Parameter && LODWORD(inInputBufferLists.mSampleTime) == 4 * *v9)
            {
              v147 = *(*(v3 + 17120) + 16);
              Parameter = AudioUnitGetProperty(*(v3 + 2984), 0xF3Cu, 0, 0, v147, &inInputBufferLists);
              v148 = Parameter;
              if (*(v3 + 489) == 1)
              {
                Parameter = AudioUnitSetProperty(*(v3 + 3856), 0xF3Cu, 0, 0, v147, LODWORD(inInputBufferLists.mSampleTime));
              }

              *(v3 + 17128) = v148 == 0;
            }
          }
        }
      }
    }
  }

  if ((*(v3 + 4692) & 0x10) != 0 && (*(v3 + 4708) & 0x10) != 0 && *(v3 + 3080))
  {
    v506 = (v3 + 17096);
    MEMORY[0x28223BE20](Parameter);
    *(&v498 - 6) = 0u;
    *(&v498 - 5) = 0u;
    *(&v498 - 3) = 0u;
    *(&v498 - 2) = 0u;
    *(&v498 - 4) = 0u;
    v497 = 0;
    *(&v498 - 24) = 5;
    *(&v498 - 11) = *(v3 + 16912);
    *(&v498 - 5) = *(v3 + 16936);
    *(&v498 - 9) = *(v3 + 16960);
    *(&v498 - 7) = *(v3 + 16984);
    v149 = *(v3 + 17112);
    v150 = *(*(v3 + 3360) + 16);
    v504 = *(*(v3 + 3368) + 16);
    v151 = v504;
    v152 = *(*(v3 + 3384) + 16);
    v501 = v149;
    v502 = v152;
    v153 = *(*(v3 + 3376) + 16);
    v154 = *(*(v3 + 17320) + 16);
    LODWORD(v530.realp) = 1048576000;
    MEMORY[0x2743CCD80](v150, 1);
    MEMORY[0x2743CCD80](v154, 1, v153, 1, v154, 1, *(v3 + 516));
    MEMORY[0x2743CCD80](v154, 1, v151, 1, v154, 1, *(v3 + 516));
    MEMORY[0x2743CCE20](v154, 1, &v530, v154, 1, *(v3 + 516));
    *(&v498 - 3) = *(*(v3 + 17320) + 8);
    *&v527.mNumberBuffers = &v498 - 12;
    v531.realp = *(v3 + 1096);
    v516 = 512;
    v155 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v155;
    v156 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v156;
    AudioUnitProcessMultiple(*(v3 + 3080), &v516, &inInputBufferLists, *(v3 + 516), 1u, &v527, 1u, &v531);
    v157 = v501;
    memcpy((*(*(v3 + 17288) + 16) + 4 * *(v3 + 17280)), v501, 4 * *(v3 + 516));
    memcpy((*(*(v3 + 17296) + 16) + 4 * *(v3 + 17280)), v150, 4 * *(v3 + 516));
    v158 = v502;
    memcpy((*(*(v3 + 17304) + 16) + 4 * *(v3 + 17280)), v502, 4 * *(v3 + 516));
    v159 = v153;
    memcpy((*(*(v3 + 17720) + 16) + 4 * *(v3 + 17280)), v153, 4 * *(v3 + 516));
    v160 = v504;
    memcpy((*(*(v3 + 17312) + 16) + 4 * *(v3 + 17280)), v504, 4 * *(v3 + 516));
    LODWORD(v524) = 4 * *(v3 + 516);
    AudioUnitGetProperty(*(v3 + 3080), 0x9087u, 0, 0, *(*(v3 + 17328) + 16), &v524);
    v161 = *(*(v3 + 17336) + 16) + 4 * *(v3 + 516);
    v526.mSampleTime = *(*(v3 + 17336) + 16);
    v526.mHostTime = v161;
    VPTimeFreqConverter_Analyze(*(v3 + 17344), *(*(v3 + 1096) + 16), &v526);
    memcpy(v157, *(*(v3 + 17288) + 16), 4 * *(v3 + 516));
    memcpy(v150, *(*(v3 + 17296) + 16), 4 * *(v3 + 516));
    memcpy(v158, *(*(v3 + 17304) + 16), 4 * *(v3 + 516));
    memcpy(v159, *(*(v3 + 17720) + 16), 4 * *(v3 + 516));
    memcpy(v160, *(*(v3 + 17312) + 16), 4 * *(v3 + 516));
    memmove(*(*(v3 + 17288) + 16), (*(*(v3 + 17288) + 16) + 4 * *(v3 + 516)), 4 * *(v3 + 17280));
    memmove(*(*(v3 + 17296) + 16), (*(*(v3 + 17296) + 16) + 4 * *(v3 + 516)), 4 * *(v3 + 17280));
    memmove(*(*(v3 + 17304) + 16), (*(*(v3 + 17304) + 16) + 4 * *(v3 + 516)), 4 * *(v3 + 17280));
    memmove(*(*(v3 + 17720) + 16), (*(*(v3 + 17720) + 16) + 4 * *(v3 + 516)), 4 * *(v3 + 17280));
    memmove(*(*(v3 + 17312) + 16), (*(*(v3 + 17312) + 16) + 4 * *(v3 + 516)), 4 * *(v3 + 17280));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 516), *(v3 + 1096), &inInputBufferLists);
    }

    v137 = v506;
  }

  v162 = *(v3 + 4176);
  v163 = *(v3 + 17112);
  v164 = *(*(v3 + 4112) + 16) + 4 * *(v3 + 516);
  inInputBufferLists.mSampleTime = *(*(v3 + 4112) + 16);
  inInputBufferLists.mHostTime = v164;
  VPTimeFreqConverter_Analyze(v162, v163, &inInputBufferLists);
  v510 = 0.0;
  if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0)
  {
    if (*(v3 + 2968))
    {
      v166 = *(v3 + 4128);
      v167 = *(v3 + 16920);
      v168 = *(*(v3 + 3440) + 16) + 4 * *(v3 + 516);
      inInputBufferLists.mSampleTime = *(*(v3 + 3440) + 16);
      inInputBufferLists.mHostTime = v168;
      VPTimeFreqConverter_Analyze(v166, v167, &inInputBufferLists);
      v169 = *(v3 + 4160);
      v170 = *(*(v3 + 3360) + 16);
      v171 = *(*(v3 + 4064) + 16) + 4 * *(v3 + 516);
      inInputBufferLists.mSampleTime = *(*(v3 + 4064) + 16);
      inInputBufferLists.mHostTime = v171;
      VPTimeFreqConverter_Analyze(v169, v170, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 516), *(v3 + 3440), &buf);
      }
    }
  }

  if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0)
  {
    if (*(v3 + 2976))
    {
      v172 = *(v3 + 4136);
      v173 = *(v3 + 16944);
      v174 = *(*(v3 + 4072) + 16) + 4 * *(v3 + 516);
      inInputBufferLists.mSampleTime = *(*(v3 + 4072) + 16);
      inInputBufferLists.mHostTime = v174;
      VPTimeFreqConverter_Analyze(v172, v173, &inInputBufferLists);
      v175 = *(v3 + 4168);
      v176 = *(*(v3 + 3368) + 16);
      v177 = *(*(v3 + 4064) + 32) + 4 * *(v3 + 516);
      inInputBufferLists.mSampleTime = *(*(v3 + 4064) + 32);
      inInputBufferLists.mHostTime = v177;
      VPTimeFreqConverter_Analyze(v175, v176, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 516), *(v3 + 4072), &buf);
      }
    }
  }

  v178 = *(v3 + 4688);
  if ((v178 & 0x1000000) != 0)
  {
    v179 = *(v3 + 4704);
    if ((v179 & 0x1000000) != 0)
    {
      if (*(v3 + 2984))
      {
        if ((v178 & v179 & 0x80000000000) != 0)
        {
          Property = *(v3 + 3136);
          if (Property)
          {
            Property = AudioUnitGetParameter(Property, 0x2Bu, 0, 0, &v510);
          }
        }

        if (v510 != 0.0 || (*(v3 + 4694) & 1) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 3176))
        {
          v180 = *(v3 + 4144);
          v181 = *(v3 + 16968);
          v182 = *(*(v3 + 17432) + 16) + 4 * *(v3 + 516);
          inInputBufferLists.mSampleTime = *(*(v3 + 17432) + 16);
          inInputBufferLists.mHostTime = v182;
          VPTimeFreqConverter_Analyze(v180, v181, &inInputBufferLists);
          v183 = *(v3 + 17152);
          v184 = *(*(v3 + 3384) + 16);
          v185 = *(*(v3 + 4064) + 48) + 4 * *(v3 + 516);
          inInputBufferLists.mSampleTime = *(*(v3 + 4064) + 48);
          inInputBufferLists.mHostTime = v185;
          VPTimeFreqConverter_Analyze(v183, v184, &inInputBufferLists);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x14u, *(v3 + 516), *(v3 + 17432), &buf);
          }
        }
      }
    }
  }

  if ((*(v3 + 4691) & 2) != 0 && (*(v3 + 4707) & 2) != 0)
  {
    if (*(v3 + 2992))
    {
      v186 = *(v3 + 4152);
      v187 = *(v3 + 16992);
      v188 = *(*(v3 + 4080) + 16) + 4 * *(v3 + 516);
      inInputBufferLists.mSampleTime = *(*(v3 + 4080) + 16);
      inInputBufferLists.mHostTime = v188;
      VPTimeFreqConverter_Analyze(v186, v187, &inInputBufferLists);
      v189 = *(v3 + 16864);
      v190 = *(*(v3 + 3376) + 16);
      v191 = *(*(v3 + 4064) + 64) + 4 * *(v3 + 516);
      inInputBufferLists.mSampleTime = *(*(v3 + 4064) + 64);
      inInputBufferLists.mHostTime = v191;
      VPTimeFreqConverter_Analyze(v189, v190, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 516), *(v3 + 4080), &buf);
      }
    }
  }

  v192 = *(v3 + 4688);
  if ((v192 & 0x1000) != 0 && (*(v3 + 4705) & 0x10) != 0)
  {
    Property = *(v3 + 2888);
    if (Property)
    {
      MEMORY[0x28223BE20](Property);
      *(&v498 - 6) = 2;
      *(&v498 - 5) = *(v3 + 16912);
      *(&v498 - 3) = *(v3 + 16936);
      v531.realp = (&v498 - 6);
      v531.imagp = 0;
      v526.mSampleTime = *(v3 + 17472);
      memset(&v526.mHostTime, 0, 24);
      v516 = 512;
      v193 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v193;
      v194 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v194;
      AudioUnitProcessMultiple(v195, &v516, &inInputBufferLists, *(v3 + 516), 2u, &v531, 4u, &v526);
      v196 = *(v3 + 17496);
      v197 = *(*(v3 + 17472) + 16);
      v198 = *(*(v3 + 17480) + 16) + 4 * *(v3 + 516);
      *&v527.mNumberBuffers = *(*(v3 + 17480) + 16);
      *&v527.mBuffers[0].mNumberChannels = v198;
      VPTimeFreqConverter_Analyze(v196, v197, &v527);
      if (*(v3 + 17632) == 1)
      {
        v199 = *(v3 + 516);
        *&v527.mNumberBuffers = *(*(v3 + 3440) + 16);
        *&v527.mBuffers[0].mNumberChannels = *&v527.mNumberBuffers + 4 * v199;
        v530.realp = *(*(v3 + 17480) + 16);
        v530.imagp = &v530.realp[v199];
        v200 = *(*(v3 + 17488) + 16);
        v201 = &v200[v199];
        vDSP_zvabs(&v527, 1, v200, 1, v199);
        vDSP_zvabs(&v530, 1, v201, 1, *(v3 + 516));
        vDSP_vmin(v200, 1, v201, 1, v200, 1, *(v3 + 516));
        LODWORD(v524) = 507307272;
        MEMORY[0x2743CCE00](v201, 1, &v524, v201, 1, *(v3 + 516));
        vDSP_vdiv(v201, 1, v200, 1, v201, 1, *(v3 + 516));
        MEMORY[0x2743CCDD0](v530.realp, 1, v201, 1, v530.realp, 1, *(v3 + 516));
        Property = MEMORY[0x2743CCDD0](v530.imagp, 1, v201, 1, v530.imagp, 1, *(v3 + 516));
      }

      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x61u, *(v3 + 516), *(v3 + 17480), &inInputBufferLists);
      }

      v192 = *(v3 + 4688);
    }
  }

  if ((v192 & 0x20000000) != 0 && (*(v3 + 4707) & 0x20) != 0)
  {
    Property = *(v3 + 3024);
    if (Property)
    {
      v526.mSampleTime = *(v3 + 3440);
      *&v527.mNumberBuffers = v526.mSampleTime;
      v516 = 512;
      v202 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v202;
      v203 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v203;
      Property = AudioUnitProcessMultiple(Property, &v516, &inInputBufferLists, *(v3 + 516), 1u, &v526, 1u, &v527);
      if (!Property)
      {
        Property = AudioUnitGetProperty(*(v3 + 3024), 0x1450u, 0, 0, *(*(v3 + 17464) + 16), (*(v3 + 17464) + 12));
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x20u, (*(v3 + 516) + 1), *(v3 + 17464), &inInputBufferLists);
        }
      }

      v192 = *(v3 + 4688);
    }
  }

  if ((v192 & 0x100000000000) != 0)
  {
    v204 = *(v3 + 4704);
    if ((v204 & 0x100000000000) != 0)
    {
      Property = *(v3 + 3144);
      if (Property)
      {
        if ((v192 & v204 & 0x1000000000000) == 0 || !*(v3 + 3176))
        {
          v205 = *(v3 + 4252);
          if (v205 == 0.0)
          {
            v206 = *(v3 + 16872);
            v207 = *(*(v3 + 3408) + 16);
            v208 = *(*(v3 + 3496) + 16) + 4 * *(v3 + 516);
            inInputBufferLists.mSampleTime = *(*(v3 + 3496) + 16);
            inInputBufferLists.mHostTime = v208;
            VPTimeFreqConverter_Analyze(v206, v207, &inInputBufferLists);
            v205 = *(v3 + 4252);
            Property = *(v3 + 3144);
          }

          AudioUnitSetParameter(Property, 6u, 0, 0, v205, 0);
          AudioUnitSetParameter(*(v3 + 3144), 7u, 0, 0, *(v3 + 4268), 0);
          AudioUnitSetParameter(*(v3 + 3144), 0xDu, 0, 0, *(v3 + 4284), 0);
          memcpy(*(*(v3 + 3480) + 16), *(*(v3 + 4064) + 32), *(v3 + 4316));
          v209 = *(v3 + 3480);
          v526.mSampleTime = *(v3 + 4072);
          v526.mHostTime = v209;
          v526.mRateScalar = *(v3 + 4120);
          memset(&v526.mWordClockTime, 0, 24);
          *&v527.mNumberBuffers = *(v3 + 3464);
          *&v527.mBuffers[0].mNumberChannels = 0;
          v527.mBuffers[0].mData = *(v3 + 4032);
          v210 = *&a2->mRateScalar;
          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
          *&inInputBufferLists.mRateScalar = v210;
          v211 = *&a2->mSMPTETime.mHours;
          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&inInputBufferLists.mSMPTETime.mHours = v211;
          v516 = 512;
          Property = AudioUnitProcessMultiple(*(v3 + 3144), &v516, &inInputBufferLists, *(v3 + 516), 6u, &v526, 3u, &v527);
          v212 = *(v3 + 516);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v212, *(v3 + 3464), &inInputBufferLists);
            v212 = *(v3 + 516);
            v213 = *(v3 + 4032);
            if (*(v3 + 15881))
            {
              goto LABEL_395;
            }
          }

          else
          {
            v213 = *(v3 + 4032);
          }

          if (*(v3 + 15882) != 1)
          {
LABEL_396:
            v192 = *(v3 + 4688);
            goto LABEL_397;
          }

LABEL_395:
          Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v212, v213, &inInputBufferLists);
          goto LABEL_396;
        }
      }
    }
  }

LABEL_397:
  v509 = 0;
  if ((v192 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 3032))
  {
    v214 = 1;
    v215 = 1;
  }

  else if ((v192 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
  {
    v214 = 0;
    v215 = *(v3 + 3056) != 0;
  }

  else
  {
    v214 = 0;
    v215 = 0;
  }

  v216 = v192 & 0x80000000;
  if ((v192 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
  {
    v217 = 1;
    v214 = 1;
    v218 = 1;
    if ((v192 & 0x100000000) == 0)
    {
      goto LABEL_422;
    }
  }

  else
  {
    if ((v192 & 0x100000000) == 0)
    {
      v217 = 0;
      v218 = 1;
      goto LABEL_422;
    }

    v218 = 1;
    if (*(v3 + 4708))
    {
      v219 = *(v3 + 3048);
      v217 = v219 != 0;
      if (v219)
      {
        v218 = 2;
      }

      else
      {
        v218 = 1;
      }
    }

    else
    {
      v217 = 0;
    }
  }

  v220 = *(v3 + 4704);
  if ((v220 & 0x100000000) != 0 && *(v3 + 3048) && (v192 & v220 & 0x200000000) != 0 && *(v3 + 3056))
  {
    v218 = 2;
    v214 = 2;
  }

LABEL_422:
  if ((v192 & 0x40000000) == 0)
  {
    goto LABEL_439;
  }

  if ((*(v3 + 4707) & 0x40) == 0)
  {
    goto LABEL_439;
  }

  Property = *(v3 + 3032);
  if (!Property)
  {
    goto LABEL_439;
  }

  AudioUnitSetProperty(Property, 0x457u, 0, 0, (v3 + 2332), 4u);
  if ((*(v3 + 4691) & 0x80) == 0 || (*(v3 + 4707) & 0x80) == 0)
  {
    v221 = *(v3 + 3032);
LABEL_428:
    v222 = 2.0;
    goto LABEL_429;
  }

  v221 = *(v3 + 3032);
  if (!*(v3 + 3040))
  {
    goto LABEL_428;
  }

  v222 = *(v3 + 2752);
LABEL_429:
  AudioUnitSetParameter(v221, 0x1Bu, 0, 0, v222, 0);
  v223 = *(v3 + 4688);
  if ((v223 & 0x400000) != 0)
  {
    v224 = *(v3 + 4704);
    if ((v224 & 0x400000) != 0 && *(v3 + 2968) && (v223 & v224 & 0x800000) != 0 && *(v3 + 2976))
    {
      AudioUnitSetParameter(*(v3 + 3032), 0x3Fu, 0, 0, *(v3 + 4248) * *(v3 + 4252), 0);
    }
  }

  *&v225 = *(v3 + 1112) + 24;
  *&v226 = *(v3 + 1120) + 24;
  if (**(v3 + 1088) <= 2u)
  {
    *&v526.mSampleTime = *(v3 + 1112) + 24;
    *&v526.mHostTime = v226;
    v526.mRateScalar = 0.0;
    v526.mWordClockTime = v137;
    *&v526.mSMPTETime.mSubframes = *(v3 + 3360);
  }

  else
  {
    v227 = *(v3 + 1128) + 24;
    *&v526.mSMPTETime.mSubframes = *(v3 + 3360);
    v526.mSampleTime = v226;
    v526.mHostTime = v227;
    v526.mRateScalar = v225;
    v526.mWordClockTime = v137;
  }

  *&v527.mNumberBuffers = 0;
  v516 = 512;
  AudioUnitSetParameter(*(v3 + 3032), 0x2Cu, 0, 0, *(v3 + 4392), 0);
  v228 = *&a2->mRateScalar;
  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
  *&inInputBufferLists.mRateScalar = v228;
  v229 = *&a2->mSMPTETime.mHours;
  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&inInputBufferLists.mSMPTETime.mHours = v229;
  Property = AudioUnitProcessMultiple(*(v3 + 3032), &v516, &inInputBufferLists, *(v3 + 516), 6u, &v526, 1u, &v527);
  v192 = *(v3 + 4688);
  v216 = v192 & 0x80000000;
LABEL_439:
  if (!v216 || (*(v3 + 4707) & 0x80) == 0 || !*(v3 + 3040))
  {
    if ((v192 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 3048))
    {
      goto LABEL_476;
    }

    memcpy(*(*(v3 + 3488) + 16), *(*(v3 + 3440) + 16), 8 * *(v3 + 516));
    memcpy(*(*(v3 + 3488) + 32), *(*(v3 + 4080) + 16), 8 * *(v3 + 516));
    v524 = *(v3 + 3488);
    v238 = *(v3 + 3480);
    v531.realp = *(v3 + 3448);
    v531.imagp = v238;
    v239 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v239;
    v240 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v240;
    Property = AudioUnitProcessMultiple(*(v3 + 3048), &v516, &inInputBufferLists, *(v3 + 516), 1u, &v524, 2u, &v531);
    v241 = *(v3 + 516);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v241, v531.realp, &inInputBufferLists);
      v241 = *(v3 + 516);
      imagp = v531.imagp;
      if (*(v3 + 15881))
      {
        goto LABEL_460;
      }
    }

    else
    {
      imagp = v531.imagp;
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_461:
      if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 3056))
      {
        goto LABEL_476;
      }

      memcpy(*(*(v3 + 3496) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
      memcpy(*(*(v3 + 3456) + 16), *(*(v3 + 3464) + 16), 4 * (2 * *(v3 + 516)));
      LODWORD(v522) = 1092616192;
      v243 = *(v3 + 3480);
      *&v527.mNumberBuffers = *(v3 + 3448);
      *&v527.mBuffers[0].mNumberChannels = v243;
      v244 = *(v3 + 4080);
      v527.mBuffers[0].mData = *(v3 + 3496);
      v528 = v244;
      v529 = *(v3 + 3456);
      v245 = *(v3 + 3464);
      v246 = 10.0;
      v530.realp = *(v3 + 3440);
      v530.imagp = v245;
      if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
      {
        v247 = *(v3 + 3232);
        if (v247)
        {
          AudioUnitGetParameter(v247, 9u, 0, 0, &v522);
          v246 = *&v522;
        }
      }

      AudioUnitSetParameter(*(v3 + 3056), 0xAu, 0, 0, v246, 0);
      AudioUnitSetParameter(*(v3 + 3056), 0x17u, 0, 0, *(v3 + 16756), 0);
      v248 = *&a2->mRateScalar;
      *&v526.mSampleTime = *&a2->mSampleTime;
      *&v526.mRateScalar = v248;
      v249 = *&a2->mSMPTETime.mHours;
      *&v526.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&v526.mSMPTETime.mHours = v249;
      Property = AudioUnitProcessMultiple(*(v3 + 3056), &v516, &v526, *(v3 + 516), 5u, &v527, 2u, &v530);
      v233 = *(v3 + 516);
      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v233, v530.realp, &v526);
        v233 = *(v3 + 516);
        v234 = v530.imagp;
        if (*(v3 + 15881))
        {
          goto LABEL_475;
        }
      }

      else
      {
        v234 = v530.imagp;
      }

      if (*(v3 + 15882) != 1)
      {
        goto LABEL_476;
      }

LABEL_475:
      p_inInputBufferLists = &v526;
      v236 = v3;
      v237 = 27;
      goto LABEL_448;
    }

LABEL_460:
    Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v241, imagp, &inInputBufferLists);
    goto LABEL_461;
  }

  memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4192) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
  memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4196) + 16), *(*(v3 + 4072) + 16), 4 * (2 * *(v3 + 516)));
  if (*(v3 + 4296) == 0.0 && *(v3 + 4300) == 0.0)
  {
    v230 = 0.0;
  }

  else
  {
    v230 = 1.0;
  }

  AudioUnitSetParameter(*(v3 + 3040), 0x20u, 0, 0, v230, 0);
  v526.mSampleTime = *(v3 + 3488);
  *&v527.mNumberBuffers = *(v3 + 3448);
  v231 = *&a2->mRateScalar;
  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
  *&inInputBufferLists.mRateScalar = v231;
  v232 = *&a2->mSMPTETime.mHours;
  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&inInputBufferLists.mSMPTETime.mHours = v232;
  v516 = 512;
  AudioUnitProcessMultiple(*(v3 + 3040), &v516, &inInputBufferLists, *(v3 + 516), 1u, &v526, 1u, &v527);
  LODWORD(v531.realp) = 8 * *(v3 + 516);
  AudioUnitGetProperty(*(v3 + 3040), 0xE7Au, 0, 0, *(*(v3 + 4328) + 16), &v531);
  LODWORD(v531.realp) = 8 * *(v3 + 516);
  Property = AudioUnitGetProperty(*(v3 + 3040), 0xE79u, 0, 0, *(*(v3 + 4328) + 32), &v531);
  v233 = *(v3 + 516);
  v234 = *(v3 + 3448);
  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    p_inInputBufferLists = &inInputBufferLists;
    v236 = v3;
    v237 = 10;
LABEL_448:
    Property = VoiceProcessorV2::SaveFilesWriteSignal(v236, v237, v233, v234, p_inInputBufferLists);
  }

LABEL_476:
  MEMORY[0x28223BE20](Property);
  v250 = (&v498 - 8);
  *(&v498 - 3) = 0u;
  *(&v498 - 2) = 0u;
  *(&v498 - 4) = 0u;
  *(&v498 - 16) = 3;
  *&v253 = MEMORY[0x28223BE20](v251);
  v506 = (&v498 - 8);
  v497 = 0;
  *(&v498 - 3) = v253;
  *(&v498 - 2) = v253;
  *(&v498 - 4) = v253;
  *(&v498 - 16) = v254;
  v255 = *(v3 + 4688);
  if ((v255 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 3064) || (v255 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 3072) || (v255 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 3088))
  {
    *(&v498 - 7) = *(*(v3 + 3440) + 8);
    *(&v498 - 5) = *(*(v3 + 4072) + 8);
    *(&v498 - 3) = *(*(v3 + 4080) + 8);
    v256 = *(v3 + 4064);
    v257 = v506;
    v506->mBuffers[0] = *(v256 + 8);
    *&v257[1].mNumberBuffers = *(v256 + 24);
    *&v257[1].mBuffers[0].mData = *(v256 + 56);
  }

  if ((v255 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 3064))
  {
    p_mNumberBuffers = (&v498 - 8);
    v500 = v218;
    LODWORD(v501) = v217;
    LODWORD(v502) = v214;
    LODWORD(v504) = v215;
    v258 = 0;
    v531.realp = *(v3 + 4216);
    LODWORD(v531.imagp) = *(v3 + 4228);
    v530.realp = *(v3 + 4232);
    LODWORD(v530.imagp) = *(v3 + 4244);
    v524 = *(v3 + 4248);
    v525 = *(v3 + 4260);
    v522 = *(v3 + 4264);
    v523 = *(v3 + 4276);
    v520 = *(v3 + 4280);
    v521 = *(v3 + 4292);
    do
    {
      AudioUnitSetParameter(*(v3 + 3064), 9u, 4u, v258, *(&v531.realp + v258), 0);
      AudioUnitSetParameter(*(v3 + 3064), 0xAu, 4u, v258, *(&v530.realp + v258), 0);
      AudioUnitSetParameter(*(v3 + 3064), 0xBu, 4u, v258, *(&v524 + v258), 0);
      AudioUnitSetParameter(*(v3 + 3064), 0xCu, 4u, v258, *(&v522 + v258), 0);
      AudioUnitSetParameter(*(v3 + 3064), 0xDu, 4u, v258, *(&v520 + v258), 0);
      ++v258;
    }

    while (v258 != 3);
    v250 = p_mNumberBuffers;
    *&v526.mSampleTime = p_mNumberBuffers;
    v526.mHostTime = v506;
    *&v527.mNumberBuffers = p_mNumberBuffers;
    *&v527.mBuffers[0].mNumberChannels = v506;
    v516 = 512;
    v259 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v259;
    v260 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v260;
    AudioUnitProcessMultiple(*(v3 + 3064), &v516, &inInputBufferLists, *(v3 + 516), 2u, &v526, 2u, &v527);
    v261 = *(v3 + 516);
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v261, v250, &inInputBufferLists);
      v261 = *(v3 + 516);
      v215 = v504;
      v214 = v502;
      v218 = v500;
      v217 = v501;
      if (*(v3 + 15881))
      {
        goto LABEL_497;
      }
    }

    else
    {
      v215 = v504;
      v214 = v502;
      v218 = v500;
      v217 = v501;
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_498:
      v255 = *(v3 + 4688);
      goto LABEL_499;
    }

LABEL_497:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v261, v506, &inInputBufferLists);
    goto LABEL_498;
  }

LABEL_499:
  if ((v255 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 3072))
  {
    p_mNumberBuffers = &v250->mNumberBuffers;
    v500 = v218;
    LODWORD(v501) = v217;
    LODWORD(v502) = v214;
    LODWORD(v504) = v215;
    v262 = 0;
    v531.realp = *(v3 + 4216);
    LODWORD(v531.imagp) = *(v3 + 4228);
    v530.realp = *(v3 + 4232);
    LODWORD(v530.imagp) = *(v3 + 4244);
    v524 = *(v3 + 4248);
    v525 = *(v3 + 4260);
    v522 = *(v3 + 4264);
    v523 = *(v3 + 4276);
    v520 = *(v3 + 4280);
    v521 = *(v3 + 4292);
    do
    {
      AudioUnitSetParameter(*(v3 + 3072), 0x12u, 4u, v262, *(&v531.realp + v262), 0);
      AudioUnitSetParameter(*(v3 + 3072), 0x13u, 4u, v262, *(&v530.realp + v262), 0);
      AudioUnitSetParameter(*(v3 + 3072), 0x14u, 4u, v262, *(&v524 + v262), 0);
      AudioUnitSetParameter(*(v3 + 3072), 0x15u, 4u, v262, *(&v522 + v262), 0);
      AudioUnitSetParameter(*(v3 + 3072), 0x16u, 4u, v262, *(&v520 + v262), 0);
      ++v262;
    }

    while (v262 != 3);
    v250 = p_mNumberBuffers;
    *&v526.mSampleTime = p_mNumberBuffers;
    v526.mHostTime = v506;
    *&v527.mNumberBuffers = p_mNumberBuffers;
    *&v527.mBuffers[0].mNumberChannels = v506;
    v516 = 512;
    v263 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v263;
    v264 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v264;
    AudioUnitProcessMultiple(*(v3 + 3072), &v516, &inInputBufferLists, *(v3 + 516), 2u, &v526, 2u, &v527);
    v265 = *(v3 + 516);
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v265, v250, &inInputBufferLists);
      v265 = *(v3 + 516);
      v215 = v504;
      v214 = v502;
      v218 = v500;
      v217 = v501;
      if (*(v3 + 15881))
      {
        goto LABEL_510;
      }
    }

    else
    {
      v215 = v504;
      v214 = v502;
      v218 = v500;
      v217 = v501;
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_511:
      v255 = *(v3 + 4688);
      goto LABEL_512;
    }

LABEL_510:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v265, v506, &inInputBufferLists);
    goto LABEL_511;
  }

LABEL_512:
  if ((v255 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 3088))
  {
    p_mNumberBuffers = &v250->mNumberBuffers;
    v500 = v218;
    LODWORD(v501) = v217;
    LODWORD(v502) = v214;
    LODWORD(v504) = v215;
    v266 = 0;
    v530.realp = *(v3 + 4216);
    LODWORD(v530.imagp) = *(v3 + 4228);
    v524 = *(v3 + 4232);
    v525 = *(v3 + 4244);
    v522 = *(v3 + 4248);
    v523 = *(v3 + 4260);
    v520 = *(v3 + 4264);
    v521 = *(v3 + 4276);
    v518 = *(v3 + 4280);
    v519 = *(v3 + 4292);
    do
    {
      AudioUnitSetParameter(*(v3 + 3088), 0x64u, 4u, v266, *(&v530.realp + v266), 0);
      AudioUnitSetParameter(*(v3 + 3088), 0x65u, 4u, v266, *(&v524 + v266), 0);
      AudioUnitSetParameter(*(v3 + 3088), 0x66u, 4u, v266, *(&v522 + v266), 0);
      AudioUnitSetParameter(*(v3 + 3088), 0x67u, 4u, v266, *(&v520 + v266), 0);
      AudioUnitSetParameter(*(v3 + 3088), 0x68u, 4u, v266, *(&v518 + v266), 0);
      ++v266;
    }

    while (v266 != 3);
    *&v527.mNumberBuffers = 1;
    *&v527.mBuffers[0].mNumberChannels = 0;
    v527.mBuffers[0].mData = 0;
    v527.mBuffers[0] = *(*(v3 + 4064) + 8);
    v531.realp = p_mNumberBuffers;
    v531.imagp = &v506->mNumberBuffers;
    v526.mSampleTime = *(v3 + 3440);
    v526.mHostTime = &v527;
    v526.mRateScalar = 0.0;
    v526.mWordClockTime = 0;
    v516 = 512;
    v267 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v267;
    v268 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v268;
    AudioUnitProcessMultiple(*(v3 + 3088), &v516, &inInputBufferLists, *(v3 + 516), 2u, &v531, 4u, &v526);
    HIDWORD(v508) = 0;
    AudioUnitGetParameter(*(v3 + 3088), 0xAu, 0, 0, &v508 + 1);
    v269 = *(v3 + 516);
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v269, *(v3 + 3440), &inInputBufferLists);
      v269 = *(v3 + 516);
      v215 = v504;
      v214 = v502;
      v218 = v500;
      v217 = v501;
      if (*(v3 + 15881))
      {
        goto LABEL_523;
      }
    }

    else
    {
      v215 = v504;
      v214 = v502;
      v218 = v500;
      v217 = v501;
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_524:
      AudioUnitGetParameter(*(v3 + 3088), 0x64u, 4u, 0, (v3 + 4216));
      AudioUnitGetParameter(*(v3 + 3088), 0x65u, 4u, 0, (v3 + 4232));
      AudioUnitGetParameter(*(v3 + 3088), 0x66u, 4u, 0, (v3 + 4248));
      AudioUnitGetParameter(*(v3 + 3088), 0x67u, 4u, 0, (v3 + 4264));
      AudioUnitGetParameter(*(v3 + 3088), 0x68u, 4u, 0, (v3 + 4280));
      goto LABEL_525;
    }

LABEL_523:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v269, &v527, &inInputBufferLists);
    goto LABEL_524;
  }

LABEL_525:
  if (v214 == 2)
  {
    VoiceProcessorV4::SignalParamSwitchMixNF(v3, v217, v215, &v509);
  }

  else if (v214 == 1)
  {
    VoiceProcessorV2::SignalParamSwitchMix(v3, v217, v215, &v509, v252);
  }

  if (v218 == 1)
  {
    VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, HIBYTE(v515), v513, v217, v509);
  }

  else
  {
    VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, HIBYTE(v515), v511, v217, v509);
  }

  LODWORD(v524) = 0;
  if ((*(v3 + 4688) & 0x2000000000000) != 0 && (*(v3 + 4704) & 0x2000000000000) != 0)
  {
    v270 = *(v3 + 3184);
    if (v270)
    {
      MEMORY[0x28223BE20](v270);
      *(&v498 - 3) = 0u;
      *(&v498 - 2) = 0u;
      *(&v498 - 4) = 0u;
      *(&v498 - 16) = 3;
      *&v273 = MEMORY[0x28223BE20](v271);
      v497 = 0;
      *(&v498 - 3) = v273;
      *(&v498 - 2) = v273;
      *(&v498 - 4) = v273;
      *(&v498 - 16) = v274;
      *(v275 - 56) = *(*(v3 + 3440) + 8);
      *(v275 - 40) = *(*(v3 + 3464) + 8);
      *(v275 - 24) = *(*(v3 + 17432) + 8);
      v276 = *(v3 + 4064);
      *(&v498 - 7) = *(v276 + 8);
      *(&v498 - 5) = *(v276 + 24);
      *(&v498 - 3) = *(v276 + 40);
      v526.mSampleTime = v277;
      v526.mHostTime = (&v498 - 8);
      *&v527.mNumberBuffers = *(v3 + 17440);
      if ((v278 & v279 & 0x400000000000000) != 0)
      {
        v280 = *(v3 + 3256);
        if (v280)
        {
          LODWORD(inInputBufferLists.mSampleTime) = 0;
          AudioUnitGetParameter(v280, 0, 0, 0, &inInputBufferLists);
          AudioUnitSetParameter(*(v3 + 3184), 0, 0, 0, *&inInputBufferLists.mSampleTime, 0);
          AudioUnitGetParameter(*(v3 + 3184), 0xDu, 0, 0, &v524);
          v272 = *(v3 + 3184);
        }
      }

      v281 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v281;
      v282 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v282;
      AudioUnitProcessMultiple(v272, &v516, &inInputBufferLists, *(v3 + 516), 2u, &v526, 2u, &v527);
      v283 = *(v3 + 516);
      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x81u, v283, *(v3 + 17440), &inInputBufferLists);
        v283 = *(v3 + 516);
        v284 = *(v3 + 17448);
        if (*(v3 + 15881))
        {
          goto LABEL_544;
        }
      }

      else
      {
        v284 = *(v3 + 17448);
      }

      if (*(v3 + 15882) == 1)
      {
LABEL_544:
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x82u, v283, v284, &inInputBufferLists);
      }
    }
  }

  v285 = memcpy(*(*(v3 + 3472) + 16), *(*(v3 + 4064) + 16), *(v3 + 4316));
  v286 = *(v3 + 4688);
  if ((v286 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v510 == 1.0)
  {
    v285 = memcpy(*(*(v3 + 17144) + 16), *(*(v3 + 4064) + 48), *(v3 + 4316));
    v286 = *(v3 + 4688);
  }

  if ((v286 & 0x400000000000) != 0)
  {
    v287 = *(v3 + 4704);
    if ((v287 & 0x400000000000) != 0)
    {
      if (*(v3 + 3160))
      {
        LODWORD(v531.realp) = 1092616192;
        if ((v286 & v287 & 0x80000000000000) != 0)
        {
          v285 = *(v3 + 3232);
          if (v285)
          {
            v285 = AudioUnitGetParameter(v285, 9u, 0, 0, &v531);
            v286 = *(v3 + 4688);
          }
        }

        if ((v286 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 3048))
        {
          LODWORD(inInputBufferLists.mSampleTime) = 0;
          LODWORD(v526.mSampleTime) = 0;
          v527.mNumberBuffers = 0;
          AudioUnitGetParameter(*(v3 + 3056), 0x18u, 0, 0, &inInputBufferLists);
          AudioUnitGetParameter(*(v3 + 3056), 0x19u, 0, 0, &v526);
          AudioUnitGetParameter(*(v3 + 3056), 5u, 0, 0, &v527.mNumberBuffers);
          AudioUnitSetParameter(*(v3 + 3160), 3u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
          AudioUnitSetParameter(*(v3 + 3160), 4u, 0, 0, *&v526.mSampleTime, 0);
          AudioUnitSetParameter(*(v3 + 3160), 5u, 0, 0, *&v527.mNumberBuffers, 0);
          v285 = AudioUnitSetParameter(*(v3 + 3160), 6u, 0, 0, *&v531.realp, 0);
        }

        MEMORY[0x28223BE20](v285);
        v497 = 0;
        *(&v498 - 3) = 0u;
        *(&v498 - 2) = 0u;
        *(&v498 - 12) = 2;
        v288 = *(v3 + 3440);
        *(&v498 - 4) = *(v288 + 16);
        *(&v498 - 5) = *(v288 + 8);
        v289 = *(v3 + 3464);
        v497 = *(v289 + 16);
        *(&v498 - 3) = *(v289 + 8);
        *&v291 = MEMORY[0x28223BE20](v290);
        *(&v498 - 3) = v291;
        *(&v498 - 2) = v291;
        *(&v498 - 12) = v292;
        MEMORY[0x28223BE20](v293);
        *(&v498 - 3) = 0;
        v497 = 0;
        *(&v498 - 4) = 0;
        *(&v498 - 8) = 1;
        v294 = *(v3 + 3472);
        *(v295 - 32) = *(v294 + 16);
        *(v295 - 40) = *(v294 + 8);
        v296 = *(v3 + 4064);
        *(v295 - 16) = *(v296 + 32);
        *(v295 - 24) = *(v296 + 24);
        v497 = *(v294 + 16);
        *(&v498 - 3) = *(v294 + 8);
        v526.mSampleTime = v297;
        v526.mHostTime = v298;
        *&v527.mNumberBuffers = v297;
        *&v527.mBuffers[0].mNumberChannels = &v498 - 4;
        v299 = *&a2->mRateScalar;
        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
        *&inInputBufferLists.mRateScalar = v299;
        v300 = *&a2->mSMPTETime.mHours;
        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inInputBufferLists.mSMPTETime.mHours = v300;
        v516 = 512;
        AudioUnitProcessMultiple(*(v3 + 3160), &v516, &inInputBufferLists, *(v3 + 516), 2u, &v526, 2u, &v527);
        v301 = *(v3 + 516);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v301, *(v3 + 3440), &inInputBufferLists);
          v301 = *(v3 + 516);
          v302 = *(v3 + 3464);
          if (*(v3 + 15881))
          {
            goto LABEL_566;
          }
        }

        else
        {
          v302 = *(v3 + 3464);
        }

        if (*(v3 + 15882) != 1)
        {
LABEL_567:
          v286 = *(v3 + 4688);
          goto LABEL_568;
        }

LABEL_566:
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v301, v302, &inInputBufferLists);
        goto LABEL_567;
      }
    }
  }

LABEL_568:
  if ((v286 & 0x800000000000) != 0 && (*(v3 + 4704) & 0x800000000000) != 0)
  {
    v303 = *(v3 + 3168);
    if (v303)
    {
      MEMORY[0x28223BE20](v303);
      *(&v498 - 3) = 0u;
      *(&v498 - 2) = 0u;
      *(&v498 - 12) = 2;
      *&v305 = MEMORY[0x28223BE20](v304);
      v497 = 0;
      *(&v498 - 3) = v305;
      *(&v498 - 2) = v305;
      *(&v498 - 12) = v306;
      *(v307 - 40) = *(*(v3 + 3440) + 8);
      *(v307 - 24) = *(*(v3 + 17440) + 8);
      *(&v498 - 5) = *(*(v3 + 4064) + 8);
      *(&v498 - 3) = *(*(v3 + 17448) + 8);
      *&v309 = MEMORY[0x28223BE20](v308);
      *(&v498 - 3) = v309;
      *(&v498 - 2) = v309;
      *(&v498 - 12) = v310;
      *&v313 = MEMORY[0x28223BE20](v311);
      v497 = 0;
      *(&v498 - 3) = v313;
      *(&v498 - 2) = v313;
      *(&v498 - 12) = v314;
      v315 = *(v3 + 17456);
      *(v316 - 40) = *(v315 + 8);
      *(v316 - 24) = *(v315 + 24);
      *(&v498 - 5) = *(v315 + 40);
      *(&v498 - 3) = *(v315 + 56);
      if ((v317 & v318 & 0x2000000000000) != 0)
      {
        v319 = *(v3 + 3184);
        if (v319)
        {
          LODWORD(inInputBufferLists.mSampleTime) = 0;
          AudioUnitGetParameter(v319, 1u, 0, 0, &inInputBufferLists);
          AudioUnitSetParameter(*(v3 + 3168), 0, 4u, 0, *&inInputBufferLists.mSampleTime, 0);
          AudioUnitSetParameter(*(v3 + 3192), 0, 0, 0, *&inInputBufferLists.mSampleTime, 0);
          v312 = *(v3 + 3168);
        }
      }

      *&v526.mSampleTime = &v498 - 6;
      v526.mHostTime = (&v498 - 6);
      *&v527.mNumberBuffers = &v498 - 6;
      *&v527.mBuffers[0].mNumberChannels = &v498 - 6;
      v320 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v320;
      v321 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v321;
      v516 = 512;
      AudioUnitProcessMultiple(v312, &v516, &inInputBufferLists, *(v3 + 516), 2u, &v526, 2u, &v527);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x85u, *(v3 + 516), *(v3 + 17456), &inInputBufferLists);
      }

      v286 = *(v3 + 4688);
    }
  }

  if ((v286 & 0x4000000000000) != 0)
  {
    v322 = *(v3 + 4704);
    if ((v322 & 0x4000000000000) != 0)
    {
      v323 = *(v3 + 3192);
      if (v323)
      {
        if ((v286 & v322 & 0x800000000000) != 0 && *(v3 + 3168))
        {
          MEMORY[0x28223BE20](v323);
          v497 = 0;
          *(&v498 - 3) = 0u;
          *(&v498 - 2) = 0u;
          *(&v498 - 12) = 2;
          v324 = *(v3 + 17456);
          *(&v498 - 5) = *(v324 + 8);
          *(&v498 - 3) = *(v324 + 24);
          *&v526.mSampleTime = &v498 - 6;
          *&v527.mNumberBuffers = *(v3 + 3464);
          v325 = *&a2->mRateScalar;
          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
          *&inInputBufferLists.mRateScalar = v325;
          v326 = *&a2->mSMPTETime.mHours;
          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&inInputBufferLists.mSMPTETime.mHours = v326;
          v516 = 512;
          AudioUnitProcessMultiple(v327, &v516, &inInputBufferLists, *(v3 + 516), 1u, &v526, 1u, &v527);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x87u, *(v3 + 516), *(v3 + 3464), &inInputBufferLists);
          }

          v286 = *(v3 + 4688);
        }
      }
    }
  }

  if ((v286 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 3224))
  {
    v328 = 1;
  }

  else
  {
    v328 = (v286 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 3232) != 0;
  }

  LODWORD(v522) = 0;
  LODWORD(v520) = 0;
  v329 = AudioUnitGetParameter(*(v3 + 3136), 0x1Du, 0, 0, &v522);
  v330 = *&v522 < 1.0 && v328;
  if (v328)
  {
    LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
    if (*&v522 < 1.0)
    {
      vDSP_vfill(&inInputBufferLists, *(*(v3 + 4040) + 16), 1, *(v3 + 516));
    }

    vDSP_vfill(&inInputBufferLists, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
    v331 = *(v3 + 4688);
  }

  else
  {
    v331 = *(v3 + 4688);
    if ((v331 & 0x80000000000) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 3136))
    {
LABEL_613:
      LODWORD(v506) = 0;
      if ((v331 & 0x8000000000000) == 0)
      {
        goto LABEL_624;
      }

      goto LABEL_614;
    }
  }

  if ((v331 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 3176))
  {
    goto LABEL_613;
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    v329 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 516), *(v3 + 3440), &buf);
    v331 = *(v3 + 4688);
  }

  LODWORD(v506) = 1;
  if ((v331 & 0x8000000000000) != 0)
  {
LABEL_614:
    if ((*(v3 + 4710) & 8) != 0)
    {
      v329 = *(v3 + 3200);
      if (v329)
      {
        v516 = 512;
        inInputBufferLists.mSampleTime = *(v3 + 3440);
        v526.mSampleTime = *(v3 + 3448);
        v329 = AudioUnitProcessMultiple(v329, &v516, &buf, *(v3 + 516), 1u, &inInputBufferLists, 1u, &v526);
        v332 = *(v3 + 17248);
        v335 = *(v332 + 12);
        v333 = v332 + 12;
        v334 = v335;
        v336 = *(v333 + 4);
        if (v329 || (v329 = AudioUnitGetProperty(*(v3 + 3200), 0x3ECu, 0, 0, *(v333 + 4), v333), v329))
        {
          if (v334 >= 4)
          {
            memset_pattern16(v336, &unk_2727568B0, v334 & 0xFFFFFFFC);
          }
        }

        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v329 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x74u, *(v3 + 516), *(v3 + 3440), &buf);
        }

        v331 = *(v3 + 4688);
      }
    }
  }

LABEL_624:
  v504 = *(v3 + 17712);
  if ((v331 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v329 = *(v3 + 3224);
    if (v329)
    {
      v337 = *(v3 + 4024);
      v526.mSampleTime = *(v3 + 3440);
      v526.mHostTime = v337;
      *&v526.mRateScalar = v3 + 16904;
      v338 = *(v3 + 4040);
      *&v527.mNumberBuffers = *(v3 + 3448);
      *&v527.mBuffers[0].mNumberChannels = v338;
      v527.mBuffers[0].mData = v504;
      v516 = 512;
      v339 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v339;
      v340 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v340;
      AudioUnitProcessMultiple(v329, &v516, &inInputBufferLists, *(v3 + 516), 3u, &v526, 3u, &v527);
      AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v517);
      v329 = AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, (v3 + 17508));
      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
      {
        goto LABEL_639;
      }

      v341 = *(v3 + 3224);
      v342 = 2;
      goto LABEL_638;
    }
  }

  if ((v331 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v329 = *(v3 + 3232)) == 0)
  {
    v348 = 0;
    goto LABEL_644;
  }

  MEMORY[0x28223BE20](v329);
  *(&v498 - 3) = 0;
  v497 = 0;
  *(&v498 - 4) = 0;
  *(&v498 - 8) = 1;
  *(&v498 - 3) = *(*(v3 + 17456) + 8);
  AudioUnitSetParameter(v343, 0x14u, 0, 0, *(v3 + 16756), 0);
  v344 = *(v3 + 3464);
  *&v526.mSampleTime = &v498 - 4;
  v526.mHostTime = v344;
  v526.mRateScalar = *(v3 + 4024);
  v526.mWordClockTime = v3 + 16904;
  v345 = *(v3 + 3504);
  *&v527.mNumberBuffers = *(v3 + 3448);
  *&v527.mBuffers[0].mNumberChannels = v345;
  v527.mBuffers[0].mData = *(v3 + 4040);
  v528 = v504;
  v346 = *&a2->mRateScalar;
  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
  *&inInputBufferLists.mRateScalar = v346;
  v347 = *&a2->mSMPTETime.mHours;
  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&inInputBufferLists.mSMPTETime.mHours = v347;
  v516 = 512;
  AudioUnitProcessMultiple(*(v3 + 3232), &v516, &inInputBufferLists, *(v3 + 516), 4u, &v526, 4u, &v527);
  v329 = AudioUnitGetParameter(*(v3 + 3232), 2u, 0, 0, &v517);
  if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
  {
    v341 = *(v3 + 3232);
    v342 = 9;
LABEL_638:
    AudioUnitGetParameter(v341, v342, 0, 0, &v520);
    v329 = AudioUnitSetParameter(*(v3 + 3312), 0x12u, 0, 0, *&v520, 0);
  }

LABEL_639:
  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    v329 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 3448), &inInputBufferLists);
  }

  v348 = 1;
LABEL_644:
  v349 = *(v3 + 4688);
  if ((v349 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
  {
    v329 = *(v3 + 3248);
    if (v329)
    {
      v526.mSampleTime = *(v3 + 3440);
      *&v527.mNumberBuffers = 0;
      v350 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v350;
      v351 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v351;
      v516 = 512;
      v352 = *(v3 + 4048);
      v353 = *(v352 + 16);
      v354 = *(v352 + 12);
      v329 = AudioUnitProcessMultiple(v329, &v516, &inInputBufferLists, *(v3 + 516), 1u, &v526, 1u, &v527);
      if (v329 || (v329 = AudioUnitGetProperty(*(v3 + 3248), 0x13EDu, 0, 0, *(*(v3 + 4048) + 16), (*(v3 + 4048) + 12)), v329))
      {
        if (v354 >= 4)
        {
          memset_pattern16(v353, &unk_2727568B0, v354 & 0xFFFFFFFC);
        }
      }

      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        v329 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 516), *(v3 + 4048), &inInputBufferLists);
      }

      v349 = *(v3 + 4688);
    }
  }

  if ((v349 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0)
  {
    if (*(v3 + 3256))
    {
      v355 = *(v3 + 17376);
      if (v355)
      {
        if (v355 == 1)
        {
          v356 = 1136;
          v357 = 1112;
        }

        else
        {
          v356 = 1128;
          v357 = 1120;
        }

        v358 = *(v3 + v356);
        v359 = *(v3 + 17264);
        v360 = *(*(v3 + v357) + 40);
        v361 = *(*(v3 + 17232) + 16) + 4 * *(v3 + 516);
        inInputBufferLists.mSampleTime = *(*(v3 + 17232) + 16);
        inInputBufferLists.mHostTime = v361;
        VPTimeFreqConverter_Analyze(v359, v360, &inInputBufferLists);
        v362 = *(v3 + 17272);
        v363 = *(v358 + 40);
        v364 = *(*(v3 + 17232) + 32) + 4 * *(v3 + 516);
        inInputBufferLists.mSampleTime = *(*(v3 + 17232) + 32);
        inInputBufferLists.mHostTime = v364;
        VPTimeFreqConverter_Analyze(v362, v363, &inInputBufferLists);
        v526.mSampleTime = *(v3 + 17232);
        *&v527.mNumberBuffers = v526.mSampleTime;
        v516 = 512;
        v365 = *&a2->mRateScalar;
        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
        *&inInputBufferLists.mRateScalar = v365;
        v366 = *&a2->mSMPTETime.mHours;
        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inInputBufferLists.mSMPTETime.mHours = v366;
        v367 = AudioUnitProcessMultiple(*(v3 + 3256), &v516, &inInputBufferLists, *(v3 + 516), 1u, &v526, 1u, &v527);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Fu, *(v3 + 516), *(v3 + 17232), &inInputBufferLists);
        }

        v368 = *(v3 + 17240);
        v371 = *(v368 + 12);
        v369 = v368 + 12;
        v370 = v371;
        v372 = *(v369 + 4);
        if ((v367 || AudioUnitGetProperty(*(v3 + 3256), 0x15FEu, 0, 0, *(v369 + 4), v369)) && v370 >= 4)
        {
          memset_pattern16(v372, &unk_2727568B0, v370 & 0xFFFFFFFC);
        }

        v329 = AudioUnitGetParameter(*(v3 + 3256), 0, 0, 0, (v3 + 17504));
        if (v329)
        {
          *(v3 + 17504) = 0;
        }

        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v329 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x70u, *(v3 + 516), *(v3 + 17240), &inInputBufferLists);
        }

        v349 = *(v3 + 4688);
      }
    }
  }

  if ((v349 & 0x80000000000) != 0 && (*(v3 + 4704) & 0x80000000000) != 0 && *(v3 + 3136))
  {
    MEMORY[0x28223BE20](v329);
    *(&v498 - 4) = 0;
    *(&v498 - 3) = 0;
    *(&v498 - 8) = 1;
    MEMORY[0x28223BE20](v373);
    *(&v498 - 4) = 0;
    *(&v498 - 3) = 0;
    v497 = 0;
    *(&v498 - 8) = v376;
    if ((v374 & v375 & 0x800000000000) != 0)
    {
      v377 = &v498 - 3;
      v378 = &v498 - 3;
      if (*(v3 + 3168))
      {
        v379 = *(v3 + 17456);
        *v377 = *(v379 + 8);
        v380 = (v379 + 40);
LABEL_683:
        *v378 = *v380;
        AudioUnitSetParameter(*(v3 + 3136), 6u, 0, 0, *(v3 + 4248), 0);
        AudioUnitSetParameter(*(v3 + 3136), 7u, 0, 0, *(v3 + 4264), 0);
        AudioUnitSetParameter(*(v3 + 3136), 0xDu, 0, 0, *(v3 + 4280), 0);
        *&v526.mSampleTime = &v498 - 4;
        v526.mHostTime = (&v498 - 4);
        v381 = *(v3 + 4040);
        v526.mRateScalar = *(v3 + 4120);
        v526.mWordClockTime = v381;
        *&v526.mSMPTETime.mSubframes = v504;
        *&v526.mSMPTETime.mType = 0;
        v382 = *(v3 + 4688);
        if ((v382 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 3176))
        {
          *&v526.mSMPTETime.mType = *(v3 + 4088);
        }

        if (!v330)
        {
          v526.mWordClockTime = 0;
        }

        v383 = *(v3 + 4104);
        *&v527.mNumberBuffers = 0;
        *&v527.mBuffers[0].mNumberChannels = v383;
        v527.mBuffers[0].mData = 0;
        if ((v382 & 0x4000000) != 0 && (v384 = *(v3 + 4704), (v384 & 0x4000000) != 0) && (v385 = *(v3 + 3000)) != 0 && (v382 & v384 & 0x400000) != 0 && *(v3 + 2968))
        {
          LODWORD(inInputBufferLists.mSampleTime) = 0;
          *&v526.mSMPTETime.mType = *(v3 + 4088);
          AudioUnitGetParameter(v385, 0x2Du, 0, 0, &inInputBufferLists);
          AudioUnitSetParameter(*(v3 + 3136), 0x2Au, 0, 0, *&inInputBufferLists.mSampleTime, 0);
          AudioUnitGetParameter(*(v3 + 2968), 0x2Du, 0, 0, &inInputBufferLists);
          AudioUnitSetParameter(*(v3 + 3136), 0x29u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
        }

        else if ((v382 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v510 == 1.0)
        {
          *&v526.mSMPTETime.mType = *(v3 + 17144);
        }

        if (v330)
        {
          v386 = 3464;
        }

        else
        {
          v386 = 3448;
        }

        v387 = 4040;
        *&v527.mNumberBuffers = *(v3 + v386);
        if (v330)
        {
          v387 = 4024;
        }

        v527.mBuffers[0].mData = *(v3 + v387);
        v388 = *&a2->mRateScalar;
        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
        *&inInputBufferLists.mRateScalar = v388;
        v389 = *&a2->mSMPTETime.mHours;
        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inInputBufferLists.mSMPTETime.mHours = v389;
        v516 = 512;
        AudioUnitProcessMultiple(*(v3 + 3136), &v516, &inInputBufferLists, *(v3 + 516), 6u, &v526, 3u, &v527);
        if ((v348 & v330 & 1) == 0)
        {
          AudioUnitGetParameter(*(v3 + 3136), 0x20u, 0, 0, &v517);
          AudioUnitGetParameter(*(v3 + 3136), 0x20u, 0, 0, (v3 + 17508));
        }

        v390 = *(v3 + 516);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v390, *(v3 + v386), &inInputBufferLists);
          v390 = *(v3 + 516);
          v391 = *(v3 + 4024);
          if (*(v3 + 15881))
          {
            goto LABEL_713;
          }
        }

        else
        {
          v391 = *(v3 + 4024);
        }

        if (*(v3 + 15882) != 1)
        {
LABEL_714:
          v349 = *(v3 + 4688);
          goto LABEL_715;
        }

LABEL_713:
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v390, v391, &inInputBufferLists);
        goto LABEL_714;
      }
    }

    else
    {
      v377 = &v498 - 3;
      v378 = &v498 - 3;
    }

    *v377 = *(*(v3 + 3440) + 8);
    v380 = (*(v3 + 3472) + 8);
    goto LABEL_683;
  }

LABEL_715:
  if ((v349 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 3176))
  {
    LODWORD(v518) = 0;
    AudioUnitGetParameter(*(v3 + 2968), 0x25u, 0, 0, &v518);
    AudioUnitSetParameter(*(v3 + 3176), 0, 4u, 2u, *&v518, 0);
    AudioUnitSetParameter(*(v3 + 3176), 0, 4u, 3u, *&v518, 0);
    if ((*(v3 + 4689) & 0x10) != 0 && (*(v3 + 4705) & 0x10) != 0)
    {
      v392 = 17480;
      if (!*(v3 + 2888))
      {
        v392 = 3440;
      }
    }

    else
    {
      v392 = 3440;
    }

    v393 = memcpy(*(*(v3 + 17592) + 16), *(*(v3 + v392) + 16), *(*(v3 + v392) + 12));
    MEMORY[0x28223BE20](v393);
    v497 = 0;
    *(&v498 - 3) = 0u;
    *(&v498 - 2) = 0u;
    *(&v498 - 5) = 0u;
    *(&v498 - 4) = 0u;
    *(&v498 - 20) = 4;
    *(&v498 - 9) = *(*(v3 + 3440) + 8);
    *(&v498 - 7) = *(*(v3 + 17432) + 8);
    *(&v498 - 5) = *(*(v3 + 4080) + 8);
    *(&v498 - 3) = *(*(v3 + 4072) + 8);
    *&v395 = MEMORY[0x28223BE20](v394);
    v497 = 0;
    *(&v498 - 3) = v395;
    *(&v498 - 2) = v395;
    *(&v498 - 5) = v395;
    *(&v498 - 4) = v395;
    *(&v498 - 20) = 4;
    *(&v498 - 9) = *(*(v3 + 17560) + 8);
    *(&v498 - 7) = *(*(v3 + 17576) + 8);
    *(&v498 - 5) = *(*(v3 + 17584) + 8);
    *(&v498 - 3) = *(*(v3 + 17568) + 8);
    *&v526.mSampleTime = &v498 - 10;
    v526.mHostTime = (&v498 - 10);
    *&v527.mNumberBuffers = &v498 - 10;
    *&v527.mBuffers[0].mNumberChannels = &v498 - 10;
    v396 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v396;
    v397 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v397;
    v516 = 512;
    AudioUnitProcessMultiple(*(v3 + 3176), &v516, &inInputBufferLists, *(v3 + 516), 2u, &v526, 2u, &v527);
    v398 = *(v3 + 516);
    v531.realp = *(*(v3 + 17592) + 16);
    v531.imagp = &v531.realp[v398];
    v530.realp = *(*(v3 + 3440) + 16);
    v530.imagp = &v530.realp[v398];
    v399 = *(*(v3 + 17488) + 16);
    v400 = &v399[v398];
    vDSP_zvabs(&v531, 1, v399, 1, v398);
    vDSP_zvabs(&v530, 1, v400, 1, *(v3 + 516));
    vDSP_vmin(v399, 1, v400, 1, v399, 1, *(v3 + 516));
    HIDWORD(v508) = 507307272;
    MEMORY[0x2743CCE00](v400, 1, &v508 + 4, v400, 1, *(v3 + 516));
    vDSP_vdiv(v400, 1, v399, 1, v400, 1, *(v3 + 516));
    MEMORY[0x2743CCDD0](v530.realp, 1, v400, 1, v530.realp, 1, *(v3 + 516));
    MEMORY[0x2743CCDD0](v530.imagp, 1, v400, 1, v530.imagp, 1, *(v3 + 516));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x86u, *(v3 + 516), (&v498 - 10), &inInputBufferLists);
    }

    v349 = *(v3 + 4688);
  }

  if ((v349 & 0x4000000000000) != 0)
  {
    v401 = *(v3 + 4704);
    if ((v401 & 0x4000000000000) != 0)
    {
      v402 = *(v3 + 3192);
      if (v402)
      {
        if ((v349 & v401 & 0x1000000000000) != 0 && *(v3 + 3176))
        {
          MEMORY[0x28223BE20](v402);
          v497 = 0;
          *(&v498 - 3) = 0u;
          *(&v498 - 2) = 0u;
          *(&v498 - 12) = 2;
          *(&v498 - 5) = *(*(v3 + 3440) + 8);
          *(&v498 - 3) = *(*(v3 + 17432) + 8);
          *&v526.mSampleTime = &v498 - 6;
          *&v527.mNumberBuffers = *(v3 + 3464);
          v403 = *&a2->mRateScalar;
          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
          *&inInputBufferLists.mRateScalar = v403;
          v404 = *&a2->mSMPTETime.mHours;
          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&inInputBufferLists.mSMPTETime.mHours = v404;
          v516 = 512;
          AudioUnitProcessMultiple(v405, &v516, &inInputBufferLists, *(v3 + 516), 1u, &v526, 1u, &v527);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x87u, *(v3 + 516), *(v3 + 3464), &inInputBufferLists);
          }

          v349 = *(v3 + 4688);
        }
      }
    }
  }

  if ((v349 & 0x1000000000000) != 0 && (v406 = *(v3 + 4704), (v406 & 0x1000000000000) != 0) && *(v3 + 3176) && (LODWORD(inInputBufferLists.mSampleTime) = 0, LODWORD(v526.mSampleTime) = 0, (v349 & v406 & 0x400000) != 0) && (v407 = *(v3 + 2968)) != 0)
  {
    AudioUnitGetParameter(v407, 0x43u, 0, 0, &inInputBufferLists);
    AudioUnitGetParameter(*(v3 + 2968), 0x47u, 0, 0, &v526);
    v349 = *(v3 + 4688);
    v409 = *&v526.mSampleTime != 0.0 && *&inInputBufferLists.mSampleTime != 0.0;
  }

  else
  {
    v409 = 0;
  }

  if ((v349 & 0x100000000000) != 0)
  {
    v410 = *(v3 + 4704);
    if ((v410 & 0x100000000000) != 0)
    {
      v411 = *(v3 + 3144);
      if (v411)
      {
        if ((v349 & v410 & 0x1000000000000) != 0 && *(v3 + 3176))
        {
          MEMORY[0x28223BE20](v411);
          *(&v498 - 4) = 0;
          *(&v498 - 3) = 0;
          *(&v498 - 8) = 1;
          MEMORY[0x28223BE20](v412);
          *(&v498 - 3) = 0;
          v497 = 0;
          *(&v498 - 4) = 0;
          *(&v498 - 8) = v413;
          *(v414 - 24) = *(*(v3 + 3440) + 8);
          *(&v498 - 3) = *(*(v3 + 3464) + 8);
          AudioUnitSetParameter(v415, 6u, 0, 0, *(v3 + 4248), 0);
          AudioUnitSetParameter(*(v3 + 3144), 7u, 0, 0, *(v3 + 4264), 0);
          AudioUnitSetParameter(*(v3 + 3144), 0xDu, 0, 0, *(v3 + 4280), 0);
          *&v526.mSampleTime = &v498 - 4;
          v526.mHostTime = (&v498 - 4);
          v416 = *(v3 + 4040);
          *&v526.mRateScalar = &v498 - 4;
          v526.mWordClockTime = v416;
          *&v526.mSMPTETime.mSubframes = v504;
          *&v526.mSMPTETime.mType = 0;
          *&v527.mNumberBuffers = *(v3 + 3464);
          *&v527.mBuffers[0].mNumberChannels = 0;
          v527.mBuffers[0].mData = *(v3 + 4032);
          v417 = *&a2->mRateScalar;
          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
          *&inInputBufferLists.mRateScalar = v417;
          v418 = *&a2->mSMPTETime.mHours;
          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&inInputBufferLists.mSMPTETime.mHours = v418;
          v516 = 512;
          AudioUnitProcessMultiple(*(v3 + 3144), &v516, &inInputBufferLists, *(v3 + 516), 6u, &v526, 3u, &v527);
          v419 = *(v3 + 516);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v419, *(v3 + 3464), &inInputBufferLists);
            v419 = *(v3 + 516);
            v420 = *(v3 + 4032);
            if (*(v3 + 15881))
            {
              goto LABEL_759;
            }
          }

          else
          {
            v420 = *(v3 + 4032);
          }

          if (*(v3 + 15882) != 1)
          {
LABEL_760:
            if (v409)
            {
              vDSP_vmin(*(*(v3 + 4024) + 16), 1, *(*(v3 + 4032) + 16), 1, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
            }

            v349 = *(v3 + 4688);
            goto LABEL_763;
          }

LABEL_759:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v419, v420, &inInputBufferLists);
          goto LABEL_760;
        }
      }
    }
  }

LABEL_763:
  if ((v349 & 0x200000000000) == 0)
  {
    goto LABEL_778;
  }

  v421 = *(v3 + 4704);
  if ((v421 & 0x200000000000) == 0)
  {
    goto LABEL_778;
  }

  v422 = *(v3 + 3152);
  if (!v422 || (v349 & v421 & 0x1000000000000) != 0 && *(v3 + 3176))
  {
    goto LABEL_778;
  }

  MEMORY[0x28223BE20](v422);
  *(&v498 - 4) = 0;
  *(&v498 - 3) = 0;
  *(&v498 - 8) = 1;
  MEMORY[0x28223BE20](v423);
  *(&v498 - 3) = 0;
  v497 = 0;
  *(&v498 - 4) = 0;
  *(&v498 - 8) = v424;
  *(v425 - 24) = *(*(v3 + 17432) + 8);
  *(&v498 - 3) = *(*(v3 + 4064) + 40);
  AudioUnitSetParameter(v426, 6u, 0, 0, *(v3 + 4248), 0);
  AudioUnitSetParameter(*(v3 + 3152), 7u, 0, 0, *(v3 + 4264), 0);
  AudioUnitSetParameter(*(v3 + 3152), 0xDu, 0, 0, *(v3 + 4280), 0);
  *&v526.mSampleTime = &v498 - 4;
  v526.mHostTime = (&v498 - 4);
  v427 = *(v3 + 4040);
  v526.mRateScalar = *(v3 + 4120);
  v526.mWordClockTime = v427;
  *&v526.mSMPTETime.mSubframes = v504;
  *&v526.mSMPTETime.mType = 0;
  *&v527.mNumberBuffers = *(v3 + 3464);
  *&v527.mBuffers[0].mNumberChannels = 0;
  v527.mBuffers[0].mData = *(v3 + 17528);
  v428 = *&a2->mRateScalar;
  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
  *&inInputBufferLists.mRateScalar = v428;
  v429 = *&a2->mSMPTETime.mHours;
  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&inInputBufferLists.mSMPTETime.mHours = v429;
  v516 = 512;
  AudioUnitProcessMultiple(*(v3 + 3152), &v516, &inInputBufferLists, *(v3 + 516), 6u, &v526, 3u, &v527);
  v430 = *(v3 + 516);
  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x26u, v430, *(v3 + 3464), &inInputBufferLists);
    v430 = *(v3 + 516);
    v431 = *(v3 + 17528);
    if (*(v3 + 15881))
    {
      goto LABEL_774;
    }
  }

  else
  {
    v431 = *(v3 + 17528);
  }

  if (*(v3 + 15882) == 1)
  {
LABEL_774:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x53u, v430, v431, &inInputBufferLists);
  }

  if (*&v524 != 0.0)
  {
    vDSP_vmin(*(*(v3 + 4024) + 16), 1, *(*(v3 + 17528) + 16), 1, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
  }

  v349 = *(v3 + 4688);
LABEL_778:
  if ((v349 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 3136))
  {
    if (!v330)
    {
LABEL_789:
      if ((*(v3 + 4709) & 8) != 0)
      {
        if (*(v3 + 3136) != 0 || v328)
        {
          goto LABEL_827;
        }

        goto LABEL_793;
      }

LABEL_790:
      if (v328)
      {
        goto LABEL_827;
      }

LABEL_793:
      LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
      v435 = *(v3 + 516);
      vDSP_vfill(&inInputBufferLists, *(*(v3 + 4040) + 16), 1, v435);
      memcpy(*(*(v3 + 3448) + 16), *(*(v3 + 3440) + 16), 8 * v435);
      goto LABEL_827;
    }
  }

  else if ((v349 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || *(v3 + 3144) == 0 || !v330)
  {
    if ((v349 & 0x80000000000) == 0)
    {
      goto LABEL_790;
    }

    goto LABEL_789;
  }

  v432 = *(*(v3 + 4040) + 16);
  memcpy(*(*(v3 + 3488) + 16), v432, 4 * *(v3 + 516));
  vDSP_vmin(*(*(v3 + 4024) + 16), 1, v432, 1, v432, 1, *(v3 + 516));
  v433 = *(v3 + 4688);
  if ((v433 & 0x200000000000000) != 0)
  {
    v434 = v503;
    if ((*(v3 + 4711) & 2) != 0 && *(v3 + 3248))
    {
      vDSP_vmin(*(*(v3 + 4048) + 16), 1, v432, 1, v432, 1, *(v3 + 516));
      v433 = *(v3 + 4688);
    }
  }

  else
  {
    v434 = v503;
  }

  if ((v433 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0 && *(v3 + 3256))
  {
    vDSP_vmin(*(*(v3 + 17240) + 16), 1, v432, 1, v432, 1, *(v3 + 516));
    v433 = *(v3 + 4688);
  }

  if ((v433 & 0x8000000000000) != 0 && (*(v3 + 4710) & 8) != 0 && *(v3 + 3200))
  {
    vDSP_vmin(*(*(v3 + 17248) + 16), 1, v432, 1, v432, 1, *(v3 + 516));
    v433 = *(v3 + 4688);
  }

  if ((v433 & 0x1000) != 0)
  {
    v436 = *(v3 + 4704);
    if ((v436 & 0x1000) != 0 && *(v3 + 2888) && ((v433 & v436 & 0x1000000000000) == 0 || !*(v3 + 3176)))
    {
      v437 = *(v3 + 17480);
      goto LABEL_822;
    }
  }

  if ((v433 & 0x800000000000) == 0 || (*(v3 + 4709) & 0x80) == 0 || !*(v3 + 3168))
  {
    if (v433 & 0x1000000000000) != 0 && (*(v3 + 4710))
    {
      v438 = *(v3 + 516);
      if (*(v3 + 3176) != 0 && !v409)
      {
        v437 = *(v3 + 17592);
        goto LABEL_818;
      }
    }

    else
    {
      v438 = *v434;
    }

    v437 = *(v3 + 3440);
LABEL_818:
    v439 = *(v437 + 16);
    goto LABEL_823;
  }

  v437 = *(v3 + 17456);
LABEL_822:
  v439 = *(v437 + 16);
  v438 = *(v3 + 516);
LABEL_823:
  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, v438, v437, &buf);
  }

  v440 = *(*(v3 + 3448) + 16);
  MEMORY[0x2743CCDD0](v439, 1, v432, 1, v440, 1, *(v3 + 516));
  MEMORY[0x2743CCDD0](v439 + 4 * *(v3 + 516) + 4, 1, v432 + 4, 1, v440 + 4 * *(v3 + 516) + 4, 1, (*(v3 + 516) - 1));
  *(v439 + 4 * *(v3 + 516)) = *(v439 + 4 * *(v3 + 516)) * *&v432[4 * (*(v3 + 516) - 1)];
LABEL_827:
  if (((v506 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 3136)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 516), *(v3 + 3448), &buf);
  }

  if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v441 = *(v3 + 3272);
    if (v441)
    {
      if (*(v3 + 12536) == 12)
      {
        v442 = *(v3 + 17352);
        *v442 = v517;
        v443 = *(v3 + 17280);
        v444 = *(v3 + 516);
        v445 = v443 % v444;
        v446 = vcvtms_u32_f32(v443 / v444);
        if (v445)
        {
          v447 = ((v445 / v444) * v442[v446 + 1]) + ((1.0 - (v445 / v444)) * v442[v446]);
        }

        else
        {
          v447 = v442[v446];
        }

        v517 = v447;
        memmove(v442 + 1, v442, *(v3 + 17360) - v442 - 4);
        v441 = *(v3 + 3272);
      }

      AudioUnitSetParameter(v441, 0, 0, 0, *(v3 + 12612), 0);
      AudioUnitSetParameter(*(v3 + 3272), 4u, 0, 0, *(v3 + 4216), 0);
      AudioUnitSetParameter(*(v3 + 3272), 0x13u, 0, 0, *(v3 + 4232), 0);
      AudioUnitSetParameter(*(v3 + 3272), 3u, 0, 0, v517, 0);
      LODWORD(v531.realp) = 0;
      AudioUnitGetParameter(*(v3 + 3272), 0x1Cu, 0, 0, &v531);
      if (*&v531.realp == 1.0)
      {
        v448 = v3 + 2792;
        LODWORD(inInputBufferLists.mSampleTime) = -1082130432;
        AudioUnitGetParameter(*(v3 + 3272), 0x1Du, 0, 0, &inInputBufferLists);
        v449 = *&inInputBufferLists.mSampleTime != 2.0 || *&inInputBufferLists.mSampleTime == 1.0;
        v450 = v449 ? 22 : 23;
        v451 = *(v448 + 8 * v450);
        if (v451)
        {
          LODWORD(v526.mSampleTime) = 0;
          if (!AudioUnitGetPropertyInfo(v451, 0xED8u, 0, 0, &v526, 0))
          {
            v452 = *(v3 + 17536);
            if (*(v3 + 17544) - v452 >= LODWORD(v526.mSampleTime))
            {
              AudioUnitGetProperty(*(v448 + 8 * v450), 0xED8u, 0, 0, v452, &v526);
            }
          }

          v527.mNumberBuffers = 0;
          AudioUnitGetParameter(*(v448 + 8 * v450), 1u, 0, 0, &v527.mNumberBuffers);
          AudioUnitSetProperty(*(v3 + 3272), 0x846u, 0, 0, *(v3 + 17536), vcvts_n_u32_f32(*&v527.mNumberBuffers, 2uLL));
        }
      }

      AudioUnitSetParameter(*(v3 + 3272), 0xEu, 0, 0, *(v3 + 2320), 0);
      LODWORD(v530.realp) = 0;
      AudioUnitGetParameter(*(v3 + 2968), 0x2Du, 0, 0, &v530);
      AudioUnitSetParameter(*(v3 + 3272), 0x23u, 0, 0, *&v530.realp, 0);
      LODWORD(v518) = 1120403456;
      v453 = *(v3 + 4688);
      if ((v453 & 0x20000000) != 0 && (*(v3 + 4707) & 0x20) != 0 && (v454 = *(v3 + 3024)) != 0 || (v453 & 0x20000000000000) != 0 && (*(v3 + 4710) & 0x20) != 0 && (v454 = *(v3 + 3216)) != 0 || (v453 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v454 = *(v3 + 3224)) != 0)
      {
        v455 = 2;
      }

      else
      {
        if ((v453 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v454 = *(v3 + 3232)) == 0)
        {
          v456 = 100.0;
          goto LABEL_870;
        }

        v455 = 9;
      }

      AudioUnitGetParameter(v454, v455, 0, 0, &v518);
      v456 = *&v518;
LABEL_870:
      AudioUnitSetParameter(*(v3 + 3272), 0x25u, 0, 0, v456, 0);
      if (*(v3 + 12536) == 12)
      {
        v457 = *(v3 + 4112);
        v526.mSampleTime = *(v3 + 3360);
        v526.mHostTime = v457;
        v458 = *(v3 + 3472);
        v526.mRateScalar = *(v3 + 17336);
        v526.mWordClockTime = v458;
        v459 = *(v3 + 17328);
        *&v526.mSMPTETime.mSubframes = 0;
        *&v526.mSMPTETime.mType = v459;
        *&v527.mNumberBuffers = 0;
        v516 = 512;
        v460 = *&a2->mRateScalar;
        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
        *&inInputBufferLists.mRateScalar = v460;
        v461 = *&a2->mSMPTETime.mHours;
        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inInputBufferLists.mSMPTETime.mHours = v461;
        AudioUnitProcessMultiple(*(v3 + 3272), &v516, &inInputBufferLists, *(v3 + 516), 6u, &v526, 1u, &v527);
        v508 = 4;
        AudioUnitGetProperty(*(v3 + 3272), 0x15u, 0, 0, &v508 + 4, &v508);
        if (!HIDWORD(v508))
        {
          v507 = 0.0;
          AudioUnitGetParameter(*(v3 + 3272), 0xBu, 0, 0, &v507);
          MEMORY[0x2743CCE20](*(*(v3 + 1096) + 16), 1, &v507, *(*(v3 + 1096) + 16), 1, *(v3 + 516));
        }
      }

      else
      {
        v462 = *(v3 + 4112);
        inInputBufferLists.mSampleTime = *(v3 + 3360);
        inInputBufferLists.mHostTime = v462;
        v463 = *(v3 + 4104);
        inInputBufferLists.mRateScalar = *(v3 + 3448);
        inInputBufferLists.mWordClockTime = v463;
        v464 = *(v3 + 4040);
        *&inInputBufferLists.mSMPTETime.mSubframes = *(v3 + 4024);
        *&inInputBufferLists.mSMPTETime.mType = v464;
        v465 = *(v3 + 3488);
        *&inInputBufferLists.mSMPTETime.mHours = v504;
        *&inInputBufferLists.mFlags = v465;
        *&v527.mNumberBuffers = *(v3 + 1096);
        v516 = 512;
        v466 = *&a2->mRateScalar;
        *&v526.mSampleTime = *&a2->mSampleTime;
        *&v526.mRateScalar = v466;
        v467 = *&a2->mSMPTETime.mHours;
        *&v526.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&v526.mSMPTETime.mHours = v467;
        AudioUnitProcessMultiple(*(v3 + 3272), &v516, &v526, *(v3 + 516), 8u, &inInputBufferLists, 1u, &v527);
      }

      LODWORD(inInputBufferLists.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 3272), 1u, 0, 0, &inInputBufferLists);
      *(v3 + 12616) = LODWORD(inInputBufferLists.mSampleTime);
      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
      {
        AudioUnitGetParameter(*(v3 + 3272), 2u, 0, 0, &v517);
        AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v517, 0);
      }
    }
  }

LABEL_878:
  v527.mNumberBuffers = 0;
  v468 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v469 = v468;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 16424) != 0) | v468 & 1))
    {
      goto LABEL_894;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v469 & 1) == 0)
    {
      goto LABEL_894;
    }
  }

  else
  {
    if ((v468 & 1) == 0)
    {
      goto LABEL_894;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v470 = *(v3 + 4688);
  if ((v470 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v471 = *(v3 + 3280);
    if (v471)
    {
      v472 = 1936748646;
LABEL_892:
      AudioUnitGetParameter(v471, v472, 0, 0, &v527.mNumberBuffers);
      goto LABEL_894;
    }
  }

  if ((v470 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v471 = *(v3 + 3272);
    if (v471)
    {
      v472 = 2;
      goto LABEL_892;
    }
  }

  *&v527.mNumberBuffers = v517;
LABEL_894:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 1096) + 16), 4 * *(v3 + 516));
    v527.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 16432) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v473 = *(v3 + 3632);
    if (((v473 != 0) & v469) == 1)
    {
      AudioUnitSetParameter(v473, 0x12u, 0, 0, *&v527.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 516), *(v3 + 1096), a2);
  }

  if ((*(v3 + 4695) & 8) != 0 && (*(v3 + 4711) & 8) != 0)
  {
    v474 = *(v3 + 3264);
    if (v474)
    {
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      v526.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v531.realp) = 512;
      v475 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v475;
      v476 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v476;
      AudioUnitProcessMultiple(v474, &v531, &buf, *(v3 + 516), 1u, &inInputBufferLists, 1u, &v526);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v477 = *(v3 + 3352);
    if (v477)
    {
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      v526.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v531.realp) = 512;
      v478 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v478;
      v479 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v479;
      AudioUnitProcessMultiple(v477, &v531, &buf, *(v3 + 516), 1u, &inInputBufferLists, 1u, &v526);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  if ((*(v3 + 4688) & 0x8000000000000000) != 0 && (*(v3 + 4704) & 0x8000000000000000) != 0)
  {
    v480 = *(v3 + 3296);
    if (v480)
    {
      v481 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v481;
      v482 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v482;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v480, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  v483 = *(v3 + 4696);
  if (v483 & 1) != 0 && (*(v3 + 4712))
  {
    v484 = *(v3 + 3304);
    if (v484)
    {
      v485 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v485;
      v486 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v486;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v484, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
      v483 = *(v3 + 4696);
    }
  }

  if ((v483 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v487 = *(v3 + 3312)) != 0)
  {
    v488 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v488;
    v489 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v489;
    LODWORD(inInputBufferLists.mSampleTime) = 512;
    AudioUnitProcess(v487, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 516), *(v3 + 1096), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 3272))
    {
      LODWORD(v526.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 3312), 1u, 0, 0, &v526);
      AudioUnitSetParameter(*(v3 + 3272), 0x11u, 0, 0, *&v526.mSampleTime, 0);
    }

    LODWORD(v526.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 3312), 0x1Bu, 0, 0, &v526);
    mSampleTime_low = LODWORD(v526.mSampleTime);
    if (*(v3 + 2308) != *&v526.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v491 = *(v3 + 3272);
        if (v491)
        {
          AudioUnitSetParameter(v491, 0x12u, 0, 0, *&v526.mSampleTime, 0);
          mSampleTime_low = LODWORD(v526.mSampleTime);
        }
      }

      *(v3 + 2308) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 4396) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 1096) + 16), 1, &buf, *(*(v3 + 1096) + 16), 1, *(v3 + 516));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 516), *(v3 + 1096), a2);
    }
  }

  VoiceProcessorV6::ProcessLevelDrivenSuppressor(v3, a2);
  if ((*(v3 + 4696) & 8) != 0 && (*(v3 + 4712) & 8) != 0)
  {
    v492 = *(v3 + 3328);
    if (v492)
    {
      v493 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v493;
      v494 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v494;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      v495 = atomic_load(gWirelessChargingMatIsAttached);
      AudioUnitSetParameter(v492, 5u, 0, 0, (v495 & 1), 0);
      AudioUnitProcess(*(v3 + 3328), &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
    }
  }

  return 0;
}

uint64_t VoiceProcessorV2::GetPropertyInfo(VoiceProcessorV2 *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  result = 1651532146;
  if (!a3 || !a4)
  {
    return result;
  }

  result = 4294956417;
  if (a2 > 1836082531)
  {
    if (a2 > 1986881902)
    {
      if (a2 > 1987209579)
      {
        if (a2 <= 1987211118)
        {
          if (a2 > 1987210612)
          {
            if (a2 != 1987210613)
            {
              v8 = 28524;
              goto LABEL_86;
            }

            goto LABEL_106;
          }

          if (a2 != 1987209580)
          {
            v8 = 26991;
            goto LABEL_86;
          }
        }

        else if (a2 <= 1987211378)
        {
          if (a2 != 1987211119)
          {
            v8 = 28773;
            goto LABEL_86;
          }
        }

        else if (a2 != 1987211379)
        {
          if (a2 != 1987212146)
          {
            v8 = 29812;
LABEL_86:
            v13 = v8 | 0x76720000;
LABEL_87:
            if (a2 == v13)
            {
              goto LABEL_88;
            }

            return 2003332927;
          }

LABEL_106:
          result = 0;
          v16 = 8;
          goto LABEL_107;
        }

LABEL_88:
        result = 0;
        v16 = 4;
LABEL_107:
        *a3 = v16;
        IsDeviceSupportingAdvancedChatFlavors = 1;
        goto LABEL_108;
      }

      if (a2 > 1987207779)
      {
        if (a2 > 1987208052)
        {
          if (a2 != 1987208053)
          {
            v8 = 25715;
            goto LABEL_86;
          }
        }

        else if (a2 != 1987207780)
        {
          v8 = 25204;
          goto LABEL_86;
        }

        goto LABEL_88;
      }

      if (a2 <= 1986884465)
      {
        if (a2 == 1986881903)
        {
          goto LABEL_88;
        }

        v12 = 1986882933;
        goto LABEL_32;
      }

      if (a2 == 1986884466)
      {
        goto LABEL_106;
      }

      v14 = 29812;
LABEL_81:
      v13 = v14 | 0x766D0000;
      goto LABEL_87;
    }

    if (a2 <= 1937141090)
    {
      if (a2 <= 1885957986)
      {
        if (a2 > 1836278116)
        {
          if (a2 != 1836278117 && a2 != 1868653667)
          {
            return 2003332927;
          }

          if (!_os_feature_enabled_impl())
          {
            return 4294956417;
          }

          goto LABEL_106;
        }

        if (a2 == 1836082532)
        {
          *a3 = 4;
          IsDeviceSupportingAdvancedChatFlavors = VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(0xFFFFD581);
          result = 0;
LABEL_108:
          *a4 = IsDeviceSupportingAdvancedChatFlavors;
          return result;
        }

        v11 = 1836266093;
        goto LABEL_68;
      }

      if (a2 > 1936746594)
      {
        if (a2 != 1936746595)
        {
          if (a2 == 1936747876)
          {
            *buf = 0;
            if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
            {
              dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_3842);
            }

            (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 8))(buf, 32);
            v20 = 0;
            if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
            {
              dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_3842);
            }

            (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 40))(*buf, &v20);
            if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
            {
              dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_3842);
            }

            (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 16))(*buf);
            result = 0;
            v16 = v20;
            goto LABEL_107;
          }

          return 2003332927;
        }

        goto LABEL_106;
      }

      if (a2 != 1885957987)
      {
        v13 = 1936744803;
        goto LABEL_87;
      }

      goto LABEL_56;
    }

    if (a2 > 1986097260)
    {
      if (a2 > 1986880626)
      {
        if (a2 == 1986880627)
        {
          goto LABEL_88;
        }

        v14 = 26988;
      }

      else
      {
        if (a2 == 1986097261)
        {
          goto LABEL_88;
        }

        v14 = 25187;
      }

      goto LABEL_81;
    }

    if (a2 <= 1953915763)
    {
      if (a2 == 1937141091)
      {
        goto LABEL_88;
      }

      v12 = 1953915762;
      goto LABEL_32;
    }

    if (a2 == 1953915764)
    {
      goto LABEL_88;
    }

    v11 = 1969844082;
LABEL_68:
    if (a2 == v11)
    {
      return result;
    }

    return 2003332927;
  }

  if (a2 > 1634300530)
  {
    if (a2 > 1701864050)
    {
      if (a2 > 1718384241)
      {
        if (a2 > 1768514914)
        {
          if (a2 != 1768514915)
          {
            v13 = 1835361379;
            goto LABEL_87;
          }

          goto LABEL_88;
        }

        if (a2 == 1718384242)
        {
          goto LABEL_88;
        }

        v12 = 1751214436;
LABEL_32:
        if (a2 != v12)
        {
          return 2003332927;
        }

        goto LABEL_106;
      }

      if (a2 == 1701864051 || a2 == 1701868402)
      {
        goto LABEL_88;
      }

      if (a2 != 1718384225)
      {
        return 2003332927;
      }

LABEL_56:
      result = 0;
      v15 = 4;
LABEL_103:
      *a3 = v15;
      *a4 = 0;
      return result;
    }

    if (a2 > 1635085676)
    {
      if (a2 == 1635085677)
      {
        goto LABEL_88;
      }

      if (a2 == 1684305512)
      {
        return result;
      }

      v11 = 1685483378;
      goto LABEL_68;
    }

    if (a2 == 1634300531)
    {
      result = 0;
      v16 = 8 * *(this + 544);
      goto LABEL_107;
    }

    if (a2 != 1634758259)
    {
      v13 = 1634758502;
      goto LABEL_87;
    }

    v19 = *(*this + 152);

    return v19(this, 1634758502);
  }

  else
  {
    switch(a2)
    {
      case 32768:
      case 32769:
      case 32772:
      case 32773:
      case 32786:
      case 32787:
      case 32788:
      case 32792:
      case 32794:
      case 32797:
        goto LABEL_88;
      case 32780:
        result = 0;
        v9 = *(this + 528);
        v10 = *(this + 526);
        goto LABEL_93;
      case 32781:
        result = 0;
        v9 = *(this + 536);
        v10 = *(this + 534);
LABEL_93:
        v16 = (v9 - v10) & 0xFFFFFFFC;
        goto LABEL_107;
      case 32783:
        if (*(this + 278))
        {
          goto LABEL_106;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          return 561406316;
        }

        *buf = 136315906;
        *&buf[4] = "vpProperties.cpp";
        v22 = 1024;
        v23 = 123;
        v24 = 2080;
        v25 = "mTelephonyMicDSPSettingsDict != nullptr";
        v26 = 2080;
        v27 = "InvalidPropertyValue";
        v17 = MEMORY[0x277D86220];
        break;
      case 32784:
        if (*(this + 279))
        {
          goto LABEL_106;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          return 561406316;
        }

        *buf = 136315906;
        *&buf[4] = "vpProperties.cpp";
        v22 = 1024;
        v23 = 129;
        v24 = 2080;
        v25 = "mTelephonyRefDSPSettingsDict != nullptr";
        v26 = 2080;
        v27 = "InvalidPropertyValue";
        v17 = MEMORY[0x277D86220];
        break;
      case 32796:
        result = 0;
        v15 = 4 * *(this + 552);
        goto LABEL_103;
      case 32798:
        if (*(this + 280))
        {
          goto LABEL_106;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          return 561406316;
        }

        *buf = 136315906;
        *&buf[4] = "vpProperties.cpp";
        v22 = 1024;
        v23 = 135;
        v24 = 2080;
        v25 = "mPowerBudget != nullptr";
        v26 = 2080;
        v27 = "InvalidPropertyValue";
        v17 = MEMORY[0x277D86220];
        break;
      case 32799:
      case 32800:
      case 32801:
        goto LABEL_106;
      default:
        return 2003332927;
    }

    _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
    return 561406316;
  }
}

void *___ZL21GetSpatialMetadataSPIv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "gSpatialMetadataSPI");
    GetSpatialMetadataSPI(void)::sSpatialMetadataSPI = result;
  }

  return result;
}

uint64_t VoiceProcessorV2::GetProperty(VoiceProcessorV2 *this, uint64_t a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  v6 = a2;
  if (a3)
  {
    CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v11, this + 2496, 0);
    result = VoiceProcessorV2::GetPropertyInternal(this, v6, a3, a4, a5);
    atomic_fetch_add((v11 + 4), 0xFFFFFFFF);
  }

  else
  {
    v12 = 0;
    return (*(*this + 152))(this, a2, a5, &v12);
  }

  return result;
}

uint64_t VoiceProcessorV2::GetPropertyInternal(VoiceProcessorV2 *this, int a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  while (1)
  {
    v40 = *MEMORY[0x277D85DE8];
    v9 = this + 0x4000;
    v34 = a3;
    v32 = 0;
    v33 = a4;
    if (a2 > 1684305511)
    {
      if (a2 <= 1868653666)
      {
        if (a2 > 1768514914)
        {
          if (a2 <= 1836082531)
          {
            if (a2 != 1768514915)
            {
              if (a2 != 1835361379)
              {
                return 2003332927;
              }

              if (a4 != 4)
              {
                v14 = 561211770;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  return v14;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 405;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(UInt32)";
                v38 = 2080;
                v39 = "BadPropertySize";
                v15 = MEMORY[0x277D86220];
                goto LABEL_51;
              }

              if ((*(*this + 112))(this) > 9 || (v17 = *(this + 20), v17 == 2) || v17 == 4)
              {
                v10 = *(this + 2260);
              }

              else
              {
                v10 = *(this + 2264);
              }

              goto LABEL_147;
            }

            if (a4 <= 3)
            {
              return 561211770;
            }

            v10 = *(this + 16568);
          }

          else
          {
            if (a2 != 1836082532)
            {
              if (a2 != 1836266093)
              {
                if (a2 != 1836278117)
                {
                  return 2003332927;
                }

                if (a4 != 8)
                {
                  v14 = 561211770;
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    return v14;
                  }

                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 662;
                  *&buf[18] = 2080;
                  *&buf[20] = "inDataSize == sizeof(AUVoiceIOMutedSpeechActivityEventListener)";
                  v38 = 2080;
                  v39 = "BadPropertySize";
                  v15 = MEMORY[0x277D86220];
                  goto LABEL_51;
                }

                Copy = *(this + 2053);
                if (Copy)
                {
                  Copy = _Block_copy(Copy);
                }

LABEL_87:
                *a3 = Copy;
                goto LABEL_113;
              }

              return -10879;
            }

            if (a4 != 4)
            {
              v14 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                return v14;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 424;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              v38 = 2080;
              v39 = "BadPropertySize";
              v15 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            if (!VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(this))
            {
              *a3 = 0;
              goto LABEL_148;
            }

            v10 = *(this + 2262);
          }

LABEL_147:
          *a3 = v10;
LABEL_148:
          v26 = 4;
LABEL_149:
          *a5 = v26;
          return v32;
        }

        if (a2 > 1718384224)
        {
          if (a2 == 1718384225)
          {
            if (a4 <= 3)
            {
              v14 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                return v14;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 657;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              v38 = 2080;
              v39 = "BadPropertySize";
              v15 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            v10 = *(this + 4135);
            goto LABEL_147;
          }

          if (a2 == 1718384242)
          {
            if (a4 <= 3)
            {
              v14 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                return v14;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 652;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              v38 = 2080;
              v39 = "BadPropertySize";
              v15 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            v10 = *(this + 4134);
            goto LABEL_147;
          }

          if (a2 != 1751214436)
          {
            return 2003332927;
          }

          if (a4 != 8)
          {
LABEL_49:
            v14 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              return v14;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 735;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(CFStringRef)";
            v38 = 2080;
            v39 = "BadPropertySize";
            v15 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          v11 = *(this + 274);
          if (v11)
          {
LABEL_111:
            CFRetain(v11);
          }

LABEL_112:
          *a3 = v11;
          goto LABEL_113;
        }

        if (a2 != 1684305512 && a2 != 1685483378)
        {
          return 2003332927;
        }
      }

      else
      {
        if (a2 <= 1937141090)
        {
          if (a2 > 1936744802)
          {
            if (a2 == 1936744803)
            {
              if (a4 != 4)
              {
                v14 = 561211770;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  return v14;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 418;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(UInt32)";
                v38 = 2080;
                v39 = "BadPropertySize";
                v15 = MEMORY[0x277D86220];
                goto LABEL_51;
              }

              v10 = *(this + 2261);
              goto LABEL_147;
            }

            if (a2 != 1936746595)
            {
              if (a2 == 1936747876)
              {
                *buf = &v33;
                *&buf[8] = &v32;
                *&buf[16] = &v34;
                v36[0] = caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV2::GetPropertyInternal(unsigned int,void *,unsigned int,unsigned int *)::$_0>;
                v36[1] = buf;
                v35 = v36;
                caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>((this + 16296), &v35);
                return v32;
              }

              return 2003332927;
            }

            if (a4 <= 7)
            {
              v14 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                return v14;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 646;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(SpatialHeadTrackingConfiguration)";
              v38 = 2080;
              v39 = "BadPropertySize";
              v15 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            *a3 = *(this + 2048);
            goto LABEL_113;
          }

          if (a2 == 1868653667)
          {
            if (!_os_feature_enabled_impl())
            {
              return 2003332927;
            }

            if (a4 != 8)
            {
              v14 = 561211770;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 670;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(AUVoiceIOOtherAudioDuckingConfiguration)";
                v38 = 2080;
                v39 = "BadPropertySize";
                v15 = MEMORY[0x277D86220];
                goto LABEL_51;
              }

              return v14;
            }

            v28 = *(v9 + 45);
            *a3 = v9[177];
            a3[1] = v28;
            goto LABEL_113;
          }

          if (a2 != 1885957987)
          {
            return 2003332927;
          }

          if (a4 <= 3)
          {
            v14 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              return v14;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 686;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(Float32)";
            v38 = 2080;
            v39 = "BadPropertySize";
            v15 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          v13 = *(this + 292);
LABEL_66:
          *a3 = v13;
          goto LABEL_148;
        }

        if (a2 <= 1969844081)
        {
          if (a2 == 1937141091)
          {
            if (a4 != 4)
            {
              v14 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                return v14;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 435;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(Float32)";
              v38 = 2080;
              v39 = "BadPropertySize";
              v15 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            v29 = atomic_load(this + 567);
            *v34 = v29;
            goto LABEL_148;
          }

          if (a2 != 1953915762)
          {
            if (a2 == 1953915764)
            {
              if (a4 <= 3)
              {
                v14 = 561211770;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  return v14;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 496;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize >= sizeof(UInt32)";
                v38 = 2080;
                v39 = "BadPropertySize";
                v15 = MEMORY[0x277D86220];
                goto LABEL_51;
              }

              v10 = *(this + 553);
              goto LABEL_147;
            }

            return 2003332927;
          }

          if (a4 <= 7)
          {
            v14 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              return v14;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 502;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(Float64)";
            v38 = 2080;
            v39 = "BadPropertySize";
            v15 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          *a3 = *(this + 554);
LABEL_113:
          v26 = 8;
          goto LABEL_149;
        }

        if (a2 != 1969844082)
        {
          if (a2 != 1986097261)
          {
            if (a2 != 1987208053)
            {
              return 2003332927;
            }

            if (a4 <= 3)
            {
              v14 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                return v14;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 681;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(Float32)";
              v38 = 2080;
              v39 = "BadPropertySize";
              v15 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            v13 = *(this + 291);
            goto LABEL_66;
          }

          if (a4 > 3)
          {
            v10 = *(this + 4143);
            goto LABEL_147;
          }

          return 561211770;
        }
      }

      return -10879;
    }

    if (a2 <= 1634300530)
    {
      switch(a2)
      {
        case 32768:
          if (a4 > 3)
          {
            v10 = *(this + 480);
            goto LABEL_147;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 379;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32769:
          if (a4 > 3)
          {
            *a5 = 4;
            v23 = (*(this + 4696) & 2) != 0 && *(this + 414) != 0;
            goto LABEL_143;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 397;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32772:
          if (a4 > 3)
          {
            v10 = *(this + 2088);
            goto LABEL_147;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 385;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32773:
          if (a4 == 4)
          {
            v10 = *(this + 2091);
            goto LABEL_147;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 441;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(UInt32)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32780:
          v24 = *(this + 263);
          v25 = *(this + 264) - v24;
          if (v25 <= a4)
          {
            memcpy(a3, v24, v25);
            v21 = *(this + 528);
            v22 = *(this + 526);
            goto LABEL_79;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 453;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= (mMicTrimGainsDB.size() * sizeof(Float32))";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32781:
          v19 = *(this + 267);
          v20 = *(this + 268) - v19;
          if (v20 <= a4)
          {
            memcpy(a3, v19, v20);
            v21 = *(this + 536);
            v22 = *(this + 534);
LABEL_79:
            v26 = (v21 - v22) & 0xFFFFFFFC;
            goto LABEL_149;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 468;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= (mRefTrimGainsDB.size() * sizeof(Float32))";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32783:
          if (a4 == 8)
          {
            v18 = *(this + 278);
            if (v18)
            {
              goto LABEL_86;
            }

            v14 = 561406316;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 510;
              *&buf[18] = 2080;
              *&buf[20] = "mTelephonyMicDSPSettingsDict != nullptr";
              v38 = 2080;
              v39 = "InvalidPropertyValue";
              v15 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            return v14;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 509;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32784:
          if (a4 != 8)
          {
            v14 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              return v14;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 517;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
            v38 = 2080;
            v39 = "BadPropertySize";
            v15 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          v18 = *(this + 279);
          if (v18)
          {
            goto LABEL_86;
          }

          v14 = 561406316;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 518;
            *&buf[18] = 2080;
            *&buf[20] = "mTelephonyRefDSPSettingsDict != nullptr";
            v38 = 2080;
            v39 = "InvalidPropertyValue";
            v15 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          return v14;
        case 32786:
          if (a4 > 3)
          {
            *a5 = 4;
            v23 = *(this + 688);
LABEL_143:
            *a3 = v23;
            return v32;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 539;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32787:
          if (a4 > 3)
          {
            v10 = *(this + 20);
            goto LABEL_147;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 545;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32788:
          if (a4 > 3)
          {
            v10 = *(this + 2093);
            goto LABEL_147;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 447;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32792:
          if (a4 > 3)
          {
            v10 = *(this + 288);
            goto LABEL_147;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 583;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32794:
          if (a4 > 3)
          {
            v10 = *(this + 2090);
            goto LABEL_147;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 391;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32796:
          v27 = 4 * *(this + 552);
          if (v27 <= a4)
          {
            memcpy(a3, *(this + 275), v27);
            v26 = 4 * *(this + 552);
            goto LABEL_149;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 551;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= (mNumSpeakerInputDataSource * sizeof(UInt32))";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32798:
          if (a4 <= 7)
          {
            v14 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              return v14;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 524;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(CFDictionaryRef)";
            v38 = 2080;
            v39 = "BadPropertySize";
            v15 = MEMORY[0x277D86220];
          }

          else
          {
            v18 = *(this + 280);
            if (v18)
            {
LABEL_86:
              Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v18);
              goto LABEL_87;
            }

            v14 = 561406316;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              return v14;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 525;
            *&buf[18] = 2080;
            *&buf[20] = "mPowerBudget != nullptr";
            v38 = 2080;
            v39 = "InvalidPropertyValue";
            v15 = MEMORY[0x277D86220];
          }

          goto LABEL_51;
        case 32799:
          if (a4 == 8)
          {
            v11 = *(this + 262);
            if (!v11)
            {
              goto LABEL_112;
            }

            goto LABEL_111;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 458;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32800:
          if (a4 == 8)
          {
            v11 = *(this + 266);
            if (!v11)
            {
              goto LABEL_112;
            }

            goto LABEL_111;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 473;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32801:
          if (a4 == 8)
          {
            v11 = *(this + 270);
            if (!v11)
            {
              goto LABEL_112;
            }

            goto LABEL_111;
          }

          v14 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return v14;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 483;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
          v38 = 2080;
          v39 = "BadPropertySize";
          v15 = MEMORY[0x277D86220];
          break;
        default:
          return 2003332927;
      }

      goto LABEL_51;
    }

    if (a2 > 1634758501)
    {
      break;
    }

    if (a2 == 1634300531)
    {
      v30 = 8 * *(this + 544);
      if (v30 <= a4)
      {
        memcpy(a3, *(this + 271), v30);
        v26 = 8 * *(this + 544);
        goto LABEL_149;
      }

      v14 = 561211770;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        return v14;
      }

      *buf = 136315906;
      *&buf[4] = "vpProperties.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 490;
      *&buf[18] = 2080;
      *&buf[20] = "inDataSize >= (mNumMetricsReporterIDs * sizeof(CAReporterID))";
      v38 = 2080;
      v39 = "BadPropertySize";
      v15 = MEMORY[0x277D86220];
LABEL_51:
      _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
      return v14;
    }

    if (a2 != 1634758259)
    {
      return 2003332927;
    }

    a2 = 1634758502;
  }

  if (a2 == 1634758502)
  {
    if (a4 <= 3)
    {
      return 561211770;
    }

    v10 = *(this + 4152);
    goto LABEL_147;
  }

  if (a2 != 1635085677)
  {
    return 2003332927;
  }

  if (a4 == 4)
  {
    *a3 = *(this + 2288);
    *a5 = 4;
    goto LABEL_49;
  }

  v14 = 561211770;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpProperties.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 730;
    *&buf[18] = 2080;
    *&buf[20] = "inDataSize == sizeof(UInt32)";
    v38 = 2080;
    v39 = "BadPropertySize";
    v15 = MEMORY[0x277D86220];
    goto LABEL_51;
  }

  return v14;
}
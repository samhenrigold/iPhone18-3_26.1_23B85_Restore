void sub_27257F488(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unsigned int ***caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV2::GetPropertyInternal(unsigned int,void *,unsigned int,unsigned int *)::$_0>(unsigned int ***result, const void *a2, size_t a3)
{
  v3 = *result;
  if (***result >= a3)
  {
    return memcpy(**(v3 + 16), a2, a3);
  }

  **(v3 + 8) = 561211770;
  return result;
}

uint64_t VoiceProcessorV2::SetProperty(VoiceProcessorV2 *this, int a2, float *theDict, void *a4)
{
  v585 = *MEMORY[0x277D85DE8];
  v5 = 1651532146;
  if (!theDict)
  {
    return v5;
  }

  v6 = a4;
  if (!a4)
  {
    return v5;
  }

  v7 = theDict;
  v10 = this + 15881;
  v573 = this + 15881;
  if (a2 != 1937141091)
  {
    if (a2 != 1936747876)
    {
      if (a2 == 32798)
      {
        v5 = 0;
        v11 = *(this + 19);
        if (v11 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v11) & 1) != 0)
        {
          if (a4 > 7)
          {
            v12 = (this + 2240);
            v13 = *(this + 280);
            if (v13)
            {
              CFRelease(v13);
              *v12 = 0;
            }

            Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v7);
            *v12 = Copy;
            if (Copy)
            {
              v572 = this + 11000;
              v15 = this;
              v16 = this + 3512;
              v17 = &dword_27275A050;
              v18 = 36;
              while (1)
              {
                v20 = *(v17 - 2);
                v19 = *(v17 - 1);
                v21 = *v17;
                AUPropAndParamHelper::AddItemToAUPropsList(&v572[24 * v20], v19, *v17, 0, 8uLL, v12, 1);
                if (v20 >= 0x40)
                {
                  std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
                }

                v22 = 1 << v20;
                v23 = 0x5FFFFFFFC7FFFFFFuLL >> v20;
                if ((*(v15 + 1108) & (1 << v20)) != 0 && (v23 & 1) != 0 && *&v16[8 * v20])
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v24 = VPLogScope(void)::scope;
                  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
                  {
                    v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                    {
                      Count = CFDictionaryGetCount(*v12);
                      *buf = 136315906;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 786;
                      *&buf[18] = 1024;
                      *&buf[20] = v20;
                      *&buf[24] = 1024;
                      *&buf[26] = Count;
                      _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: thermal budget on AU (%d); count = %u", buf, 0x1Eu);
                    }
                  }

                  v27 = *(v15 + 1588);
                  if (v27 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v28 = VPLogScope(void)::scope;
                    v29 = CFDictionaryGetCount(*v12);
                    CALegacyLog::log(v27, 3, v28, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 786, "SetProperty", "setproperty: thermal budget on AU (%d); count = %u", v20, v29);
                  }

                  AudioUnitSetProperty(*&v16[8 * v20], v19, v21, 0, v12, 8u);
                }

                else
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v30 = v573;
                  v31 = VPLogScope(void)::scope;
                  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
                  {
                    v32 = (*v31 ? *v31 : MEMORY[0x277D86220]);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                    {
                      v33 = v23 & 1;
                      v34 = *&v16[8 * v20];
                      if ((*(v15 + 1108) & v22) == 0)
                      {
                        v33 = 0;
                      }

                      *buf = 136316162;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 793;
                      *&buf[18] = 1024;
                      *&buf[20] = v20;
                      *&buf[24] = 1024;
                      *&buf[26] = v33;
                      *&buf[30] = 1024;
                      *&buf[32] = v34 != 0;
                      _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> setproperty: AU (%d) enabled = %d, null = %d", buf, 0x24u);
                    }
                  }

                  v35 = *(v15 + 1588);
                  if (!v35 || (*v573 & 1) == 0 && v573[1] != 1)
                  {
                    goto LABEL_54;
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  if ((*(v15 + 1108) & v22) != 0)
                  {
                    v36 = v23 & 1;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  CALegacyLog::log(v35, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 793, "SetProperty", "setproperty: AU (%d) enabled = %d, null = %d", v20, v36, *&v16[8 * v20] != 0);
                }

                v30 = v573;
LABEL_54:
                v17 += 3;
                v18 -= 12;
                if (!v18)
                {
                  if (*v30)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(v15, 32798);
                  }

                  return 0;
                }
              }
            }

            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v86 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
            {
              v87 = (*v86 ? *v86 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 798;
                _os_log_impl(&dword_2724B4000, v87, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> setproperty: thermal budget dict is empty", buf, 0x12u);
              }
            }

            v88 = *(this + 1588);
            if (v88 && ((*v573 & 1) != 0 || v573[1] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v88, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 798, "SetProperty", "setproperty: thermal budget dict is empty");
            }

            return 0;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 763;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(CFDictionaryRef)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v545 = MEMORY[0x277D86220];
            goto LABEL_1584;
          }

          return 561211770;
        }

        return v5;
      }

      v579 = this + 2408;
      v47 = (*(*(this + 301) + 16))();
      v580 = v47;
      atomic_fetch_add(this + 624, 1u);
      while (*(this + 625))
      {
        v47 = usleep(0x1F4u);
      }

      v49 = 0;
      v5 = 4294956417;
      if (a2 <= 1701868401)
      {
        if (a2 <= 1634300530)
        {
          v50 = (this + 2104);
          switch(a2)
          {
            case 32768:
              v5 = 561211770;
              if (v6 < 4 || *v7 > 1u)
              {
                goto LABEL_1253;
              }

              *(this + 480) = *v7;
              v51 = VPLogScope(void)::once;
              if (*(v573 + 655))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v52 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v52)
                {
                  v53 = v52;
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 846;
                    _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Forcing bypass to false due to chat flavor", buf, 0x12u);
                  }
                }

                v54 = *(this + 1588);
                if (v54 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v54, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 846, "SetProperty", "Forcing bypass to false due to chat flavor");
                }

                *(this + 480) = 0;
                v51 = VPLogScope(void)::once;
              }

              if (v51 != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v55 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v55)
              {
                v57 = v55;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = *(this + 480);
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 849;
                  *&buf[18] = 1024;
                  *&buf[20] = v58;
                  _os_log_impl(&dword_2724B4000, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: bypass =%d", buf, 0x18u);
                }
              }

              v59 = *(this + 1588);
              if (v59 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v59, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 849, "SetProperty", "setproperty: bypass =%d", *(this + 480));
              }

              VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_bypass", 0, this + 120, v56);
              v60 = *(this + 1573);
              if (*(this + 480) == 1)
              {
                if (!v60)
                {
                  goto LABEL_1367;
                }

                v60(*(this + 1572), 0, 0, 0, 0, *(this + 1139));
                v61 = 4556;
              }

              else
              {
                if (!v60)
                {
                  goto LABEL_1367;
                }

                v60(*(this + 1572), 0, 0, 0, 0, *(this + 1137));
                v61 = 4552;
              }

              (*(this + 1573))(*(this + 1572), 8, 0, 0, 0, *(this + v61));
LABEL_1367:
              if (VoiceProcessorV2::ShouldInteractWithControlCenter(this))
              {
                (*(*this + 600))(this, 1);
              }

              VoiceProcessorV2::ReportMetrics(this);
              goto LABEL_1630;
            case 32769:
              v5 = 561211770;
              if (v6 < 4)
              {
                goto LABEL_1253;
              }

              v206 = *v7;
              if (*v7 > 1u)
              {
                goto LABEL_1253;
              }

              v584[0] = v206 == 1;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v207 = CALog::LogObjIfEnabled(5, VPLogScope(void)::scope);
              if (v207)
              {
                v209 = v207;
                if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
                {
                  v210 = *(this + 1174);
                  v211 = *(this + 576);
                  v212 = *(this + 414);
                  *buf = 136316418;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 928;
                  *&buf[18] = 1024;
                  *&buf[20] = v206 == 1;
                  *&buf[24] = 1024;
                  *&buf[26] = (v210 >> 1) & 1;
                  *&buf[30] = 1024;
                  *&buf[32] = v211;
                  *&buf[36] = 2048;
                  *&buf[38] = v212;
                  _os_log_impl(&dword_2724B4000, v209, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> setproperty: enableagc=%d (currently: enableagcdefault=%d, clientsetenableagc=%d, agc=%p).", buf, 0x2Eu);
                }
              }

              v213 = *(this + 1588);
              if (v213 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v213, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 928, "SetProperty", "setproperty: enableagc=%d (currently: enableagcdefault=%d, clientsetenableagc=%d, agc=%p).", v206 == 1, (*(this + 1174) >> 1) & 1, *(this + 576), *(this + 414));
              }

              *(this + 576) = *v7;
              VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_enable_agc", 0, v584, v208);
              if (*v573 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32769);
              }

              v214 = *(this + 587);
              if (v584[0] == 1)
              {
                *(this + 587) = v214 | 2;
                VoiceProcessorV2::InstantiateAndConfigureEffectAU(this, 0x41u, 1);
              }

              else
              {
                *(this + 587) = v214 & 0xFFFFFFFFFFFFFFFDLL;
                VoiceProcessorV2::DisposeAU(this, 1635083896, 1634165554, this + 414, 1);
              }

              goto LABEL_1630;
            case 32772:
              v5 = 561211770;
              if (v6 < 4 || *v7 > 1u)
              {
                goto LABEL_1253;
              }

              *(this + 2088) = *v7;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v215 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v215)
              {
                v217 = v215;
                if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                {
                  v218 = *(this + 2088);
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 888;
                  *&buf[18] = 1024;
                  *&buf[20] = v218;
                  _os_log_impl(&dword_2724B4000, v217, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: mute uplink output =%d", buf, 0x18u);
                }
              }

              v219 = *(this + 1588);
              if (v219 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v219, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 888, "SetProperty", "setproperty: mute uplink output =%d", *(this + 2088));
              }

              VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_mute_output", 0, this + 522, v216);
              if (*v573 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32772);
              }

              AudioIssueDetectorClientSetUplinkMute(*(this + 2088));
              if (*(this + 2053))
              {
                applesauce::CF::TypeRef::TypeRef(v584, "Muted");
                if (*(this + 2088))
                {
                  v220 = MEMORY[0x277CBED28];
                }

                else
                {
                  v220 = MEMORY[0x277CBED10];
                }

                *&v584[8] = *v220;
                *buf = v584;
                *&buf[8] = 1;
                __p[0] = applesauce::CF::details::make_CFDictionaryRef(buf);
                applesauce::CF::TypeRefPair::~TypeRefPair(v584);
                PLLogRegisteredEvent();
                applesauce::CF::DictionaryRef::~DictionaryRef(__p);
              }

              goto LABEL_1630;
            case 32773:
              if (v6 != 4)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1706;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1143;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(UInt32)";
                *&buf[28] = 2080;
                *&buf[30] = "BadPropertySize";
                v562 = MEMORY[0x277D86220];
                goto LABEL_1705;
              }

              v260 = *v7;
              if (*v7 < 2u)
              {
                if (v260 != *(this + 2091))
                {
                  *(this + 2091) = v260;
                  VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_disable_vp", 0, (this + 2091), v48);
                  if ((v573[280] & 1) == 0)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v261 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v261)
                    {
                      v262 = v261;
                      if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1151;
                        _os_log_impl(&dword_2724B4000, v262, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_DisableVP)", buf, 0x12u);
                      }
                    }

                    v263 = *(this + 1588);
                    if (v263 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v263, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1151, "SetProperty", "Begin self-reinit (kVPProperty_DisableVP)");
                    }

                    if (*(this + 485) == 1)
                    {
                      VoiceProcessorV2::InitializeDLP(this);
                    }

                    if (*(this + 484) == 1)
                    {
                      (*(*this + 240))(this);
                    }

                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v264 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v264)
                    {
                      v265 = v264;
                      if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1156;
                        _os_log_impl(&dword_2724B4000, v265, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_DisableVP)", buf, 0x12u);
                      }
                    }

                    v266 = *(this + 1588);
                    if (v266 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v266, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1156, "SetProperty", "End self-reinit (kVPProperty_DisableVP)");
                    }
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v267 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v267)
                  {
                    v268 = v267;
                    if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
                    {
                      v269 = "FALSE";
                      v270 = *(this + 2091);
                      *&buf[4] = "vpProperties.cpp";
                      *buf = 136315650;
                      if (v270)
                      {
                        v269 = "TRUE";
                      }

                      *&buf[12] = 1024;
                      *&buf[14] = 1159;
                      *&buf[18] = 2080;
                      *&buf[20] = v269;
                      _os_log_impl(&dword_2724B4000, v268, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: disable vp = %s.  ", buf, 0x1Cu);
                    }
                  }

                  v271 = *(this + 1588);
                  if (v271 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    if (*(this + 2091))
                    {
                      v272 = "TRUE";
                    }

                    else
                    {
                      v272 = "FALSE";
                    }

                    CALegacyLog::log(v271, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1159, "SetProperty", "setproperty: disable vp = %s.  ", v272);
                  }
                }

                if (*v573 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32773);
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1568;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1145;
              *&buf[18] = 2080;
              *&buf[20] = "disableVP <= 1";
              *&buf[28] = 2080;
              *&buf[30] = "InvalidPropertyValue";
              v546 = MEMORY[0x277D86220];
              goto LABEL_1567;
            case 32780:
              if ((v6 & 3) == 0)
              {
                memset(buf, 0, 24);
                std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(buf, v7, (v7 + v6), v6 >> 2);
                v294 = *v50;
                if (*v50)
                {
                  *(this + 264) = v294;
                  operator delete(v294);
                  *v50 = 0;
                  *(this + 264) = 0;
                  *(this + 265) = 0;
                }

                *v50 = *buf;
                *(this + 265) = *&buf[16];
                if (*v573 == 1)
                {
                  VoiceProcessorV2::PListWriteMicTrimGainParameters(this, this + 263);
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1190;
              *&buf[18] = 2080;
              *&buf[20] = "(inDataSize % sizeof(Float32)) == 0";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32781:
              if ((v6 & 3) == 0)
              {
                memset(buf, 0, 24);
                std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(buf, v7, (v7 + v6), v6 >> 2);
                v196 = (this + 2136);
                v195 = *(this + 267);
                if (v195)
                {
                  *(this + 268) = v195;
                  operator delete(v195);
                  *v196 = 0;
                  *(this + 268) = 0;
                  *(this + 269) = 0;
                }

                v197 = *buf;
                *v196 = *buf;
                *(this + 269) = *&buf[16];
                if (*(this + 485) == 1 && (*(this + 8866) & 0x20) != 0)
                {
                  v198 = v197;
                  if (v197 != *(&v197 + 1))
                  {
                    v199 = (v197 + 4);
                    if (v197 + 4 != *(&v197 + 1))
                    {
                      v200 = *v197;
                      v201 = v198 + 1;
                      do
                      {
                        v202 = *v201++;
                        v203 = v202;
                        if (v202 < v200)
                        {
                          v200 = v203;
                          v198 = v199;
                        }

                        v199 = v201;
                      }

                      while (v201 != *(&v197 + 1));
                    }
                  }

                  v204 = fmaxf(*v198, 0.0);
                  AUPropAndParamHelper::AddItemToAUParamList(this + 1173, 1, v204);
                  v205 = *(this + 460);
                  if (v205)
                  {
                    AudioUnitSetParameter(v205, 1u, 0, 0, v204, 0);
                  }
                }

                if (*v573 == 1)
                {
                  VoiceProcessorV2::PListWriteRefTrimGainParameters(this, this + 267);
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1223;
              *&buf[18] = 2080;
              *&buf[20] = "(inDataSize % sizeof(Float32)) == 0";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32783:
              if (v6 == 8)
              {
                v221 = *(this + 278);
                if (v221)
                {
                  CFRelease(v221);
                  *(this + 278) = 0;
                }

                if (*v7)
                {
                  *(this + 278) = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *v7);
                  if (*(this + 484) == 1 && (v573[280] & 1) == 0)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v222 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v222)
                    {
                      v223 = v222;
                      if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1441;
                        _os_log_impl(&dword_2724B4000, v223, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_TelephonyMicDSPSettings)", buf, 0x12u);
                      }
                    }

                    v224 = *(this + 1588);
                    if (v224 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v224, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1441, "SetProperty", "Begin self-reinit (kVPProperty_TelephonyMicDSPSettings)");
                    }

                    (*(*this + 240))(this);
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v225 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v225)
                    {
                      v226 = v225;
                      if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1444;
                        _os_log_impl(&dword_2724B4000, v226, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_TelephonyMicDSPSettings)", buf, 0x12u);
                      }
                    }

                    v227 = *(this + 1588);
                    if (v227 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v227, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1444, "SetProperty", "End self-reinit (kVPProperty_TelephonyMicDSPSettings)");
                    }
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v228 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v228)
                  {
                    v229 = v228;
                    if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1452;
                      _os_log_impl(&dword_2724B4000, v229, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: mic custom dsp settings", buf, 0x12u);
                    }
                  }

                  v230 = *(this + 1588);
                  if (v230 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v230, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1452, "SetProperty", "setproperty: mic custom dsp settings");
                  }

                  if (*v573 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32783);
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1428;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32784:
              if (v6 == 8)
              {
                v284 = *(this + 279);
                if (v284)
                {
                  CFRelease(v284);
                  *(this + 279) = 0;
                }

                if (*v7)
                {
                  *(this + 279) = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *v7);
                  if (*(this + 485) == 1 && (v573[280] & 1) == 0)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v285 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v285)
                    {
                      v286 = v285;
                      if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1471;
                        _os_log_impl(&dword_2724B4000, v286, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_TelephonyRefDSPSettings)", buf, 0x12u);
                      }
                    }

                    v287 = *(this + 1588);
                    if (v287 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v287, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1471, "SetProperty", "Begin self-reinit (kVPProperty_TelephonyRefDSPSettings)");
                    }

                    VoiceProcessorV2::InitializeDLP(this);
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v288 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v288)
                    {
                      v289 = v288;
                      if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1474;
                        _os_log_impl(&dword_2724B4000, v289, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_TelephonyRefDSPSettings)", buf, 0x12u);
                      }
                    }

                    v290 = *(this + 1588);
                    if (v290 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v290, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1474, "SetProperty", "End self-reinit (kVPProperty_TelephonyRefDSPSettings)");
                    }
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v291 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v291)
                  {
                    v292 = v291;
                    if (os_log_type_enabled(v291, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1482;
                      _os_log_impl(&dword_2724B4000, v292, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: ref custom dsp settings", buf, 0x12u);
                    }
                  }

                  v293 = *(this + 1588);
                  if (v293 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v293, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1482, "SetProperty", "setproperty: ref custom dsp settings");
                  }

                  if (*v573 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32784);
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1458;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32786:
              if (v6 <= 3)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1706;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1499;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize >= sizeof(UInt32)";
                *&buf[28] = 2080;
                *&buf[30] = "BadPropertySize";
                v562 = MEMORY[0x277D86220];
                goto LABEL_1705;
              }

              v273 = *v7;
              if (*v7 < 2u)
              {
                v274 = (this + 2752);
                *(this + 688) = v273;
                VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_beam_direction", 1, this + 688, v48);
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v275 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v275)
                {
                  v276 = v275;
                  if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
                  {
                    v277 = "top back mic";
                    v278 = *v274;
                    *&buf[4] = "vpProperties.cpp";
                    *buf = 136315650;
                    if (!v278)
                    {
                      v277 = "top front mic";
                    }

                    *&buf[12] = 1024;
                    *&buf[14] = 1509;
                    *&buf[18] = 2080;
                    *&buf[20] = v277;
                    _os_log_impl(&dword_2724B4000, v276, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: beam former direction = %s", buf, 0x1Cu);
                  }
                }

                v279 = *(this + 1588);
                if (v279 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  if (*v274)
                  {
                    v280 = "top back mic";
                  }

                  else
                  {
                    v280 = "top front mic";
                  }

                  CALegacyLog::log(v279, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1509, "SetProperty", "setproperty: beam former direction = %s", v280);
                }

                v5 = VoiceProcessorV2::ApplyBeamDirection(this);
                if (v5)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v281 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                  if (v281)
                  {
                    v282 = v281;
                    if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1513;
                      *&buf[18] = 1024;
                      *&buf[20] = v5;
                      _os_log_impl(&dword_2724B4000, v282, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Error %d from applying beam direction", buf, 0x18u);
                    }
                  }

                  v283 = *(this + 1588);
                  if (v283 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v283, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1513, "SetProperty", "Error %d from applying beam direction", v5);
                  }
                }

                goto LABEL_1253;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1568;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1503;
              *&buf[18] = 2080;
              *&buf[20] = "(beamDirection == kAUBeam2BeamIndex_Front) || (beamDirection == kAUBeam2BeamIndex_Back)";
              *&buf[28] = 2080;
              *&buf[30] = "InvalidPropertyValue";
              v546 = MEMORY[0x277D86220];
              goto LABEL_1567;
            case 32787:
              if (v6 > 3)
              {
                v5 = (*(*this + 96))(this, *v7);
                goto LABEL_1253;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1518;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32788:
              if (v6 < 4 || (v300 = *v7, *v7 >= 2u))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v301 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
                if (v301)
                {
                  v302 = v301;
                  if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1166;
                    _os_log_impl(&dword_2724B4000, v302, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> setproperty: HwHasVP got invalid data", buf, 0x12u);
                  }
                }

                v5 = 561211770;
                v303 = *(this + 1588);
                if (v303 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v303, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1166, "SetProperty", "setproperty: HwHasVP got invalid data");
                }

                goto LABEL_1253;
              }

              if (v300 != *(this + 2093))
              {
                *(this + 2093) = v300 == 1;
                VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_hw_has_vp", 0, (this + 2093), v48);
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v461 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v461)
                {
                  v462 = v461;
                  if (os_log_type_enabled(v461, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1175;
                    _os_log_impl(&dword_2724B4000, v462, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_HwHasVP)", buf, 0x12u);
                  }
                }

                v463 = *(this + 1588);
                if (v463 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v463, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1175, "SetProperty", "Begin self-reinit (kVPProperty_HwHasVP)");
                }

                if (*(this + 485) == 1)
                {
                  VoiceProcessorV2::InitializeDLP(this);
                }

                if (*(this + 484) == 1)
                {
                  (*(*this + 240))(this);
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v464 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v464)
                {
                  v465 = v464;
                  if (os_log_type_enabled(v464, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1180;
                    _os_log_impl(&dword_2724B4000, v465, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_HwHasVP)", buf, 0x12u);
                  }
                }

                v466 = *(this + 1588);
                if (v466 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v466, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1180, "SetProperty", "End self-reinit (kVPProperty_HwHasVP)");
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v467 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v467)
                {
                  v468 = v467;
                  if (os_log_type_enabled(v467, OS_LOG_TYPE_DEFAULT))
                  {
                    v469 = "FALSE";
                    v470 = *(this + 2093);
                    *&buf[4] = "vpProperties.cpp";
                    *buf = 136315650;
                    if (v470)
                    {
                      v469 = "TRUE";
                    }

                    *&buf[12] = 1024;
                    *&buf[14] = 1183;
                    *&buf[18] = 2080;
                    *&buf[20] = v469;
                    _os_log_impl(&dword_2724B4000, v468, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: hw has vp = %s.  ", buf, 0x1Cu);
                  }
                }

                v471 = *(this + 1588);
                if (v471 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  if (*(this + 2093))
                  {
                    v472 = "TRUE";
                  }

                  else
                  {
                    v472 = "FALSE";
                  }

                  CALegacyLog::log(v471, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1183, "SetProperty", "setproperty: hw has vp = %s.  ", v472);
                }
              }

              if (*v573 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32788);
              }

              goto LABEL_1630;
            case 32792:
              if (v6 < 4)
              {
                goto LABEL_1168;
              }

              v295 = *v7 != 0;
              if (*(this + 288) != v295)
              {
                *(this + 288) = v295;
                if (*v573 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32792);
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v296 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v296)
                {
                  v297 = v296;
                  if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
                  {
                    v298 = *(this + 288);
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1662;
                    *&buf[18] = 1024;
                    *&buf[20] = v298;
                    _os_log_impl(&dword_2724B4000, v297, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: is tap stream enabled  = %d", buf, 0x18u);
                  }
                }

                v299 = *(this + 1588);
                if (v299 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v299, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1662, "SetProperty", "setproperty: is tap stream enabled  = %d", *(this + 288));
                }
              }

              goto LABEL_1630;
            case 32794:
              v5 = 561211770;
              if (v6 < 4 || *v7 > 1u)
              {
                goto LABEL_1253;
              }

              *(this + 2090) = *v7;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v180 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v180)
              {
                v182 = v180;
                if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
                {
                  v183 = *(this + 2090);
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 913;
                  *&buf[18] = 1024;
                  *&buf[20] = v183;
                  _os_log_impl(&dword_2724B4000, v182, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: mute downlink voice =%d", buf, 0x18u);
                }
              }

              v184 = *(this + 1588);
              if (v184 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v184, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 913, "SetProperty", "setproperty: mute downlink voice =%d", *(this + 2090));
              }

              VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_mute_downlink_voice", 0, (this + 2090), v181);
              if (*v573 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32794);
              }

              goto LABEL_1630;
            case 32796:
              CADeprecated::CAAutoFree<long long>::allocBytes(this + 275, v6);
              v194 = *(this + 275);
              if (v194)
              {
                memcpy(v194, v7, v6);
                *(this + 552) = v6 >> 2;
                if (*v573 == 1)
                {
                  VoiceProcessorV2::PListWriteSpkInputDataSrcParameters(this, *(this + 275), v6 >> 2);
                }
              }

              goto LABEL_1630;
            case 32797:
              if (v6 <= 3)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1706;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1584;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize >= sizeof(Float32)";
                *&buf[28] = 2080;
                *&buf[30] = "BadPropertySize";
                v562 = MEMORY[0x277D86220];
                goto LABEL_1705;
              }

              v231 = *v7;
              v232 = this;
              *(this + 564) = *v7;
              v233 = v573;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v6 = &unk_28133C000;
              v234 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v234)
              {
                v235 = v234;
                if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1587;
                  *&buf[18] = 2048;
                  *&buf[20] = v231;
                  _os_log_impl(&dword_2724B4000, v235, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: hardware volume =%f dB", buf, 0x1Cu);
                }
              }

              v236 = *(this + 1588);
              if (v236 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v236, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1587, "SetProperty", "setproperty: hardware volume =%f dB", v231);
              }

              if (*v573 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32797);
              }

              v237 = *(this + 1108);
              if ((v237 & 0x200000000000) != 0 && *(this + 484))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v238 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v238)
                {
                  v239 = v238;
                  if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1591;
                    *&buf[18] = 2048;
                    *&buf[20] = v231;
                    _os_log_impl(&dword_2724B4000, v239, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> AU HLC exists in the VP chain applying HW vol =>%f", buf, 0x1Cu);
                  }
                }

                v240 = *(this + 1588);
                if (v240 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v240, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1591, "SetProperty", "AU HLC exists in the VP chain applying HW vol =>%f", v231);
                }

                AudioUnitSetParameter(*(this + 484), 0x19u, 0, 0, v231, 0);
                v237 = *(this + 1108);
              }

              if ((v237 & 0x4000000000000) == 0 || !*(this + 489))
              {
                goto LABEL_1630;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v241 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v241)
              {
                v242 = v241;
                if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1598;
                  *&buf[18] = 2048;
                  *&buf[20] = v231;
                  _os_log_impl(&dword_2724B4000, v242, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> [VolumeLimit] AUSPLMeter exists in the VP chain; applying HW vol =>%f", buf, 0x1Cu);
                }
              }

              v243 = *(this + 1588);
              if (v243 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v243, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1598, "SetProperty", "[VolumeLimit] AUSPLMeter exists in the VP chain; applying HW vol =>%f", v231);
              }

              AudioUnitSetParameter(*(this + 489), 0, 0, 0, v231, 0);
              if ((*(this + 8869) & 0x40) == 0 || !*(this + 485))
              {
                goto LABEL_1630;
              }

              *v584 = 0;
              if (*(this + 586) <= 0.0)
              {
                v244 = 100.0;
              }

              else
              {
                v244 = *(this + 586);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v245 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v245)
              {
                v246 = v245;
                if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1607;
                  *&buf[18] = 2048;
                  *&buf[20] = v244;
                  _os_log_impl(&dword_2724B4000, v246, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> [VolumeLimit] SPLTarget update %f", buf, 0x1Cu);
                }
              }

              v247 = *(this + 1588);
              if (v247 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v232 = this;
                CALegacyLog::log(v247, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1607, "SetProperty", "[VolumeLimit] SPLTarget update %f", v244);
                v233 = v573;
              }

              Parameter = AudioUnitGetParameter(*(v232 + 489), 0xBu, 0, 0, v584);
              if (Parameter)
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v249 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                if (v249)
                {
                  v250 = v249;
                  if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1621;
                    *&buf[18] = 1024;
                    *&buf[20] = Parameter;
                    _os_log_impl(&dword_2724B4000, v250, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> [VolumeLimit] Failed to et LKFS from AUSPLMeter. Error = %d", buf, 0x18u);
                  }
                }

                v251 = *(v232 + 1588);
                if (v251 && ((*v233 & 1) != 0 || v233[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v251, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1621, "SetProperty", "[VolumeLimit] Failed to et LKFS from AUSPLMeter. Error = %d", Parameter);
                }

                goto LABEL_1630;
              }

              v515 = v244 - *v584;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v4 = v515 + -2.5;
              v516 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v516)
              {
                v517 = v516;
                if (os_log_type_enabled(v516, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1615;
                  *&buf[18] = 2048;
                  *&buf[20] = v4;
                  _os_log_impl(&dword_2724B4000, v517, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> [VolumeLimit] Setting target LKFS on LDNM to %f", buf, 0x1Cu);
                }
              }

              v518 = this;
              v7 = *(this + 1588);
              if (v7 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  goto LABEL_1718;
                }

                goto LABEL_1474;
              }

              goto LABEL_1475;
            case 32799:
              if (v6 == 8)
              {
                applesauce::CF::ArrayRef::from_get_noexcept(&theArray, *v7);
                if (theArray)
                {
                  v171 = this;
                  v172 = applesauce::CF::ArrayRef::operator->(&theArray);
                  if (applesauce::CF::ArrayRef_proxy::get_size(*v172))
                  {
                    memset(v584, 0, 24);
                    applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(__p, theArray);
                    applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(&cf, theArray);
                    v173 = v577;
                    v576 = v577;
                    v174 = __p[1];
                    while (1)
                    {
                      if (__p[0])
                      {
                        v175 = v174 == v582;
                      }

                      else
                      {
                        v175 = 1;
                      }

                      if (v175 && (cf ? (v176 = v173 == v577) : (v176 = 1), v176) || (__p[0] == cf ? (v177 = v174 == v173) : (v177 = 0), v177))
                      {
                        applesauce::CF::ArrayRef::operator=(v171 + 262, theArray);
                        v418 = *(v171 + 263);
                        if (v418)
                        {
                          *(v171 + 264) = v418;
                          operator delete(v418);
                          *v50 = 0;
                          *(this + 264) = 0;
                          *(this + 265) = 0;
                        }

                        *v50 = *v584;
                        *(v171 + 265) = *&v584[16];
                        if (*v573)
                        {
                          VoiceProcessorV2::PListWriteMicTrimGainParameters(v171, this + 263);
                        }

                        goto LABEL_1207;
                      }

                      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v574, __p[0], v174);
                      if (!v574)
                      {
                        exception = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(exception, "Could not construct");
                      }

                      if (!applesauce::CF::details::has_key<char const(&)[25]>(v574))
                      {
                        break;
                      }

                      if (!v574)
                      {
                        v567 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v567, "Could not construct");
                      }

                      if (!applesauce::CF::details::has_key<char const(&)[13]>(v574))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315906;
                          *&buf[4] = "vpProperties.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 1210;
                          *&buf[18] = 2080;
                          *&buf[20] = "value->has_key(kVirtualAudioPortPropertyTrimGainsCFGainDBKey)";
                          *&buf[28] = 2080;
                          *&buf[30] = "InvalidPropertyValue";
                          v179 = MEMORY[0x277D86220];
LABEL_474:
                          _os_log_impl(&dword_2724B4000, v179, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
                        }

                        goto LABEL_475;
                      }

                      if (!v574)
                      {
                        v568 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v568, "Could not construct");
                      }

                      *buf = applesauce::CF::details::find_at_key<float,char const(&)[13]>(v574);
                      std::vector<float>::push_back[abi:ne200100](v584, buf);
                      v49 = 0;
                      v178 = 1;
LABEL_466:
                      if (v574)
                      {
                        CFRelease(v574);
                      }

                      if (!v178)
                      {
                        goto LABEL_1183;
                      }

                      v174 = ++__p[1];
                      v173 = v576;
                      v171 = this;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1209;
                      *&buf[18] = 2080;
                      *&buf[20] = "value->has_key(kVirtualAudioPortPropertyTrimGainsCFDataSourceIDKey)";
                      *&buf[28] = 2080;
                      *&buf[30] = "InvalidPropertyValue";
                      v179 = MEMORY[0x277D86220];
                      goto LABEL_474;
                    }

LABEL_475:
                    v178 = 0;
                    v49 = 164;
                    goto LABEL_466;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_1675;
                  }

                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1204;
                  *&buf[18] = 2080;
                  *&buf[20] = "micTrimGainsCF->get_size() != 0";
                  *&buf[28] = 2080;
                  *&buf[30] = "InvalidPropertyValue";
                  v563 = MEMORY[0x277D86220];
                }

                else
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_1675;
                  }

                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1203;
                  *&buf[18] = 2080;
                  *&buf[20] = "micTrimGainsCF.is_valid()";
                  *&buf[28] = 2080;
                  *&buf[30] = "InvalidPropertyValue";
                  v563 = MEMORY[0x277D86220];
                }

                goto LABEL_1674;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1199;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32800:
              if (v6 == 8)
              {
                applesauce::CF::ArrayRef::from_get_noexcept(&theArray, *v7);
                if (theArray)
                {
                  v185 = this;
                  v186 = applesauce::CF::ArrayRef::operator->(&theArray);
                  if (applesauce::CF::ArrayRef_proxy::get_size(*v186))
                  {
                    memset(v584, 0, 24);
                    applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(__p, theArray);
                    applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(&cf, theArray);
                    v187 = v577;
                    v576 = v577;
                    v188 = __p[1];
                    while (1)
                    {
                      if (__p[0])
                      {
                        v189 = v188 == v582;
                      }

                      else
                      {
                        v189 = 1;
                      }

                      if (v189 && (cf ? (v190 = v187 == v577) : (v190 = 1), v190) || (__p[0] == cf ? (v191 = v188 == v187) : (v191 = 0), v191))
                      {
                        applesauce::CF::ArrayRef::operator=(v185 + 266, theArray);
                        v419 = *(v185 + 267);
                        if (v419)
                        {
                          *(v185 + 268) = v419;
                          operator delete(v419);
                          *(this + 267) = 0;
                          *(this + 268) = 0;
                          *(this + 269) = 0;
                        }

                        v420 = *v584;
                        *(this + 2136) = *v584;
                        *(v185 + 269) = *&v584[16];
                        if (*(v185 + 485) == 1 && (*(v185 + 8866) & 0x20) != 0)
                        {
                          v421 = v420;
                          v422 = (v420 + 4);
                          if (v420 != *(&v420 + 1) && v422 != *(&v420 + 1))
                          {
                            v424 = *v420;
                            v425 = v422;
                            do
                            {
                              v426 = *v425++;
                              v427 = v426;
                              if (v426 < v424)
                              {
                                v424 = v427;
                                v421 = v422;
                              }

                              v422 = v425;
                            }

                            while (v425 != *(&v420 + 1));
                          }

                          v428 = fmaxf(*v421, 0.0);
                          AUPropAndParamHelper::AddItemToAUParamList(v185 + 1173, 1, v428);
                          v429 = *(v185 + 460);
                          if (v429)
                          {
                            AudioUnitSetParameter(v429, 1u, 0, 0, v428, 0);
                          }
                        }

                        if (*v573 == 1)
                        {
                          VoiceProcessorV2::PListWriteRefTrimGainParameters(v185, this + 267);
                        }

                        goto LABEL_1207;
                      }

                      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v574, __p[0], v188);
                      if (!v574)
                      {
                        v565 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v565, "Could not construct");
                      }

                      if (!applesauce::CF::details::has_key<char const(&)[25]>(v574))
                      {
                        break;
                      }

                      if (!v574)
                      {
                        v566 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v566, "Could not construct");
                      }

                      if (!applesauce::CF::details::has_key<char const(&)[13]>(v574))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315906;
                          *&buf[4] = "vpProperties.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 1258;
                          *&buf[18] = 2080;
                          *&buf[20] = "value->has_key(kVirtualAudioPortPropertyTrimGainsCFGainDBKey)";
                          *&buf[28] = 2080;
                          *&buf[30] = "InvalidPropertyValue";
                          v193 = MEMORY[0x277D86220];
LABEL_524:
                          _os_log_impl(&dword_2724B4000, v193, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
                        }

                        goto LABEL_525;
                      }

                      if (!v574)
                      {
                        v569 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v569, "Could not construct");
                      }

                      *buf = applesauce::CF::details::find_at_key<float,char const(&)[13]>(v574);
                      std::vector<float>::push_back[abi:ne200100](v584, buf);
                      v49 = 0;
                      v192 = 1;
LABEL_516:
                      if (v574)
                      {
                        CFRelease(v574);
                      }

                      if (!v192)
                      {
LABEL_1183:
                        if (*v584)
                        {
                          operator delete(*v584);
                        }

                        if (v49)
                        {
LABEL_1186:
                          applesauce::CF::ArrayRef::~ArrayRef(&theArray);
                          goto LABEL_1631;
                        }

LABEL_1207:
                        applesauce::CF::ArrayRef::~ArrayRef(&theArray);
                        goto LABEL_1630;
                      }

                      v188 = ++__p[1];
                      v187 = v576;
                      v185 = this;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1257;
                      *&buf[18] = 2080;
                      *&buf[20] = "value->has_key(kVirtualAudioPortPropertyTrimGainsCFDataSourceIDKey)";
                      *&buf[28] = 2080;
                      *&buf[30] = "InvalidPropertyValue";
                      v193 = MEMORY[0x277D86220];
                      goto LABEL_524;
                    }

LABEL_525:
                    v192 = 0;
                    v49 = 164;
                    goto LABEL_516;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1252;
                    *&buf[18] = 2080;
                    *&buf[20] = "refTrimGainsCF->get_size() != 0";
                    *&buf[28] = 2080;
                    *&buf[30] = "InvalidPropertyValue";
                    v563 = MEMORY[0x277D86220];
                    goto LABEL_1674;
                  }
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1251;
                  *&buf[18] = 2080;
                  *&buf[20] = "refTrimGainsCF.is_valid()";
                  *&buf[28] = 2080;
                  *&buf[30] = "InvalidPropertyValue";
                  v563 = MEMORY[0x277D86220];
LABEL_1674:
                  _os_log_impl(&dword_2724B4000, v563, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
                }

LABEL_1675:
                v49 = 164;
                goto LABEL_1186;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1247;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              break;
            case 32801:
              if (v6 == 8)
              {
                v252 = *v7;
                applesauce::CF::details::Retain<__CFArray const*>(v252);
                applesauce::CF::ArrayRef::ArrayRef(buf, v252);
                v253 = *(this + 270);
                *(this + 270) = *buf;
                *buf = v253;
                applesauce::CF::ArrayRef::~ArrayRef(buf);
                if ((v573[280] & 1) == 0 && *(this + 485) == 1)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v254 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v254)
                  {
                    v255 = v254;
                    if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1291;
                      _os_log_impl(&dword_2724B4000, v255, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_SpeakerCalibrationDataCF)", buf, 0x12u);
                    }
                  }

                  v256 = *(this + 1588);
                  if (v256 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v256, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1291, "SetProperty", "Begin self-reinit (kVPProperty_SpeakerCalibrationDataCF)");
                  }

                  VoiceProcessorV2::InitializeDLP(this);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v257 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v257)
                  {
                    v258 = v257;
                    if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1294;
                      _os_log_impl(&dword_2724B4000, v258, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_SpeakerCalibrationDataCF)", buf, 0x12u);
                    }
                  }

                  v259 = *(this + 1588);
                  if (v259 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v259, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1294, "SetProperty", "End self-reinit (kVPProperty_SpeakerCalibrationDataCF)");
                  }
                }

                if (*v573 == 1)
                {
                  VoiceProcessorV2::PListWriteSpeakerCalibrationParameters(this, *(this + 270));
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1286;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            default:
              goto LABEL_1182;
          }

          goto LABEL_1705;
        }

        if (a2 > 1635085676)
        {
          if (a2 <= 1685483377)
          {
            if (a2 != 1635085677)
            {
              if (a2 == 1684305512)
              {
                goto LABEL_1632;
              }

              goto LABEL_1182;
            }

            if (!VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(v47))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v430 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v430)
              {
                v431 = v430;
                if (os_log_type_enabled(v430, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 2021;
                  _os_log_impl(&dword_2724B4000, v431, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Advance chat flavors are not supported, ignoring incoming property", buf, 0x12u);
                }
              }

              v432 = *(this + 1588);
              if (v432 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v432, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2021, "SetProperty", "Advance chat flavors are not supported, ignoring incoming property");
              }

              goto LABEL_1630;
            }

            if (v6 == 4)
            {
              v304 = *v7;
              v305 = *v7 != 0;
              if (*(this + 2288) == v305)
              {
                goto LABEL_1630;
              }

              if (v573[687])
              {
                AutomaticChatFlavor = 0;
              }

              else if (*(this + 2262))
              {
                AutomaticChatFlavor = 2;
              }

              else if (*(this + 2288))
              {
                AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this);
              }

              else
              {
                AutomaticChatFlavor = *(v573 + 655);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v519 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v519)
              {
                v520 = v519;
                if (os_log_type_enabled(v519, OS_LOG_TYPE_DEFAULT))
                {
                  v521 = "false";
                  v522 = *(this + 2288);
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1996;
                  if (v522)
                  {
                    v523 = "true";
                  }

                  else
                  {
                    v523 = "false";
                  }

                  *buf = 136315906;
                  if (v304)
                  {
                    v521 = "true";
                  }

                  *&buf[18] = 2080;
                  *&buf[20] = v523;
                  *&buf[28] = 2080;
                  *&buf[30] = v521;
                  _os_log_impl(&dword_2724B4000, v520, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of enable automatic chat flavor = [%s], new state of enable automatic chat flavor = [%s]", buf, 0x26u);
                }
              }

              v524 = *(this + 1588);
              if (v524 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v525 = "false";
                if (*(this + 2288))
                {
                  v526 = "true";
                }

                else
                {
                  v526 = "false";
                }

                if (v304)
                {
                  v525 = "true";
                }

                CALegacyLog::log(v524, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1996, "SetProperty", "setproperty: current state of enable automatic chat flavor = [%s], new state of enable automatic chat flavor = [%s]", v526, v525);
              }

              *(this + 2288) = v305;
              if (*v573 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1635085677);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v527 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v527)
              {
                v528 = v527;
                if (os_log_type_enabled(v527, OS_LOG_TYPE_DEFAULT))
                {
                  v529 = *(this + 2288);
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 2001;
                  *&buf[18] = 1024;
                  *&buf[20] = v529;
                  _os_log_impl(&dword_2724B4000, v528, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: enable automatic chat flavor value changed to = [%d]", buf, 0x18u);
                }
              }

              v530 = *(this + 1588);
              if (v530 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v530, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2001, "SetProperty", "setproperty: enable automatic chat flavor value changed to = [%d]", *(this + 2288));
              }

              if (v573[687])
              {
                v531 = 0;
              }

              else if (*(this + 2262))
              {
                v531 = 2;
              }

              else if (*(this + 2288) == 1)
              {
                v531 = VoiceProcessorV2::GetAutomaticChatFlavor(this);
              }

              else
              {
                v531 = *(v573 + 655);
              }

              if (v531 != AutomaticChatFlavor)
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v534 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v534)
                {
                  v535 = v534;
                  if (os_log_type_enabled(v534, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 2007;
                    _os_log_impl(&dword_2724B4000, v535, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_EnableAutomaticMicMode)", buf, 0x12u);
                  }
                }

                v536 = *(this + 1588);
                if (v536 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v536, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2007, "SetProperty", "Begin self-reinit (kVPProperty_EnableAutomaticMicMode)");
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v537 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v537)
                {
                  v540 = v537;
                  if (os_log_type_enabled(v537, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 2010;
                    *&buf[18] = 1024;
                    *&buf[20] = AutomaticChatFlavor;
                    *&buf[24] = 1024;
                    *&buf[26] = v531;
                    _os_log_impl(&dword_2724B4000, v540, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> current chat flavor = [%d], new chat flavor = [%d]", buf, 0x1Eu);
                  }
                }

                v541 = *(this + 1588);
                if (v541 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v541, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2010, "SetProperty", "current chat flavor = [%d], new chat flavor = [%d]", AutomaticChatFlavor, v531);
                }

                VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 1, v538, v539);
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v542 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v542)
                {
                  v543 = v542;
                  if (os_log_type_enabled(v542, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 2013;
                    _os_log_impl(&dword_2724B4000, v543, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_EnableAutomaticMicMode)", buf, 0x12u);
                  }
                }

                v544 = *(this + 1588);
                if (v544 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v544, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2013, "SetProperty", "End self-reinit (kVPProperty_EnableAutomaticMicMode)");
                }

                goto LABEL_1630;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v532 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v532)
              {
                v533 = v532;
                if (os_log_type_enabled(v532, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 2016;
                  *&buf[18] = 1024;
                  *&buf[20] = AutomaticChatFlavor;
                  _os_log_impl(&dword_2724B4000, v533, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> No self-reinit required, chat flavor remains %d", buf, 0x18u);
                }
              }

              v5 = *(this + 1588);
              if (v5)
              {
                if ((*v573 & 1) != 0 || v573[1] == 1)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v5, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2016, "SetProperty", "No self-reinit required, chat flavor remains %d", AutomaticChatFlavor);
                }

                goto LABEL_1630;
              }

              goto LABEL_1253;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1987;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            }

LABEL_1706:
            v5 = 0;
            v49 = 4;
            goto LABEL_1632;
          }

          if (a2 == 1685483378)
          {
            goto LABEL_1632;
          }

          if (a2 != 1701864051)
          {
            goto LABEL_1182;
          }

          if (v6 >= 4)
          {
            v49 = 0;
            v5 = 0;
            *(this + 4048) = *v7;
            goto LABEL_1632;
          }

LABEL_1168:
          v49 = 0;
          v5 = 561211770;
          goto LABEL_1632;
        }

        switch(a2)
        {
          case 1634300531:
            CADeprecated::CAAutoFree<long long>::allocBytes(this + 271, v6);
            v411 = *(this + 271);
            if (!v411)
            {
              goto LABEL_1630;
            }

            memcpy(v411, v7, v6);
            v412 = v6 >> 3;
            *(this + 544) = v412;
            *buf = 0;
            std::vector<long long>::vector[abi:ne200100](v584, v412, buf);
            memcpy(*v584, v7, v6);
            AudioIssueDetectorClientUpdateReportingSessions(*(this + 1992), v584);
            AudioIssueDetectorClientUpdateReportingSessions(*(this + 1993), v584);
            v413 = *v584;
            v414 = *&v584[8];
            if (*v584 == *&v584[8])
            {
              goto LABEL_1397;
            }

            while (1)
            {
              v415 = *v413;
              if (AudioStatisticsLibraryLoader(void)::once != -1)
              {
                dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_209);
              }

              if (AudioStatisticsLibraryLoader(void)::libSym && (AudioStatisticsLibraryLoader(void)::libSym(v415) & 0xFFFFFFFD) == 0)
              {
                v416 = AudioStatisticsCopyConfiguration(v415);
                applesauce::CF::DictionaryRef::from_create(&cf, v416);
                if (cf)
                {
                  applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(buf, &cf);
                  v417 = *buf;
                  *buf = 0;
                  applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(&theArray, *v417, @"HostApplicationDisplayID", buf);
                  applesauce::CF::StringRef::~StringRef(buf);
                  if (theArray)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v477 = this;
                    v478 = v573;
                    v479 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v479)
                    {
                      v480 = v479;
                      if (os_log_type_enabled(v479, OS_LOG_TYPE_DEFAULT))
                      {
                        v481 = applesauce::CF::StringRef::operator->(&theArray);
                        applesauce::CF::convert_to<std::string,0>(__p, *v481);
                        if (SHIBYTE(v582) >= 0)
                        {
                          v482 = __p;
                        }

                        else
                        {
                          v482 = __p[0];
                        }

                        *buf = 136315650;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1322;
                        *&buf[18] = 2080;
                        *&buf[20] = v482;
                        _os_log_impl(&dword_2724B4000, v480, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> HostApplicationDisplayID = %s", buf, 0x1Cu);
                        if (SHIBYTE(v582) < 0)
                        {
                          operator delete(__p[0]);
                        }

                        v477 = this;
                        v478 = v573;
                      }
                    }

                    v483 = *(v477 + 1588);
                    if (v483 && ((*v478 & 1) != 0 || v478[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v484 = VPLogScope(void)::scope;
                      v485 = applesauce::CF::StringRef::operator->(&theArray);
                      applesauce::CF::convert_to<std::string,0>(buf, *v485);
                      if (buf[23] >= 0)
                      {
                        v486 = buf;
                      }

                      else
                      {
                        v486 = *buf;
                      }

                      CALegacyLog::log(v483, 3, v484, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1322, "SetProperty", "HostApplicationDisplayID = %s", v486);
                      if ((buf[23] & 0x80000000) != 0)
                      {
                        operator delete(*buf);
                      }

                      v477 = this;
                    }

                    applesauce::CF::StringRef::operator=(v477 + 273, theArray);
                    applesauce::CF::StringRef::operator=(v477 + 274, theArray);
                    applesauce::CF::StringRef::~StringRef(&theArray);
                    applesauce::CF::DictionaryRef::~DictionaryRef(&cf);
LABEL_1397:
                    if (*v584)
                    {
                      *&v584[8] = *v584;
                      operator delete(*v584);
                    }

                    goto LABEL_1630;
                  }

                  applesauce::CF::StringRef::~StringRef(&theArray);
                }

                applesauce::CF::DictionaryRef::~DictionaryRef(&cf);
              }

              if (++v413 == v414)
              {
                goto LABEL_1397;
              }
            }

          case 1634758259:
            (*(*this + 56))(this, 1634758502, v7, v6);
            goto LABEL_1630;
          case 1634758502:
            if (v6 == 4)
            {
              v107 = v573 + 727;
              if (*v7 != *(v573 + 727))
              {
                *v107 = *v7;
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v108 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v108)
                {
                  v109 = v108;
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                  {
                    v110 = *v107;
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1565;
                    *&buf[18] = 1024;
                    *&buf[20] = v110;
                    _os_log_impl(&dword_2724B4000, v109, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: AirPods offload = %u", buf, 0x18u);
                  }
                }

                v111 = *(this + 1588);
                if (v111 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v111, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1565, "SetProperty", "setproperty: AirPods offload = %u", *v107);
                }

                if (*v573 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1634758502);
                }
              }

              goto LABEL_1630;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1706;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1560;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(UInt32)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v562 = MEMORY[0x277D86220];
            goto LABEL_1705;
        }

        goto LABEL_1182;
      }

      if (a2 > 1953915763)
      {
        if (a2 > 1987209579)
        {
          if (a2 > 1987211118)
          {
            switch(a2)
            {
              case 1987211119:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 296) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
              case 1987211365:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 601) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
              case 1987211379:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 600) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
            }
          }

          else
          {
            switch(a2)
            {
              case 1987209580:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 289) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
              case 1987209583:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 290) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
              case 1987211116:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 294) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
            }
          }
        }

        else if (a2 > 1986881899)
        {
          switch(a2)
          {
            case 1986881900:
              if (v6 >= 4)
              {
                v49 = 0;
                v5 = 0;
                *(this + 293) = *v7;
                goto LABEL_1632;
              }

              goto LABEL_1168;
            case 1986881903:
              if (v6 >= 4)
              {
                v49 = 0;
                v5 = 0;
                *(this + 295) = *v7;
                goto LABEL_1632;
              }

              goto LABEL_1168;
            case 1987208053:
              if (v6 >= 4)
              {
                v49 = 0;
                v5 = 0;
                *(this + 291) = *v7;
                goto LABEL_1632;
              }

              goto LABEL_1168;
          }
        }

        else
        {
          switch(a2)
          {
            case 1953915764:
              if (v6 == 4)
              {
                v360 = *v7;
                if (*v7 != *(this + 553))
                {
                  v361 = (this + 2212);
                  *(this + 553) = v360;
                  VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_vocoder_type_int", 1, this + 553, v48);
                  if ((v573[280] & 1) == 0 && (*(*this + 112))(this) <= 5)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v362 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v362)
                    {
                      v363 = v362;
                      if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1351;
                        _os_log_impl(&dword_2724B4000, v363, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_PrimaryCodecType)", buf, 0x12u);
                      }
                    }

                    v364 = *(this + 1588);
                    if (v364 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v364, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1351, "SetProperty", "Begin self-reinit (kVPProperty_PrimaryCodecType)");
                    }

                    if (*(this + 485) == 1)
                    {
                      VoiceProcessorV2::InitializeDLP(this);
                    }

                    if (*(this + 484) == 1)
                    {
                      (*(*this + 240))(this);
                    }

                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v365 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v365)
                    {
                      v366 = v365;
                      if (os_log_type_enabled(v365, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1356;
                        _os_log_impl(&dword_2724B4000, v366, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_PrimaryCodecType)", buf, 0x12u);
                      }
                    }

                    v367 = *(this + 1588);
                    if (v367 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v367, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1356, "SetProperty", "End self-reinit (kVPProperty_PrimaryCodecType)");
                    }
                  }

                  VoiceProcessorV2::ReportMetrics(this);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v368 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v368)
                  {
                    v369 = v368;
                    if (os_log_type_enabled(v368, OS_LOG_TYPE_DEFAULT))
                    {
                      CAX4CCString::CAX4CCString(v584, *v361);
                      v370 = *v361;
                      *buf = 136315906;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1368;
                      *&buf[18] = 2080;
                      *&buf[20] = v584;
                      *&buf[28] = 1024;
                      *&buf[30] = v370;
                      _os_log_impl(&dword_2724B4000, v369, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: primary audio vocoder type = %s(%d) ", buf, 0x22u);
                    }
                  }

                  v371 = *(this + 1588);
                  if (v371 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v372 = VPLogScope(void)::scope;
                    CAX4CCString::CAX4CCString(buf, *v361);
                    CALegacyLog::log(v371, 3, v372, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1368, "SetProperty", "setproperty: primary audio vocoder type = %s(%d) ", buf, *v361);
                  }

                  if (*v573 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1953915764);
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1336;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 1969844082:
              goto LABEL_1632;
            case 1986097261:
              if (v6 > 3)
              {
                v82 = *v7;
                *(v573 + 691) = *v7;
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v83 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v83)
                {
                  v84 = v83;
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1548;
                    *&buf[18] = 1024;
                    *&buf[20] = v82;
                    _os_log_impl(&dword_2724B4000, v84, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: VirtualAudio plug-in mode = %u", buf, 0x18u);
                  }
                }

                v85 = *(this + 1588);
                if (v85 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v85, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1548, "SetProperty", "setproperty: VirtualAudio plug-in mode = %u", v82);
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1545;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
          }
        }

LABEL_1182:
        v49 = 0;
        v5 = 2003332927;
        goto LABEL_1632;
      }

      if (a2 > 1836266092)
      {
        if (a2 <= 1936744802)
        {
          switch(a2)
          {
            case 1836266093:
              if (v6 == 4)
              {
                v373 = *v7 == 1;
                if (v573[407] != v373)
                {
                  v573[407] = v373;
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v374 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v374)
                  {
                    v377 = v374;
                    if (os_log_type_enabled(v374, OS_LOG_TYPE_DEFAULT))
                    {
                      v378 = "False";
                      v379 = v573[407];
                      *&buf[4] = "vpProperties.cpp";
                      *buf = 136315650;
                      if (v379)
                      {
                        v378 = "True";
                      }

                      *&buf[12] = 1024;
                      *&buf[14] = 1963;
                      *&buf[18] = 2080;
                      *&buf[20] = v378;
                      _os_log_impl(&dword_2724B4000, v377, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_MixStereoToMono [%s])", buf, 0x1Cu);
                    }
                  }

                  v380 = *(this + 1588);
                  if (v380 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    if (v573[407])
                    {
                      v381 = "True";
                    }

                    else
                    {
                      v381 = "False";
                    }

                    CALegacyLog::log(v380, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1963, "SetProperty", "Begin self-reinit (kVPProperty_MixStereoToMono [%s])", v381);
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v375, v376);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v382 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v382)
                  {
                    v383 = v382;
                    if (os_log_type_enabled(v382, OS_LOG_TYPE_DEFAULT))
                    {
                      v384 = "False";
                      v385 = v573[407];
                      *&buf[4] = "vpProperties.cpp";
                      *buf = 136315650;
                      if (v385)
                      {
                        v384 = "True";
                      }

                      *&buf[12] = 1024;
                      *&buf[14] = 1966;
                      *&buf[18] = 2080;
                      *&buf[20] = v384;
                      _os_log_impl(&dword_2724B4000, v383, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_MixStereoToMono [%s]", buf, 0x1Cu);
                    }
                  }

                  v386 = *(this + 1588);
                  if (v386 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    if (v573[407])
                    {
                      v387 = "True";
                    }

                    else
                    {
                      v387 = "False";
                    }

                    CALegacyLog::log(v386, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1966, "SetProperty", "End self-reinit (kVPProperty_MixStereoToMono [%s]", v387);
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1958;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 1836278117:
              if (_os_feature_enabled_impl())
              {
                if (v6 == 8)
                {
                  VoiceProcessorV2::CreateMessenger(this);
                  v311 = *(this + 2025);
                  if (v311)
                  {
                    caulk::concurrent::messenger::drain(v311);
                  }

                  vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::Block<void({block_pointer} const&)(AUVoiceIOSpeechActivityEvent)>(buf, *v7);
                  std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(this + 2053);
                  v312 = *buf;
                  *buf = 0;
                  *(this + 2053) = v312;
                  vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::~Block(buf);
                  if (*(this + 2053))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v313 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v313)
                    {
                      v314 = v313;
                      if (os_log_type_enabled(v313, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1882;
                        _os_log_impl(&dword_2724B4000, v314, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> registered muted speech activity event listener", buf, 0x12u);
                      }
                    }

                    v315 = *(this + 1588);
                    if (v315 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v315, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1882, "SetProperty", "registered muted speech activity event listener");
                    }
                  }

                  goto LABEL_1630;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1706;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1877;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(AUVoiceIOMutedSpeechActivityEventListener *)";
                *&buf[28] = 2080;
                *&buf[30] = "BadPropertySize";
                v562 = MEMORY[0x277D86220];
                goto LABEL_1705;
              }

              break;
            case 1868653667:
              v89 = this;
              v90 = v573;
              if (_os_feature_enabled_impl() && (*(this + 2260) & 1) == 0 && (*(this + 2264) & 1) == 0)
              {
                if (v6 == 8)
                {
                  v91 = *(v7 + 1);
                  if (v91 <= 0x1E && ((1 << v91) & 0x40100401) != 0)
                  {
                    v92 = *v7;
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v93 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v93)
                    {
                      v94 = v93;
                      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                      {
                        v95 = *(v573 + 683);
                        v96 = v573[680];
                        *buf = 136316418;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1907;
                        *&buf[18] = 1024;
                        *&buf[20] = v95;
                        *&buf[24] = 1024;
                        *&buf[26] = v91;
                        *&buf[30] = 1024;
                        *&buf[32] = v96;
                        *&buf[36] = 1024;
                        *&buf[38] = v92;
                        _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current mClientSetDuckingLevel = %u, new value = %u,  current mClientSetEnableDynamicDucking = %d, new value = %d", buf, 0x2Au);
                      }
                    }

                    v97 = *(this + 1588);
                    if (v97 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v90 = v573;
                      v89 = this;
                      CALegacyLog::log(v97, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1907, "SetProperty", "setproperty: current mClientSetDuckingLevel = %u, new value = %u,  current mClientSetEnableDynamicDucking = %d, new value = %d", *(v573 + 683), v91, v573[680], v92);
                    }

                    if (*(v90 + 683) != v91)
                    {
                      *(v90 + 683) = v91;
                      if ((*(v89 + 8865) & 0x80) != 0)
                      {
                        *buf = v91;
                        AUPropAndParamHelper::AddItemToAUPropsList(v89 + 1420, 0x6E65706Cu, 0, 0, 4uLL, buf, 1);
                        v98 = *(v89 + 454);
                        if (v98)
                        {
                          AudioUnitSetProperty(v98, 0x6E65706Cu, 0, 0, buf, 4u);
                        }
                      }
                    }

                    if (v90[680] != v92)
                    {
                      v90[680] = v92 != 0;
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v99 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                      if (v99)
                      {
                        v102 = v99;
                        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315394;
                          *&buf[4] = "vpProperties.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 1933;
                          _os_log_impl(&dword_2724B4000, v102, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_OtherAudioDuckingConfiguration)", buf, 0x12u);
                        }
                      }

                      v103 = *(v89 + 1588);
                      if (v103 && ((*v90 & 1) != 0 || v90[1] == 1))
                      {
                        if (VPLogScope(void)::once != -1)
                        {
                          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                        }

                        v89 = this;
                        CALegacyLog::log(v103, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1933, "SetProperty", "Begin self-reinit (kVPProperty_OtherAudioDuckingConfiguration)");
                        v90 = v573;
                      }

                      VoiceProcessorV2::ResetTimestampsAndInitializeVP(v89, 0, v100, v101);
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v104 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                      if (v104)
                      {
                        v105 = v104;
                        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315394;
                          *&buf[4] = "vpProperties.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 1936;
                          _os_log_impl(&dword_2724B4000, v105, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_OtherAudioDuckingConfiguration)", buf, 0x12u);
                        }
                      }

                      v106 = *(v89 + 1588);
                      if (v106 && ((*v90 & 1) != 0 || v90[1] == 1))
                      {
                        if (VPLogScope(void)::once != -1)
                        {
                          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                        }

                        v89 = this;
                        CALegacyLog::log(v106, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1936, "SetProperty", "End self-reinit (kVPProperty_OtherAudioDuckingConfiguration)");
                        v90 = v573;
                      }
                    }

                    if (*v90 == 1)
                    {
                      VoiceProcessorV2::PListWriteSetPropertyParameters(v89, 1868653667);
                    }

                    goto LABEL_1630;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1899;
                    *&buf[18] = 2080;
                    *&buf[20] = "requestedDuckingConfig.mDuckingLevel == kAUVoiceIOOtherAudioDuckingLevelDefault || requestedDuckingConfig.mDuckingLevel == kAUVoiceIOOtherAudioDuckingLevelMin || requestedDuckingConfig.mDuckingLevel == kAUVoiceIOOtherAudioDuckingLevelMid || requestedDuckingConfig.mDuckingLevel == kAUVoiceIOOtherAudioDuckingLevelMax";
                    *&buf[28] = 2080;
                    *&buf[30] = "InvalidPropertyValue";
                    v546 = MEMORY[0x277D86220];
LABEL_1567:
                    _os_log_impl(&dword_2724B4000, v546, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
                  }

LABEL_1568:
                  v5 = 0;
                  v49 = 164;
LABEL_1632:
                  atomic_fetch_add(this + 624, 0xFFFFFFFF);
                  if (v580 == 1)
                  {
                    (*(*v579 + 24))(v579);
                  }

                  if (v49)
                  {
                    if (v49 == 4)
                    {
                      return 561211770;
                    }

                    if (v49 == 164)
                    {
                      return 561406316;
                    }

                    else
                    {
                      return 4294956417;
                    }
                  }

                  return v5;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1891;
                  *&buf[18] = 2080;
                  *&buf[20] = "inDataSize == sizeof(AUVoiceIOOtherAudioDuckingConfiguration)";
                  *&buf[28] = 2080;
                  *&buf[30] = "BadPropertySize";
                  v562 = MEMORY[0x277D86220];
                  goto LABEL_1705;
                }

                goto LABEL_1706;
              }

              break;
            default:
              goto LABEL_1182;
          }

          v49 = 0;
          v5 = 4294956417;
          goto LABEL_1632;
        }

        if (a2 != 1936744803)
        {
          if (a2 == 1936746595)
          {
            if (v6 == 8)
            {
              v336 = *(v573 + 503);
              v337 = v573[507];
              if (*v7 != v336 || *(v7 + 4) != (v337 & 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v338 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v338)
                {
                  v339 = v338;
                  if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
                  {
                    v340 = *v7;
                    if (*(v7 + 4))
                    {
                      v341 = "on";
                    }

                    else
                    {
                      v341 = "off";
                    }

                    *buf = 136315906;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1082;
                    *&buf[18] = 1024;
                    *&buf[20] = v340;
                    *&buf[24] = 2080;
                    *&buf[26] = v341;
                    _os_log_impl(&dword_2724B4000, v339, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: spatial head tracking configuration with mode %u and head tracking %s", buf, 0x22u);
                  }
                }

                v342 = *(this + 1588);
                if (v342 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v343 = "off";
                  if (*(v7 + 4))
                  {
                    v343 = "on";
                  }

                  CALegacyLog::log(v342, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1082, "SetProperty", "setproperty: spatial head tracking configuration with mode %u and head tracking %s", *v7, v343);
                }

                *(this + 2048) = *v7;
                if (*v573 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1936746595);
                }

                v344 = *v7;
                if ((v336 == 0) == (*v7 == 0))
                {
                  v445 = *(v7 + 4);
                  if (v445 != (v337 & 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v446 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v446)
                    {
                      v449 = v446;
                      if (os_log_type_enabled(v446, OS_LOG_TYPE_DEFAULT))
                      {
                        v450 = "Off";
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1105;
                        if (v337)
                        {
                          v451 = "On";
                        }

                        else
                        {
                          v451 = "Off";
                        }

                        *buf = 136315906;
                        *&buf[20] = v451;
                        *&buf[18] = 2080;
                        if (v445)
                        {
                          v450 = "On";
                        }

                        *&buf[28] = 2080;
                        *&buf[30] = v450;
                        _os_log_impl(&dword_2724B4000, v449, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [Headtracking %s => %s])", buf, 0x26u);
                      }
                    }

                    v452 = *(this + 1588);
                    if (v452 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v453 = "Off";
                      if (v337)
                      {
                        v454 = "On";
                      }

                      else
                      {
                        v454 = "Off";
                      }

                      if (v445)
                      {
                        v453 = "On";
                      }

                      CALegacyLog::log(v452, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1105, "SetProperty", "Begin self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [Headtracking %s => %s])", v454, v453);
                    }

                    VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v447, v448);
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v455 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v455)
                    {
                      v456 = v455;
                      if (os_log_type_enabled(v455, OS_LOG_TYPE_DEFAULT))
                      {
                        v457 = "Off";
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1109;
                        if (v337)
                        {
                          v458 = "On";
                        }

                        else
                        {
                          v458 = "Off";
                        }

                        *buf = 136315906;
                        *&buf[20] = v458;
                        *&buf[18] = 2080;
                        if (v445)
                        {
                          v457 = "On";
                        }

                        *&buf[28] = 2080;
                        *&buf[30] = v457;
                        _os_log_impl(&dword_2724B4000, v456, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [Headtracking %s => %s ]", buf, 0x26u);
                      }
                    }

                    v459 = *(this + 1588);
                    if (v459 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      if (v337)
                      {
                        v460 = "On";
                      }

                      else
                      {
                        v460 = "Off";
                      }

                      CALegacyLog::log(v459, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1109, "SetProperty", "End self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [Headtracking %s => %s ]", v460);
                    }
                  }
                }

                else
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v345 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v345)
                  {
                    v348 = v345;
                    if (os_log_type_enabled(v345, OS_LOG_TYPE_DEFAULT))
                    {
                      v349 = "On";
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1097;
                      if (v336)
                      {
                        v350 = "On";
                      }

                      else
                      {
                        v350 = "Off";
                      }

                      *buf = 136315906;
                      *&buf[20] = v350;
                      *&buf[18] = 2080;
                      if (!v344)
                      {
                        v349 = "Off";
                      }

                      *&buf[28] = 2080;
                      *&buf[30] = v349;
                      _os_log_impl(&dword_2724B4000, v348, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [SpatialMode %s => %s])", buf, 0x26u);
                    }
                  }

                  v351 = *(this + 1588);
                  if (v351 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v352 = "On";
                    if (v336)
                    {
                      v353 = "On";
                    }

                    else
                    {
                      v353 = "Off";
                    }

                    if (!v344)
                    {
                      v352 = "Off";
                    }

                    CALegacyLog::log(v351, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1097, "SetProperty", "Begin self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [SpatialMode %s => %s])", v353, v352);
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v346, v347);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v354 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v354)
                  {
                    v355 = v354;
                    if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
                    {
                      v356 = "On";
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1101;
                      if (v336)
                      {
                        v357 = "On";
                      }

                      else
                      {
                        v357 = "Off";
                      }

                      *buf = 136315906;
                      *&buf[20] = v357;
                      *&buf[18] = 2080;
                      if (!v344)
                      {
                        v356 = "Off";
                      }

                      *&buf[28] = 2080;
                      *&buf[30] = v356;
                      _os_log_impl(&dword_2724B4000, v355, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [SpatialMode %s => %s ]", buf, 0x26u);
                    }
                  }

                  v358 = *(this + 1588);
                  if (v358 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    if (v336)
                    {
                      v359 = "On";
                    }

                    else
                    {
                      v359 = "Off";
                    }

                    CALegacyLog::log(v358, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1101, "SetProperty", "End self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [SpatialMode %s => %s ]", v359);
                  }
                }
              }

              goto LABEL_1630;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1706;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1074;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(SpatialHeadTrackingConfiguration)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v562 = MEMORY[0x277D86220];
            goto LABEL_1705;
          }

          if (a2 == 1953915762)
          {
            if (v6 == 8)
            {
              v128 = *v7;
              if (vabdd_f64(*v7, *(this + 554)) > 0.000000001)
              {
                v129 = (this + 2216);
                v130 = v128;
                *(this + 554) = v130;
                VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_vocoder_sample_rate", 2, this + 554, v48);
                v131 = VPLogScope(void)::once;
                if ((v573[280] & 1) == 0)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v132 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v132)
                  {
                    v133 = v132;
                    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1384;
                      _os_log_impl(&dword_2724B4000, v133, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_PrimaryCodecSampleRate)", buf, 0x12u);
                    }
                  }

                  v134 = *(this + 1588);
                  if (v134 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v134, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1384, "SetProperty", "Begin self-reinit (kVPProperty_PrimaryCodecSampleRate)");
                  }

                  if (*(this + 485) == 1)
                  {
                    VoiceProcessorV2::InitializeDLP(this);
                  }

                  v135 = *(this + 129);
                  v136 = *(this + 114);
                  if (*(this + 484) == 1)
                  {
                    (*(*this + 240))(this);
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v137 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v137)
                  {
                    v138 = v137;
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1392;
                      _os_log_impl(&dword_2724B4000, v138, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_PrimaryCodecSampleRate)", buf, 0x12u);
                    }
                  }

                  v139 = *(this + 1588);
                  if (v139 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v139, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1392, "SetProperty", "End self-reinit (kVPProperty_PrimaryCodecSampleRate)");
                  }

                  LODWORD(__p[0]) = *(this + 129);
                  v140 = *(this + 114);
                  *v584 = v140;
                  if (v135 != LODWORD(__p[0]) || v136 != v140)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v141 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v141)
                    {
                      v142 = v141;
                      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136316418;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1400;
                        *&buf[18] = 1024;
                        *&buf[20] = v135;
                        *&buf[24] = 1024;
                        *&buf[26] = __p[0];
                        *&buf[30] = 2048;
                        *&buf[32] = v136;
                        *&buf[40] = 2048;
                        *&buf[42] = v140;
                        _os_log_impl(&dword_2724B4000, v142, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: re-initializing speech enhancer; old ul blk sz = %u; new ul blk size = %u; old ul sr = %lf; new ul sr = %lf", buf, 0x32u);
                      }
                    }

                    v143 = *(this + 1588);
                    if (v143 && ((*v573 & 1) != 0 || v573[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v143, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1400, "SetProperty", "setproperty: re-initializing speech enhancer; old ul blk sz = %u; new ul blk size = %u; old ul sr = %lf; new ul sr = %lf", v135, LODWORD(__p[0]), v136, v140);
                    }

                    if ((*(this + 8864) & 0x80) != 0)
                    {
                      AUPropAndParamHelper::AddItemToAUPropsList(this + 1396, 0x3EBu, 0, 0, 8uLL, v584, 1);
                      AUPropAndParamHelper::AddItemToAUPropsList(this + 1396, 0x3ECu, 0, 0, 4uLL, __p, 1);
                      VoiceProcessorV2::InstantiateAndConfigureEffectAU(this, 7u, 0);
                    }
                  }

                  v131 = VPLogScope(void)::once;
                }

                if (v131 != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v144 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v144)
                {
                  v145 = v144;
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                  {
                    v146 = *v129;
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1422;
                    *&buf[18] = 2048;
                    *&buf[20] = v146;
                    _os_log_impl(&dword_2724B4000, v145, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: primary vocoder sample rate = %f ", buf, 0x1Cu);
                  }
                }

                v147 = *(this + 1588);
                if (v147 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v147, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1422, "SetProperty", "setproperty: primary vocoder sample rate = %f ", *v129);
                }

                if (*v573 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1953915762);
                }
              }

              goto LABEL_1630;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1706;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1374;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(Float64)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v562 = MEMORY[0x277D86220];
            goto LABEL_1705;
          }

          goto LABEL_1182;
        }

        if (v6 == 4)
        {
          v392 = (*(*this + 112))(this);
          if (v392 >= 6)
          {
            v393 = *v7;
            v394 = *v7 != 0;
            if (*(this + 2261) != v394)
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v395 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v395)
              {
                v396 = v395;
                if (os_log_type_enabled(v395, OS_LOG_TYPE_DEFAULT))
                {
                  v397 = "false";
                  v398 = *(this + 2261);
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1057;
                  if (v398)
                  {
                    v399 = "true";
                  }

                  else
                  {
                    v399 = "false";
                  }

                  *buf = 136315906;
                  if (v393)
                  {
                    v397 = "true";
                  }

                  *&buf[18] = 2080;
                  *&buf[20] = v399;
                  *&buf[28] = 2080;
                  *&buf[30] = v397;
                  _os_log_impl(&dword_2724B4000, v396, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of spatial chat = [%s], new state of spatial chat = [%s]", buf, 0x26u);
                }
              }

              v400 = *(this + 1588);
              if (v400 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v401 = "false";
                if (*(this + 2261))
                {
                  v402 = "true";
                }

                else
                {
                  v402 = "false";
                }

                if (v393)
                {
                  v401 = "true";
                }

                CALegacyLog::log(v400, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1057, "SetProperty", "setproperty: current state of spatial chat = [%s], new state of spatial chat = [%s]", v402, v401);
              }

              *(this + 2261) = v394;
              if (*v573 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1936744803);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v403 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v403)
              {
                v406 = v403;
                if (os_log_type_enabled(v403, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1060;
                  _os_log_impl(&dword_2724B4000, v406, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_EnableSpatialChat)", buf, 0x12u);
                }
              }

              v407 = *(this + 1588);
              if (v407 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v407, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1060, "SetProperty", "Begin self-reinit (kVPProperty_EnableSpatialChat)");
              }

              VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v404, v405);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v408 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v408)
              {
                v409 = v408;
                if (os_log_type_enabled(v408, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1062;
                  _os_log_impl(&dword_2724B4000, v409, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_EnableSpatialChat)", buf, 0x12u);
                }
              }

              v410 = *(this + 1588);
              if (v410 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v410, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1062, "SetProperty", "End self-reinit (kVPProperty_EnableSpatialChat)");
              }
            }

            goto LABEL_1630;
          }

          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v439 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
          if (v439)
          {
            v440 = v439;
            if (os_log_type_enabled(v439, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1067;
              *&buf[18] = 1024;
              *&buf[20] = v392;
              _os_log_impl(&dword_2724B4000, v440, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> setproperty: spatial chat for vp version = %u is not supported", buf, 0x18u);
            }
          }

          v5 = 561406316;
          v441 = *(this + 1588);
          if (v441 && ((*v573 & 1) != 0 || v573[1] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v441, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1067, "SetProperty", "setproperty: spatial chat for vp version = %u is not supported", v392);
          }

          goto LABEL_1253;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1706;
        }

        *buf = 136315906;
        *&buf[4] = "vpProperties.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1048;
        *&buf[18] = 2080;
        *&buf[20] = "inDataSize == sizeof(UInt32)";
        *&buf[28] = 2080;
        *&buf[30] = "BadPropertySize";
        v562 = MEMORY[0x277D86220];
      }

      else
      {
        v70 = this;
        if (a2 > 1768514914)
        {
          v112 = v573;
          if (a2 == 1768514915)
          {
            if (v6 > 3)
            {
              v388 = *v7;
              VoiceProcessorV2::SetEmergencyCallStatus(this, *v7 != 0);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v389 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v389)
              {
                v390 = v389;
                if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1538;
                  *&buf[18] = 1024;
                  *&buf[20] = v388 != 0;
                  _os_log_impl(&dword_2724B4000, v390, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: is in emergency call = %u", buf, 0x18u);
                }
              }

              v391 = *(this + 1588);
              if (v391 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v391, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1538, "SetProperty", "setproperty: is in emergency call = %u", v388 != 0);
              }

              goto LABEL_1630;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1706;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1533;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(UInt32)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v562 = MEMORY[0x277D86220];
            goto LABEL_1705;
          }

          if (a2 != 1835361379)
          {
            if (a2 == 1836082532)
            {
              if (!VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(v47))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v433 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v433)
                {
                  v434 = v433;
                  if (os_log_type_enabled(v433, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1138;
                    _os_log_impl(&dword_2724B4000, v434, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Voice isolation not supported, ignoring incoming property", buf, 0x12u);
                  }
                }

                v435 = *(this + 1588);
                if (v435 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v435, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1138, "SetProperty", "Voice isolation not supported, ignoring incoming property");
                }

                goto LABEL_1630;
              }

              if (v6 == 4)
              {
                v113 = *v7;
                v114 = *v7 != 0;
                v115 = v573;
                if (*(this + 2262) != v114)
                {
                  v116 = this;
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v117 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v117)
                  {
                    v118 = v117;
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                    {
                      v119 = "false";
                      v120 = *(this + 2262);
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1124;
                      if (v120)
                      {
                        v121 = "true";
                      }

                      else
                      {
                        v121 = "false";
                      }

                      *buf = 136315906;
                      if (v113)
                      {
                        v119 = "true";
                      }

                      *&buf[18] = 2080;
                      *&buf[20] = v121;
                      *&buf[28] = 2080;
                      *&buf[30] = v119;
                      _os_log_impl(&dword_2724B4000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of media playback on external device = [%s], new state of media playback on external device = [%s]", buf, 0x26u);
                    }
                  }

                  v122 = *(this + 1588);
                  if (v122 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v123 = "false";
                    if (*(this + 2262))
                    {
                      v124 = "true";
                    }

                    else
                    {
                      v124 = "false";
                    }

                    if (v113)
                    {
                      v123 = "true";
                    }

                    CALegacyLog::log(v122, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1124, "SetProperty", "setproperty: current state of media playback on external device = [%s], new state of media playback on external device = [%s]", v124, v123);
                  }

                  *(this + 2262) = v114;
                  if (*v573 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1836082532);
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v125 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v125)
                  {
                    v126 = v125;
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v573[687])
                      {
                        v127 = 0;
                      }

                      else if (*(this + 2262))
                      {
                        v127 = 2;
                      }

                      else if (*(this + 2288) == 1)
                      {
                        v116 = this;
                        v127 = VoiceProcessorV2::GetAutomaticChatFlavor(this);
                        v115 = v573;
                      }

                      else
                      {
                        v115 = v573;
                        v127 = *(v573 + 655);
                        v116 = this;
                      }

                      std::to_string(v584, v127);
                      v549 = v584[23] >= 0 ? v584 : *v584;
                      *buf = 136315650;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1129;
                      *&buf[18] = 2080;
                      *&buf[20] = v549;
                      _os_log_impl(&dword_2724B4000, v126, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: chat flavor value changed to = [%s]", buf, 0x1Cu);
                      if ((v584[23] & 0x80000000) != 0)
                      {
                        operator delete(*v584);
                      }
                    }
                  }

                  v550 = *(v116 + 1588);
                  if (v550 && ((*v115 & 1) != 0 || v115[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v551 = VPLogScope(void)::scope;
                    if (v115[687])
                    {
                      v552 = 0;
                    }

                    else if (*(v116 + 2262))
                    {
                      v552 = 2;
                    }

                    else if (*(v116 + 2288) == 1)
                    {
                      v552 = VoiceProcessorV2::GetAutomaticChatFlavor(v116);
                    }

                    else
                    {
                      v552 = *(v115 + 655);
                    }

                    std::to_string(buf, v552);
                    if (buf[23] >= 0)
                    {
                      v553 = buf;
                    }

                    else
                    {
                      v553 = *buf;
                    }

                    CALegacyLog::log(v550, 3, v551, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1129, "SetProperty", "setproperty: chat flavor value changed to = [%s]", v553);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v554 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v554)
                  {
                    v557 = v554;
                    if (os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1131;
                      _os_log_impl(&dword_2724B4000, v557, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_MediaPlaybackOnExternalDevice)", buf, 0x12u);
                    }
                  }

                  v558 = *(v116 + 1588);
                  if (v558 && ((*v115 & 1) != 0 || v115[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v558, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1131, "SetProperty", "Begin self-reinit (kVPProperty_MediaPlaybackOnExternalDevice)");
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(v116, 0, v555, v556);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v559 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v559)
                  {
                    v560 = v559;
                    if (os_log_type_enabled(v559, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1134;
                      _os_log_impl(&dword_2724B4000, v560, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_MediaPlaybackOnExternalDevice)", buf, 0x12u);
                    }
                  }

                  v561 = *(v116 + 1588);
                  if (v561 && ((*v115 & 1) != 0 || v115[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v561, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1134, "SetProperty", "End self-reinit (kVPProperty_MediaPlaybackOnExternalDevice)");
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1116;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              goto LABEL_1705;
            }

            goto LABEL_1182;
          }

          if (v6 == 4)
          {
            v316 = (*(*this + 112))(this);
            if (v316 < 3)
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v436 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
              if (v436)
              {
                v437 = v436;
                if (os_log_type_enabled(v436, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1043;
                  *&buf[18] = 1024;
                  *&buf[20] = v316;
                  _os_log_impl(&dword_2724B4000, v437, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> setproperty: media chat for vp version = %u is not supported", buf, 0x18u);
                }
              }

              v438 = *(this + 1588);
              if (v438 && ((*v573 & 1) != 0 || v573[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v438, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1043, "SetProperty", "setproperty: media chat for vp version = %u is not supported", v316);
              }

              goto LABEL_1630;
            }

            if (_os_feature_enabled_impl())
            {
              if ((*(*this + 112))(this) > 9 || (v317 = *(this + 20), v317 == 2) || v317 == 4)
              {
                v318 = *v7;
                v319 = *v7 != 0;
                if (*(this + 2260) != v319)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v320 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v320)
                  {
                    v321 = v320;
                    if (os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
                    {
                      v322 = "false";
                      v323 = *(this + 2260);
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1027;
                      if (v323)
                      {
                        v324 = "true";
                      }

                      else
                      {
                        v324 = "false";
                      }

                      *buf = 136315906;
                      if (v318)
                      {
                        v322 = "true";
                      }

                      *&buf[18] = 2080;
                      *&buf[20] = v324;
                      *&buf[28] = 2080;
                      *&buf[30] = v322;
                      _os_log_impl(&dword_2724B4000, v321, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of media chat = [%s], new state of media chat = [%s]", buf, 0x26u);
                    }
                  }

                  v325 = *(this + 1588);
                  if (v325 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v70 = this;
                    v326 = "false";
                    if (*(this + 2260))
                    {
                      v327 = "true";
                    }

                    else
                    {
                      v327 = "false";
                    }

                    if (v318)
                    {
                      v326 = "true";
                    }

                    CALegacyLog::log(v325, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1027, "SetProperty", "setproperty: current state of media chat = [%s], new state of media chat = [%s]", v327, v326);
                    v112 = v573;
                  }

                  *(v70 + 2260) = v319;
                  if (*v112 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(v70, 1835361379);
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v328 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v328)
                  {
                    v331 = v328;
                    if (os_log_type_enabled(v328, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1031;
                      _os_log_impl(&dword_2724B4000, v331, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_EnableMediaChat)", buf, 0x12u);
                    }
                  }

                  v332 = *(v70 + 1588);
                  if (v332 && ((*v112 & 1) != 0 || v112[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v70 = this;
                    CALegacyLog::log(v332, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1031, "SetProperty", "Begin self-reinit (kVPProperty_EnableMediaChat)");
                    v112 = v573;
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(v70, 0, v329, v330);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v333 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v333)
                  {
                    v334 = v333;
                    if (os_log_type_enabled(v333, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1033;
                      _os_log_impl(&dword_2724B4000, v334, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_EnableMediaChat)", buf, 0x12u);
                    }
                  }

                  v335 = *(v70 + 1588);
                  if (v335 && ((*v112 & 1) != 0 || v112[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v335, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1033, "SetProperty", "End self-reinit (kVPProperty_EnableMediaChat)");
                  }
                }

                goto LABEL_1630;
              }

              if (_os_feature_enabled_impl())
              {
                v487 = *v7;
                v488 = *v7 != 0;
                if (*(this + 2264) != v488)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v489 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v489)
                  {
                    v490 = v489;
                    if (os_log_type_enabled(v489, OS_LOG_TYPE_DEFAULT))
                    {
                      v491 = "false";
                      v492 = *(this + 2264);
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 970;
                      if (v492)
                      {
                        v493 = "true";
                      }

                      else
                      {
                        v493 = "false";
                      }

                      *buf = 136315906;
                      if (v487)
                      {
                        v491 = "true";
                      }

                      *&buf[18] = 2080;
                      *&buf[20] = v493;
                      *&buf[28] = 2080;
                      *&buf[30] = v491;
                      _os_log_impl(&dword_2724B4000, v490, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of media chat = [%s], new state of media chat = [%s]", buf, 0x26u);
                    }
                  }

                  v494 = *(this + 1588);
                  if (v494 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v495 = "false";
                    if (*(this + 2264))
                    {
                      v496 = "true";
                    }

                    else
                    {
                      v496 = "false";
                    }

                    if (v487)
                    {
                      v495 = "true";
                    }

                    CALegacyLog::log(v494, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 970, "SetProperty", "setproperty: current state of media chat = [%s], new state of media chat = [%s]", v496, v495);
                  }

                  *(this + 2264) = v488;
                  v497 = (v573 + 683);
                  v498 = *(v573 + 683);
                  v499 = v573[680];
                  if (v487)
                  {
                    v500 = 10;
                  }

                  else
                  {
                    v500 = 0;
                  }

                  *v497 = v500;
                  v573[680] = v488;
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v501 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v501)
                  {
                    v502 = v501;
                    if (os_log_type_enabled(v501, OS_LOG_TYPE_DEFAULT))
                    {
                      v503 = *v497;
                      v504 = v573[680];
                      *buf = 136316418;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 988;
                      *&buf[18] = 1024;
                      *&buf[20] = v498;
                      *&buf[24] = 1024;
                      *&buf[26] = v503;
                      *&buf[30] = 1024;
                      *&buf[32] = v499;
                      *&buf[36] = 1024;
                      *&buf[38] = v504;
                      _os_log_impl(&dword_2724B4000, v502, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current mClientSetDuckingLevel = %u, new value = %u,  current mClientSetEnableDynamicDucking = %d, new value = %d", buf, 0x2Au);
                    }
                  }

                  v505 = *(this + 1588);
                  if (v505 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v505, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 988, "SetProperty", "setproperty: current mClientSetDuckingLevel = %u, new value = %u,  current mClientSetEnableDynamicDucking = %d, new value = %d", v498, *v497, v499, v573[680]);
                  }

                  if ((*(this + 8865) & 0x80) != 0)
                  {
                    *buf = *v497;
                    AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0x6E65706Cu, 0, 0, 4uLL, buf, 1);
                    v506 = *(this + 454);
                    if (v506)
                    {
                      AudioUnitSetProperty(v506, 0x6E65706Cu, 0, 0, buf, 4u);
                    }
                  }

                  if (*v573 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1835361379);
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v507 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v507)
                  {
                    v510 = v507;
                    if (os_log_type_enabled(v507, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1007;
                      _os_log_impl(&dword_2724B4000, v510, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_EnableMediaChat)", buf, 0x12u);
                    }
                  }

                  v511 = *(this + 1588);
                  if (v511 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v511, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1007, "SetProperty", "Begin self-reinit (kVPProperty_EnableMediaChat)");
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v508, v509);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v512 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v512)
                  {
                    v513 = v512;
                    if (os_log_type_enabled(v512, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1010;
                      _os_log_impl(&dword_2724B4000, v513, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_EnableMediaChat)", buf, 0x12u);
                    }
                  }

                  v514 = *(this + 1588);
                  if (v514 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v514, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1010, "SetProperty", "End self-reinit (kVPProperty_EnableMediaChat)");
                  }
                }

                goto LABEL_1630;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v547 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
              if (v547)
              {
                v548 = v547;
                if (os_log_type_enabled(v547, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1016;
                  _os_log_impl(&dword_2724B4000, v548, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> setproperty: feature was not enabled", buf, 0x12u);
                }
              }

              v475 = *(this + 1588);
              if (!v475 || (*v573 & 1) == 0 && v573[1] != 1)
              {
LABEL_1630:
                v49 = 0;
LABEL_1631:
                v5 = 0;
                goto LABEL_1632;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v476 = 1016;
            }

            else
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v473 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
              if (v473)
              {
                v474 = v473;
                if (os_log_type_enabled(v473, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1037;
                  _os_log_impl(&dword_2724B4000, v474, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> setproperty: feature was not enabled", buf, 0x12u);
                }
              }

              v475 = *(this + 1588);
              if (!v475 || (*v573 & 1) == 0 && v573[1] != 1)
              {
                goto LABEL_1630;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v476 = 1037;
            }

            CALegacyLog::log(v475, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", v476, "SetProperty", "setproperty: feature was not enabled");
            goto LABEL_1630;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1706;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 946;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(UInt32)";
          *&buf[28] = 2080;
          *&buf[30] = "BadPropertySize";
          v562 = MEMORY[0x277D86220];
        }

        else
        {
          switch(a2)
          {
            case 1701868402:
              if (v6 >= 4)
              {
                v49 = 0;
                v5 = 0;
                *(this + 4049) = *v7;
                goto LABEL_1632;
              }

              goto LABEL_1168;
            case 1718384242:
              if (v6 > 3)
              {
                v307 = *v7;
                v5 = (*(*this + 568))(this, v307);
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v308 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v308)
                {
                  v309 = v308;
                  if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1527;
                    *&buf[18] = 1024;
                    *&buf[20] = v307;
                    _os_log_impl(&dword_2724B4000, v309, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: preferred chat flavor = %u", buf, 0x18u);
                  }
                }

                v310 = *(this + 1588);
                if (v310 && ((*v573 & 1) != 0 || v573[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v310, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1527, "SetProperty", "setproperty: preferred chat flavor = %u", v307);
                }

LABEL_1253:
                v49 = 0;
                goto LABEL_1632;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1523;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              break;
            case 1751214436:
              if (v6 == 8)
              {
                v71 = *v7;
                if (v71)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v72 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v72)
                  {
                    v73 = v72;
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                    {
                      v74 = applesauce::CF::StringRef::operator->(this + 274);
                      applesauce::CF::convert_to<std::string,0>(v584, *v74);
                      v75 = v584[23] >= 0 ? v584 : *v584;
                      *buf = 136315650;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 2029;
                      *&buf[18] = 2080;
                      *&buf[20] = v75;
                      _os_log_impl(&dword_2724B4000, v73, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Setting host application display ID to %s", buf, 0x1Cu);
                      if ((v584[23] & 0x80000000) != 0)
                      {
                        operator delete(*v584);
                      }
                    }
                  }

                  v76 = *(this + 1588);
                  if (v76 && ((*v573 & 1) != 0 || v573[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v77 = VPLogScope(void)::scope;
                    v78 = applesauce::CF::StringRef::operator->(this + 274);
                    applesauce::CF::convert_to<std::string,0>(buf, *v78);
                    if (buf[23] >= 0)
                    {
                      v79 = buf;
                    }

                    else
                    {
                      v79 = *buf;
                    }

                    CALegacyLog::log(v76, 3, v77, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2029, "SetProperty", "Setting host application display ID to %s", v79);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  v80 = CFStringCreateCopy(*MEMORY[0x277CBECE8], v71);
                  applesauce::CF::StringRef::StringRef(buf, v80);
                  v81 = *(this + 274);
                  *(this + 274) = *buf;
                  *buf = v81;
                  applesauce::CF::StringRef::~StringRef(buf);
                  goto LABEL_1630;
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v442 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                if (v442)
                {
                  v443 = v442;
                  if (os_log_type_enabled(v442, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 2033;
                    _os_log_impl(&dword_2724B4000, v443, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Failed to set null host application display DI", buf, 0x12u);
                  }
                }

                v444 = *(this + 1588);
                if (!v444 || (*v573 & 1) == 0 && v573[1] != 1)
                {
                  v5 = 0;
                  v49 = 1;
                  goto LABEL_1632;
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v49 = 1;
                CALegacyLog::log(v444, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2033, "SetProperty", "Failed to set null host application display DI");
                goto LABEL_1631;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2025;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFStringRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v562 = MEMORY[0x277D86220];
              break;
            default:
              goto LABEL_1182;
          }
        }
      }

LABEL_1705:
      _os_log_impl(&dword_2724B4000, v562, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
      goto LABEL_1706;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v37 = os_log_type_enabled(*VPLogScope(void)::scope, OS_LOG_TYPE_DEBUG);
    v38 = VPLogScope(void)::scope;
    if (v37)
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v39 = (*v38 ? *v38 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          vp::utility::encode_to_base_64(buf, v7, v6);
          v40 = buf[24];
          if (buf[24] == 1)
          {
            *__p = *buf;
            v582 = *&buf[16];
            memset(buf, 0, 24);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "???");
          }

          v148 = __p;
          if (SHIBYTE(v582) < 0)
          {
            v148 = __p[0];
          }

          *v584 = 136315650;
          *&v584[4] = "vpProperties.cpp";
          *&v584[12] = 1024;
          *&v584[14] = 806;
          *&v584[18] = 2080;
          *&v584[20] = v148;
          _os_log_impl(&dword_2724B4000, v39, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> setproperty: spatial metadata = %s", v584, 0x1Cu);
          if (SHIBYTE(v582) < 0)
          {
            operator delete(__p[0]);
          }

          if (v40 && (buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }
      }

      v149 = *(this + 1588);
      if (v149 && ((*v573 & 1) != 0 || v573[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v150 = VPLogScope(void)::scope;
        vp::utility::encode_to_base_64(buf, v7, v6);
        v151 = buf[24];
        if (buf[24] == 1)
        {
          *v584 = *buf;
          *&v584[16] = *&buf[16];
          memset(buf, 0, 24);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v584, "???");
        }

        v152 = v584;
        if (v584[23] < 0)
        {
          v152 = *v584;
        }

        CALegacyLog::log(v149, 4, v150, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 806, "SetProperty", "setproperty: spatial metadata = %s", v152);
        if ((v584[23] & 0x80000000) != 0)
        {
          operator delete(*v584);
        }

        if (v151 && (buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v62 = (*v38 ? *v38 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 808;
          _os_log_impl(&dword_2724B4000, v62, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> setproperty: spatial metadata", buf, 0x12u);
        }
      }

      v63 = *(this + 1588);
      if (v63 && ((*v573 & 1) != 0 || v573[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v63, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 808, "SetProperty", "setproperty: spatial metadata");
      }
    }

    os_unfair_lock_lock(this + 4075);
    v153 = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate((this + 16296));
    v154 = this + 16304;
    if ((*(this + v153 + 16304) & 1) == 0)
    {
      __break(1u);
LABEL_1718:
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
LABEL_1474:
      v518 = this;
      CALegacyLog::log(v7, 3, v6[115], "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1615, "SetProperty", "[VolumeLimit] Setting target LKFS on LDNM to %f", v4);
LABEL_1475:
      AudioUnitSetParameter(*(v518 + 485), 2u, 0, 0, v4, 0);
      goto LABEL_1630;
    }

    v155 = v153;
    v156 = this;
    v157 = this + 16312;
    v158 = this + 32 * v153 + 16312;
    buf[0] = 0;
    buf[24] = 0;
    v159 = v158[24];
    if (v159 == 1)
    {
      memset(buf, 0, 24);
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(buf, *v158, *(v158 + 1), *(v158 + 1) - *v158);
    }

    v160 = v6;
    v161 = v155 == 0;
    if (v155)
    {
      v162 = v154;
    }

    else
    {
      v162 = v154 + 1;
    }

    v163 = &v157[32 * v161];
    if (*v162 == 1)
    {
      if (v163[24] == 1)
      {
        v164 = *v163;
        if (*v163)
        {
          *(v163 + 1) = v164;
          operator delete(v164);
        }
      }
    }

    else
    {
      v154[v161] = 1;
    }

    *v163 = 0;
    v163[24] = 0;
    if (v159)
    {
      *v163 = *buf;
      *(v163 + 2) = *&buf[16];
      memset(buf, 0, 24);
    }

    else
    {
      *v163 = 0;
      *(v163 + 1) = 0;
      *(v163 + 2) = 0;
    }

    v163[24] = 1;
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v163, v7, v7 + v160, v160);
    caulk::concurrent::details::lf_read_sync_write_impl::end_mutate((v156 + 16296));
    v154[v155] = 0;
    if (v158[24] == 1)
    {
      v165 = *v158;
      if (*v158)
      {
        *(v158 + 1) = v165;
        operator delete(v165);
      }
    }

    os_unfair_lock_unlock(v156 + 4075);
    atomic_fetch_add(v156 + 2047, 1uLL);
    if (*v573)
    {
      if (*(v156 + 1906))
      {
        *buf = 0;
        VoiceProcessorV2::PListCopyDictionaryForWrite(v156, buf);
        v166 = *buf;
        if (*buf)
        {
          v167 = CFDataCreate(0, v7, v160);
          v168 = v167;
          if (!v167)
          {
            v570 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v570);
          }

          *v584 = v167;
          v169 = CFGetTypeID(v167);
          if (v169 != CFDataGetTypeID())
          {
            v571 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v571, "Could not construct");
          }

          __p[0] = v168;
          VPGetPropsPListStringForKey(&cf, 70);
          WriteItemToDictionary(buf, &cf, 4, 8uLL, __p);
          if (cf)
          {
            CFRelease(cf);
          }

          CFRelease(v166);
          *buf = 0;
          if (*v584)
          {
            CFRelease(*v584);
          }
        }
      }
    }

    return 0;
  }

  if (a4 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "vpProperties.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 817;
      *&buf[18] = 2080;
      *&buf[20] = "inDataSize == sizeof(Float32)";
      *&buf[28] = 2080;
      *&buf[30] = "BadPropertySize";
      v545 = MEMORY[0x277D86220];
LABEL_1584:
      _os_log_impl(&dword_2724B4000, v545, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
    }

    return 561211770;
  }

  v5 = 0;
  v41 = *theDict;
  v42 = COERCE_FLOAT(atomic_load(this + 567));
  if (v41 <= 1.0)
  {
    v43 = v42;
    if (v41 >= 0.0 && v41 != v42)
    {
      v45 = *theDict;
      while (1)
      {
        v46 = v43;
        atomic_compare_exchange_strong(this + 567, &v46, v45);
        if (LODWORD(v46) == LODWORD(v43))
        {
          break;
        }

        v43 = v46;
        sched_yield();
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v64 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v65 = (*v64 ? *v64 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = COERCE_FLOAT(atomic_load(this + 567));
          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 829;
          *&buf[18] = 2048;
          *&buf[20] = v43;
          *&buf[28] = 2048;
          *&buf[30] = v66;
          _os_log_impl(&dword_2724B4000, v65, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: media chat old volume:[%f], new volume:[%f]", buf, 0x26u);
        }
      }

      v67 = *(this + 1588);
      if (v67 && ((*v10 & 1) != 0 || v10[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v68 = VPLogScope(void)::scope;
        v69 = COERCE_FLOAT(atomic_load(this + 567));
        CALegacyLog::log(v67, 3, v68, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 829, "SetProperty", "setproperty: media chat old volume:[%f], new volume:[%f]", v43, v69);
        v10 = v573;
      }

      if (*v10 == 1)
      {
        VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1937141091);
      }

      return 0;
    }
  }

  return v5;
}

void sub_272588FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, int a38, __int16 a39, int a40, int a41, char a42, char a43, char a44)
{
  atomic_fetch_add((v44 + 2496), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a29);
  _Unwind_Resume(a1);
}

void AudioIssueDetectorClientSetUplinkMute(uint64_t a1)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_182);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v2 = AudioIssueDetectorLibraryLoader(void)::libSym;

    v2(a1);
  }
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_272589648(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::ArrayRef::from_get_noexcept(applesauce::CF::ArrayRef *this, CFTypeRef cf)
{
  if (cf && (CFRetain(cf), v4 = CFGetTypeID(cf), v4 != CFArrayGetTypeID()))
  {
    *this = 0;
    CFRelease(cf);
  }

  else
  {
    *this = cf;
  }
}

void *applesauce::CF::ArrayRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

const __CFArray *applesauce::CF::ArrayRef_proxy::get_size(const __CFArray *this)
{
  if (this)
  {
    return CFArrayGetCount(this);
  }

  return this;
}

void *applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(void *a1, CFArrayRef theArray)
{
  *a1 = theArray;
  a1[1] = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  a1[2] = Count;
  return a1;
}

BOOL applesauce::CF::details::has_key<char const(&)[25]>(const __CFDictionary *a1)
{
  v2 = CFStringCreateWithBytes(0, "trim_gain_data_source_id", 24, 0x8000100u, 0);
  cf = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = CFDictionaryContainsKey(a1, v2);
  CFRelease(cf);
  return v3 != 0;
}

void sub_272589854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL applesauce::CF::details::has_key<char const(&)[13]>(const __CFDictionary *a1)
{
  v2 = CFStringCreateWithBytes(0, "trim_gain_db", 12, 0x8000100u, 0);
  cf = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = CFDictionaryContainsKey(a1, v2);
  CFRelease(cf);
  return v3 != 0;
}

void sub_27258993C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

float applesauce::CF::details::find_at_key<float,char const(&)[13]>(const __CFDictionary *a1)
{
  v2 = CFStringCreateWithBytes(0, "trim_gain_db", 12, 0x8000100u, 0);
  cf = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v2);
  CFRelease(cf);
  if (!Value)
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(v6);
  }

  return applesauce::CF::convert_to<float,0>(Value);
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

const void **applesauce::CF::ArrayRef::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void *CADeprecated::CAAutoFree<long long>::allocBytes(void **a1, size_t size)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  result = malloc_type_malloc(size, 0x72B6561FuLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = result;
  return result;
}

uint64_t *std::vector<long long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_272589D10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AudioIssueDetectorClientUpdateReportingSessions(uint64_t a1, uint64_t a2)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_182);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v4 = AudioIssueDetectorLibraryLoader(void)::libSym;

    v4(a1, a2);
  }
}

uint64_t AudioStatisticsCopyConfiguration(uint64_t a1)
{
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_209);
  }

  if (!AudioStatisticsLibraryLoader(void)::libSym)
  {
    return 0;
  }

  v2 = AudioStatisticsLibraryLoader(void)::libSym;

  return v2(a1);
}

void *applesauce::CF::DictionaryRef::from_create(void *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
    if (v2 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_272589EAC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(void *this, const applesauce::CF::DictionaryRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

void applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(void *a1, CFDictionaryRef theDict, const void *a3, void *a4)
{
  v6 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFStringGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

void *applesauce::CF::StringRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

const void **applesauce::CF::StringRef::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void *vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::Block<void({block_pointer} const&)(AUVoiceIOSpeechActivityEvent)>(void *a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return a1;
}

void std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }
}

void sub_27258A190(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::details::at_key<__CFString const*>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryGetValue(theDict, a2);
    }
  }

  return result;
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_4111()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_4128()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

uint64_t VoiceProcessorV2::SetupDownlink_SPP_SCi_J4xx(uint64_t this)
{
  v1 = this;
  if ((*(this + 76) - 25) <= 1 && (this = _os_feature_enabled_impl(), this))
  {
    v2 = *(v1 + 8864) & 0xFEFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = *(v1 + 8864) | 0x100000000000000;
  }

  v3 = *(v1 + 364);
  v4 = v2 & 0xDFBC798FFFFFFFFFLL | 0x20000000000;
  v5 = v2 | 0x60000000000;
  v6 = v3 > 1;
  if (v3 <= 1)
  {
    v5 = v4;
  }

  v7 = v5 & 0xDFBC7F8FFFFFFFFFLL;
  v8 = 0x41000000000000;
  if (v6)
  {
    v8 = 0x43000000000000;
  }

  *(v1 + 8864) = v7 | v8;
  return this;
}

char *VoiceProcessorV2::SetHwMicAndEpMicChannelConfig(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  VPChannelConfig::SetChConfig((a1 + 108), *a2, (a2 + 4), 4u);
  result = VPChannelConfig::SetChConfig((a1 + 114), *a3, (a3 + 4), a4);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a1[114];
  v12 = a1[108];
  do
  {
    if (((1 << v8) & v11) == 0 || ((1 << v8) & v12) == 0)
    {
      v9 += ((v12 | v11) >> v8) & 1;
    }

    else
    {
      v10 |= 1 << v9++;
    }

    ++v8;
  }

  while (v8 != 32);
  a1[107] = v10;
  return result;
}

void VoiceProcessorV2::DispatchVPRouteSetup(int8x16_t *this, unsigned int a2, int a3)
{
  v147[2] = *MEMORY[0x277D85DE8];
  *v135 = kVP_MicConfigPrimaryMicOnly;
  *&v135[16] = unk_27275A500;
  v136 = xmmword_27275A510;
  v137 = unk_27275A520;
  *v138 = 0;
  v139 = 0;
  *&v138[4] = kVP_MicConfigPrimaryMicOnly;
  memset(&v138[20], 0, 48);
  *&buf[4] = kVP_MicConfigPrimaryMicOnly;
  v141 = *v138;
  memset(&buf[20], 0, 48);
  *&v145 = unk_27275A52C;
  v144 = *&v138[48];
  v143 = *&v138[32];
  v142 = *&v138[16];
  *(&v145 + 1) = 0x100000000;
  *buf = 1;
  v146 = 21;
  v118 = 0;
  v119 = 0;
  v117 = &v118;
  std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,ProcessingChainInfo> const&>(&v117, &v118, 1u, buf);
  v5 = &this[992].i8[9];
  if (a2 > 23)
  {
    if (a2 > 0x30)
    {
      goto LABEL_3;
    }

    if (((1 << a2) & 0x1FC000000000) != 0)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      if (this[141].i8[4])
      {
        v9 = 29;
      }

      else
      {
        v9 = 21;
      }

      *v135 = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
      *&v135[16] = *algn_27275A29C;
      v136 = xmmword_27275A2AC;
      v137 = unk_27275A2BC;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
      memset(&v138[20], 0, 48);
      *&buf[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
      v141 = *v138;
      memset(&buf[20], 0, 48);
      *&v145 = unk_27275A2C8;
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *(&v145 + 1) = 0x100000000;
      *buf = 1;
      v146 = v9;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>(&v117, buf);
    }

    if (((1 << a2) & 0x600000000000) != 0)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      if (this[141].i8[4])
      {
        v14 = 29;
      }

      else
      {
        v14 = 26;
      }

      *v135 = kVP_MicConfigPrimaryMicOnly;
      *&v135[16] = unk_27275A500;
      v136 = xmmword_27275A510;
      v137 = unk_27275A520;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = kVP_MicConfigPrimaryMicOnly;
      memset(&v138[20], 0, 48);
      *&buf[4] = kVP_MicConfigPrimaryMicOnly;
      v141 = *v138;
      memset(&buf[20], 0, 48);
      v145 = unk_27275A52C;
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *buf = 0;
      v146 = v14;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>(&v117, buf);
    }

    if (((1 << a2) & 0x1800000000000) == 0)
    {
LABEL_3:
      if (a2 - 24 < 7)
      {
        std::__tree<unsigned int>::destroy(v118);
        v118 = 0;
        v119 = 0;
        v117 = &v118;
        if (this[141].i8[4])
        {
          v10 = 29;
        }

        else
        {
          v10 = 21;
        }

        *v135 = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J71(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kJ71_MicConfigTop;
        *&v135[16] = unk_27275A478;
        v136 = xmmword_27275A488;
        v137 = unk_27275A498;
        *v138 = 0;
        v139 = 0;
        *&v138[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J71(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kJ71_MicConfigTop;
        memset(&v138[20], 0, 48);
        *&v145 = unk_27275A4A4;
        *&buf[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J71(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kJ71_MicConfigTop;
        v141 = *v138;
        memset(&buf[20], 0, 48);
        v144 = *&v138[48];
        v143 = *&v138[32];
        v142 = *&v138[16];
        *(&v145 + 1) = 0x100000001;
        *buf = 1;
        v146 = v10;
        std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>(&v117, buf);
      }

      if (a2 - 31 < 7)
      {
        std::__tree<unsigned int>::destroy(v118);
        v118 = 0;
        v119 = 0;
        v117 = &v118;
        if (this[141].i8[4])
        {
          v6 = 29;
        }

        else
        {
          v6 = 21;
        }

        *v135 = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
        *&v135[16] = *algn_27275A29C;
        v136 = xmmword_27275A2AC;
        v137 = unk_27275A2BC;
        *v138 = 0;
        v139 = 0;
        *&v138[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
        memset(&v138[20], 0, 48);
        *&v145 = unk_27275A2C8;
        *&buf[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
        v141 = *v138;
        memset(&buf[20], 0, 48);
        v144 = *&v138[48];
        v143 = *&v138[32];
        v142 = *&v138[16];
        *(&v145 + 1) = 0x100000000;
        *buf = 1;
        v146 = v6;
        std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>(&v117, buf);
      }

      goto LABEL_51;
    }

    goto LABEL_11;
  }

  if (a2 <= 11)
  {
    if (a2 >= 0xC)
    {
      goto LABEL_51;
    }

    goto LABEL_11;
  }

  if (a2 <= 18)
  {
    if (a2 - 12 < 6)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      if (this[141].i8[4])
      {
        v8 = 29;
      }

      else
      {
        v8 = 21;
      }

      *v135 = kVP_MicConfigBottom;
      *&v135[16] = unk_27275A0C0;
      v136 = xmmword_27275A0D0;
      v137 = unk_27275A0E0;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = kVP_MicConfigBottom;
      memset(&v138[20], 0, 48);
      *&v145 = unk_27275A0EC;
      *&buf[4] = kVP_MicConfigBottom;
      v141 = *v138;
      memset(&buf[20], 0, 48);
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *(&v145 + 1) = 0x100000000;
      *buf = 1;
      v146 = v8;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>(&v117, buf);
    }

    if (a2 != 18)
    {
LABEL_51:
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v15 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
      if (v15)
      {
        v16 = v15;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "vpRouteSetup_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 506;
          *&buf[18] = 1024;
          *&buf[20] = a2;
          _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Unknown Route Type: %d", buf, 0x18u);
        }
      }

      v17 = this[794].i64[0];
      if (v17 && ((*v5 & 1) != 0 || v5[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v17, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpRouteSetup_v2.cpp", 506, "DispatchVPRouteSetup", "Unknown Route Type: %d", a2);
      }

      __assert_rtn("DispatchVPRouteSetup", "vpRouteSetup_v2.cpp", 507, "!Unknown Route Type!");
    }

LABEL_11:
    std::__tree<unsigned int>::destroy(v118);
    v118 = 0;
    v119 = 0;
    v117 = &v118;
    if (this[141].i8[4])
    {
      v7 = 29;
    }

    else
    {
      v7 = 21;
    }

    *v135 = kVP_MicConfigPrimaryMicOnly;
    *&v135[16] = unk_27275A500;
    v136 = xmmword_27275A510;
    v137 = unk_27275A520;
    *v138 = 0;
    v139 = 0;
    *&v138[4] = kVP_MicConfigPrimaryMicOnly;
    memset(&v138[20], 0, 48);
    *&buf[4] = kVP_MicConfigPrimaryMicOnly;
    v141 = *v138;
    memset(&buf[20], 0, 48);
    *&v145 = unk_27275A52C;
    v144 = *&v138[48];
    v143 = *&v138[32];
    v142 = *&v138[16];
    *(&v145 + 1) = 0x100000000;
    *buf = 0;
    v146 = v7;
    std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>(&v117, buf);
  }

  if (a2 <= 20)
  {
    if (a2 == 19)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      v124 = kVP_MicConfigAllThree;
      v125 = unk_27275A588;
      v126 = xmmword_27275A598;
      v127 = unk_27275A5A8;
      v128 = 0;
      v132 = 0;
      v129 = kVP_MicConfigAllThree;
      v130 = unk_27275A588;
      memset(v131, 0, sizeof(v131));
      operator new();
    }

    if (this[141].i8[4] == 1)
    {
      v12 = this[5].i32[3];
      v13 = 30;
      if (v12 != 1986618467)
      {
        if (v12 == 1987012963)
        {
          v13 = 30;
        }

        else
        {
          v13 = 23;
        }
      }
    }

    else
    {
      v13 = 23;
    }

    v18 = v118;
    if (!v118)
    {
      goto LABEL_73;
    }

    v19 = &v118;
    do
    {
      v20 = v18;
      v21 = v19;
      v22 = *(v18 + 7);
      if (v22)
      {
        v19 = v18;
      }

      v18 = v18[v22 == 0];
    }

    while (v18);
    if (v19 == &v118)
    {
      goto LABEL_73;
    }

    if (!v22)
    {
      v20 = v21;
    }

    if (*(v20 + 7) >= 2u)
    {
LABEL_73:
      v19 = &v118;
    }

    *(v19 + 44) = v13;
  }

  else if (a2 - 21 >= 2)
  {
    if (a2 != 23)
    {
      goto LABEL_51;
    }

    v11 = this[5].i32[3];
    if (v11 == 1986618467)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      *v135 = kVP_MicConfigBottomTop;
      *&v135[16] = unk_27275A544;
      v136 = xmmword_27275A554;
      v137 = unk_27275A564;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = kVP_MicConfigBottomTop;
      *&v138[20] = unk_27275A544;
      memset(&v138[36], 0, 32);
      *&buf[4] = kVP_MicConfigBottomTop;
      v141 = *v138;
      memset(&buf[36], 0, 32);
      *&buf[20] = unk_27275A544;
      *&v145 = unk_27275A570;
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *(&v145 + 1) = 0x200000000;
      *buf = 2;
      v146 = 21;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>(&v117, buf);
    }

    if (v11 == 1987012963)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      *v135 = kVP_MicConfigBottomTop;
      *&v135[16] = unk_27275A544;
      v136 = xmmword_27275A554;
      v137 = unk_27275A564;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = kVP_MicConfigBottomTop;
      *&v138[20] = unk_27275A544;
      memset(&v138[36], 0, 32);
      *&buf[4] = kVP_MicConfigBottomTop;
      v141 = *v138;
      memset(&buf[36], 0, 32);
      *&buf[20] = unk_27275A544;
      *&v145 = unk_27275A570;
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *(&v145 + 1) = 0x200000000;
      *buf = 2;
      v146 = 21;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>(&v117, buf);
    }
  }

  this[285].i16[0] = 257;
  v116[0] = 0;
  v116[1] = 0;
  v115 = v116;
  v23 = v117;
  if (v117 == &v118)
  {
    v27 = &this[41].i32[1];
  }

  else
  {
    do
    {
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,ProcessingChainInfo> const&>(&v115, v116, *(v23 + 7), v23 + 28);
      v24 = v23[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v23[2];
          v45 = *v25 == v23;
          v23 = v25;
        }

        while (!v45);
      }

      v23 = v25;
    }

    while (v25 != &v118);
    v26 = v116[0];
    v27 = &this[41].i32[1];
    if (v116[0])
    {
      v28 = *v27;
      v29 = v116;
      v30 = v116[0];
      do
      {
        v31 = v30;
        v32 = v29;
        v33 = *(v30 + 7);
        if (v33 >= v28)
        {
          v29 = v30;
        }

        v30 = v30[v33 < v28];
      }

      while (v30);
      v34 = v116[0];
      if (v29 != v116)
      {
        if (v33 < v28)
        {
          v31 = v32;
        }

        v35 = *(v31 + 7);
        v34 = v116[0];
        v36 = v116;
        v37 = v116[0];
        if (v28 >= v35)
        {
          goto LABEL_273;
        }
      }

      do
      {
        v38 = v34;
        v34 = *v34;
      }

      while (v34);
      if (v38 != v116)
      {
        v39 = *(v38 + 7);
        v36 = v116;
        v37 = v116[0];
        if (!v39)
        {
LABEL_273:
          do
          {
            v40 = v37;
            v41 = v36;
            v42 = *(v37 + 7);
            if (v42 >= v28)
            {
              v36 = v37;
            }

            v37 = v37[v42 < v28];
          }

          while (v37);
          if (v36 == v116 || (v42 >= v28 ? (v43 = v40) : (v43 = v41), v28 < *(v43 + 7)))
          {
            do
            {
              v44 = v26;
              v26 = *v26;
            }

            while (v26);
            if (*(v44 + 7))
            {
              v45 = 1;
            }

            else
            {
              v45 = v44 == v116;
            }

            if (v45)
            {
              v46 = v116;
            }

            else
            {
              v46 = v44;
            }
          }

          else
          {
            v46 = v116;
            do
            {
              v86 = v26;
              v87 = v46;
              v88 = *(v26 + 7);
              if (v88 >= v28)
              {
                v46 = v26;
              }

              v26 = v26[v88 < v28];
            }

            while (v26);
            if (v46 == v116 || (v88 >= v28 ? (v89 = v86) : (v89 = v87), v28 < *(v89 + 7)))
            {
              v46 = v116;
            }
          }

          v90 = *(v46 + 3);
          v91 = *(v46 + 5);
          *&buf[32] = *(v46 + 4);
          *&buf[48] = v91;
          *&buf[64] = *(v46 + 24);
          v92 = *(v46 + 2);
          v93 = *(v46 + 42);
          *v138 = *(v46 + 41);
          v66 = (v46 + 4);
          *buf = v92;
          *&buf[16] = v90;
          v94 = *(v46 + 116);
          v95 = *(v46 + 148);
          v136 = *(v46 + 132);
          v137 = v95;
          *v135 = *(v46 + 100);
          *&v135[16] = v94;
          VoiceProcessorV2::SetHwMicAndEpMicChannelConfig(this, buf, v135, v93);
          v96 = *(v46 + 172);
          this[783].i64[1] = v96;
          switch(v96)
          {
            case 0:
              *buf = this + 293;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              goto LABEL_149;
            case 1:
              v103 = (this->i64[0] + 320);
              goto LABEL_240;
            case 2:
              v106 = vcnt_s8(this[28].u32[2]);
              v106.i16[0] = vaddlv_u8(v106);
              v101 = v106.u32[0];
              v102 = (this->i64[0] + 352);
              goto LABEL_243;
            case 3:
              v105 = vcnt_s8(this[28].u32[2]);
              v105.i16[0] = vaddlv_u8(v105);
              (*(this->i64[0] + 360))(this, v105.u32[0], 0);
              goto LABEL_149;
            case 5:
              v100 = vcnt_s8(this[28].u32[2]);
              v100.i16[0] = vaddlv_u8(v100);
              v101 = v100.u32[0];
              v102 = (this->i64[0] + 368);
              goto LABEL_243;
            case 6:
              *buf = this + 293;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              this[293].i64[0] |= 0x4000000000000000uLL;
              goto LABEL_149;
            case 7:
              *buf = this + 293;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              this[293].i64[1] |= 0x12uLL;
              goto LABEL_149;
            case 8:
              v103 = (this->i64[0] + 336);
              goto LABEL_240;
            case 9:
              v107 = vcnt_s8(this[28].u32[2]);
              v107.i16[0] = vaddlv_u8(v107);
              v101 = v107.u32[0];
              v102 = (this->i64[0] + 376);
              goto LABEL_243;
            case 10:
              *buf = this + 293;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              this[293] = vorrq_s8(this[293], xmmword_272756530);
              goto LABEL_149;
            case 11:
              *buf = this + 293;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              this[293].i64[1] |= 0x20uLL;
              if ((*(this->i64[0] + 112))(this) == 8 || (*(this->i64[0] + 112))(this) == 7)
              {
                this[293].i64[0] |= 0x4000000000000000uLL;
                this[274].i32[3] = 1092616192;
              }

              goto LABEL_149;
            case 12:
              v104 = vcnt_s8(this[28].u32[2]);
              v104.i16[0] = vaddlv_u8(v104);
              v101 = v104.u32[0];
              v102 = (this->i64[0] + 384);
LABEL_243:
              (*v102)(this, v101);
              break;
            case 14:
              v103 = (this->i64[0] + 344);
LABEL_240:
              (*v103)(this);
              break;
            default:
              goto LABEL_149;
          }

          goto LABEL_149;
        }
      }
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v47 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v48 = (*v47 ? *v47 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = this + 2;
      if (this[3].i8[7] < 0)
      {
        v49 = v49->i64[0];
      }

      v50 = this[41].i32[1];
      v51 = this[5].i32[0];
      *buf = 136316162;
      *&buf[4] = "vpRouteSetup_v2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 233;
      *&buf[18] = 2080;
      *&buf[20] = v49;
      *&buf[28] = 1024;
      *&buf[30] = v50;
      *&buf[34] = 1024;
      *&buf[36] = v51;
      _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> _vp <SERIOUS ERROR> %s vp received %d built-in mic channels in mode %d?!!!!!That is Wrong!!!!!! Please file a radar against Audio - DSP Component!!!!!", buf, 0x28u);
    }
  }

  v52 = this[794].i64[0];
  if (v52 && ((*v5 & 1) != 0 || this[992].i8[10] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v53 = this + 2;
    if (this[3].i8[7] < 0)
    {
      v53 = v53->i64[0];
    }

    CALegacyLog::log(v52, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpRouteSetup_v2.cpp", 233, "SetupMicsAndProcessingChain", "_vp <SERIOUS ERROR> %s vp received %d built-in mic channels in mode %d?!!!!!That is Wrong!!!!!! Please file a radar against Audio - DSP Component!!!!!", v53->i8, this[41].i32[1], this[5].i32[0]);
  }

  *&buf[16] = 0;
  *&buf[8] = 0;
  *buf = &buf[8];
  std::to_string(v133, *v27);
  v54 = std::string::insert(v133, 0, "vp received the wrong number of built-in mic channels ", 0x36uLL);
  v55 = *&v54->__r_.__value_.__l.__data_;
  *&v134[16] = *(&v54->__r_.__value_.__l + 2);
  *v134 = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  v56 = std::string::append(v134, " in mode ", 9uLL);
  v57 = *&v56->__r_.__value_.__l.__data_;
  *&v135[16] = *(&v56->__r_.__value_.__l + 2);
  *v135 = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v122, this[5].i32[0]);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = &v122;
  }

  else
  {
    v58 = v122.__r_.__value_.__r.__words[0];
  }

  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v122.__r_.__value_.__l.__size_;
  }

  v60 = std::string::append(v135, v58, size);
  v61 = v60->__r_.__value_.__r.__words[0];
  v147[0] = v60->__r_.__value_.__l.__size_;
  *(v147 + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
  v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  strcpy(__p, "vp_routing_setup_error");
  v121 = 22;
  v123 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p, &v123);
  v64 = v63;
  if (*(v63 + 79) < 0)
  {
    operator delete(*(v63 + 56));
  }

  v65 = v147[0];
  *(v64 + 56) = v61;
  *(v64 + 64) = v65;
  *(v64 + 71) = *(v147 + 7);
  *(v64 + 79) = v62;
  if (v121 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if ((v135[23] & 0x80000000) != 0)
  {
    operator delete(*v135);
  }

  if ((v134[23] & 0x80000000) != 0)
  {
    operator delete(*v134);
  }

  if ((v133[23] & 0x80000000) != 0)
  {
    operator delete(*v133);
  }

  CAAudioStatisticsSendMessage(this[135].i64[1], this[136].u32[0], buf, 6);
  VoiceProcessorV2::SetHwMicAndEpMicChannelConfig(this, &kVP_MicConfigPrimaryMicOnly, &kVP_MicConfigPrimaryMicOnly, 0);
  (*(this->i64[0] + 320))(this);
  v66 = v115 + 4;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
LABEL_149:
  v67 = *(v66 + 36);
  if (v67 <= 24)
  {
    if (v67 <= 21)
    {
      if (v67 == 20)
      {
        *buf = this + 554;
        *&buf[8] = 0;
        std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
        goto LABEL_188;
      }

      if (v67 == 21)
      {
        (*(this->i64[0] + 408))(this);
        v71 = this[150].i32[0];
        if (v71 == 1781805623 || v71 == 1781740087)
        {
          v72 = this[554].i64[0] | 0x8000000000000000;
LABEL_187:
          this[554].i64[0] = v72;
          goto LABEL_188;
        }
      }

      goto LABEL_188;
    }

    if (v67 == 22)
    {
      v79 = this[554].i64[0] | 0x1000000000;
      goto LABEL_181;
    }

    if (v67 != 23)
    {
      *buf = this + 554;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v68 = this[554].i64[0];
      v69 = 0x2000000028000000;
LABEL_186:
      v72 = v68 | v69;
      goto LABEL_187;
    }

    v73 = this[554].i64[0];
    v74 = v73 | 0x1000000000;
    this[554].i64[0] = v73 | 0x1000000000;
    v75 = this[4].i32[3];
    *buf = 1;
    if (v75 <= 18)
    {
      if ((v75 - 6) < 0xD || (v75 - 1) < 4)
      {
        *buf = 0;
        this[554].i64[0] = v73 | 0x100001000000000;
        AUPropAndParamHelper::AddItemToAUPropsList(&this[771].i64[1], 0xFA02u, 0, 0, 4uLL, buf, 1);
        *v135 = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(&this[771].i64[1], 0xFA04u, 0, 0, 4uLL, v135, 1);
        v76 = this[554].i64[0];
        this[554].i64[0] = v76 & 0xFFFFFFEFFFFFFFFFLL;
        if (this[22].i32[3] >= 2u)
        {
          this[554].i64[0] = v76 & 0xFFBFFFE3F9FFFFFFLL | 0x40000804000000;
        }

        this[284].i32[0] = 1;
        goto LABEL_182;
      }

      if (v75 == 5)
      {
        goto LABEL_254;
      }

LABEL_270:
      __assert_rtn("SetupDownlink_SPP_SCi", "vpRouteSetup_v2.cpp", 172, "false");
    }

    if (v75 <= 26)
    {
      if ((v75 - 23) >= 4)
      {
        if ((v75 - 19) >= 2)
        {
          if ((v75 - 21) >= 2)
          {
            goto LABEL_270;
          }

          VoiceProcessorV2::SetupDownlink_SPP_SCi_J4xx(this);
LABEL_182:
          this[284].i32[3] = -1061158912;
          goto LABEL_188;
        }

        this[554].i64[0] = v73 & 0xFCFFFFEFFFFFFFFFLL | 0x200001000000000;
        AUPropAndParamHelper::AddItemToAUPropsList(this[773].i64, 0xFA02u, 0, 0, 4uLL, buf, 1);
        *v135 = 0;
        AUPropAndParamHelper::AddItemToAUPropsList(this[773].i64, 0xFA04u, 0, 0, 4uLL, v135, 1);
        v110 = this[554].i64[0];
        if (this[22].i32[3] <= 1u)
        {
          v111 = v110 & 0xDBBC798FFFFFFFFFLL;
        }

        else
        {
          this[554].i64[0] = v110 | 0x400000000000000;
          *v134 = 1;
          AUPropAndParamHelper::AddItemToAUPropsList(&this[774].i64[1], 0xFA04u, 0, 0, 4uLL, v134, 1);
          v111 = this[554].i64[0] & 0xDFBC798FFFFFFFFFLL;
          if (this[22].i32[3] >= 2u)
          {
            v112 = v111 | 0x60000000000;
            v113 = 0x43000000000000;
LABEL_269:
            v79 = v112 | v113;
            goto LABEL_181;
          }
        }

        v112 = v111 | 0x20000000000;
        v113 = 0x41000000000000;
        goto LABEL_269;
      }

      VoiceProcessorV2::SetupDownlink_SPP_SCi_J4xx(this);
      v79 = this[554].i64[0] | 0x2000000000000000;
LABEL_181:
      this[554].i64[0] = v79;
      goto LABEL_182;
    }

    if (v75 > 30)
    {
      if ((v75 - 31) < 2)
      {
LABEL_254:
        this[554].i64[0] = v73 | 0x100001000000000;
        AUPropAndParamHelper::AddItemToAUPropsList(&this[771].i64[1], 0xFA02u, 0, 0, 4uLL, buf, 1);
        goto LABEL_182;
      }

      if (v75 != 33)
      {
        if (v75 != 34)
        {
          goto LABEL_270;
        }

        v108 = _os_feature_enabled_impl();
        v74 = this[554].i64[0];
        if (v108)
        {
          v109 = v74 & 0xFEFFFFFFFFFFFFFFLL;
          goto LABEL_257;
        }
      }
    }

    else
    {
      if ((v75 - 27) < 3)
      {
        this[554].i64[0] = v73 | 0x100001000000000;
        AUPropAndParamHelper::AddItemToAUPropsList(&this[771].i64[1], 0xFA02u, 0, 0, 4uLL, buf, 1);
        if (this[141].i8[5] == 1 && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) > 1 || !this[5].i32[0] && this[15].i32[1] == 2)
        {
          v97 = this[141].u8[4];
          v98 = this[554].i64[0];
          v99 = v98 | 0x8000000000;
          goto LABEL_262;
        }

        goto LABEL_265;
      }

      if (v75 != 30)
      {
        goto LABEL_270;
      }
    }

    this[554].i64[0] = v74 | 0x100000000000000;
    AUPropAndParamHelper::AddItemToAUPropsList(&this[771].i64[1], 0xFA02u, 0, 0, 4uLL, buf, 1);
    v109 = this[554].u64[0];
LABEL_257:
    this[554].i64[0] = v109 & 0xFFFFFFF3F9FFFFFFLL | 0x804000000;
    if (this[141].i8[5] == 1 && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) > 1 || !this[5].i32[0] && this[15].i32[1] == 2)
    {
      v97 = this[141].u8[4];
      v98 = this[554].i64[0];
      v99 = v98 | 0x10000000000;
LABEL_262:
      if (v97)
      {
        v114 = v98;
      }

      else
      {
        v114 = v99;
      }

      goto LABEL_266;
    }

LABEL_265:
    v114 = this[554].i64[0];
LABEL_266:
    v79 = v114 & 0xFFFFFFEFFFFFFFFFLL;
    goto LABEL_181;
  }

  if (v67 <= 27)
  {
    if (v67 != 25)
    {
      if (v67 != 26)
      {
        (*(this->i64[0] + 424))(this);
        goto LABEL_188;
      }

      *buf = this + 554;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v68 = this[554].i64[0];
      v69 = 671088640;
      goto LABEL_186;
    }

    *buf = this + 554;
    *&buf[8] = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
    v68 = this[554].i64[0];
    v80 = 671088640;
    goto LABEL_185;
  }

  switch(v67)
  {
    case 28:
      *buf = this + 554;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v68 = this[554].i64[0];
      v80 = 4;
LABEL_185:
      v69 = v80 & 0xFFFFFFFFFFFFLL | 0x4000000000000000;
      goto LABEL_186;
    case 29:
      *buf = this + 554;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v77 = this[554].i64[0];
      this[554].i64[0] = v77 | 0x3000C000;
      v78 = this[150].i32[0];
      if (v78 == 1781805623 || v78 == 1781740087)
      {
        this[554].i64[0] = v77 | 0x800000003000C000;
      }

      break;
    case 30:
      *buf = this + 554;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v70 = this[554].i64[0];
      this[554].i64[0] = v70 | 0x3000C000;
      if (this[141].i8[4] == 1 && this[22].i32[3] >= 2u)
      {
        this[554].i64[0] = v70 | 0x301FC000;
      }

      break;
  }

LABEL_188:
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v81 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v82 = (*v81 ? *v81 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = *(v66 + 35);
      v84 = *(v66 + 36);
      *buf = 136315906;
      *&buf[4] = "vpRouteSetup_v2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 406;
      *&buf[18] = 1024;
      *&buf[20] = v83;
      *&buf[24] = 1024;
      *&buf[26] = v84;
      _os_log_impl(&dword_2724B4000, v82, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Setting up DSP Chains: Uplink: %d, Downlink: %d", buf, 0x1Eu);
    }
  }

  v85 = this[794].i64[0];
  if (v85 && ((*v5 & 1) != 0 || v5[1] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v85, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpRouteSetup_v2.cpp", 406, "SetupMicsAndProcessingChain", "Setting up DSP Chains: Uplink: %d, Downlink: %d", *(v66 + 35), *(v66 + 36));
  }

  std::__tree<unsigned int>::destroy(v116[0]);
  std::__tree<unsigned int>::destroy(v118);
}

void sub_27258EC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (v67 < 0)
  {
    operator delete(v66);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(STACK[0x318]);
  std::__tree<unsigned int>::destroy(a38);
  std::__tree<unsigned int>::destroy(a41);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,ProcessingChainInfo> const&>(uint64_t **result, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v4 = (result + 1);
  if (result + 1 == a2 || (v5 = *(a2 + 7), v5 > a3))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 7) < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (*v4)
    {
      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = *(v14 + 28);
          if (v16 <= a3)
          {
            break;
          }

          v14 = *v15;
          v4 = v15;
          if (!*v15)
          {
            goto LABEL_38;
          }
        }

        if (v16 >= a3)
        {
          break;
        }

        v4 = v15 + 1;
        v14 = v15[1];
        if (!v14)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v9 = v4;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v5 >= a3)
  {
    return result;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && *(v11 + 7) <= a3)
  {
    for (i = *v4; i; i = v19[1])
    {
      while (1)
      {
        v19 = i;
        v20 = *(i + 28);
        if (v20 <= a3)
        {
          break;
        }

        i = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_39;
      }

      v4 = v19 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v9)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t VoiceProcessor::SampleRateConverter::Convert(VoiceProcessor::SampleRateConverter *this, unsigned int *a2, unsigned int *a3, const AudioBufferList *a4, const AudioBufferList *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  NumberOfChannels = AudioSampleRateConverterGetNumberOfChannels();
  v10 = NumberOfChannels;
  MEMORY[0x28223BE20](NumberOfChannels);
  v13 = v29 - v12;
  if (v11 >= 0x200)
  {
    v14 = 512;
  }

  else
  {
    v14 = v11;
  }

  bzero(v29 - v12, v14);
  LODWORD(v16) = a4->mNumberBuffers;
  if (v10 >= a4->mNumberBuffers)
  {
    v16 = v16;
  }

  else
  {
    v16 = v10;
  }

  if (v16)
  {
    p_mData = &a4->mBuffers[0].mData;
    v18 = v13;
    do
    {
      v19 = *p_mData;
      p_mData += 2;
      *v18++ = v19;
      --v16;
    }

    while (v16);
  }

  MEMORY[0x28223BE20](v15);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFF0);
  bzero(v21, v14);
  LODWORD(v22) = a5->mNumberBuffers;
  if (v10 >= a5->mNumberBuffers)
  {
    v22 = v22;
  }

  else
  {
    v22 = v10;
  }

  if (v22)
  {
    v23 = &a5->mBuffers[0].mData;
    v24 = v21;
    do
    {
      v25 = *v23;
      v23 += 2;
      *v24++ = v25;
      --v22;
    }

    while (v22);
  }

  v26 = *a2;
  v29[0] = *a3;
  v27 = v29[0];
  v29[1] = v26;
  result = AudioSampleRateConverterProcess();
  *a2 = v26;
  *a3 = v27;
  return result;
}

void sub_27258F2E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v7 = 0;
    memset(v10, 0, sizeof(v10));
    v5 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v8 = 134217984;
    v9 = 0;
    _os_log_send_and_compose_impl(v6, &v7, v10, 80, &dword_2724B4000, v5, 16, "assertion failure: theAttributes != nullptr -> %llu", &v8);
    _os_crash_msg();
    __break(1u);
  }

  *(a1 + 8) = Mutable;
  return a1;
}

void sub_27258F408(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CA::AudioSampleRateConverterBuilder::Build(CA::AudioSampleRateConverterBuilder *this)
{
  v9 = *MEMORY[0x277D85DE8];
  result = AudioSampleRateConverterCreate();
  if (!result)
  {
    v5 = 0;
    memset(v8, 0, sizeof(v8));
    v3 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v6 = 134217984;
    v7 = 0;
    _os_log_send_and_compose_impl(v4, &v5, v8, 80, &dword_2724B4000, v3, 16, "assertion failure: mImpl != nullptr -> %llu", &v6);
    _os_crash_msg();
    __break(1u);
  }

  *this = result;
  *(this + 8) = 0;
  return result;
}

void sub_27258F6DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::expected<CA::AudioSampleRateConverter,int>::value(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881C1110;
    exception[2] = v3;
  }

  return result;
}

void CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(CA::AudioSampleRateConverterBuilder *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t caulk::__expected_detail::base<CA::AudioSampleRateConverter,int>::~base(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  return a1;
}

void VoiceProcessorV2::SetupDownlinkBasicAUChainForHwHasVP(VoiceProcessorV2 *this)
{
  v2 = (this + 8864);
  v6 = (this + 8864);
  v7 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(&v6);
  *(this + 1108) |= 0x2000000028000000uLL;
  v3 = (*(*this + 112))(this);
  v4 = 0x4000000000000000;
  if (v3 > 4)
  {
    v4 = 0x800000000000;
  }

  v5 = *(this + 1108) | v4;
  *(this + 1108) = v5;
  if (*(this + 2260) == 1)
  {
    v6 = v2;
    v7 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(&v6);
    v5 = *v2 | 0x3000C000;
    *v2 = v5;
  }

  if (*(this + 16561) == 1)
  {
    *v2 = v5 | 0x8000;
  }
}

void VoiceProcessorV2::SetupDownlinkFarEndVoiceMixGraph(VoiceProcessorV2 *this)
{
  v313 = *MEMORY[0x277D85DE8];
  *(this + 1108) &= ~1uLL;
  v2 = *(this + 2027);
  *(this + 2027) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2028);
  *(this + 2028) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 2029);
  *(this + 2029) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 2030);
  *(this + 2030) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v282 = this + 15881;
  if (*(this + 16284) == 1)
  {
    *(this + 16284) = 0;
  }

  if (*(this + 61) == 32)
  {
    v297 = 0;
    v298 = 0;
    v299 = 0;
    memset(&v304, 0, sizeof(v304));
    VoiceProcessorV2::GetRouteSpecificGenericTuningSubDir(&v309, this);
    if (v310 == 1)
    {
      v6 = (this + 8);
      if (*(this + 31) < 0)
      {
        v6 = v6->__r_.__value_.__r.__words[0];
      }

      v306.__first_ = v6;
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v305, &v306.__first_);
      std::string::basic_string[abi:ne200100]<0>(&v306, "Generic");
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305, &v306);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      std::__fs::filesystem::path::operator/=[abi:ne200100](&v305, &v309);
      VoiceProcessorV2::GetVersionNameForTuning(&v306, this);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305, &v306);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v306, this, 1);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305, &v306);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixType(&v306, this);
      if (SHIBYTE(v306.__end_) >= 0)
      {
        first = &v306;
      }

      else
      {
        first = v306.__first_;
      }

      if (SHIBYTE(v306.__end_) >= 0)
      {
        end_high = HIBYTE(v306.__end_);
      }

      else
      {
        end_high = v306.__begin_;
      }

      std::string::append(&v305, first, end_high);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      std::string::append(&v305, ".dspg", 5uLL);
      size = v304.__pn_.__r_.__value_.__l.__size_;
      if (v304.__pn_.__r_.__value_.__l.__size_ >= v304.__pn_.__r_.__value_.__r.__words[2])
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_716;
        }

        if (0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v12)
        {
          v12 = 0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v12;
        }

        v306.__end_cap_.__value_ = &v304;
        if (v13)
        {
          std::allocator<std::string>::allocate_at_least[abi:ne200100](v13);
        }

        v14 = (8 * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3));
        v306.__first_ = 0;
        v306.__begin_ = v14;
        v306.__end_cap_.__value_ = 0;
        v15 = *&v305.__r_.__value_.__l.__data_;
        v14->__r_.__value_.__r.__words[2] = v305.__r_.__value_.__r.__words[2];
        *&v14->__r_.__value_.__l.__data_ = v15;
        memset(&v305, 0, sizeof(v305));
        v306.__end_ = (24 * v11 + 24);
        v16 = 24 * v11 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v304, v304.__pn_.__r_.__value_.__l.__data_, v304.__pn_.__r_.__value_.__l.__size_, v14 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_);
        v17 = v304.__pn_.__r_.__value_.__r.__words[0];
        v304.__pn_.__r_.__value_.__r.__words[0] = v16;
        v18 = v304.__pn_.__r_.__value_.__r.__words[2];
        end = v306.__end_;
        *&v304.__pn_.__r_.__value_.__r.__words[1] = *&v306.__end_;
        v306.__end_ = v17;
        v306.__end_cap_.__value_ = v18;
        v306.__first_ = v17;
        v306.__begin_ = v17;
        std::__split_buffer<std::string>::~__split_buffer(&v306);
        v304.__pn_.__r_.__value_.__l.__size_ = end;
        if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v305.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = *&v305.__r_.__value_.__l.__data_;
        *(v304.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v305.__r_.__value_.__l + 2);
        *size = v10;
        v304.__pn_.__r_.__value_.__l.__size_ = size + 24;
      }

      if ((v310 & 1) != 0 && SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v309.__r_.__value_.__l.__data_);
      }
    }

    v19 = (this + 8);
    v20 = (this + 8);
    if (*(this + 31) < 0)
    {
      v20 = *v19;
    }

    v306.__first_ = v20;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v309, &v306.__first_);
    VoiceProcessorV2::GetHardwareModelNameForTuning(&v306, this, 0);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
    if (SHIBYTE(v306.__end_) < 0)
    {
      operator delete(v306.__first_);
    }

    VoiceProcessorV2::GetVersionNameForTuning(&v306, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
    if (SHIBYTE(v306.__end_) < 0)
    {
      operator delete(v306.__first_);
    }

    VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v306, this, 0);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
    if (SHIBYTE(v306.__end_) < 0)
    {
      operator delete(v306.__first_);
    }

    VoiceProcessorV2::GetFarEndVoiceMixType(&v306, this);
    if (SHIBYTE(v306.__end_) >= 0)
    {
      v21 = &v306;
    }

    else
    {
      v21 = v306.__first_;
    }

    if (SHIBYTE(v306.__end_) >= 0)
    {
      begin = HIBYTE(v306.__end_);
    }

    else
    {
      begin = v306.__begin_;
    }

    std::string::append(&v309, v21, begin);
    if (SHIBYTE(v306.__end_) < 0)
    {
      operator delete(v306.__first_);
    }

    std::string::append(&v309, ".dspg", 5uLL);
    v23 = v304.__pn_.__r_.__value_.__l.__size_;
    if (v304.__pn_.__r_.__value_.__l.__size_ >= v304.__pn_.__r_.__value_.__r.__words[2])
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
      v26 = v25 + 1;
      if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_716;
      }

      if (0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v26)
      {
        v26 = 0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v27 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v27 = v26;
      }

      v306.__end_cap_.__value_ = &v304;
      if (v27)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v27);
      }

      v28 = (8 * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3));
      v306.__first_ = 0;
      v306.__begin_ = v28;
      v306.__end_cap_.__value_ = 0;
      v29 = *&v309.__r_.__value_.__l.__data_;
      v28->__r_.__value_.__r.__words[2] = v309.__r_.__value_.__r.__words[2];
      *&v28->__r_.__value_.__l.__data_ = v29;
      memset(&v309, 0, sizeof(v309));
      v306.__end_ = (24 * v25 + 24);
      v30 = 24 * v25 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v304, v304.__pn_.__r_.__value_.__l.__data_, v304.__pn_.__r_.__value_.__l.__size_, v28 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_);
      v31 = v304.__pn_.__r_.__value_.__r.__words[0];
      v304.__pn_.__r_.__value_.__r.__words[0] = v30;
      v32 = v304.__pn_.__r_.__value_.__r.__words[2];
      v274 = v306.__end_;
      *&v304.__pn_.__r_.__value_.__r.__words[1] = *&v306.__end_;
      v306.__end_ = v31;
      v306.__end_cap_.__value_ = v32;
      v306.__first_ = v31;
      v306.__begin_ = v31;
      std::__split_buffer<std::string>::~__split_buffer(&v306);
      v304.__pn_.__r_.__value_.__l.__size_ = v274;
      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v309.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v24 = *&v309.__r_.__value_.__l.__data_;
      *(v304.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v309.__r_.__value_.__l + 2);
      *v23 = v24;
      v304.__pn_.__r_.__value_.__l.__size_ = v23 + 24;
    }

    v33 = (this + 8);
    if (*(this + 31) < 0)
    {
      v33 = *v19;
    }

    v306.__first_ = v33;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v309, &v306.__first_);
    std::string::basic_string[abi:ne200100]<0>(&v306, "Generic");
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
    if (SHIBYTE(v306.__end_) < 0)
    {
      operator delete(v306.__first_);
    }

    VoiceProcessorV2::GetVersionNameForTuning(&v306, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
    if (SHIBYTE(v306.__end_) < 0)
    {
      operator delete(v306.__first_);
    }

    VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v306, this, 1);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
    if (SHIBYTE(v306.__end_) < 0)
    {
      operator delete(v306.__first_);
    }

    VoiceProcessorV2::GetFarEndVoiceMixType(&v306, this);
    if (SHIBYTE(v306.__end_) >= 0)
    {
      v34 = &v306;
    }

    else
    {
      v34 = v306.__first_;
    }

    if (SHIBYTE(v306.__end_) >= 0)
    {
      v35 = HIBYTE(v306.__end_);
    }

    else
    {
      v35 = v306.__begin_;
    }

    std::string::append(&v309, v34, v35);
    if (SHIBYTE(v306.__end_) < 0)
    {
      operator delete(v306.__first_);
    }

    std::string::append(&v309, ".dspg", 5uLL);
    v36 = v304.__pn_.__r_.__value_.__l.__size_;
    v272 = (this + 8);
    if (v304.__pn_.__r_.__value_.__l.__size_ < v304.__pn_.__r_.__value_.__r.__words[2])
    {
      v37 = *&v309.__r_.__value_.__l.__data_;
      *(v304.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v309.__r_.__value_.__l + 2);
      *v36 = v37;
      v38 = v36 + 24;
      v304.__pn_.__r_.__value_.__l.__size_ = v36 + 24;
      goto LABEL_100;
    }

    v39 = 0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
    v40 = v39 + 1;
    if (v39 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      if (0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v40)
      {
        v40 = 0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v41 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v41 = v40;
      }

      v306.__end_cap_.__value_ = &v304;
      if (v41)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v41);
      }

      v42 = (8 * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3));
      v306.__first_ = 0;
      v306.__begin_ = v42;
      v306.__end_cap_.__value_ = 0;
      v43 = *&v309.__r_.__value_.__l.__data_;
      v42->__r_.__value_.__r.__words[2] = v309.__r_.__value_.__r.__words[2];
      *&v42->__r_.__value_.__l.__data_ = v43;
      memset(&v309, 0, sizeof(v309));
      v306.__end_ = (24 * v39 + 24);
      v44 = 24 * v39 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v304, v304.__pn_.__r_.__value_.__l.__data_, v304.__pn_.__r_.__value_.__l.__size_, v42 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_);
      v45 = v304.__pn_.__r_.__value_.__r.__words[0];
      v304.__pn_.__r_.__value_.__r.__words[0] = v44;
      v46 = v304.__pn_.__r_.__value_.__r.__words[2];
      v275 = v306.__end_;
      *&v304.__pn_.__r_.__value_.__r.__words[1] = *&v306.__end_;
      v306.__end_ = v45;
      v306.__end_cap_.__value_ = v46;
      v306.__first_ = v45;
      v306.__begin_ = v45;
      std::__split_buffer<std::string>::~__split_buffer(&v306);
      v38 = v275;
      v304.__pn_.__r_.__value_.__l.__size_ = v275;
      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v309.__r_.__value_.__l.__data_);
        v38 = v304.__pn_.__r_.__value_.__l.__size_;
      }

LABEL_100:
      v47 = v304.__pn_.__r_.__value_.__r.__words[0];
      if (v304.__pn_.__r_.__value_.__r.__words[0] != v38)
      {
        while (1)
        {
          std::__fs::filesystem::__status(v47, 0);
          if (v300)
          {
            if (v300 != 255)
            {
              break;
            }
          }

          std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](&v297, v47);
          v47 += 24;
          if (v47 == v38)
          {
            goto LABEL_167;
          }
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v48 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
        {
          v49 = (*v48 ? *v48 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = v47;
            if (*(v47 + 23) < 0)
            {
              v50 = *v47;
            }

            LODWORD(v306.__first_) = 136315650;
            *(&v306.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
            WORD2(v306.__begin_) = 1024;
            *(&v306.__begin_ + 6) = 66;
            WORD1(v306.__end_) = 2080;
            *(&v306.__end_ + 4) = v50;
            _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> loading far end voice mix graph %s", &v306, 0x1Cu);
          }
        }

        v51 = *(this + 1588);
        if (v51 && ((*v282 & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v52 = v47;
          if (*(v47 + 23) < 0)
          {
            v52 = *v47;
          }

          CALegacyLog::log(v51, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 66, "SetupDownlinkFarEndVoiceMixGraph", "loading far end voice mix graph %s", v52);
        }

        if (*(v47 + 23) >= 0)
        {
          v53 = v47;
        }

        else
        {
          v53 = *v47;
        }

        std::ifstream::basic_ifstream(&v306, v53, 8);
        std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&v309, *&v307[v306.__first_[-1].__r_.__value_.__r.__words[0]]);
        if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v309;
        }

        else
        {
          v54 = v309.__r_.__value_.__r.__words[0];
        }

        if (v54)
        {
          if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v55 = v309.__r_.__value_.__l.__size_;
          }

          v56 = CFStringCreateWithBytes(0, v54, v55, 0x8000100u, 0);
          v305.__r_.__value_.__r.__words[0] = v56;
          if (!v56)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        else
        {
          v56 = 0;
        }

        v58 = *(this + 2027);
        *(this + 2027) = v56;
        v305.__r_.__value_.__r.__words[0] = v58;
        if (v58)
        {
          CFRelease(v58);
        }

        std::__fs::filesystem::path::filename[abi:ne200100](&v311, v47);
        memset(&__replacement, 0, sizeof(__replacement));
        v59 = std::__fs::filesystem::path::replace_extension(&v311, &__replacement);
        if (SHIBYTE(v59->__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v305, v59->__pn_.__r_.__value_.__l.__data_, v59->__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          v60 = *&v59->__pn_.__r_.__value_.__l.__data_;
          v305.__r_.__value_.__r.__words[2] = v59->__pn_.__r_.__value_.__r.__words[2];
          *&v305.__r_.__value_.__l.__data_ = v60;
        }

        if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v311.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v311.__pn_.__r_.__value_.__l.__data_);
        }

        if ((v305.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v305;
        }

        else
        {
          v61 = v305.__r_.__value_.__r.__words[0];
        }

        if (v61)
        {
          if ((v305.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v62 = HIBYTE(v305.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v62 = v305.__r_.__value_.__l.__size_;
          }

          v63 = CFStringCreateWithBytes(0, v61, v62, 0x8000100u, 0);
          v311.__pn_.__r_.__value_.__r.__words[0] = v63;
          if (!v63)
          {
            v64 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v64, "Could not construct");
          }
        }

        else
        {
          v63 = 0;
        }

        v65 = *(this + 2028);
        *(this + 2028) = v63;
        v311.__pn_.__r_.__value_.__r.__words[0] = v65;
        if (v65)
        {
          CFRelease(v65);
        }

        v66 = v297;
        v67 = v298;
        while (v67 != v66)
        {
          v68 = *(v67 - 1);
          v67 -= 3;
          if (v68 < 0)
          {
            operator delete(*v67);
          }
        }

        v298 = v66;
        if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v305.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v309.__r_.__value_.__l.__data_);
        }

        v306.__first_ = *MEMORY[0x277D82808];
        *(&v306.__first_ + v306.__first_[-1].__r_.__value_.__r.__words[0]) = *(MEMORY[0x277D82808] + 24);
        MEMORY[0x2743CBA00](&v306.__end_);
        std::istream::~istream();
        MEMORY[0x2743CBE30](&v308);
      }

LABEL_167:
      v306.__first_ = &v304;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v306);
      v70 = v297;
      v69 = v298;
      if (v297 != v298)
      {
        v71 = MEMORY[0x277D86220];
        do
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v72 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v73 = (*v72 ? *v72 : v71);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v74 = v70;
              if (*(v70 + 23) < 0)
              {
                v74 = *v70;
              }

              LODWORD(v306.__first_) = 136315650;
              *(&v306.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
              WORD2(v306.__begin_) = 1024;
              *(&v306.__begin_ + 6) = 84;
              WORD1(v306.__end_) = 2080;
              *(&v306.__end_ + 4) = v74;
              _os_log_impl(&dword_2724B4000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", &v306, 0x1Cu);
            }
          }

          v75 = *(this + 1588);
          if (v75 && ((*v282 & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v76 = v70;
            if (*(v70 + 23) < 0)
            {
              v76 = *v70;
            }

            CALegacyLog::log(v75, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 84, "SetupDownlinkFarEndVoiceMixGraph", "file %s does not exist", v76);
          }

          v70 += 3;
        }

        while (v70 != v69);
      }

      v294 = 0;
      v295 = 0;
      v296 = 0;
      memset(&v304, 0, sizeof(v304));
      VoiceProcessorV2::GetRouteSpecificGenericTuningSubDir(&v309, this);
      if (v310 == 1)
      {
        v77 = (this + 8);
        if (*(this + 31) < 0)
        {
          v77 = *v272;
        }

        v306.__first_ = v77;
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v305, &v306.__first_);
        std::string::basic_string[abi:ne200100]<0>(&v306, "Generic");
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305, &v306);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        std::__fs::filesystem::path::operator/=[abi:ne200100](&v305, &v309);
        VoiceProcessorV2::GetVersionNameForTuning(&v306, this);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305, &v306);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v306, this, 1);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305, &v306);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixType(&v306, this);
        if (SHIBYTE(v306.__end_) >= 0)
        {
          v78 = &v306;
        }

        else
        {
          v78 = v306.__first_;
        }

        if (SHIBYTE(v306.__end_) >= 0)
        {
          v79 = HIBYTE(v306.__end_);
        }

        else
        {
          v79 = v306.__begin_;
        }

        std::string::append(&v305, v78, v79);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        std::string::append(&v305, ".austrip", 8uLL);
        v80 = v304.__pn_.__r_.__value_.__l.__size_;
        if (v304.__pn_.__r_.__value_.__l.__size_ >= v304.__pn_.__r_.__value_.__r.__words[2])
        {
          v82 = 0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          v83 = v82 + 1;
          if (v82 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_717;
          }

          if (0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v83)
          {
            v83 = 0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v84 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v84 = v83;
          }

          v306.__end_cap_.__value_ = &v304;
          if (v84)
          {
            std::allocator<std::string>::allocate_at_least[abi:ne200100](v84);
          }

          v85 = (8 * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3));
          v306.__first_ = 0;
          v306.__begin_ = v85;
          v306.__end_cap_.__value_ = 0;
          v86 = *&v305.__r_.__value_.__l.__data_;
          v85->__r_.__value_.__r.__words[2] = v305.__r_.__value_.__r.__words[2];
          *&v85->__r_.__value_.__l.__data_ = v86;
          memset(&v305, 0, sizeof(v305));
          v306.__end_ = (24 * v82 + 24);
          v87 = 24 * v82 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v304, v304.__pn_.__r_.__value_.__l.__data_, v304.__pn_.__r_.__value_.__l.__size_, v85 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_);
          v88 = v304.__pn_.__r_.__value_.__r.__words[0];
          v304.__pn_.__r_.__value_.__r.__words[0] = v87;
          v89 = v304.__pn_.__r_.__value_.__r.__words[2];
          v276 = v306.__end_;
          *&v304.__pn_.__r_.__value_.__r.__words[1] = *&v306.__end_;
          v306.__end_ = v88;
          v306.__end_cap_.__value_ = v89;
          v306.__first_ = v88;
          v306.__begin_ = v88;
          std::__split_buffer<std::string>::~__split_buffer(&v306);
          v304.__pn_.__r_.__value_.__l.__size_ = v276;
          if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v305.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v81 = *&v305.__r_.__value_.__l.__data_;
          *(v304.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v305.__r_.__value_.__l + 2);
          *v80 = v81;
          v304.__pn_.__r_.__value_.__l.__size_ = v80 + 24;
        }

        if ((v310 & 1) != 0 && SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v309.__r_.__value_.__l.__data_);
        }
      }

      v90 = (this + 8);
      if (*(this + 31) < 0)
      {
        v90 = *v272;
      }

      v306.__first_ = v90;
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v309, &v306.__first_);
      VoiceProcessorV2::GetHardwareModelNameForTuning(&v306, this, 0);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      VoiceProcessorV2::GetVersionNameForTuning(&v306, this);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v306, this, 0);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixType(&v306, this);
      if (SHIBYTE(v306.__end_) >= 0)
      {
        v91 = &v306;
      }

      else
      {
        v91 = v306.__first_;
      }

      if (SHIBYTE(v306.__end_) >= 0)
      {
        v92 = HIBYTE(v306.__end_);
      }

      else
      {
        v92 = v306.__begin_;
      }

      std::string::append(&v309, v91, v92);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) != 1)
      {
        v93 = 1885892727;
        if ((**(this + 294) | 0x20) != 0x70687062)
        {
          v93 = **(this + 294);
        }

        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v311, v93);
        std::string::basic_string[abi:ne200100]<0>(&v305, &v311);
        v94 = std::string::insert(&v305, 0, "_", 1uLL);
        v95 = *&v94->__r_.__value_.__l.__data_;
        v306.__end_ = v94->__r_.__value_.__r.__words[2];
        *&v306.__first_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v306.__end_) >= 0)
        {
          v96 = &v306;
        }

        else
        {
          v96 = v306.__first_;
        }

        if (SHIBYTE(v306.__end_) >= 0)
        {
          v97 = HIBYTE(v306.__end_);
        }

        else
        {
          v97 = v306.__begin_;
        }

        std::string::append(&v309, v96, v97);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v305.__r_.__value_.__l.__data_);
        }
      }

      std::string::append(&v309, ".austrip", 8uLL);
      v98 = v304.__pn_.__r_.__value_.__l.__size_;
      if (v304.__pn_.__r_.__value_.__l.__size_ >= v304.__pn_.__r_.__value_.__r.__words[2])
      {
        v100 = 0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        v101 = v100 + 1;
        if (v100 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_717;
        }

        if (0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v101)
        {
          v101 = 0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v102 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v102 = v101;
        }

        v306.__end_cap_.__value_ = &v304;
        if (v102)
        {
          std::allocator<std::string>::allocate_at_least[abi:ne200100](v102);
        }

        v103 = (8 * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3));
        v306.__first_ = 0;
        v306.__begin_ = v103;
        v306.__end_cap_.__value_ = 0;
        v104 = *&v309.__r_.__value_.__l.__data_;
        v103->__r_.__value_.__r.__words[2] = v309.__r_.__value_.__r.__words[2];
        *&v103->__r_.__value_.__l.__data_ = v104;
        memset(&v309, 0, sizeof(v309));
        v306.__end_ = (24 * v100 + 24);
        v105 = 24 * v100 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v304, v304.__pn_.__r_.__value_.__l.__data_, v304.__pn_.__r_.__value_.__l.__size_, v103 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_);
        v106 = v304.__pn_.__r_.__value_.__r.__words[0];
        v304.__pn_.__r_.__value_.__r.__words[0] = v105;
        v107 = v304.__pn_.__r_.__value_.__r.__words[2];
        v277 = v306.__end_;
        *&v304.__pn_.__r_.__value_.__r.__words[1] = *&v306.__end_;
        v306.__end_ = v106;
        v306.__end_cap_.__value_ = v107;
        v306.__first_ = v106;
        v306.__begin_ = v106;
        std::__split_buffer<std::string>::~__split_buffer(&v306);
        v304.__pn_.__r_.__value_.__l.__size_ = v277;
        if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v309.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v99 = *&v309.__r_.__value_.__l.__data_;
        *(v304.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v309.__r_.__value_.__l + 2);
        *v98 = v99;
        v304.__pn_.__r_.__value_.__l.__size_ = v98 + 24;
      }

      v108 = (this + 8);
      if (*(this + 31) < 0)
      {
        v108 = *v272;
      }

      v306.__first_ = v108;
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v309, &v306.__first_);
      std::string::basic_string[abi:ne200100]<0>(&v306, "Generic");
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      VoiceProcessorV2::GetVersionNameForTuning(&v306, this);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v306, this, 1);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixType(&v306, this);
      if (SHIBYTE(v306.__end_) >= 0)
      {
        v109 = &v306;
      }

      else
      {
        v109 = v306.__first_;
      }

      if (SHIBYTE(v306.__end_) >= 0)
      {
        v110 = HIBYTE(v306.__end_);
      }

      else
      {
        v110 = v306.__begin_;
      }

      std::string::append(&v309, v109, v110);
      if (SHIBYTE(v306.__end_) < 0)
      {
        operator delete(v306.__first_);
      }

      if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) != 1)
      {
        v111 = 1885892727;
        if ((**(this + 294) | 0x20) != 0x70687062)
        {
          v111 = **(this + 294);
        }

        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v311, v111);
        std::string::basic_string[abi:ne200100]<0>(&v305, &v311);
        v112 = std::string::insert(&v305, 0, "_", 1uLL);
        v113 = *&v112->__r_.__value_.__l.__data_;
        v306.__end_ = v112->__r_.__value_.__r.__words[2];
        *&v306.__first_ = v113;
        v112->__r_.__value_.__l.__size_ = 0;
        v112->__r_.__value_.__r.__words[2] = 0;
        v112->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v306.__end_) >= 0)
        {
          v114 = &v306;
        }

        else
        {
          v114 = v306.__first_;
        }

        if (SHIBYTE(v306.__end_) >= 0)
        {
          v115 = HIBYTE(v306.__end_);
        }

        else
        {
          v115 = v306.__begin_;
        }

        std::string::append(&v309, v114, v115);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v305.__r_.__value_.__l.__data_);
        }
      }

      std::string::append(&v309, ".austrip", 8uLL);
      v116 = v304.__pn_.__r_.__value_.__l.__size_;
      if (v304.__pn_.__r_.__value_.__l.__size_ < v304.__pn_.__r_.__value_.__r.__words[2])
      {
        v117 = *&v309.__r_.__value_.__l.__data_;
        *(v304.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v309.__r_.__value_.__l + 2);
        *v116 = v117;
        v118 = v116 + 24;
        v304.__pn_.__r_.__value_.__l.__size_ = v116 + 24;
        goto LABEL_303;
      }

      v119 = 0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
      v120 = v119 + 1;
      if (v119 + 1 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v120)
        {
          v120 = 0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v121 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v121 = v120;
        }

        v306.__end_cap_.__value_ = &v304;
        if (v121)
        {
          std::allocator<std::string>::allocate_at_least[abi:ne200100](v121);
        }

        v122 = (8 * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3));
        v306.__first_ = 0;
        v306.__begin_ = v122;
        v306.__end_cap_.__value_ = 0;
        v123 = *&v309.__r_.__value_.__l.__data_;
        v122->__r_.__value_.__r.__words[2] = v309.__r_.__value_.__r.__words[2];
        *&v122->__r_.__value_.__l.__data_ = v123;
        memset(&v309, 0, sizeof(v309));
        v306.__end_ = (24 * v119 + 24);
        v124 = 24 * v119 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v304, v304.__pn_.__r_.__value_.__l.__data_, v304.__pn_.__r_.__value_.__l.__size_, v122 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_);
        v125 = v304.__pn_.__r_.__value_.__r.__words[0];
        v304.__pn_.__r_.__value_.__r.__words[0] = v124;
        v126 = v304.__pn_.__r_.__value_.__r.__words[2];
        v278 = v306.__end_;
        *&v304.__pn_.__r_.__value_.__r.__words[1] = *&v306.__end_;
        v306.__end_ = v125;
        v306.__end_cap_.__value_ = v126;
        v306.__first_ = v125;
        v306.__begin_ = v125;
        std::__split_buffer<std::string>::~__split_buffer(&v306);
        v118 = v278;
        v304.__pn_.__r_.__value_.__l.__size_ = v278;
        if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v309.__r_.__value_.__l.__data_);
          v118 = v304.__pn_.__r_.__value_.__l.__size_;
        }

LABEL_303:
        v127 = v304.__pn_.__r_.__value_.__r.__words[0];
        if (v304.__pn_.__r_.__value_.__r.__words[0] != v118)
        {
          while (1)
          {
            std::__fs::filesystem::__status(v127, 0);
            if (v301)
            {
              if (v301 != 255)
              {
                break;
              }
            }

            std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](&v294, v127);
            v127 += 24;
            if (v127 == v118)
            {
              goto LABEL_340;
            }
          }

          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v128 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
          {
            v129 = (*v128 ? *v128 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
            {
              v130 = v127;
              if (*(v127 + 23) < 0)
              {
                v130 = *v127;
              }

              LODWORD(v306.__first_) = 136315650;
              *(&v306.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
              WORD2(v306.__begin_) = 1024;
              *(&v306.__begin_ + 6) = 93;
              WORD1(v306.__end_) = 2080;
              *(&v306.__end_ + 4) = v130;
              _os_log_impl(&dword_2724B4000, v129, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> loading far end voice mix AU strip %s", &v306, 0x1Cu);
            }
          }

          v131 = *(this + 1588);
          if (v131 && ((*v282 & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v132 = v127;
            if (*(v127 + 23) < 0)
            {
              v132 = *v127;
            }

            CALegacyLog::log(v131, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 93, "SetupDownlinkFarEndVoiceMixGraph", "loading far end voice mix AU strip %s", v132);
          }

          if (*(v127 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v306, *v127, *(v127 + 8));
          }

          else
          {
            v133 = *v127;
            v306.__end_ = *(v127 + 16);
            *&v306.__first_ = v133;
          }

          applesauce::CF::make_DataRef(&v309, &v306);
          if (SHIBYTE(v306.__end_) < 0)
          {
            operator delete(v306.__first_);
          }

          applesauce::CF::make_DictionaryRef(&v306, v309.__r_.__value_.__l.__data_);
          v134 = *(this + 2029);
          *(this + 2029) = v306.__first_;
          v306.__first_ = v134;
          if (v134)
          {
            CFRelease(v134);
          }

          v135 = v294;
          v136 = v295;
          while (v136 != v135)
          {
            v137 = *(v136 - 1);
            v136 -= 3;
            if (v137 < 0)
            {
              operator delete(*v136);
            }
          }

          v295 = v135;
          if (v309.__r_.__value_.__r.__words[0])
          {
            CFRelease(v309.__r_.__value_.__l.__data_);
          }
        }

LABEL_340:
        v306.__first_ = &v304;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v306);
        v139 = v294;
        v138 = v295;
        if (v294 != v295)
        {
          v140 = MEMORY[0x277D86220];
          do
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v141 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v142 = (*v141 ? *v141 : v140);
              if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
              {
                v143 = v139;
                if (*(v139 + 23) < 0)
                {
                  v143 = *v139;
                }

                LODWORD(v306.__first_) = 136315650;
                *(&v306.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
                WORD2(v306.__begin_) = 1024;
                *(&v306.__begin_ + 6) = 109;
                WORD1(v306.__end_) = 2080;
                *(&v306.__end_ + 4) = v143;
                _os_log_impl(&dword_2724B4000, v142, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", &v306, 0x1Cu);
              }
            }

            v144 = *(this + 1588);
            if (v144 && ((*v282 & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v145 = v139;
              if (*(v139 + 23) < 0)
              {
                v145 = *v139;
              }

              CALegacyLog::log(v144, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 109, "SetupDownlinkFarEndVoiceMixGraph", "file %s does not exist", v145);
            }

            v139 += 3;
          }

          while (v139 != v138);
        }

        v291 = 0;
        v292 = 0;
        v293 = 0;
        memset(&v304, 0, sizeof(v304));
        VoiceProcessorV2::GetRouteSpecificGenericTuningSubDir(&v309, this);
        if (v310 == 1)
        {
          v146 = (this + 8);
          if (*(this + 31) < 0)
          {
            v146 = *v272;
          }

          v306.__first_ = v146;
          std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v305, &v306.__first_);
          std::string::basic_string[abi:ne200100]<0>(&v306, "Generic");
          std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305, &v306);
          if (SHIBYTE(v306.__end_) < 0)
          {
            operator delete(v306.__first_);
          }

          std::__fs::filesystem::path::operator/=[abi:ne200100](&v305, &v309);
          VoiceProcessorV2::GetVersionNameForTuning(&v306, this);
          std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305, &v306);
          if (SHIBYTE(v306.__end_) < 0)
          {
            operator delete(v306.__first_);
          }

          VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v306, this, 1);
          std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305, &v306);
          if (SHIBYTE(v306.__end_) < 0)
          {
            operator delete(v306.__first_);
          }

          VoiceProcessorV2::GetFarEndVoiceMixType(&v306, this);
          if (SHIBYTE(v306.__end_) >= 0)
          {
            v147 = &v306;
          }

          else
          {
            v147 = v306.__first_;
          }

          if (SHIBYTE(v306.__end_) >= 0)
          {
            v148 = HIBYTE(v306.__end_);
          }

          else
          {
            v148 = v306.__begin_;
          }

          std::string::append(&v305, v147, v148);
          if (SHIBYTE(v306.__end_) < 0)
          {
            operator delete(v306.__first_);
          }

          std::string::append(&v305, ".propstrip", 0xAuLL);
          v149 = v304.__pn_.__r_.__value_.__l.__size_;
          if (v304.__pn_.__r_.__value_.__l.__size_ >= v304.__pn_.__r_.__value_.__r.__words[2])
          {
            v151 = 0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
            v152 = v151 + 1;
            if (v151 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_718;
            }

            if (0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v152)
            {
              v152 = 0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
            {
              v153 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v153 = v152;
            }

            v306.__end_cap_.__value_ = &v304;
            if (v153)
            {
              std::allocator<std::string>::allocate_at_least[abi:ne200100](v153);
            }

            v154 = (8 * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3));
            v306.__first_ = 0;
            v306.__begin_ = v154;
            v306.__end_cap_.__value_ = 0;
            v155 = *&v305.__r_.__value_.__l.__data_;
            v154->__r_.__value_.__r.__words[2] = v305.__r_.__value_.__r.__words[2];
            *&v154->__r_.__value_.__l.__data_ = v155;
            memset(&v305, 0, sizeof(v305));
            v306.__end_ = (24 * v151 + 24);
            v156 = 24 * v151 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_;
            std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v304, v304.__pn_.__r_.__value_.__l.__data_, v304.__pn_.__r_.__value_.__l.__size_, v154 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_);
            v157 = v304.__pn_.__r_.__value_.__r.__words[0];
            v304.__pn_.__r_.__value_.__r.__words[0] = v156;
            v158 = v304.__pn_.__r_.__value_.__r.__words[2];
            v279 = v306.__end_;
            *&v304.__pn_.__r_.__value_.__r.__words[1] = *&v306.__end_;
            v306.__end_ = v157;
            v306.__end_cap_.__value_ = v158;
            v306.__first_ = v157;
            v306.__begin_ = v157;
            std::__split_buffer<std::string>::~__split_buffer(&v306);
            v304.__pn_.__r_.__value_.__l.__size_ = v279;
            if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v305.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v150 = *&v305.__r_.__value_.__l.__data_;
            *(v304.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v305.__r_.__value_.__l + 2);
            *v149 = v150;
            v304.__pn_.__r_.__value_.__l.__size_ = v149 + 24;
          }

          if ((v310 & 1) != 0 && SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v309.__r_.__value_.__l.__data_);
          }
        }

        v159 = (this + 8);
        if (*(this + 31) < 0)
        {
          v159 = *v272;
        }

        v306.__first_ = v159;
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v309, &v306.__first_);
        VoiceProcessorV2::GetHardwareModelNameForTuning(&v306, this, 0);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        VoiceProcessorV2::GetVersionNameForTuning(&v306, this);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v306, this, 0);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixType(&v306, this);
        if (SHIBYTE(v306.__end_) >= 0)
        {
          v160 = &v306;
        }

        else
        {
          v160 = v306.__first_;
        }

        if (SHIBYTE(v306.__end_) >= 0)
        {
          v161 = HIBYTE(v306.__end_);
        }

        else
        {
          v161 = v306.__begin_;
        }

        std::string::append(&v309, v160, v161);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) != 1)
        {
          v162 = 1885892727;
          if ((**(this + 294) | 0x20) != 0x70687062)
          {
            v162 = **(this + 294);
          }

          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v311, v162);
          std::string::basic_string[abi:ne200100]<0>(&v305, &v311);
          v163 = std::string::insert(&v305, 0, "_", 1uLL);
          v164 = *&v163->__r_.__value_.__l.__data_;
          v306.__end_ = v163->__r_.__value_.__r.__words[2];
          *&v306.__first_ = v164;
          v163->__r_.__value_.__l.__size_ = 0;
          v163->__r_.__value_.__r.__words[2] = 0;
          v163->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v306.__end_) >= 0)
          {
            v165 = &v306;
          }

          else
          {
            v165 = v306.__first_;
          }

          if (SHIBYTE(v306.__end_) >= 0)
          {
            v166 = HIBYTE(v306.__end_);
          }

          else
          {
            v166 = v306.__begin_;
          }

          std::string::append(&v309, v165, v166);
          if (SHIBYTE(v306.__end_) < 0)
          {
            operator delete(v306.__first_);
          }

          if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v305.__r_.__value_.__l.__data_);
          }
        }

        std::string::append(&v309, ".propstrip", 0xAuLL);
        v167 = v304.__pn_.__r_.__value_.__l.__size_;
        if (v304.__pn_.__r_.__value_.__l.__size_ >= v304.__pn_.__r_.__value_.__r.__words[2])
        {
          v169 = 0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          v170 = v169 + 1;
          if (v169 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_718;
          }

          if (0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v170)
          {
            v170 = 0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v171 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v171 = v170;
          }

          v306.__end_cap_.__value_ = &v304;
          if (v171)
          {
            std::allocator<std::string>::allocate_at_least[abi:ne200100](v171);
          }

          v172 = (8 * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3));
          v306.__first_ = 0;
          v306.__begin_ = v172;
          v306.__end_cap_.__value_ = 0;
          v173 = *&v309.__r_.__value_.__l.__data_;
          v172->__r_.__value_.__r.__words[2] = v309.__r_.__value_.__r.__words[2];
          *&v172->__r_.__value_.__l.__data_ = v173;
          memset(&v309, 0, sizeof(v309));
          v306.__end_ = (24 * v169 + 24);
          v174 = 24 * v169 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v304, v304.__pn_.__r_.__value_.__l.__data_, v304.__pn_.__r_.__value_.__l.__size_, v172 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_);
          v175 = v304.__pn_.__r_.__value_.__r.__words[0];
          v304.__pn_.__r_.__value_.__r.__words[0] = v174;
          v176 = v304.__pn_.__r_.__value_.__r.__words[2];
          v280 = v306.__end_;
          *&v304.__pn_.__r_.__value_.__r.__words[1] = *&v306.__end_;
          v306.__end_ = v175;
          v306.__end_cap_.__value_ = v176;
          v306.__first_ = v175;
          v306.__begin_ = v175;
          std::__split_buffer<std::string>::~__split_buffer(&v306);
          v304.__pn_.__r_.__value_.__l.__size_ = v280;
          if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v309.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v168 = *&v309.__r_.__value_.__l.__data_;
          *(v304.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v309.__r_.__value_.__l + 2);
          *v167 = v168;
          v304.__pn_.__r_.__value_.__l.__size_ = v167 + 24;
        }

        v177 = (this + 8);
        if (*(this + 31) < 0)
        {
          v177 = *v272;
        }

        v306.__first_ = v177;
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v309, &v306.__first_);
        std::string::basic_string[abi:ne200100]<0>(&v306, "Generic");
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        VoiceProcessorV2::GetVersionNameForTuning(&v306, this);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v306, this, 1);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v309, &v306);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixType(&v306, this);
        if (SHIBYTE(v306.__end_) >= 0)
        {
          v178 = &v306;
        }

        else
        {
          v178 = v306.__first_;
        }

        if (SHIBYTE(v306.__end_) >= 0)
        {
          v179 = HIBYTE(v306.__end_);
        }

        else
        {
          v179 = v306.__begin_;
        }

        std::string::append(&v309, v178, v179);
        if (SHIBYTE(v306.__end_) < 0)
        {
          operator delete(v306.__first_);
        }

        if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) != 1)
        {
          v180 = 1885892727;
          if ((**(this + 294) | 0x20) != 0x70687062)
          {
            v180 = **(this + 294);
          }

          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v311, v180);
          std::string::basic_string[abi:ne200100]<0>(&v305, &v311);
          v181 = std::string::insert(&v305, 0, "_", 1uLL);
          v182 = *&v181->__r_.__value_.__l.__data_;
          v306.__end_ = v181->__r_.__value_.__r.__words[2];
          *&v306.__first_ = v182;
          v181->__r_.__value_.__l.__size_ = 0;
          v181->__r_.__value_.__r.__words[2] = 0;
          v181->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v306.__end_) >= 0)
          {
            v183 = &v306;
          }

          else
          {
            v183 = v306.__first_;
          }

          if (SHIBYTE(v306.__end_) >= 0)
          {
            v184 = HIBYTE(v306.__end_);
          }

          else
          {
            v184 = v306.__begin_;
          }

          std::string::append(&v309, v183, v184);
          if (SHIBYTE(v306.__end_) < 0)
          {
            operator delete(v306.__first_);
          }

          if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v305.__r_.__value_.__l.__data_);
          }
        }

        std::string::append(&v309, ".propstrip", 0xAuLL);
        v185 = v304.__pn_.__r_.__value_.__l.__size_;
        if (v304.__pn_.__r_.__value_.__l.__size_ < v304.__pn_.__r_.__value_.__r.__words[2])
        {
          v186 = *&v309.__r_.__value_.__l.__data_;
          *(v304.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v309.__r_.__value_.__l + 2);
          *v185 = v186;
          v187 = v185 + 24;
          v304.__pn_.__r_.__value_.__l.__size_ = v185 + 24;
          goto LABEL_476;
        }

        v188 = 0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        v189 = v188 + 1;
        if (v188 + 1 <= 0xAAAAAAAAAAAAAAALL)
        {
          if (0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v189)
          {
            v189 = 0x5555555555555556 * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v304.__pn_.__r_.__value_.__r.__words[2] - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v190 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v190 = v189;
          }

          v306.__end_cap_.__value_ = &v304;
          if (v190)
          {
            std::allocator<std::string>::allocate_at_least[abi:ne200100](v190);
          }

          v191 = (8 * ((v304.__pn_.__r_.__value_.__l.__size_ - v304.__pn_.__r_.__value_.__r.__words[0]) >> 3));
          v306.__first_ = 0;
          v306.__begin_ = v191;
          v306.__end_cap_.__value_ = 0;
          v192 = *&v309.__r_.__value_.__l.__data_;
          v191->__r_.__value_.__r.__words[2] = v309.__r_.__value_.__r.__words[2];
          *&v191->__r_.__value_.__l.__data_ = v192;
          memset(&v309, 0, sizeof(v309));
          v306.__end_ = (24 * v188 + 24);
          v193 = 24 * v188 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v304, v304.__pn_.__r_.__value_.__l.__data_, v304.__pn_.__r_.__value_.__l.__size_, v191 + v304.__pn_.__r_.__value_.__r.__words[0] - v304.__pn_.__r_.__value_.__l.__size_);
          v194 = v304.__pn_.__r_.__value_.__r.__words[0];
          v304.__pn_.__r_.__value_.__r.__words[0] = v193;
          v195 = v304.__pn_.__r_.__value_.__r.__words[2];
          v281 = v306.__end_;
          *&v304.__pn_.__r_.__value_.__r.__words[1] = *&v306.__end_;
          v306.__end_ = v194;
          v306.__end_cap_.__value_ = v195;
          v306.__first_ = v194;
          v306.__begin_ = v194;
          std::__split_buffer<std::string>::~__split_buffer(&v306);
          v187 = v281;
          v304.__pn_.__r_.__value_.__l.__size_ = v281;
          if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v309.__r_.__value_.__l.__data_);
            v187 = v304.__pn_.__r_.__value_.__l.__size_;
          }

LABEL_476:
          v196 = v304.__pn_.__r_.__value_.__r.__words[0];
          if (v304.__pn_.__r_.__value_.__r.__words[0] != v187)
          {
            while (1)
            {
              std::__fs::filesystem::__status(v196, 0);
              if (v302)
              {
                if (v302 != 255)
                {
                  break;
                }
              }

              std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](&v291, v196);
              v196 += 24;
              if (v196 == v187)
              {
                goto LABEL_513;
              }
            }

            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v197 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v198 = (*v197 ? *v197 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
              {
                v199 = v196;
                if (*(v196 + 23) < 0)
                {
                  v199 = *v196;
                }

                LODWORD(v306.__first_) = 136315650;
                *(&v306.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
                WORD2(v306.__begin_) = 1024;
                *(&v306.__begin_ + 6) = 118;
                WORD1(v306.__end_) = 2080;
                *(&v306.__end_ + 4) = v199;
                _os_log_impl(&dword_2724B4000, v198, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> loading far end voice mix property strip %s", &v306, 0x1Cu);
              }
            }

            v200 = *(this + 1588);
            if (v200 && ((*v282 & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v201 = v196;
              if (*(v196 + 23) < 0)
              {
                v201 = *v196;
              }

              CALegacyLog::log(v200, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 118, "SetupDownlinkFarEndVoiceMixGraph", "loading far end voice mix property strip %s", v201);
            }

            if (*(v196 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v306, *v196, *(v196 + 8));
            }

            else
            {
              v202 = *v196;
              v306.__end_ = *(v196 + 16);
              *&v306.__first_ = v202;
            }

            applesauce::CF::make_DataRef(&v309, &v306);
            if (SHIBYTE(v306.__end_) < 0)
            {
              operator delete(v306.__first_);
            }

            applesauce::CF::make_DictionaryRef(&v306, v309.__r_.__value_.__l.__data_);
            v203 = *(this + 2030);
            *(this + 2030) = v306.__first_;
            v306.__first_ = v203;
            if (v203)
            {
              CFRelease(v203);
            }

            v204 = v291;
            v205 = v292;
            while (v205 != v204)
            {
              v206 = *(v205 - 1);
              v205 -= 3;
              if (v206 < 0)
              {
                operator delete(*v205);
              }
            }

            v292 = v204;
            if (v309.__r_.__value_.__r.__words[0])
            {
              CFRelease(v309.__r_.__value_.__l.__data_);
            }
          }

LABEL_513:
          v306.__first_ = &v304;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v306);
          v208 = v291;
          v207 = v292;
          if (v291 != v292)
          {
            v209 = MEMORY[0x277D86220];
            do
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v210 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
              {
                v211 = (*v210 ? *v210 : v209);
                if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
                {
                  v212 = v208;
                  if (*(v208 + 23) < 0)
                  {
                    v212 = *v208;
                  }

                  LODWORD(v306.__first_) = 136315650;
                  *(&v306.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
                  WORD2(v306.__begin_) = 1024;
                  *(&v306.__begin_ + 6) = 135;
                  WORD1(v306.__end_) = 2080;
                  *(&v306.__end_ + 4) = v212;
                  _os_log_impl(&dword_2724B4000, v211, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", &v306, 0x1Cu);
                }
              }

              v213 = *(this + 1588);
              if (v213 && ((*v282 & 1) != 0 || *(this + 15882) == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v214 = v208;
                if (*(v208 + 23) < 0)
                {
                  v214 = *v208;
                }

                CALegacyLog::log(v213, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 135, "SetupDownlinkFarEndVoiceMixGraph", "file %s does not exist", v214);
              }

              v208 += 3;
            }

            while (v208 != v207);
          }

          v215 = **(this + 294) - 1885892674;
          v216 = v215 > 0x35;
          v217 = (1 << v215) & 0x20000100000001;
          v218 = v216 || v217 == 0;
          if (!v218 && (*(this + 16388) & 1) != 0 && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) == 2)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v219 = 1885892727;
            v220 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v221 = (*v220 ? *v220 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v306.__first_) = 136315394;
                *(&v306.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
                WORD2(v306.__begin_) = 1024;
                *(&v306.__begin_ + 6) = 139;
                _os_log_impl(&dword_2724B4000, v221, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> loading far end voice mix headtracking specific aupreset", &v306, 0x12u);
              }
            }

            v222 = *(this + 1588);
            if (v222 && ((*v282 & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v222, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 139, "SetupDownlinkFarEndVoiceMixGraph", "loading far end voice mix headtracking specific aupreset");
            }

            v288 = 0;
            v289 = 0;
            v290 = 0;
            v287 = 0uLL;
            v286 = 0;
            if (*(this + 31) < 0)
            {
              v223 = *v272;
            }

            else
            {
              v223 = (this + 8);
            }

            v306.__first_ = v223;
            std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v304.__pn_, &v306.__first_);
            VoiceProcessorV2::GetHardwareModelNameForTuning(&v306, this, 0);
            std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v304.__pn_, &v306);
            if (SHIBYTE(v306.__end_) < 0)
            {
              operator delete(v306.__first_);
            }

            if (std::__fs::filesystem::path::__filename(&v304).__size_)
            {
              std::string::push_back(&v304.__pn_, 47);
            }

            std::string::append[abi:ne200100]<char const*,0>(&v304.__pn_, "AU", "");
            VoiceProcessorV2::GetDeviceCodeNameForTuning(&v311, this, 0);
            if (*(this + 60) == 1)
            {
              if (SHIBYTE(v311.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                v311.__pn_.__r_.__value_.__l.__size_ = 0;
                v225 = v311.__pn_.__r_.__value_.__r.__words[0];
              }

              else
              {
                *(&v311.__pn_.__r_.__value_.__s + 23) = 0;
                v225 = &v311;
              }

              v225->__pn_.__r_.__value_.__s.__data_[0] = 0;
            }

            if (SHIBYTE(v311.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__replacement.__pn_, v311.__pn_.__r_.__value_.__l.__data_, v311.__pn_.__r_.__value_.__l.__size_);
            }

            else
            {
              __replacement = v311;
            }

            if ((**(this + 294) | 0x20) != 0x70687062)
            {
              v219 = **(this + 294);
            }

            memset(&v306, 0, 24);
            if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v226 = HIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v226 = __replacement.__pn_.__r_.__value_.__l.__size_;
            }

            if (v226)
            {
              if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_replacement = &__replacement;
              }

              else
              {
                p_replacement = __replacement.__pn_.__r_.__value_.__r.__words[0];
              }

              std::string::append(&v306, p_replacement, v226);
              std::string::append(&v306, "-", 1uLL);
            }

            std::string::append(&v306, "vp", 2uLL);
            strcpy(__s, "aufx");
            std::string::basic_string[abi:ne200100]<0>(&v305, __s);
            v228 = std::string::insert(&v305, 0, "-", 1uLL);
            v229 = *&v228->__r_.__value_.__l.__data_;
            v309.__r_.__value_.__r.__words[2] = v228->__r_.__value_.__r.__words[2];
            *&v309.__r_.__value_.__l.__data_ = v229;
            v228->__r_.__value_.__l.__size_ = 0;
            v228->__r_.__value_.__r.__words[2] = 0;
            v228->__r_.__value_.__r.__words[0] = 0;
            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v230 = &v309;
            }

            else
            {
              v230 = v309.__r_.__value_.__r.__words[0];
            }

            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v231 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v231 = v309.__r_.__value_.__l.__size_;
            }

            std::string::append(&v306, v230, v231);
            if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v309.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v305.__r_.__value_.__l.__data_);
            }

            strcpy(__s, "ftac");
            std::string::basic_string[abi:ne200100]<0>(&v305, __s);
            v232 = std::string::insert(&v305, 0, "-", 1uLL);
            v233 = *&v232->__r_.__value_.__l.__data_;
            v309.__r_.__value_.__r.__words[2] = v232->__r_.__value_.__r.__words[2];
            *&v309.__r_.__value_.__l.__data_ = v233;
            v232->__r_.__value_.__l.__size_ = 0;
            v232->__r_.__value_.__r.__words[2] = 0;
            v232->__r_.__value_.__r.__words[0] = 0;
            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v234 = &v309;
            }

            else
            {
              v234 = v309.__r_.__value_.__r.__words[0];
            }

            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v235 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v235 = v309.__r_.__value_.__l.__size_;
            }

            std::string::append(&v306, v234, v235);
            if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v309.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v305.__r_.__value_.__l.__data_);
            }

            strcpy(__s, "appl");
            std::string::basic_string[abi:ne200100]<0>(&v305, __s);
            v236 = std::string::insert(&v305, 0, "-", 1uLL);
            v237 = *&v236->__r_.__value_.__l.__data_;
            v309.__r_.__value_.__r.__words[2] = v236->__r_.__value_.__r.__words[2];
            *&v309.__r_.__value_.__l.__data_ = v237;
            v236->__r_.__value_.__l.__size_ = 0;
            v236->__r_.__value_.__r.__words[2] = 0;
            v236->__r_.__value_.__r.__words[0] = 0;
            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v238 = &v309;
            }

            else
            {
              v238 = v309.__r_.__value_.__r.__words[0];
            }

            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v239 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v239 = v309.__r_.__value_.__l.__size_;
            }

            std::string::append(&v306, v238, v239);
            if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v309.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v305.__r_.__value_.__l.__data_);
            }

            v240 = bswap32(v219);
            *__s = v240;
            if ((v240 - 32) > 0x5E || ((v240 >> 8) - 32) > 0x5E || ((v240 << 8 >> 24) - 32) > 0x5E || ((v240 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v305, v219);
            }

            else
            {
              __s[4] = 0;
              std::string::basic_string[abi:ne200100]<0>(&v305, __s);
            }

            v241 = std::string::insert(&v305, 0, "-", 1uLL);
            v242 = *&v241->__r_.__value_.__l.__data_;
            v309.__r_.__value_.__r.__words[2] = v241->__r_.__value_.__r.__words[2];
            *&v309.__r_.__value_.__l.__data_ = v242;
            v241->__r_.__value_.__l.__size_ = 0;
            v241->__r_.__value_.__r.__words[2] = 0;
            v241->__r_.__value_.__r.__words[0] = 0;
            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v243 = &v309;
            }

            else
            {
              v243 = v309.__r_.__value_.__r.__words[0];
            }

            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v244 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v244 = v309.__r_.__value_.__l.__size_;
            }

            std::string::append(&v306, v243, v244);
            if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v309.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v305.__r_.__value_.__l.__data_);
            }

            std::string::append(&v306, "-dlnk", 5uLL);
            strcpy(__s, "shtp");
            std::string::basic_string[abi:ne200100]<0>(&v305, __s);
            v245 = std::string::insert(&v305, 0, "-", 1uLL);
            v246 = *&v245->__r_.__value_.__l.__data_;
            v309.__r_.__value_.__r.__words[2] = v245->__r_.__value_.__r.__words[2];
            *&v309.__r_.__value_.__l.__data_ = v246;
            v245->__r_.__value_.__l.__size_ = 0;
            v245->__r_.__value_.__r.__words[2] = 0;
            v245->__r_.__value_.__r.__words[0] = 0;
            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v247 = &v309;
            }

            else
            {
              v247 = v309.__r_.__value_.__r.__words[0];
            }

            if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v248 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v248 = v309.__r_.__value_.__l.__size_;
            }

            std::string::append(&v306, v247, v248);
            if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v309.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v305.__r_.__value_.__l.__data_);
            }

            *&v309.__r_.__value_.__l.__data_ = *&v306.__first_;
            v309.__r_.__value_.__r.__words[2] = v306.__end_;
            std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v304.__pn_, &v309);
            if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v309.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
            }

            std::string::append(&v304.__pn_, ".aupreset", 9uLL);
            v306.__end_cap_.__value_ = &v286;
            std::allocator<std::string>::allocate_at_least[abi:ne200100](1uLL);
          }

          v224 = *(this + 2034);
          *(this + 2034) = 0;
          if (v224)
          {
            CFRelease(v224);
          }

          if (!*(this + 2027) || !*(this + 2028) || !*(this + 2029) || !*(this + 2030))
          {
            goto LABEL_714;
          }

          *(this + 4070) = VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this);
          *(this + 16284) = 1;
          *(this + 1108) |= 1uLL;
          v249 = *(this + 544);
          if (v249)
          {
            applesauce::CF::make_DataRef(&__replacement, *(this + 271), 8 * v249);
            v250 = *(this + 16752);
            if (v250 == 1)
            {
              applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef &>(&v309, "Data", &__replacement.__pn_.__r_.__value_.__l.__data_);
              v305.__r_.__value_.__r.__words[0] = &v309;
              v305.__r_.__value_.__l.__size_ = 1;
              CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v305);
            }

            else
            {
              applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(&v309, "ID", &VoiceProcessorV2::kFarEndVoiceMixGraphReporterIDsPropertyID);
              applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef &>(&v309.__r_.__value_.__r.__words[2], "data", &__replacement.__pn_.__r_.__value_.__l.__data_);
              v304.__pn_.__r_.__value_.__r.__words[0] = &v309;
              v304.__pn_.__r_.__value_.__l.__size_ = 2;
              CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v304);
            }

            v253 = *(this + 2031);
            *(this + 2031) = CFDictionaryRef;
            if (v253)
            {
              CFRelease(v253);
            }

            if (v250)
            {
              if (v309.__r_.__value_.__l.__size_)
              {
                CFRelease(v309.__r_.__value_.__l.__size_);
              }

              if (v309.__r_.__value_.__r.__words[0])
              {
                CFRelease(v309.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              for (i = 0; i != -4; i -= 2)
              {
                v255 = *(&v309 + i * 8 + 24);
                if (v255)
                {
                  CFRelease(v255);
                }

                v256 = v309.__r_.__value_.__r.__words[i + 2];
                if (v256)
                {
                  CFRelease(v256);
                }
              }
            }

            v252 = __replacement.__pn_.__r_.__value_.__r.__words[0];
            if (!__replacement.__pn_.__r_.__value_.__r.__words[0])
            {
              goto LABEL_669;
            }
          }

          else
          {
            v252 = *(this + 2031);
            *(this + 2031) = 0;
            if (!v252)
            {
LABEL_669:
              if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) == 2)
              {
                if (*(this + 16388) == 1)
                {
                  if (*(this + 20) == 2)
                  {
                    v257 = 4;
                  }

                  else
                  {
                    v257 = 5;
                  }
                }

                else
                {
                  v257 = 0;
                }

                v285 = v257;
                v260 = *(this + 16752);
                if (v260 == 1)
                {
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int const&>(&v305, "UInt32", &v285);
                  v304.__pn_.__r_.__value_.__r.__words[0] = &v305;
                  v304.__pn_.__r_.__value_.__l.__size_ = 1;
                  v261 = applesauce::CF::details::make_CFDictionaryRef(&v304);
                }

                else
                {
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(&v305, "ID", &VoiceProcessorV2::kFarEndVoiceMixGraphSpatialMixerHeadTrackingModePropertyID);
                  applesauce::CF::make_DataRef(&v284, &v285, 4);
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v305.__r_.__value_.__r.__words[2], "data", &v284);
                  __replacement.__pn_.__r_.__value_.__r.__words[0] = &v305;
                  __replacement.__pn_.__r_.__value_.__l.__size_ = 2;
                  v261 = applesauce::CF::details::make_CFDictionaryRef(&__replacement);
                }

                v262 = *(this + 2032);
                *(this + 2032) = v261;
                if (v262)
                {
                  CFRelease(v262);
                }

                if (v260)
                {
                  if (v305.__r_.__value_.__l.__size_)
                  {
                    CFRelease(v305.__r_.__value_.__l.__size_);
                  }

                  if (v305.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(v305.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  for (j = 0; j != -4; j -= 2)
                  {
                    v264 = *(&v305 + j * 8 + 24);
                    if (v264)
                    {
                      CFRelease(v264);
                    }

                    v265 = v305.__r_.__value_.__r.__words[j + 2];
                    if (v265)
                    {
                      CFRelease(v265);
                    }
                  }

                  applesauce::CF::DataRef::~DataRef(&v284);
                }

                v283 = *(this + 16388);
                v266 = *(this + 16752);
                if (v266 == 1)
                {
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int const&>(&v304, "UInt32", &v283);
                  __replacement.__pn_.__r_.__value_.__r.__words[0] = &v304;
                  __replacement.__pn_.__r_.__value_.__l.__size_ = 1;
                  v267 = applesauce::CF::details::make_CFDictionaryRef(&__replacement);
                }

                else
                {
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(&v304, "ID", &VoiceProcessorV2::kFarEndVoiceMixGraphSpatialMixerHeadTrackingEnablePropertyID);
                  applesauce::CF::make_DataRef(&v286, &v283, 4);
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v304.__pn_.__r_.__value_.__r.__words[2], "data", &v286);
                  v288 = &v304;
                  v289 = 2;
                  v267 = applesauce::CF::details::make_CFDictionaryRef(&v288);
                }

                v268 = *(this + 2033);
                *(this + 2033) = v267;
                if (v268)
                {
                  CFRelease(v268);
                }

                if (v266)
                {
                  if (v304.__pn_.__r_.__value_.__l.__size_)
                  {
                    CFRelease(v304.__pn_.__r_.__value_.__l.__size_);
                  }

                  if (v304.__pn_.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(v304.__pn_.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  for (k = 0; k != -4; k -= 2)
                  {
                    v270 = *(&v304 + k * 8 + 24);
                    if (v270)
                    {
                      CFRelease(v270);
                    }

                    v271 = v304.__pn_.__r_.__value_.__r.__words[k + 2];
                    if (v271)
                    {
                      CFRelease(v271);
                    }
                  }

                  applesauce::CF::DataRef::~DataRef(&v286);
                }
              }

              else
              {
                v258 = *(this + 2032);
                *(this + 2032) = 0;
                if (v258)
                {
                  CFRelease(v258);
                }

                v259 = *(this + 2033);
                *(this + 2033) = 0;
                if (v259)
                {
                  CFRelease(v259);
                }
              }

              atomic_fetch_add(this + 2047, 1uLL);
LABEL_714:
              __replacement.__pn_.__r_.__value_.__r.__words[0] = &v291;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__replacement);
              __replacement.__pn_.__r_.__value_.__r.__words[0] = &v294;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__replacement);
              __replacement.__pn_.__r_.__value_.__r.__words[0] = &v297;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__replacement);
              return;
            }
          }

          CFRelease(v252);
          goto LABEL_669;
        }

LABEL_718:
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

LABEL_717:
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

LABEL_716:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }
}
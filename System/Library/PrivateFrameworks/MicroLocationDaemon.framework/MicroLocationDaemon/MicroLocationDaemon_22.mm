void sub_25918A33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  a19[1] = v47;
  ULMapLabelDOAndLabelObjectID::~ULMapLabelDOAndLabelObjectID(&a47);
  ULMapLabelDO::~ULMapLabelDO(&STACK[0x220]);

  a47 = a19;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&a47);
  std::optional<ULLocalizationResult>::~optional(&a30);

  ULHomeSlamLocalizerState::~ULHomeSlamLocalizerState(&STACK[0x308]);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnHomeSlamModel_ReplayPhase_RFOnly(uint64_t *__return_ptr a1@<X8>, ULModel *a2@<X2>, uint64_t *a3@<X0>, uint64_t a4@<X1>, _OWORD *a5@<X3>)
{
  v68 = *MEMORY[0x277D85DE8];
  ULHomeSlamLocalizer::reset(&v52, a2, v65);
  v51 = 0;
  v9 = 0uLL;
  v50 = 0u;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    while (1)
    {
      v12 = *(a4 + 24);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v12 + 48))(v12))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v24 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModel_ReplayPhase_RFOnly]: Abort", buf, 2u);
        }

        v23 = a1;
        goto LABEL_53;
      }

      CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(v53);
      CLMicroLocationFingerprint::create(buf, v10, v53);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v53[0].var1);
      if (v64)
      {
        break;
      }

LABEL_44:
      v10 += 296;
      if (v10 == v11)
      {
        v9 = v50;
        v22 = v51;
        goto LABEL_47;
      }
    }

    ULHomeSlamLocalizer::localize(&v52, a2, buf, v65, 0, v43);
    if (v49)
    {
      v15 = *(v10 + 64);
      v14 = *(v10 + 72);
      if ((v14 - v15) >> 7 != (*(v10 + 280) - *(v10 + 272)) >> 3)
      {
        v25 = _CLLogObjectForCategory_MicroLocation_Default(v13);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = (*(v10 + 72) - *(v10 + 64)) >> 7;
          v27 = (*(v10 + 280) - *(v10 + 272)) >> 3;
          *&v53[0].var0.var0.var0 = 68290051;
          LOWORD(v53[0].var0.var0.var1.var2) = 2082;
          *(&v53[0].var0.var0.var1.var2 + 2) = "";
          WORD1(v53[0].var1.var0.var1.var0) = 2050;
          *(&v53[0].var1.var0.var1.var0 + 4) = v26;
          WORD2(v53[0].var1.var0.var1.var1) = 2050;
          *(&v53[0].var1.var0.var1.var1 + 6) = v27;
          HIWORD(v53[0].var1.var0.var1.var2) = 2082;
          *&v53[0].var1.var1 = "assert";
          *&v53[0].var2.var0.var0 = 2081;
          *(&v53[0].var2.var0.var1.var0 + 2) = "scanningEvent.first.fLabels.size() == scanningEvent.second.size()";
          _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[learnHomeSlamModel_ReplayPhase_RFOnly]: Invalid scanning event labels sizes, scanningEvent.first.fLabels.size():%{public}lu, scanningEvent.second.size():%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v53, 0x3Au);
        }

        v29 = _CLLogObjectForCategory_MicroLocation_Default(v28);
        if (os_signpost_enabled(v29))
        {
          v30 = (*(v10 + 72) - *(v10 + 64)) >> 7;
          v31 = (*(v10 + 280) - *(v10 + 272)) >> 3;
          *&v53[0].var0.var0.var0 = 68290051;
          LOWORD(v53[0].var0.var0.var1.var2) = 2082;
          *(&v53[0].var0.var0.var1.var2 + 2) = "";
          WORD1(v53[0].var1.var0.var1.var0) = 2050;
          *(&v53[0].var1.var0.var1.var0 + 4) = v30;
          WORD2(v53[0].var1.var0.var1.var1) = 2050;
          *(&v53[0].var1.var0.var1.var1 + 6) = v31;
          HIWORD(v53[0].var1.var0.var1.var2) = 2082;
          *&v53[0].var1.var1 = "assert";
          *&v53[0].var2.var0.var0 = 2081;
          *(&v53[0].var2.var0.var1.var0 + 2) = "scanningEvent.first.fLabels.size() == scanningEvent.second.size()";
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[learnHomeSlamModel_ReplayPhase_RFOnly]: Invalid scanning event labels sizes", "{msg%{public}.0s:[learnHomeSlamModel_ReplayPhase_RFOnly]: Invalid scanning event labels sizes, scanningEvent.first.fLabels.size():%{public}lu, scanningEvent.second.size():%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v53, 0x3Au);
        }

        v33 = _CLLogObjectForCategory_MicroLocation_Default(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = (*(v10 + 72) - *(v10 + 64)) >> 7;
          v35 = (*(v10 + 280) - *(v10 + 272)) >> 3;
          *&v53[0].var0.var0.var0 = 68290051;
          LOWORD(v53[0].var0.var0.var1.var2) = 2082;
          *(&v53[0].var0.var0.var1.var2 + 2) = "";
          WORD1(v53[0].var1.var0.var1.var0) = 2050;
          *(&v53[0].var1.var0.var1.var0 + 4) = v34;
          WORD2(v53[0].var1.var0.var1.var1) = 2050;
          *(&v53[0].var1.var0.var1.var1 + 6) = v35;
          HIWORD(v53[0].var1.var0.var1.var2) = 2082;
          *&v53[0].var1.var1 = "assert";
          *&v53[0].var2.var0.var0 = 2081;
          *(&v53[0].var2.var0.var1.var0 + 2) = "scanningEvent.first.fLabels.size() == scanningEvent.second.size()";
          _os_log_impl(&dword_258FE9000, v33, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[learnHomeSlamModel_ReplayPhase_RFOnly]: Invalid scanning event labels sizes, scanningEvent.first.fLabels.size():%{public}lu, scanningEvent.second.size():%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v53, 0x3Au);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationLearner.mm", 1952, "learnHomeSlamModel_ReplayPhase_RFOnly");
        __break(1u);
      }

      if (v14 != v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        do
        {
          LOBYTE(v42) = 0;
          BYTE12(v42) = 0;
          if ((v49 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          ULLocalizationResult::getProbabilitiesAsFloatVector(v43, v40);
          LOBYTE(__p[0]) = 0;
          v39 = 0;
          v37 = cl::chrono::CFAbsoluteTimeClock::now();
          ULMapLabelDO::ULMapLabelDO(v53, &v42, v40, __p, &v37, (*(v10 + 64) + v17), a5);
          if (v39 == 1 && __p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v41 == 1 && v40[0])
          {
            v40[1] = v40[0];
            operator delete(v40[0]);
          }

          v19 = *(v10 + 272);
          v20 = *(&v50 + 1);
          if (*(&v50 + 1) >= v51)
          {
            v21 = std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDO const&,NSManagedObjectID * const {__strong}&>(&v50, v53, (v19 + v16));
          }

          else
          {
            ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID(*(&v50 + 1), v53, *(v19 + v16));
            v21 = v20 + 240;
          }

          *(&v50 + 1) = v21;
          if (v57 == 1)
          {
            v56 = -1;
          }

          if (v55 < 0)
          {
            operator delete(v54);
          }

          if (v53[0].var2.var1 && v53[0].var2.var0.var1.var0)
          {
            v53[0].var2.var0.var1.var1 = v53[0].var2.var0.var1.var0;
            operator delete(v53[0].var2.var0.var1.var0);
          }

          if (v53[0].var1.var1 && v53[0].var1.var0.var1.var0)
          {
            v53[0].var1.var0.var1.var1 = v53[0].var1.var0.var1.var0;
            operator delete(v53[0].var1.var0.var1.var0);
          }

          ++v18;
          v17 += 128;
          v16 += 8;
        }

        while (v18 < (*(v10 + 72) - *(v10 + 64)) >> 7);
        if ((v49 & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v49)
    {
LABEL_40:
      if (v64)
      {
        *&v53[0].var0.var0.var0 = &v63;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v53);
        if (v61)
        {
          v62 = v61;
          operator delete(v61);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v60);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v59);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(buf);
      }

      goto LABEL_44;
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v44 == 1 && v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }

    goto LABEL_40;
  }

  v22 = 0;
LABEL_47:
  *a1 = v9;
  a1[2] = v22;
  v23 = &v50;
LABEL_53:
  *v23 = 0;
  v23[1] = 0;
  v23[2] = 0;
  *buf = &v50;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings(v65);
}

void sub_25918AB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  std::optional<CLMicroLocationFingerprint>::~optional(&STACK[0x210]);
  a19 = &a41;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&a19);
  ULHomeSlamLocalizerState::~ULHomeSlamLocalizerState(&STACK[0x300]);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnFromModelType(CLMicroLocationLearner *a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v62 = 2082;
    *&v62[2] = "";
    v63 = 2050;
    v64 = a3;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start learn model, model-type:%{public}lu}", buf, 0x1Cu);
  }

  if ((ULSettings::get<ULSettings::EnableLearning>() & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v13 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "#Warning Tried to run learning, but learning is disabled";
    goto LABEL_25;
  }

  ULSettings::get<ULSettings::EnabledModelTypes>(buf);
  if (*v62 <= a3)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = *(*buf + ((a3 >> 3) & 0x1FFFFFF8));
  operator delete(*buf);
  v55 = a3;
  if (((v6 >> a3) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v15 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 67174657;
    *&buf[4] = a3;
    v14 = "Model Type %{private}d disabled in settings";
    v16 = v15;
    v17 = OS_LOG_TYPE_DEBUG;
    v18 = 8;
LABEL_26:
    _os_log_impl(&dword_258FE9000, v16, v17, v14, buf, v18);
    return;
  }

  (*(**(a1 + 5) + 40))(*(a1 + 5));
  if (((*(**(a1 + 5) + 56))() & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v13 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "#Warning Tried to run learning, but database is not valid";
LABEL_25:
    v16 = v13;
    v17 = OS_LOG_TYPE_DEFAULT;
    v18 = 2;
    goto LABEL_26;
  }

  v7 = cl::chrono::CFAbsoluteTimeClock::now();
  if ([MEMORY[0x277D28868] isInternalInstall] && ((+[ULDefaultsSingleton shared](ULDefaultsSingleton, "shared"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "defaultsDictionary"), v9 = objc_claimAutoreleasedReturnValue(), v8, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "ULEnableSamplingForLearningAnalyticsOnInternal"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", v10), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v12 = objc_msgSend(MEMORY[0x277CBEC28], "BOOLValue")) : (v12 = objc_msgSend(v11, "BOOLValue")), v19 = v12, v11, v10, v9, !v19))
  {
    v26 = 1;
  }

  else
  {
    v20 = +[ULDefaultsSingleton shared];
    v21 = [v20 defaultsDictionary];

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSamplingRateForLearningAnalytics"];
    v23 = [v21 objectForKey:v22];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v23 doubleValue];
    }

    else
    {
      [&unk_286A72F50 doubleValue];
    }

    v25 = v24;

    v26 = arc4random_uniform(0xF4241u) / 1000000.0 <= v25;
  }

  v27 = ULSettings::get<ULSettings::AnalyticsSendEventEnabled>();
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::persistSingleModel();
  }

  v56 = v26 & v27;
  v28 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    CLMicroLocationProtobufHelper::ModelTypeToDomain(a3, &__p);
    v29 = v60 >= 0 ? &__p : __p;
    *buf = 68289538;
    *&buf[4] = 0;
    *v62 = 2082;
    *&v62[2] = "";
    v63 = 2082;
    v64 = v29;
    v65 = 1026;
    LODWORD(v66) = v56;
    _os_log_impl(&dword_258FE9000, v28, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Analytics events for learning, model type:%{public, location:escape_only}s, enabled:%{public}hhd}", buf, 0x22u);
    if (v60 < 0)
    {
      operator delete(__p);
    }
  }

  CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(a1, &__p);
  v30 = +[ULDefaultsSingleton shared];
  v31 = [v30 defaultsDictionary];

  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearningRecordingLimit"];
  v33 = [v31 objectForKey:v32];
  if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v54 = [v33 unsignedIntValue];
  }

  else
  {
    v54 = [&unk_286A72618 unsignedIntValue];
  }

  v34 = __p;
  v35 = v59;
  if (__p != v59)
  {
    while (1)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = CLMicroLocationLearner::getLearnEndDateForloiGroupId(a1, *(v34 + 24));
      v38 = +[ULDefaultsSingleton shared];
      v39 = [v38 defaultsDictionary];

      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULForceHomeSlamClusteringMode"];
      v41 = [v39 objectForKey:v40];
      if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v42 = [v41 BOOLValue];
      }

      else
      {
        v42 = [MEMORY[0x277CBEC28] BOOLValue];
      }

      v43 = v42;

      if (v43)
      {
        v44 = ULSettings::get<ULSettings::HomeSlamLearningEnabled>() ^ 1;
        if (a3 != 4)
        {
          LOBYTE(v44) = 1;
        }

        if (v44)
        {
          goto LABEL_66;
        }

        std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v70, a2);
        CLMicroLocationLearner::learnHomeSlamModelForLOI(a1, v70, v34, v37, v56, v7);
        v45 = v70;
        goto LABEL_65;
      }

      if (a3 <= 1)
      {
        if (a3)
        {
          if (a3 == 1)
          {
            CLMicroLocationLearner::learnFromModelType(buf);

            abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationLearner.mm", 790, "learnFromModelType");
            __break(1u);
            return;
          }

LABEL_72:
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationLearner::persistSingleModel();
          }

          v47 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            *buf = 68289282;
            *&buf[4] = 0;
            *v62 = 2082;
            *&v62[2] = "";
            v63 = 2050;
            v64 = a3;
            _os_log_impl(&dword_258FE9000, v47, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid model type, model type:%{public}lu}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationLearner::persistSingleModel();
          }

          v48 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(logObject_MicroLocation_Default))
          {
            *buf = 68289282;
            *&buf[4] = 0;
            *v62 = 2082;
            *&v62[2] = "";
            v63 = 2050;
            v64 = a3;
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "invalid model type", "{msg%{public}.0s:invalid model type, model type:%{public}lu}", buf, 0x1Cu);
          }

          goto LABEL_66;
        }

        std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v69, a2);
        CLMicroLocationLearner::learnUnspervisedModelForLOI(a1, v69, v34, v37, v54, v56);
        v45 = v69;
        goto LABEL_65;
      }

      if (a3 == 2)
      {
        break;
      }

      if (a3 != 4)
      {
        goto LABEL_72;
      }

      if (ULSettings::get<ULSettings::HomeSlamLearningEnabled>())
      {
        std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v67, a2);
        CLMicroLocationLearner::learnHomeSlamModelForLOI(a1, v67, v34, v37, v56, v7);
        v45 = v67;
LABEL_65:
        std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v45);
      }

LABEL_66:

      objc_autoreleasePoolPop(v36);
      v34 += 64;
      if (v34 == v35)
      {
        v46 = 1;
      }

      else
      {
        v46 = v43;
      }

      if (v46)
      {
        goto LABEL_80;
      }
    }

    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v68, a2);
    CLMicroLocationLearner::learnLSLModelForLOI(a1, v68, v34, v37, v54, v56, v7);
    v45 = v68;
    goto LABEL_65;
  }

LABEL_80:
  (*(**(a1 + 3) + 32))(*(a1 + 3), a3);
  v49 = cl::chrono::CFAbsoluteTimeClock::now();
  v50 = *(a2 + 24);
  if (!v50)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v51 = v49;
  if ((*(*v50 + 48))(v50))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v52 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v62 = 2082;
      *&v62[2] = "";
      v63 = 2082;
      v64 = "MicroLocationLearning";
      _os_log_impl(&dword_258FE9000, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:operation cancelled, Activity:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  if (onceToken_MicroLocationQE_Default != -1)
  {
    CLMicroLocationLearner::learnMagicalMomentsModel();
  }

  v53 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(logObject_MicroLocationQE_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    *v62 = 2082;
    *&v62[2] = "";
    v63 = 2050;
    v64 = v55;
    v65 = 2050;
    v66 = v51 - v7;
    _os_log_impl(&dword_258FE9000, v53, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Learning, completed, model-type:%{public}lu, Total Time (sec):%{public}.4f}", buf, 0x26u);
  }

  *buf = &__p;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
}

uint64_t ULSettings::get<ULSettings::EnableLearning>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnableLearning"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void ULSettings::get<ULSettings::EnabledModelTypes>(uint64_t a1@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnabledModelTypes"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v14 = 0uLL;
    v13 = 0;
    std::vector<BOOL>::reserve(&v13, [v6 count]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:&v20 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v15 = [*(*(&v16 + 1) + 8 * v10) BOOLValue];
          std::vector<BOOL>::push_back(&v13, &v15);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v16 objects:&v20 count:16];
      }

      while (v8);
    }

    *a1 = v13;
    *(a1 + 8) = v14;
  }

  else
  {
    v20 = 0;
    v21 = 0uLL;
    std::vector<BOOL>::reserve(&v20, 5uLL);
    v11 = 5;
    do
    {
      LOBYTE(v16) = 1;
      std::vector<BOOL>::push_back(&v20, &v16);
      --v11;
    }

    while (v11);
    v12 = v21;
    *a1 = v20;
    *(a1 + 8) = v12;
  }
}

void sub_25918BB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *CLMicroLocationLearner::getLearnEndDateForloiGroupId(CLMicroLocationLearner *this, uuid a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v3 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(this + 10, &v6);
  if (v3)
  {
    v5 = &v6;
    v3 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(this + 10, &v6, &std::piecewise_construct, &v5)[4];
  }

  return v3;
}

uint64_t ULSettings::get<ULSettings::HomeSlamLearningEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearningEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t CLMicroLocationLearner::updateAnchorAppearanceMapFromRapportAndRecordings(uint64_t a1, void *a2, __int128 **a3, uint64_t a4, double a5)
{
  *(&v37 + 1) = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 1065353216;
  v10 = *a4;
  v11 = *(a4 + 8);
  while (v10 != v11)
  {
    std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(&v25, v10, v10);
    v10 += 10;
  }

  v12 = *a3;
  v13 = a3[1];
  if (*a3 == v13)
  {
    v15 = *a3;
  }

  else
  {
    do
    {
      v14 = (*(**(a1 + 32) + 144))(*(a1 + 32));
      v36 = *v12;
      v23 = 0;
      v24 = 0;
      __p = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v36, &v37, 1uLL);
      if (v14)
      {
        objc_msgSend_fetchScanningEventsForUUIDs_(v14);
      }

      else
      {
        *buf = 0;
        *v29 = 0;
        *&v29[8] = 0;
      }

      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      if (*v29 != *buf)
      {
        CLMicroLocationAnchorAppearanceMap::updateAnchorIdSetFromMeasurements(&v25, *buf);
      }

      __p = buf;
      std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&__p);
      ++v12;
    }

    while (v12 != v13);
    v12 = *a3;
    v15 = a3[1];
  }

  v16 = cl::chrono::CFAbsoluteTimeClock::now();
  CLMicroLocationAnchorAppearanceMap::updateSeenAnchors(a2, &v25, v15 != v12, a5, v16);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::persistSingleModel();
  }

  v17 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 8) - *a4) >> 4);
    v19 = a3[1] - *a3;
    v20 = a2[3];
    *buf = 68290050;
    *&buf[4] = 0;
    *v29 = 2082;
    *&v29[2] = "";
    *&v29[10] = 2050;
    *&v29[12] = v18;
    v30 = 2050;
    v31 = *(&v26 + 1);
    v32 = 2050;
    v33 = v19;
    v34 = 2050;
    v35 = v20;
    _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Updating Anchor ID Set, Num. Rapport Anchor Devices:%{public}lu, Num Rapport and Measured Anchor Devices:%{public}lu, Number of recordings since last model:%{public}lu, Anchor Appearance Map size:%{public}lu}", buf, 0x3Au);
  }

  return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v25);
}

void CLMicroLocationLearner::getRecordingUUIDsBetweenAnchorsTimestampsForLoi(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = +[ULDefaultsSingleton shared];
  v16 = [v10 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxNewRecordingsForAnchorAppearanceMap"];
  v12 = [v16 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 unsignedIntValue];
  }

  else
  {
    v13 = [&unk_286A72618 unsignedIntValue];
  }

  v14 = v13;

  v15 = (*(**(a1 + 32) + 144))(*(a1 + 32));
  v17 = v15;
  if (v15)
  {
    [v15 fetchDistinctScanningEventsUUIDsFromTime:a2 toTime:v14 atLoiGroupId:a4 withLimit:a5];
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t CLMicroLocationLearner::generateAnchorAppearanceMapConfigurationForLoi@<X0>(uint64_t a1@<X0>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    operator new();
  }

  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(&__p);
  v8 = (*(**(a1 + 32) + 168))(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    objc_msgSend_fetchMostRecentAnchorAppearanceMapAtLoiGroupId_(v8);
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    *buf = 0u;
    v37 = 0u;
  }

  v11 = 0.0;
  if (BYTE8(v39) == 1)
  {
    v12 = v38;
    if (!v38)
    {
      v12 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance(v10) + 8);
    }

    CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(v32, v12);
    v30 = v34;
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>(&__p, v33, 0);
    v31 = v35;
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v32);
    v11 = *buf;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }
  }

  v28 = cl::chrono::CFAbsoluteTimeClock::now();
  CLMicroLocationLearner::getRecordingUUIDsBetweenAnchorsTimestampsForLoi(a1, a3, v27, v11, v28);
  v25 = 0uLL;
  v26 = 0;
  v14 = +[ULDefaultsSingleton shared];
  v15 = [v14 defaultsDictionary];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRapportUsageEnabled"];
  v17 = [v15 objectForKey:v16];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = [v17 BOOLValue];
  }

  else
  {
    v18 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v19 = v18;

  if (v19)
  {
    (*(**(a1 + 24) + 40))(v32, v11);
    std::vector<CLMicroLocationRapportMonitorItem>::__vdeallocate(&v25);
    v25 = *v32;
    v26 = v33;
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v22 = v32;
    std::vector<CLMicroLocationRapportMonitorItem>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  CLMicroLocationLearner::updateAnchorAppearanceMapFromRapportAndRecordings(a1, &__p, v27, &v25, v11);
  CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration(&v22);
  v24 |= 2u;
  v20 = v23;
  if (!v23)
  {
    operator new();
  }

  CLMicroLocationAnchorAppearanceMap::toProtobuf(&__p, v32);
  CLMicroLocationProto::anchorAppearancesVector::CopyFrom(v20, v32);
  CLMicroLocationProto::anchorAppearancesVector::~anchorAppearancesVector(v32);
  ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(a4, &v28, a3, &v22);
  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(&v22);
  *v32 = &v25;
  std::vector<CLMicroLocationRapportMonitorItem>::__destroy_vector::operator()[abi:ne200100](v32);
  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (BYTE8(v39) == 1)
  {
    CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((&v37 + 8));
  }

  return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&__p);
}

void sub_25918C854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  operator delete(v28);

  if (*(v29 - 120) == 1)
  {
    CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((v29 - 152));
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a20);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::generateAnchorAppearanceMap(CLMicroLocationLearner *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (ULSettings::get<ULSettings::AdaptiveAnchorsEnable>())
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(a1, &v14);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = (v15 - v14) >> 6;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Generating anchor appearance maps, LOI count:%{public}lu}", buf, 0x1Cu);
    }

    v5 = v14;
    v6 = v15;
    if (v14 == v15)
    {
LABEL_12:
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "#Warning failed to insert Anchor Appearances Map to MicroLocation DB";
LABEL_20:
        _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      }
    }

    else
    {
      v7 = 0;
      while (1)
      {
        v8 = *(a2 + 24);
        if (!v8)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v8 + 48))(v8))
        {
          break;
        }

        CLMicroLocationLearner::generateAnchorAppearanceMapConfigurationForLoi(a1, (v5 + 24), buf);
        v9 = (*(**(a1 + 4) + 168))(*(a1 + 4));
        v17 = *buf;
        v18 = *&buf[16];
        CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration(v19, &buf[24]);
        memset(v13, 0, sizeof(v13));
        std::vector<ULAnchorAppearanceMapDO>::__init_with_size[abi:ne200100]<ULAnchorAppearanceMapDO const*,ULAnchorAppearanceMapDO const*>(v13, &v17, &v20, 1uLL);
        v10 = [v9 insertDataObjects:v13 atLoiUUID:v5 + 24];
        v16 = v13;
        std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&v16);
        CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(v19);

        v7 += v10;
        CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(&buf[24]);
        v5 += 64;
        if (v5 == v6)
        {
          if (v7)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Cancelled, skipping generation of anchor appearance maps";
        goto LABEL_20;
      }
    }

LABEL_21:
    *buf = &v14;
    std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
  }
}

void sub_25918CC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((v25 + 24));
  a25 = &a13;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::onLearningBegin(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Learning activity started", buf, 2u);
  }

  v7 = *(a2 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v7 + 48))(v7))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Learning cancelled before onLearningBegin event", v9, 2u);
    }
  }

  else
  {
    (*(**(a1 + 24) + 16))(*(a1 + 24));
  }
}

uint64_t CLMicroLocationLearner::onLearningCompleted(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  [*(a1 + 16) timeIntervalSinceNow];
  v5 = v4;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v6 = -v5;
  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 68289283;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2049;
    v26 = v6;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Learning activity completed, duration [s]:%{private}f}", &v21, 0x1Cu);
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v8 + 48))(v8))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "Learning cancelled before onLearningCompleted event", &v21, 2u);
    }
  }

  else
  {
    v10 = +[ULDefaultsSingleton shared];
    v11 = [v10 defaultsDictionary];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearningActivityMaxAllowedDuration"];
    v13 = [v11 objectForKey:v12];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v13 intValue];
    }

    else
    {
      v14 = [&unk_286A726A8 intValue];
    }

    v15 = v14;

    if (v15 < v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v16 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        v21 = 68289539;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2049;
        v26 = v6;
        v27 = 2049;
        v28 = v15;
        _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Learning activity passed max allowed duration, duration [s]:%{private}f, max allowed duration [s]:%{private}f}", &v21, 0x26u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v17 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        v21 = 68289539;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2049;
        v26 = v6;
        v27 = 2049;
        v28 = v15;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Learning activity passed max allowed duration", "{msg%{public}.0s:Learning activity passed max allowed duration, duration [s]:%{private}f, max allowed duration [s]:%{private}f}", &v21, 0x26u);
      }
    }

    v18 = CLMicroLocationLearner::sendLearningTaskAnalytics(a1);
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
  }

  return (*(**(a1 + 24) + 48))(*(a1 + 24));
}

id CLMicroLocationLearner::sendLearningTaskAnalytics(id *this)
{
  [this[2] timeIntervalSinceNow];
  v3 = v2;
  v4 = (*(*this[4] + 64))(this[4]);
  std::string::basic_string[abi:ne200100]<0>(v18, "custom");
  v5 = [v4 countDistinctLoiTypes:v18];
  v6 = (*(*this[4] + 64))(this[4]);
  std::string::basic_string[abi:ne200100]<0>(__p, "home");
  v7 = [v6 countDistinctLoiTypes:__p];
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v7 + v5;

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(this, v18);
  v9 = (v18[1] - v18[0]) >> 6;
  *(this + 1) = v9;
  if (v9 < v8)
  {
    *(this + 8) = 1;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:-v3];
  [v10 setObject:v11 forKeyedSubscript:@"learningTaskRuntime"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:*this];
  [v10 setObject:v12 forKeyedSubscript:@"numberOfModelsLearned"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 1)];
  [v10 setObject:v13 forKeyedSubscript:@"numberOfValidLOIsForLearning"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 8)];
  [v10 setObject:v14 forKeyedSubscript:@"wereLOIsRemoved"];

  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    [ULSendEvent sendEvent:v10 withEventName:@"com.apple.MicroLocation.LearningTask"];
  }

  __p[0] = v18;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](__p);

  return v10;
}

void sub_25918D47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __p = &a15;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnBlueAtlasModelWorkItem(void **a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v3 + 48))(v3))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      v6 = "Learning cancelled before onLearningCompleted event";
LABEL_18:
      v9 = v5;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_19;
    }
  }

  else if (ULSettings::get<ULSettings::EnableLearning>())
  {
    ULSettings::get<ULSettings::EnabledModelTypes>(&__p);
    if (v20 <= 3)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v7 = *__p;
    operator delete(__p);
    if ((v7 & 8) != 0)
    {
      (*(*a1[5] + 40))(a1[5]);
      if ((*(*a1[5] + 56))(a1[5]))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
        }

        v11 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          __p = 68289026;
          LOWORD(v20) = 2082;
          *(&v20 + 2) = "";
          _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MicrolocationLearner: kicking off Learning for Blue Atlas models}", &__p, 0x12u);
        }

        v12 = (*(*a1[4] + 112))(a1[4]);
        v13 = v12;
        if (v12)
        {
          objc_msgSend_getAllDistinctCustomLoiIds(v12);
        }

        else
        {
          __p = 0;
          v20 = 0uLL;
        }

        v14 = __p;
        v15 = v20;
        if (__p != v20)
        {
          v16 = 0;
          do
          {
            std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v18, a2);
            v17 = CLMicroLocationLearner::learnBlueAtlasModelInternal(a1, v18, v14);
            std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v18);
            v16 |= v17;
            ++v14;
          }

          while (v14 != v15);
          if (v16)
          {
            (*(*a1[3] + 32))(a1[3], 3);
          }
        }

        if (__p)
        {
          *&v20 = __p;
          operator delete(__p);
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
        }

        v5 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          v6 = "#Warning Tried to run learning, but database is not valid";
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        v6 = "Model Type BlueAtlas disabled in settings";
        v9 = v8;
        v10 = OS_LOG_TYPE_DEBUG;
LABEL_19:
        _os_log_impl(&dword_258FE9000, v9, v10, v6, &__p, 2u);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      v6 = "#Warning Tried to run learning, but learning is disabled";
      goto LABEL_18;
    }
  }
}

void sub_25918D8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CLMicroLocationLearner::learnBlueAtlasModelInternal(uint64_t a1, uint64_t a2, uuid *a3)
{
  v105 = *MEMORY[0x277D85DE8];
  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  memset(v57, 0, sizeof(v57));
  v58 = 1065353216;
  v7 = (*(**(a1 + 32) + 104))(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    objc_msgSend_fetchAllServicesForServiceType_onlyServicesWithLabels_(v7);
  }

  else
  {
    v55 = 0;
    v54 = 0;
    v56 = 0;
  }

  v10 = v54;
  v11 = v55;
  if (v54 == v55)
  {
LABEL_88:
    v45 = 0;
    goto LABEL_89;
  }

  v49 = 0;
  do
  {
    if ((ULService::uint64ToLocationTypesBitset(*(v10 + 56), v9) & 4) == 0)
    {
      goto LABEL_86;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v91, a2);
    CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(v91, *(a1 + 32), v57, a3, buf);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v91);
    v13 = *(a2 + 24);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v13 + 48))(v13))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *v76 = 0;
        _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "BlueAtlas Learning cancelled", v76, 2u);
      }

LABEL_20:
      v17 = 0;
      goto LABEL_76;
    }

    if (v104 != 1)
    {
      goto LABEL_20;
    }

    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,boost::uuids::uuid,CLMicroLocationModel,std::vector<ULMapLabelDOAndLabelObjectID>>::__tuple_impl(v76, buf);
    CLMicroLocationModel::toProtobuf(v53, v78);
    v15 = *v76;
    v16 = v77;
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v52, v53);
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(&__p, v52);
    v62[44] = 0;
    if (*(v10 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v50, *(v10 + 32), *(v10 + 40));
    }

    else
    {
      v50 = *(v10 + 32);
    }

    v51 = 1;
    v69 = *(v10 + 8);
    v70 = 1;
    ULModelDO::ULModelDO(&v71, v15, v16, &__p, &v50, &v69, *a3->data, *&a3->data[8], v6);
    if (v51 == 1 && SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
    CLMicroLocationProto::Model::~Model(v52);
    v18 = (*(**(a1 + 32) + 80))(*(a1 + 32));
    ULModelDO::ULModelDO(&__p, &v71);
    memset(v52, 0, 24);
    std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(v52, &__p, &v66, 1uLL);
    v69 = *(v10 + 8);
    v70 = 1;
    v67 = *a3;
    v68 = 1;
    v19 = [v18 insertDataObjects:v52 forServiceUUID:&v69 atLoiUUID:&v67];
    *&v69 = v52;
    std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v69);
    if (v65 == 1 && v64 < 0)
    {
      operator delete(v63);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v62);

    v20 = (*(**(a1 + 32) + 152))(*(a1 + 32));
    [v20 insertMapLabelsWithRelatedLabelsObjectIDs:v90];

    if (v19)
    {
      CandidateQualityReasons = CLMicroLocationModel::getCandidateQualityReasons(v78);
      v22 = *CandidateQualityReasons;
      v23 = CandidateQualityReasons[1];
      if (*CandidateQualityReasons == v23)
      {
        v32 = MEMORY[0x277CBEC28];
        v47 = MEMORY[0x277CBEC28];
        v48 = MEMORY[0x277CBEC28];
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        do
        {
          v28 = *v22++;
          v27 = v28;
          if (v28 == 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v25;
          }

          if (v27 == 3)
          {
            v30 = 1;
          }

          else
          {
            v30 = v26;
          }

          if (v27 == 3)
          {
            v29 = v25;
          }

          if (v27 == 8)
          {
            v24 = 1;
          }

          else
          {
            v26 = v30;
            v25 = v29;
          }
        }

        while (v22 != v23);
        v31 = MEMORY[0x277CBEC28];
        if (v26)
        {
          v32 = MEMORY[0x277CBEC38];
        }

        else
        {
          v32 = MEMORY[0x277CBEC28];
        }

        if (v25)
        {
          v33 = MEMORY[0x277CBEC38];
        }

        else
        {
          v33 = MEMORY[0x277CBEC28];
        }

        if (v24)
        {
          v31 = MEMORY[0x277CBEC38];
        }

        v47 = v31;
        v48 = v33;
      }

      v34 = *(a1 + 24);
      ULModelDO::ULModelDO(&__p, &v71);
      v66 = 1;
      (*(*v34 + 24))(v34, 3, &__p, 0);
      if (v66 == 1)
      {
        if (v65 == 1 && v64 < 0)
        {
          operator delete(v63);
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v62);
      }

      v35 = v32;
      v36 = CLMicroLocationModel::getQualityIndicator(v78) - 1;
      v37 = @"modelQualityUnknown";
      if (v36 <= 2)
      {
        v37 = *(&off_2798D5148 + v36);
      }

      v38 = CLMicroLocationModel::getCandidateQualityIndicator(v78) - 1;
      v39 = @"modelQualityUnknown";
      if (v38 <= 2)
      {
        v39 = *(&off_2798D5148 + v38);
      }

      v60[0] = &unk_286A725B8;
      v59[0] = @"learningOccurred";
      v59[1] = @"numAccessPoints";
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v83];
      v41 = v40;
      v42 = @"modelNotStable";
      if (v78[8])
      {
        v42 = @"modelIsStable";
      }

      v60[1] = v40;
      v60[2] = v42;
      v59[2] = @"isModelStable";
      v59[3] = @"modelQuality";
      v60[3] = v37;
      v60[4] = v39;
      v59[4] = @"candidateModelQuality";
      v59[5] = @"qualityReasonLowNumberOfObservations";
      v60[5] = v35;
      v60[6] = v48;
      v59[6] = @"qualityReasonLowNumberOfWiFiAnchors";
      v59[7] = @"candidateQualityReasonLowNumberRobustWiFiSources";
      v60[7] = v47;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:8];

      CLMicroLocationLearner::sendBlueAtlasLearningAnalytics(v44, v43);
      ++v49;
    }

    if (v75 == 1 && v74 < 0)
    {
      operator delete(v73);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v72);
    CLMicroLocationProto::Model::~Model(v53);
    *__p.var0.data = v90;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v89 < 0)
    {
      operator delete(v88);
    }

    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v85);
    *__p.var0.data = &v84;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v82 == 1 && v80)
    {
      v81 = v80;
      operator delete(v80);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v79);
    v17 = 1;
LABEL_76:
    if (v104 == 1)
    {
      *v76 = &v103;
      std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](v76);
      if (v102 < 0)
      {
        operator delete(v101);
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v98);
      *v76 = &v97;
      std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v76);
      if (v96 == 1 && v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v93 + 2);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_88;
    }

LABEL_86:
    v10 += 88;
  }

  while (v10 != v11);
  v45 = v49 > 0;
LABEL_89:
  *buf = &v54;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(v57);
  return v45;
}

void CLMicroLocationLearner::updateModelDaysWithRecordings(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a4 + 16) == 1)
  {
    v8 = *(a4 + 8);
    v9 = *a3;
    v10 = (*(**(a1 + 32) + 144))(*(a1 + 32));
    LODWORD(a5) = [v10 countScanningEventsFromTime:a5 toTime:v8 atLoiGroupId:v9];

    if (a5)
    {
      v11 = *a4 + 1;
    }

    else
    {
      v11 = *a4;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v12 = logObject_MicroLocation_Default;
    v11 = 1;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      v15 = 67109120;
      v16 = 1;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEBUG, "Learning model without old model. Setting number of days with recordings to %d", &v15, 8u);
    }
  }

  *(a2 + 12) = v11;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::persistSingleModel();
  }

  v13 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a2 + 12);
    v15 = 68289283;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 1025;
    v20 = v14;
    _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting model number of days with recordings, numDaysWithRecordings:%{private}u}", &v15, 0x18u);
  }
}

uint64_t CLMicroLocationModel::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    *(a1 + 48) = *(a2 + 48);
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>((a1 + 16), *(a2 + 32), 0);
  }

  *(a1 + 56) = *(a2 + 56);
  std::__optional_storage_base<CLMicroLocationModel::BlueAtlasData,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<CLMicroLocationModel::BlueAtlasData,false>>(a1 + 72, a2 + 72);
  v4 = *(a2 + 144);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 144) = v4;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__vdeallocate((a1 + 176));
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__move_assign(a1 + 200, (a2 + 200));
  *(a1 + 240) = *(a2 + 240);
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 248, (a2 + 248));
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v5 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v5;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  return a1;
}

uint64_t ULSettings::get<ULSettings::MinimumNumberOfDaysWithRecordingsInStableModel>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumNumberOfDaysWithRecordingsInStableModel"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72660 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::vector<CLMicroLocationFingerprint>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CLMicroLocationFingerprint *,CLMicroLocationFingerprint *,CLMicroLocationFingerprint *>(&v7, a3, *(a1 + 8), a2);
    std::vector<CLMicroLocationFingerprint>::__base_destruct_at_end[abi:ne200100](a1, v5);
  }

  return a2;
}

void CLMicroLocationLearner::initializeFingerprintVector(uint64_t *a1, __int128 **a2, const ULScanningEventDO *a3, uint64_t a4, uint64_t a5)
{
  *&v29 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      v11 = *(a4 + 24);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v11 + 48))(v11))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "fingerprint vector creation cancelled", buf, 2u);
        }

        std::vector<CLMicroLocationFingerprint>::__assign_with_size[abi:ne200100]<CLMicroLocationFingerprint const*,CLMicroLocationFingerprint const*>(a1, 0, 0, 0);
      }

      v13 = (*(*a5 + 144))(a5);
      v28 = *v5;
      v20 = 0;
      v21 = 0;
      *buf = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(buf, &v28, &v29, 1uLL);
      if (v13)
      {
        objc_msgSend_fetchScanningEventsForUUIDs_(v13);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      if (*buf)
      {
        v20 = *buf;
        operator delete(*buf);
      }

      if (v17 != v16)
      {
        CLMicroLocationFingerprint::create(buf, v16, a3);
        if (v27 == 1)
        {
          v14 = a1[1];
          if (v14 >= a1[2])
          {
            v15 = std::vector<CLMicroLocationFingerprint>::__emplace_back_slow_path<CLMicroLocationFingerprint>(a1, buf);
          }

          else
          {
            std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::construct[abi:ne200100]<CLMicroLocationFingerprint,CLMicroLocationFingerprint,void,0>(a1, a1[1], buf);
            v15 = v14 + 224;
            a1[1] = v14 + 224;
          }

          a1[1] = v15;
          if (v27)
          {
            *&v28 = &v26;
            std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v28);
            if (__p)
            {
              v25 = __p;
              operator delete(__p);
            }

            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v23);
            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v22);
            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(buf);
          }
        }
      }

      *buf = &v16;
      std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](buf);
      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_25918EA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14)
{
  *(v14 + 8) = v15;
  std::optional<CLMicroLocationFingerprint>::~optional(&__p);
  __p = &a10;
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::createLSLMapLabelsForLabeledScanEventUUIDs(uint64_t a1@<X0>, uuid **a2@<X1>, const ULScanningEventDO *a3@<X2>, uint64_t a4@<X3>, const CLMicroLocationModel *a5@<X4>, _OWORD *a6@<X5>, _DWORD *a7@<X6>, void *a8@<X8>)
{
  v98[4] = *MEMORY[0x277D85DE8];
  v50 = 0;
  v8 = 0uLL;
  v49 = 0u;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    v24 = 0;
LABEL_89:
    *a8 = v8;
    a8[2] = v24;
    v25 = &v49;
  }

  else
  {
    v27 = a8;
    while (1)
    {
      v16 = *(a4 + 24);
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v16 + 48))(v16))
      {
        break;
      }

      v17 = (*(**(a1 + 32) + 144))(*(a1 + 32));
      v89.var0 = *v10;
      v58 = 0;
      __p = 0;
      v57 = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v89, v89.var1.var0.var0.var0, 1uLL);
      if (v17)
      {
        objc_msgSend_fetchScanningEventsWithLabelObjectIDsForUUIDs_(v17);
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v47 != v46)
      {
        std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100](&v89, v46);
        ULScanningEventDO::ULScanningEventDO(&v79, &v89);
        CLMicroLocationFingerprint::create(v72, &v79, a3);
        if (v78 == 1)
        {
          ++*a7;
          std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.microlocation.similarity");
          v18 = cl::chrono::CFAbsoluteTimeClock::now();
          ULModelMetaData::ULModelMetaData(v69, a6, &__p, 0, v18);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(__p);
          }

          ULModel::ULModel(&__p, a5);
          if ((v78 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v36[0] = 0;
          v37 = 0;
          ULRfClusterLocalizer::localize(v38, &__p, v69, v72, v36, &v45);
          if (v37 == 1)
          {
            CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v36);
          }

          ULModel::~ULModel(&__p);
          if (v44 == 1)
          {
            ULLocalizationResult::getProbabilitiesAsFloatVector(v38, &v33);
            if (v35 == 1)
            {
              if (v34 == v33 || v81 == v80)
              {
                goto LABEL_54;
              }

              v19 = 0;
              v20 = 0;
              do
              {
                LOBYTE(v32) = 0;
                BYTE12(v32) = 0;
                if ((v35 & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                v57 = 0;
                __p = 0;
                v58 = 0;
                std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v33, v34, (v34 - v33) >> 2);
                LOBYTE(v59) = 1;
                LOBYTE(v30[0]) = 0;
                v31 = 0;
                v29 = cl::chrono::CFAbsoluteTimeClock::now();
                ULMapLabelDO::ULMapLabelDO(&v51, &v32, &__p, v30, &v29, (v80 + v19), a6);
                if (v31 == 1 && v30[0])
                {
                  v30[1] = v30[0];
                  operator delete(v30[0]);
                }

                if (v59 == 1 && __p)
                {
                  v57 = __p;
                  operator delete(__p);
                }

                ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID(&__p, &v51, *(v98[0] + 8 * v20));
                v21 = *(&v49 + 1);
                if (*(&v49 + 1) >= v50)
                {
                  v23 = std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDOAndLabelObjectID>(&v49, &__p);
                }

                else
                {
                  ULMapLabelDO::ULMapLabelDO(*(&v49 + 1), &__p);
                  v22 = v68;
                  v68 = 0;
                  *(v21 + 232) = v22;
                  v23 = v21 + 240;
                }

                *(&v49 + 1) = v23;

                if (v67 == 1)
                {
                  v66 = -1;
                }

                if (v65 < 0)
                {
                  operator delete(v64);
                }

                if (v63 == 1 && v61)
                {
                  v62 = v61;
                  operator delete(v61);
                }

                if (v60 == 1 && v58)
                {
                  v59 = v58;
                  operator delete(v58);
                }

                if (v55 == 1)
                {
                  v54 = -1;
                }

                if (v53 < 0)
                {
                  operator delete(v52);
                }

                if (v51.var2.var1 && v51.var2.var0.var1.var0)
                {
                  v51.var2.var0.var1.var1 = v51.var2.var0.var1.var0;
                  operator delete(v51.var2.var0.var1.var0);
                }

                if (v51.var1.var1 && v51.var1.var0.var1.var0)
                {
                  v51.var1.var0.var1.var1 = v51.var1.var0.var1.var0;
                  operator delete(v51.var1.var0.var1.var0);
                }

                ++v20;
                v19 += 128;
              }

              while (v20 < (v81 - v80) >> 7);
              if (v35)
              {
LABEL_54:
                if (v33)
                {
                  v34 = v33;
                  operator delete(v33);
                }
              }
            }

            if (v44)
            {
              if (v42)
              {
                v43 = v42;
                operator delete(v42);
              }

              if (v40)
              {
                v41 = v40;
                operator delete(v40);
              }

              if (v39 == 1 && v38[0])
              {
                v38[1] = v38[0];
                operator delete(v38[0]);
              }
            }
          }

          if (v71 == 1)
          {

            std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v70, v70[1]);
          }

          if (v78)
          {
            __p = &v77;
            std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__p);
            if (v75)
            {
              v76 = v75;
              operator delete(v75);
            }

            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v74);
            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v73);
            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v72);
          }
        }

        __p = &v88;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }

        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        if (v82)
        {
          v83 = v82;
          operator delete(v82);
        }

        __p = &v80;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (*(&v79.var1.var0.var1 + 23) < 0)
        {
          operator delete(v79.var1.var0.var1.var0);
        }

        __p = v98;
        std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p = &v97;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (v95)
        {
          v96 = v95;
          operator delete(v95);
        }

        if (v93)
        {
          v94 = v93;
          operator delete(v93);
        }

        if (v91)
        {
          v92 = v91;
          operator delete(v91);
        }

        __p = &v90;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (*(&v89.var1.var0.var1 + 23) < 0)
        {
          operator delete(v89.var1.var0.var1.var0);
        }
      }

      __p = &v46;
      std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (++v10 == v9)
      {
        v8 = v49;
        v24 = v50;
        a8 = v27;
        goto LABEL_89;
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v26 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "acitivity cancelled. aborting LSL map labels creation", &__p, 2u);
    }

    v25 = v27;
  }

  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  __p = &v49;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_25918F1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  std::optional<ULLocalizationResult>::~optional(&a33);
  ULModelMetaData::~ULModelMetaData(&STACK[0x480]);
  std::optional<CLMicroLocationFingerprint>::~optional(&STACK[0x4C8]);
  ULScanningEventDO::~ULScanningEventDO(&STACK[0x5B0]);
  std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::~pair(&STACK[0x6C0]);
  STACK[0x260] = &a50;
  std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x260]);
  STACK[0x260] = &a53;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&STACK[0x260]);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::sendBlueAtlasLearningAnalytics(CLMicroLocationLearner *this, NSDictionary *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5[0] = 68289539;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2081;
      v9 = [@"com.apple.MicroLocation.CustomLoiModelLearn" UTF8String];
      v10 = 2113;
      v11 = v2;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#MiLoLearner, sending core analytics, event:%{private, location:escape_only}s, eventFields:%{private, location:escape_only}@}", v5, 0x26u);
    }

    [ULSendEvent sendEvent:v2 withEventName:@"com.apple.MicroLocation.CustomLoiModelLearn"];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "#MiLoLearner, CoreAnalytics Disabled", v5, 2u);
    }
  }
}

uint64_t CLMicroLocationLearner::learnBlueAtlasModel(CLMicroLocationLearner *this, uuid *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  (*(**(this + 3) + 16))(*(this + 3));
  v5[0] = &unk_286A5D168;
  v5[3] = v5;
  LODWORD(a2) = CLMicroLocationLearner::learnBlueAtlasModelInternal(this, v5, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  if (a2)
  {
    (*(**(this + 3) + 32))(*(this + 3), 3);
  }

  return (*(**(this + 3) + 48))(*(this + 3));
}

void sub_25918F614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationLearner::executeWorkItems(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(result + 48);
  for (i = *(result + 56); v2 != i; v2 += 32)
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
    v5 = *(v2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v6);
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v142 = a2 - 4;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = (a2 - v7) >> 6;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(v7, (v7 + 64), v142);
                return;
              case 4:
                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(v7, (v7 + 64), (v7 + 128));
                v63 = a2 - 4;
                if (a2[-4].n128_f64[0] > *(v7 + 128))
                {
                  v168 = *(v7 + 128);
                  v179 = *(v7 + 144);
                  v64 = *(v7 + 168);
                  v190 = *(v7 + 160);
                  *&v151 = *(v7 + 176);
                  *(&v151 + 7) = *(v7 + 183);
                  v65 = *(v7 + 191);
                  *(v7 + 168) = 0;
                  *(v7 + 184) = 0;
                  *(v7 + 176) = 0;
                  v66 = a2[-2].n128_u64[0];
                  v67 = a2[-3];
                  *(v7 + 128) = *v63;
                  *(v7 + 144) = v67;
                  *(v7 + 160) = v66;
                  v68 = *(&a2[-2] + 8);
                  *(v7 + 184) = a2[-1].n128_u64[1];
                  *(v7 + 168) = v68;
                  a2[-2].n128_u64[0] = v190;
                  *v63 = v168;
                  a2[-3] = v179;
                  a2[-2].n128_u64[1] = v64;
                  *(a2[-1].n128_u64 + 7) = *(&v151 + 7);
                  a2[-1].n128_u64[0] = v151;
                  a2[-1].n128_u8[15] = v65;
                  if (*(v7 + 128) > *(v7 + 64))
                  {
                    v169 = *(v7 + 64);
                    v180 = *(v7 + 80);
                    v69 = *(v7 + 104);
                    v191 = *(v7 + 96);
                    *&v152 = *(v7 + 112);
                    *(&v152 + 7) = *(v7 + 119);
                    v70 = *(v7 + 127);
                    v71 = *(v7 + 144);
                    *(v7 + 64) = *(v7 + 128);
                    *(v7 + 80) = v71;
                    *(v7 + 96) = *(v7 + 160);
                    *(v7 + 104) = *(v7 + 168);
                    *(v7 + 120) = *(v7 + 184);
                    *(v7 + 128) = v169;
                    *(v7 + 144) = v180;
                    *(v7 + 160) = v191;
                    *(v7 + 168) = v69;
                    *(v7 + 176) = v152;
                    *(v7 + 183) = *(&v152 + 7);
                    v72 = *(v7 + 64) <= *v7;
                    *(v7 + 191) = v70;
                    if (!v72)
                    {
                      v73 = *(v7 + 40);
                      v192 = *(v7 + 32);
                      v170 = *v7;
                      v181 = *(v7 + 16);
                      *&v153 = *(v7 + 48);
                      *(&v153 + 7) = *(v7 + 55);
                      v74 = *(v7 + 63);
                      v75 = *(v7 + 80);
                      *v7 = *(v7 + 64);
                      *(v7 + 16) = v75;
                      *(v7 + 32) = *(v7 + 96);
                      *(v7 + 40) = *(v7 + 104);
                      *(v7 + 56) = *(v7 + 120);
                      *(v7 + 64) = v170;
                      *(v7 + 80) = v181;
                      *(v7 + 96) = v192;
                      *(v7 + 104) = v73;
                      *(v7 + 112) = v153;
                      *(v7 + 119) = *(&v153 + 7);
                      *(v7 + 127) = v74;
                    }
                  }
                }

                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(v7, v7 + 64, v7 + 128, v7 + 192, v142);
                return;
            }
          }

          else
          {
            if (v8 < 2)
            {
              return;
            }

            if (v8 == 2)
            {
              v57 = a2 - 4;
              if (a2[-4].n128_f64[0] > *v7)
              {
                v58 = *(v7 + 40);
                v189 = *(v7 + 32);
                v167 = *v7;
                v178 = *(v7 + 16);
                *&v150 = *(v7 + 48);
                *(&v150 + 7) = *(v7 + 55);
                v59 = *(v7 + 63);
                *(v7 + 40) = 0;
                *(v7 + 48) = 0;
                *(v7 + 56) = 0;
                v60 = *v57;
                v61 = a2[-3];
                *(v7 + 32) = a2[-2].n128_u64[0];
                *v7 = v60;
                *(v7 + 16) = v61;
                v62 = *(&a2[-2] + 8);
                *(v7 + 56) = a2[-1].n128_u64[1];
                *(v7 + 40) = v62;
                a2[-2].n128_u64[0] = v189;
                *v57 = v167;
                a2[-3] = v178;
                a2[-2].n128_u64[1] = v58;
                *(a2[-1].n128_u64 + 7) = *(&v150 + 7);
                a2[-1].n128_u64[0] = v150;
                a2[-1].n128_u8[15] = v59;
              }

              return;
            }
          }

          if (v8 <= 23)
          {
            v76 = (v7 + 64);
            v78 = v7 == a2 || v76 == a2;
            if (a4)
            {
              if (!v78)
              {
                v79 = 0;
                v80 = v7;
                do
                {
                  v81 = v76;
                  v82 = *(v80 + 64);
                  if (v82 > *v80)
                  {
                    v171 = *(v80 + 72);
                    v182 = *(v80 + 88);
                    v83 = *(v80 + 104);
                    *v154 = *(v80 + 112);
                    *&v154[7] = *(v80 + 119);
                    v84 = *(v80 + 127);
                    *(v80 + 112) = 0;
                    *(v80 + 120) = 0;
                    *(v80 + 104) = 0;
                    v85 = v76[3].n128_i8[15] < 0;
                    v86 = v79;
                    while (1)
                    {
                      v87 = v86;
                      v88 = a1 + v86;
                      v89 = *(a1 + v86 + 16);
                      *(v88 + 64) = *(a1 + v86);
                      *(v88 + 80) = v89;
                      *(v88 + 96) = *(a1 + v86 + 32);
                      if (v85)
                      {
                        operator delete(*(v88 + 104));
                      }

                      *(v88 + 104) = *(v88 + 40);
                      *(v88 + 120) = *(v88 + 56);
                      *(v88 + 63) = 0;
                      *(v88 + 40) = 0;
                      if (!v87)
                      {
                        break;
                      }

                      v85 = 0;
                      v86 = v87 - 64;
                      if (v82 <= *(a1 + v87 - 64))
                      {
                        v90 = a1 + v87;
                        goto LABEL_93;
                      }
                    }

                    v90 = a1;
LABEL_93:
                    *v90 = v82;
                    *(v90 + 24) = v182;
                    *(v90 + 8) = v171;
                    *(a1 + v87 + 40) = v83;
                    *(v90 + 48) = *v154;
                    *(v90 + 55) = *&v154[7];
                    *(v90 + 63) = v84;
                  }

                  v76 = v81 + 4;
                  v79 += 64;
                  v80 = v81;
                }

                while (&v81[4] != a2);
              }
            }

            else if (!v78)
            {
              v134 = v7 + 40;
              do
              {
                v135 = v76;
                v136 = *(a1 + 64);
                if (v136 > *a1)
                {
                  v174 = *(a1 + 72);
                  v185 = *(a1 + 88);
                  v137 = *(a1 + 104);
                  *v157 = *(a1 + 112);
                  *&v157[7] = *(a1 + 119);
                  v138 = *(a1 + 127);
                  *(a1 + 112) = 0;
                  *(a1 + 120) = 0;
                  *(a1 + 104) = 0;
                  v139 = v76[3].n128_i8[15] < 0;
                  v140 = v134;
                  do
                  {
                    *(v140 + 24) = *(v140 - 40);
                    *(v140 + 40) = *(v140 - 24);
                    *(v140 + 56) = *(v140 - 8);
                    if (v139)
                    {
                      operator delete(*(v140 + 64));
                    }

                    v139 = 0;
                    *(v140 + 64) = *v140;
                    *(v140 + 80) = *(v140 + 16);
                    *(v140 + 23) = 0;
                    *v140 = 0;
                    v141 = *(v140 - 104);
                    v140 -= 64;
                  }

                  while (v136 > v141);
                  *(v140 + 24) = v136;
                  *(v140 + 32) = v174;
                  *(v140 + 48) = v185;
                  *(v140 + 64) = v137;
                  *(v140 + 79) = *&v157[7];
                  *(v140 + 72) = *v157;
                  *(v140 + 87) = v138;
                }

                v76 = (v135 + 64);
                v134 += 64;
                a1 = v135;
              }

              while ((v135 + 64) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v7 != a2)
            {
              v91 = (v8 - 2) >> 1;
              v92 = v91;
              do
              {
                v93 = v92;
                if (v91 >= v92)
                {
                  v94 = (2 * v92) | 1;
                  v95 = v7 + (v94 << 6);
                  if (2 * v93 + 2 < v8 && *v95 > *(v95 + 64))
                  {
                    v95 += 64;
                    v94 = 2 * v93 + 2;
                  }

                  v96 = v7 + (v93 << 6);
                  v97 = *v96;
                  if (*v95 <= *v96)
                  {
                    v172 = *(v96 + 8);
                    v183 = *(v96 + 24);
                    v98 = *(v96 + 40);
                    *&v155[7] = *(v96 + 55);
                    *v155 = *(v96 + 48);
                    v99 = *(v96 + 63);
                    *(v96 + 40) = 0;
                    *(v96 + 48) = 0;
                    *(v96 + 56) = 0;
                    do
                    {
                      v100 = v96;
                      v96 = v95;
                      v101 = *v95;
                      v102 = *(v95 + 16);
                      *(v100 + 32) = *(v95 + 32);
                      *v100 = v101;
                      *(v100 + 16) = v102;
                      v103 = *(v95 + 40);
                      *(v100 + 56) = *(v95 + 56);
                      *(v100 + 40) = v103;
                      *(v95 + 63) = 0;
                      *(v95 + 40) = 0;
                      if (v91 < v94)
                      {
                        break;
                      }

                      v104 = 2 * v94;
                      v94 = (2 * v94) | 1;
                      v95 = v7 + (v94 << 6);
                      v105 = v104 + 2;
                      if (v105 < v8 && *v95 > *(v95 + 64))
                      {
                        v95 += 64;
                        v94 = v105;
                      }
                    }

                    while (*v95 <= v97);
                    *v96 = v97;
                    *(v96 + 8) = v172;
                    *(v96 + 24) = v183;
                    *(v96 + 40) = v98;
                    *(v96 + 48) = *v155;
                    *(v96 + 55) = *&v155[7];
                    *(v96 + 63) = v99;
                  }
                }

                v92 = v93 - 1;
              }

              while (v93);
              do
              {
                v106 = 0;
                v107 = a2;
                v108 = *(v7 + 40);
                v193 = *(v7 + 32);
                v173 = *v7;
                v184 = *(v7 + 16);
                *v146 = *(v7 + 48);
                *&v146[7] = *(v7 + 55);
                v109 = *(v7 + 63);
                *(v7 + 48) = 0;
                *(v7 + 56) = 0;
                v110 = v7;
                *(v7 + 40) = 0;
                do
                {
                  v111 = v110;
                  v112 = v110 + (v106 << 6);
                  v110 = v112 + 64;
                  v113 = 2 * v106;
                  v106 = (2 * v106) | 1;
                  v114 = v113 + 2;
                  if (v114 < v8)
                  {
                    v116 = *(v112 + 128);
                    v115 = v112 + 128;
                    if (*(v115 - 64) > v116)
                    {
                      v110 = v115;
                      v106 = v114;
                    }
                  }

                  v117 = *v110;
                  v118 = *(v110 + 16);
                  *(v111 + 32) = *(v110 + 32);
                  *v111 = v117;
                  *(v111 + 16) = v118;
                  v119 = *(v110 + 40);
                  *(v111 + 56) = *(v110 + 56);
                  *(v111 + 40) = v119;
                  *(v110 + 63) = 0;
                  *(v110 + 40) = 0;
                }

                while (v106 <= ((v8 - 2) >> 1));
                a2 -= 4;
                if (v110 == &v107[-4])
                {
                  *v110 = v173;
                  *(v110 + 16) = v184;
                  *(v110 + 32) = v193;
                  *(v110 + 40) = v108;
                  *(v110 + 48) = *v146;
                  *(v110 + 55) = *&v146[7];
                  *(v110 + 63) = v109;
                }

                else
                {
                  v120 = *a2;
                  v121 = v107[-3];
                  *(v110 + 32) = v107[-2].n128_u64[0];
                  *v110 = v120;
                  *(v110 + 16) = v121;
                  v122 = *(&v107[-2] + 8);
                  *(v110 + 56) = v107[-1].n128_u64[1];
                  *(v110 + 40) = v122;
                  v107[-2].n128_u64[0] = v193;
                  *a2 = v173;
                  v107[-3] = v184;
                  v107[-2].n128_u64[1] = v108;
                  *(v107[-1].n128_u64 + 7) = *&v146[7];
                  v107[-1].n128_u64[0] = *v146;
                  v107[-1].n128_u8[15] = v109;
                  v123 = (v110 - v7 + 64) >> 6;
                  v72 = v123 < 2;
                  v124 = v123 - 2;
                  if (!v72)
                  {
                    v125 = v124 >> 1;
                    v126 = v7 + (v125 << 6);
                    v127 = *v110;
                    if (*v126 > *v110)
                    {
                      v156 = *(v110 + 8);
                      v160 = *(v110 + 24);
                      v128 = *(v110 + 40);
                      *v163 = *(v110 + 48);
                      *&v163[7] = *(v110 + 55);
                      v129 = *(v110 + 63);
                      *(v110 + 48) = 0;
                      *(v110 + 56) = 0;
                      *(v110 + 40) = 0;
                      do
                      {
                        v130 = v110;
                        v110 = v126;
                        v131 = *v126;
                        v132 = *(v126 + 16);
                        *(v130 + 32) = *(v126 + 32);
                        *v130 = v131;
                        *(v130 + 16) = v132;
                        v133 = *(v126 + 40);
                        *(v130 + 56) = *(v126 + 56);
                        *(v130 + 40) = v133;
                        *(v126 + 63) = 0;
                        *(v126 + 40) = 0;
                        if (!v125)
                        {
                          break;
                        }

                        v125 = (v125 - 1) >> 1;
                        v126 = v7 + (v125 << 6);
                      }

                      while (*v126 > v127);
                      *v110 = v127;
                      *(v110 + 8) = v156;
                      *(v110 + 24) = v160;
                      *(v110 + 40) = v128;
                      *(v110 + 48) = *v163;
                      *(v110 + 55) = *&v163[7];
                      *(v110 + 63) = v129;
                    }
                  }
                }

                v72 = v8-- <= 2;
              }

              while (!v72);
            }

            return;
          }

          v9 = v8 >> 1;
          v10 = v7 + (v8 >> 1 << 6);
          if (v8 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1 + (v8 >> 1 << 6), a1, v142);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, (a1 + (v8 >> 1 << 6)), v142);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1 + 64, (v10 - 64), a2 - 8);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1 + 128, (a1 + 64 + (v9 << 6)), a2 - 12);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(v10 - 64, v10, (a1 + 64 + (v9 << 6)));
            v11 = *(a1 + 40);
            v186 = *(a1 + 32);
            v164 = *a1;
            v175 = *(a1 + 16);
            *(&v147 + 7) = *(a1 + 55);
            *&v147 = *(a1 + 48);
            v12 = *(a1 + 63);
            *(a1 + 48) = 0;
            *(a1 + 56) = 0;
            v14 = *v10;
            v13 = *(v10 + 16);
            *(a1 + 32) = *(v10 + 32);
            *(a1 + 40) = 0;
            *a1 = v14;
            *(a1 + 16) = v13;
            v15 = *(v10 + 56);
            *(a1 + 40) = *(v10 + 40);
            *(a1 + 56) = v15;
            *v10 = v164;
            *(v10 + 16) = v175;
            *(v10 + 32) = v186;
            *(v10 + 40) = v11;
            *(v10 + 55) = *(&v147 + 7);
            *(v10 + 48) = v147;
            *(v10 + 63) = v12;
          }

          --a3;
          v16 = *a1;
          if ((a4 & 1) != 0 || *(a1 - 64) > v16)
          {
            break;
          }

          v39 = (a1 + 40);
          v40 = *(a1 + 40);
          v149 = *(a1 + 8);
          v159 = *(a1 + 24);
          *v145 = *(a1 + 48);
          *&v145[7] = *(a1 + 55);
          v41 = *(a1 + 63);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          *(a1 + 40) = 0;
          if (v16 <= v142->n128_f64[0])
          {
            v43 = a1 + 64;
            do
            {
              v7 = v43;
              if (v43 >= a2)
              {
                break;
              }

              v43 += 64;
            }

            while (v16 <= *v7);
          }

          else
          {
            v7 = a1;
            do
            {
              v42 = *(v7 + 64);
              v7 += 64;
            }

            while (v16 <= v42);
          }

          v44 = a2;
          if (v7 < a2)
          {
            v44 = a2;
            do
            {
              v45 = v44[-4].n128_f64[0];
              v44 -= 4;
            }

            while (v16 > v45);
          }

          while (v7 < v44)
          {
            v46 = *(v7 + 40);
            v188 = *(v7 + 32);
            v166 = *v7;
            v177 = *(v7 + 16);
            *&v162 = *(v7 + 48);
            *(&v162 + 7) = *(v7 + 55);
            v47 = *(v7 + 63);
            *(v7 + 40) = 0;
            *(v7 + 48) = 0;
            *(v7 + 56) = 0;
            v48 = *v44;
            v49 = v44[1];
            *(v7 + 32) = v44[2].n128_u64[0];
            *v7 = v48;
            *(v7 + 16) = v49;
            v50 = *(&v44[2] + 8);
            *(v7 + 56) = v44[3].n128_u64[1];
            *(v7 + 40) = v50;
            *v44 = v166;
            v44[1] = v177;
            v44[2].n128_u64[0] = v188;
            v44[2].n128_u64[1] = v46;
            v44[3].n128_u64[0] = v162;
            *(v44[3].n128_u64 + 7) = *(&v162 + 7);
            v44[3].n128_u8[15] = v47;
            do
            {
              v51 = *(v7 + 64);
              v7 += 64;
            }

            while (v16 <= v51);
            do
            {
              v52 = v44[-4].n128_f64[0];
              v44 -= 4;
            }

            while (v16 > v52);
          }

          if (v7 - 64 == a1)
          {
            v56 = *(v7 - 1);
            *(v7 - 64) = v16;
            *(v7 - 56) = v149;
            *(v7 - 40) = v159;
            if (v56 < 0)
            {
              operator delete(*(v7 - 24));
            }
          }

          else
          {
            v53 = *(v7 - 64);
            v54 = *(v7 - 48);
            *(a1 + 32) = *(v7 - 32);
            *a1 = v53;
            *(a1 + 16) = v54;
            if (*(a1 + 63) < 0)
            {
              operator delete(*v39);
            }

            v55 = *(v7 - 24);
            *(a1 + 56) = *(v7 - 8);
            *v39 = v55;
            *(v7 - 1) = 0;
            *(v7 - 24) = 0;
            *(v7 - 64) = v16;
            *(v7 - 40) = v159;
            *(v7 - 56) = v149;
          }

          a4 = 0;
          *(v7 - 24) = v40;
          *(v7 - 9) = *&v145[7];
          *(v7 - 16) = *v145;
          *(v7 - 1) = v41;
        }

        v17 = 0;
        v18 = (a1 + 40);
        v19 = *(a1 + 40);
        v148 = *(a1 + 8);
        v158 = *(a1 + 24);
        *v144 = *(a1 + 48);
        *&v144[7] = *(a1 + 55);
        v20 = *(a1 + 63);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        do
        {
          v21 = *(a1 + v17 + 64);
          v17 += 64;
        }

        while (v21 > v16);
        v22 = a1 + v17;
        v23 = a2;
        if (v17 == 64)
        {
          v23 = a2;
          do
          {
            if (v22 >= v23)
            {
              break;
            }

            v25 = v23[-4].n128_f64[0];
            v23 -= 4;
          }

          while (v25 <= v16);
        }

        else
        {
          do
          {
            v24 = v23[-4].n128_f64[0];
            v23 -= 4;
          }

          while (v24 <= v16);
        }

        v7 = a1 + v17;
        if (v22 < v23)
        {
          v26 = v23;
          do
          {
            v27 = *(v7 + 40);
            v187 = *(v7 + 32);
            v165 = *v7;
            v176 = *(v7 + 16);
            *&v161 = *(v7 + 48);
            *(&v161 + 7) = *(v7 + 55);
            v28 = *(v7 + 63);
            *(v7 + 40) = 0;
            *(v7 + 48) = 0;
            *(v7 + 56) = 0;
            v29 = *v26;
            v30 = v26[1];
            *(v7 + 32) = v26[2].n128_u64[0];
            *v7 = v29;
            *(v7 + 16) = v30;
            v31 = *(&v26[2] + 8);
            *(v7 + 56) = v26[3].n128_u64[1];
            *(v7 + 40) = v31;
            *v26 = v165;
            v26[1] = v176;
            v26[2].n128_u64[0] = v187;
            v26[2].n128_u64[1] = v27;
            v26[3].n128_u64[0] = v161;
            *(v26[3].n128_u64 + 7) = *(&v161 + 7);
            v26[3].n128_u8[15] = v28;
            do
            {
              v32 = *(v7 + 64);
              v7 += 64;
            }

            while (v32 > v16);
            do
            {
              v33 = v26[-4].n128_f64[0];
              v26 -= 4;
            }

            while (v33 <= v16);
          }

          while (v7 < v26);
        }

        if (v7 - 64 == a1)
        {
          v37 = *(v7 - 1);
          *(v7 - 64) = v16;
          *(v7 - 56) = v148;
          *(v7 - 40) = v158;
          if (v37 < 0)
          {
            operator delete(*(v7 - 24));
          }
        }

        else
        {
          v34 = *(v7 - 64);
          v35 = *(v7 - 48);
          *(a1 + 32) = *(v7 - 32);
          *a1 = v34;
          *(a1 + 16) = v35;
          if (*(a1 + 63) < 0)
          {
            operator delete(*v18);
          }

          v36 = *(v7 - 24);
          *(a1 + 56) = *(v7 - 8);
          *v18 = v36;
          *(v7 - 1) = 0;
          *(v7 - 24) = 0;
          *(v7 - 64) = v16;
          *(v7 - 40) = v158;
          *(v7 - 56) = v148;
        }

        *(v7 - 24) = v19;
        *(v7 - 9) = *&v144[7];
        *(v7 - 16) = *v144;
        *(v7 - 1) = v20;
        if (v22 >= v23)
        {
          break;
        }

LABEL_39:
        std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,false>(a1, (v7 - 64), a3, a4 & 1);
        a4 = 0;
      }

      v38 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *>(a1, (v7 - 64));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *>(v7, a2))
      {
        break;
      }

      if (!v38)
      {
        goto LABEL_39;
      }
    }

    a2 = (v7 - 64);
    if (!v38)
    {
      continue;
    }

    break;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result.n128_u64[0] = a2->n128_u64[0];
  v4 = a3->n128_f64[0];
  if (a2->n128_f64[0] <= *a1)
  {
    if (v4 > result.n128_f64[0])
    {
      v34 = *a2;
      v39 = a2[1];
      v10 = a2[2].n128_u64[1];
      v44 = a2[2].n128_u64[0];
      *&v29 = a2[3].n128_u64[0];
      *(&v29 + 7) = *(a2[3].n128_u64 + 7);
      v11 = a2[3].n128_u8[15];
      a2[2].n128_u64[1] = 0;
      a2[3] = 0uLL;
      v12 = *a3;
      v13 = a3[1];
      a2[2].n128_u64[0] = a3[2].n128_u64[0];
      *a2 = v12;
      a2[1] = v13;
      v14 = *(a3 + 40);
      a2[3].n128_u64[1] = a3[3].n128_u64[1];
      *(a2 + 40) = v14;
      result.n128_u64[1] = v34.n128_u64[1];
      *a3 = v34;
      a3[1] = v39;
      a3[2].n128_u64[0] = v44;
      a3[2].n128_u64[1] = v10;
      a3[3].n128_u64[0] = v29;
      *(a3[3].n128_u64 + 7) = *(&v29 + 7);
      a3[3].n128_u8[15] = v11;
      result.n128_u64[0] = a2->n128_u64[0];
      if (a2->n128_f64[0] > *a1)
      {
        v35 = *a1;
        v40 = *(a1 + 16);
        v15 = *(a1 + 40);
        v45 = *(a1 + 32);
        *&v30 = *(a1 + 48);
        *(&v30 + 7) = *(a1 + 55);
        v16 = *(a1 + 63);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v17 = *a2;
        v18 = a2[1];
        *(a1 + 32) = a2[2].n128_u64[0];
        *a1 = v17;
        *(a1 + 16) = v18;
        v19 = *(&a2[2] + 8);
        *(a1 + 56) = a2[3].n128_u64[1];
        *(a1 + 40) = v19;
        result = v35;
        *a2 = v35;
        a2[1] = v40;
        a2[2].n128_u64[0] = v45;
        a2[2].n128_u64[1] = v15;
        a2[3].n128_u64[0] = v30;
        *(a2[3].n128_u64 + 7) = *(&v30 + 7);
        a2[3].n128_u8[15] = v16;
      }
    }
  }

  else if (v4 <= result.n128_f64[0])
  {
    v36 = *a1;
    v41 = *(a1 + 16);
    v20 = *(a1 + 40);
    v46 = *(a1 + 32);
    *&v31 = *(a1 + 48);
    *(&v31 + 7) = *(a1 + 55);
    v21 = *(a1 + 63);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    v22 = *a2;
    v23 = a2[1];
    *(a1 + 32) = a2[2].n128_u64[0];
    *a1 = v22;
    *(a1 + 16) = v23;
    v24 = *(&a2[2] + 8);
    *(a1 + 56) = a2[3].n128_u64[1];
    *(a1 + 40) = v24;
    result.n128_u64[1] = v36.n128_u64[1];
    *a2 = v36;
    a2[1] = v41;
    a2[2].n128_u64[0] = v46;
    a2[2].n128_u64[1] = v20;
    a2[3].n128_u64[0] = v31;
    *(a2[3].n128_u64 + 7) = *(&v31 + 7);
    a2[3].n128_u8[15] = v21;
    result.n128_u64[0] = a3->n128_u64[0];
    if (a3->n128_f64[0] > a2->n128_f64[0])
    {
      v37 = *a2;
      v42 = a2[1];
      v47 = a2[2].n128_u64[0];
      *&v32 = a2[3].n128_u64[0];
      *(&v32 + 7) = *(a2[3].n128_u64 + 7);
      a2[3] = 0uLL;
      a2[2].n128_u64[1] = 0;
      v26 = *a3;
      v25 = a3[1];
      a2[2].n128_u64[0] = a3[2].n128_u64[0];
      *a2 = v26;
      a2[1] = v25;
      v27 = *(a3 + 40);
      a2[3].n128_u64[1] = a3[3].n128_u64[1];
      *(a2 + 40) = v27;
      result = v37;
      *a3 = v37;
      a3[1] = v42;
      a3[2].n128_u64[0] = v47;
      a3[2].n128_u64[1] = v20;
      a3[3].n128_u64[0] = v32;
      *(a3[3].n128_u64 + 7) = *(&v32 + 7);
      a3[3].n128_u8[15] = v21;
    }
  }

  else
  {
    v33 = *a1;
    v38 = *(a1 + 16);
    v5 = *(a1 + 40);
    v43 = *(a1 + 32);
    *&v28 = *(a1 + 48);
    *(&v28 + 7) = *(a1 + 55);
    v6 = *(a1 + 63);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    v7 = *a3;
    v8 = a3[1];
    *(a1 + 32) = a3[2].n128_u64[0];
    *a1 = v7;
    *(a1 + 16) = v8;
    v9 = *(&a3[2] + 8);
    *(a1 + 56) = a3[3].n128_u64[1];
    *(a1 + 40) = v9;
    result = v33;
    *a3 = v33;
    a3[1] = v38;
    a3[2].n128_u64[0] = v43;
    a3[2].n128_u64[1] = v5;
    a3[3].n128_u64[0] = v28;
    *(a3[3].n128_u64 + 7) = *(&v28 + 7);
    a3[3].n128_u8[15] = v6;
  }

  return result;
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, a2, a3);
  if (*a4 > *a3)
  {
    v52 = *a3;
    v59 = *(a3 + 16);
    v10 = *(a3 + 40);
    v66 = *(a3 + 32);
    *&v45 = *(a3 + 48);
    *(&v45 + 7) = *(a3 + 55);
    v11 = *(a3 + 63);
    *(a3 + 40) = 0;
    *(a3 + 56) = 0;
    *(a3 + 48) = 0;
    v12 = *a4;
    v13 = *(a4 + 16);
    *(a3 + 32) = *(a4 + 32);
    *a3 = v12;
    *(a3 + 16) = v13;
    v14 = *(a4 + 40);
    *(a3 + 56) = *(a4 + 56);
    *(a3 + 40) = v14;
    *a4 = v52;
    *(a4 + 16) = v59;
    *(a4 + 32) = v66;
    *(a4 + 40) = v10;
    *(a4 + 48) = v45;
    *(a4 + 55) = *(&v45 + 7);
    *(a4 + 63) = v11;
    if (*a3 > *a2)
    {
      v53 = *a2;
      v60 = *(a2 + 16);
      v15 = *(a2 + 40);
      v67 = *(a2 + 32);
      *&v46 = *(a2 + 48);
      *(&v46 + 7) = *(a2 + 55);
      v16 = *(a2 + 63);
      *(a2 + 40) = 0;
      *(a2 + 56) = 0;
      *(a2 + 48) = 0;
      v17 = *a3;
      v18 = *(a3 + 16);
      *(a2 + 32) = *(a3 + 32);
      *a2 = v17;
      *(a2 + 16) = v18;
      v19 = *(a3 + 40);
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 40) = v19;
      *a3 = v53;
      *(a3 + 16) = v60;
      *(a3 + 32) = v67;
      *(a3 + 40) = v15;
      *(a3 + 48) = v46;
      *(a3 + 55) = *(&v46 + 7);
      *(a3 + 63) = v16;
      if (*a2 > *a1)
      {
        v54 = *a1;
        v61 = *(a1 + 16);
        v20 = *(a1 + 40);
        v68 = *(a1 + 32);
        *&v47 = *(a1 + 48);
        *(&v47 + 7) = *(a1 + 55);
        v21 = *(a1 + 63);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v22 = *a2;
        v23 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *a1 = v22;
        *(a1 + 16) = v23;
        v24 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 40) = v24;
        *a2 = v54;
        *(a2 + 16) = v61;
        *(a2 + 32) = v68;
        *(a2 + 40) = v20;
        *(a2 + 48) = v47;
        *(a2 + 55) = *(&v47 + 7);
        *(a2 + 63) = v21;
      }
    }
  }

  if (a5->n128_f64[0] > *a4)
  {
    v55 = *a4;
    v62 = *(a4 + 16);
    v25 = *(a4 + 40);
    v69 = *(a4 + 32);
    *&v48 = *(a4 + 48);
    *(&v48 + 7) = *(a4 + 55);
    v26 = *(a4 + 63);
    *(a4 + 40) = 0;
    *(a4 + 56) = 0;
    *(a4 + 48) = 0;
    v27 = *a5;
    v28 = a5[1];
    *(a4 + 32) = a5[2].n128_u64[0];
    *a4 = v27;
    *(a4 + 16) = v28;
    v29 = *(&a5[2] + 8);
    *(a4 + 56) = a5[3].n128_u64[1];
    *(a4 + 40) = v29;
    *a5 = v55;
    a5[1] = v62;
    a5[2].n128_u64[0] = v69;
    a5[2].n128_u64[1] = v25;
    a5[3].n128_u64[0] = v48;
    *(a5[3].n128_u64 + 7) = *(&v48 + 7);
    a5[3].n128_u8[15] = v26;
    if (*a4 > *a3)
    {
      v56 = *a3;
      v63 = *(a3 + 16);
      v30 = *(a3 + 40);
      v70 = *(a3 + 32);
      *&v49 = *(a3 + 48);
      *(&v49 + 7) = *(a3 + 55);
      v31 = *(a3 + 63);
      *(a3 + 40) = 0;
      *(a3 + 56) = 0;
      *(a3 + 48) = 0;
      v32 = *a4;
      v33 = *(a4 + 16);
      *(a3 + 32) = *(a4 + 32);
      *a3 = v32;
      *(a3 + 16) = v33;
      v34 = *(a4 + 40);
      *(a3 + 56) = *(a4 + 56);
      *(a3 + 40) = v34;
      *a4 = v56;
      *(a4 + 16) = v63;
      *(a4 + 32) = v70;
      *(a4 + 40) = v30;
      *(a4 + 48) = v49;
      *(a4 + 55) = *(&v49 + 7);
      *(a4 + 63) = v31;
      if (*a3 > *a2)
      {
        v57 = *a2;
        v64 = *(a2 + 16);
        v35 = *(a2 + 40);
        v71 = *(a2 + 32);
        *&v50 = *(a2 + 48);
        *(&v50 + 7) = *(a2 + 55);
        v36 = *(a2 + 63);
        *(a2 + 40) = 0;
        *(a2 + 56) = 0;
        *(a2 + 48) = 0;
        v37 = *a3;
        v38 = *(a3 + 16);
        *(a2 + 32) = *(a3 + 32);
        *a2 = v37;
        *(a2 + 16) = v38;
        v39 = *(a3 + 40);
        *(a2 + 56) = *(a3 + 56);
        *(a2 + 40) = v39;
        *a3 = v57;
        *(a3 + 16) = v64;
        *(a3 + 32) = v71;
        *(a3 + 40) = v35;
        *(a3 + 48) = v50;
        *(a3 + 55) = *(&v50 + 7);
        *(a3 + 63) = v36;
        if (*a2 > *a1)
        {
          v58 = *a1;
          v65 = *(a1 + 16);
          v40 = *(a1 + 40);
          v72 = *(a1 + 32);
          *&v51 = *(a1 + 48);
          *(&v51 + 7) = *(a1 + 55);
          v41 = *(a1 + 63);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          *(a1 + 40) = 0;
          v42 = *a2;
          v43 = *(a2 + 16);
          *(a1 + 32) = *(a2 + 32);
          *a1 = v42;
          *(a1 + 16) = v43;
          v44 = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 40) = v44;
          *a2 = v58;
          *(a2 + 16) = v65;
          *(a2 + 32) = v72;
          *(a2 + 40) = v40;
          *(a2 + 48) = v51;
          *(a2 + 55) = *(&v51 + 7);
          *(a2 + 63) = v41;
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *>(__int128 *a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, a1 + 4, a2 - 4);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, a1 + 4, a1 + 8);
        v23 = a2 - 4;
        if (*(a2 - 8) > *(a1 + 16))
        {
          v43 = a1[8];
          v48 = a1[9];
          v24 = *(a1 + 21);
          v52 = *(a1 + 20);
          *&v38 = *(a1 + 22);
          *(&v38 + 7) = *(a1 + 183);
          v25 = *(a1 + 191);
          *(a1 + 21) = 0;
          *(a1 + 23) = 0;
          *(a1 + 22) = 0;
          v26 = *v23;
          v27 = *(a2 - 3);
          *(a1 + 20) = *(a2 - 4);
          a1[8] = v26;
          a1[9] = v27;
          v28 = *(a2 - 24);
          *(a1 + 23) = *(a2 - 1);
          *(a1 + 168) = v28;
          *v23 = v43;
          *(a2 - 3) = v48;
          *(a2 - 4) = v52;
          *(a2 - 3) = v24;
          *(a2 - 2) = v38;
          *(a2 - 9) = *(&v38 + 7);
          *(a2 - 1) = v25;
          if (*(a1 + 16) > *(a1 + 8))
          {
            v44 = a1[4];
            v49 = a1[5];
            v29 = *(a1 + 13);
            v53 = *(a1 + 12);
            *&v39 = *(a1 + 14);
            *(&v39 + 7) = *(a1 + 119);
            v30 = *(a1 + 127);
            v31 = a1[9];
            a1[4] = a1[8];
            a1[5] = v31;
            *(a1 + 12) = *(a1 + 20);
            *(a1 + 104) = *(a1 + 168);
            *(a1 + 15) = *(a1 + 23);
            a1[8] = v44;
            a1[9] = v49;
            *(a1 + 20) = v53;
            *(a1 + 21) = v29;
            *(a1 + 22) = v39;
            *(a1 + 183) = *(&v39 + 7);
            v32 = *(a1 + 8) <= *a1;
            *(a1 + 191) = v30;
            if (!v32)
            {
              v45 = *a1;
              v50 = a1[1];
              v33 = *(a1 + 5);
              v54 = *(a1 + 4);
              *&v40 = *(a1 + 6);
              *(&v40 + 7) = *(a1 + 55);
              v34 = *(a1 + 63);
              v35 = a1[5];
              *a1 = a1[4];
              a1[1] = v35;
              *(a1 + 4) = *(a1 + 12);
              *(a1 + 40) = *(a1 + 104);
              *(a1 + 7) = *(a1 + 15);
              a1[4] = v45;
              a1[5] = v50;
              *(a1 + 12) = v54;
              *(a1 + 13) = v33;
              *(a1 + 14) = v40;
              *(a1 + 119) = *(&v40 + 7);
              result = 1;
              *(a1 + 127) = v34;
              return result;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, (a1 + 4), (a1 + 8), (a1 + 12), a2 - 4);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 4;
    if (*(a2 - 8) > *a1)
    {
      v41 = *a1;
      v46 = a1[1];
      v6 = *(a1 + 5);
      v51 = *(a1 + 4);
      *&v36 = *(a1 + 6);
      *(&v36 + 7) = *(a1 + 55);
      v7 = *(a1 + 63);
      *(a1 + 6) = 0;
      *(a1 + 7) = 0;
      *(a1 + 5) = 0;
      v8 = *v5;
      v9 = *(a2 - 3);
      *(a1 + 4) = *(a2 - 4);
      *a1 = v8;
      a1[1] = v9;
      v10 = *(a2 - 24);
      *(a1 + 7) = *(a2 - 1);
      *(a1 + 40) = v10;
      *v5 = v41;
      *(a2 - 3) = v46;
      *(a2 - 4) = v51;
      *(a2 - 3) = v6;
      *(a2 - 2) = v36;
      *(a2 - 9) = *(&v36 + 7);
      result = 1;
      *(a2 - 1) = v7;
      return result;
    }

    return 1;
  }

LABEL_11:
  v12 = (a1 + 8);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, a1 + 4, a1 + 8);
  v13 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *v13;
    if (*v13 > *v12)
    {
      v42 = *(v13 + 8);
      v47 = *(v13 + 24);
      v17 = *(v13 + 5);
      *v37 = *(v13 + 6);
      *&v37[7] = *(v13 + 55);
      v18 = *(v13 + 63);
      *(v13 + 6) = 0;
      *(v13 + 7) = 0;
      v19 = v14;
      *(v13 + 5) = 0;
      while (1)
      {
        v20 = a1 + v19;
        v21 = *(a1 + v19 + 144);
        *(v20 + 192) = *(a1 + v19 + 128);
        *(v20 + 208) = v21;
        *(v20 + 224) = *(a1 + v19 + 160);
        *(v20 + 232) = *(a1 + v19 + 168);
        *(v20 + 248) = *(a1 + v19 + 184);
        *(v20 + 191) = 0;
        *(v20 + 168) = 0;
        if (v19 == -128)
        {
          break;
        }

        v19 -= 64;
        if (v16 <= *(v20 + 64))
        {
          v22 = a1 + v19 + 192;
          goto LABEL_19;
        }
      }

      v22 = a1;
LABEL_19:
      *v22 = v16;
      *(v22 + 8) = v42;
      *(v22 + 24) = v47;
      *(v20 + 168) = v17;
      *(v22 + 55) = *&v37[7];
      *(v22 + 48) = *v37;
      ++v15;
      *(v22 + 63) = v18;
      if (v15 == 8)
      {
        return v13 + 4 == a2;
      }
    }

    v12 = v13;
    v14 += 64;
    v13 += 4;
    if (v13 == a2)
    {
      return 1;
    }
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_126()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::optional<ULModelWithMapLabels>::~optional(uint64_t a1)
{
  if (*(a1 + 344) == 1)
  {
    v3 = (a1 + 320);
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 272) == 1 && *(a1 + 271) < 0)
    {
      operator delete(*(a1 + 248));
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 32));
  }

  return a1;
}

uint64_t std::unordered_map<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::pair<CLMicroLocationProto::DataType const,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration> const&>(a1, i + 4, (i + 4));
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::pair<CLMicroLocationProto::DataType const,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration> const&>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v10 = *(a2 + 3);
        *(v8 + 5) = *(a2 + 5);
        *(v8 + 3) = v10;
        v11 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__node_insert_multi_prepare(a1, v9, v8 + 4);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v11;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v13 = *v8;
        operator delete(v8);
        v8 = v13;
      }

      while (v13);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_multi<std::pair<CLMicroLocationProto::DataType const,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration> const&>(a1, (a2 + 2));
  }
}

void sub_259191448(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__emplace_back_slow_path<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>> const&>(ULScanningEventDO **a1, const ULScanningEventDO *a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v6 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 296 * v2;
  std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100]((296 * v2), a2);
  v15 = (296 * v2 + 296);
  v7 = a1[1];
  v8 = (296 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::~__split_buffer(&v13);
  return v12;
}

void sub_259191644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::__optional_storage_base<ULHomeSlamModel,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULHomeSlamModel,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 208) == *(a2 + 208))
  {
    if (*(a1 + 208))
    {
      std::__optional_storage_base<ULTrajectoryPointCloud,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULTrajectoryPointCloud,false> const&>(a1, a2);
      std::vector<ULROI>::__vdeallocate((a1 + 40));
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      if (a1 != a2)
      {
        *(a1 + 96) = *(a2 + 96);
        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>((a1 + 64), *(a2 + 80), 0);
      }

      *(a1 + 104) = *(a2 + 104);
      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }

      v4 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v4;
      *(a2 + 143) = 0;
      *(a2 + 120) = 0;
      v5 = *(a2 + 144);
      v6 = *(a2 + 160);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 144) = v5;
      *(a1 + 160) = v6;
      std::vector<ULPositionedImage>::__vdeallocate((a1 + 184));
      result = *(a2 + 184);
      *(a1 + 184) = result;
      *(a1 + 200) = *(a2 + 200);
      *(a2 + 184) = 0;
      *(a2 + 192) = 0;
      *(a2 + 200) = 0;
    }
  }

  else if (*(a1 + 208))
  {
    v11 = (a1 + 184);
    std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v11);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 64);
    v11 = (a1 + 40);
    std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v11);
    if (*(a1 + 32) == 1)
    {
      std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100]((a1 + 24), 0);
      v11 = a1;
      std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v11);
    }

    *(a1 + 208) = 0;
  }

  else
  {
    std::__optional_move_base<ULTrajectoryPointCloud,false>::__optional_move_base[abi:ne200100](a1, a2);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1 + 64, a2 + 64);
    *(a1 + 104) = *(a2 + 104);
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    v9 = *(a2 + 144);
    v10 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 144) = v9;
    *(a1 + 160) = v10;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 184) = 0;
    result = *(a2 + 184);
    *(a1 + 184) = result;
    *(a1 + 200) = *(a2 + 200);
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a1 + 208) = 1;
  }

  return result;
}

void sub_25919184C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](va);
  std::optional<ULTrajectoryPointCloud>::~optional(v3);
  _Unwind_Resume(a1);
}

uint64_t *ULHomeSlamMapperIntermediateOutputs::ULHomeSlamMapperIntermediateOutputs(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<ULStaticIntervalObject>::__init_with_size[abi:ne200100]<ULStaticIntervalObject*,ULStaticIntervalObject*>(a1, *a2, *(a2 + 8), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 8) - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<ULSegment>::__init_with_size[abi:ne200100]<ULSegment*,ULSegment*>(a1 + 3, *(a2 + 24), *(a2 + 32), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<ULSegment>::__init_with_size[abi:ne200100]<ULSegment*,ULSegment*>(a1 + 6, *(a2 + 48), *(a2 + 56), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  std::unordered_map<boost::uuids::uuid,int>::unordered_map((a1 + 9), a2 + 72);
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  std::vector<ULRFGroupPlacement>::__init_with_size[abi:ne200100]<ULRFGroupPlacement*,ULRFGroupPlacement*>(a1 + 14, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 5);
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = 0;
  std::vector<ULFingerprintPlacement>::__init_with_size[abi:ne200100]<ULFingerprintPlacement*,ULFingerprintPlacement*>(a1 + 17, *(a2 + 136), *(a2 + 144), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 144) - *(a2 + 136)) >> 2));
  std::__optional_copy_base<ULHomeSlamModel,false>::__optional_copy_base[abi:ne200100]((a1 + 20), (a2 + 160));
  std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100]((a1 + 47), a2 + 376);
  a1[52] = 0;
  a1[53] = 0;
  a1[54] = 0;
  std::vector<CLMicroLocationFingerprint>::__init_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(a1 + 52, *(a2 + 416), *(a2 + 424), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 424) - *(a2 + 416)) >> 5));
  std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100]((a1 + 55), a2 + 440);
  std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100]((a1 + 60), a2 + 480);
  std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100]((a1 + 65), a2 + 520);
  return a1;
}

void sub_259191A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 512) == 1)
  {
    v14 = *(v10 + 488);
    if (v14)
    {
      *(v10 + 496) = v14;
      operator delete(v14);
    }
  }

  if (*(v10 + 472) == 1)
  {
    v15 = *(v10 + 448);
    if (v15)
    {
      *(v10 + 456) = v15;
      operator delete(v15);
    }
  }

  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 408) == 1)
  {
    v16 = *(v10 + 384);
    if (v16)
    {
      *(v10 + 392) = v16;
      operator delete(v16);
    }
  }

  std::optional<ULHomeSlamModel>::~optional(v10 + 160);
  v17 = *v12;
  if (*v12)
  {
    *(v10 + 144) = v17;
    operator delete(v17);
  }

  v18 = *v11;
  if (*v11)
  {
    *(v10 + 120) = v18;
    operator delete(v18);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v10 + 72);
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ULStaticIntervalObject>::__init_with_size[abi:ne200100]<ULStaticIntervalObject*,ULStaticIntervalObject*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULStaticIntervalObject>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259191B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ULSegment>::__init_with_size[abi:ne200100]<ULSegment*,ULSegment*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULSegment>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259191C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<boost::uuids::uuid,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,int> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,int> const&>(void *a1, void *a2, uint64_t a3)
{
  v3 = 0;
  for (i = 0; i != 16; ++i)
  {
    v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + *(a2 + i);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_24;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3;
    if (v3 >= *&v5)
    {
      v7 = v3 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v3;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v3)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_24;
    }

LABEL_23:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v9;
}

uint64_t *std::vector<ULRFGroupPlacement>::__init_with_size[abi:ne200100]<ULRFGroupPlacement*,ULRFGroupPlacement*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULRFGroupPlacement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259191F68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULRFGroupPlacement>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<ULFingerprintPlacement>::__init_with_size[abi:ne200100]<ULFingerprintPlacement*,ULFingerprintPlacement*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULFingerprintPlacement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259192020(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

ULHomeSlamModel *std::__optional_copy_base<ULHomeSlamModel,false>::__optional_copy_base[abi:ne200100](ULHomeSlamModel *this, const ULHomeSlamModel *a2)
{
  *this = 0;
  *(this + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    ULHomeSlamModel::ULHomeSlamModel(this, a2);
    *(this + 208) = 1;
  }

  return this;
}

void sub_259192084(_Unwind_Exception *exception_object)
{
  if (*(v1 + 208) == 1)
  {
    ULHomeSlamModel::~ULHomeSlamModel(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_259192118(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void ULHomeSlamMapperIntermediateOutputs::~ULHomeSlamMapperIntermediateOutputs(ULHomeSlamMapperIntermediateOutputs *this)
{
  if (*(this + 552) == 1)
  {
    v2 = *(this + 66);
    if (v2)
    {
      *(this + 67) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 512) == 1)
  {
    v3 = *(this + 61);
    if (v3)
    {
      *(this + 62) = v3;
      operator delete(v3);
    }
  }

  if (*(this + 472) == 1)
  {
    v4 = *(this + 56);
    if (v4)
    {
      *(this + 57) = v4;
      operator delete(v4);
    }
  }

  v8 = (this + 416);
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 408) == 1)
  {
    v5 = *(this + 48);
    if (v5)
    {
      *(this + 49) = v5;
      operator delete(v5);
    }
  }

  if (*(this + 368) == 1)
  {
    v8 = (this + 344);
    std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v8);
    if (*(this + 303) < 0)
    {
      operator delete(*(this + 35));
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 224);
    v8 = (this + 200);
    std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v8);
    if (*(this + 192) == 1)
    {
      std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](this + 23, 0);
      v8 = (this + 160);
      std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }
  }

  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 72);
  v8 = (this + 48);
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 24);
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = this;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&v8);
}

uint64_t *std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (v4 >= *(*a1 + 16))
  {
    v5 = std::vector<ULScanningEventDO>::__emplace_back_slow_path<ULScanningEventDO>(*a1, a2);
  }

  else
  {
    ULScanningEventDO::ULScanningEventDO(*(*a1 + 8), a2);
    v5 = v4 + 272;
    *(v3 + 8) = v4 + 272;
  }

  *(v3 + 8) = v5;
  return a1;
}

void std::vector<ULMapLabelDOAndLabelObjectID>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULMapLabelDOAndLabelObjectID>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<BOOL>::push_back(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1, v7);
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  v8 = *a1;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_6()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

void std::vector<CLMicroLocationRapportMonitorItem>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 80;
        std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<CLMicroLocationRapportMonitorItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 80;
        std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::vector<ULAnchorAppearanceMapDO>::__init_with_size[abi:ne200100]<ULAnchorAppearanceMapDO const*,ULAnchorAppearanceMapDO const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULAnchorAppearanceMapDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259192590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULAnchorAppearanceMapDO>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULAnchorAppearanceMapDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULAnchorAppearanceMapDO>,ULAnchorAppearanceMapDO const*,ULAnchorAppearanceMapDO const*,ULAnchorAppearanceMapDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = *(a2 + v7);
      *(v8 + 16) = *(a2 + v7 + 16);
      *v8 = v9;
      CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration((a4 + v7 + 24), (a2 + v7 + 24));
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_259192680(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(v5);
      v5 = (v6 - 56);
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<CLMicroLocationModel::BlueAtlasData,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<CLMicroLocationModel::BlueAtlasData,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {
      std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1, a2);
      result = *(a2 + 24);
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
      *(a1 + 24) = result;
    }
  }

  else if (*(a1 + 64))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = *(a2 + 24);
    v7 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v7;
    *(a1 + 24) = result;
    *(a1 + 64) = 1;
  }

  return result;
}

void std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CLMicroLocationFingerprint *,CLMicroLocationFingerprint *,CLMicroLocationFingerprint *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(a4, v5);
    v7 = *(v5 + 40);
    *(a4 + 56) = *(v5 + 56);
    *(a4 + 40) = v7;
    std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a4 + 64, (v5 + 64));
    std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a4 + 104, (v5 + 104));
    v8 = *(v5 + 144);
    *(a4 + 160) = *(v5 + 160);
    *(a4 + 144) = v8;
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a4 + 168, (v5 + 168));
    *(a4 + 192) = *(v5 + 192);
    std::vector<ULPhotoFeaturesDO>::__vdeallocate((a4 + 200));
    *(a4 + 200) = *(v5 + 200);
    *(a4 + 216) = *(v5 + 216);
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    a4 += 224;
    v5 += 224;
  }

  while (v5 != v6);
  return v6;
}

ULMapLabelDO *std::vector<ULMapLabelDOAndLabelObjectID>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>>(void *a1, ULMapLabelDO *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xEEEEEEEEEEEEEEEFLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xEEEEEEEEEEEEEEEFLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 30 * a5;
        std::vector<ULMapLabelDOAndLabelObjectID>::__move_range(a1, a2, a1[1], &a2[3 * a5]);
        v17 = &v7[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,ULMapLabelDOAndLabelObjectID*>(a1, a3 + v16, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<ULMapLabelDOAndLabelObjectID>::__move_range(a1, v5, v10, &v5[3 * a5]);
        v17 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID *>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID *>>,ULMapLabelDOAndLabelObjectID *>(v24, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x1111111111111111 * ((v10 - *a1) >> 4);
    if (v12 > 0x111111111111111)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x88888888888888)
    {
      v15 = 0x111111111111111;
    }

    else
    {
      v15 = v12;
    }

    v27 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v24[0] = 0;
    v24[1] = v19;
    v25 = v19;
    v26 = 0;
    v20 = 240 * a5;
    v21 = v19 + 240 * a5;
    do
    {
      ULMapLabelDO::ULMapLabelDO(v19, v7);
      v22 = v7[29];
      v7[29] = 0;
      *(v19 + 232) = v22;
      v19 += 240;
      v7 += 30;
      v20 -= 240;
    }

    while (v20);
    v25 = v21;
    v5 = std::vector<ULMapLabelDOAndLabelObjectID>::__swap_out_circular_buffer(a1, v24, v5);
    std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(v24);
  }

  return v5;
}

uint64_t std::vector<ULMapLabelDOAndLabelObjectID>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      ULMapLabelDO::ULMapLabelDO(v8, v10);
      v11 = *(v10 + 232);
      *(v10 + 232) = 0;
      *(v8 + 232) = v11;
      v10 += 240;
      v8 += 240;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULMapLabelDOAndLabelObjectID *,ULMapLabelDOAndLabelObjectID *,ULMapLabelDOAndLabelObjectID *>(&v13, a2, v7, v6);
}

uint64_t std::vector<ULMapLabelDOAndLabelObjectID>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, ULMapLabelDO *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,ULMapLabelDOAndLabelObjectID*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ULMapLabelDO::ULMapLabelDO(v4, v6);
      v7 = *(v6 + 232);
      *(v6 + 232) = 0;
      *(v4 + 232) = v7;
      v6 += 240;
      v4 = v12 + 240;
      v12 += 240;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULMapLabelDOAndLabelObjectID *,ULMapLabelDOAndLabelObjectID *,ULMapLabelDOAndLabelObjectID *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      ULMapLabelDO::operator=(a4 - 240, (v7 - 240));
      v8 = *(v7 - 8);
      *(v7 - 8) = 0;
      v9 = *(a4 - 8);
      *(a4 - 8) = v8;

      a4 -= 240;
      v7 -= 240;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID *>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID *>>,ULMapLabelDOAndLabelObjectID *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      ULMapLabelDO::operator=(a4, v5);
      v7 = v5[29];
      v5[29] = 0;
      v8 = *(a4 + 232);
      *(a4 + 232) = v7;

      v5 += 30;
      a4 += 240;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void ULModelWithMapLabels::~ULModelWithMapLabels(void **this)
{
  v2 = this + 40;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 272) == 1 && *(this + 271) < 0)
  {
    operator delete(this[31]);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((this + 4));
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,boost::uuids::uuid,CLMicroLocationModel,std::vector<ULMapLabelDOAndLabelObjectID>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  CLMicroLocationModel::CLMicroLocationModel((a1 + 16), (a2 + 16));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>((a1 + 320), *(a2 + 320), *(a2 + 328), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  return a1;
}

uint64_t std::optional<std::tuple<boost::uuids::uuid,CLMicroLocationModel,std::vector<ULMapLabelDOAndLabelObjectID>>>::~optional(uint64_t a1)
{
  if (*(a1 + 344) == 1)
  {
    v5 = (a1 + 320);
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    v2 = *(a1 + 264);
    if (v2)
    {
      *(a1 + 272) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table((a1 + 216));
    v5 = (a1 + 192);
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 152) == 1)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        *(a1 + 96) = v3;
        operator delete(v3);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 32);
  }

  return a1;
}

CLMicroLocationFingerprint *std::vector<CLMicroLocationFingerprint>::__assign_with_size[abi:ne200100]<CLMicroLocationFingerprint const*,CLMicroLocationFingerprint const*>(uint64_t *a1, CLMicroLocationFingerprint *a2, CLMicroLocationFingerprint *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5) < a4)
  {
    std::vector<CLMicroLocationFingerprint>::__vdeallocate(a1);
    if (a4 <= 0x124924924924924)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
      {
        v10 = 0x124924924924924;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CLMicroLocationFingerprint>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 5) >= a4)
  {
    while (v6 != a3)
    {
      CLMicroLocationFingerprint::operator=(v8, v6);
      v6 = (v6 + 224);
      v8 += 224;
    }

    return std::vector<CLMicroLocationFingerprint>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        CLMicroLocationFingerprint::operator=(v8, v14);
        v14 = (v14 + 224);
        v8 += 224;
        v13 -= 224;
      }

      while (v13);
      v11 = a1[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint const*,CLMicroLocationFingerprint const*,CLMicroLocationFingerprint*>(a1, &v12[v6], a3, v11);
    a1[1] = result;
  }

  return result;
}

CLMicroLocationFingerprint *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint const*,CLMicroLocationFingerprint const*,CLMicroLocationFingerprint*>(uint64_t a1, CLMicroLocationFingerprint *a2, CLMicroLocationFingerprint *a3, CLMicroLocationFingerprint *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      CLMicroLocationFingerprint::CLMicroLocationFingerprint(v4, v6);
      v6 = (v6 + 224);
      v4 = (v11 + 224);
      v11 = (v11 + 224);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDO const&,NSManagedObjectID * const {__strong}&>(uint64_t a1, const ULMapLabelDO *a2, NSManagedObjectID **a3)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x111111111111111)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v7 = 0x111111111111111;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>>(a1, v7);
  }

  v14 = 0;
  v15 = 240 * v3;
  v16 = 240 * v3;
  ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID((240 * v3), a2, *a3);
  *&v16 = 240 * v3 + 240;
  v8 = *(a1 + 8);
  v9 = (240 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(&v14);
  return v13;
}

void sub_259193384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CDE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationLearner::onLearningBegin(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_2591934BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CE68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationLearner::generateAnchorAppearanceMap(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_259193650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CEE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationLearner::learnFromModelType(v3, v6, 0);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_2591937E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CF68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationLearner::learnFromModelType(v3, v6, 2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_259193980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CFE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationLearner::learnFromModelType(v3, v6, 4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_259193B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5D068;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationLearner::learnBlueAtlasModelWorkItem(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_259193CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5D0E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationLearner::onLearningCompleted(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_259193E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_259193FC4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v5 = (v2 + 232);
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v5);
      v4 = *(v2 + 25);
      if (v4)
      {
        *(v2 + 26) = v4;
        operator delete(v4);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((v2 + 136));
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((v2 + 96));
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table((v2 + 32));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&,CLMicroLocationFingerprint const&>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_24:
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__construct_node_hash<boost::uuids::uuid const&,CLMicroLocationFingerprint const&>();
  }

  while (1)
  {
    v9 = result[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    result = *result;
    if (!result)
    {
      goto LABEL_24;
    }
  }

  if (result[2] != *a2 || result[3] != a2[1])
  {
    goto LABEL_23;
  }

  return result;
}

void sub_2591942D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_259194390(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = (a2 + 232);
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v4);
    v3 = *(a2 + 200);
    if (v3)
    {
      *(a2 + 208) = v3;
      operator delete(v3);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a2 + 136);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a2 + 96);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(a2 + 32);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::learnBlueAtlasModel(boost::uuids::uuid const&)::$_0,std::allocator<CLMicroLocationLearner::learnBlueAtlasModel(boost::uuids::uuid const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = 0;
  for (i = 0; i != 16; ++i)
  {
    v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + *(a2 + i);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_24;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
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
      goto LABEL_24;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  if (v10[2] != *a2 || v10[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v10;
}

void sub_2591947E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t CLMicroLocationLocalizationSettings::CLMicroLocationLocalizationSettings(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v52 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = ULSettings::get<ULSettings::NullSpaceKernelFunction>();
  v46[0] = 0;
  v46[1] = 0;
  v45 = v46;
  v6 = *(a2 + 23);
  v7 = *(a2 + 8);
  if ((v6 & 0x80000000) == 0 || v7 != 38)
  {
    if ((v6 & 0x80000000) == 0 || v7 != 24)
    {
      if (v6 < 0 && v7 == 34 && !memcmp(*a2, "com.apple.microlocation.similarity", 0x22uLL))
      {
        if (a3 == 5)
        {
          *(a1 + 32) = 4;
          v20 = +[ULDefaultsSingleton shared];
          v21 = [v20 defaultsDictionary];

          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasFingerprintDistanceFunctionType"];
          v23 = [v21 objectForKey:v22];
          if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v24 = [v23 unsignedIntValue];
          }

          else
          {
            v24 = [&unk_286A72708 unsignedIntValue];
          }

          v43 = v24;

          *(a1 + 36) = v43;
        }

        else
        {
          *(a1 + 32) = 3;
        }
      }

      goto LABEL_47;
    }

    if (**a2 != 0x6C7070612E6D6F63 || *(*a2 + 8) != 0x61636967616D2E65 || *(*a2 + 16) != 0x73746E656D6F6D6CLL)
    {
      goto LABEL_47;
    }

LABEL_19:
    *(a1 + 32) = ULSettings::get<ULSettings::LocalizerAlgorithm>();
    v15 = ULSettings::get<ULSettings::NullSpaceDistanceReductionFunctionMinPercentile>();
    v44 = 0;
    *buf = &v44;
    *(std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v44, &std::piecewise_construct, buf) + 5) = v15;
    v16 = ULSettings::get<ULSettings::NullSpaceDistanceReductionFunctionMaxPercentile>();
    v44 = 1;
    *buf = &v44;
    *(std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v44, &std::piecewise_construct, buf) + 5) = v16;
    v17 = ULSettings::get<ULSettings::NullSpaceKernelFunction>();
    v18 = *(a1 + 24);
    *(a1 + 24) = v17;

    v19 = ULSettings::get<ULSettings::FingerprintDistanceFunctionTypeForLocalizing>();
LABEL_46:
    *(a1 + 36) = v19;
    goto LABEL_47;
  }

  if (memcmp(*a2, "com.apple.microlocation.semisupervised", 0x26uLL))
  {
    goto LABEL_47;
  }

  if (a3 == 3)
  {
    goto LABEL_19;
  }

  if (a3 == 4)
  {
    *(a1 + 32) = 2;
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBinaryModelRoiReductionPercentile"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v11 doubleValue];
    }

    else
    {
      [&unk_286A72F60 doubleValue];
    }

    v27 = v12;

    v44 = 2;
    *buf = &v44;
    std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v44, &std::piecewise_construct, buf)[5] = v27;
    v28 = +[ULDefaultsSingleton shared];
    v29 = [v28 defaultsDictionary];

    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBinaryModelNotRoiReductionPercentile"];
    v31 = [v29 objectForKey:v30];
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v31 doubleValue];
    }

    else
    {
      [&unk_286A72F70 doubleValue];
    }

    v33 = v32;

    v44 = 3;
    *buf = &v44;
    std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v44, &std::piecewise_construct, buf)[5] = v33;
    v34 = ULSettings::get<ULSettings::NullSpaceKernelFunction>();
    v35 = *(a1 + 24);
    *(a1 + 24) = v34;

    v36 = +[ULDefaultsSingleton shared];
    v37 = [v36 defaultsDictionary];

    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBinaryModelDetectionThreshold"];
    v39 = [v37 objectForKey:v38];
    if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v39 doubleValue];
    }

    else
    {
      [&unk_286A72F80 doubleValue];
    }

    v41 = v40;

    v44 = 4;
    *buf = &v44;
    std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v44, &std::piecewise_construct, buf)[5] = v41;
    v19 = ULSettings::get<ULSettings::FingerprintDistanceFunctionTypeForLocalizing>();
    goto LABEL_46;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLocalizationSettings::CLMicroLocationLocalizationSettings();
  }

  v25 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v48 = 2082;
    v49 = "";
    v50 = 2050;
    v51 = a3;
    _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected generation algorithm for kMicroLocationSemisupervisedDomain!, Generation Algorithm:%{public}lu}", buf, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLocalizationSettings::CLMicroLocationLocalizationSettings();
  }

  v26 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v48 = 2082;
    v49 = "";
    v50 = 2050;
    v51 = a3;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected generation algorithm for kMicroLocationSemisupervisedDomain!", "{msg%{public}.0s:Unexpected generation algorithm for kMicroLocationSemisupervisedDomain!, Generation Algorithm:%{public}lu}", buf, 0x1Cu);
  }

LABEL_47:
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v45, v46[0]);
  return a1;
}

void sub_259194F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a11, a12);

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v12, *(v12 + 8));
  _Unwind_Resume(a1);
}

id ULSettings::get<ULSettings::NullSpaceKernelFunction>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullSpaceKernelFunction"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_286A73638;
  }

  return v4;
}

uint64_t ULSettings::get<ULSettings::LocalizerAlgorithm>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLocalizerAlgorithm"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A72720 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

double ULSettings::get<ULSettings::NullSpaceDistanceReductionFunctionMinPercentile>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullSpaceDistanceReductionFunctionMinPercentile"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A72F90 doubleValue];
  }

  v5 = v4;

  return v5;
}

double ULSettings::get<ULSettings::NullSpaceDistanceReductionFunctionMaxPercentile>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullSpaceDistanceReductionFunctionMaxPercentile"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A72FB0 doubleValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::FingerprintDistanceFunctionTypeForLocalizing>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULFingerprintDistanceFunctionTypeForLocalizing"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A726F0 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t CLMicroLocationLocalizationSettings::getDetectionThresholdForBinaryROI(CLMicroLocationLocalizationSettings *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = (this + 8);
  do
  {
    if (v1[8] >= 4)
    {
      v2 = v1;
    }

    v1 = *&v1[2 * (v1[8] < 4)];
  }

  while (v1);
  if (v2 == (this + 8) || v2[8] > 4)
  {
    return 0;
  }

  v4 = 4;
  return *std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::at(this, &v4);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_127()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t CLMicroLocationLogic::CLMicroLocationLogic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *a1 = &unk_286A5D208;
  *(a1 + 8) = &unk_286A5D2F0;
  *(a1 + 16) = &unk_286A5D338;
  *(a1 + 24) = &unk_286A5D370;
  *(a1 + 32) = &unk_286A5D398;
  *(a1 + 40) = 1;
  *(a1 + 42) = 1;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  v6 = *a5;
  *a5 = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  CLMicroLocationLogic::reloadAnchorDeviceModelAllowedList(a1);
  return a1;
}

void sub_2591957C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  a10 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = *(v10 + 88);
  *(v10 + 88) = 0;
  if (v15)
  {
    CLMicroLocationLogic::CLMicroLocationLogic(v15);
  }

  CLMicroLocationLogic::CLMicroLocationLogic(v10, v11);
  _Unwind_Resume(a1);
}

__n128 CLMicroLocationLogic::reloadAnchorDeviceModelAllowedList(CLMicroLocationLogic *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnchorDeviceModelAllowedList"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    memset(&v15, 0, sizeof(v15));
    std::vector<std::string>::reserve(&v15, [v6 count]);
    v18 = 0u;
    v19 = 0u;
    memset(v17, 0, sizeof(v17));
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:v17 objects:v20 count:16];
    if (v8)
    {
      v9 = **&v17[16];
      do
      {
        v10 = 0;
        do
        {
          if (**&v17[16] != v9)
          {
            objc_enumerationMutation(v7);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, [*(*&v17[8] + 8 * v10) UTF8String]);
          std::vector<std::string>::push_back[abi:ne200100](&v15, &__p);
          if (SHIBYTE(__p.__end_cap_.__value_) < 0)
          {
            operator delete(__p.__begin_);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:v17 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = *&v15.__begin_;
    *v20 = *&v15.__begin_;
    value = v15.__end_cap_.__value_;
    memset(&v15, 0, sizeof(v15));
    *v17 = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  else
  {
    memset(v17, 0, 24);
    memset(&__p, 0, sizeof(__p));
    std::vector<std::string>::reserve(&__p, 0xDuLL);
    for (i = 0; i != 13; ++i)
    {
      std::string::basic_string[abi:ne200100]<0>(v20, _ZGRN10ULSettings14SettingsTraitsINS_28AnchorDeviceModelAllowedListEE12defaultValueE_[i]);
      std::vector<std::string>::push_back[abi:ne200100](&__p, v20);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }
    }

    std::vector<std::string>::__vdeallocate(v17);
    *v17 = __p;
    memset(&__p, 0, sizeof(__p));
    v20[0] = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v20);
    v14 = *v17;
    v20[0] = *v17;
    value = *&v17[16];
    memset(v17, 0, 24);
    __p.__begin_ = v17;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  std::vector<std::string>::__vdeallocate((this + 104));
  *(this + 104) = v14;
  *(this + 15) = value;
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  *v17 = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  return result;
}

void sub_259195AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  a15 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);

  _Unwind_Resume(a1);
}

void CLMicroLocationLogic::~CLMicroLocationLogic(CLMicroLocationLogic *this)
{
  *this = &unk_286A5D208;
  *(this + 1) = &unk_286A5D2F0;
  *(this + 2) = &unk_286A5D338;
  *(this + 3) = &unk_286A5D370;
  *(this + 4) = &unk_286A5D398;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "CLMicroLocationLogic: DTOR", v6, 2u);
  }

  (*(**(this + 8) + 24))(*(this + 8));
  v7 = (this + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic(this);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toCLMicroLocationLogic::~CLMicroLocationLogic(CLMicroLocationLogic *this)
{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 8));
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 16));
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 24));
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 32));
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 16));

  JUMPOUT(0x259CA1F90);
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 24));

  JUMPOUT(0x259CA1F90);
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 32));

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLogic::setDependencies(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 80);
  *(a1 + 72) = v9;
  *(a1 + 80) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *a3;
  *a3 = 0;
  v12 = *(a1 + 88);
  *(a1 + 88) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a1 + 72);
  if ([MEMORY[0x277D28868] isMac])
  {
    v14 = [MEMORY[0x277D28868] isMacBook];
  }

  else
  {
    v14 = 1;
  }

  (*(*(v13 + 8) + 40))(v13 + 8, v14);
  v15 = *(a1 + 72);
  v16 = ULSettings::get<ULSettings::Enabled>();
  (*(*(v15 + 8) + 56))(v15 + 8, v16);
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(&v25);
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *&v28 = (*(**(a1 + 88) + 16))(*(a1 + 88));
    *(&v28 + 1) = v19;
    v20 = (*(**(a1 + 48) + 64))(*(a1 + 48));
    v26 = v28;
    v23 = 0;
    v24 = 0;
    __p = 0;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v26, &v27, 1uLL);
    [v20 updateLoiIds:&__p withLoiGroupId:&v28 andLoiType:&v25];
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = v25;
    }

    (*(*a1 + 88))(a1, &v21, v28, *(&v28 + 1), 7);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if ((*(&v25.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    (*(**(a1 + 88) + 24))(*(a1 + 88), v7);
    if (v18 < 0)
    {
LABEL_23:
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }
}

void sub_25919618C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::Enabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t CLMicroLocationLogic::refreshSettings(CLMicroLocationLogic *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "CLMicroLocationLogic: Settings updated so updating wifi strategies, allowed anchor models, and checking enabled flags", v6, 2u);
  }

  CLMicroLocationLogic::reloadAnchorDeviceModelAllowedList(this);
  v3 = *(this + 9);
  v4 = ULSettings::get<ULSettings::Enabled>();
  return (*(*(v3 + 8) + 56))(v3 + 8, v4);
}

uint64_t CLMicroLocationLogic::logState(CLMicroLocationLogic *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 40);
    v4 = *(this + 42);
    v5 = *(this + 41);
    v7[0] = 68289794;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = v3;
    v12 = 1026;
    v13 = v4;
    v14 = 1026;
    v15 = v5;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationLogic State, displayOn:%{public}hhd, isOnLockScreen:%{public}hhd, isBuddyComplete:%{public}hhd}", v7, 0x24u);
  }

  return (*(**(this + 9) + 168))(*(this + 9));
}

void CLMicroLocationLogic::setCurrentRTLOI(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v36[2] = *MEMORY[0x277D85DE8];
  v36[0] = a3;
  v36[1] = a4;
  (*(**(a1 + 72) + 112))(*(a1 + 72));
  (*(**(a1 + 64) + 48))(*(a1 + 64), a2);
  (*(**(a1 + 64) + 56))(*(a1 + 64), v36);
  v8 = +[ULEventLog shared];
  v9 = a2;
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  v10 = MEMORY[0x277CCACA8];
  CLMicroLocationProtobufHelper::convertChangedLoiReasonToMessage(v5, buf);
  v11 = SBYTE3(v31);
  v12 = *buf;
  boost::lexical_cast<std::string,boost::uuids::uuid>(v36, &__p);
  v13 = buf;
  if (v11 < 0)
  {
    v13 = v12;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v15 = [v10 stringWithFormat:@"Changed Loi Event type: %s, reason:%s, groupId: %s", v9, v13, p_p];
  [v8 log:v15];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SBYTE3(v31) < 0)
  {
    operator delete(*buf);
  }

  v16 = *(a2 + 23);
  if (v16 < 0)
  {
    if (a2[1] != 4)
    {
LABEL_18:
      v18 = +[ULHomeSlamAnalytics shared];
      [v18 logEventExitHomeLOIAtTimestamp:cl::chrono::CFAbsoluteTimeClock::now()];
      goto LABEL_19;
    }

    v17 = *a2;
  }

  else
  {
    v17 = a2;
    if (v16 != 4)
    {
      goto LABEL_18;
    }
  }

  if (*v17 != 1701670760)
  {
    goto LABEL_18;
  }

  v18 = +[ULHomeSlamAnalytics shared];
  [v18 logEventEnterHomeLOIAtTimestamp:cl::chrono::CFAbsoluteTimeClock::now()];
LABEL_19:

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::setCurrentRTLOI();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    boost::lexical_cast<std::string,boost::uuids::uuid>(v36, &__p);
    v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v21 = __p.__r_.__value_.__r.__words[0];
    CLMicroLocationProtobufHelper::convertChangedLoiReasonToMessage(v5, v24);
    v22 = &__p;
    if (v20 < 0)
    {
      v22 = v21;
    }

    if (v25 >= 0)
    {
      v23 = v24;
    }

    else
    {
      v23 = v24[0];
    }

    *buf = 68289795;
    *&buf[4] = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2081;
    v31 = a2;
    v32 = 2081;
    v33 = v22;
    v34 = 2081;
    v35 = v23;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Set current LOI., type:%{private, location:escape_only}s, id:%{private, location:escape_only}s, reason:%{private, location:escape_only}s}", buf, 0x30u);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t CLMicroLocationLogic::onRapportCompanionDeviceFound(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  result = CLMicroLocationsMeasurementFilters::isAnchorModelValid(a3, (a1 + 104));
  if (result)
  {
    v5 = *(**(a1 + 64) + 16);

    return v5();
  }

  return result;
}

uint64_t CLMicroLocationLogic::onResetLocationData(CLMicroLocationLogic *this)
{
  v25 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Got request to reset Location data. Dropping microlocation tables", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x2020000000;
  v21 = 0;
  v3 = +[ULTransactionManager shared];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN20CLMicroLocationLogic19onResetLocationDataEv_block_invoke;
  v17[3] = &unk_2798D4650;
  v17[4] = buf;
  v17[5] = this;
  [v3 performUnderTransaction:@"com.apple.milod.deleteLocationData" block:v17];

  (*(**(this + 9) + 136))(*(this + 9));
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(&v16);
  size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "unknown");
    (*(*this + 88))(this, __p, 0, 0, 12);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    *&v24 = (*(**(this + 11) + 16))(*(this + 11));
    *(&v24 + 1) = v5;
    v6 = (*(**(this + 6) + 64))(*(this + 6));
    v22 = v24;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&v11, &v22, &v23, 1uLL);
    [v6 updateLoiIds:&v11 withLoiGroupId:&v24 andLoiType:&v16];
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = v16;
    }

    v7 = (*(*this + 88))(this, &v10, v24, *(&v24 + 1), 12);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    CLMicroLocationLogic::fetchPlaceInferenceForReason(this, 12);
  }

  ULDiskUtils::removeAllTrackedTempFiles(v7);
  v8 = v19[24];
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(buf, 8);
  return v8;
}

void sub_259196C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void ___ZN20CLMicroLocationLogic19onResetLocationDataEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = (*(**(v1 + 56) + 16))(*(v1 + 56));
  v2 = [[ULBackupAndRestore alloc] initWithDbStore:*(v1 + 48) andDbManagement:*(v1 + 56)];
  [(ULBackupAndRestore *)v2 deleteBackupFiles];
}

void CLMicroLocationLogic::fetchPlaceInferenceForReason(uint64_t a1, uint64_t a2)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v4 = v8;
  v5 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    (*(**(a1 + 88) + 56))(*(a1 + 88), a2);
  }

  if (v5 < 0)
  {
    v6 = __p[0];

    operator delete(v6);
  }
}

void sub_259196E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLogic::setDisplayState(uint64_t a1, int a2, double *a3)
{
  *(a1 + 40) = a2;
  v5 = +[ULHomeSlamAnalytics shared];
  v6 = *a3;
  v7 = v5;
  if (a2)
  {
    [v5 logEventScreenOnAtTimestamp:v6];
  }

  else
  {
    [v5 logEventScreenOffAtTimestamp:v6];
  }
}

void CLMicroLocationLogic::onCustomLoiRecordingSessionCompleted(CLMicroLocationLogic *this)
{
  v17[2] = *MEMORY[0x277D85DE8];
  (*(**(this + 9) + 192))(__p);
  if (v16 < 0)
  {
    if (__p[1] != 6)
    {
      goto LABEL_10;
    }

    v2 = __p[0];
  }

  else
  {
    if (v16 != 6)
    {
      goto LABEL_10;
    }

    v2 = __p;
  }

  v3 = *v2;
  v4 = *(v2 + 2);
  if (v3 == 1953723747 && v4 == 28015)
  {
    (*(**(this + 12) + 104))(*(this + 12), v17);
    goto LABEL_23;
  }

LABEL_10:
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::setCurrentRTLOI();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v7 = __p;
    if (v16 < 0)
    {
      v7 = __p[0];
    }

    v10 = 68289282;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:onCustomLoiRecordingSessionCompleted while current LOI is not custom, current LOI type:%{public, location:escape_only}s}", &v10, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::setCurrentRTLOI();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v9 = __p;
    if (v16 < 0)
    {
      v9 = __p[0];
    }

    v10 = 68289282;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = v9;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "onCustomLoiRecordingSessionCompleted while current LOI is not custom", "{msg%{public}.0s:onCustomLoiRecordingSessionCompleted while current LOI is not custom, current LOI type:%{public, location:escape_only}s}", &v10, 0x1Cu);
  }

LABEL_23:
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259197118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLogic::onDisplayStateChange_OSX(CLMicroLocationLogic *this, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Off";
    if (a2)
    {
      v5 = @"On";
    }

    *v6 = 138412290;
    *&v6[4] = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "onDisplayStateChange_OSX: screen: %@", v6, 0xCu);
  }

  *v6 = cl::chrono::CFAbsoluteTimeClock::now();
  CLMicroLocationLogic::setDisplayState(this, a2, v6);
  if (a2)
  {
    if (!CLMicroLocationLogic::isAtHomeLoi(this))
    {
      CLMicroLocationLogic::fetchPlaceInferenceForReason(this, 4);
    }
  }
}

BOOL CLMicroLocationLogic::isAtHomeLoi(CLMicroLocationLogic *this)
{
  v5 = *MEMORY[0x277D85DE8];
  (*(**(this + 9) + 192))(v3);
  if (v4 < 0)
  {
    v1 = v3[1] == 4 && *v3[0] == 1701670760;
    operator delete(v3[0]);
  }

  else
  {
    return v4 == 4 && LODWORD(v3[0]) == 1701670760;
  }

  return v1;
}

void CLMicroLocationLogic::onModelGenerated(uint64_t a1, unsigned int a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v37 = 2082;
    *&v37[2] = "";
    *&v37[10] = 2050;
    *&v37[12] = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Models have been regenerated, model-type:%{public}lu}", buf, 0x1Cu);
  }

  (*(**(a1 + 72) + 192))(&v45);
  if (a2 != 3)
  {
    goto LABEL_58;
  }

  (*(**(a1 + 72) + 192))(buf);
  if ((v37[15] & 0x80000000) == 0)
  {
    if (v37[15] != 6)
    {
      goto LABEL_58;
    }

    if (*buf != 1953723747 || *&buf[4] != 28015)
    {
      goto LABEL_58;
    }

    goto LABEL_22;
  }

  v6 = *buf;
  if (*v37 != 6)
  {
LABEL_57:
    operator delete(v6);
    goto LABEL_58;
  }

  v8 = **buf != 1953723747 || *(*buf + 4) != 28015;
  operator delete(*buf);
  if (!v8)
  {
LABEL_22:
    *v50.data = v48;
    *&v50.data[8] = *(a1 + 48);
    CLMicroLocationAnalytics::generateWiFiChannelHistogramForBlueAtlas(v47, v50, &v27);
    if (v29 != 1)
    {
      goto LABEL_58;
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(&v24, v27, v28, (v28 - v27) >> 3);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLogic::setCurrentRTLOI();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v37 = 2082;
      *&v37[2] = "";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:updating Blue Atlas wifi channel histogram}", buf, 0x12u);
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v10 = v24;
    v11 = v25;
    if (v24 != v25)
    {
      do
      {
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37[8], "channel: ", 9);
        v13 = MEMORY[0x259CA1DC0](v12, *v10);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " count: ", 8);
        v15 = MEMORY[0x259CA1DC0](v14, v10[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
        v10 += 2;
      }

      while (v10 != v11);
    }

    if ((v43 & 0x10) != 0)
    {
      v17 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v17 = v39;
      }

      locale = v38[4].__locale_;
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v16 = 0;
        v23 = 0;
        goto LABEL_42;
      }

      locale = v38[1].__locale_;
      v17 = v38[3].__locale_;
    }

    v16 = v17 - locale;
    if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v23 = v17 - locale;
    if (v16)
    {
      memmove(&__p, locale, v16);
    }

LABEL_42:
    *(&__p + v16) = 0;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLogic::setCurrentRTLOI();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      p_p = &__p;
      if (v23 < 0)
      {
        p_p = __p;
      }

      *v30 = 68289283;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2081;
      v35 = p_p;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wifi channel histogram:, Histogram:%{private, location:escape_only}s}", v30, 0x1Cu);
    }

    if (v23 < 0)
    {
      operator delete(__p);
    }

    *buf = *MEMORY[0x277D82818];
    v21 = *(MEMORY[0x277D82818] + 72);
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
    *&v37[8] = v21;
    *&v37[16] = MEMORY[0x277D82878] + 16;
    if (v41 < 0)
    {
      operator delete(v40);
    }

    *&v37[16] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v38);
    std::iostream::~basic_iostream();
    MEMORY[0x259CA1EE0](&v44);
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    if (v29)
    {
      v6 = v27;
      if (v27)
      {
        v28 = v27;
        goto LABEL_57;
      }
    }
  }

LABEL_58:
  if (v46 < 0)
  {
    operator delete(v45);
  }
}

void sub_2591978E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 == 1 && a15)
  {
    operator delete(a15);
  }

  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLogic::refreshLocationOnInterval(CLMicroLocationLogic *this)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v2 = v6;
  v3 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (v2)
  {
    (*(**(this + 11) + 64))(*(this + 11));
  }

  if (v3 < 0)
  {
    v4 = __p[0];

    operator delete(v4);
  }
}

void sub_259197A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::onDatabaseBecameValid(CLMicroLocationLogic *this)
{
  CLMicroLocationLogic::fetchPlaceInferenceForReason(this, 6);
  CLMicroLocationLogic::initializeRegionMonitoringIfNecessary(this);
  (*(*(*(this + 9) + 8) + 48))();
  v2 = *(**(this + 9) + 176);

  return v2();
}

void CLMicroLocationLogic::initializeRegionMonitoringIfNecessary(CLMicroLocationLogic *this)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v2 = v6;
  v3 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (!v2)
  {
    (*(**(this + 11) + 32))(*(this + 11));
  }

  if (v3 < 0)
  {
    v4 = __p[0];

    operator delete(v4);
  }
}

void sub_259197B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::resetAndGetDevicesSinceLearnEventTimeForLoi@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  *&v9[5] = a3;
  (*(**(a1 + 64) + 40))(v9);
  (*(**(a1 + 64) + 24))(*(a1 + 64));
  (*(**(a1 + 64) + 32))(*(a1 + 64));
  v5 = v9[2];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v6 = 0;
  if (v5)
  {
    v7 = v5;
    do
    {
      ++v6;
      v7 = *v7;
    }

    while (v7);
  }

  std::vector<CLMicroLocationRapportMonitorItem>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>,std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>>(a2, v5, 0, v6);
  return std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table(v9);
}

uint64_t CLMicroLocationLogic::enableMiLoAtCurrentLocation(CLMicroLocationLogic *this, const uuid *a2)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v4 = v8;
  v5 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    (*(**(this + 11) + 40))(*(this + 11), a2);
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_259197D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::disableMiLoAtLocationWithIdentifier(CLMicroLocationLogic *this, const uuid *a2, const uuid *a3)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v6 = v10;
  v7 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (!v6)
  {
    (*(**(this + 11) + 48))(*(this + 11), *a2->data, *&a2->data[8], a3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_259197E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::requestRapportControl(CLMicroLocationLogic *this, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLogic::~CLMicroLocationLogic();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Rapport Enabled}", &v6, 0x12u);
    }

    return (*(**(this + 12) + 80))(*(this + 12));
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLogic::~CLMicroLocationLogic();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Rapport Disabled}", &v6, 0x12u);
    }

    (*(**(this + 12) + 88))(*(this + 12));
    (*(**(this + 8) + 24))(*(this + 8));
    return (*(**(this + 8) + 32))(*(this + 8));
  }
}

uint64_t CLMicroLocationLogic::onSendPredictionResultsToClient(CLMicroLocationLogic *this, const ULService::ServiceDescriptor *a2, const uuid *a3, const ULLocalizationResult *a4, const uuid *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocationQE_Default != -1)
  {
    CLMicroLocationLogic::onSendPredictionResultsToClient();
  }

  v5 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  v6 = a4;
  if (*(a4 + 24) == 1)
  {
    __p = 0;
    v17 = 0uLL;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(&__p, *a4, *(a4 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 1) - *a4) >> 2));
    v8 = __p;
    v7 = v17;
    if (__p != v17)
    {
      do
      {
        if (onceToken_MicroLocationQE_Default != -1)
        {
          CLMicroLocationLogic::onSendPredictionResultsToClient();
        }

        v9 = logObject_MicroLocationQE_Default;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }

        v8 += 20;
      }

      while (v8 != v7);
      v8 = __p;
    }

    if (v8)
    {
      *&v17 = v8;
      operator delete(v8);
    }

    v6 = a4;
  }

  return (*(**(this + 12) + 48))(*(this + 12), a2, a3, v6, a5);
}

void sub_259198484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v28);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLogic::triggerLearning(CLMicroLocationLogic *this)
{
  v8[2] = *MEMORY[0x277D85DE8];
  (*(**(this + 9) + 192))(__p);
  if ((v7 & 0x80000000) == 0)
  {
    if (v7 == 6)
    {
      v2 = __p;
      goto LABEL_6;
    }

LABEL_10:
    (*(**(this + 12) + 96))(*(this + 12));
    goto LABEL_11;
  }

  if (__p[1] != 6)
  {
    goto LABEL_10;
  }

  v2 = __p[0];
LABEL_6:
  v3 = *v2;
  v4 = *(v2 + 2);
  if (v3 != 1953723747 || v4 != 28015)
  {
    goto LABEL_10;
  }

  (*(**(this + 12) + 104))(*(this + 12), v8);
LABEL_11:
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259198680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::createCustomLoiAtCurrentLocation(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  v7 = (*(**(a1 + 72) + 96))(*(a1 + 72), a2);
  return v7;
}

void sub_259198830(_Unwind_Exception *a1)
{
  operator delete(v3);

  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationLogic::removeCustomLoiWithIdentifier(CLMicroLocationLogic *this, const uuid *a2, uuid a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  return (*(**(this + 9) + 120))(*(this + 9), a2, &v7);
}

void sub_259198A10(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

void CLMicroLocationLogic::setCurrentLoi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  CLMicroLocationLogic::setCurrentRTLOI(a1, &__p, a3, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_259198B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_128()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *std::vector<CLMicroLocationRapportMonitorItem>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>,std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationRapportMonitorItem>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259198EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<CLMicroLocationRapportMonitorItem>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<CLMicroLocationRapportMonitorItem>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationRapportMonitorItem>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationRapportMonitorItem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLMicroLocationRapportMonitorItem>,std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>,std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>,CLMicroLocationRapportMonitorItem*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      *(a4 + v7) = *(v6 + 1);
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v8 + 16), v6[4], v6[5]);
      }

      else
      {
        v9 = *(v6 + 2);
        *(v8 + 32) = v6[6];
        *(v8 + 16) = v9;
      }

      v10 = a4 + v7;
      if (*(v6 + 79) < 0)
      {
        std::string::__init_copy_ctor_external((v10 + 40), v6[7], v6[8]);
      }

      else
      {
        v11 = *(v6 + 7);
        *(v10 + 56) = v6[9];
        *(v10 + 40) = v11;
      }

      *(a4 + v7 + 64) = *(v6 + 5);
      v6 = *v6;
      v7 += 80;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_259199080(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_7()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

uint64_t std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void CLMicroLocationLoiManager::CLMicroLocationLoiManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_286A5D6B0;
  *(a1 + 8) = &unk_286A5D708;
  CLMicroLocationStateMachine::StateMachineBase::StateMachineBase((a1 + 16));
  *a1 = &unk_286A5D500;
  *(a1 + 8) = &unk_286A5D5A8;
  *(a1 + 16) = &unk_286A5D618;
  *(a1 + 72) = &unk_286A5D778;
  *(a1 + 80) = &unk_286A5D7F0;
  *(a1 + 88) = &unk_286A5D848;
  *(a1 + 96) = &unk_286A5D8A0;
  *(a1 + 104) = &unk_286A5D8F8;
  *(a1 + 112) = &unk_286A5D950;
  *(a1 + 120) = &unk_286A5D9A8;
  *(a1 + 128) = &unk_286A5DA00;
  *(a1 + 136) = &unk_286A5DA58;
  *(a1 + 144) = &unk_286A5DA98;
  *(a1 + 152) = &unk_286A5DAD8;
  *(a1 + 160) = &unk_286A5DB18;
  *(a1 + 168) = &unk_286A5DB70;
  *(a1 + 176) = &unk_286A5DBB0;
  *(a1 + 184) = &unk_286A5DBF0;
  *(a1 + 192) = &unk_286A5DC30;
  *(a1 + 200) = &unk_286A5DC80;
  *(a1 + 208) = &unk_286A5DCC0;
  *(a1 + 216) = &unk_286A5DD00;
  *(a1 + 224) = &unk_286A5DD58;
  *(a1 + 232) = &unk_286A5DDB0;
  *(a1 + 240) = &unk_286A5DE08;
  *(a1 + 248) = &unk_286A5DE60;
  *(a1 + 256) = &unk_286A5DEB8;
  *(a1 + 264) = &unk_286A5DEF8;
  *(a1 + 272) = &unk_286A5DF38;
  *(a1 + 280) = &unk_286A5DF78;
  *(a1 + 288) = &unk_286A5DFD0;
  *(a1 + 296) = &unk_286A5E028;
  *(a1 + 304) = &unk_286A5E080;
  *(a1 + 312) = &unk_286A5E0D8;
  *(a1 + 320) = &unk_286A5E130;
  *(a1 + 328) = a3;
  *(a1 + 344) = 0;
  *(a1 + 352) = a2;
  *(a1 + 360) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 336) = a4;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 508) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState(a1);
}

void sub_259199794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ULHomeSlamModel *a10, ULHomeSlamModel *a11, ULHomeSlamModel *a12, ULHomeSlamModel *a13, ULHomeSlamModel *a14, ULHomeSlamModel *a15, ULHomeSlamModel *a16, ULHomeSlamModel *a17, ULHomeSlamModel *a18, ULHomeSlamModel *a19, ULHomeSlamModel *a20, ULHomeSlamModel *a21, ULHomeSlamModel *a22, ULHomeSlamModel *a23, ULHomeSlamModel *a24, ULHomeSlamModel *a25, ULHomeSlamModel *a26, ULHomeSlamModel *a27, ULHomeSlamModel *a28, ULHomeSlamModel *a29, ULHomeSlamModel *a30)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  v40 = *(v32 + 464);
  if (v40)
  {
    *(v32 + 472) = v40;
    operator delete(v40);
  }

  if (*(v32 + 415) < 0)
  {
    operator delete(*v31);
  }

  ULHomeSlamModel::getTrajectoryPointCloud(v37);
  ULHomeSlamModel::getTrajectoryPointCloud(v36);
  ULHomeSlamModel::getTrajectoryPointCloud(v35);
  ULHomeSlamModel::getTrajectoryPointCloud(v34);
  ULHomeSlamModel::getTrajectoryPointCloud(v33);
  ULHomeSlamModel::getTrajectoryPointCloud(a10);
  ULHomeSlamModel::getTrajectoryPointCloud(a11);
  ULHomeSlamModel::getTrajectoryPointCloud(a12);
  ULHomeSlamModel::getTrajectoryPointCloud(a13);
  ULHomeSlamModel::getTrajectoryPointCloud(a14);
  ULHomeSlamModel::getTrajectoryPointCloud(a15);
  ULHomeSlamModel::getTrajectoryPointCloud(a16);
  ULHomeSlamModel::getTrajectoryPointCloud(a17);
  ULHomeSlamModel::getTrajectoryPointCloud(a18);
  ULHomeSlamModel::getTrajectoryPointCloud(a19);
  ULHomeSlamModel::getTrajectoryPointCloud(a20);
  ULHomeSlamModel::getTrajectoryPointCloud(a21);
  ULHomeSlamModel::getTrajectoryPointCloud(a22);
  ULHomeSlamModel::getTrajectoryPointCloud(a23);
  ULHomeSlamModel::getTrajectoryPointCloud(a24);
  ULHomeSlamModel::getTrajectoryPointCloud(a25);
  ULHomeSlamModel::getTrajectoryPointCloud(a26);
  ULHomeSlamModel::getTrajectoryPointCloud(a27);
  ULHomeSlamModel::getTrajectoryPointCloud(a28);
  ULHomeSlamModel::getTrajectoryPointCloud(a29);
  ULHomeSlamModel::getTrajectoryPointCloud(a30);
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 160));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 152));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 144));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 136));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 128));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 120));
  CLMicroLocationStateMachine::StateMachineBase::~StateMachineBase(v30);
  _Unwind_Resume(a1);
}

void *CLMicroLocationLoiManager::VisitEntry@<X0>(CLMicroLocationLoiManager *this@<X0>, id *a2@<X1>, std::string *a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v21.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(v21.__r_.__value_.__r.__words[1]) = 2082;
    *(&v21.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager: handleVisitEntry}", &v21, 0x12u);
  }

  [a2[4] coordinate];
  v8 = v7;
  [a2[4] coordinate];
  if (CLMicroLocationLoiManager::refreshRoutineStateAtLocation(this, v8, v9))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "LOI Manager, requested LOI for current visit location", &v21, 2u);
    }

    v11 = *(this + 3);
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *(v11 + 8), *(v11 + 16));
    }

    else
    {
      v12 = *(v11 + 8);
      v21.__r_.__value_.__r.__words[2] = *(v11 + 24);
      *&v21.__r_.__value_.__l.__data_ = v12;
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v21.__r_.__value_.__l.__size_ != 17)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
        goto LABEL_46;
      }

      v20 = *v21.__r_.__value_.__l.__data_ != 0x20656D6F48206E49 || *(v21.__r_.__value_.__r.__words[0] + 8) != 0x7461745320494F4CLL || *(v21.__r_.__value_.__r.__words[0] + 16) != 101;
      operator delete(v21.__r_.__value_.__l.__data_);
      if (v20)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) != 17)
      {
        goto LABEL_46;
      }

      v16 = v21.__r_.__value_.__r.__words[0] == 0x20656D6F48206E49 && v21.__r_.__value_.__l.__size_ == 0x7461745320494F4CLL;
      if (!v16 || v21.__r_.__value_.__s.__data_[16] != 101)
      {
        goto LABEL_46;
      }
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 1);
LABEL_46:
    result = std::string::basic_string[abi:ne200100]<0>(&v21, "In the process of entering Home LOI");
    goto LABEL_47;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v13 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v21.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(v21.__r_.__value_.__r.__words[1]) = 2082;
    *(&v21.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Failed To request LOI for current visit location}", &v21, 0x12u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v21.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(v21.__r_.__value_.__r.__words[1]) = 2082;
    *(&v21.__r_.__value_.__r.__words[1] + 2) = "";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Failed To request LOI for current visit location", "{msg%{public}.0s:LOI Manager, Failed To request LOI for current visit location}", &v21, 0x12u);
  }

  CLMicroLocationLoiManager::resetLoiVariables(this);
  result = std::string::basic_string[abi:ne200100]<0>(&v21, "Not in Active Location State");
LABEL_47:
  *a3 = v21;
  a3[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

double CLMicroLocationLoiManager::CustomLoiVisitEntry@<D0>(CLMicroLocationLoiManager *this@<X0>, uuid *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2 + 2;
  if (CLMicroLocationLoiManager::isValidGeofence(this, a2[2]))
  {
    CLMicroLocationLoiManager::handleCustomLoiVisitEntry(buf, this, a2[2]);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v6, &__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v9))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v6, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_p;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring", "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_GenericFailure.isa, &cfstr_InvalidGeofenc.isa);
    v11 = *(this + 3);
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v11 + 8), *(v11 + 16));
    }

    else
    {
      v12 = *(v11 + 8);
      *&buf[16] = *(v11 + 24);
      *buf = v12;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::RefreshLocationOnInterval@<D0>(CLMicroLocationLoiManager *this@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(this + 496) == 1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v9.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v9.__r_.__value_.__r.__words[1]) = 2082;
      *(&v9.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, refreshing location on XPC trigger}", &v9, 0x12u);
    }

    *(this + 126) = 5;
    *(this + 508) = 1;
    CLMicroLocationLoiManager::refreshRoutineStateAtLocation(this, *(this + 45), *(this + 46));
    std::string::basic_string[abi:ne200100]<0>(&v9, "In the process of entering Home LOI");
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v9.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v9.__r_.__value_.__r.__words[1]) = 2082;
      *(&v9.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:refreshRoutineStateAtLastLocation, won't run, last location not set}", &v9, 0x12u);
    }

    v6 = *(this + 3);
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      v9.__r_.__value_.__r.__words[2] = *(v6 + 24);
      *&v9.__r_.__value_.__l.__data_ = v7;
    }
  }

  result = *&v9.__r_.__value_.__l.__data_;
  *a2 = v9;
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

double CLMicroLocationLoiManager::FetchPlaceInference@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFetchPlaceInferenceForReason *a2@<X1>, std::string *a3@<X8>)
{
  *(this + 126) = *(a2 + 8);
  *(this + 508) = 1;
  if (CLMicroLocationLoiManager::fetchPlaceInference(this))
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "In the process of entering Home LOI");
    result = *&v8.__r_.__value_.__l.__data_;
    *a3 = v8;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    if (*(this + 508) == 1)
    {
      *(this + 508) = 0;
    }

    v6 = *(this + 3);
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      v8.__r_.__value_.__r.__words[2] = *(v6 + 24);
      *&v8.__r_.__value_.__l.__data_ = v7;
    }

    result = *&v8.__r_.__value_.__l.__data_;
    *a3 = v8;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return result;
}

double CLMicroLocationLoiManager::VisitExit@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerLoiVisitExitEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = p_p;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager:, Handling Event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  CLMicroLocationLoiManager::exitCurrentLoi(this, 2);
  std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::EnableCustomLoiWhileInHomeLoi@<D0>(id *this@<X0>, uuid *a2@<X1>, uint64_t a3@<X8>)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "#LOI Manager, In Home LOI, exit it before creating custom LOI process", &v8, 2u);
  }

  CLMicroLocationLoiManager::exitCurrentLoi(this, 9);
  CLMicroLocationLoiManager::handleEnableCustomLoi(&v8, this, a2[2]);
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInHomeLoi@<D0>(CLMicroLocationLoiManager *this@<X0>, uuid *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2 + 2;
  if (CLMicroLocationLoiManager::isValidGeofence(this, a2[2]))
  {
    CLMicroLocationLoiManager::exitCurrentLoi(this, 10);
    CLMicroLocationLoiManager::handleCustomLoiVisitEntry(buf, this, a2[2]);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v6, &__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v9))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v6, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_p;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring", "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_GenericFailure.isa, &cfstr_InvalidGeofenc.isa);
    v11 = *(this + 3);
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v11 + 8), *(v11 + 16));
    }

    else
    {
      v12 = *(v11 + 8);
      *&buf[16] = *(v11 + 24);
      *buf = v12;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::FetchPlaceInferenceWhileInHomeLoi@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFetchPlaceInferenceForReason *a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(a2 + 8);
  if (v5 != 3)
  {
    if (v5 != 12)
    {
      goto LABEL_8;
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 12);
    v5 = *(a2 + 8);
  }

  *(this + 126) = v5;
  *(this + 508) = 1;
  if (CLMicroLocationLoiManager::fetchPlaceInference(this))
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "In the process of entering Home LOI");
    result = *&v10.__r_.__value_.__l.__data_;
    *a3 = v10;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
    return result;
  }

  if (*(this + 508) == 1)
  {
    *(this + 508) = 0;
  }

LABEL_8:
  v8 = *(this + 3);
  if (*(v8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(v8 + 8), *(v8 + 16));
  }

  else
  {
    v9 = *(v8 + 8);
    v10.__r_.__value_.__r.__words[2] = *(v8 + 24);
    *&v10.__r_.__value_.__l.__data_ = v9;
  }

  result = *&v10.__r_.__value_.__l.__data_;
  *a3 = v10;
  a3[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

double CLMicroLocationLoiManager::CustomLoiVisitExit@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerGeofenceExitEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = *(a2 + 2);
  if ((CLMicroLocationLoiManager::isValidGeofence(this, v21) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v12;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
      v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v14;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring", "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_GenericFailure.isa, &cfstr_InvalidGeofenc_0.isa);
    v10 = *(this + 3);
    if (*(v10 + 31) < 0)
    {
      goto LABEL_51;
    }

LABEL_41:
    v15 = *(v10 + 8);
    *&buf[16] = *(v10 + 24);
    *buf = v15;
    goto LABEL_52;
  }

  if (*(this + 52) != *v21.data || *(this + 53) != *&v21.data[8])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, got geofence exit for an LOI which is not the currently the active LOI, this may happen if we jumped from one geofence to another and the entry for the new geofence arrived first, regionID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v8))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_p;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, got geofence exit for an LOI which is not the currently the active LOI, this may happen if we jumped from one geofence to another and the entry for the new geofence arrived first", "{msg%{public}.0s:#LOI Manager, got geofence exit for an LOI which is not the currently the active LOI, this may happen if we jumped from one geofence to another and the entry for the new geofence arrived first, regionID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v10 = *(this + 3);
    if (*(v10 + 31) < 0)
    {
LABEL_51:
      std::string::__init_copy_ctor_external(buf, *(v10 + 8), *(v10 + 16));
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v16 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
    v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v17;
    _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got geofence exit for active LOI, regionID:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  CLMicroLocationLoiManager::exitCurrentLoi(this, 11);
  std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
LABEL_52:
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInCustomLoi@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerGeofenceEntryEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = *(a2 + 2);
  if ((CLMicroLocationLoiManager::isValidGeofence(this, v21) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v6;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v7))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v8;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring", "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_GenericFailure.isa, &cfstr_InvalidGeofenc.isa);
  }

  if (*(this + 52) == *v21.data && *(this + 53) == *&v21.data[8])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v13;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, got geofence entry for the current active LOI which shouldn't happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
      v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, got geofence entry for the current active LOI which shouldn't happen... ignoring", "{msg%{public}.0s:#LOI Manager, got geofence entry for the current active LOI which shouldn't happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v21, &__p);
      v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v11;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got geofence entry for different valid LOI, entering it, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 11);
    CLMicroLocationLoiManager::enterCustomLoi(this, *v21.data, *&v21.data[8], 10);
  }

  v16 = *(this + 3);
  if (*(v16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(buf, *(v16 + 8), *(v16 + 16));
  }

  else
  {
    v17 = *(v16 + 8);
    *&buf[16] = *(v16 + 24);
    *buf = v17;
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::EnableCustomLoiWhileInCustomLoi@<D0>(uuid *this@<X0>, uuid *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  CLMicroLocationLoiManager::handleDisableCustomLoiForAllServices(this, this[26]);
  if (CLMicroLocationLoiManager::noMoreServicesMonitoringThisLoi(this, this[26]))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 68289026;
      *&v8[8] = 2082;
      *&v8[10] = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, No more services interested in this active LOI, exiting}", v8, 0x12u);
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 9);
  }

  CLMicroLocationLoiManager::handleEnableCustomLoi(v8, this, a2[2]);
  result = *v8;
  *a3 = *v8;
  *(a3 + 16) = *&v8[16];
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::CustomLoiDisableWhileInCustomLoi@<D0>(id *this@<X0>, uuid *a2@<X1>, std::string *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  CLMicroLocationLoiManager::handleDisableCustomLoi(&__p, this, a2[2], a2[3]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = this[52] == *a2[2].data && this[53] == *&a2[2].data[8];
  if (v6 && CLMicroLocationLoiManager::noMoreServicesMonitoringThisLoi(this, a2[2]))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      buf.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, Since we are in the LOI exit LOI}", &buf, 0x12u);
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 9);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Not in Active Location State");
  }

  else
  {
    v8 = this[3];
    if (v8[31] < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *(v8 + 1), *(v8 + 2));
    }

    else
    {
      v9 = *(v8 + 8);
      buf.__r_.__value_.__r.__words[2] = *(v8 + 3);
      *&buf.__r_.__value_.__l.__data_ = v9;
    }
  }

  result = *&buf.__r_.__value_.__l.__data_;
  *a3 = buf;
  a3[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

double CLMicroLocationLoiManager::LoiFetchFailure@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFailedToFetchLoiForLocationEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(this + 512))
  {
    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_HomeLoiEntryFa.isa, &cfstr_LoiFetchFailur.isa);
    CLMicroLocationLoiManager::resetLoiVariables(this);
    std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 3);
      if (*(v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v8 = *(v7 + 8);
        v24.__r_.__value_.__r.__words[2] = *(v7 + 24);
        *&v24.__r_.__value_.__l.__data_ = v8;
      }

      v9 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      v10 = v24.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v11 = &v24;
      if (v9 < 0)
      {
        v11 = v10;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v11;
      v26 = 2081;
      v27 = p_p;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = *(this + 3);
      if (*(v14 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(v14 + 8), *(v14 + 16));
      }

      else
      {
        v15 = *(v14 + 8);
        v24.__r_.__value_.__r.__words[2] = *(v14 + 24);
        *&v24.__r_.__value_.__l.__data_ = v15;
      }

      v16 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      v17 = v24.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v18 = &v24;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v18;
      v26 = 2081;
      v27 = v19;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    v20 = *(this + 3);
    if (*(v20 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v20 + 8), *(v20 + 16));
    }

    else
    {
      v21 = *(v20 + 8);
      *&buf[16] = *(v20 + 24);
      *buf = v21;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  return result;
}

void CLMicroLocationLoiManager::SuccessfullyFetchedPlaceInference(CLMicroLocationLoiManager *this@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  if ((*(this + 512) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v27 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(this + 3);
      if (*(v28 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *(v28 + 8), *(v28 + 16));
      }

      else
      {
        v29 = *(v28 + 8);
        __str.__r_.__value_.__r.__words[2] = *(v28 + 24);
        *&__str.__r_.__value_.__l.__data_ = v29;
      }

      v45 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      v46 = __str.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      p_str = &__str;
      if (v45 < 0)
      {
        p_str = v46;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_str;
      v62 = 2081;
      v63 = p_p;
      _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v49 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v49))
    {
      v50 = *(this + 3);
      if (*(v50 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *(v50 + 8), *(v50 + 16));
      }

      else
      {
        v51 = *(v50 + 8);
        __str.__r_.__value_.__r.__words[2] = *(v50 + 24);
        *&__str.__r_.__value_.__l.__data_ = v51;
      }

      v52 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      v53 = __str.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v54 = &__str;
      if (v52 < 0)
      {
        v54 = v53;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = &__p;
      }

      else
      {
        v55 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v54;
      v62 = 2081;
      v63 = v55;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v56 = *(this + 3);
    if (*(v56 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v56 + 8), *(v56 + 16));
    }

    else
    {
      v57 = *(v56 + 8);
      *&buf[16] = *(v56 + 24);
      *buf = v57;
    }

    goto LABEL_94;
  }

  v6 = [a2[4] _loiIdentifier];

  if (!v6)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v30 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, received nil LOI Identifier from place inference, possibly because there is no active user on macOS, we will start leeching and wait for next location update}", buf, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v31 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, received nil LOI Identifier from place inference, possibly because there is no active user on macOS, we will start leeching and wait for next location update", "{msg%{public}.0s:LOI Manager, received nil LOI Identifier from place inference, possibly because there is no active user on macOS, we will start leeching and wait for next location update}", buf, 0x12u);
    }

    CLMicroLocationLoiManager::resetLoiVariables(this);
    [*(this + 43) startLeechingLocationUpdates];
    std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
LABEL_94:
    *a3 = *buf;
    *(a3 + 16) = *&buf[16];
    *(a3 + 24) = 1;
    return;
  }

  v7 = [a2[4] referenceLocation];
  [v7 coordinate];
  v9 = v8;
  v10 = [a2[4] referenceLocation];
  [v10 coordinate];
  CLMicroLocationLoiManager::initializeStateAtLocation(this, v9, v11);

  CLMicroLocationLoiManager::convertPlaceInferenceUserPlaceTypeToString([a2[4] userType], buf);
  v12 = (this + 392);
  if (*(this + 415) < 0)
  {
    operator delete(*v12);
  }

  *v12 = *buf;
  *(this + 51) = *&buf[16];
  v13 = [a2[4] _loiIdentifier];
  v14 = [v13 UUIDString];
  v15 = v14;
  v16 = [v14 UTF8String];
  v17 = strlen(v16);
  *(this + 54) = boost::uuids::string_generator::operator()<char const*>(buf, v16, &v16[v17]);
  *(this + 55) = v18;

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [a2[4] _loiIdentifier];
    v21 = [v20 UUIDString];
    v22 = v21;
    v23 = [v21 UTF8String];
    v24 = (this + 392);
    if (*(this + 415) < 0)
    {
      v24 = *v12;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v23;
    v62 = 2081;
    v63 = v24;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, Retrieved place infernce, LOI ID:%{private, location:escape_only}s, LOI TYPE:%{private, location:escape_only}s}", buf, 0x26u);
  }

  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(&__str);
  v25 = *(this + 415);
  if ((*(this + 415) & 0x80000000) == 0)
  {
    v26 = (this + 392);
    if (v25 != 4)
    {
      goto LABEL_31;
    }

LABEL_30:
    if (*v26 == 1701670760)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (*(this + 50) == 4)
  {
    v26 = *v12;
    goto LABEL_30;
  }

LABEL_31:
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=((this + 392), &__str);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v33 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v34 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v34;
      _os_log_impl(&dword_258FE9000, v33, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, forcing LOI type, LOI Override:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v25 = *(this + 415);
  }

LABEL_41:
  if ((v25 & 0x80) != 0)
  {
    if (*(this + 50) != 4)
    {
LABEL_47:
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v35 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v36 = "LOI Manager, Not a Home LOI";
      v37 = v35;
      v38 = OS_LOG_TYPE_INFO;
LABEL_51:
      _os_log_impl(&dword_258FE9000, v37, v38, v36, buf, 2u);
LABEL_52:
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v39 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v39, OS_LOG_TYPE_INFO, "LOI Manager, Returning to Inactive Location State and starting leeching", buf, 2u);
      }

      CLMicroLocationLoiManager::resetLoiVariables(this);
      [*(this + 43) startLeechingLocationUpdates];
      std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
      goto LABEL_57;
    }

    v12 = *v12;
  }

  else if (v25 != 4)
  {
    goto LABEL_47;
  }

  if (*v12 != 1701670760)
  {
    goto LABEL_47;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v40 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v40, OS_LOG_TYPE_INFO, "LOI Manager, fetching related LOIs for LOI", buf, 2u);
  }

  v41 = [a2[4] _loiIdentifier];
  LoiIdsForLoi = CLMicroLocationLoiManager::fetchLoiIdsForLoi(this, v41);

  if (!LoiIdsForLoi)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v58 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v36 = "LOI Manager, Failed To request related LOIs";
    v37 = v58;
    v38 = OS_LOG_TYPE_ERROR;
    goto LABEL_51;
  }

  *(this + 256) = 256;
  v43 = *(this + 3);
  if (*(v43 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(buf, *(v43 + 8), *(v43 + 16));
  }

  else
  {
    v44 = *(v43 + 8);
    *&buf[16] = *(v43 + 24);
    *buf = v44;
  }

LABEL_57:
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}
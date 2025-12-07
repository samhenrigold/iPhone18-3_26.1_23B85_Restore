void CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(double **result, uint64_t *a2, __n128 a3, __n128 a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4 - *result == v7 - *a2)
  {
    v8 = a3.n128_f64[0];
    if (v5 != v4)
    {
      v9 = v5 + 1;
      do
      {
        if (v9 == v4)
        {
          goto LABEL_10;
        }

        v11 = *(v9 - 1);
        v10 = *v9++;
      }

      while (v10 <= v11);
      CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(result);
      do
      {
        if (v6 == v7 || *v5 < v8)
        {
          break;
        }

        ++v5;
        v6 += 8;
LABEL_10:
        ;
      }

      while (v5 != v4);
    }
  }

  else
  {
    CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(result);
    ULSettings::get<ULSettings::BlueAtlasModelMinSources>();
  }
}

uint64_t ULSettings::get<ULSettings::BlueAtlasModelMinSources>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelMinSources"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A724B0 intValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::optional<CLMicroLocationModel::BlueAtlasData>::operator=[abi:ne200100]<CLMicroLocationModel::BlueAtlasData,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 1)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1, a2);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
    *(a1 + 24) = v4;
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
    v6 = *(a2 + 24);
    v7 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v7;
    *(a1 + 24) = v6;
    *(a1 + 64) = 1;
  }

  return a1;
}

void CLMicroLocationBlueAtlasAlgorithms::validateBlueAtlasModelQuality(CLMicroLocationBlueAtlasAlgorithms *this, CLMicroLocationModel *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  __p = 0;
  v64 = 0;
  v65 = 0;
  if (*(this + 136) == 1 && *(this + 120) == 1)
  {
    v3 = *(this + 32);
    v4 = +[ULDefaultsSingleton shared];
    v5 = [v4 defaultsDictionary];

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasStrongAssociatedAccessPointThreshold"];
    v7 = [v5 objectForKey:v6];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v7 floatValue];
    }

    else
    {
      [&unk_286A72F20 floatValue];
    }

    v9 = v8;

    v54 = v3 >= v9;
  }

  else
  {
    v54 = 0;
  }

  v10 = *(this + 37);
  v11 = ULSettings::get<ULSettings::BlueAtlasModelMinRecordings>();
  v12 = 3;
  if (v10 < v11)
  {
    *buf = 3;
    std::vector<int>::push_back[abi:ne200100](&__p, buf);
    if (v54)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  v55 = v12;
  if (*(this + 136))
  {
    v13 = (*(this + 10) - *(this + 9)) >> 3;
  }

  else
  {
    v13 = 0;
  }

  v52 = v13;
  if (v13 < ULSettings::get<ULSettings::BlueAtlasModelMinSources>())
  {
    *buf = 1;
    std::vector<int>::push_back[abi:ne200100](&__p, buf);
    if (v55 == 3)
    {
      v14 = 2;
    }

    else
    {
      v14 = v55;
    }

    if (!v54)
    {
      v14 = 1;
    }

    v55 = v14;
  }

  v62[0] = 0;
  v62[1] = 0;
  v60 = 0;
  v61 = v62;
  v58 = &v59;
  v59 = 0;
  v15 = *(this + 22);
  for (i = *(this + 23); v15 != i; v15 += 32)
  {
    for (j = *(*v15 + 16); j; j = *j)
    {
      if (*(j + 6) == 1)
      {
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v57, (j + 8));
        if (*(this + 136))
        {
          v17 = *(this + 9);
          v18 = *(this + 10);
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](buf, v57);
          if (v17 != v18)
          {
            while (1)
            {
              if (HIDWORD(v71))
              {
                std::__throw_bad_variant_access[abi:ne200100]();
              }

              v19 = *buf;
              if (v19 == CLMacAddress::toUint64(v17))
              {
                break;
              }

              if (++v17 == v18)
              {
                v17 = v18;
                break;
              }
            }
          }

          v20 = *(this + 10);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v57);
          if (v17 != v20)
          {
            *buf = j + 8;
            v21 = std::__tree<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::__map_value_compare<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::less<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>(&v61, (j + 8), &std::piecewise_construct, buf, &v66);
            ++v21[8];
            v22 = j[7];
            v23 = +[ULDefaultsSingleton shared];
            v24 = [v23 defaultsDictionary];

            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelValidationMinRssi"];
            v26 = [v24 objectForKey:v25];
            if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v27 = [v26 intValue];
            }

            else
            {
              v27 = [&unk_286A724E0 intValue];
            }

            v28 = v27;

            if (v22 > v28)
            {
              std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>(&v58, (j + 8), (j + 8));
            }
          }
        }

        else
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v57);
        }
      }
    }
  }

  v29 = +[ULDefaultsSingleton shared];
  v30 = [v29 defaultsDictionary];

  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelValidationMinAppearanceRate"];
  v32 = [v30 objectForKey:v31];
  if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v32 floatValue];
  }

  else
  {
    [&unk_286A72F00 floatValue];
  }

  v34 = v33;

  v35 = v61;
  if (v61 == v62)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0;
    do
    {
      if ((v34 * *(this + 37)) <= v35[8])
      {
        ++v36;
      }

      v37 = v35[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v35[2];
          v39 = *v38 == v35;
          v35 = v38;
        }

        while (!v39);
      }

      v35 = v38;
    }

    while (v38 != v62);
  }

  v40 = +[ULDefaultsSingleton shared];
  v41 = [v40 defaultsDictionary];

  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelValidationMinNumberOfValidAps"];
  v43 = [v41 objectForKey:v42];
  if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v44 = [v43 intValue];
  }

  else
  {
    v44 = [&unk_286A72480 intValue];
  }

  v45 = v44;

  if (v60 < v45 || v36 < v45)
  {
    *buf = 8;
    std::vector<int>::push_back[abi:ne200100](&__p, buf);
    if (v54)
    {
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }

    if (v55 >= v47)
    {
      v46 = v47;
    }

    else
    {
      v46 = v55;
    }
  }

  else
  {
    v46 = v55;
  }

  v48 = v46;
  CLMicroLocationModel::setQualityIndicator(this, v46);
  CLMicroLocationModel::setCandidateQualityIndicator(this, v48);
  CLMicroLocationModel::setCandidateQualityReasons(this, &__p);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
  }

  v49 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(this + 37);
    v51 = ULSettings::get<ULSettings::BlueAtlasModelMinRecordings>();
    *buf = 68290562;
    *&buf[4] = 0;
    v68 = 2082;
    v69 = "";
    v70 = 2050;
    v71 = v50;
    v72 = 1026;
    v73 = v51;
    v74 = 2050;
    v75 = v53;
    v76 = 2050;
    v77 = v60;
    v78 = 2050;
    v79 = v36;
    v80 = 2050;
    v81 = v48;
    _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:validateBlueAtlasModelQuality, Num input fingerprints:%{public}lu, Minimal num fingerprints:%{public}d, Num WiFi APs:%{public}lu, Num APs with valid RSSI:%{public}lu, Num APs with valid appearance rate:%{public}lu, Model Quality:%{public}lu}", buf, 0x4Au);
  }

  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v58, v59);
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v61, v62[0]);
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }
}

void sub_25916E278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **std::tuple<std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>::~tuple(void **a1)
{
  v3 = a1 + 3;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t ULSettings::get<ULSettings::BlueAtlasModelMinRecordings>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelMinRecordings"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A72468 intValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<CLMicroLocationFingerprint>::__init_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 5));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>((a1 + 24), *(a2 + 24), *(a2 + 32), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 32) - *(a2 + 24)) >> 4));
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_25916E5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<CLMicroLocationFingerprint>::__init_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(uint64_t *result, CLMicroLocationFingerprint *a2, CLMicroLocationFingerprint *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationFingerprint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25916E64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<ULMapLabelDOAndLabelObjectID>>::destroy[abi:ne200100]<ULMapLabelDOAndLabelObjectID,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 208) == 1)
  {
    *(a2 + 200) = -1;
  }

  if (*(a2 + 183) < 0)
  {
    operator delete(*(a2 + 160));
  }

  if (*(a2 + 72) == 1)
  {
    v3 = *(a2 + 48);
    if (v3)
    {
      *(a2 + 56) = v3;
      operator delete(v3);
    }
  }

  if (*(a2 + 40) == 1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      *(a2 + 24) = v4;

      operator delete(v4);
    }
  }
}

void std::vector<ULMapLabelDOAndLabelObjectID>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ULMapLabelDOAndLabelObjectID>>::destroy[abi:ne200100]<ULMapLabelDOAndLabelObjectID,void,0>(a1, i))
  {
    i -= 240;
  }

  *(a1 + 8) = a2;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_120()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_25916E980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_25916EAEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,false>(uint64_t result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = v8[1];
        if (v82 > v83)
        {
          v84 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v84;
          v8[1] = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v89 = v8 + 3;
      v90 = v8[3];
      v91 = v8 + 1;
      v92 = v8[1];
      v93 = v8[5];
      if (v90 <= v92)
      {
        if (v93 > v90)
        {
          v140 = *(v8 + 2);
          v141 = *(v8 + 4);
          *(v8 + 2) = v141;
          *(v8 + 4) = v140;
          v8[3] = v93;
          v8[5] = v90;
          if (v93 > v92)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 2) = v142;
            goto LABEL_188;
          }

LABEL_189:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = v8[4];
          *(v8 + 4) = v94;
          goto LABEL_187;
        }

        *v8 = v8[2];
        *(v8 + 2) = v94;
        v8[1] = v90;
        v8[3] = v92;
        if (v93 > v92)
        {
          v8[2] = v8[4];
          *(v8 + 4) = v94;
          v91 = v8 + 3;
LABEL_187:
          v89 = v8 + 5;
          v90 = v92;
LABEL_188:
          *v91 = v93;
          *v89 = v92;
          goto LABEL_189;
        }
      }

      v151 = *(a2 - 1);
      if (v151 <= v93)
      {
        return result;
      }

      v152 = *(v8 + 4);
      v8[4] = *(a2 - 2);
      *(a2 - 2) = v152;
      v8[5] = v151;
      *(a2 - 1) = v93;
      v137 = v8[5];
      v153 = v8[3];
      if (v137 <= v153)
      {
        return result;
      }

      v154 = *(v8 + 2);
      v155 = *(v8 + 4);
      *(v8 + 2) = v155;
      *(v8 + 4) = v154;
      v8[3] = v137;
      v8[5] = v153;
      v138 = v8[1];
      if (v137 <= v138)
      {
        return result;
      }

      v156 = *v8;
      *v8 = v155;
      *(v8 + 2) = v156;
LABEL_194:
      v8[1] = v137;
      v8[3] = v138;
      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,0>(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 2;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v100 = v99[3];
            v101 = v99[1];
            v99 = v95;
            if (v100 > v101)
            {
              v102 = *v95;
              v103 = v98;
              while (1)
              {
                v104 = (v8 + v103);
                v104[2] = *(v8 + v103);
                v104[3] = *(v8 + v103 + 8);
                if (!v103)
                {
                  break;
                }

                v103 -= 16;
                if (v100 <= *(v104 - 1))
                {
                  v105 = v8 + v103 + 16;
                  goto LABEL_131;
                }
              }

              v105 = v8;
LABEL_131:
              *v105 = v102;
              *(v105 + 8) = v100;
            }

            v95 = v99 + 2;
            v98 += 16;
          }

          while (v99 + 2 != a2);
        }
      }

      else if (!v97)
      {
        v143 = v8 + 3;
        do
        {
          v144 = v7[3];
          v145 = v7[1];
          v7 = v95;
          if (v144 > v145)
          {
            v146 = *v95;
            v147 = v143;
            do
            {
              v148 = v147;
              *(v147 - 1) = *(v147 - 3);
              v149 = *(v147 - 2);
              v147 -= 2;
              *v148 = v149;
            }

            while (v144 > *(v148 - 4));
            *(v147 - 1) = v146;
            *v147 = v144;
          }

          v95 = v7 + 2;
          v143 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v106 = (v9 - 2) >> 1;
      v107 = v106;
      do
      {
        v108 = v107;
        if (v106 >= v107)
        {
          v109 = (2 * v107) | 1;
          v110 = &v8[2 * v109];
          if (2 * v108 + 2 < v9 && v110[1] > v110[3])
          {
            v110 += 2;
            v109 = 2 * v108 + 2;
          }

          v111 = &v8[2 * v108];
          v112 = v110[1];
          v113 = v111[1];
          if (v112 <= v113)
          {
            v114 = *v111;
            do
            {
              v115 = v111;
              v111 = v110;
              *v115 = *v110;
              v115[1] = v112;
              if (v106 < v109)
              {
                break;
              }

              v116 = 2 * v109;
              v109 = (2 * v109) | 1;
              v110 = &v8[2 * v109];
              v117 = v116 + 2;
              if (v117 < v9 && v110[1] > v110[3])
              {
                v110 += 2;
                v109 = v117;
              }

              v112 = v110[1];
            }

            while (v112 <= v113);
            *v111 = v114;
            v111[1] = v113;
          }
        }

        v107 = v108 - 1;
      }

      while (v108);
      while (2)
      {
        v118 = 0;
        v119 = *v8;
        v120 = v8[1];
        v121 = v8;
        do
        {
          v122 = &v121[2 * v118];
          v123 = v122 + 2;
          v124 = (2 * v118) | 1;
          v118 = 2 * v118 + 2;
          if (v118 >= v9)
          {
            v118 = v124;
          }

          else
          {
            v125 = v122[3];
            v126 = v122[5];
            v127 = v122 + 4;
            if (v125 <= v126)
            {
              v118 = v124;
            }

            else
            {
              v123 = v127;
            }
          }

          *v121 = *v123;
          v121[1] = v123[1];
          v121 = v123;
        }

        while (v118 <= ((v9 - 2) >> 1));
        if (v123 != a2 - 2)
        {
          *v123 = *(a2 - 2);
          v123[1] = *(a2 - 1);
          *(a2 - 2) = v119;
          *(a2 - 1) = v120;
          v128 = (v123 - v8 + 16) >> 4;
          v129 = v128 < 2;
          v130 = v128 - 2;
          if (!v129)
          {
            v131 = v130 >> 1;
            v132 = &v8[2 * v131];
            v133 = v132[1];
            v120 = v123[1];
            if (v133 > v120)
            {
              v134 = *v123;
              do
              {
                v135 = v123;
                v123 = v132;
                *v135 = *v132;
                v135[1] = v133;
                if (!v131)
                {
                  break;
                }

                v131 = (v131 - 1) >> 1;
                v132 = &v8[2 * v131];
                v133 = v132[1];
              }

              while (v133 > v120);
              *v123 = v134;
LABEL_164:
              v123[1] = v120;
            }
          }

          a2 -= 2;
          v129 = v9-- <= 2;
          if (v129)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v123 = v119;
      goto LABEL_164;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 > v12)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[1] = v12;
        v10[1] = v13;
        v26 = *(a2 - 1);
        if (v26 > v13)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 > v34)
          {
            v35 = *(v8 + 2);
            v8[2] = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v30 > v28)
        {
          v8[2] = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[3] = v30;
          goto LABEL_39;
        }

        v8[2] = *v27;
        *v27 = v31;
        v8[3] = v28;
        *(v10 - 1) = v29;
        v37 = *(a2 - 3);
        if (v37 > v29)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 1) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = v10[3];
      v39 = v8[5];
      v40 = *(a2 - 5);
      if (v38 <= v39)
      {
        if (v40 > v38)
        {
          v42 = *(v10 + 2);
          v10[2] = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[3] = v40;
          *(a2 - 5) = v38;
          v43 = v10[3];
          v44 = v8[5];
          if (v43 > v44)
          {
            v45 = *(v8 + 4);
            v8[4] = v10[2];
            *(v10 + 2) = v45;
            v8[5] = v43;
            v10[3] = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 4);
        if (v40 > v38)
        {
          v8[4] = *(a2 - 6);
          *(a2 - 6) = v41;
          v8[5] = v40;
          goto LABEL_48;
        }

        v8[4] = v10[2];
        *(v10 + 2) = v41;
        v8[5] = v38;
        v10[3] = v39;
        v46 = *(a2 - 5);
        if (v46 > v39)
        {
          v10[2] = *(a2 - 6);
          *(a2 - 6) = v41;
          v10[3] = v46;
LABEL_48:
          *(a2 - 5) = v39;
        }
      }

      v47 = v10[1];
      v48 = *(v10 - 1);
      v49 = v10[3];
      if (v47 <= v48)
      {
        v50 = *v10;
        if (v49 <= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = v10[2];
          *v10 = v51;
          v10[2] = v50;
          v10[1] = v49;
          v10[3] = v47;
          if (v49 <= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 1) = v49;
            v10[1] = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 > v47)
        {
          *v27 = v10[2];
          v10[2] = v50;
          *(v10 - 1) = v49;
          v10[3] = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 1) = v47;
        v10[1] = v48;
        if (v49 > v48)
        {
          v70 = v10[2];
          *v10 = v70;
          v10[2] = v50;
          v10[1] = v49;
          v10[3] = v48;
          v48 = v49;
          v50 = v70;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 1);
      v8[1] = v48;
      *(v10 + 1) = v53;
      goto LABEL_57;
    }

    v15 = v8[1];
    v16 = v10[1];
    if (v15 <= v16)
    {
      if (v11 > v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v22;
        v8[1] = v11;
        *(a2 - 1) = v15;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 > v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 > v15)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v17;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[1] = v15;
    v8[1] = v16;
    v36 = *(a2 - 1);
    if (v36 > v16)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v17;
      v8[1] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v54 = *v8;
      v55 = v8[1];
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v8[v56 + 3];
        v56 += 2;
      }

      while (v57 > v55);
      v58 = &v8[v56];
      v59 = a2;
      if (v56 == 2)
      {
        v62 = a2;
        while (v58 < v62)
        {
          v60 = v62 - 2;
          v63 = *(v62 - 1);
          v62 -= 2;
          if (v63 > v55)
          {
            goto LABEL_70;
          }
        }

        v60 = v62;
      }

      else
      {
        do
        {
          v60 = v59 - 2;
          v61 = *(v59 - 1);
          v59 -= 2;
        }

        while (v61 <= v55);
      }

LABEL_70:
      v8 = v58;
      if (v58 < v60)
      {
        v64 = v60;
        do
        {
          v65 = *v8;
          *v8 = *v64;
          *v64 = v65;
          v66 = *(v8 + 1);
          v8[1] = v64[1];
          *(v64 + 1) = v66;
          do
          {
            v67 = v8[3];
            v8 += 2;
          }

          while (v67 > v55);
          do
          {
            v68 = *(v64 - 1);
            v64 -= 2;
          }

          while (v68 <= v55);
        }

        while (v8 < v64);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v54;
      *(v8 - 1) = v55;
      if (v58 < v60)
      {
        goto LABEL_81;
      }

      v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *>(v7, v8 - 2);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v69)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v69)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,false>(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = v8[1];
      v54 = *v8;
      if (*(v8 - 1) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(a2 - 1))
      {
        v73 = (v8 + 2);
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *(v73 + 8);
          v73 += 16;
        }

        while (v55 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 2;
          v72 = v71[3];
          v71 += 2;
        }

        while (v55 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 2;
          v77 = *(v76 - 1);
          v76 -= 2;
        }

        while (v55 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 1);
        v8[1] = v75[1];
        *(v75 + 1) = v79;
        do
        {
          v80 = v8[3];
          v8 += 2;
        }

        while (v55 <= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 2;
        }

        while (v55 > v81);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v54;
      *(v8 - 1) = v55;
    }
  }

  v85 = v8[3];
  v86 = v8[1];
  v87 = *(a2 - 1);
  if (v85 <= v86)
  {
    if (v87 <= v85)
    {
      return result;
    }

    v136 = *(v8 + 2);
    v8[2] = *(a2 - 2);
    *(a2 - 2) = v136;
    v8[3] = v87;
    *(a2 - 1) = v85;
    v137 = v8[3];
    v138 = v8[1];
    if (v137 <= v138)
    {
      return result;
    }

    v139 = *v8;
    *v8 = v8[2];
    v8[2] = v139;
    goto LABEL_194;
  }

  v88 = *v8;
  if (v87 <= v85)
  {
    *v8 = v8[2];
    v8[2] = v88;
    v8[1] = v85;
    v8[3] = v86;
    v150 = *(a2 - 1);
    if (v150 <= v86)
    {
      return result;
    }

    v8[2] = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[3] = v150;
  }

  else
  {
    *v8 = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[1] = v87;
  }

  *(a2 - 1) = v86;
  return result;
}

double *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,0>(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *>(double *a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 > v7)
      {
        v9 = *a1;
        if (v8 <= v6)
        {
          *a1 = a1[2];
          *(a1 + 2) = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 <= v7)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 <= v6)
      {
        return 1;
      }

      v22 = *(a1 + 2);
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 <= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 <= v19)
    {
      if (v20 <= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 2);
      v30 = *(a1 + 4);
      *(a1 + 2) = v30;
      *(a1 + 4) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 <= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      *(a1 + 2) = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 <= v17)
      {
        *a1 = a1[2];
        *(a1 + 2) = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 <= v19)
        {
          goto LABEL_50;
        }

        a1[2] = a1[4];
        *(a1 + 4) = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        *(a1 + 4) = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 <= v20)
    {
      return 1;
    }

    v43 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 <= v44)
    {
      return 1;
    }

    v45 = *(a1 + 2);
    v46 = *(a1 + 4);
    *(a1 + 2) = v46;
    *(a1 + 4) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 <= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    *(a1 + 2) = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 > v12)
  {
    v15 = *a1;
    if (v14 <= v10)
    {
      *a1 = a1[2];
      *(a1 + 2) = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 <= v12)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      *(a1 + 4) = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      *(a1 + 4) = v15;
    }

    goto LABEL_33;
  }

  if (v14 > v10)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    *(a1 + 2) = v27;
    *(a1 + 4) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 > v12)
    {
      v28 = *a1;
      *a1 = v27;
      *(a1 + 2) = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 > v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = (a1 + v39);
        v40[6] = *(a1 + v39 + 32);
        v40[7] = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 <= v40[3])
        {
          v41 = (a1 + v39 + 48);
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      v41[1] = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN5boost5uuids4uuidE20CLMicroLocationModelNS_6vectorI28ULMapLabelDOAndLabelObjectIDNS_9allocatorIS8_EEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS5_S6_SB_EJEJEJRS5_RS6_RSB_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(uint64_t a1, _OWORD *a2, CLMicroLocationModel *a3, uint64_t a4)
{
  *a1 = *a2;
  CLMicroLocationModel::CLMicroLocationModel((a1 + 16), a3);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>((a1 + 320), *a4, *(a4 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a4 + 8) - *a4) >> 4));
  return a1;
}

void CLMicroLocationModel::CLMicroLocationModel(CLMicroLocationModel *this, const CLMicroLocationModel *a2)
{
  *this = *a2;
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(this + 16, a2 + 16);
  *(this + 56) = *(a2 + 56);
  std::__optional_copy_base<CLMicroLocationModel::BlueAtlasData,false>::__optional_copy_base[abi:ne200100](this + 72, a2 + 72);
  v4 = *(a2 + 9);
  v5 = *(a2 + 156);
  *(this + 22) = 0;
  *(this + 156) = v5;
  *(this + 9) = v4;
  *(this + 23) = 0;
  *(this + 24) = 0;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>(this + 22, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 5);
  std::unordered_map<boost::uuids::uuid,std::vector<boost::uuids::uuid>>::unordered_map(this + 200, a2 + 200);
  v6 = *(a2 + 30);
  *(this + 31) = 0;
  *(this + 30) = v6;
  *(this + 32) = 0;
  *(this + 33) = 0;
  std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum*,CLMicroLocationProto::ServiceQualityReasonEnum*>(this + 31, *(a2 + 31), *(a2 + 32), (*(a2 + 32) - *(a2 + 31)) >> 2);
  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external((this + 272), *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v7 = *(a2 + 17);
    *(this + 36) = *(a2 + 36);
    *(this + 17) = v7;
  }

  *(this + 296) = *(a2 + 296);
}

void sub_25916FDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 256) = v6;
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table((v3 + 200));
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 136) == 1)
  {
    v7 = *(v3 + 72);
    if (v7)
    {
      *(v3 + 80) = v7;
      operator delete(v7);
    }
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_copy_base<CLMicroLocationModel::BlueAtlasData,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<CLMacAddress>::__init_with_size[abi:ne200100]<CLMacAddress*,CLMacAddress*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
    *(a1 + 24) = v4;
    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_25916FEAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 64) == 1)
  {
    std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25916FF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = *(a2 + 8);
      *v4 = *a2;
      *(v4 + 8) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      *(v4 + 16) = *(a2 + 16);
      a2 += 32;
      v4 += 32;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 32;
  }
}

uint64_t std::unordered_map<boost::uuids::uuid,std::vector<boost::uuids::uuid>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,std::vector<boost::uuids::uuid>> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,std::vector<boost::uuids::uuid>> const&>(void *a1, void *a2)
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
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__construct_node_hash<std::pair<boost::uuids::uuid const,std::vector<boost::uuids::uuid>> const&>();
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

void sub_25917039C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259170454(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum*,CLMicroLocationProto::ServiceQualityReasonEnum*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259170534(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<boost::uuids::uuid,CLMicroLocationModel,std::vector<ULMapLabelDOAndLabelObjectID>>::~tuple(uint64_t a1)
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
  return a1;
}

uint64_t std::optional<std::tuple<std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>>::~optional(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 24);
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a1;
    std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

uint64_t std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDOAndLabelObjectID>(uint64_t a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>>(a1, v6);
  }

  v15 = 0;
  v16 = 240 * v2;
  v17 = 240 * v2;
  v7 = ULMapLabelDO::ULMapLabelDO(240 * v2, a2);
  v8 = *(a2 + 232);
  *(a2 + 232) = 0;
  *(v7 + 232) = v8;
  *&v17 = v17 + 240;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(&v15);
  return v14;
}

void sub_259170764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(uint64_t a1, ULMapLabelDO *a2, ULMapLabelDO *a3, ULMapLabelDO *this)
{
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = this;
    v6 = a2;
    v8 = a2;
    do
    {
      ULMapLabelDO::ULMapLabelDO(v4, v8);
      *&v4[2].var2.var1 = *&v8[2].var2.var1;
      v8 += 3;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<ULMapLabelDOAndLabelObjectID>>::destroy[abi:ne200100]<ULMapLabelDOAndLabelObjectID,void,0>(a1, v6);
      v6 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULMapLabelDOAndLabelObjectID>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 240;
    std::allocator_traits<std::allocator<ULMapLabelDOAndLabelObjectID>>::destroy[abi:ne200100]<ULMapLabelDOAndLabelObjectID,void,0>(v5, v4 - 240);
  }
}

void ULMapLabelDOAndLabelObjectID::~ULMapLabelDOAndLabelObjectID(id *this)
{
  if (*(this + 208) == 1)
  {
    *(this + 50) = -1;
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 72) == 1)
  {
    v2 = this[6];
    if (v2)
    {
      this[7] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 40) == 1)
  {
    v3 = this[2];
    if (v3)
    {
      this[3] = v3;
      operator delete(v3);
    }
  }
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorI26CLMicroLocationFingerprintNS_9allocatorIS4_EEEENS3_I28ULMapLabelDOAndLabelObjectIDNS5_IS8_EEEENS_8optionalI25AssociatedAccessPointInfoEEmEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS7_SA_SD_mEJEJEJRS7_RSA_RSD_RmEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSL_IJDpT2_EEEDpOT3_(uint64_t a1, CLMicroLocationFingerprint **a2, uint64_t a3, __int128 *a4, void *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<CLMicroLocationFingerprint>::__init_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>((a1 + 24), *a3, *(a3 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a3 + 8) - *a3) >> 4));
  v9 = *a4;
  *(a1 + 64) = *(a4 + 2);
  *(a1 + 48) = v9;
  *(a1 + 72) = *a5;
  return a1;
}

void sub_259170A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::__map_value_compare<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::less<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__find_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::__map_value_compare<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::less<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>();
  }

  return v5;
}

void CLMicroLocationClientUtils::getClientIdAndServiceUuid(const void **a1)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 2);
  if (v8 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, "--");
  operator new();
}

void sub_259170DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationClientUtils::getClientIdFromClientIdAndServiceUuid(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  v4 = __p;
  std::string::basic_string[abi:ne200100]<0>(__p, "--");
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if ((v17 & 0x80u) == 0)
  {
    v7 = v17;
  }

  else
  {
    v4 = __p[0];
    v7 = __p[1];
  }

  if (v7)
  {
    if (size >= v7)
    {
      v9 = v6 + size;
      v10 = *v4;
      v11 = v6;
      do
      {
        v12 = size - v7;
        if (v12 == -1)
        {
          break;
        }

        v13 = memchr(v11, v10, v12 + 1);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if (!memcmp(v13, v4, v7))
        {
          if (v14 != v9)
          {
            v8 = v14 - v6;
            if (v14 - v6 != -1)
            {
              goto LABEL_13;
            }
          }

          break;
        }

        v11 = (v14 + 1);
        size = v9 - (v14 + 1);
      }

      while (size >= v7);
    }

    std::string::operator=(a2, a1);
  }

  else
  {
    v8 = 0;
LABEL_13:
    std::string::basic_string(&v15, a1, 0, v8, &v18);
    *a2 = v15;
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259170F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationClusterRFDistance::evaluateRFClusterDistances(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULFingerprintDistanceFunctionTypeForLearning"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 unsignedIntValue];
  }

  else
  {
    v10 = [&unk_286A724F8 unsignedIntValue];
  }

  v11 = v10;

  v12 = ULSettings::getFingerprintDistanceFunctionParamsForType(v11);
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(&v30, a2 + 16);
  v33 = *(a2 + 56);
  v34 = 1;
  ULAlgorithms::createLearnFingerprintDistanceFunction(v11, v12, a1 + 8, &v30, v36);
  if (v34 == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v30);
  }

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](v35, v36);
  CLMicroLocationModel::getClusterPairwiseDistances(a2, v35, &v30);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v35);
  v13 = v31;
  if (v30)
  {
    v14 = 0;
    v15 = 0.0;
    v16 = 3.4028e38;
    v17 = 1.1755e-38;
    v18 = 0.0;
    v19 = 3.4028e38;
    v20 = 1.1755e-38;
    do
    {
      v21 = v14 + 1;
      v22 = *(v31 + (((v14 + 1) * v14) >> 1) + v14);
      v23 = v22;
      if (v22 > v17)
      {
        v17 = v22;
      }

      if (v22 < v16)
      {
        v16 = v22;
      }

      v24 = v14 + 1;
      if (v21 < v30)
      {
        do
        {
          if (v14 <= v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v14;
          }

          if (v14 >= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v14;
          }

          v27 = *(v31 + ((v25 + v25 * v25) >> 1) + v26);
          v28 = v27;
          v18 = v18 + v28;
          if (v27 > v20)
          {
            v20 = v27;
          }

          if (v27 < v19)
          {
            v19 = v27;
          }

          ++v24;
        }

        while (v30 != v24);
      }

      ++v14;
      v15 = (v15 + v23) / v30;
    }

    while (v21 != v30);
  }

  else
  {
    v18 = 0.0;
    v19 = 3.4028e38;
    v20 = 1.1755e-38;
    v15 = 0.0;
    v16 = 3.4028e38;
    v17 = 1.1755e-38;
  }

  v29 = (((v30 - 1) * v30) >> 1);
  *a3 = v16;
  a3[1] = v17;
  a3[2] = v15;
  a3[3] = v19;
  a3[4] = v20;
  a3[5] = v18 / v29;
  if (v13)
  {
    v32 = v13;
    operator delete(v13);
  }

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v36);
}

id CLMicroLocationCoreAnalyticsPublishHelper::initializeModelLearningEventMetricsDict(int a1, uint64_t a2, const std::string *a3)
{
  if (a1)
  {
    v4 = a2;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = MEMORY[0x277CCACA8];
    CLMicroLocationProtobufHelper::ModelTypeToDomain(v4, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v8 = [v6 stringWithUTF8String:p_p];
    [v5 setObject:v8 forKeyedSubscript:@"domain"];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cancelled"];
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"valid"];
    if (a3[1].__r_.__value_.__s.__data_[0] == 1)
    {
      v9 = MEMORY[0x277CCACA8];
      CLMicroLocationClientUtils::getClientIdFromClientIdAndServiceUuid(a3, &__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v11 = [v9 stringWithUTF8String:v10];
      [v5 setObject:v11 forKeyedSubscript:@"clientIdentifier"];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_25917140C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(void *a1, uint64_t *a2, uint64_t *a3, char a4, double a5)
{
  v72 = a5;
  v8 = a1;
  if (v8)
  {
    v69 = 0u;
    v70 = 0u;
    v71 = 1065353216;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5);
    if (a4)
    {
      v9 += 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 5);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
    [v8 setObject:v10 forKeyedSubscript:@"numFingerprints"];

    if (5 * (v9 / 5) >= 0x1F4)
    {
      v11 = 500;
    }

    else
    {
      v11 = 5 * (v9 / 5);
    }

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
    [v8 setObject:v12 forKeyedSubscript:@"numFingerprintsBounded"];

    if (v9)
    {
      v67 = 1.79769313e308;
      v68 = -1.79769313e308;
      v65 = 1.79769313e308;
      v66 = -1.79769313e308;
      v63[1] = 0;
      v64 = 0.0;
      v62 = v63;
      v63[0] = 0;
      v61[0] = 0;
      v61[1] = 0;
      v59[1] = 0;
      v60 = v61;
      v58 = v59;
      v59[0] = 0;
      v56 = -1;
      v57 = 0;
      v55 = 0;
      v54[0] = &v72;
      v54[1] = &v69;
      v54[2] = &v68;
      v54[3] = &v67;
      v54[4] = &v66;
      v54[5] = &v65;
      v54[6] = &v64;
      v54[7] = &v62;
      v54[8] = &v60;
      v54[9] = &v58;
      v54[10] = &v57;
      v54[11] = &v56;
      v54[12] = &v55;
      CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(NSMutableDictionary *,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::vector<CLMicroLocationFingerprint> const&,std::optional<std::reference_wrapper<std::vector<CLMicroLocationFingerprint> const>>)::$_3::operator()(v54, a2);
      if (a4)
      {
        CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(NSMutableDictionary *,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::vector<CLMicroLocationFingerprint> const&,std::optional<std::reference_wrapper<std::vector<CLMicroLocationFingerprint> const>>)::$_3::operator()(v54, a3);
      }

      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v68];
      [v8 setObject:v13 forKeyedSubscript:@"ageOfOldestFingerprint"];

      v14 = [MEMORY[0x277CCABB0] numberWithInt:v68];
      [v8 setObject:v14 forKeyedSubscript:@"ageOfOldestFingerprintBounded"];

      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v67];
      [v8 setObject:v15 forKeyedSubscript:@"ageOfNewestFingerprint"];

      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v66];
      [v8 setObject:v16 forKeyedSubscript:@"maxFingerprintDuration"];

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v65];
      [v8 setObject:v17 forKeyedSubscript:@"minFingerprintDuration"];

      v18 = v9;
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v64 / v9];
      [v8 setObject:v19 forKeyedSubscript:@"avgFingerprintDuration"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v57];
      [v8 setObject:v20 forKeyedSubscript:@"maxFingerprintSize"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v56];
      [v8 setObject:v21 forKeyedSubscript:@"minFingerprintSize"];

      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v55 / v9];
      [v8 setObject:v22 forKeyedSubscript:@"avgFingerprintSize"];

      v23 = v59[0];
      if (v59[0])
      {
        v24 = v59;
        v25 = v59[0];
        do
        {
          if (v25[8] >= 1)
          {
            v24 = v25;
          }

          v25 = *&v25[2 * (v25[8] < 1)];
        }

        while (v25);
        if (v24 != v59 && v24[8] <= 1)
        {
          v53 = 1;
          v73 = &v53;
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v62, &v53, &std::piecewise_construct, &v73)[5]}];
          [v8 setObject:v26 forKeyedSubscript:@"maxWifiFingerprintSize"];

          v53 = 1;
          v73 = &v53;
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v60, &v53, &std::piecewise_construct, &v73)[5]}];
          [v8 setObject:v27 forKeyedSubscript:@"minWifiFingerprintSize"];

          v53 = 1;
          v73 = &v53;
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v58, &v53, &std::piecewise_construct, &v73)[5] / v18}];
          [v8 setObject:v28 forKeyedSubscript:@"avgWifiFingerprintSize"];

          v23 = v59[0];
        }

        if (v23)
        {
          v29 = v59;
          v30 = v23;
          do
          {
            if (v30[8] >= 5)
            {
              v29 = v30;
            }

            v30 = *&v30[2 * (v30[8] < 5)];
          }

          while (v30);
          if (v29 != v59 && v29[8] <= 5)
          {
            v53 = 5;
            v73 = &v53;
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v62, &v53, &std::piecewise_construct, &v73)[5]}];
            [v8 setObject:v31 forKeyedSubscript:@"maxBleFingerprintSize"];

            v53 = 5;
            v73 = &v53;
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v60, &v53, &std::piecewise_construct, &v73)[5]}];
            [v8 setObject:v32 forKeyedSubscript:@"minBleFingerprintSize"];

            v53 = 5;
            v73 = &v53;
            v33 = [MEMORY[0x277CCABB0] numberWithDouble:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v58, &v53, &std::piecewise_construct, &v73)[5] / v18}];
            [v8 setObject:v33 forKeyedSubscript:@"avgBleFingerprintSize"];

            v23 = v59[0];
          }

          if (v23)
          {
            v34 = v59;
            do
            {
              if (v23[8] >= 6)
              {
                v34 = v23;
              }

              v23 = *&v23[2 * (v23[8] < 6)];
            }

            while (v23);
            if (v34 != v59 && v34[8] <= 6)
            {
              v53 = 6;
              v73 = &v53;
              v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v62, &v53, &std::piecewise_construct, &v73)[5]}];
              [v8 setObject:v35 forKeyedSubscript:@"maxUwbFingerprintSize"];

              v53 = 6;
              v73 = &v53;
              v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v60, &v53, &std::piecewise_construct, &v73)[5]}];
              [v8 setObject:v36 forKeyedSubscript:@"minUwbFingerprintSize"];

              v53 = 6;
              v73 = &v53;
              v37 = [MEMORY[0x277CCABB0] numberWithDouble:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v58, &v53, &std::piecewise_construct, &v73)[5] / v18}];
              [v8 setObject:v37 forKeyedSubscript:@"avgUwbFingerprintSize"];
            }
          }
        }
      }

      v38 = v70;
      if (v70)
      {
        v39 = 0;
        do
        {
          if (*(v38 + 6) == 1)
          {
            ++v39;
          }

          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        v39 = 0;
      }

      v40 = [MEMORY[0x277CCABB0] numberWithLong:v39];
      [v8 setObject:v40 forKeyedSubscript:@"numSourcesWifi"];

      if (5 * (v39 / 5) >= 100)
      {
        v41 = 100;
      }

      else
      {
        v41 = 5 * (v39 / 5);
      }

      v42 = [MEMORY[0x277CCABB0] numberWithLong:v41];
      [v8 setObject:v42 forKeyedSubscript:@"numSourcesWifiBounded"];

      v43 = v70;
      if (v70)
      {
        v44 = 0;
        do
        {
          if (*(v43 + 6) == 5)
          {
            ++v44;
          }

          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        v44 = 0;
      }

      v45 = [MEMORY[0x277CCABB0] numberWithLong:v44];
      [v8 setObject:v45 forKeyedSubscript:@"numSourcesBle"];

      if (v44 >= 15)
      {
        v46 = 15;
      }

      else
      {
        v46 = v44;
      }

      v47 = [MEMORY[0x277CCABB0] numberWithLong:v46];
      [v8 setObject:v47 forKeyedSubscript:@"numSourcesBleBounded"];

      v48 = v70;
      if (v70)
      {
        v49 = 0;
        do
        {
          if (*(v48 + 6) == 6)
          {
            ++v49;
          }

          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        v49 = 0;
      }

      v50 = [MEMORY[0x277CCABB0] numberWithLong:v49];
      [v8 setObject:v50 forKeyedSubscript:@"numSourcesUwb"];

      if (v49 >= 15)
      {
        v51 = 15;
      }

      else
      {
        v51 = v49;
      }

      v52 = [MEMORY[0x277CCABB0] numberWithLong:v51];
      [v8 setObject:v52 forKeyedSubscript:@"numSourcesUwbBounded"];

      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v58, v59[0]);
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v60, v61[0]);
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v62, v63[0]);
    }

    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v69);
  }
}

void sub_259171DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a27, v34[1]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a30, v34[4]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(va, v34[7]);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v35 - 160);

  _Unwind_Resume(a1);
}

uint64_t *CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(NSMutableDictionary *,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::vector<CLMicroLocationFingerprint> const&,std::optional<std::reference_wrapper<std::vector<CLMicroLocationFingerprint> const>>)::$_3::operator()(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 16);
      if (v5)
      {
        v6 = v4[1];
        do
        {
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement const&>(v6, (v5 + 2), (v5 + 2));
          v5 = *v5;
        }

        while (v5);
      }

      v7 = v4[2];
      v8 = *v4;
      v9 = **v4 - *(v2 + 144);
      if (*v7 >= v9)
      {
        v9 = *v7;
      }

      *v7 = v9;
      v10 = v4[3];
      v11 = *v8 - *(v2 + 144);
      if (v11 >= *v10)
      {
        v11 = *v10;
      }

      *v10 = v11;
      v12 = v4[4];
      LODWORD(v51) = 1;
      v13 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((v2 + 104), &v51);
      v14 = 0.0;
      v15 = 0.0;
      if (v13)
      {
        v15 = *(v13 + 4) - *(v13 + 3);
      }

      if (*v12 >= v15)
      {
        v15 = *v12;
      }

      *v4[4] = v15;
      v16 = v4[5];
      LODWORD(v51) = 1;
      v17 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((v2 + 104), &v51);
      if (v17)
      {
        v14 = *(v17 + 4) - *(v17 + 3);
      }

      v18 = *v16;
      if (v14 < *v16)
      {
        v18 = v14;
      }

      *v4[5] = v18;
      LODWORD(v51) = 1;
      result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((v2 + 104), &v51);
      if (result)
      {
        v19 = *(result + 4) - *(result + 3);
      }

      else
      {
        v19 = 0.0;
      }

      *v4[6] = v19 + *v4[6];
      v20 = v4[10];
      v21 = *(v2 + 24);
      if (*v20 > v21)
      {
        v21 = *v20;
      }

      *v20 = v21;
      v22 = v4[11];
      v23 = *(v2 + 24);
      if (v23 >= *v22)
      {
        v23 = *v22;
      }

      *v22 = v23;
      *v4[12] += *(v2 + 24);
      for (i = *(v2 + 80); i; i = *i)
      {
        v25 = i + 4;
        v26 = v4[7];
        v27 = *(v26 + 8);
        if (!v27)
        {
          goto LABEL_33;
        }

        v28 = *v25;
        v29 = v26 + 8;
        do
        {
          if (*(v27 + 32) >= v28)
          {
            v29 = v27;
          }

          v27 = *(v27 + 8 * (*(v27 + 32) < v28));
        }

        while (v27);
        if (v29 == v26 + 8 || v28 < *(v29 + 32))
        {
LABEL_33:
          v51 = i + 4;
          std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v26, i + 4, &std::piecewise_construct, &v51)[5] = 0;
          v26 = v4[7];
        }

        v51 = i + 4;
        v30 = std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v26, i + 4, &std::piecewise_construct, &v51);
        v31 = *(v2 + 16);
        if (v31)
        {
          v32 = 0;
          do
          {
            if (*(v31 + 6) == *v25)
            {
              ++v32;
            }

            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          v32 = 0;
        }

        if (v30[5] <= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v30[5];
        }

        v34 = v4[7];
        v51 = i + 4;
        std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v34, i + 4, &std::piecewise_construct, &v51)[5] = v33;
        v35 = v4[8];
        v36 = *(v35 + 8);
        if (!v36)
        {
          goto LABEL_51;
        }

        v37 = *v25;
        v38 = v35 + 8;
        do
        {
          if (*(v36 + 32) >= v37)
          {
            v38 = v36;
          }

          v36 = *(v36 + 8 * (*(v36 + 32) < v37));
        }

        while (v36);
        if (v38 == v35 + 8 || v37 < *(v38 + 32))
        {
LABEL_51:
          v38 = v35 + 8;
        }

        if (v38 == v4[7] + 8)
        {
          v51 = i + 4;
          std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v35, i + 4, &std::piecewise_construct, &v51)[5] = -1;
          v35 = v4[8];
        }

        v51 = i + 4;
        v39 = std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v35, i + 4, &std::piecewise_construct, &v51);
        v40 = *(v2 + 16);
        if (v40)
        {
          v41 = 0;
          do
          {
            if (*(v40 + 6) == *v25)
            {
              ++v41;
            }

            v40 = *v40;
          }

          while (v40);
        }

        else
        {
          v41 = 0;
        }

        if (v41 >= v39[5])
        {
          v42 = v39[5];
        }

        else
        {
          v42 = v41;
        }

        v43 = v4[8];
        v51 = i + 4;
        std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v43, i + 4, &std::piecewise_construct, &v51)[5] = v42;
        v44 = v4[9];
        v45 = *(v44 + 8);
        if (!v45)
        {
          goto LABEL_71;
        }

        v46 = *v25;
        v47 = v44 + 8;
        do
        {
          if (*(v45 + 32) >= v46)
          {
            v47 = v45;
          }

          v45 = *(v45 + 8 * (*(v45 + 32) < v46));
        }

        while (v45);
        if (v47 == v44 + 8 || v46 < *(v47 + 32))
        {
LABEL_71:
          v51 = i + 4;
          std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v44, i + 4, &std::piecewise_construct, &v51)[5] = 0;
          v46 = *v25;
        }

        v48 = *(v2 + 16);
        if (v48)
        {
          v49 = 0;
          do
          {
            if (*(v48 + 6) == v46)
            {
              ++v49;
            }

            v48 = *v48;
          }

          while (v48);
        }

        else
        {
          v49 = 0;
        }

        v50 = v4[9];
        v51 = i + 4;
        result = std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v50, i + 4, &std::piecewise_construct, &v51);
        result[5] += v49;
      }

      v2 += 224;
    }

    while (v2 != v3);
  }

  return result;
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics(CLMicroLocationCoreAnalyticsPublishHelper *this, NSMutableDictionary *a2, const CLMicroLocationModel *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveSensorsEnable"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v10 = v9;

  v46[0] = &stru_286A60C80;
  v46[1] = CLMicroLocationUtils::createEnabledTechnologies(1, 1, 1, 1);
  v47 = v10;
  v48 = @"Wifi";
  EnabledTechnologies = CLMicroLocationUtils::createEnabledTechnologies(1, 0, 0, 0);
  v50 = v10;
  v51 = @"Ble";
  v52 = CLMicroLocationUtils::createEnabledTechnologies(0, 1, 0, 0);
  v53 = v10;
  v54 = @"Uwb";
  v55 = CLMicroLocationUtils::createEnabledTechnologies(0, 0, 1, 0);
  v56 = v10;
  v57 = @"PhotoFeatures";
  v11 = 0;
  v58 = CLMicroLocationUtils::createEnabledTechnologies(0, 0, 0, 1);
  v59 = v10;
  do
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    CLMicroLocationClusterRFDistance::evaluateRFClusterDistances(&v46[v11], a2, &v35);
    LODWORD(v12) = v35;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"minClusterRfSize", v46[v11]];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v13 forKeyedSubscript:v14];

    LODWORD(v15) = HIDWORD(v35);
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"maxClusterRfSize", v46[v11]];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v16 forKeyedSubscript:v17];

    LODWORD(v18) = v36;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"avgClusterRfSize", v46[v11]];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v19 forKeyedSubscript:v20];

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics();
    }

    v21 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      v22 = v46[v11];
      *buf = 138413058;
      v39 = v22;
      v40 = 2048;
      v41 = *&v35;
      v42 = 2048;
      v43 = *(&v35 + 1);
      v44 = 2048;
      v45 = *&v36;
      _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEBUG, "Model cluster RF sizes %@: %f (min), %f(max), %f (mean)", buf, 0x2Au);
    }

    if (CLMicroLocationModel::numClusters(a2) >= 2)
    {
      LODWORD(v23) = HIDWORD(v36);
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"minClusterRfDistance", v46[v11]];
      [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v24 forKeyedSubscript:v25];

      LODWORD(v26) = v37;
      v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"maxClusterRfDistance", v46[v11]];
      [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v27 forKeyedSubscript:v28];

      LODWORD(v29) = HIDWORD(v37);
      v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"avgClusterRfDistance", v46[v11]];
      [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v30 forKeyedSubscript:v31];

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics();
      }

      v32 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
      {
        v33 = v46[v11];
        *buf = 138413058;
        v39 = v33;
        v40 = 2048;
        v41 = *(&v36 + 1);
        v42 = 2048;
        v43 = *&v37;
        v44 = 2048;
        v45 = *(&v37 + 1);
        _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_DEBUG, "Model cluster RF distances %@: %f (min), %f(max), %f (mean)", buf, 0x2Au);
      }
    }

    v11 += 3;
  }

  while (v11 != 15);
  for (i = 12; i != -3; i -= 3)
  {
  }
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateLearnEventSummary(void *a1, CLMicroLocationModel *a2, const CLMicroLocationModel *a3, double a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277CBEC28];
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"cancelled"];
    if (CLMicroLocationModel::isValid(a2))
    {
      v10 = MEMORY[0x277CBEC38];
    }

    else
    {
      v10 = v9;
    }

    [v8 setObject:v10 forKeyedSubscript:@"valid"];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:cl::chrono::CFAbsoluteTimeClock::now() - a4];
    [v8 setObject:v11 forKeyedSubscript:@"runTime"];

    v12 = [v8 objectForKeyedSubscript:@"learnCounter"];
    v13 = [v12 integerValue];

    if (v13)
    {
      if (v13 >= 100)
      {
        v14 = 100;
      }

      else
      {
        v14 = v13;
      }

      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      [v8 setObject:v15 forKeyedSubscript:@"learnCounter"];
    }

    if (CLMicroLocationModel::isValid(a2))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CLMicroLocationModel::numClusters(a2)];
      [v8 setObject:v16 forKeyedSubscript:@"numClusters"];

      CLMicroLocationCoreAnalyticsPublishHelper::updateModelSizeMetrics(v8, a2, a3, v17);
      CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics(v8, a2, v18);
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:CLMicroLocationModel::representativeFPsRatio(a2)];
      [v8 setObject:v19 forKeyedSubscript:@"representativeFPsRatio"];

      __src = 0;
      v56 = 0;
      v57 = 0;
      v20 = *(a2 + 27);
      if (v20)
      {
        v21 = 0;
        do
        {
          v22 = (v20[5] - v20[4]) >> 4;
          if (v21 >= v57)
          {
            v23 = __src;
            v24 = v21 - __src;
            v25 = (v21 - __src) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v27 = v57 - __src;
            if ((v57 - __src) >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v28);
            }

            v29 = v25;
            v30 = (8 * v25);
            v31 = &v30[-v29];
            *v30 = v22;
            v21 = (v30 + 1);
            memcpy(v31, v23, v24);
            v32 = __src;
            __src = v31;
            v56 = v21;
            v57 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v21++ = v22;
          }

          v56 = v21;
          v20 = *v20;
        }

        while (v20);
        v33 = __src;
      }

      else
      {
        v21 = 0;
        v33 = 0;
      }

      v34 = 126 - 2 * __clz(v21 - v33);
      if (v21 == v33)
      {
        v35 = 0;
      }

      else
      {
        v35 = v34;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(v33, v21, __p, v35, 1);
      v36 = +[ULDefaultsSingleton shared];
      v37 = [v36 defaultsDictionary];

      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfClustersForLearningAnalytics"];
      v39 = [v37 objectForKey:v38];
      if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v40 = [v39 unsignedLongValue];
      }

      else
      {
        v40 = [&unk_286A72528 unsignedLongValue];
      }

      v41 = v40;

      v43 = __src;
      v42 = v56;
      if (v56 != __src)
      {
        v44 = 0;
        v45 = 0;
        do
        {
          if (v44 >= v41)
          {
            v45 += v43[v44];
          }

          else
          {
            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v43[v44]];
            v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"numFingerprintsInCluster%zu", v44];
            [v8 setObject:v46 forKeyedSubscript:v47];

            v43 = __src;
            v42 = v56;
          }

          ++v44;
        }

        while (v44 < v42 - v43);
        if (v45)
        {
          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v45];
          [v8 setObject:v48 forKeyedSubscript:@"numFingerprintsInRemainingClusters"];

          v42 = v56;
        }
      }

      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v42 - 1)];
      [v8 setObject:v49 forKeyedSubscript:@"numFingerprintsInSmallestCluster"];

      CLMicroLocationCoreAnalyticsPublishHelper::generationAlgorithmToString(*a2, __p);
      if (v54 >= 0)
      {
        v50 = __p;
      }

      else
      {
        v50 = __p[0];
      }

      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:v50];
      [v8 setObject:v51 forKeyedSubscript:@"generationAlgorithm"];

      CLMicroLocationCoreAnalyticsPublishHelper::updateModelQualityMetrics(v8, a2, v52);
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }

      if (__src)
      {
        v56 = __src;
        operator delete(__src);
      }
    }
  }
}

void sub_259172E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateModelSizeMetrics(CLMicroLocationCoreAnalyticsPublishHelper *this, NSMutableDictionary *a2, const CLMicroLocationModel *a3, const CLMicroLocationProto::Model *a4)
{
  v23 = this;
  if (v23)
  {
    isa = a2[22].super.super.isa;
    v6 = a2[23].super.super.isa;
    v8 = (v6 - isa) >> 5;
    if (v6 == isa)
    {
      v12 = 0;
      v11 = 0;
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(*isa + 16);
        if (v13)
        {
          v14 = 0;
          v15 = *(*isa + 16);
          do
          {
            if (*(v15 + 24) == 1)
            {
              ++v14;
            }

            v15 = *v15;
          }

          while (v15);
          v16 = *(*isa + 16);
          do
          {
            if (*(v16 + 24) == 5)
            {
              ++v15;
            }

            v16 = *v16;
          }

          while (v16);
          do
          {
            if (*(v13 + 6) == 6)
            {
              ++v16;
            }

            v13 = *v13;
          }

          while (v13);
          v10 += v14;
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }

        v9 += *(*isa + 24);
        v12 += v15;
        v11 += v16;
        isa = (isa + 32);
      }

      while (isa != v6);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v17 forKeyedSubscript:@"modelSizeNumFingerprints"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v18 forKeyedSubscript:@"modelSizeNumMeasurements"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v19 forKeyedSubscript:@"modelSizeNumWiFiMeasurements"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v20 forKeyedSubscript:@"modelSizeNumBleMeasurements"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v21 forKeyedSubscript:@"modelSizeNumUwbMeasurements"];

    v22 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a3 + 72))(a3)];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v22 forKeyedSubscript:@"modelLoadedByteSize"];
  }
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateModelQualityMetrics(CLMicroLocationCoreAnalyticsPublishHelper *this, NSMutableDictionary *a2, const CLMicroLocationModel *a3)
{
  v26 = this;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CLMicroLocationModel::getQualityIndicator(a2)];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v26 setObject:v4 forKeyedSubscript:@"modelQuality"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CLMicroLocationModel::getQualityIndicator(a2)];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v26 setObject:v5 forKeyedSubscript:@"modelQualityBounded"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CLMicroLocationModel::getCandidateQualityIndicator(a2)];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v26 setObject:v6 forKeyedSubscript:@"candidateModelQuality"];

  CandidateQualityReasons = CLMicroLocationModel::getCandidateQualityReasons(a2);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum*,CLMicroLocationProto::ServiceQualityReasonEnum*>(&v30, *CandidateQualityReasons, *(CandidateQualityReasons + 8), (*(CandidateQualityReasons + 8) - *CandidateQualityReasons) >> 2);
  v8 = 126 - 2 * __clz((v31 - v30) >> 2);
  if (v31 == v30)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,false>(v30, v31, &v35, v9, 1);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v10 = v30;
  v11 = v31;
  if (v30 != v31)
  {
    do
    {
      CLMicroLocationProtobufHelper::serviceQualityReasonToString(*v10, __p);
      v12 = v28;
      if (v28 >= v29)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v29 - v27) >> 3) > v15)
        {
          v15 = 0x5555555555555556 * ((v29 - v27) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v29 - v27) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        v35.__end_cap_.__value_ = &v27;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v27, v16);
        }

        v17 = 8 * ((v28 - v27) >> 3);
        v18 = *__p;
        *(v17 + 16) = v34;
        *v17 = v18;
        __p[1] = 0;
        v34 = 0;
        __p[0] = 0;
        v19 = 24 * v14 + 24;
        v20 = (24 * v14 - (v28 - v27));
        memcpy((v17 - (v28 - v27)), v27, v28 - v27);
        v21 = v27;
        v22 = v29;
        v27 = v20;
        v28 = v19;
        v29 = 0;
        v35.__end_ = v21;
        v35.__end_cap_.__value_ = v22;
        v35.__first_ = v21;
        v35.__begin_ = v21;
        std::__split_buffer<std::string>::~__split_buffer(&v35);
        v28 = v19;
        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v13 = *__p;
        *(v28 + 2) = v34;
        *v12 = v13;
        v28 = v12 + 24;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  boost::algorithm::join<std::vector<std::string>,char [2]>(&v35, " ", &v27);
  if (SHIBYTE(v35.__end_) >= 0)
  {
    first = &v35;
  }

  else
  {
    first = v35.__first_;
  }

  v24 = v26;
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{first, v26}];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v24 setObject:v25 forKeyedSubscript:@"qualityReasons"];

  if (SHIBYTE(v35.__end_) < 0)
  {
    operator delete(v35.__first_);
  }

  v35.__first_ = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_25917351C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  *(v28 - 88) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v28 - 88));
  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentOldModelMetrics(void *a1, CLMicroLocationModel *a2, CLMicroLocationModel *a3, uint64_t a4, char a5, double a6)
{
  v11 = a1;
  if (v11)
  {
    if (a5)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:a6 - *&a4];
      [v11 setObject:v12 forKeyedSubscript:@"ageOfOldModel"];
    }

    if (CLMicroLocationModel::isValid(a2))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CLMicroLocationModel::numClusters(a3)];
      [v11 setObject:v13 forKeyedSubscript:@"numOldClusters"];

      v14 = MEMORY[0x277CCABB0];
      v15 = CLMicroLocationModel::numClusters(a2);
      v16 = [v14 numberWithInt:v15 - CLMicroLocationModel::numClusters(a3)];
      [v11 setObject:v16 forKeyedSubscript:@"numClustersDiff"];

      CLMicroLocationModel::getIdentifiers(&v28, a2);
      CLMicroLocationModel::getIdentifiers(&v26, a3);
      v17 = v28;
      if (v28 == v29)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        do
        {
          if (&v27 != std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(&v26, (v17 + 25)))
          {
            ++v18;
          }

          v19 = v17[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v17[2];
              v21 = *v20 == v17;
              v17 = v20;
            }

            while (!v21);
          }

          v17 = v20;
        }

        while (v20 != v29);
      }

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v18];
      [v11 setObject:v22 forKeyedSubscript:@"numMatchingClustersInt"];

      if (CLMicroLocationModel::numClusters(a3))
      {
        v23 = MEMORY[0x277CCABB0];
        *&v24 = v18 / CLMicroLocationModel::numClusters(a3);
        v25 = [v23 numberWithFloat:v24];
        [v11 setObject:v25 forKeyedSubscript:@"portionMatchingClusters"];
      }

      else
      {
        [v11 setObject:&unk_286A72F30 forKeyedSubscript:@"portionMatchingClusters"];
      }

      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v26, v27);
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v28, v29[0]);
    }
  }
}

void sub_25917381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a9, a10);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a12, a13);

  _Unwind_Resume(a1);
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedFingerprints(void *a1, uint64_t *a2, unsigned int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (v5)
  {
    if (a3)
    {
      v6 = (a2[1] - *a2) >> 3;
      if (v6 >= a3)
      {
        v11 = a3;
        if (v6 > a3)
        {
          v12 = a3 - 1;
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(*a2 + 8 * v12) - *(*a2 + 8 * a3)];
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"numFingerprintsPrunedInIteration%u", v12];
          [v5 setObject:v13 forKeyedSubscript:v14];

          v16 = *a2;
          v17 = (a2[1] - *a2) >> 3;
          if (v17 > v12)
          {
            v18 = *(v16 + 8 * v12);
            if (!v18)
            {
              goto LABEL_17;
            }

            if (v17 > v11)
            {
              *&v15 = 1.0 - (*(v16 + 8 * v11) / v18);
              v19 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"portionFingerprintsPrunedInIteration%u", v12];
              [v5 setObject:v19 forKeyedSubscript:v20];

              goto LABEL_17;
            }
          }
        }

        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedFingerprints();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = (a2[1] - *a2) >> 3;
      *buf = 68289538;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      v26 = a3;
      v27 = 2050;
      v28 = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:updateMagicalMomentsNumPrunedFingerprints called incorrectly, iteration:%{public}lu, numFingerprintsPerIteration size:%{public}lu}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v10 = (a2[1] - *a2) >> 3;
      *buf = 68289538;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      v26 = a3;
      v27 = 2050;
      v28 = v10;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "updateMagicalMomentsNumPrunedFingerprints called incorrectly", "{msg%{public}.0s:updateMagicalMomentsNumPrunedFingerprints called incorrectly, iteration:%{public}lu, numFingerprintsPerIteration size:%{public}lu}", buf, 0x26u);
    }
  }

LABEL_17:
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedClusters(CLMicroLocationCoreAnalyticsPublishHelper *this, NSMutableDictionary *a2, const CLMicroLocationModel *a3, uint64_t a4)
{
  v13 = this;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3 - CLMicroLocationModel::numClusters(a2)];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"numClustersPrunedIteration%u", a4];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v13 setObject:v7 forKeyedSubscript:v8];

  if (a3)
  {
    v9 = MEMORY[0x277CCABB0];
    *&v10 = 1.0 - (CLMicroLocationModel::numClusters(a2) / a3);
    v11 = [v9 numberWithFloat:v10];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"portionClustersPrunedIteration%u", a4];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v13 setObject:v11 forKeyedSubscript:v12];
  }
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateModelStabilityMetrics(void *a1, CLMicroLocationModel *a2, _BYTE *a3)
{
  v10 = a1;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 3)];
  [v10 setObject:v5 forKeyedSubscript:@"DaysWithRecordings"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:CLMicroLocationModel::getQualityIndicator(a2) == 3];
  [v10 setObject:v6 forKeyedSubscript:@"IsHighQualityModel"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:CLMicroLocationModel::isStable(a2)];
  [v10 setObject:v7 forKeyedSubscript:@"WasInHighQualityBefore"];

  if (a3[1])
  {
    if (CLMicroLocationModel::isStable(a2))
    {
      if (*a3)
      {
        v8 = 0;
      }

      else
      {
        v8 = a3[1];
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v10 setObject:v9 forKeyedSubscript:@"IsBecomingHighQualityModelForTheFirstTime"];
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:CLMicroLocationModel::isStable(a2)];
    [v10 setObject:v9 forKeyedSubscript:@"IsBecomingHighQualityModelForTheFirstTime"];
  }
}

uint64_t *std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_121()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v58 = v9[1];
          v59 = *(a2 - 1);
          if (v58 <= v59)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = v9[1];
          }

          if (v58 >= v59)
          {
            v58 = *(a2 - 1);
          }

          *(a2 - 1) = v58;
          v9[1] = v60;
          v61 = *(a2 - 1);
          if (v61 <= *v9)
          {
            v62 = *v9;
          }

          else
          {
            v62 = *(a2 - 1);
          }

          if (v61 >= *v9)
          {
            v61 = *v9;
          }

          *(a2 - 1) = v61;
          v64 = *v9;
          v63 = v9[1];
          if (v62 <= v63)
          {
            v64 = v9[1];
          }

          if (v62 < v63)
          {
            v63 = v62;
          }

          *v9 = v64;
          v9[1] = v63;
          return result;
        case 4:
          v88 = v9[1];
          v87 = v9[2];
          if (*v9 <= v87)
          {
            v89 = v9[2];
          }

          else
          {
            v89 = *v9;
          }

          if (*v9 < v87)
          {
            v87 = *v9;
          }

          v9[2] = v87;
          *v9 = v89;
          v90 = *(a2 - 1);
          if (v88 <= v90)
          {
            v91 = *(a2 - 1);
          }

          else
          {
            v91 = v88;
          }

          if (v88 < v90)
          {
            v90 = v88;
          }

          *(a2 - 1) = v90;
          v92 = *v9;
          if (*v9 <= v91)
          {
            v93 = v91;
          }

          else
          {
            v93 = *v9;
          }

          if (*v9 >= v91)
          {
            v92 = v91;
          }

          *v9 = v93;
          v9[1] = v92;
          v94 = v9[2];
          v95 = *(a2 - 1);
          if (v94 <= v95)
          {
            v96 = *(a2 - 1);
          }

          else
          {
            v96 = v9[2];
          }

          if (v94 >= v95)
          {
            v94 = *(a2 - 1);
          }

          *(a2 - 1) = v94;
          v97 = v9[1];
          if (v97 <= v96)
          {
            v98 = v96;
          }

          else
          {
            v98 = v9[1];
          }

          if (v97 >= v96)
          {
            v97 = v96;
          }

          v9[1] = v98;
          v9[2] = v97;
          return result;
        case 5:
          v65 = *v9;
          v66 = v9[1];
          if (*v9 <= v66)
          {
            v67 = v9[1];
          }

          else
          {
            v67 = *v9;
          }

          if (*v9 >= v66)
          {
            v65 = v9[1];
          }

          *v9 = v67;
          v9[1] = v65;
          v68 = v9[3];
          v69 = *(a2 - 1);
          if (v68 <= v69)
          {
            v70 = *(a2 - 1);
          }

          else
          {
            v70 = v9[3];
          }

          if (v68 >= v69)
          {
            v68 = *(a2 - 1);
          }

          *(a2 - 1) = v68;
          v9[3] = v70;
          v71 = *(a2 - 1);
          v72 = v9[2];
          if (v71 <= v72)
          {
            v73 = v9[2];
          }

          else
          {
            v73 = *(a2 - 1);
          }

          if (v71 >= v72)
          {
            v71 = v9[2];
          }

          *(a2 - 1) = v71;
          v75 = v9[2];
          v74 = v9[3];
          v76 = v9[1];
          if (v73 <= v74)
          {
            v75 = v9[3];
          }

          if (v73 < v74)
          {
            v74 = v73;
          }

          v9[2] = v75;
          v9[3] = v74;
          v77 = *(a2 - 1);
          if (v76 <= v77)
          {
            v78 = *(a2 - 1);
          }

          else
          {
            v78 = v76;
          }

          if (v76 < v77)
          {
            v77 = v76;
          }

          *(a2 - 1) = v77;
          v79 = *v9;
          v81 = v9[2];
          v80 = v9[3];
          if (v80 <= *v9)
          {
            v82 = *v9;
          }

          else
          {
            v82 = v9[3];
          }

          if (v80 >= *v9)
          {
            v80 = *v9;
          }

          if (v82 <= v81)
          {
            v79 = v9[2];
          }

          if (v82 < v81)
          {
            v81 = v82;
          }

          if (v80 <= v78)
          {
            v83 = v78;
          }

          else
          {
            v83 = v80;
          }

          if (v80 >= v78)
          {
            v80 = v78;
          }

          if (v83 <= v81)
          {
            v78 = v81;
          }

          *v9 = v79;
          v9[1] = v78;
          if (v83 >= v81)
          {
            v84 = v81;
          }

          else
          {
            v84 = v83;
          }

          v9[2] = v84;
          v9[3] = v80;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v85 = *(a2 - 1);
        v86 = *v9;
        if (v85 > *v9)
        {
          *v9 = v85;
          *(a2 - 1) = v86;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v47 = *v9;
      if (*v9 <= v14)
      {
        v48 = *(a2 - 1);
      }

      else
      {
        v48 = *v9;
      }

      if (*v9 >= v14)
      {
        v47 = *(a2 - 1);
      }

      *(a2 - 1) = v47;
      *v9 = v48;
      v49 = *(a2 - 1);
      v50 = v9[v13];
      if (v49 <= v50)
      {
        v51 = v9[v13];
      }

      else
      {
        v51 = *(a2 - 1);
      }

      if (v49 >= v50)
      {
        v49 = v9[v13];
      }

      *(a2 - 1) = v49;
      v52 = *v9;
      v53 = v51 > *v9;
      if (v51 > *v9)
      {
        v52 = v9[v13];
      }

      v9[v13] = v52;
      v54 = *v9;
      if (!v53)
      {
        v54 = v51;
      }

      *v9 = v54;
      if (a5)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (*v15 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 > *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v23 = *(v15 - 1);
      v22 = *v15;
      if (!v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = v23;
      }

      if (v23 < v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 > v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (!v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 > v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (!v39)
      {
        v40 = v37;
      }

      v42 = *(v15 - 1);
      if (v41 <= v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      if (v40 <= v42)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v42)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v42 <= v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = v42;
      }

      if (v42 > v43)
      {
        v44 = v43;
      }

      *(v15 - 1) = v45;
      *v15 = v44;
      v46 = *v9;
      *v9 = v44;
      *v15 = v46;
      if (a5)
      {
        goto LABEL_89;
      }
    }

    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(v9, a2);
      v9 = result;
      goto LABEL_94;
    }

LABEL_89:
    v55 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(v9, a2);
    if ((v56 & 1) == 0)
    {
      goto LABEL_92;
    }

    v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(v9, v55);
    v9 = v55 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(v55 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v55;
      if (v57)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v57)
    {
LABEL_92:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(v8, v55, a3, -v11, a5 & 1);
      v9 = v55 + 1;
LABEL_94:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v99 = v9 + 1;
  v101 = v9 == a2 || v99 == a2;
  if (a5)
  {
    if (!v101)
    {
      v102 = 0;
      v103 = v9;
      do
      {
        v105 = *v103;
        v104 = v103[1];
        v103 = v99;
        if (v104 > v105)
        {
          v106 = v102;
          while (1)
          {
            *(v9 + v106 + 8) = v105;
            if (!v106)
            {
              break;
            }

            v105 = *(v9 + v106 - 8);
            v106 -= 8;
            if (v104 <= v105)
            {
              v107 = (v9 + v106 + 8);
              goto LABEL_199;
            }
          }

          v107 = v9;
LABEL_199:
          *v107 = v104;
        }

        v99 = v103 + 1;
        v102 += 8;
      }

      while (v103 + 1 != a2);
    }
  }

  else if (!v101)
  {
    do
    {
      v109 = *v8;
      v108 = v8[1];
      v8 = v99;
      if (v108 > v109)
      {
        do
        {
          *v99 = v109;
          v109 = *(v99 - 2);
          --v99;
        }

        while (v108 > v109);
        *v99 = v108;
      }

      v99 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v26 = v10 >> 3;
    v24 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s64(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_25921A970;
      do
      {
        v16 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(v13, *(v7 + v12)), v14), v17), v16);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 512);
      v12 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v18 = 0uLL;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    v20 = xmmword_25921A970;
    do
    {
      v18 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(vextq_s8(*&v9[v19], *&v9[v19], 8uLL), v13), vdupq_n_s64(1uLL)), v20), v18);
      v20 = vaddq_s64(v20, vdupq_n_s64(2uLL));
      v19 -= 2;
    }

    while (v19 != -65);
    v11 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-__clz(__rbit64(v11))];
        v23 = v7[v21];
        v7[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v24 = v11 == 0;
    if (v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = -512;
    }

    v9 = (v9 + v25);
  }

  while (v9 - v7 > 1008);
  v26 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v30 = v26 + 1;
    v27 = (v26 + 1) / 2;
    v28 = v30 - v30 / 2;
    goto LABEL_37;
  }

  v27 = v26 - 63;
  v28 = 64;
  v29 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v27 >= 1)
    {
      v32 = 0;
      v11 = 0;
      v33 = v9;
      do
      {
        v34 = *v33--;
        v11 |= (v34 > v2) << v32++;
      }

      while (v27 != v32);
      goto LABEL_46;
    }

    if (v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = v29;
    }

    v38 = &v7[v42];
LABEL_62:
    if (v12)
    {
      v9 -= v27;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v27 < 1)
  {
    v12 = 0;
  }

  else
  {
    v31 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v31] <= v2) << v31;
      ++v31;
    }

    while (v27 != v31);
  }

  v29 = v27;
  v27 = v28;
  if (v24)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v35 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v36 = &v9[-__clz(__rbit64(v11))];
      v37 = v7[v35];
      v7[v35] = *v36;
      *v36 = v37;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v29 = 0;
  }

  v38 = &v7[v29];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v43 = __clz(v12) ^ 0x3F;
      v44 = &v38[v43];
      if (v9 != v44)
      {
        v45 = *v44;
        *v44 = *v9;
        *v9 = v45;
      }

      v12 &= ~(-1 << v43);
      --v9;
    }

    while (v12);
    v38 = v9 + 1;
  }

  else
  {
    do
    {
      v39 = __clz(v11) ^ 0x3F;
      v40 = &v9[-v39];
      if (v38 != v40)
      {
        v41 = *v40;
        *v40 = *v38;
        *v38 = v41;
      }

      v11 &= ~(-1 << v39);
      ++v38;
    }

    while (v11);
  }

LABEL_68:
  v46 = v38 - 1;
  if (v38 - 1 != a1)
  {
    *a1 = *v46;
  }

  *v46 = v2;
  return v38 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,unsigned long *>(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 > v22;
            if (v23 < v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 > *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 > v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 >= v11)
        {
          v10 = v8[1];
        }

        if (*v8 > v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 8 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 >= v14)
            {
              v10 = v8[1];
            }

            if (*v8 <= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 <= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = (v9 + 1);
      v59 = v9[1];
      v60 = (v9 + 2);
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= v62)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = v9 + 1;
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = v9 + 2;
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = v9 + 2;
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            LODWORD(v59) = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        LODWORD(v59) = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = (v9 + 1);
      v48 = v9[1];
      v50 = (v9 + 2);
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= v51)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          LODWORD(v51) = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = v9 + 1;
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          LODWORD(v51) = v49;
          LODWORD(v49) = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = v9 + 2;
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          LODWORD(v51) = result;
          LODWORD(v49) = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        LODWORD(v49) = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 4) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 4);
                v72 -= 4;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 4);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 4;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,CLMicroLocationProto::ServiceQualityReasonEnum *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = (v13 - 1);
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = (v13 + 1);
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationProto::ServiceQualityReasonEnum *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationProto::ServiceQualityReasonEnum *,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(v9, v41);
    v9 = (v41 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = (v41 + 1);
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationProto::ServiceQualityReasonEnum *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationProto::ServiceQualityReasonEnum *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(int *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 12; ; i += 4)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 4;
        if (v39 == 4)
        {
          break;
        }

        v38 = *(a1 + v39 - 8);
        v39 -= 4;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,CLMicroLocationProto::ServiceQualityReasonEnum *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 < v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 < *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 < v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = bswap64(*a2);
  v6 = v2;
  do
  {
    v7 = bswap64(*(v3 + 25));
    if (v7 == v5)
    {
      v7 = bswap64(*(v3 + 33));
      v8 = bswap64(a2[1]);
      if (v7 == v8)
      {
        v9 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = v5;
    }

    if (v7 < v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

LABEL_10:
    if (v9 >= 0)
    {
      v6 = v3;
    }

    v3 = *(v3 + ((v9 >> 28) & 8));
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v10 = bswap64(*a2);
  v11 = bswap64(*(v6 + 25));
  if (v10 != v11 || (v10 = bswap64(a2[1]), v11 = bswap64(*(v6 + 33)), v10 != v11))
  {
    v12 = v10 < v11 ? -1 : 1;
    if (v12 < 0)
    {
      return v2;
    }
  }

  return v6;
}

uint64_t CLMicroLocationErrorHandling::reportError(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationErrorHandling::reportError();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 23) >= 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = *a1;
    }

    *buf = 136315138;
    v6 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "Microlocation error report: %s", buf, 0xCu);
  }

  result = ULSettings::get<ULSettings::AnalyticsSendEventEnabled>();
  if (result)
  {
    return AnalyticsSendEventLazy();
  }

  return result;
}

id ___ZN28CLMicroLocationErrorHandling11reportErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"errorType";
  v1 = *(a1 + 32);
  if (*(v1 + 23) < 0)
  {
    v1 = *v1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

void CLMicroLocationErrorHandling::reportError(CLMicroLocationErrorHandling *this, NSString *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = this;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationErrorHandling::reportError();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v6 = v2;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_ERROR, "Microlocation error report: %@", buf, 0xCu);
  }

  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    v4 = v2;
    AnalyticsSendEventLazy();
  }
}

id ___ZN28CLMicroLocationErrorHandling11reportErrorEP8NSString_block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"errorType";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_122()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void CLMicroLocationFingerprintConfiguration::getCustomLoiRecordingConfigurationFromSettings(uint64_t *__return_ptr a1@<X8>)
{
  CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings(a1);
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumTotalNumberOfMeasurementsForFingerprintInCustomLoi"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 unsignedLongValue];
  }

  else
  {
    v7 = [&unk_286A72540 unsignedLongValue];
  }

  v8 = v7;

  *a1 = v8;
}

uint64_t *CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings@<X0>(uint64_t a2@<X8>)
{
  *a2 = ULSettings::get<ULSettings::MinimumTotalNumberOfMeasurementsForFingerprint>();
  *(a2 + 8) = ULSettings::get<ULSettings::ProcessOffChannelRssiAP>();
  v3 = ULSettings::get<ULSettings::ProcessInvalidRssiAP>();
  *(a2 + 16) = 0u;
  v4 = a2 + 16;
  *(v4 - 7) = v3;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1065353216;
  v5 = ULSettings::get<ULSettings::MeasurementProcessingWifiRssiEnable>();
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumWiFiDurationForFingerprintRecording"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 doubleValue];
  }

  else
  {
    [&unk_286A72F40 doubleValue];
  }

  v11 = v10;

  v12 = +[ULDefaultsSingleton shared];
  v13 = [v12 defaultsDictionary];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumWiFiNumberOfMeasurementsForFingerprintRecording"];
  v15 = [v13 objectForKey:v14];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v15 unsignedLongValue];
  }

  else
  {
    v16 = [&unk_286A72540 unsignedLongValue];
  }

  v51 = v16;

  v17 = ULSettings::get<ULSettings::MaximumNumberOfWifiRssiMeasurementsForFingerprint>();
  v50 = ULSettings::get<ULSettings::MeasurementProcessingBleLeechEnable>();
  v18 = +[ULDefaultsSingleton shared];
  v19 = [v18 defaultsDictionary];

  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumBleDurationForFingerprintRecording"];
  v21 = [v19 objectForKey:v20];
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v21 doubleValue];
  }

  else
  {
    [&unk_286A72588 doubleValue];
  }

  v23 = v22;

  v24 = +[ULDefaultsSingleton shared];
  v25 = [v24 defaultsDictionary];

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumBleNumberOfMeasurementsForFingerprintRecording"];
  v27 = [v25 objectForKey:v26];
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v28 = [v27 unsignedLongValue];
  }

  else
  {
    v28 = [&unk_286A72588 unsignedLongValue];
  }

  v29 = v28;

  v30 = ULSettings::get<ULSettings::MaximumNumberOfBleRssiMeasurementsForFingerprint>();
  v31 = v5;
  v32 = ULSettings::get<ULSettings::MeasurementProcessingUwbRangeEnable>();
  if (v32)
  {
    isUwbRangingSupportedOnDevice = ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(v32);
  }

  else
  {
    isUwbRangingSupportedOnDevice = 0;
  }

  v34 = +[ULDefaultsSingleton shared];
  v35 = [v34 defaultsDictionary];

  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumUwbRangeDurationForFingerprintRecording"];
  v37 = [v35 objectForKey:v36];
  if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v37 doubleValue];
  }

  else
  {
    [&unk_286A72588 doubleValue];
  }

  v39 = v38;

  v40 = +[ULDefaultsSingleton shared];
  v41 = [v40 defaultsDictionary];

  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumUwbNumberOfMeasurementsForFingerprintRecording"];
  v43 = [v41 objectForKey:v42];
  if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v44 = [v43 unsignedLongValue];
  }

  else
  {
    v44 = [&unk_286A72588 unsignedLongValue];
  }

  v45 = v44;

  v46 = ULSettings::get<ULSettings::MaximumNumberOfUwbRangeMeasurementsForFingerprint>();
  v52 = 1;
  v56 = &v52;
  v47 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v4, &v52, &std::piecewise_construct, &v56);
  *(v47 + 24) = v31;
  *(v47 + 25) = *v55;
  *(v47 + 7) = *&v55[3];
  v47[4] = v11;
  v47[5] = v51;
  v47[6] = v17;
  v52 = 5;
  v56 = &v52;
  v48 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v4, &v52, &std::piecewise_construct, &v56);
  *(v48 + 24) = v50;
  *(v48 + 25) = *v54;
  *(v48 + 7) = *&v54[3];
  v48[4] = v23;
  v48[5] = v29;
  v48[6] = v30;
  v52 = 6;
  v56 = &v52;
  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v4, &v52, &std::piecewise_construct, &v56);
  *(result + 24) = isUwbRangingSupportedOnDevice;
  *(result + 25) = *v53;
  *(result + 7) = *&v53[3];
  result[4] = v39;
  result[5] = v45;
  result[6] = v46;
  return result;
}

uint64_t ULSettings::get<ULSettings::MinimumTotalNumberOfMeasurementsForFingerprint>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumTotalNumberOfMeasurementsForFingerprint"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72558 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::ProcessOffChannelRssiAP>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULProcessOffChannelRssiAP"];
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

uint64_t ULSettings::get<ULSettings::ProcessInvalidRssiAP>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULProcessInvalidRssiAP"];
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

uint64_t ULSettings::get<ULSettings::MeasurementProcessingWifiRssiEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingWifiRssiEnable"];
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

uint64_t ULSettings::get<ULSettings::MaximumNumberOfWifiRssiMeasurementsForFingerprint>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfWifiRssiMeasurementsForFingerprint"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72570 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MeasurementProcessingBleLeechEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingBleLeechEnable"];
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

uint64_t ULSettings::get<ULSettings::MaximumNumberOfBleRssiMeasurementsForFingerprint>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfBleRssiMeasurementsForFingerprint"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72570 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MeasurementProcessingUwbRangeEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingUwbRangeEnable"];
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

uint64_t ULSettings::get<ULSettings::MaximumNumberOfUwbRangeMeasurementsForFingerprint>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfUwbRangeMeasurementsForFingerprint"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72570 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t *CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings@<X0>(void **__return_ptr a1@<X8>)
{
  *a1 = ULSettings::get<ULSettings::MinimumTotalNumberOfMeasurementsForFingerprint>();
  *(a1 + 8) = ULSettings::get<ULSettings::ProcessOffChannelRssiAP>();
  v2 = ULSettings::get<ULSettings::ProcessInvalidRssiAP>();
  *(a1 + 1) = 0u;
  v3 = a1 + 2;
  *(v3 - 7) = v2;
  *(v3 + 1) = 0u;
  *(v3 + 8) = 1065353216;
  v4 = ULSettings::get<ULSettings::MeasurementProcessingWifiRssiEnable>();
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumWiFiDurationForFingerprintLocalizing"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v8 doubleValue];
  }

  else
  {
    [&unk_286A72F40 doubleValue];
  }

  v10 = v9;

  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumWiFiNumberOfMeasurementsForFingerprintLocalizing"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = [v14 unsignedLongValue];
  }

  else
  {
    v15 = [&unk_286A72540 unsignedLongValue];
  }

  v50 = v15;

  v16 = ULSettings::get<ULSettings::MaximumNumberOfWifiRssiMeasurementsForFingerprint>();
  v49 = ULSettings::get<ULSettings::MeasurementProcessingBleLeechEnable>();
  v17 = +[ULDefaultsSingleton shared];
  v18 = [v17 defaultsDictionary];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumBleDurationForFingerprintLocalizing"];
  v20 = [v18 objectForKey:v19];
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v20 doubleValue];
  }

  else
  {
    [&unk_286A72588 doubleValue];
  }

  v22 = v21;

  v23 = +[ULDefaultsSingleton shared];
  v24 = [v23 defaultsDictionary];

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumBleNumberOfMeasurementsForFingerprintLocalizing"];
  v26 = [v24 objectForKey:v25];
  if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v27 = [v26 unsignedLongValue];
  }

  else
  {
    v27 = [&unk_286A72588 unsignedLongValue];
  }

  v28 = v27;

  v29 = ULSettings::get<ULSettings::MaximumNumberOfBleRssiMeasurementsForFingerprint>();
  v30 = v4;
  v31 = ULSettings::get<ULSettings::MeasurementProcessingUwbRangeEnable>();
  if (v31)
  {
    isUwbRangingSupportedOnDevice = ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(v31);
  }

  else
  {
    isUwbRangingSupportedOnDevice = 0;
  }

  v33 = +[ULDefaultsSingleton shared];
  v34 = [v33 defaultsDictionary];

  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumUwbRangeDurationForFingerprintLocalizing"];
  v36 = [v34 objectForKey:v35];
  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v36 doubleValue];
  }

  else
  {
    [&unk_286A72588 doubleValue];
  }

  v38 = v37;

  v39 = +[ULDefaultsSingleton shared];
  v40 = [v39 defaultsDictionary];

  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumUwbNumberOfMeasurementsForFingerprintLocalizing"];
  v42 = [v40 objectForKey:v41];
  if (v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v43 = [v42 unsignedLongValue];
  }

  else
  {
    v43 = [&unk_286A72588 unsignedLongValue];
  }

  v44 = v43;

  v45 = ULSettings::get<ULSettings::MaximumNumberOfUwbRangeMeasurementsForFingerprint>();
  v51 = 1;
  v55 = &v51;
  v46 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v3, &v51, &std::piecewise_construct, &v55);
  *(v46 + 24) = v30;
  *(v46 + 25) = *v54;
  *(v46 + 7) = *&v54[3];
  v46[4] = v10;
  v46[5] = v50;
  v46[6] = v16;
  v51 = 5;
  v55 = &v51;
  v47 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v3, &v51, &std::piecewise_construct, &v55);
  *(v47 + 24) = v49;
  *(v47 + 25) = *v53;
  *(v47 + 7) = *&v53[3];
  v47[4] = v22;
  v47[5] = v28;
  v47[6] = v29;
  v51 = 6;
  v55 = &v51;
  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v3, &v51, &std::piecewise_construct, &v55);
  *(result + 24) = isUwbRangingSupportedOnDevice;
  *(result + 25) = *v52;
  *(result + 7) = *&v52[3];
  result[4] = v38;
  result[5] = v44;
  result[6] = v45;
  return result;
}

uint64_t CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = &v5;
  v2 = *(a2 + 40);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v4;
  (off_286A5C960[v2])(&v6, a2 + 16);
  return v5;
}

uint64_t CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 40);
  v6 = *(a3 + 40);
  result = v6 == v5;
  if (v5 != -1 && v6 == v5)
  {
    v10[1] = v3;
    v10[2] = v4;
    v10[0] = &v9;
    return (off_286A5C978[v5])(v10, a2 + 16, a3 + 16);
  }

  return result;
}

uint64_t CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v16[4] = *MEMORY[0x277D85DE8];
  CLMicroLocationProto::FingerprintMeasurement::FingerprintMeasurement(a2, a3);
  v5 = *(this + 2);
  if (!CLMicroLocationProto::DataType_IsValid(v5))
  {
    __assert_rtn("set_datatype", "microlocation.pb.h", 12367, "::CLMicroLocationProto::DataType_IsValid(value)");
  }

  v6 = *(a2 + 36);
  *(a2 + 16) = v5;
  *(a2 + 8) = *this;
  *(a2 + 20) = *(this + 3);
  *(a2 + 36) = v6 | 0xF;
  v7 = *(a2 + 24);
  if (!v7)
  {
    operator new();
  }

  v13[0] = &unk_286A5C9D8;
  v13[1] = v7;
  v13[3] = v13;
  v12[0] = &unk_286A5CA68;
  v12[1] = v7;
  v12[3] = v12;
  v11[0] = &unk_286A5CAF8;
  v11[1] = v7;
  v11[3] = v11;
  CLMicroLocationUtils::DeviceIdVisitor<void>::DeviceIdVisitor(v14, v13, v12, v11);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](v13);
  v8 = *(this + 10);
  if (v8 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v10 = v14;
  (off_286A5C990[v8])(&v10, this + 16);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](&v15);
  return std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](v14);
}

void sub_259177E6C(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F90](v2, 0x10A1C4000609EC7);
  CLMicroLocationProto::FingerprintMeasurement::~FingerprintMeasurement(v1);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromProtobuf@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, const CLMicroLocationProto::Measurement *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *(this + 16);
  v6 = *(this + 1);
  MeasurementValue = CLMicroLocationProtobufHelper::getMeasurementValue(this, a2);
  v23.__r_.__value_.__r.__words[0] = 0;
  v24 = 0;
  if (v5 > 3)
  {
    switch(v5)
    {
      case 4:
        v9 = *(this + 5);
        if (!v9)
        {
          v9 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 40);
        }

        goto LABEL_30;
      case 5:
        v15 = *(this + 6);
        if (!v15)
        {
          v7 = CLMicroLocationProto::Measurement::default_instance(v7);
          v15 = *(v7 + 6);
        }

        if ((*(v15 + 64) & 0x80) == 0)
        {
          v16 = *(this + 6);
          if (!v16)
          {
            v7 = CLMicroLocationProto::Measurement::default_instance(v7);
            v16 = *(v7 + 6);
          }

          if ((*(v16 + 64) & 8) != 0)
          {
            v9 = *(this + 6);
            if (!v9)
            {
              v9 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 48);
            }

            goto LABEL_30;
          }

          goto LABEL_40;
        }

        v17 = *(this + 6);
        if (!v17)
        {
          v17 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 48);
        }

        v18 = CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v17 + 48), &v25);
        if (v26 != 1)
        {
          v19 = *(this + 6);
          if (!v19)
          {
            v19 = *(CLMicroLocationProto::Measurement::default_instance(v18) + 48);
          }

          std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(&v23, &v23, *(v19 + 48));
          goto LABEL_40;
        }

        break;
      case 6:
        v10 = *(this + 7);
        if (!v10)
        {
          v10 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 56);
        }

        v11 = CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v10 + 32), &v25);
        if (v26 != 1)
        {
          v12 = *(this + 7);
          if (!v12)
          {
            v12 = *(CLMicroLocationProto::Measurement::default_instance(v11) + 56);
          }

          std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(&v23, &v23, *(v12 + 32));
          goto LABEL_40;
        }

        break;
      default:
        goto LABEL_40;
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v23);
    *&v23.__r_.__value_.__l.__data_ = v25;
    v24 = 1;
    goto LABEL_40;
  }

  switch(v5)
  {
    case 1:
      v13 = *(this + 2);
      if (v13)
      {
        v14 = *(v13 + 24);
      }

      else
      {
        v14 = *(*(CLMicroLocationProto::Measurement::default_instance(v7) + 16) + 24);
      }

      v23.__r_.__value_.__r.__words[0] = v14;
      break;
    case 2:
      v9 = *(this + 3);
      if (!v9)
      {
        v9 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 24);
      }

      goto LABEL_30;
    case 3:
      v9 = *(this + 4);
      if (!v9)
      {
        v9 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 32);
      }

LABEL_30:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(&v23, &v23, *(v9 + 24));
      break;
  }

LABEL_40:
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v22, &v23);
  v20 = MeasurementValue;
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 12) = v20;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a3 + 16, v22);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v22);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v23);
}

void sub_259178154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromWifiMeasurement@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4 = *(this + 2);
  v7[0] = CLMacAddress::toUint64(this + 2);
  v8 = 0;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v6, v7);
  *a2 = v3;
  *(a2 + 8) = 1;
  *(a2 + 12) = v4;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 16, v6);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v6);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v7);
}

void sub_2591781F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromBLEMeasurement@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4 = *(this + 2);
  v7 = *(this + 12);
  v8 = 1;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v6, &v7);
  *a2 = v3;
  *(a2 + 8) = 5;
  *(a2 + 12) = v4;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 16, v6);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v6);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v7);
}

void sub_259178290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromUWBMeasurement@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4 = *(this + 2);
  v7 = *(this + 12);
  v8 = 1;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v6, &v7);
  *a2 = v3;
  *(a2 + 8) = 6;
  *(a2 + 12) = v4;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 16, v6);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v6);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v7);
}

void sub_259178324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromProtobuf@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(this + 4);
  v5 = *(this + 1);
  v6 = *(this + 5);
  v15.__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v7 = *(this + 3);
  if (!v7)
  {
    this = CLMicroLocationProto::FingerprintMeasurement::default_instance(this);
    v7 = *(this + 3);
  }

  v8 = *(v2 + 3);
  if (*(v7 + 28))
  {
    if (!v8)
    {
      v8 = *(CLMicroLocationProto::FingerprintMeasurement::default_instance(this) + 24);
    }

    v15.__r_.__value_.__r.__words[0] = *(v8 + 8);
  }

  else
  {
    if (!v8)
    {
      this = CLMicroLocationProto::FingerprintMeasurement::default_instance(this);
      v8 = *(this + 3);
    }

    if ((*(v8 + 28) & 2) != 0)
    {
      v11 = *(v2 + 3);
      if (!v11)
      {
        v11 = *(CLMicroLocationProto::FingerprintMeasurement::default_instance(this) + 24);
      }

      v12 = CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v11 + 16), buf);
      if (v18 == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v15);
        *&v15.__r_.__value_.__l.__data_ = *buf;
        v16 = 1;
      }

      else
      {
        v13 = *(v2 + 3);
        if (!v13)
        {
          v13 = *(CLMicroLocationProto::FingerprintMeasurement::default_instance(v12) + 24);
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(&v15, &v15, *(v13 + 16));
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationFingerprint::Measurement::fromProtobuf();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Unknown device id", buf, 2u);
      }

      std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,char const(&)[8]>(&v15, &v15, "Unknown");
    }
  }

  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v14, &v15);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 12) = v6;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 16, v14);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v14);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v15);
}

unint64_t CLMicroLocationFingerprint::CLMicroLocationFingerprint(unint64_t a1, uint64_t *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  v4 = (a1 + 200);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v13[0] = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(v13);
  *(a1 + 40) = boost::uuids::random_generator_pure::operator()(v13);
  *(a1 + 48) = v5;
  boost::uuids::detail::random_provider_base::destroy(v13);
  *(a1 + 144) = xmmword_2592211C0;
  v7 = *a2;
  v6 = a2[1];
  if (v7 != v6)
  {
    v8 = 1.79769313e308;
    v9 = 2.22507386e-308;
    do
    {
      v10 = *(v7 + 16);
      if (v10)
      {
        do
        {
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement const&>(a1, (v10 + 2), (v10 + 2));
          v10 = *v10;
        }

        while (v10);
        v8 = *(a1 + 144);
        v9 = *(a1 + 152);
      }

      if (*(v7 + 144) < v8)
      {
        v8 = *(v7 + 144);
      }

      *(a1 + 144) = v8;
      if (v9 < *(v7 + 152))
      {
        v9 = *(v7 + 152);
      }

      *(a1 + 152) = v9;
      v7 += 224;
    }

    while (v7 != v6);
  }

  for (i = (a1 + 16); ; CLMicroLocationFingerprint::updatePerMeasurementFields(a1, (i + 2)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  std::vector<ULPhotoFeaturesDO>::__assign_with_size[abi:ne200100]<ULPhotoFeaturesDO const*,ULPhotoFeaturesDO const*>(v4, 0, 0, 0);
  return a1;
}

void sub_2591786FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = *v5;
  if (*v5)
  {
    *(v3 + 176) = v7;
    operator delete(v7);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v3 + 64);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

uint64_t *CLMicroLocationFingerprint::updatePerMeasurementFields(CLMicroLocationFingerprint *this, const CLMicroLocationFingerprint::Measurement *a2)
{
  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,CLMicroLocationProto::DataType const&>(this + 8, a2 + 2, a2 + 2);
  if (std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(this + 13, a2 + 2))
  {
    result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(this + 13, a2 + 2);
    *&v5.f64[1] = result[4];
    v5.f64[0] = *a2;
    *&v6.f64[0] = result[3];
    v6.f64[1] = *a2;
    *(result + 3) = vbslq_s8(vcgtq_f64(v6, v5), vdupq_lane_s64(*a2, 0), *(result + 3));
  }

  else
  {
    *&v7 = *a2;
    *(&v7 + 1) = v7;
    return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,CLMicroLocationProto::DataType const&,CLMicroLocationFingerprint::StartAndEndTimestamps>(this + 13, a2 + 2, a2 + 2, &v7);
  }

  return result;
}

void CLMicroLocationFingerprint::CLMicroLocationFingerprint(CLMicroLocationFingerprint *this, const CLMicroLocationProto::Fingerprint *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 56) = 0u;
  v4 = (this + 56);
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 1065353216;
  *(this + 18) = 0;
  v5 = (this + 144);
  *(this + 21) = 0;
  *(this + 25) = 0;
  v6 = (this + 200);
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 192) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v7 = *(a2 + 7);
  v8 = *(v7 + 23);
  if ((v8 & 0x80000000) == 0)
  {
    if (v8 != 16)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(this + 40) = *v7;
    goto LABEL_11;
  }

  if (v7[1] == 16)
  {
    v7 = *v7;
    goto LABEL_6;
  }

LABEL_7:
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprint::Measurement::fromProtobuf();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0].var0.var0) = 0;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf fingerprint does not have a valid recording uuid", __p, 2u);
  }

LABEL_11:
  *v5 = *(a2 + 40);
  v10 = *(a2 + 4);
  if (v10 < 1)
  {
    v13 = *(a2 + 20);
    if (v13)
    {
      v14 = *(a2 + 9);
      v15 = 8 * v13;
      do
      {
        CLMicroLocationFingerprint::Measurement::fromProtobuf(*v14, __p);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement>(this, __p, __p);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[0].var0.var2);
        ++v14;
        v15 -= 8;
      }

      while (v15);
    }
  }

  else
  {
    v11 = *(a2 + 1);
    v12 = 8 * v10;
    do
    {
      CLMicroLocationFingerprint::Measurement::fromProtobuf(*v11, a2, __p);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement>(this, __p, __p);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[0].var0.var2);
      ++v11;
      v12 -= 8;
    }

    while (v12);
  }

  for (i = (this + 16); ; CLMicroLocationFingerprint::updatePerMeasurementFields(this, (i + 2)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  if (*(a2 + 120))
  {
    *v4 |= 0x20uLL;
  }

  if (*(a2 + 121) == 1)
  {
    *v4 |= 0x40uLL;
  }

  v17 = *(a2 + 26);
  if (v17)
  {
    v18 = *(a2 + 12);
    v19 = 8 * v17;
    do
    {
      ULPhotoFeaturesDO::ULPhotoFeaturesDO(__p, *v18);
      std::vector<ULPhotoFeaturesDO>::push_back[abi:ne200100](v6, __p);
      if (__p[0].var0.var0)
      {
        __p[0].var0.var1 = __p[0].var0.var0;
        operator delete(__p[0].var0.var0);
      }

      ++v18;
      v19 -= 8;
    }

    while (v19);
  }
}

void sub_259178A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&a16);
  v20 = *v18;
  if (*v18)
  {
    *(v16 + 176) = v20;
    operator delete(v20);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v17);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v16 + 64);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v16);
  _Unwind_Resume(a1);
}

void CLMicroLocationFingerprint::removeExceedingMeasurements(void *a1, std::vector<int>::size_type a2, uint64_t a3)
{
  v3 = a1[2];
  if (v3)
  {
    v4 = a3;
    v7 = 0;
    do
    {
      if (*(v3 + 6) == a3)
      {
        ++v7;
      }

      v3 = *v3;
    }

    while (v3);
    if (v7 > a2)
    {
      memset(&v21, 0, sizeof(v21));
      std::vector<int>::reserve(&v21, v7);
      for (i = a1[2]; i; i = *i)
      {
        if (*(i + 6) == v4)
        {
          end = v21.__end_;
          if (v21.__end_ >= v21.__end_cap_.__value_)
          {
            begin = v21.__begin_;
            v13 = v21.__end_ - v21.__begin_;
            v14 = v21.__end_ - v21.__begin_;
            v15 = v14 + 1;
            if ((v14 + 1) >> 62)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v16 = v21.__end_cap_.__value_ - v21.__begin_;
            if ((v21.__end_cap_.__value_ - v21.__begin_) >> 1 > v15)
            {
              v15 = v16 >> 1;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v17 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(&v21, v17);
            }

            *(4 * v14) = *(i + 7);
            v11 = (4 * v14 + 4);
            memcpy(0, begin, v13);
            v18 = v21.__begin_;
            v21.__begin_ = 0;
            v21.__end_ = v11;
            v21.__end_cap_.__value_ = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            LODWORD(v8) = *(i + 7);
            *v21.__end_ = LODWORD(v8);
            v11 = end + 1;
          }

          v21.__end_ = v11;
        }
      }

      if (v4 <= 7 && ((1 << v4) & 0xC4) != 0)
      {
        CLMicroLocationFingerprint::removeExceedingRangeMeasurements(a1, &v21, a2, v4);
      }

      else
      {
        CLMicroLocationFingerprint::removeExceedingRssiMeasurements(a1, &v21, a2, v4, v8);
      }

      v19 = a1[2];
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = 0;
      do
      {
        if (*(v19 + 6) == v4)
        {
          ++v20;
        }

        v19 = *v19;
      }

      while (v19);
      if (v20 > a2)
      {
        CLMicroLocationFingerprint::removeExceedingMeasurements(&v22);

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationFingerprint.mm", 407, "removeExceedingMeasurements");
        __break(1u);
      }

      else
      {
LABEL_33:
        if (v21.__begin_)
        {
          v21.__end_ = v21.__begin_;
          operator delete(v21.__begin_);
        }
      }
    }
  }
}

void sub_259178CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationFingerprint::removeExceedingRssiMeasurements(void *a1, uint64_t *a2, uint64_t a3, int a4, double a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = 126 - 2 * __clz((v10 - v9) >> 2);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v9, v10, v17, v12, 1, a5);
  v14 = a1[2];
  if (v14)
  {
    v15 = *(*a2 + 4 * a3);
    do
    {
      while (*(v14 + 6) != a4 || *(v14 + 7) > v15)
      {
        v14 = *v14;
        if (!v14)
        {
          return result;
        }
      }

      v16 = *v14;
      std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, v14, v17);
      result = std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](v17);
      v14 = v16;
    }

    while (v16);
  }

  return result;
}

uint64_t CLMicroLocationFingerprint::removeExceedingRangeMeasurements(void *a1, void *a2, uint64_t a3, int a4)
{
  result = std::__sort<std::__less<float,float> &,float *>();
  v9 = a1[2];
  if (v9)
  {
    v10 = *(*a2 + 4 * a3);
    do
    {
      while (*(v9 + 6) != a4 || *(v9 + 7) < v10)
      {
        v9 = *v9;
        if (!v9)
        {
          return result;
        }
      }

      v11 = *v9;
      std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, v9, v12);
      result = std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](v12);
      v9 = v11;
    }

    while (v11);
  }

  return result;
}

void CLMicroLocationFingerprint::UpdateFingerprintWithMeasurementsAndConfiguration(unint64_t a1, void *a2, uint64_t a3, int a4, char a5)
{
  v9 = a2[2];
  if (v9)
  {
    v11 = 2.22507386e-308;
    v12 = 1.79769313e308;
    do
    {
      v13 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__equal_range_multi<CLMicroLocationFingerprint::Measurement>(a2, v9 + 16);
      v15 = v14;
      LODWORD(v32) = *(v9 + 24);
      v16 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((a3 + 16), &v32);
      v17 = v16 + 3;
      if (!v16)
      {
        v17 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
      }

      if (*v17 == 1 && v13 != v15)
      {
        v19 = 0.0;
        v20 = 0.0;
        do
        {
          v21 = *(v13 + 16);
          if (v21 < v12)
          {
            v12 = *(v13 + 16);
          }

          if (v21 > v11)
          {
            v11 = *(v13 + 16);
          }

          CLMicroLocationFingerprint::updatePerMeasurementFields(a1, (v13 + 16));
          v20 = v20 + 1.0;
          v19 = v19 + *(v13 + 28);
          v13 = *v13;
        }

        while (v13 != v15);
        if (v20 > 0.0)
        {
          v32 = *(v9 + 16);
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v33, v9 + 32);
          v22 = v19 / v20;
          *(&v32 + 3) = v22;
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement const&>(a1, &v32, &v32);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v33);
        }
      }

      v9 = v15;
    }

    while (v15);
  }

  else
  {
    v12 = 1.79769313e308;
    v11 = 2.22507386e-308;
  }

  *(a1 + 144) = v12;
  *(a1 + 152) = v11;
  v23 = *(a1 + 200);
  v24 = *(a1 + 208);
  while (v23 != v24)
  {
    if (*(v23 + 24) < v12)
    {
      v12 = *(v23 + 24);
    }

    *(a1 + 144) = v12;
    if (v11 < *(v23 + 24))
    {
      v11 = *(v23 + 24);
    }

    *(a1 + 152) = v11;
    v23 += 32;
  }

  for (i = *(a1 + 80); i; i = *i)
  {
    LODWORD(v32) = *(i + 4);
    v26 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((a3 + 16), &v32);
    v27 = v26 + 3;
    if (!v26)
    {
      v27 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
    }

    CLMicroLocationFingerprint::removeExceedingMeasurements(a1, v27[3], *(i + 4));
  }

  if (a5)
  {
    v28 = *(a1 + 16);
    if (!v28)
    {
      goto LABEL_38;
    }

    v29 = 0;
    do
    {
      if (*(v28 + 6) == 5)
      {
        ++v29;
      }

      v28 = *v28;
    }

    while (v28);
    if (!v29)
    {
LABEL_38:
      *(a1 + 56) |= 0x20uLL;
    }
  }

  if (a4)
  {
    v30 = *(a1 + 16);
    if (!v30)
    {
      goto LABEL_46;
    }

    v31 = 0;
    do
    {
      if (*(v30 + 6) == 6)
      {
        ++v31;
      }

      v30 = *v30;
    }

    while (v30);
    if (!v31)
    {
LABEL_46:
      *(a1 + 56) |= 0x40uLL;
    }
  }
}

uint64_t CLMicroLocationFingerprint::isFingerprintValid(void *a1, unint64_t *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  *buf = 1;
  v4 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a2 + 2, buf);
  v5 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
  if (v4)
  {
    v6 = (v4 + 3);
  }

  else
  {
    v6 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
  }

  *buf = 5;
  v7 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a2 + 2, buf);
  if (v7)
  {
    v8 = (v7 + 3);
  }

  else
  {
    v8 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
  }

  *buf = 6;
  v9 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a2 + 2, buf);
  if (v9)
  {
    v5 = (v9 + 3);
  }

  *buf = 1;
  v10 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a1 + 13, buf);
  if (v10)
  {
    v11 = *(v10 + 4) - *(v10 + 3);
  }

  else
  {
    v11 = 0.0;
  }

  *buf = 5;
  v12 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a1 + 13, buf);
  if (v12)
  {
    v13 = *(v12 + 4) - *(v12 + 3);
  }

  else
  {
    v13 = 0.0;
  }

  *buf = 6;
  v14 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a1 + 13, buf);
  if (v14)
  {
    v15 = *(v14 + 4) - *(v14 + 3);
  }

  else
  {
    v15 = 0.0;
  }

  v16 = *v6;
  v17 = v16 != 1 || v11 >= v6[1];
  v18 = *v8;
  v19 = v18 != 1 || v13 >= v8[1];
  v20 = *v5;
  if (v20 == 1)
  {
    v21 = v15 >= v5[1];
    if (!v17)
    {
LABEL_26:
      v39 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v21 = 1;
    if (!v17)
    {
      goto LABEL_26;
    }
  }

  v39 = v19 && v21;
LABEL_29:
  v22 = a1[2];
  if (v22)
  {
    v23 = 0;
    v24 = a1[2];
    do
    {
      if (*(v24 + 6) == 1)
      {
        ++v23;
      }

      v24 = *v24;
    }

    while (v24);
    v25 = 0;
    v26 = a1[2];
    do
    {
      if (*(v26 + 6) == 5)
      {
        ++v25;
      }

      v26 = *v26;
    }

    while (v26);
    v27 = 0;
    do
    {
      if (*(v22 + 6) == 6)
      {
        ++v27;
      }

      v22 = *v22;
    }

    while (v22);
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v27 = 0;
  }

  v28 = v16 ^ 1;
  if (v23 >= *(v6 + 2))
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  if (v29 == 1)
  {
    v30 = v18 ^ 1;
    if (v25 >= *(v8 + 2))
    {
      v30 = 1;
    }

    v31 = v30 & (v20 ^ 1 | (v27 >= *(v5 + 2)));
  }

  else
  {
    v31 = 0;
  }

  v32 = a1[3];
  v33 = *a2;
  if (*a2 > v32)
  {
    v31 = 0;
  }

  if (v39)
  {
    v34 = v31;
  }

  else
  {
    v34 = 0;
  }

  if (a1[26] == a1[25])
  {
    v35 = v34;
  }

  else
  {
    v35 = 1;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprint::isFingerprintValid();
  }

  v36 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v37 = (a1[26] - a1[25]) >> 5;
    *buf = 68292354;
    v42 = 2082;
    v41 = 0;
    v43 = "";
    v44 = 2050;
    v45 = v23;
    v46 = 2050;
    v47 = v25;
    v48 = 2050;
    v49 = v27;
    v50 = 2050;
    v51 = v37;
    v52 = 2050;
    v53 = v32;
    v54 = 2050;
    v55 = v11;
    v56 = 1026;
    v57 = v29;
    v58 = 1026;
    v59 = v33 <= v32;
    v60 = 1026;
    v61 = v39;
    v62 = 1026;
    v63 = v34;
    v64 = 1026;
    v65 = v35;
    v66 = 2050;
    v67 = v13;
    v68 = 2050;
    v69 = v15;
    _os_log_impl(&dword_258FE9000, v36, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Fingerprint creation, NumWiFiMeasurements:%{public}lu, NumBLEMeasurements:%{public}lu, NumUWBMeasurements:%{public}lu, NumPhotoFeature Vectors:%{public}lu, number of total measurements:%{public}lu, WiFi RSSI duration_s:%{public}.09f, enough WiFi measurements:%{public}hhd, enough total measurements:%{public}hhd, isDurationValid:%{public}hhd, is RF valid:%{public}hhd, is Fingerprint Valid:%{public}hhd, BLE Duration_s:%{public}.09f, UWB Duration_s:%{public}.09f}", buf, 0x80u);
  }

  return v35;
}
void nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::getPersonFullNameSpans(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    if (nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::isUVPersonFullNameSpan(a1, v5))
    {
      std::vector<sirinluinternal::MatchingSpan>::push_back[abi:ne200100](a3, v5);
    }

    v5 += 11;
  }

  v7 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 24);
    v9 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
    v10 = 136315394;
    v11 = v8;
    v12 = 2048;
    v13 = v9;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] Found %lu personFullName matching spans", &v10, 0x16u);
  }
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::ContactAddressDowncaster(uint64_t a1, _OWORD **a2, uint64_t *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(a1, "TreeManipulation_ContactAddressDowncaster");
  v6[3] = "contact_address_downcast";
  v7 = v6 + 4;
  std::string::basic_string[abi:ne200100]<0>(v6 + 4, "emailAddress");
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "phoneNumber");
  v8 = *(a1 + 55);
  if (v8 < 0)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
  }

  else
  {
    v9 = v7;
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::getMatchingSpans(a1, a3, v9, v8, (a1 + 80));
  v10 = *(a1 + 79);
  if (v10 < 0)
  {
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
  }

  else
  {
    v11 = (a1 + 56);
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::getMatchingSpans(a1, a3, v11, v10, (a1 + 104));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::IndexedToken*,nlv4_inference_orchestrator::orchestration::IndexedToken*>(a1 + 128, *a2, a2[1], 0x8E38E38E38E38E39 * (a2[1] - *a2));
  return a1;
}

void sub_222897AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 79) < 0)
  {
    operator delete(*v5);
  }

  if (*(v3 + 55) < 0)
  {
    operator delete(*v4);
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::getMatchingSpans(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      if (nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::isRelevantMatchingSpan(v8, a3, a4))
      {
        std::vector<sirinluinternal::MatchingSpan>::push_back[abi:ne200100](a5, v8);
      }

      v8 += 11;
    }

    while (v8 != v9);
  }

  v11 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 24);
    v13 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3);
    v14 = 136315650;
    v15 = v12;
    v16 = 2048;
    v17 = v13;
    v18 = 2080;
    v19 = a3;
    _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] After filtering, we have %lu %s matching spans", &v14, 0x20u);
  }
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::MinimumMaximumLabeller(uint64_t a1, uint64_t *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, "TreeManipulation_MinimumMaximumLabeller");
  v4[3] = "min_max_labeller";
  std::string::basic_string[abi:ne200100]<0>(v4 + 4, "minimumMaximum");
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "floatSettingState");
  std::string::basic_string[abi:ne200100]<0>((a1 + 80), "minimum");
  std::string::basic_string[abi:ne200100]<0>((a1 + 104), "maximum");
  nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::correctLabelGivenSpans(a1, a2, (a1 + 128));
  return a1;
}

void sub_222897CFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::hasMatchingSpans(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    v13 = 0;
  }

  else
  {
    do
    {
      v13 = nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::doesMatchingSpanHaveLabelAndSemanticValue(v9, a3, a4, a5, a6);
      if (v13)
      {
        break;
      }

      v9 += 11;
    }

    while (v9 != v10);
  }

  v14 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 24);
    v17 = 136315906;
    v18 = v15;
    v19 = 2080;
    v20 = a3;
    v21 = 2080;
    v22 = a5;
    v23 = 1024;
    v24 = v13;
    _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "[%s] MatchingSpan with label %s, semantic value %s found?: %{BOOL}d", &v17, 0x26u);
  }

  return v13;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::correctLabelGivenSpans(char *a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v6 = a1 + 32;
  v7 = a1[55];
  if (v7 < 0)
  {
    v8 = *(a1 + 4);
    v7 = *(a1 + 5);
  }

  else
  {
    v8 = a1 + 32;
  }

  v9 = a1[103];
  if (v9 < 0)
  {
    v10 = *(a1 + 10);
    v9 = *(a1 + 11);
  }

  else
  {
    v10 = a1 + 80;
  }

  v11 = nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::hasMatchingSpans(a1, a2, v8, v7, v10, v9);
  v12 = a1[55];
  if (v12 < 0)
  {
    v13 = *(a1 + 4);
    v12 = *(a1 + 5);
  }

  else
  {
    v13 = v6;
  }

  v14 = a1[127];
  if (v14 < 0)
  {
    v15 = *(a1 + 13);
    v14 = *(a1 + 14);
  }

  else
  {
    v15 = a1 + 104;
  }

  if (v11 | nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::hasMatchingSpans(a1, a2, v13, v12, v15, v14))
  {
    v16 = v6;
  }

  else
  {
    v16 = a1 + 56;
  }

  if (v16[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v16, *(v16 + 1));
  }

  else
  {
    __p = *v16;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::correctLabelGivenSpecificSpans(a1, a2, p_p, size, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_222897FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::correctLabelGivenSpecificSpans(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  a5->__r_.__value_.__s.__data_[0] = 0;
  a5[1].__r_.__value_.__s.__data_[0] = 0;
  v10 = (a1 + 80);
  v11 = *(a1 + 103);
  if (v11 < 0)
  {
    v12 = *(a1 + 80);
    v11 = *(a1 + 88);
  }

  else
  {
    v12 = (a1 + 80);
  }

  v13 = nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::hasMatchingSpans(a1, a2, a3, a4, v12, v11);
  v14 = (a1 + 104);
  v15 = *(a1 + 127);
  if (v15 < 0)
  {
    v16 = *(a1 + 104);
    v15 = *(a1 + 112);
  }

  else
  {
    v16 = (a1 + 104);
  }

  v17 = nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::hasMatchingSpans(a1, a2, a3, a4, v16, v15);
  v18 = v13 ^ 1;
  if ((v17 & 1) == 0 && (v18 & 1) == 0)
  {
    v19 = siri::ontology::oname::graph::ontology_init::common_Number_MinimumValue(v17);
LABEL_19:
    std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(a5, (v19 + 8));
    return;
  }

  if (((v13 | v17 ^ 1) & 1) == 0)
  {
    v19 = siri::ontology::oname::graph::ontology_init::common_Number_MaximumValue(v17);
    goto LABEL_19;
  }

  if (((v18 | v17 ^ 1) & 1) == 0)
  {
    v20 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 103) < 0)
      {
        v10 = *v10;
      }

      v21 = *(a1 + 24);
      if (*(a1 + 127) < 0)
      {
        v14 = *v14;
      }

      v22 = 136315906;
      v23 = v21;
      v24 = 2080;
      v25 = v10;
      v26 = 2080;
      v27 = v14;
      v28 = 2080;
      v29 = a3;
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "[%s] Both %s and %s semantic values found when using %s spans", &v22, 0x2Au);
    }
  }
}

void sub_222898188(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::OneShotReplyRemodeller::OneShotReplyRemodeller(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, "TreeManipulation_OneShotReplyRemodeller");
  std::string::basic_string[abi:ne200100]<0>(v4 + 3, "UserAccepted");
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "UserStatedTask");
  if (*(a2 + 112) == 1)
  {
    v5 = *(a2 + 88);
    v6 = *(a2 + 96);
    for (i = v5; i != v6; i += 8)
    {
      v8 = *(*i + 32);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          if (nlv4_inference_orchestrator::post_processing::tree_manipulations::OneShotReplyRemodeller::udaContainsReplyMessageGraph(v9))
          {
            v10 = 1;
            goto LABEL_9;
          }
        }
      }
    }
  }

  v10 = 0;
LABEL_9:
  *(a1 + 72) = v10;
  return a1;
}

void sub_222898260(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::ReplaceFromPersonRecipientHack(uint64_t a1, _OWORD **a2, const sirinluinternal::MatchingSpan **a3, __int128 *a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(a1, "TreeManipulation_ReplaceFromPersonRecipient");
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::IndexedToken*,nlv4_inference_orchestrator::orchestration::IndexedToken*>((v8 + 3), *a2, a2[1], 0x8E38E38E38E38E39 * (a2[1] - *a2));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 104) = *(a4 + 2);
    *(a1 + 88) = v9;
  }

  std::string::basic_string[abi:ne200100]<0>((a1 + 112), "common_Message");
  std::string::basic_string[abi:ne200100]<0>((a1 + 136), "common_Person");
  std::string::basic_string[abi:ne200100]<0>((a1 + 160), "common_PersonRelationship");
  std::string::basic_string[abi:ne200100]<0>((a1 + 184), "fromPerson");
  std::string::basic_string[abi:ne200100]<0>((a1 + 208), "identifyingRelationship");
  std::string::basic_string[abi:ne200100]<0>((a1 + 232), "name");
  std::string::basic_string[abi:ne200100]<0>((a1 + 256), "personFullName");
  std::string::basic_string[abi:ne200100]<0>((a1 + 280), "recipients");
  std::string::basic_string[abi:ne200100]<0>((a1 + 304), "relationshipType");
  std::string::basic_string[abi:ne200100]<0>((a1 + 328), "ROOT");
  std::string::basic_string[abi:ne200100]<0>((a1 + 352), "target");
  nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::mapPersonFullNameMatchingSpans(a1, a3);
  return a1;
}

void sub_222898414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>>>::~__hash_table(v4);
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::mapPersonFullNameMatchingSpans(uint64_t a1, const sirinluinternal::MatchingSpan **a2)
{
  memset(v16, 0, sizeof(v16));
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = (a1 + 256);
    do
    {
      v6 = *(v2 + 6);
      if (v6)
      {
        v7 = *(a1 + 279);
        if (v7 >= 0)
        {
          v8 = *(a1 + 279);
        }

        else
        {
          v8 = *(a1 + 264);
        }

        v9 = *(v6 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v6 + 8);
        }

        if (v8 == v9)
        {
          if (v7 >= 0)
          {
            v11 = v5;
          }

          else
          {
            v11 = *v5;
          }

          if (v10 >= 0)
          {
            v12 = *(v2 + 6);
          }

          else
          {
            v12 = *v6;
          }

          if (!memcmp(v11, v12, v8))
          {
            Utf16IndicesFromMatchingSpan = nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::getUtf16IndicesFromMatchingSpan(a1, v2);
            nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::getFullNameFromMatchingSpan(a1, v2);
            nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::addPersonFullNameSpanToMap(a1, __p, Utf16IndicesFromMatchingSpan);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v2 = (v2 + 88);
    }

    while (v2 != v3);
  }

  __p[0] = v16;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_222898670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::SetNumberVerbReplacer(uint64_t a1, uint64_t *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, "TreeManipulation_SetNumber_VerbReplacement");
  v4[3] = "relative_set_number_verb";
  std::string::basic_string[abi:ne200100]<0>(v4 + 4, "common_Setting");
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), ".");
  std::string::basic_string[abi:ne200100]<0>((a1 + 80), "setNumber");
  *(a1 + 104) = nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::hasSetNumberVocSpans(a1, a2);
  return a1;
}

void sub_222898724(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::splitContactTypes(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *this, std::string *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(this + 3);
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "[%s] Splitting common_Person nodes in-place", buf, 0xCu);
  }

  v6 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(this + 3);
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] Iterating through all tree nodes", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  *buf = 0u;
  v23 = a2;
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(buf, &v23);
  v8 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v9 = 0;
    do
    {
      v10 = v8 - 1;
      v11 = *(*(*&buf[8] + (((v28 + v10) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v28 + v10) & 0x1FF));
      *(&v28 + 1) = v10;
      std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](buf);
      v12 = *(this + 3);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v13 = *(v11 + 88);
      if (v13 == *(v11 + 96))
      {
        v15 = 0;
      }

      else
      {
        v22 = v9;
        v14 = *(v11 + 88);
        do
        {
          if (nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::splitCommonPersonNodes(this, &v23, v14))
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<nlv4_inference_orchestrator::trees::TreeNode const*>>>(1uLL);
          }

          v14 += 18;
          v13 += 144;
        }

        while (v14 != *(v11 + 96));
        v15 = 0;
        v9 = v22;
      }

      if (v23 != v24)
      {
        v16 = SNLPOSLoggerForCategory(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v29 = 136315394;
          *&v29[4] = v12;
          v30 = 2048;
          v31 = 0x8E38E38E38E38E39 * ((v24 - v23) >> 4);
          _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_DEBUG, "[%s] Inserting %lu spawned nodes", v29, 0x16u);
        }

        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::reserve((v11 + 88), 0x8E38E38E38E38E39 * ((*(v11 + 96) - *(v11 + 88)) >> 4) - 0x71C71C71C71C71C7 * ((v24 - v23) >> 4));
        std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,std::back_insert_iterator<std::vector<nlv4_inference_orchestrator::trees::TreeNode>>>(v23, v24, (v11 + 88));
        v15 = 1;
      }

      *v29 = &v23;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v29);
      v17 = *(v11 + 88);
      v18 = *(v11 + 96);
      while (v17 != v18)
      {
        v23 = v17;
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(buf, &v23);
        v17 += 6;
      }

      v9 |= v15;
      v8 = *(&v28 + 1);
    }

    while (*(&v28 + 1));
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](buf);
  v19 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(this + 3);
    *buf = 136315138;
    *&buf[4] = v20;
    _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "[%s] Finished iterating through all tree nodes", buf, 0xCu);
  }

  return v9 & 1;
}

void sub_222898C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::splitPersonNames(nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  memset(buf, 0, sizeof(buf));
  v29 = a2;
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(buf, &v29);
  v4 = *(&v31 + 1);
  if (*(&v31 + 1))
  {
    v5 = 0;
    do
    {
      v6 = v4 - 1;
      v7 = *(*(*&buf[8] + (((v31 + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v31 + v6) & 0x1FF));
      *(&v31 + 1) = v6;
      std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](buf);
      isCommonPersonNode = nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::isCommonPersonNode(v7, v8);
      v11 = v7[11];
      v10 = v7[12];
      while (v11 != v10)
      {
        v29 = v11;
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(buf, &v29);
        v11 = (v11 + 144);
      }

      v5 += isCommonPersonNode;
      v4 = *(&v31 + 1);
    }

    while (*(&v31 + 1));
    std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](buf);
    if (v5 > 1)
    {
      v12 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(this + 3);
        *buf = 136315138;
        *&buf[4] = v13;
        _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "[%s] Splitting common_Person nodes in-place", buf, 0xCu);
      }

      v14 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(this + 3);
        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "[%s] Iterating through all tree nodes", buf, 0xCu);
      }

      v31 = 0u;
      memset(buf, 0, sizeof(buf));
      v29 = a2;
      std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(buf, &v29);
      v16 = *(&v31 + 1);
      if (*(&v31 + 1))
      {
        v17 = 0;
        do
        {
          v18 = v16 - 1;
          v19 = *(*(*&buf[8] + (((v31 + v18) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v31 + v18) & 0x1FF));
          *(&v31 + 1) = v18;
          std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](buf);
          v28 = 0;
          nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::handleTreeNode(this, v19, &v28);
          v20 = v28;
          v22 = *(v19 + 11);
          v21 = *(v19 + 12);
          while (v22 != v21)
          {
            v29 = v22;
            std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(buf, &v29);
            v22 = (v22 + 144);
          }

          v17 |= v20;
          v16 = *(&v31 + 1);
        }

        while (*(&v31 + 1));
      }

      else
      {
        v17 = 0;
      }

      std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](buf);
      v26 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = *(this + 3);
        *buf = 136315138;
        *&buf[4] = v27;
        _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_DEBUG, "[%s] Finished iterating through all tree nodes", buf, 0xCu);
      }

      return v17 & 1;
    }
  }

  else
  {
    std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](buf);
    v5 = 0;
  }

  v23 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(this + 3);
    *buf = 136315650;
    *&buf[4] = v24;
    *&buf[12] = 2048;
    *&buf[14] = v5;
    *&buf[22] = 2048;
    *&buf[24] = 2;
    _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_DEBUG, "[%s] Since the model itself predicted only %lu common_Person nodes (lower than the threshold of %lu), do not apply the name split hack", buf, 0x20u);
  }

  v17 = 0;
  return v17 & 1;
}

void sub_222898FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::handleTreeNode(char **this, nlv4_inference_orchestrator::trees::TreeNode *a2, BOOL *a3)
{
  *a3 = 0;
  if (nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::isCommonContactAddressNode(a2, a2))
  {
    nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::findTokenIndicesOfUngroundedNode(&v13, this, a2);
    if (v15 == 1)
    {
      v7 = v13;
      v8 = v14;
      for (i = this[10]; i != this[11]; i += 88)
      {
        if ((i[80] & 2) != 0 && (i[80] & 1) != 0 && v13 == *(i + 19) && v14 == *(i + 18))
        {
          v10 = siri::ontology::oname::graph::ontology_init::common_EmailAddress(v6);
          v6 = std::string::operator=(a2, (v10 + 8));
          *a3 = 1;
          break;
        }
      }

      for (j = this[13]; j != this[14]; j += 88)
      {
        if ((j[80] & 2) != 0 && (j[80] & 1) != 0 && v7 == *(j + 19) && v8 == *(j + 18))
        {
          v12 = siri::ontology::oname::graph::ontology_init::common_PhoneNumber(v6);
          std::string::operator=(a2, (v12 + 8));
          *a3 = 1;
          return;
        }
      }
    }
  }
}

void std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 7;
      do
      {
        v8 = v6;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v8);
        if (*(v6 - 17) < 0)
        {
          operator delete(*(v6 - 5));
        }

        if (*(v6 - 41) < 0)
        {
          operator delete(*(v6 - 8));
        }

        if (*(v6 - 65) < 0)
        {
          operator delete(*(v6 - 11));
        }

        v7 = v6 - 11;
        v6 -= 18;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(uint64_t *result, nlv4_inference_orchestrator::trees::TreeNode *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_222899210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0x1A];
    v7 = *v6 + 152 * v5 + -3952 * (v5 / 0x1A);
    v8 = v2[(*(a1 + 40) + v5) / 0x1A] + 152 * *(a1 + 40) + 152 * v5 + -3952 * ((*(a1 + 40) + v5) / 0x1A);
    if (v7 != v8)
    {
      do
      {
        v17 = (v7 + 88);
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v17);
        if (*(v7 + 71) < 0)
        {
          operator delete(*(v7 + 48));
        }

        if (*(v7 + 47) < 0)
        {
          operator delete(*(v7 + 24));
        }

        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        v7 += 152;
        if (v7 - *v6 == 3952)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    v10 = v3;
  }

  *v4 = 0;
  v11 = v10 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 13;
    goto LABEL_21;
  }

  if (v11 == 2)
  {
    v12 = 26;
LABEL_21:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 11;
      v7 = v4 - 11;
      v8 = v4 - 11;
      do
      {
        v9 = *v8;
        v8 -= 11;
        (*v9)(v7);
        v6 -= 11;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::TreeManipulations::applyManipulationSteps(uint64_t a1, std::string *a2, uint64_t a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::splitContactTypes((a1 + 32), a2);
  v7 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = p_p, _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "Tree after ContactTypeSplit step:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (!v6)
  {
    goto LABEL_20;
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __p = *(a1 + 32);
  }

  v9 = *(a3 + 8);
  if (v9 >= *(a3 + 16))
  {
    v11 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = *&__p.__r_.__value_.__l.__data_;
      *(v9 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v9 = v10;
    }

    v11 = (v9 + 24);
    *(a3 + 8) = v9 + 24;
  }

  *(a3 + 8) = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  v12 = nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::splitPersonNames((a1 + 784), a2);
  v13 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v14 = &__p) : (v14 = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = v14, _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEBUG, "Tree after PersonNameSplitHack step:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v12)
    {
      goto LABEL_39;
    }
  }

  else if (!v12)
  {
    goto LABEL_39;
  }

  if (*(a1 + 807) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 784), *(a1 + 792));
  }

  else
  {
    __p = *(a1 + 784);
  }

  v15 = *(a3 + 8);
  if (v15 >= *(a3 + 16))
  {
    v17 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v16 = *&__p.__r_.__value_.__l.__data_;
      *(v15 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v15 = v16;
    }

    v17 = (v15 + 24);
    *(a3 + 8) = v15 + 24;
  }

  *(a3 + 8) = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_39:
  v18 = nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::transform((a1 + 864), a2);
  v19 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v20 = &__p) : (v20 = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = v20, _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "Tree after GroupNameTransform step:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v18)
    {
      goto LABEL_58;
    }
  }

  else if (!v18)
  {
    goto LABEL_58;
  }

  if (*(a1 + 887) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 864), *(a1 + 872));
  }

  else
  {
    __p = *(a1 + 864);
  }

  v21 = *(a3 + 8);
  if (v21 >= *(a3 + 16))
  {
    v23 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = *&__p.__r_.__value_.__l.__data_;
      *(v21 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v21 = v22;
    }

    v23 = (v21 + 24);
    *(a3 + 8) = v21 + 24;
  }

  *(a3 + 8) = v23;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_58:
  v24 = nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::downcast((a1 + 1016), a2);
  v25 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v26 = &__p) : (v26 = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = v26, _os_log_impl(&dword_22284A000, v25, OS_LOG_TYPE_DEBUG, "Tree after ContactAddressDowncaster step:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v24)
    {
      goto LABEL_77;
    }
  }

  else if (!v24)
  {
    goto LABEL_77;
  }

  if (*(a1 + 1039) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 1016), *(a1 + 1024));
  }

  else
  {
    __p = *(a1 + 1016);
  }

  v27 = *(a3 + 8);
  if (v27 >= *(a3 + 16))
  {
    v29 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = *&__p.__r_.__value_.__l.__data_;
      *(v27 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v27 = v28;
    }

    v29 = (v27 + 24);
    *(a3 + 8) = v27 + 24;
  }

  *(a3 + 8) = v29;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_77:
  v30 = nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::apply((a1 + 216), a2);
  v31 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v32 = &__p) : (v32 = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = v32, _os_log_impl(&dword_22284A000, v31, OS_LOG_TYPE_DEBUG, "Tree after DefaultMediaPlaybackSpeed step:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v30)
    {
      goto LABEL_96;
    }
  }

  else if (!v30)
  {
    goto LABEL_96;
  }

  if (*(a1 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    __p = *(a1 + 216);
  }

  v33 = *(a3 + 8);
  if (v33 >= *(a3 + 16))
  {
    v35 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v34 = *&__p.__r_.__value_.__l.__data_;
      *(v33 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v33 = v34;
    }

    v35 = (v33 + 24);
    *(a3 + 8) = v33 + 24;
  }

  *(a3 + 8) = v35;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_96:
  v36 = nlv4_inference_orchestrator::post_processing::tree_manipulations::SetIdentityPromoter::promote((a1 + 1896), a2);
  v37 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v38 = &__p) : (v38 = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = v38, _os_log_impl(&dword_22284A000, v37, OS_LOG_TYPE_DEBUG, "Tree after SetIdentityPromoter step:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v36)
    {
      goto LABEL_115;
    }
  }

  else if (!v36)
  {
    goto LABEL_115;
  }

  if (*(a1 + 1919) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 1896), *(a1 + 1904));
  }

  else
  {
    __p = *(a1 + 1896);
  }

  v39 = *(a3 + 8);
  if (v39 >= *(a3 + 16))
  {
    v41 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v40 = *&__p.__r_.__value_.__l.__data_;
      *(v39 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v39 = v40;
    }

    v41 = (v39 + 24);
    *(a3 + 8) = v39 + 24;
  }

  *(a3 + 8) = v41;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_115:
  if (*(a1 + 24) == 1)
  {
    v42 = nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::label((a1 + 1168), a2);
    v43 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v44 = &__p) : (v44 = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = v44, _os_log_impl(&dword_22284A000, v43, OS_LOG_TYPE_DEBUG, "Tree after MinimumMaximumLabeller labelling:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v42)
      {
        goto LABEL_135;
      }
    }

    else if (!v42)
    {
      goto LABEL_135;
    }

    if (*(a1 + 1191) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 1168), *(a1 + 1176));
    }

    else
    {
      __p = *(a1 + 1168);
    }

    v45 = *(a3 + 8);
    if (v45 >= *(a3 + 16))
    {
      v47 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v46 = *&__p.__r_.__value_.__l.__data_;
        *(v45 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v45 = v46;
      }

      v47 = (v45 + 24);
      *(a3 + 8) = v45 + 24;
    }

    *(a3 + 8) = v47;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_135:
  v48 = nlv4_inference_orchestrator::post_processing::tree_manipulations::OneShotReplyRemodeller::apply((a1 + 1328), a2);
  v49 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v50 = &__p) : (v50 = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = v50, _os_log_impl(&dword_22284A000, v49, OS_LOG_TYPE_DEBUG, "Tree after One Shot Reply check:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v48)
    {
      goto LABEL_154;
    }
  }

  else if (!v48)
  {
    goto LABEL_154;
  }

  if (*(a1 + 1351) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 1328), *(a1 + 1336));
  }

  else
  {
    __p = *(a1 + 1328);
  }

  v51 = *(a3 + 8);
  if (v51 >= *(a3 + 16))
  {
    v53 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v52 = *&__p.__r_.__value_.__l.__data_;
      *(v51 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v51 = v52;
    }

    v53 = (v51 + 24);
    *(a3 + 8) = v51 + 24;
  }

  *(a3 + 8) = v53;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_154:
  v54 = nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::apply((a1 + 1784), a2);
  v55 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v56 = &__p) : (v56 = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = v56, _os_log_impl(&dword_22284A000, v55, OS_LOG_TYPE_DEBUG, "Tree after SetNumber verb replacement:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v54)
    {
      goto LABEL_173;
    }
  }

  else if (!v54)
  {
    goto LABEL_173;
  }

  if (*(a1 + 1807) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 1784), *(a1 + 1792));
  }

  else
  {
    __p = *(a1 + 1784);
  }

  v57 = *(a3 + 8);
  if (v57 >= *(a3 + 16))
  {
    v59 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = *&__p.__r_.__value_.__l.__data_;
      *(v57 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v57 = v58;
    }

    v59 = (v57 + 24);
    *(a3 + 8) = v57 + 24;
  }

  *(a3 + 8) = v59;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_173:
  v60 = nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientInTree((a1 + 1408), a2);
  v61 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG) && ((nlv4_inference_orchestrator::trees::printTree(&__p, a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v62 = &__p) : (v62 = __p.__r_.__value_.__r.__words[0]), *buf = 136642819, v68 = v62, _os_log_impl(&dword_22284A000, v61, OS_LOG_TYPE_DEBUG, "Tree after fromPerson recipient replacement:\n%{sensitive}s", buf, 0xCu), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v60)
    {
      return;
    }
  }

  else if (!v60)
  {
    return;
  }

  if (*(a1 + 1431) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 1408), *(a1 + 1416));
  }

  else
  {
    __p = *(a1 + 1408);
  }

  v63 = *(a3 + 8);
  if (v63 >= *(a3 + 16))
  {
    v65 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(a3, &__p);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v64 = *&__p.__r_.__value_.__l.__data_;
      *(v63 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v63 = v64;
    }

    v65 = (v63 + 24);
    *(a3 + 8) = v63 + 24;
  }

  *(a3 + 8) = v65;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_22289A0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::apply(nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  if (*(this + 104) == 1)
  {
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    v12 = a2;
    std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v13, &v12);
    v3 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      v4 = 0;
      do
      {
        v5 = v3 - 1;
        v6 = *(*(*(&v13[0] + 1) + (((v14 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + v5) & 0x1FF));
        *(&v14 + 1) = v5;
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](v13);
        v11 = 0;
        nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::replaceTreeNodeVerb(this, v6, &v11);
        v7 = v11;
        v9 = v6[3].__r_.__value_.__r.__words[2];
        data = v6[4].__r_.__value_.__l.__data_;
        while (v9 != data)
        {
          v12 = v9;
          std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v13, &v12);
          v9 = (v9 + 144);
        }

        v4 |= v7;
        v3 = *(&v14 + 1);
      }

      while (*(&v14 + 1));
    }

    else
    {
      v4 = 0;
    }

    std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](v13);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_22289A2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((v1 - v2) << 6) - 1;
  }

  if ((v3 - (a1[5] + a1[4])) >= 0x400)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

void std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x200)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v12);
    }

    a1[4] = v7 - 512;
    v13 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v13);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++a1[5];
}

void sub_22289A83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::downcast(char **this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = a2;
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v13, &v12);
  v3 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v4 = 0;
    do
    {
      v5 = v3 - 1;
      v6 = *(*(*(&v13[0] + 1) + (((v14 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + v5) & 0x1FF));
      *(&v14 + 1) = v5;
      std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](v13);
      v11 = 0;
      nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::handleTreeNode(this, v6, &v11);
      v7 = v11;
      v9 = *(v6 + 11);
      v8 = *(v6 + 12);
      while (v9 != v8)
      {
        v12 = v9;
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v13, &v12);
        v9 = (v9 + 144);
      }

      v4 |= v7;
      v3 = *(&v14 + 1);
    }

    while (*(&v14 + 1));
  }

  else
  {
    v4 = 0;
  }

  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](v13);
  return v4 & 1;
}

void sub_22289A958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::apply(nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = a2;
  std::deque<nlv4_inference_orchestrator::trees::TreeNode *>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode *>(v13, &v12);
  if (v14.i64[1])
  {
    v3 = 0;
    v4 = v14.i64[0];
    do
    {
      v5 = *(*(*(&v13[0] + 1) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
      v6 = nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::replaceDefaultSettingValue(this, v5);
      v8 = *(v5 + 11);
      v7 = *(v5 + 12);
      while (v8 != v7)
      {
        v12 = v8;
        std::deque<nlv4_inference_orchestrator::trees::TreeNode *>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode *>(v13, &v12);
        v8 = (v8 + 144);
      }

      v9 = vaddq_s64(v14, xmmword_2229D2A10);
      v14 = v9;
      v4 = v9.i64[0];
      if (v9.i64[0] >= 0x400uLL)
      {
        operator delete(**(&v13[0] + 1));
        v10 = v14.i64[1];
        v4 = v14.i64[0] - 512;
        *(&v13[0] + 1) += 8;
        v14.i64[0] -= 512;
      }

      else
      {
        v10 = v9.i64[1];
      }

      v3 |= v6;
    }

    while (v10);
  }

  else
  {
    v3 = 0;
  }

  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](v13);
  return v3 & 1;
}

void sub_22289AA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::deque<nlv4_inference_orchestrator::trees::TreeNode *>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode *>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode **>>(v13);
    }

    a1[4] = v8 - 512;
    v14 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<nlv4_inference_orchestrator::trees::TreeNode **>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode **&>(a1, &v14);
    v7 = a1[5];
    v5 = a1[1];
    v9 = a1[4] + v7;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

void sub_22289AF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::replaceDefaultSettingValue(nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v2 = *(a2 + 71);
  if (v2 >= 0)
  {
    v3 = *(a2 + 71);
  }

  else
  {
    v3 = *(a2 + 7);
  }

  v4 = *(this + 343);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(this + 41);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = this + 320;
  v9 = v2 >= 0 ? (a2 + 48) : *(a2 + 6);
  v10 = v5 >= 0 ? v8 : *(this + 40);
  if (memcmp(v9, v10, v3))
  {
    return 0;
  }

  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 1);
  }

  v13 = *(this + 199);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(this + 23);
  }

  if (v12 != v13)
  {
    return 0;
  }

  v15 = v11 >= 0 ? a2 : *a2;
  v16 = v14 >= 0 ? (this + 176) : *(this + 22);
  if (memcmp(v15, v16, v12))
  {
    return 0;
  }

  v19 = *(a2 + 11);
  v18 = *(a2 + 12);
  if (v19 == v18)
  {
    return 0;
  }

  do
  {
    v20 = *(v19 + 71);
    if (v20 >= 0)
    {
      v21 = *(v19 + 71);
    }

    else
    {
      v21 = *(v19 + 56);
    }

    v22 = *(this + 367);
    v23 = v22;
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(this + 44);
    }

    if (v21 == v22)
    {
      v24 = v20 >= 0 ? (v19 + 48) : *(v19 + 48);
      v25 = v23 >= 0 ? (this + 344) : *(this + 43);
      if (!memcmp(v24, v25, v21))
      {
        v26 = *(v19 + 23);
        if (v26 >= 0)
        {
          v27 = *(v19 + 23);
        }

        else
        {
          v27 = *(v19 + 8);
        }

        v28 = *(this + 223);
        v29 = v28;
        if ((v28 & 0x80u) != 0)
        {
          v28 = *(this + 26);
        }

        if (v27 == v28)
        {
          v30 = v26 >= 0 ? v19 : *v19;
          v31 = v29 >= 0 ? (this + 200) : *(this + 25);
          if (!memcmp(v30, v31, v27))
          {
            v33 = *(v19 + 88);
            v32 = *(v19 + 96);
            while (v33 != v32)
            {
              v34 = *(v33 + 71);
              if (v34 >= 0)
              {
                v35 = *(v33 + 71);
              }

              else
              {
                v35 = *(v33 + 56);
              }

              v36 = *(this + 319);
              v37 = v36;
              if ((v36 & 0x80u) != 0)
              {
                v36 = *(this + 38);
              }

              if (v35 == v36)
              {
                v38 = v34 >= 0 ? (v33 + 48) : *(v33 + 48);
                v39 = v37 >= 0 ? (this + 296) : *(this + 37);
                if (!memcmp(v38, v39, v35))
                {
                  v40 = *(v33 + 23);
                  if (v40 >= 0)
                  {
                    v41 = *(v33 + 23);
                  }

                  else
                  {
                    v41 = *(v33 + 8);
                  }

                  v42 = *(this + 175);
                  v43 = v42;
                  if ((v42 & 0x80u) != 0)
                  {
                    v42 = *(this + 20);
                  }

                  if (v41 == v42)
                  {
                    v44 = v40 >= 0 ? v33 : *v33;
                    v45 = v43 >= 0 ? (this + 152) : *(this + 19);
                    if (!memcmp(v44, v45, v41))
                    {
                      v46 = *(v33 + 88);
                      v47 = *(v33 + 96);
                      if (v46 != v47)
                      {
                        v48 = v46 + 48;
                        do
                        {
                          v49 = *(v48 + 23);
                          if (v49 >= 0)
                          {
                            v50 = *(v48 + 23);
                          }

                          else
                          {
                            v50 = *(v48 + 8);
                          }

                          v51 = *(this + 271);
                          v52 = v51;
                          if ((v51 & 0x80u) != 0)
                          {
                            v51 = *(this + 32);
                          }

                          if (v50 == v51)
                          {
                            v53 = v49 >= 0 ? v48 : *v48;
                            v54 = v52 >= 0 ? (this + 248) : *(this + 31);
                            if (!memcmp(v53, v54, v50))
                            {
                              v55 = *(v48 - 25);
                              if (v55 >= 0)
                              {
                                v56 = *(v48 - 25);
                              }

                              else
                              {
                                v56 = *(v48 - 40);
                              }

                              v57 = *(this + 127);
                              v58 = v57;
                              if ((v57 & 0x80u) != 0)
                              {
                                v57 = *(this + 14);
                              }

                              if (v56 == v57)
                              {
                                v59 = v55 >= 0 ? (v48 - 48) : *(v48 - 48);
                                v60 = v58 >= 0 ? (this + 104) : *(this + 13);
                                if (!memcmp(v59, v60, v56))
                                {
                                  nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::findMediaPlaybackSubTreeFromSpans(&__str, this, v33);
                                  log = SNLPOSLoggerForCategory(1);
                                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                                  {
                                    *buf = 0;
                                    _os_log_impl(&dword_22284A000, log, OS_LOG_TYPE_DEBUG, "Trying to find a media playback subtree to replace default value playback speed.", buf, 2u);
                                  }

                                  loga = v75;
                                  v64 = SNLPOSLoggerForCategory(1);
                                  v61 = os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG);
                                  if (loga == 1)
                                  {
                                    if (v61)
                                    {
                                      *buf = 0;
                                      _os_log_impl(&dword_22284A000, v64, OS_LOG_TYPE_DEBUG, "Found a media playback subtree to replace default value playback speed.", buf, 2u);
                                    }

                                    if ((v75 & 1) == 0)
                                    {
                                      std::__throw_bad_optional_access[abi:ne200100]();
                                    }

                                    std::string::operator=(v33, &__str);
                                    std::string::operator=((v33 + 24), &v68);
                                    std::string::operator=((v33 + 48), &__p);
                                    *(v33 + 72) = v70;
                                    if (v33 != &__str)
                                    {
                                      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(v33 + 88, v71, v72, 0x8E38E38E38E38E39 * ((v72 - v71) >> 4));
                                    }

                                    v62 = v74;
                                    *(v33 + 112) = v73;
                                    *(v33 + 128) = v62;
                                  }

                                  else if (v61)
                                  {
                                    *buf = 0;
                                    _os_log_impl(&dword_22284A000, v64, OS_LOG_TYPE_DEBUG, "Failed to find a media playback span with speed value.", buf, 2u);
                                  }

                                  if (v75 == 1)
                                  {
                                    *buf = &v71;
                                    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
                                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(__p.__r_.__value_.__l.__data_);
                                    }

                                    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v68.__r_.__value_.__l.__data_);
                                    }

                                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(__str.__r_.__value_.__l.__data_);
                                    }
                                  }

                                  if (loga)
                                  {
                                    return 1;
                                  }
                                }
                              }
                            }
                          }

                          v63 = v48 + 96;
                          v48 += 144;
                        }

                        while (v63 != v47);
                      }
                    }
                  }
                }
              }

              v33 += 144;
            }
          }
        }
      }
    }

    result = 0;
    v19 += 144;
  }

  while (v19 != v18);
  return result;
}

void sub_22289B4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::optional<nlv4_inference_orchestrator::trees::TreeNode>::~optional(va);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::SetIdentityPromoter::promote(nlv4_inference_orchestrator::post_processing::tree_manipulations::SetIdentityPromoter *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 11);
  if (v2 != *(a2 + 12))
  {
    v3 = *(v2 + 88);
    if (v3 != *(v2 + 96))
    {
      v4 = *(v3 + 88);
      v5 = *(v3 + 96);
      if (v4 != v5)
      {
        v7 = *(this + 71);
        if (v7 >= 0)
        {
          v8 = *(this + 71);
        }

        else
        {
          v8 = *(this + 7);
        }

        v9 = (this + 48);
        v10 = v4 + 48;
        do
        {
          v11 = *(v10 + 23);
          v12 = v11;
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(v10 + 8);
          }

          if (v11 == v8)
          {
            v13 = v12 >= 0 ? v10 : *v10;
            v14 = v7 >= 0 ? v9 : *v9;
            if (!memcmp(v13, v14, v8))
            {
              if (*(this + 47) < 0)
              {
                std::string::__init_copy_ctor_external(&v27, *(this + 3), *(this + 4));
              }

              else
              {
                v27 = *(this + 1);
              }

              std::string::basic_string[abi:ne200100]<0>(&v28, "");
              std::string::basic_string[abi:ne200100]<0>(&v30, "task");
              v34 = 0;
              v33 = 0u;
              v32 = 0u;
              std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(&v33, *(v10 + 40), *(v10 + 48), 0x8E38E38E38E38E39 * ((*(v10 + 48) - *(v10 + 40)) >> 4));
              v35 = 0u;
              v36 = 0u;
              std::string::basic_string[abi:ne200100]<0>(v20, "UserStatedTask");
              std::string::basic_string[abi:ne200100]<0>(v21, "");
              std::string::basic_string[abi:ne200100]<0>(&__p, "ROOT");
              v37 = v27;
              v17 = v28;
              v39 = v29;
              v28 = 0uLL;
              v18 = v30;
              v19 = v31;
              v29 = 0;
              v30 = 0uLL;
              v31 = 0;
              v23 = 0;
              v24 = 0;
              memset(&v27, 0, sizeof(v27));
              v38 = v17;
              v40 = v18;
              v42 = v32;
              v43 = v33;
              v41 = v19;
              v44 = v34;
              v33 = 0uLL;
              v34 = 0;
              v45 = v35;
              v46 = v36;
              v25 = 0uLL;
              v26 = 0;
              std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(&v25, &v37, v47);
            }
          }

          v15 = v10 + 96;
          v10 += 144;
        }

        while (v15 != v5);
      }
    }
  }

  return 0;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::handleTreeNode(nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller *this, std::string **a2, BOOL *a3)
{
  *a3 = 0;
  if (nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::hasMinOrMaxDefinedValue(a2, a2))
  {
    v7 = a2[11];
    v8 = a2[12];
    if (*(this + 152))
    {
      for (; v7 != v8; v7 += 6)
      {
        if (nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::isDefinedValue(v7, v6))
        {
          if ((*(this + 152) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          std::string::operator=(v7, (this + 128));
        }
      }
    }

    else
    {
      if (v7 != v8)
      {
        while (!nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::isDefinedValue(v7, v6))
        {
          v7 += 6;
          if (v7 == v8)
          {
            v7 = v8;
            goto LABEL_25;
          }
        }

        if (v7 != v8 && &v7[6] != v8)
        {
          v9 = &v7[10].__r_.__value_.__r.__words[2];
          do
          {
            if (!nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::isDefinedValue((v9 - 14), v6))
            {
              if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v7->__r_.__value_.__l.__data_);
              }

              v10 = *(v9 - 7);
              v7->__r_.__value_.__r.__words[2] = *(v9 - 12);
              *&v7->__r_.__value_.__l.__data_ = v10;
              *(v9 - 89) = 0;
              *(v9 - 112) = 0;
              if (SHIBYTE(v7[1].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v7[1].__r_.__value_.__l.__data_);
              }

              v11 = *(v9 - 11);
              v7[1].__r_.__value_.__r.__words[2] = *(v9 - 9);
              *&v7[1].__r_.__value_.__l.__data_ = v11;
              *(v9 - 65) = 0;
              *(v9 - 88) = 0;
              if (SHIBYTE(v7[2].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v7[2].__r_.__value_.__l.__data_);
              }

              v12 = *(v9 - 4);
              v7[2].__r_.__value_.__r.__words[2] = *(v9 - 6);
              *&v7[2].__r_.__value_.__l.__data_ = v12;
              *(v9 - 41) = 0;
              *(v9 - 64) = 0;
              *&v7[3].__r_.__value_.__l.__data_ = *(v9 - 5);
              std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(&v7[3].__r_.__value_.__r.__words[2]);
              *&v7[3].__r_.__value_.__r.__words[2] = *(v9 - 3);
              v7[4].__r_.__value_.__l.__size_ = *(v9 - 1);
              *(v9 - 3) = 0;
              *(v9 - 2) = 0;
              *(v9 - 1) = 0;
              v13 = *(v9 + 1);
              *&v7[4].__r_.__value_.__r.__words[2] = *v9;
              *&v7[5].__r_.__value_.__r.__words[1] = v13;
              v7 += 6;
            }

            v14 = (v9 + 4);
            v9 += 18;
          }

          while (v14 != v8);
        }
      }

LABEL_25:
      v15 = a2[12];
      if (v7 != v15)
      {
        v16 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode *,nlv4_inference_orchestrator::trees::TreeNode *,nlv4_inference_orchestrator::trees::TreeNode *>(v15, a2[12], v7);
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100]((a2 + 11), v16);
      }
    }

    *a3 = 1;
  }
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::hasMinOrMaxDefinedValue(size_t *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v3 = siri::ontology::oname::graph::ontology_init::common_Number(this);
  v4 = *(this + 23);
  if (v4 >= 0)
  {
    v5 = *(this + 23);
  }

  else
  {
    v5 = this[1];
  }

  v6 = *(v3 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v3 + 16);
  }

  if (v5 == v6)
  {
    v8 = v4 >= 0 ? this : *this;
    v11 = *(v3 + 8);
    v9 = v3 + 8;
    v10 = v11;
    v12 = (v7 >= 0 ? v9 : v10);
    if (!memcmp(v8, v12, v5))
    {
      v15 = this[12];
      for (i = this[11]; i != v15; i += 144)
      {
        isDefinedValue = nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::isDefinedValue(i, v13);
        if (isDefinedValue)
        {
          v18 = siri::ontology::oname::graph::ontology_init::common_Number_MinimumValue(isDefinedValue);
          v19 = *(i + 23);
          if (v19 >= 0)
          {
            v20 = *(i + 23);
          }

          else
          {
            v20 = *(i + 8);
          }

          v21 = *(v18 + 31);
          v22 = v21;
          if ((v21 & 0x80u) != 0)
          {
            v21 = *(v18 + 16);
          }

          if (v20 == v21)
          {
            v23 = v19 >= 0 ? i : *i;
            v26 = *(v18 + 8);
            v24 = v18 + 8;
            v25 = v26;
            v27 = (v22 >= 0 ? v24 : v25);
            v18 = memcmp(v23, v27, v20);
            if (!v18)
            {
              return 1;
            }
          }

          v28 = siri::ontology::oname::graph::ontology_init::common_Number_MaximumValue(v18);
          v29 = *(i + 23);
          if (v29 >= 0)
          {
            v30 = *(i + 23);
          }

          else
          {
            v30 = *(i + 8);
          }

          v31 = *(v28 + 31);
          v32 = v31;
          if ((v31 & 0x80u) != 0)
          {
            v31 = *(v28 + 16);
          }

          if (v30 == v31)
          {
            v33 = v29 >= 0 ? i : *i;
            v36 = *(v28 + 8);
            v34 = v28 + 8;
            v35 = v36;
            v37 = (v32 >= 0 ? v34 : v35);
            if (!memcmp(v33, v37, v30))
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

std::string *nlv4_inference_orchestrator::trees::TreeNode::TreeNode(std::string *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 72);
  this[3].__r_.__value_.__r.__words[2] = 0;
  *&this[3].__r_.__value_.__l.__data_ = v7;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(&this[3].__r_.__value_.__r.__words[2], *(a2 + 11), *(a2 + 12), 0x8E38E38E38E38E39 * ((*(a2 + 12) - *(a2 + 11)) >> 4));
  v8 = *(a2 + 8);
  *&this[4].__r_.__value_.__r.__words[2] = *(a2 + 7);
  *&this[5].__r_.__value_.__r.__words[1] = v8;
  return this;
}

void sub_22289BDD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::trees::printTree(nlv4_inference_orchestrator::trees *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v21, a2);
  v27 = 0;
  std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::push_back(v28, &v21);
  v35.__locale_ = v26;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v35);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v3 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v4 = MEMORY[0x277D82680];
    do
    {
      v5 = (*(v28[1] + 8 * ((v3 + v29 - 1) / 0x1AuLL)) - 3952 * ((v3 + v29 - 1) / 0x1AuLL) + 152 * (v3 + v29 - 1));
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v21, v5);
      v27 = *(v5 + 36);
      std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::pop_back(v28);
      for (i = v26[1]; i != v26[0]; std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode const&,unsigned int>(v28, i, &v35))
      {
        i = (i - 144);
        LODWORD(v35.__locale_) = v27 + 1;
      }

      v7 = (4 * v27);
      if (v7)
      {
        do
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " ", 1);
          --v7;
        }

        while (v7);
      }

      if ((v25 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v25 & 0x80u) == 0)
      {
        v9 = v25;
      }

      else
      {
        v9 = __p[1];
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v8, v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v21;
      }

      else
      {
        v12 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, size);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".", 1);
      if ((v23 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v17 = v23;
      }

      else
      {
        v17 = v22[1];
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v19 = std::locale::use_facet(&v35, v4);
      (v19->__vftable[2].~facet_0)(v19, 10);
      std::locale::~locale(&v35);
      std::ostream::put();
      std::ostream::flush();
      v35.__locale_ = v26;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v35);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      v3 = *(&v29 + 1);
    }

    while (*(&v29 + 1));
  }

  std::stringbuf::str();
  std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::~deque[abi:ne200100](v28);
  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  return MEMORY[0x223DC4C10](&v34);
}

void sub_22289C208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::~deque[abi:ne200100](&a29);
  std::ostringstream::~ostringstream(&a35, MEMORY[0x277D82828]);
  MEMORY[0x223DC4C10](&a49);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_22289C3B0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x223DC4C10](v1);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::push_back(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 26 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x1A)) - 3952 * (v7 / 0x1A) + 152 * v7;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v8 + 40) = *(a2 + 5);
  *(v8 + 24) = v10;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v11 = a2[3];
  *(v8 + 64) = *(a2 + 8);
  *(v8 + 48) = v11;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(v8 + 72) = *(a2 + 72);
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 88) = 0;
  *(v8 + 88) = *(a2 + 88);
  *(v8 + 104) = *(a2 + 13);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  result = a2[7];
  v13 = a2[8];
  *(v8 + 112) = result;
  *(v8 + 128) = v13;
  *(v8 + 144) = *(a2 + 36);
  ++a1[5];
  return result;
}

void std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v9);
}

void sub_22289C984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  v3 = *(a1[1] + 8 * (v2 / 0x1A)) - 3952 * (v2 / 0x1A) + 152 * v2;
  v9 = (v3 + 88);
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
  }

  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 26 * ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] - 1;
  a1[5] = v8;
  if ((v6 - (v8 + v7)) >= 0x34)
  {
    operator delete(*(v4 - 8));
    a1[2] -= 8;
  }
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::label(nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = a2;
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v13, &v12);
  v3 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v4 = 0;
    do
    {
      v5 = v3 - 1;
      v6 = *(*(*(&v13[0] + 1) + (((v14 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + v5) & 0x1FF));
      *(&v14 + 1) = v5;
      std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](v13);
      v11 = 0;
      nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::handleTreeNode(this, v6, &v11);
      v7 = v11;
      v9 = *(v6 + 88);
      v8 = *(v6 + 96);
      while (v9 != v8)
      {
        v12 = v9;
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v13, &v12);
        v9 = (v9 + 144);
      }

      v4 |= v7;
      v3 = *(&v14 + 1);
    }

    while (*(&v14 + 1));
  }

  else
  {
    v4 = 0;
  }

  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](v13);
  return v4 & 1;
}

void sub_22289CB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::OneShotReplyRemodeller::apply(nlv4_inference_orchestrator::post_processing::tree_manipulations::OneShotReplyRemodeller *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  if (*(this + 72) != 1 || !nlv4_inference_orchestrator::post_processing::tree_manipulations::OneShotReplyRemodeller::parseContainsUserAcceptedAndUserStatedTask(this, a2))
  {
    return 0;
  }

  return nlv4_inference_orchestrator::post_processing::tree_manipulations::OneShotReplyRemodeller::pruneUserAcceptedDialogAct(this, a2);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientInTree(nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v2 = *(this + 351);
  if (v2 >= 0)
  {
    v3 = *(this + 351);
  }

  else
  {
    v3 = *(this + 42);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  if (v2 >= 0)
  {
    v8 = this + 328;
  }

  else
  {
    v8 = *(this + 41);
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v8, a2, v3))
  {
    return 0;
  }

  v10 = *(v6 + 11);
  v11 = *(v6 + 12);
  if (v10 == v11)
  {
    return 0;
  }

  while (2)
  {
    v12 = *(v10 + 88);
    v13 = *(v10 + 96);
    while (v12 != v13)
    {
      if (nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientInVerbSubtree(this, v12))
      {
        return 1;
      }

      v12 = (v12 + 144);
    }

    result = 0;
    v10 += 144;
    if (v10 != v11)
    {
      continue;
    }

    break;
  }

  return result;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::TreeManipulations::~TreeManipulations(void **this)
{
  v2 = this + 246;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 1967) < 0)
  {
    operator delete(this[243]);
  }

  if (*(this + 1943) < 0)
  {
    operator delete(this[240]);
  }

  if (*(this + 1919) < 0)
  {
    operator delete(this[237]);
  }

  if (*(this + 1887) < 0)
  {
    operator delete(this[233]);
  }

  if (*(this + 1863) < 0)
  {
    operator delete(this[230]);
  }

  if (*(this + 1839) < 0)
  {
    operator delete(this[227]);
  }

  if (*(this + 1807) < 0)
  {
    operator delete(this[223]);
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::~ReplaceFromPersonRecipientHack(this + 176);
  if (*(this + 1399) < 0)
  {
    operator delete(this[172]);
  }

  if (*(this + 1375) < 0)
  {
    operator delete(this[169]);
  }

  if (*(this + 1351) < 0)
  {
    operator delete(this[166]);
  }

  if (*(this + 1320) == 1 && *(this + 1319) < 0)
  {
    operator delete(this[162]);
  }

  if (*(this + 1295) < 0)
  {
    operator delete(this[159]);
  }

  if (*(this + 1271) < 0)
  {
    operator delete(this[156]);
  }

  if (*(this + 1247) < 0)
  {
    operator delete(this[153]);
  }

  if (*(this + 1223) < 0)
  {
    operator delete(this[150]);
  }

  if (*(this + 1191) < 0)
  {
    operator delete(this[146]);
  }

  v2 = this + 143;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 140;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 137;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 1095) < 0)
  {
    operator delete(this[134]);
  }

  if (*(this + 1071) < 0)
  {
    operator delete(this[131]);
  }

  if (*(this + 1039) < 0)
  {
    operator delete(this[127]);
  }

  v2 = this + 124;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 121;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 118;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 943) < 0)
  {
    operator delete(this[115]);
  }

  if (*(this + 919) < 0)
  {
    operator delete(this[112]);
  }

  if (*(this + 887) < 0)
  {
    operator delete(this[108]);
  }

  v2 = this + 105;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 102;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 807) < 0)
  {
    operator delete(this[98]);
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::~DefaultValueMediaPlaybackSpeed(this + 27);
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::~__hash_table((this + 22));
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::~__hash_table((this + 17));
  v2 = this + 14;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = MEMORY[0x223DC3250](v4 - 144);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::~ReplaceFromPersonRecipientHack(void **this)
{
  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
  }

  if (*(this + 351) < 0)
  {
    operator delete(this[41]);
  }

  if (*(this + 327) < 0)
  {
    operator delete(this[38]);
  }

  if (*(this + 303) < 0)
  {
    operator delete(this[35]);
  }

  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>>>::~__hash_table((this + 6));
  v2 = this + 3;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table((v2 + 3));
      operator delete(v2);
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

void nlv4_inference_orchestrator::post_processing::tree_manipulations::DefaultValueMediaPlaybackSpeed::~DefaultValueMediaPlaybackSpeed(void **this)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 66);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 61);
  if (*(this + 487) < 0)
  {
    operator delete(this[58]);
  }

  if (*(this + 463) < 0)
  {
    operator delete(this[55]);
  }

  if (*(this + 439) < 0)
  {
    operator delete(this[52]);
  }

  if (*(this + 415) < 0)
  {
    operator delete(this[49]);
  }

  if (*(this + 391) < 0)
  {
    operator delete(this[46]);
  }

  if (*(this + 367) < 0)
  {
    operator delete(this[43]);
  }

  if (*(this + 343) < 0)
  {
    operator delete(this[40]);
  }

  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  if (*(this + 271) < 0)
  {
    operator delete(this[31]);
  }

  if (*(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this + 3;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v6);
      operator delete(v2);
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

BOOL nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::UserAcceptedModification::removeUserAcceptedOnlyHackApplies(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v52[3] = *MEMORY[0x277D85DE8];
  v7 = _os_feature_enabled_impl();
  std::string::basic_string[abi:ne200100]<0>(__p, "de_AT");
  std::string::basic_string[abi:ne200100]<0>(v27, "de_CH");
  std::string::basic_string[abi:ne200100]<0>(v28, "de_DE");
  std::string::basic_string[abi:ne200100]<0>(v29, "en_AU");
  std::string::basic_string[abi:ne200100]<0>(v30, "en_CA");
  std::string::basic_string[abi:ne200100]<0>(v31, "en_GB");
  std::string::basic_string[abi:ne200100]<0>(v32, "en_IE");
  std::string::basic_string[abi:ne200100]<0>(v33, "en_IN");
  std::string::basic_string[abi:ne200100]<0>(v34, "en_NZ");
  std::string::basic_string[abi:ne200100]<0>(v35, "en_SG");
  std::string::basic_string[abi:ne200100]<0>(v36, "en_US");
  std::string::basic_string[abi:ne200100]<0>(v37, "en_ZA");
  std::string::basic_string[abi:ne200100]<0>(v38, "es_CL");
  std::string::basic_string[abi:ne200100]<0>(v39, "es_ES");
  std::string::basic_string[abi:ne200100]<0>(v40, "es_MX");
  std::string::basic_string[abi:ne200100]<0>(v41, "es_US");
  std::string::basic_string[abi:ne200100]<0>(v42, "fr_BE");
  std::string::basic_string[abi:ne200100]<0>(v43, "fr_CA");
  std::string::basic_string[abi:ne200100]<0>(v44, "fr_CH");
  std::string::basic_string[abi:ne200100]<0>(v45, "fr_FR");
  std::string::basic_string[abi:ne200100]<0>(v46, "it_CH");
  std::string::basic_string[abi:ne200100]<0>(v47, "it_IT");
  std::string::basic_string[abi:ne200100]<0>(v48, "ja_JP");
  std::string::basic_string[abi:ne200100]<0>(v49, "ko_KR");
  std::string::basic_string[abi:ne200100]<0>(v50, "pt_BR");
  std::string::basic_string[abi:ne200100]<0>(v51, "yue_CN");
  std::string::basic_string[abi:ne200100]<0>(v52, "zh_CN");
  std::unordered_set<std::string>::unordered_set(v23, __p, 27);
  v8 = 81;
  do
  {
    if (SHIBYTE(__p[v8 - 1]) < 0)
    {
      operator delete(v24[v8]);
    }

    v8 -= 3;
  }

  while (v8 * 8);
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(v23, a4))
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  if ((v9 & 1) == 0)
  {
    v18 = 0;
    goto LABEL_32;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ROOT");
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v11 != v12)
  {
    goto LABEL_28;
  }

  v13 = v10 >= 0 ? a2 : *a2;
  v14 = (v26 & 0x80u) == 0 ? __p : __p[0];
  v15 = memcmp(v13, v14, v11);
  if (v15)
  {
    goto LABEL_28;
  }

  v16 = *(a2 + 71);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 56);
  }

  if (v16)
  {
    goto LABEL_28;
  }

  v17 = *(a2 + 47);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 32);
  }

  if (v17)
  {
LABEL_28:
    v18 = 0;
    goto LABEL_29;
  }

  v18 = 0;
  if (*(a2 + 96) - *(a2 + 88) == 144)
  {
    if ((nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::UserAcceptedModification::matchingSpansContainsGenericConfirmationYes(v15, a3) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v21, "UserAccepted");
      v18 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, *(a2 + 88));
      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_29:
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_32:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v24[0]);
  v19 = v23[0];
  v23[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v18;
}

void sub_22289D7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a12);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::trees::buildUserDialogActs(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "ROOT");
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = v25;
  v10 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v8 != v9)
  {
    goto LABEL_20;
  }

  v11 = v7 >= 0 ? a2 : *a2;
  v12 = (v25 & 0x80u) == 0 ? __p : __p[0];
  if (memcmp(v11, v12, v8))
  {
    goto LABEL_20;
  }

  v13 = *(a2 + 71);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 56);
  }

  if (v13)
  {
    goto LABEL_20;
  }

  v14 = *(a2 + 47);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 32);
  }

  if (!v14)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v15 = *(a2 + 88);
    if (v15 != *(a2 + 96))
    {
      v16 = a3[1];
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v29, "ROOT");
      v17 = *(v15 + 71);
      if (v17 >= 0)
      {
        v18 = *(v15 + 71);
      }

      else
      {
        v18 = *(v15 + 56);
      }

      v19 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v19 = v29[1];
      }

      if (v18 != v19 || (v17 >= 0 ? (v20 = (v15 + 48)) : (v20 = *(v15 + 48)), (v30 & 0x80u) == 0 ? (v21 = v29) : (v21 = v29[0]), memcmp(v20, v21, v18)))
      {
        v22 = SNLPOSLoggerForCategory(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_DEBUG, "Invalid model tree, removing parse from output.", buf, 2u);
        }

        if (v30 < 0)
        {
          operator delete(v29[0]);
        }

        operator new();
      }

      if (0x8E38E38E38E38E39 * ((*(v15 + 96) - *(v15 + 88)) >> 4) < 2)
      {
        v27 = 1;
        v28 = 0;
        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "User dialog act node has multiple children.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
LABEL_20:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  if ((v10 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22289E308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserDialogAct const>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<sirinluexternal::UserDialogAct const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::runSystemPromptedContentRuntimeHacks(std::__split_buffer<std::string>::pointer result, uint64_t *a2, uint64_t *a3, _BYTE *a4, __int128 *a5, std::__split_buffer<std::string>::pointer *a6, uint64_t a7)
{
  v12 = *a2;
  if (*a2 == a2[1])
  {
    goto LABEL_14;
  }

  v13 = *(v12 + 96);
  if (v13 == *(v12 + 104))
  {
    goto LABEL_14;
  }

  v14 = *(v13 + 23);
  if (v14 < 0)
  {
    if (v13[1] != 13)
    {
LABEL_14:
      v18 = 0;
      goto LABEL_15;
    }

    v13 = *v13;
  }

  else if (v14 != 13)
  {
    goto LABEL_14;
  }

  v15 = *v13;
  v16 = *(v13 + 5);
  v18 = v15 == 0x636E614372657355 && v16 == 0x64656C6C65636E61;
LABEL_15:
  v19 = *(a3 + 23);
  if (v19 < 0)
  {
    if (a3[1] != 5)
    {
LABEL_30:
      v22 = 0;
      goto LABEL_32;
    }

    a3 = *a3;
  }

  else if (v19 != 5)
  {
    goto LABEL_30;
  }

  v22 = *a3 == 1247764842 && *(a3 + 4) == 80 || *a3 == 1147102564 && *(a3 + 4) == 69;
LABEL_32:
  if (a4[48] == 1 && (!v18 || v22))
  {
    v40 = *a5;
    v41 = *(a5 + 2);
    nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::internal::runGenericSystemPromptedContentHack(&v40, off_2784B69A8, &v38);
    if (v39 == 1)
    {
      if (!_os_feature_enabled_impl())
      {
        v27 = *a6;
        size = (*a6)->__r_.__value_.__l.__size_;
        if ((*a6)->__r_.__value_.__r.__words[2] == size)
        {
          v30 = v38;
        }

        else
        {
          v29 = *(*size + 48);
          v30 = v38;
          v31 = *v38->__r_.__value_.__l.__size_;
          *(v31 + 88) |= 2u;
          *(v31 + 48) = v29 * 0.9;
          v27 = *a6;
        }

        PB::PtrVector<sirinluexternal::UserParse>::emplace_back<sirinluexternal::UserParse>(v27 + 8, *v30->__r_.__value_.__l.__size_);
      }

      v23 = v38;
      v38 = 0;
      v24 = *a6;
      *a6 = v23;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      v25 = *(a7 + 8);
      if (v25 >= *(a7 + 16))
      {
        v26 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a7, &result[12].__r_.__value_.__r.__words[1]);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a7, &result[12].__r_.__value_.__r.__words[1]);
        v26 = v25 + 1;
      }

      *(a7 + 8) = v26;
      if (v38)
      {
        (*(v38->__r_.__value_.__r.__words[0] + 8))(v38);
      }
    }
  }

  if (!v18 && (a4[49] & 1) != 0)
  {
    v40 = *a5;
    v41 = *(a5 + 2);
    nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::internal::runGenericSystemPromptedContentHack(&v40, off_2784B69C0, &v38);
    if (v39 == 1)
    {
      v32 = *(a7 + 8);
      if (v32 >= *(a7 + 16))
      {
        v33 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a7, &result[15].__r_.__value_.__r.__words[1]);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a7, &result[15].__r_.__value_.__r.__words[1]);
        v33 = v32 + 1;
      }

      *(a7 + 8) = v33;
      v34 = *a6;
      *a6 = v38;
      if (v34)
      {
        (*(*v34 + 8))(v34);
      }
    }
  }

  if (!v18 && (a4[50] & 1) != 0)
  {
    v40 = *a5;
    v41 = *(a5 + 2);
    nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::internal::runGenericSystemPromptedContentHack(&v40, off_2784B69D8, &v38);
    if (v39 == 1)
    {
      v35 = *(a7 + 8);
      if (v35 >= *(a7 + 16))
      {
        v36 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a7, &result[16].__r_.__value_.__r.__words[1]);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a7, &result[16].__r_.__value_.__r.__words[1]);
        v36 = v35 + 1;
      }

      *(a7 + 8) = v36;
      v37 = *a6;
      *a6 = v38;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }
    }
  }
}

void sub_22289E94C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::insertExecutedHandcraftedRulesIntoFeatureStore(uint64_t *a1, uint64_t a2)
{
  if (!_os_feature_enabled_impl())
  {
    v4 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    *v7 = 0;
    v5 = "Skipping insertion of NLv4 executed handcrafted rules into FeatureStore because SNLPFeatureStoreEnabled feature flag is disabled";
    goto LABEL_8;
  }

  if (*(a2 + 24) == 1)
  {
    nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::getExecutedHandcraftedRules(a1, v7);
  }

  v4 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    v5 = "nlu_request_id not found so skipping insertion of executed handcrafted rules into FeatureStore";
LABEL_8:
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, v5, v7, 2u);
  }

LABEL_9:
  v6 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "Unable to insert NLv4 executed handcrafted rules into FeatureStore", v7, 2u);
  }
}

void std::vector<std::pair<float,nlv4_inference_orchestrator::trees::TreeNode>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<std::pair<float,nlv4_inference_orchestrator::trees::TreeNode>>>::destroy[abi:ne200100]<std::pair<float,nlv4_inference_orchestrator::trees::TreeNode>,0>(i))
    {
      i -= 152;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<std::pair<float,nlv4_inference_orchestrator::trees::TreeNode>>>::destroy[abi:ne200100]<std::pair<float,nlv4_inference_orchestrator::trees::TreeNode>,0>(uint64_t a1)
{
  v3 = (a1 + 96);
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::vector<std::pair<float,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

std::__split_buffer<std::string>::pointer nlv4_inference_orchestrator::trees::TagExpander::expandNextTags@<X0>(std::__split_buffer<std::string>::pointer result@<X0>, unsigned __int8 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = result;
    v7 = result + 1;
    v8 = result + 3;
    do
    {
      v9 = *(v3 + 23);
      v10 = *v3;
      if (v9 >= 0)
      {
        v10 = v3;
      }

      if (v9 < 0)
      {
        v9 = *(v3 + 8);
      }

      size = SHIBYTE(v5[1].__r_.__value_.__r.__words[2]);
      data = v5[1].__r_.__value_.__l.__data_;
      if (size >= 0)
      {
        data = v7;
      }

      if (size < 0)
      {
        size = v5[1].__r_.__value_.__l.__size_;
      }

      if (v9)
      {
        v13 = size == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v22 = data;
LABEL_17:
        if (v22 == (data + size))
        {
          v14 = SHIBYTE(v5[3].__r_.__value_.__r.__words[2]);
          v15 = v5[3].__r_.__value_.__l.__data_;
          if (v14 >= 0)
          {
            v15 = v8;
          }

          if (v14 < 0)
          {
            v14 = v5[3].__r_.__value_.__l.__size_;
          }

          v16 = (v15 + v14);
          v17 = v10 - 1;
          while (v9 && v14)
          {
            v18 = HIBYTE(v16[-1].__r_.__value_.__r.__words[2]);
            v16 = (v16 - 1);
            v19 = v17[v9--];
            --v14;
            if (v19 != v18)
            {
              goto LABEL_36;
            }
          }

          if (v16 == v15)
          {
            result = nlv4_inference_orchestrator::trees::TagExpander::extractNumberOfNextTags(v5, v3);
            if (v25)
            {
              for (i = result; i; i = (i - 1))
              {
                result = std::vector<std::string>::push_back[abi:ne200100](a3, &v5[2]);
              }

              goto LABEL_40;
            }
          }
        }
      }

      else
      {
        v20 = size - 1;
        v21 = v9 - 1;
        v22 = data;
        v23 = v10;
        while (*v23 == *v22)
        {
          ++v22;
          if (v21)
          {
            ++v23;
            v24 = v20--;
            --v21;
            if (v24)
            {
              continue;
            }
          }

          goto LABEL_17;
        }
      }

LABEL_36:
      v27 = a3[1];
      if (v27 >= a3[2])
      {
        result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, v3);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a3, v3);
        result = v27 + 1;
      }

      a3[1] = result;
LABEL_40:
      v3 += 24;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_22289EE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *nlv4_inference_orchestrator::post_processing::tree_manipulations::SetIdentityPromoter::SetIdentityPromoter(void *a1, _OWORD **a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, "TreeManipulation_SetIdentityPromoter");
  std::string::basic_string[abi:ne200100]<0>(v4 + 3, "common_Person.ReferenceTarget_setIdentity");
  std::string::basic_string[abi:ne200100]<0>(a1 + 6, "setIdentity");
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::IndexedToken*,nlv4_inference_orchestrator::orchestration::IndexedToken*>((a1 + 9), *a2, a2[1], 0x8E38E38E38E38E39 * (a2[1] - *a2));
  return a1;
}

void sub_22289EED8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::hasSetNumberVocSpans(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  while (!nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::isSetNumberVocSpan(a1, v2))
  {
    v2 += 11;
    if (v2 == v3)
    {
      return 0;
    }
  }

  v5 = 1;
  v7 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 24);
    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] Found setNumber voc span(s)", &v9, 0xCu);
  }

  return v5;
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::isCommonPersonNode(size_t *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v3 = siri::ontology::oname::graph::ontology_init::common_Person(this);
  v4 = *(this + 23);
  if (v4 >= 0)
  {
    v5 = *(this + 23);
  }

  else
  {
    v5 = this[1];
  }

  v6 = *(v3 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v3 + 16);
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v8 = this;
  }

  else
  {
    v8 = *this;
  }

  v11 = *(v3 + 8);
  v9 = (v3 + 8);
  v10 = v11;
  if (v7 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  return memcmp(v8, v12, v5) == 0;
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::transform(nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  if (*(this + 13) == *(this + 14))
  {
    v4 = 0;
  }

  else
  {
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    v12 = a2;
    std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v13, &v12);
    v3 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      v4 = 0;
      do
      {
        v5 = v3 - 1;
        v6 = *(*(*(&v13[0] + 1) + (((v14 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + v5) & 0x1FF));
        *(&v14 + 1) = v5;
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](v13);
        v11 = 0;
        nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::transformTreeNode(this, v6, &v11);
        v7 = v11;
        v9 = v6[3].__r_.__value_.__r.__words[2];
        data = v6[4].__r_.__value_.__l.__data_;
        while (v9 != data)
        {
          v12 = v9;
          std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v13, &v12);
          v9 = (v9 + 144);
        }

        v4 |= v7;
        v3 = *(&v14 + 1);
      }

      while (*(&v14 + 1));
    }

    else
    {
      v4 = 0;
    }

    std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](v13);
  }

  return v4 & 1;
}

void sub_22289F18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::isCommonContactAddressNode(size_t *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v3 = siri::ontology::oname::graph::ontology_init::common_ContactAddress(this);
  v4 = *(this + 23);
  if (v4 >= 0)
  {
    v5 = *(this + 23);
  }

  else
  {
    v5 = this[1];
  }

  v6 = *(v3 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v3 + 16);
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v8 = this;
  }

  else
  {
    v8 = *this;
  }

  v11 = *(v3 + 8);
  v9 = (v3 + 8);
  v10 = v11;
  if (v7 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  return memcmp(v8, v12, v5) == 0;
}

void std::vector<std::pair<std::basic_regex<char,std::regex_traits<char>>,std::string>>::__destroy_vector::operator()[abi:ne200100](std::locale ***a1)
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
        if (SHIBYTE(v4[-1].__locale_) < 0)
        {
          operator delete(v4[-3].__locale_);
        }

        locale = v4[-5].__locale_;
        if (locale)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](locale);
        }

        v4 -= 11;
        std::locale::~locale(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::~EspressoBertModel(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this)
{
  *this = &unk_2835E60A8;
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  std::unique_ptr<nlv4_inference_orchestrator::vocabulary::Vocabulary>::reset[abi:ne200100](this + 10, 0);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(this + 40);
  std::unique_ptr<nl_sentencepiece::SentencepieceModel>::reset[abi:ne200100](this + 2, 0);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 88))(v2);
  }
}

{
  nlv4_inference_orchestrator::inference_engine::EspressoBertModel::~EspressoBertModel(this);

  JUMPOUT(0x223DC4D00);
}

void sentencepiece::SentencePieceProcessor::~SentencePieceProcessor(void **this)
{
  sentencepiece::SentencePieceProcessor::~SentencePieceProcessor(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E2A90;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this[11];
  this[11] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[8];
  if (v3)
  {
    this[9] = v3;
    operator delete(v3);
  }

  v4 = this[5];
  if (v4)
  {
    this[6] = v4;
    operator delete(v4);
  }

  v5 = this[4];
  this[4] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = this[3];
  this[3] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = this[2];
  this[2] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = this[1];
  this[1] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

void *sentencepiece::Mmap<char>::~Mmap(void *a1)
{
  *a1 = &unk_2835E2DF8;
  sentencepiece::Mmap<char>::close(a1);
  return a1;
}

void sentencepiece::Mmap<char>::~Mmap(void *a1)
{
  sentencepiece::Mmap<char>::~Mmap(a1);

  JUMPOUT(0x223DC4D00);
}

void sentencepiece::MemoryMappedModelProto::~MemoryMappedModelProto(sentencepiece::MemoryMappedModelProto *this)
{
  *this = &unk_2835E3D98;
  sentencepiece::util::Status::~Status((this + 88));

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E3D98;
  sentencepiece::util::Status::~Status((this + 88));
}

void sentencepiece::normalizer::Normalizer::~Normalizer(sentencepiece::normalizer::Normalizer *this)
{
  sentencepiece::normalizer::Normalizer::~Normalizer(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E29F8;
  sentencepiece::util::Status::~Status((this + 56));
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void sentencepiece::ModelInterface::~ModelInterface(sentencepiece::ModelInterface *this)
{
  *this = &unk_2835E2868;
  sentencepiece::util::Status::~Status((this + 96));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &unk_2835E2988;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x223DC4CD0](v2, 0x1000C8052888210);
    *(this + 10) = 0;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &unk_2835E2988;
  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x223DC4CD0](v3, 0x1000C8052888210);
    *(this + 6) = 0;
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](this + 16, v4);
  }
}

void sentencepiece::bpe::Model::~Model(sentencepiece::bpe::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x223DC4D00);
}

void std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x223DC4D00);
  }
}

void Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2835E2988;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x223DC4CD0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x223DC4D00);
}

void nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::~BertReshapableE5MLModule(nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule *this)
{
  *this = &unk_2835E5CD8;
  v2 = *(this + 116);
  if (v2)
  {
    *(this + 117) = v2;
    operator delete(v2);
  }

  v3 = *(this + 113);
  if (v3)
  {
    *(this + 114) = v3;
    operator delete(v3);
  }

  nlv4_inference_orchestrator::inference_engine::BertE5MLModule::~BertE5MLModule(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5CD8;
  v2 = *(this + 116);
  if (v2)
  {
    *(this + 117) = v2;
    operator delete(v2);
  }

  v3 = *(this + 113);
  if (v3)
  {
    *(this + 114) = v3;
    operator delete(v3);
  }

  nlv4_inference_orchestrator::inference_engine::BertE5MLModule::~BertE5MLModule(this);
}

void nlv4_inference_orchestrator::inference_engine::BertE5MLModule::~BertE5MLModule(void **this)
{
  *this = &unk_2835E5DF8;
  if (*(this + 903) < 0)
  {
    operator delete(this[110]);
  }

  if (*(this + 879) < 0)
  {
    operator delete(this[107]);
  }

  if (*(this + 855) < 0)
  {
    operator delete(this[104]);
  }

  if (*(this + 831) < 0)
  {
    operator delete(this[101]);
  }

  if (*(this + 807) < 0)
  {
    operator delete(this[98]);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::~EspressoE5MLModule((this + 54));

  nlv4_inference_orchestrator::inference_engine::BertModule::~BertModule(this);
}

{
  nlv4_inference_orchestrator::inference_engine::BertE5MLModule::~BertE5MLModule(this);

  JUMPOUT(0x223DC4D00);
}

void nlv4_inference_orchestrator::inference_engine::BertModule::~BertModule(void **this)
{
  *this = &unk_2835E5EC8;
  if (*(this + 423) < 0)
  {
    operator delete(this[50]);
  }

  if (*(this + 399) < 0)
  {
    operator delete(this[47]);
  }

  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
  }

  if (*(this + 351) < 0)
  {
    operator delete(this[41]);
  }

  if (*(this + 327) < 0)
  {
    operator delete(this[38]);
  }

  if (*(this + 303) < 0)
  {
    operator delete(this[35]);
  }

  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  v2 = this[17];
  if (v2)
  {
    this[18] = v2;
    operator delete(v2);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void sentencepiece::SentencePieceProcessor::Encode(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, sentencepiece::SentencePieceText *a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (!*a5)
  {
    sentencepiece::util::Status::~Status(a5);
    if (a4)
    {
      sentencepiece::SentencePieceText::Clear(a4);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v17, &v14);
      if (!*a5)
      {
        sentencepiece::util::Status::~Status(a5);
        (*(*a1[1] + 40))(__p);
        if (v19 >= 0)
        {
          v10 = HIBYTE(v19);
        }

        else
        {
          v10 = v18;
        }

        sentencepiece::SentencePieceProcessor::PopulateSentencePieceText(a1, a2, a3, v10, &v14, __p, a4, a5);
        if (!*a5)
        {
          sentencepiece::util::Status::~Status(a5);
          sentencepiece::util::Status::Status(v11);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }
    }

    else
    {
      LODWORD(v17) = 13;
      v12 = std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "(", 1);
      MEMORY[0x223DC4920](&v18, 674);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "spt", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "output proto is null", 20);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v17, a5);
      v18 = *MEMORY[0x277D82828];
      *(&v18 + *(v18 - 24)) = *(MEMORY[0x277D82828] + 24);
      v19 = MEMORY[0x277D82878] + 16;
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      v19 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v20);
      std::ostream::~ostream();
      MEMORY[0x223DC4C10](&v22);
    }
  }
}

void sub_22289FF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceText::Clear(sentencepiece::SentencePieceText *this)
{
  google::protobuf::internal::ExtensionSet::Clear(this + 16);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(this + 48);
  if (*(this + 40))
  {
    v2 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  *(this + 20) = 0;
  *(this + 10) = 0;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }
}

void google::protobuf::internal::ExtensionSet::Clear(uint64_t this)
{
  v2 = *(this + 16);
  if (*(this + 8) >= 0x101u)
  {
    v7 = *v2;
    v6 = v2 + 1;
    v5 = v7;

    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::Clear(void)::$_0>(v5, v6);
  }

  else if (*(this + 10))
  {
    v3 = 32 * *(this + 10);
    v4 = (v2 + 1);
    do
    {
      google::protobuf::internal::ExtensionSet::Extension::Clear(v4);
      v4 = (v4 + 32);
      v3 -= 32;
    }

    while (v3);
  }
}

void *sentencepiece::normalizer::Normalizer::Normalize@<X0>(size_t a1@<X0>, sentencepiece::string_util *a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X3>, const void **a5@<X4>, sentencepiece::util::Status *a6@<X8>)
{
  v8 = a3;
  a5[1] = *a5;
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    *a4->__r_.__value_.__l.__data_ = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    if (!a3)
    {
LABEL_11:

      return sentencepiece::util::Status::Status(a6);
    }
  }

  else
  {
    a4->__r_.__value_.__s.__data_[0] = 0;
    *(&a4->__r_.__value_.__s + 23) = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  result = (*(*a1 + 24))(a1);
  if (*a6)
  {
    return result;
  }

  sentencepiece::util::Status::~Status(a6);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v14 = 0;
    while (1)
    {
      sentencepiece::normalizer::Normalizer::NormalizePrefix(&v41, a2, a1, v8, v13);
      if (v42 != 1 || *v41 != 32)
      {
        break;
      }

      a2 = (a2 + v43);
      v14 += v43;
      v8 -= v43;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v39 = a6;
  }

  else
  {
    v39 = a6;
    v14 = 0;
  }

  std::string::reserve(a4, 3 * v8);
  std::vector<double>::reserve(a5, 3 * v8);
  if ((*(a1 + 48) & 1) == 0 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v15 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v41 = v14;
        std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
        --v15;
      }

      while (v15);
    }

    else
    {
      std::string::append(a4, " ");
      v41 = v14;
      std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
    }
  }

  v17 = (*(**(a1 + 32) + 24))(*(a1 + 32));
  do
  {
    sentencepiece::normalizer::Normalizer::NormalizePrefix(&v41, a2, a1, v8, v16);
    v19 = v41;
    v18 = v42;
    if (v17)
    {
      if (!v42)
      {
        goto LABEL_40;
      }

      while (*v19 == 32)
      {
        ++v19;
        if (!--v18)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v42)
    {
      v17 = 0;
      goto LABEL_40;
    }

    v20 = 0;
    v40 = v14;
    v21 = v14;
    do
    {
      v22 = (*(**(a1 + 32) + 32))(*(a1 + 32));
      v23 = v19[v20];
      if (v22 && v23 == 32)
      {
        std::string::append(a4, "▁", 3uLL);
        v24 = 3;
        do
        {
          v47[0] = v21;
          std::vector<unsigned long>::push_back[abi:ne200100](a5, v47);
          --v24;
        }

        while (v24);
      }

      else
      {
        std::string::push_back(a4, v23);
        v47[0] = v21;
        std::vector<unsigned long>::push_back[abi:ne200100](a5, v47);
      }

      ++v20;
    }

    while (v20 != v18);
    v17 = v19[v18 - 1] == 32;
    v14 = v40;
LABEL_40:
    v14 += v43;
    a2 = (a2 + v43);
    v8 -= v43;
    v17 &= (*(**(a1 + 32) + 24))(*(a1 + 32));
  }

  while (v8);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v25 = (*(**(a1 + 32) + 32))(*(a1 + 32));
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    LODWORD(v27) = v14;
    if (v25)
    {
      v28 = "▁";
    }

    else
    {
      v28 = " ";
    }

    while (1)
    {
      v29 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v29 & 0x8000000000000000) != 0)
      {
        v30 = a4->__r_.__value_.__r.__words[0];
        size = a4->__r_.__value_.__l.__size_;
      }

      else
      {
        v30 = a4;
        size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      v32 = size >= v26;
      v33 = size - v26;
      if (!v32 || memcmp(v30 + v33, v28, v26))
      {
        break;
      }

      if ((v29 & 0x80000000) != 0)
      {
        v29 = a4->__r_.__value_.__l.__size_;
      }

      if (v29 - v26 < 0)
      {
        LODWORD(v41) = 13;
        v36 = std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(", 1);
        MEMORY[0x223DC4920](&v42, 186);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, ") [", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(length) >= (0)", 15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "] ", 2);
        sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v41, v39);
        goto LABEL_72;
      }

      v34 = (v29 - v26) & 0x7FFFFFFF;
      v27 = *(*a5 + v34);
      std::string::resize(a4, v34, 0);
      std::vector<unsigned long>::resize(a5, v34);
    }
  }

  else
  {
    LODWORD(v27) = v14;
  }

  if (*(a1 + 48) == 1 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v35 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v41 = v27;
        std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
        --v35;
      }

      while (v35);
    }

    else
    {
      std::string::append(a4, " ");
      v41 = v27;
      std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
    }
  }

  v41 = v27;
  std::vector<unsigned long>::push_back[abi:ne200100](a5, &v41);
  v37 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v37 & 0x8000000000000000) != 0)
  {
    v37 = a4->__r_.__value_.__l.__size_;
  }

  if ((a5[1] - *a5) >> 3 == v37 + 1)
  {
    return sentencepiece::util::Status::Status(v39);
  }

  LODWORD(v41) = 13;
  v38 = std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(", 1);
  MEMORY[0x223DC4920](&v42, 198);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, ") [", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(norm_to_orig->size()) == (normalized->size() + 1)", 50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "] ", 2);
  sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v41, v39);
LABEL_72:
  v42 = *MEMORY[0x277D82828];
  *(&v42 + *(v42 - 24)) = *(MEMORY[0x277D82828] + 24);
  v43 = MEMORY[0x277D82878] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v44);
  std::ostream::~ostream();
  return MEMORY[0x223DC4C10](&v46);
}

void sub_2228A086C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

size_t sentencepiece::normalizer::Normalizer::NormalizePrefix@<X0>(char **__return_ptr a1@<X8>, sentencepiece::string_util *this@<X1>, size_t result@<X0>, unint64_t a4@<X2>, unint64_t *a5@<X3>)
{
  v29[63] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = this;
    v8 = result;
    v9 = *(result + 40);
    if (v9 && (v28[0] = 0, result = sentencepiece::normalizer::PrefixMatcher::PrefixMatch(v9, this, a4, v28), v28[0] == 1))
    {
      v10 = result;
      if (a4 < result)
      {
        v10 = a4;
      }

      *a1 = v7;
      a1[1] = v10;
      *(a1 + 4) = result;
    }

    else
    {
      v11 = *(v8 + 8);
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = 0;
      v13 = 0;
      v14 = *(v11 + 16);
      v15 = (*v14 >> 10 << ((*v14 >> 6) & 8));
      do
      {
        v16 = v7[v12];
        v17 = v15 ^ v16;
        v18 = v14[v17];
        if ((v18 & 0x800000FF) != v16)
        {
          break;
        }

        v15 = v17 ^ (v18 >> 10 << ((v18 >> 6) & 8));
        if ((v18 & 0x100) != 0)
        {
          if (v13 <= 0x1F)
          {
            v19 = &v28[16 * v13];
            *v19 = v14[v15] & 0x7FFFFFFF;
            *(v19 + 1) = v12 + 1;
          }

          ++v13;
        }

        ++v12;
      }

      while (a4 != v12);
      if (!v13)
      {
        goto LABEL_24;
      }

      v20 = 0;
      v21 = 0;
      v22 = v29;
      v23 = v29;
      do
      {
        v25 = *v23;
        v23 += 2;
        v24 = v25;
        if (!v20 || v24 > v20)
        {
          v21 = *(v22 - 2);
          v20 = v24;
        }

        v22 = v23;
        --v13;
      }

      while (v13);
      if (v20)
      {
        v7 = (*(v8 + 16) + v21);
        result = strlen(v7);
      }

      else
      {
LABEL_24:
        *v28 = 0;
        v26 = sentencepiece::string_util::DecodeUTF8(v7, &v7[a4], v28, a5);
        v27 = v26 != 65533;
        if (v26 == 65533)
        {
          result = 3;
        }

        else
        {
          result = *v28;
        }

        if (*v28 == 3)
        {
          v27 = 1;
        }

        if (v27)
        {
          LODWORD(v20) = *v28;
        }

        else
        {
          LODWORD(v20) = 1;
        }

        if (!v27)
        {
          v7 = &sentencepiece::normalizer::Normalizer::NormalizePrefix(std::string_view)const::kReplacementChar;
        }
      }

      *a1 = v7;
      a1[1] = result;
      *(a1 + 4) = v20;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    *(a1 + 4) = 0;
  }

  return result;
}

uint64_t sentencepiece::normalizer::PrefixMatcher::PrefixMatch(uint64_t a1, _BYTE *a2, uint64_t a3, BOOL *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_33;
  }

  v4 = *(*a1 + 16);
  v5 = (*v4 >> 10 << ((*v4 >> 6) & 8));
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a2[v6];
      v9 = v5 ^ v8;
      v10 = v4[v9];
      if ((v10 & 0x800000FF) != v8)
      {
        break;
      }

      v5 = v9 ^ (v10 >> 10 << ((v10 >> 6) & 8));
      if ((v10 & 0x100) != 0)
      {
        if (v7 <= 0x3F)
        {
          v11 = &v23[v7];
          *v11 = v4[v5] & 0x7FFFFFFF;
          *(v11 + 1) = v6 + 1;
        }

        ++v7;
      }

      ++v6;
    }

    while (a3 != v6);
  }

  else
  {
    v12 = *a2;
    if (*a2)
    {
      v7 = 0;
      v13 = 1;
      do
      {
        v14 = v5 ^ v12;
        v15 = v4[v14];
        if ((v15 & 0x800000FF) != v12)
        {
          break;
        }

        v5 = v14 ^ (v15 >> 10 << ((v15 >> 6) & 8));
        if ((v15 & 0x100) != 0)
        {
          if (v7 <= 0x3F)
          {
            v16 = &v23[v7];
            *v16 = v4[v5] & 0x7FFFFFFF;
            *(v16 + 1) = v13;
          }

          ++v7;
        }

        v12 = a2[v13++];
      }

      while (v12);
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  if (a4)
  {
    *a4 = v7 > 0;
  }

  if (!v7)
  {
LABEL_33:
    v22 = asc_2229DB11A[*a2 >> 4];
    if (v22 >= a3)
    {
      return a3;
    }

    else
    {
      return v22;
    }
  }

  if (v7 < 1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v18 = v7 & 0x7FFFFFFF;
  v19 = v23 + 2;
  do
  {
    v21 = *v19;
    v19 += 4;
    v20 = v21;
    if (result <= v21)
    {
      result = v20;
    }

    else
    {
      result = result;
    }

    --v18;
  }

  while (v18);
  return result;
}

uint64_t sentencepiece::string_util::DecodeUTF8(sentencepiece::string_util *this, const char *a2, char *a3, unint64_t *a4)
{
  v4 = *this;
  if ((v4 & 0x80000000) == 0)
  {
    *a3 = 1;
    return *this;
  }

  v6 = a2 - this;
  if ((a2 - this) >= 2)
  {
    if ((v4 & 0xE0) == 0xC0)
    {
      v7 = *(this + 1);
      if (v7 <= -65)
      {
        v8 = (v4 & 0x1F) << 6;
        if (v8 >= 0x80)
        {
          result = v8 | v7 & 0x3F;
          v9 = 2;
LABEL_8:
          *a3 = v9;
          return result;
        }
      }
    }

    else if (v6 != 2)
    {
      if ((v4 & 0xF0) == 0xE0)
      {
        v10 = *(this + 1);
        if (v10 <= -65)
        {
          v11 = *(this + 2);
          if (v11 <= -65)
          {
            v12 = (v4 & 0xF) << 12;
            v13 = v12 & 0xFFFFF03F | ((v10 & 0x3F) << 6);
            if (v13 >= 0x800 && ((v12 - 57344) < 0x102000 || v13 >> 11 <= 0x1A))
            {
              result = v12 & 0xFFFFF000 | ((v10 & 0x3F) << 6) | v11 & 0x3F;
              v9 = 3;
              goto LABEL_8;
            }
          }
        }
      }

      else if (v6 >= 4 && (v4 & 0xF8) == 0xF0)
      {
        v14 = *(this + 1);
        if (v14 <= -65)
        {
          v15 = *(this + 2);
          if (v15 <= -65)
          {
            v16 = *(this + 3);
            if (v16 <= -65)
            {
              v17 = ((v4 & 7) << 18) | ((v14 & 0x3F) << 12);
              if (v17 >= 0x10000)
              {
                result = v16 & 0x3F | ((v15 & 0x3F) << 6) | v17;
                if (v17 - 57344 < 0x102000 || result >> 11 <= 0x1A)
                {
                  v9 = 4;
                  goto LABEL_8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = 1;
  return 65533;
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void nlv4_inference_orchestrator::span_matching::SpanEncoder::applyEncoding(nlv4_inference_orchestrator::span_matching::SpanEncoder *a1@<X0>, const sirinluinternal::MatchingSpan **a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v10 = *a3;
  v9 = a3[1];
  *a5 = *a4;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  __p.__r_.__value_.__r.__words[0] = a5 + 16;
  __p.__r_.__value_.__s.__data_[8] = 0;
  v12 = v9 - v10;
  v11 = v12 == 0;
  v13 = v12 >> 4;
  *(a5 + 8) = 0x8E38E38E38E38E39 * v13;
  if (!v11)
  {
    std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__vallocate[abi:ne200100]((a5 + 16), 0x8E38E38E38E38E39 * v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "[CLS_SPAN]");
  std::string::basic_string[abi:ne200100]<0>(v20, "[SEP_SPAN]");
  std::string::basic_string[abi:ne200100]<0>(v21, "[NO_SPAN]");
  std::unordered_set<std::string>::unordered_set(a5 + 40, &__p.__r_.__value_.__l.__data_, 3);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v21[i + 2]) < 0)
    {
      operator delete(v21[i]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>((a5 + 80), "B");
  std::string::basic_string[abi:ne200100]<0>((a5 + 104), "I");
  std::string::basic_string[abi:ne200100]<0>((a5 + 128), "L");
  std::string::basic_string[abi:ne200100]<0>((a5 + 152), "O");
  std::string::basic_string[abi:ne200100]<0>((a5 + 176), "U");
  std::string::basic_string[abi:ne200100]<0>((a5 + 200), "-");
  v15 = *a2;
  v16 = a2[1];
  while (v15 != v16)
  {
    v17 = *(v15 + 6);
    if (v17)
    {
      nlv4_inference_orchestrator::span_matching::TagBucketList::addTag(a5, v17, v15);
      nlv4_inference_orchestrator::span_matching::SpanEncoder::getTopLevelUsoEntityFromDataDetectorSpan(&__p, a1, v15);
      v18 = v20[0];
      if (!*a4 && (v20[0] & 1) != 0)
      {
        nlv4_inference_orchestrator::span_matching::TagBucketList::addTag(a5, &__p, v15);
        v18 = v20[0];
      }

      if ((v18 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v15 = (v15 + 88);
  }
}

void nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList *this@<X1>, uint64_t a2@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v113 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  v7 = a3[1];
  nlv4_inference_orchestrator::span_matching::TagBucketList::getBucketLists(buf, this);
  v9 = 0x8E38E38E38E38E39 * ((v7 - v8) >> 4);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
  v100.__r_.__value_.__r.__words[0] = buf;
  std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__destroy_vector::operator()[abi:ne200100](&v100);
  if (v9 == v10)
  {
    nlv4_inference_orchestrator::span_matching::TagBucketList::getBucketLists(v104, this);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v11 = a2;
    if (v4[1] != *v4)
    {
      v12 = 0;
      v97 = a4;
      v13 = &v111;
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * (v104[1] - v104[0]) <= v12)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        v14 = &v104[0][3 * v12];
        v15 = v14[1];
        v16 = 126 - 2 * __clz((v15 - *v14) >> 5);
        if (v15 == *v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,false>(*v14, v15, v17, 1);
        v18 = *v14;
        v19 = v14[1];
        v20 = (*v14 + 4);
        if (*v14 != v19 && v20 != v19)
        {
          while (1)
          {
            v22 = v18;
            v18 = v20;
            v23 = *(v22 + 23);
            if (v23 >= 0)
            {
              v24 = *(v22 + 23);
            }

            else
            {
              v24 = v22[1];
            }

            v25 = *(v22 + 55);
            v26 = v25;
            if (v25 < 0)
            {
              v25 = v22[5];
            }

            if (v24 == v25)
            {
              v27 = v23 >= 0 ? v22 : *v22;
              v28 = v26 >= 0 ? v18 : *v18;
              if (!memcmp(v27, v28, v24))
              {
                v29 = v22[3];
                v30 = v22[7];
                v32 = v29[1];
                v31 = v29[2];
                v33 = v30[1];
                if (v31 - v32 == v30[2] - v33)
                {
                  while (v32 != v31)
                  {
                    if (*v32 != *v33)
                    {
                      goto LABEL_30;
                    }

                    v32 += 4;
                    ++v33;
                  }

                  if (v29[7] == v30[7])
                  {
                    break;
                  }
                }
              }
            }

LABEL_30:
            v20 = (v18 + 4);
            if (v18 + 4 == v19)
            {
              goto LABEL_31;
            }
          }

          if (v22 != v19)
          {
            v75 = v4;
            v76 = v22 + 8;
            if (v22 + 8 == v19)
            {
              v90 = v22;
            }

            else
            {
              v77 = v22 + 4;
              do
              {
                v78 = v76;
                v79 = *(v22 + 23);
                if (v79 >= 0)
                {
                  v80 = *(v22 + 23);
                }

                else
                {
                  v80 = v22[1];
                }

                v81 = *(v77 + 55);
                v82 = v81;
                if ((v81 & 0x80u) != 0)
                {
                  v81 = v77[5];
                }

                if (v80 != v81)
                {
                  goto LABEL_91;
                }

                v83 = v79 >= 0 ? v22 : *v22;
                v84 = v82 >= 0 ? v78 : *v78;
                if (memcmp(v83, v84, v80))
                {
                  goto LABEL_91;
                }

                v85 = v22[3];
                v86 = v77[7];
                v88 = v85[1];
                v87 = v85[2];
                v89 = v86[1];
                if (v87 - v88 != v86[2] - v89)
                {
                  goto LABEL_91;
                }

                while (v88 != v87)
                {
                  if (*v88 != *v89)
                  {
                    goto LABEL_91;
                  }

                  v88 += 4;
                  ++v89;
                }

                if (v85[7] == v86[7])
                {
                  v90 = v22;
                }

                else
                {
LABEL_91:
                  v90 = (v22 + 4);
                  if (*(v22 + 55) < 0)
                  {
                    operator delete(*v90);
                  }

                  v91 = *v78;
                  v22[6] = v78[2];
                  *v90 = v91;
                  *(v77 + 55) = 0;
                  *v78 = 0;
                  v22[7] = v77[7];
                  v22 += 4;
                }

                v76 = v78 + 4;
                v77 = v78;
              }

              while (v78 + 4 != v19);
            }

            v19 = (v90 + 4);
            v4 = v75;
            v13 = &v111;
          }
        }

LABEL_31:
        v102 = 0;
        __n[0] = 0;
        __n[1] = 0;
        v34 = (v19 - *v14) >> 5;
        if (v34 >= 1)
        {
          v107 = &v102;
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v34);
        }

        v35 = 0;
        if (*(v11 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v100, *v11, *(v11 + 8));
          v35 = __n[0];
        }

        else
        {
          v100 = *v11;
        }

        v101 = a2 + 48;
        if (v35 >= __n[1])
        {
          v37 = (v35 - v102) >> 5;
          v38 = v37 + 1;
          if ((v37 + 1) >> 59)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v39 = __n[1] - v102;
          if ((__n[1] - v102) >> 4 > v38)
          {
            v38 = v39 >> 4;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFE0)
          {
            v40 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v38;
          }

          v107 = &v102;
          if (v40)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v40);
          }

          v41 = 32 * v37;
          v42 = *&v100.__r_.__value_.__l.__data_;
          *(v41 + 16) = *(&v100.__r_.__value_.__l + 2);
          *v41 = v42;
          memset(&v100, 0, sizeof(v100));
          *(v41 + 24) = v101;
          v43 = (32 * v37 - (__n[0] - v102));
          memcpy(v43, v102, __n[0] - v102);
          v44 = v102;
          v45 = __n[1];
          v102 = v43;
          __n[0] = 32 * v37 + 32;
          __n[1] = 0;
          *&buf[16] = v44;
          v106 = v45;
          *buf = v44;
          *&buf[8] = v44;
          std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(buf);
          __n[0] = 32 * v37 + 32;
          v13 = &v111;
          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v36 = *&v100.__r_.__value_.__l.__data_;
          *(v35 + 16) = *(&v100.__r_.__value_.__l + 2);
          *v35 = v36;
          *(v35 + 24) = v101;
          __n[0] = v35 + 32;
        }

        v46 = (*v4 + 144 * v12);
        MEMORY[0x223DC3240](buf, v46);
        v47 = v46[6];
        v48 = v46[8];
        v109 = v46[7];
        v110 = v48;
        v108 = v47;
        *(v13 + 1) = 0;
        *(v13 + 2) = 0;
        *v13 = 0;
        std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*>(v13, v102, __n[0], (__n[0] - v102) >> 5);
        v49 = a4[1];
        v50 = a4[2];
        if (v49 >= v50)
        {
          v56 = v4;
          v57 = 0xCF3CF3CF3CF3CF3DLL * ((v49 - *a4) >> 3);
          v58 = v57 + 1;
          if (v57 + 1 > 0x186186186186186)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v59 = 0xCF3CF3CF3CF3CF3DLL * ((v50 - *a4) >> 3);
          if (2 * v59 > v58)
          {
            v58 = 2 * v59;
          }

          if (v59 >= 0xC30C30C30C30C3)
          {
            v60 = 0x186186186186186;
          }

          else
          {
            v60 = v58;
          }

          if (v60)
          {
            if (v60 <= 0x186186186186186)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v61 = 8 * ((v49 - *a4) >> 3);
          MEMORY[0x223DC3240](v61, buf);
          v62 = a4;
          v63 = a4[1];
          v64 = *v62;
          i = v63 - *v62;
          v66 = v109;
          *(v61 + 96) = v108;
          *(v61 + 112) = v66;
          v67 = v111;
          *(v61 + 128) = v110;
          *(v61 + 144) = v67;
          *(v61 + 160) = v112;
          *(v13 + 1) = 0;
          *(v13 + 2) = 0;
          *v13 = 0;
          if (v63 != v64)
          {
            v98 = i;
            v68 = 0;
            v69 = -8 * ((v63 - v64) >> 3) + 168 * v57;
            do
            {
              v70 = (v64 + v68);
              v71 = MEMORY[0x223DC3240](v69 + v68, v64 + v68);
              v72 = *(v64 + v68 + 96);
              v73 = *(v64 + v68 + 128);
              *(v71 + 112) = *(v64 + v68 + 112);
              *(v71 + 128) = v73;
              *(v71 + 96) = v72;
              *(v71 + 152) = 0;
              *(v71 + 160) = 0;
              *(v71 + 144) = 0;
              *(v71 + 144) = *(v64 + v68 + 144);
              *(v71 + 160) = *(v64 + v68 + 160);
              v70[18] = 0;
              v70[19] = 0;
              v70[20] = 0;
              v68 += 168;
            }

            while (v64 + v68 != v63);
            for (i = v98; v64 != v63; v64 += 168)
            {
              v100.__r_.__value_.__r.__words[0] = v64 + 144;
              std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v100);
              MEMORY[0x223DC3250](v64);
            }
          }

          v55 = v61 + 168;
          a4 = v97;
          v74 = *v97;
          *v97 = v61 - i;
          *(v97 + 1) = (v61 + 168);
          if (v74)
          {
            operator delete(v74);
          }

          v4 = v56;
          v11 = a2;
          v54 = &v111;
        }

        else
        {
          v51 = MEMORY[0x223DC3240]();
          v52 = v108;
          v53 = v110;
          *(v51 + 112) = v109;
          *(v51 + 128) = v53;
          *(v51 + 96) = v52;
          *(v51 + 152) = 0;
          *(v51 + 160) = 0;
          *(v51 + 144) = 0;
          *(v51 + 144) = v111;
          *(v51 + 160) = v112;
          *v13 = 0;
          *(v13 + 1) = 0;
          *(v13 + 2) = 0;
          v54 = v13;
          v55 = v51 + 168;
        }

        a4[1] = v55;
        v100.__r_.__value_.__r.__words[0] = v54;
        std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v100);
        MEMORY[0x223DC3250](buf);
        *buf = &v102;
        std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](buf);
        ++v12;
        v13 = v54;
      }

      while (v12 < 0x8E38E38E38E38E39 * ((v4[1] - *v4) >> 4));
    }

    *buf = v104;
    std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v92 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = *(a2 + 40);
      if (v93 >= 8)
      {
        v95 = SNLPOSLoggerForCategory(4);
        v94 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "<UNDEFINED_COMPONENT>";
          *&buf[12] = 2048;
          *&buf[14] = v93;
          _os_log_impl(&dword_22284A000, v95, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }
      }

      else
      {
        v94 = off_2784B6F30[v93];
      }

      nlv4_inference_orchestrator::span_matching::TagBucketList::getBucketLists(&v100, this);
      v96 = 0x8E38E38E38E38E39 * ((v4[1] - *v4) >> 4);
      *buf = 136315650;
      *&buf[4] = v94;
      *&buf[12] = 2048;
      *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v100.__r_.__value_.__l.__size_ - v100.__r_.__value_.__r.__words[0]) >> 3);
      *&buf[22] = 2048;
      v106 = v96;
      _os_log_impl(&dword_22284A000, v92, OS_LOG_TYPE_ERROR, "[%s] Span encoding failed; number of buckets (%lu) not matching number of tokens (%lu).\n", buf, 0x20u);
      v104[0] = &v100;
      std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__destroy_vector::operator()[abi:ne200100](v104);
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_2228A1CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a22;
  std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::pair<nlv4_inference_orchestrator::orchestration::IndexedToken,std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a25;
  std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

_OWORD *std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::IndexedToken const&>(uint64_t *a1, _OWORD *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::IndexedToken>>(v6);
  }

  v7 = 144 * v2;
  MEMORY[0x223DC3240](144 * v2, a2);
  v8 = a2[6];
  v9 = a2[8];
  *(v7 + 112) = a2[7];
  *(v7 + 128) = v9;
  *(v7 + 96) = v8;
  v10 = 144 * v2 + 144;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = MEMORY[0x223DC3240](v15, v14);
      v17 = v14[6];
      v18 = v14[8];
      v16[7] = v14[7];
      v16[8] = v18;
      v16[6] = v17;
      v14 += 9;
      v15 = v16 + 9;
    }

    while (v14 != v12);
    do
    {
      MEMORY[0x223DC3250](v11);
      v11 += 9;
    }

    while (v11 != v12);
  }

  v19 = *a1;
  *a1 = v13;
  *(a1 + 1) = v10;
  if (v19)
  {
    operator delete(v19);
  }

  return v10;
}

void itfm_inference_orchestrator::orchestration::ITFMOrchestrator::handle(itfm_inference_orchestrator::orchestration::ITFMOrchestrator *a1, const sirinluinternalitfm::ITFMParserRequest **a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v55, "Received null input parser request");
    std::runtime_error::runtime_error(exception, &v55);
    exception->__vftable = &unk_2835E9238;
  }

  itfm_inference_orchestrator::orchestration::ITFMOrchestrator::validateRequest(&v53, a1, v4);
  if (v54 == 1)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    v40 = &v39->__vftable;
    if (v54)
    {
      std::runtime_error::runtime_error(v39, &v53);
      *v40 = &unk_2835E9238;
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v51.__r_.__value_.__s.__data_[0] = 0;
  v52 = 0;
  v6 = *a2;
  v7 = *(*a2 + 5);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&v51, v8);
      v6 = *a2;
    }
  }

  v41 = a2;
  v42 = a1;
  v9 = *(v6 + 8);
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v43 = v9;
  v10 = *(v9 + 24);
  if (!v10 || (v11 = *(v10 + 24), v12 = *(v10 + 32), v11 == v12))
  {
LABEL_24:
    *v46 = 0u;
    v47 = 0u;
    *v45 = 0u;
    v29 = SNLPOSLoggerForCategory(7);
    v30 = os_signpost_id_generate(v29);
    v31 = SNLPOSLoggerForCategory(7);
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = v31;
      if (os_signpost_enabled(v31))
      {
        LOWORD(v55.__r_.__value_.__l.__data_) = 0;
        _os_signpost_emit_with_name_impl(&dword_22284A000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "ITFM Span Featurization", "", &v55, 2u);
      }
    }

    v33 = SNLPOSLoggerForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v55.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_DEFAULT, "BEGIN ITFM Span Featurization", &v55, 2u);
    }

    v34 = *(*v41 + 2);
    v35 = *(*v41 + 3);
    memset(v44, 0, sizeof(v44));
    v55.__r_.__value_.__r.__words[0] = v44;
    v55.__r_.__value_.__s.__data_[8] = 0;
    v36 = v35 - v34;
    if (v35 != v34)
    {
      if ((v36 >> 3) < 0x2E8BA2E8BA2E8BBLL)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(v36 >> 3);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    itfm_inference_orchestrator::orchestration::ITFMOrchestrator::assertAssetVersionValid(v42);
    v37 = (*(**(v42 + 114) + 48))(*(v42 + 114));
    nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::featurize(v42 + 46, v45, v44, &v48, &v51, v37);
  }

  while (1)
  {
    v13 = *v11;
    if ((~*(*v11 + 92) & 3) != 0)
    {
      break;
    }

    v14 = *(v13 + 72);
    v15 = *(v13 + 76);
    if (v14 > v15 || ((v15 | v14) & 0x80000000) != 0)
    {
      break;
    }

    v16 = *(v43 + 16);
    UnicodeScalarAndUtf8Offsets = snlp::common::utilities::getUnicodeScalarAndUtf8Offsets(v16, *(v13 + 72));
    v19 = v18;
    v20 = snlp::common::utilities::getUnicodeScalarAndUtf8Offsets(v16, v15);
    v22 = v21;
    MEMORY[0x223DC3240](buf, v13);
    *&v62 = v19;
    *(&v62 + 1) = v22;
    *&v63 = v14;
    *(&v63 + 1) = v15;
    *&v64 = UnicodeScalarAndUtf8Offsets;
    *(&v64 + 1) = v20;
    MEMORY[0x223DC3240](&v55, buf);
    v56 = v62;
    v57 = v63;
    v58 = v64;
    LOBYTE(v59) = 1;
    MEMORY[0x223DC3250](buf);
    if ((v59 & 1) == 0)
    {
      goto LABEL_17;
    }

    if (v49 >= v50)
    {
      v26 = std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::IndexedToken const&>(&v48, &v55);
    }

    else
    {
      v23 = MEMORY[0x223DC3240](v49, &v55);
      v24 = v56;
      v25 = v58;
      v23[7] = v57;
      v23[8] = v25;
      v23[6] = v24;
      v26 = v23 + 9;
    }

    v49 = v26;
LABEL_21:
    if (v59 == 1)
    {
      MEMORY[0x223DC3250](&v55);
    }

    if (++v11 == v12)
    {
      goto LABEL_24;
    }
  }

  v55.__r_.__value_.__s.__data_[0] = 0;
  LOBYTE(v59) = 0;
LABEL_17:
  v27 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = *(v13 + 64);
    if (*(v28 + 23) < 0)
    {
      v28 = *v28;
    }

    *buf = 136642819;
    v61 = v28;
    _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_ERROR, "A token could not be reindexed; %{sensitive}s", buf, 0xCu);
  }

  goto LABEL_21;
}

void sub_2228A2E14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2228A2E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, int a55, __int16 a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  MEMORY[0x223DC3310](a12, a2, a3, a4, a5, a6, a7, a8);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a25);
  nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(&STACK[0x250]);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a32);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  if (*(v66 - 144) == 1)
  {
    MEMORY[0x223DC30C0](v66 - 256);
  }

  if (a54 == 1)
  {
    MEMORY[0x223DC2F90](&a44);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a56);
  STACK[0x250] = &a63;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a65);
  STACK[0x250] = &a66;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  JUMPOUT(0x2228A3008);
}

void nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::featurize(int *a1, _BYTE *a2, const sirinluinternal::MatchingSpan **a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v18 = *MEMORY[0x277D85DE8];
  v10 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a1;
    if (v11 >= 8)
    {
      v13 = SNLPOSLoggerForCategory(4);
      v12 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315394;
        *&buf[1] = "<UNDEFINED_COMPONENT>";
        v16 = 2048;
        v17 = v11;
        _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v12 = off_2784B6F30[v11];
    }

    buf[0] = 136315138;
    *&buf[1] = v12;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] Span Input", buf, 0xCu);
  }

  buf[0] = 0;
  nlv4_inference_orchestrator::span_matching::SpanEncoder::encode((a1 + 64), a3, a4, buf, v14);
  nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::logSpanEncoding(a1, v14);
  nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::tensoriseTokens(a1, v14, v6, buf);
}

void sub_2228A3358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  a13 = &a10;
  std::vector<std::pair<nlv4_inference_orchestrator::orchestration::IndexedToken,std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__destroy_vector::operator()[abi:ne200100](void *****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlv4_inference_orchestrator::span_matching::SpanEncoder::encode(nlv4_inference_orchestrator::span_matching::SpanEncoder *a1@<X0>, const sirinluinternal::MatchingSpan **a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  if (*a3 == a3[1])
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    nlv4_inference_orchestrator::span_matching::SpanEncoder::applyEncoding(a1, a2, a3, a4, v8);
    nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(v8, a1, a3, a5);
    nlv4_inference_orchestrator::span_matching::TagBucketList::~TagBucketList(v8);
  }
}

uint64_t *nlv4_inference_orchestrator::span_matching::TagBucketList::getBucketLists@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = this[2];
  v3 = this[3];
  if (v3 != v2)
  {
    std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__vallocate[abi:ne200100](a1, 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  }

  return this;
}

uint64_t snlp::common::utilities::getUnicodeScalarAndUtf8Offsets(uint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = *(a1 + 23);
  }

  if (v5)
  {
    v6 = 0;
    result = 0;
    v8 = 0;
    while (1)
    {
      if (v6 > a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, a2);
        v23 = std::string::insert(&v29, 0, "Given UTF-16 offset is not a Unicode scalar (code point) boundary: ");
        v24 = *&v23->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v30);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v6 == a2)
      {
        break;
      }

      v9 = v8 + 1;
      v10 = *(v4 + v8);
      if (v10 < 0)
      {
        if (v9 == v5)
        {
          goto LABEL_36;
        }

        v12 = *(v4 + v8);
        if (v12 < 0xE0)
        {
          if (v12 < 0xC2)
          {
            goto LABEL_36;
          }

          v15 = v10 & 0x1F;
        }

        else
        {
          if (v12 > 0xEF)
          {
            if (v12 > 0xF4 || (v16 = v12 - 240, v17 = *(v4 + v9), ((byte_2229DAB85[v17 >> 4] >> v16) & 1) == 0) || (v9 = v8 + 2, v8 + 2 == v5) || (v14 = *(v4 + v9) ^ 0x80, v14 > 0x3F))
            {
LABEL_36:
              v18 = __cxa_allocate_exception(0x10uLL);
              std::to_string(&v29, v8);
              v19 = std::string::insert(&v29, 0, "Input string is not a valid UTF-8 sequence! UTF-8 offset: ");
              v20 = *&v19->__r_.__value_.__l.__data_;
              v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
              *&v30.__r_.__value_.__l.__data_ = v20;
              v19->__r_.__value_.__l.__size_ = 0;
              v19->__r_.__value_.__r.__words[2] = 0;
              v19->__r_.__value_.__r.__words[0] = 0;
              std::runtime_error::runtime_error(v18, &v30);
              __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            LODWORD(v13) = v17 & 0x3F | (v16 << 6);
          }

          else
          {
            v13 = v10 & 0xF;
            if (((a00000000000000[v13] >> (*(v4 + v9) >> 5)) & 1) == 0)
            {
              goto LABEL_36;
            }

            v14 = *(v4 + v9) & 0x3F;
          }

          if (++v9 == v5)
          {
            goto LABEL_36;
          }

          v15 = v14 | (v13 << 6);
        }

        if (*(v4 + v9) > -65)
        {
          goto LABEL_36;
        }

        ++v9;
        if (v15 < 0x400)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }
      }

      else
      {
        v11 = 1;
      }

      v6 += v11;
      ++result;
      v8 = v9;
      if (v9 >= v5)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    result = 0;
    v6 = 0;
LABEL_34:
    if (v6 != a2)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v29, a2);
      v27 = std::string::insert(&v29, 0, "Given UTF-16 offset exceeds the input string: ");
      v28 = *&v27->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v26, &v30);
      __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_2228A38AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*>(uint64_t result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2228A3A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,false>(const void **a1, const void **a2, uint64_t a3, char a4)
{
  v326 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v6 = a2 - 4;
    v311 = a2 - 12;
    v313 = a2 - 8;
    v7 = a1;
    v318 = a2;
    while (1)
    {
      while (1)
      {
        v8 = (a2 - v7) >> 5;
        a1 = v7;
        if (v8 > 2)
        {
          v9 = v7;
          switch(v8)
          {
            case 3:

              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(v7, v7 + 4, v6);
              return;
            case 4:

              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(v7, v7 + 4, v7 + 8, v6);
              return;
            case 5:

              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(v7, v7 + 2, v7 + 4, v7 + 12, v6);
              return;
          }
        }

        else
        {
          if (v8 < 2)
          {
            return;
          }

          v9 = v7;
          if (v8 == 2)
          {
            v137 = *(v7 + 23);
            v138 = *(a2 - 9);
            if (v138 >= 0)
            {
              v139 = *(a2 - 9);
            }

            else
            {
              v139 = *(a2 - 3);
            }

            if (v138 >= 0)
            {
              v140 = v6;
            }

            else
            {
              v140 = *(a2 - 4);
            }

            if (v137 >= 0)
            {
              v141 = *(v7 + 23);
            }

            else
            {
              v141 = v7[1];
            }

            if (v137 >= 0)
            {
              v142 = v7;
            }

            else
            {
              v142 = *v7;
            }

            if (v141 >= v139)
            {
              v143 = v139;
            }

            else
            {
              v143 = v141;
            }

            v144 = memcmp(v140, v142, v143);
            v145 = v139 < v141;
            if (v144)
            {
              v145 = v144 < 0;
            }

            if (v145)
            {
              v146 = *v7;
              v322 = v7[2];
              *__p = v146;
              v147 = *v6;
              v7[2] = v6[2];
              *v7 = v147;
              v148 = *__p;
              v6[2] = v322;
              *v6 = v148;
              v149 = v7[3];
              v7[3] = *(a2 - 1);
              *(a2 - 1) = v149;
            }

            return;
          }
        }

        if (v8 <= 23)
        {
          if (a4)
          {
            if (v9 != a2)
            {
              v150 = v7 + 4;
              if (v7 + 4 != a2)
              {
                v151 = 0;
                v152 = v7;
                do
                {
                  v153 = v150;
                  v154 = *(v152 + 23);
                  v155 = *(v152 + 55);
                  if (v155 >= 0)
                  {
                    v156 = *(v152 + 55);
                  }

                  else
                  {
                    v156 = v152[5];
                  }

                  if (v155 >= 0)
                  {
                    v157 = v150;
                  }

                  else
                  {
                    v157 = v152[4];
                  }

                  if (v154 >= 0)
                  {
                    v158 = *(v152 + 23);
                  }

                  else
                  {
                    v158 = v152[1];
                  }

                  if (v154 >= 0)
                  {
                    v159 = v152;
                  }

                  else
                  {
                    v159 = *v152;
                  }

                  if (v158 >= v156)
                  {
                    v160 = v156;
                  }

                  else
                  {
                    v160 = v158;
                  }

                  v161 = memcmp(v157, v159, v160);
                  v162 = v156 < v158;
                  if (v161)
                  {
                    v162 = v161 < 0;
                  }

                  if (v162)
                  {
                    v163 = *v153;
                    v322 = v153[2];
                    *__p = v163;
                    v153[1] = 0;
                    v153[2] = 0;
                    *v153 = 0;
                    v323 = v152[7];
                    if (SHIBYTE(v322) >= 0)
                    {
                      v164 = HIBYTE(v322);
                    }

                    else
                    {
                      v164 = __p[1];
                    }

                    if (SHIBYTE(v322) >= 0)
                    {
                      v165 = __p;
                    }

                    else
                    {
                      v165 = __p[0];
                    }

                    v166 = v151;
                    while (1)
                    {
                      v167 = (a1 + v166);
                      if (*(a1 + v166 + 55) < 0)
                      {
                        operator delete(v167[4]);
                      }

                      *(v167 + 2) = *v167;
                      v168 = v167[2];
                      v169 = v167[3];
                      *(v167 + 23) = 0;
                      *v167 = 0;
                      v167[6] = v168;
                      v167[7] = v169;
                      if (!v166)
                      {
                        break;
                      }

                      v170 = *(a1 + v166 - 9);
                      if (v170 >= 0)
                      {
                        v171 = *(a1 + v166 - 9);
                      }

                      else
                      {
                        v171 = *(a1 + v166 - 24);
                      }

                      if (v170 >= 0)
                      {
                        v172 = a1 + v166 - 32;
                      }

                      else
                      {
                        v172 = *(a1 + v166 - 32);
                      }

                      if (v171 >= v164)
                      {
                        v173 = v164;
                      }

                      else
                      {
                        v173 = v171;
                      }

                      v174 = memcmp(v165, v172, v173);
                      v175 = v164 < v171;
                      if (v174)
                      {
                        v175 = v174 < 0;
                      }

                      v166 -= 32;
                      if (!v175)
                      {
                        v176 = (a1 + v166 + 32);
                        goto LABEL_310;
                      }
                    }

                    v176 = a1;
LABEL_310:
                    if (*(v176 + 23) < 0)
                    {
                      operator delete(*v176);
                    }

                    v177 = *__p;
                    v176[2] = v322;
                    *v176 = v177;
                    v176[3] = v323;
                  }

                  v150 = v153 + 4;
                  v151 += 32;
                  v152 = v153;
                }

                while (v153 + 4 != v318);
              }
            }
          }

          else if (v9 != a2)
          {
            v285 = v7 + 4;
            if (v7 + 4 != a2)
            {
              v286 = v7 - 4;
              do
              {
                v287 = v285;
                v288 = *(a1 + 23);
                v289 = *(a1 + 55);
                if (v289 >= 0)
                {
                  v290 = *(a1 + 55);
                }

                else
                {
                  v290 = a1[5];
                }

                if (v289 >= 0)
                {
                  v291 = v285;
                }

                else
                {
                  v291 = a1[4];
                }

                if (v288 >= 0)
                {
                  v292 = *(a1 + 23);
                }

                else
                {
                  v292 = a1[1];
                }

                if (v288 >= 0)
                {
                  v293 = a1;
                }

                else
                {
                  v293 = *a1;
                }

                if (v292 >= v290)
                {
                  v294 = v290;
                }

                else
                {
                  v294 = v292;
                }

                v295 = memcmp(v291, v293, v294);
                v296 = v290 < v292;
                if (v295)
                {
                  v296 = v295 < 0;
                }

                if (v296)
                {
                  v297 = *v287;
                  v322 = v287[2];
                  *__p = v297;
                  v287[1] = 0;
                  v287[2] = 0;
                  *v287 = 0;
                  v323 = a1[7];
                  if (SHIBYTE(v322) >= 0)
                  {
                    v298 = HIBYTE(v322);
                  }

                  else
                  {
                    v298 = __p[1];
                  }

                  if (SHIBYTE(v322) >= 0)
                  {
                    v299 = __p;
                  }

                  else
                  {
                    v299 = __p[0];
                  }

                  v300 = v286;
                  do
                  {
                    if (*(v300 + 87) < 0)
                    {
                      operator delete(v300[8]);
                    }

                    *(v300 + 4) = *(v300 + 2);
                    v301 = v300[6];
                    v302 = v300[7];
                    *(v300 + 32) = 0;
                    v303 = v300 + 4;
                    *(v300 + 55) = 0;
                    v300[10] = v301;
                    v300[11] = v302;
                    v304 = *(v300 + 23);
                    if (v304 >= 0)
                    {
                      v305 = *(v300 + 23);
                    }

                    else
                    {
                      v305 = v300[1];
                    }

                    if (v304 >= 0)
                    {
                      v306 = v300;
                    }

                    else
                    {
                      v306 = *v300;
                    }

                    if (v305 >= v298)
                    {
                      v307 = v298;
                    }

                    else
                    {
                      v307 = v305;
                    }

                    v308 = memcmp(v299, v306, v307);
                    v309 = v298 < v305;
                    if (v308)
                    {
                      v309 = v308 < 0;
                    }

                    v300 -= 4;
                  }

                  while (v309);
                  if (*(v303 + 23) < 0)
                  {
                    operator delete(*v303);
                  }

                  v310 = *__p;
                  v303[2] = v322;
                  *v303 = v310;
                  v303[3] = v323;
                }

                v285 = v287 + 4;
                v286 += 4;
                a1 = v287;
              }

              while (v287 + 4 != v318);
            }
          }

          return;
        }

        if (!a3)
        {
          if (v9 != a2)
          {
            v178 = (v8 - 2) >> 1;
            v179 = v178;
            do
            {
              v180 = v179;
              if (v178 >= v179)
              {
                v314 = v179;
                v181 = (2 * v179) | 1;
                v182 = a1;
                v183 = &a1[4 * v181];
                v184 = 2 * v179 + 2;
                if (v184 >= v8)
                {
                  v196 = *v183;
                }

                else
                {
                  v185 = *(v183 + 55);
                  v186 = v183[4];
                  v187 = *(v183 + 23);
                  v312 = *v183;
                  if (v187 >= 0)
                  {
                    v188 = *(v183 + 23);
                  }

                  else
                  {
                    v188 = v183[1];
                  }

                  if (v187 >= 0)
                  {
                    v189 = &a1[4 * v181];
                  }

                  else
                  {
                    v189 = *v183;
                  }

                  if (v185 >= 0)
                  {
                    v190 = *(v183 + 55);
                  }

                  else
                  {
                    v190 = v183[5];
                  }

                  if (v185 >= 0)
                  {
                    v191 = v183 + 4;
                  }

                  else
                  {
                    v191 = v183[4];
                  }

                  if (v190 >= v188)
                  {
                    v192 = v188;
                  }

                  else
                  {
                    v192 = v190;
                  }

                  v193 = memcmp(v189, v191, v192);
                  v194 = v188 < v190;
                  if (v193)
                  {
                    v194 = v193 < 0;
                  }

                  v195 = !v194;
                  v196 = v312;
                  if (!v195)
                  {
                    v196 = v186;
                    v183 += 4;
                  }

                  v182 = a1;
                  if (!v195)
                  {
                    v181 = v184;
                  }
                }

                v180 = v314;
                v197 = &v182[4 * v314];
                v198 = *(v197 + 23);
                v199 = *(v183 + 23);
                if (v199 >= 0)
                {
                  v200 = *(v183 + 23);
                }

                else
                {
                  v200 = v183[1];
                }

                if (v199 >= 0)
                {
                  v201 = v183;
                }

                else
                {
                  v201 = v196;
                }

                if (v198 >= 0)
                {
                  v202 = *(v197 + 23);
                }

                else
                {
                  v202 = v197[1];
                }

                if (v198 >= 0)
                {
                  v203 = &v182[4 * v314];
                }

                else
                {
                  v203 = *v197;
                }

                if (v202 >= v200)
                {
                  v204 = v200;
                }

                else
                {
                  v204 = v202;
                }

                v205 = memcmp(v201, v203, v204);
                v206 = v200 < v202;
                if (v205)
                {
                  v206 = v205 < 0;
                }

                if (!v206)
                {
                  v207 = *v197;
                  v322 = v197[2];
                  *__p = v207;
                  v197[1] = 0;
                  v197[2] = 0;
                  *v197 = 0;
                  v323 = v197[3];
                  do
                  {
                    v208 = v183;
                    if (*(v197 + 23) < 0)
                    {
                      operator delete(*v197);
                    }

                    v209 = *v183;
                    v197[2] = v183[2];
                    *v197 = v209;
                    *(v183 + 23) = 0;
                    *v183 = 0;
                    v197[3] = v183[3];
                    if (v178 < v181)
                    {
                      break;
                    }

                    v210 = (2 * v181) | 1;
                    v183 = &a1[4 * v210];
                    v181 = 2 * v181 + 2;
                    if (v181 >= v8)
                    {
                      v223 = *v183;
                      v181 = v210;
                    }

                    else
                    {
                      v211 = *(v183 + 55);
                      v212 = v183[4];
                      v213 = *(v183 + 23);
                      v214 = *v183;
                      if (v213 >= 0)
                      {
                        v215 = *(v183 + 23);
                      }

                      else
                      {
                        v215 = v183[1];
                      }

                      if (v213 >= 0)
                      {
                        v216 = &a1[4 * v210];
                      }

                      else
                      {
                        v216 = *v183;
                      }

                      if (v211 >= 0)
                      {
                        v217 = *(v183 + 55);
                      }

                      else
                      {
                        v217 = v183[5];
                      }

                      if (v211 >= 0)
                      {
                        v218 = v183 + 4;
                      }

                      else
                      {
                        v218 = v183[4];
                      }

                      if (v217 >= v215)
                      {
                        v219 = v215;
                      }

                      else
                      {
                        v219 = v217;
                      }

                      v220 = memcmp(v216, v218, v219);
                      v221 = v215 < v217;
                      if (v220)
                      {
                        v221 = v220 < 0;
                      }

                      v222 = !v221;
                      v223 = (v221 ? v212 : v214);
                      v178 = (v8 - 2) >> 1;
                      if (v222)
                      {
                        v181 = v210;
                      }

                      else
                      {
                        v183 += 4;
                      }
                    }

                    v224 = *(v183 + 23);
                    if (v224 >= 0)
                    {
                      v225 = *(v183 + 23);
                    }

                    else
                    {
                      v225 = v183[1];
                    }

                    if (v224 >= 0)
                    {
                      v226 = v183;
                    }

                    else
                    {
                      v226 = v223;
                    }

                    if (SHIBYTE(v322) >= 0)
                    {
                      v227 = HIBYTE(v322);
                    }

                    else
                    {
                      v227 = __p[1];
                    }

                    if (SHIBYTE(v322) >= 0)
                    {
                      v228 = __p;
                    }

                    else
                    {
                      v228 = __p[0];
                    }

                    if (v227 >= v225)
                    {
                      v229 = v225;
                    }

                    else
                    {
                      v229 = v227;
                    }

                    v230 = memcmp(v226, v228, v229);
                    v231 = v225 < v227;
                    if (v230)
                    {
                      v231 = v230 < 0;
                    }

                    v197 = v208;
                  }

                  while (!v231);
                  if (*(v208 + 23) < 0)
                  {
                    operator delete(*v208);
                  }

                  v232 = *__p;
                  v208[2] = v322;
                  *v208 = v232;
                  v208[3] = v323;
                  v180 = v314;
                }
              }

              v179 = v180 - 1;
            }

            while (v180);
            v233 = v318;
            do
            {
              v234 = 0;
              v235 = a1;
              v236 = *a1;
              *&v324 = a1[1];
              *(&v324 + 7) = *(a1 + 15);
              v319 = *(a1 + 23);
              a1[1] = 0;
              a1[2] = 0;
              *a1 = 0;
              v315 = a1[3];
              v317 = v236;
              do
              {
                v237 = &v235[4 * v234];
                v238 = v237 + 4;
                v239 = (2 * v234) | 1;
                v234 = 2 * v234 + 2;
                if (v234 >= v8)
                {
                  v234 = v239;
                }

                else
                {
                  v242 = v237[8];
                  v241 = v237 + 8;
                  v240 = v242;
                  v243 = *(v241 + 23);
                  v244 = *(v241 - 9);
                  if (v244 >= 0)
                  {
                    v245 = *(v241 - 9);
                  }

                  else
                  {
                    v245 = *(v241 - 3);
                  }

                  if (v244 >= 0)
                  {
                    v246 = v238;
                  }

                  else
                  {
                    v246 = *(v241 - 4);
                  }

                  if (v243 >= 0)
                  {
                    v247 = *(v241 + 23);
                  }

                  else
                  {
                    v247 = v241[1];
                  }

                  if (v243 >= 0)
                  {
                    v248 = v241;
                  }

                  else
                  {
                    v248 = v240;
                  }

                  if (v247 >= v245)
                  {
                    v249 = v245;
                  }

                  else
                  {
                    v249 = v247;
                  }

                  v250 = memcmp(v246, v248, v249);
                  v251 = v245 < v247;
                  if (v250)
                  {
                    v251 = v250 < 0;
                  }

                  if (v251)
                  {
                    v238 = v241;
                  }

                  else
                  {
                    v234 = v239;
                  }
                }

                if (*(v235 + 23) < 0)
                {
                  operator delete(*v235);
                }

                v252 = *v238;
                v235[2] = v238[2];
                *v235 = v252;
                *(v238 + 23) = 0;
                *v238 = 0;
                v235[3] = v238[3];
                v235 = v238;
              }

              while (v234 <= ((v8 - 2) >> 1));
              v253 = (v233 - 4);
              v254 = *(v238 + 23);
              if (v238 == v233 - 4)
              {
                if (v254 < 0)
                {
                  operator delete(*v238);
                }

                *v238 = v317;
                v284 = *(&v324 + 7);
                v238[1] = v324;
                *(v238 + 15) = v284;
                *(v238 + 23) = v319;
                v238[3] = v315;
              }

              else
              {
                if (v254 < 0)
                {
                  operator delete(*v238);
                }

                v255 = *v253;
                v238[2] = *(v233 - 2);
                *v238 = v255;
                *(v233 - 9) = 0;
                *(v233 - 32) = 0;
                v238[3] = *(v233 - 1);
                if (*(v233 - 9) < 0)
                {
                  operator delete(*v253);
                }

                *(v233 - 4) = v317;
                v256 = v324;
                *(v233 - 17) = *(&v324 + 7);
                *(v233 - 3) = v256;
                *(v233 - 9) = v319;
                *(v233 - 1) = v315;
                v257 = ((v238 + 4) - a1) >> 5;
                v258 = v257 < 2;
                v259 = v257 - 2;
                if (!v258)
                {
                  v260 = v259 >> 1;
                  v261 = &a1[4 * (v259 >> 1)];
                  v262 = *(v238 + 23);
                  v263 = *(v261 + 23);
                  if (v263 >= 0)
                  {
                    v264 = *(v261 + 23);
                  }

                  else
                  {
                    v264 = v261[1];
                  }

                  if (v263 >= 0)
                  {
                    v265 = &a1[4 * (v259 >> 1)];
                  }

                  else
                  {
                    v265 = *v261;
                  }

                  if (v262 >= 0)
                  {
                    v266 = *(v238 + 23);
                  }

                  else
                  {
                    v266 = v238[1];
                  }

                  if (v262 >= 0)
                  {
                    v267 = v238;
                  }

                  else
                  {
                    v267 = *v238;
                  }

                  if (v266 >= v264)
                  {
                    v268 = v264;
                  }

                  else
                  {
                    v268 = v266;
                  }

                  v269 = memcmp(v265, v267, v268);
                  v270 = v264 < v266;
                  if (v269)
                  {
                    v270 = v269 < 0;
                  }

                  if (v270)
                  {
                    v271 = *v238;
                    v272 = v238[3];
                    v322 = v238[2];
                    *__p = v271;
                    v238[1] = 0;
                    v238[2] = 0;
                    *v238 = 0;
                    v323 = v272;
                    if (SHIBYTE(v322) >= 0)
                    {
                      v273 = HIBYTE(v322);
                    }

                    else
                    {
                      v273 = __p[1];
                    }

                    if (SHIBYTE(v322) >= 0)
                    {
                      v274 = __p;
                    }

                    else
                    {
                      v274 = __p[0];
                    }

                    do
                    {
                      v275 = v261;
                      if (*(v238 + 23) < 0)
                      {
                        operator delete(*v238);
                      }

                      v276 = *v261;
                      v238[2] = v261[2];
                      *v238 = v276;
                      *(v261 + 23) = 0;
                      *v261 = 0;
                      v238[3] = v261[3];
                      if (!v260)
                      {
                        break;
                      }

                      v260 = (v260 - 1) >> 1;
                      v261 = &a1[4 * v260];
                      v277 = *(v261 + 23);
                      if (v277 >= 0)
                      {
                        v278 = *(v261 + 23);
                      }

                      else
                      {
                        v278 = v261[1];
                      }

                      if (v277 >= 0)
                      {
                        v279 = &a1[4 * v260];
                      }

                      else
                      {
                        v279 = *v261;
                      }

                      if (v273 >= v278)
                      {
                        v280 = v278;
                      }

                      else
                      {
                        v280 = v273;
                      }

                      v281 = memcmp(v279, v274, v280);
                      v282 = v278 < v273;
                      if (v281)
                      {
                        v282 = v281 < 0;
                      }

                      v238 = v275;
                    }

                    while (v282);
                    if (*(v275 + 23) < 0)
                    {
                      operator delete(*v275);
                    }

                    v283 = *__p;
                    v275[2] = v322;
                    *v275 = v283;
                    v275[3] = v323;
                  }
                }
              }

              v258 = v8-- <= 2;
              v233 = v253;
            }

            while (!v258);
          }

          return;
        }

        v10 = &v9[4 * (v8 >> 1)];
        if (v8 < 0x81)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(&v9[4 * (v8 >> 1)], v9, v6);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(v9, &v9[4 * (v8 >> 1)], v6);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(v9 + 4, v10 - 4, v313);
          v11 = &v9[4 * (v8 >> 1) + 4];
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(a1 + 8, v11, v311);
          v9 = a1;
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(v10 - 4, v10, v11);
          v12 = *a1;
          v13 = a1[3];
          v322 = a1[2];
          *__p = v12;
          v14 = v10[2];
          v15 = v10[3];
          *a1 = *v10;
          a1[2] = v14;
          a1[3] = v15;
          v16 = v322;
          *v10 = *__p;
          v10[2] = v16;
          v10[3] = v13;
        }

        --a3;
        if (a4)
        {
          break;
        }

        v17 = *(v9 + 23);
        v18 = *(v9 - 9);
        if (v18 >= 0)
        {
          v19 = *(v9 - 9);
        }

        else
        {
          v19 = *(v9 - 3);
        }

        if (v18 >= 0)
        {
          v20 = v9 - 4;
        }

        else
        {
          v20 = *(v9 - 4);
        }

        v21 = v6;
        if (v17 >= 0)
        {
          v22 = *(v9 + 23);
        }

        else
        {
          v22 = v9[1];
        }

        if (v17 >= 0)
        {
          v23 = v9;
        }

        else
        {
          v23 = *v9;
        }

        if (v22 >= v19)
        {
          v24 = v19;
        }

        else
        {
          v24 = v22;
        }

        v25 = memcmp(v20, v23, v24);
        v26 = v19 >= v22;
        v6 = v21;
        v27 = !v26;
        if (v25)
        {
          v27 = v25 < 0;
        }

        if (v27)
        {
          break;
        }

        v80 = *v9;
        v81 = v9[3];
        v322 = v9[2];
        *__p = v80;
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        v323 = v81;
        v82 = *(a2 - 9);
        v83 = *(a2 - 4);
        v84 = *(a2 - 3);
        if (SHIBYTE(v322) >= 0)
        {
          v85 = HIBYTE(v322);
        }

        else
        {
          v85 = __p[1];
        }

        if (SHIBYTE(v322) >= 0)
        {
          v86 = __p;
        }

        else
        {
          v86 = __p[0];
        }

        if ((v82 & 0x80u) == 0)
        {
          v87 = v82;
        }

        else
        {
          v87 = v84;
        }

        if ((v82 & 0x80u) == 0)
        {
          v88 = v21;
        }

        else
        {
          v88 = v83;
        }

        if (v87 >= v85)
        {
          v89 = v85;
        }

        else
        {
          v89 = v87;
        }

        v90 = memcmp(v86, v88, v89);
        v91 = v85 < v87;
        if (v90)
        {
          v91 = v90 < 0;
        }

        if (v91)
        {
          v92 = v9 + 4;
          do
          {
            v93 = *(v92 + 23);
            if (v93 >= 0)
            {
              v94 = *(v92 + 23);
            }

            else
            {
              v94 = v92[1];
            }

            if (v93 >= 0)
            {
              v95 = v92;
            }

            else
            {
              v95 = *v92;
            }

            if (v94 >= v85)
            {
              v96 = v85;
            }

            else
            {
              v96 = v94;
            }

            v97 = memcmp(v86, v95, v96);
            v98 = v85 < v94;
            if (v97)
            {
              v98 = v97 < 0;
            }

            v92 += 4;
          }

          while (!v98);
          v7 = v92 - 4;
        }

        else
        {
          v99 = v9 + 4;
          do
          {
            v7 = v99;
            if (v99 >= v318)
            {
              break;
            }

            v100 = *(v99 + 23);
            if (v100 >= 0)
            {
              v101 = *(v99 + 23);
            }

            else
            {
              v101 = v99[1];
            }

            if (v100 >= 0)
            {
              v102 = v99;
            }

            else
            {
              v102 = *v99;
            }

            if (v101 >= v85)
            {
              v103 = v85;
            }

            else
            {
              v103 = v101;
            }

            v104 = memcmp(v86, v102, v103);
            v105 = v104 < 0;
            if (!v104)
            {
              v105 = v85 < v101;
            }

            v99 = v7 + 4;
          }

          while (!v105);
        }

        v106 = v318;
        if (v7 < v318)
        {
          v107 = v6;
          do
          {
            v108 = *(v107 + 23);
            if (v108 >= 0)
            {
              v109 = *(v107 + 23);
            }

            else
            {
              v109 = v107[1];
            }

            if (v108 >= 0)
            {
              v110 = v107;
            }

            else
            {
              v110 = *v107;
            }

            if (v109 >= v85)
            {
              v111 = v85;
            }

            else
            {
              v111 = v109;
            }

            v112 = memcmp(v86, v110, v111);
            v113 = v85 < v109;
            if (v112)
            {
              v113 = v112 < 0;
            }

            v107 -= 4;
          }

          while (v113);
          v106 = v107 + 4;
        }

        while (v7 < v106)
        {
          v114 = *v7;
          v325 = v7[2];
          v324 = v114;
          v115 = *v106;
          v7[2] = v106[2];
          *v7 = v115;
          v116 = v324;
          v106[2] = v325;
          *v106 = v116;
          v117 = v7[3];
          v7[3] = v106[3];
          v106[3] = v117;
          if (SHIBYTE(v322) >= 0)
          {
            v118 = HIBYTE(v322);
          }

          else
          {
            v118 = __p[1];
          }

          if (SHIBYTE(v322) >= 0)
          {
            v119 = __p;
          }

          else
          {
            v119 = __p[0];
          }

          v120 = v7 + 4;
          do
          {
            v7 = v120;
            v121 = *(v120 + 23);
            if (v121 >= 0)
            {
              v122 = v121;
            }

            else
            {
              v122 = v7[1];
            }

            if (v121 >= 0)
            {
              v123 = v7;
            }

            else
            {
              v123 = *v7;
            }

            if (v122 >= v118)
            {
              v124 = v118;
            }

            else
            {
              v124 = v122;
            }

            v125 = memcmp(v119, v123, v124);
            v126 = v125 < 0;
            if (!v125)
            {
              v126 = v118 < v122;
            }

            v120 = v7 + 4;
          }

          while (!v126);
          v127 = v106 - 4;
          do
          {
            v106 = v127;
            v128 = *(v127 + 23);
            if ((v128 & 0x80u) == 0)
            {
              v129 = v128;
            }

            else
            {
              v129 = v106[1];
            }

            if ((v128 & 0x80u) == 0)
            {
              v130 = v106;
            }

            else
            {
              v130 = *v106;
            }

            if (v129 >= v118)
            {
              v131 = v118;
            }

            else
            {
              v131 = v129;
            }

            v132 = memcmp(v119, v130, v131);
            v133 = v132 < 0;
            if (!v132)
            {
              v133 = v118 < v129;
            }

            v127 = v106 - 4;
          }

          while (v133);
        }

        v134 = (v7 - 4);
        a2 = v318;
        if (v7 - 4 != v9)
        {
          if (*(v9 + 23) < 0)
          {
            operator delete(*v9);
          }

          v135 = *v134;
          v9[2] = *(v7 - 2);
          *v9 = v135;
          *(v7 - 9) = 0;
          *(v7 - 32) = 0;
          v9[3] = *(v7 - 1);
        }

        if (*(v7 - 9) < 0)
        {
          operator delete(*v134);
        }

        v136 = *__p;
        *(v7 - 2) = v322;
        *v134 = v136;
        HIBYTE(v322) = 0;
        LOBYTE(__p[0]) = 0;
        *(v7 - 1) = v323;
        if (SHIBYTE(v322) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_131:
        a4 = 0;
      }

      v28 = 0;
      v29 = *v9;
      v30 = v9[3];
      v322 = v9[2];
      *__p = v29;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      v323 = v30;
      if (SHIBYTE(v322) >= 0)
      {
        v31 = HIBYTE(v322);
      }

      else
      {
        v31 = __p[1];
      }

      if (SHIBYTE(v322) >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      do
      {
        v33 = SHIBYTE(v9[v28 + 6]);
        if (v33 >= 0)
        {
          v34 = HIBYTE(v9[v28 + 6]);
        }

        else
        {
          v34 = v9[v28 + 5];
        }

        if (v33 >= 0)
        {
          v35 = &v9[v28 + 4];
        }

        else
        {
          v35 = v9[v28 + 4];
        }

        if (v31 >= v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v31;
        }

        v37 = memcmp(v35, v32, v36);
        v38 = v34 < v31;
        if (v37)
        {
          v38 = v37 < 0;
        }

        v28 += 4;
      }

      while (v38);
      v39 = v9;
      v40 = &v9[v28];
      v41 = v6;
      if ((v40 - 32) == v39)
      {
        v41 = v6;
        while (1)
        {
          v48 = (v41 + 4);
          if (v40 >= (v41 + 4))
          {
            break;
          }

          v49 = *(v41 + 23);
          if (v49 >= 0)
          {
            v50 = *(v41 + 23);
          }

          else
          {
            v50 = v41[1];
          }

          if (v49 >= 0)
          {
            v51 = v41;
          }

          else
          {
            v51 = *v41;
          }

          if (v31 >= v50)
          {
            v52 = v50;
          }

          else
          {
            v52 = v31;
          }

          v53 = memcmp(v51, v32, v52);
          v54 = v50 < v31;
          if (v53)
          {
            v54 = v53 < 0;
          }

          v41 -= 4;
          if (v54)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
        do
        {
          v42 = *(v41 + 23);
          if (v42 >= 0)
          {
            v43 = *(v41 + 23);
          }

          else
          {
            v43 = v41[1];
          }

          if (v42 >= 0)
          {
            v44 = v41;
          }

          else
          {
            v44 = *v41;
          }

          if (v31 >= v43)
          {
            v45 = v43;
          }

          else
          {
            v45 = v31;
          }

          v46 = memcmp(v44, v32, v45);
          v47 = v43 < v31;
          if (v46)
          {
            v47 = v46 < 0;
          }

          v41 -= 4;
        }

        while (!v47);
LABEL_83:
        v48 = (v41 + 4);
      }

      v7 = v40;
      if (v40 < v48)
      {
        v55 = v48;
        do
        {
          v56 = *v7;
          v325 = v7[2];
          v324 = v56;
          v57 = *v55;
          v7[2] = v55[2];
          *v7 = v57;
          v58 = v324;
          v55[2] = v325;
          *v55 = v58;
          v59 = v7[3];
          v7[3] = v55[3];
          v55[3] = v59;
          if (SHIBYTE(v322) >= 0)
          {
            v60 = HIBYTE(v322);
          }

          else
          {
            v60 = __p[1];
          }

          if (SHIBYTE(v322) >= 0)
          {
            v61 = __p;
          }

          else
          {
            v61 = __p[0];
          }

          v62 = v7 + 4;
          do
          {
            v7 = v62;
            v63 = *(v62 + 23);
            if (v63 >= 0)
            {
              v64 = v63;
            }

            else
            {
              v64 = v7[1];
            }

            if (v63 >= 0)
            {
              v65 = v7;
            }

            else
            {
              v65 = *v7;
            }

            if (v60 >= v64)
            {
              v66 = v64;
            }

            else
            {
              v66 = v60;
            }

            v67 = memcmp(v65, v61, v66);
            v68 = v67 < 0;
            if (!v67)
            {
              v68 = v64 < v60;
            }

            v62 = v7 + 4;
          }

          while (v68);
          v69 = (v55 - 4);
          do
          {
            v55 = v69;
            v70 = v69[23];
            if ((v70 & 0x80u) == 0)
            {
              v71 = v70;
            }

            else
            {
              v71 = v55[1];
            }

            if ((v70 & 0x80u) == 0)
            {
              v72 = v55;
            }

            else
            {
              v72 = *v55;
            }

            if (v60 >= v71)
            {
              v73 = v71;
            }

            else
            {
              v73 = v60;
            }

            v74 = memcmp(v72, v61, v73);
            v75 = v74 < 0;
            if (!v74)
            {
              v75 = v71 < v60;
            }

            v69 = (v55 - 4);
          }

          while (!v75);
        }

        while (v7 < v55);
      }

      v76 = (v7 - 4);
      a2 = v318;
      if (v7 - 4 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v77 = *v76;
        a1[2] = *(v7 - 2);
        *a1 = v77;
        *(v7 - 9) = 0;
        *(v7 - 32) = 0;
        a1[3] = *(v7 - 1);
      }

      if (*(v7 - 9) < 0)
      {
        operator delete(*v76);
      }

      v78 = *__p;
      *(v7 - 2) = v322;
      *v76 = v78;
      HIBYTE(v322) = 0;
      LOBYTE(__p[0]) = 0;
      *(v7 - 1) = v323;
      if (SHIBYTE(v322) < 0)
      {
        operator delete(__p[0]);
      }

      if (v40 < v48)
      {
LABEL_130:
        std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,false>(a1, v7 - 4, a3, a4 & 1);
        goto LABEL_131;
      }

      v79 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *>(a1, v7 - 4);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *>(v7, v318))
      {
        break;
      }

      if (!v79)
      {
        goto LABEL_130;
      }
    }

    a2 = v7 - 4;
    if (!v79)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<uaap_orchestration::grammar::RightLabel>,uaap_orchestration::grammar::RightLabel*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<uaap_orchestration::grammar::RightLabel>,uaap_orchestration::grammar::RightLabel*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void nlv4_inference_orchestrator::span_matching::TagBucketList::~TagBucketList(void **this)
{
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 5);
  v2 = (this + 2);
  std::vector<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::logSpanEncoding(int *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (v4[8])
      {
        v6 = v4[18];
        v7 = v4[19];
        while (v6 != v7)
        {
          v8 = v4[8];
          if (*(v8 + 23) < 0)
          {
            v8 = *v8;
          }

          v9 = strlen(v8);
          v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, v8, v9);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
          v12 = v6;
          if (*(v6 + 23) < 0)
          {
            v12 = *v6;
          }

          v13 = strlen(v12);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
          v6 += 32;
        }
      }

      v4 += 21;
    }

    while (v4 != v5);
  }

  v15 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *a1;
    if (v16 >= 8)
    {
      v18 = SNLPOSLoggerForCategory(4);
      v17 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v29 = 2048;
        v30 = v16;
        _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v17 = off_2784B6F30[v16];
    }

    std::stringbuf::str();
    if (v31 >= 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    *v32 = 136315394;
    v33 = v17;
    v34 = 2080;
    v35 = v19;
    _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] Spans encoded over the tokens:\n%s", v32, 0x16u);
    if (v31 < 0)
    {
      operator delete(*buf);
    }
  }

  v22[0] = *MEMORY[0x277D82818];
  v20 = *(MEMORY[0x277D82818] + 72);
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v23 = v20;
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v27);
}

void sub_2228A5288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::tensoriseTokens(unsigned int *a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v122[32] = *MEMORY[0x277D85DE8];
  memset(v114, 0, sizeof(v114));
  v111 = 0;
  v112 = 0;
  v113 = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  if (*a2 == a2[1])
  {
    __p[0] = 0;
    __p[1] = 0;
    v121 = 0;
    memset(v116, 0, 24);
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v116, __p, v122, 3uLL);
  }

  if (*(a1 + 279) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, *(a1 + 32), *(a1 + 33));
  }

  else
  {
    v110 = *(a1 + 64);
  }

  v6 = nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken((a1 + 12), &v110);
  v98 = a2[1];
  v99 = *a2;
  v7 = 0xCF3CF3CF3CF3CF3DLL * ((v98 - *a2) >> 3);
  __p[0] = 0;
  v100 = v7;
  std::vector<unsigned long>::vector[abi:ne200100](&v108, v7, __p);
  __src = 0;
  v106 = 0;
  v107 = 0;
  memset(__str, 0, sizeof(__str));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
  v8 = *a2;
  v101 = a2[1];
  if (*a2 != v101)
  {
    v9 = 0;
    do
    {
      memset(&buf, 0, sizeof(buf));
      v11 = *(v8 + 144);
      v10 = *(v8 + 152);
      while (v11 != v10)
      {
        nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getExpandedSpanLabels(a1 + 66, v11, a1 + 1, a1, &v103);
        size = v103.__r_.__value_.__l.__size_;
        for (i = v103.__r_.__value_.__r.__words[0]; ; i += 24)
        {
          if (i == size)
          {
            goto LABEL_39;
          }

          v14 = nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken((a1 + 12), i);
          if ((a1[38] & 1) == 0 || v14 != *(a1 + 18))
          {
            break;
          }

          v15 = *(i + 23);
          if (v15 >= 0)
          {
            v16 = i;
          }

          else
          {
            v16 = *i;
          }

          if (v15 >= 0)
          {
            v17 = *(i + 23);
          }

          else
          {
            v17 = *(i + 8);
          }

          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v121, v16, v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ",\n", 2);
        }

        v19 = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ >= buf.__r_.__value_.__r.__words[2])
        {
          v21 = (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 5;
          if ((v21 + 1) >> 59)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v22 = (buf.__r_.__value_.__r.__words[2] - buf.__r_.__value_.__r.__words[0]) >> 4;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (buf.__r_.__value_.__r.__words[2] - buf.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFE0)
          {
            v23 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          p_buf = &buf;
          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v23);
          }

          v25 = (32 * v21);
          *v116 = 0;
          *&v116[8] = v25;
          v26 = 0;
          *&v116[16] = v25;
          if (*(v11 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v25, *v11, *(v11 + 8));
            v28 = *&v116[8];
            v26 = *&v116[24];
            v29 = *&v116[16];
          }

          else
          {
            v27 = *v11;
            v25->__r_.__value_.__r.__words[2] = *(v11 + 16);
            *&v25->__r_.__value_.__l.__data_ = v27;
            v28 = v25;
            v29 = v25;
          }

          v25[1].__r_.__value_.__r.__words[0] = *(v11 + 24);
          p_size = &v29[1].__r_.__value_.__l.__size_;
          v30 = v28 - (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]);
          memcpy(v30, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]);
          v31 = buf.__r_.__value_.__r.__words[0];
          v32 = buf.__r_.__value_.__r.__words[2];
          buf.__r_.__value_.__r.__words[0] = v30;
          buf.__r_.__value_.__l.__size_ = p_size;
          buf.__r_.__value_.__r.__words[2] = v26;
          *&v116[16] = v31;
          *&v116[24] = v32;
          *v116 = v31;
          *&v116[8] = v31;
          std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(v116);
        }

        else
        {
          if (*(v11 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(buf.__r_.__value_.__l.__size_, *v11, *(v11 + 8));
          }

          else
          {
            v20 = *v11;
            *(buf.__r_.__value_.__l.__size_ + 16) = *(v11 + 16);
            *v19 = v20;
          }

          *(v19 + 24) = *(v11 + 24);
          p_size = v19 + 32;
        }

        buf.__r_.__value_.__l.__size_ = p_size;
LABEL_39:
        *v116 = &v103;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v116);
        v11 += 32;
      }

      nlv4_inference_orchestrator::span_matching::SpanTruncator::truncate((a1 + 98), &buf, a3);
      *&v116[8] = 0;
      *&v116[16] = 0;
      *v116 = &v116[8];
      *&v103.__r_.__value_.__r.__words[1] = 0uLL;
      v103.__r_.__value_.__r.__words[0] = &v103.__r_.__value_.__l.__size_;
      v33 = buf.__r_.__value_.__l.__size_;
      v34 = buf.__r_.__value_.__r.__words[0];
      v35 = v108;
      for (j = *(v108 + v9); v34 != v33; v34 += 32)
      {
        appended = nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::appendExpandedSpanLabelsAndNumericalisedIndexes(a1, v116, &v103, v8, v34, j, a3);
        v35 = v108;
        j = *(v108 + v9) + appended;
        *(v108 + v9) = j;
      }

      if (!j)
      {
        v35[v9] = 1;
        v115 = v6;
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(v116, v115, &v115);
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v103, &v110.__r_.__value_.__l.__data_, &v110);
      }

      v38 = *v116;
      if (*v116 != &v116[8])
      {
        v39 = v106;
        do
        {
          if (v39 >= v107)
          {
            v40 = __src;
            v41 = v39 - __src;
            v42 = (v39 - __src) >> 3;
            v43 = v42 + 1;
            if ((v42 + 1) >> 61)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v44 = v107 - __src;
            if ((v107 - __src) >> 2 > v43)
            {
              v43 = v44 >> 2;
            }

            v67 = v44 >= 0x7FFFFFFFFFFFFFF8;
            v45 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v67)
            {
              v45 = v43;
            }

            if (v45)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v45);
            }

            *(8 * v42) = v38[4];
            v39 = (8 * v42 + 8);
            memcpy(0, v40, v41);
            v46 = __src;
            __src = 0;
            v106 = v39;
            v107 = 0;
            if (v46)
            {
              operator delete(v46);
            }
          }

          else
          {
            *v39 = v38[4];
            v39 += 8;
          }

          v106 = v39;
          v47 = v38[1];
          if (v47)
          {
            do
            {
              v48 = v47;
              v47 = *v47;
            }

            while (v47);
          }

          else
          {
            do
            {
              v48 = v38[2];
              v49 = *v48 == v38;
              v38 = v48;
            }

            while (!v49);
          }

          v38 = v48;
        }

        while (v48 != &v116[8]);
      }

      v50 = v103.__r_.__value_.__r.__words[0];
      if (v103.__r_.__value_.__l.__data_ != &v103.__r_.__value_.__r.__words[1])
      {
        do
        {
          std::vector<std::string>::push_back[abi:ne200100](__str, (v50 + 32));
          v51 = *(v50 + 8);
          if (v51)
          {
            do
            {
              v52 = v51;
              v51 = v51->__r_.__value_.__r.__words[0];
            }

            while (v51);
          }

          else
          {
            do
            {
              v52 = *(v50 + 16);
              v49 = v52->__r_.__value_.__r.__words[0] == v50;
              v50 = v52;
            }

            while (!v49);
          }

          v50 = v52;
        }

        while (v52 != &v103.__r_.__value_.__r.__words[1]);
      }

      ++v9;
      std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(v103.__r_.__value_.__l.__size_);
      std::__tree<unsigned long>::destroy(*&v116[8]);
      *v116 = &buf;
      std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](v116);
      v8 += 168;
    }

    while (v8 != v101);
  }

  v53 = *a1;
  if (v53 > 6)
  {
    v54 = 4;
  }

  else
  {
    v54 = dword_2229DA4F4[v53];
  }

  v55 = SNLPOSLoggerForCategory(v54);
  if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
LABEL_107:
    v61 = v108;
    if (v108 != v109)
    {
      v62 = v108 + 8;
      if (v108 + 8 != v109)
      {
        v63 = *v108;
        v64 = v108 + 8;
        do
        {
          v66 = *v64;
          v64 += 8;
          v65 = v66;
          v67 = v63 >= v66;
          if (v63 <= v66)
          {
            v63 = v65;
          }

          if (!v67)
          {
            v61 = v62;
          }

          v62 = v64;
        }

        while (v64 != v109);
      }
    }

    v68 = 0.0;
    if (a1[42])
    {
      v68 = *(a1 + 20);
    }

    v69 = *v61;
    nlv4_inference_orchestrator::vocabulary::Vocabulary::getPadToken((a1 + 12), v116);
    if (v116[24] == 1)
    {
      nlv4_inference_orchestrator::vocabulary::Vocabulary::getPadToken((a1 + 12), &buf);
      if ((v119 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      data = buf.__r_.__value_.__l.__data_;
      v103 = buf;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v103, "");
    }

    if (v116[24] == 1 && (v116[23] & 0x80000000) != 0)
    {
      operator delete(*v116);
    }

    v71 = v69 * v100;
    *v116 = v68;
    std::vector<float>::resize(v114, v69 * v100, v116, data);
    if (v98 != v99)
    {
      v72 = 0;
      v73 = __src;
      v74 = v114[0];
      v75 = v108;
      v76 = v100;
      if (v100 <= 1)
      {
        v76 = 1;
      }

      do
      {
        v77 = v75[v72];
        v78 = &v73[v77];
        if (v77)
        {
          v79 = v74;
          do
          {
            v80 = *v73++;
            *v79++ = v80;
          }

          while (v73 != v78);
        }

        ++v72;
        v74 += v69;
        v73 = v78;
      }

      while (v72 != v76);
    }

    v81 = v112;
    v82 = 0xAAAAAAAAAAAAAAABLL * ((v112 - v111) >> 3);
    v83 = v71 - v82;
    if (v71 <= v82)
    {
      if (v71 >= v82)
      {
        goto LABEL_151;
      }

      v86 = &v111[v71];
      while (v81 != v86)
      {
        v87 = SHIBYTE(v81[-1].__r_.__value_.__r.__words[2]);
        --v81;
        if (v87 < 0)
        {
          operator delete(v81->__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) < v83)
      {
        if (v71 <= 0xAAAAAAAAAAAAAAALL)
        {
          p_buf = &v111;
          v84 = 0x5555555555555556 * ((v113 - v111) >> 3);
          if (v84 <= v71)
          {
            v84 = v69 * v100;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v113 - v111) >> 3) >= 0x555555555555555)
          {
            v85 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v85 = v84;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v111, v85);
        }

        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v86 = &v112[v83];
      v88 = 24 * v71 - 8 * ((v112 - v111) >> 3);
      do
      {
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v81, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
        }

        else
        {
          v89 = *&v103.__r_.__value_.__l.__data_;
          v81->__r_.__value_.__r.__words[2] = v103.__r_.__value_.__r.__words[2];
          *&v81->__r_.__value_.__l.__data_ = v89;
        }

        ++v81;
        v88 -= 24;
      }

      while (v88);
    }

    v112 = v86;
LABEL_151:
    if (v98 != v99)
    {
      v90 = 0;
      v91 = __str[0];
      v92 = v111;
      if (v100 <= 1)
      {
        v93 = 1;
      }

      else
      {
        v93 = v100;
      }

      do
      {
        v94 = *(v108 + v90);
        v95 = &v91[v94];
        if (v94)
        {
          v96 = v92;
          do
          {
            std::string::operator=(v96++, v91++);
          }

          while (v91 != v95);
        }

        ++v90;
        v92 += v69;
        v91 = v95;
      }

      while (v90 != v93);
    }

    *v116 = v100;
    *&v116[8] = 1;
    *&v116[16] = v69;
    memset(&buf, 0, sizeof(buf));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&buf, v116, &v116[24], 3uLL);
  }

  v56 = *a1;
  if (*a1 > 3)
  {
    if (v56 > 5)
    {
      if (v56 == 6)
      {
        v57 = "SSU";
LABEL_101:
        v58 = "[insights-snlp-ssu]: ";
        goto LABEL_102;
      }

      if (v56 == 7)
      {
        v57 = "UNKNOWN";
        goto LABEL_93;
      }
    }

    else
    {
      if (v56 == 4)
      {
        v57 = "PSC";
LABEL_97:
        v58 = "[insights-snlp-psc]: ";
        goto LABEL_102;
      }

      if (v56 == 5)
      {
        v57 = "LVC";
        goto LABEL_85;
      }
    }
  }

  else if (v56 > 1)
  {
    if (v56 == 2)
    {
      v57 = "OWL";
      goto LABEL_99;
    }

    if (v56 == 3)
    {
      v57 = "UaaP";
      goto LABEL_89;
    }
  }

  else
  {
    if (!v56)
    {
      v58 = "[insights-snlp-nlv4]: ";
      v57 = "NLv4";
      goto LABEL_102;
    }

    if (v56 == 1)
    {
      v57 = "SNLC";
LABEL_80:
      v58 = "[insights-snlp-snlc]: ";
      goto LABEL_102;
    }
  }

  v97 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "<UNDEFINED_COMPONENT>";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v56;
    _os_log_impl(&dword_22284A000, v97, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &buf, 0x16u);
  }

  v56 = *a1;
  v57 = "<UNDEFINED_COMPONENT>";
  if (*a1 > 2)
  {
    if (v56 <= 4)
    {
      if (v56 != 3)
      {
        if (v56 != 4)
        {
          goto LABEL_93;
        }

        goto LABEL_97;
      }

LABEL_89:
      v58 = "[insights-snlp-uaap]: ";
      goto LABEL_102;
    }

    if (v56 != 5)
    {
      if (v56 != 6)
      {
        goto LABEL_93;
      }

      goto LABEL_101;
    }

LABEL_85:
    v58 = "[insights-snlp-lvc]: ";
    goto LABEL_102;
  }

  if (!v56)
  {
    v58 = "[insights-snlp-nlv4]: ";
LABEL_102:
    std::stringbuf::str();
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &buf;
    }

    else
    {
      v60 = buf.__r_.__value_.__r.__words[0];
    }

    *v116 = 136315650;
    *&v116[4] = v57;
    *&v116[12] = 2080;
    *&v116[14] = v58;
    *&v116[22] = 2080;
    *&v116[24] = v60;
    _os_log_impl(&dword_22284A000, v55, OS_LOG_TYPE_DEBUG, "[%s] %sRejected OOV Spans: %s", v116, 0x20u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    goto LABEL_107;
  }

  if (v56 == 1)
  {
    goto LABEL_80;
  }

  if (v56 != 2)
  {
LABEL_93:
    v59 = SNLPOSLoggerForCategory(4);
    v58 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v56;
      _os_log_impl(&dword_22284A000, v59, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &buf, 0x16u);
    }

    goto LABEL_102;
  }

LABEL_99:
  v58 = "[insights-snlp-owl]: ";
  goto LABEL_102;
}
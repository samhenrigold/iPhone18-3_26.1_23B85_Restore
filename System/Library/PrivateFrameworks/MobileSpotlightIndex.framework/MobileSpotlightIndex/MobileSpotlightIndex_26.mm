uint64_t isOptionalSearchTermSuffixToRemove(const void **a1, const __CFArray *a2, CFIndex a3, uint64_t a4)
{
  if (!*(a4 + 24))
  {
    return 0;
  }

  result = CFLocaleCopyCurrent();
  if (result)
  {
    v9 = result;
    v10 = MEMORY[0x1C691EAF0]();
    HasPrefix = CFStringHasPrefix(v10, @"en");
    CFRelease(v9);
    result = std::__find[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string,std::__identity>(*(a4 + 16), a1);
    if (HasPrefix)
    {
      if (!result)
      {
        return result;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
      AttributeIndexFromTokenInfo = getAttributeIndexFromTokenInfo(ValueAtIndex);
      if (CFArrayGetCount(a2) - 1 == a3)
      {
        return 1;
      }

      v14 = CFArrayGetValueAtIndex(a2, a3 + 1);
      if (AttributeIndexFromTokenInfo < getAttributeIndexFromTokenInfo(v14))
      {
        return 1;
      }

      if (!v14)
      {
        return 0;
      }

      TopTokenIDFromTokenInfo = getTopTokenIDFromTokenInfo(v14);
      v15 = TopTokenIDFromTokenInfo == -1 || TopTokenIDFromTokenInfo == 1;
    }

    else
    {
      v15 = result == 0;
    }

    return !v15;
  }

  return result;
}

uint64_t **std::__find[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string,std::__identity>(uint64_t **a1, const void **a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    do
    {
      v6 = *(v2 + 39);
      v7 = v6;
      if (v6 < 0)
      {
        v6 = v2[3];
      }

      if (v6 == v4)
      {
        v8 = v7 >= 0 ? v2 + 2 : v2[2];
        if (!memcmp(v8, v5, v4))
        {
          break;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

void ___ZL29llmSearchTermSuffixesToRemovev_block_invoke()
{
  v77.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "appointment");
  std::string::basic_string[abi:nn200100]<0>(v2, "appointments");
  std::string::basic_string[abi:nn200100]<0>(v3, "trip");
  std::string::basic_string[abi:nn200100]<0>(v4, "trips");
  std::string::basic_string[abi:nn200100]<0>(v5, "reservation");
  std::string::basic_string[abi:nn200100]<0>(v6, "reservations");
  std::string::basic_string[abi:nn200100]<0>(v7, "party");
  std::string::basic_string[abi:nn200100]<0>(v8, "parties");
  std::string::basic_string[abi:nn200100]<0>(v9, "lesson");
  std::string::basic_string[abi:nn200100]<0>(v10, "lessons");
  std::string::basic_string[abi:nn200100]<0>(v11, "class");
  std::string::basic_string[abi:nn200100]<0>(v12, "classes");
  std::string::basic_string[abi:nn200100]<0>(v13, "order");
  std::string::basic_string[abi:nn200100]<0>(v14, "orders");
  std::string::basic_string[abi:nn200100]<0>(v15, "celebration");
  std::string::basic_string[abi:nn200100]<0>(v16, "celebrations");
  std::string::basic_string[abi:nn200100]<0>(v17, "confirmation");
  std::string::basic_string[abi:nn200100]<0>(v18, "confirmations");
  std::string::basic_string[abi:nn200100]<0>(v19, "ride");
  std::string::basic_string[abi:nn200100]<0>(v20, "rides");
  std::string::basic_string[abi:nn200100]<0>(v21, "number");
  std::string::basic_string[abi:nn200100]<0>(v22, "numbers");
  std::string::basic_string[abi:nn200100]<0>(v23, "conference");
  std::string::basic_string[abi:nn200100]<0>(v24, "conferences");
  std::string::basic_string[abi:nn200100]<0>(v25, "proposal");
  std::string::basic_string[abi:nn200100]<0>(v26, "proposals");
  std::string::basic_string[abi:nn200100]<0>(v27, "hotel");
  std::string::basic_string[abi:nn200100]<0>(v28, "hotels");
  std::string::basic_string[abi:nn200100]<0>(v29, "booking");
  std::string::basic_string[abi:nn200100]<0>(v30, "bookings");
  std::string::basic_string[abi:nn200100]<0>(v31, "presentation");
  std::string::basic_string[abi:nn200100]<0>(v32, "presentations");
  std::string::basic_string[abi:nn200100]<0>(v33, "ticket");
  std::string::basic_string[abi:nn200100]<0>(v34, "tickets");
  std::string::basic_string[abi:nn200100]<0>(v35, "plan");
  std::string::basic_string[abi:nn200100]<0>(v36, "plans");
  std::string::basic_string[abi:nn200100]<0>(v37, "meeting");
  std::string::basic_string[abi:nn200100]<0>(v38, "meetings");
  std::string::basic_string[abi:nn200100]<0>(v39, "card");
  std::string::basic_string[abi:nn200100]<0>(v40, "cards");
  std::string::basic_string[abi:nn200100]<0>(v41, "adventure");
  std::string::basic_string[abi:nn200100]<0>(v42, "adventures");
  std::string::basic_string[abi:nn200100]<0>(v43, "game");
  std::string::basic_string[abi:nn200100]<0>(v44, "games");
  std::string::basic_string[abi:nn200100]<0>(v45, "phone");
  std::string::basic_string[abi:nn200100]<0>(v46, "phones");
  std::string::basic_string[abi:nn200100]<0>(v47, "airport");
  std::string::basic_string[abi:nn200100]<0>(v48, "airports");
  std::string::basic_string[abi:nn200100]<0>(v49, "session");
  std::string::basic_string[abi:nn200100]<0>(v50, "sessions");
  std::string::basic_string[abi:nn200100]<0>(v51, "exam");
  std::string::basic_string[abi:nn200100]<0>(v52, "exams");
  std::string::basic_string[abi:nn200100]<0>(v53, "store");
  std::string::basic_string[abi:nn200100]<0>(v54, "stores");
  std::string::basic_string[abi:nn200100]<0>(v55, "place");
  std::string::basic_string[abi:nn200100]<0>(v56, "places");
  std::string::basic_string[abi:nn200100]<0>(v57, "getway");
  std::string::basic_string[abi:nn200100]<0>(v58, "getways");
  std::string::basic_string[abi:nn200100]<0>(v59, "getaway");
  std::string::basic_string[abi:nn200100]<0>(v60, "getaways");
  std::string::basic_string[abi:nn200100]<0>(v61, "address");
  std::string::basic_string[abi:nn200100]<0>(v62, "addresses");
  std::string::basic_string[abi:nn200100]<0>(v63, "rsvp");
  std::string::basic_string[abi:nn200100]<0>(v64, "rsvps");
  std::string::basic_string[abi:nn200100]<0>(v65, "breakfast");
  std::string::basic_string[abi:nn200100]<0>(v66, "breakfasts");
  std::string::basic_string[abi:nn200100]<0>(v67, "lunch");
  std::string::basic_string[abi:nn200100]<0>(v68, "lunches");
  std::string::basic_string[abi:nn200100]<0>(v69, "dinner");
  std::string::basic_string[abi:nn200100]<0>(v70, "dinners");
  std::string::basic_string[abi:nn200100]<0>(v71, "brunch");
  std::string::basic_string[abi:nn200100]<0>(v72, "brunches");
  std::string::basic_string[abi:nn200100]<0>(v73, "event");
  std::string::basic_string[abi:nn200100]<0>(v74, "events");
  std::string::basic_string[abi:nn200100]<0>(v75, "recommendation");
  std::string::basic_string[abi:nn200100]<0>(v76, "recommendations");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&llmSearchTermSuffixesToRemove(void)::_searchTermSuffixesToRemove, &__str, &v77);
  v0 = 1824;
  do
  {
    if (__str.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&__str.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
}

void sub_1C28C558C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 1823);
  v13 = -1824;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ___ZL37llmSearchTermCalendarSuffixesToRemovev_block_invoke()
{
  v7.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "appointment");
  std::string::basic_string[abi:nn200100]<0>(v2, "appointments");
  std::string::basic_string[abi:nn200100]<0>(v3, "meeting");
  std::string::basic_string[abi:nn200100]<0>(v4, "meetings");
  std::string::basic_string[abi:nn200100]<0>(v5, "event");
  std::string::basic_string[abi:nn200100]<0>(v6, "events");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&llmSearchTermCalendarSuffixesToRemove(void)::_searchTermCalendarSuffixesToRemove, &__str, &v7);
  for (i = 0; i != -18; i -= 3)
  {
    if (SHIBYTE(v6[i + 2]) < 0)
    {
      operator delete(v6[i]);
    }
  }
}

void sub_1C28C5704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 143);
  v13 = -144;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ___ZL37llmSearchTermCalendarOneOnOneToRemovev_block_invoke()
{
  v64.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&v1, "1:1");
  std::string::basic_string[abi:nn200100]<0>(v2, "1:1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v3, "1:1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v4, "1:1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v5, "1:1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v6, "1:1 event");
  std::string::basic_string[abi:nn200100]<0>(v7, "1:1 events");
  std::string::basic_string[abi:nn200100]<0>(v8, "1-1");
  std::string::basic_string[abi:nn200100]<0>(v9, "1-1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v10, "1-1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v11, "1-1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v12, "1-1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v13, "1-1 event");
  std::string::basic_string[abi:nn200100]<0>(v14, "1-1 events");
  std::string::basic_string[abi:nn200100]<0>(v15, "1/1");
  std::string::basic_string[abi:nn200100]<0>(v16, "1/1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v17, "1/1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v18, "1/1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v19, "1/1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v20, "1/1 event");
  std::string::basic_string[abi:nn200100]<0>(v21, "1/1 events");
  std::string::basic_string[abi:nn200100]<0>(v22, "1 on 1");
  std::string::basic_string[abi:nn200100]<0>(v23, "1 on 1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v24, "1 on 1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v25, "1 on 1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v26, "1 on 1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v27, "1 on 1 event");
  std::string::basic_string[abi:nn200100]<0>(v28, "1 on 1 events");
  std::string::basic_string[abi:nn200100]<0>(v29, "1 to 1");
  std::string::basic_string[abi:nn200100]<0>(v30, "1 to 1 meeting");
  std::string::basic_string[abi:nn200100]<0>(v31, "1 to 1 meetings");
  std::string::basic_string[abi:nn200100]<0>(v32, "1 to 1 appointment");
  std::string::basic_string[abi:nn200100]<0>(v33, "1 to 1 appointments");
  std::string::basic_string[abi:nn200100]<0>(v34, "1 to 1 event");
  std::string::basic_string[abi:nn200100]<0>(v35, "1 to 1 events");
  std::string::basic_string[abi:nn200100]<0>(v36, "one on one");
  std::string::basic_string[abi:nn200100]<0>(v37, "one on one meeting");
  std::string::basic_string[abi:nn200100]<0>(v38, "one on one meetings");
  std::string::basic_string[abi:nn200100]<0>(v39, "one on one appointment");
  std::string::basic_string[abi:nn200100]<0>(v40, "one on one appointments");
  std::string::basic_string[abi:nn200100]<0>(v41, "one on one event");
  std::string::basic_string[abi:nn200100]<0>(v42, "one on one events");
  std::string::basic_string[abi:nn200100]<0>(v43, "one-on-one");
  std::string::basic_string[abi:nn200100]<0>(v44, "one-on-one meeting");
  std::string::basic_string[abi:nn200100]<0>(v45, "one-on-one meetings");
  std::string::basic_string[abi:nn200100]<0>(v46, "one-on-one appointment");
  std::string::basic_string[abi:nn200100]<0>(v47, "one-on-one appointments");
  std::string::basic_string[abi:nn200100]<0>(v48, "one-on-one event");
  std::string::basic_string[abi:nn200100]<0>(v49, "one-on-one events");
  std::string::basic_string[abi:nn200100]<0>(v50, "one to one");
  std::string::basic_string[abi:nn200100]<0>(v51, "one to one meeting");
  std::string::basic_string[abi:nn200100]<0>(v52, "one to one meetings");
  std::string::basic_string[abi:nn200100]<0>(v53, "one to one appointment");
  std::string::basic_string[abi:nn200100]<0>(v54, "one to one appointments");
  std::string::basic_string[abi:nn200100]<0>(v55, "one to one event");
  std::string::basic_string[abi:nn200100]<0>(v56, "one to one events");
  std::string::basic_string[abi:nn200100]<0>(v57, "one-to-one");
  std::string::basic_string[abi:nn200100]<0>(v58, "one-to-one meeting");
  std::string::basic_string[abi:nn200100]<0>(v59, "one-to-one meetings");
  std::string::basic_string[abi:nn200100]<0>(v60, "one-to-one appointment");
  std::string::basic_string[abi:nn200100]<0>(v61, "one-to-one appointments");
  std::string::basic_string[abi:nn200100]<0>(v62, "one-to-one event");
  std::string::basic_string[abi:nn200100]<0>(v63, "one-to-one events");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&llmSearchTermCalendarOneOnOneToRemove(void)::_searchTermCalendarOneOnOneToRemove, &v1, &v64);
  v0 = 1512;
  do
  {
    if (v1.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&v1.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
}

void sub_1C28C5D60(_Unwind_Exception *exception_object)
{
  v2 = &STACK[0x5E7];
  v3 = -1512;
  v4 = &STACK[0x5E7];
  while (1)
  {
    v5 = *v4;
    v4 -= 3;
    if (v5 < 0)
    {
      operator delete(*(v2 - 23));
    }

    v2 = v4;
    v3 += 24;
    if (!v3)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ___ZL35llmSearchTermPhotosSuffixesToRemovev_block_invoke()
{
  v3.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "card");
  std::string::basic_string[abi:nn200100]<0>(v2, "cards");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&llmSearchTermPhotosSuffixesToRemove(void)::_searchTermPhotosSuffixesToRemove, &__str, &v3);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v2[i + 2]) < 0)
    {
      operator delete(*(&__str + i * 8 + 24));
    }
  }
}

void sub_1C28C5E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = &a21;
  v23 = -48;
  v24 = &a21;
  while (1)
  {
    v25 = *v24;
    v24 -= 24;
    if (v25 < 0)
    {
      operator delete(*(v22 - 23));
    }

    v22 = v24;
    v23 += 24;
    if (!v23)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

BOOL isLLMSourceTypeArgId(int a1)
{
  {
    llmSourceTypeArgIds(void)::_sourceTypeArgIds = 0u;
    *algn_1EBF616B0 = 0u;
    dword_1EBF616C0 = 1065353216;
  }

  if (llmSourceTypeArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmSourceTypeArgIds(void)::onceToken, &__block_literal_global_195);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmSourceTypeArgIds(void)::_sourceTypeArgIds, a1) != 0;
}

void ___ZL19llmSourceTypeArgIdsv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0[0] = xmmword_1C2BF9F00;
  v0[1] = xmmword_1C2BF9F10;
  v0[2] = xmmword_1C2BF9F20;
  v0[3] = xmmword_1C2BFA0C0;
  v0[4] = xmmword_1C2BFA0D0;
  v0[5] = xmmword_1C2BFA0E0;
  v1 = 0xC4000000C8;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmSourceTypeArgIds(void)::_sourceTypeArgIds, v0, &v2);
}

void ___ZL25llmPhotosSourceTypeArgIdsv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = xmmword_1C2BFA0F0;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmPhotosSourceTypeArgIds(void)::_photosSourceTypeArgIds, &v0, &v1);
}

BOOL isLLMAppEntityTypeArgId(int a1)
{
  {
    llmAppEntityTypeArgIds(void)::_appEntityTypeArgIds = 0u;
    unk_1EBF61720 = 0u;
    dword_1EBF61730 = 1065353216;
  }

  if (llmAppEntityTypeArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmAppEntityTypeArgIds(void)::onceToken, &__block_literal_global_199);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmAppEntityTypeArgIds(void)::_appEntityTypeArgIds, a1) != 0;
}

void ___ZL22llmAppEntityTypeArgIdsv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0[0] = xmmword_1C2BF9F70;
  v0[1] = xmmword_1C2BF9F80;
  v0[2] = xmmword_1C2BF9F90;
  v0[3] = xmmword_1C2BF9FA0;
  v0[4] = xmmword_1C2BFA100;
  v0[5] = xmmword_1C2BFA110;
  v0[6] = xmmword_1C2BFA120;
  v0[7] = xmmword_1C2BFA130;
  v0[8] = xmmword_1C2BFA140;
  v0[9] = xmmword_1C2BFA150;
  v0[10] = xmmword_1C2BFA160;
  v0[11] = xmmword_1C2BFA170;
  v1 = 0xD2000000D0;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmAppEntityTypeArgIds(void)::_appEntityTypeArgIds, v0, &v2);
}

BOOL isLLMPhotosAppEntityTypeArgId(int a1)
{
  {
    llmPhotosAppEntityTypeArgIds(void)::_photosAppEntityTypeArgIds = 0u;
    unk_1EBF61758 = 0u;
    dword_1EBF61768 = 1065353216;
  }

  if (llmPhotosAppEntityTypeArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmPhotosAppEntityTypeArgIds(void)::onceToken, &__block_literal_global_201);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmPhotosAppEntityTypeArgIds(void)::_photosAppEntityTypeArgIds, a1) != 0;
}

void ___ZL28llmPhotosAppEntityTypeArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = xmmword_1C2BFA180;
  v0[1] = xmmword_1C2BFA190;
  v0[2] = xmmword_1C2BFA1A0;
  v1 = 192;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmPhotosAppEntityTypeArgIds(void)::_photosAppEntityTypeArgIds, v0, &v2);
}

void ___ZL25llmMDSAppEntityTypeArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = xmmword_1C2BFA1B0;
  v0[1] = xmmword_1C2BFA1C0;
  v1 = 198;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmMDSAppEntityTypeArgIds(void)::_mdsAppEntityTypeArgIds, v0, &v2);
}

BOOL isLLMInferredAppEntityTypeArgId(int a1)
{
  {
    llmInferredAppEntityTypeArgIds(void)::_inferredAppEntityTypeArgIds = 0u;
    unk_1EBF617C8 = 0u;
    dword_1EBF617D8 = 1065353216;
  }

  if (llmInferredAppEntityTypeArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmInferredAppEntityTypeArgIds(void)::onceToken, &__block_literal_global_205);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmInferredAppEntityTypeArgIds(void)::_inferredAppEntityTypeArgIds, a1) != 0;
}

void ___ZL30llmInferredAppEntityTypeArgIdsv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0[0] = xmmword_1C2BFA1D0;
  v0[1] = xmmword_1C2BFA1E0;
  v0[2] = xmmword_1C2BFA1F0;
  v0[3] = xmmword_1C2BFA200;
  v0[4] = xmmword_1C2BFA210;
  v0[5] = xmmword_1C2BFA220;
  v0[6] = xmmword_1C2BFA230;
  v0[7] = xmmword_1C2BFA240;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmInferredAppEntityTypeArgIds(void)::_inferredAppEntityTypeArgIds, v0, &v1);
}

BOOL isIgnoredAppEntityStatusArgId(int a1)
{
  {
    llmIgnoredAppEntityStatusArgIds(void)::_ignoredAppEntityStatusArgIds = 0u;
    unk_1EBF61800 = 0u;
    dword_1EBF61810 = 1065353216;
  }

  if (llmIgnoredAppEntityStatusArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmIgnoredAppEntityStatusArgIds(void)::onceToken, &__block_literal_global_211);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmIgnoredAppEntityStatusArgIds(void)::_ignoredAppEntityStatusArgIds, a1) != 0;
}

void ___ZL31llmIgnoredAppEntityStatusArgIdsv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0[0] = xmmword_1C2BFA250;
  v0[1] = xmmword_1C2BFA260;
  v0[2] = xmmword_1C2BFA270;
  v0[3] = xmmword_1C2BFA280;
  v1 = 0x3C0000003BLL;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmIgnoredAppEntityStatusArgIds(void)::_ignoredAppEntityStatusArgIds, v0, &v2);
}

BOOL isBundleSpecificFilterAppEntityStatusArgId(int a1)
{
  {
    llmBundleSpecificFilterAppEntityStatusArgIds(void)::_bundleSpecificFilterAppEntityStatusArgIds = 0u;
    unk_1EBF61838 = 0u;
    dword_1EBF61848 = 1065353216;
  }

  if (llmBundleSpecificFilterAppEntityStatusArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmBundleSpecificFilterAppEntityStatusArgIds(void)::onceToken, &__block_literal_global_213);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmBundleSpecificFilterAppEntityStatusArgIds(void)::_bundleSpecificFilterAppEntityStatusArgIds, a1) != 0;
}

void ___ZL44llmBundleSpecificFilterAppEntityStatusArgIdsv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = xmmword_1C2BFA290;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmBundleSpecificFilterAppEntityStatusArgIds(void)::_bundleSpecificFilterAppEntityStatusArgIds, &v0, &v1);
}

BOOL isLLMTopKRankingArgId(int a1)
{
  {
    llmTopKRankingArgIds(void)::_topKRankingArgIds = 0u;
    *algn_1EBF61870 = 0u;
    dword_1EBF61880 = 1065353216;
  }

  if (llmTopKRankingArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmTopKRankingArgIds(void)::onceToken, &__block_literal_global_215);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmTopKRankingArgIds(void)::_topKRankingArgIds, a1) != 0;
}

void ___ZL20llmTopKRankingArgIdsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = xmmword_1C2BFA2A0;
  v1 = 131;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmTopKRankingArgIds(void)::_topKRankingArgIds, &v0, &v2);
}

BOOL isLLMPhotosIgnoredArgId(int a1)
{
  {
    llmPhotosIgnoredArgIds(void)::_photosIgnoredArgIds = 0u;
    unk_1EBF618A8 = 0u;
    dword_1EBF618B8 = 1065353216;
  }

  if (llmPhotosIgnoredArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmPhotosIgnoredArgIds(void)::onceToken, &__block_literal_global_217);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmPhotosIgnoredArgIds(void)::_photosIgnoredArgIds, a1) != 0;
}

void ___ZL22llmPhotosIgnoredArgIdsv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0[0] = xmmword_1C2BFA2B0;
  v0[1] = xmmword_1C2BFA050;
  v0[2] = xmmword_1C2BFA2C0;
  v1 = 0x82000000C1;
  v2 = 131;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmPhotosIgnoredArgIds(void)::_photosIgnoredArgIds, v0, v3);
}

BOOL isLLMPhotosEventArgId(int a1)
{
  {
    llmPhotosEventArgIds(void)::_photosEventArgIds = 0u;
    unk_1EBF618E0 = 0u;
    dword_1EBF618F0 = 1065353216;
  }

  if (llmPhotosEventArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmPhotosEventArgIds(void)::onceToken, &__block_literal_global_219);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmPhotosEventArgIds(void)::_photosEventArgIds, a1) != 0;
}

void ___ZL20llmPhotosEventArgIdsv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0[0] = xmmword_1C2BFA2D0;
  v0[1] = xmmword_1C2BFA2E0;
  v1 = 0x520000004FLL;
  v2 = 211;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmPhotosEventArgIds(void)::_photosEventArgIds, v0, v3);
}

BOOL isLLMTemporalArgId(int a1)
{
  {
    llmTemporalArgIds(void)::_temporalArgIds = 0u;
    unk_1EBF61918 = 0u;
    dword_1EBF61928 = 1065353216;
  }

  if (llmTemporalArgIds(void)::onceToken != -1)
  {
    dispatch_once(&llmTemporalArgIds(void)::onceToken, &__block_literal_global_221);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmTemporalArgIds(void)::_temporalArgIds, a1) != 0;
}

void ___ZL17llmTemporalArgIdsv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = xmmword_1C2BFA2F0;
  v1 = 0x6100000060;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&llmTemporalArgIds(void)::_temporalArgIds, &v0, &v2);
}

int *___Z19logAttributedStringyPKcP8NSStringP18NSAttributedStringPK9__CFArray_block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  result = [a2 count];
  if (result)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      v19 = *(a1 + 56);
      v15 = *(a1 + 64);
      if (v15 > 0xD2)
      {
        v16 = "Unknown";
      }

      else
      {
        v16 = off_1E8196D10[v15];
      }

      v35.location = a3;
      v35.length = a4;
      v17 = NSStringFromRange(v35);
      v18 = *(a1 + 32);
      *buf = 134219522;
      v21 = v14;
      v22 = 2080;
      v23 = v13;
      v24 = 2048;
      v25 = v19;
      v26 = 2080;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = a2;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][%ld][%s][%@] %@ %@", buf, 0x48u);
    }

    result = __error();
    *result = v11;
    *a5 = 1;
  }

  return result;
}

NSString *redactString(NSString *a1, int a2)
{
  v4 = [(NSString *)a1 length];
  if (v4 < 4)
  {
    return a1;
  }

  v6 = v4;
  if (!a2)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c...%c<%lu chars>", -[NSString characterAtIndex:](a1, "characterAtIndex:", 0), -[NSString characterAtIndex:](a1, "characterAtIndex:", 1), -[NSString characterAtIndex:](a1, "characterAtIndex:", v6 - 1), v6];
  }

  if (isSearchToolDebugModeEnabled_onceToken != -1)
  {
    dispatch_once(&isSearchToolDebugModeEnabled_onceToken, &__block_literal_global_14_11145);
  }

  if (isSearchToolDebugModeEnabled_ffStatus)
  {
    return a1;
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c...%c<%lu chars>", -[NSString characterAtIndex:](a1, "characterAtIndex:", 0), -[NSString characterAtIndex:](a1, "characterAtIndex:", 1), -[NSString characterAtIndex:](a1, "characterAtIndex:", v6 - 1), v6];
  }
}

void storageWindowsClose(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(10);
    v5 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 16) * 100.0 / v6;
      v9[0] = 67109376;
      v9[1] = v6 >> 10;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_1C278D000, v4, v5, "Memsize: %uKB %f%% used", v9, 0x12u);
    }

    *__error() = v3;
    fd_release(v2);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    _Block_release(v8);
    *(a1 + 40) = 0;
  }
}

void storageWindowDestroyImmediate(void *a1)
{
  v2 = a1[1];
  if (v2 + 1 >= 2)
  {
    munmap(v2, a1[3] - a1[2]);
  }

  free(a1);
}

void storageWindowsUnmap(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = a1 + 56;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          storageWindowDestroyImmediate(v5);
        }

        *(v4 + 8 * v3) = 0;
        v1 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

uint64_t storageWindowsKillPages(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    v4 = result + 56;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if ((*(v5 + 40) & 1) == 0)
          {
            v7 = *(v5 + 24) - *(v5 + 16);
            fd_system_status_stall_if_busy();
            result = msync(v6, v7, 4);
            v1 = *(v2 + 32);
          }
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }

  return result;
}

uint64_t storageWindowSync(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      if ((*(result + 40) & 1) == 0)
      {
        v3 = *(result + 24) - *(result + 16);
        if (a2)
        {
          v4 = 1;
        }

        else
        {
          v4 = 16;
        }

        fd_system_status_stall_if_busy();

        return msync(v2, v3, v4);
      }
    }
  }

  return result;
}

void _windowsMapInit(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = 0;
  v7 = 0;
  v8 = result + 14;
  do
  {
    v9 = *(result + 1);
    if (v7 >= v9)
    {
      goto LABEL_19;
    }

    v10 = *&v8[2 * v6];
    v11 = *(result + 48);
    v12 = 1 << v11;
    if (v6)
    {
      if (v9 <= (v11 > 1))
      {
        v19 = __si_assert_copy_extra(0);
        v20 = v19;
        v21 = "";
        if (v19)
        {
          v21 = v19;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 441, "windows->_size > (1<windows->offset_shift)", v21);
        free(v20);
        if (__valid_fs(-1))
        {
          v22 = 2989;
        }

        else
        {
          v22 = 3072;
        }

        *v22 = -559038737;
        abort();
      }

      result[8] = v6 + 1;
      if (v9 <= v12)
      {
        v15 = __si_assert_copy_extra(0);
        v16 = v15;
        v17 = "";
        if (v15)
        {
          v17 = v15;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 446, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v17);
LABEL_25:
        free(v16);
        if (__valid_fs(-1))
        {
          v18 = 2989;
        }

        else
        {
          v18 = 3072;
        }

        *v18 = -559038737;
        abort();
      }

      v7 = (v6 + 1) << v11;
      if (!v10)
      {
LABEL_7:
        v13 = *(result + 36);
        v14 = *(result + 5);
        v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
        atomic_store(1u, v10);
        *(v10 + 1) = 0;
        *(v10 + 2) = 0;
        *(v10 + 40) = v13;
        *(v10 + 3) = 0;
        *(v10 + 4) = v14;
        *&v8[2 * v6] = v10;
        __dmb(0xBu);
      }
    }

    else
    {
      if (v9 >= v12)
      {
        v9 = 1 << v11;
      }

      if (*(result + 37))
      {
        v7 = 1 << v11;
      }

      else
      {
        v7 = v9;
      }

      result[8] = 1;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    if (!*(v10 + 1))
    {
      _initWindow(v10, result, v6 << v11, v7, v4, v3);
    }

    ++v6;
  }

  while (v6 != 512);
  v9 = *(result + 1);
LABEL_19:
  if (v9 <= 1 << *(result + 48) && result[8] >= 2)
  {
    v23 = __si_assert_copy_extra(0);
    v16 = v23;
    v24 = "";
    if (v23)
    {
      v24 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 461, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v24);
    goto LABEL_25;
  }
}

void __message_assert(char *a1, ...)
{
  va_start(va, a1);
  v6 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, a1, va);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v1 = xpc_string_create(string[0]);
  values = v1;
  v2 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v2);
  xpc_release(v1);
  free(string[0]);
}

{
  va_start(va, a1);
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  va_copy(&v1[1], va);
  vasprintf(v1, a1, va);
  SISetCrashCStr(v1[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v3 = v1[0];
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v1[0]);
}

double _initWindow(void *a1, void *a2, unint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = a1[2];
  if (v6)
  {
    v7 = v6 == a3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 || a1[1])
  {
    v22 = __si_assert_copy_extra(0);
    v23 = v22;
    v24 = "";
    if (v22)
    {
      v24 = v22;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 372, "(window->mappedStart==0||window->mappedStart==mapStart)&&window->mappedMemory==((void*)0)", v24);
LABEL_33:
    free(v23);
    if (__valid_fs(-1))
    {
      v29 = 2989;
    }

    else
    {
      v29 = 3072;
    }

    *v29 = -559038737;
    abort();
  }

  if (*(a2 + 37) == 1 && !((a4 - a3) >> *(a2 + 48)))
  {
    v27 = __si_assert_copy_extra(0);
    v23 = v27;
    v28 = "";
    if (v27)
    {
      v28 = v27;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 374, "(1ull<<parentWindows->offset_shift) <= mapEnd-mapStart", v28);
    goto LABEL_33;
  }

  a1[2] = a3;
  if (a2[1] < a3)
  {
    v25 = __si_assert_copy_extra(0);
    v23 = v25;
    v26 = "";
    if (v25)
    {
      v26 = v25;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 378, "mapStart <= parentWindows->_size", v26);
    goto LABEL_33;
  }

  v12 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= ((*MEMORY[0x1E69E9AC8] + ((a4 - a3) >> 5) - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    v12 = (*MEMORY[0x1E69E9AC8] + ((a4 - a3) >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
  }

  v13 = v12 + a4;
  a1[3] = v13;
  v14 = *a2;
  v15 = v13 - a3;
  if (*(a2 + 36))
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  if (a6)
  {
    v17 = 1;
  }

  else
  {
    v17 = 1025;
  }

  v18 = fd_mmap(v14, v15, v16, v17, a3);
  a1[1] = v18;
  if (v18 == -1)
  {
    v20 = *__error();
    a1[1] = 0;
    if (a5)
    {
      if (v20 != 1)
      {
        v21 = mmap(0, 4uLL, 0, 4098, -50331648, 0);
        a1[1] = v21;
        if (v21 == -1)
        {
          v30 = __si_assert_copy_extra(*a2);
          v31 = v30;
          v32 = "";
          if (v30)
          {
            v32 = v30;
          }

          __message_assert("%s:%u: failed assertion '%s' %s mmap(%p, offset: %llx, size: %lld) error:%d, fSize:%lld", "storage_window.c", 399, "false", v32, a2, 0, a1[3] - a1[2], v20, a2[2]);
          free(v31);
          if (__valid_fsp(*a2))
          {
            v33 = 2989;
          }

          else
          {
            v33 = 3072;
          }

          *v33 = -559038737;
          abort();
        }

        result = 0.0;
        *(a1 + 1) = xmmword_1C2BFA300;
        *v21 = 1;
      }
    }
  }

  return result;
}

uint64_t _windowsGetPtr(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> *(a1 + 48);
  if (v3 >= *(a1 + 32))
  {
    return 0;
  }

  v5 = *(a1 + 8 * v3 + 56);
  if (!v5)
  {
    return 0;
  }

  v6 = v5[1];
  if ((v6 + 1) < 2)
  {
    return 0;
  }

  v7 = v5[2];
  v8 = a2 >= v7;
  v9 = a2 - v7;
  if (!v8)
  {
    return 0;
  }

  result = 0;
  if (a3 + a2 <= *(a1 + 8) && v5[3] >= a3 + a2)
  {
    return v6 + v9;
  }

  return result;
}

void si_analytics_log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v13 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, "Deallocating window for stable mapping %p (%p %lld %lld) (%lld  %zu)", va);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v8 = xpc_string_create(string[0]);
  values = v8;
  v9 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v9);
  xpc_release(v8);
  free(string[0]);
}

{
  va_start(va, a8);
  v13 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, "[%s] open %s indexId %u doesn't match previous assigned %u", va);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v8 = xpc_string_create(string[0]);
  values = v8;
  v9 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v9);
  xpc_release(v8);
  free(string[0]);
}

unint64_t _windowsResolvePtr(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2 >> *(a1 + 48);
  if (v6 < *(a1 + 32))
  {
    v7 = *(a1 + 8 * v6 + 56);
    if (v7)
    {
      if (v7[2] <= a2 && v7[3] >= a3 + a2 && *(a1 + 8) >= a3 + a2 && !v7[1])
      {
        v15 = CICleanUpThreadLoc();
        storage_windows_pushLock(v15, v6);
        if (!v7[1])
        {
          if (a2)
          {
            v16 = 0;
          }

          else
          {
            v16 = a3 == 1;
          }

          v17 = !v16;
          _windowsMapInit(a1, v17, 0);
        }

        CIOnThreadCleanUpPop(v15);
      }
    }
  }

  result = _windowsGetPtr(a1, a2, a3);
  if (!result)
  {
    result = _moveWindowsInner(a1, a2, a3, 0, v9, v10);
    if (*MEMORY[0x1E69E9AC8] < result)
    {
      return result;
    }

    v21 = __si_assert_copy_extra(0);
    v19 = v21;
    v22 = "";
    if (v21)
    {
      v22 = v21;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 794, "vm_page_size < (uintptr_t)ptr", v22);
LABEL_31:
    free(v19);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  if (result == a2)
  {
    v18 = __si_assert_copy_extra(0);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 784, "(offset_t)(intptr_t)ptr !=inOffset", v20);
    goto LABEL_31;
  }

  if (*MEMORY[0x1E69E9AC8] >= result)
  {
    v11 = __si_assert_copy_extra(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 789, "vm_page_size < (uintptr_t)ptr", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

  return result;
}

uint64_t storage_windows_pushLock(uint64_t a1, uint64_t a2)
{
  v3 = (&windowLock + 4 * a2);
  os_unfair_lock_lock(v3);
  v4 = MEMORY[0x1E69E9B80];

  return CIOnThreadCleanUpPush(a1, v4, v3);
}

uint64_t _storageWindowsExpandBacking(_DWORD **a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = 1 << *(a1 + 48);
  if (v3 <= v4 && *(a1 + 8) >= 2)
  {
    v31 = __si_assert_copy_extra(0);
    v32 = v31;
    v33 = "";
    if (v31)
    {
      v33 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 805, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v33);
    free(v32);
    if (__valid_fs(-1))
    {
      v34 = 2989;
    }

    else
    {
      v34 = 3072;
    }

    *v34 = -559038737;
    abort();
  }

  v5 = a1[2] + a2;
  if (v3 >> 30)
  {
    if ((v5 + 1) > v3 + 0x40000000)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = (v3 + 0x40000000);
    }

    v7 = (&v6[~v3] & 0xFFFFFFFFC0000000) + 0x40000000;
  }

  else
  {
    v8 = 4096;
    if (v3)
    {
      v8 = a1[1];
    }

    do
    {
      v7 = v8;
      v9 = (v8 + v3);
      v8 *= 2;
    }

    while (v5 >= v9);
  }

  LODWORD(v10) = *(a1 + 8);
  if (v10)
  {
    v11 = a1[7];
    if (v11)
    {
      v12 = *(v11 + 1);
      if (v10 >= 1 && v12 != 0)
      {
        v14 = 0;
        do
        {
          storageWindowSync(a1[v14++ + 7], 1);
          v10 = *(a1 + 8);
        }

        while (v14 < v10);
        v3 = a1[1];
        v4 = 1 << *(a1 + 48);
      }
    }

    if (v3 <= v4 && v10 >= 2)
    {
      v35 = __si_assert_copy_extra(0);
      v36 = v35;
      v37 = "";
      if (v35)
      {
        v37 = v35;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 826, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v37);
      free(v36);
      if (__valid_fs(-1))
      {
        v38 = 2989;
      }

      else
      {
        v38 = 3072;
      }

      *v38 = -559038737;
      abort();
    }
  }

  *__error() = 0;
  if (v7 && (v15 = a1[1] + v7, v15 >= v5))
  {
    v16 = "unknown";
    while (1)
    {
      v17 = *a1;
      if (fd_truncate(*a1, v15) != -1)
      {
        a1[1] = v15;
        return 1;
      }

      v18 = *__error();
      v19 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = v16;
        if (v17)
        {
          v16 = fd_name_ptr(v17);
        }

        v23 = *__error();
        *buf = 136316162;
        v48 = "_storageWindowsExpandBacking";
        v49 = 1024;
        v50 = 840;
        v51 = 2080;
        v52 = v16;
        v53 = 2048;
        v54 = v15;
        v55 = 1024;
        v56 = v23;
        _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate %s (%lld) error:%d", buf, 0x2Cu);
        v16 = v22;
      }

      *__error() = v18;
      if (*__error() != 28)
      {
        return 0;
      }

      v20 = *__error();
      v21 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v48 = "_storageWindowsExpandBacking";
        v49 = 1024;
        v50 = 843;
        v51 = 2048;
        v52 = v7 >> 1;
        _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%lld) growing size", buf, 0x1Cu);
      }

      *__error() = v20;
      if (v7 >= 2)
      {
        v15 = a1[1] + (v7 >> 1);
        v7 >>= 1;
        if (v15 >= v5)
        {
          continue;
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
LABEL_36:
    bzero(buf, 0x400uLL);
    v24 = *__error();
    v25 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = fd_realpath(*a1, buf);
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = "";
      }

      v30 = *__error();
      *v39 = 136315906;
      v40 = "_storageWindowsExpandBacking";
      v41 = 1024;
      v42 = 834;
      v43 = 2080;
      v44 = v29;
      v45 = 1024;
      v46 = v30;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: _storageWindowsExpand %s error:%d", v39, 0x22u);
    }

    v26 = __error();
    result = 0;
    *v26 = v24;
  }

  return result;
}

uint64_t _storageWindowsSetFileSize(_DWORD **a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (v3 <= 1 << *(a1 + 48) && *(a1 + 8) >= 2)
  {
    v17 = __si_assert_copy_extra(0);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "storage_window.c", 859, "windows->_size>(1ull<<windows->offset_shift) || windows->count <= 1", v19);
    free(v18);
    if (__valid_fs(-1))
    {
      v20 = 2989;
    }

    else
    {
      v20 = 3072;
    }

    *v20 = -559038737;
    abort();
  }

  v4 = a2 - v3;
  *__error() = 0;
  if (v4)
  {
    v5 = a1[1] + v4;
    while (fd_truncate(*a1, v5) == -1)
    {
      v6 = *__error();
      v7 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *__error();
        *buf = 136315906;
        v30 = "_storageWindowsSetFileSize";
        v31 = 1024;
        v32 = 888;
        v33 = 2048;
        v34 = v5;
        v35 = 1024;
        v36 = v9;
        _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%lld) error:%d", buf, 0x22u);
      }

      *__error() = v6;
      v5 = a1[1] + (v4 >> 1);
      v8 = v4 > 1;
      v4 >>= 1;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    a1[1] = v5;
    return 1;
  }

  else
  {
LABEL_9:
    bzero(buf, 0x400uLL);
    v10 = *__error();
    v11 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = fd_realpath(*a1, buf);
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = "";
      }

      v16 = *__error();
      *v21 = 136315906;
      v22 = "_storageWindowsSetFileSize";
      v23 = 1024;
      v24 = 884;
      v25 = 2080;
      v26 = v15;
      v27 = 1024;
      v28 = v16;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: _storageWindowsExpand %s error:%d", v21, 0x22u);
    }

    v12 = __error();
    result = 0;
    *v12 = v10;
  }

  return result;
}

BOOL storage_windows_contains_address(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    v3 = (a1 + 56);
    v4 = 1;
    v5 = *(a1 + 32);
    v6 = 1;
    do
    {
      v7 = *v3;
      if (*v3)
      {
        v8 = v7[1];
        v9 = !v8 || v8 > a2;
        if (!v9 && v7[3] + v8 - v7[2] >= a2)
        {
          break;
        }
      }

      v6 = v4++ < v2;
      ++v3;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t _windowsAddressOffset(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    return -1;
  }

  v3 = (a1 + 56);
  v4 = 1;
  do
  {
    v5 = *v3;
    if (*v3 && (v6 = v5[1], v6 + 1 >= 2) && v6 <= a2 && (v8 = v5[2], v6 - v8 + v5[3] > a2))
    {
      result = a2 - v6 + v8;
    }

    else
    {
      result = -1;
    }

    if (v4 >= v2)
    {
      break;
    }

    ++v4;
    ++v3;
  }

  while (result == -1);
  return result;
}

uint64_t storageWindowsProtect(uint64_t result, int a2)
{
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = result + 56;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = v7[1];
      if ((result + 1) >= 2)
      {
        result = mprotect(result, v7[3] - v7[2], a2);
        v2 = *(v4 + 32);
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t allocateReaderWindowAtSlot(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  v8 = *a4;
  if (!*a4)
  {
    v9 = *(*a1 + 564);
    v10 = *(a2 + 40);
    v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
    atomic_store(1u, v8);
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *(v8 + 40) = v9;
    *(v8 + 3) = 0;
    *(v8 + 4) = v10;
    *a4 = v8;
    *(*a1 + a3 + 12) = 1;
  }

  v11 = *(a2 + 8 * a3 + 56);
  if (v11)
  {
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
  }

  else
  {
    v12 = (1 << *(a2 + 48)) * a3;
    v13 = v12 + (1 << *(a2 + 48));
  }

  *(v8 + 2) = v12;
  *(v8 + 3) = v13;
  result = fd_mmap(*a2, v13 - v12, 1, 1, v12);
  *(*a4 + 1) = result;
  __dmb(0xBu);
  *(*a1 + 8 * a3 + 584) = *a4;
  *(*a1 + 560) = *(a2 + 32);
  return result;
}

uint64_t compress_data_to_file(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = 22;
  if (!a1)
  {
    return v5;
  }

  v6 = a2;
  if (!a2 || !a3)
  {
    return v5;
  }

  v9 = a4;
  v10 = a1;
  v11 = a4;
  if (a4 != -1 || (v11 = open(a3, 1537, 384), v11 != -1))
  {
    if (a5)
    {
      valuePtr = 9;
      v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      *values = *MEMORY[0x1E695E4D0];
      *&values[8] = v12;
      *&values[16] = *values;
      v13 = *MEMORY[0x1E698C1A0];
      keys = *MEMORY[0x1E698C1B8];
      v25 = v13;
      v26 = *MEMORY[0x1E698C1B0];
      v14 = CFDictionaryCreate(0, &keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v12)
      {
        CFRelease(v12);
      }

      if (!v14)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *values = *MEMORY[0x1E695E4D0];
      *&values[8] = *values;
      v15 = *MEMORY[0x1E698C1B0];
      keys = *MEMORY[0x1E698C1B8];
      v25 = v15;
      v14 = CFDictionaryCreate(0, &keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    if (CreateStreamCompressorQueueWithOptions())
    {
      CFRelease(v14);
      if (CreateStreamCompressor())
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *values = 134218242;
          *&values[4] = v6;
          *&values[12] = 2080;
          *&values[14] = a3;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "compressing %ld bytes to %s", values, 0x16u);
        }

        v16 = MEMORY[0x1E69E9C10];
        while (1)
        {
          v17 = WriteToStreamCompressor();
          if (v17 <= 0)
          {
            break;
          }

          v18 = v17;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *values = 134217984;
            *&values[4] = v18;
            _os_log_debug_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEBUG, "WriteToStreamCompressor wrote %lld bytes", values, 0xCu);
          }

          v10 += v18;
          v6 -= v18;
          if (!v6)
          {
            v5 = 0;
            goto LABEL_38;
          }
        }

        v19 = *__error();
        if (v19)
        {
          v5 = v19;
        }

        else
        {
          v5 = 22;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *values = 67109378;
          *&values[4] = v5;
          *&values[8] = 2080;
          *&values[10] = a3;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "WriteToStreamCompressor error %d for %s", values, 0x12u);
        }

LABEL_38:
        if (CloseStreamCompressor() == -1)
        {
          v20 = *__error();
          v5 = v5 ? v5 : v20;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *values = 67109120;
            *&values[4] = v20;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CloseStreamCompressor error %d", values, 8u);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *values = 136315138;
          *&values[4] = a3;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CreateStreamCompressor error %s", values, 0xCu);
        }

        v5 = 22;
      }

      if (FinishStreamCompressorQueue() == -1 && ((v21 = *__error(), v5) ? (v5 = v5) : (v5 = v21), os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)))
      {
        *values = 67109120;
        *&values[4] = v21;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "FinishStreamCompressorQueue error %d", values, 8u);
        if (!v5)
        {
LABEL_51:
          if (v9 == -1)
          {
            close(v11);
          }

          return v5;
        }
      }

      else if (!v5)
      {
        goto LABEL_51;
      }

LABEL_50:
      unlink(a3);
      goto LABEL_51;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *values = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CreateStreamCompressorQueueWithOptions failed", values, 2u);
    }

    CFRelease(v14);
LABEL_25:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *values = 136315138;
      *&values[4] = a3;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "no stream_compressor_queue for %s", values, 0xCu);
    }

    v5 = 22;
    goto LABEL_50;
  }

  v5 = *__error();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *values = 67109378;
    *&values[4] = v5;
    *&values[8] = 2080;
    *&values[10] = a3;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "open %d with %s", values, 0x12u);
  }

  return v5;
}

uint64_t compress_file_in_place(const std::__fs::filesystem::path *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  memset(&v18, 0, sizeof(v18));
  if (stat(a1, &v18))
  {
    v4 = *__error();
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v4;
    }

    *buf = 67109378;
    *v20 = v4;
    *&v20[4] = 2080;
    *&v20[6] = a1;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "stat error %d with %s";
    goto LABEL_22;
  }

  st_size = v18.st_size;
  if (v18.st_size <= 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 22;
    }

    *buf = 134218242;
    *v20 = st_size;
    *&v20[8] = 2080;
    *&v20[10] = a1;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "file too small %ld %s";
    v4 = 22;
    v16 = 22;
LABEL_23:
    _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, v14, buf, v16);
    return v4;
  }

  v7 = open(a1, 0);
  if (v7 == -1)
  {
    v4 = *__error();
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v4;
    }

    *buf = 67109378;
    *v20 = v4;
    *&v20[4] = 2080;
    *&v20[6] = a1;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "open %d with %s";
LABEL_22:
    v16 = 18;
    goto LABEL_23;
  }

  v8 = v7;
  __from = 0;
  Current = CFAbsoluteTimeGetCurrent();
  asprintf(&__from, "%s.%ld.tmp", a1, Current);
  v10 = mmap(0, v18.st_size, 1, 1, v8, 0);
  if (v10 == -1)
  {
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v20 = v4;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "mmap error %d", buf, 8u);
    }
  }

  else
  {
    v11 = v10;
    v4 = compress_data_to_file(v10, v18.st_size, __from, 0xFFFFFFFFLL, a2);
    munmap(v11, v18.st_size);
  }

  if (v4)
  {
    unlink(__from);
  }

  else
  {
    rename(__from, a1, v12);
    if (v15 == -1)
    {
      v4 = *__error();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v20 = v4;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "rename error %d", buf, 8u);
      }
    }

    else
    {
      if (!queryCompressionInfo() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 67110144;
        *v20 = 0;
        *&v20[4] = 1024;
        *&v20[6] = 0;
        *&v20[10] = 2048;
        *&v20[12] = 0;
        v21 = 2048;
        v22 = 0;
        v23 = 2048;
        v24 = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "compressionType: 0x%x compressionOverhead: %u compressedSize: %lld uncompressedSize: %lld decmpfsFlags: 0x%llx", buf, 0x2Cu);
      }

      v4 = 0;
    }
  }

  free(__from);
  close(v8);
  return v4;
}

void *getkQPQUOutputTokenRangeKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
    getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenRangeKey()") description:{@"PRQueryQUProcessor.mm", 27, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C28C908C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPQUOutputTokenArgIdsKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
    getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgIdsKey()") description:{@"PRQueryQUProcessor.mm", 25, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C28C91D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPQUOutputTokenArgScoresKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgScoresKey");
    getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgScoresKey()") description:{@"PRQueryQUProcessor.mm", 26, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C28C9314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPQUOutputTokenKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
    getkQPQUOutputTokenKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenKey()") description:{@"PRQueryQUProcessor.mm", 24, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C28C9458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  if (!a2)
  {
    return 0;
  }

  v10 = v9;
  v11 = vcnt_s8(a2);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= a2)
    {
      v13 = v9 % a2;
    }
  }

  else
  {
    v13 = (a2 - 1) & v9;
  }

  v14 = *(a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  v15 = *v14;
  if (*v14)
  {
    do
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a3))
        {
          return v15;
        }
      }

      else
      {
        if (v12 > 1)
        {
          if (v16 >= a2)
          {
            v16 %= a2;
          }
        }

        else
        {
          v16 &= a2 - 1;
        }

        if (v16 != v13)
        {
          return 0;
        }
      }

      v15 = *v15;
    }

    while (v15);
  }

  return v15;
}

void *std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, const void **a2, char *__s)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = std::string::basic_string[abi:nn200100](a1, v6 + v7);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a1, v9, v6);
  }

  v10 = a1 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t ___ZL13QURankingNodePKcRKNSt3__113unordered_mapIifNS1_4hashIiEENS1_8equal_toIiEENS1_9allocatorINS1_4pairIKifEEEEEEffRKNS2_INS1_12basic_stringIcNS1_11char_traitsIcEENS7_IcEEEEfNS3_ISJ_EENS5_ISJ_EENS7_INS8_IKSJ_fEEEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return a2;
  }

  v5 = *(a1 + 32);
  std::string::basic_string[abi:nn200100]<0>(v27, *v3);
  if (std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v5, v27))
  {
    v6 = *(a1 + 32);
    std::string::basic_string[abi:nn200100]<0>(__p, **(a2 + 16));
    v7 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v6, __p);
    if (!v7)
    {
      goto LABEL_33;
    }

    v8 = v7[10];
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = v8 + v8;
  }

  else
  {
    v9 = 1.0;
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v10 = v9 * *(a1 + 48);
  v11 = *(a2 + 16);
  *(v11 + 52) = v10;
  *(v11 + 56) = *(a1 + 52);
  if (*(*(a1 + 40) + 24))
  {
    v12 = *v11;
    if (*v11)
    {
      __p[0] = 0;
      __p[1] = 0;
      v26 = 0;
      std::string::basic_string[abi:nn200100]<0>(v23, v12);
      {
        SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs = 0u;
        *&qword_1EBF48208 = 0u;
        dword_1EBF48218 = 1065353216;
      }

      if (SpotlightU2AttributesToArgIDs(void)::onceToken[0] != -1)
      {
        dispatch_once(SpotlightU2AttributesToArgIDs(void)::onceToken, &__block_literal_global_71);
      }

      v13 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::find<std::string>(v23);
      if (v13)
      {
        goto LABEL_20;
      }

      std::string::basic_string[abi:nn200100]<0>(v27, "default");
      v14 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::find<std::string>(v27);
      if (v14)
      {
        v13 = v14;
        if (v28 < 0)
        {
          operator delete(v27[0]);
        }

LABEL_20:
        std::vector<int>::vector[abi:nn200100](__p, v13 + 5);
        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        v15 = __p[1];
        v16 = __p[0];
        if (__p[0] != __p[1])
        {
          v17 = *(a1 + 40);
          v18 = 0.0;
          v19 = __p[0];
          do
          {
            v20 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(v17, *v19);
            if (v20 && v18 < *(v20 + 5))
            {
              v18 = *(v20 + 5);
            }

            ++v19;
          }

          while (v19 != v15);
          if (v18 > 0.0)
          {
            v21 = v18 * 0.1 + 0.9;
            *(*(a2 + 16) + 52) = v10 * (v21 + v21);
          }
        }

        if (v16)
        {
          __p[1] = v16;
          operator delete(v16);
        }

        return a2;
      }

LABEL_33:
      abort();
    }
  }

  return a2;
}

void sub_1C28C9898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}

uint64_t std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

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

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v9 == v15)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

uint64_t *std::vector<int>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<int>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 2);
  }

  return a1;
}

void std::vector<int>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a2);
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void *___ZL31getkQPQUOutputTokenKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *QueryParserLibrary(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL22QueryParserLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8190B88;
    v6 = 0;
    QueryParserLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = QueryParserLibraryCore(char **)::frameworkLibrary;
  if (!QueryParserLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QueryParserLibrary()"];
    v1 = [v0 handleFailureInFunction:v3 file:@"PRQueryQUProcessor.mm" lineNumber:23 description:{@"%s", v4[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t ___ZL22QueryParserLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  QueryParserLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL40getkQPQUOutputTokenArgScoresKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgScoresKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getkQPQUOutputTokenArgIdsKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkQPQUOutputTokenRangeKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t si_oid64psid_close(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = *(v1 + 24);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(v1 + 24) = -1;
  }

  return result;
}

uint64_t si_oid64psid_path_to_oid_path(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v33[128] = *MEMORY[0x1E69E9840];
  if (v1)
  {
    v4 = v1;
    if (*v1 == 47)
    {
      v5 = v3;
      v6 = v2;
      v7 = v33;
      bzero(v33, 0x400uLL);
      v8 = 0;
      v9 = 0;
      v10 = 47;
      while (v9 != 1024)
      {
        v11 = v10;
        v12 = v10 == 47;
        if (v10 != 47 || !v8)
        {
          *v7++ = v10;
        }

        v10 = v4[++v9];
        v8 = v12;
        if (!v10)
        {
          v14 = v11 == 47 && v7 - v33 > 1;
          v7[-v14] = 0;
          v15 = &v7[!v14] - v33;
          bzero(v32, 0x400uLL);
          v16 = 0;
          v17 = &v32[v15];
          memset(&v30, 0, sizeof(v30));
          while (1)
          {
            __memcpy_chk();
            if (md_stat_real(v32, &v30))
            {
              st_ino = 0;
              v19 = 0;
            }

            else
            {
              st_ino = v30.st_ino;
              if (v5)
              {
                *v6 = v30.st_ino;
                v19 = 1;
              }

              else
              {
                v19 = 0;
              }

              v25 = v17;
              if (v15 >= 1)
              {
                v25 = v17;
                while (*v25 != 47)
                {
                  if (--v25 <= v32)
                  {
                    goto LABEL_40;
                  }
                }

                *v25 = 0;
              }

LABEL_40:
              if (v25 != v32)
              {
                v29 = v17;
                st_dev = v30.st_dev;
                v19 = v19;
                while (!md_stat_real(v32, &v30) && v30.st_dev == st_dev)
                {
                  v6[v19] = v30.st_ino;
                  if (v25 > v32)
                  {
                    while (*v25 != 47)
                    {
                      if (--v25 <= v32)
                      {
                        v25 = v32;
                        goto LABEL_49;
                      }
                    }

                    *v25 = 0;
                  }

LABEL_49:
                  ++v19;
                  if (v25 == v32)
                  {
                    v17 = v29;
                    goto LABEL_53;
                  }
                }

                v17 = v29;
              }

              if (v19)
              {
LABEL_53:
                v27 = &v6[v19];
                if (*(v27 - 1) != 2)
                {
                  v19 = (v19 + 1);
                  *v27 = 2;
                }
              }
            }

            v20 = v19 ? v5 : 1;
            if (v19 <= 1 && (v20 & 1) != 0)
            {
              return v19;
            }

            bzero(v31, 0x1008uLL);
            __memcpy_chk();
            if ((v5 & 1) == 0)
            {
              v31[v19] = st_ino;
            }

            v21 = v19 + (v5 ^ 1);
            qsort_oids(v31, v21);
            if (v21 < 2)
            {
              return v19;
            }

            v22 = v31[0];
            v23 = 1;
            while (1)
            {
              v24 = v31[v23];
              if (v24 == v22)
              {
                break;
              }

              ++v23;
              v22 = v24;
              if (v21 == v23)
              {
                return v19;
              }
            }

            if (v16 == 100)
            {
              return 0;
            }

            ++v16;
          }
        }
      }
    }
  }

  return 0;
}

__darwin_ino64_t si_oid64psid_path_to_oid(int a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    memset(&v4, 0, sizeof(v4));
    if (md_stat_real(a2, &v4))
    {
      return 0;
    }

    else
    {
      return v4.st_ino;
    }
  }

  return a3;
}

char *si_oid64psid_fast_oid_to_path(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (a2 == 2)
  {
    bzero(&v6, 0x878uLL);
    if (fstatfs(*(v4 + 24), &v6))
    {
      return 0;
    }

    else
    {
      strlcpy(v3, v6.f_mntonname, 0x400uLL);
    }
  }

  else if ((*(v4 + 20) & 0x10) != 0)
  {
    sprintf(a3, "/.vol/%llu/%llu", *(v4 + 16), a2);
  }

  else
  {
    v3 = 0;
    *__error() = 45;
  }

  return v3;
}

char *si_oid64psid_oid_to_path(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (fsgetpath(a3, 0x400uLL, (v6 + 4), a2) < 2)
  {
    if (dword_1EBF46AE4 >= 5)
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v6 + 16);
        v17.f_bsize = 67109376;
        v17.f_iosize = v12;
        LOWORD(v17.f_blocks) = 2048;
        *(&v17.f_blocks + 2) = a2;
        _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "fsgetpath like %d/%llx\n", &v17, 0x12u);
      }

      v3 = 0;
      *__error() = v10;
    }

    else
    {
      return 0;
    }
  }

  else if (*(a1 + 168) && (strstr(v3, ".migratedphotolibrary/") || strstr(v3, ".migratedaplibrary/") || strstr(v3, ".photolibrary/") || strstr(v3, ".aplibrary/")))
  {
    memset(&v14, 0, sizeof(v14));
    bzero(&v17, 0x878uLL);
    if (!stat(v3, &v14) && (v14.st_mode & 0xF000) == 0x8000 && v14.st_nlink >= 2u && !statfs(v3, &v17))
    {
      st_ino = v14.st_ino;
      do
      {
        bzero(__s1, 0x400uLL);
        f_fsid = v17.f_fsid;
        if ((*(a1 + 168))(a1, &st_ino))
        {
          break;
        }

        v7 = fsgetpath(__s1, 0x400uLL, &f_fsid, st_ino);
        if (v7 > 2 && strstr(__s1, ".photoslibrary/"))
        {
          strlcpy(v3, __s1, 0x400uLL);
          return v3;
        }
      }

      while (v7 >= 2 && st_ino != 0);
    }
  }

  return v3;
}

uint64_t si_psid_iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  pthread_mutex_lock((v4 + 2080));
  if (*(v4 + 2) != 1)
  {
    v6 = 78;
    goto LABEL_9;
  }

  v5 = *(v4 + 8);
  v37 = 0;
  v38 = 0;
  memset(v40, 0, sizeof(v40));
  v6 = sqlite3BtreeCursor(*v5, *(v5 + 8), 1, *(v5 + 24), &v37);
  if (!v6)
  {
    v7 = v37;
    v8 = moveToRoot(v37);
    if (v8)
    {
      goto LABEL_4;
    }

    v15 = *(v7 + 97);
    if (*(v7 + 97))
    {
      v8 = moveToLeftmost(v7);
      v36 = 0;
      if (!v8 && v15)
      {
        while (1)
        {
          if (*(v7 + 97))
          {
            getCellInfo(v7);
            v16 = v7[9];
            if (v16 == 8)
            {
              Payload = getPayload(v7, 8, &v38, 0);
              if (Payload)
              {
                goto LABEL_36;
              }

              v18 = *__error();
              v19 = _SILogForLogForCategory(4);
              v20 = 2 * (dword_1EBF46ADC < 4);
              if (os_log_type_enabled(v19, v20))
              {
                *buf = 134217984;
                *v42 = v38;
                v21 = v19;
                v22 = v20;
                v23 = "key: %lld # ";
                v24 = 12;
LABEL_22:
                _os_log_impl(&dword_1C278D000, v21, v22, v23, buf, v24);
                goto LABEL_23;
              }

              goto LABEL_23;
            }
          }

          else
          {
            LODWORD(v16) = 0;
          }

          Payload = getPayload(v7, v16, v40, 0);
          if (Payload)
          {
            goto LABEL_36;
          }

          v18 = *__error();
          v25 = _SILogForLogForCategory(4);
          v26 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v25, v26))
          {
            *buf = 134218498;
            *v42 = *&v40[0];
            *&v42[8] = 1024;
            *&v42[10] = DWORD2(v40[0]);
            v43 = 2080;
            v44 = v40 | 0xE;
            v21 = v25;
            v22 = v26;
            v23 = "key: %lld / %d / %s # value: ";
            v24 = 28;
            goto LABEL_22;
          }

LABEL_23:
          *__error() = v18;
          if (!*(v7 + 97))
          {
            v27 = 0;
LABEL_31:
            Payload = getPayload(v7, v27, v40, 1);
            if (Payload)
            {
              goto LABEL_36;
            }

            v33 = *__error();
            v34 = _SILogForLogForCategory(4);
            v35 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v34, v35))
            {
              *buf = 134218498;
              *v42 = *&v40[0];
              *&v42[8] = 1024;
              *&v42[10] = DWORD2(v40[0]);
              v43 = 2080;
              v44 = v40 | 0xE;
              _os_log_impl(&dword_1C278D000, v34, v35, "value: %lld / %d / %s\n", buf, 0x1Cu);
            }

            *__error() = v33;
            goto LABEL_35;
          }

          getCellInfo(v7);
          v27 = *(v7 + 20);
          if (v27 != 8)
          {
            goto LABEL_31;
          }

          Payload = getPayload(v7, 8, &v38, 1);
          if (Payload)
          {
            goto LABEL_36;
          }

          v28 = *__error();
          v29 = _SILogForLogForCategory(4);
          v30 = 2 * (dword_1EBF46ADC < 4);
          v31 = os_log_type_enabled(v29, v30);
          v32 = v38;
          if (v31)
          {
            *buf = 134217984;
            *v42 = v38;
            _os_log_impl(&dword_1C278D000, v29, v30, "value: %lld\n", buf, 0xCu);
          }

          *__error() = v28;
          bzero(buf, 0x400uLL);
          v39 = 0;
          if (!get_path_for_id_64(v5, v32, &v39, buf, 1024))
          {
            (*(a3 + 16))(a3, v32, v39);
          }

LABEL_35:
          Payload = sqlite3BtreeNext(v7, &v36);
          if (Payload | v36)
          {
LABEL_36:
            v6 = Payload;
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      v8 = 0;
      v36 = 1;
    }

LABEL_4:
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    v11 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 67109378;
      *v42 = v8;
      *&v42[4] = 2080;
      *&v42[6] = v13;
      _os_log_impl(&dword_1C278D000, v10, v11, "psid_dump: failed to go to the beginning of the db! (%d / %s)\n", buf, 0x12u);
    }

    *__error() = v9;
    v6 = 2;
LABEL_7:
    sqlite3BtreeCloseCursor(v7);
  }

LABEL_9:
  pthread_mutex_unlock((v4 + 2080));
  return v6;
}

uint64_t si_psid_set_path_to_oid(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    if (dword_1EBF46AE4 >= 5)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&v39[0] = a3;
        WORD4(v39[0]) = 2080;
        *(v39 + 10) = a2;
        _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "%lld -> %s", buf, 0x16u);
      }

      *__error() = v28;
    }

    v6 = *(v5 + 2064);
    if (!strncmp(a2, (v5 + 16), v6))
    {
      v8 = *(v5 + 8);
      v9 = &a2[v6];
      if (*(v5 + 2) == 1)
      {
        v10 = set_id_for_path_64(v7);
        goto LABEL_8;
      }

      v32 = 0;
      v33 = a3;
      v31 = 268;
      if (_sqlite_get(v8, &v33, 4, buf, &v31))
      {
        v10 = 22;
        goto LABEL_8;
      }

      v40 = 0;
      memset(v39, 0, sizeof(v39));
      *buf = 2;
      v15 = *v9;
      if (!*v9)
      {
        v10 = 17;
LABEL_8:
        if (v10)
        {
          v11 = *__error();
          v12 = _SILogForLogForCategory(6);
          v13 = 2 * (dword_1EBF46AE4 < 4);
          if (os_log_type_enabled(v12, v13))
          {
            *buf = 134218242;
            *&v39[0] = a3;
            WORD4(v39[0]) = 2080;
            *(v39 + 10) = a2;
            _os_log_impl(&dword_1C278D000, v12, v13, "Failed %lld -> %s", buf, 0x16u);
          }

          *__error() = v11;
        }

        return pthread_mutex_unlock((v5 + 2080));
      }

      v16 = v39 + 6;
      v10 = 17;
      while (1)
      {
        while (v15 == 47)
        {
          v17 = *++v9;
          v15 = v17;
        }

        v18 = v9;
        if (!v15)
        {
          goto LABEL_8;
        }

        do
        {
          if (v15 == 47)
          {
            break;
          }

          v19 = *++v18;
          v15 = v19;
        }

        while (v19);
        v20 = v18 - v9;
        if (((v18 - v9) & 0xFF00) != 0)
        {
          v20 = 255;
        }

        WORD2(v39[0]) = v20;
        __strncpy_chk();
        v21 = WORD2(v39[0]);
        ++WORD2(v39[0]);
        v16[v21] = 0;
        LODWORD(v39[0]) = 0;
        v9 = *v18 == 47 ? v18 + 1 : v18;
        if (psid_lookup(v8, buf, &v32))
        {
          break;
        }

LABEL_37:
        *buf = v32;
        v15 = *v9;
        if (!*v9)
        {
          goto LABEL_8;
        }
      }

      if (*v9)
      {
        v10 = 2;
        goto LABEL_8;
      }

      v30 = v16;
      if (v33 == 2 || v33 > 0x63)
      {
        if (!_psid_insert(v8, buf, &v33))
        {
          v10 = 0;
LABEL_36:
          v16 = v30;
          goto LABEL_37;
        }
      }

      else
      {
        v22 = *__error();
        v23 = _SILogForLogForCategory(4);
        v24 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v23, v24))
        {
          *v34 = 67109120;
          v35 = v33;
          _os_log_impl(&dword_1C278D000, v23, v24, "psid_insert_with_id: fid %d not valid!\n", v34, 8u);
        }

        *__error() = v22;
      }

      v25 = *__error();
      v26 = _SILogForLogForCategory(4);
      v27 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v26, v27))
      {
        *v34 = 67109378;
        v35 = v33;
        v36 = 2080;
        v37 = v30;
        _os_log_impl(&dword_1C278D000, v26, v27, "set_id_for_path: Failed to insert fid %d for %s\n", v34, 0x12u);
      }

      *__error() = v25;
      goto LABEL_36;
    }
  }

  return pthread_mutex_unlock((v5 + 2080));
}

uint64_t si_psid_set_root_path2(uint64_t a1, const char *a2, const char *a3)
{
  v5 = *(a1 + 16);
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    v6 = strlen(a2);
    *(v5 + 2064) = v6;
    v7 = strlen(a3);
    *(v5 + 2068) = v7;
    v8 = 0xFFFFFFFFLL;
    if (v6 <= 0x3FF && v7 <= 0x3FF)
    {
      memcpy((v5 + 16), a2, v6 & 0x3FF);
      memcpy((v5 + 1040), a3, *(v5 + 2068));
      v8 = 0;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock((v5 + 2080));
  return v8;
}

void *si_psid_oid_to_firm_path(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v13 = 0;
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    v6 = *(v5 + 8);
    if (*(v5 + 2) == 1)
    {
      path_for_id_64 = get_path_for_id_64(v6, a2, &v13, a3 + *(v5 + 2068), 1024 - *(v5 + 2068));
    }

    else
    {
      path_for_id_64 = get_path_for_id(v6, a2, &v13, a3 + *(v5 + 2068), 1024 - *(v5 + 2068));
    }

    if (path_for_id_64)
    {
      v8 = 0;
      *__error() = path_for_id_64;
    }

    else
    {
      v9 = *(v5 + 2068);
      if (*(v5 + 1040 + v9 - 1) == 47)
      {
        LODWORD(v9) = v9 - 1;
      }

      v8 = (v13 - v9);
      memcpy(v8, (v5 + 1040), v9);
    }
  }

  else
  {
    v8 = 0;
  }

  if (dword_1EBF46AE4 >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = v8;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "found %s for %llx\n", buf, 0x16u);
    }

    *__error() = v11;
  }

  pthread_mutex_unlock((v5 + 2080));
  return v8;
}

uint64_t si_psid_check_sandbox(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "======^^^^^ si_psid_check_sandbox sandbox (NOT IMPLEMENTED!) count:%ld", &v6, 0xCu);
  }

  *__error() = v3;
  return 1;
}

uint64_t si_oid_to_parent(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  pthread_mutex_lock((v4 + 2080));
  if (!*v4)
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 8);
  if (*(v4 + 2) != 1)
  {
    LODWORD(v9) = a2;
    v24 = 0u;
    memset(v25, 0, 28);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    memset(buf, 0, sizeof(buf));
    v10 = 268;
    if (!_sqlite_get(v5, &v9, 4, buf, &v10))
    {
      v2 = *buf;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(buf, 0, sizeof(buf));
  v9 = 272;
  v10 = a2;
  if (_sqlite_get(v5, &v10, 8, buf, &v9))
  {
LABEL_8:
    *__error() = 2;
LABEL_9:
    v2 = -1;
    goto LABEL_10;
  }

  v2 = *buf;
LABEL_10:
  if (dword_1EBF46AE4 >= 5)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v2;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "found %lld for %llx\n", buf, 0x16u);
    }

    *__error() = v7;
  }

  pthread_mutex_unlock((v4 + 2080));
  return v2;
}

uint64_t si_psid_close(uint64_t a1)
{
  v1 = *(a1 + 16);
  pthread_mutex_lock((v1 + 2080));
  v2 = *(v1 + 8);
  if (*(v1 + 2) == 1)
  {
    release_persistent_id_64_store(v2);
  }

  else
  {
    release_persistent_id_store(v2);
  }

  *(v1 + 8) = 0;
  *v1 = 0;

  return pthread_mutex_unlock((v1 + 2080));
}

uint64_t si_psid_delete(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v6 = 0;
  bzero(v7, 0x400uLL);
  pthread_mutex_lock((v3 + 2080));
  if (*v3)
  {
    v4 = *(v3 + 8);
    if (*(v3 + 2) == 1)
    {
      if (!get_path_for_id_64(v4, a2, &v6, &v7[*(v3 + 2064)], 1024 - *(v3 + 2064)))
      {
        remove_path_64(*(v3 + 8), v6);
      }
    }

    else if (!get_path_for_id(v4, a2, &v6, &v7[*(v3 + 2064)], 1024 - *(v3 + 2064)))
    {
      remove_path(*(v3 + 8), v6);
    }
  }

  return pthread_mutex_unlock((v3 + 2080));
}

uint64_t si_psid_rename(uint64_t a1, const char *a2, const char *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    v6 = *(v5 + 2064);
    if (!strncmp(a2, (v5 + 16), v6) && !strncmp(a3, (v5 + 16), v6))
    {
      v7 = *(v5 + 8);
      if (*(v5 + 2) == 1)
      {
        rename_path_64(*(v5 + 8), &a2[v6], &a3[v6], *(v5 + 2144));
        goto LABEL_30;
      }

      v30 = 0;
      remove_path(v7, &a3[v6]);
      if (get_id_for_path(v7, &a2[v6], &v30 + 1, &v30, 0))
      {
        goto LABEL_30;
      }

      strncpy(__dst, &a3[v6], 0x400uLL);
      __dst[1023] = 0;
      v8 = strrchr(__dst, 47);
      if (v8)
      {
        v9 = v8;
        *v8 = 0;
      }

      else
      {
        v9 = &__dst[-(__dst[0] != 47)];
      }

      v29 = 0;
      if (get_id_for_path(v7, __dst, &v29, 0, 1))
      {
        goto LABEL_30;
      }

      memset(v42, 0, 268);
      v10 = strncpy((v42 | 0xA), v9 + 1, 0x100uLL);
      BYTE1(v42[66]) = 0;
      v11 = strlen(v10);
      v42[0] = v29;
      LOWORD(v42[2]) = v11 + 1;
      v12 = _sqlite_bulkBegin(v7);
      if (v12)
      {
        v13 = v12;
        v14 = *__error();
        v15 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v32 = "rename_path";
          v33 = 1024;
          v34 = 913;
          v35 = 1024;
          v36 = v13;
          v37 = 1024;
          *v38 = HIDWORD(v30);
          *&v38[4] = 1024;
          *&v38[6] = v42[0];
          v39 = 2080;
          v40 = v42 | 0xA;
          v16 = "%s:%d: psid-rename: begin error %d updating the file-fid record for fid %d pid %d / %s. \n";
LABEL_34:
          _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x2Eu);
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      if (_sqlite_insert(v7, &v30 + 4, 4uLL, v42, v11 + 13, 1))
      {
        v17 = *__error();
        v18 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v32 = "rename_path";
          v33 = 1024;
          v34 = 921;
          v35 = 1024;
          v36 = HIDWORD(v30);
          _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: Could not update the file-fid record for fid %d\n", buf, 0x18u);
        }

        *__error() = v17;
      }

      if (_sqlite_insert(v7, v42, v11 + 13, &v30 + 4, 4, 1))
      {
        v19 = *__error();
        v20 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v32 = "rename_path";
          v33 = 1024;
          v34 = 929;
          v35 = 1024;
          v36 = v42[0];
          v37 = 2080;
          *v38 = v42 | 0xA;
          _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: failed to insert new record for %d / %s.\n", buf, 0x22u);
        }

        *__error() = v19;
      }

      v42[0] = v30;
      v21 = strrchr(&a2[v6], 47);
      if (v21)
      {
        v23 = strncpy((v42 | 0xA), v21 + 1, 0x100uLL);
        BYTE1(v42[66]) = 0;
        LOWORD(v42[2]) = strlen(v23) + 1;
        if (_sqlite_delete(v7, v42, LOWORD(v42[2]) + 12))
        {
          v24 = *__error();
          v25 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v32 = "rename_path";
            v33 = 1024;
            v34 = 951;
            v35 = 1024;
            v36 = v42[0];
            v37 = 2080;
            *v38 = v42 | 0xA;
            _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: failed to delete old record for %d / %s\n", buf, 0x22u);
          }

          *__error() = v24;
        }
      }

      v26 = _sqlite_bulkEnd(v7, v22);
      if (v26)
      {
        v27 = v26;
        v14 = *__error();
        v15 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v32 = "rename_path";
          v33 = 1024;
          v34 = 957;
          v35 = 1024;
          v36 = v27;
          v37 = 1024;
          *v38 = HIDWORD(v30);
          *&v38[4] = 1024;
          *&v38[6] = v42[0];
          v39 = 2080;
          v40 = v42 | 0xA;
          v16 = "%s:%d: psid-rename: end error %d updating the file-fid record for fid %d pid %d / %s. \n";
          goto LABEL_34;
        }

LABEL_29:
        *__error() = v14;
      }
    }
  }

LABEL_30:

  return pthread_mutex_unlock((v5 + 2080));
}

uint64_t si_psid_sync(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  pthread_mutex_lock((v1 + 2080));
  if (*v1)
  {
    v2 = *(v1 + 8);
    if (*(v1 + 2) == 1)
    {
      if (*(v2 + 32) <= 0x7FFFFFFFFFFFFFFEuLL)
      {
        v3 = *__error();
        v4 = _SILogForLogForCategory(4);
        v5 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v4, v5))
        {
          v6 = *(v2 + 32);
          *buf = 134217984;
          v36 = v6;
          v7 = "sync_psid_64_store: danger! master_fid %lld looks bad. not syncing.\n";
          v8 = v4;
          v9 = v5;
          v10 = 12;
LABEL_10:
          _os_log_impl(&dword_1C278D000, v8, v9, v7, buf, v10);
          goto LABEL_11;
        }

        goto LABEL_11;
      }

      v34 = *(v2 + 32);
      v15 = _sqlite_insert(v2, &master_fid_rec_4983, master_fid_rec_size_4985, &v34, 8, 0);
      if (v15)
      {
        v11 = v15;
        v3 = *__error();
        v16 = _SILogForLogForCategory(4);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        v17 = *(v2 + 32);
        *buf = 136315650;
        v36 = "sync_persistent_id_64_store";
        v37 = 1024;
        v38 = 331;
        v39 = 2048;
        v40 = v17;
        v18 = "%s:%d: psid-sync: Failed to update the master fid! (0x%llx)\n";
        v19 = v16;
        v20 = 28;
LABEL_18:
        _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
        goto LABEL_36;
      }

      v24 = *(v2 + 16);
      if (v24)
      {
        sqlite3BtreeCloseCursor(v24);
        *(v2 + 16) = 0;
      }

      v25 = sqlite3BtreeSync(*v2);
      if (v25)
      {
        v11 = v25;
        v3 = *__error();
        v27 = _SILogForLogForCategory(4);
        v28 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v36) = v11;
        v29 = "Couldn't sync btree; rc = %d\n";
LABEL_35:
        _os_log_impl(&dword_1C278D000, v27, v28, v29, buf, 8u);
        goto LABEL_36;
      }

      v11 = sqlite3BtreeCommit(*v2, v26);
      if (v11)
      {
        v3 = *__error();
        v27 = _SILogForLogForCategory(4);
        v28 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v36) = v11;
        v29 = "Couldn't commit; rc = %d\n";
        goto LABEL_35;
      }
    }

    else
    {
      if (*(v2 + 32) <= 0x63u)
      {
        v3 = *__error();
        v12 = _SILogForLogForCategory(4);
        v13 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v2 + 32);
          *buf = 67109120;
          LODWORD(v36) = v14;
          v7 = "sync_psid_store: danger! master_fid %d looks bad. not syncing.\n";
          v8 = v12;
          v9 = v13;
          v10 = 8;
          goto LABEL_10;
        }

LABEL_11:
        v11 = 22;
LABEL_36:
        *__error() = v3;
        goto LABEL_37;
      }

      LODWORD(v34) = *(v2 + 32);
      v21 = _sqlite_insert(v2, &master_fid_rec, master_fid_rec_size, &v34, 4, 0);
      if (v21)
      {
        v11 = v21;
        v3 = *__error();
        v22 = _SILogForLogForCategory(4);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        v23 = *(v2 + 32);
        *buf = 136315650;
        v36 = "sync_persistent_id_store";
        v37 = 1024;
        v38 = 331;
        v39 = 1024;
        LODWORD(v40) = v23;
        v18 = "%s:%d: psid-sync: Failed to update the master fid! (0x%x)\n";
        v19 = v22;
        v20 = 24;
        goto LABEL_18;
      }

      v30 = *(v2 + 16);
      if (v30)
      {
        sqlite3BtreeCloseCursor(v30);
        *(v2 + 16) = 0;
      }

      v31 = sqlite3BtreeSync(*v2);
      if (v31)
      {
        v11 = v31;
        v3 = *__error();
        v27 = _SILogForLogForCategory(4);
        v28 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v36) = v11;
        v29 = "Couldn't sync btree; rc = %d\n";
        goto LABEL_35;
      }

      v11 = sqlite3BtreeCommit(*v2, v32);
      if (v11)
      {
        v3 = *__error();
        v27 = _SILogForLogForCategory(4);
        v28 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v36) = v11;
        v29 = "Couldn't commit; rc = %d\n";
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

LABEL_37:
  pthread_mutex_unlock((v1 + 2080));
  return v11;
}

BOOL si_psid_check_perms(uint64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6, uint64_t a7, int a8)
{
  v24 = *MEMORY[0x1E69E9840];
  bzero(v23, 0x400uLL);
  if (a2 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a1 + 16);
    while (1)
    {
      if (!*(a4 + v15))
      {
        if (a6 && *a6 == 1)
        {
          memset(a4, 1, a2);
          return v14;
        }

        v17 = si_psid_oid_to_path(a1, *(a3 + 8 * v15), v23);
        if (v17)
        {
          if (*(v16 + 1) == 1 && (a8 & 1) == 0)
          {
            v22 = 0;
            *&v21.st_dev = xmmword_1C2BFAA08;
            *&v21.st_uid = 0;
            if (getattrlist(v17, &v21, &v22, 8uLL, 0))
            {
LABEL_18:
              if (*__error() == 2)
              {
                v18 = 2;
              }

              else
              {
                v18 = 1;
              }
            }

            else
            {
              v18 = (v22 & 0x400000000) == 0;
            }

            *(a4 + v15) = v18;
            goto LABEL_22;
          }

          if (a8)
          {
            memset(&v21, 0, sizeof(v21));
            if (stat(v17, &v21) < 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v19 = open(v17, 0);
            if (v19 < 0)
            {
              goto LABEL_18;
            }

            close(v19);
          }

          *(a4 + v15) = 0;
        }

        else
        {
          *(a4 + v15) = 2;
        }
      }

LABEL_22:
      v14 = ++v15 >= a2;
      if (a2 == v15)
      {
        return v14;
      }
    }
  }

  return 1;
}

void *si_psid_oid_to_path(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v13 = 0;
  pthread_mutex_lock((v5 + 2080));
  if (*v5)
  {
    v6 = *(v5 + 8);
    if (*(v5 + 2) == 1)
    {
      path_for_id_64 = get_path_for_id_64(v6, a2, &v13, a3 + *(v5 + 2064), 1024 - *(v5 + 2064));
    }

    else
    {
      path_for_id_64 = get_path_for_id(v6, a2, &v13, a3 + *(v5 + 2064), 1024 - *(v5 + 2064));
    }

    if (path_for_id_64)
    {
      v8 = 0;
      *__error() = path_for_id_64;
    }

    else
    {
      v9 = *(v5 + 2064);
      if (*(v5 + 16 + v9 - 1) == 47)
      {
        LODWORD(v9) = v9 - 1;
      }

      v8 = (v13 - v9);
      memcpy(v8, (v5 + 16), v9);
    }
  }

  else
  {
    v8 = 0;
  }

  if (dword_1EBF46AE4 >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = v8;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "found %s for %llx\n", buf, 0x16u);
    }

    *__error() = v11;
  }

  pthread_mutex_unlock((v5 + 2080));
  return v8;
}

uint64_t si_psid_path_to_oid_path(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a5;
  v11 = *(a1 + 16);
  pthread_mutex_lock((v11 + 2080));
  if ((a7 & 1) == 0)
  {
    if (*v11)
    {
      v12 = *(v11 + 2064);
      if (!strncmp(a2, (v11 + 16), v12))
      {
        v13 = *(v11 + 8);
        v14 = &a2[v12];
        v15 = a4;
        v16 = v8;
        if (*(v11 + 2) == 1)
        {
          v17 = 0;
LABEL_12:
          v20 = psid64_oidPathForPath(v13, v14, v15, v16, v17);
LABEL_15:
          v19 = v20;
          goto LABEL_16;
        }

        LOBYTE(v17) = 0;
LABEL_14:
        v20 = psid32_oidPathForPath(v13, v14, v15, v16, v17);
        goto LABEL_15;
      }

      goto LABEL_8;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_16;
  }

  if (!*v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 2064);
  if (!strncmp(a2, (v11 + 16), v12))
  {
    v13 = *(v11 + 8);
    v14 = &a2[v12];
    v15 = a4;
    v16 = v8;
    v17 = 1;
    if (*(v11 + 2) == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_8:
  v18 = strlen(a2);
  if (v18 != v12 - 1)
  {
    goto LABEL_10;
  }

  v19 = 2 * (strncmp(a2, (v11 + 16), v18) == 0);
LABEL_16:
  pthread_mutex_unlock((v11 + 2080));
  return v19;
}

uint64_t psid64_oidPathForPath(uint64_t *a1, const char *a2, void *a3, char a4, uint64_t a5)
{
  v5 = a5;
  v21 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  __strlcpy_chk(__s, a2, 1024, 1024);
  v19 = 0;
  if (a4)
  {
    for (i = strlen(__s); i; __s[--i] = 0)
    {
      if (__s[i - 1] != 47)
      {
        break;
      }
    }
  }

  else
  {
    id_for_path_64 = get_id_for_path_64(a1, __s, &v18, &v19, v5, 0);
    if (id_for_path_64)
    {
      *__error() = id_for_path_64;
      return 0xFFFFFFFFLL;
    }

    v13 = strrchr(__s, 47);
    if (v13)
    {
      if (v13 == __s)
      {
        *a3 = v19;
        return 1;
      }

      *v13 = 0;
    }
  }

  v12 = 0;
  do
  {
    v18 = 0;
    get_id_for_path_64(a1, __s, &v18, &v19, v5, 0);
    v14 = v18;
    if (v18)
    {
      a3[v12] = v18;
      v12 = (v12 + 1);
    }

    v15 = strrchr(__s, 47);
    if (!v15)
    {
      break;
    }

    if (v15 == __s)
    {
      break;
    }

    *v15 = 0;
  }

  while (v14);
  if (v12)
  {
    v16 = &a3[v12];
    if (*(v16 - 1) != 2)
    {
      v12 = (v12 + 1);
      *v16 = 2;
    }
  }

  return v12;
}

uint64_t psid32_oidPathForPath(uint64_t a1, const char *a2, void *a3, char a4, char a5)
{
  v21 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  __strlcpy_chk(__s, a2, 1024, 1024);
  v19 = 0;
  if (a4)
  {
    for (i = strlen(__s); i; __s[--i] = 0)
    {
      if (__s[i - 1] != 47)
      {
        break;
      }
    }
  }

  else
  {
    id_for_path = get_id_for_path(a1, __s, &v18, &v19, a5);
    if (id_for_path)
    {
      *__error() = id_for_path;
      return 0xFFFFFFFFLL;
    }

    v13 = strrchr(__s, 47);
    if (v13)
    {
      if (v13 == __s)
      {
        *a3 = v19;
        return 1;
      }

      *v13 = 0;
    }
  }

  v12 = 0;
  do
  {
    v18 = 0;
    get_id_for_path(a1, __s, &v18, &v19, a5);
    v14 = v18;
    if (v18)
    {
      a3[v12] = v18;
      v12 = (v12 + 1);
    }

    v15 = strrchr(__s, 47);
    if (!v15)
    {
      break;
    }

    if (v15 == __s)
    {
      break;
    }

    *v15 = 0;
  }

  while (v14);
  if (v12)
  {
    v16 = &a3[v12];
    if (*(v16 - 1) != 2)
    {
      v12 = (v12 + 1);
      *v16 = 2;
    }
  }

  return v12;
}

uint64_t si_psid_path_to_oid(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v21 = 0;
  v22 = 0;
  pthread_mutex_lock((v7 + 2080));
  if (a5)
  {
    if (!*v7)
    {
      goto LABEL_22;
    }

    v8 = *(v7 + 2064);
    if (!strncmp(a2, (v7 + 16), v8))
    {
      if (*(v7 + 2) == 1)
      {
        if (!get_id_for_path_64(*(v7 + 8), &a2[v8], &v22, &v21, 1, *(v7 + 2144)))
        {
          goto LABEL_22;
        }
      }

      else
      {
        *buf = 0;
        v20 = 0;
        id_for_path = get_id_for_path(*(v7 + 8), &a2[v8], buf, &v20, 1);
        v22 = *buf;
        v21 = v20;
        if (!id_for_path)
        {
          goto LABEL_22;
        }
      }

      if (dword_1EBF46AE4 >= 5)
      {
        v12 = *__error();
        v13 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Got error\n", buf, 2u);
        }

        *__error() = v12;
      }

LABEL_21:
      v22 = 0;
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  if (!*v7)
  {
    goto LABEL_22;
  }

  v8 = *(v7 + 2064);
  if (strncmp(a2, (v7 + 16), v8))
  {
LABEL_9:
    v9 = strlen(a2);
    if (v9 == v8 - 1 && !strncmp(a2, (v7 + 16), v9))
    {
      v22 = 2;
    }

    goto LABEL_22;
  }

  if (*(v7 + 2) == 1)
  {
    id_for_path_64 = get_id_for_path_64(*(v7 + 8), &a2[v8], &v22, &v21, 0, *(v7 + 2144));
  }

  else
  {
    *buf = 0;
    v20 = 0;
    id_for_path_64 = get_id_for_path(*(v7 + 8), &a2[v8], buf, &v20, 0);
    v22 = *buf;
    v21 = v20;
  }

  if (id_for_path_64)
  {
    goto LABEL_21;
  }

LABEL_22:
  pthread_mutex_unlock((v7 + 2080));
  if (dword_1EBF46AE4 >= 5)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v24 = v22;
      v25 = 2080;
      v26 = a2;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "found %llx for %s\n", buf, 0x16u);
    }

    *__error() = v15;
    if (dword_1EBF46AE4 >= 5)
    {
      v17 = *__error();
      v18 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = &a2[*(v7 + 2064)];
        *buf = 134218242;
        v24 = v22;
        v25 = 2080;
        v26 = v19;
        _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "found %llx for %s\n", buf, 0x16u);
      }

      *__error() = v17;
    }
  }

  return v22;
}

void si_psid_destruct(uint64_t a1)
{
  v1 = *(a1 + 16);
  pthread_mutex_destroy((v1 + 2080));
  free(*(v1 + 2072));
  v2 = *(v1 + 8);
  if (v2)
  {
    if (*(v1 + 2) == 1)
    {
      release_persistent_id_64_store(v2);
    }

    else
    {
      release_persistent_id_store(v2);
    }
  }

  _Block_release(*(v1 + 2144));

  free(v1);
}

uint64_t si_init_posix_psid(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, const void *a5)
{
  v133 = *MEMORY[0x1E69E9840];
  v10 = malloc_type_calloc(1uLL, 0x868uLL, 0x10A00403F30FE2CuLL);
  v11 = v10;
  if (a4 < 0)
  {
    v10[2] = 1;
  }

  v12 = malloc_type_malloc(0x28uLL, 0x100004090BE4F35uLL);
  *(v11 + 259) = v12;
  v13 = *(a2 + 32);
  v14 = *(a2 + 16);
  *v12 = *a2;
  v12[1] = v14;
  *(v12 + 4) = v13;
  v15 = *&off_1F427A9A0;
  *(a1 + 64) = xmmword_1F427A990;
  *(a1 + 80) = v15;
  v16 = *&off_1F427A980;
  *(a1 + 32) = SI_PersistentIDStore_PSID_TEMPLATE;
  *(a1 + 48) = v16;
  v17 = unk_1F427A9E0;
  *(a1 + 128) = xmmword_1F427A9D0;
  *(a1 + 144) = v17;
  v18 = *&off_1F427A9C0;
  *(a1 + 96) = xmmword_1F427A9B0;
  *(a1 + 112) = v18;
  v19 = unk_1F427AA30;
  *(a1 + 208) = xmmword_1F427AA20;
  *(a1 + 224) = v19;
  v20 = *&off_1F427AA10;
  *(a1 + 176) = xmmword_1F427AA00;
  *(a1 + 192) = v20;
  *(a1 + 160) = xmmword_1F427A9F0;
  if (v11[2] == 1)
  {
    *(a1 + 232) = si_psid_clone_and_reset;
  }

  v126 = 0;
  if ((fd_setDir(a3, &v126) & 1) == 0)
  {
    v26 = 0xFFFFFFFFLL;
LABEL_115:
    free(*(v11 + 259));
    free(v11);
    return v26;
  }

  if (v11[2] == 1)
  {
    v21 = malloc_type_calloc(0x28uLL, 1uLL, 0x10A0040132C2E1DuLL);
    if (v21)
    {
      v22 = v21;
      v21[3] = keycompare_4999;
      master_fid_rec_4983 = -1;
      word_1EBF61D34 = 17;
      __strlcpy_chk(&unk_1EBF61D36, "!%-MASTER-FID-%!", 256, 256);
      v23 = word_1EBF61D34 + 16;
      master_fid_rec_size_4985 = v23;
      v129 = 0;
      v25 = sqlite3BtreeOpen(v24);
      if (v25)
      {
        v26 = v25;
        v27 = *__error();
        v28 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "get_persistent_id_64_store";
          *&buf[12] = 1024;
          *&buf[14] = 164;
          *&buf[18] = 2080;
          *&buf[20] = "psid.db";
          v131 = 1024;
          v132 = v26;
LABEL_69:
          _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: sqlite3BtreeOpen failed; dbname:%s; rc = %d\n", buf, 0x22u);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      v127 = 0;
      v128 = 0;
      v37 = sqlite3BtreeCursor(*v22, 2, 0, keycompare_4999, &v127);
      if (v37)
      {
        v38 = v37;
        v121 = a5;
        v39 = *__error();
        v40 = _SILogForLogForCategory(4);
        v41 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v40, v41))
        {
          *buf = 67109120;
          *&buf[4] = v38;
          _os_log_impl(&dword_1C278D000, v40, v41, "sqlite3BtreeCursor failed; rc = %d\n", buf, 8u);
        }

        *__error() = v39;
        goto LABEL_36;
      }

      v47 = v127;
      v48 = sqlite3BtreeMoveto(v127, &master_fid_rec_4983, v23, &v128);
      if (v48 | v128)
      {
        v57 = v48;
        v121 = a5;
        v120 = *__error();
        v58 = _SILogForLogForCategory(4);
        v59 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v58, v59))
        {
          *buf = 67109120;
          *&buf[4] = v57;
          _os_log_impl(&dword_1C278D000, v58, v59, "sqlite3BtreeMoveto failed at open (need to create table); rc = %d\n", buf, 8u);
        }

        *__error() = v120;
        sqlite3BtreeCloseCursor(v47);
LABEL_36:
        a5 = v121;
        if ((a4 & 2) != 0)
        {
          v60 = *__error();
          v61 = _SILogForLogForCategory(4);
          v62 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v61, v62))
          {
            *buf = 136315138;
            *&buf[4] = "psid.db";
            _os_log_impl(&dword_1C278D000, v61, v62, "psid: creating db: %s\n", buf, 0xCu);
          }

          *__error() = v60;
          v63 = *v22;
          if (*(*v22 + 30))
          {
            v64 = 8;
          }

          else
          {
            v64 = 0;
            v74 = v63[18] - v63[16];
            *(v63 + 8) = 268439552;
            *(*v63 + 224) = 0x100000001000;
            v63[18] = v74 + 4096;
          }

          v75 = *__error();
          v76 = _SILogForLogForCategory(4);
          v77 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v76, v77))
          {
            v78 = *(*v22 + 32);
            *buf = 67109376;
            *&buf[4] = v64;
            *&buf[8] = 1024;
            *&buf[10] = v78;
            _os_log_impl(&dword_1C278D000, v76, v77, "(%d), page size %d\n", buf, 0xEu);
          }

          *__error() = v75;
          v79 = sqlite3BtreeBeginTrans(*v22);
          if (v79)
          {
            v26 = v79;
            v50 = *__error();
            v51 = _SILogForLogForCategory(4);
            v52 = 2 * (dword_1EBF46ADC < 4);
            a5 = v121;
            if (os_log_type_enabled(v51, v52))
            {
              *buf = 67109120;
              *&buf[4] = v26;
              v53 = "Couldn't begin transaction; rc = %d\n";
              goto LABEL_104;
            }

LABEL_105:
            *__error() = v50;
            goto LABEL_106;
          }

          v86 = (v22 + 1);
          Table = sqlite3BtreeCreateTable(*v22, v22 + 2);
          a5 = v121;
          if (Table)
          {
            v26 = Table;
            v50 = *__error();
            v51 = _SILogForLogForCategory(4);
            v52 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v51, v52))
            {
              *buf = 67109120;
              *&buf[4] = v26;
              v53 = "Couldn't create table; rc = %d\n";
              goto LABEL_104;
            }

            goto LABEL_105;
          }

          if (*v86 == 2)
          {
            v102 = 2;
          }

          else
          {
            v104 = *__error();
            v105 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              v117 = *v86;
              *buf = 136315906;
              *&buf[4] = "get_persistent_id_64_store";
              *&buf[12] = 1024;
              *&buf[14] = 230;
              *&buf[18] = 2080;
              *&buf[20] = "psid.db";
              v131 = 1024;
              v132 = v117;
              _os_log_error_impl(&dword_1C278D000, v105, OS_LOG_TYPE_ERROR, "%s:%d: psid: %s : danger! ps store table id %d looks bad! resetting\n", buf, 0x22u);
            }

            *__error() = v104;
            v102 = *v86;
          }

          v106 = sqlite3BtreeCursor(*v22, v102, 1, keycompare_4999, v22 + 2);
          if (v106)
          {
            v26 = v106;
            v50 = *__error();
            v51 = _SILogForLogForCategory(4);
            v52 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v51, v52))
            {
              *buf = 67109120;
              *&buf[4] = v26;
              v53 = "Couldn't create cursor; rc = %d\n";
              goto LABEL_104;
            }

            goto LABEL_105;
          }

          v22[4] = 0x7FFFFFFFFFFFFFFFLL;
          v129 = 0x7FFFFFFFFFFFFFFFLL;
          v110 = sqlite3BtreeInsert(v22[2], &master_fid_rec_4983, v23, &v129, 8);
          if (v110)
          {
            v26 = v110;
            v50 = *__error();
            v51 = _SILogForLogForCategory(4);
            v52 = 2 * (dword_1EBF46ADC < 4);
            if (os_log_type_enabled(v51, v52))
            {
              *buf = 67109120;
              *&buf[4] = v26;
              v53 = "Couldn't insert key; rc = %d\n";
              goto LABEL_104;
            }

            goto LABEL_105;
          }

          sqlite3BtreeCloseCursor(v22[2]);
          v22[2] = 0;
          v26 = sqlite3BtreeSync(*v22);
          if (v26)
          {
            goto LABEL_106;
          }

          v115 = sqlite3BtreeCommit(*v22, v36);
          if (v115)
          {
            v26 = v115;
            v50 = *__error();
            v51 = _SILogForLogForCategory(4);
            v52 = 2 * (dword_1EBF46ADC < 4);
            if (!os_log_type_enabled(v51, v52))
            {
              goto LABEL_105;
            }

            *buf = 67109120;
            *&buf[4] = v26;
            v53 = "Couldn't commit btree; rc = %d\n";
            goto LABEL_104;
          }

          goto LABEL_81;
        }

LABEL_45:
        v26 = 2;
        goto LABEL_106;
      }

      *(v22 + 2) = 2;
      Payload = getPayload(v47, 8, &v129, 1);
      if (Payload)
      {
        v26 = Payload;
        v50 = *__error();
        v51 = _SILogForLogForCategory(4);
        v52 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v51, v52))
        {
          goto LABEL_105;
        }

        *buf = 67109120;
        *&buf[4] = v26;
        v53 = "psid: could not find master fid; rc = %d\n";
LABEL_104:
        _os_log_impl(&dword_1C278D000, v51, v52, v53, buf, 8u);
        goto LABEL_105;
      }

      v90 = v129;
      v22[4] = v129;
      if (v90 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v91 = *__error();
        v92 = _SILogForLogForCategory(4);
        v93 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v92, v93))
        {
          v94 = v22[4];
          *buf = 136315394;
          *&buf[4] = "psid.db";
          *&buf[12] = 2048;
          *&buf[14] = v94;
          _os_log_impl(&dword_1C278D000, v92, v93, "psid: %s : danger! master fid %lld looks bad! resetting\n", buf, 0x16u);
        }

        *__error() = v91;
      }

      v95 = v47;
      goto LABEL_80;
    }

LABEL_16:
    v26 = 12;
    goto LABEL_112;
  }

  v29 = malloc_type_calloc(0x28uLL, 1uLL, 0x10A004010E7617FuLL);
  if (!v29)
  {
    goto LABEL_16;
  }

  v22 = v29;
  v29[3] = keycompare;
  master_fid_rec = -1;
  word_1EBF61248 = 17;
  __strlcpy_chk(&unk_1EBF6124A, "!%-MASTER-FID-%!", 256, 256);
  v30 = word_1EBF61248 + 12;
  master_fid_rec_size = v30;
  LODWORD(v127) = 0;
  v32 = sqlite3BtreeOpen(v31);
  if (v32)
  {
    v26 = v32;
    v27 = *__error();
    v28 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "get_persistent_id_store";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      *&buf[18] = 2080;
      *&buf[20] = "psid.db";
      v131 = 1024;
      v132 = v26;
      goto LABEL_69;
    }

LABEL_15:
    *__error() = v27;
LABEL_106:
    v112 = v22[2];
    if (v112)
    {
      sqlite3BtreeCloseCursor(v112);
    }

    if (*v22)
    {
      sqlite3BtreeClose(*v22, v33, v34, v35, v36);
    }

    free(v22);
    v22 = 0;
    goto LABEL_111;
  }

  v129 = 0;
  v128 = 0;
  v42 = sqlite3BtreeCursor(*v22, 2, 0, keycompare, &v129);
  if (v42)
  {
    v43 = v42;
    v119 = v30;
    v122 = a5;
    v44 = *__error();
    v45 = _SILogForLogForCategory(4);
    v46 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v45, v46))
    {
      *buf = 67109120;
      *&buf[4] = v43;
      _os_log_impl(&dword_1C278D000, v45, v46, "sqlite3BtreeCursor failed; rc = %d\n", buf, 8u);
    }

    *__error() = v44;
  }

  else
  {
    v54 = v129;
    v55 = sqlite3BtreeMoveto(v129, &master_fid_rec, v30, &v128);
    if (!(v55 | v128))
    {
      *(v22 + 2) = 2;
      v56 = getPayload(v54, 4, &v127, 1);
      if (v56)
      {
        v26 = v56;
        v50 = *__error();
        v51 = _SILogForLogForCategory(4);
        v52 = 2 * (dword_1EBF46ADC < 4);
        if (!os_log_type_enabled(v51, v52))
        {
          goto LABEL_105;
        }

        *buf = 67109120;
        *&buf[4] = v26;
        v53 = "psid: could not find master fid; rc = %d\n";
        goto LABEL_104;
      }

      v96 = v127;
      *(v22 + 8) = v127;
      if (v96 <= 0x63)
      {
        v97 = v54;
        v98 = *__error();
        v99 = _SILogForLogForCategory(4);
        v100 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v99, v100))
        {
          v101 = *(v22 + 8);
          *buf = 136315394;
          *&buf[4] = "psid.db";
          *&buf[12] = 1024;
          *&buf[14] = v101;
          _os_log_impl(&dword_1C278D000, v99, v100, "psid: %s : danger! master fid %d looks bad! resetting\n", buf, 0x12u);
        }

        *__error() = v98;
        v54 = v97;
      }

      v95 = v54;
LABEL_80:
      sqlite3BtreeCloseCursor(v95);
      goto LABEL_81;
    }

    v65 = v55;
    v119 = v30;
    v122 = a5;
    v66 = *__error();
    v67 = _SILogForLogForCategory(4);
    v68 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v67, v68))
    {
      *buf = 67109120;
      *&buf[4] = v65;
      _os_log_impl(&dword_1C278D000, v67, v68, "sqlite3BtreeMoveto failed; rc = %d\n", buf, 8u);
    }

    *__error() = v66;
    sqlite3BtreeCloseCursor(v54);
  }

  a5 = v122;
  if ((a4 & 2) == 0)
  {
    goto LABEL_45;
  }

  v69 = *__error();
  v70 = _SILogForLogForCategory(4);
  v71 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v70, v71))
  {
    *buf = 136315138;
    *&buf[4] = "psid.db";
    _os_log_impl(&dword_1C278D000, v70, v71, "psid: creating db: %s\n", buf, 0xCu);
  }

  *__error() = v69;
  v72 = *v22;
  if (*(*v22 + 30))
  {
    v73 = 8;
  }

  else
  {
    v73 = 0;
    v80 = v72[18] - v72[16];
    *(v72 + 8) = 268439552;
    *(*v72 + 224) = 0x100000001000;
    v72[18] = v80 + 4096;
  }

  v81 = *__error();
  v82 = _SILogForLogForCategory(4);
  v83 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v82, v83))
  {
    v84 = *(*v22 + 32);
    *buf = 67109376;
    *&buf[4] = v73;
    *&buf[8] = 1024;
    *&buf[10] = v84;
    _os_log_impl(&dword_1C278D000, v82, v83, "(%d), page size %d\n", buf, 0xEu);
  }

  *__error() = v81;
  v85 = sqlite3BtreeBeginTrans(*v22);
  if (v85)
  {
    v26 = v85;
    v50 = *__error();
    v51 = _SILogForLogForCategory(4);
    v52 = 2 * (dword_1EBF46ADC < 4);
    a5 = v122;
    if (os_log_type_enabled(v51, v52))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      v53 = "Couldn't begin transaction; rc = %d\n";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  v88 = (v22 + 1);
  v89 = sqlite3BtreeCreateTable(*v22, v22 + 2);
  a5 = v122;
  if (v89)
  {
    v26 = v89;
    v50 = *__error();
    v51 = _SILogForLogForCategory(4);
    v52 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v51, v52))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      v53 = "Couldn't create table; rc = %d\n";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  if (*v88 == 2)
  {
    v103 = 2;
  }

  else
  {
    v107 = *__error();
    v108 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      v118 = *v88;
      *buf = 136315906;
      *&buf[4] = "get_persistent_id_store";
      *&buf[12] = 1024;
      *&buf[14] = 230;
      *&buf[18] = 2080;
      *&buf[20] = "psid.db";
      v131 = 1024;
      v132 = v118;
      _os_log_error_impl(&dword_1C278D000, v108, OS_LOG_TYPE_ERROR, "%s:%d: psid: %s : danger! ps store table id %d looks bad! resetting\n", buf, 0x22u);
    }

    *__error() = v107;
    v103 = *v88;
    a5 = v122;
  }

  v109 = sqlite3BtreeCursor(*v22, v103, 1, keycompare, v22 + 2);
  if (v109)
  {
    v26 = v109;
    v50 = *__error();
    v51 = _SILogForLogForCategory(4);
    v52 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v51, v52))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      v53 = "Couldn't create cursor; rc = %d\n";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  *(v22 + 8) = 100;
  LODWORD(v127) = 100;
  v111 = sqlite3BtreeInsert(v22[2], &master_fid_rec, v119, &v127, 4);
  if (v111)
  {
    v26 = v111;
    v50 = *__error();
    v51 = _SILogForLogForCategory(4);
    v52 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v51, v52))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      v53 = "Couldn't insert key; rc = %d\n";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  sqlite3BtreeCloseCursor(v22[2]);
  v22[2] = 0;
  v26 = sqlite3BtreeSync(*v22);
  if (v26)
  {
    goto LABEL_106;
  }

  v116 = sqlite3BtreeCommit(*v22, v36);
  if (v116)
  {
    v26 = v116;
    v50 = *__error();
    v51 = _SILogForLogForCategory(4);
    v52 = 2 * (dword_1EBF46ADC < 4);
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_105;
    }

    *buf = 67109120;
    *&buf[4] = v26;
    v53 = "Couldn't commit btree; rc = %d\n";
    goto LABEL_104;
  }

LABEL_81:
  v26 = 0;
LABEL_111:
  *(v11 + 1) = v22;
LABEL_112:
  v113 = v126;
  MEMORY[0x1C6921200](v126);
  if ((v113 & 0x80000000) == 0)
  {
    close(v113);
  }

  if (v26)
  {
    goto LABEL_115;
  }

  v11[1] = 0;
  v125 = 0;
  v124 = xmmword_1C2BFA9F0;
  memset(v123, 0, 44);
  if (!fgetattrlist(*(a2 + 4), &v124, v123, 0x2CuLL, 0))
  {
    v11[1] = (DWORD1(v123[0]) & 0x200000) != 0;
  }

  *buf = 0;
  *&buf[8] = 0;
  pthread_mutexattr_init(buf);
  pthread_mutex_init((v11 + 2080), buf);
  pthread_mutexattr_destroy(buf);
  *v11 = 1;
  v26 = 0;
  *(v11 + 268) = _Block_copy(a5);
  *(a1 + 16) = v11;
  return v26;
}

void *si_psid_clone_and_reset(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(v2 + 2) == 1)
  {
    if (!__kSI_PersistentIDStoreTypeID)
    {
      __kSI_PersistentIDStoreTypeID = _CFRuntimeRegisterClass();
    }

    Instance = _CFRuntimeCreateInstance();
    unlinkat(a2, "psid.db", 0);
    if (!si_init_posix_psid(Instance, *(v2 + 2072), a2, 32770, *(v2 + 2144)))
    {
      si_psid_set_root_path2(Instance, (v2 + 16), (v2 + 16));
      *(a1 + 16) = Instance[2];
      Instance[2] = v2;
      return Instance;
    }

    CFRelease(Instance);
  }

  return 0;
}

__int128 *getIndexAttributeScores(int a1)
{
  if (a1 > 511)
  {
    if (a1 == 512)
    {
      {
        ContactsIndexAttributeScores(void)::_safariIndexAttributeScores = 0u;
        unk_1EBF61988 = 0u;
        dword_1EBF61998 = 1065353216;
      }

      if (ContactsIndexAttributeScores(void)::onceToken[0] != -1)
      {
        dispatch_once(ContactsIndexAttributeScores(void)::onceToken, &__block_literal_global_11);
      }

      return &ContactsIndexAttributeScores(void)::_safariIndexAttributeScores;
    }

    else
    {
      if (a1 != 1024)
      {
LABEL_14:
        {
          DefaultIndexAttributeScores(void)::_indexAttributeScores = 0u;
          unk_1EBF48380 = 0u;
          dword_1EBF48390 = 1065353216;
        }

        if (DefaultIndexAttributeScores(void)::onceToken != -1)
        {
          dispatch_once(&DefaultIndexAttributeScores(void)::onceToken, &__block_literal_global_25);
        }

        return &DefaultIndexAttributeScores(void)::_indexAttributeScores;
      }

      {
        SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores = 0u;
        unk_1EBF48240 = 0u;
        dword_1EBF48250 = 1065353216;
      }

      if (SettingsIndexAttributeScores(void)::onceToken != -1)
      {
        dispatch_once(&SettingsIndexAttributeScores(void)::onceToken, &__block_literal_global_16);
      }

      return &SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores;
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 32)
      {
        {
          ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores = 0u;
          unk_1EBF619C8 = 0u;
          dword_1EBF619D8 = 1065353216;
        }

        if (ImageAndVideoFilesInMacIndexAttributeScores(void)::onceToken != -1)
        {
          dispatch_once(&ImageAndVideoFilesInMacIndexAttributeScores(void)::onceToken, &__block_literal_global_22);
        }

        return &ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores;
      }

      goto LABEL_14;
    }

    {
      SafariIndexAttributeScores(void)::_safariIndexAttributeScores = 0u;
      *algn_1EBF61950 = 0u;
      dword_1EBF61960 = 1065353216;
    }

    if (SafariIndexAttributeScores(void)::onceToken != -1)
    {
      dispatch_once(&SafariIndexAttributeScores(void)::onceToken, &__block_literal_global_4);
    }

    return &SafariIndexAttributeScores(void)::_safariIndexAttributeScores;
  }
}

void ___ZL27DefaultIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "*");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&DefaultIndexAttributeScores(void)::_indexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&DefaultIndexAttributeScores(void)::_indexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CE494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}

void ___ZL43ImageAndVideoFilesInMacIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAlternateNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "_kMDItemFileName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ImageAndVideoFilesInMacIndexAttributeScores(void)::_imageAndVideoFilesInMacIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CE80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL28SettingsIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubject");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDescription");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubtitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsIndexAttributeScores(void)::_settingsIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CE994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL28ContactsIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ContactsIndexAttributeScores(void)::_safariIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAlternateNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ContactsIndexAttributeScores(void)::_safariIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAppEntityTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&ContactsIndexAttributeScores(void)::_safariIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CEAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL26SafariIndexAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemContentURL");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "redirectSourceTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "redirectSourceURL");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "bookmarkTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariIndexAttributeScores(void)::_safariIndexAttributeScores, __p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CEC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___Z30MailRankingNameAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingNameAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingNameAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CED08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t getRankingAttributeScores(PRContext *a1)
{
  if (a1)
  {
    var4 = a1->var4;
  }

  else
  {
    var4 = 0;
  }

  v2 = var4;
  if (!getRankingAttributeScores(PRContext *)::ans[var4])
  {
    std::mutex::lock(&getRankingAttributeScores(PRContext *)::mu);
    if (!getRankingAttributeScores(PRContext *)::ans[v2])
    {
      operator new();
    }

    std::mutex::unlock(&getRankingAttributeScores(PRContext *)::mu);
  }

  return getRankingAttributeScores(PRContext *)::ans[v2];
}

void sub_1C28CF2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::mutex::unlock(&getRankingAttributeScores(PRContext *)::mu);
  _Unwind_Resume(a1);
}

void CalendarRankingAttributeScores(void)
{
  {
    CalendarRankingAttributeScores(void)::_calendarAttributeScores = 0u;
    unk_1EBF481C8 = 0u;
    dword_1EBF481D8 = 1065353216;
  }

  if (CalendarRankingAttributeScores(void)::onceToken[0] != -1)
  {

    dispatch_once(CalendarRankingAttributeScores(void)::onceToken, &__block_literal_global_29_247);
  }
}

uint64_t std::unordered_map<std::string,float>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(a1, (i + 2), (i + 2));
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__node_handle_merge_unique[abi:nn200100]<std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>>(uint64_t *a1, void *a2)
{
  v2 = a2[2];
  v38 = a2 + 2;
  if (v2)
  {
    v37 = a1 + 2;
    v5 = a1[1];
    while (1)
    {
      v6 = *(v2 + 39);
      if (v6 >= 0)
      {
        v7 = v2 + 2;
      }

      else
      {
        v7 = v2[2];
      }

      if (v6 >= 0)
      {
        v8 = *(v2 + 39);
      }

      else
      {
        v8 = v2[3];
      }

      v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
      v10 = v9;
      if (v5)
      {
        v11 = vcnt_s8(v5);
        v11.i16[0] = vaddlv_u8(v11);
        v12 = v11.u32[0];
        if (v11.u32[0] > 1uLL)
        {
          v13 = v9;
          if (v5 <= v9)
          {
            v13 = v9 % v5;
          }
        }

        else
        {
          v13 = (v5 - 1) & v9;
        }

        v14 = *(*a1 + 8 * v13);
        if (v14)
        {
          v15 = *v14;
          if (*v14)
          {
            do
            {
              v16 = v15[1];
              if (v16 == v10)
              {
                if (std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, v2 + 2))
                {
                  v36 = *v2;
                  goto LABEL_73;
                }
              }

              else
              {
                if (v12 > 1)
                {
                  if (v16 >= v5)
                  {
                    v16 %= v5;
                  }
                }

                else
                {
                  v16 &= v5 - 1;
                }

                if (v16 != v13)
                {
                  break;
                }
              }

              v15 = *v15;
            }

            while (v15);
          }
        }
      }

      v17 = (a1[3] + 1);
      v18 = *(a1 + 8);
      if (!v5 || (v18 * v5) < v17)
      {
        v19 = (v5 & (v5 - 1)) != 0;
        if (v5 < 3)
        {
          v19 = 1;
        }

        v20 = v19 | (2 * v5);
        v21 = vcvtps_u32_f32(v17 / v18);
        if (v20 <= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__rehash<true>(a1, v22);
      }

      v23 = a2[1];
      v36 = *v2;
      v24 = v2[1];
      v25 = vcnt_s8(v23);
      v25.i16[0] = vaddlv_u8(v25);
      if (v25.u32[0] > 1uLL)
      {
        if (v24 >= *&v23)
        {
          v24 %= *&v23;
        }
      }

      else
      {
        v24 &= *&v23 - 1;
      }

      v26 = *(*a2 + 8 * v24);
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26 != v2);
      if (v27 != v38)
      {
        v28 = v27[1];
        if (v25.u32[0] > 1uLL)
        {
          if (v28 >= *&v23)
          {
            v28 %= *&v23;
          }
        }

        else
        {
          v28 &= *&v23 - 1;
        }

        v29 = *v2;
        if (v28 == v24)
        {
          goto LABEL_52;
        }
      }

      if (!v36)
      {
        break;
      }

      v30 = v36[1];
      if (v25.u32[0] > 1uLL)
      {
        if (v30 >= *&v23)
        {
          v30 %= *&v23;
        }
      }

      else
      {
        v30 &= *&v23 - 1;
      }

      v29 = *v2;
      if (v30 != v24)
      {
        break;
      }

LABEL_53:
      v31 = v29[1];
      if (v25.u32[0] > 1uLL)
      {
        if (v31 >= *&v23)
        {
          v31 %= *&v23;
        }
      }

      else
      {
        v31 &= *&v23 - 1;
      }

      if (v31 != v24)
      {
        *(*a2 + 8 * v31) = v27;
        v29 = *v2;
      }

LABEL_59:
      *v27 = v29;
      --a2[3];
      *v2 = 0;
      v2[1] = v10;
      v5 = a1[1];
      v32 = vcnt_s8(v5);
      v32.i16[0] = vaddlv_u8(v32);
      if (v32.u32[0] > 1uLL)
      {
        if (v10 >= v5)
        {
          v10 %= v5;
        }
      }

      else
      {
        v10 &= v5 - 1;
      }

      v33 = *a1;
      v34 = *(*a1 + 8 * v10);
      if (v34)
      {
        *v2 = *v34;
      }

      else
      {
        *v2 = *v37;
        *v37 = v2;
        *(v33 + 8 * v10) = v37;
        if (!*v2)
        {
          goto LABEL_72;
        }

        v35 = *(*v2 + 8);
        if (v32.u32[0] > 1uLL)
        {
          if (v35 >= v5)
          {
            v35 %= v5;
          }
        }

        else
        {
          v35 &= v5 - 1;
        }

        v34 = (*a1 + 8 * v35);
      }

      *v34 = v2;
LABEL_72:
      ++a1[3];
LABEL_73:
      v2 = v36;
      if (!v36)
      {
        return;
      }
    }

    *(*a2 + 8 * v24) = 0;
    v29 = *v2;
LABEL_52:
    if (!v29)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }
}

void MessagesRankingAttributeScores(void)
{
  {
    MessagesRankingAttributeScores(void)::_messagesAttributeScores = 0u;
    *algn_1EBF48190 = 0u;
    dword_1EBF481A0 = 1065353216;
  }

  if (MessagesRankingAttributeScores(void)::onceToken != -1)
  {

    dispatch_once(&MessagesRankingAttributeScores(void)::onceToken, &__block_literal_global_33);
  }
}

void MailRankingAttributeScores(void)
{
  {
    MailRankingAttributeScores(void)::_mailAttributeScores = 0u;
    unk_1EBF483F8 = 0u;
    dword_1EBF48408 = 1065353216;
  }

  if (MailRankingAttributeScores(void)::onceToken[0] != -1)
  {

    dispatch_once(MailRankingAttributeScores(void)::onceToken, &__block_literal_global_35_245);
  }
}

void SafariRankingAttributeScores(void)
{
  {
    SafariRankingAttributeScores(void)::_safariAttributeScores = 0u;
    unk_1EBF48280 = 0u;
    dword_1EBF48290 = 1065353216;
  }

  if (SafariRankingAttributeScores(void)::onceToken != -1)
  {

    dispatch_once(&SafariRankingAttributeScores(void)::onceToken, &__block_literal_global_41_243);
  }
}

void ___ZL27FilesRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemFilename");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "FPFilename");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAlternateNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemLastEditorName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&FilesRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL28WalletRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDescription");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemCreator");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "MDItemEventName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "MDItemEventStartLocationName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&WalletRankingAttributeScores(void)::_filesAttributeScores, __p, &v2) + 10) = 1058642330;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL32SearchToolRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SearchToolRankingAttributeScores(void)::_searchToolAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL31RemindersRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&RemindersRankingAttributeScores(void)::_remindersAttributeScores, __p, &v2) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL27NotesRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDisplayName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&NotesRankingAttributeScores(void)::_notesAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&NotesRankingAttributeScores(void)::_notesAttributeScores, __p, &v2) + 10) = 1056964608;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28CFF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL30SettingsRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsRankingAttributeScores(void)::_settingsAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubtitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsRankingAttributeScores(void)::_settingsAttributeScores, __p, &v2) + 10) = 1045220557;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SettingsRankingAttributeScores(void)::_settingsAttributeScores, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D0068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL28SafariRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemComment");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p, &v2) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "bookmarkTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p, &v2) + 10) = 1063675494;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPath");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p, &v2) + 10) = 1053609165;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "redirectSourceTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "redirectSourceURL");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SafariRankingAttributeScores(void)::_safariAttributeScores, __p, &v2) + 10) = 1045220557;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D025C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL26MailRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthorEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubject");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1063675494;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1056964608;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipientEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1053609165;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAttachmentTypes");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1045220557;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAttachmentNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MailRankingAttributeScores(void)::_mailAttributeScores, __p, &v2) + 10) = 1045220557;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D0530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL30MessagesRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p, &v2) + 10) = 1056964608;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthorEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p, &v2) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPrimaryRecipientEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&MessagesRankingAttributeScores(void)::_messagesAttributeScores, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D06F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }
}

void ___ZL30CalendarRankingAttributeScoresv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p, &v2) + 10) = 1065353216;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthorEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p, &v2) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPrimaryRecipientEmailAddresses");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&CalendarRankingAttributeScores(void)::_calendarAttributeScores, __p, &v2) + 10) = 1061997773;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D0B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t getWildCardAllowedFields(unsigned int a1)
{
  v1 = a1;
  if (!getWildCardAllowedFields(PRBundleIDType)::ans[a1])
  {
    std::mutex::lock(&getWildCardAllowedFields(PRBundleIDType)::mu);
    if (!getWildCardAllowedFields(PRBundleIDType)::ans[v1])
    {
      operator new();
    }

    std::mutex::unlock(&getWildCardAllowedFields(PRBundleIDType)::mu);
  }

  return getWildCardAllowedFields(PRBundleIDType)::ans[v1];
}

void sub_1C28D1234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(va);
  std::mutex::unlock(&getWildCardAllowedFields(PRBundleIDType)::mu);
  _Unwind_Resume(a1);
}

void ___ZL25MailWildCardAllowedFieldsv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSubject");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemTextContent");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, &v2) + 10) = 0;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C28D1318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, __int128 **a2)
{
  v2 = a1;
  v3 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v4);
  v6 = v5;
  v7 = qword_1EDD78880;
  if (!qword_1EDD78880)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(qword_1EDD78880);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= qword_1EDD78880)
    {
      v10 = v5 % qword_1EDD78880;
    }
  }

  else
  {
    v10 = (qword_1EDD78880 - 1) & v5;
  }

  v11 = *(MailWildCardAllowedFields(void)::_mailWildCardAllowedFields + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v12 + 2, v2))
  {
    goto LABEL_20;
  }

  return v12;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_freeTextCandidate>>,0>(uint64_t a1)
{
  std::unique_ptr<_freeTextCandidate>::~unique_ptr[abi:nn200100]((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<_freeTextCandidate>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<unsigned int>::destroy(*(v2 + 48));
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    MEMORY[0x1C691FEF0](v2, 0x1032C40B848CA74);
  }

  return a1;
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v9);
    }

    v11 = (24 * v6);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v11, *a2, *(a2 + 1));
    }

    else
    {
      v12 = *a2;
      v11->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v11->__r_.__value_.__l.__data_ = v12;
    }

    v10 = v11 + 1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v11 + 1;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = (v4 + 24);
  }

  *(a1 + 8) = v10;
}

{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void _peopleMatchInfo::_peopleMatchInfo(_peopleMatchInfo *this, unint64_t a2)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v4 = this + 48;
  *this = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 104) = 0u;
  v5 = (this + 104);
  MEMORY[0x1C691FAE0]();
  MEMORY[0x1C691FAE0](this + 24, "");
  MEMORY[0x1C691FAE0](v4, "");
  MEMORY[0x1C691FAE0](this + 72, "");
  *(this + 12) = 0;
  std::vector<CFRange>::resize(v5, a2);
  std::vector<CFRange>::resize(this + 16, a2);
  v6 = *(this + 14);
  if (*v5 != v6)
  {
    bzero(*v5, ((v6 - *v5 - 16) & 0xFFFFFFFFFFFFFFF0) + 16);
  }

  v7 = *(this + 16);
  v8 = *(this + 17);
  if (v7 != v8)
  {
    bzero(v7, ((v8 - v7 - 16) & 0xFFFFFFFFFFFFFFF0) + 16);
  }

  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 165) = 0;
}

void std::vector<CFRange>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[16 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<CFRange>>(v10);
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = &v4[16 * v6];
  }

  a1[1] = v11;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CFRange>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

uint64_t _peopleCandidate::_peopleCandidate(uint64_t a1, uint64_t a2, char a3, float a4)
{
  *(a1 + 40) = 0u;
  v8 = (a1 + 40);
  *(a1 + 88) = 0u;
  v9 = (a1 + 88);
  *(a1 + 136) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  v20 = a2;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 112), a2, &v20) + 10) = a4;
  v10 = *(a2 + 100);
  v8[-1].__r_.__value_.__s.__data_[13] = *(a2 + 172);
  HIDWORD(v8[-2].__r_.__value_.__r.__words[1]) = v10;
  *&v8[-2].__r_.__value_.__r.__words[2] = a4;
  v11 = *(a2 + 152);
  v12 = *(a2 + 160);
  if (fabs(v11) <= 0.000000100000001)
  {
    *(a1 + 16) = v12;
  }

  if (fabs(v12) <= 0.000000100000001)
  {
    *(a1 + 16) = v11;
  }

  if (v11 > 0.000000100000001 && v12 > 0.000000100000001)
  {
    *(a1 + 16) = fmin(v11, v12);
  }

  *(a1 + 24) = (*(a2 + 168) | *(a2 + 169)) & 1;
  *(a1 + 25) = *(a2 + 170);
  v13 = *(a2 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 8);
  }

  if (v13)
  {
    std::string::operator=(v8 + 1, a2);
    v14 = 0;
    v15 = *(a2 + 96);
  }

  else
  {
    MEMORY[0x1C691FAE0](&v8[1], "");
    v14 = 1;
    v15 = 0;
  }

  *a1 = v15;
  *(a1 + 26) = v14;
  v16 = *(a2 + 47);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 32);
  }

  if (v16)
  {
    std::string::operator=(v9, (a2 + 24));
  }

  else
  {
    MEMORY[0x1C691FAE0](v9, "");
  }

  v17 = *(a2 + 71);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 56);
  }

  if (v17)
  {
    std::vector<std::string>::push_back[abi:nn200100](&v8[5].__r_.__value_.__r.__words[2], (a2 + 48));
  }

  v18 = *(a2 + 95);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 80);
  }

  if (v18)
  {
    std::string::operator=(v8, (a2 + 72));
  }

  *(a1 + 27) = a3;
  *(a1 + 28) = a3 ^ 1;
  *(a1 + 32) = 0;
  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}

uint64_t *std::__tree<long long>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<_topicCandidate>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_topicCandidate>>,0>((v2 + 2));
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

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_peopleCandidate>>,0>(uint64_t a1)
{
  std::unique_ptr<_peopleCandidate>::~unique_ptr[abi:nn200100]((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<_peopleCandidate>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 176);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
    v4 = (v2 + 152);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 112);
    if (*(v2 + 111) < 0)
    {
      operator delete(*(v2 + 88));
    }

    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    MEMORY[0x1C691FEF0](v2, 0x10B2C405EE8648DLL);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_topicCandidate>>,0>(uint64_t a1)
{
  std::unique_ptr<_topicCandidate>::~unique_ptr[abi:nn200100]((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<_topicCandidate>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::string>::destroy(*(v2 + 176));
    std::__tree<unsigned int>::destroy(*(v2 + 152));
    MEMORY[0x1C691FEF0](v2, 0x1020C40513055F9);
  }

  return a1;
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t unigramsMatch(uint64_t a1, uint64_t a2, const char *a3, int a4, unsigned int a5, void *a6, const __CFDictionary *a7, const __CFLocale *a8, uint64_t a9)
{
  v50 = a5;
  v49 = a3;
  v55 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0;
  v9 = *(a1 + 32);
  v10 = *a6;
  if (v9 != (a6[1] - *a6) >> 4)
  {
    return 0;
  }

  if (v9)
  {
    v11 = a4 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    *v10 = 0;
    v10[1] = strlen(v49);
    return 1;
  }

  if (!v9)
  {
    return 0;
  }

  v12 = a8;
  v13 = a7;
  v45 = a6;
  v37 = 0;
  v14 = 0;
  v15 = a9;
  v16 = *(a1 + 40);
  if (a7)
  {
    v17 = a9 == 0;
  }

  else
  {
    v17 = 1;
  }

  v19 = !v17 && a8 != 0;
  v44 = v19;
  v20 = *MEMORY[0x1E695E480];
  v41 = a8;
  v42 = v20;
  v40 = a7;
  v46 = a9;
  v47 = v9;
  do
  {
    v51 = 0uLL;
    v52 = 0;
    std::string::basic_string[abi:nn200100]<0>(&v51, *(v16 + 8 * v14));
    if (*(v16 + 8 * v14))
    {
      if (icu_search_context_create())
      {
        v48 = v37;
        v21 = v45;
        v22 = (*v45 + 16 * v14);
        *v22 = 0;
        v22[1] = 0;
        if (icu_search_match())
        {
          v23 = (*v21 + 16 * v14);
          *v23 = v54;
          v23[1] = v53;
          v37 = v48 + 1;
        }

        else
        {
          if (v44)
          {
            v24 = strlen(*(v16 + 8 * v14));
            Mutable = CFStringCreateMutable(v42, v24);
            CFStringAppendCString(Mutable, *(v16 + 8 * v14), 0x8000100u);
            CFStringLowercase(Mutable, v12);
            CFStringNormalize(Mutable, kCFStringNormalizationFormD);
            v26 = CFDictionaryContainsKey(v13, Mutable);
            v43 = Mutable;
            if (v26)
            {
              Value = CFDictionaryGetValue(v13, Mutable);
              for (i = 0; i < CFArrayGetCount(Value); ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
                Length = CFStringGetLength(ValueAtIndex);
                MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
                MEMORY[0x1EEE9AC00](v32);
                v34 = &v39 - v33;
                bzero(&v39 - v33, v35 + 1);
                CFStringGetCString(ValueAtIndex, v34, MaximumSizeForEncoding + 1, 0x8000100u);
                v34[MaximumSizeForEncoding] = 0;
                if (icu_search_context_create())
                {
                  if (icu_search_match())
                  {
                    v36 = (*v45 + 16 * v14);
                    *v36 = v54;
                    v36[1] = v53;
                    ++v48;
                    MEMORY[0x1C691FAE0](&v51, v34);
                    icu_ctx_release();
                    break;
                  }

                  icu_ctx_release();
                }
              }

              v13 = v40;
              v12 = v41;
            }

            if (v43)
            {
              CFRelease(v43);
            }
          }

          v37 = v48;
        }

        icu_ctx_release();
      }

      v15 = v46;
      v9 = v47;
    }

    if (v15)
    {
      std::vector<std::string>::push_back[abi:nn200100](v15, &v51);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    ++v14;
  }

  while (v14 != v9);
  return v37;
}

uint64_t tokenIsStopWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SILocalizationLoad();
  SILanguagesIsCJK();
  TokenType = SILocalizationGetTokenType();
  v6 = MEMORY[0x1C691EAF0](a2);
  if (TokenType == 5)
  {
    return 1;
  }

  v8 = v6;
  if (CFStringHasPrefix(v6, @"fr") || (result = CFStringHasPrefix(v8, @"es"), result))
  {
    CFLocaleCreate(*MEMORY[0x1E695E480], @"en");
    SILocalizationLoad();
    return SILocalizationGetTokenType() == 5;
  }

  return result;
}

int *___Z15tokenIsStopWordP13_LocalizationPK10__CFLocalePhi_block_invoke(int *result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = result;
    v3 = *__error();
    v4 = _SILogForLogForCategory(14);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(v2 + 4);
      v6 = 136315650;
      v7 = "tokenIsStopWord_block_invoke";
      v8 = 1024;
      v9 = 1336;
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: [Pommes_Suggestions] error loading localization for %@", &v6, 0x1Cu);
    }

    result = __error();
    *result = v3;
  }

  return result;
}

int *___Z15tokenIsStopWordP13_LocalizationPK10__CFLocalePhi_block_invoke_10(int *result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = result;
    v3 = *__error();
    v4 = _SILogForLogForCategory(14);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(v2 + 4);
      v6 = 136315650;
      v7 = "tokenIsStopWord_block_invoke";
      v8 = 1024;
      v9 = 1347;
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: [Pommes_Suggestions] error loading localization for %@", &v6, 0x1Cu);
    }

    result = __error();
    *result = v3;
  }

  return result;
}

BOOL tokenIsValid(char *src, uint64_t srcLength, uint64_t a3, uint64_t a4, int a5, int a6)
{
  result = 0;
  v19 = *MEMORY[0x1E69E9840];
  if (src && (srcLength - 30) >= 0xFFFFFFE3)
  {
    if (_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::onceToken != -1)
    {
      dispatch_once(&_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::onceToken, &__block_literal_global_263);
    }

    v17 = 0u;
    memset(v18, 0, sizeof(v18));
    *dest = 0u;
    *pErrorCode = 0;
    u_strFromUTF8(dest, 30, &pErrorCode[1], src, srcLength, pErrorCode);
    if (pErrorCode[1] && pErrorCode[0] != U_BUFFER_OVERFLOW_ERROR)
    {
      if (pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
      {
        v13 = 0;
        v14 = 1;
        while (!CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::controlSet, dest[v13]) && !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::newlineSet, dest[v13]) && !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::whitespaceSet, dest[v13]) && !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::otherUnwantedSet, dest[v13]) && (!a6 || !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::decimalDigitSet, dest[v13])) && (v13 && v13 != pErrorCode[1] - 1 || !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::punctuationSet, dest[v13]) && !CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::symbolSet, dest[v13])))
        {
          if (!CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::punctuationSet, dest[v13]))
          {
            v14 &= CFCharacterSetIsCharacterMember(_tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::symbolSet, dest[v13]) != 0;
          }

          if (++v13 >= pErrorCode[1])
          {
            if (v14)
            {
              return 0;
            }

            return !a5 || (tokenIsStopWord(*(a3 + 16), a4, src, srcLength) & 1) == 0;
          }
        }
      }

      return 0;
    }

    return !a5 || (tokenIsStopWord(*(a3 + 16), a4, src, srcLength) & 1) == 0;
  }

  return result;
}

CFCharacterSetRef ___ZL39_tokenIsAllPunctuationOrHasUnwantedCharPhib_block_invoke()
{
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::punctuationSet = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::symbolSet = CFCharacterSetGetPredefined(kCFCharacterSetSymbol);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::decimalDigitSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::controlSet = CFCharacterSetGetPredefined(kCFCharacterSetControl);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::newlineSet = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::whitespaceSet = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  result = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @"");
  _tokenIsAllPunctuationOrHasUnwantedChar(unsigned char *,int,BOOL)::otherUnwantedSet = result;
  return result;
}

void postProcessCJKSuggestions(std::string *a1, uint64_t a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = *v2;
  if (*v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      if ((v3 & 0x80) != 0)
      {
        v9 = v3 >> 4;
        v10 = ~v9;
        v11 = utf8_byte_length(unsigned char)::utf8_len_table[v9];
        v12 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v11] & v3;
        if ((v10 & 0xC) != 0)
        {
          v3 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v11];
        }

        else
        {
          if (v11 <= 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = v11;
          }

          v13 = v11 - 1;
          v14 = v2 + 1;
          do
          {
            v15 = *v14++;
            v3 = v15 & 0x3F | (v12 << 6);
            v12 = v3;
            --v13;
          }

          while (v13);
        }
      }

      isUWhiteSpace = u_isUWhiteSpace(v3);
      v17 = isUWhiteSpace != 0;
      if (!isUWhiteSpace)
      {
        if (v3 >> 8 < 0x11 || (v18 = 1, v3 - 65376 >= 0x50) && (v3 & 0xFFFFFF00) != 0x1100 && (v3 - 11904) >> 7 >= 0x197)
        {
          if (!(v8 & 1 | !v7))
          {
            std::string::push_back(a1, 32);
          }

          v18 = 0;
        }

        std::string::basic_string(&__p, a2, v6, utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v2 >> 4], &v23);
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

        std::string::append(a1, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 = v18;
      }

      v21 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v2 >> 4];
      v6 += v21;
      v2 += v21;
      v3 = *v2;
      v7 = v17;
    }

    while (*v2);
  }
}

void _SIPommesSuggestionsProcessRawText(uint64_t result, os_unfair_lock_s *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, const char *a11, char a12, char a13, uint64_t *a14, char a15, CFArrayRef theArray)
{
  if (a4 && a4[4])
  {
    if (*a4)
    {
      operator new();
    }
  }
}

void sub_1C28D4A80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CFRange>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CFRange>>(a2);
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](a1, a4);
  }
}

void *std::string::basic_string[abi:nn200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

uint64_t stringToLowerCase(uint64_t *a1, std::string *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  MEMORY[0x1C691FAE0](a2, "");
  if (*(a1 + 23) < 0)
  {
    if ((a1[1] - 513) >= 0xFFFFFFFFFFFFFE00)
    {
      bzero(dest, 0x400uLL);
      bzero(v36, 0x400uLL);
      *pErrorCode = 0;
      a1 = *a1;
      goto LABEL_7;
    }

    return 0;
  }

  if (!*(a1 + 23))
  {
    return 0;
  }

  bzero(dest, 0x400uLL);
  bzero(v36, 0x400uLL);
  *pErrorCode = 0;
LABEL_7:
  u_strFromUTF8(dest, 512, &pErrorCode[1], a1, -1, pErrorCode);
  v6 = 0;
  if (pErrorCode[1])
  {
    if (pErrorCode[0] != U_BUFFER_OVERFLOW_ERROR)
    {
      pErrorCode[0] = U_ZERO_ERROR;
      v7 = u_strToLower(v36, 512, dest, pErrorCode[1], 0, pErrorCode);
      v6 = 0;
      pErrorCode[1] = v7;
      if (v7)
      {
        if (pErrorCode[0] != U_BUFFER_OVERFLOW_ERROR)
        {
          v8 = v7;
          if (a3)
          {
            normalizePunctuations(v36, v7);
          }

          bzero(__src, 0x400uLL);
          v9 = &v36[v8];
          if ((4 * v8) > 0x400)
          {
            if (v8 >= 1)
            {
              v17 = 0;
              v18 = v36;
              v11 = __src;
              v19 = v36;
              while (1)
              {
                v21 = *v19++;
                v20 = v21;
                if (v21 > 0x7F)
                {
                  if (v20 > 0x7FF)
                  {
                    if ((v20 & 0xF800) == 0xD800)
                    {
                      if ((v20 & 0x400) == 0 && v19 < v9)
                      {
                        v22 = *v19;
                        if ((v22 & 0xFC00) == 0xDC00)
                        {
                          if (v17 > 1020)
                          {
                            goto LABEL_47;
                          }

                          v19 = v18 + 2;
                          v23 = v22 + (v20 << 10) - 56613888;
                          v24 = &__src[v17];
                          *v11 = (v23 >> 18) | 0xF0;
                          v24[1] = (v23 >> 12) & 0x3F | 0x80;
                          v24[2] = (v23 >> 6) & 0x3F | 0x80;
                          v17 += 4;
                          v11[3] = v22 & 0x3F | 0x80;
                        }
                      }
                    }

                    else
                    {
                      if (v17 > 1021)
                      {
LABEL_47:
                        v11 = &__src[v17];
                        goto LABEL_48;
                      }

                      *v11 = (v20 >> 12) | 0xE0;
                      v11[1] = (v20 >> 6) & 0x3F | 0x80;
                      v17 += 3;
                      v11[2] = v20 & 0x3F | 0x80;
                    }
                  }

                  else
                  {
                    if (v17 > 1022)
                    {
                      goto LABEL_47;
                    }

                    *v11 = (v20 >> 6) | 0xC0;
                    v17 += 2;
                    v11[1] = v20 & 0x3F | 0x80;
                  }
                }

                else
                {
                  if (v17 > 1023)
                  {
                    goto LABEL_47;
                  }

                  ++v17;
                  *v11 = v20;
                }

                v11 = &__src[v17];
                v18 = v19;
                if (v19 >= v9)
                {
                  goto LABEL_48;
                }
              }
            }
          }

          else if (v8 >= 1)
          {
            v10 = v36;
            v11 = __src;
            v12 = v36;
            do
            {
              v14 = *v12++;
              v13 = v14;
              if (v14 > 0x7F)
              {
                if (v13 > 0x7FF)
                {
                  if ((v13 & 0xF800) == 0xD800)
                  {
                    if ((v13 & 0x400) == 0 && v12 < v9)
                    {
                      v15 = *v12;
                      if ((v15 & 0xFC00) == 0xDC00)
                      {
                        v12 = v10 + 2;
                        v16 = v15 + (v13 << 10) - 56613888;
                        *v11 = (v16 >> 18) | 0xF0;
                        v11[1] = (v16 >> 12) & 0x3F | 0x80;
                        v11[2] = (v16 >> 6) & 0x3F | 0x80;
                        v11[3] = v15 & 0x3F | 0x80;
                        v11 += 4;
                      }
                    }
                  }

                  else
                  {
                    *v11 = (v13 >> 12) | 0xE0;
                    v11[1] = (v13 >> 6) & 0x3F | 0x80;
                    v11[2] = v13 & 0x3F | 0x80;
                    v11 += 3;
                  }
                }

                else
                {
                  *v11 = (v13 >> 6) | 0xC0;
                  v11[1] = v13 & 0x3F | 0x80;
                  v11 += 2;
                }
              }

              else
              {
                *v11++ = v13;
              }

              v10 = v12;
            }

            while (v12 < v9);
            goto LABEL_48;
          }

          v11 = __src;
LABEL_48:
          v6 = v11 - __src;
          std::string::basic_string[abi:nn200100](&__dst, __src, v11 - __src);
          if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(a2->__r_.__value_.__l.__data_);
          }

          *&a2->__r_.__value_.__l.__data_ = __dst;
          a2->__r_.__value_.__r.__words[2] = v33;
          if (a3)
          {
            v25 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
            if (v25 >= 0)
            {
              v26 = a2;
            }

            else
            {
              v26 = a2->__r_.__value_.__r.__words[0];
            }

            if (v25 >= 0)
            {
              size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = a2->__r_.__value_.__l.__size_;
            }

            v28 = v26 + size;
            while (size)
            {
              v29 = *--v28;
              --size;
              if (!memchr(" \n\r\t", v29, 4uLL))
              {
                v30 = v28 - v26 + 1;
                goto LABEL_62;
              }
            }

            v30 = 0;
LABEL_62:
            std::string::erase(a2, v30, 0xFFFFFFFFFFFFFFFFLL);
          }
        }
      }
    }
  }

  return v6;
}

char *std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = std::string::basic_string[abi:nn200100](a1, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void _AccumulatePhotosCandidates(uint64_t *a1, os_unfair_lock_t lock, uint64_t a3, int a4, float a5)
{
  os_unfair_lock_lock(lock);
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v9, v10);
  v12 = a1[1];
  if (!*&v12)
  {
    goto LABEL_24;
  }

  v13 = v11;
  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11;
    if (v11 >= *&v12)
    {
      v16 = v11 % *&v12;
    }
  }

  else
  {
    v16 = (*&v12 - 1) & v11;
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v16);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_24:
    operator new();
  }

  v30 = *&v12 - 1;
  while (1)
  {
    v20 = v19[1];
    if (v20 == v13)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v20 >= *&v12)
      {
        v20 %= *&v12;
      }
    }

    else
    {
      v20 &= v30;
    }

    if (v20 != v16)
    {
      goto LABEL_24;
    }

LABEL_23:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v19 + 2, a3))
  {
    goto LABEL_23;
  }

  v21 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v9, v10);
  v22 = v21;
  if (v15 > 1)
  {
    v23 = v21;
    if (v21 >= *&v12)
    {
      v23 = v21 % *&v12;
    }
  }

  else
  {
    v23 = v30 & v21;
  }

  v24 = *(v17 + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_43:
    operator new();
  }

  while (2)
  {
    v26 = v25[1];
    if (v26 != v22)
    {
      if (v15 > 1)
      {
        if (v26 >= *&v12)
        {
          v26 %= *&v12;
        }
      }

      else
      {
        v26 &= v30;
      }

      if (v26 != v23)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v25 + 2, a3))
    {
LABEL_42:
      v25 = *v25;
      if (!v25)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  v27 = v25[5];
  v28 = *(v27 + 8);
  ++*(v27 + 4);
  v29 = *v27;
  if (*v27 < a5)
  {
    v29 = a5;
  }

  *v27 = v29;
  if (v28 != a4)
  {
    *(v27 + 8) = 9;
  }

  os_unfair_lock_unlock(lock);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_freeTextCandidate>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<_freeTextCandidate>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<_freeTextCandidate>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(uint64_t ***a1, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2;
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = a2[4], v6 > a3))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_16:
      if (v7)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = a2;
      }

      goto LABEL_19;
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = v13[2];
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    if (v9[4] < a3)
    {
      goto LABEL_16;
    }

    v15 = *v5;
    if (!*v5)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = v15[4];
        if (v17 <= a3)
        {
          break;
        }

        v15 = *v16;
        v5 = v16;
        if (!*v16)
        {
          goto LABEL_38;
        }
      }

      if (v17 >= a3)
      {
        break;
      }

      v5 = v16 + 1;
      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v10 = v5;
    goto LABEL_19;
  }

  if (v6 >= a3)
  {
    return v4;
  }

  v10 = (a2 + 1);
  v11 = a2[1];
  if (v11)
  {
    do
    {
      v10 = v11;
      v11 = *v11;
      v12 = v10;
    }

    while (v11);
  }

  else
  {
    v12 = a2;
    do
    {
      v18 = v12;
      v12 = v12[2];
    }

    while (*v12 != v18);
  }

  if (v12 != v5 && v12[4] <= a3)
  {
    v19 = *v5;
    if (!*v5)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v20 = v19;
        v21 = v19[4];
        if (v21 <= a3)
        {
          break;
        }

        v19 = *v20;
        v5 = v20;
        if (!*v20)
        {
          goto LABEL_38;
        }
      }

      if (v21 >= a3)
      {
        goto LABEL_40;
      }

      v5 = v20 + 1;
      v19 = v20[1];
      if (!v19)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  v4 = *v10;
  if (!*v10)
  {
LABEL_38:
    operator new();
  }

  return v4;
}

void SIPommesSuggestionsProcessDBO(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, unsigned int a5, uint64_t a6, os_unfair_lock_s *a7, os_unfair_lock_s *a8, uint64_t a9, uint64_t a10, __int128 *a11, int a12, char *__s1, unsigned __int8 **a14, uint64_t a15, char a16, uint64_t a17)
{
  v207 = *MEMORY[0x1E69E9840];
  if (!__s1)
  {
    return;
  }

  v21 = a14;
  v22 = a9;
  v23 = strcmp(__s1, "com.apple.mobilemail");
  v24 = strcmp(__s1, "com.apple.mobileslideshow");
  os_unfair_lock_opaque = a7[2]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x80) == 0)
  {
    if ((os_unfair_lock_opaque & 0x1000) != 0)
    {
      if (v24)
      {
        v42 = a11[3];
        v120 = a11[2];
        v121 = v42;
        v122 = a11[4];
        v43 = a11[1];
        v118 = *a11;
        v119 = v43;
        v179 = a3;
        *v178 = a7;
        v177 = a8;
        v176 = a9;
        v175 = a12;
        if (a9 && a8 && *(a9 + 24))
        {
          v174 = 0;
          if (a14 && (v21 = *a14, (v174 = v21) != 0))
          {
            v44 = *v21;
            if (v44 == 106)
            {
              v44 = v21[1];
              v45 = 97;
            }

            else
            {
              v45 = 106;
            }

            v55 = v45 == v44;
          }

          else
          {
            v55 = 0;
          }

          v173 = v55;
          if (*(a9 + 16))
          {
            v64 = icu_search_context_create();
            v172 = v64;
            if (v64)
            {
              v65 = v64;
              v171 = 0;
              v170 = 0;
              v66 = (*(a17 + 16))(a17, &v171, &v170, &v170 + 1);
              v169 = v66;
              v67 = a7[2]._os_unfair_lock_opaque;
              lock = a7 + 1;
              *&v91 = 0;
              *(&v91 + 1) = &v91;
              *&v92 = 0x2000000000;
              *(&v92 + 1) = -1;
              if ((v67 & 0x4000) != 0)
              {
                v145 = xmmword_1C2BFA7A0;
                v183 = xmmword_1C2BFA7B0;
                v182 = xmmword_1C2BFA7C0;
                v181 = xmmword_1C2BF9440;
                *&v96 = MEMORY[0x1E69E9820];
                *(&v96 + 1) = 0x40000000;
                *&v97 = ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke;
                *(&v97 + 1) = &unk_1E8190CF8;
                v103 = &v91;
                v104 = a7;
                v105 = a7 + 1;
                v106 = a8;
                v107 = a9;
                v108 = v65;
                v109 = v21;
                LOBYTE(v112) = v55;
                v101 = v121;
                v102 = v122;
                v99 = v119;
                v100 = v120;
                v98 = v118;
                v68 = a5;
                v111 = __PAIR64__(v171, a12);
                BYTE1(v112) = HIBYTE(v170);
                BYTE2(v112) = v170;
                v110 = v66;
                v69 = a4;
                SIPommesDBOScoredTopicFieldIterator(a2, a3, &v145, &v183, &v182, &v181, a4, a5, &v96);
                v142 = xmmword_1C2BFA7D0;
                v140 = xmmword_1C2BFA7E0;
                v138 = xmmword_1C2BFA7F0;
                v167 = xmmword_1C2BFA800;
                *(*(&v91 + 1) + 24) = -1;
                *buf = MEMORY[0x1E69E9820];
                *&v187 = 0x40000000;
                *(&v187 + 1) = ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2;
                v188 = &unk_1E8190D20;
                v194 = &v91;
                v195 = a7;
                v196 = a7 + 1;
                v197 = a8;
                v198 = a9;
                v199 = v65;
                v200 = v21;
                v204 = v55;
                v191 = v120;
                v192 = v121;
                v193 = v122;
                v190 = v119;
                v189 = v118;
                v202 = a12;
                v203 = v171;
                v205 = HIBYTE(v170);
                v206 = v170;
                v66 = v169;
                v201 = v169;
                SIPommesDBOScoredTopicFieldIterator(a2, a3, &v142, &v140, &v138, &v167, a4, a5, buf);
                v70 = a2;
                v71 = v179;
                v22 = v176;
              }

              else
              {
                v68 = a5;
                v69 = a4;
                v71 = a3;
                v70 = a2;
              }

              v166 = 0;
              v167 = xmmword_1C2BFA810;
              v72 = v71;
              SIPommesDBOGetIntValue(v70, v71, &v167, v69, v68, &v166);
              if (v166 >= 8)
              {
                v183 = xmmword_1C2BFA820;
                v182 = xmmword_1C2BFA830;
                *(*(&v91 + 1) + 24) = -1;
                *&v145 = MEMORY[0x1E69E9820];
                *(&v145 + 1) = 0x40000000;
                v146 = ___ZL44SIPommesSpotlightSearchSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_3;
                v147 = &unk_1E8190D48;
                v153 = &v91;
                v154 = *v178;
                v155 = lock;
                v156 = v177;
                v157 = v22;
                v158 = v172;
                v159 = v174;
                v163 = v173;
                v151 = v121;
                v152 = v122;
                v149 = v119;
                v150 = v120;
                v148 = v118;
                v161 = a12;
                v162 = v171;
                v164 = HIBYTE(v170);
                v165 = v170;
                v160 = v66;
                SIPommesDBOScoredTopicFieldIterator(a2, v72, &v183, &v182, 0, 0, a4, a5, &v145);
              }

              v73 = *(v22 + 16);
              v74 = *v73 == 42 && v73[1] == 0;
              v144 = v74;
              v142 = 0uLL;
              v143 = 0;
              v140 = 0uLL;
              v141 = 0;
              v138 = 0uLL;
              v139 = 0;
              operator new();
            }
          }
        }
      }

      else
      {
        v53 = a11[3];
        v98 = a11[2];
        v99 = v53;
        v100 = a11[4];
        v54 = a11[1];
        v96 = *a11;
        v97 = v54;
        SIPommesSpotlightPhotosSuggestionsProcessDBO(a1, a2, a3, a7, a8, a4, a5, a9, a14, a12, &v96, a17);
      }
    }

    else
    {
      v27 = a3;
      v26 = a2;
      if (v24)
      {
        v28 = a5;
        v29 = a4;
        if (!v23)
        {
          v30 = a11[3];
          v98 = a11[2];
          v99 = v30;
          v100 = a11[4];
          v31 = a11[1];
          v96 = *a11;
          v97 = v31;
          *&v183 = a3;
          *&v182 = a6;
          *&v181 = a7;
          *&v142 = a8;
          *&v140 = a9;
          *&v138 = a10;
          LODWORD(v177) = a12;
          *&v167 = a15;
          LOBYTE(v174) = a16;
          if (a8 && a9)
          {
            field = db_get_field(a2, a3, "kMDItemContentURL", 0, 0);
            if (field == 2)
            {
              v180 = 0;
              if (a14)
              {
                v33 = *a14;
                v180 = v33;
                v28 = a5;
                v29 = a4;
                v27 = a3;
                if (v33)
                {
                  v34 = *v33;
                  if (v34 == 106)
                  {
                    v34 = v33[1];
                    v35 = 97;
                  }

                  else
                  {
                    v35 = 106;
                  }

                  v80 = v35 == v34;
                }

                else
                {
                  v80 = 0;
                }
              }

              else
              {
                v80 = 0;
                v28 = a5;
                v29 = a4;
                v27 = a3;
              }

              LOBYTE(v172) = v80;
              if (*(a9 + 16))
              {
                v81 = icu_search_context_create();
                v27 = a3;
                v29 = a4;
                v28 = a5;
                v179 = v81;
                if (v81)
                {
                  v82 = *(a9 + 16);
                  v83 = *v82 == 42 && v82[1] == 0;
                  LOBYTE(v169) = v83;
                  v145 = 0uLL;
                  v146 = 0;
                  v118 = 0uLL;
                  *&v119 = 0;
                  LODWORD(v176) = 0;
                  LOBYTE(lock) = 0;
                  LOBYTE(v175) = 0;
                  *&v91 = (*(a17 + 16))(a17, &v176, &v175, &lock, a4, a5);
                  *v178 = a7 + 1;
                  LOBYTE(v171) = 0;
                  operator new();
                }
              }

              v26 = a2;
            }

            else
            {
              v58 = field;
              v86 = *__error();
              v59 = _SILogForLogForCategory(14);
              v60 = 2 * (dword_1EBF46B04 < 4);
              v61 = v59;
              if (os_log_type_enabled(v59, v60))
              {
                v62 = *a3;
                *buf = 67109376;
                *&buf[4] = v58;
                LOWORD(v187) = 2048;
                *(&v187 + 2) = v62;
                _os_log_impl(&dword_1C278D000, v61, v60, "[Pommes_Suggestions]mail_debug: Skipping attachment. rc:%d for oid %lld.", buf, 0x12u);
              }

              *__error() = v86;
              v28 = a5;
              v29 = a4;
              v27 = a3;
              v26 = a2;
            }
          }

          if ((os_unfair_lock_opaque & 0x4000) != 0)
          {
            v84 = a11[3];
            v98 = a11[2];
            v99 = v84;
            v100 = a11[4];
            v85 = a11[1];
            v96 = *a11;
            v97 = v85;
            SIPommesSpotlightMailSuggestionsProcessDBO(v26, v27, a7, a8, v29, v28, a9, a14, a12, &v96, a17);
          }
        }
      }

      else
      {
        v48 = a11[3];
        v98 = a11[2];
        v99 = v48;
        v100 = a11[4];
        v49 = a11[1];
        v96 = *a11;
        v97 = v49;
        *&v145 = a3;
        *&v118 = a6;
        *&v91 = a7;
        *&v183 = a8;
        *&v182 = a9;
        LODWORD(v138) = a12;
        if (a8 && a9)
        {
          *&v181 = 0;
          if (a14 && (v50 = *a14, (*&v181 = v50) != 0))
          {
            v51 = *v50;
            if (v51 == 106)
            {
              v51 = v50[1];
              v52 = 97;
            }

            else
            {
              v52 = 106;
            }

            v57 = v52 == v51;
          }

          else
          {
            v57 = 0;
          }

          LOBYTE(v167) = v57;
          if (*(a9 + 16))
          {
            if (icu_search_context_create())
            {
              *&v140 = a7 + 1;
              operator new();
            }
          }
        }
      }
    }

    return;
  }

  if (!v24)
  {
    v46 = a11[3];
    v98 = a11[2];
    v99 = v46;
    v100 = a11[4];
    v47 = a11[1];
    v96 = *a11;
    v97 = v47;
    SIPommesSpotlightPhotosSuggestionsProcessDBO(a1, a2, a3, a7, a8, a4, a5, a9, a14, a12, &v96, a17);
    return;
  }

  v36 = a11[3];
  v93 = a11[2];
  v94 = v36;
  v95 = a11[4];
  v37 = a11[1];
  v91 = *a11;
  v92 = v37;
  if (a9)
  {
    if (a8)
    {
      v38 = *(a9 + 24);
      if (v38)
      {
        if (a14)
        {
          v39 = *a14;
          if (*a14)
          {
            v40 = *v39;
            if (v40 == 122)
            {
              v41 = 1;
              if (v39[1] != 104)
              {
                goto LABEL_73;
              }

              LOBYTE(v41) = 0;
            }

            else
            {
              if (v40 != 106)
              {
                if (v40 == 107)
                {
                  v40 = v39[1];
                  v63 = 111;
                }

                else
                {
                  v63 = 107;
                }

                v41 = v63 - v40;
                goto LABEL_73;
              }

              v41 = 1;
              if (v39[1] != 97)
              {
LABEL_73:
                v75 = v41 == 0;
                LOBYTE(v41) = 0;
                v56 = v75;
LABEL_76:
                if (*(a9 + 16))
                {
                  v76 = icu_search_context_create();
                  if (v76)
                  {
                    v77 = v76;
                    LODWORD(v180) = 0;
                    LOBYTE(v179) = 0;
                    LOBYTE(v178[0]) = 0;
                    v78 = (*(a17 + 16))(a17, &v180, v178, &v179);
                    v79 = a7[2]._os_unfair_lock_opaque;
                    *&v183 = 0;
                    *(&v183 + 1) = &v183;
                    v184 = 0x2000000000;
                    v185 = -1;
                    if ((v79 & 0x4000) != 0)
                    {
                      v96 = xmmword_1C2BFA840;
                      v118 = xmmword_1C2BFA850;
                      v182 = xmmword_1C2BFA860;
                      v181 = xmmword_1C2BFA870;
                      *buf = MEMORY[0x1E69E9820];
                      *&v187 = 0x40000000;
                      *(&v187 + 1) = ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke;
                      v188 = &unk_1E8190C58;
                      v194 = &v183;
                      v195 = a7;
                      v196 = a7 + 1;
                      v197 = a8;
                      v198 = a9;
                      v199 = v77;
                      v200 = v39;
                      v204 = v41;
                      v193 = v95;
                      v192 = v94;
                      v191 = v93;
                      v189 = v91;
                      v190 = v92;
                      v202 = a12;
                      v203 = v180;
                      v205 = v179;
                      v206 = v178[0];
                      v201 = v78;
                      SIPommesDBOScoredTopicFieldIterator(a2, a3, &v96, &v118, &v182, &v181, a4, a5, buf);
                      v142 = xmmword_1C2BFA880;
                      v140 = xmmword_1C2BFA890;
                      v138 = xmmword_1C2BFA8A0;
                      v167 = xmmword_1C2BFA8B0;
                      *(*(&v183 + 1) + 24) = -1;
                      *&v145 = MEMORY[0x1E69E9820];
                      *(&v145 + 1) = 0x40000000;
                      v146 = ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_2;
                      v147 = &unk_1E8190C80;
                      v153 = &v183;
                      v154 = a7;
                      v155 = a7 + 1;
                      v156 = a8;
                      v157 = a9;
                      v158 = v77;
                      v159 = v39;
                      v163 = v41;
                      v150 = v93;
                      v151 = v94;
                      v152 = v95;
                      v148 = v91;
                      v149 = v92;
                      v161 = a12;
                      v162 = v180;
                      v164 = v179;
                      v165 = v178[0];
                      v160 = v78;
                      SIPommesDBOScoredTopicFieldIterator(a2, a3, &v142, &v140, &v138, &v167, a4, a5, &v145);
                    }

                    LODWORD(v140) = 0;
                    v182 = xmmword_1C2BFA750;
                    SIPommesDBOGetIntValue(a2, a3, &v182, a4, a5, &v140);
                    if (v140 >= 8)
                    {
                      v96 = xmmword_1C2BFA760;
                      v181 = xmmword_1C2BFA770;
                      *(*(&v183 + 1) + 24) = -1;
                      *&v118 = MEMORY[0x1E69E9820];
                      *(&v118 + 1) = 0x40000000;
                      *&v119 = ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_3;
                      *(&v119 + 1) = &unk_1E8190CA8;
                      v125 = &v183;
                      v126 = a7;
                      v127 = a7 + 1;
                      v128 = a8;
                      v129 = a9;
                      v130 = v77;
                      v131 = v39;
                      v135 = v41;
                      v122 = v93;
                      v123 = v94;
                      v124 = v95;
                      v120 = v91;
                      v121 = v92;
                      v133 = a12;
                      v134 = v180;
                      v136 = v179;
                      v137 = v178[0];
                      v132 = v78;
                      SIPommesDBOScoredTopicFieldIterator(a2, a3, &v96, &v181, 0, 0, a4, a5, &v118);
                    }

                    v181 = xmmword_1C2BFA780;
                    v142 = xmmword_1C2BFA790;
                    *(*(&v183 + 1) + 24) = -1;
                    *&v96 = MEMORY[0x1E69E9820];
                    *(&v96 + 1) = 0x40000000;
                    *&v97 = ___ZL38SIPommesSpotlightSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke_4;
                    *(&v97 + 1) = &unk_1E8190CD0;
                    v105 = a7;
                    v106 = a7 + 1;
                    v107 = a8;
                    v108 = a9;
                    v109 = v77;
                    v110 = *&v39;
                    v114 = v41;
                    v100 = v93;
                    v101 = v94;
                    v102 = v95;
                    v98 = v91;
                    v99 = v92;
                    v112 = a12;
                    v113 = v180;
                    v115 = v179;
                    v116 = v178[0];
                    v111 = *&v78;
                    v117 = v56;
                    v103 = &v183;
                    v104 = v38;
                    SIPommesDBOScoredTopicFieldIterator(a2, a3, &v181, &v142, 0, 0, a4, a5, &v96);
                    icu_ctx_release();
                    _Block_object_dispose(&v183, 8);
                  }
                }

                return;
              }
            }

            v56 = 1;
            goto LABEL_76;
          }

          LOBYTE(v41) = 0;
        }

        else
        {
          LOBYTE(v41) = 0;
          v39 = 0;
        }

        v56 = 0;
        goto LABEL_76;
      }
    }
  }
}

void SIPommesSpotlightPhotosSuggestionsProcessDBO(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 **a9, int a10, __int128 *a11, uint64_t a12)
{
  v101 = *MEMORY[0x1E69E9840];
  v96 = a5;
  v97 = a4;
  v95 = a8;
  if (a8)
  {
    v14 = *(a8 + 24);
    v94 = v14;
    if (a5)
    {
      if (v14)
      {
        v15 = a7;
        v20 = a9;
        v93 = 0;
        if (a9)
        {
          v93 = *a9;
          v21 = v93;
          if (v93)
          {
            v22 = *v93;
            if (v22 == 106)
            {
              v22 = v93[1];
              v23 = 97;
            }

            else
            {
              v23 = 106;
            }

            v20 = v23 == v22;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v55 = v20;
        v92 = v20;
        if (*(a8 + 16))
        {
          v24 = icu_search_context_create();
          v91 = v24;
          if (v24)
          {
            v52 = v24;
            v90 = 0;
            v89 = 0;
            v25 = (*(a12 + 16))(a12, &v90, &v89, &v89 + 1);
            v88 = v25;
            v87 = a4 + 4;
            v86 = 0;
            v26 = 0x1EBF46000uLL;
            v53 = a2;
            v54 = a3;
            if (v15 > 18)
            {
              v30 = *(a6 + 152);
              if (v30)
              {
                v83[0] = 0;
                *&v82 = 0;
                if (db_get_field_by_id(a2, a3, v30, &v82, v83) || *v82 != 9)
                {
                  v31 = *__error();
                  v32 = _SILogForLogForCategory(14);
                  v33 = 2 * (dword_1EBF46B04 < 4);
                  if (os_log_type_enabled(v32, v33))
                  {
                    v34 = *v54;
                    *buf = 67109376;
                    *&buf[4] = 19;
                    LOWORD(v99) = 2048;
                    *(&v99 + 2) = v34;
                    _os_log_impl(&dword_1C278D000, v32, v33, "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.", buf, 0x12u);
                  }

                  *__error() = v31;
                  v29 = 0;
                  a2 = v53;
                  a3 = v54;
                }

                else
                {
                  v29 = *v83[0];
                  v86 = *v83[0];
                }

                v26 = 0x1EBF46000;
              }

              else
              {
                v29 = 0;
              }

              v85 = 0;
              if (v15 != 19)
              {
                v39 = *(a6 + 160);
                if (v39)
                {
                  v83[0] = 0;
                  *&v82 = 0;
                  if (!db_get_field_by_id(a2, a3, v39, &v82, v83) && *v82 == 10)
                  {
                    v38 = *v83[0];
                    v85 = *v83[0];
                    goto LABEL_40;
                  }

                  v40 = *__error();
                  v41 = _SILogForLogForCategory(14);
                  v42 = *(v26 + 2820);
                  v43 = v41;
                  v44 = 2 * (v42 < 4);
                  if (os_log_type_enabled(v41, v44))
                  {
                    v45 = *v54;
                    *buf = 67109376;
                    *&buf[4] = 20;
                    LOWORD(v99) = 2048;
                    *(&v99 + 2) = v45;
                    _os_log_impl(&dword_1C278D000, v43, v44, "[Pommes_Suggestions]debug: Cannot get/process attribute %d for oid %lld.", buf, 0x12u);
                  }

                  *__error() = v40;
                }

                v38 = 0;
LABEL_40:
                *buf = 0;
                *&v99 = buf;
                *(&v99 + 1) = 0x2000000000;
                v100 = -1;
                v83[0] = 0;
                v83[1] = v83;
                v83[2] = 0x2000000000;
                v84 = 0;
                v81 = xmmword_1C2BFA720;
                v82 = xmmword_1C2BFA710;
                v79 = xmmword_1C2BFA740;
                v80 = xmmword_1C2BFA730;
                v56[0] = MEMORY[0x1E69E9820];
                v56[1] = 0x40000000;
                v56[2] = ___ZL44SIPommesSpotlightPhotosSuggestionsProcessDBOP8DocStoreP14datastore_infoP6db_objP17_SuggestionsModelP11CITokenizerPPKjiPPKcP23si_completion_pattern_sSE_j16ci_rankingbits_sU13block_pointerFdPjPbSJ_E_block_invoke;
                v56[3] = &unk_1E8190C08;
                v64 = v38;
                v73 = v29;
                v62 = buf;
                v63 = v83;
                v65 = v14;
                v66 = a4;
                v67 = a4 + 4;
                v68 = a5;
                v69 = a8;
                v70 = v52;
                v71 = v21;
                v76 = v55;
                v46 = *a11;
                v47 = a11[1];
                v48 = a11[4];
                v60 = a11[3];
                v61 = v48;
                v49 = a11[2];
                v58 = v47;
                v59 = v49;
                v57 = v46;
                v74 = a10;
                v75 = v90;
                v77 = HIBYTE(v89);
                v78 = v89;
                v72 = v25;
                SIPommesDBOScoredTopicFieldIterator(v53, v54, &v82, &v81, &v80, &v79, a6, v15, v56);
                operator new();
              }

              v51 = a6;
            }

            else
            {
              v50 = *__error();
              v27 = _SILogForLogForCategory(14);
              v28 = 2 * (dword_1EBF46B04 < 4);
              if (os_log_type_enabled(v27, v28))
              {
                *buf = 67109376;
                *&buf[4] = 19;
                LOWORD(v99) = 1024;
                *(&v99 + 2) = v15;
                _os_log_impl(&dword_1C278D000, v27, v28, "%d index greater than fetched attribute count %d", buf, 0xEu);
              }

              v51 = a6;
              *__error() = v50;
              v85 = 0;
              v29 = 0;
            }

            v35 = *__error();
            v36 = _SILogForLogForCategory(14);
            v37 = 2 * (*(v26 + 2820) < 4);
            if (os_log_type_enabled(v36, v37))
            {
              *buf = 67109376;
              *&buf[4] = 20;
              LOWORD(v99) = 1024;
              *(&v99 + 2) = v15;
              _os_log_impl(&dword_1C278D000, v36, v37, "%d index greater than fetched attribute count %d", buf, 0xEu);
            }

            *__error() = v35;
            v38 = 0;
            a6 = v51;
            goto LABEL_40;
          }
        }
      }
    }
  }
}
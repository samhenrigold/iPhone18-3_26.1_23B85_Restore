uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<__CFString const*>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<__CFString const*>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<__CFString const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(int a1, _DWORD **a2)
{
  if (!*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1))
  {
    goto LABEL_18;
  }

  v2 = vcnt_s8(*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 8));
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = a1;
    if (*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) <= a1)
    {
      v3 = a1 % *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1);
    }
  }

  else
  {
    v3 = (*(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) - 1) & a1;
  }

  v4 = *(getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 8 * v3);
  if (!v4 || (v5 = *v4) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == a1)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1))
      {
        v6 %= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1);
      }
    }

    else
    {
      v6 &= *(&getLLMTokenAttrDescriptionMap(void)::_llmTokenAttrDescriptionMap + 1) - 1;
    }

    if (v6 != v3)
    {
      goto LABEL_18;
    }

LABEL_17:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (*(v5 + 4) != a1)
  {
    goto LABEL_17;
  }

  return v5;
}

void **std::vector<__CFString const*>::__assign_with_size[abi:nn200100]<__CFString const* const*,__CFString const* const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    v9 = v7 >> 2;
    if (v7 >> 2 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v13;
        v13 += 8;
        *v14 = v15;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v16 = v14;
  }

  v6[1] = v16;
  return result;
}

void *getkQPParseAttributeKeywordKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKeywordKey");
    getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKeywordKey()") description:{@"PRLLMParse.mm", 29, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getkQPParseAttributeLocationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeLocationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeDateKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeDateKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeDateKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDateKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeDateKey");
    getkQPParseAttributeDateKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDateKey()") description:{@"PRLLMParse.mm", 31, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL44getkQPParseAttributeFlightActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeHotelActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeHotelActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeRestaurantActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRestaurantActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeAppointmentActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAppointmentActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAppointmentActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributePartyActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributePartyActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributePartyActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkQPParseAttributeTicketTransportActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTicketTransportActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTicketTransportActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeCarRentalActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeCarRentalActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeCarRentalActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeShippingOrderActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeShippingOrderActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeShippingOrderActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeCardActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeCardActionKey");
    getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeCardActionKey()") description:{@"PRLLMParse.mm", 42, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindMessageKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindMessageKey");
    getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMessageKey()") description:{@"PRLLMParse.mm", 43, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindPhotoKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindPhotoKey");
    getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPhotoKey()") description:{@"PRLLMParse.mm", 44, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5A828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL47getkQPParseAttributeFavoritedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFavoritedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFavoritedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeHiddenActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeHiddenActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeHiddenActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeForwardedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeForwardedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeForwardedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeSharedActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeSharedActionKey");
    getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSharedActionKey()") description:{@"PRLLMParse.mm", 48, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5AA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL38getkQPParseAttributeUnreadKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeUnreadKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeAcceptedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAcceptedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAcceptedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeDeclinedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDeclinedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDeclinedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeMaybeActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeMaybeActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeMaybeActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeTimeStartKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeStartKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeStartKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeTimeEndKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeEndKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeEndKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeTimeCreatedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeCreatedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeCreatedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeTimeModifiedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeModifiedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeModifiedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeTimeLastOpenedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTimeLastOpenedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTimeLastOpenedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeEventKindKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeEventKindKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeEventKindKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeGenericEventKindKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeGenericEventKindKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeGenericEventKindKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeKindDocumentKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindDocumentKey");
    getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindDocumentKey()") description:{@"PRLLMParse.mm", 59, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5AF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindNotesKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindNotesKey");
    getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindNotesKey()") description:{@"PRLLMParse.mm", 60, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindReminderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindReminderKey");
    getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindReminderKey()") description:{@"PRLLMParse.mm", 70, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindVideoKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindVideoKey");
    getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindVideoKey()") description:{@"PRLLMParse.mm", 61, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindWebsiteKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindWebsiteKey");
    getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindWebsiteKey()") description:{@"PRLLMParse.mm", 62, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindKeynoteKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindKeynoteKey");
    getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindKeynoteKey()") description:{@"PRLLMParse.mm", 63, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindPagesKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindPagesKey");
    getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPagesKey()") description:{@"PRLLMParse.mm", 64, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindNumbersKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindNumbersKey");
    getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindNumbersKey()") description:{@"PRLLMParse.mm", 65, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindPhotoAlbumKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindPhotoAlbumKey");
    getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPhotoAlbumKey()") description:{@"PRLLMParse.mm", 66, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5B930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindMemoryKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindMemoryKey");
    getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindMemoryKey()") description:{@"PRLLMParse.mm", 67, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5BA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindConversationKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindConversationKey");
    getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindConversationKey()") description:{@"PRLLMParse.mm", 68, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5BBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindNotesFolderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindNotesFolderKey");
    getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindNotesFolderKey()") description:{@"PRLLMParse.mm", 69, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5BCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindReminderListKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindReminderListKey");
    getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindReminderListKey()") description:{@"PRLLMParse.mm", 71, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5BE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL45getkQPParseAttributeArchiveActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeArchiveActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeBookmarkedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeBookmarkedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeBookmarkedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeUserCreatedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeUserCreatedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeUserCreatedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeDraftActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDraftActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeUserModifiedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeUserModifiedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeUserModifiedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeFlaggedActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeFlaggedActionKey");
    getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlaggedActionKey()") description:{@"PRLLMParse.mm", 79, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL42getkQPParseAttributeJunkActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeJunkActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributePrintedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributePrintedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeReadActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeReadActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeReadActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeReceivedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeReceivedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeReceivedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeRepliedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRepliedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRepliedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeSentActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSentActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSentActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeDueActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDueActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeCompletedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeCompletedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeGroundedPersonKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeGroundedPersonKey");
    getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeGroundedPersonKey()") description:{@"PRLLMParse.mm", 83, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeTaggedPersonKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeTaggedPersonKey");
    getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTaggedPersonKey()") description:{@"PRLLMParse.mm", 84, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeSenderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeSenderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeSenderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSenderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeSenderKey");
    getkQPParseAttributeSenderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSenderKey()") description:{@"PRLLMParse.mm", 85, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeSenderHandleKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeSenderHandleKey");
    getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSenderHandleKey()") description:{@"PRLLMParse.mm", 86, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeRecipientKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeRecipientKey");
    getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRecipientKey()") description:{@"PRLLMParse.mm", 87, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5C9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeRecipientHandleKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeRecipientHandleKey");
    getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRecipientHandleKey()") description:{@"PRLLMParse.mm", 93, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5CB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL44getkQPParseAttributeAttachedKindKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAttachedKindKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAttachedKindKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeAttachmentKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAttachmentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeTagColorActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTagColorActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTagColorActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeFlagColorActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlagColorActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlagColorActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getkQPParseAttributeMediaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeMediaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeMediaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL55getkQPParseAttributeFlightDepartureLocationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightDepartureLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkQPParseAttributeFlightArrivalLocationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightArrivalLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeKindEmailKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindEmailKey");
    getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindEmailKey()") description:{@"PRLLMParse.mm", 100, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5CEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindCalendarEventKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindCalendarEventKey");
    getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindCalendarEventKey()") description:{@"PRLLMParse.mm", 101, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5CFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindContactKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindContactKey");
    getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindContactKey()") description:{@"PRLLMParse.mm", 102, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5D128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeEarliestActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeEarliestActionKey");
    getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeEarliestActionKey()") description:{@"PRLLMParse.mm", 103, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5D26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeLatestActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeLatestActionKey");
    getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeLatestActionKey()") description:{@"PRLLMParse.mm", 104, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5D3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getkQPParseAttributeKindSongKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindSongKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindSongKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeKindArtistKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindArtistKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindArtistKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindPlaylistKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPlaylistKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPlaylistKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindPodcastKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPodcastKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPodcastKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPParseAttributeKindShowKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindShowKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindShowKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindMovieKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMovieKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMovieKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindArticleKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindArticleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindArticleKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPParseAttributeKindLinkKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindLinkKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindLinkKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeKindMusicAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMusicAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMusicAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPParseAttributeKindNewsKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindNewsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindNewsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeKindMapKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMapKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMapKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeKindRadioStationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindRadioStationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindRadioStationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeTicketShowActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTicketShowActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTicketShowActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeKindPhoneCallKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindPhoneCallKey");
    getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindPhoneCallKey()") description:{@"PRLLMParse.mm", 120, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5D954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindVoiceMemoKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindVoiceMemoKey");
    getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindVoiceMemoKey()") description:{@"PRLLMParse.mm", 121, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindVoiceMailKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindVoiceMailKey");
    getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindVoiceMailKey()") description:{@"PRLLMParse.mm", 122, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindWalletPassKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindWalletPassKey");
    getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindWalletPassKey()") description:{@"PRLLMParse.mm", 123, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindFreeformBoardKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindFreeformBoardKey");
    getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindFreeformBoardKey()") description:{@"PRLLMParse.mm", 124, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindJournalKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindJournalKey");
    getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindJournalKey()") description:{@"PRLLMParse.mm", 125, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5DFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL50getkQPParseAttributeSourceTypeDocumentKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeDocumentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeDocumentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeMessageKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeMessageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeMessageKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeSourceTypeNoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeNoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeNoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeSourceTypePhotoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypePhotoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypePhotoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeSourceTypeReminderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeReminderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeReminderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeSourceTypeVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeWebsiteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeWebsiteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeWebsiteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeSourceTypeEmailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeEmailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeEmailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeKeynoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeKeynoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeKeynoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeSourceTypePagesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypePagesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypePagesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeNumbersKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeNumbersKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL55getkQPParseAttributeSourceTypeCalendarEventKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeCalendarEventKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeCalendarEventKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypePhotoAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypePhotoAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeSourceTypeMemoryKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeMemoryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeMemoryKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeSourceTypeConversationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeConversationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeConversationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeSourceTypeNoteFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeNoteFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeNoteFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeSourceTypeReminderListKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeReminderListKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeReminderListKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeContactKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeContactKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeContactKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeSourceTypePhoneCallKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypePhoneCallKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypePhoneCallKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeVoiceMemosKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeVoiceMemosKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeSourceTypeVoiceMailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeVoiceMailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeVoiceMailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeSourceTypeJournalKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeJournalKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeJournalKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeSourceTypeWalletPassKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeWalletPassKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeWalletPassKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL55getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeFreeformBoardKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeFreeformBoardKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypeCalendarKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeCalendarKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeCalendarKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeContactKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeContactKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeContactKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getkQPParseAttributeContainsTypeConversationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeConversationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeConversationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypeDocumentKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeDocumentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeDocumentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypeFreeformKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeFreeformKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeFreeformKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeJournalKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeJournalKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeJournalKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeKeynoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeKeynoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeKeynoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypeMediaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeMediaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeMediaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeContainsTypeMemoryKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeMemoryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeMemoryKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeContainsTypeNoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeNoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeNoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeContainsTypeNoteFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeNoteFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeNoteFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeNumbersKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeNumbersKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypePagesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypePagesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypePagesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypePanoramaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypePanoramaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypePanoramaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypePhotoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypePhotoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypePhotoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypePhotoAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypePhotoAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkQPParseAttributeContainsTypeScreenshotKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeScreenshotKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeScreenshotKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeContainsTypeSelfieKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeSelfieKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeSelfieKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypeSlomoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeSlomoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeSlomoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeSpatialVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeSpatialVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeContainsTypeVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeVoiceMemoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeVoiceMemoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkQPParseAttributeContainsTypeWebsiteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeWebsiteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeWebsiteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkQPParseAttributeContainsTypeReminderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeReminderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeReminderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkQPParseAttributeContainsTypeVoicemailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeVoicemailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeVoicemailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeContainsTypeWalletKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeWalletKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeWalletKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindPanoramaKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPanoramaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPanoramaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeKindScreenshotKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindScreenshotKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindScreenshotKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeKindSelfieKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindSelfieKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindSelfieKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindSlomoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindSlomoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindSlomoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeKindSpatialVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindSpatialVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindSpatialVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindLivePhotoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindLivePhotoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindLivePhotoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindPortraitKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPortraitKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPortraitKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindTimeLapseKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindTimeLapseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindTimeLapseKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindCinematicKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindCinematicKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindCinematicKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeKindDocumentFolderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindDocumentFolderKey");
    getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindDocumentFolderKey()") description:{@"PRLLMParse.mm", 186, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL56getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeDocumentFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeDocumentFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL58getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeDocumentFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeDocumentFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeKindGenericFolderKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindGenericFolderKey");
    getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindGenericFolderKey()") description:{@"PRLLMParse.mm", 189, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL55getkQPParseAttributeSourceTypeGenericFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSourceTypeGenericFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSourceTypeGenericFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL57getkQPParseAttributeContainsTypeGenericFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeContainsTypeGenericFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeContainsTypeGenericFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *getkQPParseAttributeKindTabKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindTabKey");
    getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindTabKey()") description:{@"PRLLMParse.mm", 192, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindGroupTabKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindGroupTabKey");
    getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindGroupTabKey()") description:{@"PRLLMParse.mm", 193, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindAlarmKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindAlarmKey");
    getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindAlarmKey()") description:{@"PRLLMParse.mm", 196, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5F9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkQPParseAttributeKindTimerKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindTimerKey");
    getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindTimerKey()") description:{@"PRLLMParse.mm", 197, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B5FAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getkQPParseAttributeKindBookKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindBookKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindBookKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindTimerKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindTimerKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindTimerKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindAlarmKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindAlarmKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindAlarmKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindGroupTabKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindGroupTabKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindGroupTabKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeKindTabKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindTabKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindTabKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeKindGenericFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindGenericFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindGenericFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL50getkQPParseAttributeKindDocumentFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindDocumentFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindDocumentFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindJournalKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindJournalKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindJournalKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeKindFreeformBoardKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindFreeformBoardKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindFreeformBoardKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeKindWalletPassKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindWalletPassKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindWalletPassKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindVoiceMailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindVoiceMailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindVoiceMailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindVoiceMemoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindVoiceMemoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindVoiceMemoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeKindPhoneCallKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPhoneCallKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPhoneCallKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeLatestActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeLatestActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeEarliestActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeEarliestActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindContactKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindContactKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindContactKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeKindCalendarEventKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindCalendarEventKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindCalendarEventKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindEmailKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindEmailKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindEmailKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeRecipientHandleKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRecipientHandleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRecipientHandleKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeRecipientKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRecipientKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeSenderHandleKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSenderHandleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSenderHandleKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkQPParseAttributeSenderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSenderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSenderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeTaggedPersonKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTaggedPersonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeGroundedPersonKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeGroundedPersonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeFlaggedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlaggedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlaggedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeKindReminderListKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindReminderListKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindReminderListKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeKindNotesFolderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindNotesFolderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindNotesFolderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeKindConversationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindConversationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindConversationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeKindMemoryKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMemoryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMemoryKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeKindPhotoAlbumKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPhotoAlbumKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPhotoAlbumKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindNumbersKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindNumbersKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindPagesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPagesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPagesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindKeynoteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindKeynoteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindKeynoteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindWebsiteKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindWebsiteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindWebsiteKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindVideoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindVideoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindVideoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindReminderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindReminderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindReminderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindNotesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindNotesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindNotesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeKindDocumentKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindDocumentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindDocumentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeSharedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSharedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSharedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeKindPhotoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindPhotoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindPhotoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeKindMessageKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindMessageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindMessageKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeCardActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeCardActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeCardActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkQPParseAttributeDateKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDateKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeKeywordKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKeywordKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKeywordKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<__CFString const*>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *fetchLLMTokenDescription(int *a1, const __CFDictionary *a2, NSAttributedString *a3, int a4)
{
  TokenIDsFromTokenInfo = getTokenIDsFromTokenInfo(a2);
  if (![TokenIDsFromTokenInfo count])
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = [objc_msgSend(TokenIDsFromTokenInfo objectAtIndexedSubscript:{v9), "intValue"}];
    v11 = v10;
    if (!v9)
    {
      *a1 = v10;
    }

    TokenRangeFromTokenInfo = getTokenRangeFromTokenInfo(a2);
    v14 = v13;
    v17.location = TokenRangeFromTokenInfo;
    v17.length = v14;
    LLMTokenDescription = getLLMTokenDescription(v11, v17, a3, a4);
    if ([LLMTokenDescription length])
    {
      break;
    }

    if (++v9 >= [TokenIDsFromTokenInfo count])
    {
      return 0;
    }
  }

  return LLMTokenDescription;
}

CFMutableDictionaryRef __initBestLanguageDict_block_invoke()
{
  v1 = *byte_1F4281668;
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &v1, 0);
  sBestLanguageDictionary = result;
  return result;
}

uint64_t fd_resetDir(int a1)
{
  result = MEMORY[0x1C6921200]();
  if ((a1 & 0x80000000) == 0)
  {

    return close(a1);
  }

  return result;
}

uint64_t sync_invalidate_fd(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a2 & ~*MEMORY[0x1E69E9AB8];
    v5 = a2 - v4;
    v6 = mmap(0, a2 - v4 + a3, 1, 1025, result, v4);
    sync_invalidate_mapping(v6, v5 + a3);

    return munmap(v6, v5 + a3);
  }

  return result;
}

uint64_t sync_invalidate_mapping(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 == -1)
  {
    *__error() = 22;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v9 = *__error();
      v11 = 134218240;
      v12 = -1;
      v13 = 1024;
      v14 = v9;
      v8 = MEMORY[0x1E69E9C10];
LABEL_16:
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_INFO, "fd_msync(%p) err %d", &v11, 0x12u);
    }
  }

  else if (a2 >= 1)
  {
    v3 = &a1[a2];
    v4 = 0x20000;
    v5 = a1;
LABEL_4:
    if (&v5[v4] > v3)
    {
      v4 = v3 - v5;
    }

    do
    {
      fd_system_status_stall_if_busy();
      v6 = msync(v5, v4, 16);
      v7 = *__error();
      madvise(v5, v4, 4);
      if (v6 != -1)
      {
        v5 += v4;
        if (v5 < v3)
        {
          goto LABEL_4;
        }

        return v6;
      }
    }

    while (g_prot_error_callback && ((*(g_prot_error_callback + 16))() & 1) != 0);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      return 0xFFFFFFFFLL;
    }

    v11 = 134218240;
    v12 = a1;
    v13 = 1024;
    v14 = v7;
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_16;
  }

  return 0xFFFFFFFFLL;
}

void fd_system_status_stall_if_busy()
{
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }
}

uint64_t ci_preallocate(int a1, uint64_t a2)
{
  if (gDisablePreallocate == 1)
  {
    *__error() = 45;
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  v7[0] = 0x300000002;
  v7[1] = 0;
  v7[2] = a2;
  v7[3] = 0;
  result = fcntl(a1, 42, v7);
  if (result == -1)
  {
    if (*__error() == 45)
    {
      return 0xFFFFFFFFLL;
    }

    while (v3 >= 419430401)
    {
      v5 = xmmword_1C2C00020;
      v6 = unk_1C2C00030;
      result = fcntl(a1, 42, &v5);
      v3 -= 419430400;
      if (result == -1)
      {
        return result;
      }
    }

    v5 = 0x300000004uLL;
    v6 = v3;
    return fcntl(a1, 42, &v5);
  }

  return result;
}

uint64_t prot_write(uint64_t __fd, char *__buf, size_t __nbyte)
{
  v6 = 0;
  do
  {
    while (1)
    {
      v7 = write(__fd, __buf, __nbyte);
      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      v6 += v7;
      v10 = __nbyte > v7;
      __nbyte -= v7;
      if (!v10)
      {
        return v6;
      }

      __buf += v7;
    }

    v8 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v9 = __error();
  }

  while (((*(v8 + 16))(v8, __fd, *v9, 6) & 1) != 0);
  return -1;
}

uint64_t _fd_ftruncate(uint64_t a1, off_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((gDisablePreallocate & 1) == 0)
  {
    v4 = lseek(a1, 0, 2);
    v5 = a2 - v4;
    if (a2 > v4 && v5 > *MEMORY[0x1E69E9AC8])
    {
      ci_preallocate(a1, v5);
      if (prot_pwrite(a1, "", 1uLL, a2 - 1) == 1)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    result = ftruncate(a1, a2);
    if (result != -1)
    {
      break;
    }

    if (*__error() == 22)
    {
      result = ftruncate(a1, a2);
      if (result != -1)
      {
        break;
      }
    }

    v7 = *__error();
    v8 = g_prot_error_callback;
    if (g_prot_error_callback)
    {
      v9 = __error();
      if ((*(v8 + 16))(v8, a1, *v9, 7))
      {
        continue;
      }
    }

    bzero(v21, 0x400uLL);
    v10 = fcntl(a1, 50, v21);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = "";
      if (v21[0])
      {
        v12 = v10 < 0;
      }

      else
      {
        v12 = 1;
      }

      *buf = 67109890;
      if (!v12)
      {
        v11 = v21;
      }

      v14 = a1;
      v15 = 2080;
      v16 = v11;
      v17 = 2048;
      v18 = a2;
      v19 = 1024;
      v20 = v7;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ftruncate(%d %s, %lld) error:%d", buf, 0x22u);
    }

    *__error() = v7;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _fd_ftruncate_guarded(uint64_t a1, uint64_t a2, off_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((gDisablePreallocate & 1) == 0)
  {
    v6 = lseek(a1, 0, 2);
    v7 = a3 - v6;
    if (a3 > v6 && v7 > *MEMORY[0x1E69E9AC8])
    {
      ci_preallocate(a1, v7);
      if (prot_pwrite_guarded(a1, a2, "", 1uLL, a3 - 1) == 1)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    result = ftruncate(a1, a3);
    if (result != -1)
    {
      break;
    }

    if (*__error() == 22)
    {
      result = ftruncate(a1, a3);
      if (result != -1)
      {
        break;
      }
    }

    v9 = *__error();
    v10 = g_prot_error_callback;
    if (g_prot_error_callback)
    {
      v11 = __error();
      if ((*(v10 + 16))(v10, a1, *v11, 7))
      {
        continue;
      }
    }

    bzero(v23, 0x400uLL);
    v12 = fcntl(a1, 50, v23);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = "";
      if (v23[0])
      {
        v14 = v12 < 0;
      }

      else
      {
        v14 = 1;
      }

      *buf = 67109890;
      if (!v14)
      {
        v13 = v23;
      }

      v16 = a1;
      v17 = 2080;
      v18 = v13;
      v19 = 2048;
      v20 = a3;
      v21 = 1024;
      v22 = v9;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ftruncate(%d %s, %lld) error:%d", buf, 0x22u);
    }

    *__error() = v9;
    return 0xFFFFFFFFLL;
  }

  return result;
}

size_t stringForPRBundleIDType(size_t result, uint64_t a2)
{
  if (!result)
  {
    *(a2 + 96) = 0;
    *(a2 + 32) = xmmword_1C2C00926;
    *(a2 + 48) = unk_1C2C00936;
    *(a2 + 64) = xmmword_1C2C00946;
    *(a2 + 80) = unk_1C2C00956;
    *a2 = *"None";
    *(a2 + 16) = unk_1C2C00916;
    v6 = (a2 + 99);
    goto LABEL_14;
  }

  v3 = result;
  v4 = 100;
  v5 = 12;
  v6 = a2;
  v7 = &off_1E81973F0;
  do
  {
    if ((*(v7 - 1) & v3) != 0)
    {
      result = strlen(*v7);
      if (result + 1 < v4)
      {
        v8 = result;
        result = memcpy(v6, *v7, result);
        v6 += v8;
        v4 -= v8;
        if (v4 >= 2)
        {
          *v6++ = 44;
          --v4;
        }
      }
    }

    v7 += 2;
    --v5;
  }

  while (v5);
  if (v6 != a2 && *(v6 - 1) == 44)
  {
    --v6;
LABEL_14:
    *v6 = 0;
    return result;
  }

  if (v4)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t __isTextSemanticSearchEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  isTextSemanticSearchEnabled_ffStatus = result;
  return result;
}

uint64_t __isSearchToolDebugModeEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  isSearchToolDebugModeEnabled_ffStatus = result;
  return result;
}

uint64_t __isWalletDocumentUnderstandingEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  isWalletDocumentUnderstandingEnabled_ffStatus = result;
  return result;
}

BOOL isPhotosClient(CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  if (!MutableCopy)
  {
    return 0;
  }

  v2 = MutableCopy;
  CFStringLowercase(MutableCopy, 0);
  v3 = CFStringHasPrefix(v2, @"com.apple.photo") || CFStringHasPrefix(v2, @"com.apple.mobileslideshow") || CFStringCompare(v2, @"com.apple.plphotosctl", 0) == kCFCompareEqualTo;
  CFRelease(v2);
  return v3;
}

uint64_t __isQUEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  isQUEnabled_ffStatus = result;
  return result;
}

uint64_t __isLLMEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  isLLMEnabled_ffStatus = result;
  return result;
}

NSString *redactedString(NSString *a1)
{
  v2 = [(NSString *)a1 length];
  if (v2 < 5)
  {
    return a1;
  }

  v4 = v2;
  v5 = [(NSString *)a1 substringToIndex:2];
  v6 = [(NSString *)a1 substringFromIndex:v4 - 1];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...%@<%lu chars>", v5, v6, v4];
}

_DWORD *SStackPushData(unsigned int **a1, size_t a2, const void *a3)
{
  v6 = (a2 + 3) & 0xFFFFFFFC;
  v7 = SQueueOpenPushData(*a1, v6 + 8);
  *v7 = a2 + 4;
  v8 = v7 + 1;
  if (a3)
  {
    memcpy(v7 + 1, a3, a2);
  }

  *(v8 + v6) = 0;
  v9 = *a1;
  *(v9 + 6) = *(*a1 + 6) + v6 + 4;
  *(*(v9 + 4) + 24) += v6 + 4;
  *(v9 + 1) += v6 + 4;
  return v8;
}

unint64_t SStackNextData(uint64_t a1, uint64_t a2)
{
  v2 = a2 + (((*(a2 - 4) - 4) + 3) & 0x1FFFFFFFCLL);
  if (*v2)
  {
    return v2 + 4;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    v5 = *(*a1 + 24);
    while (1)
    {
      v6 = v5 + 32;
      if (v5 + 32 <= v2 && v6 + *(v5 + 16) >= v2)
      {
        break;
      }

      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    if (v5 == v4)
    {
      v6 = *(*a1 + 40);
    }

    if (v6 + *(v5 + 24) <= v2)
    {
      v2 = *(v5 + 8);
      if (v2)
      {
        v7 = *(v2 + 24);
        v2 += 32;
        if (!v7)
        {
          v2 = 0;
        }
      }
    }
  }

  else
  {
LABEL_8:
    v2 = 0;
  }

  if (v2)
  {
    return v2 + 4;
  }

  else
  {
    return 0;
  }
}

void registerForCloning(int a1, int a2)
{
  valuePtr = a1;
  if (registerForCloning_once[0] != -1)
  {
    dispatch_once(registerForCloning_once, &__block_literal_global_11242);
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (a2)
  {
    Mutable = registeredCloneFds;
    if (!registeredCloneFds)
    {
      Mutable = CFSetCreateMutable(v3, 0, 0);
      registeredCloneFds = Mutable;
    }

    CFSetAddValue(Mutable, v4);
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v4);
}

void unregisterForCloning(int a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds && CFSetContainsValue(registeredCloneFds, v1))
  {
    CFSetRemoveValue(registeredCloneFds, v1);
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v1);
}

BOOL isRegisteredForCloning(int a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds)
  {
    v2 = CFSetContainsValue(registeredCloneFds, v1) != 0;
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v1);
  return v2;
}

uint64_t _copyFile(int a1, const char *a2, int a3, const char *a4, _DWORD *a5, off_t a6)
{
  v76 = *MEMORY[0x1E69E9840];
  memset(&v69, 0, sizeof(v69));
  v67 = 0;
  v68 = 0;
  if (*a5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(10);
    v8 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v7, v8, "canceled", buf, 2u);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    v13 = -1;
    goto LABEL_36;
  }

  v11 = fd_create_protected(a1, a2, 0, 0);
  v19 = _fd_acquire_fd(v11, &v68);
  v13 = v19;
  if (!v11 || v19 == -1)
  {
    v6 = *__error();
    v33 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
LABEL_31:
      v9 = 0;
      v10 = 0;
      v12 = 0xFFFFFFFFLL;
LABEL_36:
      v45 = 0;
      *__error() = v6;
      goto LABEL_37;
    }

    v34 = *__error();
    *buf = 136315906;
    v71 = "_copyFile";
    v72 = 1024;
    v73 = 126;
    v74 = 1024;
    *v75 = v34;
    *&v75[4] = 2080;
    *&v75[6] = a2;
    v35 = "%s:%d: error (%d) opening %s\n";
    v36 = v33;
    v37 = 34;
LABEL_58:
    _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
    goto LABEL_31;
  }

  if (fstat(v19, &v69) == -1)
  {
    v6 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v51 = *__error();
    *buf = 136315650;
    v71 = "_copyFile";
    v72 = 1024;
    v73 = 130;
    v74 = 1024;
    *v75 = v51;
    v35 = "%s:%d: fstat error (%d)\n";
    v36 = v38;
    v37 = 24;
    goto LABEL_58;
  }

  v10 = fd_create_protected(a3, a4, 536872450, 0);
  v20 = _fd_acquire_fd(v10, &v67);
  v12 = v20;
  if (!v10 || v20 == -1)
  {
    v6 = *__error();
    v39 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
LABEL_35:
      v9 = 0;
      goto LABEL_36;
    }

    v40 = *__error();
    *buf = 136315906;
    v71 = "_copyFile";
    v72 = 1024;
    v73 = 137;
    v74 = 1024;
    *v75 = v40;
    *&v75[4] = 2080;
    *&v75[6] = a4;
    v41 = "%s:%d: error (%d) opening %s\n";
    v42 = v39;
    v43 = 34;
LABEL_60:
    _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
    goto LABEL_35;
  }

  if (_fd_ftruncate_guarded(v20, &v67, v69.st_size) == -1)
  {
    v6 = *__error();
    v44 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v52 = *__error();
    *buf = 136315650;
    v71 = "_copyFile";
    v72 = 1024;
    v73 = 146;
    v74 = 1024;
    *v75 = v52;
    v41 = "%s:%d: ftruncate error (%d)\n";
    v42 = v44;
    v43 = 24;
    goto LABEL_60;
  }

  fcntl(v13, 48, 1);
  __fd = v13;
  fcntl(v13, 76, 1);
  fcntl(v12, 48, 1);
  fcntl(v12, 76, 1);
  __buf = malloc_type_malloc(0x10000uLL, 0x8C758051uLL);
  st_size = v69.st_size;
  if (v69.st_size <= a6)
  {
    v22 = 0;
    goto LABEL_49;
  }

  v22 = 0;
  v23 = a6;
  v62 = v10;
  v63 = v11;
  v64 = a6;
  while (2)
  {
    if (*a5)
    {
      v48 = *__error();
      v53 = _SILogForLogForCategory(10);
      v54 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v53, v54))
      {
        *buf = 0;
LABEL_67:
        _os_log_impl(&dword_1C278D000, v53, v54, "canceled", buf, 2u);
      }

LABEL_48:
      a6 = v64;
      *__error() = v48;
      st_size = v69.st_size;
      break;
    }

    v24 = prot_pread(__fd, __buf, 0x10000uLL, v23);
    if (v24 == -1)
    {
      v48 = *__error();
      v55 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = *__error();
        *buf = 136315650;
        v71 = "_copyFile";
        v72 = 1024;
        v73 = 169;
        v74 = 1024;
        *v75 = v56;
        _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, "%s:%d: read error (%d)\n", buf, 0x18u);
      }

      goto LABEL_48;
    }

    if (*a5)
    {
      v48 = *__error();
      v53 = _SILogForLogForCategory(10);
      v54 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v53, v54))
      {
        *buf = 0;
        goto LABEL_67;
      }

      goto LABEL_48;
    }

    v25 = v24;
    v26 = 1;
    v27 = __buf;
    while (1)
    {
      v28 = prot_pwrite_guarded(v12, &v67, v27, v25, v23);
      if (v28 == -1)
      {
        v48 = *__error();
        v49 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v57 = *__error();
          *buf = 136315650;
          v71 = "_copyFile";
          v72 = 1024;
          v73 = 185;
          v74 = 1024;
          *v75 = v57;
          _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: write error (%d)\n", buf, 0x18u);
        }

        v10 = v62;
        v11 = v63;
        goto LABEL_48;
      }

      v29 = v28;
      v30 = v25 - v28;
      if (v25 < v28)
      {
        v58 = __si_assert_copy_extra_332();
        v59 = v58;
        v60 = "";
        if (v58)
        {
          v60 = v58;
        }

        __message_assert(v58, "copyFile.c", 188, "wLen <= actual", v60);
        free(v59);
        if (__valid_fs(-1))
        {
          v61 = 2989;
        }

        else
        {
          v61 = 3072;
        }

        *v61 = -559038737;
        abort();
      }

      v22 += v28;
      if (v25 <= v28)
      {
        break;
      }

      if ((v28 != 0) | v26 & 1)
      {
        v26 &= v28 != 0;
      }

      else
      {
        v31 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v71 = "_copyFile";
          v72 = 1024;
          v73 = 194;
          _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: write failed", buf, 0x12u);
        }

        v26 = 0;
        *__error() = v31;
      }

      v23 += v29;
      v27 += v29;
      v25 = v30;
    }

    v23 += v25;
    st_size = v69.st_size;
    v10 = v62;
    v11 = v63;
    a6 = v64;
    if (v23 < v69.st_size)
    {
      continue;
    }

    break;
  }

LABEL_49:
  if (v22 + a6 == st_size)
  {
    v45 = 1;
  }

  else
  {
    if (!*a5)
    {
      v6 = *__error();
      v50 = _SILogForLogForCategory(0);
      v9 = __buf;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v71 = "_copyFile";
        v72 = 1024;
        v73 = 208;
        v74 = 2048;
        *v75 = v69.st_size;
        *&v75[8] = 2048;
        *&v75[10] = v22;
        _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: write failed - expected:%lld, actual: %lld", buf, 0x26u);
      }

      v13 = __fd;
      goto LABEL_36;
    }

    v45 = 0;
  }

  v13 = __fd;
  v9 = __buf;
LABEL_37:
  v46 = *__error();
  free(v9);
  prot_fsync(v12, 0);
  if ((v13 & 0x80000000) == 0)
  {
    _fd_release_fd(v11, v13, 0, v68);
  }

  fd_release(v11);
  if ((v12 & 0x80000000) == 0)
  {
    _fd_release_fd(v10, v12, 0, v67);
  }

  fd_release(v10);
  if (v46)
  {
    *__error() = v46;
  }

  return v45;
}

uint64_t copyFileFallback(uint64_t a1, const char *a2, int a3, const char *a4, _DWORD *a5, char a6, int a7)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1 != a3 || !isRegisteredForCloning(a1) || !a7)
  {
    return _copyFile(a1, a2, a3, a4, a5, 0);
  }

  bzero(__s, 0x400uLL);
  bzero(&__to, 0x400uLL);
  if (fcntl(a1, 50, __s) < 0 || !__s[0])
  {
    v24 = *__error();
    v25 = *__error();
    v26 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      *__error() = v25;
      v31 = __error();
      result = 0;
      *v31 = v24;
      return result;
    }

    v27 = *__error();
    *buf = 136316162;
    v41 = "copyFileFallback";
    v42 = 1024;
    *v43 = 348;
    *&v43[4] = 1024;
    *&v43[6] = v27;
    v44 = 1024;
    *v45 = a1;
    *&v45[4] = 2080;
    *&v45[6] = a2;
    v28 = "%s:%d: copy file error(%d) resolving source fd %d for %s";
    v29 = v26;
LABEL_39:
    _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, v28, buf, 0x28u);
    goto LABEL_29;
  }

  v14 = strlen(__s);
  snprintf(&__s[v14], 1024 - v14, "/%s", a2);
  if (fcntl(a1, 50, &__to) < 0 || !__to.__pn_.__r_.__value_.__s.__data_[0])
  {
    v24 = *__error();
    v25 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v36 = *__error();
    *buf = 136316162;
    v41 = "copyFileFallback";
    v42 = 1024;
    *v43 = 343;
    *&v43[4] = 1024;
    *&v43[6] = v36;
    v44 = 1024;
    *v45 = a1;
    *&v45[4] = 2080;
    *&v45[6] = a4;
    v28 = "%s:%d: copy file error(%d) resolving dest fd %d for %s";
    v29 = v30;
    goto LABEL_39;
  }

  v38 = a6;
  v15 = strlen(&__to);
  snprintf(&__to + v15, 1024 - v15, "/%s", a4);
  v16 = *__error();
  v17 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = __s;
    v42 = 2080;
    *v43 = &__to;
    _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "copy file %s to %s", buf, 0x16u);
  }

  *__error() = v16;
  while (1)
  {
    v18 = open(&__to, 0);
    to = 0;
    asprintf(&to, "%s.tmp", &__to);
    unlink(to);
    v19 = copyfile(__s, to, 0, 0x20C0000u);
    v21 = *__error();
    if (v21 != 45)
    {
      goto LABEL_14;
    }

    v22 = open(__s, 0);
    if (v22 != -1)
    {
      close(v22);
      v21 = 45;
LABEL_14:
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_15:
      rename(to, &__to, v20);
      v19 = v23;
      v21 = *__error();
      goto LABEL_16;
    }

    v21 = *__error();
    if (!v19)
    {
      goto LABEL_15;
    }

LABEL_16:
    free(to);
    if (v18 != -1)
    {
      close(v18);
    }

    if (v19 != -1)
    {
      break;
    }

    if (!g_prot_error_callback || ((*(g_prot_error_callback + 16))(g_prot_error_callback, a1, v21, 1) & 1) == 0)
    {
      *__error() = v21;
      *__error() = v21;
      if (!g_prot_error_callback || ((*(g_prot_error_callback + 16))(g_prot_error_callback, a1, v21, 1) & 1) == 0)
      {
        *__error() = v21;
        goto LABEL_32;
      }
    }
  }

  *__error() = v21;
  if (!v19)
  {
    return 1;
  }

LABEL_32:
  v33 = *__error();
  v34 = *__error();
  v35 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v37 = *__error();
    *buf = 136316162;
    v41 = "copyFileFallback";
    v42 = 1024;
    *v43 = 337;
    *&v43[4] = 1024;
    *&v43[6] = v37;
    v44 = 2080;
    *v45 = __s;
    *&v45[8] = 2080;
    *&v45[10] = &__to;
    _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: copy file error(%d) (%s) (%s)", buf, 0x2Cu);
  }

  *__error() = v34;
  *__error() = v33;
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  return _copyFile(a1, a2, a3, a4, a5, 0);
}

void si_activity_journal_init(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = a2;
  if (a2)
  {
    v4 = fd_lseek(a2, 0, 2);
    if (v4 >= 1073741825)
    {
      v5 = v4;
      fprintf(*MEMORY[0x1E69E9848], "kSIActivityJournalReset: Journal size %lld is > %lld\n", v4, 0x40000000);
      fd_zero_truncate(a2);
      memset(v10, 0, sizeof(v10));
      Current = CFAbsoluteTimeGetCurrent();
      v7 = Current;
      if (Current > 0x7F)
      {
        if (v7 >> 14)
        {
          if (v7 >> 21)
          {
            if (v7 >> 28)
            {
              if (v7 >> 35)
              {
                if (v7 >> 42)
                {
                  if (v7 >> 49)
                  {
                    if (HIBYTE(v7))
                    {
                      LOBYTE(v10[0]) = -1;
                      *(v10 + 1) = Current;
                      v8 = 9;
                    }

                    else
                    {
                      LOBYTE(v10[0]) = -2;
                      BYTE1(v10[0]) = Current >> 48;
                      BYTE2(v10[0]) = (Current >> 32) >> 8;
                      BYTE3(v10[0]) = Current >> 32;
                      BYTE4(v10[0]) = Current >> 24;
                      BYTE5(v10[0]) = Current >> 16;
                      BYTE6(v10[0]) = Current >> 8;
                      v8 = 8;
                      BYTE7(v10[0]) = Current;
                    }
                  }

                  else
                  {
                    LOBYTE(v10[0]) = BYTE6(v7) | 0xFC;
                    BYTE1(v10[0]) = (Current >> 32) >> 8;
                    BYTE2(v10[0]) = Current >> 32;
                    BYTE3(v10[0]) = Current >> 24;
                    BYTE4(v10[0]) = Current >> 16;
                    BYTE5(v10[0]) = Current >> 8;
                    v8 = 7;
                    BYTE6(v10[0]) = Current;
                  }
                }

                else
                {
                  LOBYTE(v10[0]) = BYTE5(v7) | 0xF8;
                  BYTE1(v10[0]) = Current >> 32;
                  BYTE2(v10[0]) = Current >> 24;
                  BYTE3(v10[0]) = Current >> 16;
                  BYTE4(v10[0]) = Current >> 8;
                  BYTE5(v10[0]) = Current;
                  v8 = 6;
                }
              }

              else
              {
                LOBYTE(v10[0]) = BYTE4(v7) | 0xF0;
                BYTE1(v10[0]) = Current >> 24;
                BYTE2(v10[0]) = Current >> 16;
                BYTE3(v10[0]) = Current >> 8;
                BYTE4(v10[0]) = Current;
                v8 = 5;
              }
            }

            else
            {
              LOBYTE(v10[0]) = BYTE3(v7) | 0xE0;
              BYTE1(v10[0]) = Current >> 16;
              BYTE2(v10[0]) = Current >> 8;
              BYTE3(v10[0]) = Current;
              v8 = 4;
            }
          }

          else
          {
            LOBYTE(v10[0]) = BYTE2(v7) | 0xC0;
            BYTE1(v10[0]) = Current >> 8;
            BYTE2(v10[0]) = Current;
            v8 = 3;
          }
        }

        else
        {
          LOBYTE(v10[0]) = BYTE1(v7) | 0x80;
          BYTE1(v10[0]) = Current;
          v8 = 2;
        }
      }

      else
      {
        LOBYTE(v10[0]) = Current;
        v8 = 1;
      }

      v9 = v2_writeVInt64_11288(v10, v8, v5);
      *(v10 + v9) = 0;
      activityJournalWrite(a1, 55, v10, v9 + 1);
    }
  }
}

uint64_t v2_writeVInt64_11288(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 0x7F)
  {
    if (a3 >> 14)
    {
      if (a3 >> 21)
      {
        if (a3 >> 28)
        {
          if (a3 >> 35)
          {
            if (a3 >> 42)
            {
              if (a3 >> 49)
              {
                v10 = a1 + a2;
                if (HIBYTE(a3))
                {
                  *v10 = -1;
                  *(v10 + 1) = a3;
                  return a2 + 9;
                }

                else
                {
                  *v10 = -2;
                  *(v10 + 1) = BYTE6(a3);
                  *(v10 + 2) = BYTE5(a3);
                  *(v10 + 3) = BYTE4(a3);
                  *(v10 + 4) = BYTE3(a3);
                  *(v10 + 5) = BYTE2(a3);
                  *(v10 + 6) = BYTE1(a3);
                  v3 = a2 + 8;
                  *(v10 + 7) = a3;
                }
              }

              else
              {
                v9 = (a1 + a2);
                *v9 = BYTE6(a3) | 0xFC;
                v9[1] = BYTE5(a3);
                v9[2] = BYTE4(a3);
                v9[3] = BYTE3(a3);
                v9[4] = BYTE2(a3);
                v9[5] = BYTE1(a3);
                v3 = a2 + 7;
                v9[6] = a3;
              }
            }

            else
            {
              v8 = (a1 + a2);
              *v8 = BYTE5(a3) | 0xF8;
              v8[1] = BYTE4(a3);
              v8[2] = BYTE3(a3);
              v8[3] = BYTE2(a3);
              v8[4] = BYTE1(a3);
              v3 = a2 + 6;
              v8[5] = a3;
            }
          }

          else
          {
            v7 = (a1 + a2);
            *v7 = BYTE4(a3) | 0xF0;
            v7[1] = BYTE3(a3);
            v7[2] = BYTE2(a3);
            v7[3] = BYTE1(a3);
            v3 = a2 + 5;
            v7[4] = a3;
          }
        }

        else
        {
          v6 = (a1 + a2);
          *v6 = BYTE3(a3) | 0xE0;
          v6[1] = BYTE2(a3);
          v6[2] = BYTE1(a3);
          v3 = a2 + 4;
          v6[3] = a3;
        }
      }

      else
      {
        v5 = (a1 + a2);
        *v5 = BYTE2(a3) | 0xC0;
        v5[1] = BYTE1(a3);
        v3 = a2 + 3;
        v5[2] = a3;
      }
    }

    else
    {
      v4 = (a1 + a2);
      *v4 = BYTE1(a3) | 0x80;
      v3 = a2 + 2;
      v4[1] = a3;
    }
  }

  else
  {
    v3 = a2 + 1;
    *(a1 + a2) = a3;
  }

  return v3;
}

void SIActivityJournalOpen(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    os_unfair_lock_lock((a1 + 32));
    memset(v37, 0, sizeof(v37));
    Current = CFAbsoluteTimeGetCurrent();
    v17 = getpid();
    if (v17 > 0x7F)
    {
      if (v17 >> 14)
      {
        if (v17 >> 21)
        {
          if (v17 >> 28)
          {
            LOBYTE(v37[0]) = -16;
            *(v37 + 1) = v17;
            v18 = 5;
          }

          else
          {
            LOBYTE(v37[0]) = HIBYTE(v17) | 0xE0;
            BYTE1(v37[0]) = BYTE2(v17);
            BYTE2(v37[0]) = BYTE1(v17);
            BYTE3(v37[0]) = v17;
            v18 = 4;
          }
        }

        else
        {
          LOBYTE(v37[0]) = BYTE2(v17) | 0xC0;
          BYTE1(v37[0]) = BYTE1(v17);
          BYTE2(v37[0]) = v17;
          v18 = 3;
        }
      }

      else
      {
        LOBYTE(v37[0]) = BYTE1(v17) | 0x80;
        BYTE1(v37[0]) = v17;
        v18 = 2;
      }
    }

    else
    {
      LOBYTE(v37[0]) = v17;
      v18 = 1;
    }

    v19 = v2_writeVInt64_11288(v37, v18, Current);
    if (a3 > 0x7F)
    {
      if (a3 >> 14)
      {
        if (a3 >> 21)
        {
          if (a3 >> 28)
          {
            v24 = v37 + v19;
            *v24 = -16;
            *(v24 + 1) = a3;
            v20 = v19 + 5;
          }

          else
          {
            v23 = v37 + v19;
            *v23 = HIBYTE(a3) | 0xE0;
            v23[1] = BYTE2(a3);
            v23[2] = BYTE1(a3);
            v20 = v19 + 4;
            v23[3] = a3;
          }
        }

        else
        {
          v22 = v37 + v19;
          *v22 = BYTE2(a3) | 0xC0;
          v22[1] = BYTE1(a3);
          v20 = v19 + 3;
          v22[2] = a3;
        }
      }

      else
      {
        v21 = v37 + v19;
        *v21 = BYTE1(a3) | 0x80;
        v20 = v19 + 2;
        v21[1] = a3;
      }
    }

    else
    {
      v20 = v19 + 1;
      *(v37 + v19) = a3;
    }

    if (a4 > 0x7F)
    {
      if (a4 >> 14)
      {
        if (a4 >> 21)
        {
          if (a4 >> 28)
          {
            v29 = v37 + v20;
            *v29 = -16;
            *(v29 + 1) = a4;
            v25 = v20 + 5;
          }

          else
          {
            v28 = v37 + v20;
            *v28 = HIBYTE(a4) | 0xE0;
            v28[1] = BYTE2(a4);
            v28[2] = BYTE1(a4);
            v25 = v20 + 4;
            v28[3] = a4;
          }
        }

        else
        {
          v27 = v37 + v20;
          *v27 = BYTE2(a4) | 0xC0;
          v27[1] = BYTE1(a4);
          v25 = v20 + 3;
          v27[2] = a4;
        }
      }

      else
      {
        v26 = v37 + v20;
        *v26 = BYTE1(a4) | 0x80;
        v25 = v20 + 2;
        v26[1] = a4;
      }
    }

    else
    {
      v25 = v20 + 1;
      *(v37 + v20) = a4;
    }

    if (a5 > 0x7F)
    {
      if (a5 >> 14)
      {
        if (a5 >> 21)
        {
          if (a5 >> 28)
          {
            v34 = v37 + v25;
            *v34 = -16;
            *(v34 + 1) = a5;
            v30 = v25 + 5;
          }

          else
          {
            v33 = v37 + v25;
            *v33 = HIBYTE(a5) | 0xE0;
            v33[1] = BYTE2(a5);
            v33[2] = BYTE1(a5);
            v30 = v25 + 4;
            v33[3] = a5;
          }
        }

        else
        {
          v32 = v37 + v25;
          *v32 = BYTE2(a5) | 0xC0;
          v32[1] = BYTE1(a5);
          v30 = v25 + 3;
          v32[2] = a5;
        }
      }

      else
      {
        v31 = v37 + v25;
        *v31 = BYTE1(a5) | 0x80;
        v30 = v25 + 2;
        v31[1] = a5;
      }
    }

    else
    {
      v30 = v25 + 1;
      *(v37 + v25) = a5;
    }

    if (a2 != 37)
    {
      v35 = v2_writeVInt64_11288(v37, v30, a6);
      v30 = v2_writeVInt64_11288(v37, v35, a7);
    }

    v36 = v2_writeVInt64_11288(v37, v30, a8);
    activityJournalWrite(a1, a2, v37, v36);
    os_unfair_lock_unlock((a1 + 32));
  }
}

void SIActivityJournalClose(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 8);
  Current = CFAbsoluteTimeGetCurrent();
  activityJournalWriteVInt64(a1, 4, Current);

  os_unfair_lock_unlock(a1 + 8);
}

void SIActivityJournalUnlinkJournal(os_unfair_lock_s *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v3 = fd_name(a2, v11, 0x100uLL);
  if (v3)
  {
    v4 = v3;
    if (!strncmp(v3, "journalAttr.", 0xCuLL))
    {
      v8 = atoi(v4 + 12);
      v6 = a1 + 8;
      os_unfair_lock_lock(a1 + 8);
      v12 = 0u;
      v13 = 0u;
      if (v8 > 0x7F)
      {
        if (v8 >> 14)
        {
          if (v8 >> 21)
          {
            if (v8 >> 28)
            {
              LOBYTE(v12) = -16;
              *(&v12 + 1) = v8;
              v7 = 5;
            }

            else
            {
              LOBYTE(v12) = HIBYTE(v8) | 0xE0;
              BYTE1(v12) = BYTE2(v8);
              BYTE2(v12) = BYTE1(v8);
              BYTE3(v12) = v8;
              v7 = 4;
            }
          }

          else
          {
            LOBYTE(v12) = BYTE2(v8) | 0xC0;
            BYTE1(v12) = BYTE1(v8);
            BYTE2(v12) = v8;
            v7 = 3;
          }
        }

        else
        {
          LOBYTE(v12) = BYTE1(v8) | 0x80;
          BYTE1(v12) = v8;
          v7 = 2;
        }
      }

      else
      {
        LOBYTE(v12) = v8;
        v7 = 1;
      }

      v9 = a1;
      v10 = 25;
    }

    else
    {
      if (strncmp(v4, "deferAttr.", 0xAuLL))
      {
        return;
      }

      v5 = atoi(v4 + 10);
      v6 = a1 + 8;
      os_unfair_lock_lock(a1 + 8);
      v12 = 0u;
      v13 = 0u;
      if (v5 > 0x7F)
      {
        if (v5 >> 14)
        {
          if (v5 >> 21)
          {
            if (v5 >> 28)
            {
              LOBYTE(v12) = -16;
              *(&v12 + 1) = v5;
              v7 = 5;
            }

            else
            {
              LOBYTE(v12) = HIBYTE(v5) | 0xE0;
              BYTE1(v12) = BYTE2(v5);
              BYTE2(v12) = BYTE1(v5);
              BYTE3(v12) = v5;
              v7 = 4;
            }
          }

          else
          {
            LOBYTE(v12) = BYTE2(v5) | 0xC0;
            BYTE1(v12) = BYTE1(v5);
            BYTE2(v12) = v5;
            v7 = 3;
          }
        }

        else
        {
          LOBYTE(v12) = BYTE1(v5) | 0x80;
          BYTE1(v12) = v5;
          v7 = 2;
        }
      }

      else
      {
        LOBYTE(v12) = v5;
        v7 = 1;
      }

      v9 = a1;
      v10 = 53;
    }

    activityJournalWrite(v9, v10, &v12, v7);
    os_unfair_lock_unlock(v6);
  }
}

void SIActivityJournalNewLiveIndex(os_unfair_lock_s *a1, unsigned int a2, unint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  os_unfair_lock_lock(a1 + 8);
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      if (a2 >> 21)
      {
        if (a2 >> 28)
        {
          LOBYTE(v8[0]) = -16;
          *(v8 + 1) = a2;
          v6 = 5;
        }

        else
        {
          LOBYTE(v8[0]) = HIBYTE(a2) | 0xE0;
          BYTE1(v8[0]) = BYTE2(a2);
          BYTE2(v8[0]) = BYTE1(a2);
          BYTE3(v8[0]) = a2;
          v6 = 4;
        }
      }

      else
      {
        LOBYTE(v8[0]) = BYTE2(a2) | 0xC0;
        BYTE1(v8[0]) = BYTE1(a2);
        BYTE2(v8[0]) = a2;
        v6 = 3;
      }
    }

    else
    {
      LOBYTE(v8[0]) = BYTE1(a2) | 0x80;
      BYTE1(v8[0]) = a2;
      v6 = 2;
    }
  }

  else
  {
    LOBYTE(v8[0]) = a2;
    v6 = 1;
  }

  v7 = v2_writeVInt64_11288(v8, v6, a3);
  activityJournalWrite(a1, 20, v8, v7);

  os_unfair_lock_unlock(a1 + 8);
}

void SIActivityJournalMergeIndices(os_unfair_lock_s *a1, unsigned int a2, unsigned int a3, int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  os_unfair_lock_lock(a1 + 8);
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      if (a2 >> 21)
      {
        if (a2 >> 28)
        {
          v8 = v12 + 5;
          LOBYTE(v12[0]) = -16;
          *(v12 + 1) = a2;
          v9 = 5;
        }

        else
        {
          v8 = v12 + 4;
          LOBYTE(v12[0]) = HIBYTE(a2) | 0xE0;
          BYTE1(v12[0]) = BYTE2(a2);
          BYTE2(v12[0]) = BYTE1(a2);
          BYTE3(v12[0]) = a2;
          v9 = 4;
        }
      }

      else
      {
        v8 = v12 + 3;
        LOBYTE(v12[0]) = BYTE2(a2) | 0xC0;
        BYTE1(v12[0]) = BYTE1(a2);
        BYTE2(v12[0]) = a2;
        v9 = 3;
      }
    }

    else
    {
      v8 = v12 + 2;
      LOBYTE(v12[0]) = BYTE1(a2) | 0x80;
      BYTE1(v12[0]) = a2;
      v9 = 2;
    }
  }

  else
  {
    v8 = v12 + 1;
    LOBYTE(v12[0]) = a2;
    v9 = 1;
  }

  if (a3 > 0x7F)
  {
    if (a3 >> 14)
    {
      if (a3 >> 21)
      {
        if (a3 >> 28)
        {
          *v8 = -16;
          *(v8 + 1) = a3;
          v10 = v9 + 5;
        }

        else
        {
          *v8 = HIBYTE(a3) | 0xE0;
          v8[1] = BYTE2(a3);
          v8[2] = BYTE1(a3);
          v10 = v9 + 4;
          v8[3] = a3;
        }
      }

      else
      {
        *v8 = BYTE2(a3) | 0xC0;
        v8[1] = BYTE1(a3);
        v10 = v9 + 3;
        v8[2] = a3;
      }
    }

    else
    {
      *v8 = BYTE1(a3) | 0x80;
      v10 = v9 + 2;
      v8[1] = a3;
    }
  }

  else
  {
    v10 = v9 + 1;
    *v8 = a3;
  }

  if (a4)
  {
    v11 = 21;
  }

  else
  {
    v11 = 22;
  }

  activityJournalWrite(a1, v11, v12, v10);

  os_unfair_lock_unlock(a1 + 8);
}

void _SIActivityJournalAdd(uint64_t a1, char a2, unint64_t a3, unsigned int a4, unint64_t a5, int a6)
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 32));
  if (*(a1 + 37) != a6)
  {
    *(a1 + 37) = a6;
    if (a6)
    {
      v12 = 26;
    }

    else
    {
      v12 = 27;
    }

    activityJournalWrite(a1, v12, 0, 0);
  }

  if (*(a1 + 8) != a4)
  {
    *(a1 + 8) = a4;
    v16 = 0u;
    v17 = 0u;
    if (a4 > 0x7F)
    {
      if (a4 >> 14)
      {
        if (a4 >> 21)
        {
          if (a4 >> 28)
          {
            LOBYTE(v16) = -16;
            *(&v16 + 1) = a4;
            v13 = 5;
          }

          else
          {
            LOBYTE(v16) = HIBYTE(a4) | 0xE0;
            BYTE1(v16) = BYTE2(a4);
            BYTE2(v16) = BYTE1(a4);
            BYTE3(v16) = a4;
            v13 = 4;
          }
        }

        else
        {
          LOBYTE(v16) = BYTE2(a4) | 0xC0;
          BYTE1(v16) = BYTE1(a4);
          BYTE2(v16) = a4;
          v13 = 3;
        }
      }

      else
      {
        LOBYTE(v16) = BYTE1(a4) | 0x80;
        BYTE1(v16) = a4;
        v13 = 2;
      }
    }

    else
    {
      LOBYTE(v16) = a4;
      v13 = 1;
    }

    activityJournalWrite(a1, 9, &v16, v13);
  }

  if (*(a1 + 24) != a5)
  {
    *(a1 + 24) = a5;
    activityJournalWriteVInt64(a1, 32, a5);
  }

  if (*(a1 + 12) != HIDWORD(a3))
  {
    *(a1 + 12) = HIDWORD(a3);
    v16 = 0u;
    v17 = 0u;
    if (a3 >> 39)
    {
      if (a3 >> 46)
      {
        if (a3 >> 53)
        {
          if (a3 >> 60)
          {
            LOBYTE(v16) = -16;
            *(&v16 + 1) = HIDWORD(a3);
            v14 = 5;
          }

          else
          {
            LOBYTE(v16) = HIBYTE(a3) | 0xE0;
            BYTE1(v16) = BYTE6(a3);
            BYTE2(v16) = BYTE5(a3);
            BYTE3(v16) = BYTE4(a3);
            v14 = 4;
          }
        }

        else
        {
          LOBYTE(v16) = BYTE6(a3) | 0xC0;
          BYTE1(v16) = BYTE5(a3);
          BYTE2(v16) = BYTE4(a3);
          v14 = 3;
        }
      }

      else
      {
        LOBYTE(v16) = BYTE5(a3) | 0x80;
        BYTE1(v16) = BYTE4(a3);
        v14 = 2;
      }
    }

    else
    {
      LOBYTE(v16) = BYTE4(a3);
      v14 = 1;
    }

    activityJournalWrite(a1, 10, &v16, v14);
  }

  v16 = 0u;
  v17 = 0u;
  if (a3 > 0x7F)
  {
    if (a3 >> 14)
    {
      if (a3 >> 21)
      {
        if (a3 >> 28)
        {
          LOBYTE(v16) = -16;
          *(&v16 + 1) = a3;
          v15 = 5;
        }

        else
        {
          LOBYTE(v16) = BYTE3(a3) | 0xE0;
          BYTE1(v16) = BYTE2(a3);
          BYTE2(v16) = BYTE1(a3);
          BYTE3(v16) = a3;
          v15 = 4;
        }
      }

      else
      {
        LOBYTE(v16) = BYTE2(a3) | 0xC0;
        BYTE1(v16) = BYTE1(a3);
        BYTE2(v16) = a3;
        v15 = 3;
      }
    }

    else
    {
      LOBYTE(v16) = BYTE1(a3) | 0x80;
      BYTE1(v16) = a3;
      v15 = 2;
    }
  }

  else
  {
    LOBYTE(v16) = a3;
    v15 = 1;
  }

  activityJournalWrite(a1, a2, &v16, v15);

  os_unfair_lock_unlock((a1 + 32));
}

void SIActivityJournalMailCSItem(uint64_t a1, CFStringRef theString, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, const void *a10)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a10)
  {
    v15 = 0;
  }

  else
  {
    v15 = theString == 0;
  }

  if (v15 && a8 == 0 && a9 == 0)
  {

    SIActivityJournalCSItem(a1, 0, a3, a4, a5, a6, a7);
  }

  else
  {
    Length = CFStringGetLength(theString);
    if (!Length)
    {
      goto LABEL_31;
    }

    v21 = Length;
    if (Length > 31)
    {
      goto LABEL_31;
    }

    *buffer = 0u;
    v36 = 0u;
    if (!CFStringGetCString(theString, buffer, 32, 0x8000100u))
    {
      goto LABEL_31;
    }

    if (v21 >= 1)
    {
      v22 = buffer;
      do
      {
        v23 = *v22++;
        if (v23 >= 0x3A)
        {
          goto LABEL_31;
        }
      }

      while (--v21);
    }

    v24 = atol(buffer);
    if (v24 <= 0)
    {
LABEL_31:
      SIActivityJournalCSItem(a1, theString, a3, a4, a5, a6, a7);
      return;
    }

    v25 = v24;
    os_unfair_lock_lock((a1 + 32));
    if (*(a1 + 37) != a6)
    {
      *(a1 + 37) = a6;
      if (a6)
      {
        v26 = 26;
      }

      else
      {
        v26 = 27;
      }

      activityJournalWrite(a1, v26, 0, 0);
    }

    if (*(a1 + 12) != HIDWORD(a3))
    {
      *(a1 + 12) = HIDWORD(a3);
      *buffer = 0u;
      v36 = 0u;
      if (a3 >> 39)
      {
        if (a3 >> 46)
        {
          if (a3 >> 53)
          {
            if (a3 >> 60)
            {
              buffer[0] = -16;
              *&buffer[1] = HIDWORD(a3);
              v27 = 5;
            }

            else
            {
              buffer[0] = HIBYTE(a3) | 0xE0;
              buffer[1] = BYTE6(a3);
              buffer[2] = BYTE5(a3);
              buffer[3] = BYTE4(a3);
              v27 = 4;
            }
          }

          else
          {
            buffer[0] = BYTE6(a3) | 0xC0;
            buffer[1] = BYTE5(a3);
            buffer[2] = BYTE4(a3);
            v27 = 3;
          }
        }

        else
        {
          buffer[0] = BYTE5(a3) | 0x80;
          buffer[1] = BYTE4(a3);
          v27 = 2;
        }
      }

      else
      {
        buffer[0] = BYTE4(a3);
        v27 = 1;
      }

      activityJournalWrite(a1, 10, buffer, v27);
    }

    if (*(a1 + 8) != a4)
    {
      *(a1 + 8) = a4;
      *buffer = 0u;
      v36 = 0u;
      if (a4 > 0x7F)
      {
        if (a4 >> 14)
        {
          if (a4 >> 21)
          {
            if (a4 >> 28)
            {
              buffer[0] = -16;
              *&buffer[1] = a4;
              v28 = 5;
            }

            else
            {
              buffer[0] = BYTE3(a4) | 0xE0;
              buffer[1] = BYTE2(a4);
              buffer[2] = BYTE1(a4);
              buffer[3] = a4;
              v28 = 4;
            }
          }

          else
          {
            buffer[0] = BYTE2(a4) | 0xC0;
            buffer[1] = BYTE1(a4);
            buffer[2] = a4;
            v28 = 3;
          }
        }

        else
        {
          buffer[0] = BYTE1(a4) | 0x80;
          buffer[1] = a4;
          v28 = 2;
        }
      }

      else
      {
        buffer[0] = a4;
        v28 = 1;
      }

      activityJournalWrite(a1, 9, buffer, v28);
    }

    v29 = 4 * v25;
    if (*(a1 + 24) != a5)
    {
      *(a1 + 24) = a5;
      activityJournalWriteVInt64(a1, 32, a5);
    }

    if (a10 && (v30 = CFGetTypeID(a10), v30 == CFNumberGetTypeID()) && (*buffer = 0, CFNumberGetValue(a10, kCFNumberSInt32Type, buffer)))
    {
      if (*buffer > 7u)
      {
        v31 = 1;
      }

      else
      {
        v29 = (32 * v25) | (4 * *buffer);
        v31 = 0;
      }
    }

    else
    {
      v31 = 1;
    }

    if (a7)
    {
      if (v31)
      {
        if (*MEMORY[0x1E695E738] == a10)
        {
          v32 = 49;
        }

        else
        {
          v32 = 48;
        }
      }

      else
      {
        v32 = 51;
      }
    }

    else if (v31)
    {
      v32 = 47;
    }

    else
    {
      v32 = 50;
    }

    if (*MEMORY[0x1E695E4D0] == a9)
    {
      v33 = v29 | (*MEMORY[0x1E695E4D0] == a8) | 2;
    }

    else
    {
      v33 = v29 | (*MEMORY[0x1E695E4D0] == a8);
    }

    activityJournalWriteVInt64(a1, v32, v33);
    os_unfair_lock_unlock((a1 + 32));
  }
}

void SIActivityJournalEvent(os_unfair_lock_s *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(&v14, 0x220uLL);
    if (a2 > 0x7F)
    {
      if (a2 >> 14)
      {
        if (a2 >> 21)
        {
          if (a2 >> 28)
          {
            v14 = -16;
            v15 = HIBYTE(a2);
            v16 = BYTE2(a2);
            v17 = BYTE1(a2);
            v10 = 5;
            v18 = a2;
          }

          else
          {
            v14 = HIBYTE(a2) | 0xE0;
            v15 = BYTE2(a2);
            v16 = BYTE1(a2);
            v17 = a2;
            v10 = 4;
          }
        }

        else
        {
          v14 = BYTE2(a2) | 0xC0;
          v15 = BYTE1(a2);
          v16 = a2;
          v10 = 3;
        }
      }

      else
      {
        v14 = BYTE1(a2) | 0x80;
        v15 = a2;
        v10 = 2;
      }
    }

    else
    {
      v14 = a2;
      v10 = 1;
    }

    v11 = v2_writeVInt64_11288(&v14, v10, a3);
    v12 = v2_writeVInt64_11288(&v14, v11, a4);
    v13 = v2_writeVInt64_11288(&v14, v12, a5);
    os_unfair_lock_lock(a1 + 8);
    activityJournalWrite(a1, 59, &v14, v13);
    os_unfair_lock_unlock(a1 + 8);
  }
}

void _SIActivityJournalGetOIDs(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v25 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v32[1024] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v11 = CFDictionaryCreateMutable(v8, 0, 0, v9);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 0x40000000;
  v30[2] = ___SIActivityJournalGetOIDs_block_invoke;
  v30[3] = &__block_descriptor_tmp_11329;
  v30[4] = v11;
  v30[5] = Mutable;
  v31 = v5;
  si_activity_journal_playback(v7, v30);
  Count = CFDictionaryGetCount(v11);
  MEMORY[0x1EEE9AC00](v13);
  v14 = (&v24 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v14, 8 * Count);
  MEMORY[0x1EEE9AC00](v15);
  v16 = v14;
  bzero(v14, 8 * Count);
  v24 = v11;
  CFDictionaryGetKeysAndValues(v11, v14, v14);
  if (Count >= 1)
  {
    do
    {
      v18 = *v14++;
      v17 = v18;
      v19 = *v16;
      Value = CFDictionaryGetValue(Mutable, v18);
      if (Value)
      {
        v21 = Value;
        v22 = 0x20000;
        if (v3 < 0x20000)
        {
          v22 = v3;
        }

        if (v3)
        {
          v3 = v22;
        }

        else
        {
          v3 = 1024;
        }

        v26[0] = v19;
        v26[1] = v3;
        v27 = v25;
        v28 = 0;
        v29 = 0;
        v23 = v32;
        bzero(v32, 0x2000uLL);
        if (v3 >= 0x401)
        {
          v23 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
        }

        v29 = v23;
        SIValueSet<unsigned long long>::_SIValueSetInnerIterate(v21 + 56, *(v21 + 2), *(v21 + 6), oids_for_bundle_callback, v26, 512);
        if (v28)
        {
          (*(v27 + 16))(v27, v26[0], v29);
          v28 = 0;
        }

        if (v29 != v32)
        {
          free(v29);
        }

        CFDictionaryRemoveValue(Mutable, v17);
      }

      ++v16;
      --Count;
    }

    while (Count);
  }

  CFRelease(v24);
  CFRelease(Mutable);
}

uint64_t si_activity_journal_playback(const char *a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  result = open(a1, 0);
  if (result != -1)
  {
    v4 = result;
    v5 = lseek(result, 0, 2);
    v6 = mmap(0, v5, 1, 1, v4, 0);
    if (v6 != -1)
    {
      v7 = v6;
      v97 = 0;
      v95 = 0u;
      v96 = 0u;
      *__str = 0u;
      v94 = 0u;
      if (v5 >= 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = MEMORY[0x1E69E9848];
        do
        {
          while (2)
          {
            v11 = v8 + 1;
            v12 = &v7[v8];
            v13 = v7[v8];
            if (v7[v8] < 0)
            {
              if (v13 > 0xBF)
              {
                if (v13 > 0xDF)
                {
                  if (v13 > 0xEF)
                  {
                    v13 = *&v7[v11];
                    v8 += 5;
                  }

                  else
                  {
                    v13 = ((v13 & 0xF) << 24) | (v7[v11] << 16) | (v12[2] << 8) | v12[3];
                    v8 += 4;
                  }
                }

                else
                {
                  v13 = ((v13 & 0x1F) << 16) | (v7[v11] << 8) | v12[2];
                  v8 += 3;
                }
              }

              else
              {
                v8 += 2;
                v13 = v7[v11] | ((v13 & 0x3F) << 8);
              }
            }

            else
            {
              ++v8;
            }

            LODWORD(v88) = v13;
            if (v13)
            {
              v87 = v8;
              v14 = v13 >> 1;
              LODWORD(v88) = v13 >> 1;
              v9 = 0;
              switch(v13 >> 1)
              {
                case 1u:
                case 2u:
                case 3u:
                case 0x21u:
                case 0x22u:
                case 0x25u:
                case 0x26u:
                case 0x27u:
                  HIDWORD(v88) = 0;
                  v15 = v8 + 1;
                  v16 = &v7[v8];
                  v17 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v17 > 0xBF)
                    {
                      if (v17 > 0xDF)
                      {
                        if (v17 > 0xEF)
                        {
                          v17 = *&v7[v15];
                          v15 = v8 + 5;
                        }

                        else
                        {
                          v17 = ((v17 & 0xF) << 24) | (v7[v15] << 16) | (v16[2] << 8) | v16[3];
                          v15 = v8 + 4;
                        }
                      }

                      else
                      {
                        v17 = ((v17 & 0x1F) << 16) | (v7[v15] << 8) | v16[2];
                        v15 = v8 + 3;
                      }
                    }

                    else
                    {
                      v18 = v7[v15] | ((v17 & 0x3F) << 8);
                      v15 = v8 + 2;
                      v17 = v18;
                    }
                  }

                  v87 = v15;
                  DWORD2(v89) = v17;
                  *&v90 = v2_readVInt64(v7, &v87);
                  v66 = v87 + 1;
                  v67 = &v7[v87];
                  v68 = v7[v87];
                  if (v7[v87] < 0)
                  {
                    if (v68 > 0xBF)
                    {
                      if (v68 > 0xDF)
                      {
                        if (v68 > 0xEF)
                        {
                          v68 = *&v7[v66];
                          v66 = v87 + 5;
                        }

                        else
                        {
                          v68 = ((v68 & 0xF) << 24) | (v7[v66] << 16) | (v67[2] << 8) | v67[3];
                          v66 = v87 + 4;
                        }
                      }

                      else
                      {
                        v68 = ((v68 & 0x1F) << 16) | (v7[v66] << 8) | v67[2];
                        v66 = v87 + 3;
                      }
                    }

                    else
                    {
                      v69 = v7[v66] | ((v68 & 0x3F) << 8);
                      v66 = v87 + 2;
                      v68 = v69;
                    }
                  }

                  DWORD2(v90) = v68;
                  v70 = v66 + 1;
                  v71 = &v7[v66];
                  v72 = v7[v66];
                  if (v7[v66] < 0)
                  {
                    if (v72 > 0xBF)
                    {
                      if (v72 > 0xDF)
                      {
                        if (v72 > 0xEF)
                        {
                          v72 = *&v7[v70];
                          v70 = v66 + 5;
                        }

                        else
                        {
                          v72 = ((v72 & 0xF) << 24) | (v7[v70] << 16) | (v71[2] << 8) | v71[3];
                          v70 = v66 + 4;
                        }
                      }

                      else
                      {
                        v72 = ((v72 & 0x1F) << 16) | (v7[v70] << 8) | v71[2];
                        v70 = v66 + 3;
                      }
                    }

                    else
                    {
                      v73 = v7[v70] | ((v72 & 0x3F) << 8);
                      v70 = v66 + 2;
                      v72 = v73;
                    }
                  }

                  HIDWORD(v90) = v72;
                  v74 = v70 + 1;
                  v75 = &v7[v70];
                  v76 = v7[v70];
                  if (v7[v70] < 0)
                  {
                    if (v76 > 0xBF)
                    {
                      if (v76 > 0xDF)
                      {
                        if (v76 > 0xEF)
                        {
                          v76 = *&v7[v74];
                          v74 = v70 + 5;
                        }

                        else
                        {
                          v76 = ((v76 & 0xF) << 24) | (v7[v74] << 16) | (v75[2] << 8) | v75[3];
                          v74 = v70 + 4;
                        }
                      }

                      else
                      {
                        v76 = ((v76 & 0x1F) << 16) | (v7[v74] << 8) | v75[2];
                        v74 = v70 + 3;
                      }
                    }

                    else
                    {
                      v77 = v7[v74] | ((v76 & 0x3F) << 8);
                      v74 = v70 + 2;
                      v76 = v77;
                    }
                  }

                  v87 = v74;
                  LODWORD(v91) = v76;
                  if (v14 <= 0x27 && ((1 << v14) & 0xC600000000) != 0)
                  {
                    *(&v91 + 1) = v2_readVInt64(v7, &v87);
                    VInt64 = v2_readVInt64(v7, &v87);
                  }

                  else
                  {
                    VInt64 = 0;
                    *(&v91 + 1) = 0;
                  }

                  *&v92 = VInt64;
                  v9 = 0;
                  if (v14 - 37 > 2)
                  {
                    *(&v92 + 1) = 0;
                  }

                  else
                  {
                    *(&v92 + 1) = v2_readVInt64(v7, &v87);
                  }

                  goto LABEL_121;
                case 4u:
                case 5u:
                case 7u:
                case 8u:
                case 0x23u:
                case 0x24u:
                  v9 = 0;
                  *(&v89 + 1) = v2_readVInt64(v7, &v87);
                  goto LABEL_121;
                case 6u:
                case 0x28u:
                  *(&v89 + 1) = v2_readVInt64(v7, &v87);
                  *&v90 = v2_readVInt64(v7, &v87);
                  v9 = v14 == 6;
                  goto LABEL_121;
                case 9u:
                  v9 = 0;
                  HIDWORD(v88) = v2_readVInt64(v7, &v87);
                  goto LABEL_121;
                case 0xAu:
                  v45 = v8 + 1;
                  v46 = &v7[v8];
                  v47 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v47 > 0xBF)
                    {
                      if (v47 > 0xDF)
                      {
                        if (v47 > 0xEF)
                        {
                          v47 = *&v7[v45];
                          v45 = v8 + 5;
                        }

                        else
                        {
                          v47 = ((v47 & 0xF) << 24) | (v7[v45] << 16) | (v46[2] << 8) | v46[3];
                          v45 = v8 + 4;
                        }
                      }

                      else
                      {
                        v47 = ((v47 & 0x1F) << 16) | (v7[v45] << 8) | v46[2];
                        v45 = v8 + 3;
                      }
                    }

                    else
                    {
                      v48 = v7[v45] | ((v47 & 0x3F) << 8);
                      v45 = v8 + 2;
                      v47 = v48;
                    }
                  }

                  v9 = 0;
                  v87 = v45;
                  DWORD1(v88) = v47;
                  goto LABEL_121;
                case 0xBu:
                case 0xCu:
                case 0xDu:
                case 0xEu:
                case 0xFu:
                case 0x3Cu:
                case 0x3Du:
                  v19 = v8 + 1;
                  v20 = &v7[v8];
                  v21 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v21 > 0xBF)
                    {
                      if (v21 > 0xDF)
                      {
                        if (v21 > 0xEF)
                        {
                          v21 = *&v7[v19];
                          v19 = v8 + 5;
                        }

                        else
                        {
                          v21 = ((v21 & 0xF) << 24) | (v7[v19] << 16) | (v20[2] << 8) | v20[3];
                          v19 = v8 + 4;
                        }
                      }

                      else
                      {
                        v21 = ((v21 & 0x1F) << 16) | (v7[v19] << 8) | v20[2];
                        v19 = v8 + 3;
                      }
                    }

                    else
                    {
                      v22 = v7[v19] | ((v21 & 0x3F) << 8);
                      v19 = v8 + 2;
                      v21 = v22;
                    }
                  }

                  v9 = 0;
                  v87 = v19;
                  v79 = v21;
                  v80 = DWORD1(v88);
                  goto LABEL_119;
                case 0x10u:
                  v53 = v8 + 1;
                  v54 = &v7[v8];
                  v55 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v55 > 0xBF)
                    {
                      if (v55 > 0xDF)
                      {
                        if (v55 > 0xEF)
                        {
                          v55 = *&v7[v53];
                          v53 = v8 + 5;
                        }

                        else
                        {
                          v55 = ((v55 & 0xF) << 24) | (v7[v53] << 16) | (v54[2] << 8) | v54[3];
                          v53 = v8 + 4;
                        }
                      }

                      else
                      {
                        v55 = ((v55 & 0x1F) << 16) | (v7[v53] << 8) | v54[2];
                        v53 = v8 + 3;
                      }
                    }

                    else
                    {
                      v56 = v7[v53] | ((v55 & 0x3F) << 8);
                      v53 = v8 + 2;
                      v55 = v56;
                    }
                  }

                  v9 = 0;
                  v87 = v53;
                  DWORD2(v88) = v55;
                  goto LABEL_121;
                case 0x11u:
                case 0x12u:
                case 0x13u:
                case 0x36u:
                  v23 = v8 + 1;
                  v24 = &v7[v8];
                  v25 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v25 > 0xBF)
                    {
                      if (v25 > 0xDF)
                      {
                        if (v25 > 0xEF)
                        {
                          v25 = *&v7[v23];
                          v23 = v8 + 5;
                        }

                        else
                        {
                          v25 = ((v25 & 0xF) << 24) | (v7[v23] << 16) | (v24[2] << 8) | v24[3];
                          v23 = v8 + 4;
                        }
                      }

                      else
                      {
                        v25 = ((v25 & 0x1F) << 16) | (v7[v23] << 8) | v24[2];
                        v23 = v8 + 3;
                      }
                    }

                    else
                    {
                      v26 = v7[v23] | ((v25 & 0x3F) << 8);
                      v23 = v8 + 2;
                      v25 = v26;
                    }
                  }

                  v9 = 0;
                  v87 = v23;
                  v79 = v25;
                  v80 = DWORD2(v88);
LABEL_119:
                  v42 = v79 | (v80 << 32);
                  goto LABEL_120;
                case 0x14u:
                  v57 = v8 + 1;
                  v58 = &v7[v8];
                  v59 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v59 > 0xBF)
                    {
                      if (v59 > 0xDF)
                      {
                        if (v59 > 0xEF)
                        {
                          v59 = *&v7[v57];
                          v57 = v8 + 5;
                        }

                        else
                        {
                          v59 = ((v59 & 0xF) << 24) | (v7[v57] << 16) | (v58[2] << 8) | v58[3];
                          v57 = v8 + 4;
                        }
                      }

                      else
                      {
                        v59 = ((v59 & 0x1F) << 16) | (v7[v57] << 8) | v58[2];
                        v57 = v8 + 3;
                      }
                    }

                    else
                    {
                      v60 = v7[v57] | ((v59 & 0x3F) << 8);
                      v57 = v8 + 2;
                      v59 = v60;
                    }
                  }

                  v87 = v57;
                  DWORD2(v89) = v59;
                  v9 = 0;
                  *&v90 = v2_readVInt64(v7, &v87);
                  goto LABEL_121;
                case 0x15u:
                case 0x16u:
                  v35 = v8 + 1;
                  v36 = &v7[v8];
                  v37 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v37 > 0xBF)
                    {
                      if (v37 > 0xDF)
                      {
                        if (v37 > 0xEF)
                        {
                          v37 = *&v7[v35];
                          v35 = v8 + 5;
                        }

                        else
                        {
                          v37 = ((v37 & 0xF) << 24) | (v7[v35] << 16) | (v36[2] << 8) | v36[3];
                          v35 = v8 + 4;
                        }
                      }

                      else
                      {
                        v37 = ((v37 & 0x1F) << 16) | (v7[v35] << 8) | v36[2];
                        v35 = v8 + 3;
                      }
                    }

                    else
                    {
                      v38 = v7[v35] | ((v37 & 0x3F) << 8);
                      v35 = v8 + 2;
                      v37 = v38;
                    }
                  }

                  DWORD2(v89) = v37;
                  v81 = v35 + 1;
                  v82 = &v7[v35];
                  v83 = v7[v35];
                  if (v7[v35] < 0)
                  {
                    if (v83 > 0xBF)
                    {
                      if (v83 > 0xDF)
                      {
                        if (v83 > 0xEF)
                        {
                          v83 = *&v7[v81];
                          v81 = v35 + 5;
                        }

                        else
                        {
                          v83 = ((v83 & 0xF) << 24) | (v7[v81] << 16) | (v82[2] << 8) | v82[3];
                          v81 = v35 + 4;
                        }
                      }

                      else
                      {
                        v83 = ((v83 & 0x1F) << 16) | (v7[v81] << 8) | v82[2];
                        v81 = v35 + 3;
                      }
                    }

                    else
                    {
                      v84 = v7[v81] | ((v83 & 0x3F) << 8);
                      v81 = v35 + 2;
                      v83 = v84;
                    }
                  }

                  v9 = 0;
                  v87 = v81;
                  HIDWORD(v89) = v83;
                  goto LABEL_121;
                case 0x17u:
                  v61 = v8 + 1;
                  v62 = &v7[v8];
                  v63 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v63 > 0xBF)
                    {
                      if (v63 > 0xDF)
                      {
                        if (v63 > 0xEF)
                        {
                          v63 = *&v7[v61];
                          v61 = v8 + 5;
                        }

                        else
                        {
                          v63 = ((v63 & 0xF) << 24) | (v7[v61] << 16) | (v62[2] << 8) | v62[3];
                          v61 = v8 + 4;
                        }
                      }

                      else
                      {
                        v63 = ((v63 & 0x1F) << 16) | (v7[v61] << 8) | v62[2];
                        v61 = v8 + 3;
                      }
                    }

                    else
                    {
                      v64 = v7[v61] | ((v63 & 0x3F) << 8);
                      v61 = v8 + 2;
                      v63 = v64;
                    }
                  }

                  DWORD2(v90) = v63;
                  *&v90 = &v7[v61];
                  DWORD2(v89) = strlen(&v7[v61]);
                  v87 = v61 + DWORD2(v89) + 1;
                  v85 = MurmurHash3_x86_32(&v7[v61], DWORD2(v89) + 1);
                  v9 = 0;
                  HIDWORD(v89) = v85 & 0x7FFFFFFF;
                  goto LABEL_121;
                case 0x18u:
                case 0x19u:
                case 0x34u:
                case 0x35u:
                  v27 = v8 + 1;
                  v28 = &v7[v8];
                  v29 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v29 > 0xBF)
                    {
                      if (v29 > 0xDF)
                      {
                        if (v29 > 0xEF)
                        {
                          v29 = *&v7[v27];
                          v27 = v8 + 5;
                        }

                        else
                        {
                          v29 = ((v29 & 0xF) << 24) | (v7[v27] << 16) | (v28[2] << 8) | v28[3];
                          v27 = v8 + 4;
                        }
                      }

                      else
                      {
                        v29 = ((v29 & 0x1F) << 16) | (v7[v27] << 8) | v28[2];
                        v27 = v8 + 3;
                      }
                    }

                    else
                    {
                      v30 = v7[v27] | ((v29 & 0x3F) << 8);
                      v27 = v8 + 2;
                      v29 = v30;
                    }
                  }

                  v9 = 0;
                  v87 = v27;
                  DWORD2(v89) = v29;
                  goto LABEL_121;
                case 0x1Au:
                case 0x1Bu:
                  goto LABEL_121;
                case 0x1Cu:
                case 0x1Eu:
                  *&v90 = &v7[v8];
                  DWORD2(v90) = strlen(&v7[v8]);
                  v40 = DWORD2(v90) + 1;
                  v87 = v8 + DWORD2(v90) + 1;
                  *(&v89 + 1) = DWORD1(v88) << 32;
                  v39 = &v7[v8];
                  goto LABEL_41;
                case 0x1Du:
                case 0x1Fu:
                  v86 = v2_readVInt64(v7, &v87);
                  snprintf(__str, 0x41uLL, "%lld", v86);
                  goto LABEL_40;
                case 0x20u:
                  v9 = 0;
                  *&v89 = v2_readVInt64(v7, &v87);
                  goto LABEL_121;
                case 0x2Du:
                case 0x2Eu:
                  v34 = v2_readVInt64(v7, &v87);
                  BYTE12(v90) = v34 & 1;
                  v32 = v34 >> 1;
                  goto LABEL_35;
                case 0x2Fu:
                case 0x30u:
                case 0x31u:
                  v31 = v2_readVInt64(v7, &v87);
                  BYTE12(v90) = v31 & 1;
                  BYTE13(v90) = (v31 & 2) != 0;
                  BYTE14(v90) = -1;
                  v32 = v31 >> 2;
                  goto LABEL_35;
                case 0x32u:
                case 0x33u:
                  v33 = v2_readVInt64(v7, &v87);
                  BYTE12(v90) = v33 & 1;
                  BYTE13(v90) = (v33 & 2) != 0;
                  BYTE14(v90) = (v33 >> 2) & 7;
                  v32 = v33 >> 5;
LABEL_35:
                  snprintf(__str, 0x41uLL, "%lld", v32);
LABEL_40:
                  *&v90 = __str;
                  DWORD2(v90) = strlen(__str);
                  *(&v89 + 1) = DWORD1(v88) << 32;
                  v39 = __str;
                  v40 = DWORD2(v90) + 1;
LABEL_41:
                  v41 = identifierHash(v39, v40);
                  v9 = 0;
                  v42 = *(&v89 + 1) | v41;
LABEL_120:
                  *(&v89 + 1) = v42;
                  goto LABEL_121;
                case 0x37u:
                  *(&v89 + 1) = v2_readVInt64(v7, &v87);
                  *&v90 = v2_readVInt64(v7, &v87);
                  v9 = 0;
                  *(&v90 + 1) = v2_readVInt64(v7, &v87);
                  goto LABEL_121;
                case 0x38u:
                  v49 = v8 + 1;
                  v50 = &v7[v8];
                  v51 = v7[v8];
                  if (v7[v8] < 0)
                  {
                    if (v51 > 0xBF)
                    {
                      if (v51 > 0xDF)
                      {
                        if (v51 > 0xEF)
                        {
                          v51 = *&v7[v49];
                          v49 = v8 + 5;
                        }

                        else
                        {
                          v51 = ((v51 & 0xF) << 24) | (v7[v49] << 16) | (v50[2] << 8) | v50[3];
                          v49 = v8 + 4;
                        }
                      }

                      else
                      {
                        v51 = ((v51 & 0x1F) << 16) | (v7[v49] << 8) | v50[2];
                        v49 = v8 + 3;
                      }
                    }

                    else
                    {
                      v52 = v7[v49] | ((v51 & 0x3F) << 8);
                      v49 = v8 + 2;
                      v51 = v52;
                    }
                  }

                  v87 = v49;
                  DWORD2(v89) = v51;
                  *&v90 = v2_readVInt64(v7, &v87);
                  *(&v90 + 1) = &v7[v87];
                  v9 = 0;
                  v65 = v87 + strlen(&v7[v87]);
                  goto LABEL_161;
                case 0x39u:
                  *(&v89 + 1) = &v7[v8];
                  v9 = 0;
                  v65 = v8 + strlen(&v7[v8]);
LABEL_161:
                  v44 = v65 + 1;
                  goto LABEL_162;
                case 0x3Au:
                  BYTE8(v89) = v2_readVInt64(v7, &v87);
                  WORD5(v89) = v2_readVInt64(v7, &v87);
                  *&v90 = v2_readVInt64(v7, &v87);
                  *(&v90 + 1) = v2_readVInt64(v7, &v87);
                  LODWORD(v91) = v2_readVInt64(v7, &v87);
                  v43 = v2_readVInt64(v7, &v87);
                  DWORD1(v91) = v43;
                  v9 = 0;
                  if (!v43)
                  {
                    goto LABEL_121;
                  }

                  *(&v91 + 1) = &v7[v87];
                  v44 = v87 + (v43 + 1);
LABEL_162:
                  v87 = v44;
LABEL_121:
                  (*(a2 + 16))(a2, &v88);
                  v8 = v87;
                  if (v87 >= v5)
                  {
                    goto LABEL_170;
                  }

                  continue;
                case 0x3Bu:
                  DWORD2(v89) = v2_readVInt64(v7, &v87);
                  HIDWORD(v89) = v2_readVInt64(v7, &v87);
                  LODWORD(v90) = v2_readVInt64(v7, &v87);
                  v9 = 0;
                  DWORD1(v90) = v2_readVInt64(v7, &v87);
                  goto LABEL_121;
                default:
                  fprintf(*v10, "### unknown type %d at offset %ld\n", v13 >> 1, v8);
                  goto LABEL_170;
              }
            }

            break;
          }

          fprintf(*v10, "### invalid type %d at offset %ld (during activity journal reset, was previous entry kSIActivitySyncError? %d)\n", v13, v8, v9);
        }

        while (v8 < v5);
      }

LABEL_170:
      munmap(v7, v5);
    }

    return close(v4);
  }

  return result;
}

uint64_t oids_for_bundle_callback(void *__src, uint64_t a2, void *a3)
{
  v6 = a3[3];
  do
  {
    v7 = v6 + a2;
    v8 = a3[1];
    v9 = v8 - v6;
    if (v6 + a2 > v8)
    {
      v10 = v8 - v6;
    }

    else
    {
      v10 = a2;
    }

    memcpy((a3[4] + 8 * v6), __src, 8 * v10);
    v6 = a3[3] + v10;
    a3[3] = v6;
    if (v6 == a3[1])
    {
      (*(a3[2] + 16))();
      v6 = 0;
      a3[3] = 0;
    }

    a2 -= v9;
  }

  while (v7 > v8 && a2 != 0);
  return 0;
}

uint64_t identifierHash(char *__str, int a2)
{
  if (a2 > 8 || ((__endptr = 0, result = strtol(__str, &__endptr, 10), !*__endptr) ? (v5 = result == 0) : (v5 = 1), v5))
  {

    return MurmurHash3_x86_32(__str, a2);
  }

  return result;
}

void _SIActivityDump(const char *a1, FILE *a2)
{
  v4 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
  v5 = CFTimeZoneCopySystem();
  CFCalendarSetTimeZone(v4, v5);
  CFRelease(v5);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3800000000;
  v14 = 0u;
  v15 = 0u;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___SIActivityDump_block_invoke;
  v6[3] = &unk_1E8197590;
  v6[6] = a2;
  v6[7] = v4;
  v6[4] = &v11;
  v6[5] = &v7;
  si_activity_journal_playback(a1, v6);
  write_timeline((v12 + 3));
  fputs(v8[3], a2);
  fflush(a2);
  CFRelease(v4);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

double write_timeline(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((write_timeline_init & 1) == 0)
  {
    write_timeline_offset += sprintf(&write_timeline_result[write_timeline_offset], "\n%-20s %-20s %-15s|%-15s|%-15s\n", "Start Time", "End Time", "Add/Update", "Mail Add/Update", "Delete");
    write_timeline_init = 1;
  }

  if (*(a1 + 16) || *(a1 + 20) || *(a1 + 24))
  {
    if (*a1 == 0.0 || (v2 = *(a1 + 8), v2 == 0.0) || (result = v2 - *a1, result >= 300.0))
    {
      v4 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
      v5 = CFTimeZoneCopySystem();
      CFCalendarSetTimeZone(v4, v5);
      CFRelease(v5);
      memset(v10, 0, sizeof(v10));
      memset(v9, 0, sizeof(v9));
      if (*a1 == 0.0)
      {
        date_string = "Unknown";
      }

      else
      {
        date_string = get_date_string(v4, v10, *a1);
      }

      v7 = *(a1 + 8);
      if (v7 == 0.0)
      {
        v8 = "Unknown";
      }

      else
      {
        v8 = get_date_string(v4, v9, v7);
      }

      write_timeline_offset += sprintf(&write_timeline_result[write_timeline_offset], "%-20s %-20s %15d|%15d|%15d\n", date_string, v8, *(a1 + 16), *(a1 + 20), *(a1 + 24));
      result = *(a1 + 8);
      *a1 = result;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    result = *(a1 + 8);
    *a1 = result;
    *(a1 + 8) = 0;
  }

  return result;
}

const char *get_date_string(__CFCalendar *a1, char *a2, CFAbsoluteTime a3)
{
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if (!CFCalendarDecomposeAbsoluteTime(a1, a3, "yMdHms", &v7 + 4, &v7, &v6 + 4, &v6, &v5 + 4, &v5))
  {
    return "";
  }

  snprintf(a2, 0x100uLL, "%04d-%02d-%02d %02d:%02d:%02d", HIDWORD(v7), v7, HIDWORD(v6), v6, HIDWORD(v5), v5);
  return a2;
}

BOOL _DocIDRemappingContextMatchAddress(uint64_t *a1, unint64_t a2)
{
  if (*a1 < 1)
  {
    return 0;
  }

  else
  {
    v2 = (a1[1] + 16);
    v3 = 1;
    v4 = *a1;
    v5 = 1;
    do
    {
      v6 = *v2;
      v7 = *v2 == -1 || v6 > a2;
      if (!v7 && v6 + 4 * *(v2 - 2) > a2)
      {
        break;
      }

      v5 = v3++ < *a1;
      v2 += 4;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t _CIMetaInfoSync(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = 5;
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  if (fd_pwrite(*(a1 + 8), &v10, 0x1CuLL, 0) != 28)
  {
    v5 = *__error();
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0xFFFFFFFFLL;
    }

    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315650;
    v14 = "_CIMetaInfoSync";
    v15 = 1024;
    v16 = 175;
    v17 = 1024;
    v18 = v4;
    v8 = "%s:%d: write err: %d";
    goto LABEL_13;
  }

  if (fd_sync(*(a1 + 8), a2) == -1)
  {
    v4 = *__error();
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      *__error() = v6;
      return v4;
    }

    *buf = 136315650;
    v14 = "_CIMetaInfoSync";
    v15 = 1024;
    v16 = 179;
    v17 = 1024;
    v18 = v4;
    v8 = "%s:%d: sync err: %d";
LABEL_13:
    _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x18u);
    goto LABEL_10;
  }

  return 0;
}

uint64_t CIMetaInfoCreateWithPrefix(int a1, uint64_t a2, unsigned int a3, int a4, int a5, const char *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  bzero(v43, 0x400uLL);
  *a2 = a1;
  *(a2 + 16) = -1;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
  *(a2 + 84) = versionTable[a3];
  *(a2 + 92) = a5;
  pthread_once(&sContentIndexInitOnce, _ContentIndexInit);
  bzero(__str, 0x400uLL);
  v12 = "indexState";
  if (a6)
  {
    v12 = __str;
    snprintf(__str, 0x400uLL, "%s.%s", a6, "indexState");
  }

  if (a4)
  {
    v13 = fd_create_protected(a1, v12, 0, 3u);
    if (v13)
    {
      v14 = v13;
      v35 = 0;
      v15 = _fd_acquire_fd(v13, &v35);
      if (v15 != -1)
      {
        v16 = v15;
        v17 = *__error();
        v18 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v27 = fd_realpath(*(a2 + 8), v43);
          v37 = "CIMetaInfoCreateWithPrefix";
          v28 = "";
          *buf = 136315650;
          if (v27)
          {
            v28 = v27;
          }

          v38 = 1024;
          v39 = 240;
          v40 = 2080;
          v41[0] = v28;
          _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: Tried to create index when index already existed %s", buf, 0x1Cu);
        }

        *__error() = v17;
        _fd_release_fd(v14, v16, 0, v35);
        fd_release(v14);
        v19 = 0xFFFFFFFFLL;
        goto LABEL_12;
      }

      fd_release(v14);
    }
  }

  v20 = fd_create_protected(a1, v12, 536872450, 3u);
  *(a2 + 8) = v20;
  v21 = _fd_acquire_fd(v20, (a2 + 24));
  *(a2 + 16) = v21;
  v19 = 0xFFFFFFFFLL;
  if (!*(a2 + 8) || v21 == -1 || (v19 = _CIMetaInfoSync(a2, 0), v19))
  {
LABEL_12:
    CIMetaInfoClose(a2);
    return v19;
  }

  if (flock(*(a2 + 16), 6) != -1)
  {
    return 0;
  }

  v23 = *__error();
  v24 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v29 = *__error();
    v30 = fd_realpath(*(a2 + 8), v43);
    *buf = 136315906;
    v31 = "";
    v37 = "CIMetaInfoCreateWithPrefix";
    v39 = 262;
    v38 = 1024;
    if (v30)
    {
      v31 = v30;
    }

    v40 = 1024;
    LODWORD(v41[0]) = v29;
    WORD2(v41[0]) = 2080;
    *(v41 + 6) = v31;
    _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: flock err: %d,  %s", buf, 0x22u);
  }

  *__error() = v23;
  if (flock(*(a2 + 16), 2) != -1)
  {
    return 0;
  }

  v25 = *__error();
  v26 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v32 = *__error();
    v33 = fd_realpath(*(a2 + 8), v43);
    *buf = 136315906;
    v34 = "";
    v37 = "CIMetaInfoCreateWithPrefix";
    v39 = 264;
    v38 = 1024;
    if (v33)
    {
      v34 = v33;
    }

    v40 = 1024;
    LODWORD(v41[0]) = v32;
    WORD2(v41[0]) = 2080;
    *(v41 + 6) = v34;
    _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: flock err: %d,  %s", buf, 0x22u);
  }

  v19 = 0;
  *__error() = v25;
  return v19;
}

void CIMetaInfoClose(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    flock(v2, 8);
    _fd_release_fd(*(a1 + 8), *(a1 + 16), 0, *(a1 + 24));
    *(a1 + 16) = -1;
  }

  fd_release(*(a1 + 8));
  *(a1 + 8) = 0;
}

void _ContentIndexInit()
{
  v28 = *MEMORY[0x1E69E9840];
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, *MEMORY[0x1E695E1E8]);
    if (Value)
    {
      Copy = CFStringCreateCopy(0, Value);
    }

    else
    {
      Copy = 0;
    }

    CFRelease(v1);
  }

  else
  {
    Copy = 0;
  }

  *buffer = 0u;
  v27 = 0u;
  if (Copy)
  {
    v4 = Copy;
  }

  else
  {
    v4 = &stru_1F4284FD0;
  }

  if (!CFStringGetCString(&stru_1F4284FD0, buffer, 32, 0x8000100u))
  {
    buffer[0] = 0;
  }

  buildVersionCStr = strdup(buffer);
  if (!CFStringGetCString(v4, buffer, 32, 0x8000100u))
  {
    buffer[0] = 0;
  }

  sysVersionCStr = strdup(buffer);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    mainPort = 0;
    if (!IOMasterPort(0, &mainPort))
    {
      v8 = IOBSDNameMatching(mainPort, 0, "en0");
      if (v8)
      {
        v9 = v8;
        v10 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(v10, @"IOPrimaryInterface", *MEMORY[0x1E695E4D0]);
          v22 = v11;
          CFDictionarySetValue(v9, @"IOPropertyMatch", v11);
          existing = 0;
          if (!IOServiceGetMatchingServices(mainPort, v9, &existing))
          {
            v12 = existing;
            if (existing)
            {
              while (1)
              {
                v13 = IOIteratorNext(v12);
                if (!v13)
                {
                  break;
                }

                v14 = v13;
                CFArrayRemoveAllValues(v7);
                parent = 0;
                if (!IORegistryEntryGetParentEntry(v14, "IOService", &parent))
                {
                  CFProperty = IORegistryEntryCreateCFProperty(parent, @"IOMACAddress", v5, 0);
                  if (CFProperty)
                  {
                    v16 = CFProperty;
                    BytePtr = CFDataGetBytePtr(CFProperty);
                    for (i = 0; CFDataGetLength(v16) > i; ++i)
                    {
                      v19 = CFStringCreateWithFormat(v5, 0, @"%02x", BytePtr[i]);
                      CFArrayAppendValue(v7, v19);
                      CFRelease(v19);
                    }

                    CFRelease(v16);
                  }

                  IOObjectRelease(parent);
                }

                IOObjectRelease(v14);
                v12 = existing;
              }
            }
          }

          v20 = v22;
        }

        else
        {
          v20 = v9;
        }

        CFRelease(v20);
      }
    }

    v21 = CFStringCreateByCombiningStrings(v5, v7, @":");
    CFRelease(v7);
    if (v21)
    {
      if (!CFStringGetCString(v21, buffer, 32, 0x8000100u))
      {
        buffer[0] = 0;
      }

      CFRelease(v21);
    }
  }

  CFRelease(&stru_1F4284FD0);
  CFRelease(v4);
}

uint64_t CIMetaInfoOpenAndLock(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v55 = *MEMORY[0x1E69E9840];
  *v3 = v7;
  v9 = *(v3 + 8);
  if (v9)
  {
    fd_release(v9);
    *(v4 + 8) = 0;
  }

  bzero(v54, 0x400uLL);
  *(v4 + 16) = -1;
  *(v4 + 88) = v6;
  *(v4 + 92) = v2;
  pthread_once(&sContentIndexInitOnce, _ContentIndexInit);
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = 536870914;
  }

  v11 = fd_create_protected(v8, "indexState", v10, 3u);
  *(v4 + 8) = v11;
  if (!v11)
  {
    v14 = *__error();
    v15 = *__error();
    v16 = _SILogForLogForCategory(10);
    v17 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v16, (dword_1EBF46AF4 < 3)))
    {
      v18 = fcntl(v8, 50, v54);
      if (v54[0])
      {
        v19 = v18 < 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = "";
      if (!v19)
      {
        v20 = v54;
      }

      buf.f_bsize = 67109378;
      buf.f_iosize = v14;
      LOWORD(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 2) = v20;
      _os_log_impl(&dword_1C278D000, v16, v17, "*warn* failed to create fd_ref err: %d,  %s", &buf, 0x12u);
    }

    *__error() = v15;
    bzero(&buf, 0x400uLL);
    snprintf(&buf, 0x400uLL, "failed to create meta info fd %d", v14);
    __si_set_error_str(1, "%s:%u: %s", "ContentIndexCommon.c", 306, &buf);
    goto LABEL_27;
  }

  v12 = _fd_acquire_fd(v11, (v4 + 24));
  *(v4 + 16) = v12;
  if (v12 == -1)
  {
    v14 = *__error();
    v21 = *__error();
    v22 = _SILogForLogForCategory(10);
    v23 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v22, (dword_1EBF46AF4 < 3)))
    {
      v24 = fcntl(v8, 50, v54);
      if (v54[0])
      {
        v25 = v24 < 0;
      }

      else
      {
        v25 = 1;
      }

      v26 = "";
      if (!v25)
      {
        v26 = v54;
      }

      buf.f_bsize = 67109378;
      buf.f_iosize = v14;
      LOWORD(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 2) = v26;
      _os_log_impl(&dword_1C278D000, v22, v23, "*warn* failed to open fd_ref err: %d,  %s", &buf, 0x12u);
    }

    *__error() = v21;
    bzero(&buf, 0x400uLL);
    snprintf(&buf, 0x400uLL, "failed to open meta info %d", v14);
    __si_set_error_str(1, "%s:%u: %s", "ContentIndexCommon.c", 317, &buf);
LABEL_27:
    *__error() = v14;
    v13 = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  if ((v6 & 1) == 0 && flock(v12, 6) == -1)
  {
    accurate_realpath(".", v54);
    v28 = *__error();
    v29 = _SILogForLogForCategory(10);
    v30 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v29, (dword_1EBF46AF4 < 3)))
    {
      v31 = *__error();
      v32 = fd_realpath(*(v4 + 8), v54);
      v33 = "";
      if (v32)
      {
        v33 = v32;
      }

      buf.f_bsize = 67109378;
      buf.f_iosize = v31;
      LOWORD(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 2) = v33;
      _os_log_impl(&dword_1C278D000, v29, v30, "*warn* flock err: %d,  %s", &buf, 0x12u);
    }

    *__error() = v28;
    bzero(&buf, 0x878uLL);
    if (fstatfs(*(v4 + 16), &buf))
    {
      v34 = *__error();
      v35 = *__error();
      v36 = _SILogForLogForCategory(10);
      v37 = dword_1EBF46AF4 < 3;
      if (os_log_type_enabled(v36, (dword_1EBF46AF4 < 3)))
      {
        *v51 = 67109120;
        v52 = v34;
        _os_log_impl(&dword_1C278D000, v36, v37, "*warn* Couldn't statfs the CIMetaInfo. errno:%d", v51, 8u);
      }

      *__error() = v35;
      bzero(v51, 0x400uLL);
      snprintf(v51, 0x400uLL, "failed to statfs meta info %d", v34);
      __si_set_error_str(1, "%s:%u: %s", "ContentIndexCommon.c", 337, v51);
      *__error() = v34;
      v13 = 4294967294;
    }

    else
    {
      v38 = *buf.f_fstypename == 1717726579 && *&buf.f_fstypename[4] == 115;
      if (v38 || (*buf.f_fstypename == 1718642273 ? (v39 = *&buf.f_fstypename[4] == 115) : (v39 = 0), v39 || *buf.f_fstypename == 7562862))
      {
        v48 = *__error();
        v49 = _SILogForLogForCategory(10);
        v50 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v49, (dword_1EBF46AF4 < 3)))
        {
          *v51 = 0;
          _os_log_impl(&dword_1C278D000, v49, v50, "*warn* Failed to acquire lock on SMB CIMetaInfo; it might already be open by another machine's mds_stores.", v51, 2u);
        }

        *__error() = v48;
        __si_set_error_str(1, "%s:%u: %s", "ContentIndexCommon.c", 346, "failed to acquire lock for meta info");
        v13 = 4294967293;
      }

      else
      {
        v40 = *__error();
        v41 = _SILogForLogForCategory(10);
        v42 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v41, (dword_1EBF46AF4 < 3)))
        {
          v43 = *(v4 + 16);
          *v51 = 67109120;
          v52 = v43;
          _os_log_impl(&dword_1C278D000, v41, v42, "*warn* Trying to acquire lock on CIMetaInfo again fd:%d", v51, 8u);
        }

        *__error() = v40;
        if (!flock(*(v4 + 16), 2))
        {
          return 0;
        }

        v44 = *__error();
        v45 = *__error();
        v46 = _SILogForLogForCategory(10);
        v47 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v46, (dword_1EBF46AF4 < 3)))
        {
          *v51 = 67109120;
          v52 = v44;
          _os_log_impl(&dword_1C278D000, v46, v47, "*warn* Failed to acquire lock on CIMetaInfo object: errno=%d", v51, 8u);
        }

        *__error() = v45;
        bzero(v51, 0x400uLL);
        snprintf(v51, 0x400uLL, "failed to flock meta info %d", v44);
        __si_set_error_str(1, "%s:%u: %s", "ContentIndexCommon.c", 357, v51);
        *__error() = v44;
        v13 = 4294967292;
      }
    }

LABEL_28:
    CIMetaInfoClose(v4);
    return v13;
  }

  return 0;
}

uint64_t CIMetaInfoRead(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (!v2 || *(a1 + 16) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v31, 0x400uLL);
  memset(v24, 0, 28);
  if (fd_pread(v2, v24, 0x1CuLL, 0) != 28)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = fd_realpath(*(a1 + 8), v31);
      v26 = "CIMetaInfoRead";
      v12 = "";
      *buf = 136315650;
      if (v11)
      {
        v12 = v11;
      }

      v27 = 1024;
      v28 = 384;
      v29 = 2080;
      v30 = v12;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: invalid generation file, resetting %s", buf, 0x1Cu);
    }

    *__error() = v9;
    return 0xFFFFFFFFLL;
  }

  if ((LODWORD(v24[0]) - 3) > 2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = HIDWORD(v24[0]);
  v6 = v24[1];
  *(a1 + 32) = HIDWORD(v24[0]);
  *(a1 + 36) = v6;
  if (v6 > v5)
  {
    v13 = __si_assert_copy_extra_332();
    v21 = v13;
    v22 = "";
    if (v13)
    {
      v22 = v13;
    }

    __message_assert_336(v13, v14, v15, v16, v17, v18, v19, v20, "ContentIndexCommon.c", 397, "metaInfo->shadowedGeneration <= metaInfo->cleanGeneration", v22);
    free(v21);
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

  result = 0;
  *(a1 + 40) = *(&v24[1] + 4);
  if (a2)
  {
    v8 = 114;
  }

  else
  {
    v8 = 102;
  }

  *(a1 + 84) = v8;
  return result;
}

void *ContentIndexListClone(__int128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
  v3 = v2;
  if (a1)
  {
    v4 = *a1;
    v2[2] = *(a1 + 2);
    *v2 = v4;
  }

  v5 = *(v2 + 3);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  *(v3 + 3) = v6;
  v7 = malloc_type_calloc(v6, 8uLL, 0x2004093837F09uLL);
  *v3 = v7;
  if (a1)
  {
    memcpy(v7, *a1, 8 * *(v3 + 3));
  }

  return v3;
}

void ContentIndexListFree(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

void ContentIndexListAppend(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4;
  if (v4 == *(a1 + 12))
  {
    v6 = 2 * v4;
    if (!v4)
    {
      v6 = 2;
    }

    *(a1 + 12) = v6;
    v7 = malloc_type_realloc(*a1, 8 * v6, 0x2004093837F09uLL);
    *a1 = v7;
    bzero(&v7[8 * v4], 8 * (*(a1 + 12) - v4));
    v5 = *(a1 + 8);
  }

  v8 = *a1;
  *(a1 + 8) = v5 + 1;
  v8[v5] = a2;
  if (*(a1 + 16) == -1)
  {
    v9 = atomic_load((a2 + 36));
    if ((v9 & 3) == 0 && (*(a2 + 15203) & 1) == 0)
    {
      *(a1 + 16) = v4;
    }
  }
}

int *ContentIndexListDump(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(0);
  v4 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v3, (gSILogLevels[0] < 3)))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *buf = 134218496;
    v16 = a1;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&dword_1C278D000, v3, v4, "*warn* indexSet:%p count:%d current:%d", buf, 0x18u);
  }

  result = __error();
  *result = v2;
  if (*(a1 + 8))
  {
    v8 = 0;
    do
    {
      v9 = *(*a1 + 8 * v8);
      v10 = *__error();
      v11 = _SILogForLogForCategory(0);
      v12 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v11, (gSILogLevels[0] < 3)))
      {
        v13 = *(v9 + 56);
        v14 = atomic_load((v9 + 36));
        *buf = 136315650;
        v16 = v9 + 15208;
        v17 = 1024;
        v18 = v13;
        v19 = 1024;
        v20 = v14;
        _os_log_impl(&dword_1C278D000, v11, v12, "*warn* \t%s id:%d flags:%x", buf, 0x18u);
      }

      result = __error();
      *result = v10;
      ++v8;
    }

    while (v8 < *(a1 + 8));
  }

  return result;
}

uint64_t ContentIndexCreateNew(uint64_t a1, const __CFString *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, const void *a10, int a11)
{
  pthread_once(&sContentIndexInitOnce, _ContentIndexInit);
  if (a8)
  {
    v18 = _CICreateNew(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  else
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "Creating index without vector store", buf, 2u);
    }

    *__error() = v19;
    v18 = _CICreateNew(a1, a2, a3, a4, a5, a6, a7, 0, a9, a10, a11);
  }

  v21 = v18;
  if (v18)
  {
    v24 = 0;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v26 = 0u;
    v30[2] = 0;
    v31 = v18;
    v30[0] = &v31;
    v30[1] = 0x100000001;
    _ContentIndexSyncIndexBulk(0, v30, 0, 0, 1, buf, &v24, 0, 0);
  }

  return v21;
}

uint64_t ContentIndexGetVersionForDirectory(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", "0.", "indexHead");
  v2 = openat(a1, __str, 0, 0);
  if (v2 == -1)
  {
    __error();
    return 0xFFFFFFFFLL;
  }

  else
  {
    v3 = v2;
    __buf = -1;
    while (1)
    {
      v4 = pread(v3, &__buf, 4uLL, 0);
      v5 = g_prot_error_callback;
      if (v4 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v7 = __error();
      if (((*(v5 + 16))(v5, v3, *v7, 4) & 1) == 0)
      {
        v8 = 0xFFFFFFFFLL;
        goto LABEL_13;
      }
    }

    if (v4 == 4)
    {
      v8 = __buf;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }

LABEL_13:
    close(v3);
  }

  return v8;
}

uint64_t ContentIndexUpdateState(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v66 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  if (v15)
  {
    v26 = "live.%d.";
    snprintf(__str, 0x400uLL, "live.%d.");
  }

  else
  {
    v26 = "%d.";
    snprintf(__str, 0x400uLL, "%d.");
  }

  snprintf(v46, 0x400uLL, v26, v13);
  v28 = 0;
  *a10 = 0;
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 != 4)
      {
        return v28;
      }

      goto LABEL_11;
    }

    updated = indexUpdateHeader(v27);
    if (updated)
    {
LABEL_17:
      v28 = updated;
      goto LABEL_49;
    }

    bzero(v65, 0x400uLL);
    bzero(v64, 0x400uLL);
    v45 = 0;
    bzero(v63, 0x1000uLL);
    v44 = v63;
    snprintf(v65, 0x400uLL, "%s%s", __str, "indexHead");
    v31 = openat(v25, v65, 536870914, 0);
    if (v31 == -1)
    {
      if (*__error() != 22)
      {
        goto LABEL_48;
      }

      v31 = openat(v25, v65, 2, 0);
      if (v31 == -1)
      {
        goto LABEL_48;
      }
    }

    v32 = v31;
    while (1)
    {
      v33 = pread(v32, v63, 0x1000uLL, 0);
      v34 = g_prot_error_callback;
      if (v33 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v36 = __error();
      if (((*(v34 + 16))(v34, v32, *v36, 4) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if (v33 != 4096)
    {
LABEL_40:
      close(v32);
      v28 = 0xFFFFFFFFLL;
      goto LABEL_49;
    }

    close(v32);
    bzero(buf, 0x3D68uLL);
    if ((indexRestoreHeaderFromBuffer(buf, &v44, v23, v21, v19, 0) & 1) == 0)
    {
      v38 = *__error();
      v39 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *v48 = 136315650;
      v49 = "fullShadowIndex";
      v50 = 1024;
      v51 = 3490;
      v52 = 2080;
      v53 = __str;
      v40 = "%s:%d: Unrecoverable error: Malformed index head file (%s)";
      goto LABEL_61;
    }

    v37 = atomic_load(v62);
    snprintf(v65, 0x400uLL, "%s%s", __str, "indexGroups");
    snprintf(v64, 0x400uLL, "%s%s", __str, "shadowIndexGroups");
    if (copyFileFallback(v25, v65, v25, v64, &v45, 1, 1))
    {
      if (v17 && (snprintf(v65, 0x400uLL, "%s%s", __str, "directoryStoreFile"), snprintf(v64, 0x400uLL, "%s%s", __str, "directoryStoreFile.shadow"), (copyFileFallback(v25, v65, v25, v64, &v45, 1, 1) & 1) == 0))
      {
        v38 = *__error();
        v39 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        *v48 = 136315650;
        v49 = "fullShadowIndex";
        v50 = 1024;
        v51 = 3506;
        v52 = 2080;
        v53 = v65;
        v40 = "%s:%d: error copying (%s)";
      }

      else
      {
        if ((v37 & 2) != 0)
        {
LABEL_37:
          snprintf(v65, 0x400uLL, "%s%s", __str, "indexHead");
          snprintf(v64, 0x400uLL, "%s%s", __str, "shadowIndexHead");
          if (copyFileFallback(v25, v65, v25, v64, &v45, 1, 1))
          {
            goto LABEL_11;
          }

          v38 = *__error();
          v39 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_47;
          }

          *v48 = 136315650;
          v49 = "fullShadowIndex";
          v50 = 1024;
          v51 = 3555;
          v52 = 2080;
          v53 = v65;
          v40 = "%s:%d: error copying (%s)";
          goto LABEL_61;
        }

        snprintf(v65, 0x400uLL, "%s%s", __str, "indexTermIds");
        snprintf(v64, 0x400uLL, "%s%s", __str, "shadowIndexTermIds");
        if (copyFileFallback(v25, v65, v25, v64, &v45, 1, 1))
        {
          snprintf(v65, 0x400uLL, "%s%s", __str, "indexPositionTable");
          snprintf(v64, 0x400uLL, "%s%s", __str, "shadowIndexPositionTable");
          if (copyFileFallback(v25, v65, v25, v64, &v45, 1, 1))
          {
            snprintf(v65, 0x400uLL, "%s%s", __str, "indexDirectory");
            snprintf(v64, 0x400uLL, "%s%s", __str, "shadowIndexDirectory");
            if ((copyFileFallback(v25, v65, v25, v64, &v45, 1, 1) & 1) == 0)
            {
              v38 = *__error();
              v39 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              *v48 = 136315650;
              v49 = "fullShadowIndex";
              v50 = 1024;
              v51 = 3532;
              v52 = 2080;
              v53 = v65;
              v40 = "%s:%d: error copying (%s)";
              goto LABEL_61;
            }

            snprintf(v65, 0x400uLL, "%s%s", __str, "indexCompactDirectory");
            snprintf(v64, 0x400uLL, "%s%s", __str, "shadowIndexCompactDirectory");
            if ((copyFileFallback(v25, v65, v25, v64, &v45, 1, 1) & 1) == 0)
            {
              v38 = *__error();
              v39 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              *v48 = 136315650;
              v49 = "fullShadowIndex";
              v50 = 1024;
              v51 = 3539;
              v52 = 2080;
              v53 = v65;
              v40 = "%s:%d: error copying (%s)";
              goto LABEL_61;
            }

            snprintf(v65, 0x400uLL, "%s%s", __str, "indexArrays");
            snprintf(v64, 0x400uLL, "%s%s", __str, "shadowIndexArrays");
            if ((copyFileFallback(v25, v65, v25, v64, &v45, 1, 1) & 1) == 0)
            {
              v38 = *__error();
              v39 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              *v48 = 136315650;
              v49 = "fullShadowIndex";
              v50 = 1024;
              v51 = 3546;
              v52 = 2080;
              v53 = v65;
              v40 = "%s:%d: error copying (%s)";
              goto LABEL_61;
            }

            goto LABEL_37;
          }

          v38 = *__error();
          v39 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *v48 = 136315650;
            v49 = "fullShadowIndex";
            v50 = 1024;
            v51 = 3524;
            v52 = 2080;
            v53 = v65;
            v40 = "%s:%d: error copying (%s)";
            goto LABEL_61;
          }

LABEL_47:
          *__error() = v38;
LABEL_48:
          v28 = 0xFFFFFFFFLL;
          goto LABEL_49;
        }

        v38 = *__error();
        v39 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        *v48 = 136315650;
        v49 = "fullShadowIndex";
        v50 = 1024;
        v51 = 3516;
        v52 = 2080;
        v53 = v65;
        v40 = "%s:%d: error copying (%s)";
      }

LABEL_61:
      _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, v40, v48, 0x1Cu);
      goto LABEL_47;
    }

    v38 = *__error();
    v39 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v48 = 136315650;
      v49 = "fullShadowIndex";
      v50 = 1024;
      v51 = 3498;
      v52 = 2080;
      v53 = v65;
      v40 = "%s:%d: error copying (%s)";
      goto LABEL_61;
    }

    goto LABEL_47;
  }

  if (v11 == 1)
  {
    updated = indexUpdateHeader(v27);
    if (!updated)
    {
      if (!recoverIndex(v30))
      {
        goto LABEL_48;
      }

LABEL_11:
      v28 = indexUpdateHeader(v27);
      if (!v28)
      {
        *a10 = 4;
        return v28;
      }

      goto LABEL_49;
    }

    goto LABEL_17;
  }

  if (v11 != 2)
  {
    return v28;
  }

  v28 = indexUpdateHeader(v27);
  if (!v28)
  {
    *a10 = 2;
    return v28;
  }

LABEL_49:
  v41 = *__error();
  v42 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v55 = "_CIUpdateState";
    v56 = 1024;
    v57 = 310;
    v58 = 1024;
    v59 = v11;
    v60 = 1024;
    v61 = v28;
    _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, "%s:%d: update state (%d) failed err:%d", buf, 0x1Eu);
  }

  *__error() = v41;
  return v28;
}

uint64_t ContentIndexOpenBulk(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v287 = *MEMORY[0x1E69E9840];
  pthread_once(&sContentIndexInitOnce, _ContentIndexInit);
  if ((v19 & 0x100) != 0)
  {
    v28 = 111;
  }

  else
  {
    v28 = 95;
  }

  if ((v19 & 0x100) != 0)
  {
    v29 = 114;
  }

  else
  {
    v29 = 102;
  }

  v30 = *v27;
  if (*v17)
  {
    __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 337, "open canceled");
    return 0xFFFFFFFFLL;
  }

  v239 = v19;
  v237 = v15;
  *v15 = 0;
  *v13 = 0;
  v32 = 0x1EBF46000uLL;
  if (!*(v27 + 1))
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(10);
    v39 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v38, v39))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v38, v39, "No meta info", buf, 2u);
    }

    *__error() = v37;
    __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 347, "No meta info");
    goto LABEL_17;
  }

  if (v27[8] < v27[9])
  {
    v33 = *__error();
    v34 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v27[8];
      v36 = v27[9];
      *buf = 134218240;
      v259 = v35;
      v260 = 2048;
      v261 = v36;
      _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "invalid meta info, cleanGeneration:%ld, shadowedGeneraton:%ld", buf, 0x16u);
    }

    *__error() = v33;
    bzero(buf, 0x400uLL);
    snprintf(buf, 0x400uLL, "invalid meta info %d, %d", v27[8], v27[9]);
    __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 355, buf);
LABEL_17:
    v40 = 0;
    goto LABEL_18;
  }

  v232 = v29;
  v233 = v28;
  v224 = v13;
  v229 = v21;
  if (v25)
  {
    *(v25 + 96) = 0;
    *(v25 + 64) = 0u;
    *(v25 + 80) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *v25 = 0u;
    *(v25 + 16) = 0u;
  }

  memset(v265, 0, 255);
  bzero(v264, 0x400uLL);
  bzero(buf, 0x3D68uLL);
  v256 = 0;
  v40 = copyVolumeInfoStr(v30);
  v46 = fcntl(v30, 50, v264);
  if (v264[0])
  {
    v47 = v46 < 0;
  }

  else
  {
    v47 = 1;
  }

  if (v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = v264;
  }

  v225 = v48;
  if (!v27[8])
  {
    if ((v19 & 0x1001) == 1)
    {
      snprintf(v265, 0xFFuLL, "%d.", 0);
      v93 = createIndex(v30, v265, 0, v40, v19, 0, 0, &v256, v27[21], a10, a11, a12, v27[23]);
      if (v93)
      {
        v94 = v93;
        ContentIndexListAppend(v23, v93);
        *(v94 + 40) = 1;
        snprintf(v265, 0xFFuLL, "live.%d.", 0);
        v95 = createIndex(v30, v265, 0, v40, v19, 0, 1, &v256, v27[21], a10, a11, a12, v27[23]);
        if (v95)
        {
          v96 = v95;
          ContentIndexListAppend(v21, v95);
          *(v96 + 40) = 2;
          v31 = 1;
          goto LABEL_19;
        }

        v195 = *__error();
        v196 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
        {
          v268[0].i32[0] = 136316162;
          *(v268[0].i64 + 4) = "_CIOpenBulk";
          v268[0].i16[6] = 1024;
          *(&v268[0].i32[3] + 2) = 401;
          v268[1].i16[1] = 2080;
          *(v268[1].i64 + 4) = v225;
          v268[1].i16[6] = 2080;
          *(&v268[1].i64[1] + 6) = v265;
          v268[2].i16[3] = 1024;
          v268[2].i32[2] = -1;
          _os_log_error_impl(&dword_1C278D000, v196, OS_LOG_TYPE_ERROR, "%s:%d: Failed creating %s/%s, result:%d", v268, 0x2Cu);
        }

        *__error() = v195;
        __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 402, "create index error 1");
      }

      else
      {
        v192 = *__error();
        v193 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
        {
          v268[0].i32[0] = 136316162;
          *(v268[0].i64 + 4) = "_CIOpenBulk";
          v268[0].i16[6] = 1024;
          *(&v268[0].i32[3] + 2) = 405;
          v268[1].i16[1] = 2080;
          *(v268[1].i64 + 4) = v225;
          v268[1].i16[6] = 2080;
          *(&v268[1].i64[1] + 6) = v265;
          v268[2].i16[3] = 1024;
          v268[2].i32[2] = 0;
          _os_log_error_impl(&dword_1C278D000, v193, OS_LOG_TYPE_ERROR, "%s:%d: Failed creating %s/%s, result:%d", v268, 0x2Cu);
        }

        *__error() = v192;
        __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 407, "create index error 2");
      }

      goto LABEL_18;
    }

    __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 379, "success: no data in index, rebuilding");
    __si_set_rebuild_reason(v124, v125, "%s:%u: %s", "ContentIndex.c", 380, "no data in index");
    v121 = *__error();
    v126 = _SILogForLogForCategory(10);
    if (!os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_147;
    }

    v268[0].i64[0] = -4227858176;
    v123 = "no data in index - rebuilding, result:%d";
    v127 = v126;
    v128 = 8;
LABEL_146:
    _os_log_impl(&dword_1C278D000, v127, OS_LOG_TYPE_DEFAULT, v123, v268, v128);
    goto LABEL_147;
  }

  v238 = v17;
  v236 = v40;
  v247 = v30;
  v255 = 0;
  v231 = (v19 >> 8) & 1;
  v240 = v27;
  v230 = v23;
  v223 = v25;
  if ((v19 & 2) == 0)
  {
    v226 = 0;
    v49 = 1;
    goto LABEL_36;
  }

  v97 = 0;
  v226 = 0;
  while (1)
  {
    if (v97)
    {
      v98 = "live.%d.";
    }

    else
    {
      v98 = "%d.";
    }

    v99 = 11;
    if (!v97)
    {
      v99 = 10;
    }

    v100 = v27[v99];
    if (v100 < 1)
    {
      goto LABEL_126;
    }

    v101 = v100 + 1;
    while (1)
    {
      snprintf(v265, 0xFFuLL, v98, (v101 - 2));
      v102 = v240[21];
      bzero(v268, 0x1000uLL);
      bzero(&v281, 0x400uLL);
      bzero(buf, 0x3D68uLL);
      snprintf(&v281, 0x400uLL, "%s%s", v265, "indexHead");
      v103 = fd_create_protected(v247, &v281, 0, 3u);
      v104 = v103;
      if (!v103)
      {
        goto LABEL_121;
      }

      v105 = fd_pread(v103, v268, 0x1000uLL, 0);
      if (v105 != 4096)
      {
        break;
      }

      v248[0] = v268;
      v106 = indexRestoreFromBuffer(buf, v248, v102, v233, v232, &v255, v231);
      fd_release(v104);
      if ((v106 & 1) == 0)
      {
        goto LABEL_122;
      }

      v107 = *__error();
      v108 = _SILogForLogForCategory(10);
      v109 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v108, v109))
      {
        v268[0].i32[0] = 136315650;
        *(v268[0].i64 + 4) = v265;
        v268[0].i16[6] = 2048;
        *(&v268[0].i64[1] + 6) = v263;
        v268[1].i16[3] = 1024;
        v268[1].i32[2] = v262[9];
        _os_log_impl(&dword_1C278D000, v108, v109, "preflight index %s base:%ld count:%d", v268, 0x1Cu);
      }

      *__error() = v107;
      v110 = atomic_load(v262);
      if (v110 - 1 >= 2 && v110 != -1073623027)
      {
        if (v110 != -804450864)
        {
          v112 = *__error();
          v129 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
          {
            v268[0].i32[0] = 136315394;
            *(v268[0].i64 + 4) = v225;
            v268[0].i16[6] = 2080;
            *(&v268[0].i64[1] + 6) = v265;
            v130 = "Unclean shutdown of %s/%s; needs recovery";
            v131 = v129;
            v132 = 22;
            goto LABEL_240;
          }

          goto LABEL_241;
        }

        v226 = 1;
      }

      if (--v101 <= 1)
      {
        goto LABEL_126;
      }
    }

    if (v105 != -1)
    {
      *__error() = 22;
    }

LABEL_121:
    fd_release(v104);
LABEL_122:
    v111 = v255;
    v112 = *__error();
    v113 = _SILogForLogForCategory(10);
    v114 = os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT);
    if (v111 != 1)
    {
      break;
    }

    if (v114)
    {
      v115 = *__error();
      v268[0].i32[0] = 136315394;
      *(v268[0].i64 + 4) = v265;
      v268[0].i16[6] = 1024;
      *(&v268[0].i32[3] + 2) = v115;
      _os_log_impl(&dword_1C278D000, v113, OS_LOG_TYPE_DEFAULT, "%s invalid head (%d), will rebuild", v268, 0x12u);
    }

    *__error() = v112;
LABEL_126:
    v27 = v240;
    if (!v97)
    {
      v97 = 1;
      if ((v255 & 1) == 0)
      {
        continue;
      }
    }

    if (v255)
    {
      goto LABEL_242;
    }

    v49 = 0;
    goto LABEL_36;
  }

  if (v114)
  {
    v194 = *__error();
    v268[0].i32[0] = 136315394;
    *(v268[0].i64 + 4) = v265;
    v268[0].i16[6] = 1024;
    *(&v268[0].i32[3] + 2) = v194;
    v130 = "%s invalid head (%d), will try to recover";
    v131 = v113;
    v132 = 18;
LABEL_240:
    _os_log_impl(&dword_1C278D000, v131, OS_LOG_TYPE_DEFAULT, v130, v268, v132);
  }

LABEL_241:
  v27 = v240;
  *__error() = v112;
  if (v255)
  {
LABEL_242:
    v31 = 4294967294;
    goto LABEL_243;
  }

  v49 = 1;
LABEL_36:
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v234 = v239 & 0x1000;
  v53 = 1;
  do
  {
    v54 = v53;
    if (v52)
    {
      v55 = "live.%d.";
    }

    else
    {
      v55 = "%d.";
    }

    if (v52)
    {
      v56 = 11;
    }

    else
    {
      v56 = 10;
    }

    v57 = v27[v56];
    if (v239 & 0x1000) == 0 || (v52)
    {
      bzero(v268, 0x400uLL);
      if (v57 >= 1)
      {
        v58 = 0;
        do
        {
          snprintf(v265, 0xFFuLL, v55, v58);
          index_id = index_read_index_id(v247, v265, v268[0].i8);
          if (index_id)
          {
            ++v51;
            (*(a11 + 16))(a11, index_id);
          }

          v58 = (v58 + 1);
        }

        while (v57 != v58);
        v50 += v57;
        v27 = v240;
      }
    }

    v60 = a10;
    v53 = 0;
    v52 = 1;
  }

  while ((v54 & 1) != 0);
  v32 = 0x1EBF46000uLL;
  v61 = v238;
  if (v50 != v51)
  {
    v62 = *__error();
    v63 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v268[0].i32[0] = 136315906;
      *(v268[0].i64 + 4) = "_CIOpenBulk";
      v268[0].i16[6] = 1024;
      *(&v268[0].i32[3] + 2) = 484;
      v268[1].i16[1] = 1024;
      v268[1].i32[1] = v50;
      v268[1].i16[4] = 1024;
      *(&v268[1].i32[2] + 2) = v51;
      _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: indexes seen:%d does not match indexes with ids:%d", v268, 0x1Eu);
    }

    *__error() = v62;
  }

  v64 = v229;
  if ((v49 & 1) == 0)
  {
    v65 = *__error();
    v66 = _SILogForLogForCategory(10);
    v67 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v66, v67))
    {
      v268[0].i16[0] = 0;
      _os_log_impl(&dword_1C278D000, v66, v67, "Open index - no recovery path", v268, 2u);
    }

    v68 = __error();
    v69 = 0;
    v70 = 0;
    *v68 = v65;
    v71 = v239;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    v72 = a12;
    do
    {
      v73 = 0;
      if (v70)
      {
        v74 = "live.%d.";
      }

      else
      {
        v74 = "%d.";
      }

      if (v70)
      {
        v75 = v64;
      }

      else
      {
        v75 = v230;
      }

      if (v70)
      {
        v76 = 11;
      }

      else
      {
        v76 = 10;
      }

      if (v70)
      {
        v77 = 1;
      }

      else
      {
        v77 = v234 == 0;
      }

      if (v77)
      {
        v78 = v27[v76];
        if (v78 < 1)
        {
          v89 = 0;
          v64 = v229;
        }

        else
        {
          v227 = v70;
          v79 = 0;
          while (1)
          {
            *&v271 = 0;
            v270 = 0u;
            v269 = 0u;
            memset(v268, 0, sizeof(v268));
            snprintf(v265, 0xFFuLL, v74, v79);
            v81 = openIndex(v80, v247, v265, v263, v236, (v239 >> 3) & 1, v71, v268, &v256, v238, v27[21], v60, a11, v72, v27[23]);
            if (!v81)
            {
              break;
            }

            v82 = v81;
            v83 = *__error();
            v84 = _SILogForLogForCategory(10);
            v85 = 2 * (dword_1EBF46AF4 < 4);
            if (os_log_type_enabled(v84, v85))
            {
              v86 = *(v82 + 80);
              v87 = *(v82 + 68);
              v281 = 136315650;
              v282 = v265;
              v283 = 2048;
              v284 = v86;
              v285 = 1024;
              LODWORD(v286) = v87;
              _os_log_impl(&dword_1C278D000, v84, v85, "index %s base:%ld count:%d", &v281, 0x1Cu);
            }

            *__error() = v83;
            v88 = *(v82 + 15560);
            if (v88 >= *(v82 + 15568))
            {
              v88 = *(v82 + 15568);
            }

            if (v88 > *v237)
            {
              *v237 = v88;
            }

            ContentIndexListAppend(v75, v82);
            v243 = vaddq_s64(v268[3], v243);
            v244 = vaddq_s64(v268[2], v244);
            v245 = vaddq_s64(v268[1], v245);
            v246 = vaddq_s64(v268[0], v246);
            v241 = vaddq_s64(v270, v241);
            v242 = vaddq_s64(v269, v242);
            v69 += v271;
            v79 = (v79 + 1);
            v60 = a10;
            v27 = v240;
            v71 = v239;
            v72 = a12;
            if (v78 == v79)
            {
              v73 = 0;
              v89 = 0;
LABEL_87:
              v64 = v229;
              goto LABEL_88;
            }
          }

          v73 = *v238 == 0;
          if (*v238)
          {
            v89 = -1;
            v27 = v240;
            goto LABEL_87;
          }

          v90 = *__error();
          v91 = _SILogForLogForCategory(10);
          v27 = v240;
          v64 = v229;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v281 = 136315394;
            v282 = v225;
            v283 = 2080;
            v284 = v265;
            _os_log_impl(&dword_1C278D000, v91, OS_LOG_TYPE_DEFAULT, "Could not open %s/%s; needs recovery", &v281, 0x16u);
          }

          v92 = __error();
          v89 = 0;
          *v92 = v90;
          *v237 = 0;
          v71 = v239;
          v72 = a12;
LABEL_88:
          v70 = v227;
        }
      }

      else
      {
        v89 = 0;
      }

      if (v89 | v70)
      {
        break;
      }

      ++v70;
    }

    while (!v73);
    v116 = !v73;
    if (v89)
    {
      v116 = 1;
    }

    v32 = 0x1EBF46000uLL;
    v61 = v238;
    if (v116)
    {
      LODWORD(v30) = v247;
      if (!v89 && *(v230 + 8) | v234)
      {
LABEL_152:
        if ((v239 & 0x1000) != 0)
        {
          v133 = -1;
        }

        else
        {
          v133 = 3;
        }

        if (v226)
        {
          v31 = v133;
        }

        else
        {
          v31 = 0;
        }

        goto LABEL_281;
      }

      goto LABEL_268;
    }
  }

  v117 = *__error();
  v118 = _SILogForLogForCategory(10);
  v119 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v118, v119))
  {
    v268[0].i16[0] = 0;
    _os_log_impl(&dword_1C278D000, v118, v119, "Open index - recovery path", v268, 2u);
  }

  *__error() = v117;
  _CIIndexSetRemoveAllValues(v230);
  _CIIndexSetRemoveAllValues(v64);
  v40 = v236;
  if ((v239 & 0x1000) != 0)
  {
    v121 = *__error();
    v122 = _SILogForLogForCategory(10);
    LODWORD(v30) = v247;
    if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_147;
    }

    v268[0].i32[0] = 136315394;
    *(v268[0].i64 + 4) = v225;
    v268[0].i16[6] = 2080;
    *(&v268[0].i64[1] + 6) = v265;
    v123 = "recovery not allowed for %s/%s due to locked indexing";
LABEL_145:
    v127 = v122;
    v128 = 22;
    goto LABEL_146;
  }

  v30 = v247;
  v120 = v239;
  if ((v239 & 4) == 0)
  {
    if (!__si_invalid_term_update_set_key)
    {
      __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 555, "needs recovery");
    }

    v121 = *__error();
    v122 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v268[0].i32[0] = 136315394;
      *(v268[0].i64 + 4) = v225;
      v268[0].i16[6] = 2080;
      *(&v268[0].i64[1] + 6) = v265;
      v123 = "recovery not allowed for %s/%s";
      goto LABEL_145;
    }

LABEL_147:
    *__error() = v121;
LABEL_18:
    v31 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v69 = 0;
  v134 = 0;
  v245 = 0u;
  v246 = 0u;
  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  v135 = 1;
  v64 = v229;
  while (1)
  {
    v136 = v135;
    v137 = (v135 & 1) == 0;
    v138 = "%d.";
    if (v137)
    {
      v138 = "live.%d.";
    }

    __format = v138;
    v139 = v230;
    if (v137)
    {
      v139 = v64;
    }

    v228 = v139;
    v140 = v137 ? 52 : 48;
    v141 = *(v27 + v140);
    if (v141)
    {
      break;
    }

LABEL_231:
    v135 = 0;
    v27 = v240;
    if ((v136 & 1) == 0)
    {
      if (*(v230 + 8))
      {
        if (v134)
        {
          *(v240 + 5) = *(v240 + 6);
          v31 = 2;
          goto LABEL_281;
        }

        goto LABEL_152;
      }

      goto LABEL_268;
    }
  }

  v222 = v136;
  v142 = 0;
  v221 = v134 + v141;
  while (2)
  {
    v254 = 0;
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    *v248 = 0u;
    v249 = 0u;
    snprintf(v265, 0xFFuLL, __format, v142);
    if ((v120 & 8) == 0)
    {
      if (recoverIndex(v143))
      {
        v151 = openIndex(v163, v30, v265, v263, v236, 0, v120, v248, &v256, v61, v240[21], a10, a11, a12, v240[23]);
        v164 = *__error();
        v165 = _SILogForLogForCategory(10);
        v166 = os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT);
        if (v151)
        {
          if (v166)
          {
            goto LABEL_224;
          }

          goto LABEL_225;
        }

        if (v166)
        {
          v268[0].i32[0] = 136315394;
          *(v268[0].i64 + 4) = v225;
          v268[0].i16[6] = 2080;
          *(&v268[0].i64[1] + 6) = v265;
          _os_log_impl(&dword_1C278D000, v165, OS_LOG_TYPE_DEFAULT, "could not open %s/%s", v268, 0x16u);
        }

        *__error() = v164;
        __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 588, "open recovered index error");
        v61 = v238;
      }

      else
      {
        v197 = *__error();
        v198 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
        {
          v268[0].i32[0] = 136315394;
          *(v268[0].i64 + 4) = v225;
          v268[0].i16[6] = 2080;
          *(&v268[0].i64[1] + 6) = v265;
          _os_log_impl(&dword_1C278D000, v198, OS_LOG_TYPE_DEFAULT, "could not recover %s/%s", v268, 0x16u);
        }

        *__error() = v197;
        __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 582, "recover index error");
      }

      if ((v222 & 1) == 0)
      {
        goto LABEL_261;
      }

      goto LABEL_260;
    }

    v144 = v263;
    v145 = v240[21];
    v146 = v240[23];
    bzero(&v281, 0x400uLL);
    bzero(v268, 0x1000uLL);
    v256 = -1;
    v147 = *__error();
    v148 = _SILogForLogForCategory(10);
    v149 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v148, v149))
    {
      *v267 = 136315138;
      *&v267[4] = v265;
      _os_log_impl(&dword_1C278D000, v148, v149, "open index at %s", v267, 0xCu);
    }

    *__error() = v147;
    v150 = malloc_type_calloc(1uLL, 0x3D68uLL, 0x10F00405C9458FEuLL);
    v151 = v150;
    if (v150)
    {
      initIndex(v150, a12);
      __strlcpy_chk((v151 + 15208), v265, 255, 255);
      *(v151 + 10) = v144;
      *(v151 + 22) = 1657;
      *(v151 + 16) = v247;
      *(v151 + 3929) = v146;
      v151[15202] = (v239 & 0x10) != 0;
      snprintf(&v281, 0x400uLL, "%s%s", v265, "shadowIndexHead");
      v152 = open_index_file(v247, &v281, 0, 4096, 4096, 0, 0, 0, &v256);
      *(v151 + 1810) = v152;
      v32 = 0x1EBF46000uLL;
      if (v152)
      {
        v153 = fd_pread(v152, v268, 0x1000uLL, 0);
        v64 = v229;
        if (v153 != 4096)
        {
          if (v153 != -1)
          {
            v154 = -1;
            goto LABEL_258;
          }

          v154 = *__error();
          if (v154)
          {
            goto LABEL_258;
          }
        }

        *v267 = v268;
        if (indexRestoreFromBuffer(v151, v267, v145, v233, v232, 0, v231))
        {
          v151[15203] = 1;
          v155 = atomic_load(v151 + 9);
          v156 = atomic_load(v151 + 9);
          v157 = atomic_load(v151 + 8);
          if (v157 == -804450864 || (v158 = atomic_load(v151 + 8), v158 == -1073623027))
          {
            snprintf(&v281, 0x400uLL, "%s%s", v265, "indexIds");
            v159 = *(v151 + 17);
            v160 = *(v151 + 18);
            v161 = 8 * v159;
            v162 = v159 >= 2 ? 8 * v159 : 0;
            if (v159 <= v160)
            {
              v161 = 8 * v160;
            }

            else
            {
              *(v151 + 18) = v159;
            }

            v167 = open_index_file(v247, &v281, 0, v161, v162, 0, v151 + 1801, 1, &v256);
            *(v151 + 1806) = v167;
            if (v167)
            {
              snprintf(&v281, 0x400uLL, "%s%s", v265, "indexBigDates");
              v168 = *(v151 + 17);
              if (v168 >= 2)
              {
                v169 = 4 * v168;
              }

              else
              {
                v169 = 0;
              }

              *(v151 + 1807) = open_index_file(v247, &v281, 0, 4 * *(v151 + 18), v169, 0, v151 + 1802, 1, &v256);
              if ((v239 & 0x100) != 0)
              {
                snprintf(&v281, 0x400uLL, "%s%s", v265, "indexScores");
                v170 = *(v151 + 17);
                if (v170 >= 2)
                {
                  v171 = 8 * v170;
                }

                else
                {
                  v171 = 0;
                }

                *(v151 + 1808) = open_index_file(v247, &v281, 0, 8 * *(v151 + 18), v171, 0, v151 + 1803, 1, &v256);
              }

              snprintf(&v281, 0x400uLL, "%s%s", v265, "shadowIndexGroups");
              v172 = *(v151 + 18);
              if (v151[45] == 1)
              {
                v173 = *(v151 + 17);
              }

              else
              {
                v172 = (4 * v172 + 4) / 5;
                v173 = (4 * *(v151 + 17) + 4) / 5u;
              }

              v174 = open_index_file(v247, &v281, 0, v172, v173, 0, v151 + 1804, 1, &v256);
              *(v151 + 1809) = v174;
              if (v174)
              {
                v175 = (v156 & 2) != 0 ? "indexTermIds" : "shadowIndexTermIds";
                if (openPayload((v151 + 4944), *(v151 + 16), v265, "indexPostings", v175, &v281, 1, (v155 & 4) != 0, 1, *(v151 + 1), *(v151 + 617)))
                {
                  v176 = (v156 & 2) != 0 ? "indexPositionTable" : "shadowIndexPositionTable";
                  if (openPayload((v151 + 9664), *(v151 + 16), v265, "indexPositions", v176, &v281, 1, (v155 & 4) != 0, 1, *(v151 + 1), *(v151 + 617)))
                  {
                    if (bt_openTrie((v151 + 96), *(v151 + 16), v265, (v155 >> 2) & 1, 1, (v156 & 2) == 0, *(v151 + 1), *(v151 + 617)))
                    {
                      if ((v239 & 0x40) == 0 || (v177 = openForwardStore(v247, v265, 0, 1, 1, *(v151 + 617)), (*(v151 + 616) = v177) != 0))
                      {
                        if (_os_feature_enabled_impl() && v151[15714] == 1)
                        {
                          v178 = *__error();
                          v179 = _SILogForLogForCategory(10);
                          if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                          {
                            v180 = *(v151 + 14);
                            v266[0] = 67109120;
                            v266[1] = v180;
                            _os_log_impl(&dword_1C278D000, v179, OS_LOG_TYPE_DEFAULT, "open vector index shadow for indexid %d", v266, 8u);
                          }

                          *__error() = v178;
                          v181 = *(v151 + 14);
                          if (v181)
                          {
                            v257[0] = MEMORY[0x1E69E9820];
                            v257[1] = 0x40000000;
                            v257[2] = __openIndexShadow_block_invoke;
                            v257[3] = &__block_descriptor_tmp_3365;
                            v257[4] = v151;
                            v257[5] = v265;
                            openVectorIndex(v247, v265, 1, a10, v181, v257);
                          }
                        }

                        v151[15204] = 1;
                        v151[8] = 1;
                        v256 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v64 = v229;
      if (v256)
      {
        goto LABEL_259;
      }

      v164 = *__error();
      v165 = _SILogForLogForCategory(10);
      v30 = v247;
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
      {
LABEL_224:
        v182 = *(v151 + 10);
        v183 = *(v151 + 17);
        v268[0].i32[0] = 136315650;
        *(v268[0].i64 + 4) = v265;
        v268[0].i16[6] = 2048;
        *(&v268[0].i64[1] + 6) = v182;
        v268[1].i16[3] = 1024;
        v268[1].i32[2] = v183;
        _os_log_impl(&dword_1C278D000, v165, OS_LOG_TYPE_DEFAULT, "index %s base:%ld count:%d", v268, 0x1Cu);
      }

LABEL_225:
      *__error() = v164;
      ContentIndexListAppend(v228, v151);
      v184 = v250;
      v185 = v251;
      v186 = *v248;
      v187 = v249;
      v188 = v252;
      v189 = v253;
      v190 = v254;
      v191 = *(v151 + 1945);
      if (v191 >= *(v151 + 1946))
      {
        v191 = *(v151 + 1946);
      }

      if (v191 > *v237)
      {
        *v237 = v191;
      }

      v243 = vaddq_s64(v185, v243);
      v244 = vaddq_s64(v184, v244);
      v245 = vaddq_s64(v187, v245);
      v246 = vaddq_s64(v186, v246);
      v241 = vaddq_s64(v189, v241);
      v242 = vaddq_s64(v188, v242);
      v69 += v190;
      v142 = (v142 + 1);
      ++v134;
      v61 = v238;
      v120 = v239;
      if (v141 == v142)
      {
        v134 = v221;
        v136 = v222;
        goto LABEL_231;
      }

      continue;
    }

    break;
  }

  v154 = -1;
  v32 = 0x1EBF46000;
  v64 = v229;
LABEL_258:
  v256 = v154;
LABEL_259:
  LODWORD(v30) = v247;
  freeIndex(v151);
  __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 573, "open index shadow error");
  v61 = v238;
  if ((v222 & 1) == 0)
  {
    goto LABEL_261;
  }

LABEL_260:
  if (*(v230 + 8) != v141)
  {
    goto LABEL_268;
  }

LABEL_261:
  v199 = *(v64 + 8);
  if (!v199)
  {
    v199 = *(v230 + 8);
    if (v199 && v134 && !*v61)
    {
      v64 = v230;
      goto LABEL_273;
    }

    goto LABEL_268;
  }

  if (!v134 || *v61)
  {
LABEL_268:
    _CIIndexSetRemoveAllValues(v230);
    _CIIndexSetRemoveAllValues(v64);
    if (*v61)
    {
      __si_set_error_str(1, "%s:%u: %s", "ContentIndex.c", 694, "open canceled");
    }

    v31 = 0xFFFFFFFFLL;
    goto LABEL_271;
  }

LABEL_273:
  v200 = *(*v64 + 8 * (v199 - 1));
  *v224 = *(v200 + 80) + *(v200 + 68);
  v248[0] = *v237;
  v280 = 0u;
  v279 = 0u;
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  v274 = 0u;
  v273 = 0u;
  v272 = 0u;
  v271 = 0u;
  v270 = 0u;
  v269 = 0u;
  memset(v268, 0, sizeof(v268));
  v201 = localtime(v248);
  strftime(v268[0].i8, 0x100uLL, "%F %T", v201);
  v202 = *__error();
  v203 = _SILogForLogForCategory(10);
  v204 = v240;
  if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
  {
    v205 = *v224;
    v281 = 136315650;
    v282 = v268;
    v283 = 2048;
    v284 = v205;
    v285 = 2080;
    v286 = v200 + 15208;
    _os_log_impl(&dword_1C278D000, v203, OS_LOG_TYPE_DEFAULT, "recover needed, scan date: %s, last valid doc id:%ld, %s", &v281, 0x20u);
  }

  *__error() = v202;
  v206 = *(v229 + 8);
  if (v206 < v240[13])
  {
    do
    {
      v207 = *__error();
      v208 = _SILogForLogForCategory(10);
      v209 = 2 * (*(v32 + 2804) < 4);
      if (os_log_type_enabled(v208, v209))
      {
        v268[0].i32[0] = 136315394;
        *(v268[0].i64 + 4) = v225;
        v268[0].i16[6] = 2080;
        *(&v268[0].i64[1] + 6) = v265;
        _os_log_impl(&dword_1C278D000, v208, v209, "deleting index %s/%s", v268, 0x16u);
      }

      *__error() = v207;
      snprintf(v265, 0xFFuLL, "live.%d.", v206);
      index_DeleteIndex(0, v247, v265, 1);
      ++v206;
      v204 = v240;
      v32 = 0x1EBF46000uLL;
    }

    while (v206 < v240[13]);
    v206 = *(v229 + 8);
  }

  v210 = *(v230 + 8);
  v204[12] = v210;
  v204[13] = v206;
  v204[10] = v210;
  v204[11] = v206;
  v31 = 2;
  LODWORD(v30) = v247;
LABEL_281:
  if (v223)
  {
    *v223 = v246;
    v223[1] = v245;
    v223[2] = v244;
    v223[3] = v243;
    v223[4] = v242;
    v223[5] = v241;
    v223[6].i64[0] = v69;
    v211 = *__error();
    v212 = _SILogForLogForCategory(10);
    v213 = 2 * (*(v32 + 2804) < 4);
    if (os_log_type_enabled(v212, v213))
    {
      v214 = v223[1].i32[2] + v223[3].i64[0];
      v215 = v223[2].i32[0] + v223[3].i64[1];
      v216 = v223[2].i64[1] + v223[2].i64[1];
      v217 = v223[4].i64[1];
      v218 = v223[5].i64[0];
      v219 = v223[5].i64[1];
      v220 = v223[6].i64[0];
      v268[0].i32[0] = 134219520;
      *(v268[0].i64 + 4) = v214;
      v268[0].i16[6] = 2048;
      *(&v268[0].i64[1] + 6) = v215;
      v268[1].i16[3] = 2048;
      v268[1].i64[1] = v216;
      v268[2].i16[0] = 1024;
      *(v268[2].i32 + 2) = v217;
      v268[2].i16[3] = 1024;
      v268[2].i32[2] = v218;
      v268[2].i16[6] = 1024;
      *(&v268[2].i32[3] + 2) = v219;
      v268[3].i16[1] = 1024;
      v268[3].i32[1] = v220;
      _os_log_impl(&dword_1C278D000, v212, v213, "limbo counts live:%ld scan:%ld recover:%ld internal:%d priority:%d setAttr:%d migrate:%d", v268, 0x38u);
    }

    *__error() = v211;
LABEL_243:
    LODWORD(v30) = v247;
  }

LABEL_271:
  v40 = v236;
LABEL_19:
  free(v40);
  if (g_fd_list)
  {
    _fd_close_inactive(v30, 0, 0, v30 == -1, v41);
  }

  v42 = *__error();
  v43 = _SILogForLogForCategory(10);
  v44 = 2 * (*(v32 + 2804) < 4);
  if (os_log_type_enabled(v43, v44))
  {
    *buf = 67109120;
    LODWORD(v259) = v31;
    _os_log_impl(&dword_1C278D000, v43, v44, "Open index bulk: %d", buf, 8u);
  }

  *__error() = v42;
  return v31;
}

uint64_t ContentIndexCloseIndexBulk_Step1(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v8 = result;
  v15 = a4[2];
  v16 = a4[3];
  v17 = *(a4 + 8);
  v13 = *a4;
  v14 = a4[1];
  if (a2 && *(a2 + 8))
  {
    v9 = 0;
    do
    {
      result = *(*a2 + 8 * v9);
      if (!atomic_load((result + 15192)))
      {
        result = indexClosing(result);
      }

      ++v9;
    }

    while (v9 < *(a2 + 8));
  }

  if (a3 && *(a3 + 8))
  {
    v11 = 0;
    do
    {
      result = *(*a3 + 8 * v11);
      if (!atomic_load((result + 15192)))
      {
        result = indexClosing(result);
      }

      ++v11;
    }

    while (v11 < *(a3 + 8));
  }

  if (v8)
  {
    if ((*(v8 + 88) & 1) == 0)
    {
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v18 = v13;
      v19 = v14;
      return _ContentIndexSyncIndexBulk(v8, a2, a3, 2, 0, &v18, a5, 0, 0);
    }
  }

  else
  {
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v18 = v13;
    v19 = v14;
    return _ContentIndexSyncIndexBulk(0, a2, a3, 2, 0, &v18, a5, 0, 0);
  }

  return result;
}

int *ContentIndexUpdateTimeStamp(int *result, uint64_t a2, unsigned int a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(result + 9);
  if ((v4 & 3) == 0 && (*(result + 15203) & 1) == 0)
  {
    v7 = result + 3890;
    v8 = *&result[2 * a3 + 3890];
    if (v8 >= a2)
    {
      if (v8 > a2 && a4 != 0)
      {
        v10 = *__error();
        v11 = _SILogForLogForCategory(0);
        v12 = gSILogLevels[0] < 3;
        if (os_log_type_enabled(v11, (gSILogLevels[0] < 3)))
        {
          v13 = *&v7[2 * a3];
          v14 = 134218240;
          v15 = a2;
          v16 = 2048;
          v17 = v13;
          _os_log_impl(&dword_1C278D000, v11, v12, "*warn* time stamp should be more recent new:%ld, old:%ld", &v14, 0x16u);
        }

        result = __error();
        *result = v10;
      }
    }

    else
    {
      *&v7[2 * a3] = a2;
    }
  }

  return result;
}

uint64_t ContentIndexCalculateSize(uint64_t a1, char a2)
{
  v3 = atomic_load((a1 + 36));
  v4 = atomic_load((a1 + 36));
  v5 = 4096;
  if ((a2 & 2) != 0)
  {
    v5 = 0x2000;
  }

  v6 = 72;
  if ((v3 & 4) != 0)
  {
    v6 = 68;
  }

  v7 = *(a1 + v6);
  if (*(a1 + 45) == 1)
  {
    v8 = v5 + v7;
    v9 = v7;
    if ((a2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = ((4 * v7 + 4) * 0x3333333333333334uLL) >> 64;
  v8 = v9 + v5;
  if ((a2 & 2) != 0)
  {
LABEL_9:
    v8 += v9;
  }

LABEL_10:
  v10 = v8 + 8 * v7 + *(a1 + 4968);
  if ((v3 & 4) == 0)
  {
    v11 = *(a1 + 9404);
    v10 += 8 * v11;
    v12 = (a2 & 2) != 0 ? 8 * v11 : 0;
    v13 = v10 + v12;
    if ((v4 & 1) == 0)
    {
      v10 = v13;
    }
  }

  if (a2)
  {
    v10 += 28 * *(a1 + 9400);
  }

  v14 = *(a1 + 9688) + v10;
  v15 = (a2 & 2) == 0;
  if ((v3 & 4) != 0)
  {
    v16 = (a1 + 240);
    v17 = v4 | v15;
    v18 = 488;
    v19 = 128;
  }

  else
  {
    v20 = *(a1 + 14124);
    v21 = v14 + 8 * v20;
    v17 = v4 | v15;
    if (v17)
    {
      v22 = 0;
    }

    else
    {
      v22 = 8 * v20;
    }

    v14 = v21 + v22;
    v16 = (a1 + 244);
    v18 = 480;
    v19 = 136;
  }

  v23 = 1028 * *v16 + 1028;
  v24 = *(a1 + v19);
  if (v17)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  if (v17)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = *(a1 + v18);
  if (v17)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  v29 = v24 + v23 + v26 + v25 + v27 + v28 + v14;
  v30 = *(a1 + 4928);
  if (v30)
  {
    v29 += *(v30 + 232);
    if ((v17 & 1) == 0)
    {
      v29 += *(v30 + 240);
    }
  }

  if ((a2 & 4) != 0 && (v3 & 4) == 0 && (v4 & 1) == 0)
  {
    db_read_lock(a1 + 14720);
    v31 = *(a1 + 14392);
    if (v31)
    {
      atomic_fetch_add(v31, 1u);
      pthread_mutex_lock((a1 + 14720));
      v32 = *(a1 + 14916) - 1;
      *(a1 + 14916) = v32;
      if (!v32)
      {
        db_rwlock_wakeup(a1 + 14720, 0, 0);
      }

      pthread_mutex_unlock((a1 + 14720));
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      _TermUpdateSetGetStats(v31, &v35, 0);
      TermUpdateSetRelease(v31);
      v29 += v35 + v36 + v37;
    }

    else
    {
      pthread_mutex_lock((a1 + 14720));
      v33 = *(a1 + 14916) - 1;
      *(a1 + 14916) = v33;
      if (!v33)
      {
        db_rwlock_wakeup(a1 + 14720, 0, 0);
      }

      pthread_mutex_unlock((a1 + 14720));
    }
  }

  return v29;
}

uint64_t ContentIndexSyncIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v7 = *(a2 + 64);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v8[2] = 0;
  v9 = a1;
  v8[0] = &v9;
  v8[1] = 0x100000001;
  return _ContentIndexSyncIndexBulk(0, v8, 0, 1, 0, v6, a3, 0, 0);
}

uint64_t ContentIndexDeleteIndex(uint64_t result, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    strncpy(__dst, (result + 15208), 0xFFuLL);
    return index_DeleteIndex(v3, *(v3 + 64), __dst, a2);
  }

  return result;
}

uint64_t ContentIndexResetVectorIndex(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1 + 12288;
  _db_write_lock(a1 + 14720);
  v3 = *(a1 + 4912);
  if (v3)
  {
    IVFVectorIndex_s::~IVFVectorIndex_s((v3 + 8));
    MEMORY[0x1C691FEF0](v3, 0x1032C40E78FF076);
    *(a1 + 4912) = 0;
  }

  bzero(v8, 0x400uLL);
  v4 = fcntl(*(a1 + 64), 50, v8);
  if (v8[0])
  {
    v5 = v4 < 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v8;
  }

  IVFVectorIndex_s::unlink(v6, (a1 + 15208), 0);
  if ((*(v2 + 2915) & 1) == 0 && *(v2 + 3426) == 1)
  {
    IVFVectorIndex_s::unlink(".", (a1 + 15208), 0);
    operator new();
  }

  return db_write_unlock(a1 + 14720);
}

int *ContentIndexUpdatePath(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(a1 + 14392))
  {
    goto LABEL_19;
  }

  HIDWORD(v13) = qos_class_self() - 9;
  LODWORD(v13) = HIDWORD(v13);
  v12 = v13 >> 2;
  if (v12 > 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_1C2BFF8F0[v12];
  }

  pthread_mutex_lock((a1 + 14720));
  if (*(a1 + 14904) || *(a1 + 14916) || (*(a1 + 14932) & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v14 <= 5)
  {
    v41 = v14 - 6;
    v42 = (a1 + 16 * v14 + 14784);
    while (!*v42)
    {
      v42 += 2;
      v38 = __CFADD__(v41++, 1);
      if (v38)
      {
        goto LABEL_65;
      }
    }

LABEL_8:
    db_rwlock_wait(a1 + 14720, v14, 2);
    goto LABEL_9;
  }

LABEL_65:
  *(a1 + 14904) = pthread_self();
LABEL_9:
  pthread_mutex_unlock((a1 + 14720));
  if (*(a1 + 14392))
  {
LABEL_17:
    pthread_mutex_lock((a1 + 14720));
    *(a1 + 14924) = 0;
    v17 = *(a1 + 14896);
    *(a1 + 14896) = 0u;
    v18 = *(a1 + 14916) != 0;
    *(a1 + 14932) = 0;
    db_rwlock_wakeup(a1 + 14720, v18, 0);
    pthread_mutex_unlock((a1 + 14720));
    if (v17)
    {
      pthread_override_qos_class_end_np(v17);
    }

LABEL_19:
    if (a3)
    {
      if (a3 < 2)
      {
        a3 = 1;
        if (!a5)
        {
          goto LABEL_35;
        }

LABEL_28:
        if (a5 < 2)
        {
          a5 = 1;
        }

        else
        {
          v24 = a5 - 1;
          v25 = (a6 + 8);
          a5 = 1;
          do
          {
            v27 = *v25++;
            v26 = v27;
            v28 = (a6 + 8 * a5);
            if (v27 != *(v28 - 1))
            {
              ++a5;
              *v28 = v26;
            }

            --v24;
          }

          while (v24);
        }

LABEL_35:
        v29 = *(a1 + 14392);
        HIDWORD(v31) = qos_class_self() - 9;
        LODWORD(v31) = HIDWORD(v31);
        v30 = v31 >> 2;
        if (v30 > 6)
        {
          v32 = 0;
        }

        else
        {
          v32 = dword_1C2BFF8F0[v30];
        }

        pthread_mutex_lock((v29 + 304));
        if (!*(v29 + 488) && !*(v29 + 500) && (*(v29 + 516) & 1) == 0)
        {
          if (v32 > 5)
          {
LABEL_55:
            *(v29 + 488) = pthread_self();
            goto LABEL_42;
          }

          v36 = v32 - 6;
          v37 = (v29 + 16 * v32 + 368);
          while (!*v37)
          {
            v37 += 2;
            v38 = __CFADD__(v36++, 1);
            if (v38)
            {
              goto LABEL_55;
            }
          }
        }

        db_rwlock_wait(v29 + 304, v32, 2);
LABEL_42:
        pthread_mutex_unlock((v29 + 304));
        ++*(v29 + 112);
        if (a3)
        {
          doChildFile(v29 + 88, (v29 + 48), a3, a4, a2, 1);
        }

        if (a5)
        {
          doChildFile(v29 + 88, (v29 + 48), a5, a6, a2, 2);
        }

        pthread_mutex_lock((v29 + 304));
        *(v29 + 508) = 0;
        v33 = *(v29 + 480);
        *(v29 + 480) = 0;
        *(v29 + 488) = 0;
        v34 = *(v29 + 500) != 0;
        *(v29 + 516) = 0;
        db_rwlock_wakeup(v29 + 304, v34, 0);
        result = pthread_mutex_unlock((v29 + 304));
        if (v33)
        {

          return pthread_override_qos_class_end_np(v33);
        }

        return result;
      }

      v19 = a3 - 1;
      v20 = (a4 + 8);
      a3 = 1;
      do
      {
        v22 = *v20++;
        v21 = v22;
        v23 = (a4 + 8 * a3);
        if (v22 != *(v23 - 1))
        {
          ++a3;
          *v23 = v21;
        }

        --v19;
      }

      while (v19);
    }

    if (!a5)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (*(a1 + 46))
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  v16 = TermUpdateSetCreate(_indexProgress, a1, *(a1 + 80), *(a1 + 68), v15, *(a1 + 14384), *(a1 + 56), *(a1 + 4936));
  if (v16)
  {
    if (*(a1 + 15202) == 1)
    {
      *(v16 + 76) = getPropertyStringCallback;
    }

    *(v16 + 35) = a1 + 14184;
    __dmb(0xBu);
    *(a1 + 14392) = v16;
    goto LABEL_17;
  }

  v39 = *__error();
  v40 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v43 = 136315394;
    v44 = "_CIUpdatePath";
    v45 = 1024;
    v46 = 4446;
    _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: TermUpdateSetCreate failed", &v43, 0x12u);
  }

  result = __error();
  *result = v39;
  return result;
}
void sub_297006FE0(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v1 - 176));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 - 192));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 - 168));
  _Block_object_dispose((v1 - 160), 8);
  xpc_release(*(v1 - 120));
  _Unwind_Resume(a1);
}

uint64_t ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v10, a2);
  Int = ctu::cf::map_adapter::getInt(v10, *MEMORY[0x29EDC8778]);
  v4 = xpc_int64_create(Int);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq", v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  ctu::cf::map_adapter::getDouble(v10, *MEMORY[0x29EDC8658], 0.0);
  v7 = xpc_double_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  return MEMORY[0x29C26B180](v10);
}

uint64_t ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v10, a2);
  Int = ctu::cf::map_adapter::getInt(v10, *MEMORY[0x29EDC8778]);
  v4 = xpc_int64_create(Int);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq", v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  ctu::cf::map_adapter::getDouble(v10, *MEMORY[0x29EDC8658], 0.0);
  v7 = xpc_double_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  return MEMORY[0x29C26B180](v10);
}

void coex::Module::State::fetchBandInfoSet_sync(uint64_t a1, CFArrayRef *a2, const char *a3, xpc_object_t *a4)
{
  if (a3)
  {
    if (*a2)
    {
      if (MEMORY[0x29C26CE60](*a4) == MEMORY[0x29EDCAA00])
      {
        Count = CFArrayGetCount(*a2);
        if (Count >= 1)
        {
          v8 = Count;
          v9 = xpc_array_create(0, 0);
          v10 = MEMORY[0x29EDCA9E0];
          if (v9 || (v9 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C26CE60](v9) == v10)
            {
              xpc_retain(v9);
              v11 = v9;
            }

            else
            {
              v11 = xpc_null_create();
            }
          }

          else
          {
            v11 = xpc_null_create();
            v9 = 0;
          }

          v35 = a4;
          xarray = v11;
          xpc_release(v9);
          v12 = 0;
          v13 = *MEMORY[0x29EDC8778];
          v14 = *MEMORY[0x29EDC8658];
          v15 = *MEMORY[0x29EDC8720];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*a2, v12);
            v17 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v18 = CFGetTypeID(ValueAtIndex);
              if (v18 == CFDictionaryGetTypeID())
              {
                v39 = v17;
                CFRetain(v17);
                v38[0] = 0xAAAAAAAAAAAAAAAALL;
                v38[1] = 0xAAAAAAAAAAAAAAAALL;
                ctu::cf::dict_adapter::dict_adapter(v38, v17);
                v19 = xpc_dictionary_create(0, 0, 0);
                if (v19 || (v19 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26CE60](v19) == MEMORY[0x29EDCAA00])
                  {
                    xpc_retain(v19);
                    v20 = v19;
                  }

                  else
                  {
                    v20 = xpc_null_create();
                  }
                }

                else
                {
                  v20 = xpc_null_create();
                  v19 = 0;
                }

                xpc_release(v19);
                Int = ctu::cf::map_adapter::getInt(v38, v13);
                v22 = xpc_int64_create(Int);
                if (!v22)
                {
                  v22 = xpc_null_create();
                }

                xpc_dictionary_set_value(v20, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v22);
                v23 = xpc_null_create();
                xpc_release(v22);
                xpc_release(v23);
                ctu::cf::map_adapter::getDouble(v38, v14, 0.0);
                v25 = xpc_double_create(v24);
                if (!v25)
                {
                  v25 = xpc_null_create();
                }

                xpc_dictionary_set_value(v20, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v25);
                v26 = xpc_null_create();
                xpc_release(v25);
                xpc_release(v26);
                v27 = ctu::cf::map_adapter::copyCFDataRef(v38, v15);
                v28 = v27;
                cf = v27;
                if (v27)
                {
                  CFRetain(v27);
                  *buffer = 0;
                  v41.length = CFDataGetLength(v28);
                  v41.location = 0;
                  CFDataGetBytes(v28, v41, buffer);
                  v29 = *buffer;
                  CFRelease(v28);
                  v30 = xpc_uint64_create(v29);
                  if (!v30)
                  {
                    v30 = xpc_null_create();
                  }
                }

                else
                {
                  v31 = ctu::cf::map_adapter::getInt(v38, v15);
                  v30 = xpc_uint64_create(v31);
                  if (!v30)
                  {
                    v30 = xpc_null_create();
                  }
                }

                xpc_dictionary_set_value(v20, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", v30);
                v32 = xpc_null_create();
                xpc_release(v30);
                xpc_release(v32);
                xpc_array_append_value(xarray, v20);
                if (cf)
                {
                  CFRelease(cf);
                }

                xpc_release(v20);
                MEMORY[0x29C26B180](v38);
                if (v39)
                {
                  CFRelease(v39);
                }
              }
            }

            ++v12;
          }

          while (v8 != v12);
          if (MEMORY[0x29C26CE60](xarray) == MEMORY[0x29EDCA9E0])
          {
            if (xarray)
            {
              xpc_retain(xarray);
              v33 = xarray;
            }

            else
            {
              v33 = xpc_null_create();
            }

            xpc_dictionary_set_value(*v35, a3, v33);
            v34 = xpc_null_create();
            xpc_release(v33);
            xpc_release(v34);
          }

          xpc_release(xarray);
        }
      }
    }
  }
}

void coex::Module::State::fetchCarrierIdSet_sync(uint64_t a1, CFArrayRef *a2, const char *a3, xpc_object_t *a4)
{
  if (a3)
  {
    if (*a2)
    {
      if (MEMORY[0x29C26CE60](*a4) == MEMORY[0x29EDCAA00])
      {
        Count = CFArrayGetCount(*a2);
        if (Count >= 1)
        {
          v8 = Count;
          v9 = xpc_array_create(0, 0);
          v10 = MEMORY[0x29EDCA9E0];
          if (v9 || (v9 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C26CE60](v9) == v10)
            {
              xpc_retain(v9);
              v11 = v9;
            }

            else
            {
              v11 = xpc_null_create();
            }
          }

          else
          {
            v11 = xpc_null_create();
            v9 = 0;
          }

          xpc_release(v9);
          for (i = 0; i != v8; ++i)
          {
            LODWORD(value) = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(*a2, i);
            v14 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v15 = CFGetTypeID(ValueAtIndex);
              if (v15 == CFNumberGetTypeID())
              {
                if (ctu::cf::assign(&value, v14, v16))
                {
                  v17 = xpc_int64_create(value);
                  if (!v17)
                  {
                    v17 = xpc_null_create();
                  }

                  xpc_array_append_value(v11, v17);
                  xpc_release(v17);
                }
              }
            }
          }

          if (MEMORY[0x29C26CE60](v11) == v10 && xpc_array_get_count(v11))
          {
            if (v11)
            {
              xpc_retain(v11);
              v18 = v11;
            }

            else
            {
              v18 = xpc_null_create();
            }

            xpc_dictionary_set_value(*a4, a3, v18);
            v19 = xpc_null_create();
            xpc_release(v18);
            xpc_release(v19);
          }

          xpc_release(v11);
        }
      }
    }
  }
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_36(void *a1, uint64_t a2, int *a3)
{
  v49 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v46 = v8;
  if (!v8)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_56:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v38 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v38);
    }

    return;
  }

  v9 = *(v7 + 104);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3;
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Received trigger 0x%x", buf, 8u);
  }

  *buf = 0;
  v48 = 0;
  v11 = a1[8];
  if (v11)
  {
    v48 = std::__shared_weak_count::lock(v11);
    if (v48)
    {
      *buf = a1[7];
    }
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v12) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  AppID = awd::AppContext::getAppID(*buf);
  v15 = xpc_int64_create(AppID);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF8B0], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(a3[1]);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5E8], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(a3[2]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE680], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create(*a3);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5A0], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(*(a3 + 2));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE678], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_int64_create(*(a2 + 12));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE6D8], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_int64_create(*(a2 + 8));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE640], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = *MEMORY[0x29EDBE538];
  v30 = strlen(*MEMORY[0x29EDBE538]);
  if (v30 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v30;
  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v30 | 7) + 1;
    }

    v32 = operator new(v34);
    __dst[1] = v31;
    v44 = v34 | 0x8000000000000000;
    __dst[0] = v32;
LABEL_38:
    memmove(v32, v29, v31);
    *(v31 + v32) = 0;
    object = v13;
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_39:
    object = xpc_null_create();
    goto LABEL_40;
  }

  HIBYTE(v44) = v30;
  v32 = __dst;
  if (v30)
  {
    goto LABEL_38;
  }

  LOBYTE(__dst[0]) = 0;
  object = v13;
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_33:
  xpc_retain(v13);
LABEL_40:
  xpc::bridge(&cf, &object, v33);
  v35 = cf;
  if (cf && (v36 = CFGetTypeID(cf), v36 == CFDictionaryGetTypeID()))
  {
    v42 = v35;
    CFRetain(v35);
  }

  else
  {
    v42 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v7, __dst, &v42, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(v13);
  v37 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v8 = v46;
  if (v46)
  {
    goto LABEL_56;
  }
}

void sub_2970082C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, char a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (*(v2 + 24))
    {
      return result;
    }

    v3 = *(v2 + 16);
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = *(v2 + 8);
        v11 = *v10;
        *(v2 + 8) = *v10;
        v12 = v2;
        if (v11)
        {
          *(v11 + 16) = v2;
          v3 = *(v2 + 16);
          v12 = *v3;
        }

        *(v10 + 16) = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        *(v2 + 16) = v10;
        v3 = *(v10 + 16);
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      *(v4 + 8) = v3;
      *(v4 + 16) = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = (v4 + 24);
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = v15[1];
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = *(v2 + 16);
    }

    v3[*v3 != v2] = v15;
    v15[1] = v2;
    v15[2] = v3;
    *(v2 + 16) = v15;
    v3 = v15[2];
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x8000000297224516 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x8000000297224516 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

void std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(*a1);
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a1[1]);
    if (a1[7])
    {
      v2 = a1[6];
      v3 = *(a1[5] + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[7] = 0;
      if (v2 != a1 + 5)
      {
        do
        {
          v5 = v2[1];
          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1 + 5);
      }
    }

    operator delete(a1);
  }
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvNSt3__13mapIPKcNS3_4listINS3_4pairIyjEENS3_9allocatorIS9_EEEENS3_4lessIS6_EENSA_INS8_IKS6_SC_EEEEEEN4coex5SubIdEEEESI_SK__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v18.__imp_.__imp_ = 0;
  v19 = 0;
  v18.__vftable = &v18.__imp_;
  v6 = *v3;
  v4 = v3 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v18, &v18.__imp_, v5[4], v5 + 4);
      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4);
  }

  if (!*v2)
  {
    std::runtime_error::runtime_error(&v20, "call to empty boost::function");
    v20.__vftable = &unk_2A1E24E88;
    boost::throw_exception<boost::bad_function_call>(&v20);
  }

  v7 = **(a1 + 48);
  v8 = *((*v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v20 = v18;
  v21 = v19;
  if (v19)
  {
    *(v18.__imp_.__imp_ + 2) = &v20.__imp_;
    v18.__vftable = &v18.__imp_;
    v18.__imp_.__imp_ = 0;
    v19 = 0;
  }

  else
  {
    v20.__vftable = &v20.__imp_;
  }

  v8(v2 + 1, &v20, v7);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v20.__imp_.__imp_);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v18.__imp_.__imp_);
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *v12;
    if (*v12)
    {
      if ((v13 & 1) == 0)
      {
        v14 = *v13;
        if (v14)
        {
          v15 = *(a1 + 32);
          v14(v12 + 1, v15 + 1, 2);
          v12 = v15;
        }
      }

      *v12 = 0;
    }

    operator delete(v12);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v16[1]);
    operator delete(v16);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    operator delete(v17);
  }
}

void sub_297008918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, std::runtime_error a12)
{
  std::runtime_error::~runtime_error(&a12);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a10);
  _Unwind_Resume(a1);
}

void sub_297008948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a13);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a10);
  _Unwind_Resume(a1);
}

void boost::detail::function::void_function_obj_invoker2<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::invoke(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2 + 1;
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (a2[2])
  {
    v4[2] = &v6;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v5 = &v6;
  }

  (*(v2 + 16))(v2, &v5);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v6);
}

void ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNSt3__13mapIPKcNS9_4listINS9_4pairIyjEENS9_9allocatorISF_EEEENS9_4lessISC_EENSG_INSE_IKSC_SI_EEEEEENS1_5SubIdEENS7_19optional_last_valueIvEEiNSJ_IiEENS6_8functionISQ_EENSU_IFvRKNS7_10connectionESO_SP_EEENS7_5mutexEEES3_vJSO_SP_EEEDTcl7connectfp_cvNS9_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FS17_S19_E_block_invoke(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = (a1[4] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v7 = a2 + 1;
  v8 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v12, v13, v8[4], v8 + 4);
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v7);
  }

  v4(v6, &v12, a3);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v13[0]);
}

void coex::Module::State::handleDesenseFrequencyReport_sync(uint64_t a1, void *a2, int a3)
{
  v165 = *MEMORY[0x29EDCA608];
  if (a2[2])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    v8 = MEMORY[0x29EDCAA00];
    if (v6)
    {
      v162 = v6;
    }

    else
    {
      v7 = xpc_null_create();
      v162 = v7;
      if (!v7)
      {
        v10 = xpc_null_create();
        v7 = 0;
        goto LABEL_11;
      }
    }

    if (MEMORY[0x29C26CE60](v7) == v8)
    {
      xpc_retain(v7);
      goto LABEL_12;
    }

    v10 = xpc_null_create();
LABEL_11:
    v162 = v10;
LABEL_12:
    v146 = a3;
    xpc_release(v7);
    v11 = a2 + 1;
    v12 = *a2;
    v151 = v11;
    if (v12 != v11)
    {
      __s = *MEMORY[0x29EDC9118];
      v152 = *MEMORY[0x29EDC9110];
      v149 = *MEMORY[0x29EDC9130];
      v150 = *MEMORY[0x29EDC9120];
      v147 = *MEMORY[0x29EDC9128];
      v148 = *MEMORY[0x29EDC9108];
      while (1)
      {
        v159 = &v159;
        v160 = &v159;
        v161 = 0;
        v13 = v12[6];
        if (v13 != v12 + 5)
        {
          v14 = &v159;
          v15 = 1;
          do
          {
            v16 = operator new(0x20uLL);
            v16[1] = *(v13 + 16);
            *v16 = v14;
            *(v16 + 1) = &v159;
            v14[1] = v16;
            v159 = v16;
            v161 = v15;
            v13 = *(v13 + 8);
            ++v15;
            v14 = v16;
          }

          while (v13 != v12 + 5);
        }

        v17 = xpc_array_create(0, 0);
        if (v17 || (v17 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v17) == MEMORY[0x29EDCA9E0])
          {
            xpc_retain(v17);
            v18 = v17;
          }

          else
          {
            v18 = xpc_null_create();
          }
        }

        else
        {
          v18 = xpc_null_create();
          v17 = 0;
        }

        xpc_release(v17);
        for (i = v160; i != &v159; i = i[1])
        {
          v20 = xpc_dictionary_create(0, 0, 0);
          if (v20 || (v20 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C26CE60](v20) == v8)
            {
              xpc_retain(v20);
              v21 = v20;
            }

            else
            {
              v21 = xpc_null_create();
            }
          }

          else
          {
            v21 = xpc_null_create();
            v20 = 0;
          }

          xpc_release(v20);
          v22 = xpc_uint64_create(i[2]);
          if (!v22)
          {
            v22 = xpc_null_create();
          }

          xpc_dictionary_set_value(v21, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq", v22);
          v23 = xpc_null_create();
          xpc_release(v22);
          xpc_release(v23);
          v24 = xpc_int64_create(*(i + 6));
          if (!v24)
          {
            v24 = xpc_null_create();
          }

          xpc_dictionary_set_value(v21, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth", v24);
          v25 = xpc_null_create();
          xpc_release(v24);
          xpc_release(v25);
          xpc_array_append_value(v18, v21);
          xpc_release(v21);
        }

        if (MEMORY[0x29C26CE60](v18) == MEMORY[0x29EDCA9E0] && xpc_array_get_count(v18))
        {
          object = v18;
          v18 = xpc_null_create();
        }

        else
        {
          object = xpc_null_create();
        }

        xpc_release(v18);
        if (v161)
        {
          v26 = v160;
          v27 = *(v159 + 1);
          v28 = *v160;
          *(v28 + 8) = v27;
          *v27 = v28;
          v161 = 0;
          if (v26 != &v159)
          {
            do
            {
              v29 = v26[1];
              operator delete(v26);
              v26 = v29;
            }

            while (v29 != &v159);
          }
        }

        v30 = v12[4];
        v31 = strlen(v30);
        if (v31 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v32 = v31;
        if (v31 >= 0x17)
        {
          break;
        }

        HIBYTE(v158) = v31;
        v33 = buf;
        if (v31)
        {
          goto LABEL_51;
        }

LABEL_52:
        v33[v32] = 0;
        v35 = strlen(__s);
        if (v35 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v36 = v35;
        if (v35 >= 0x17)
        {
          if ((v35 | 7) == 0x17)
          {
            v38 = 25;
          }

          else
          {
            v38 = (v35 | 7) + 1;
          }

          p_dst = operator new(v38);
          *(&__dst + 1) = v36;
          v164 = v38 | 0x8000000000000000;
          *&__dst = p_dst;
LABEL_60:
          memmove(p_dst, __s, v36);
          goto LABEL_61;
        }

        HIBYTE(v164) = v35;
        p_dst = &__dst;
        if (v35)
        {
          goto LABEL_60;
        }

LABEL_61:
        *(p_dst + v36) = 0;
        v39 = SHIBYTE(v158);
        v40 = *buf;
        if (v158 >= 0)
        {
          v41 = buf;
        }

        else
        {
          v41 = *buf;
        }

        v42 = SHIBYTE(v164);
        v43 = __dst;
        if (v164 >= 0)
        {
          v44 = &__dst;
        }

        else
        {
          v44 = __dst;
        }

        v45 = strcasecmp(v41, v44);
        if (v42 < 0)
        {
          operator delete(v43);
          if ((v39 & 0x80000000) == 0)
          {
LABEL_69:
            if (!v45)
            {
              goto LABEL_76;
            }

            goto LABEL_70;
          }
        }

        else if ((v39 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

        operator delete(v40);
        if (!v45)
        {
LABEL_76:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v51 = object;
          }

          else
          {
            v51 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_UplinkFrequency", v51);
          v86 = xpc_null_create();
          xpc_release(v51);
          xpc_release(v86);
          goto LABEL_242;
        }

LABEL_70:
        v46 = v12[4];
        v47 = strlen(v46);
        if (v47 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v48 = v47;
        if (v47 >= 0x17)
        {
          if ((v47 | 7) == 0x17)
          {
            v52 = 25;
          }

          else
          {
            v52 = (v47 | 7) + 1;
          }

          v49 = operator new(v52);
          v157 = v48;
          v158 = v52 | 0x8000000000000000;
          *buf = v49;
LABEL_82:
          memmove(v49, v46, v48);
          goto LABEL_83;
        }

        HIBYTE(v158) = v47;
        v49 = buf;
        if (v47)
        {
          goto LABEL_82;
        }

LABEL_83:
        *(v49 + v48) = 0;
        v53 = strlen(v152);
        if (v53 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v54 = v53;
        if (v53 >= 0x17)
        {
          if ((v53 | 7) == 0x17)
          {
            v56 = 25;
          }

          else
          {
            v56 = (v53 | 7) + 1;
          }

          v55 = operator new(v56);
          *(&__dst + 1) = v54;
          v164 = v56 | 0x8000000000000000;
          *&__dst = v55;
LABEL_91:
          memmove(v55, v152, v54);
          goto LABEL_92;
        }

        HIBYTE(v164) = v53;
        v55 = &__dst;
        if (v53)
        {
          goto LABEL_91;
        }

LABEL_92:
        *(v55 + v54) = 0;
        v57 = SHIBYTE(v158);
        v58 = *buf;
        if (v158 >= 0)
        {
          v59 = buf;
        }

        else
        {
          v59 = *buf;
        }

        v60 = SHIBYTE(v164);
        v61 = __dst;
        if (v164 >= 0)
        {
          v62 = &__dst;
        }

        else
        {
          v62 = __dst;
        }

        v63 = strcasecmp(v59, v62);
        if (v60 < 0)
        {
          operator delete(v61);
          if ((v57 & 0x80000000) == 0)
          {
LABEL_100:
            if (!v63)
            {
              goto LABEL_107;
            }

            goto LABEL_101;
          }
        }

        else if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_100;
        }

        operator delete(v58);
        if (!v63)
        {
LABEL_107:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v68 = object;
          }

          else
          {
            v68 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_SearchFrequency", v68);
          v104 = xpc_null_create();
          xpc_release(v68);
          xpc_release(v104);
          goto LABEL_242;
        }

LABEL_101:
        v64 = v12[4];
        v65 = strlen(v64);
        if (v65 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v66 = v65;
        if (v65 >= 0x17)
        {
          if ((v65 | 7) == 0x17)
          {
            v69 = 25;
          }

          else
          {
            v69 = (v65 | 7) + 1;
          }

          v67 = operator new(v69);
          v157 = v66;
          v158 = v69 | 0x8000000000000000;
          *buf = v67;
LABEL_113:
          memmove(v67, v64, v66);
          goto LABEL_114;
        }

        HIBYTE(v158) = v65;
        v67 = buf;
        if (v65)
        {
          goto LABEL_113;
        }

LABEL_114:
        *(v67 + v66) = 0;
        v70 = strlen(v150);
        if (v70 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v71 = v70;
        if (v70 >= 0x17)
        {
          if ((v70 | 7) == 0x17)
          {
            v73 = 25;
          }

          else
          {
            v73 = (v70 | 7) + 1;
          }

          v72 = operator new(v73);
          *(&__dst + 1) = v71;
          v164 = v73 | 0x8000000000000000;
          *&__dst = v72;
LABEL_122:
          memmove(v72, v150, v71);
          goto LABEL_123;
        }

        HIBYTE(v164) = v70;
        v72 = &__dst;
        if (v70)
        {
          goto LABEL_122;
        }

LABEL_123:
        *(v72 + v71) = 0;
        v74 = SHIBYTE(v158);
        v75 = *buf;
        if (v158 >= 0)
        {
          v76 = buf;
        }

        else
        {
          v76 = *buf;
        }

        v77 = SHIBYTE(v164);
        v78 = __dst;
        if (v164 >= 0)
        {
          v79 = &__dst;
        }

        else
        {
          v79 = __dst;
        }

        v80 = strcasecmp(v76, v79);
        if (v77 < 0)
        {
          operator delete(v78);
          if ((v74 & 0x80000000) == 0)
          {
LABEL_131:
            if (!v80)
            {
              goto LABEL_138;
            }

            goto LABEL_132;
          }
        }

        else if ((v74 & 0x80000000) == 0)
        {
          goto LABEL_131;
        }

        operator delete(v75);
        if (!v80)
        {
LABEL_138:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v85 = object;
          }

          else
          {
            v85 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_HoppingFrequency", v85);
          v122 = xpc_null_create();
          xpc_release(v85);
          xpc_release(v122);
          goto LABEL_242;
        }

LABEL_132:
        v81 = v12[4];
        v82 = strlen(v81);
        if (v82 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v83 = v82;
        if (v82 >= 0x17)
        {
          if ((v82 | 7) == 0x17)
          {
            v87 = 25;
          }

          else
          {
            v87 = (v82 | 7) + 1;
          }

          v84 = operator new(v87);
          v157 = v83;
          v158 = v87 | 0x8000000000000000;
          *buf = v84;
LABEL_146:
          memmove(v84, v81, v83);
          goto LABEL_147;
        }

        HIBYTE(v158) = v82;
        v84 = buf;
        if (v82)
        {
          goto LABEL_146;
        }

LABEL_147:
        *(v84 + v83) = 0;
        v88 = strlen(v149);
        if (v88 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v89 = v88;
        if (v88 >= 0x17)
        {
          if ((v88 | 7) == 0x17)
          {
            v91 = 25;
          }

          else
          {
            v91 = (v88 | 7) + 1;
          }

          v90 = operator new(v91);
          *(&__dst + 1) = v89;
          v164 = v91 | 0x8000000000000000;
          *&__dst = v90;
LABEL_155:
          memmove(v90, v149, v89);
          goto LABEL_156;
        }

        HIBYTE(v164) = v88;
        v90 = &__dst;
        if (v88)
        {
          goto LABEL_155;
        }

LABEL_156:
        *(v90 + v89) = 0;
        v92 = SHIBYTE(v158);
        v93 = *buf;
        if (v158 >= 0)
        {
          v94 = buf;
        }

        else
        {
          v94 = *buf;
        }

        v95 = SHIBYTE(v164);
        v96 = __dst;
        if (v164 >= 0)
        {
          v97 = &__dst;
        }

        else
        {
          v97 = __dst;
        }

        v98 = strcasecmp(v94, v97);
        if (v95 < 0)
        {
          operator delete(v96);
          if ((v92 & 0x80000000) == 0)
          {
LABEL_164:
            if (!v98)
            {
              goto LABEL_171;
            }

            goto LABEL_165;
          }
        }

        else if ((v92 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        operator delete(v93);
        if (!v98)
        {
LABEL_171:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v103 = object;
          }

          else
          {
            v103 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_NeighborFrequency", v103);
          v136 = xpc_null_create();
          xpc_release(v103);
          xpc_release(v136);
          goto LABEL_242;
        }

LABEL_165:
        v99 = v12[4];
        v100 = strlen(v99);
        if (v100 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v101 = v100;
        if (v100 >= 0x17)
        {
          if ((v100 | 7) == 0x17)
          {
            v105 = 25;
          }

          else
          {
            v105 = (v100 | 7) + 1;
          }

          v102 = operator new(v105);
          v157 = v101;
          v158 = v105 | 0x8000000000000000;
          *buf = v102;
LABEL_179:
          memmove(v102, v99, v101);
          goto LABEL_180;
        }

        HIBYTE(v158) = v100;
        v102 = buf;
        if (v100)
        {
          goto LABEL_179;
        }

LABEL_180:
        *(v102 + v101) = 0;
        v106 = strlen(v148);
        if (v106 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v107 = v106;
        if (v106 >= 0x17)
        {
          if ((v106 | 7) == 0x17)
          {
            v109 = 25;
          }

          else
          {
            v109 = (v106 | 7) + 1;
          }

          v108 = operator new(v109);
          *(&__dst + 1) = v107;
          v164 = v109 | 0x8000000000000000;
          *&__dst = v108;
LABEL_188:
          memmove(v108, v148, v107);
          goto LABEL_189;
        }

        HIBYTE(v164) = v106;
        v108 = &__dst;
        if (v106)
        {
          goto LABEL_188;
        }

LABEL_189:
        *(v108 + v107) = 0;
        v110 = SHIBYTE(v158);
        v111 = *buf;
        if (v158 >= 0)
        {
          v112 = buf;
        }

        else
        {
          v112 = *buf;
        }

        v113 = SHIBYTE(v164);
        v114 = __dst;
        if (v164 >= 0)
        {
          v115 = &__dst;
        }

        else
        {
          v115 = __dst;
        }

        v116 = strcasecmp(v112, v115);
        if (v113 < 0)
        {
          operator delete(v114);
          if ((v110 & 0x80000000) == 0)
          {
LABEL_197:
            if (!v116)
            {
              goto LABEL_204;
            }

            goto LABEL_198;
          }
        }

        else if ((v110 & 0x80000000) == 0)
        {
          goto LABEL_197;
        }

        operator delete(v111);
        if (!v116)
        {
LABEL_204:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v121 = object;
          }

          else
          {
            v121 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_RplmnFrequency", v121);
          v137 = xpc_null_create();
          xpc_release(v121);
          xpc_release(v137);
          goto LABEL_242;
        }

LABEL_198:
        v117 = v12[4];
        v118 = strlen(v117);
        if (v118 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v119 = v118;
        if (v118 >= 0x17)
        {
          if ((v118 | 7) == 0x17)
          {
            v123 = 25;
          }

          else
          {
            v123 = (v118 | 7) + 1;
          }

          v120 = operator new(v123);
          v157 = v119;
          v158 = v123 | 0x8000000000000000;
          *buf = v120;
LABEL_212:
          memmove(v120, v117, v119);
          goto LABEL_213;
        }

        HIBYTE(v158) = v118;
        v120 = buf;
        if (v118)
        {
          goto LABEL_212;
        }

LABEL_213:
        *(v120 + v119) = 0;
        v124 = strlen(v147);
        if (v124 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v125 = v124;
        if (v124 >= 0x17)
        {
          if ((v124 | 7) == 0x17)
          {
            v127 = 25;
          }

          else
          {
            v127 = (v124 | 7) + 1;
          }

          v126 = operator new(v127);
          *(&__dst + 1) = v125;
          v164 = v127 | 0x8000000000000000;
          *&__dst = v126;
LABEL_221:
          memmove(v126, v147, v125);
          goto LABEL_222;
        }

        HIBYTE(v164) = v124;
        v126 = &__dst;
        if (v124)
        {
          goto LABEL_221;
        }

LABEL_222:
        *(v126 + v125) = 0;
        v128 = SHIBYTE(v158);
        v129 = *buf;
        if (v158 >= 0)
        {
          v130 = buf;
        }

        else
        {
          v130 = *buf;
        }

        v131 = SHIBYTE(v164);
        v132 = __dst;
        if (v164 >= 0)
        {
          v133 = &__dst;
        }

        else
        {
          v133 = __dst;
        }

        v134 = strcasecmp(v130, v133);
        if (v131 < 0)
        {
          operator delete(v132);
          if ((v128 & 0x80000000) == 0)
          {
LABEL_230:
            v50 = object;
            if (!v134)
            {
              goto LABEL_234;
            }

            goto LABEL_242;
          }
        }

        else if ((v128 & 0x80000000) == 0)
        {
          goto LABEL_230;
        }

        operator delete(v129);
        v50 = object;
        if (!v134)
        {
LABEL_234:
          if (v50)
          {
            xpc_retain(v50);
            v135 = v50;
          }

          else
          {
            v135 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_DownlinkFrequency", v135);
          v138 = xpc_null_create();
          xpc_release(v135);
          xpc_release(v138);
        }

LABEL_242:
        xpc_release(v50);
        v139 = v12[1];
        if (v139)
        {
          do
          {
            v140 = v139;
            v139 = *v139;
          }

          while (v139);
        }

        else
        {
          do
          {
            v140 = v12[2];
            v141 = *v140 == v12;
            v12 = v140;
          }

          while (!v141);
        }

        v12 = v140;
        if (v140 == v151)
        {
          goto LABEL_248;
        }
      }

      if ((v31 | 7) == 0x17)
      {
        v34 = 25;
      }

      else
      {
        v34 = (v31 | 7) + 1;
      }

      v33 = operator new(v34);
      v157 = v32;
      v158 = v34 | 0x8000000000000000;
      *buf = v33;
LABEL_51:
      memmove(v33, v30, v32);
      goto LABEL_52;
    }

LABEL_248:
    v142 = *(a1 + 32);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT) && ((xpc::object::to_string(buf, &v162), v158 >= 0) ? (v143 = buf) : (v143 = *buf), LODWORD(__dst) = 136315138, *(&__dst + 4) = v143, _os_log_impl(&dword_296FF7000, v142, OS_LOG_TYPE_DEFAULT, "#I Desense frequency report -> %s", &__dst, 0xCu), SHIBYTE(v158) < 0))
    {
      operator delete(*buf);
      v144 = *(a1 + 56);
      if (v144)
      {
        goto LABEL_254;
      }
    }

    else
    {
      v144 = *(a1 + 56);
      if (v144)
      {
LABEL_254:
        v145 = v162;
        v155 = v162;
        if (v162)
        {
          xpc_retain(v162);
        }

        else
        {
          v145 = xpc_null_create();
          v155 = v145;
        }

        coex::XpcClient::sendMessage(v144, 399, &v155, v146);
        xpc_release(v145);
        v155 = 0;
      }
    }

    xpc_release(v162);
    return;
  }

  v9 = *(a1 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEBUG, "#D Empty report passed; ignoring it", buf, 2u);
  }
}

void sub_2970099E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<ServiceCtrl>::execute_wrapped<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x30uLL);
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  *(a2 + 24) = 0;
  *(v8 + 3) = v9;
  *(v8 + 4) = v10;
  v11 = xpc_null_create();
  *(v8 + 5) = *(a2 + 40);
  *(a2 + 32) = v11;
  *(a2 + 40) = 0;
  v12 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v8;
  v13[1] = v5;
  v13[2] = v7;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<ServiceCtrl>::execute_wrapped<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>(ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1},std::default_delete<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<ServiceCtrl>::execute_wrapped<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>(ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1},std::default_delete<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>(v3 + 64, *a1 + 1);
  v5 = v2[5];
  if ((v3 + 72) == v4)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = xpc_null_create();
    v7 = v2[5];
    v15[0] = v6;
    v8 = xpc_null_create();
    (*(v7 + 16))(v7, 3760250882, v15);
    xpc_release(v15[0]);
    xpc_release(v8);
  }

  else if (v5)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3002000000;
    v15[3] = __Block_byref_object_copy__3;
    v15[4] = __Block_byref_object_dispose__3;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZN11ServiceCtrl13handleCommandERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEN8dispatch5blockIU13block_pointerFviSA_EEEENKUlvE_clEv_block_invoke_33;
    aBlock[3] = &__block_descriptor_tmp_34_1;
    v14 = _Block_copy(v5);
    v16 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = ___ZZN11ServiceCtrl13handleCommandERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEN8dispatch5blockIU13block_pointerFviSA_EEEENKUlvE_clEv_block_invoke_35;
    v11[3] = &unk_29EE64C20;
    v11[4] = v15;
    v12 = v11;
    dispatch::block<void({block_pointer})(xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)>::operator()<xpc::dict const&,void({block_pointer})(int,xpc::dict)>(v4[7], v2[4], &v12);
    _Block_object_dispose(v15, 8);
    if (v16)
    {
      _Block_release(v16);
    }

    if (v14)
    {
      _Block_release(v14);
    }
  }

  else
  {
    v15[0] = &__block_literal_global_14;
    dispatch::block<void({block_pointer})(xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)>::operator()<xpc::dict const&,void({block_pointer})(int,xpc::dict)>(v4[7], v2[4], v15);
  }

  v9 = v2[5];
  if (v9)
  {
    _Block_release(v9);
  }

LABEL_12:
  xpc_release(v2[4]);
  v2[4] = 0;
  if (*(v2 + 31) < 0)
  {
    operator delete(v2[1]);
  }

  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_29700A068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a12, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *aBlock)
{
  xpc_release(*(v23 - 80));
  xpc_release(v22);
  std::unique_ptr<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1},std::default_delete<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a12);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::block<void({block_pointer})(xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)>::operator()<xpc::dict const&,void({block_pointer})(int,xpc::dict)>(uint64_t a1, xpc_object_t object, void **a3)
{
  objecta = object;
  if (!object)
  {
    objecta = xpc_null_create();
    v5 = *a3;
    if (!*a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  xpc_retain(object);
  v5 = *a3;
  if (*a3)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  aBlock = v5;
  (*(a1 + 16))(a1, &objecta, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(objecta);
}

void sub_29700A1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, xpc_object_t object)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void AudioManager::setAudioState(uint64_t a1, xpc::object *a2)
{
  v58 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(object, a2);
    v24 = SHIBYTE(object[2]) >= 0 ? object : object[0];
    *xdict = 136315138;
    *&xdict[4] = v24;
    _os_log_debug_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEBUG, "#D Setting Audio State: %s", xdict, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }
  }

  *xdict = 0xAAAAAAAAAAAAAAAALL;
  v5 = *MEMORY[0x29EDBE6B0];
  object[0] = a2;
  object[1] = v5;
  xpc::dict::object_proxy::operator xpc::dict(object, xdict);
  value = xpc_dictionary_get_value(*xdict, *MEMORY[0x29EDBEED0]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v7 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (v7)
  {
    v8 = 0;
    LOBYTE(v9) = 1;
    if (*(a1 + 56) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = xpc_dictionary_get_value(*xdict, *MEMORY[0x29EDBED70]);
  object[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (v11)
  {
    LOBYTE(v9) = 2;
    v8 = 1;
    if (*(a1 + 56) == 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v18 = xpc_dictionary_get_value(*xdict, *MEMORY[0x29EDBEAF0]);
  object[0] = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v21 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  v8 = 0;
  if (v21)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 56) != v9)
  {
LABEL_13:
    *(a1 + 56) = v9;
    AudioManager::notifyAudioOutputClients(a1);
  }

LABEL_14:
  v12 = v8 & (v8 & (*(a1 + 88) == 0) | *(a1 + 88)) & 1;
  if (*(a1 + 88) != v12)
  {
    *(a1 + 88) = v12;
    AudioManager::notifyAudioSpeakerClients(a1);
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  v13 = *MEMORY[0x29EDBE628];
  object[0] = a2;
  object[1] = v13;
  xpc::dict::object_proxy::operator xpc::dict(object, &v55);
  v14 = xpc_dictionary_get_value(v55, *MEMORY[0x29EDBE800]);
  object[0] = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v15 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v17 = xpc_dictionary_get_value(v55, *MEMORY[0x29EDBE808]);
    object[0] = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v19 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    if (v19)
    {
      v16 = 2;
    }

    else
    {
      v20 = xpc_dictionary_get_value(v55, *MEMORY[0x29EDBE810]);
      object[0] = v20;
      if (v20)
      {
        xpc_retain(v20);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      v22 = xpc::dyn_cast_or_default(object, 0);
      xpc_release(object[0]);
      if (v22)
      {
        v16 = 3;
      }

      else
      {
        v23 = xpc_dictionary_get_value(v55, *MEMORY[0x29EDBE818]);
        object[0] = v23;
        if (v23)
        {
          xpc_retain(v23);
        }

        else
        {
          object[0] = xpc_null_create();
        }

        v25 = xpc::dyn_cast_or_default(object, 0);
        xpc_release(object[0]);
        if (v25)
        {
          v16 = 4;
        }

        else
        {
          v26 = xpc_dictionary_get_value(v55, *MEMORY[0x29EDBE820]);
          object[0] = v26;
          if (v26)
          {
            xpc_retain(v26);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v27 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          if (v27)
          {
            v16 = 5;
          }

          else
          {
            v28 = xpc_dictionary_get_value(v55, *MEMORY[0x29EDBE828]);
            object[0] = v28;
            if (v28)
            {
              xpc_retain(v28);
            }

            else
            {
              object[0] = xpc_null_create();
            }

            v29 = xpc::dyn_cast_or_default(object, 0);
            xpc_release(object[0]);
            if (v29)
            {
              v16 = 6;
            }

            else
            {
              v16 = 0;
            }
          }
        }
      }
    }
  }

  if (*(a1 + 24) != v16)
  {
    *(a1 + 24) = v16;
    AudioManager::notifyAudioInputClients(a1);
  }

  xarray = 0xAAAAAAAAAAAAAAAALL;
  v30 = *MEMORY[0x29EDBEC30];
  object[0] = a2;
  object[1] = v30;
  xpc::dict::object_proxy::operator xpc::array(object, &xarray);
  v31 = *(a1 + 120);
  v32 = xarray;
  if (xarray)
  {
    xpc_retain(xarray);
LABEL_65:
    xpc_retain(v32);
    v33 = v32;
    goto LABEL_66;
  }

  v32 = xpc_null_create();
  if (v32)
  {
    goto LABEL_65;
  }

  v32 = xpc_null_create();
  v33 = 0;
LABEL_66:
  xpc_release(v33);
  v34 = xarray;
  if (xarray)
  {
    xpc_retain(xarray);
  }

  else
  {
    v34 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](xarray) == MEMORY[0x29EDCA9E0])
  {
    count = xpc_array_get_count(xarray);
    v51 = a1;
    if (v34)
    {
      goto LABEL_71;
    }

LABEL_73:
    v52 = xpc_null_create();
    goto LABEL_74;
  }

  count = 0;
  v51 = a1;
  if (!v34)
  {
    goto LABEL_73;
  }

LABEL_71:
  xpc_retain(v34);
  v52 = v34;
LABEL_74:
  xpc_release(v34);
  if (count || v32 != v52)
  {
    v36 = 0;
    v37 = *MEMORY[0x29EDBE830];
    v38 = count - 1;
    while (1)
    {
      while (1)
      {
        memset(object, 170, sizeof(object));
        v39 = xpc_array_get_value(v32, v36);
        v53 = v39;
        if (v39)
        {
          xpc_retain(v39);
        }

        else
        {
          v53 = xpc_null_create();
        }

        xpc::dyn_cast_or_default(object, &v53, "", v40);
        xpc_release(v53);
        v41 = strlen(v37);
        v42 = v41;
        v43 = SHIBYTE(object[2]);
        if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
        {
          if (v41 == -1)
          {
LABEL_101:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v44 = object[0];
          v45 = object[1];
        }

        else
        {
          if (v41 == -1)
          {
            goto LABEL_101;
          }

          v44 = object;
          v45 = SHIBYTE(object[2]);
        }

        v46 = v45 >= v42 ? v42 : v45;
        v47 = memcmp(v44, v37, v46) == 0;
        v48 = v45 == v42 && v47;
        if ((v43 & 0x80000000) == 0)
        {
          break;
        }

        operator delete(object[0]);
        v31 |= v48;
        v49 = v36 + 1;
        v50 = v38 == v36++;
        if (v50)
        {
          goto LABEL_96;
        }
      }

      v31 |= v48;
      v49 = v36 + 1;
      v50 = v38 == v36++;
      if (v50)
      {
LABEL_96:
        v36 = v49;
        if (v32 == v52)
        {
          break;
        }
      }
    }
  }

  xpc_release(v52);
  xpc_release(v32);
  if (*(v51 + 120) != (v31 & 1))
  {
    *(v51 + 120) = v31 & 1;
    AudioManager::notifyAudioWiredPortClients(v51);
  }

  xpc_release(xarray);
  xpc_release(v55);
  xpc_release(*xdict);
}

void sub_29700A898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void xpc::dict::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v4) != MEMORY[0x29EDCAA00])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void AudioManager::notifyAudioOutputClients(os_log_t *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 56);
    if (v3 > 3)
    {
      v4 = "Unknown Audio Output";
    }

    else
    {
      v4 = off_29EE64C80[v3];
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = v4;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Audio Output: %s", &v13, 0xCu);
  }

  v5 = this[8];
  v6 = this[9];
  if (v5 != v6)
  {
    while (!v5->isa)
    {
      v7 = 0;
      isa = v5[1].isa;
      if (isa)
      {
        goto LABEL_11;
      }

LABEL_12:
      v9 = *(this + 56);
      if (!v7)
      {
        v11 = 0;
        *&v13 = MEMORY[0x29EDCA5F8];
        *(&v13 + 1) = 3321888768;
        v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN12AudioManager16AudioOutputStateEEEclIJS2_EEEvDpT__block_invoke;
        v15 = &__block_descriptor_41_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE_e5_v8__0l;
LABEL_18:
        v12 = 0;
        goto LABEL_19;
      }

      v10 = _Block_copy(v7);
      v11 = v10;
      *&v13 = MEMORY[0x29EDCA5F8];
      *(&v13 + 1) = 3321888768;
      v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN12AudioManager16AudioOutputStateEEEclIJS2_EEEvDpT__block_invoke;
      v15 = &__block_descriptor_41_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE_e5_v8__0l;
      if (!v10)
      {
        goto LABEL_18;
      }

      v12 = _Block_copy(v10);
LABEL_19:
      aBlock = v12;
      v17 = v9;
      dispatch_async(isa, &v13);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v11)
      {
        _Block_release(v11);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      v5 += 2;
      if (v5 == v6)
      {
        return;
      }
    }

    v7 = _Block_copy(v5->isa);
    isa = v5[1].isa;
    if (!isa)
    {
      goto LABEL_12;
    }

LABEL_11:
    dispatch_retain(isa);
    goto LABEL_12;
  }
}

void sub_29700AD3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void AudioManager::notifyAudioSpeakerClients(NSObject **this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 88))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    LODWORD(v12) = 136315138;
    *(&v12 + 4) = v3;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Speaker State: %s", &v12, 0xCu);
  }

  v4 = this[12];
  v5 = this[13];
  if (v4 != v5)
  {
    while (!v4->isa)
    {
      v6 = 0;
      isa = v4[1].isa;
      if (isa)
      {
        goto LABEL_11;
      }

LABEL_12:
      v8 = *(this + 88);
      if (!v6)
      {
        v10 = 0;
        *&v12 = MEMORY[0x29EDCA5F8];
        *(&v12 + 1) = 3321888768;
        v13 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke;
        v14 = &__block_descriptor_41_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE_e5_v8__0l;
LABEL_18:
        v11 = 0;
        goto LABEL_19;
      }

      v9 = _Block_copy(v6);
      v10 = v9;
      *&v12 = MEMORY[0x29EDCA5F8];
      *(&v12 + 1) = 3321888768;
      v13 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke;
      v14 = &__block_descriptor_41_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE_e5_v8__0l;
      if (!v9)
      {
        goto LABEL_18;
      }

      v11 = _Block_copy(v9);
LABEL_19:
      aBlock = v11;
      v16 = v8;
      dispatch_async(isa, &v12);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v6)
      {
        _Block_release(v6);
      }

      v4 += 2;
      if (v4 == v5)
      {
        return;
      }
    }

    v6 = _Block_copy(v4->isa);
    isa = v4[1].isa;
    if (!isa)
    {
      goto LABEL_12;
    }

LABEL_11:
    dispatch_retain(isa);
    goto LABEL_12;
  }
}

void sub_29700AFB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>(uint64_t *a1, unsigned int *a2, void **a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v4, &object);
  xpc_release(object);
}

void ___ZN17ABMServerInternal24handlePublicMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = MEMORY[0x29C26CE60](*(a1 + 40));
  v8 = MEMORY[0x29EDCAA00];
  if (v7 != MEMORY[0x29EDCAA00])
  {
    return;
  }

  if (a2 != -534716414)
  {
    v11 = xpc_int64_create(a2);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_11:
    v11 = xpc_null_create();
LABEL_12:
    xpc_dictionary_set_value(*(a1 + 40), kKeyCommandResult[0], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    if (MEMORY[0x29C26CE60](*a3) == v8)
    {
      v13 = *a3;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v13 = xpc_null_create();
      }

      xpc_dictionary_set_value(*(a1 + 40), kKeyCommandData[0], v13);
      v14 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v14);
    }

    goto LABEL_27;
  }

  if (*(v6 + 128) != 3)
  {
    v11 = xpc_int64_create(-534716414);
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v9) == v8)
    {
      xpc_retain(v9);
      v10 = v9;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v15 = xpc_int64_create(-534716415);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(a1 + 40), kKeyCommandResult[0], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_string_create("Server not available");
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, *MEMORY[0x29EDBE648], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  if (v10)
  {
    xpc_retain(v10);
    v19 = v10;
  }

  else
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(a1 + 40), kKeyCommandData[0], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  xpc_release(v10);
LABEL_27:
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);

  xpc_connection_send_message(v21, v22);
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c22_ZTSN3xpc10connectionE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN20HandDetectionManager4initEv_block_invoke_8(void *a1, unsigned int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        *(v5 + 88) = a2;
        v9 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          if (a2 > 3)
          {
            v10 = "Unknown Audio Output";
          }

          else
          {
            v10 = off_29EE643A0[a2];
          }

          v11 = 136315138;
          v12 = v10;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Audio State: %s", &v11, 0xCu);
        }

        HandDetectionManager::updateHandDetection(v5);
      }
    }
  }
}

void HandDetectionManager::updateHandDetection(os_log_t *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(this + 88);
  if (v2 != 1 || *(this + 34) != 1 || *(this + 112) != 1 || *(this + 152) != 1)
  {
    v3 = 0;
    v4 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

LABEL_8:
    if (v2 > 3)
    {
      v5 = "Unknown Audio Output";
    }

    else
    {
      v5 = off_29EE643A0[v2];
    }

    v6 = "Off";
    if (*(this + 112))
    {
      v7 = "On";
    }

    else
    {
      v7 = "Off";
    }

    v8 = *(this + 34);
    if (v8 > 2)
    {
      v9 = "Unknown";
      if (*(this + 152))
      {
        v6 = "On";
      }

      if (v3 > 2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = off_29EE64370[v8];
      if (*(this + 152))
      {
        v6 = "On";
      }

      if (v3 > 2)
      {
LABEL_18:
        v10 = "Unknown Hand Detection";
LABEL_23:
        *v18 = 136316162;
        *&v18[4] = v5;
        *&v18[12] = 2080;
        *&v18[14] = v7;
        *&v18[22] = 2080;
        v19 = v9;
        *aBlock = 2080;
        *&aBlock[2] = v6;
        *&aBlock[10] = 2080;
        v21 = v10;
        _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Audio State: %s, Proximity Sensor: %s, Motion State: %s, Tx State: %s -> Notifying Hand Detection: %s", v18, 0x34u);
        goto LABEL_24;
      }
    }

    v10 = off_29EE64388[v3];
    goto LABEL_23;
  }

  v3 = *(this + 16);
  v4 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_8;
  }

LABEL_24:
  v11 = this[3];
  v12 = this[4];
  if (v11 != v12)
  {
    while (!v11->isa)
    {
      v13 = 0;
      isa = v11[1].isa;
      if (isa)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (!v13)
      {
        v16 = 0;
        *v18 = MEMORY[0x29EDCA5F8];
        *&v18[8] = 1174405120;
        *&v18[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEclIJS2_EEEvDpT__block_invoke;
        v19 = &__block_descriptor_tmp_27_2;
LABEL_36:
        v17 = 0;
        goto LABEL_37;
      }

      v15 = _Block_copy(v13);
      v16 = v15;
      *v18 = MEMORY[0x29EDCA5F8];
      *&v18[8] = 1174405120;
      *&v18[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEclIJS2_EEEvDpT__block_invoke;
      v19 = &__block_descriptor_tmp_27_2;
      if (!v15)
      {
        goto LABEL_36;
      }

      v17 = _Block_copy(v15);
LABEL_37:
      *aBlock = v17;
      *&aBlock[8] = v3;
      dispatch_async(isa, v18);
      if (*aBlock)
      {
        _Block_release(*aBlock);
      }

      if (v16)
      {
        _Block_release(v16);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v13)
      {
        _Block_release(v13);
      }

      v11 += 2;
      if (v11 == v12)
      {
        return;
      }
    }

    v13 = _Block_copy(v11->isa);
    isa = v11[1].isa;
    if (!isa)
    {
      goto LABEL_30;
    }

LABEL_29:
    dispatch_retain(isa);
    goto LABEL_30;
  }
}

void sub_29700B92C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c92_ZTSN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN9SARModule28initializeHandDetection_syncEv_block_invoke(void *a1, unsigned __int8 a2)
{
  v30[1] = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    return;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
      return;
    }
  }

  if (*(v5 + 232))
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  *(v5 + 136) = v9;
  v10 = *(v5 + 104);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEFAULT, "#I Sending Grip State: 0x%x\n", buf, 8u);
  }

  v11 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v12 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v11);
    v13 = *buf;
    memset(buf, 0, sizeof(buf));
    v14 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v12 = off_2A18B7430;
  }

  v16 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v27 = *(v5 + 136);
  if (*(v12 + 1))
  {
    *buf = 0;
    v30[0] = 0;
    v28 = 1;
    v17 = AppleSARHelper::callUserClientMethod(v12, 9, buf, 1, &v27, 1, v30, &v28, &v27, 1uLL);
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v17 = 0;
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v25 = v17;
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    if (v25)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_27:
  if (v17)
  {
LABEL_28:
    if (*(v5 + 137) != *(v5 + 136) || !*(v5 + 272))
    {
      v18 = *(v5 + 80);
      if (!v18 || (v19 = *(v5 + 72), (v20 = std::__shared_weak_count::lock(v18)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v21 = v20;
      v22 = operator new(8uLL);
      *v22 = v5;
      v23 = *(v5 + 88);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = operator new(0x18uLL);
      *v24 = v22;
      v24[1] = v19;
      v24[2] = v21;
      dispatch_async_f(v23, v24, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28initializeHandDetection_syncEvEUb6_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }
    }

    return;
  }

LABEL_35:
  v26 = *(v5 + 104);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v26, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion State!", buf, 2u);
  }
}

void sub_29700BDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __destroy_helper_block_e8_32c92_ZTSN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN4coex6Module5State32handleTransparentMessageReq_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to send transparent message req: %@", &v4, 0xCu);
    }
  }
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN20HandDetectionManager4initEv_block_invoke_13(void *a1, unsigned int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        isProxCovered = ctu::iokit::IOHIDController::isProxCovered(*(v5 + 96));
        v10 = *v5;
        if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          if (*(v5 + 112) == isProxCovered)
          {
            return;
          }

          goto LABEL_8;
        }

        v13 = "Off";
        if (isProxCovered)
        {
          v13 = "On";
        }

        v14 = 136315394;
        v15 = v13;
        v16 = 1024;
        v17 = a2;
        _os_log_debug_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEBUG, "#D Received proximity information: %s (mask: 0x%x)", &v14, 0x12u);
        if (*(v5 + 112) != isProxCovered)
        {
LABEL_8:
          *(v5 + 112) = isProxCovered;
          v11 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            v12 = "Off";
            if (isProxCovered)
            {
              v12 = "On";
            }

            v14 = 136315138;
            v15 = v12;
            _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Proximity Sensor: %s", &v14, 0xCu);
          }

          HandDetectionManager::updateHandDetection(v5);
        }
      }
    }
  }
}

uint64_t abm::debug::handleDebugPrint(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[1] = v8;
  v43[2] = v8;
  v43[0] = v8;
  ctu::LogMessageBuffer::LogMessageBuffer(v43);
  if (a2 && *a2)
  {
    v9 = MEMORY[0x29C26B610](v43, a2);
    MEMORY[0x29C26B610](v9, ": ");
  }

  MEMORY[0x29C26B090](&v41, a3, a4);
  ctu::operator<<();
  v10 = MEMORY[0x29C26B0B0](&v41);
  ctu::Clock::now_in_nanoseconds(v10);
  v11 = operator new(0x60uLL);
  v12 = abm::debug::kLogDomainMap[a1];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __p[1] = v14;
    v40 = v16 | 0x8000000000000000;
    __p[0] = v15;
    goto LABEL_12;
  }

  HIBYTE(v40) = v13;
  v15 = __p;
  if (v13)
  {
LABEL_12:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  MEMORY[0x29C26B070](v43);
  ctu::LogMessageBuffer::takeMetadata(v43);
  ctu::LogMessage::LogMessage();
  v41 = v11;
  v17 = operator new(0x20uLL);
  v17->__vftable = &unk_2A1E2C0C8;
  v17->__shared_owners_ = 0;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v11;
  v42 = v17;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
LABEL_15:
      data = v18;
      size = v19;
      goto LABEL_18;
    }
  }

  data = v11[2].__r_.__value_.__l.__data_;
  size = v11[2].__r_.__value_.__l.__size_;
LABEL_18:
  v22 = data + size;
  v23 = memchr(data, 10, size);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v24 == v22 || (v25 = v24 + 1, v24 + 1 == v22))
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    do
    {
      v28 = *v25;
      if (v28 != 10)
      {
        *v24++ = v28;
      }

      ++v25;
    }

    while (v25 != v22);
    LOBYTE(v19) = *(&v11[2].__r_.__value_.__s + 23);
    if ((v19 & 0x80) == 0)
    {
LABEL_24:
      v26 = v18 + v19;
      v27 = v24 - v18;
      if (v19 >= (v24 - v18))
      {
        goto LABEL_25;
      }

LABEL_32:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v30 = v11[2].__r_.__value_.__l.__data_;
  v29 = v11[2].__r_.__value_.__l.__size_;
  v26 = &v30[v29];
  v27 = v24 - v30;
  if (v29 < v24 - v30)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (v26 - v24 != -1)
  {
    std::string::__erase_external_with_move(v18, v27, v26 - v24);
    goto LABEL_35;
  }

  if ((v19 & 0x80) == 0)
  {
    *(&v11[2].__r_.__value_.__s + 23) = v27 & 0x7F;
    v18->__r_.__value_.__s.__data_[v27] = 0;
LABEL_35:
    if (a1 <= 1)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  v35 = v11[2].__r_.__value_.__l.__data_;
  v11[2].__r_.__value_.__l.__size_ = v27;
  v35[v27] = 0;
  if (a1 <= 1)
  {
LABEL_36:
    if (a1)
    {
      v33 = qword_2A18B7940;
      if (qword_2A18B7940 && os_log_type_enabled(qword_2A18B7940, OS_LOG_TYPE_DEBUG))
      {
        v34 = &v41[2];
        if (SHIBYTE(v41[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v34 = v34->__words[0];
        }

        *buf = 136315138;
        v46 = v34;
        _os_log_debug_impl(&dword_296FF7000, v33, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
      }
    }

    else
    {
      v31 = _MergedGlobals_13;
      if (_MergedGlobals_13 && os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_DEFAULT))
      {
        v32 = &v41[2];
        if (SHIBYTE(v41[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v32 = v32->__words[0];
        }

        *buf = 136315138;
        v46 = v32;
LABEL_54:
        _os_log_impl(&dword_296FF7000, v31, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        goto LABEL_55;
      }
    }

    goto LABEL_55;
  }

LABEL_48:
  if (a1 != 2)
  {
    v31 = qword_2A18B7948;
    if (qword_2A18B7948)
    {
      if (os_log_type_enabled(qword_2A18B7948, OS_LOG_TYPE_DEFAULT))
      {
        v36 = &v41[2];
        if (SHIBYTE(v41[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v36 = v36->__words[0];
        }

        *buf = 136315138;
        v46 = v36;
        goto LABEL_54;
      }
    }
  }

LABEL_55:
  v37 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  return MEMORY[0x29C26B0B0](v43);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZN12PowerManager5State4initEv_block_invoke_2(void *a1, ctu::power::manager *a2, const void **a3)
{
  v67 = *MEMORY[0x29EDCA608];
  v5 = a1[4];
  v6 = a1[6];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = std::__shared_weak_count::lock(v6);
  if (!v8 || !a1[5])
  {
LABEL_7:
    (*(*a3 + 2))();
    if (!v8)
    {
      return;
    }

    goto LABEL_89;
  }

  if (*a3)
  {
    v9 = _Block_copy(*a3);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 14);
  v11 = *(v5 + 60);
  v49 = v11;
  HIDWORD(v13) = a2 + 536870288;
  LODWORD(v13) = a2 + 536870288;
  v12 = v13 >> 4;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      if (v11)
      {
        goto LABEL_33;
      }

      v15 = 2;
    }

    else
    {
      if (v12 != 9)
      {
        if (v12 != 11 || v10 || v11 == 2)
        {
          goto LABEL_33;
        }

        v14 = 0;
        v15 = 2;
        goto LABEL_29;
      }

      if (v10)
      {
        goto LABEL_33;
      }

      v15 = v11;
      if (v11 != 2)
      {
        goto LABEL_33;
      }
    }

LABEL_28:
    v14 = 1;
    goto LABEL_29;
  }

  if (!v12)
  {
    if (v10 != 1)
    {
      goto LABEL_33;
    }

    v15 = 0;
    goto LABEL_28;
  }

  if (v12 != 1 || v10 != 1)
  {
    goto LABEL_33;
  }

  v14 = 0;
  v15 = v11 != 0;
LABEL_29:
  if (v5[19])
  {
    if (a2 == -536870288)
    {
      goto LABEL_33;
    }

    if (a2 == -536870272)
    {
      if (!v5[25])
      {
        if (v9)
        {
          v47 = _Block_copy(v9);
        }

        else
        {
          v47 = 0;
        }

        v48 = v5[12];
        v5[12] = v47;
        if (v48)
        {
          _Block_release(v48);
        }

        v16 = 1;
        v17 = v5[4];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
LABEL_41:
          if (a2 == -536870144 || a2 == -536870256)
          {
            v23 = v5[25];
            if (v23)
            {
              v24 = v5[4];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v23;
                _os_log_impl(&dword_296FF7000, v24, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (skipping power event); count=%zd", buf, 0xCu);
              }

              v26 = v5[24];
              v25 = v5 + 24;
              std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v26);
              *v25 = 0;
              v25[1] = 0;
              *(v25 - 1) = v25;
              if (!v9)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }
          }

LABEL_87:
          if (!v9)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

LABEL_34:
        v18 = ctu::power::manager::asCString(a2);
        v19 = v5[19];
        v20 = "Unknown";
        v21 = v5[25];
        if (v10 == 1)
        {
          v20 = "PoweredOn";
        }

        *buf = 136316418;
        *&buf[4] = v18;
        v61 = 1024;
        if (!v10)
        {
          v20 = "LowPower";
        }

        *v62 = v49;
        v22 = "false";
        *&v62[4] = 2080;
        *&v62[6] = v20;
        *&v62[14] = 2048;
        if (v16)
        {
          v22 = "true";
        }

        *&v62[16] = v19;
        v63 = 2048;
        v64 = v21;
        v65 = 2080;
        v66 = v22;
        _os_log_impl(&dword_296FF7000, v17, OS_LOG_TYPE_DEFAULT, "#I Cannot accept notification: %s, SleepState: %u, PowerState: %s, Assertions: %lu, Assertions-deferred: %lu, Deferred-ack: %s", buf, 0x3Au);
        goto LABEL_41;
      }

LABEL_33:
      (*(v9 + 2))(v9, 0);
      v16 = 0;
      v17 = v5[4];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }
  }

  *(v5 + 14) = v14;
  *(v5 + 15) = v15;
  *(v5 + 16) = a2;
  v27 = v5[9];
  v57 = a2;
  v58 = v10;
  v59 = v11;
  v56 = __PAIR64__(v15, v14);
  PowerStats::reportSystemStateChange(v27, &v58, &v56);
  v28 = v5[4];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = ctu::power::manager::asCString(a2);
    v30 = "Unknown";
    v31 = "PoweredOn";
    v33 = *(v5 + 14);
    v32 = *(v5 + 15);
    if (v33 != 1)
    {
      v31 = "Unknown";
    }

    if (!v33)
    {
      v31 = "LowPower";
    }

    if (v32 <= 2)
    {
      v30 = off_29EE64A20[v32];
    }

    *buf = 136315650;
    *&buf[4] = v29;
    v61 = 2080;
    *v62 = v31;
    *&v62[8] = 2080;
    *&v62[10] = v30;
    _os_log_impl(&dword_296FF7000, v28, OS_LOG_TYPE_DEFAULT, "#I Power notification: %s, Power state: %s, Sleep state: %s", buf, 0x20u);
  }

  v34 = *(v5 + 16);
  switch(v34)
  {
    case -536870144:
LABEL_59:
      v35 = *(v5 + 14);
      v36 = dispatch_group_create();
      v37 = v5[11];
      if (v37)
      {
        if (v36)
        {
          dispatch_retain(v36);
          dispatch_group_enter(v36);
          v37 = v5[11];
        }

        *buf = v36;
        (*(v37 + 16))(v37, v35, buf);
        if (*buf)
        {
          dispatch_group_leave(*buf);
          if (*buf)
          {
            dispatch_release(*buf);
          }
        }
      }

      v38 = v5[1];
      if (!v38 || (v39 = *v5, (v40 = std::__shared_weak_count::lock(v38)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v41 = v40;
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v40->__on_zero_shared)(v40);
        std::__shared_weak_count::__release_weak(v41);
      }

      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN12PowerManager5State28handlePowerNotification_syncEN8dispatch5blockIU13block_pointerFvbEEEj_block_invoke;
      block[3] = &__block_descriptor_tmp_26;
      block[4] = v5;
      object = v36;
      if (v36)
      {
        dispatch_retain(v36);
      }

      if (v9)
      {
        v42 = _Block_copy(v9);
      }

      else
      {
        v42 = 0;
      }

      aBlock = v42;
      v53 = v39;
      v54 = v41;
      atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v55 = v35;
      dispatch_group_notify(v36, v5[2], block);
      if (v54)
      {
        std::__shared_weak_count::__release_weak(v54);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      std::__shared_weak_count::__release_weak(v41);
      if (v36)
      {
        dispatch_release(v36);
      }

      goto LABEL_87;
    case -536870256:
      (*(v9 + 2))(v9, 1);
      v43 = v5[25];
      if (v43)
      {
        v44 = v5[4];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v43;
          _os_log_impl(&dword_296FF7000, v44, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (after WillNotSleep); count=%zd", buf, 0xCu);
        }

        v46 = v5[24];
        v45 = v5 + 24;
        std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v46);
        *v45 = 0;
        v45[1] = 0;
        *(v45 - 1) = v45;
      }

      break;
    case -536870272:
      goto LABEL_59;
    default:
      (*(v9 + 2))(v9, 1);
      break;
  }

LABEL_88:
  _Block_release(v9);
LABEL_89:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_29700CD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, dispatch_group_t group)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void PowerStats::reportSystemStateChange(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(result + 100) = *(a3 + 2);
  *(result + 92) = v4;
  v5 = *(a3 + 2);
  if (v5 != -536870112)
  {
    if (v5 != -536870272)
    {
      return;
    }

    if (*(a3 + 1) == 1)
    {
      if (*(result + 88) == 1)
      {
        v6 = *result;
        if (os_log_type_enabled(*result, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Forced sleep while power assertion(s) held ", buf, 2u);
        }

        ++*(result + 20);
        v16 = 0;
        LOBYTE(__p) = 0;
        PowerStats::submitLowPowerEventMetric_sync(result, 1u, 1u, &__p);
        if (v16 < 0)
        {
          operator delete(__p);
        }
      }

      ++*(result + 28);
      SystemTime = TelephonyUtilGetSystemTime();
      *(result + 72) = SystemTime;
      v8 = *(result + 64);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      ++*(result + 32);
      SystemTime = TelephonyUtilGetSystemTime();
      *(result + 72) = SystemTime;
      v8 = *(result + 64);
      if (!v8)
      {
        return;
      }
    }

    *(result + 80) = (SystemTime - v8) / 0x3E8u;
    return;
  }

  ++*(result + 24);
  v10 = TelephonyUtilGetSystemTime();
  *(result + 64) = v10;
  v11 = *(result + 72);
  if (v11)
  {
    v12 = (v10 - v11) / 0x3E8u;
    *(result + 84) = v12;
  }

  else
  {
    v12 = *(result + 84);
  }

  v13 = *(a2 + 4) == 1;
  v14 = *(result + 80);

  PowerStats::submitWakeInfoMetric_sync(result, v13, v12, v14);
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

void PowerStats::submitWakeInfoMetric_sync(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30[0]) = 0;
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of wake info", v30, 2u);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = MEMORY[0x29EDCAA00];
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v9) == v10)
    {
      xpc_retain(v9);
      v11 = v9;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v12) == v10)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  v14 = xpc_int64_create(a2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF008], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a3);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF468], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(a4);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF358], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE588], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = xpc_int64_create(524465);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE660], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (v13)
  {
    xpc_retain(v13);
    v24 = v13;
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE580], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  if (*(a1 + 104) && *(a1 + 112))
  {
    if (v11)
    {
      xpc_retain(v11);
      v26 = v11;
      v27 = *(a1 + 104);
      if (v27)
      {
LABEL_32:
        v28 = _Block_copy(v27);
        goto LABEL_35;
      }
    }

    else
    {
      v26 = xpc_null_create();
      v27 = *(a1 + 104);
      if (v27)
      {
        goto LABEL_32;
      }
    }

    v28 = 0;
LABEL_35:
    v29 = *(a1 + 112);
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 1174405120;
    v30[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
    v30[3] = &__block_descriptor_tmp_43;
    if (v28)
    {
      aBlock = _Block_copy(v28);
      object = v26;
      if (v26)
      {
LABEL_37:
        xpc_retain(v26);
LABEL_40:
        dispatch_async(v29, v30);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v28)
        {
          _Block_release(v28);
        }

        xpc_release(v26);
        goto LABEL_45;
      }
    }

    else
    {
      aBlock = 0;
      object = v26;
      if (v26)
      {
        goto LABEL_37;
      }
    }

    object = xpc_null_create();
    goto LABEL_40;
  }

LABEL_45:
  xpc_release(v13);
  xpc_release(v11);
}

xpc_object_t __copy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void dispatch::block<void({block_pointer})(xpc::dict)>::operator()<xpc::dict const&>(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v2 + 16))(v2, &object);
  xpc_release(object);
}

void ___ZN12PowerManager5State10initializeEv_block_invoke_49(void *a1, xpc_object_t *a2)
{
  v3 = a1[5];
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v19 = v5;
  if (!v5)
  {
    return;
  }

  v18 = a1[4];
  if (!v18 || (v6 = a1[6]) == 0)
  {
LABEL_19:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v13 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v13);
    }

    return;
  }

  v7 = *MEMORY[0x29EDBEBD0];
  v8 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v8 | 7) + 1;
    }

    v10 = operator new(v12);
    __dst[1] = v9;
    v17 = v12 | 0x8000000000000000;
    __dst[0] = v10;
LABEL_14:
    memmove(v10, v7, v9);
    *(v9 + v10) = 0;
    v11 = *a2;
    v15 = v11;
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  HIBYTE(v17) = v8;
  v10 = __dst;
  if (v8)
  {
    goto LABEL_14;
  }

  LOBYTE(__dst[0]) = 0;
  v11 = *a2;
  v15 = v11;
  if (v11)
  {
LABEL_9:
    xpc_retain(v11);
    goto LABEL_16;
  }

LABEL_15:
  v11 = xpc_null_create();
  v15 = v11;
LABEL_16:
  v14 = 0;
  ServiceManager::runCommand(v6, __dst, &v15, &v14);
  xpc_release(v11);
  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  v5 = v19;
  if (v19)
  {
    goto LABEL_19;
  }
}

void sub_29700D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  xpc_release(v18);
  if (a17 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void ___ZN11StatsModule28registerCommandHandlers_syncEv_block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v27 = v8;
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a1[5];
  if (!v10)
  {
    goto LABEL_18;
  }

  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v11 = v7[13];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v26 = *MEMORY[0x29EDBEBD0];
      *object = 136315138;
      *&object[4] = v26;
      _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "No input is given for %s", object, 0xCu);
      if (!*a3)
      {
LABEL_18:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }
    }

    else if (!*a3)
    {
      goto LABEL_18;
    }

    v12 = xpc_null_create();
    v13 = *a3;
    *object = v12;
    v14 = xpc_null_create();
    v13[2](v13, 3760250880, object);
    xpc_release(*object);
    xpc_release(v14);
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = *a2;
  if (v15)
  {
    xpc_retain(v15);
    v16 = *a3;
    if (*a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = xpc_null_create();
    v16 = *a3;
    if (*a3)
    {
LABEL_10:
      v17 = _Block_copy(v16);
      v18 = v7[10];
      if (!v18)
      {
LABEL_23:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_14;
    }
  }

  v17 = 0;
  v18 = v7[10];
  if (!v18)
  {
    goto LABEL_23;
  }

LABEL_14:
  v19 = v7[9];
  v20 = std::__shared_weak_count::lock(v18);
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = v20;
  v22 = operator new(0x28uLL);
  *v22 = v7;
  v22[1] = v10;
  v22[2] = v9;
  v22[3] = v15;
  v23 = xpc_null_create();
  v22[4] = v17;
  v24 = v7[11];
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v22;
  v25[1] = v19;
  v25[2] = v21;
  dispatch_async_f(v24, v25, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  xpc_release(v23);
  v9 = v27;
  if (v27)
  {
    goto LABEL_18;
  }
}

void sub_29700DB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v39 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v36 = v1;
  v2 = *v1;
  v3 = *MEMORY[0x29EDBE588];
  if (xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE588]))
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE580]);
    v5 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v5 = xpc_null_create();
    }

    v8 = MEMORY[0x29C26CE60](v5);
    v9 = MEMORY[0x29EDCAA00];
    if (v8 != MEMORY[0x29EDCAA00] && MEMORY[0x29C26CE60](v5) != MEMORY[0x29EDCA9E0])
    {
      v6 = 3760250880;
      v10 = *(v2 + 104);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "Data type should be dictionary/array", buf, 2u);
      }

      goto LABEL_63;
    }

    memset(buf, 170, 24);
    v11 = xpc_dictionary_get_value(*(v1 + 24), v3);
    *object = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      *object = xpc_null_create();
    }

    xpc::dyn_cast_or_default(buf, object, "", v12);
    xpc_release(*object);
    v13 = *MEMORY[0x29EDBF8E0];
    v14 = strlen(*MEMORY[0x29EDBF8E0]);
    v15 = buf[23];
    if ((buf[23] & 0x8000000000000000) != 0)
    {
      if (v14 == *&buf[8])
      {
        if (v14 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v13, v14))
        {
LABEL_41:
          v23 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
          *object = v23;
          if (v23)
          {
            xpc_retain(v23);
          }

          else
          {
            *object = xpc_null_create();
          }

          v25 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          *object = v5;
          if (v5 && MEMORY[0x29C26CE60](v5) == v9)
          {
            xpc_retain(v5);
            v26 = v5;
          }

          else
          {
            v26 = xpc_null_create();
            *object = v26;
          }

          v34 = StatsModule::reportStats_sync(v2, v25, object);
          xpc_release(v26);
          *object = 0;
          if (v34)
          {
            v6 = 0;
          }

          else
          {
            v6 = 3760250880;
          }

          if ((buf[23] & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }
      }
    }

    else if (v14 == buf[23] && !memcmp(buf, v13, v14))
    {
      goto LABEL_41;
    }

    v16 = *MEMORY[0x29EDBF880];
    v17 = strlen(*MEMORY[0x29EDBF880]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v17 == *&buf[8])
      {
        if (v17 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v16, v17))
        {
          goto LABEL_43;
        }
      }
    }

    else if (v17 == v15 && !memcmp(buf, v16, v17))
    {
LABEL_43:
      v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
      *object = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        *object = xpc_null_create();
      }

      v27 = xpc::dyn_cast_or_default(object, 0);
      xpc_release(*object);
      *object = v5;
      if (v5)
      {
        xpc_retain(v5);
        v28 = v5;
      }

      else
      {
        v28 = xpc_null_create();
        *object = v28;
      }

      StatsModule::reportAWD_sync(v2, v27, object);
      xpc_release(v28);
LABEL_60:
      v6 = 0;
      *object = 0;
LABEL_61:
      if (buf[23] < 0)
      {
LABEL_62:
        operator delete(*buf);
      }

LABEL_63:
      xpc_release(v5);
      goto LABEL_64;
    }

    v6 = 3760250880;
    v18 = *MEMORY[0x29EDBE550];
    v19 = strlen(*MEMORY[0x29EDBE550]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v19 != *&buf[8])
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_46;
      }

      if (v19 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(*buf, v18, v19))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v19 != v15)
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_40;
      }

      if (memcmp(buf, v18, v19))
      {
LABEL_31:
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        if ((v15 & 0x80000000) != 0)
        {
LABEL_46:
          v22 = *buf;
LABEL_47:
          *object = 136315138;
          *&object[4] = v22;
          _os_log_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEFAULT, "#I Unrecognized stats type: %s", object, 0xCu);
          if (buf[23] < 0)
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }

LABEL_40:
        v22 = buf;
        goto LABEL_47;
      }
    }

    *object = v5;
    if (v5)
    {
      xpc_retain(v5);
      v21 = v5;
    }

    else
    {
      v21 = xpc_null_create();
      *object = v21;
    }

    StatsModule::updateAnalyticsData_sync(v2, object);
    xpc_release(v21);
    goto LABEL_60;
  }

  v6 = 3760250880;
  v7 = *(v2 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Stats type is missing!", buf, 2u);
  }

LABEL_64:
  if (*(v1 + 32))
  {
    v29 = xpc_null_create();
    v30 = *(v1 + 32);
    *buf = v29;
    v31 = xpc_null_create();
    (*(v30 + 16))(v30, v6, buf);
    xpc_release(*buf);
    xpc_release(v31);
  }

  _ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(&v36);
  v32 = a1;
  if (a1)
  {
    v33 = a1[2];
    if (v33)
    {
      if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
        v32 = a1;
      }
    }

    operator delete(v32);
  }
}

void sub_29700E17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void StatsModule::reportAWD_sync(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = a2;
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 160);
  if (v4)
  {
    v5 = *a3;
    object = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      object = xpc_null_create();
    }

    StatsAWD::submit(v4, v3, &object);
    xpc_release(object);
  }

  else
  {
    v6 = *(a1 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "AWD object has not created yet. 0x%x metric ID cannot be submitted", buf, 8u);
    }
  }
}

void sub_29700E3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void StatsAWD::submit(uint64_t *a1, int a2, xpc_object_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
    v6 = a1[1];
    if (!v6)
    {
LABEL_9:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v6 = a1[1];
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = *a1;
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[2] = a2;
  *(v10 + 2) = v5;
  v11 = xpc_null_create();
  v12 = a1[2];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v10;
  v13[1] = v7;
  v13[2] = v9;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<StatsAWD>::execute_wrapped<StatsAWD::submit(unsigned int,xpc::object)::$_0>(StatsAWD::submit(unsigned int,xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsAWD::submit(unsigned int,xpc::object)::$_0,dispatch_queue_s *::default_delete<StatsAWD::submit(unsigned int,xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  xpc_release(v11);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<StatsAWD>::execute_wrapped<StatsAWD::submit(unsigned int,xpc::object)::$_0>(StatsAWD::submit(unsigned int,xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsAWD::submit(unsigned int,xpc::object)::$_0,dispatch_queue_s *::default_delete<StatsAWD::submit(unsigned int,xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 40))
  {
    v4 = *(v2 + 2);
    v5 = v2[2];
    *buf = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      *buf = xpc_null_create();
    }

    StatsAWD::submit_sync(v3, v4, buf);
    xpc_release(*buf);
  }

  else
  {
    v6 = *(v3 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Failed: AWD connection setup failed", buf, 2u);
    }
  }

  xpc_release(v2[2]);
  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_29700E6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<StatsAWD::submit(unsigned int,xpc::object)::$_0,std::default_delete<StatsAWD::submit(unsigned int,xpc::object)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void StatsAWD::submit_sync(uint64_t a1, signed int a2, xpc_object_t *a3)
{
  v67 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 40))
  {
    v9 = *(a1 + 32);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v10 = "Failed: AWD connection setup failed";
    v11 = v9;
    v12 = 2;
    goto LABEL_141;
  }

  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory);
  v61 = v7;
  if (!v7)
  {
    v13 = *(a1 + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_debug_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEBUG, "#D Failed to get the metric of 0x%x", buf, 8u);
    }

    return;
  }

  if (a2 <= 524464)
  {
    if (a2 > 524383)
    {
      if (a2 == 524384)
      {
        v8 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          v8 = xpc_null_create();
        }

        v17 = operator new(0x30uLL);
        *v17 = &unk_2A1E2D180;
        *(v17 + 1) = 0;
        *(v17 + 4) = 0;
        *(v17 + 10) = 0;
        *(v17 + 2) = 0;
        *(v17 + 21) = 0;
        *buf = v17;
        *v64 = v8;
        if (v8)
        {
          xpc_retain(v8);
          v23 = v8;
        }

        else
        {
          v23 = xpc_null_create();
          *v64 = v23;
        }

        v40 = StatsAWD::fillMetric_sync(a1, buf, v64);
        xpc_release(v23);
        if (v40)
        {
          if (v17[40])
          {
            WISTimestamp = *(v17 + 1);
          }

          else
          {
            WISTimestamp = wis::getWISTimestamp(v41);
            *(v17 + 10) |= 1u;
            *(v17 + 1) = WISTimestamp;
          }

          wis::MetricContainer::storeMetric(v61, WISTimestamp, *v61, v17);
        }
      }

      else
      {
        if (a2 != 524464)
        {
          goto LABEL_36;
        }

        v8 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          v8 = xpc_null_create();
        }

        v17 = operator new(0x28uLL);
        *v17 = &unk_2A1E2E4C8;
        *(v17 + 1) = 0;
        v19 = MEMORY[0x29EDC9758];
        *(v17 + 2) = 0;
        *(v17 + 3) = v19;
        *(v17 + 4) = 0;
        *buf = v17;
        *v64 = v8;
        if (v8)
        {
          xpc_retain(v8);
          v20 = v8;
        }

        else
        {
          v20 = xpc_null_create();
          *v64 = v20;
        }

        v33 = StatsAWD::fillMetric_sync(a1, buf, v64);
        xpc_release(v20);
        if (v33)
        {
          if (v17[36])
          {
            v35 = *(v17 + 1);
          }

          else
          {
            v35 = wis::getWISTimestamp(v34);
            *(v17 + 9) |= 1u;
            *(v17 + 1) = v35;
          }

          wis::MetricContainer::storeMetric(v61, v35, *v61, v17);
        }
      }
    }

    else if (a2 == 524310)
    {
      v8 = *a3;
      if (*a3)
      {
        xpc_retain(*a3);
      }

      else
      {
        v8 = xpc_null_create();
      }

      v17 = operator new(0x48uLL);
      v22 = MEMORY[0x29EDC9758];
      *v17 = &unk_2A1E2D450;
      *(v17 + 1) = v22;
      *(v17 + 20) = 0;
      *(v17 + 2) = 0;
      *(v17 + 3) = v22;
      *(v17 + 4) = v22;
      *(v17 + 11) = 0;
      *(v17 + 7) = 0;
      *(v17 + 8) = 0;
      *(v17 + 6) = v22;
      *buf = v17;
      *v64 = v8;
      if (v8 && MEMORY[0x29C26CE60](v8) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v8);
        v39 = v8;
      }

      else
      {
        v39 = xpc_null_create();
        *v64 = v39;
      }

      v55 = StatsAWD::fillMetric_sync(a1, buf, v64);
      xpc_release(v39);
      if (v55)
      {
        if (v17[69])
        {
          v57 = *(v17 + 7);
        }

        else
        {
          v57 = wis::getWISTimestamp(v56);
          *(v17 + 17) |= 0x100u;
          *(v17 + 7) = v57;
        }

        wis::MetricContainer::storeMetric(v61, v57, *v61, v17);
      }
    }

    else
    {
      if (a2 != 524365)
      {
        goto LABEL_36;
      }

      v8 = *a3;
      if (*a3)
      {
        xpc_retain(*a3);
      }

      else
      {
        v8 = xpc_null_create();
      }

      v17 = operator new(0x30uLL);
      *v17 = &unk_2A1E2D270;
      *(v17 + 1) = 0;
      *(v17 + 5) = 0;
      *(v17 + 2) = 0;
      *(v17 + 3) = 0;
      *(v17 + 8) = 0;
      *buf = v17;
      *v64 = v8;
      if (v8)
      {
        xpc_retain(v8);
        v18 = v8;
      }

      else
      {
        v18 = xpc_null_create();
        *v64 = v18;
      }

      v30 = StatsAWD::fillMetric_sync(a1, buf, v64);
      xpc_release(v18);
      if (v30)
      {
        if (v17[44])
        {
          v32 = *(v17 + 1);
        }

        else
        {
          v32 = wis::getWISTimestamp(v31);
          *(v17 + 11) |= 1u;
          *(v17 + 1) = v32;
        }

        wis::MetricContainer::storeMetric(v61, v32, *v61, v17);
      }
    }
  }

  else if (a2 <= 524466)
  {
    if (a2 == 524465)
    {
      v8 = *a3;
      if (*a3)
      {
        xpc_retain(*a3);
      }

      else
      {
        v8 = xpc_null_create();
      }

      v17 = operator new(0x28uLL);
      *(v17 + 1) = 0;
      *v17 = &unk_2A1E2E540;
      *(v17 + 2) = 0;
      *(v17 + 3) = 0;
      *(v17 + 8) = 0;
      *buf = v17;
      *v64 = v8;
      if (v8)
      {
        xpc_retain(v8);
        v26 = v8;
      }

      else
      {
        v26 = xpc_null_create();
        *v64 = v26;
      }

      v46 = StatsAWD::fillMetric_sync(a1, buf, v64);
      xpc_release(v26);
      if (v46)
      {
        if (v17[32])
        {
          v48 = *(v17 + 1);
        }

        else
        {
          v48 = wis::getWISTimestamp(v47);
          *(v17 + 8) |= 1u;
          *(v17 + 1) = v48;
        }

        wis::MetricContainer::storeMetric(v61, v48, *v61, v17);
      }
    }

    else
    {
      v8 = *a3;
      if (*a3)
      {
        xpc_retain(*a3);
      }

      else
      {
        v8 = xpc_null_create();
      }

      v17 = operator new(0x50uLL);
      *v17 = &unk_2A1E2E5B8;
      *(v17 + 8) = 0u;
      *(v17 + 8) = 0;
      *(v17 + 18) = 0;
      *(v17 + 24) = 0u;
      *(v17 + 40) = 0u;
      *(v17 + 14) = 0;
      *buf = v17;
      *v64 = v8;
      if (v8)
      {
        xpc_retain(v8);
        v21 = v8;
      }

      else
      {
        v21 = xpc_null_create();
        *v64 = v21;
      }

      v36 = StatsAWD::fillMetric_sync(a1, buf, v64);
      xpc_release(v21);
      if (v36)
      {
        if (v17[72])
        {
          v38 = *(v17 + 1);
        }

        else
        {
          v38 = wis::getWISTimestamp(v37);
          *(v17 + 18) |= 1u;
          *(v17 + 1) = v38;
        }

        wis::MetricContainer::storeMetric(v61, v38, *v61, v17);
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 524467:
        v8 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          v8 = xpc_null_create();
        }

        v17 = operator new(0x68uLL);
        *v17 = &unk_2A1E2E630;
        *(v17 + 1) = 0;
        v24 = MEMORY[0x29EDC9758];
        *(v17 + 26) = 0;
        *(v17 + 2) = v24;
        *(v17 + 3) = v24;
        *(v17 + 12) = 0;
        *(v17 + 4) = v24;
        *(v17 + 5) = v24;
        *(v17 + 7) = v24;
        *(v17 + 8) = v24;
        *(v17 + 9) = v24;
        *(v17 + 10) = 0;
        *(v17 + 11) = 0;
        *(v17 + 24) = 0;
        *buf = v17;
        *v64 = v8;
        if (v8)
        {
          xpc_retain(v8);
          v25 = v8;
        }

        else
        {
          v25 = xpc_null_create();
          *v64 = v25;
        }

        v43 = StatsAWD::fillMetric_sync(a1, buf, v64);
        xpc_release(v25);
        if (v43)
        {
          if (v17[96])
          {
            v45 = *(v17 + 1);
          }

          else
          {
            v45 = wis::getWISTimestamp(v44);
            *(v17 + 24) |= 1u;
            *(v17 + 1) = v45;
          }

          wis::MetricContainer::storeMetric(v61, v45, *v61, v17);
        }

        break;
      case 524539:
        v8 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          v8 = xpc_null_create();
        }

        v17 = operator new(0x28uLL);
        *(v17 + 4) = 0;
        *v17 = &unk_2A1E2D2E8;
        *(v17 + 1) = 0;
        v28 = MEMORY[0x29EDC9758];
        *(v17 + 2) = MEMORY[0x29EDC9758];
        *(v17 + 3) = v28;
        *buf = v17;
        *v64 = v8;
        if (v8)
        {
          xpc_retain(v8);
          v29 = v8;
        }

        else
        {
          v29 = xpc_null_create();
          *v64 = v29;
        }

        v52 = StatsAWD::fillMetric_sync(a1, buf, v64);
        xpc_release(v29);
        if (v52)
        {
          if (v17[36])
          {
            v54 = *(v17 + 1);
          }

          else
          {
            v54 = wis::getWISTimestamp(v53);
            *(v17 + 9) |= 1u;
            *(v17 + 1) = v54;
          }

          wis::MetricContainer::storeMetric(v61, v54, *v61, v17);
        }

        break;
      case 524584:
        v8 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          v8 = xpc_null_create();
        }

        v17 = operator new(0x20uLL);
        *v17 = &unk_2A1E2D3D8;
        *(v17 + 1) = 0;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *buf = v17;
        *v64 = v8;
        if (v8)
        {
          xpc_retain(v8);
          v27 = v8;
        }

        else
        {
          v27 = xpc_null_create();
          *v64 = v27;
        }

        v49 = StatsAWD::fillMetric_sync(a1, buf, v64);
        xpc_release(v27);
        if (v49)
        {
          if (v17[28])
          {
            v51 = *(v17 + 1);
          }

          else
          {
            v51 = wis::getWISTimestamp(v50);
            *(v17 + 7) |= 1u;
            *(v17 + 1) = v51;
          }

          wis::MetricContainer::storeMetric(v61, v51, *v61, v17);
        }

        break;
      default:
LABEL_36:
        v14 = v7;
        v15 = *(a1 + 32);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = a2;
          _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "Failed to setup metric id (0x%x)", buf, 8u);
        }

        wis::MetricContainer::~MetricContainer(v14);
        goto LABEL_137;
    }
  }

  (*(*v17 + 8))(v17);
  xpc_release(v8);
  v58 = wis::WISServerConnection::SubmitMetric(*(a1 + 40), v61);
  v59 = *(a1 + 32);
  if (!v58)
  {
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = a2;
    v10 = "Failed to submit metric id (0x%x)";
    v11 = v59;
    v12 = 8;
LABEL_141:
    _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    return;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(buf, a3);
    v60 = v63 >= 0 ? buf : *buf;
    *v64 = 67109378;
    *&v64[4] = a2;
    v65 = 2082;
    v66 = v60;
    _os_log_impl(&dword_296FF7000, v59, OS_LOG_TYPE_DEFAULT, "#I Submitted AWD metric (0x%x) with data: %{public}s", v64, 0x12u);
    if (v63 < 0)
    {
      v16 = *buf;
LABEL_137:
      operator delete(v16);
    }
  }
}

void sub_29700F430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  (*(*v4 + 8))(v4, a2);
  xpc_release(v3);
  std::unique_ptr<wis::MetricContainer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t StatsAWD::fillMetric_sync(uint64_t a1, uint64_t *a2, void *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in wake info handling", object, 2u);
    }

    goto LABEL_14;
  }

  v8 = *MEMORY[0x29EDBF008];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF008]) || (v9 = *MEMORY[0x29EDBF468], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF468])) || (v10 = *MEMORY[0x29EDBF358], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF358])))
  {
    v13 = *(a1 + 32);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    v23 = MEMORY[0x29C26CD90](v5);
    memset(object, 170, 24);
    v24 = strlen(v23);
    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v24 | 7) + 1;
      }

      v26 = operator new(v27);
      object[1] = v25;
      object[2] = (v27 | 0x8000000000000000);
      object[0] = v26;
    }

    else
    {
      HIBYTE(object[2]) = v24;
      v26 = object;
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    memcpy(v26, v23, v25);
LABEL_33:
    *(v25 + v26) = 0;
    free(v23);
    v28 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v28 = object[0];
    }

    *buf = 136315138;
    v31 = v28;
    _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed: One of elements of wake info is missing: %s", buf, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_14;
  }

  v11 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v16 = xpc::dyn_cast_or_default(object, 0);
  *(v11 + 32) |= 2u;
  *(v11 + 16) = v16;
  xpc_release(object[0]);
  v17 = *a2;
  v18 = xpc_dictionary_get_value(v5, v9);
  object[0] = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v19 = xpc::dyn_cast_or_default(object, 0);
  *(v17 + 32) |= 4u;
  *(v17 + 20) = v19;
  xpc_release(object[0]);
  v20 = *a2;
  v21 = xpc_dictionary_get_value(v5, v10);
  object[0] = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v22 = xpc::dyn_cast_or_default(object, 0);
  *(v20 + 32) |= 8u;
  *(v20 + 24) = v22;
  xpc_release(object[0]);
  v14 = 1;
LABEL_15:
  xpc_release(v5);
  return v14;
}

{
  v32 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in boot time handling", object, 2u);
    }

    goto LABEL_14;
  }

  v8 = *MEMORY[0x29EDBE7E0];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE7E0]) || (v9 = *MEMORY[0x29EDBE8D0], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE8D0])) || (v10 = *MEMORY[0x29EDBE7E8], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE7E8])))
  {
    v13 = *(a1 + 32);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    v23 = MEMORY[0x29C26CD90](v5);
    memset(object, 170, 24);
    v24 = strlen(v23);
    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v24 | 7) + 1;
      }

      v26 = operator new(v27);
      object[1] = v25;
      object[2] = (v27 | 0x8000000000000000);
      object[0] = v26;
    }

    else
    {
      HIBYTE(object[2]) = v24;
      v26 = object;
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    memcpy(v26, v23, v25);
LABEL_33:
    *(v25 + v26) = 0;
    free(v23);
    v28 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v28 = object[0];
    }

    *buf = 136315138;
    v31 = v28;
    _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed: One of elements of boot time is missing: %s", buf, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_14;
  }

  v11 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v16 = xpc::dyn_cast_or_default(object, 0);
  *(v11 + 40) |= 4u;
  *(v11 + 24) = v16;
  xpc_release(object[0]);
  v17 = *a2;
  v18 = xpc_dictionary_get_value(v5, v9);
  object[0] = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v19 = xpc::dyn_cast_or_default(object, 0);
  *(v17 + 40) |= 2u;
  *(v17 + 16) = v19;
  xpc_release(object[0]);
  v20 = *a2;
  v21 = xpc_dictionary_get_value(v5, v10);
  object[0] = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v22 = xpc::dyn_cast_or_default(object, 0);
  *(v20 + 40) |= 8u;
  *(v20 + 28) = v22;
  xpc_release(object[0]);
  v14 = 1;
LABEL_15:
  xpc_release(v5);
  return v14;
}

{
  v36 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in low power event handling", object, 2u);
    }

    goto LABEL_14;
  }

  v8 = *MEMORY[0x29EDBEAD8];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBEAD8]) || (v9 = *MEMORY[0x29EDBEAE8], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBEAE8])) || (v10 = *MEMORY[0x29EDBE7F0], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE7F0])))
  {
    v13 = *(a1 + 32);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    v28 = MEMORY[0x29C26CD90](v5);
    memset(object, 170, 24);
    v29 = strlen(v28);
    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v30 = v29;
    if (v29 >= 0x17)
    {
      if ((v29 | 7) == 0x17)
      {
        v32 = 25;
      }

      else
      {
        v32 = (v29 | 7) + 1;
      }

      v31 = operator new(v32);
      object[1] = v30;
      object[2] = (v32 | 0x8000000000000000);
      object[0] = v31;
    }

    else
    {
      HIBYTE(object[2]) = v29;
      v31 = object;
      if (!v29)
      {
        goto LABEL_49;
      }
    }

    memcpy(v31, v28, v30);
LABEL_49:
    *(v30 + v31) = 0;
    free(v28);
    v33 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v33 = object[0];
    }

    *v35 = 136315138;
    *&v35[4] = v33;
    _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed: One of elements of low power event is missing: %s", v35, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_14;
  }

  v11 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v16 = xpc::dyn_cast_or_default(object, 0);
  *(v11 + 36) |= 2u;
  *(v11 + 16) = v16;
  xpc_release(object[0]);
  v17 = *a2;
  v18 = xpc_dictionary_get_value(v5, v9);
  object[0] = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v19 = xpc::dyn_cast_or_default(object, 0);
  *(v17 + 36) |= 4u;
  *(v17 + 20) = v19;
  xpc_release(object[0]);
  v20 = *a2;
  v21 = xpc_dictionary_get_value(v5, v10);
  *v35 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    *v35 = xpc_null_create();
  }

  xpc::dyn_cast_or_default(object, v35, "", v22);
  *(v20 + 36) |= 8u;
  v23 = *(v20 + 24);
  if (v23 == MEMORY[0x29EDC9758])
  {
    v23 = operator new(0x18uLL);
    *v23 = 0;
    v23[1] = 0;
    v23[2] = 0;
    *(v20 + 24) = v23;
    v24 = HIBYTE(object[2]);
    if ((*(v23 + 23) & 0x80000000) == 0)
    {
LABEL_26:
      if ((v24 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v23, object[0], object[1]);
      }

      else
      {
        v25 = *object;
        v23[2] = object[2];
        *v23 = v25;
      }

      goto LABEL_41;
    }

LABEL_29:
    if (v24 >= 0)
    {
      v26 = object;
    }

    else
    {
      v26 = object[0];
    }

    if (v24 >= 0)
    {
      v27 = v24;
    }

    else
    {
      v27 = object[1];
    }

    std::string::__assign_no_alias<false>(v23, v26, v27);
    goto LABEL_41;
  }

  if (v23 != object)
  {
    v24 = HIBYTE(object[2]);
    if ((*(v23 + 23) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

LABEL_41:
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

  xpc_release(*v35);
  v14 = 1;
LABEL_15:
  xpc_release(v5);
  return v14;
}

{
  v38 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in bb trace handling", __p, 2u);
    }

    goto LABEL_13;
  }

  v8 = *MEMORY[0x29EDBED68];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBED68]) || (v9 = *MEMORY[0x29EDBF010], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF010])))
  {
    v13 = *(a1 + 32);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v14 = 0;
      goto LABEL_14;
    }

    v30 = MEMORY[0x29C26CD90](v5);
    memset(__p, 170, 24);
    v31 = strlen(v30);
    if (v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v32 = v31;
    if (v31 >= 0x17)
    {
      if ((v31 | 7) == 0x17)
      {
        v34 = 25;
      }

      else
      {
        v34 = (v31 | 7) + 1;
      }

      v33 = operator new(v34);
      __p[1] = v32;
      __p[2] = (v34 | 0x8000000000000000);
      __p[0] = v33;
    }

    else
    {
      HIBYTE(__p[2]) = v31;
      v33 = __p;
      if (!v31)
      {
        goto LABEL_61;
      }
    }

    memcpy(v33, v30, v32);
LABEL_61:
    *(v32 + v33) = 0;
    free(v30);
    v35 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v35 = __p[0];
    }

    *object = 136315138;
    *&object[4] = v35;
    _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed: One of elements of bb trace is missing: %s", object, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_13;
  }

  v10 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  *object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__p, object, "", v12);
  *(v10 + 36) |= 2u;
  v16 = *(v10 + 16);
  v17 = MEMORY[0x29EDC9758];
  if (v16 == MEMORY[0x29EDC9758])
  {
    v16 = operator new(0x18uLL);
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    *(v10 + 16) = v16;
    v18 = HIBYTE(__p[2]);
    if ((*(v16 + 23) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v18 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v16, __p[0], __p[1]);
      }

      else
      {
        v19 = *__p;
        v16[2] = __p[2];
        *v16 = v19;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (v16 == __p)
    {
      goto LABEL_30;
    }

    v18 = HIBYTE(__p[2]);
    if ((*(v16 + 23) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v18 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (v18 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = __p[1];
  }

  std::string::__assign_no_alias<false>(v16, v20, v21);
LABEL_30:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(*object);
  v22 = *a2;
  v23 = xpc_dictionary_get_value(v5, v9);
  *object = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__p, object, "", v24);
  *(v22 + 36) |= 4u;
  v25 = *(v22 + 24);
  if (v25 == v17)
  {
    v25 = operator new(0x18uLL);
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    *(v22 + 24) = v25;
    v26 = HIBYTE(__p[2]);
    if ((*(v25 + 23) & 0x80000000) == 0)
    {
LABEL_38:
      if ((v26 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v25, __p[0], __p[1]);
      }

      else
      {
        v27 = *__p;
        v25[2] = __p[2];
        *v25 = v27;
      }

      goto LABEL_49;
    }

LABEL_41:
    if (v26 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    if (v26 >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = __p[1];
    }

    std::string::__assign_no_alias<false>(v25, v28, v29);
    goto LABEL_49;
  }

  if (v25 != __p)
  {
    v26 = HIBYTE(__p[2]);
    if ((*(v25 + 23) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

LABEL_49:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(*object);
  v14 = 1;
LABEL_14:
  xpc_release(v5);
  return v14;
}

{
  v28 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in Accessory Information reporting.", object, 2u);
    }

    goto LABEL_13;
  }

  v8 = *MEMORY[0x29EDBE998];
  if (!xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE998]) || (v9 = *MEMORY[0x29EDBEAC0], !xpc_dictionary_get_value(v5, *MEMORY[0x29EDBEAC0])))
  {
    v12 = *(a1 + 32);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    v19 = MEMORY[0x29C26CD90](v5);
    memset(object, 170, 24);
    v20 = strlen(v19);
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      if ((v20 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v20 | 7) + 1;
      }

      v22 = operator new(v23);
      object[1] = v21;
      object[2] = (v23 | 0x8000000000000000);
      object[0] = v22;
    }

    else
    {
      HIBYTE(object[2]) = v20;
      v22 = object;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    memcpy(v22, v19, v21);
LABEL_29:
    *(v21 + v22) = 0;
    free(v19);
    v24 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v24 = object[0];
    }

    *buf = 136315138;
    v27 = v24;
    _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "Failed: One of elements is missing in Accessory Information reporting: %s", buf, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_13;
  }

  v10 = *a2;
  value = xpc_dictionary_get_value(v5, v8);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v15 = xpc::dyn_cast_or_default(object, 0);
  *(v10 + 28) |= 2u;
  *(v10 + 16) = v15;
  xpc_release(object[0]);
  v16 = *a2;
  v17 = xpc_dictionary_get_value(v5, v9);
  object[0] = v17;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v18 = xpc::dyn_cast_or_default(object, 0);
  *(v16 + 28) |= 4u;
  *(v16 + 20) = v18;
  xpc_release(object[0]);
  v13 = 1;
LABEL_14:
  xpc_release(v5);
  return v13;
}

void sub_29700FB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t awd::metrics::CommCenterWakeInfo::ByteSize(awd::metrics::CommCenterWakeInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if (*(this + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v6 = *(this + 4);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_12:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_6:
    *(this + 7) = v4;
    return v4;
  }

  v8 = *(this + 5);
  if (v8 < 0x80)
  {
    v4 = (v4 + 2);
    if ((v3 & 8) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1 + v4;
  if ((*(this + 8) & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1 + v4;
  }

  else
  {
    v10 = (v4 + 2);
  }

  *(this + 7) = v10;
  return v10;
}

uint64_t awd::metrics::CommCenterWakeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

void awd::metrics::CommCenterWakeInfo::~CommCenterWakeInfo(awd::metrics::CommCenterWakeInfo *this)
{
  *this = &unk_2A1E2E540;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

void ResetDetection::sResetDetectCallback(ResetDetection *this, void *a2, int a3, unsigned int a4, void *a5)
{
  if (this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      v7 = *this;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = v8;
        if (v7)
        {
          v10[0] = MEMORY[0x29EDCA5F8];
          v10[1] = 0x40000000;
          v10[2] = ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke;
          v10[3] = &__block_descriptor_tmp_6_0;
          v10[4] = v7;
          v11 = a3;
          ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(v7, v10);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI14ResetDetectionE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E2B2A0;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ResetDetectionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == -469794815)
  {
    v5 = *(v1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I baseband alive detected", &state, 2u);
    }

    *(v1 + 64) = 0;
    ResetDetection::notifyResetDetectBlocks_sync(v1, v1 + 96);
  }

  else if (v2 == -469794816)
  {
    v3 = _os_activity_create(&dword_296FF7000, "Baseband state: reset detected", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v3, &state);
    os_activity_scope_leave(&state);
    v4 = *(v1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I baseband reset detected", &state, 2u);
    }

    *(v1 + 64) = 1;
    ResetDetection::notifyResetDetectBlocks_sync(v1, v1 + 72);
    if (v3)
    {
      os_release(v3);
    }
  }
}

void sub_2970101B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::os::scoped_activity::~scoped_activity(va);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v7 = a2[7];
  v6 = a2[8];
  a1[6] = result;
  a1[7] = v7;
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

__int128 *ctu::TrackedGroup::fork(NSObject **a1, uint64_t a2, uint64_t *a3)
{
  v47 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v39[0] = a3[1];
  *(v39 + 7) = *(a3 + 15);
  v6 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *object = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = dispatch_group_create();
  v8 = v7;
  *a1 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v8);
    dispatch_release(v8);
  }

  v9 = operator new(0x30uLL);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_2A1E2EAF8;
  v9[3] = v5;
  v9[4] = v39[0];
  *(v9 + 39) = *(v39 + 7);
  *(v9 + 47) = v6;
  v39[0] = 0;
  *(v39 + 7) = 0;
  *&v35 = v9 + 3;
  *(&v35 + 1) = v9;
  v10 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v10);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v12 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v40 = v9 + 3;
  v41 = v9;
  atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  v42 = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(v10);
  }

  v46 = 0;
  v43 = 0;
  v44 = 0;
  object[0] = 0;
  object[1] = 0;
  *(&v38 + 1) = 0;
  v13 = operator new(0x48uLL);
  *v13 = v9 + 3;
  v13[1] = v9;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v10;
  v14 = v46;
  if (v46)
  {
    if (v46 == v45)
    {
      v13[8] = v13 + 5;
      (*(*v14 + 24))(v14);
    }

    else
    {
      v13[8] = v46;
      v46 = 0;
    }
  }

  else
  {
    v13[8] = 0;
  }

  v43 = 0;
  v44 = 0;
  v15 = v46;
  v46 = 0;
  if (v15 == v45)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  dispatch_group_notify_f(v8, v12, v13, dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(&v40);
  if (v12)
  {
    dispatch_release(v12);
  }

  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  if (v16 < v17)
  {
    *v16 = v35;
    v18 = *(&v35 + 1);
    *(v16 + 1) = *(&v35 + 1);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    v19 = v16 + 16;
    goto LABEL_36;
  }

  v20 = *(a2 + 8);
  v21 = v16 - v20;
  v22 = (v16 - v20) >> 4;
  v23 = v22 + 1;
  if ((v22 + 1) >> 60)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  v24 = v17 - v20;
  if (v24 >> 3 > v23)
  {
    v23 = v24 >> 3;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF0)
  {
    v25 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (v25 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = operator new(16 * v25);
    v27 = &v26[16 * v22];
    v28 = &v26[16 * v25];
    v29 = *(&v35 + 1);
    *v27 = v35;
    v30 = v29;
    if (!v29)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v27 = (16 * v22);
  v28 = 0;
  v34 = *(&v35 + 1);
  *(16 * v22) = v35;
  v30 = v34;
  if (v34)
  {
LABEL_33:
    atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    v20 = *(a2 + 8);
    v21 = *(a2 + 16) - v20;
    v22 = v21 >> 4;
  }

LABEL_34:
  v19 = v27 + 16;
  v31 = &v27[-16 * v22];
  memcpy(v31, v20, v21);
  *(a2 + 8) = v31;
  *(a2 + 16) = v19;
  *(a2 + 24) = v28;
  if (v20)
  {
    operator delete(v20);
  }

LABEL_36:
  *(a2 + 16) = v19;
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  if (*(&v35 + 1) && !atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v35 + 1) + 16))(*(&v35 + 1));
    std::__shared_weak_count::__release_weak(*(&v35 + 1));
    v32 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      goto LABEL_43;
    }
  }

  else
  {
    v32 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      goto LABEL_43;
    }
  }

  if (object[0])
  {
    v40 = object[1];
    *&v35 = object[0];
    (*(*v32 + 48))(v32, &v40, &v35);
  }

LABEL_43:
  if (object[1])
  {
    os_release(object[1]);
  }

  result = *(&v38 + 1);
  object[1] = 0;
  *(&v38 + 1) = 0;
  if (result != &v37)
  {
    if (!result)
    {
      return result;
    }

    (*(*result + 40))(result);
    result = *(&v38 + 1);
    object[0] = 0;
    if (*(&v38 + 1) != &v37)
    {
      goto LABEL_48;
    }

    return (*(*result + 32))(result);
  }

  (*(*result + 32))(result);
  result = *(&v38 + 1);
  object[0] = 0;
  if (*(&v38 + 1) == &v37)
  {
    return (*(*result + 32))(result);
  }

LABEL_48:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_297010774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(void *a1)
{
  v2 = a1[8];
  if (v2 && a1[3])
  {
    v3 = a1[4];
    v12 = a1[3];
    v13 = v3;
    (*(*v2 + 48))(v2, &v13, &v12);
  }

  v4 = a1[4];
  if (v4)
  {
    os_release(v4);
  }

  v5 = a1 + 5;
  a1[4] = 0;
  v6 = a1[8];
  a1[8] = 0;
  if (v6 == a1 + 5)
  {
    (*(*v6 + 32))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
LABEL_9:
      if (v7)
      {
        (*(*v7 + 40))(v7);
        v8 = a1[2];
        if (!v8)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_14:
      v8 = a1[2];
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    goto LABEL_14;
  }

  if (v6)
  {
    (*(*v6 + 40))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  a1[3] = 0;
  v8 = a1[2];
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_15:
  dispatch_group_leave(v8);
  v9 = a1[2];
  if (v9)
  {
    dispatch_release(v9);
  }

LABEL_17:
  v10 = a1[1];
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

void TransportModule::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::wake(dispatch::group_session)::$_0>(TransportModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TransportModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void TraceManager::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::wake(dispatch::group_session)::$_0>(TraceManager::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TraceManager::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::wake(dispatch::group_session)::$_0>(TransportModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TransportModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 144);
  if (v4)
  {
    group = MEMORY[0x29EDCA5F8];
    v15 = 0x40000000;
    v16 = ___ZN4data16TransportService5State12exitLowPowerEv_block_invoke;
    v17 = &__block_descriptor_tmp_48;
    v18 = v4;
    ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(v4, &group);
  }

  if (!*(v3 + 112))
  {
    v10 = *(v3 + 144);
    if (v10)
    {
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 0x40000000;
      v12[2] = ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke;
      v12[3] = &__block_descriptor_tmp_53;
      v12[4] = v10;
      v13 = v12;
      group = MEMORY[0x29EDCA5F8];
      v15 = 0x40000000;
      v16 = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
      v17 = &__block_descriptor_tmp_47;
      v18 = v10;
      v19 = &v13;
      v11 = *(v10 + 16);
      if (*(v10 + 24))
      {
        dispatch_async_and_wait(v11, &group);
      }

      else
      {
        dispatch_sync(v11, &group);
      }
    }
  }

  v5 = *(v3 + 128);
  if (v5)
  {
    v6 = v2[1];
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v6);
    }

    (*(*v5 + 32))(v5, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  v7 = v2[1];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = v2[1];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_297010E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void QMITransportService::exitLowPower(uint64_t a1, NSObject **a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionE_block_invoke;
  v6[3] = &__block_descriptor_tmp_27_6;
  v3 = *a2;
  v6[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  v8 = v6;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19QMITransportServiceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_108_0;
  block[4] = a1 + 24;
  block[5] = &v8;
  v4 = *(a1 + 40);
  if (*(a1 + 48))
  {
    dispatch_async_and_wait(v4, block);
    v5 = group;
    if (!group)
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v4, block);
    v5 = group;
    if (!group)
    {
      return;
    }
  }

  dispatch_group_leave(v5);
  if (group)
  {
    dispatch_release(group);
  }
}

void QMITransportService::updateWakeReason_sync(QMITransportService *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = (this + 328);
  if ((*(this + 351) & 0x80000000) == 0)
  {
    SystemWakeReason = TelephonyUtilGetSystemWakeReason();
    v4 = *(this + 7);
    if (SystemWakeReason)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6) = 0;
      _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch system wake reason", &v6, 2u);
      if (!*(this + 38))
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!*(this + 38))
    {
      return;
    }

    goto LABEL_11;
  }

  v5 = TelephonyUtilGetSystemWakeReason();
  v4 = *(this + 7);
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  if (*(this + 351) < 0)
  {
    v2 = *v2;
  }

  v6 = 136315138;
  v7 = v2;
  _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I System wake reason: %s", &v6, 0xCu);
  if (*(this + 38))
  {
LABEL_11:
    if (*(this + 39))
    {
      QMITransportService::getWakeReason_sync(this, 2);
    }
  }
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ResetDetectionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ServiceManager::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<ServiceManager>::execute_wrapped<ServiceManager::wake(dispatch::group_session)::$_0>(ServiceManager::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceManager::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<ServiceManager::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E2B530;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

void ___ZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I ----------------- Exiting Low Power ----------------", buf, 2u);
  }

  QMITransportService::updateWakeReason_sync(v2);
  v4 = dispatch_group_create();
  v5 = *(v2 + 4);
  if (!v5 || (v6 = *(v2 + 3), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v10 = *(v2 + 10);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *(a1 + 40);
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v11);
  }

  if (v4)
  {
    dispatch_retain(v4);
  }

  v16 = 0;
  v12 = operator new(0x30uLL);
  *v12 = &unk_2A1E31CA0;
  v12[1] = v2;
  v12[2] = v6;
  v12[3] = v8;
  v12[4] = v11;
  if (v11)
  {
    dispatch_retain(v11);
    v13 = v12[4];
    if (v13)
    {
      dispatch_group_enter(v13);
    }
  }

  v12[5] = v4;
  v16 = v12;
  RouterIPCController::wake(v10, v15);
  if (v16 == v15)
  {
    (*(*v16 + 32))(v16);
    if (v11)
    {
LABEL_18:
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }
  }

  else
  {
    if (v16)
    {
      (*(*v16 + 40))();
    }

    if (v11)
    {
      goto LABEL_18;
    }
  }

  std::__shared_weak_count::__release_weak(v8);
  if (v4)
  {
    dispatch_release(v4);
  }
}

void sub_29701169C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<void ()(BOOL)>::~function(va1);
  _ZZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_EN3__7D1Ev(va);
  std::__shared_weak_count::__release_weak(v4);
  if (!v3)
  {
    _Unwind_Resume(a1);
  }

  dispatch_release(v3);
  _Unwind_Resume(a1);
}

void ___ZN14ServiceManager4initENSt3__110shared_ptrI14PowerInterfaceEE_block_invoke(uint64_t a1, int a2, NSObject **a3)
{
  v3 = *(a1 + 32);
  if (a2 == 1)
  {
    v4 = *a3;
    v5 = v4;
    if (!v4)
    {
      ServiceManager::wake(v3, &v5);
      return;
    }

    dispatch_retain(v4);
    dispatch_group_enter(v4);
    ServiceManager::wake(v3, &v5);
  }

  else
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    v6 = v4;
    if (!v4)
    {
      ServiceManager::sleep(v3, &v6);
      return;
    }

    dispatch_retain(v4);
    dispatch_group_enter(v4);
    ServiceManager::sleep(v3, &v6);
  }

  dispatch_group_leave(v4);

  dispatch_release(v4);
}

void dispatch::async<void ctu::SharedSynchronizable<ServiceManager>::execute_wrapped<ServiceManager::wake(dispatch::group_session)::$_0>(ServiceManager::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceManager::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<ServiceManager::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v60 = *MEMORY[0x29EDCA608];
  __p = *a1;
  v1 = (*a1)->__vftable;
  v2 = atomic_load(&v1[3].__on_zero_shared);
  v3 = v1[1].~__shared_weak_count;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEBUG, "#D Server is down; ignoring wake request", &buf, 2u);
    }

    goto LABEL_65;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1[2].__on_zero_shared - v1[2].~__shared_weak_count_0) >> 4;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Request %zd services to wake", &buf, 0xCu);
  }

  v5 = dispatch_group_create();
  v6 = operator new(0x38uLL);
  v7 = v6;
  v6->__shared_owners_ = 0;
  v6->__shared_weak_owners_ = 0;
  v6->__vftable = &unk_2A1E2EAA8;
  v6[1].__vftable = v5;
  v8 = &v6[1].__vftable;
  if (!v5)
  {
    v6[1].__shared_owners_ = 0;
    v6[1].__shared_weak_owners_ = 0;
    v6[2].__vftable = 0;
    v50 = &v6[1].__vftable;
    v51 = v6;
    v9 = v1[2].~__shared_weak_count_0;
    on_zero_shared = v1[2].__on_zero_shared;
    if (v9 == on_zero_shared)
    {
      goto LABEL_35;
    }

    while (1)
    {
LABEL_12:
      v11 = v1[1].~__shared_weak_count;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = (*(**v9 + 16))();
        LODWORD(v56) = 136315138;
        *(&v56 + 4) = v12;
        _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Requesting '%s' to wake", &v56, 0xCu);
      }

      *&v56 = 0xAAAAAAAAAAAAAAAALL;
      v13 = v50;
      v14 = (*(**v9 + 16))();
      v15 = strlen(v14);
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v16 = v15;
      if (v15 >= 0x17)
      {
        break;
      }

      HIBYTE(v59) = v15;
      p_buf = &buf;
      if (v15)
      {
        goto LABEL_22;
      }

LABEL_23:
      *(p_buf + v16) = 0;
      ctu::TrackedGroup::fork(&v56, v13, &buf);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(buf);
        v19 = *v9;
        v20 = v56;
        group = v56;
        if (v56)
        {
LABEL_27:
          dispatch_retain(v20);
          if (group)
          {
            dispatch_group_enter(group);
          }
        }
      }

      else
      {
        v19 = *v9;
        v20 = v56;
        group = v56;
        if (v56)
        {
          goto LABEL_27;
        }
      }

      (*(*v19 + 64))(v19, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v20)
      {
        dispatch_group_leave(v20);
        dispatch_release(v20);
      }

      v9 = (v9 + 16);
      if (v9 == on_zero_shared)
      {
        v8 = v50;
        goto LABEL_35;
      }
    }

    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    p_buf = operator new(v18);
    *(&buf + 1) = v16;
    v59 = v18 | 0x8000000000000000;
    *&buf = p_buf;
LABEL_22:
    memmove(p_buf, v14, v16);
    goto LABEL_23;
  }

  dispatch_retain(v5);
  v7[1].__shared_owners_ = 0;
  v7[1].__shared_weak_owners_ = 0;
  v7[2].__vftable = 0;
  dispatch_release(v5);
  v50 = v8;
  v51 = v7;
  v9 = v1[2].~__shared_weak_count_0;
  on_zero_shared = v1[2].__on_zero_shared;
  if (v9 != on_zero_shared)
  {
    goto LABEL_12;
  }

LABEL_35:
  v21 = *v8;
  v22 = (*(v1->~__shared_weak_count + 9))(v1);
  v23 = dispatch_time(0, 2000000000 * v22);
  if (!dispatch_group_wait(v21, v23))
  {
    goto LABEL_60;
  }

  v56 = 0uLL;
  v57 = 0;
  v24 = v8[1];
  v25 = v8[2];
  if (v24 == v25)
  {
    v33 = 0;
    v34 = v1[1].~__shared_weak_count;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

LABEL_77:
    v44 = *(&v56 + 1);
    ctu::join<std::__wrap_iter<std::string *>>(&__dst, v33, *(&v56 + 1));
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    *v52 = 134218242;
    v53 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v33) >> 3);
    v54 = 2080;
    v55 = p_dst;
    _os_log_error_impl(&dword_296FF7000, v34, OS_LOG_TYPE_ERROR, "Wake TIMEOUT: %zd clients failed to complete wake request: %s", v52, 0x16u);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v33 = v56;
    if (!v56)
    {
      goto LABEL_60;
    }

    goto LABEL_53;
  }

  do
  {
    v26 = v24[1];
    if (v26)
    {
      v27 = std::__shared_weak_count::lock(v26);
      __dst.__r_.__value_.__l.__size_ = v27;
      if (v27)
      {
        v28 = v27;
        v29 = *v24;
        __dst.__r_.__value_.__r.__words[0] = v29;
        if (v29)
        {
          v30 = *(&v56 + 1);
          if (*(&v56 + 1) >= v57)
          {
            v32 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v56, v29);
          }

          else
          {
            if (*(v29 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(*(&v56 + 1), *v29, *(v29 + 8));
            }

            else
            {
              v31 = *v29;
              *(*(&v56 + 1) + 16) = *(v29 + 16);
              *v30 = v31;
            }

            v32 = v30 + 24;
          }

          *(&v56 + 1) = v32;
        }

        if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }
      }
    }

    v24 += 2;
  }

  while (v24 != v25);
  v33 = v56;
  v34 = v1[1].~__shared_weak_count;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_77;
  }

LABEL_52:
  if (v33)
  {
LABEL_53:
    v35 = *(&v56 + 1);
    v36 = v33;
    if (*(&v56 + 1) != v33)
    {
      do
      {
        v37 = *(v35 - 1);
        v35 -= 3;
        if (v37 < 0)
        {
          operator delete(*v35);
        }
      }

      while (v35 != v33);
      v36 = v56;
    }

    *(&v56 + 1) = v33;
    operator delete(v36);
  }

LABEL_60:
  v38 = v1[1].~__shared_weak_count;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v56) = 0;
    _os_log_impl(&dword_296FF7000, v38, OS_LOG_TYPE_DEFAULT, "#I All services acknowledged for wake request", &v56, 2u);
  }

  v39 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_65:
  if (__p)
  {
    shared_owners = __p->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v41 = __p->__shared_owners_;
      if (v41)
      {
        dispatch_release(v41);
      }
    }

    operator delete(__p);
  }

  v42 = a1;
  if (a1)
  {
    v43 = a1[2];
    if (v43)
    {
      if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v43->__on_zero_shared)(v43);
        std::__shared_weak_count::__release_weak(v43);
        v42 = a1;
      }
    }

    operator delete(v42);
  }
}

void sub_297011E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a13, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, dispatch_group_t group, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a17);
  std::vector<std::string>::~vector[abi:ne200100](&a29);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a23);
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a13);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c58_ZTSNSt3__110shared_ptrIKN4data16TransportService5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void FSModule::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<FSModule>::execute_wrapped<FSModule::wake(dispatch::group_session)::$_0>(FSModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t ABMServiceManager::getSleepTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 29000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

void QMITransportService::getWakeReason_sync(QMITransportService *this, int a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = *(this + 4);
  if (!v3 || (v5 = *(this + 3), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(buf, v8);
    v10 = *buf;
    memset(buf, 0, sizeof(buf));
    v11 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18B7390;
  }

  v13 = *(&off_2A18B7390 + 1);
  v25 = v9;
  v26 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v27, v9);
  v29 = 0;
  v30 = 0;
  if (v28)
  {
    v30 = std::__shared_weak_count::lock(v28);
    if (v30)
    {
      v29 = v27;
    }

    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v29;
    v15 = *(this + 7);
    v16 = v15;
    if (v29)
    {
LABEL_23:
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        --a2;
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, "#I Sending request to get wake reason. Remaining-attempts=%u", buf, 8u);
      }

      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 1174405120;
      v20[2] = ___ZN19QMITransportService18getWakeReason_syncEj_block_invoke;
      v20[3] = &__block_descriptor_tmp_37_2;
      v20[4] = this;
      v20[5] = v5;
      v21 = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v22 = a2;
      v17 = _Block_copy(v20);
      v18 = *(this + 5);
      if (v18)
      {
        dispatch_retain(v18);
      }

      aBlock = v17;
      object = v18;
      (*(*v14 + 88))(v14, &aBlock);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
        v19 = v30;
        if (!v30)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

LABEL_36:
      v19 = v30;
      if (!v30)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v14 = v29;
    v15 = *(this + 7);
    v16 = v15;
    if (v29)
    {
      goto LABEL_23;
    }
  }

  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_36;
  }

  *buf = 0;
  _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "Failed to get radio command driver!", buf, 2u);
  v19 = v30;
  if (!v30)
  {
    goto LABEL_39;
  }

LABEL_37:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_39:
  std::__shared_weak_count::__release_weak(v7);
}

void sub_297012604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::wake(dispatch::group_session)::$_0>(TraceManager::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TraceManager::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  get_deleter = v2[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Helper wake requested", &buf, 2u);
  }

  v4 = *MEMORY[0x29EDBE590];
  v5 = strlen(*MEMORY[0x29EDBE590]);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_68:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    p_dst = operator new(v8);
    v39 = v6;
    v40 = v8 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_11;
  }

  HIBYTE(v40) = v5;
  p_dst = &__dst;
  if (v5)
  {
LABEL_11:
    memmove(p_dst, v4, v6);
  }

  *(p_dst + v6) = 0;
  memset(&buf, 0, sizeof(buf));
  if (!prop::bbtrace::get(&__dst, &buf))
  {
    v10 = 0;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  LODWORD(object) = -1431655766;
  v9 = util::convert<int>(&buf, &object, 0);
  if (object == 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_19:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
  }

  v11 = *MEMORY[0x29EDBE880];
  v12 = strlen(*MEMORY[0x29EDBE880]);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_68;
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    v14 = operator new(v15);
    v39 = v13;
    v40 = v15 | 0x8000000000000000;
    __dst = v14;
    goto LABEL_30;
  }

  HIBYTE(v40) = v12;
  v14 = &__dst;
  if (v12)
  {
LABEL_30:
    memmove(v14, v11, v13);
  }

  *(v14 + v13) = 0;
  memset(&buf, 0, sizeof(buf));
  if (!prop::bbtrace::get(&__dst, &buf))
  {
    v17 = 0;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  LODWORD(object) = -1431655766;
  v16 = util::convert<int>(&buf, &object, 0);
  if (object == 1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
    if ((v10 & v17) == 1)
    {
      goto LABEL_41;
    }

LABEL_56:
    v24 = xpc_null_create();
    v25 = *MEMORY[0x29EDBD428];
    object = 0;
    __dst = v24;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    TraceManager::runOnHelper_sync(v2, 9, v25, 0x1388u, 0, &__dst, &object, &buf.__r_.__value_.__l.__data_);
    xpc_release(__dst);
    goto LABEL_57;
  }

  if ((v10 & v17) != 1)
  {
    goto LABEL_56;
  }

LABEL_41:
  v18 = v2[2].__get_deleter;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, "#I The other traces will handle exit low power first, then the Cellular Logging should be resumed.", &buf, 2u);
  }

  v19 = xpc_null_create();
  v36 = 0;
  object = v19;
  buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  buf.__r_.__value_.__l.__size_ = 1174405120;
  buf.__r_.__value_.__r.__words[2] = ___ZZN12TraceManager4wakeEN8dispatch13group_sessionEENK3__0clEv_block_invoke;
  v33 = &__block_descriptor_tmp_178;
  v34 = v2;
  shared_owners = v1->__shared_owners_;
  group = shared_owners;
  if (shared_owners)
  {
    dispatch_retain(shared_owners);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v21 = _Block_copy(&buf);
  v22 = *MEMORY[0x29EDBD428];
  v23 = v2[2].~__shared_weak_count_0;
  if (v23)
  {
    dispatch_retain(v2[2].~__shared_weak_count_0);
  }

  __dst = v21;
  v39 = v23;
  TraceManager::runOnHelper_sync(v2, 9, v22, 0x1388u, 0, &object, &v36, &__dst);
  if (v23)
  {
    dispatch_release(v23);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  xpc_release(object);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

LABEL_57:
  if (__p)
  {
    v26 = __p->__shared_owners_;
    if (v26)
    {
      dispatch_group_leave(v26);
      v27 = __p->__shared_owners_;
      if (v27)
      {
        dispatch_release(v27);
      }
    }

    operator delete(__p);
  }

  v28 = a1;
  if (a1)
  {
    v29 = a1[2];
    if (v29)
    {
      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
        v28 = a1;
      }
    }

    operator delete(v28);
  }
}

void sub_297012AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, dispatch_group_t group, uint64_t a20, uint64_t a21, xpc_object_t object, xpc_object_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a23);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  xpc_release(object);
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL prop::bbtrace::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBF8A0];
  v5 = strlen(*MEMORY[0x29EDBF8A0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297012CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL defaults::get(char *a1, char *a2, std::string *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBFC60]) && strcasecmp(v6, *MEMORY[0x29EDBFC58]))
    {
      if (strcasecmp(v6, *MEMORY[0x29EDBE5F8]))
      {
        if (strcasecmp(v6, *MEMORY[0x29EDBF8E8]) && strcasecmp(v6, *MEMORY[0x29EDBE690]))
        {
          if (strcasecmp(v6, *MEMORY[0x29EDBE7A8]))
          {
            if (strcasecmp(v6, *MEMORY[0x29EDBE7B0]))
            {
              if (strcasecmp(v6, *MEMORY[0x29EDBE718]))
              {
                if (strcasecmp(v6, *MEMORY[0x29EDBE528]))
                {
                  if (strcasecmp(v6, *MEMORY[0x29EDBE710]))
                  {
                    if (strcasecmp(v6, *MEMORY[0x29EDBE5B0]))
                    {
                      if (strcasecmp(v6, *MEMORY[0x29EDBE608]))
                      {
LABEL_16:
                        if (!strcasecmp(v6, *MEMORY[0x29EDBE600]))
                        {

                          return defaults::tracesettings::get(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A18B7750;
                          if (os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR))
                          {
                            if (a1[23] >= 0)
                            {
                              v9 = a1;
                            }

                            else
                            {
                              v9 = *a1;
                            }

                            if (a2[23] >= 0)
                            {
                              v10 = a2;
                            }

                            else
                            {
                              v10 = *a2;
                            }

                            v11 = 136315394;
                            v12 = v9;
                            v13 = 2080;
                            v14 = v10;
                            _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Invalid domain; domain='%s' key='%s'", &v11, 0x16u);
                          }

                          return 0;
                        }
                      }

                      goto LABEL_33;
                    }

                    goto LABEL_60;
                  }

                  goto LABEL_57;
                }

                goto LABEL_54;
              }

              goto LABEL_51;
            }

            goto LABEL_48;
          }

          goto LABEL_45;
        }

        goto LABEL_39;
      }

      goto LABEL_42;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBFC60]) && strcasecmp(a1, *MEMORY[0x29EDBFC58]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE5F8]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBF8E8]) && strcasecmp(a1, *MEMORY[0x29EDBE690]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBE7A8]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE7B0]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBE718]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE528]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE710]))
                {
                  if (strcasecmp(a1, *MEMORY[0x29EDBE5B0]))
                  {
                    v6 = a1;
                    if (strcasecmp(a1, *MEMORY[0x29EDBE608]))
                    {
                      goto LABEL_16;
                    }

LABEL_33:

                    return defaults::tailspin::get(a2, a3);
                  }

LABEL_60:

                  return defaults::profile::get(a2, a3);
                }

LABEL_57:

                return defaults::systemlogs::get(a2, a3);
              }

LABEL_54:

              return defaults::logfilter::get(a2, a3);
            }

LABEL_51:

            return defaults::ttr::get(a2, a3);
          }

LABEL_48:

          return defaults::compression::get(a2, a3);
        }

LABEL_45:

        return defaults::bbipc::get(a2, a3);
      }

LABEL_39:

      return defaults::ipc::get(a2, a3);
    }

LABEL_42:

    return defaults::coredump::get(a2, a3);
  }

  return defaults::bbtrace::get(a2, a3);
}

BOOL defaults::bbtrace::get(char *a1, std::string::size_type *a2)
{
  v63 = *MEMORY[0x29EDCA608];
  v4 = a1[23];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
    if (v5)
    {
      v6 = strcasecmp(a1, *MEMORY[0x29EDBE798]);
      if (v6)
      {
        v7 = strcasecmp(a1, *MEMORY[0x29EDBEA30]);
        if (v7)
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE590]) && strcasecmp(a1, *MEMORY[0x29EDBF208]))
          {
            if (!strcasecmp(a1, *MEMORY[0x29EDBE8F8]))
            {
              goto LABEL_128;
            }

            if (strcasecmp(a1, *MEMORY[0x29EDBE880]))
            {
              v8 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
              v9 = a1;
              if (v8)
              {
                goto LABEL_10;
              }

LABEL_25:
              v17 = capabilities::trace::defaultHistorySizeMB(v8);
              if (v17 >= 0x7FFFFFFF)
              {
                v18 = 0x7FFFFFFF;
              }

              else
              {
                v18 = v17;
              }

              util::to_str<int>(&v62, v18);
              goto LABEL_83;
            }
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_29:
    v19 = capabilities::trace::enabledByDefault(v5);
    std::to_string(&v62, v19);
LABEL_33:
    *v61 = v62.__r_.__value_.__l.__size_;
    v22 = v62.__r_.__value_.__r.__words[0];
    *&v61[7] = *(&v62.__r_.__value_.__r.__words[1] + 7);
    v23 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v22;
    a2[1] = *v61;
    *(a2 + 15) = *&v61[7];
    *(a2 + 23) = v23;
    return 1;
  }

  v9 = *a1;
  v5 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = strcasecmp(v9, *MEMORY[0x29EDBE798]);
  if (!v6)
  {
LABEL_30:
    v20 = capabilities::trace::supportsHighTPutByDefault(v6);
    std::to_string(&v62, v20);
    goto LABEL_33;
  }

  v7 = strcasecmp(v9, *MEMORY[0x29EDBEA30]);
  if (!v7)
  {
LABEL_31:
    v21 = capabilities::trace::supportsDataLoggingByDefault(v7);
    std::to_string(&v62, v21);
    goto LABEL_33;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE590]) || !strcasecmp(v9, *MEMORY[0x29EDBF208]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE8F8]))
  {
    goto LABEL_128;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE880]))
  {
LABEL_32:
    std::to_string(&v62, 0);
    goto LABEL_33;
  }

  v8 = strcasecmp(v9, *MEMORY[0x29EDBE6E8]);
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_10:
  v10 = diag::config::kEnabledDuringSleepKey[0];
  v11 = strcasecmp(v9, diag::config::kEnabledDuringSleepKey[0]);
  if (!v11)
  {
    v25 = capabilities::radio::maverick(v11);
    if (v25 & 1) != 0 || (capabilities::radio::ice(v25))
    {
      util::to_str<diag::config::DuringAPSleep>(&v62);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v10 = diag::config::kEnabledDuringSleepKey[0];
  }

  v12 = *a1;
  if ((v4 & 0x80u) == 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  v14 = strcasecmp(v13, v10);
  if (!v14)
  {
    v15 = capabilities::radio::initium(v14);
    if (v15)
    {
      v16 = capabilities::trace::defaultSleepTraceMode(v15);
      util::to_str<unsigned int>(&v62, v16);
LABEL_83:
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v62;
      return 1;
    }

    LOBYTE(v4) = a1[23];
    v12 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = v12;
  }

  v27 = strcasecmp(v26, diag::config::kBufferingOnAPAwake[0]);
  if (!v27)
  {
    if (capabilities::radio::maverick(v27))
    {
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v12 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = v12;
  }

  v29 = strcasecmp(v28, diag::config::kStallDetectionKey[0]);
  if (!v29)
  {
    if (capabilities::radio::maverick(v29))
    {
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v12 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v30 = a1;
  }

  else
  {
    v30 = v12;
  }

  v31 = strcasecmp(v30, diag::config::kStallDetectionRetriesKey[0]);
  if (!v31)
  {
    if (capabilities::radio::maverick(v31))
    {
      util::to_str<unsigned int>(&v62, 3u);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v12 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v32 = a1;
  }

  else
  {
    v32 = v12;
  }

  v33 = strcasecmp(v32, diag::config::kStallDetectionRecoveryKey[0]);
  if (!v33)
  {
    if (capabilities::radio::maverick(v33))
    {
      util::to_str<diag::config::Recovery>(&v62);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v34 = a1;
    if (strcasecmp(a1, diag::config::kKeepScratchLogsKey[0]))
    {
      goto LABEL_72;
    }

LABEL_82:
    util::to_str<BOOL>(&v62, 0);
    goto LABEL_83;
  }

  v34 = *a1;
  if (!strcasecmp(*a1, diag::config::kKeepScratchLogsKey[0]))
  {
    goto LABEL_82;
  }

LABEL_72:
  v35 = strcasecmp(v34, *MEMORY[0x29EDBF200]);
  if (!v35)
  {
    v36 = capabilities::radio::maverick(v35);
    if (v36)
    {
      goto LABEL_88;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v37 = strcasecmp(a1, *MEMORY[0x29EDBF418]);
    v38 = a1;
    if (v37)
    {
      goto LABEL_77;
    }

LABEL_87:
    v36 = capabilities::radio::ice(v37);
    if (!v36)
    {
      v40 = "None";
LABEL_92:
      std::string::__assign_external(a2, v40);
      return 1;
    }

LABEL_88:
    if (config::hw::watch(v36))
    {
      v40 = "Lite";
    }

    else
    {
      v40 = "Default";
    }

    goto LABEL_92;
  }

  v38 = *a1;
  v37 = strcasecmp(*a1, *MEMORY[0x29EDBF418]);
  if (!v37)
  {
    goto LABEL_87;
  }

LABEL_77:
  v39 = strcasecmp(v38, diag::config::kExtraDMCFileKey[0]);
  if (!v39)
  {
    if (capabilities::radio::maverick(v39))
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 4;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 4;
      }

      strcpy(a2, "None");
      return 1;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80u) == 0)
  {
    v41 = a1;
  }

  else
  {
    v41 = *a1;
  }

  v42 = strcasecmp(v41, *MEMORY[0x29EDBEF70]);
  if (!v42)
  {
    if (capabilities::radio::maverick(v42))
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 5;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 5;
      }

      strcpy(a2, "Sleep");
      return 1;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE938]))
    {
      v43 = strcasecmp(a1, *MEMORY[0x29EDBF2E0]);
      if (v43)
      {
        if (!strcasecmp(a1, *MEMORY[0x29EDBF7F0]))
        {
          goto LABEL_82;
        }

        if (strcasecmp(a1, *MEMORY[0x29EDBF7B0]) && strcasecmp(a1, *MEMORY[0x29EDBF7B8]))
        {
          v44 = strcasecmp(a1, *MEMORY[0x29EDBE790]);
          if (v44)
          {
            v45 = strcasecmp(a1, *MEMORY[0x29EDBEDD8]);
            if (v45)
            {
              v46 = strcasecmp(a1, *MEMORY[0x29EDBEF80]);
              if (v46)
              {
                v47 = a1;
                if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
                {
                  goto LABEL_112;
                }

LABEL_127:
                util::to_str<BOOL>(&v62, 1);
                goto LABEL_83;
              }

LABEL_144:
              count = defaults::bbtrace::transport_read_count(v46);
              util::to_str<unsigned int>(&v62, count);
              goto LABEL_83;
            }

LABEL_143:
            size = defaults::bbtrace::transport_read_size(v45);
            util::to_str<unsigned int>(&v62, size);
            goto LABEL_83;
          }

LABEL_142:
          v53 = capabilities::trace::defaultFileSizeBytes(v44);
          util::to_str<unsigned int>(&v62, v53);
          goto LABEL_83;
        }

LABEL_128:
        if (*(a2 + 23) < 0)
        {
          a2[1] = 0;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 0;
        }

        *a2 = 0;
        return 1;
      }

LABEL_134:
      v52 = capabilities::trace::defaultMemoryFileMaxCount(v43);
      util::to_str<unsigned int>(&v62, v52);
      goto LABEL_83;
    }

LABEL_132:
    if (*(a2 + 23) < 0)
    {
      a2[1] = 17;
      a2 = *a2;
    }

    else
    {
      *(a2 + 23) = 17;
    }

    strcpy(a2, "/usr/lib/bbmasks/");
    return 1;
  }

  v47 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE938]))
  {
    goto LABEL_132;
  }

  v43 = strcasecmp(v47, *MEMORY[0x29EDBF2E0]);
  if (!v43)
  {
    goto LABEL_134;
  }

  if (!strcasecmp(v47, *MEMORY[0x29EDBF7F0]))
  {
    goto LABEL_82;
  }

  if (!strcasecmp(v47, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v47, *MEMORY[0x29EDBF7B8]))
  {
    goto LABEL_128;
  }

  v44 = strcasecmp(v47, *MEMORY[0x29EDBE790]);
  if (!v44)
  {
    goto LABEL_142;
  }

  v45 = strcasecmp(v47, *MEMORY[0x29EDBEDD8]);
  if (!v45)
  {
    goto LABEL_143;
  }

  v46 = strcasecmp(v47, *MEMORY[0x29EDBEF80]);
  if (!v46)
  {
    goto LABEL_144;
  }

  if (!strcasecmp(v47, *MEMORY[0x29EDBF410]))
  {
    goto LABEL_127;
  }

LABEL_112:
  v48 = strcasecmp(v47, *MEMORY[0x29EDBF1F8]);
  if (!v48)
  {
    v49 = capabilities::trace::supportsDataRateObserver(v48);
    if (v49)
    {
      v50 = capabilities::trace::defaultPeakBandwidthMbps(v49);
      if (v50 >= 0xFFFFFFFF)
      {
        v51 = -1;
      }

      else
      {
        v51 = v50;
      }

      util::to_str<unsigned int>(&v62, v51);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) != 0)
  {
    v56 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBFC80]))
    {
      if (strcasecmp(v56, *MEMORY[0x29EDBFC98]))
      {
        if (!strcasecmp(v56, *MEMORY[0x29EDBFC78]))
        {
          goto LABEL_163;
        }

        if (strcasecmp(v56, *MEMORY[0x29EDBFC90]))
        {
          if (strcasecmp(v56, *MEMORY[0x29EDBF2D8]))
          {
            goto LABEL_152;
          }

LABEL_160:
          util::to_str<unsigned int>(&v62, 0x1F4u);
          goto LABEL_83;
        }
      }

LABEL_162:
      util::to_str<trace::LogLevel>(&v62);
      goto LABEL_83;
    }

LABEL_161:
    util::to_str<trace::LogMode>(&v62, 1);
    goto LABEL_83;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC80]))
  {
    goto LABEL_161;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC98]))
  {
    goto LABEL_162;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC78]))
  {
LABEL_163:
    util::to_str<trace::LogMode>(&v62, 2);
    goto LABEL_83;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC90]))
  {
    goto LABEL_162;
  }

  v56 = a1;
  if (!strcasecmp(a1, *MEMORY[0x29EDBF2D8]))
  {
    goto LABEL_160;
  }

LABEL_152:
  v57 = strcasecmp(v56, *MEMORY[0x29EDBFCA8]);
  if (!v57 && capabilities::trace::supportsErrorHandling(v57))
  {
    util::to_str<int>(&v62, 0);
    goto LABEL_83;
  }

  sGetOsLogContext();
  v58 = qword_2A18B7750;
  result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v59 = *MEMORY[0x29EDBF8A0];
    if (a1[23] >= 0)
    {
      v60 = a1;
    }

    else
    {
      v60 = *a1;
    }

    LODWORD(v62.__r_.__value_.__l.__data_) = 136315394;
    *(v62.__r_.__value_.__r.__words + 4) = v59;
    WORD2(v62.__r_.__value_.__r.__words[1]) = 2080;
    *(&v62.__r_.__value_.__r.__words[1] + 6) = v60;
    _os_log_error_impl(&dword_296FF7000, v58, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v62, 0x16u);
    return 0;
  }

  return result;
}
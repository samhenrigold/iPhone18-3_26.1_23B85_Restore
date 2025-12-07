void __destroy_helper_block_ea8_40c23_ZTS17ULBleIdentityItem(uint64_t a1)
{
  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    v2 = *(a1 + 56);

    operator delete(v2);
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_99()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULBluetoothIdentityDO>::__emplace_back_slow_path<boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, double *a5)
{
  v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v9 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULBluetoothIdentityDO>>(a1, v9);
  }

  v16 = 0;
  v17 = 72 * v5;
  std::construct_at[abi:ne200100]<ULBluetoothIdentityDO,boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULBluetoothIdentityDO*>(72 * v5, a2, a3, a4, a5);
  v18 = 72 * v5 + 72;
  v10 = a1[1];
  v11 = 72 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULBluetoothIdentityDO>,ULBluetoothIdentityDO*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ULBluetoothIdentityDO>::~__split_buffer(&v16);
  return v15;
}

void sub_259130F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULBluetoothIdentityDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<ULBluetoothIdentityDO,boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULBluetoothIdentityDO*>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double *a5)
{
  v8 = *a2;
  v9 = a2[1];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
  }

  else
  {
    v12 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  ULBluetoothIdentityDO::ULBluetoothIdentityDO(a1, v8, v9, &v12, &__p, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_259131010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = v2;
      v2 = *v2;
      if (*(v3 + 120) == 1 && *(v3 + 119) < 0)
      {
        operator delete(v3[12]);
      }

      if (*(v3 + 88) == 1 && *(v3 + 87) < 0)
      {
        operator delete(v3[8]);
      }

      if (*(v3 + 56) == 1 && *(v3 + 55) < 0)
      {
        operator delete(v3[4]);
      }

      operator delete(v3);
    }

    while (v2);
  }
}

void sub_259131198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259131274(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = ULBleIdentityItem::HashItem::operator()(a1, (a2 + 2));
  v2[1] = v4;
  v5 = std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 2));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t std::construct_at[abi:ne200100]<ULBleIdentityItem,boost::uuids::uuid const&,std::optional<std::string> &,std::optional<std::string> &,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULBleIdentityItem*>(uint64_t a1, _OWORD *a2, __int128 *a3, __int128 *a4, uint64_t a5, void *a6)
{
  LOBYTE(__p) = 0;
  v10 = 0;
  ULBleIdentityItem::ULBleIdentityItem(a1, a2, a3, a4, &__p, a6);
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_25913134C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == a2)
          {
            if (ULBleIdentityItem::PredicateItem::operator()(a1, (v11 + 2), a3))
            {
              return v11;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= v4)
              {
                v12 %= v4;
              }
            }

            else
            {
              v12 &= v4 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 120) == 1 && *(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 88) == 1 && *(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }

    if (*(__p + 56) == 1 && *(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__emplace_unique_key_args<ULBleIdentityItem,ULBleIdentityItem const&>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = ULBleIdentityItem::HashItem::operator()(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__construct_node_hash<ULBleIdentityItem const&>();
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
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!ULBleIdentityItem::PredicateItem::operator()(a1, (v12 + 2), a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_259131858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259131924(_Unwind_Exception *a1)
{
  if (*(v2 + 88) == 1 && *(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  if (*(v2 + 56) == 1 && *(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_259131B08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t ULBLERssiBridge::ULBLERssiBridge(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = &unk_286A5B728;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = a3;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  v6 = a1 + 80;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  v7 = v5;
  CLMicroLocationUtils::getAnchorDeviceModelAllowedMap(&v11);
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(a1 + 72, *(a1 + 80));
  v8 = v12;
  *(a1 + 72) = v11;
  *(a1 + 80) = v8;
  v9 = v13;
  *(a1 + 88) = v13;
  if (v9)
  {
    *(v8 + 16) = v6;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
    v8 = 0;
  }

  else
  {
    *(a1 + 72) = v6;
  }

  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&v11, v8);

  return a1;
}

void sub_259131E80(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v3, *(v1 + 80));
  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(v4, *(v1 + 48));

  _Unwind_Resume(a1);
}

void ULBLERssiBridge::~ULBLERssiBridge(ULBLERssiBridge *this)
{
  *this = &unk_286A5B728;
  [*(this + 1) invalidate];
  v2 = *(this + 1);
  *(this + 1) = 0;

  [*(this + 2) invalidate];
  v3 = *(this + 2);
  *(this + 2) = 0;

  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(this + 40, *(this + 6));
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  *(this + 6) = 0;
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(this + 72, *(this + 10));
  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(this + 40, *(this + 6));
}

{
  ULBLERssiBridge::~ULBLERssiBridge(this);

  JUMPOUT(0x259CA1F90);
}

void ULBLERssiBridge::addTechnologyProfile(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v7[0] = *a2;
  *v8 = *a2;
  v4 = *(a2 + 3);
  *&v8[16] = *(a2 + 2);
  *&v8[24] = v4;
  v9 = *(a2 + 8);
  v10 = *(a2 + 5);
  v11 = *(a2 + 6);
  v12 = *(a2 + 7);
  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULBleTechnologyProfile>>(this + 40, v7, v7);

  if (onceToken_MicroLocation_Default != -1)
  {
    ULBLERssiBridge::addTechnologyProfile();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7[0] = 68289538;
    v7[1] = 0;
    *v8 = 2082;
    *&v8[2] = "";
    *&v8[10] = 2082;
    *&v8[12] = "addTechnologyProfile";
    *&v8[20] = 1026;
    *&v8[22] = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULBLERssiBridge: Add BLE Profile, method:%{public, location:escape_only}s, index:%{public}d}", v7, 0x22u);
  }
}

void ULBLERssiBridge::removeTechnologyProfile(ULBLERssiBridge *this, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__erase_unique<int>(this + 40, &v3))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::addTechnologyProfile();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "removeTechnologyProfile";
      v10 = 1026;
      v11 = v3;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULBLERssiBridge: BLE profile Removed, method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
    }
  }
}

uint64_t ULBLERssiBridge::initiateScanRequestByIndex(ULBLERssiBridge *this, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!*(this + 16))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v12 = 138412290;
      *v13 = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "Got request to initiate a scan request with profile index: %@ while an active scan is ongoing.", &v12, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = *(this + 6);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = (this + 48);
  do
  {
    if (v4[8] >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a2)];
  }

  while (v4);
  if (v5 == (this + 48) || v5[8] > a2)
  {
LABEL_9:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v12 = 138412290;
      *v13 = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "BLE profile with index: %@ doesn't exist.", &v12, 0xCu);
    }

LABEL_18:

    return 0;
  }

  ULBLERssiBridge::activateDiscoveriesIfNeeded(this, (v5 + 10));
  started = ULBLERssiBridge::startDiscovery(this, (v5 + 10));
  if (onceToken_MicroLocation_Default != -1)
  {
    ULBLERssiBridge::initiateScanRequestByIndex();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289794;
    *v13 = 0;
    *&v13[4] = 2082;
    *&v13[6] = "";
    v14 = 2082;
    v15 = "initiateScanRequestByIndex";
    v16 = 1026;
    v17 = started;
    v18 = 1026;
    v19 = a2;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start BLE discovery, method:%{public, location:escape_only}s, Scan Initiated:%{public}d, profileIndex:%{public}d}", &v12, 0x28u);
  }

  return started;
}

void ULBLERssiBridge::activateDiscoveriesIfNeeded(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  if (!*(this + 1))
  {
    v4 = objc_opt_new();
    v5 = *(this + 1);
    *(this + 1) = v4;

    [*(this + 1) setDispatchQueue:*(this + 3)];
    [*(this + 1) setDiscoveryFlags:0];
    objc_initWeak(&location, *(this + 1));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke;
    v14[3] = &unk_2798D4E58;
    v15[1] = this;
    objc_copyWeak(v15, &location);
    [*(this + 1) setDeviceFoundHandler:v14];
    v6 = *(this + 1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_2;
    v13[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v13[4] = this;
    [v6 activateWithCompletion:v13];
    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  if (!*(this + 2))
  {
    if (ULSettings::get<ULSettings::BleNonLeechingScannerEnabled>())
    {
      v7 = objc_opt_new();
      v8 = *(this + 2);
      *(this + 2) = v7;

      [*(this + 2) setDispatchQueue:*(this + 3)];
      [*(this + 2) setDiscoveryFlags:0];
      [*(this + 2) setUseCase:*(a2 + 2)];
      objc_initWeak(&location, *(this + 2));
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_15;
      v11[3] = &unk_2798D4E58;
      v12[1] = this;
      objc_copyWeak(v12, &location);
      [*(this + 2) setDeviceFoundHandler:v11];
      v9 = *(this + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_2_16;
      v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v10[4] = this;
      [v9 activateWithCompletion:v10];
      objc_destroyWeak(v12);
      objc_destroyWeak(&location);
    }
  }
}

void sub_259132724(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t ULBLERssiBridge::startDiscovery(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  started = ULBLERssiBridge::startSameAccountScanner(this, a2);
  if (*(this + 2) && ((ULSettings::get<ULSettings::BleNonLeechingScannerEnabled>() & 1) != 0 || ((+[ULDefaultsSingleton shared](ULDefaultsSingleton, "shared"), v5 = objc_claimAutoreleasedReturnValue(), [v5 defaultsDictionary], v6 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "ULBleForceScanNearbyInfoV2"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v9 = objc_msgSend(MEMORY[0x277CBEC28], "BOOLValue")) : (v9 = objc_msgSend(v8, "BOOLValue")), v10 = v9, v8, v7, v6, v10)))
  {
    v11 = ULBLERssiBridge::startFamilyAccountScanner(this, a2);
  }

  else
  {
    v11 = 0;
  }

  return v11 | started;
}

void *ULBLERssiBridge::stopScan(ULBLERssiBridge *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULBLERssiBridge::initiateScanRequestByIndex();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Unregister all BLE scan sessions", v4, 2u);
  }

  *(this + 16) = 1;
  return ULBLERssiBridge::stopDiscovery(this);
}

void *ULBLERssiBridge::stopDiscovery(id *this)
{
  [this[1] removeAllDiscoveryTypes];
  [this[1] setDiscoveryFlags:0];
  [this[1] setDeviceFilter:0];
  [this[1] setLabel:0];
  result = ULSettings::get<ULSettings::BleNonLeechingScannerEnabled>();
  if (result)
  {
    [this[2] removeAllDiscoveryTypes];
    [this[2] setDiscoveryFlags:0];
    [this[2] setDeviceFilter:0];
    v3 = this[2];

    return [v3 setOobKeys:0];
  }

  return result;
}

void ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    ULBLERssiBridge::onBleBeaconReceived(v3, v5);
  }
}

void ULBLERssiBridge::onBleBeaconReceived(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  dispatch_assert_queue_V2(*(a1 + 24));
  if (!v3)
  {
    goto LABEL_30;
  }

  v5 = [v3 deviceFlags];
  v6 = [v3 nearbyInfoV2DecryptedFlags];
  if ((v5 & 0x180) == 0 && (v6 & 4) == 0)
  {
    goto LABEL_30;
  }

  v7 = [v3 discoveryFlags];
  v8 = [v3 deviceFlags];
  v9 = [v3 deviceFlags];
  if (onceToken_MicroLocationQE_Default != -1)
  {
    ULBLERssiBridge::onBleBeaconReceived();
  }

  v10 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v32 = [v3 idsDeviceID];
    v31 = [v32 UTF8String];
    v11 = [v3 identifier];
    v30 = v4;
    v12 = v8;
    v13 = [v11 UTF8String];
    v14 = [v3 model];
    v15 = [v14 UTF8String];
    [v3 bleAdvertisementTimestamp];
    *buf = 68291075;
    v42 = 0;
    v43 = 2082;
    v44 = "";
    v45 = 2081;
    v46 = v31;
    v47 = 2081;
    v48 = v13;
    v49 = 2081;
    v50 = v15;
    v51 = 1025;
    v52 = (*&v7 & 0x80040) != 0;
    v53 = 1025;
    v54 = (v12 >> 7) & 1;
    v55 = 1025;
    v56 = (v9 >> 15) & 1;
    v57 = 2050;
    v58 = v16;
    v59 = 1026;
    v60 = [v3 rssi];
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Ble Beacon Received, IDS ID:%{private, location:escape_only}s, BT identifier:%{private, location:escape_only}s, Model:%{private, location:escape_only}s, is device nearbyInfo or nearbyAction type?:%{private}hhd, is device same account?:%{private}hhd, is device cloud paired?:%{private}hhd, AdvertisementTimestamp:%{public}.3f, RSSI:%{public}d}", buf, 0x52u);

    v4 = v30;
  }

  v17 = [v3 model];
  if (v17)
  {
    v18 = [v3 model];
    v19 = v18;
    std::string::basic_string[abi:ne200100]<0>(v36, [v18 UTF8String]);
    v38 = 1;
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v38 = 0;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v36);
  std::map<std::string,DeviceModel>::map[abi:ne200100](v33, a1 + 72);
  v20 = CLMicroLocationUtils::convertModelStringToDeviceModel(&__p, v33);
  v21 = v3;
  v40 = v20;
  v22 = [v21 idsDeviceID];
  v23 = v22 == 0;

  if (!v23)
  {
    v24 = [v21 idsDeviceID];
    v25 = v24;
    v26 = std::string::basic_string[abi:ne200100]<0>(v61, [v24 UTF8String]);
    CLMicroLocationProtobufHelper::uuidFromStdString(v26, &v63);
    if (v62 < 0)
    {
      operator delete(*v61);
    }

    if (v64)
    {
      [v21 bleAdvertisementTimestamp];
      v39 = v27;
      v28 = [v21 rssi];
      if ((v64 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULBLEMeasurementDO::ULBLEMeasurementDO(v61, &v39, v28, &v63, &v40);
      ULBLEMeasurementDO::ULBLEMeasurementDO(buf, v61);
      BYTE2(v48) = 1;
      goto LABEL_22;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::addTechnologyProfile();
    }

    v29 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v61 = 0;
      _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_ERROR, "Invalid CBDevice IDS UUID", v61, 2u);
    }
  }

  buf[0] = 0;
  BYTE2(v48) = 0;
LABEL_22:

  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v33, v33[1]);
  if (v35 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v48 & 0x10000) != 0)
  {
    (*(**(a1 + 32) + 16))(*(a1 + 32), buf);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36[0]);
  }

LABEL_30:
  objc_autoreleasePoolPop(v4);
}

void sub_259132EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&a12, a13);
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 == 1 && a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    [*(v4 + 8) invalidate];
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"CBDiscovery activation error:", v3];
    CLMicroLocationErrorHandling::reportError(v6, v7);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CBDiscovery same account activated successfully}", buf, 0x12u);
    }
  }
}

void sub_2591330FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::BleNonLeechingScannerEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleNonLeechingScannerEnabled"];
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

void ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_15(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    ULBLERssiBridge::onBleBeaconReceived(v3, v5);
  }
}

void ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_2_16(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    [*(v4 + 16) invalidate];
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"CBDiscovery activation error:", v3];
    CLMicroLocationErrorHandling::reportError(v6, v7);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CBDiscovery family account activated successfully}", buf, 0x12u);
    }
  }
}

void sub_2591333D0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t ULBLERssiBridge::startSameAccountScanner(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a2 + 21) & 0x10) != 0 || [*(a2 + 7) count] || ((+[ULDefaultsSingleton shared](ULDefaultsSingleton, "shared"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "defaultsDictionary"), v5 = objc_claimAutoreleasedReturnValue(), v4, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "ULBleForceRequestedType15Type16ScanWhenDeviceFilterIsEmpty"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", v6), (v7 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v8 = objc_msgSend(MEMORY[0x277CBEC28], "BOOLValue")) : (v8 = objc_msgSend(v7, "BOOLValue")), v9 = v8, v7, v6, v5, (v9))
  {
    *(this + 16) = 0;
    [*(this + 1) setDiscoveryFlags:*(a2 + 2)];
    [*(this + 1) setLabel:@"ULSameAccount"];
    [*(this + 1) setUseCase:*(a2 + 2)];
    v10 = +[ULDefaultsSingleton shared];
    v11 = [v10 defaultsDictionary];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleType15andType16DeviceFilterIsSet"];
    v13 = [v11 objectForKey:v12];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v13 BOOLValue];
    }

    else
    {
      v14 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v15 = v14;

    if (v15)
    {
      if ([*(a2 + 7) count])
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULBLERssiBridge::initiateScanRequestByIndex();
        }

        v16 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a2 + 7);
          v23 = 68289282;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2114;
          v28 = v17;
          _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:scanner type 15, 16 deviceFilter is, deviceFilter:%{public, location:escape_only}@}", &v23, 0x1Cu);
        }

        [*(this + 1) setDeviceFilter:*(a2 + 7)];
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULBLERssiBridge::initiateScanRequestByIndex();
        }

        v18 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v23 = 68289026;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:scanner type 15, 16 deviceFilter is empty for initiated scan}", &v23, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULBLERssiBridge::addTechnologyProfile();
        }

        v19 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(logObject_MicroLocation_Default))
        {
          v23 = 68289026;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "scanner type 15, 16 deviceFilter is empty for initiated scan", "{msg%{public}.0s:scanner type 15, 16 deviceFilter is empty for initiated scan}", &v23, 0x12u);
        }
      }
    }

    [*(this + 1) setBleScanRate:*(a2 + 1)];
    return 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v21 = logObject_MicroLocation_Default;
    v22 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v22)
    {
      v23 = 68289026;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:will not conduct nearbyAction, nearbyInfo requested scan because device filter is empty}", &v23, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t ULBLERssiBridge::startFamilyAccountScanner(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 2);
  if ((v4 & 0x100000000000) == 0)
  {
    goto LABEL_8;
  }

  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleNonLeechingBackgroundScanEnabled"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v10 = v9;

  if (v10)
  {
    v4 = *(a2 + 2);
LABEL_8:
    *(this + 16) = 0;
    [*(this + 2) setDiscoveryFlags:v4];
    [*(this + 2) addDiscoveryType:*(a2 + 8)];
    v11 = +[ULDefaultsSingleton shared];
    v12 = [v11 defaultsDictionary];

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleType22DeviceFilterIsSet"];
    v14 = [v12 objectForKey:v13];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v16 = v15;

    if (v16)
    {
      [*(this + 2) setOobKeys:*(a2 + 3)];
      [*(this + 2) setDeviceFilter:*(a2 + 6)];
      if (onceToken_MicroLocation_Default != -1)
      {
        ULBLERssiBridge::initiateScanRequestByIndex();
      }

      v17 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a2 + 6);
        v23 = 68289282;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        v28 = v18;
        _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:scanner type 22 deviceFilter is, deviceFilter:%{public, location:escape_only}@}", &v23, 0x1Cu);
      }
    }

    [*(this + 2) setLabel:@"ULFamilyAccount"];
    [*(this + 2) setBleScanRate:*(a2 + 1)];
    return 1;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULBLERssiBridge::initiateScanRequestByIndex();
  }

  v20 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 68289026;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleNonLeechingBackgroundScanEnabled is disabled}", &v23, 0x12u);
  }

  v22 = *(this + 2);
  v21 = (this + 16);
  [v22 removeAllDiscoveryTypes];
  [*v21 setDiscoveryFlags:0];
  [*v21 setDeviceFilter:0];
  [*v21 setOobKeys:0];
  return 0;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_100()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_4()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

void std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<int,ULBleTechnologyProfile>,void *>>>::destroy[abi:ne200100]<std::pair<int const,ULBleTechnologyProfile>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<int,ULBleTechnologyProfile>,void *>>>::destroy[abi:ne200100]<std::pair<int const,ULBleTechnologyProfile>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
}

uint64_t *std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULBleTechnologyProfile>>(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__construct_node<std::pair<int,ULBleTechnologyProfile>>();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<int,ULBleTechnologyProfile>,void *>>>::destroy[abi:ne200100]<std::pair<int const,ULBleTechnologyProfile>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_101()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *CLMicroLocationMotionBridge::CLMicroLocationMotionBridge(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *a1 = &unk_286A5B808;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v6 = v5;
  a1[6] = v6;
  FenceRadius = CLMicroLocationMotionBridge::getFenceRadius(v6);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
  aBlock[3] = &unk_2798D4EA0;
  v29 = a1;
  v8 = v6;
  v28 = v8;
  v9 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
  v24[3] = &unk_2798D4EC8;
  v26 = a1;
  v10 = v8;
  v25 = v10;
  v11 = _Block_copy(v24);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3;
  v20[3] = &unk_2798D4EF0;
  v23 = a1;
  v12 = v10;
  v21 = v12;
  v22 = @"ULPDRFence";
  v13 = _Block_copy(v20);
  v14 = [ULCMPDRFenceProvider alloc];
  *&v15 = FenceRadius;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v17 = [(ULCMPDRFenceProvider *)v14 initWithFenceIdentifier:@"ULPDRFence" queue:v12 radiusInMeters:v16 callback:v9 statusCallback:v13 errorCallback:v11];
  v18 = a1[2];
  a1[2] = v17;

  return a1;
}

float CLMicroLocationMotionBridge::getFenceRadius(CLMicroLocationMotionBridge *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = +[ULDefaultsSingleton shared];
  v2 = [v1 defaultsDictionary];

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPedestrianFenceRadiusInMeters"];
  v4 = [v2 objectForKey:v3];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 floatValue];
  }

  else
  {
    [&unk_286A72E10 floatValue];
  }

  v6 = v5;

  if ([MEMORY[0x277D28868] isIpad])
  {
    v7 = +[ULDefaultsSingleton shared];
    v8 = [v7 defaultsDictionary];

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPedestrianFenceRadiusForIpadInMeters"];
    v10 = [v8 objectForKey:v9];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v10 floatValue];
    }

    else
    {
      [&unk_286A72E10 floatValue];
    }

    v6 = v11;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 68289282;
    v14[1] = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    v18 = v6;
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Motion Bridge, getFenceRadius, fence size in m:%{public}.2f}", v14, 0x1Cu);
  }

  return v6;
}

void ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;
  CLMicroLocationMotionBridge::stopAllStatusTimers(v7);
  v10 = *(v7 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  (*(*v10 + 16))(v10, __p, v9);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = +[ULEventLog shared];
  [v11 log:@"Motion Event Status: Motion Bridge Fence Cross Geofence"];
}

void sub_259134CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  v11 = +[ULEventLog shared];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Motion Event Status: Motion Bridge Geofence Error code: %u", objc_msgSend(v7, "code")];
  [v11 log:v12];

  [v8 timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = *(v10 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
  (*(*v15 + 16))(v15, __p, v14);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259134E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationMotionBridge::~CLMicroLocationMotionBridge(id *this)
{
  *this = &unk_286A5B808;
  [this[3] invalidate];
  v2 = this[3];
  this[3] = 0;

  [this[4] invalidate];
  v3 = this[4];
  this[4] = 0;
}

{
  CLMicroLocationMotionBridge::~CLMicroLocationMotionBridge(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationMotionBridge::handleFenceStatusTimerFire(id *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "handleFenceStatusTimerFire", v3, 2u);
  }

  CLMicroLocationMotionBridge::stopAllStatusTimersAndStartRaceDelayTimer(this);
}

void CLMicroLocationMotionBridge::stopAllStatusTimersAndStartRaceDelayTimer(id *this)
{
  v19 = *MEMORY[0x277D85DE8];
  CLMicroLocationMotionBridge::stopAllStatusTimers(this);
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxDelayAfterFenceStatusReportTimerFires"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 doubleValue];
  }

  else
  {
    [&unk_286A71F88 doubleValue];
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    v18 = v7;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stopAllStatusTimersAndStartRaceDelayTimer: setting race delay timer to fire in the future, Delay to next fire:%{public}f}", buf, 0x1Cu);
  }

  [this[4] invalidate];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZN27CLMicroLocationMotionBridge41stopAllStatusTimersAndStartRaceDelayTimerEv_block_invoke;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = this;
  v10 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v9 repeats:MEMORY[0x277CBEC28] block:v12];
  v11 = this[4];
  this[4] = v10;
}

uint64_t CLMicroLocationMotionBridge::handleRaceDelayTimerFire(id *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "handleRaceDelayTimerFire", v4, 2u);
  }

  CLMicroLocationMotionBridge::stopAllStatusTimers(this);
  return (*(*this[1] + 24))(this[1]);
}

void CLMicroLocationMotionBridge::setMotionFence(id *this)
{
  v2 = +[ULEventLog shared];
  [v2 log:@"Motion Event Status: Motion Bridge Geofence Set"];

  [this[2] setFence];

  CLMicroLocationMotionBridge::stopAllStatusTimersAndStartFenceStatusTimer(this);
}

uint64_t CLMicroLocationMotionBridge::clearMotionFence(id *this)
{
  v2 = +[ULEventLog shared];
  [v2 log:@"Motion Event Status: Motion Bridge Geofence Clear"];

  [this[2] clearFence];

  return CLMicroLocationMotionBridge::stopAllStatusTimers(this);
}

uint64_t CLMicroLocationMotionBridge::startMotionSession(id *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationMotionBridge::startMotionSession}", v4, 0x12u);
  }

  return [this[2] startSession];
}

uint64_t CLMicroLocationMotionBridge::stopMotionSession(id *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationMotionBridge::stopMotionSession}", v4, 0x12u);
  }

  return [this[2] endSession];
}

uint64_t CLMicroLocationStopMotionDetectionBridge::CLMicroLocationStopMotionDetectionBridge(uint64_t a1, uint64_t a2, void *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *a1 = &unk_286A5B848;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  v66 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 128) = 0;
  v60 = v5;
  v61 = a1;
  *(a1 + 136) = v60;
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleEnable"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v11 = v10;

  if (v11)
  {
    v57 = a1 + 64;
    v12 = +[ULDefaultsSingleton shared];
    v13 = [v12 defaultsDictionary];

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleRadiuses"];
    v15 = [v13 objectForKey:v14];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v15, buf);
    }

    else
    {
      ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_33MotionStopDetectionModuleRadiusesEE12defaultValueE_, 2uLL, buf);
    }

    v59 = *buf;

    v17 = +[ULDefaultsSingleton shared];
    v18 = [v17 defaultsDictionary];

    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleOngoingTimerTimeout"];
    v20 = [v18 objectForKey:v19];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v20 doubleValue];
    }

    else
    {
      [&unk_286A72DF0 doubleValue];
    }

    v22 = v21;

    v23 = +[ULDefaultsSingleton shared];
    v24 = [v23 defaultsDictionary];

    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleTimeouts"];
    v26 = [v24 objectForKey:v25];
    if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v26, buf);
    }

    else
    {
      ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_33MotionStopDetectionModuleTimeoutsEE12defaultValueE_, 2uLL, buf);
    }

    v64 = *buf;

    v27 = v59.i64[0];
    if ([MEMORY[0x277D28868] isIpad])
    {
      v28 = +[ULDefaultsSingleton shared];
      v29 = [v28 defaultsDictionary];

      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleIpadRadii"];
      v31 = [v29 objectForKey:v30];
      if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v31, buf);
      }

      else
      {
        ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_34MotionStopDetectionModuleIpadRadiiEE12defaultValueE_, 2uLL, buf);
      }

      v59 = *buf;

      if (v27)
      {
        operator delete(v27);
      }

      v32 = +[ULDefaultsSingleton shared];
      v33 = [v32 defaultsDictionary];

      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleIpadOngoingTimerTimeout"];
      v35 = [v33 objectForKey:v34];
      if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v35 doubleValue];
      }

      else
      {
        [&unk_286A72E00 doubleValue];
      }

      v22 = v36;

      v37 = +[ULDefaultsSingleton shared];
      v38 = [v37 defaultsDictionary];

      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleIpadTimeouts"];
      v40 = [v38 objectForKey:v39];
      if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v40, buf);
      }

      else
      {
        ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_37MotionStopDetectionModuleIpadTimeoutsEE12defaultValueE_, 2uLL, buf);
      }

      v58 = *buf;

      if (v64.i64[0])
      {
        operator delete(v64.i64[0]);
      }
    }

    else
    {
      v58 = v64;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
    aBlock[3] = &unk_2798D4EA0;
    v80 = v61;
    v41 = v60;
    v79 = v41;
    v62 = _Block_copy(aBlock);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
    v75[3] = &unk_2798D4EC8;
    v77 = v61;
    v42 = v41;
    v76 = v42;
    v63 = _Block_copy(v75);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3;
    v73[3] = &unk_2798D4F18;
    v43 = v42;
    v74 = v43;
    v65 = _Block_copy(v73);
    v44 = vshrq_n_s64(vsubq_s64(vzip2q_s64(v59, v58), vzip1q_s64(v59, v58)), 3uLL);
    v45 = v44.i64[1];
    v46 = v44.i64[0];
    if (v44.i64[0] == v44.i64[1])
    {
      if ((vmovn_s64(vceqq_s64(vdupq_laneq_s64(v59, 1), v59)).u8[0] & 1) == 0)
      {
        if (v44.i64[0] <= 1uLL)
        {
          v47 = 1;
        }

        else
        {
          v47 = v44.i64[0];
        }

        v48 = v58.i64[0];
        v49 = v59.i64[0];
        do
        {
          *buf = *v49;
          *&buf[8] = *v48;
          buf[16] = 0;
          BYTE4(v87) = 0;
          CLMicroLocationStopMotionDetectionBridge::Config::toStr(buf, &__p);
          v50 = [ULCMPDRFenceProvider alloc];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_p];
          v53 = [MEMORY[0x277CCABB0] numberWithDouble:*buf];
          v71 = [(ULCMPDRFenceProvider *)v50 initWithFenceIdentifier:v52 queue:v43 radiusInMeters:v53 callback:v62 statusCallback:v65 errorCallback:v63];

          v81[0] = buf;
          v81[1] = &v71;
          v82 = &__p;
          std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<CLMicroLocationStopMotionDetectionBridge::Config &,ULCMPDRFenceProvider * {__strong}&>>(v66, &__p, &std::piecewise_construct, &v82, v81);

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (BYTE4(v87) == 1 && SBYTE3(v87) < 0)
          {
            operator delete(*&buf[16]);
          }

          ++v49;
          ++v48;
          --v47;
        }

        while (v47);
      }

      *&v67 = nan("");
      *(&v67 + 1) = v22;
      std::string::basic_string[abi:ne200100]<0>(&v68, "ongoingTimer");
      v70 = 1;
      CLMicroLocationStopMotionDetectionBridge::Element::Element(buf, &v67, 0);
      std::optional<CLMicroLocationStopMotionDetectionBridge::Element>::operator=[abi:ne200100]<CLMicroLocationStopMotionDetectionBridge::Element,void>(v57, buf);

      if (BYTE4(v87) == 1 && SBYTE3(v87) < 0)
      {
        operator delete(*&buf[16]);
      }

      if (v70 == 1 && v69 < 0)
      {
        operator delete(v68);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v54 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289794;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = 1;
        v84 = 2050;
        v85 = v46;
        v86 = 2050;
        v87 = v45;
        _os_log_impl(&dword_258FE9000, v54, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLMicroLocationStopMotionDetectionBridge CTOR, wrong configuration, object did not initialize, Stop detection enabled:%{public}hhd, Num Radiuses:%{public}lu, Num Timeouts:%{public}lu}", buf, 0x2Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v55 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289794;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = 1;
        v84 = 2050;
        v85 = v46;
        v86 = 2050;
        v87 = v45;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLMicroLocationStopMotionDetectionBridge CTOR, wrong configuration, object did not initialize", "{msg%{public}.0s:CLMicroLocationStopMotionDetectionBridge CTOR, wrong configuration, object did not initialize, Stop detection enabled:%{public}hhd, Num Radiuses:%{public}lu, Num Timeouts:%{public}lu}", buf, 0x2Cu);
      }
    }

    if (v58.i64[0])
    {
      operator delete(v58.i64[0]);
    }

    if (v59.i64[0])
    {
      operator delete(v59.i64[0]);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationMotionBridge::getFenceRadius();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = 0;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationStopMotionDetectionBridge CTOR, setting is off so object did not initialize, Stop detection enabled:%{public}hhd}", buf, 0x18u);
    }
  }

  return v61;
}

void sub_259136068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, __int128 a11, __int128 a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a17)
  {
    operator delete(a17);
  }

  if (v51)
  {
    operator delete(v51);
  }

  std::optional<CLMicroLocationStopMotionDetectionBridge::Element>::~optional(a10);
  std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::~__hash_table(a19);

  _Unwind_Resume(a1);
}

void sub_2591362A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 152) == 1 && *(v35 - 153) < 0)
  {
    JUMPOUT(0x2591362FCLL);
  }

  JUMPOUT(0x259136300);
}

void ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  [v5 timeIntervalSinceReferenceDate];
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  CLMicroLocationStopMotionDetectionBridge::onMotionMeasurements(v7, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2591363D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationStopMotionDetectionBridge::onMotionMeasurements(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:StopMotionDetectionBridge::onMotionMeasurements, fenceId:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::find<std::string>((a1 + 24), a2);
  v7 = v6;
  if (v6)
  {
    [v6[11] setFence];
    [v7[12] invalidate];
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(v7 + 6)];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3321888768;
    v18[2] = ___ZN40CLMicroLocationStopMotionDetectionBridge20onMotionMeasurementsENSt3__16chrono10time_pointIN2cl6chrono19CFAbsoluteTimeClockENS1_8durationIeNS0_5ratioILl1ELl1EEEEEEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
    v18[3] = &__block_descriptor_64_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
    v18[4] = a1;
    if ((buf[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__p, *buf, *&buf[8]);
    }

    else
    {
      __p = *buf;
    }

    v13 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v12 repeats:MEMORY[0x277CBEC28] block:v18];
    v14 = v7[12];
    v7[12] = v13;

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v9;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:onMotionMeasurements, couldn't find StopMotionDetection element, fenceIdStr:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v11;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "onMotionMeasurements, couldn't find StopMotionDetection element", "{msg%{public}.0s:onMotionMeasurements, couldn't find StopMotionDetection element, fenceIdStr:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  v15 = +[ULEventLog shared];
  if (*(a2 + 23) >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Motion Event Status: Stop Motion Detection Bridge Fence Cross. FenceId: %s", v16];
  [v15 log:v17];
}

void sub_2591367A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  v11 = +[ULEventLog shared];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Motion Event Status: Motion Bridge Geofence Error code: %u", objc_msgSend(v7, "code")];
  [v11 log:v12];

  [v8 timeIntervalSinceReferenceDate];
  std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
  CLMicroLocationStopMotionDetectionBridge::onMotionMeasurements(v10, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2591368FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationStopMotionDetectionBridge::Config::toStr(CLMicroLocationStopMotionDetectionBridge::Config *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 40) == 1)
  {
    if (*(this + 39) < 0)
    {
      v12 = *(this + 2);
      v13 = *(this + 3);

      std::string::__init_copy_ctor_external(a2, v12, v13);
    }

    else
    {
      *a2 = *(this + 16);
    }

    return;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v4 = v16;
  *(&v16 + *(v16 - 24) + 8) = *(&v16 + *(v16 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v18[0].__locale_ + *(v4 - 24)) = 2;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "MiLoStopMotionDetectionFence:radius:", 36);
  v6 = MEMORY[0x259CA1D90](v5, *this);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "m:timeout:", 10);
  v8 = MEMORY[0x259CA1D90](v7, *(this + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "sec", 3);
  if ((v23 & 0x10) != 0)
  {
    v10 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v10 = v19;
    }

    locale = v18[4].__locale_;
    goto LABEL_14;
  }

  if ((v23 & 8) != 0)
  {
    locale = v18[1].__locale_;
    v10 = v18[3].__locale_;
LABEL_14:
    v9 = v10 - locale;
    if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    *(&a2->__r_.__value_.__s + 23) = v9;
    if (v9)
    {
      memmove(a2, locale, v9);
    }

    goto LABEL_20;
  }

  v9 = 0;
  *(&a2->__r_.__value_.__s + 23) = 0;
LABEL_20:
  a2->__r_.__value_.__s.__data_[v9] = 0;
  v15[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v14;
  v17 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](&v24);
}

void sub_259136C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x259CA1EE0](v3 + 128);
  _Unwind_Resume(a1);
}

uint64_t std::optional<CLMicroLocationStopMotionDetectionBridge::Element>::operator=[abi:ne200100]<CLMicroLocationStopMotionDetectionBridge::Element,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  *a1 = *a2;
  if (v4 == 1)
  {
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 16, (a2 + 16));
    v5 = *(a2 + 48);
    *(a2 + 48) = 0;
    v6 = *(a1 + 48);
    *(a1 + 48) = v5;

    v7 = *(a2 + 56);
    *(a2 + 56) = 0;
    v8 = *(a1 + 56);
    *(a1 + 56) = v7;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
    if (*(a2 + 40) == 1)
    {
      v9 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v9;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a1 + 40) = 1;
    }

    v10 = *(a2 + 48);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 48) = v10;
    *(a1 + 64) = 1;
  }

  return a1;
}

void CLMicroLocationStopMotionDetectionBridge::~CLMicroLocationStopMotionDetectionBridge(CLMicroLocationStopMotionDetectionBridge *this)
{
  *this = &unk_286A5B848;
  for (i = *(this + 5); i; i = *i)
  {
    v3 = i[11];
    i[11] = 0;

    [i[12] invalidate];
    v4 = i[12];
    i[12] = 0;
  }

  if (*(this + 128))
  {
    [*(this + 15) invalidate];
    v5 = *(this + 15);
    *(this + 15) = 0;
  }

  if (*(this + 128) == 1)
  {

    if (*(this + 104) == 1 && *(this + 103) < 0)
    {
      operator delete(*(this + 10));
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::~__hash_table(this + 24);
}

{
  CLMicroLocationStopMotionDetectionBridge::~CLMicroLocationStopMotionDetectionBridge(this);

  JUMPOUT(0x259CA1F90);
}

id *CLMicroLocationStopMotionDetectionBridge::setToIdle(id *this, __n128 a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 16) == 1)
  {
    v2 = this;
    v3 = this[5];
    if (v3)
    {
      a2.n128_u64[0] = 68289282;
      v8 = a2;
      do
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
        }

        v4 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v5 = (v3 + 16);
          if (v3[39] < 0)
          {
            v5 = v5->__r_.__value_.__r.__words[0];
          }

          *buf = v8.n128_u32[0];
          v11 = 0;
          v12 = 2082;
          v13 = "";
          v14 = 2082;
          v15 = v5;
          _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting stopDetection element to Idle (clear fence and timer), Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        [*(v3 + 11) clearFence];
        this = [*(v3 + 12) invalidate];
        v3 = *v3;
      }

      while (v3);
    }

    if (v2[16])
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        CLMicroLocationStopMotionDetectionBridge::Config::toStr((v2 + 8), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289282;
        v11 = 0;
        v12 = 2082;
        v13 = "";
        v14 = 2082;
        v15 = p_p;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting stopDetection ongoing timer to Idle (clear fence), Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      this = [v2[15] invalidate];
    }

    *(v2 + 16) = 0;
  }

  return this;
}

void CLMicroLocationStopMotionDetectionBridge::startStopDetection(CLMicroLocationStopMotionDetectionBridge *this, __n128 a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *(this + 16) = 1;
  v3 = *(this + 5);
  if (v3)
  {
    a2.n128_u64[0] = 68289282;
    v11 = a2;
    v4 = MEMORY[0x277CBEC28];
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v5 = v3 + 2;
      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v3 + 2;
        if (*(v3 + 39) < 0)
        {
          v7 = *v5;
        }

        *buf = v11.n128_u32[0];
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v7;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:starting stopDetection in element (set fence and timer), Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      if (*(v3 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(buf, v3[2], v3[3]);
      }

      else
      {
        *buf = *v5;
        *&buf[16] = v3[4];
      }

      [v3[11] setFence];
      [v3[12] invalidate];
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(v3 + 6)];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3321888768;
      v14 = ___ZN40CLMicroLocationStopMotionDetectionBridge18startStopDetectionEv_block_invoke;
      v15 = &__block_descriptor_64_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
      v16 = this;
      if ((buf[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p, *buf, *&buf[8]);
      }

      else
      {
        __p = *buf;
      }

      v9 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v8 repeats:v4 block:&v12];
      v10 = v3[12];
      v3[12] = v9;

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v3 = *v3;
    }

    while (v3);
  }

  CLMicroLocationStopMotionDetectionBridge::setOngoingTimer(this);
}

void sub_259137304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN40CLMicroLocationStopMotionDetectionBridge18startStopDetectionEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = cl::chrono::CFAbsoluteTimeClock::now();

  return CLMicroLocationStopMotionDetectionBridge::onTimerTimeout(v2, (a1 + 40), v3);
}

uint64_t CLMicroLocationStopMotionDetectionBridge::onTimerTimeout(void **a1, uint64_t *a2, double a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:StopMotionDetectionBridge::onTimerTimeout, fenceIdStr:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  ((*a1)[2])(a1);
  v8 = +[ULEventLog shared];
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Motion Event Status: Stop Motion Detection Bridge Timeout. FenceId: %s", v9];
  [v8 log:v10];

  return (*(*a1[1] + 16))(a1[1], a3);
}

void __copy_helper_block_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void CLMicroLocationStopMotionDetectionBridge::setOngoingTimer(id *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 128) == 1)
  {
    CLMicroLocationStopMotionDetectionBridge::Config::toStr((this + 8), &__p);
    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = p_p;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting ongoing timer, Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    [this[15] invalidate];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 9)];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN40CLMicroLocationStopMotionDetectionBridge15setOngoingTimerEv_block_invoke;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = this;
    v5 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v4 repeats:MEMORY[0x277CBEC28] block:v7];
    v6 = this[15];
    this[15] = v5;

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_25913774C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *CLMicroLocationStopMotionDetectionBridge::startMotionSession(void *this, __n128 a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = this[5];
  if (v2)
  {
    a2.n128_u64[0] = 68289282;
    v5 = a2;
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v3 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v2 + 2;
        if (*(v2 + 39) < 0)
        {
          v4 = *v4;
        }

        *buf = v5.n128_u32[0];
        v7 = 0;
        v8 = 2082;
        v9 = "";
        v10 = 2082;
        v11 = v4;
        _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:starting session for stopDetection element, Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      this = [v2[11] startSession];
      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

void *CLMicroLocationStopMotionDetectionBridge::stopMotionSession(void *this, __n128 a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = this[5];
  if (v2)
  {
    a2.n128_u64[0] = 68289282;
    v5 = a2;
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v3 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v2 + 2;
        if (*(v2 + 39) < 0)
        {
          v4 = *v4;
        }

        *buf = v5.n128_u32[0];
        v7 = 0;
        v8 = 2082;
        v9 = "";
        v10 = 2082;
        v11 = v4;
        _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stopping session for stopDetection element, Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      this = [v2[11] endSession];
      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

void ___ZN40CLMicroLocationStopMotionDetectionBridge15setOngoingTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = cl::chrono::CFAbsoluteTimeClock::now();

  CLMicroLocationStopMotionDetectionBridge::ongoingTimerTimeout(v1, v2);
}

void CLMicroLocationStopMotionDetectionBridge::ongoingTimerTimeout(uint64_t a1, double a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:StopMotionDetectionBridge::ongoingTimerTimeout}", v6, 0x12u);
  }

  v5 = +[ULEventLog shared];
  [v5 log:@"Motion Event Status: Stop Motion Detection Bridge Ongoing Timer Timeout"];

  (*(**(a1 + 8) + 24))(*(a1 + 8), a2);
  CLMicroLocationStopMotionDetectionBridge::setOngoingTimer(a1);
}

uint64_t ___ZN40CLMicroLocationStopMotionDetectionBridge20onMotionMeasurementsENSt3__16chrono10time_pointIN2cl6chrono19CFAbsoluteTimeClockENS1_8durationIeNS0_5ratioILl1ELl1EEEEEEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = cl::chrono::CFAbsoluteTimeClock::now();

  return CLMicroLocationStopMotionDetectionBridge::onTimerTimeout(v2, (a1 + 40), v3);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_102()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_259137DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_259137F14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationStopMotionDetectionBridge::Element::Element(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = a3;
  *a1 = *a2;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 16), a2 + 1);
  *(a1 + 48) = v5;
  *(a1 + 56) = 0;
  return a1;
}

void CLMicroLocationStopMotionDetectionBridge::Element::~Element(id *this)
{
  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t std::optional<CLMicroLocationStopMotionDetectionBridge::Element>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {

    if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,CLMicroLocationStopMotionDetectionBridge::Element>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,CLMicroLocationStopMotionDetectionBridge::Element>::~pair(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<CLMicroLocationStopMotionDetectionBridge::Config &,ULCMPDRFenceProvider * {__strong}&>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<CLMicroLocationStopMotionDetectionBridge::Config &,ULCMPDRFenceProvider * {__strong}&>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_259138378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_259138440(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

std::string *std::pair<std::string const,CLMicroLocationStopMotionDetectionBridge::Element>::pair[abi:ne200100]<std::string const&,CLMicroLocationStopMotionDetectionBridge::Config &,ULCMPDRFenceProvider * {__strong}&,0ul,0ul,1ul>(std::string *this, __int128 **a2, __int128 **a3)
{
  v5 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    this->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  v7 = *a3;
  v9 = **a3;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v7 + 1);
  CLMicroLocationStopMotionDetectionBridge::Element::Element(&this[1], &v9, *a3[1]);
  if (v11 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_259138A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {

    if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
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

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_103()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

std::string *std::optional<ULOdometryDO>::optional[abi:ne200100]<ULOdometryDO const&,0>(std::string *this, __int128 *a2)
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

  v5 = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  this[2].__r_.__value_.__r.__words[0] = v6;
  this[2].__r_.__value_.__l.__size_ = v7;
  this[2].__r_.__value_.__s.__data_[16] = 1;
  return this;
}

void sub_259139FB4(_Unwind_Exception *a1)
{
  v7 = v2;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_104()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULUWBBridge::ULUWBBridge(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = &unk_286A5B968;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  v6 = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  *(a1 + 72) = ULSettings::get<ULSettings::UwbReactivationDelay>();
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 92) = 0;
  v7 = [[IUwbSessionDelegate alloc] initWithUWBBridge:a1];
  v8 = *(a1 + 56);
  *(a1 + 56) = v7;

  return a1;
}

void sub_25913AC88(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v3, *(v1 + 24));

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::UwbReactivationDelay>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUwbReactivationDelay"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A72E30 intValue];
  }

  v5 = v4;

  return v5;
}

void ULUWBBridge::addTechnologyProfile(id *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  LODWORD(v7) = *a2;
  v4 = *a2;
  HIDWORD(v7) = *a2;
  *v8 = HIDWORD(v4);
  std::__tree<std::__value_type<int,ULUwbTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULUwbTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULUwbTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULUwbTechnologyProfile>>((a1 + 2), &v7, &v7);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULUWBBridge::addTechnologyProfile();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7 = 68289538;
    *v8 = 2082;
    *&v8[2] = "";
    v9 = 2082;
    v10 = "addTechnologyProfile";
    v11 = 1026;
    v12 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULUWBBridge: Add UWB Profile, method:%{public, location:escape_only}s, index:%{public}d}", &v7, 0x22u);
  }

  if (!a1[1])
  {
    ULUWBBridge::startBackgroundSession(a1);
  }
}

void ULUWBBridge::startBackgroundSession(id *this)
{
  ULUWBBridge::invalidateRangingSession(this);
  ULUWBBridge::createRangeSession(this);
  *(this + 92) = 0;
  v2 = objc_alloc_init(MEMORY[0x277CD8A48]);
  [v2 setMinimumPreferredUpdatedRate:0];
  [this[1] runWithConfiguration:v2];
}

void ULUWBBridge::removeTechnologyProfile(ULUWBBridge *this, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (*(this + 22) == a2)
  {
    (*(*this + 24))(this);
  }

  if (std::__tree<std::__value_type<int,ULUwbTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULUwbTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULUwbTechnologyProfile>>>::__erase_unique<int>(this + 2, &v4))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULUWBBridge::addTechnologyProfile();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "removeTechnologyProfile";
      v11 = 1026;
      v12 = v4;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULUWBBridge: UWB profile Removed, method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
    }
  }
}

uint64_t ULUWBBridge::initiateScanRequestByIndex(ULUWBBridge *this, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(this + 3);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = this + 24;
  do
  {
    if (*(v3 + 7) >= a2)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 7) < a2)];
  }

  while (v3);
  if (v4 == this + 24 || *(v4 + 7) > a2)
  {
LABEL_8:
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "ULUWBBridge: UWB profile with index: %@ doesn't exist.", &v13, 0xCu);
    }

    return 0;
  }

  v9 = v4[36];
  if (v9 != 1)
  {
    if (!v9)
    {
      if (!*(this + 16))
      {
        *(this + 16) = 1;
      }

      *(this + 22) = a2;
      ULUWBBridge::startBackgroundSession(this);
    }

    return 1;
  }

  if (*(this + 1))
  {
    v10 = *(this + 16);
    if (v10 == 1)
    {
      *(this + 22) = a2;
      v7 = 1;
      ULUWBBridge::startForegroundSession(this, 1u);
      return v7;
    }

    if (v10)
    {
      return 1;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v11 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(v13) = 0;
    v12 = "ULUWBBridge: Attempting uwb scan while scan in progress, returning";
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v11 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(v13) = 0;
    v12 = "ULUWBBridge: Tried to set high ranging rate without an active ranging session!";
  }

  _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, v12, &v13, 2u);
  return 0;
}

void ULUWBBridge::startForegroundSession(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CD8A48]);
  v5 = v4;
  if (a2 >= 4)
  {
    ULUWBBridge::startForegroundSession(buf);

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Sensors/UWB/ULUWBBridge.mm", 426, "convertULUWBRangeUpdateRateToNINearbyObjectUpdateRate");
    __break(1u);
  }

  [v4 setMinimumPreferredUpdatedRate:a2];
  [*(a1 + 8) runWithConfiguration:v5];
  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = a2;
    v13 = 2050;
    v14 = v6;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULUWBBridge: set high ranging rate, rate:%{public}d, now:%{public}.3f}", buf, 0x22u);
  }

  *(a1 + 64) = 0;
}

void ULUWBBridge::stopScan(ULUWBBridge *this)
{
  if (*(this + 1))
  {
    if (!*(this + 16))
    {
      *(this + 16) = 1;
    }

    ULUWBBridge::stopBackgroundSession(this);
    *(this + 22) = -1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "ULUWBBridge: tried to stop session without an active ranging session!", v3, 2u);
    }
  }
}

ULUWBBridge *ULUWBBridge::stopBackgroundSession(ULUWBBridge *this)
{
  if ((*(this + 92) & 1) == 0)
  {
    v1 = this;
    *(this + 92) = 1;
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "ULUWBBridge: stopRanging: stopping a ranging session", v3, 2u);
    }

    ULUWBBridge::invalidateRangingSession(v1);
    return (*(**(v1 + 6) + 24))(*(v1 + 6));
  }

  return this;
}

uint64_t ULUWBBridge::isNearbyObjectUwbRangingSupportedOnDevice(ULUWBBridge *this)
{
  v1 = [MEMORY[0x277CD8A68] deviceCapabilities];
  v2 = [v1 supportsPreciseDistanceMeasurement];

  return v2;
}

void ULUWBBridge::invalidateRangingSession(id *this)
{
  if (this[1])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "ULUWBBridge: invalidateRangingSession: invalidating a ranging session", v4, 2u);
    }

    [this[1] invalidate];
    v3 = this[1];
    this[1] = 0;
  }
}

uint64_t ULUWBBridge::createRangeSession(id *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "ULUWBBridge: createRangeSession: creating a ranging session", v6, 2u);
  }

  v3 = [MEMORY[0x277CD8A68] observerSession];
  v4 = this[1];
  this[1] = v3;

  (*(*this[6] + 16))(this[6]);
  [this[1] setDelegate:this[7]];
  return [this[1] setDelegateQueue:this[5]];
}

void ULUWBBridge::reactivate(ULUWBBridge *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(this + 68) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = ULSettings::get<ULSettings::UwbReactivationDelay>();
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "ULUWBBridge: reactivate: start ranging session in %.3dsec", buf, 8u);
    }

    *(this + 68) = 1;
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:1000000000 * *(this + 18)];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN11ULUWBBridge10reactivateEv_block_invoke;
    v14[3] = &__block_descriptor_40_e5_v8__0l;
    v14[4] = this;
    v4 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v3 repeats:MEMORY[0x277CBEC28] block:v14];
    v5 = *(this + 10);
    *(this + 10) = v4;

    (*(**(this + 6) + 32))(*(this + 6));
    v6 = *(this + 18);
    v7 = +[ULDefaultsSingleton shared];
    v8 = [v7 defaultsDictionary];

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUwbMaxSessionReactivationDelay"];
    v10 = [v8 objectForKey:v9];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = [v10 intValue];
    }

    else
    {
      v11 = [&unk_286A72000 intValue];
    }

    v12 = v11;

    v13 = 2 * v6;
    if (v12 < 2 * v6)
    {
      v13 = v12;
    }

    *(this + 18) = v13;
  }
}

void ___ZN11ULUWBBridge10reactivateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ULUWBBridge::startBackgroundSession(v1);
  *(v1 + 68) = 0;
}

void ULUWBBridge::onHomeNearbyObjects(uint64_t a1, __int128 **a2)
{
  v50 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 40));
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
LABEL_53:
    (*(**(a1 + 48) + 48))(*(a1 + 48), &v31);
    goto LABEL_56;
  }

  while (1)
  {
    v6 = *(v4 + 16);
    v43 = *v4;
    v44 = v6;
    if (*(v4 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, *(v4 + 32), *(v4 + 40));
    }

    else
    {
      v7 = *(v4 + 32);
      v45.__r_.__value_.__r.__words[2] = *(v4 + 48);
      *&v45.__r_.__value_.__l.__data_ = v7;
    }

    v8 = *(v4 + 56);
    *(v46 + 5) = *(v4 + 61);
    v46[0] = v8;
    v36 = v43;
    v37 = v44;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v45;
    }

    *&v39[5] = *(v46 + 5);
    *v39 = v46[0];
    if (BYTE4(v46[1]) == 1)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v47, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v47 = __p;
      }

      size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v47;
      }

      else
      {
        v10 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v47.__r_.__value_.__l.__size_;
      }

      v48.n128_u64[0] = boost::uuids::string_generator::operator()<std::__wrap_iter<char const*>>(&v35, v10, v10 + size);
      v48.n128_u64[1] = v11;
      v49 = 1;
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v47, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v47 = __p;
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = v47.__r_.__value_.__l.__size_;
        operator delete(v47.__r_.__value_.__l.__data_);
        if (v12)
        {
LABEL_26:
          v35 = v36;
          v34 = 2;
          ULUWBMeasurementDO::ULUWBMeasurementDO(&v47, &v35, &v48, &v34, *(&v36 + 2));
          ULUWBMeasurementDO::ULUWBMeasurementDO(&v40, &v47);
          v13 = 1;
          v42 = 1;
          goto LABEL_32;
        }
      }

      else if (*(&v47.__r_.__value_.__s + 23))
      {
        goto LABEL_26;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULUWBBridge::addTechnologyProfile();
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v47.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "Invalid UwbRange IDS UUID", &v47, 2u);
      }
    }

    v13 = 0;
    LOBYTE(v40) = 0;
    v42 = 0;
LABEL_32:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v13 = v42;
    }

    if ((v13 & 1) == 0)
    {
      break;
    }

    v15 = v32;
    if (v32 >= v33)
    {
      v18 = v31;
      v19 = (v32 - v31) >> 5;
      v20 = v19 + 1;
      if ((v19 + 1) >> 59)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      v21 = v33 - v31;
      if ((v33 - v31) >> 4 > v20)
      {
        v20 = v21 >> 4;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFE0)
      {
        v22 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ULBLEMeasurementDO>>(&v31, v22);
      }

      v23 = (v32 - v31) >> 5;
      v24 = (32 * v19);
      v25 = v41;
      *v24 = v40;
      v24[1] = v25;
      v26 = (32 * v19 - 32 * v23);
      if (v18 != v15)
      {
        v27 = v18;
        v28 = v26;
        do
        {
          v29 = *v27;
          v30 = *(v27 + 1);
          v27 += 32;
          *v28 = v29;
          v28[1] = v30;
          v28 += 2;
        }

        while (v27 != v15);
      }

      v17 = (v24 + 2);
      v31 = v26;
      v32 = (v24 + 2);
      v33 = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      v16 = v41;
      *v32 = v40;
      *(v15 + 1) = v16;
      v17 = v15 + 32;
    }

    v32 = v17;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    v4 += 80;
    if (v4 == v5)
    {
      goto LABEL_53;
    }
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

LABEL_56:
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void ULUWBBridge::updateNearbyObjects(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v3)
  {
    v5 = *v44;
    v6 = MEMORY[0x277CD8A20];
    *&v4 = 68289026;
    v39 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v44 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v43 + 1) + 8 * v7);
        v9 = [v8 relationship];
        [v8 distance];
        if (v10 != *v6 && (v9 & 2) != 0)
        {
          v13 = [v8 deviceIdentifer];
          v14 = v13 == 0;

          if (!v14)
          {
            v15 = cl::chrono::CFAbsoluteTimeClock::now();
            [v8 distance];
            v17 = v16;
            [v8 direction];
            v41 = v18;
            v19 = [v8 deviceIdentifer];
            v20 = v19;
            std::string::basic_string[abi:ne200100]<0>(&__p, [v19 UTF8String]);
            [v8 azimuth];
            v22 = v21;
            [v8 elevation];
            v24 = v23;
            v25 = [v8 distanceMeasurementQuality];
            if (v25 >= 4)
            {
              v26 = 0;
            }

            else
            {
              v26 = v25;
            }

            *buf = v15;
            *&buf[8] = v17;
            *&buf[16] = v41;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v51, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
              v52[0] = 2;
              *&v52[4] = v22;
              *&v52[8] = v24;
              v52[12] = v26;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v51 = __p;
              v52[0] = 2;
              *&v52[4] = v22;
              *&v52[8] = v24;
              v52[12] = v26;
            }

            v34 = v48;
            if (v48 >= v49)
            {
              v38 = std::vector<ULNearbyObjectBuilder>::__emplace_back_slow_path<ULNearbyObjectBuilder>(&v47, buf);
            }

            else
            {
              v35 = *&buf[16];
              *v48 = *buf;
              v34[1] = v35;
              v36 = *&v51.__r_.__value_.__l.__data_;
              *(v34 + 6) = *(&v51.__r_.__value_.__l + 2);
              v34[2] = v36;
              memset(&v51, 0, sizeof(v51));
              v37 = *&v52[5];
              *(v34 + 7) = *v52;
              *(v34 + 61) = v37;
              v38 = (v34 + 5);
            }

            v48 = v38;
            ULUWBBridge::onHomeNearbyObjects(a1, &v47);
            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            goto LABEL_36;
          }

LABEL_22:
          v27 = [v8 deviceIdentifer];
          v28 = v27 == 0;

          if (v28)
          {
            CLMicroLocationErrorHandling::reportError(@"IUwbSessionDelegate:, known device but deviceIdentifier is nil", v29);
          }

          else
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              ULUWBBridge::addTechnologyProfile();
            }

            v30 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v31 = [v8 deviceIdentifer];
              v32 = v31;
              v33 = [v31 UTF8String];
              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2082;
              *&buf[20] = v33;
              _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:NI, known device's distance is not available, deviceIdentifer:%{public, location:escape_only}s}", buf, 0x1Cu);
            }
          }

          goto LABEL_36;
        }

        if ((v9 & 2) != 0)
        {
          goto LABEL_22;
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULUWBBridge::addTechnologyProfile();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
        {
          *buf = v39;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:IUwbSessionDelegate: unknwon device, ignore}", buf, 0x12u);
        }

LABEL_36:
        ++v7;
      }

      while (v3 != v7);
      v3 = [v2 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v3);
  }

  *buf = &v47;
  std::vector<ULNearbyObjectBuilder>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_25913C3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  a36 = &a33;
  std::vector<ULNearbyObjectBuilder>::__destroy_vector::operator()[abi:ne200100](&a36);

  _Unwind_Resume(a1);
}

void ULUWBBridge::removeNearbyObjects(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v8 = *v21;
    *&v7 = 134349570;
    v17 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        if (onceToken_MicroLocation_Default != -1)
        {
          ULUWBBridge::addTechnologyProfile();
        }

        v11 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = a4;
          if (*(a4 + 23) < 0)
          {
            v12 = *a4;
          }

          v13 = [v10 discoveryToken];
          v14 = [v13 description];
          v15 = v14;
          v16 = [v14 UTF8String];
          *buf = v17;
          v25 = v18;
          v26 = 2082;
          v27 = v12;
          v28 = 2082;
          v29 = v16;
          _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "@IUwbSessionDelegate: Session %{public}p did remove nearby object with reason: '%{public}s'. %{public}s", buf, 0x20u);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v6);
  }
}

void ULUWBBridge::sessionWasSuspended(ULUWBBridge *this, NISession *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134349056;
    v6 = v3;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "IUwbSessionDelegate: Session %{public}p was suspended.", &v5, 0xCu);
  }

  (*(**(this + 6) + 32))(*(this + 6));
}

void ULUWBBridge::sessionSuspensionEnded(ULUWBBridge *this, NISession *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134349056;
    v6 = v3;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "IUwbSessionDelegate: Session %{public}p suspension ended. Restarting...", &v5, 0xCu);
  }

  (*(**(this + 6) + 40))(*(this + 6));
}

void ULUWBBridge::invalidateSessionWithError(ULUWBBridge *this, NISession *a2, NSError *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(this + 1) == v5)
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"Uwb range session invalidated error:", v6];
      CLMicroLocationErrorHandling::reportError(v8, v9);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        _CLLogObjectForCategory_MicroLocation_Default();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [0 debugDescription];
        v12 = [v11 UTF8String];
        v13 = *(this + 18);
        *buf = 134349570;
        v15 = v5;
        v16 = 2080;
        v17 = v12;
        v18 = 1024;
        v19 = v13;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "IUwbSessionDelegate: Error: session %{public}p invalidated with error: %s next reactivation try in %dsec", buf, 0x1Cu);
      }
    }

    ULUWBBridge::invalidateRangingSession(this);
    ULUWBBridge::reactivate(this);
  }
}

void ULUWBBridge::sessionFailWithError(ULUWBBridge *this, NSError *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSError *)v2 description];
    v5 = 136446210;
    v6 = [v4 UTF8String];
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "IUwbSessionDelegate: failed (non-fatal): %{public}s.", &v5, 0xCu);
  }
}

void ULUWBBridge::sessionDiscoverNearbyObject(ULUWBBridge *this, NINearbyObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(NINearbyObject *)v2 description];
    v5 = 136446210;
    v6 = [v4 UTF8String];
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEBUG, "IUwbSessionDelegate: discovered object: %{public}s", &v5, 0xCu);
  }
}

void ULUWBBridge::sessionStartRunning(ULUWBBridge *this, NISession *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134349056;
    v6 = v3;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "NI, Session %{public}p Start Running", &v5, 0xCu);
  }

  *(this + 18) = ULSettings::get<ULSettings::UwbReactivationDelay>();
}

void sub_25913CF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULUWBBridge::~ULUWBBridge(id *this)
{
  ULUWBBridge::~ULUWBBridge(this);

  JUMPOUT(0x259CA1F90);
}

{
  *this = &unk_286A5B968;

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((this + 2), this[3]);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_105()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULNearbyObjectBuilder>::__emplace_back_slow_path<ULNearbyObjectBuilder>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULNearbyObjectBuilder>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v10 = *(a2 + 56);
  *(v7 + 61) = *(a2 + 61);
  *(v7 + 56) = v10;
  *&v19 = 80 * v2 + 80;
  v11 = a1[1];
  v12 = 80 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ULNearbyObjectBuilder>::~__split_buffer(&v17);
  return v16;
}

void sub_25913D3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULNearbyObjectBuilder>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULNearbyObjectBuilder>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      v9 = *(v6 + 56);
      *(a4 + 61) = *(v6 + 61);
      *(a4 + 56) = v9;
      v6 += 80;
      a4 += 80;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 25) < 0)
    {
      operator delete(*(v1 - 48));
    }

    v1 -= 80;
  }
}

uint64_t std::__split_buffer<ULNearbyObjectBuilder>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULNearbyObjectBuilder>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULNearbyObjectBuilder>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 80;
      *(a1 + 16) = v2 - 80;
      if (*(v2 - 25) < 0)
      {
        operator delete(*(v2 - 48));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<ULNearbyObjectBuilder>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULNearbyObjectBuilder>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ULNearbyObjectBuilder>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  a1[1] = v2;
}

uint64_t *std::__tree<std::__value_type<int,ULUwbTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULUwbTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULUwbTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULUwbTechnologyProfile>>(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<int,ULUwbTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULUwbTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULUwbTechnologyProfile>>>::__erase_unique<int>(uint64_t **a1, int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    if (*(v2 + 7) >= v3)
    {
      v4 = v2;
    }

    v2 = v2[*(v2 + 7) < v3];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < *(v4 + 7))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(ULHomeNearbyRangingSupport *this)
{
  v1 = +[CLMicroLocationEnvironment shared];
  v2 = [v1 isTestingEnvironment];

  if (v2)
  {
    v4 = +[ULDefaultsSingleton shared];
    v5 = [v4 defaultsDictionary];

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingUwbRangeEnable"];
    v7 = [v5 objectForKey:v6];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 BOOLValue];
    }

    else
    {
      v8 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v10 = v8;

    return v10;
  }

  else
  {

    return ULUWBBridge::isNearbyObjectUwbRangingSupportedOnDevice(v3);
  }
}

ULWiFiAssociationBridge *ULWiFiAssociationBridge::ULWiFiAssociationBridge(ULWiFiAssociationBridge *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = &unk_286A5B9F8;
  *(a1 + 1) = 0;
  v6 = v5;
  *(a1 + 2) = v6;
  *(a1 + 3) = a3;
  ULWiFiAssociationBridge::createAndStartWifiInterface(a1);

  return a1;
}

void ULWiFiAssociationBridge::createAndStartWifiInterface(ULWiFiAssociationBridge *this)
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(this + 2));
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiAssociationBridge::createAndStartWifiInterface();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v15[0] = 0;
    LOWORD(v15[1]) = 2082;
    *(&v15[1] + 2) = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#wifi-assoc-bridge, Creating WiFi interface}", buf, 0x12u);
  }

  v3 = objc_opt_new();
  v4 = *(this + 1);
  *(this + 1) = v3;

  objc_initWeak(&location, *(this + 1));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke;
  v11[3] = &unk_2798D4F88;
  v12[1] = this;
  objc_copyWeak(v12, &location);
  [*(this + 1) setInvalidationHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_3;
  v9[3] = &unk_2798D4FB0;
  v10[1] = this;
  objc_copyWeak(v10, &location);
  [*(this + 1) setEventHandler:v9];
  [*(this + 1) activate];
  [*(this + 1) startMonitoringEventType:3 error:0];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiAssociationBridge::createAndStartWifiInterface();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(this + 1) interfaceName];
    *buf = 138412290;
    *v15 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#wifi-assoc-bridge, WiFi assoc. interface activated, name:%@", buf, 0xCu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiAssociationBridge::createAndStartWifiInterface();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(this + 1), "powerOn")}];
    *buf = 138412290;
    *v15 = v8;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "#wifi-assoc-bridge, Is WiFi On, :%@", buf, 0xCu);
  }

  objc_destroyWeak(v10);
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void sub_25913DD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ULWiFiAssociationBridge::~ULWiFiAssociationBridge(id *this)
{
  *this = &unk_286A5B9F8;
  [this[1] invalidate];
  v2 = this[1];
  this[1] = 0;
}

{
  ULWiFiAssociationBridge::~ULWiFiAssociationBridge(this);

  JUMPOUT(0x259CA1F90);
}

void ULWiFiAssociationBridge::fetchAssociatedAccessPointInfo(ULWiFiAssociationBridge *this@<X0>, uint64_t a2@<X8>)
{
  if (!*(this + 1))
  {
    ULWiFiAssociationBridge::createAndStartWifiInterface(this);
  }

  dispatch_assert_queue_V2(*(this + 2));
  if ([*(this + 1) powerOn])
  {
    v4 = [*(this + 1) BSSID];
    v5 = v4;
    if (v4)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
      v6 = CLMacAddress::newFromCLStr(__p);
      v7 = [*(this + 1) RSSI];
      *a2 = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = 1;
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiAssociationBridge::createAndStartWifiInterface();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "wifi-provider, query association state while wifi is off, returning", __p, 2u);
    }

    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void sub_25913DF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(v1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v1;
    dispatch_async(v3, block);
  }
}

void ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 16));
  [*(v1 + 8) invalidate];
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if ([v3 type] == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = [WeakRetained channel];
      v8 = [v6 BSSID];
      if (onceToken_MicroLocation_Default != -1)
      {
        ULWiFiAssociationBridge::createAndStartWifiInterface();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 timestamp];
        *buf = 138412546;
        v20 = v10;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "Got WiFi CWFEventTypeBSSIDChanged event, eventTS %@ BSSID %@", buf, 0x16u);
      }

      v11 = *(v4 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_2;
      block[3] = &unk_2798D4188;
      v17 = v7;
      v18 = v4;
      v16 = v8;
      v12 = v7;
      v13 = v8;
      dispatch_async(v11, block);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiAssociationBridge::createAndStartWifiInterface();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v3;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "#wifi-assoc-bridge, Unexpected CWFEvent: %@", buf, 0xCu);
    }
  }
}

void ULWiFiAssociationBridge::onAssociatedStateChange(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v8 = a3;
  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v7)
  {
    v14 = 0;
    v15 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v9 = [v7 UTF8String];
  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v9);
    v10 = CLMacAddress::newFromCLStr(&__p);
    v3 = [*(a1 + 8) RSSI];
    if (v20 < 0)
    {
      operator delete(__p);
    }

    v4 = v10 >> 8;
    v11 = 1;
    v12 = v10;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_9:
    v14 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v11 = 0;
  v12 = 0;
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  v13 = [v8 band];
  v14 = v13 | ([v8 channel] << 32);
  v15 = 1;
LABEL_10:
  v16 = *(a1 + 24);
  __p = (v12 | (v4 << 8));
  v18 = v3;
  v19 = v11;
  (*(*v16 + 16))(v16, v14, v15, &__p);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_106()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULWiFiRssiBridge::ULWiFiRssiBridge(ULWiFiRssiBridge *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  *a1 = &unk_286A5BA68;
  *(a1 + 1) = a3;
  *(a1 + 2) = a4;
  *(a1 + 3) = v7;
  *(a1 + 4) = 0;
  operator new();
}

void sub_25913E564(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy(v4, *(v1 + 64));
  v6 = *(v1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void ULWiFiRssiBridge::createAndStartWifiInterface(ULWiFiRssiBridge *this)
{
  *&v13[5] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(this + 3));
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v13[0] = 0;
    LOWORD(v13[1]) = 2082;
    *(&v13[1] + 2) = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#wifi-bridge, Creating WiFi interface}", buf, 0x12u);
  }

  v3 = objc_opt_new();
  v4 = *(this + 4);
  *(this + 4) = v3;

  objc_initWeak(&location, *(this + 4));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN16ULWiFiRssiBridge27createAndStartWifiInterfaceEv_block_invoke;
  v9[3] = &unk_2798D4F88;
  v10[1] = this;
  objc_copyWeak(v10, &location);
  [*(this + 4) setInvalidationHandler:v9];
  [*(this + 4) activate];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(this + 4) interfaceName];
    *buf = 138412290;
    *v13 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#wifi-bridge, WiFi interface activated, name:%@", buf, 0xCu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(this + 4), "powerOn")}];
    *buf = 138412290;
    *v13 = v8;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "#wifi-bridge, Is WiFi On, :%@", buf, 0xCu);
  }

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void sub_25913E830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ULWiFiRssiBridge::~ULWiFiRssiBridge(id *this)
{
  *this = &unk_286A5BA68;
  [this[4] invalidate];
  v2 = this[4];
  this[4] = 0;

  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy((this + 7), this[8]);
  this[8] = 0;
  this[9] = 0;
  this[7] = this + 8;
  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy((this + 7), 0);
  v3 = this[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  ULWiFiRssiBridge::~ULWiFiRssiBridge(this);

  JUMPOUT(0x259CA1F90);
}

void ULWiFiRssiBridge::addTechnologyProfile(uint64_t a1, int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v6[0] = *a2;
  *v7 = *a2;
  *&v7[11] = *(a2 + 11);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<ULWiFiScanChannel>::__init_with_size[abi:ne200100]<ULWiFiScanChannel*,ULWiFiScanChannel*>(&__p, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULWiFiTechnologyProfile>>(a1 + 56, v6, v6);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6[0] = 68289538;
    v6[1] = 0;
    *v7 = 2082;
    *&v7[2] = "";
    *&v7[10] = 2082;
    *&v7[12] = "addTechnologyProfile";
    *&v7[20] = 1026;
    *&v7[22] = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULWiFiRssiBridge: Add WiFi Profile, method:%{public, location:escape_only}s, index:%{public}d}", v6, 0x22u);
  }
}

void sub_25913EAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ULWiFiRssiBridge::removeTechnologyProfile(ULWiFiRssiBridge *this, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::__erase_unique<int>(this + 56, &v3))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiRssiBridge::createAndStartWifiInterface();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "removeTechnologyProfile";
      v10 = 1026;
      v11 = v3;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULWiFiRssiBridge: WiFi profile Removed, method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
    }
  }
}

void ___ZN16ULWiFiRssiBridge27createAndStartWifiInterfaceEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(v1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN16ULWiFiRssiBridge27createAndStartWifiInterfaceEv_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v1;
    dispatch_async(v3, block);
  }
}

uint64_t ULWiFiRssiBridge::onInterfaceInvalidation(ULWiFiRssiBridge *this)
{
  dispatch_assert_queue_V2(*(this + 3));
  [*(this + 4) invalidate];
  v2 = *(this + 4);
  *(this + 4) = 0;

  v3 = *(**(this + 2) + 16);

  return v3();
}

void ___ZN16ULWiFiRssiBridge12startScannerERK23ULWiFiTechnologyProfile_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v10 = MEMORY[0x277CCABB0];
    [*(a1 + 32) timeIntervalSinceNow];
    v12 = [v10 numberWithDouble:-v11];
    *buf = 138412802;
    v26 = v9;
    v27 = 2112;
    v28 = v5;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "#wifi-bridge, Received Wifi scan results with length:%@ error: %@, time from request to callback:%@[sec]", buf, 0x20u);
  }

  v13 = *(v7 + 24);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3321888768;
  v18[2] = ___ZN16ULWiFiRssiBridge12startScannerERK23ULWiFiTechnologyProfile_block_invoke_4;
  v18[3] = &unk_286A5BAA0;
  v15 = *(a1 + 48);
  v14 = *(a1 + 56);
  v21 = v7;
  v22 = v15;
  v23 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = *(a1 + 64);
  v16 = v5;
  v19 = v16;
  v17 = v6;
  v20 = v17;
  dispatch_async(v13, v18);

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void ___ZN16ULWiFiRssiBridge12startScannerERK23ULWiFiTechnologyProfile_block_invoke_4(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  v2 = a1[7];
  v4 = a1[8];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = v4;
  if (*v2)
  {
    ((*v3)[3])(v3);
    v5 = (*(a1[9] + 16) + *(a1[9] + 8)) * ((*(a1[9] + 40) - *(a1[9] + 32)) >> 3);
    if (a1[4])
    {
      (*(*v3[1] + 16))(v3[1], v5);
    }

    else
    {
      ULWiFiRssiBridge::ulWiFiMeasurementDOFromCWFScanResults(a1[5], &__p);
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v8 = __p;
      v9 = v25;
      if (__p != v25)
      {
        v10 = 1;
        do
        {
          v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
          [v7 appendFormat:@"\nMeas number: %@", v11];

          [v7 appendFormat:@", Timestamp in seconds: %Lf", v8->var0];
          [v7 appendFormat:@", RSSI: %d", LODWORD(v8[1].var0)];
          v12 = MEMORY[0x277CCACA8];
          v13 = v8 + 2;
          CLMacAddress::str(buf, v8 + 2);
          if (v27 >= 0)
          {
            v14 = buf;
          }

          else
          {
            v14 = *buf;
          }

          v15 = [v12 stringWithUTF8String:v14];
          [v7 appendFormat:@", source BSSID: %@", v15];

          if (v27 < 0)
          {
            operator delete(*buf);
          }

          v16 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(v8[3].var0)];
          [v7 appendFormat:@", channel: %@", v16];

          v17 = "CHANNEL_BAND_NONE";
          if (BYTE2(v8[3].var0) - 1 <= 2)
          {
            v17 = off_2798D4FD0[(BYTE2(v8[3].var0) - 1)];
          }

          v18 = MEMORY[0x277CCACA8];
          std::string::basic_string[abi:ne200100]<0>(buf, v17);
          if (v27 >= 0)
          {
            v19 = buf;
          }

          else
          {
            v19 = *buf;
          }

          v20 = [v18 stringWithUTF8String:v19];
          [v7 appendFormat:@", band: %@", v20];

          if (v27 < 0)
          {
            operator delete(*buf);
          }

          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v8[3].var0)];
          [v7 appendFormat:@", flags: %@", v21];

          ++v10;
          v8 += 4;
        }

        while (&v13[2] != v9);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULWiFiRssiBridge::createAndStartWifiInterface();
      }

      v22 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_INFO, "#wifi-bridge, scan measurements: %@", buf, 0xCu);
      }

      (*(*v3[1] + 24))(v3[1], &__p);
      (*(*v3[1] + 16))(v3[1], 0, v5);

      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiRssiBridge::createAndStartWifiInterface();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "#wifi-bridge, The scan was aborted, the measurements will not be sent to delegate", buf, 2u);
    }
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_25913F35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void ULWiFiRssiBridge::ulWiFiMeasurementDOFromCWFScanResults(void *a1@<X1>, __int128 **a2@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v4)
  {
    v5 = *v55;
    do
    {
      v6 = 0;
      do
      {
        if (*v55 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v54 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CBEAA8] now];
        [v8 timeIntervalSinceReferenceDate];
        v10 = v9;

        v11 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v53 = v10 - v11 / 1000000000.0 + [v7 timestamp] / 1000000000.0;
        v12 = [v7 RSSI];
        v13 = [v7 BSSID];
        LODWORD(v11) = v13 == 0;

        if (v11)
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULWiFiRssiBridge::createAndStartWifiInterface();
          }

          v34 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p[0]) = 0;
            v32 = v34;
            v33 = "Got nil BSSID on wifi scan result";
            goto LABEL_27;
          }
        }

        else
        {
          v14 = [v7 channel];
          if (!v14 || ([v7 channel], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "band") == 0, v15, v14, v16))
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              ULWiFiRssiBridge::createAndStartWifiInterface();
            }

            v31 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
            {
              LOWORD(__p[0]) = 0;
              v32 = v31;
              v33 = "Got invalid channel/band in scan result";
LABEL_27:
              _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_ERROR, v33, __p, 2u);
            }
          }

          else
          {
            v17 = [v7 BSSID];
            v18 = v17;
            std::string::basic_string[abi:ne200100]<0>(__p, [v17 UTF8String]);
            v52 = CLMacAddress::newFromCLStr(__p);
            if (SBYTE7(v51) < 0)
            {
              operator delete(__p[0]);
            }

            v19 = [v7 channel];
            v20 = [v19 channel];

            v21 = [v7 channel];
            v22 = [v21 flags];

            if ([v7 isPersonalHotspot])
            {
              v23 = 0x40000000;
            }

            else
            {
              v23 = 0;
            }

            v24 = [v7 channel];
            v25 = [v24 band];
            if (v25 >= 4)
            {
              v26 = 0;
            }

            else
            {
              v26 = v25;
            }

            v49 = v26;
            ULWiFiMeasurementDO::ULWiFiMeasurementDO(__p, &v53, v12, &v52, v20, &v49, v23 | v22 & 0xBFFFFFFF);

            v28 = a2[1];
            v27 = a2[2];
            if (v28 >= v27)
            {
              v35 = *a2;
              v36 = (v28 - *a2) >> 5;
              v37 = v36 + 1;
              if ((v36 + 1) >> 59)
              {
                std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
              }

              v38 = v27 - v35;
              if (v38 >> 4 > v37)
              {
                v37 = v38 >> 4;
              }

              if (v38 >= 0x7FFFFFFFFFFFFFE0)
              {
                v39 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v39 = v37;
              }

              if (v39)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiMeasurementDO>>(a2, v39);
              }

              v40 = (v28 - *a2) >> 5;
              v41 = (32 * v36);
              v42 = v51;
              *v41 = *__p;
              v41[1] = v42;
              v43 = (32 * v36 - 32 * v40);
              if (v35 != v28)
              {
                v44 = v35;
                v45 = v43;
                do
                {
                  v46 = *v44;
                  v47 = v44[1];
                  v44 += 2;
                  *v45 = v46;
                  v45[1] = v47;
                  v45 += 2;
                }

                while (v44 != v28);
              }

              v30 = v41 + 2;
              *a2 = v43;
              a2[1] = v41 + 2;
              a2[2] = 0;
              if (v35)
              {
                operator delete(v35);
              }
            }

            else
            {
              v29 = v51;
              *v28 = *__p;
              v28[1] = v29;
              v30 = v28 + 2;
            }

            a2[1] = v30;
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v4);
  }
}

void sub_25913F850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_56c27_ZTSNSt3__110shared_ptrIbEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_56c27_ZTSNSt3__110shared_ptrIbEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_48c27_ZTSNSt3__110shared_ptrIbEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c27_ZTSNSt3__110shared_ptrIbEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_107()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5BB68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy(a1, a2[1]);
    v4 = a2[9];
    if (v4)
    {
      a2[10] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULWiFiTechnologyProfile>>(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, a2);
  v4 = a2[9];
  if (v4)
  {
    a2[10] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_108()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t result, uint64_t a2)
{
  *(a2 + 10) = v2;
  *(a2 + 18) = 2081;
  *(a2 + 20) = result;
  return result;
}

void ULModelLoader::loadModelForServiceOrCreateNewIfNecessary(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, ULModelLoader *a5, const CLMicroLocationProto::Model *a6, ULDatabaseStoreInterface *a7)
{
  v147 = *MEMORY[0x277D85DE8];
  *v126.var0.data = a2;
  *&v126.var0.data[8] = a3;
  v118[0] = 0;
  v125 = 0;
  ULService::modelClientIdentifierStringForServiceTypeAndClientId(a1, a4, &v79);
  if (a1 != 4 || a7->var0)
  {
    if (a1 != 4)
    {
      if (a1 == 1)
      {
        v16 = (*(*a5 + 80))(a5);
        v17 = v16;
        v145 = *&a7[1].var0;
        v146 = 1;
        if (v16)
        {
          objc_msgSend_fetchMostRecentModelOfModelType_atLoiGroupId_(v16);
        }

        else
        {
          v144 = 0;
          memset(v143, 0, sizeof(v143));
          memset(__p, 0, sizeof(__p));
          v141 = 0u;
          v140 = 0u;
          v139 = 0u;
          v138 = 0u;
          v137 = 0u;
          v136 = 0u;
          v135 = 0u;
          v134 = 0u;
          v133 = 0u;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v118, buf);
        if (v144 == 1)
        {
          if (LOBYTE(v143[0]) == 1 && SHIBYTE(__p[3]) < 0)
          {
            operator delete(__p[1]);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[2]);
        }

        if (v125 == 1 && (v122 & 1) == 0)
        {
          std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>(&v121, &v79);
          v28 = (*(*a5 + 80))(a5);
          if ((v125 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          ULModelDO::ULModelDO(buf, v118);
          v92[1] = 0;
          v92[0] = 0;
          *&v93 = 0;
          std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(v92, buf, &v144, 1uLL);
          if ((v125 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          LOBYTE(v82[0]) = 0;
          v83 = 0;
          if (v124[0] == 1)
          {
            *v82 = v123;
            v83 = 1;
          }

          *v86 = *&v124[1];
          v87 = 1;
          [v28 insertDataObjects:v92 forServiceUUID:v82 atLoiUUID:v86];
          v82[0] = v92;
          std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](v82);
          if (LOBYTE(v143[0]) == 1 && SHIBYTE(__p[3]) < 0)
          {
            operator delete(__p[1]);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[2]);
        }
      }

      else
      {
        v21 = (*(*a5 + 80))(a5);
        v22 = v21;
        if (v21)
        {
          objc_msgSend_fetchMostRecentModelForServiceUuid_atLoiGroupId_(v21);
        }

        else
        {
          v144 = 0;
          memset(v143, 0, sizeof(v143));
          memset(__p, 0, sizeof(__p));
          v141 = 0u;
          v140 = 0u;
          v139 = 0u;
          v138 = 0u;
          v137 = 0u;
          v136 = 0u;
          v135 = 0u;
          v134 = 0u;
          v133 = 0u;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v118, buf);
        if (v144 == 1)
        {
          if (LOBYTE(v143[0]) == 1 && SHIBYTE(__p[3]) < 0)
          {
            operator delete(__p[1]);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[2]);
        }
      }

LABEL_115:
      v29 = v125;
      goto LABEL_116;
    }
  }

  else
  {
    v11 = +[ULDefaultsSingleton shared];
    v12 = [v11 defaultsDictionary];

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDisableLSLModelFallbackFromInvalidHomeSlamModel"];
    v14 = [v12 objectForKey:v13];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = [MEMORY[0x277CBEC28] BOOLValue];
    }

    v18 = v15;

    if (v18)
    {
      ULModelLoader::loadHomeSlamModel(a5, a7 + 1);
    }
  }

  v19 = (*(*a5 + 80))(a5);
  v20 = v19;
  v116 = *&a7[1].var0;
  v117 = 1;
  if (v19)
  {
    objc_msgSend_fetchMostRecentModelOfModelType_atLoiGroupId_(v19);
  }

  else
  {
    v144 = 0;
    memset(v143, 0, sizeof(v143));
    memset(__p, 0, sizeof(__p));
    v141 = 0u;
    v140 = 0u;
    v139 = 0u;
    v138 = 0u;
    v137 = 0u;
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    memset(buf, 0, sizeof(buf));
  }

  std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v118, buf);
  if (v144 == 1)
  {
    if (LOBYTE(v143[0]) == 1 && SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[2]);
  }

  if ((v125 & 1) == 0)
  {
    v27 = (*(*a5 + 80))(a5);
    v26 = v27;
    if (v27)
    {
      objc_msgSend_fetchMostRecentModelForServiceUuid_atLoiGroupId_(v27);
    }

    else
    {
      v144 = 0;
      memset(v143, 0, sizeof(v143));
      memset(__p, 0, sizeof(__p));
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      v131 = 0u;
      v130 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v118, buf);
    if (v144 == 1)
    {
      if (LOBYTE(v143[0]) == 1 && SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[2]);
    }

    goto LABEL_66;
  }

  if (v120 != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  ULHomeSlamModel::fromProtobuf(v119, v23, buf);
  WorkMode = ULHomeSlamModel::getWorkMode(buf);
  ULHomeSlamModel::~ULHomeSlamModel(buf);
  if (!WorkMode)
  {
    v25 = (*(*a5 + 80))(a5);
    v26 = v25;
    v114 = v126;
    v115 = 1;
    v112 = *&a7[1].var0;
    v113 = 1;
    if (v25)
    {
      objc_msgSend_fetchMostRecentModelOfModelType_ForService_atLoiGroupId_(v25);
    }

    else
    {
      v144 = 0;
      memset(v143, 0, sizeof(v143));
      memset(__p, 0, sizeof(__p));
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      v131 = 0u;
      v130 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v118, buf);
    if (v144 == 1)
    {
      if (LOBYTE(v143[0]) == 1 && SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[2]);
    }

LABEL_66:
  }

  v29 = v125;
  var0 = a7->var0;
  if ((v125 & 1) == 0 && var0 != 2)
  {
    *v90 = *&a7[1].var0;
    v31 = (*(*a5 + 80))(a5);
    v32 = v31;
    v145 = *v90;
    v146 = 1;
    if (v31)
    {
      objc_msgSend_fetchMostRecentModelOfModelType_atLoiGroupId_(v31);
    }

    else
    {
      v111 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      *v108 = 0u;
      v105 = 0u;
      *v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      *v95 = 0u;
      v96 = 0u;
      memset(v94, 0, sizeof(v94));
      *v92 = 0u;
      v93 = 0u;
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "");
    if (LOBYTE(v90[0]))
    {
      goto LABEL_73;
    }

    v35 = 1;
    do
    {
      if (v35 == 16)
      {
        goto LABEL_74;
      }
    }

    while (!*(v90 + v35++));
    if ((v35 - 2) <= 0xE)
    {
LABEL_73:
      operator new();
    }

LABEL_74:
    if (v111 == 1)
    {
      CLMicroLocationClientUtils::getClientIdAndServiceUuid(a4);
    }

    v33 = (*(*a5 + 80))(a5);
    v34 = v33;
    v127 = *v90;
    v128 = 1;
    if (v33)
    {
      objc_msgSend_fetchMostRecentModelOfModelType_atLoiGroupId_(v33);
    }

    else
    {
      v144 = 0;
      memset(v143, 0, sizeof(v143));
      memset(__p, 0, sizeof(__p));
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      v131 = 0u;
      v130 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v92, buf);
    if (v144 == 1)
    {
      if (LOBYTE(v143[0]) == 1 && SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[2]);
    }

    if (v111 == 1)
    {
      CLMicroLocationClientUtils::getClientIdAndServiceUuid(a4);
    }

    if (v84 < 0)
    {
      operator delete(v82[0]);
    }

    std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v118, v92);
    if (v111 == 1)
    {
      if (LOBYTE(v108[0]) == 1 && SHIBYTE(v107) < 0)
      {
        operator delete(v106[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v94);
    }

    var0 = a7->var0;
    v29 = v125;
  }

  if (var0 == 2)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_126;
    }

    if (*&v118[24] == 3)
    {
      goto LABEL_117;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v37 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      if (v125)
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v121, "", v92);
        if (v125)
        {
          operator new();
        }

        std::__throw_bad_optional_access[abi:ne200100]();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v38 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v38))
    {
      if (v125)
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v121, "", v92);
        if (v125)
        {
          operator new();
        }

        std::__throw_bad_optional_access[abi:ne200100]();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](v118);
    goto LABEL_115;
  }

LABEL_116:
  if (v29)
  {
LABEL_117:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v39 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v121, "", v92);
      operator new();
    }

    buf[0] = *v118;
    *(buf + 12) = *&v118[12];
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](&buf[2], v119);
    LOBYTE(__p[1]) = 0;
    LOBYTE(v143[0]) = 0;
    if (v122 == 1)
    {
      *&__p[1] = v121;
      memset(&v121, 0, sizeof(v121));
      LOBYTE(v143[0]) = 1;
    }

    *(v143 + 8) = v123;
    *(&v143[1] + 8) = *v124;
    BYTE8(v143[2]) = v124[16];
    *v86 = buf[0];
    v90[0] = *buf[1].var0.data;
    if (*&buf[1].var0.data[8] == 4)
    {
      if (LODWORD(__p[0]) == 1)
      {
        ULHomeSlamModel::fromProtobuf(&buf[2], v40, v92);
        std::allocate_shared[abi:ne200100]<ULModelAndStates,std::allocator<ULModelAndStates>,boost::uuids::uuid &,ULHomeSlamModel,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,0>();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    if (!LODWORD(__p[0]))
    {
      CLMicroLocationModel::fromProtobuf(v92, &buf[2], a6);
      ULModelLoader::modelDomain(a1, v46, v82, v47);
      std::allocate_shared[abi:ne200100]<ULModelAndStates,std::allocator<ULModelAndStates>,boost::uuids::uuid &,CLMicroLocationModel,std::string,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,0>();
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

LABEL_126:
  CLMicroLocationModel::CLMicroLocationModel(v92);
  if ((a1 - 2) < 2)
  {
    HIDWORD(v92[0]) = 1;
    if (a1 == 3)
    {
      v45 = 3;
    }

    else
    {
      v45 = 4;
    }

LABEL_151:
    LODWORD(v92[0]) = v45;
    CLMicroLocationModel::setQualityIndicator(v92, 1);
    LODWORD(v82[0]) = 3;
    memset(buf, 0, 24);
    std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum const*,CLMicroLocationProto::ServiceQualityReasonEnum const*>(buf, v82, v82 + 1, 1uLL);
    CLMicroLocationModel::setCandidateQualityReasons(v92, buf);
    if (*buf[0].var0.data)
    {
      *&buf[0].var0.data[8] = *buf[0].var0.data;
      operator delete(*buf[0].var0.data);
    }

    v89 = 0;
    v88 = 0;
    *buf[0].var0.data = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(buf);
    v88 = boost::uuids::random_generator_pure::operator()(buf);
    v89 = v52;
    boost::uuids::detail::random_provider_base::destroy(buf);
    v90[1] = 0;
    v90[0] = 0;
    v91 = 0;
    std::vector<ULModelDO>::reserve(v90, 1uLL);
    CLMicroLocationModel::toProtobuf(v86, v92);
    v78 = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v78);
    v53 = boost::uuids::random_generator_pure::operator()(&v78);
    v55 = v54;
    v56 = cl::chrono::CFAbsoluteTimeClock::now();
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v82, v86);
    v85 = 0;
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v76, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
    }

    else
    {
      v76 = v79;
    }

    v77 = 1;
    *v80 = v126;
    v81 = 1;
    v57 = a7[1].var0;
    v58 = a7[2].var0;
    v59 = a7 + 1;
    ULModelDO::ULModelDO(buf, v53, v55, v82, &v76, v80, v57, v58, v56);
    v60 = v90[1];
    if (v90[1] >= v91)
    {
      v61 = std::vector<ULModelDO>::__emplace_back_slow_path<ULModelDO>(v90, buf);
    }

    else
    {
      std::vector<ULModelDO>::__construct_one_at_end[abi:ne200100]<ULModelDO>(v90, buf);
      v61 = v60 + 320;
    }

    v90[1] = v61;
    if (LOBYTE(v143[0]) == 1 && SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[2]);
    if (v77 == 1 && SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v82);
    boost::uuids::detail::random_provider_base::destroy(&v78);
    v62 = (*(*a5 + 80))(a5);
    buf[0] = v126;
    buf[1].var0.data[0] = 1;
    *v82 = *&v59->var0;
    v83 = 1;
    [v62 insertDataObjects:v90 forServiceUUID:buf atLoiUUID:v82];

    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v63 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    v78 = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v78);
    v82[0] = boost::uuids::random_generator_pure::operator()(&v78);
    v82[1] = v64;
    ULModelLoader::modelDomain(a1, v64, buf, v65);
    v80[0] = COERCE_VOID_(cl::chrono::CFAbsoluteTimeClock::now());
    std::allocate_shared[abi:ne200100]<ULModelAndStates,std::allocator<ULModelAndStates>,boost::uuids::uuid,CLMicroLocationModel,std::string,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,0>();
  }

  if (a1 == 4)
  {
    v48 = a7->var0 == 2;
    if (a7->var0 == 2)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    HIDWORD(v92[0]) = v49;
    if (v48)
    {
      v45 = 5;
      goto LABEL_151;
    }

    v50 = ULSettings::get<ULSettings::LearnerAlgorithm>();
    if (v50 != 1)
    {
      if (v50)
      {
        if (onceToken_MicroLocation_Default == -1)
        {
          goto LABEL_147;
        }

        goto LABEL_170;
      }

LABEL_149:
      v45 = 1;
      goto LABEL_151;
    }

    goto LABEL_150;
  }

  if (a1 == 1)
  {
    HIDWORD(v92[0]) = 0;
    v44 = ULSettings::get<ULSettings::LearnerAlgorithm>();
    if (v44 != 1)
    {
      if (v44)
      {
        if (onceToken_MicroLocation_Default == -1)
        {
LABEL_147:
          v51 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            *buf[0].var0.data = 0;
            _os_log_impl(&dword_258FE9000, v51, OS_LOG_TYPE_ERROR, "Get generation algorithm: Unknown learner type", buf[0].var0.data, 2u);
          }

          goto LABEL_149;
        }

LABEL_170:
        ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
        goto LABEL_147;
      }

      goto LABEL_149;
    }

LABEL_150:
    v45 = 2;
    goto LABEL_151;
  }

  v66 = _CLLogObjectForCategory_MicroLocation_Default(v41, v42, v43);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
  {
    *buf[0].var0.data = 68289795;
    *&buf[0].var0.data[4] = 0;
    *&buf[0].var0.data[8] = 2082;
    *&buf[0].var0.data[10] = "";
    *&buf[1].var0.data[2] = 1026;
    *&buf[1].var0.data[4] = a1;
    *&buf[1].var0.data[8] = 2082;
    *&buf[1].var0.data[10] = "assert";
    *&buf[2].var0.data[2] = 2081;
    *&buf[2].var0.data[4] = "false";
    _os_log_impl(&dword_258FE9000, v66, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Service Type unsupported , service type:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf[0].var0.data, 0x2Cu);
  }

  v70 = _CLLogObjectForCategory_MicroLocation_Default(v67, v68, v69);
  if (os_signpost_enabled(v70))
  {
    *buf[0].var0.data = 68289795;
    *&buf[0].var0.data[4] = 0;
    *&buf[0].var0.data[8] = 2082;
    *&buf[0].var0.data[10] = "";
    *&buf[1].var0.data[2] = 1026;
    *&buf[1].var0.data[4] = a1;
    *&buf[1].var0.data[8] = 2082;
    *&buf[1].var0.data[10] = "assert";
    *&buf[2].var0.data[2] = 2081;
    *&buf[2].var0.data[4] = "false";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v70, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Service Type unsupported ", "{msg%{public}.0s:Service Type unsupported , service type:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf[0].var0.data, 0x2Cu);
  }

  v74 = _CLLogObjectForCategory_MicroLocation_Default(v71, v72, v73);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
  {
    *buf[0].var0.data = 68289795;
    *&buf[0].var0.data[4] = 0;
    *&buf[0].var0.data[8] = 2082;
    *&buf[0].var0.data[10] = "";
    *&buf[1].var0.data[2] = 1026;
    *&buf[1].var0.data[4] = a1;
    *&buf[1].var0.data[8] = 2082;
    *&buf[1].var0.data[10] = "assert";
    *&buf[2].var0.data[2] = 2081;
    *&buf[2].var0.data[4] = "false";
    _os_log_impl(&dword_258FE9000, v74, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Service Type unsupported , service type:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf[0].var0.data, 0x2Cu);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ServiceManager/ULModelLoader.mm", 42, "modelTypeByServiceAndLocationType");
  __break(1u);
}

void sub_259142694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  operator delete(v67);
  operator delete(v65);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::optional<ULModelDO>::~optional(&STACK[0x270]);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  std::optional<ULModelDO>::~optional(&STACK[0x418]);
  _Unwind_Resume(a1);
}

void ULModelLoader::loadHomeSlamModel(ULModelLoader *this, ULDatabaseStoreInterface *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULModelLoader::loadHomeSlamModel();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "[ULModelLoader]: starting loading HomeSlam model", buf, 2u);
  }

  v7 = (*(*this + 80))(this);
  v8 = v7;
  v37 = *&a2->var0;
  v38 = 1;
  if (v7)
  {
    objc_msgSend_fetchMostRecentModelOfModelType_atLoiGroupId_(v7);
  }

  else
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    memset(buf, 0, sizeof(buf));
  }

  if ((v41 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v27[0].var0.data = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "[ULModelLoader]: creating an empty HomeSlam model", v27[0].var0.data, 2u);
    }

    ULHomeSlamModel::createEmptyHomeSlamModel(v36);
    ULHomeSlamModel::toProtobuf(v36, v19);
    *v22.var0.data = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v22);
    v10 = boost::uuids::random_generator_pure::operator()(&v22);
    v12 = v11;
    v13 = cl::chrono::CFAbsoluteTimeClock::now();
    ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(&v23, v19);
    ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(v25, &v23);
    v26 = 1;
    LOBYTE(v16) = 0;
    v18 = 0;
    LOBYTE(v20) = 0;
    v21 = 0;
    ULModelDO::ULModelDO(v27, v10, v12, v25, &v16, &v20, a2->var0, a2[1].var0, v13);
    std::optional<ULModelDO>::operator=[abi:ne200100]<ULModelDO,void>(buf, v27);
    if (v32 == 1 && SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v28);
    if (v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v25);
    CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(&v23);
    boost::uuids::detail::random_provider_base::destroy(&v22);
    v14 = (*(*this + 80))(this);
    v27[0] = buf[0];
    *(v27 + 12) = *(buf + 12);
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v28, v40);
    LOBYTE(__p) = 0;
    v32 = 0;
    if (LOBYTE(v40[30]) == 1)
    {
      __p = *&v40[27];
      v31 = v40[29];
      memset(&v40[27], 0, 24);
      v32 = 1;
    }

    v33 = *&v40[31];
    v34 = *&v40[33];
    v35 = v40[35];
    memset(v25, 0, 24);
    std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(v25, v27, v36, 1uLL);
    LOBYTE(v23) = 0;
    v24 = 0;
    v20 = *&a2->var0;
    v21 = 1;
    [v14 insertDataObjects:v25 forServiceUUID:&v23 atLoiUUID:&v20];
    v23 = v25;
    std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v23);
    if (v32 == 1 && SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v28);

    CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(v19);
    ULHomeSlamModel::~ULHomeSlamModel(v36);
  }

  v27[0] = buf[0];
  *(v27 + 12) = *(buf + 12);
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v28, v40);
  LOBYTE(__p) = 0;
  v32 = 0;
  if (LOBYTE(v40[30]) == 1)
  {
    __p = *&v40[27];
    v31 = v40[29];
    memset(&v40[27], 0, 24);
    v32 = 1;
  }

  v33 = *&v40[31];
  v34 = *&v40[33];
  v35 = v40[35];
  v22 = v27[0];
  if (v29 == 1)
  {
    ULHomeSlamModel::fromProtobuf(v28, v15, v25);
    std::allocate_shared[abi:ne200100]<ULModelAndStates,std::allocator<ULModelAndStates>,boost::uuids::uuid &,ULHomeSlamModel,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,0>();
  }

  std::__throw_bad_variant_access[abi:ne200100]();
}

void sub_2591433B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v61 = *(v57 + 8);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  ULHomeSlamModel::~ULHomeSlamModel(&a57);
  ULModelDO::~ULModelDO(&STACK[0x240]);
  std::optional<ULModelDO>::~optional(&STACK[0x470]);
  _Unwind_Resume(a1);
}

id _CLLogObjectForCategory_MicroLocation_Default(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULModelLoader::loadHomeSlamModel();
  }

  v4 = logObject_MicroLocation_Default;

  return v4;
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
    }

    else
    {
      *a3 = *a1;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, a2);
  }
}

void ULModelLoader::modelDomain(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>)
{
  if ((a1 - 1) >= 4)
  {
    ULModelLoader::modelDomain(a1, a2, a4);
    CLMicroLocationModel::~CLMicroLocationModel(v6);
  }

  else
  {
    v5 = off_2798D4FE8[a1 - 1];

    std::string::basic_string[abi:ne200100]<0>(a3, v5);
  }
}

void CLMicroLocationModel::~CLMicroLocationModel(void **this)
{
  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  v2 = this[31];
  if (v2)
  {
    this[32] = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(this + 25);
  v4 = this + 22;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 136) == 1)
  {
    v3 = this[9];
    if (v3)
    {
      this[10] = v3;
      operator delete(v3);
    }
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((this + 2));
}

void ULModelLoader::loadMapItemsForService(void **a1@<X0>, void **a2@<X1>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[1] = a1;
  v9[2] = a2;
  v6 = (*(*a4 + 152))(a4);
  v7 = v6;
  if (v6)
  {
    objc_msgSend_fetchMapLabelsForModel_andContextLayers_limit_ascending_(v6);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  ULModelLoader::convertMapLabelsToMapItems(v8, x8_0);
  v9[0] = v8;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](v9);
}

void ULModelLoader::convertMapLabelsToMapItems(void *a1@<X0>, void *a2@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v37 = [MEMORY[0x277CBEB38] dictionary];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = *MEMORY[0x277D28838];
    v7 = *MEMORY[0x277D28840];
    v8 = *a1 + 160;
    do
    {
      v9 = v8 - 160;
      v10 = ULMapLabelDO::create((v8 - 160), v4);
      v11 = v6;
      if ((*(v8 - 8) & 1) == 0)
      {
        v12 = v7;

        v11 = v12;
      }

      v13 = [ULLabelKey alloc];
      v14 = v8;
      if (*(v8 + 23) < 0)
      {
        v14 = *v8;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
      v16 = [(ULLabelKey *)v13 initWithName:v15 contextLayer:*(v8 - 72) mapItemType:v11];

      v17 = [v37 objectForKeyedSubscript:v16];

      if (!v17)
      {
        v18 = [MEMORY[0x277CBEB18] array];
        [v37 setObject:v18 forKeyedSubscript:v16];
      }

      v19 = [v37 objectForKeyedSubscript:v16];
      [v19 addObject:v10];

      v8 += 232;
    }

    while (v9 + 232 != v5);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v37;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v21)
  {
    v22 = *v39;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v38 + 1) + 8 * i);
        v25 = objc_alloc(MEMORY[0x277D287C8]);
        v26 = [v24 name];
        v27 = [v20 objectForKeyedSubscript:v24];
        v28 = [v24 mapItemType];
        v29 = [v25 initWithName:v26 labels:v27 mapItemType:v28];
        v31 = a2[1];
        v30 = a2[2];
        if (v31 >= v30)
        {
          v33 = (v31 - *a2) >> 3;
          if ((v33 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v34 = v30 - *a2;
          v35 = v34 >> 2;
          if (v34 >> 2 <= (v33 + 1))
          {
            v35 = v33 + 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          v46 = a2;
          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(a2, v36);
          }

          v42 = 0;
          v43 = (8 * v33);
          v45 = 0;
          *v43 = v29;
          v44 = 8 * v33 + 8;
          std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(a2, &v42);
          v32 = a2[1];
          std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(&v42);
        }

        else
        {
          *v31 = v29;
          v32 = v31 + 1;
        }

        a2[1] = v32;
      }

      v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v21);
  }
}

void sub_259143AF4(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULModelDO>::operator=[abi:ne200100]<ULModelDO,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 320) == 1)
  {
    ULModelDO::operator=(a1, a2);
  }

  else
  {
    std::__optional_storage_base<ULModelDO,false>::__construct[abi:ne200100]<ULModelDO>(a1, a2);
  }

  return a1;
}

id ULModelLoader::getContextLayerAccessMap(ULModelLoader *this)
{
  v27[23] = *MEMORY[0x277D85DE8];
  {
    v26[0] = &unk_286A72030;
    v25 = [[ULContextLayerAccess alloc] initWithWriter:@"11111111-1111-1111-1111-111111111111" readers:0];
    v27[0] = v25;
    v26[1] = &unk_286A72048;
    v24 = [[ULContextLayerAccess alloc] initWithWriter:@"11111111-1111-1111-1111-111111111111" readers:0];
    v27[1] = v24;
    v26[2] = &unk_286A72060;
    v23 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000017"];
    v27[2] = v23;
    v26[3] = &unk_286A72078;
    v22 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000001"];
    v27[3] = v22;
    v26[4] = &unk_286A72090;
    v21 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000002"];
    v27[4] = v21;
    v26[5] = &unk_286A720A8;
    v20 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000003"];
    v27[5] = v20;
    v26[6] = &unk_286A720C0;
    v19 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000004"];
    v27[6] = v19;
    v26[7] = &unk_286A720D8;
    v18 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000005"];
    v27[7] = v18;
    v26[8] = &unk_286A720F0;
    v17 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000006"];
    v27[8] = v17;
    v26[9] = &unk_286A72108;
    v16 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000007"];
    v27[9] = v16;
    v26[10] = &unk_286A72120;
    v15 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000008"];
    v27[10] = v15;
    v26[11] = &unk_286A72138;
    v14 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000009"];
    v27[11] = v14;
    v26[12] = &unk_286A72150;
    v13 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000025"];
    v27[12] = v13;
    v26[13] = &unk_286A72168;
    v12 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000022"];
    v27[13] = v12;
    v26[14] = &unk_286A72180;
    v3 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000018"];
    v27[14] = v3;
    v26[15] = &unk_286A72198;
    v4 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000019"];
    v27[15] = v4;
    v26[16] = &unk_286A721B0;
    v5 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000020"];
    v27[16] = v5;
    v26[17] = &unk_286A721C8;
    v6 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000021"];
    v27[17] = v6;
    v26[18] = &unk_286A721E0;
    v7 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000011"];
    v27[18] = v7;
    v26[19] = &unk_286A721F8;
    v8 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000010"];
    v27[19] = v8;
    v26[20] = &unk_286A72210;
    v9 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000023"];
    v27[20] = v9;
    v26[21] = &unk_286A72228;
    v10 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000024"];
    v27[21] = v10;
    v26[22] = &unk_286A72240;
    v11 = [[ULContextLayerAccess alloc] initWithSingleAccess:0];
    v27[22] = v11;
    ULModelLoader::getContextLayerAccessMap(void)::contextLayerAccessMap = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:23];
  }

  v1 = ULModelLoader::getContextLayerAccessMap(void)::contextLayerAccessMap;

  return v1;
}

uint64_t ULModelLoader::hasWriteAccessToContextLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a1;
  v12[1] = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v12];
  v5 = ULModelLoader::getContextLayerAccessMap(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 writer];
    if (v8)
    {
      v9 = [v7 writer];
      v10 = [v9 isEqual:v4];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ULModelLoader::hasReadAccessToContextLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a1;
  v12[1] = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v12];
  v5 = ULModelLoader::getContextLayerAccessMap(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 readers];
    if (v8)
    {
      v9 = [v7 readers];
      v10 = [v9 containsObject:v4];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

double std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(uint64_t result, __int128 *a2)
{
  if (*(result + 320) == *(a2 + 320))
  {
    if (*(result + 320))
    {
      ULModelDO::operator=(result, a2);
    }
  }

  else if (*(result + 320))
  {
    std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](result);
  }

  else
  {
    *&v2 = std::__optional_storage_base<ULModelDO,false>::__construct[abi:ne200100]<ULModelDO>(result, a2).n128_u64[0];
  }

  return v2;
}

uint64_t ULModelDO::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>>((a1 + 32), (a2 + 2));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 248, (a2 + 248));
  v5 = *(a2 + 280);
  v6 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 280) = v5;
  *(a1 + 296) = v6;
  return a1;
}

void **std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](void **result)
{
  if (*(result + 320) == 1)
  {
    v1 = result;
    if (*(result + 272) == 1 && *(result + 271) < 0)
    {
      operator delete(result[31]);
    }

    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v1 + 4));
    *(v1 + 320) = 0;
  }

  return result;
}

__n128 std::__optional_storage_base<ULModelDO,false>::__construct[abi:ne200100]<ULModelDO>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((a1 + 32), (a2 + 2));
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    v5 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 33);
    *(a1 + 248) = v5;
    *(a2 + 32) = 0;
    *(a2 + 33) = 0;
    *(a2 + 31) = 0;
    *(a1 + 272) = 1;
  }

  result = *(a2 + 280);
  v7 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 280) = result;
  *(a1 + 296) = v7;
  *(a1 + 320) = 1;
  return result;
}

CLMicroLocationProto::Model *std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>>(CLMicroLocationProto::Model *result, uint64_t a2)
{
  v4 = *(a2 + 208);
  if (*(result + 52) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_286A5BBC8[v4])(v6);
    }
  }

  return result;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_109()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULSettings::get<ULSettings::LearnerAlgorithm>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearnerAlgorithm"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A72258 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t *std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum const*,CLMicroLocationProto::ServiceQualityReasonEnum const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259144988(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ULModelAndStates>::__shared_ptr_emplace[abi:ne200100]<boost::uuids::uuid &,ULHomeSlamModel,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,std::allocator<ULModelAndStates>,0>(void *a1, _OWORD *a2, uint64_t a3, double *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5BC10;
  ULModelAndStates::ULModelAndStates((a1 + 3), *a4, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<ULModelAndStates>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5BC10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void std::__shared_ptr_emplace<ULModelAndStates>::__on_zero_shared(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::~__hash_table(a1 + 632);
  if (*(a1 + 624) == 1)
  {

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1 + 584, *(a1 + 592));
  }

  if (*(a1 + 544) == 1)
  {
    ULHomeSlamModel::~ULHomeSlamModel((a1 + 336));
  }

  if (*(a1 + 328) == 1)
  {
    if (*(a1 + 319) < 0)
    {
      operator delete(*(a1 + 296));
    }

    v2 = *(a1 + 272);
    if (v2)
    {
      *(a1 + 280) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table((a1 + 224));
    v4 = (a1 + 200);
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(a1 + 160) == 1)
    {
      v3 = *(a1 + 96);
      if (v3)
      {
        *(a1 + 104) = v3;
        operator delete(v3);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 40);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>,0>(uint64_t a1)
{
  v2 = *(a1 + 400);
  if (v2)
  {
    *(a1 + 408) = v2;
    operator delete(v2);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings((a1 + 8));
}

void *std::__shared_ptr_emplace<ULModelAndStates>::__shared_ptr_emplace[abi:ne200100]<boost::uuids::uuid &,CLMicroLocationModel,std::string,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,std::allocator<ULModelAndStates>,0>(void *a1, _OWORD *a2, unsigned int *a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5BC10;
  ULModelAndStates::ULModelAndStates((a1 + 3), *a5, a2, a3, a4);
  return a1;
}

void *std::__shared_ptr_emplace<ULModelAndStates>::__shared_ptr_emplace[abi:ne200100]<boost::uuids::uuid,CLMicroLocationModel,std::string,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::allocator<ULModelAndStates>,0>(void *a1, _OWORD *a2, unsigned int *a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5BC10;
  ULModelAndStates::ULModelAndStates((a1 + 3), *a5, a2, a3, a4);
  return a1;
}

__n128 ULService::ServiceDescriptor::ServiceDescriptor(__n128 *a1, __n128 *a2, unint64_t a3, unint64_t a4)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a3;
  a1[1].n128_u64[1] = a4;
  return result;
}

uint64_t ULService::ULService(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  v11 = *a3;
  v12 = ULService::uint64ToLocationTypesBitset(a3[7], a2);
  *(a1 + 8) = *(a3 + 1);
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  if (*(a3 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), a3[4], a3[5]);
  }

  else
  {
    v13 = *(a3 + 2);
    *(a1 + 56) = a3[6];
    *(a1 + 40) = v13;
  }

  if (*(a3 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), a3[8], a3[9]);
  }

  else
  {
    v14 = *(a3 + 4);
    *(a1 + 80) = a3[10];
    *(a1 + 64) = v14;
  }

  *(a1 + 88) = a6;
  *(a1 + 96) = 1;
  *(a1 + 232) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 240) = a4;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a5;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  return a1;
}

void sub_259144F7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

unint64_t ULService::uint64ToLocationTypesBitset(unint64_t this, uint64_t a2)
{
  if (HIDWORD(this))
  {
    ULService::uint64ToLocationTypesBitset(this);
    return ULService::ULService(v2, v3, v4, v5, v6, v7);
  }

  return this;
}

void ULService::modelClientIdentifierStringForServiceTypeAndClientId(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (a1 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(a3, "kMiLoClientIdentifierUnsupervisedShared");
  }

  else if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
  }
}

uint64_t ULService::isLocationTypeEnabled(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  return (*(a1 + 32) >> a2) & 1;
}

uint64_t ULService::shouldEnableServiceInLocation(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  if (((*(a1 + 32) >> a2) & 1) != 0 && (v2 = *(a1 + 240), (*v2 & 1) == 0) && v2[1] == 1 && v2[2] == 1 && v2[3] == 1 && v2[4] == 1 && (v2[6] & 1) == 0 && (v2[7] & 1) == 0)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t ULService::enableInLocationType(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  *(result + 32) |= 1 << a2;
  return result;
}

uint64_t ULService::disableInLocationType(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  *(result + 32) &= ~(1 << a2);
  return result;
}

ULService *ULService::ingestLocalizationResults(ULService *result, uint64_t a2, uint64_t a3, double *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!*(result + 12))
  {
    v6 = result;
    ULService::applyLocalizationResultsToOutstandingLabels(result, a2, a4, a3);
    if (*(v6 + 20))
    {
      if (*(a2 + 120) == 1)
      {
        *(&v7 + 1) = 0x8000000000000028;
        *&v7 = 68289538;
        v14 = v7;
        do
        {
          v19 = *(*(*(v6 + 16) + 8 * (*(v6 + 19) / 0x78uLL)) + 34 * (*(v6 + 19) % 0x78uLL));
          if (onceToken_MicroLocation_Default != -1)
          {
            ULService::ingestLocalizationResults();
          }

          v8 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            operator new();
          }

          if ((*(a2 + 120) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          (*(**v6 + 32))(*v6, v6 + 1, &v19, a2);
          *(v6 + 152) = vaddq_s64(*(v6 + 152), xmmword_259220430);
          std::deque<ULService::OutstandingRequest>::__maybe_remove_front_spare[abi:ne200100](v6 + 120, 1);
        }

        while (*(v6 + 20));
      }

      else
      {
        ULService::releaseOutstandingPredictionRequests(v6, 3);
      }
    }

    else if (*(v6 + 31) && *(a2 + 120) == 1)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULService::ingestLocalizationResults();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      v10 = *v6;
      LODWORD(v15) = 0;
      boost::uuids::detail::random_provider_base::random_provider_base(&v15);
      *buf = boost::uuids::random_generator_pure::operator()(&v15);
      v17 = v11;
      if ((*(a2 + 120) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      (*(*v10 + 32))(v10, v6 + 1, buf, a2);
      boost::uuids::detail::random_provider_base::destroy(&v15);
    }

    result = [MEMORY[0x277D28868] isInternalInstall];
    if (result)
    {
      if (*(a3 + 272) == 1)
      {
        v12 = (*(a3 + 120) - *(a3 + 112)) >> 5;
        v13 = (*(a3 + 144) - *(a3 + 136)) >> 5;
        *buf = (*(a3 + 96) - *(a3 + 88)) >> 5;
        v17 = v12;
        v18 = v13;
        return (*(**v6 + 56))(*v6, v6 + 1, a3, buf);
      }
    }
  }

  return result;
}

void sub_2591455F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v24);

  _Unwind_Resume(a1);
}

void ULService::applyLocalizationResultsToOutstandingLabels(ULService *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(a2 + 120) == 1 && (*(a2 + 64) & 1) == 0 && *(a1 + 37) != *(a1 + 38))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      v30 = a4;
      ULService::ingestLocalizationResults();
      a4 = v30;
    }

    v31 = a4;
    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0x34F72C234F72C235 * ((*(a1 + 38) - *(a1 + 37)) >> 3);
      v8 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v7;
      *&buf[28] = 2050;
      *&buf[30] = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULService::applyLocalizationResultsToOutstandingLabels: starting processing outstanding label requests, numberOfOutstandingLabelRequests:%{public}lu, localizationResultsTimestamp_s:%{public}.09f}", buf, 0x26u);
    }

    v41 = 0;
    v42 = 0;
    v43 = 0;
    v9 = *(a1 + 37);
    v10 = *(a1 + 38);
    if (v9 != v10)
    {
      v11 = (v9 + 216);
      do
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULService::ingestLocalizationResults();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          ULLabelDO::to_str((v11 - 8), __p);
          v13 = __p;
          if (v38 < 0)
          {
            v13 = __p[0];
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = v13;
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULService::applyLocalizationResultsToOutstandingLabels: processing , label:%{public, location:escape_only}s}", buf, 0x1Cu);
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v14 = *a3;
        v15 = *(v11 - 11);
        v16 = +[ULDefaultsSingleton shared];
        v17 = [v16 defaultsDictionary];

        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOutstandingLabelRequestsTimeout"];
        v19 = [v17 objectForKey:v18];
        if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v20 = [v19 intValue];
        }

        else
        {
          v20 = [&unk_286A72270 intValue];
        }

        v21 = v20;

        if (v14 - v15 < v21)
        {
          if ((*(a2 + 120) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          *&v40 = ULLocalizationResult::getPointLocation(a2);
          DWORD2(v40) = v22;
          BYTE12(v40) = v23;
          if ((*(a2 + 120) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          ULLocalizationResult::getProbabilitiesAsFloatVector(a2, __p);
          if ((*(a2 + 120) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&v33, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
          v36 = 1;
          ULMapLabelDO::ULMapLabelDO(buf, &v40, __p, &v33, a3, (v11 - 8), v11);
          v24 = v42;
          if (v42 >= v43)
          {
            v25 = std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULMapLabelDO>(&v41, buf);
          }

          else
          {
            ULMapLabelDO::ULMapLabelDO(v42, buf);
            v25 = v24 + 232;
          }

          v42 = v25;
          if (v52 == 1)
          {
            v51 = -1;
          }

          if (v50 < 0)
          {
            operator delete(v49);
          }

          if (v48 == 1 && v46)
          {
            v47 = v46;
            operator delete(v46);
          }

          if (v45 == 1 && *&buf[16])
          {
            *&buf[24] = *&buf[16];
            operator delete(*&buf[16]);
          }

          if (v36 == 1 && v33)
          {
            v34 = v33;
            operator delete(v33);
          }

          if (v39 == 1 && __p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        v26 = v11 + 1;
        v11 = (v11 + 232);
      }

      while (v26 != v10);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v27 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0x34F72C234F72C235 * ((v42 - v41) >> 3)];
      *buf = 138412290;
      *&buf[4] = v28;
      _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, "ULService::applyLocalizationResultsToOutstandingLabels: created %@ mapLabels", buf, 0xCu);
    }

    std::vector<ULMapLabelDO>::__base_destruct_at_end[abi:ne200100](a1 + 296, *(a1 + 37));
    if (*(v31 + 272) == 1)
    {
      (*(**a1 + 104))(*a1, &v41);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULService::ingestLocalizationResults();
      }

      v29 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_ERROR, "Unable to persist map labels without a scan event", buf, 2u);
      }
    }

    ULService::appendMapItems(a1, &v41);
    *buf = &v41;
    std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](buf);
  }
}

void sub_259145C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *__pa, uint64_t a15, char a16, uint64_t a17, void *a18, ULMapLabelDO *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void **a27)
{
  a27 = &a24;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void ULService::releaseOutstandingPredictionRequests(void *a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = 29;
  }

  else
  {
    v2 = -1;
  }

  if (a1[20])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    while (a1[20])
    {
      v5 = *(a1[16] + 8 * (a1[19] / 0x78uLL)) + 34 * (a1[19] % 0x78uLL);
      (*(**a1 + 40))(*a1, a1 + 1, v5, v2);
      buf[0] = 0;
      BYTE4(v8) = 0;
      BYTE2(v9) = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      (*(**a1 + 32))(*a1, a1 + 1, v5, buf);
      *(a1 + 19) = vaddq_s64(*(a1 + 19), xmmword_259220430);
      std::deque<ULService::OutstandingRequest>::__maybe_remove_front_spare[abi:ne200100]((a1 + 15), 1);
      if (*(&v14 + 1))
      {
        *&v15 = *(&v14 + 1);
        operator delete(*(&v14 + 1));
      }

      if (v13)
      {
        *(&v13 + 1) = v13;
        operator delete(v13);
      }

      if (BYTE4(v8) == 1)
      {
        if (*buf)
        {
          *v7 = *buf;
          operator delete(*buf);
        }
      }
    }
  }
}

void sub_25914601C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

void ULService::appendMapItems(ULService *a1, uint64_t *a2)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      if (std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(a1 + 40, (v2 + 88)))
      {
        v6 = v40;
        if (v40 >= v41)
        {
          v7 = std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULMapLabelDO const&>(&v39, v2);
        }

        else
        {
          ULMapLabelDO::ULMapLabelDO(v40, v2);
          v7 = (v6 + 232);
        }

        v40 = v7;
      }

      v2 += 232;
    }

    while (v2 != v3);
    v8 = v39;
    v9 = v40;
    if (v39 != v40)
    {
      v37 = (a1 + 272);
      v38 = *MEMORY[0x277D28838];
      while (1)
      {
        v10 = ULMapLabelDO::create(v8, v5);
        v11 = *(a1 + 34);
        v12 = *(a1 + 35);
        if (v11 == v12)
        {
          goto LABEL_23;
        }

        do
        {
          v13 = *v11;
          v14 = [v13 name];
          v15 = v14;
          v16 = [v14 UTF8String];
          v17 = strlen(v16);
          v18 = v17;
          var0_high = SHIBYTE(v8[2].var1.var0.var1.var0);
          if (var0_high < 0)
          {
            if (v17 != *&v8[2].var0.var0.var1.var2)
            {
              goto LABEL_18;
            }

            if (v17 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v20 = *&v8[2].var0.var0.var0;
          }

          else
          {
            v20 = v8 + 2;
            if (v18 != var0_high)
            {
              goto LABEL_18;
            }
          }

          if (memcmp(v20, v16, v18))
          {
LABEL_18:

            goto LABEL_19;
          }

          v21 = *&v8[1].var0.var0.var1.var2;
          LOBYTE(v21) = v21 == [v13 contextLayerEnum];

          if (v21)
          {
            goto LABEL_22;
          }

LABEL_19:
          ++v11;
        }

        while (v11 != v12);
        v11 = v12;
LABEL_22:
        v12 = *(a1 + 35);
LABEL_23:
        if (v11 == v12)
        {
          v28 = objc_alloc(MEMORY[0x277D287C8]);
          v23 = [v10 name];
          v47[0] = v10;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
          v29 = [v28 initWithName:v23 labels:v24 mapItemType:v38];
          v31 = *(a1 + 35);
          v30 = *(a1 + 36);
          if (v31 >= v30)
          {
            v33 = (v31 - *v37) >> 3;
            if ((v33 + 1) >> 61)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v34 = v30 - *v37;
            v35 = v34 >> 2;
            if (v34 >> 2 <= (v33 + 1))
            {
              v35 = v33 + 1;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v36 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v35;
            }

            v46 = (a1 + 272);
            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(v37, v36);
            }

            v42 = 0;
            v43 = (8 * v33);
            v45 = 0;
            *v43 = v29;
            v44 = 8 * v33 + 8;
            std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(v37, &v42);
            v32 = *(a1 + 35);
            std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(&v42);
          }

          else
          {
            *v31 = v29;
            v32 = v31 + 1;
            *(a1 + 35) = v32;
          }

          *(a1 + 35) = v32;
        }

        else
        {
          v22 = objc_alloc(MEMORY[0x277D287C8]);
          v23 = [*v11 name];
          v24 = [*v11 labels];
          v25 = [v24 arrayByAddingObject:v10];
          v26 = [v22 initWithName:v23 labels:v25 mapItemType:v38];
          v27 = *v11;
          *v11 = v26;
        }

        v8 = (v8 + 232);
        if (v8 == v9)
        {
          ULService::updateState(a1);
          break;
        }
      }
    }
  }

  v42 = &v39;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v42);
}

void sub_2591463B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void ULService::sendInitialBlueAtlasPrediction(ULService *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!*(this + 12))
  {
    v6 = 0;
    v7 = 0;
    *buf = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(buf);
    v6 = boost::uuids::random_generator_pure::operator()(buf);
    v7 = v2;
    boost::uuids::detail::random_provider_base::destroy(buf);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    v5 = *(this + 8);
    CLMicroLocationClientUtils::getClientIdAndServiceUuid(this + 5);
  }
}

void sub_259146930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  operator delete(v21);

  _Unwind_Resume(a1);
}

uint64_t ULService::getModelPtr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 112);
  *a2 = *(this + 104);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *ULService::sendGenericEvent(void *result, uint64_t a2, uint64_t *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!result[12])
  {
    v5 = result;
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    return (*(**v5 + 64))(*v5, v5 + 1, a2, a3);
  }

  return result;
}

void sub_259146BB0(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::updateModel(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  v7 = *(a1 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 272);
  for (i = *(a1 + 280); i != v8; i -= 8)
  {
    v10 = *(i - 8);
  }

  *(a1 + 280) = v8;
  ULService::releaseAllOutstandingLabelRequests(a1);
  if (ULService::shouldEnableServiceInLocation(a1, **(a1 + 264)))
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = a2[1];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(a1 + 112);
      *(a1 + 104) = v11;
      *(a1 + 112) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      std::vector<ULMapItem * {__strong}>::__vdeallocate((a1 + 272));
      *(a1 + 272) = *a3;
      *(a1 + 288) = *(a3 + 16);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  ULService::updateState(a1);
}

void sub_259146E5C(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::releaseAllOutstandingLabelRequests(ULService *this)
{
  v3 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  std::vector<ULMapLabelDO>::__base_destruct_at_end[abi:ne200100](this + 296, *(this + 37));
}

void sub_259146FDC(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::updateState(ULService *this)
{
  v2 = *(this + 12);
  v3 = ULService::requiresLocalization(this);
  v4 = v3 ^ 1u;
  *(this + 12) = v4;
  if (v2 != v4)
  {
    if (v3)
    {
      ULService::didStateChangeToRunning(this, v2);
    }

    else
    {
      ULService::didStateChangeToSuspended(this, v2);
    }
  }

  ULService::sendStatus(this);
}

BOOL ULService::internalQualityToIsMapValid(uint64_t a1, int a2)
{
  v3 = a1;
  v13 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = v3;
    v11 = 1026;
    v12 = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:internalToExternalServiceQuality, qualityLevel:%{public}d, candidateQualityLevel:%{public}d}", v6, 0x1Eu);
  }

  return v3 == 3;
}

uint64_t ULService::requiresLocalization(ULService *this)
{
  result = ULService::shouldEnableServiceInLocation(this, **(this + 33));
  if (result)
  {
    v3 = *(this + 13);
    if (v3 && (ULModelAndStates::acceptsScanEventLocalization(v3) & 1) != 0 || *(this + 31) == 2)
    {
      return 1;
    }

    else
    {

      return ULSettings::get<ULSettings::ForceLowLatency>();
    }
  }

  return result;
}

void ULService::didStateChangeToRunning(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  *(a1 + 96) = 0;
}

void sub_259147308(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::didStateChangeToSuspended(ULService *a1, int a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  ULService::releaseAllOutstandingRequestsAsFailed(a1);
}

void sub_259147468(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::sendStatus(ULService *this)
{
  v11 = *MEMORY[0x277D85DE8];
  ULService::getCurrentStatus(&v3, this);
  (*(**this + 72))(*this, &v3);
  if (v10 == 1)
  {
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&v9, 0);
    v2 = &v8;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  v2 = &v7;
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = &v6;
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_259147578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ULService::ServiceStatus::~ServiceStatus(va);
  _Unwind_Resume(a1);
}

void ULService::releaseAllOutstandingRequestsAsFailed(ULService *this)
{
  ULService::releaseOutstandingPredictionRequests(this, 1);
  v5[0] = 0;
  v5[1] = 0;
  memset(v3, 0, sizeof(v3));
  v4 = v5;
  v6 = 2;
  v2 = 2;
  std::__tree<ULRecordingCompletionMetaInformation::RecordingError>::__emplace_unique_key_args<ULRecordingCompletionMetaInformation::RecordingError,ULRecordingCompletionMetaInformation::RecordingError>(&v4, &v2, &v2);
  ULService::releaseOutstandingObservationRequests(this, v3);
  ULService::releaseAllOutstandingLabelRequests(this);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v4, v5[0]);
}

void ULService::releaseOutstandingObservationRequests(void *a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v2 = 12;
  }

  else
  {
    v2 = -1;
  }

  if (a1[26])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    while (a1[26])
    {
      v6 = *(a1[22] + 8 * (a1[25] / 0x78uLL)) + 34 * (a1[25] % 0x78uLL);
      if (*(v6 + 33))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULService::ingestLocalizationResults();
        }

        v7 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }
      }

      else
      {
        (*(**a1 + 40))(*a1, a1 + 1, v6, v2);
        if (onceToken_MicroLocation_Default != -1)
        {
          ULService::ingestLocalizationResults();
        }

        v7 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }
      }

      (*(**a1 + 48))(*a1, a1 + 1, v6, a2);
      *(a1 + 25) = vaddq_s64(*(a1 + 25), xmmword_259220430);
      std::deque<ULService::OutstandingRequest>::__maybe_remove_front_spare[abi:ne200100]((a1 + 21), 1);
    }
  }
}

void sub_259147A78(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

BOOL ULService::predictionRequest(unint64_t *a1, __int128 *a2, uint64_t a3, int a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a1[12];
  if (!v6)
  {
    v7 = *a1;
    v8 = a1[14];
    v11 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 16))(buf);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v22 == 1)
    {
      (*(**a1 + 32))(*a1, a1 + 1, a2, buf);
    }

    else
    {
      v12 = *a2;
      v13 = 0;
      v14 = 0;
      std::deque<ULService::OutstandingRequest>::push_back(a1 + 15, &v12);
    }

    if (v22 == 1)
    {
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }

      if (v17 == 1 && *buf)
      {
        *v16 = *buf;
        operator delete(*buf);
      }
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  return v6 == 0;
}

void sub_259147DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::optional<ULLocalizationResult>::~optional(va);
  _Unwind_Resume(a1);
}

uint64_t ULService::observationRequest(uint64_t a1, _OWORD *a2, __int128 *a3, uint64_t a4, char a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ULService::shouldEnableServiceInLocation(a1, **(a1 + 264)) && (*(**a1 + 24))())
  {
    v9 = *a3;
    v13[0] = *a2;
    v13[1] = v9;
    v14 = *(a3 + 16);
    v15 = a5;
    std::deque<ULService::OutstandingRequest>::push_back((a1 + 168), v13);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  return v10;
}

void sub_2591480E8(_Unwind_Exception *a1)
{
  operator delete(v4);
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

__n128 std::deque<ULService::OutstandingRequest>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 120 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<ULService::OutstandingRequest>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x78)) + 34 * (v7 % 0x78);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void ULService::didRecordingStop(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  ULService::releaseOutstandingObservationRequests(a1, a2);
}

void sub_25914833C(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::getCurrentStatus(uint64_t *__return_ptr a1@<X8>, ULService *this@<X0>)
{
  v182[19] = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  a1[7] = 0;
  *(a1 + 64) = 0;
  v5 = a1 + 8;
  *(a1 + 6) = 0u;
  v6 = a1 + 12;
  *(a1 + 88) = 0;
  *(a1 + 9) = 0u;
  v7 = (a1 + 18);
  *(a1 + 224) = 0;
  *(a1 + 7) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 192) = 0;
  *a1 = *(this + 12);
  v8 = ULService::requiresIO(this);
  v9 = *(this + 30);
  if (v8 && v9[8] == 1)
  {
    *a1 = 1;
  }

  if (*v9)
  {
    goto LABEL_5;
  }

  if (v9[1] != 1 || v9[2] != 1 || v9[3] != 1 || v9[4] != 1 || (v9[6] & 1) != 0 || (v9[7] & 1) != 0 || v9[5] != 1)
  {
LABEL_28:
    if ((v9[1] & 1) == 0)
    {
      v23 = a1[2];
      v22 = a1[3];
      if (v23 >= v22)
      {
        v25 = *v4;
        v26 = v23 - *v4;
        v27 = v26 >> 3;
        v28 = (v26 >> 3) + 1;
        if (v28 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v29 = v22 - v25;
        if (v29 >> 2 > v28)
        {
          v28 = v29 >> 2;
        }

        v19 = v29 >= 0x7FFFFFFFFFFFFFF8;
        v30 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v30 = v28;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v30);
        }

        *(8 * v27) = 5;
        v24 = 8 * v27 + 8;
        memcpy(0, v25, v26);
        v31 = a1[1];
        a1[1] = 0;
        a1[2] = v24;
        a1[3] = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v23 = 5;
        v24 = (v23 + 1);
      }

      a1[2] = v24;
      v9 = *(this + 30);
    }

    if ((v9[2] & 1) == 0)
    {
      v33 = a1[2];
      v32 = a1[3];
      if (v33 >= v32)
      {
        v35 = *v4;
        v36 = v33 - *v4;
        v37 = v36 >> 3;
        v38 = (v36 >> 3) + 1;
        if (v38 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v39 = v32 - v35;
        if (v39 >> 2 > v38)
        {
          v38 = v39 >> 2;
        }

        v19 = v39 >= 0x7FFFFFFFFFFFFFF8;
        v40 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v40 = v38;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v40);
        }

        *(8 * v37) = 6;
        v34 = 8 * v37 + 8;
        memcpy(0, v35, v36);
        v41 = a1[1];
        a1[1] = 0;
        a1[2] = v34;
        a1[3] = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *v33 = 6;
        v34 = (v33 + 1);
      }

      a1[2] = v34;
      v9 = *(this + 30);
    }

    if ((v9[3] & 1) == 0)
    {
      v43 = a1[2];
      v42 = a1[3];
      if (v43 >= v42)
      {
        v45 = *v4;
        v46 = v43 - *v4;
        v47 = v46 >> 3;
        v48 = (v46 >> 3) + 1;
        if (v48 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v49 = v42 - v45;
        if (v49 >> 2 > v48)
        {
          v48 = v49 >> 2;
        }

        v19 = v49 >= 0x7FFFFFFFFFFFFFF8;
        v50 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v50 = v48;
        }

        if (v50)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v50);
        }

        *(8 * v47) = 8;
        v44 = 8 * v47 + 8;
        memcpy(0, v45, v46);
        v51 = a1[1];
        a1[1] = 0;
        a1[2] = v44;
        a1[3] = 0;
        if (v51)
        {
          operator delete(v51);
        }
      }

      else
      {
        *v43 = 8;
        v44 = (v43 + 1);
      }

      a1[2] = v44;
      v9 = *(this + 30);
    }

    if ((v9[4] & 1) == 0)
    {
      v53 = a1[2];
      v52 = a1[3];
      if (v53 >= v52)
      {
        v55 = *v4;
        v56 = v53 - *v4;
        v57 = v56 >> 3;
        v58 = (v56 >> 3) + 1;
        if (v58 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v59 = v52 - v55;
        if (v59 >> 2 > v58)
        {
          v58 = v59 >> 2;
        }

        v19 = v59 >= 0x7FFFFFFFFFFFFFF8;
        v60 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v60 = v58;
        }

        if (v60)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v60);
        }

        *(8 * v57) = 7;
        v54 = 8 * v57 + 8;
        memcpy(0, v55, v56);
        v61 = a1[1];
        a1[1] = 0;
        a1[2] = v54;
        a1[3] = 0;
        if (v61)
        {
          operator delete(v61);
        }
      }

      else
      {
        *v53 = 7;
        v54 = (v53 + 1);
      }

      a1[2] = v54;
      v9 = *(this + 30);
    }

    if (v9[6] == 1)
    {
      v63 = a1[2];
      v62 = a1[3];
      if (v63 >= v62)
      {
        v65 = *v4;
        v66 = v63 - *v4;
        v67 = v66 >> 3;
        v68 = (v66 >> 3) + 1;
        if (v68 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v69 = v62 - v65;
        if (v69 >> 2 > v68)
        {
          v68 = v69 >> 2;
        }

        v19 = v69 >= 0x7FFFFFFFFFFFFFF8;
        v70 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v70 = v68;
        }

        if (v70)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v70);
        }

        *(8 * v67) = 9;
        v64 = 8 * v67 + 8;
        memcpy(0, v65, v66);
        v71 = a1[1];
        a1[1] = 0;
        a1[2] = v64;
        a1[3] = 0;
        if (v71)
        {
          operator delete(v71);
        }
      }

      else
      {
        *v63 = 9;
        v64 = (v63 + 1);
      }

      a1[2] = v64;
      v9 = *(this + 30);
    }

    if ((v9[5] & 1) == 0)
    {
      v73 = a1[2];
      v72 = a1[3];
      if (v73 >= v72)
      {
        v75 = *v4;
        v76 = v73 - *v4;
        v77 = v76 >> 3;
        v78 = (v76 >> 3) + 1;
        if (v78 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v79 = v72 - v75;
        if (v79 >> 2 > v78)
        {
          v78 = v79 >> 2;
        }

        v19 = v79 >= 0x7FFFFFFFFFFFFFF8;
        v80 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v80 = v78;
        }

        if (v80)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v80);
        }

        *(8 * v77) = 4;
        v74 = 8 * v77 + 8;
        memcpy(0, v75, v76);
        v81 = a1[1];
        a1[1] = 0;
        a1[2] = v74;
        a1[3] = 0;
        if (v81)
        {
          operator delete(v81);
        }
      }

      else
      {
        *v73 = 4;
        v74 = (v73 + 1);
      }

      a1[2] = v74;
      v9 = *(this + 30);
    }

    if (v9[7] == 1)
    {
      v83 = a1[2];
      v82 = a1[3];
      if (v83 >= v82)
      {
        v85 = *v4;
        v86 = v83 - *v4;
        v87 = v86 >> 3;
        v88 = (v86 >> 3) + 1;
        if (v88 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v89 = v82 - v85;
        if (v89 >> 2 > v88)
        {
          v88 = v89 >> 2;
        }

        v19 = v89 >= 0x7FFFFFFFFFFFFFF8;
        v90 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v90 = v88;
        }

        if (v90)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v90);
        }

        *(8 * v87) = 10;
        v84 = 8 * v87 + 8;
        memcpy(0, v85, v86);
        v91 = a1[1];
        a1[1] = 0;
        a1[2] = v84;
        a1[3] = 0;
        if (v91)
        {
          operator delete(v91);
        }
      }

      else
      {
        *v83 = 10;
        v84 = (v83 + 1);
      }

      a1[2] = v84;
      v9 = *(this + 30);
    }

    if (v9[8] == 1)
    {
      v93 = a1[2];
      v92 = a1[3];
      if (v93 >= v92)
      {
        v95 = *v4;
        v96 = v93 - *v4;
        v97 = (v96 >> 3) + 1;
        if (v97 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v98 = v92 - v95;
        if (v98 >> 2 > v97)
        {
          v97 = v98 >> 2;
        }

        v19 = v98 >= 0x7FFFFFFFFFFFFFF8;
        v99 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v99 = v97;
        }

        if (v99)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v99);
        }

        v100 = (8 * (v96 >> 3));
        *v100 = 11;
        v94 = (v100 + 1);
        memcpy(0, v95, v96);
        v101 = a1[1];
        a1[1] = 0;
        a1[2] = v94;
        a1[3] = 0;
        if (v101)
        {
          operator delete(v101);
        }
      }

      else
      {
        *v93 = 11;
        v94 = (v93 + 1);
      }

      a1[2] = v94;
    }

    if (*(a1 + 88) == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(v169, "None");
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v102 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    if ((v170[15] & 0x80000000) != 0)
    {
      operator delete(*v169);
    }

    goto LABEL_140;
  }

  v13 = ULService::requiresIO(this);
  if (v13)
  {
    v9 = *(this + 30);
    if (v9[8] == 1)
    {
      if (*v9)
      {
LABEL_5:
        v11 = a1[2];
        v10 = a1[3];
        if (v11 >= v10)
        {
          v14 = *v4;
          v15 = v11 - *v4;
          v16 = v15 >> 3;
          v17 = (v15 >> 3) + 1;
          if (v17 >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v18 = v10 - v14;
          if (v18 >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          v19 = v18 >= 0x7FFFFFFFFFFFFFF8;
          v20 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v19)
          {
            v20 = v17;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v20);
          }

          *(8 * v16) = 2;
          v12 = 8 * v16 + 8;
          memcpy(0, v14, v15);
          v21 = a1[1];
          a1[1] = 0;
          a1[2] = v12;
          a1[3] = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v11 = 2;
          v12 = (v11 + 1);
        }

        a1[2] = v12;
        v9 = *(this + 30);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  v143 = **(this + 33);
  if (v143 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  if (((*(this + 4) >> v143) & 1) == 0)
  {
    v148 = a1[2];
    v147 = a1[3];
    if (v148 < v147)
    {
      *v148 = 0;
      v146 = (v148 + 1);
      goto LABEL_234;
    }

    v149 = *v4;
    v150 = v148 - *v4;
    v151 = (v150 >> 3) + 1;
    if (v151 >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v152 = v147 - v149;
    if (v152 >> 2 > v151)
    {
      v151 = v152 >> 2;
    }

    v19 = v152 >= 0x7FFFFFFFFFFFFFF8;
    v153 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v153 = v151;
    }

    if (v153)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v153);
    }

    v157 = (8 * (v150 >> 3));
    *v157 = 0;
    v146 = (v157 + 1);
LABEL_232:
    memcpy(0, v149, v150);
    v13 = a1[1];
    a1[1] = 0;
    a1[2] = v146;
    a1[3] = 0;
    if (v13)
    {
      operator delete(v13);
    }

    goto LABEL_234;
  }

  v13 = *(this + 13);
  if (v13)
  {
    v13 = ULModelAndStates::acceptsScanEventLocalization(v13);
  }

  v103 = *a1;
  if ((v13 & 1) == 0 && v103 == 1)
  {
    v145 = a1[2];
    v144 = a1[3];
    if (v145 < v144)
    {
      *v145 = 1;
      v146 = (v145 + 1);
LABEL_234:
      a1[2] = v146;
LABEL_140:
      v103 = *a1;
      goto LABEL_141;
    }

    v149 = *v4;
    v150 = v145 - *v4;
    v154 = (v150 >> 3) + 1;
    if (v154 >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v155 = v144 - v149;
    if (v155 >> 2 > v154)
    {
      v154 = v155 >> 2;
    }

    v19 = v155 >= 0x7FFFFFFFFFFFFFF8;
    v156 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v156 = v154;
    }

    if (v156)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v156);
    }

    v158 = (8 * (v150 >> 3));
    *v158 = 1;
    v146 = (v158 + 1);
    goto LABEL_232;
  }

LABEL_141:
  if (v103)
  {
    if (v103 == 1 && a1[1] == a1[2])
    {
      v104 = _CLLogObjectForCategory_MicroLocation_Default(v13);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v172 = 2082;
        *v173 = "";
        *&v173[8] = 2082;
        *&v173[10] = "assert";
        *&v173[18] = 2081;
        *&v173[20] = "status.state != ULServiceState::ULServiceStateSuspended || !status.suspendReasons.empty()";
        _os_log_impl(&dword_258FE9000, v104, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:If run state is suspended then suspend reason cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v106 = _CLLogObjectForCategory_MicroLocation_Default(v105);
      if (os_signpost_enabled(v106))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v172 = 2082;
        *v173 = "";
        *&v173[8] = 2082;
        *&v173[10] = "assert";
        *&v173[18] = 2081;
        *&v173[20] = "status.state != ULServiceState::ULServiceStateSuspended || !status.suspendReasons.empty()";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v106, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "If run state is suspended then suspend reason cannot be empty", "{msg%{public}.0s:If run state is suspended then suspend reason cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v108 = _CLLogObjectForCategory_MicroLocation_Default(v107);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v172 = 2082;
        *v173 = "";
        *&v173[8] = 2082;
        *&v173[10] = "assert";
        *&v173[18] = 2081;
        *&v173[20] = "status.state != ULServiceState::ULServiceStateSuspended || !status.suspendReasons.empty()";
        _os_log_impl(&dword_258FE9000, v108, OS_LOG_TYPE_INFO, "{msg%{public}.0s:If run state is suspended then suspend reason cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v109 = 570;
LABEL_242:

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ServiceManager/ULService.mm", v109, "getCurrentStatus");
      __break(1u);
      return;
    }
  }

  else if (a1[1] != a1[2])
  {
    v159 = _CLLogObjectForCategory_MicroLocation_Default(v13);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v172 = 2082;
      *v173 = "";
      *&v173[8] = 2082;
      *&v173[10] = "assert";
      *&v173[18] = 2081;
      *&v173[20] = "status.state != ULServiceState::ULServiceStateRunning || status.suspendReasons.empty()";
      _os_log_impl(&dword_258FE9000, v159, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:If run state is running then suspend reason must be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v161 = _CLLogObjectForCategory_MicroLocation_Default(v160);
    if (os_signpost_enabled(v161))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v172 = 2082;
      *v173 = "";
      *&v173[8] = 2082;
      *&v173[10] = "assert";
      *&v173[18] = 2081;
      *&v173[20] = "status.state != ULServiceState::ULServiceStateRunning || status.suspendReasons.empty()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v161, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "If run state is running then suspend reason must be empty", "{msg%{public}.0s:If run state is running then suspend reason must be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v108 = _CLLogObjectForCategory_MicroLocation_Default(v162);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v172 = 2082;
      *v173 = "";
      *&v173[8] = 2082;
      *&v173[10] = "assert";
      *&v173[18] = 2081;
      *&v173[20] = "status.state != ULServiceState::ULServiceStateRunning || status.suspendReasons.empty()";
      _os_log_impl(&dword_258FE9000, v108, OS_LOG_TYPE_INFO, "{msg%{public}.0s:If run state is running then suspend reason must be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v109 = 571;
    goto LABEL_242;
  }

  v110 = *(this + 24);
  *(a1 + 2) = *(this + 8);
  *(a1 + 3) = v110;
  v111 = *(this + 13);
  if (v111)
  {
    if (v111[304] == 1)
    {
      QualityIndicator = CLMicroLocationModel::getQualityIndicator(v111);
      v113 = *(this + 13);
      if (*(v113 + 304) == 1)
      {
        CandidateQualityIndicator = CLMicroLocationModel::getCandidateQualityIndicator(v113);
        *(a1 + 232) = ULService::internalQualityToIsMapValid(QualityIndicator, CandidateQualityIndicator);
        v115 = *(this + 13);
        if (*(v115 + 304) == 1)
        {
          *v6 = CLMicroLocationModel::numClusters(v115);
          v116 = *(this + 13);
          if (*(v116 + 304) == 1)
          {
            *(a1 + 26) = *(v116 + 148);
            *(a1 + 29) = CLMicroLocationModel::numRecordingsBeforePruning(v116);
            v117 = *(this + 13);
            if (*(v117 + 304) == 1)
            {
              *(a1 + 30) = (*(v117 + 184) - *(v117 + 176)) >> 5;
              *(a1 + 124) = *(v117 + 160);
              *(a1 + 33) = *(v117 + 168);
              *(a1 + 25) = *(v117 + 144);
              *(a1 + 108) = *(v117 + 152);
              goto LABEL_167;
            }
          }
        }
      }

LABEL_243:
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (v111[520] == 1)
    {
      *(a1 + 232) = 1;
      Rois = ULHomeSlamModel::getRois((v111 + 312));
      *v6 = (Rois[1] - *Rois) >> 5;
      v119 = *(this + 13);
      if (*(v119 + 520) != 1)
      {
        goto LABEL_243;
      }

      v120 = ULHomeSlamModel::getRois((v119 + 312));
      if (a1 + 21 != v120)
      {
        std::vector<ULROI>::__assign_with_size[abi:ne200100]<ULROI*,ULROI*>((a1 + 21), *v120, v120[1], (v120[1] - *v120) >> 5);
      }

      v121 = *(this + 13);
      if ((*(v121 + 520) & 1) == 0)
      {
        goto LABEL_243;
      }

      ULHomeSlamModel::getTrajectoryPointCloud((v121 + 312));
      std::__optional_storage_base<ULTrajectoryPointCloud,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULTrajectoryPointCloud,false> const&>((a1 + 24), v122);
      v123 = *(this + 13);
      if ((*(v123 + 520) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULHomeSlamModel::getMetadata((v123 + 312), buf);
      v124 = v174;
      *(a1 + 26) = *&v173[18];
      *(a1 + 124) = v175;
      *(a1 + 33) = v176;
      *(a1 + 34) = v124;
      if ((v173[13] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_167:
  v125 = *(this + 33);
  v126 = *(a1 + 88);
  v127 = *(v125 + 16);
  *v5 = *v125;
  v5[2] = v127;
  if ((v126 & 1) == 0)
  {
    *(a1 + 88) = 1;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v128 = a1[1];
  for (i = a1[2]; v128 != i; v128 += 8)
  {
    v130 = ULServiceSuspendReasonToString();
    v131 = v130;
    v132 = [v130 UTF8String];
    v133 = strlen(v132);
    v134 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v173[6], v132, v133);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, " ", 1);
  }

  if ((v181 & 0x10) != 0)
  {
    v136 = v180;
    if (v180 < v178[0])
    {
      v180 = v178[0];
      v136 = v178[0];
    }

    v137 = __src;
    goto LABEL_178;
  }

  if ((v181 & 8) != 0)
  {
    v137 = v174;
    v136 = v176;
LABEL_178:
    v135 = (v136 - v137);
    if (v136 - v137 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v135 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v168) = v136 - v137;
    if (v135)
    {
      memmove(&__p, v137, v135);
    }

    goto LABEL_184;
  }

  v135 = 0;
  HIBYTE(v168) = 0;
LABEL_184:
  *(&__p + v135) = 0;
  if (*(a1 + 88) == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v165, "None");
  v138 = *(a1 + 88);
  if (v138 == 1)
  {
    v135 = ULLocationTypeToString();
    v139 = v135;
    v140 = [v135 UTF8String];
  }

  else
  {
    v140 = "None";
  }

  std::string::basic_string[abi:ne200100]<0>(&v163, v140);
  if (v138)
  {
  }

  if (v7 != (this + 272))
  {
    std::vector<ULMapItem * {__strong}>::__assign_with_size[abi:ne200100]<ULMapItem * {__strong}*,ULMapItem * {__strong}*>(v7, *(this + 34), *(this + 35), (*(this + 35) - *(this + 34)) >> 3);
  }

  if (onceToken_MicroLocationQE_Default != -1)
  {
    ULService::getCurrentStatus();
  }

  v141 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  if (v164 < 0)
  {
    operator delete(v163);
  }

  if (SHIBYTE(v166) < 0)
  {
    operator delete(v165);
  }

  if (SHIBYTE(v168) < 0)
  {
    operator delete(__p);
  }

  *buf = *MEMORY[0x277D82818];
  v142 = *(MEMORY[0x277D82818] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
  *&v173[6] = v142;
  *&v173[14] = MEMORY[0x277D82878] + 16;
  if (v179 < 0)
  {
    operator delete(v178[2]);
  }

  *&v173[14] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v173[22]);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v182);
}
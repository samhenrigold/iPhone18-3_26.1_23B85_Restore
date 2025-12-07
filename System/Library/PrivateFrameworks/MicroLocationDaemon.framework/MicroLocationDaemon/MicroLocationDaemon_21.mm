CLMicroLocationFingerprint *std::optional<CLMicroLocationFingerprint>::operator=[abi:ne200100]<CLMicroLocationFingerprint&,void>(CLMicroLocationFingerprint *a1, const CLMicroLocationFingerprint *a2)
{
  if (*(a1 + 224) == 1)
  {
    CLMicroLocationFingerprint::operator=(a1, a2);
  }

  else
  {
    CLMicroLocationFingerprint::CLMicroLocationFingerprint(a1, a2);
    *(a1 + 224) = 1;
  }

  return a1;
}

void CLMicroLocationFingerprint::toProtobuf(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CLMicroLocationProto::Fingerprint::Fingerprint(a3);
  for (i = *(a1 + 16); i; i = *i)
  {
    CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement((i + 2), __p, v6);
    v8 = *(a3 + 84);
    v9 = *(a3 + 80);
    if (v9 >= v8)
    {
      if (v8 == *(a3 + 88))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 72));
        v8 = *(a3 + 84);
      }

      *(a3 + 84) = v8 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::FingerprintMeasurement>::New();
    }

    v10 = *(a3 + 72);
    *(a3 + 80) = v9 + 1;
    CLMicroLocationProto::FingerprintMeasurement::CopyFrom(*(v10 + 8 * v9), __p);
    CLMicroLocationProto::FingerprintMeasurement::~FingerprintMeasurement(__p);
  }

  v11 = MEMORY[0x277D82C30];
  if (*(a2 + 16))
  {
    *(&__p[0].__r_.__value_.__s + 23) = 16;
    *&__p[0].__r_.__value_.__l.__data_ = *a2;
    __p[0].__r_.__value_.__s.__data_[16] = 0;
    *(a3 + 128) |= 0x20u;
    v12 = *(a3 + 64);
    if (v12 == v11)
    {
      operator new();
    }

    std::string::operator=(v12, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  v13 = *(a3 + 128);
  *(a3 + 40) = *(a1 + 144);
  *(&__p[0].__r_.__value_.__s + 23) = 16;
  *&__p[0].__r_.__value_.__l.__data_ = *(a1 + 40);
  __p[0].__r_.__value_.__s.__data_[16] = 0;
  *(a3 + 128) = v13 | 0x1C;
  v14 = *(a3 + 56);
  if (v14 == v11)
  {
    operator new();
  }

  std::string::operator=(v14, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v15 = *(a1 + 56);
  v16 = *(a3 + 128);
  *(a3 + 120) = (v15 & 0x20) != 0;
  *(a3 + 128) = v16 | 0x180;
  *(a3 + 121) = (v15 & 0x40) != 0;
  v18 = *(a1 + 200);
  v17 = *(a1 + 208);
  while (v18 != v17)
  {
    ULPhotoFeaturesDO::toProtobuf(v18, __p);
    v19 = *(a3 + 108);
    v20 = *(a3 + 104);
    if (v20 >= v19)
    {
      if (v19 == *(a3 + 112))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 96));
        v19 = *(a3 + 108);
      }

      *(a3 + 108) = v19 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::PhotoFeatures>::New();
    }

    v21 = *(a3 + 96);
    *(a3 + 104) = v20 + 1;
    CLMicroLocationProto::PhotoFeatures::CopyFrom(*(v21 + 8 * v20), __p);
    CLMicroLocationProto::PhotoFeatures::~PhotoFeatures(__p);
    v18 = (v18 + 32);
  }
}

void sub_259179754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  CLMicroLocationProto::Fingerprint::~Fingerprint(v14);
  _Unwind_Resume(a1);
}

void *CLMicroLocationFingerprint::removeMeasurementsFromSourcesOtherThan(void *result, int a2, uint64_t *a3)
{
  v3 = result[2];
  if (v3)
  {
    v6 = result;
    do
    {
      while (1)
      {
        if (*(v3 + 6) == a2)
        {
          result = std::__find[abi:ne200100]<std::variant<unsigned long long,boost::uuids::uuid,std::string> *,std::variant<unsigned long long,boost::uuids::uuid,std::string> *,std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__identity>(*a3, a3[1], (v3 + 4));
          if (result == a3[1])
          {
            break;
          }
        }

        v3 = *v3;
        if (!v3)
        {
          return result;
        }
      }

      v7 = *v3;
      std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(v6, v3, v8);
      result = std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](v8);
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

ULScanningEventDO *CLMicroLocationFingerprint::create@<X0>(uint64_t *__return_ptr a1@<X8>, ULScanningEventDO *this@<X0>, const ULScanningEventDO *a3@<X1>)
{
  v4 = this;
  v15[3] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 224) = 0;
  if (*&this[2].var0.data[8] == this[2].var1.var0.var1.var0 && this[3].var1.var0.var1.var0 == this[3].var1.var0.var1.var1)
  {
    v7 = *this[5].var0.data;
    v8 = *&this[5].var0.data[8];
    v6 = v7 == v8;
    if (*(&this[2].var1.var0.var1 + 2) == *this[3].var0.data && v7 == v8)
    {
      return this;
    }
  }

  else
  {
    v6 = *this[5].var0.data == *&this[5].var0.data[8];
  }

  CLMicroLocationFingerprint::CLMicroLocationFingerprint(v10, this, a3);
  if (!v6 && (v4[1].var1.var0.var0.var0[4] & 1) != 0 || CLMicroLocationFingerprint::isFingerprintValid(v10, a3->var0.data))
  {
    std::optional<CLMicroLocationFingerprint>::operator=[abi:ne200100]<CLMicroLocationFingerprint&,void>(a1, v10);
  }

  v9 = v15;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v12);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v11);
  return std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v10);
}

void CLMicroLocationFingerprint::CLMicroLocationFingerprint(CLMicroLocationFingerprint *this, ULScanningEventDO *a2, const CLMicroLocationFingerprintConfiguration *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 21) = 0;
  *(this + 34) = 1065353216;
  *(this + 25) = 0;
  v17 = this + 200;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 192) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 1065353216;
  v6 = *&a2[2].var0.data[8];
  var0 = a2[2].var1.var0.var1.var0;
  if (v6 != var0)
  {
    v8 = v6 + 16;
    do
    {
      v9 = ULMeasurementFilters::isInvalidRssiFlag(*(v8 + 3)) ^ 1 | *(a3 + 9);
      v10 = ULMeasurementFilters::isRssiOffChannel(*(v8 + 3)) ^ 1 | *(a3 + 8);
      if (v9 & v10)
      {
        CLMicroLocationFingerprint::Measurement::fromWifiMeasurement((v8 - 16), buf);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_multi<CLMicroLocationFingerprint::Measurement>(&v18);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationFingerprint::isFingerprintValid();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        CLMacAddress::toPrettyStr(v8, &__p);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289794;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2082;
        v27 = p_p;
        v28 = 1026;
        v29 = v9 & 1;
        v30 = 1026;
        v31 = v10 & 1;
        _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:shouldProcess, ignore a measurement, macAddress:%{public, location:escape_only}s, shouldProcessPerInvalidRssiFlag:%{public}hhd, shouldProcessPerOffChannelRssiFlag:%{public}hhd}", buf, 0x28u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v13 = v8 + 16;
      v8 += 32;
    }

    while (v13 != var0);
  }

  v14 = *(&a2[2].var1.var0.var1 + 2);
  if (v14 != *a2[3].var0.data)
  {
    CLMicroLocationFingerprint::Measurement::fromBLEMeasurement(v14, buf);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_multi<CLMicroLocationFingerprint::Measurement>(&v18);
  }

  v15 = a2[3].var1.var0.var1.var0;
  if (v15 != a2[3].var1.var0.var1.var1)
  {
    CLMicroLocationFingerprint::Measurement::fromUWBMeasurement(v15, buf);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_multi<CLMicroLocationFingerprint::Measurement>(&v18);
  }

  if (!*(&v19 + 1) && *a2[5].var0.data == *&a2[5].var0.data[8])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationFingerprint::isFingerprintValid();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      CLMicroLocationProtobufHelper::convertToHumanReadableString();
    }
  }

  *(this + 40) = a2->var0;
  *(this + 192) = HIWORD(a2[1].var1.var0.var1.var0) == 2;
  if (this != a2)
  {
    std::vector<ULPhotoFeaturesDO>::__assign_with_size[abi:ne200100]<ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>(v17, *a2[5].var0.data, *&a2[5].var0.data[8], (*&a2[5].var0.data[8] - *a2[5].var0.data) >> 5);
  }

  CLMicroLocationFingerprint::UpdateFingerprintWithMeasurementsAndConfiguration(this, &v18, a3, a2[1].var1.var0.var0.var0[2], a2[1].var1.var0.var0.var0[3]);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v18);
}

void sub_259179D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&a15);
  a23 = a12;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&a23);
  v26 = *a10;
  if (*a10)
  {
    *(v23 + 176) = v26;
    operator delete(v26);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a11);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v23 + 64);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v23);
  _Unwind_Resume(a1);
}

void ***std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(CLMicroLocationFingerprint::Measurement const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long long,boost::uuids::uuid,std::string> const&>(void ***result, uint64_t a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  ***result = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v2) ^ ((0xC6A4A7935BD1E995 * v2) >> 47))) ^ ***result) + 3864292196u;
  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(CLMicroLocationFingerprint::Measurement const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long long,boost::uuids::uuid,std::string> const&>(uint64_t ***a1, char *a2)
{
  v2 = **a1;
  v3 = *v2;
  result = boost::hash<std::string>::operator()(&v5, a2);
  *v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * result) ^ ((0xC6A4A7935BD1E995 * result) >> 47))) ^ v3) + 3864292196u;
  return result;
}

unint64_t boost::hash<std::string>::operator()(uint64_t a1, char *a2)
{
  v2 = a2[23];
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  result = 0;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  for (; v2; --v2)
  {
    v5 = *v3++;
    result = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ result);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationUtils::DeviceIdVisitor<void> &>::operator()[abi:ne200100]<std::__variant_detail::__alt<0ul,unsigned long long> const&>(uint64_t a1)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationUtils::DeviceIdVisitor<void> &>::operator()[abi:ne200100]<std::__variant_detail::__alt<1ul,boost::uuids::uuid> const&>(uint64_t a1)
{
  v2 = *(*a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationUtils::DeviceIdVisitor<void> &>::operator()[abi:ne200100]<std::__variant_detail::__alt<2ul,std::string> const&>(uint64_t a1)
{
  v2 = *(*a1 + 88);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t CLMicroLocationUtils::DeviceIdVisitor<void>::~DeviceIdVisitor(uint64_t a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 64);
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](a1 + 32);

  return std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_123()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,char const(&)[8]>(uint64_t a1, std::string *this, char *__s)
{
  if (*(a1 + 24) == 2)
  {

    std::string::__assign_external(this, __s);
  }

  else
  {
    v9 = v3;
    v10 = v4;
    std::string::basic_string[abi:ne200100]<0>(&v7, __s);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = *&v7;
    *a1 = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = 2;
  }

  return result;
}

void std::vector<ULPhotoFeaturesDO>::__assign_with_size[abi:ne200100]<ULPhotoFeaturesDO const*,ULPhotoFeaturesDO const*>(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<ULPhotoFeaturesDO>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ULPhotoFeaturesDO>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<ULPhotoFeaturesDO *,ULPhotoFeaturesDO *,ULPhotoFeaturesDO *>(&v20, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 32);
        v16 -= 32;
        v17 = v18;
        if (v18)
        {
          *(v15 - 24) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<ULPhotoFeaturesDO *,ULPhotoFeaturesDO *,ULPhotoFeaturesDO *>(&v19, a2, a2 + v12, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO const*,ULPhotoFeaturesDO const*,ULPhotoFeaturesDO*>(a1, a2 + v12, a3, a1[1]);
  }
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO const*,ULPhotoFeaturesDO const*,ULPhotoFeaturesDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v4[3] = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void *std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement>(void *a1, uint64_t a2, _OWORD *a3)
{
  v5 = CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(a1, a2);
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

  v5 = CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(v5, (v12 + 2), a2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_25917A648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(uint64_t result, float *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v56 = v10[1];
          v57 = *(a2 - 1);
          if (v56 > v57)
          {
            v58 = *(v10 + 1);
          }

          else
          {
            v58 = *(a2 - 1);
          }

          if (v56 > v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          *(v10 + 1) = v58;
          v59 = *(a2 - 1);
          if (v59 > *v10)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = *v10;
          }

          if (v59 > *v10)
          {
            v59 = *v10;
          }

          *(a2 - 1) = v59;
          v62 = *v10;
          v61 = v10[1];
          if (v60 <= v61)
          {
            v62 = v10[1];
            v61 = v60;
          }

          *v10 = v62;
          v10[1] = v61;
          return result;
        case 4:
          v86 = v10[1];
          v85 = v10[2];
          if (*v10 > v85)
          {
            v87 = *v10;
          }

          else
          {
            v87 = v10[2];
          }

          if (*v10 <= v85)
          {
            v85 = *v10;
          }

          v10[2] = v85;
          *v10 = v87;
          v88 = *(a2 - 1);
          if (v86 > v88)
          {
            v89 = v86;
          }

          else
          {
            v89 = *(a2 - 1);
          }

          if (v86 <= v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v10;
          if (*v10 > v89)
          {
            v91 = *v10;
          }

          else
          {
            v91 = v89;
          }

          if (*v10 > v89)
          {
            v90 = v89;
          }

          *v10 = v91;
          v10[1] = v90;
          v92 = v10[2];
          v93 = *(a2 - 1);
          if (v92 > v93)
          {
            v94 = v10[2];
          }

          else
          {
            v94 = *(a2 - 1);
          }

          if (v92 > v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v10[1];
          if (v95 > v94)
          {
            v96 = v10[1];
          }

          else
          {
            v96 = v94;
          }

          if (v95 > v94)
          {
            v95 = v94;
          }

          v10[1] = v96;
          v10[2] = v95;
          return result;
        case 5:
          v63 = *v10;
          v64 = v10[1];
          if (*v10 > v64)
          {
            v65 = *v10;
          }

          else
          {
            v65 = v10[1];
          }

          if (*v10 > v64)
          {
            v63 = v10[1];
          }

          *v10 = v65;
          v10[1] = v63;
          v66 = v10[3];
          v67 = *(a2 - 1);
          if (v66 > v67)
          {
            v68 = *(v10 + 3);
          }

          else
          {
            v68 = *(a2 - 1);
          }

          if (v66 > v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          *(v10 + 3) = v68;
          v69 = *(a2 - 1);
          v70 = v10[2];
          if (v69 > v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v10[2];
          }

          if (v69 > v70)
          {
            v69 = v10[2];
          }

          *(a2 - 1) = v69;
          v73 = *(v10 + 2);
          v72 = v10[3];
          v74 = v10[1];
          if (v71 <= v72)
          {
            v73 = *(v10 + 3);
            v72 = v71;
          }

          *(v10 + 2) = v73;
          v10[3] = v72;
          v75 = *(a2 - 1);
          if (v74 > v75)
          {
            v76 = v74;
          }

          else
          {
            v76 = *(a2 - 1);
          }

          if (v74 <= v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v10;
          v79 = v10[2];
          v78 = v10[3];
          if (v78 > *v10)
          {
            v80 = v10[3];
          }

          else
          {
            v80 = *v10;
          }

          if (v78 > *v10)
          {
            v78 = *v10;
          }

          if (v80 <= v79)
          {
            v77 = v10[2];
            v79 = v80;
          }

          if (v78 > v76)
          {
            v81 = v78;
          }

          else
          {
            v81 = v76;
          }

          if (v78 > v76)
          {
            v78 = v76;
          }

          if (v81 <= v79)
          {
            v76 = v79;
          }

          *v10 = v77;
          v10[1] = v76;
          if (v81 > v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v10[2] = v82;
          v10[3] = v78;
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v10;
        if (v83 > *v10)
        {
          *v10 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = *(a2 - 1);
    if (v13 < 0x81)
    {
      if (*v10 > v15)
      {
        v47 = *v10;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v10 <= v15)
      {
        v15 = *v10;
      }

      *(a2 - 1) = v15;
      *v10 = v47;
      v48 = *(a2 - 1);
      v49 = v10[v14];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v10[v14];
      }

      if (v48 > v49)
      {
        v48 = v10[v14];
      }

      *(a2 - 1) = v48;
      v51 = *v10;
      v52 = v50 <= *v10;
      if (v50 > *v10)
      {
        v51 = v10[v14];
      }

      v10[v14] = v51;
      *&a6 = *v10;
      if (v52)
      {
        *&a6 = v50;
      }

      *v10 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v16 = &v10[v14];
      if (*v16 > v15)
      {
        v17 = *v16;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (*v16 <= v15)
      {
        v15 = *v16;
      }

      *(a2 - 1) = v15;
      *v16 = v17;
      v18 = *(a2 - 1);
      if (v18 > *v10)
      {
        v19 = *(a2 - 1);
      }

      else
      {
        v19 = *v10;
      }

      if (v18 > *v10)
      {
        v18 = *v10;
      }

      *(a2 - 1) = v18;
      v20 = *v16;
      v21 = v19 <= *v16;
      if (v19 > *v16)
      {
        v20 = *v10;
      }

      *v10 = v20;
      v23 = *(v16 - 1);
      v22 = *v16;
      if (v21)
      {
        v22 = v19;
      }

      *v16 = v22;
      v24 = *(a2 - 2);
      if (v23 > v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = *(a2 - 2);
      }

      if (v23 <= v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v16 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v10[1];
      if (v26 > v27)
      {
        v28 = *(a2 - 2);
      }

      else
      {
        v28 = v10[1];
      }

      if (v26 > v27)
      {
        v26 = v10[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v16 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v10[1];
      }

      v10[1] = v29;
      v31 = *(v16 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v16 - 1) = v31;
      v32 = v16[1];
      v33 = *(a2 - 3);
      if (v32 > v33)
      {
        v34 = *(v16 + 1);
      }

      else
      {
        v34 = *(a2 - 3);
      }

      if (v32 > v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      *(v16 + 1) = v34;
      v35 = *(a2 - 3);
      v36 = v10[2];
      if (v35 > v36)
      {
        v37 = *(a2 - 3);
      }

      else
      {
        v37 = v10[2];
      }

      if (v35 > v36)
      {
        v35 = v10[2];
      }

      *(a2 - 3) = v35;
      v38 = v16[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v10[2];
      }

      v10[2] = v38;
      v41 = *v16;
      v40 = v16[1];
      if (v39)
      {
        v40 = v37;
      }

      v42 = *(v16 - 1);
      if (v41 > v40)
      {
        v43 = *v16;
      }

      else
      {
        v43 = v40;
      }

      if (v41 <= v40)
      {
        v40 = *v16;
      }

      if (v40 > v42)
      {
        v44 = v40;
      }

      else
      {
        v44 = *(v16 - 1);
      }

      if (v40 > v42)
      {
        v45 = *(v16 - 1);
      }

      else
      {
        v45 = v40;
      }

      if (v44 > v43)
      {
        v46 = *(v16 - 1);
      }

      else
      {
        v46 = v43;
      }

      if (v44 > v43)
      {
        v44 = v43;
      }

      *(v16 - 1) = v46;
      *v16 = v44;
      v16[1] = v45;
      *&a6 = *v10;
      *v10 = v44;
      *v16 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    *&a6 = *(v10 - 1);
    if (*&a6 <= *v10)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2);
      v10 = result;
      goto LABEL_95;
    }

LABEL_90:
    v53 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2, a6);
    if ((v54 & 1) == 0)
    {
      goto LABEL_93;
    }

    v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v10, v53);
    v10 = v53 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v53 + 1, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v55)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v9, v53, a3, -v12, a5 & 1);
      v10 = v53 + 1;
LABEL_95:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v97 = v10 + 1;
  v99 = v10 == a2 || v97 == a2;
  if (a5)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v10;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 > v103)
        {
          v104 = v100;
          while (1)
          {
            *(v10 + v104 + 4) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v10 + v104 - 4);
            v104 -= 4;
            if (v102 <= v103)
            {
              v105 = (v10 + v104 + 4);
              goto LABEL_194;
            }
          }

          v105 = v10;
LABEL_194:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 4;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v9;
      v106 = v9[1];
      v9 = v97;
      if (v106 > v107)
      {
        v108 = v97;
        do
        {
          *v108 = v107;
          v107 = *(v108 - 2);
          --v108;
        }

        while (v106 > v107);
        *v108 = v106;
      }

      ++v97;
    }

    while (v9 + 1 != a2);
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2)
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

float *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2, double a3)
{
  *&a3 = *a1;
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

    while (*&a3 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (*&a3 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (*&a3 > v6);
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
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s32(*&a3, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
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
      v18 = xmmword_25921A960;
      v19 = 0uLL;
      do
      {
        v20 = vmvnq_s8(vcgtq_f32(*(v7 + v12), v13));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
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

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_25921A970;
    v27 = xmmword_25921A960;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_f32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > *&a3) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= *&a3) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = *&a3;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 > v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 > v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 > *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 > *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = *(a1 + 1);
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = *(a1 + 2);
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 > v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = *(a1 + 1);
        }

        if (*a1 > v6)
        {
          v5 = *(a1 + 1);
        }

        *a1 = v7;
        *(a1 + 1) = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 > v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 > v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 > v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 > v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 > v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 <= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 > *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 > *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = *(a1 + 2);
          v21 = v22;
        }

        if (v20 > v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 > v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 > v21)
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

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 > v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 <= v33)
  {
    v33 = a1[1];
  }

  if (v33 > v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 > v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 > v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 > v36)
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
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 > *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(float *a1, float *a2, float *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, v11--);
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
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, a1);
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
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 4) >> 2;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
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
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__find[abi:ne200100]<std::variant<unsigned long long,boost::uuids::uuid,std::string> *,std::variant<unsigned long long,boost::uuids::uuid,std::string> *,std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__identity>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = a1; i != a2; i += 32)
  {
    v6 = *(i + 24);
    v7 = *(a3 + 24);
    if (v6 != -1 && v7 == v6)
    {
      v11 = &v10;
      if ((off_286A5C978[v6])(&v11, i, a3))
      {
        return i;
      }
    }

    else if (v7 == v6)
    {
      return i;
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0>,void ()(unsigned long long const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C9D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0>,void ()(unsigned long long const&)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v2 + 28) |= 1u;
  *(v2 + 8) = v3;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0>,void ()(unsigned long long const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1>,void ()(boost::uuids::uuid const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CA68;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1>,void ()(boost::uuids::uuid const&)>::operator()(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 8);
  *(v2 + 28) |= 2u;
  v3 = *(v2 + 16);
  if (v3 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  if (*(v3 + 23) < 0)
  {
    v3[1] = 16;
    v3 = *v3;
  }

  else
  {
    *(v3 + 23) = 16;
  }

  result = *a2;
  *v3 = *a2;
  *(v3 + 16) = 0;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1>,void ()(boost::uuids::uuid const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CAF8;
  a2[1] = v2;
  return result;
}

std::string *std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2>,void ()(std::string const&)>::operator()(uint64_t a1, std::string *__str)
{
  v2 = *(a1 + 8);
  *(v2 + 28) |= 2u;
  v3 = *(v2 + 16);
  if (v3 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  return std::string::operator=(v3, __str);
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t CLMicroLocationUtils::DeviceIdVisitor<void>::DeviceIdVisitor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = std::__function::__value_func<void ()(unsigned long long const&)>::__value_func[abi:ne200100](a1, a2);
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::__value_func[abi:ne200100](v7 + 32, a3);
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](a1 + 64, a4);
  return a1;
}

void sub_25917BEBC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned long long const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(boost::uuids::uuid const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,CLMicroLocationProto::DataType const&,CLMicroLocationFingerprint::StartAndEndTimestamps>(void *a1, unsigned int *a2, _DWORD *a3, _OWORD *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_25917C33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__equal_range_multi<CLMicroLocationFingerprint::Measurement>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v3 = CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(v3, (v5 + 2), a2);
    }

    while ((v3 & 1) != 0);
  }

  return v4;
}

void *std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(void *a1, uint64_t a2)
{
  v4 = CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(a1, a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        v4 = CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(v4, (v11 + 2), a2);
        if (v4)
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void CLMicroLocationFingerprintDataSources::IInterruptibleDataSource::CancelledException::~CancelledException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x259CA1F90);
}

float CLMicroLocationFingerprintDistanceFunction::euclideanLike(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = &unk_286A5CBC8;
  v15 = xmmword_259221610;
  __asm { FMOV            V0.4S, #1.0 }

  v13 = _Q0;
  v12 = &unk_286A5CC18;
  LODWORD(v9) = CLMicroLocationFingerprintDistanceFunction::computeWeightedEuclideanComponentsAndNumItersect(a1, a2, a3, &v14, &v12, a4);
  if (v10)
  {
    return sqrtf(v9 / v10);
  }

  else
  {
    return INFINITY;
  }
}

float CLMicroLocationFingerprintDistanceFunction::jaccardLike(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *a3;
  if (v9 == 1)
  {
    v10 = (~*(a1 + 56) & ~*(a2 + 56) & v8);
  }

  v18 = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v11 + 2));
      if (v13)
      {
        v12 += CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v18, a4, (v11 + 2), v13[2]);
      }

      v11 = *v11;
    }

    while (v11);
    v8 = *a3;
    if (a3[1])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
LABEL_9:
      v8 = (~*(a1 + 56) & ~*(a2 + 56) & v8);
    }
  }

  v18 = v8;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    do
    {
      v15 += CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v18, a4, (v14 + 2), *(a2 + 144));
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  for (i = *(a2 + 16); i; i = *i)
  {
    v15 += CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v18, a4, (i + 2), *(a1 + 144));
  }

  if (v15 == v12)
  {
    return INFINITY;
  }

  else
  {
    return (v15 - v12 - v12) / (v15 - v12);
  }
}

float CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double d2_0, double a12, double a13, double a14, double a15, double a16, uint64_t a11)
{
  v23 = *&a10;
  v24 = *&a9;
  CLMicroLocationFingerprintDistanceFunction::photoFeaturesDistance(a1, a2, a8, a9, a10, d2_0, a12, a13, a14, a15, a16);
  if (result == INFINITY)
  {
    if (!(*(a1 + 24) | *(a2 + 24)))
    {
      return INFINITY;
    }

    v28 = CLMicroLocationFingerprintDistanceFunction::computeWeightedEuclideanComponentsAndNumItersect(a1, a2, a8, a3, a4, a11);
    if (v30)
    {
      v31 = *&v28;
      v32 = HIDWORD(v28);
      v33 = *a8;
      if (*(a8 + 8) == 1)
      {
        v33 = (~*(a1 + 56) & ~*(a2 + 56) & v33);
      }

      v55 = v33;
      v34 = *(a1 + 16);
      if (v34)
      {
        v35 = 0.0;
        v36 = 0.0;
        do
        {
          if (CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v55, a11, (v34 + 2), *(a2 + 144)))
          {
            v37 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v34 + 2));
            v38 = *(v34 + 6);
            if (v37)
            {
              v36 = v36 + (*(*a5 + 16))(a5, v38);
            }

            else
            {
              v35 = v35 + (*(*a6 + 16))(a6, v38);
            }
          }

          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        v36 = 0.0;
        v35 = 0.0;
      }

      for (i = *(a2 + 16); i; i = *i)
      {
        if (CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v55, a11, (i + 2), *(a1 + 144)) && !std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a1, (i + 2)) && ((*(*a7 + 16))(a7, *(i + 6)) & 1) == 0)
        {
          v35 = v35 + (*(*a6 + 16))(a6, *(i + 6));
        }
      }

      if (*&v32 == 0.0 || (v29.n128_f32[0] = v36 + v35, (v36 + v35) == 0.0))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance();
        }

        v42 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *v54 = 0;
          _os_log_impl(&dword_258FE9000, v42, OS_LOG_TYPE_ERROR, "euclidean denominator or jaccardDenominator are 0, this can only happen if weights are 0, check configuration!", v54, 2u);
        }

        return INFINITY;
      }

      if (v23 <= 0.0 || v23 > 1.0)
      {
        v43 = CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance(v29);
        CLMicroLocationFingerprintDistanceFunction::photoFeaturesDistance(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      }

      else
      {
        v40 = *&v32 / (v29.n128_f32[0] + *&v32);
        v41 = fminf(v40 / v23, 1.0);
        if (v23 < 1.0)
        {
          v40 = v41;
        }

        return (((v35 / v29.n128_f32[0]) * v24) * (1.0 - v40)) + (sqrtf(v31 / *&v32) * v40);
      }
    }

    else
    {
      return v24;
    }
  }

  return result;
}

void CLMicroLocationFingerprintDistanceFunction::photoFeaturesDistance(void *a1, void *a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *a3;
  if (*(a3 + 8) == 1)
  {
    v13 &= (a1[7] ^ 0xFFLL) & ~a2[7];
  }

  if ((v13 & 0x80) != 0)
  {
    v14 = a1[25];
    v15 = a1[26] - v14;
    if (v15)
    {
      if (v15 == a2[26] - a2[25])
      {
        v16 = 0;
        v17 = 0;
        v18 = 0.0;
        do
        {
          LODWORD(a5) = 1.0;
          CLMicroLocationFingerprintDistanceFunction::computeWeightedSumSquaredDifference((v14 + v16), a2[25] + v16, 0.5, a5, a6, a7, a8, a9, a10, a11, v20, v21);
          v18 = v18 + v19;
          ++v17;
          v14 = a1[25];
          v16 += 32;
        }

        while (v17 < (a1[26] - v14) >> 5);
      }
    }
  }
}

id CLMicroLocationFingerprintDistanceFunction::computeWeightedEuclideanComponentsAndNumItersect(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a3;
  if (*(a3 + 8) == 1)
  {
    v10 = (~*(a1 + 56) & ~*(a2 + 56) & v10);
  }

  v23 = v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0.0;
  v14 = 0.0;
  while (1)
  {
    v15 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v11 + 2));
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = v15;
    if (!CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v23, a6, (v11 + 2), v15[2]))
    {
      goto LABEL_9;
    }

    v17 = (*(*a5 + 16))(a5, *(v11 + 6));
    v18 = (*(*a4 + 16))(a4, *(v11 + 6));
    if (*(v11 + 6) != *(v16 + 6))
    {
      break;
    }

    v20 = *(v11 + 7) - *(v16 + 7);
    v14 = v14 + (((v19 * v20) * (v19 * v20)) * v17);
    ++v12;
    v13 = v13 + v17;
LABEL_9:
    v11 = *v11;
    if (!v11)
    {
      return (LODWORD(v14) | (LODWORD(v13) << 32));
    }
  }

  CLMicroLocationFingerprintDistanceFunction::computeWeightedEuclideanComponentsAndNumItersect(v18);
  return _CLLogObjectForCategory_MicroLocation_Default(v22);
}

id _CLLogObjectForCategory_MicroLocation_Default(__n128 a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance();
  }

  v2 = logObject_MicroLocation_Default;

  return v2;
}

float CLMicroLocationFingerprintDistanceFunction::removeNonIndicativeAPsDistance(void *a1, void *a2, unint64_t a3, float a4, float a5, float a6, float a7)
{
  v14 = a1[2];
  if (v14)
  {
    while ((*(v14 + 6) | 4) == 5 || !std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v14 + 2)))
    {
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (a1[26] == a1[25] || a2[26] == a2[25])
    {
      v15 = a1[2];
      if (v15)
      {
        v16 = 0;
        v17 = -INFINITY;
        do
        {
          if ((*(v15 + 6) | 4) == 5)
          {
            v18 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v15 + 4));
            if (v18)
            {
              ++v16;
              v19 = v18[7];
              if (v19 >= v15[7])
              {
                v19 = v15[7];
              }

              if (v19 > v17)
              {
                v17 = v19;
              }
            }
          }

          v15 = *v15;
        }

        while (v15);
        v20 = v16;
      }

      else
      {
        v20 = 0;
        v17 = -INFINITY;
      }

      if (v17 > a4 && v20 >= a3 && (a5 * a7) < a6)
      {
        return a5 * a7;
      }

      else
      {
        return INFINITY;
      }
    }
  }

  return a7;
}

void CLMicroLocationFingerprintDistanceFunction::computeWeightedSumSquaredDifference(float **result, uint64_t a2, float a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *result;
  v11 = result[1];
  v13 = *a2;
  if (v11 - *result == *(a2 + 8) - *a2)
  {
    if (v12 != v11)
    {
      v14 = 0.0;
      do
      {
        v15 = *v12++;
        v16 = v15;
        v17 = *v13++;
        v14 = v14 + (((v16 - v17) * a3) * ((v16 - v17) * a3));
      }

      while (v12 != v11);
    }
  }

  else
  {
    v18 = CLMicroLocationFingerprintDistanceFunction::computeWeightedSumSquaredDifference(a3);
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates3D(v18, v19, v20, v21, v22, v23, v24, v25, a11, a12);
  }
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates3D(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if ((a9 - a1) * (a5 - a2) - (a4 - a1) * (a10 - a2) == 0.0)
  {
    SlopeAndInterceptFromCoordinates3D = CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates3D();
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(SlopeAndInterceptFromCoordinates3D, v11, v12, v13, v14);
  }
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(uint64_t result, uint64_t a2, double a3, double a4, double a5)
{
  if (a5 - a3 == 0.0)
  {
    SlopeAndInterceptFromCoordinates2D = CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(result, a2);
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(SlopeAndInterceptFromCoordinates2D, v6, v7);
  }
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v61 = v5;
  switch(a2)
  {
    case 1:
      v7 = @"wifi";
LABEL_7:
      v62 = [v5 objectForKeyedSubscript:@"distribution_params"];
      v63 = [v62 objectForKeyedSubscript:@"probability_density_working_points"];
      v8 = [v63 objectForKey:v7];
      v64 = v8;
      v9 = [v8 objectForKeyedSubscript:@"seen_in_both"];
      v10 = v9;
      v11 = 2.5;
      v12 = -32.5;
      v67 = -92.5;
      v13 = 62.5;
      if (a2 != 1 && a2 != 5)
      {
        v11 = 0.5;
        v13 = 12.5;
        v67 = 12.5;
        v12 = 0.5;
      }

      v66 = [v9 objectForKeyedSubscript:{@"(max_meas_intensity_bin, min_abs_diff_bin)_sigma"}];
      v65 = [v10 objectForKeyedSubscript:{@"(max_meas_intensity_bin, min_abs_diff_bin)_mu"}];
      v14 = [v10 objectForKeyedSubscript:{@"(min_meas_intensity_bin, min_abs_diff_bin)_sigma"}];
      v15 = [v10 objectForKeyedSubscript:{@"(max_meas_intensity_bin, max_abs_diff_bin)_sigma"}];
      v16 = [v10 objectForKeyedSubscript:{@"(max_meas_intensity_bin, max_abs_diff_bin)_mu"}];
      [v66 doubleValue];
      v18 = v17;
      [v14 doubleValue];
      v20 = v19;
      [v15 doubleValue];
      [v65 doubleValue];
      v22 = v21;
      [v16 doubleValue];
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates3D(v12, v11, v18, v67, v11, v20, v23, v24, v12, v13);
      v59 = v26;
      v60 = v25;
      v58 = v27;
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(v28, v29, v11, v22, v13);
      v31 = v30;
      v33 = v32;
      v34 = [v8 objectForKeyedSubscript:@"seen_in_one"];
      v35 = [v34 objectForKeyedSubscript:@"(min_meas)_mu"];
      v36 = [v34 objectForKeyedSubscript:@"(min_meas)_sigma"];
      v37 = [v34 objectForKeyedSubscript:@"(max_meas)_mu"];
      v38 = [v34 objectForKeyedSubscript:@"(max_meas)_sigma"];
      [v36 doubleValue];
      v40 = v39;
      [v38 doubleValue];
      [v35 doubleValue];
      v42 = v41;
      v43 = [v37 doubleValue];
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(v43, v44, v67, v40, v12);
      v46 = v45;
      v48 = v47;
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(v49, v50, v67, v42, v12);
      *a3 = v60;
      a3[1] = v59;
      a3[2] = v58;
      a3[3] = v31;
      a3[4] = v33;
      a3[5] = v46;
      a3[6] = v48;
      a3[7] = v51;
      a3[8] = v52;

      return;
    case 6:
      v7 = @"uwb";
      goto LABEL_7;
    case 5:
      v7 = @"ble";
      goto LABEL_7;
  }

  v53 = _CLLogObjectForCategory_MicroLocation_Default(v6);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    v69 = 2082;
    v70 = "";
    v71 = 1026;
    v72 = a2;
    v73 = 2082;
    v74 = "assert";
    v75 = 2081;
    v76 = "false";
    _os_log_impl(&dword_258FE9000, v53, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported tech type, techType:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v55 = _CLLogObjectForCategory_MicroLocation_Default(v54);
  if (os_signpost_enabled(v55))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    v69 = 2082;
    v70 = "";
    v71 = 1026;
    v72 = a2;
    v73 = 2082;
    v74 = "assert";
    v75 = 2081;
    v76 = "false";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported tech type", "{msg%{public}.0s:Unsupported tech type, techType:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v57 = _CLLogObjectForCategory_MicroLocation_Default(v56);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    v69 = 2082;
    v70 = "";
    v71 = 1026;
    v72 = a2;
    v73 = 2082;
    v74 = "assert";
    v75 = 2081;
    v76 = "false";
    _os_log_impl(&dword_258FE9000, v57, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unsupported tech type, techType:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationFingerprintDistanceFunction.mm", 423, "techTypeToString");
  __break(1u);
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParametricModelFromConfiguration(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *this@<X0>, uint64_t a2@<X8>)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = this;
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(v9, 1, &v20);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(v9, 5, &v15);
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(v9, 6, &v10);
  v3 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v3;
  v4 = v21;
  *a2 = v20;
  *(a2 + 16) = v4;
  v5 = v15;
  *(a2 + 88) = v16;
  v6 = v18;
  *(a2 + 104) = v17;
  *(a2 + 64) = v24;
  *(a2 + 120) = v6;
  *(a2 + 136) = v19;
  *(a2 + 72) = v5;
  *(a2 + 208) = v14;
  v7 = v13;
  *(a2 + 176) = v12;
  *(a2 + 192) = v7;
  v8 = v11;
  *(a2 + 144) = v10;
  *(a2 + 160) = v8;
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionFunctionSettings(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *this@<X0>, uint64_t a2@<X8>)
{
  v141 = *MEMORY[0x277D85DE8];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0;
  v95 = this;
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParametricModelFromConfiguration(v95, &v111);
  v94 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 valueForKeyPath:@"distribution_params.xAxis.min_value"];
  v3 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 valueForKeyPath:@"distribution_params.xAxis.max_value"];
  v4 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 valueForKeyPath:@"distribution_params.xAxis.n_bins"];
  v6 = v4;
  if (!v94)
  {
    v48 = _CLLogObjectForCategory_MicroLocation_Default(v5);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMinValue";
      _os_log_impl(&dword_258FE9000, v48, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMinValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v49);
    if (os_signpost_enabled(v50))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMinValue";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v50, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMinValue in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMinValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v52 = _CLLogObjectForCategory_MicroLocation_Default(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMinValue";
      _os_log_impl(&dword_258FE9000, v52, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMinValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v53 = 644;
    goto LABEL_34;
  }

  if (!v3)
  {
    v54 = _CLLogObjectForCategory_MicroLocation_Default(v5);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMaxValue";
      _os_log_impl(&dword_258FE9000, v54, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMaxValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v56 = _CLLogObjectForCategory_MicroLocation_Default(v55);
    if (os_signpost_enabled(v56))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMaxValue";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v56, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMaxValue in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMaxValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v52 = _CLLogObjectForCategory_MicroLocation_Default(v57);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMaxValue";
      _os_log_impl(&dword_258FE9000, v52, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMaxValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v53 = 645;
    goto LABEL_34;
  }

  if (!v4)
  {
    v58 = _CLLogObjectForCategory_MicroLocation_Default(v5);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisNBins";
      _os_log_impl(&dword_258FE9000, v58, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisNBins in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v60 = _CLLogObjectForCategory_MicroLocation_Default(v59);
    if (os_signpost_enabled(v60))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisNBins";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v60, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisNBins in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisNBins in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v52 = _CLLogObjectForCategory_MicroLocation_Default(v61);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisNBins";
      _os_log_impl(&dword_258FE9000, v52, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisNBins in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v53 = 646;
LABEL_34:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationFingerprintDistanceFunction.mm", v53, "parseDistributionFunctionSettings");
    goto LABEL_78;
  }

  [v94 doubleValue];
  v8 = v7;
  [v3 doubleValue];
  v10 = v9;
  [v6 doubleValue];
  v12 = v11;
  v13 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 objectForKeyedSubscript:@"binning_params"];
  v110 = 0;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v14 = [v13 objectForKeyedSubscript:@"wifi"];
  CLMicroLocationFingerprintDistanceFunction::parseBinningParamsForTechType(&v106, v14);

  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v15 = [v13 objectForKeyedSubscript:@"ble"];
  CLMicroLocationFingerprintDistanceFunction::parseBinningParamsForTechType(&v101, v15);

  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v16 = [v13 objectForKeyedSubscript:@"uwb"];
  CLMicroLocationFingerprintDistanceFunction::parseBinningParamsForTechType(&v96, v16);

  *&buf[32] = v108;
  v134 = v109;
  *buf = v106;
  *&buf[16] = v107;
  *&v135[24] = v102;
  *&v135[40] = v103;
  *&v135[56] = v104;
  *v135 = v110;
  *&v135[72] = v105;
  *&v135[8] = v101;
  v140 = v100;
  v138 = v98;
  v139 = v99;
  v136 = v96;
  v137 = v97;
  v17 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 valueForKeyPath:@"inference_params.fusion_weights.wifi.seen_in_both"];
  v18 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 valueForKeyPath:@"inference_params.fusion_weights.wifi.seen_in_one"];
  v19 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 valueForKeyPath:@"inference_params.fusion_weights.ble.seen_in_both"];
  v20 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 valueForKeyPath:@"inference_params.fusion_weights.ble.seen_in_one"];
  v21 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 valueForKeyPath:@"inference_params.fusion_weights.uwb.seen_in_both"];
  v22 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v95 valueForKeyPath:@"inference_params.fusion_weights.uwb.seen_in_one"];
  v24 = v22;
  if (!v17)
  {
    v62 = _CLLogObjectForCategory_MicroLocation_Default(v23);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "wifiSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v62, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v64 = _CLLogObjectForCategory_MicroLocation_Default(v63);
    if (os_signpost_enabled(v64))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "wifiSeenInBothWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v64, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInBothWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v66 = _CLLogObjectForCategory_MicroLocation_Default(v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "wifiSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v66, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v67 = v66;
    v68 = 668;
    goto LABEL_77;
  }

  if (!v18)
  {
    v69 = _CLLogObjectForCategory_MicroLocation_Default(v23);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "wifiSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v69, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v71 = _CLLogObjectForCategory_MicroLocation_Default(v70);
    if (os_signpost_enabled(v71))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "wifiSeenInOneWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v71, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInOneWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v73 = _CLLogObjectForCategory_MicroLocation_Default(v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "wifiSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v73, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v67 = v73;
    v68 = 669;
    goto LABEL_77;
  }

  if (!v19)
  {
    v74 = _CLLogObjectForCategory_MicroLocation_Default(v23);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "bleSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v74, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v76 = _CLLogObjectForCategory_MicroLocation_Default(v75);
    if (os_signpost_enabled(v76))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "bleSeenInBothWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v76, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInBothWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v78 = _CLLogObjectForCategory_MicroLocation_Default(v77);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "bleSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v78, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v67 = v78;
    v68 = 670;
    goto LABEL_77;
  }

  if (!v20)
  {
    v79 = _CLLogObjectForCategory_MicroLocation_Default(v23);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "bleSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v79, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v81 = _CLLogObjectForCategory_MicroLocation_Default(v80);
    if (os_signpost_enabled(v81))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "bleSeenInOneWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v81, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInOneWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v83 = _CLLogObjectForCategory_MicroLocation_Default(v82);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "bleSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v83, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v67 = v83;
    v68 = 671;
    goto LABEL_77;
  }

  if (!v21)
  {
    v84 = _CLLogObjectForCategory_MicroLocation_Default(v23);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "uwbSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v84, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v86 = _CLLogObjectForCategory_MicroLocation_Default(v85);
    if (os_signpost_enabled(v86))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "uwbSeenInBothWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v86, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInBothWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v88 = _CLLogObjectForCategory_MicroLocation_Default(v87);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "uwbSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v88, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v67 = v88;
    v68 = 672;
    goto LABEL_77;
  }

  if (!v22)
  {
    v89 = _CLLogObjectForCategory_MicroLocation_Default(v23);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "uwbSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v89, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v91 = _CLLogObjectForCategory_MicroLocation_Default(v90);
    if (os_signpost_enabled(v91))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "uwbSeenInOneWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v91, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInOneWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v93 = _CLLogObjectForCategory_MicroLocation_Default(v92);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      *v125 = 68289539;
      v126 = 0;
      v127 = 2082;
      v128 = "";
      v129 = 2082;
      v130 = "assert";
      v131 = 2081;
      v132 = "uwbSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v93, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v125, 0x26u);
    }

    v67 = v93;
    v68 = 673;
LABEL_77:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationFingerprintDistanceFunction.mm", v68, "parseDistributionFunctionSettings");
LABEL_78:
    __break(1u);
  }

  [v17 doubleValue];
  v26 = v25;
  [v18 doubleValue];
  v28 = v27;
  [v19 doubleValue];
  v30 = v29;
  [v20 doubleValue];
  v32 = v31;
  [v21 doubleValue];
  v34 = v33;
  [v24 doubleValue];
  v35 = v122;
  *(a2 + 160) = v121;
  *(a2 + 176) = v35;
  *(a2 + 192) = v123;
  *(a2 + 208) = v124;
  v36 = v118;
  *(a2 + 96) = v117;
  *(a2 + 112) = v36;
  v37 = v120;
  *(a2 + 128) = v119;
  *(a2 + 144) = v37;
  v38 = v114;
  *(a2 + 32) = v113;
  *(a2 + 48) = v38;
  v39 = v116;
  *(a2 + 64) = v115;
  *(a2 + 80) = v39;
  v40 = v112;
  *a2 = v111;
  *(a2 + 16) = v40;
  *(a2 + 216) = v8;
  *(a2 + 224) = v10;
  *(a2 + 232) = v12;
  v41 = v138;
  *(a2 + 400) = v137;
  *(a2 + 416) = v41;
  *(a2 + 432) = v139;
  *(a2 + 448) = v140;
  v42 = *&v135[48];
  *(a2 + 336) = *&v135[32];
  *(a2 + 352) = v42;
  v43 = v136;
  *(a2 + 368) = *&v135[64];
  *(a2 + 384) = v43;
  v44 = v134;
  *(a2 + 272) = *&buf[32];
  *(a2 + 288) = v44;
  v45 = *&v135[16];
  *(a2 + 304) = *v135;
  *(a2 + 320) = v45;
  v46 = *&buf[16];
  *(a2 + 240) = *buf;
  *(a2 + 256) = v46;
  *(a2 + 456) = v26;
  *(a2 + 464) = v28;
  *(a2 + 472) = v30;
  *(a2 + 480) = v32;
  *(a2 + 488) = v34;
  *(a2 + 496) = v47;
}

void CLMicroLocationFingerprintDistanceFunction::parseBinningParamsForTechType(uint64_t *__return_ptr a1@<X8>, CLMicroLocationFingerprintDistanceFunction *this@<X0>)
{
  v95 = *MEMORY[0x277D85DE8];
  v86 = this;
  v3 = [(CLMicroLocationFingerprintDistanceFunction *)v86 objectForKeyedSubscript:@"seen_in_both"];
  v4 = [v3 objectForKeyedSubscript:@"meas_intensity_dim"];
  v84 = [v4 objectForKeyedSubscript:@"min"];

  v5 = [(CLMicroLocationFingerprintDistanceFunction *)v86 objectForKeyedSubscript:@"seen_in_both"];
  v6 = [v5 objectForKeyedSubscript:@"meas_intensity_dim"];
  v85 = [v6 objectForKeyedSubscript:@"max"];

  v7 = [(CLMicroLocationFingerprintDistanceFunction *)v86 objectForKeyedSubscript:@"seen_in_both"];
  v8 = [v7 objectForKeyedSubscript:@"meas_intensity_dim"];
  v9 = [v8 objectForKeyedSubscript:@"bin_width"];

  v10 = [(CLMicroLocationFingerprintDistanceFunction *)v86 objectForKeyedSubscript:@"seen_in_both"];
  v11 = [v10 objectForKeyedSubscript:@"abs_diff_dim"];
  v12 = [v11 objectForKeyedSubscript:@"min"];

  v13 = [(CLMicroLocationFingerprintDistanceFunction *)v86 objectForKeyedSubscript:@"seen_in_both"];
  v14 = [v13 objectForKeyedSubscript:@"abs_diff_dim"];
  v15 = [v14 objectForKeyedSubscript:@"max"];

  v16 = [(CLMicroLocationFingerprintDistanceFunction *)v86 objectForKeyedSubscript:@"seen_in_both"];
  v17 = [v16 objectForKeyedSubscript:@"abs_diff_dim"];
  v18 = [v17 objectForKeyedSubscript:@"bin_width"];

  v19 = [(CLMicroLocationFingerprintDistanceFunction *)v86 objectForKeyedSubscript:@"seen_in_one"];
  v20 = [v19 objectForKeyedSubscript:@"meas_dim"];
  v21 = [v20 objectForKeyedSubscript:@"min"];

  v22 = [(CLMicroLocationFingerprintDistanceFunction *)v86 objectForKeyedSubscript:@"seen_in_one"];
  v23 = [v22 objectForKeyedSubscript:@"meas_dim"];
  v24 = [v23 objectForKeyedSubscript:@"max"];

  v25 = [(CLMicroLocationFingerprintDistanceFunction *)v86 objectForKeyedSubscript:@"seen_in_one"];
  v26 = [v25 objectForKeyedSubscript:@"meas_dim"];
  v27 = [v26 objectForKeyedSubscript:@"bin_width"];

  if (!v84)
  {
    v46 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measIntensityBinningMin";
      _os_log_impl(&dword_258FE9000, v46, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v48 = _CLLogObjectForCategory_MicroLocation_Default(v47);
    if (os_signpost_enabled(v48))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measIntensityBinningMin";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMin in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measIntensityBinningMin";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = 479;
LABEL_76:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationFingerprintDistanceFunction.mm", v51, "parseBinningParamsForTechType");
    __break(1u);
  }

  if (!v85)
  {
    v52 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measIntensityBinningMax";
      _os_log_impl(&dword_258FE9000, v52, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v54 = _CLLogObjectForCategory_MicroLocation_Default(v53);
    if (os_signpost_enabled(v54))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measIntensityBinningMax";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMax in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v55);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measIntensityBinningMax";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = 480;
    goto LABEL_76;
  }

  if (!v9)
  {
    v56 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measIntensityBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v56, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v58 = _CLLogObjectForCategory_MicroLocation_Default(v57);
    if (os_signpost_enabled(v58))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measIntensityBinningBinWidth";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v58, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningBinWidth in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v59);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measIntensityBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = 481;
    goto LABEL_76;
  }

  if (!v12)
  {
    v60 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "absDiffBinningMin";
      _os_log_impl(&dword_258FE9000, v60, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v62 = _CLLogObjectForCategory_MicroLocation_Default(v61);
    if (os_signpost_enabled(v62))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "absDiffBinningMin";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v62, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMin in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v63);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "absDiffBinningMin";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = 482;
    goto LABEL_76;
  }

  if (!v15)
  {
    v64 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "absDiffBinningMax";
      _os_log_impl(&dword_258FE9000, v64, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v66 = _CLLogObjectForCategory_MicroLocation_Default(v65);
    if (os_signpost_enabled(v66))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "absDiffBinningMax";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v66, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMax in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v67);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "absDiffBinningMax";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = 483;
    goto LABEL_76;
  }

  if (!v18)
  {
    v68 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "absDiffBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v68, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v70 = _CLLogObjectForCategory_MicroLocation_Default(v69);
    if (os_signpost_enabled(v70))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "absDiffBinningBinWidth";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v70, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningBinWidth in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v71);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "absDiffBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = 484;
    goto LABEL_76;
  }

  if (!v21)
  {
    v72 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measBinningMin";
      _os_log_impl(&dword_258FE9000, v72, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v74 = _CLLogObjectForCategory_MicroLocation_Default(v73);
    if (os_signpost_enabled(v74))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measBinningMin";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v74, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMin in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v75);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measBinningMin";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = 485;
    goto LABEL_76;
  }

  if (!v24)
  {
    v76 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measBinningMax";
      _os_log_impl(&dword_258FE9000, v76, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v78 = _CLLogObjectForCategory_MicroLocation_Default(v77);
    if (os_signpost_enabled(v78))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measBinningMax";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v78, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMax in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v79);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measBinningMax";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = 486;
    goto LABEL_76;
  }

  if (!v27)
  {
    v80 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v80, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v82 = _CLLogObjectForCategory_MicroLocation_Default(v81);
    if (os_signpost_enabled(v82))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measBinningBinWidth";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v82, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningBinWidth in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default(v83);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v88 = 0;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "measBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = 487;
    goto LABEL_76;
  }

  [v21 doubleValue];
  v30 = v29;
  [v24 doubleValue];
  v32 = v31;
  [v27 doubleValue];
  v34 = v33;
  [v84 doubleValue];
  v36 = v35;
  [v85 doubleValue];
  v38 = v37;
  [v9 doubleValue];
  v40 = v39;
  [v12 doubleValue];
  v42 = v41;
  [v15 doubleValue];
  v44 = v43;
  [v18 doubleValue];
  *a1 = v36;
  a1[1] = v38;
  a1[2] = v40;
  a1[3] = v42;
  a1[4] = v44;
  a1[5] = v45;
  a1[6] = v30;
  a1[7] = v32;
  a1[8] = v34;
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeGaussianLogProbabilityOnGrid(double **a1@<X0>, const void **a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::normal_distribution(&v25, a3, a4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = v26;
      v27 = v26;
      v9 = *&v26 <= -1 || ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
      if (v9 && (*&v26 - 1) >= 0xFFFFFFFFFFFFFLL)
      {
        boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, "Scale parameter is %1%, but must be > 0 !", &v27, v25);
      }

      v27 = v25;
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, "Location parameter is %1%, but must be finite!", &v27, v25);
      }

      v22 = *v6;
      v23 = 0.0;
      if (fabs(*v6) != INFINITY)
      {
        v27 = *v6;
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, "Random variate x is %1%, but must be finite!", &v27, v25, 0.0);
        }

        v23 = exp(-((v22 - v25) * (v22 - v25)) / (v26 * (v26 + v26))) / (v8 * 2.50662827);
      }

      if (v23 >= 0.00000001)
      {
        v11 = v23;
      }

      else
      {
        v11 = 0.00000001;
      }

      v12 = log(v11);
      v14 = a2[1];
      v13 = a2[2];
      if (v14 >= v13)
      {
        v16 = *a2;
        v17 = v14 - *a2;
        v18 = v17 >> 3;
        v19 = (v17 >> 3) + 1;
        if (v19 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v20 = v13 - v16;
        if (v20 >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        v9 = v20 >= 0x7FFFFFFFFFFFFFF8;
        v21 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v9)
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v21);
        }

        *(8 * v18) = v12;
        v15 = (8 * v18 + 8);
        memcpy(0, v16, v17);
        v24 = *a2;
        *a2 = 0;
        a2[1] = v15;
        a2[2] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v14 = v12;
        v15 = v14 + 1;
      }

      a2[1] = v15;
      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_259180324(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeDistanceDistributionForFpPair(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a4;
  v11 = 0;
  v123 = *MEMORY[0x277D85DE8];
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v12 = a3[29];
  if (v12 > 0.0)
  {
    v13 = 0;
    v14 = a3[27];
    v15 = (a3[28] - v14) / v12;
    v16 = 0.0;
    v17 = 1;
    do
    {
      v18 = v14 + v15 * v16;
      if (v13 >= v118)
      {
        v19 = v116;
        v20 = v13 - v116;
        v21 = v13 - v116;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v23 = v118 - v116;
        if ((v118 - v116) >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v116, v24);
        }

        v25 = v13 - v116;
        v26 = (8 * v21);
        v27 = (8 * v21 - 8 * v25);
        *v26 = v18;
        v13 = v26 + 1;
        memcpy(v27, v19, v20);
        v28 = v116;
        v116 = v27;
        v117 = v13;
        v118 = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v13++ = v18;
      }

      v117 = v13;
      v16 = v17++;
    }

    while (v12 > v16);
    v11 = v13 - v116;
    v7 = a4;
  }

  *v119 = 1.0 / v11;
  std::vector<double>::vector[abi:ne200100](&v114, v11, v119);
  *v119 = 0.0;
  std::vector<double>::vector[abi:ne200100](&__p, v117 - v116, v119);
  v29 = *v7;
  if (*(v7 + 8) == 1)
  {
    v29 = (~*(a1 + 56) & ~*(a2 + 56) & v29);
  }

  v111 = v29;
  for (i = *(a1 + 16); i; i = *i)
  {
    v31 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (i + 2));
    if (CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v111, a5, (i + 2), *(a2 + 144)))
    {
      if (v31)
      {
        v32.n128_u32[0] = *(i + 7);
        v33 = v31[7];
        v34 = *(i + 6);
        if (v34 == 6)
        {
          v35 = v33 < v32.n128_f32[0];
          v37 = a3 + 49;
          v36 = a3 + 48;
          v39 = a3 + 51;
          v38 = a3 + 50;
          v41 = a3 + 53;
          v40 = a3 + 52;
        }

        else if (v34 == 5)
        {
          v35 = v32.n128_f32[0] < v33;
          v37 = a3 + 40;
          v36 = a3 + 39;
          v39 = a3 + 42;
          v38 = a3 + 41;
          v41 = a3 + 44;
          v40 = a3 + 43;
        }

        else
        {
          if (v34 != 1)
          {
            v84 = _CLLogObjectForCategory_MicroLocation_Default(v32);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
            {
              *v119 = 68289539;
              *v120 = 2082;
              *&v120[2] = "";
              *&v120[10] = 2082;
              *&v120[12] = "assert";
              v121 = 2081;
              v122 = "false";
              _os_log_impl(&dword_258FE9000, v84, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got unsupported tech type while running binMeasurementsSeenInBoth, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v119, 0x26u);
            }

            v86 = _CLLogObjectForCategory_MicroLocation_Default(v85);
            if (os_signpost_enabled(v86))
            {
              *v119 = 68289539;
              *v120 = 2082;
              *&v120[2] = "";
              *&v120[10] = 2082;
              *&v120[12] = "assert";
              v121 = 2081;
              v122 = "false";
              _os_signpost_emit_with_name_impl(&dword_258FE9000, v86, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got unsupported tech type while running binMeasurementsSeenInBoth", "{msg%{public}.0s:Got unsupported tech type while running binMeasurementsSeenInBoth, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v119, 0x26u);
            }

            v88 = _CLLogObjectForCategory_MicroLocation_Default(v87);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              *v119 = 68289539;
              *v120 = 2082;
              *&v120[2] = "";
              *&v120[10] = 2082;
              *&v120[12] = "assert";
              v121 = 2081;
              v122 = "false";
              _os_log_impl(&dword_258FE9000, v88, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got unsupported tech type while running binMeasurementsSeenInBoth, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v119, 0x26u);
            }

            abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationFingerprintDistanceFunction.mm", 773, "binMeasurementsSeenInBoth");
            __break(1u);
          }

          v35 = v32.n128_f32[0] < v33;
          v37 = a3 + 31;
          v36 = a3 + 30;
          v39 = a3 + 33;
          v38 = a3 + 32;
          v40 = a3 + 34;
          v41 = a3 + 35;
        }

        v44 = v32.n128_f32[0];
        v45 = v33;
        v46 = *v40;
        v47 = *v39;
        v48 = *v38;
        v49 = *v37;
        v50 = *v36;
        v51 = vabdd_f64(v44, v45);
        if (v35)
        {
          v44 = v45;
        }

        v52 = v46 + -0.00001;
        if (v46 + -0.00001 >= v51)
        {
          v52 = v51;
        }

        if (v52 < v47 + 0.00001)
        {
          v52 = v47 + 0.00001;
        }

        if (v49 + -0.00001 < v44)
        {
          v44 = v49 + -0.00001;
        }

        if (v44 < v50 + 0.00001)
        {
          v44 = v50 + 0.00001;
        }

        if (v34 == 1)
        {
          v53 = 1;
          v54 = 2;
          v55 = 3;
          v56 = 4;
          v57 = 57;
          v58 = a3;
        }

        else if (v34 == 6)
        {
          v53 = 19;
          v54 = 20;
          v55 = 21;
          v56 = 22;
          v57 = 61;
          v58 = a3 + 18;
        }

        else
        {
          v53 = 10;
          v54 = 11;
          v55 = 12;
          v56 = 13;
          v57 = 59;
          v58 = a3 + 9;
        }

        v59 = *v41 * 0.5 + v47 + floor((v52 - v47 + -0.000005) / *v41) * *v41;
        v60 = a3[v57];
        CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeGaussianLogProbabilityOnGrid(&v116, buf, a3[v56] + a3[v55] * v59, a3[v54] + v59 * a3[v53] + *v58 * (v48 * 0.5 + v50 + floor((v44 - v50 + -0.000005) / v48) * v48));
        v61 = *buf;
        v62 = v110;
        while (v61 != v62)
        {
          *v61 = v60 * *v61;
          ++v61;
        }

        if (__p)
        {
          *&v113 = __p;
          operator delete(__p);
        }

        v42 = *buf;
        __p = *buf;
        v43 = v110;
      }

      else
      {
        CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas(*(i + 6), a3, &v116, v119, *(i + 7));
        if (__p)
        {
          *&v113 = __p;
          operator delete(__p);
        }

        v42 = *v119;
        __p = *v119;
        v43 = *v120;
      }

      v113 = v43;
      v106 = 0;
      v107 = 0;
      v108 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v106, v42, v43, (v43 - v42) >> 3);
      v63 = v114;
      v64 = v115;
      v65 = v106;
      if (v114 != v115)
      {
        v66 = v106;
        do
        {
          v67 = *v66++;
          *v63 = *v63 + v67;
          ++v63;
        }

        while (v63 != v64);
      }

      if (v65)
      {
        v107 = v65;
        operator delete(v65);
      }
    }
  }

  for (j = *(a2 + 16); j; j = *j)
  {
    if (CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v111, a5, (j + 4), *(a1 + 144)) && !std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a1, (j + 4)))
    {
      CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas(*(j + 6), a3, &v116, v119, j[7]);
      if (__p)
      {
        *&v113 = __p;
        operator delete(__p);
      }

      __p = *v119;
      v113 = *v120;
      v104 = 0;
      v105 = 0;
      v103 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v103, *v119, *v120, (*v120 - *v119) >> 3);
      v69 = v114;
      v70 = v115;
      v71 = v103;
      if (v114 != v115)
      {
        v72 = v103;
        do
        {
          v73 = *v72++;
          *v69 = *v69 + v73;
          ++v69;
        }

        while (v69 != v70);
      }

      if (v71)
      {
        v104 = v71;
        operator delete(v71);
      }
    }
  }

  v74 = v114;
  v75 = v115;
  if (v114 == v115)
  {
    goto LABEL_75;
  }

  v76 = v114;
  do
  {
    *v76 = exp(*v76);
    ++v76;
  }

  while (v76 != v75);
  v77 = 0.0;
  v78 = v74;
  do
  {
    v79 = *v78++;
    v77 = v77 + v79;
  }

  while (v78 != v75);
  if (v77 == 0.0)
  {
LABEL_75:
    *buf = 1.0 / (v117 - v116);
    std::vector<double>::vector[abi:ne200100](v119, v117 - v116, buf);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeDistanceDistributionForFpPair();
    }

    v80 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v80, OS_LOG_TYPE_ERROR, "Got runningWeightedLogProbability vector norm = 0, Something went wrong, returning uniform distribution", buf, 2u);
    }

    v100 = 0;
    v101 = 0;
    v102 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v100, *v119, *v120, (*v120 - *v119) >> 3);
    v97 = 0;
    v98 = 0;
    v99 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v97, v116, v117, v117 - v116);
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity::FiniteDiscreteProbabilityDensity(a6, &v100, &v97);
    if (v97)
    {
      v98 = v97;
      operator delete(v97);
    }

    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    v81 = *v119;
    if (*v119 != 0.0)
    {
      *v120 = *v119;
LABEL_91:
      operator delete(v81);
    }
  }

  else
  {
    v82 = v74;
    v83 = 1.0 / v77;
    do
    {
      *v82 = v83 * *v82;
      ++v82;
    }

    while (v82 != v75);
    v94 = 0;
    v95 = 0;
    v96 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v94, v74, v75, (v75 - v74) >> 3);
    v91 = 0;
    v92 = 0;
    v93 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v91, v116, v117, v117 - v116);
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity::FiniteDiscreteProbabilityDensity(a6, &v94, &v91);
    if (v91)
    {
      v92 = v91;
      operator delete(v91);
    }

    v81 = v94;
    if (v94)
    {
      v95 = v94;
      goto LABEL_91;
    }
  }

  if (__p)
  {
    *&v113 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }
}

void sub_259180ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a54)
  {
    operator delete(a54);
  }

  v57 = *(v55 - 240);
  if (v57)
  {
    *(v55 - 232) = v57;
    operator delete(v57);
  }

  v58 = *(v55 - 216);
  if (v58)
  {
    *(v55 - 208) = v58;
    operator delete(v58);
  }

  _Unwind_Resume(exception_object);
}

BOOL CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = a4;
  v4 = *(a3 + 8);
  if (v4 >= 8)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  return ((*a1 >> v4) & 1) != 0 && (*(a2 + 56) != 1 || (CLMicroLocationAnchorAppearanceMap::isAnchorValid(a2, a3, &v6) & 1) != 0);
}

void CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas(uint64_t a1@<X0>, uint64_t a2@<X1>, double **a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  switch(a1)
  {
    case 1:
      v6 = 304;
      v7 = 296;
      v8 = 288;
      break;
    case 6:
      v6 = 448;
      v7 = 440;
      v8 = 432;
      break;
    case 5:
      v6 = 376;
      v7 = 368;
      v8 = 360;
      break;
    default:
      v24 = CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas(a1, a2, a3);
      v25 = CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas(v24);
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getDistanceArgMAX(v25, v26);
      return;
  }

  v9 = *(a2 + v6);
  v10 = *(a2 + v8);
  if (*(a2 + v7) + -0.00001 < a5)
  {
    a5 = *(a2 + v7) + -0.00001;
  }

  if (a5 < v10 + 0.00001)
  {
    a5 = v10 + 0.00001;
  }

  if (a1 == 1)
  {
    v11 = 464;
    v12 = 64;
    v13 = 56;
    v14 = 48;
    v15 = 40;
  }

  else if (a1 == 6)
  {
    v11 = 496;
    v12 = 208;
    v13 = 200;
    v14 = 192;
    v15 = 184;
  }

  else
  {
    v11 = 480;
    v12 = 136;
    v13 = 128;
    v14 = 120;
    v15 = 112;
  }

  v16 = v9 * 0.5 + v10 + floor((a5 - v10 + -0.000005) / v9) * v9;
  v17 = *(a2 + v11);
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeGaussianLogProbabilityOnGrid(a3, a4, *(a2 + v12) + *(a2 + v13) * v16, *(a2 + v14) + *(a2 + v15) * v16);
  v18 = *(a4 + 8);
  v19 = *a4;
  if (v18 != *a4)
  {
    v20 = 0;
    v21 = (v18 - *a4) >> 3;
    if (v21 <= 1)
    {
      v21 = 1;
    }

    v22 = *v19;
    do
    {
      v23 = v19[v20];
      if (v22 > v23)
      {
        v19[v20] = v22;
        v23 = v22;
      }

      ++v20;
      v22 = v23;
    }

    while (v21 != v20);
    do
    {
      *v19 = v17 * *v19;
      ++v19;
    }

    while (v19 != v18);
  }
}

BOOL CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getDistanceArgMAX(_BOOL8 this, const CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity *a2)
{
  v2 = *(this + 8);
  v3 = *this;
  if (v2 == *this)
  {
    if (*(this + 32) == *(this + 24))
    {
      DistanceArgMAX = CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getDistanceArgMAX();
      return CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::isCloseToUniformDistribution(DistanceArgMAX);
    }
  }

  else if (v3 + 1 != v2)
  {
    v4 = *v3;
    v5 = v3 + 1;
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v4 < v6)
      {
        v4 = v7;
      }
    }

    while (v5 != v2);
  }

  return this;
}

BOOL CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::isCloseToUniformDistribution(double **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    return 0;
  }

  v3 = v1 + 1;
  if (v1 + 1 == v2)
  {
    v7 = *a1;
  }

  else
  {
    v4 = *v1;
    v5 = *v1;
    v6 = v1 + 1;
    v7 = *a1;
    v8 = v1 + 1;
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (v5 < v9)
      {
        v5 = v10;
        v7 = v6;
      }

      v6 = v8;
    }

    while (v8 != v2);
    v11 = v1 + 1;
    do
    {
      v12 = *v11++;
      v13 = v12;
      if (v12 < v4)
      {
        v4 = v13;
        v1 = v3;
      }

      v3 = v11;
    }

    while (v11 != v2);
  }

  return *v7 - *v1 < 0.0001;
}

double CLMicroLocationFingerprintDistanceFunction::maxLikelihoodDistanceFunction(uint64_t a1, uint64_t a2, double *a3, uint64_t *a4, uint64_t a5, void *a6, char a7)
{
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeDistanceDistributionForFpPair(a1, a2, a3, a4, a5, v13);
  if (CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::isCloseToUniformDistribution(v13))
  {
    v10 = *(v15 - 1);
    if ((a7 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getDistanceArgMAX(v13, v9);
  v10 = v12;
  if (a7)
  {
LABEL_3:
    *a6 = 0x3FE0000000000000;
  }

LABEL_4:
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return v10;
}

float CLMicroLocationUtils::PerSourceWeights<float>::operator[](float *a1, int a2, __n128 a3)
{
  if (a2 > 5)
  {
    if (a2 == 6)
    {
      return a1[4];
    }

    if (a2 == 7)
    {
      return a1[5];
    }
  }

  else
  {
    if (a2 == 1)
    {
      return a1[2];
    }

    if (a2 == 5)
    {
      return a1[3];
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance();
  }

  v4 = logObject_MicroLocation_Default;
  v3 = 0.0;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "Datatype not supported", v6, 2u);
  }

  return v3;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_124()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity::FiniteDiscreteProbabilityDensity(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  return a1;
}

void sub_259181550(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity::~FiniteDiscreteProbabilityDensity(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

double *boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::normal_distribution(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  v5 = a3;
  if ((*&a3 <= -1 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a3 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::normal_distribution(double,double)::function, "Scale parameter is %1%, but must be > 0 !", &v5);
  }

  v5 = a2;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::normal_distribution(double,double)::function, "Location parameter is %1%, but must be finite!", &v5);
  }

  return result;
}

void boost::math::policies::detail::raise_error<std::domain_error,double>(char *a1, char *a2, double *a3, ...)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, v4);
  std::string::basic_string[abi:ne200100]<0>(&v25, v5);
  std::string::basic_string[abi:ne200100]<0>(&v24, "Error in function ");
  v6 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  size = v26.__r_.__value_.__l.__size_;
  v7 = v26.__r_.__value_.__r.__words[0];
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v26;
  }

  else
  {
    v9 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v26.__r_.__value_.__l.__size_;
  }

  if (v10 >= 3)
  {
    v11 = v9 + v10;
    v12 = v9;
    while (1)
    {
      v13 = memchr(v12, 37, v10 - 2);
      if (!v13)
      {
        goto LABEL_25;
      }

      if (*v13 == 12581 && v13[2] == 37)
      {
        break;
      }

      v12 = (v13 + 1);
      v10 = v11 - v12;
      if (v11 - v12 < 3)
      {
        goto LABEL_25;
      }
    }

    if (v13 != v11)
    {
      v15 = v13 - v9;
      if (v15 != -1)
      {
        do
        {
          std::string::replace(&v26, v15, 3uLL, "double", 6uLL);
          v15 = std::string::find[abi:ne200100](&v26, "%1%", v15 + 6);
        }

        while (v15 != -1);
        v6 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        size = v26.__r_.__value_.__l.__size_;
        v7 = v26.__r_.__value_.__r.__words[0];
      }
    }
  }

LABEL_25:
  if ((v6 & 0x80u) == 0)
  {
    v16 = &v26;
  }

  else
  {
    v16 = v7;
  }

  if ((v6 & 0x80u) == 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = size;
  }

  std::string::append(&v24, v16, v17);
  std::string::append(&v24, ": ", 2uLL);
  boost::math::policies::detail::prec_format<double>(a3, v22);
  if (v23 >= 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = v22[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v25, "%1%", v18);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v25;
  }

  else
  {
    v19 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v25.__r_.__value_.__l.__size_;
  }

  std::string::append(&v24, v19, v20);
  std::logic_error::logic_error(&v21, &v24);
  v21.__vftable = (MEMORY[0x277D828D8] + 16);
  boost::throw_exception<std::domain_error>(&v21);
}

int64_t boost::math::policies::detail::replace_all_in_string(std::string *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  v7 = strlen(a3);
  result = std::string::find[abi:ne200100](a1, __s, 0);
  if (result != -1)
  {
    v9 = result;
    do
    {
      v10 = strlen(a3);
      std::string::replace(a1, v9, v6, a3, v10);
      result = std::string::find[abi:ne200100](a1, __s, v9 + v7);
      v9 = result;
    }

    while (result != -1);
  }

  return result;
}

uint64_t boost::math::policies::detail::prec_format<double>@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  *(&v12[0].__locale_ + *(v10 - 24)) = 17;
  MEMORY[0x259CA1D90](&v10, *a1);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v12[1].__locale_;
    v5 = v12[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, locale, v4);
  }

LABEL_14:
  a2[v4] = 0;
  v9[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v7;
  v11 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x259CA1EE0](&v18);
}

void sub_259181BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x259CA1EE0](v3 + 128);
  _Unwind_Resume(a1);
}

void boost::throw_exception<std::domain_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::domain_error>::wrapexcept(exception, a1);
}

int64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = v5 + v6;
    if (v8 >= v7)
    {
      v13 = v5 + a3;
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return v11 - v5;
    }
  }

  return a3;
}

uint64_t boost::wrapexcept<std::domain_error>::wrapexcept(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_286A547F0;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_286A5CCC0;
  *(a1 + 8) = &unk_286A5CCF0;
  *(a1 + 24) = &unk_286A5CD18;
  return a1;
}

uint64_t boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x259CA1C20](a1 + 8);
  return a1;
}

void sub_259181FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::domain_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::domain_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x259CA1C20](a1 + 8);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x259CA1C20);
}

{
  *(a1 + 16) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x259CA1C20](a1);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x259CA1C20);
}

{
  *a1 = &unk_286A54820;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x259CA1C20](v1);

  JUMPOUT(0x259CA1F90);
}

uint64_t boost::wrapexcept<std::domain_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286A547F0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x277D828D8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_286A54820;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_286A5CCC0;
  *(a1 + 8) = &unk_286A5CCF0;
  *(a1 + 24) = &unk_286A5CD18;
  return a1;
}

void CLMicroLocationFingerprintPool::add(CLMicroLocationFingerprintPool *this@<X0>, uuid *a2@<X1>, const uuid **a4@<X8>)
{
  v9 = a2;
  v5 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(this, a2, &std::piecewise_construct, &v9);
  *a4 = 0;
  a4[1] = 0;
  v6 = v5[5];
  if (!v6 || (v7 = std::__shared_weak_count::lock(v6), (a4[1] = v7) == 0) || (v8 = v5[4], (*a4 = v8) == 0))
  {
    std::allocate_shared[abi:ne200100]<CLMicroLocationFingerprint,std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint const&,0>();
  }
}

void sub_2591824F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationFingerprintPool::removeInactiveEntries(CLMicroLocationFingerprintPool *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v2[5];
      if (!v4 || *(v4 + 8) == -1)
      {
        v2 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::erase(this, v2);
        ++v3;
      }

      else
      {
        v2 = *v2;
      }
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprintPool::removeInactiveEntries();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 3);
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = v3;
    v12 = 2050;
    v13 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationFingerprintPool::removeInactiveEntries(), Num Removed Entries:%{public}d, Num Remaining Entries:%{public}lu}", v7, 0x22u);
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_125()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__shared_ptr_emplace<CLMicroLocationFingerprint>::__shared_ptr_emplace[abi:ne200100]<CLMicroLocationFingerprint const&,std::allocator<CLMicroLocationFingerprint>,0>(void *a1, const CLMicroLocationFingerprint *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5CD58;
  CLMicroLocationFingerprint::CLMicroLocationFingerprint((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<CLMicroLocationFingerprint>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5CD58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t std::__shared_ptr_emplace<CLMicroLocationFingerprint>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 224);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 128);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 88);
  return std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(a1 + 24);
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t CLMicroLocationLearner::CLMicroLocationLearner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v8[0] = &unk_286A5CDE8;
  v8[1] = a1;
  v8[3] = v8;
  v9[0] = &unk_286A5CE68;
  v9[1] = a1;
  v9[3] = v9;
  v10[0] = &unk_286A5CEE8;
  v10[1] = a1;
  v10[3] = v10;
  v11[0] = &unk_286A5CF68;
  v11[1] = a1;
  v11[3] = v11;
  v12[0] = &unk_286A5CFE8;
  v12[1] = a1;
  v12[3] = v12;
  v13[0] = &unk_286A5D068;
  v13[1] = a1;
  v13[3] = v13;
  v14[0] = &unk_286A5D0E8;
  v14[1] = a1;
  v14[3] = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = (a1 + 48);
  v5[2] = 0;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>(v5, v8, &v15, 7uLL);
  for (i = 24; i != -4; i -= 4)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](&v8[i]);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  return a1;
}

void sub_259182D10(_Unwind_Exception *a1)
{
  for (i = 192; i != -32; i -= 32)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v2 + i);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::getAnchorAppearanceMapForLoi(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(a3);
  if (ULSettings::get<ULSettings::AdaptiveAnchorsEnable>())
  {
    v5 = (*(**(a1 + 32) + 168))(*(a1 + 32));
    v6 = v5;
    if (v5)
    {
      objc_msgSend_fetchMostRecentAnchorAppearanceMapAtLoiGroupId_(v5);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
    }

    if (BYTE8(v16) == 1)
    {
      v8 = v15;
      if (!v15)
      {
        v8 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance(v7) + 8);
      }

      CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(v9, v8);
      if (v9 != a3)
      {
        *(a3 + 32) = v11;
        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>(a3, v10, 0);
      }

      *(a3 + 40) = v12;
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v9);
      if (BYTE8(v16))
      {
        CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((&v14 + 8));
      }
    }
  }
}

void sub_259182E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a10);
  if (a24 == 1)
  {
    CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(&a20);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v24);
  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::AdaptiveAnchorsEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsEnable"];
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

void CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(CLMicroLocationLearner *this@<X0>, unint64_t *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = (*(**(this + 4) + 64))(*(this + 4));
  v5 = v4;
  if (v4)
  {
    objc_msgSend_fetchAllDistinctLoiGroups(v4);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  if (v7 == *a2)
  {
LABEL_8:
    v6 = v7;
  }

  else
  {
    while ((ULLoiTypes::rtLoiStringToLocationType((v6 + 40)) & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v9 = (*(**(this + 4) + 144))(*(this + 4));
      v10 = [v9 countScanningEventsForLoiGroupId:v6 + 24];

      if (!v10)
      {
        break;
      }

      v6 += 64;
      if (v6 == v7)
      {
        goto LABEL_8;
      }
    }

    if (v6 != v7 && v6 + 64 != v7)
    {
      v11 = (v6 + 127);
      do
      {
        if ((ULLoiTypes::rtLoiStringToLocationType((v11 - 23)) & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v12 = (*(**(this + 4) + 144))(*(this + 4));
          v13 = [v12 countScanningEventsForLoiGroupId:v11 - 39];

          if (v13)
          {
            v14 = *(v11 - 63);
            v15 = *(v11 - 47);
            *(v6 + 32) = *(v11 - 31);
            *v6 = v14;
            *(v6 + 16) = v15;
            if (*(v6 + 63) < 0)
            {
              operator delete(*(v6 + 40));
            }

            v16 = *(v11 - 23);
            *(v6 + 56) = *(v11 - 7);
            *(v6 + 40) = v16;
            *v11 = 0;
            *(v11 - 23) = 0;
            v6 += 64;
          }
        }

        v17 = v11 + 1;
        v11 += 64;
      }

      while (v17 != v7);
    }
  }

  std::vector<ULLoiDO>::erase(a2, v6, a2[1]);
  v18 = a2[1];
  v19 = 126 - 2 * __clz((v18 - *a2) >> 6);
  if (v18 == *a2)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,false>(*a2, v18, v20, 1);
  v21 = +[ULDefaultsSingleton shared];
  v22 = [v21 defaultsDictionary];

  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxDistinctLOIGroupUUIDsForLearning"];
  v24 = [v22 objectForKey:v23];
  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v25 = [v24 unsignedIntValue];
  }

  else
  {
    v25 = [&unk_286A72600 unsignedIntValue];
  }

  v26 = v25;

  v27 = a2[1];
  if (v26 < ((v27 - *a2) >> 6))
  {
    std::vector<ULLoiDO>::erase(a2, (*a2 + (v26 << 6)), v27);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v28 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v29 = (a2[1] - *a2) >> 6;
    v30[0] = 68289538;
    v30[1] = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2050;
    v34 = v8 >> 6;
    v35 = 2050;
    v36 = v29;
    _os_log_impl(&dword_258FE9000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Filtered Unique LOI Groups, Count before filter:%{public}lu, Count after filter:%{public}lu}", v30, 0x26u);
  }
}

void CLMicroLocationLearner::persistSingleModel(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v10 = a6;
  if (*(a4 + 320) != 1)
  {
    goto LABEL_16;
  }

  ++*a1;
  v11 = *(a4 + 296);
  if (v11 == 1)
  {
    v12 = *(a4 + 280);
    *(v39 + 7) = *(a4 + 288);
    v39[0] = *(a4 + 281);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(**(a1 + 32) + 80))(*(a1 + 32));
  if ((*(a4 + 320) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  ULModelDO::ULModelDO(buf, a4);
  v21 = 0;
  v22 = 0uLL;
  std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(&v21, buf, &v38, 1uLL);
  LOBYTE(v25) = 0;
  v26 = 0;
  if (v11)
  {
    LOBYTE(v25) = v12;
    *(&v25 + 1) = v39[0];
    *(&v25 + 1) = *(v39 + 7);
    v26 = 1;
  }

  if ((*(a4 + 320) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v23 = *(a4 + 297);
  v24 = 1;
  v14 = [v13 insertDataObjects:&v21 forServiceUUID:&v25 atLoiUUID:&v23];
  *&v25 = &v21;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (v37 == 1 && v36 < 0)
  {
    operator delete(__p);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v32[12]);

  if (v14)
  {
    if ((*(a4 + 320) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (*(a4 + 296) == 1)
    {
      operator new();
    }

    v21 = 0;
    v22 = 0uLL;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a4 + 320))
      {
        operator new();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  else
  {
LABEL_16:
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v28 = 0;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Model was not generated properly. Inserted: %{public,BOOL}d", buf, 8u);
    }
  }

  if (*(a5 + 24) == 1)
  {
    v17 = (*(**(a1 + 32) + 152))(*(a1 + 32));
    v18 = v17;
    if ((*(a5 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [v17 insertMapLabelsWithRelatedLabelsObjectIDs:a5];
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::persistSingleModel();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v28 = 0;
    v29 = 2082;
    v30 = "";
    v31 = 1026;
    *v32 = a3;
    *&v32[4] = 2050;
    *&v32[6] = a2;
    v33 = 2050;
    v34 = v10 != 0;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:sending CoreAnalytics com.apple.MicroLocation.ModelLearning, sending enabled:%{public}hhd, model type:%{public}lu, has_value:%{public}lu}", buf, 0x2Cu);
  }

  if (v10 && a3)
  {
    [ULSendEvent sendEvent:v10 withEventName:@"com.apple.MicroLocation.ModelLearning"];
  }

  (*(**(a1 + 24) + 24))(*(a1 + 24), a2, a4, v10);
}

void sub_259183930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ULModelDO a19)
{
  operator delete(v23);

  if (v21)
  {
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnUnspervisedModelForLOI(CLMicroLocationLearner *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = (*(**(a1 + 4) + 104))(*(a1 + 4));
  v12 = v11;
  if (v11)
  {
    objc_msgSend_fetchAllServicesForServiceType_onlyServicesWithLabels_(v11);
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v13 = v38;
  v14 = v39;
  while (v13 != v14)
  {
    v16 = *v13;
    v15 = (v13 + 4);
    ULService::modelClientIdentifierStringForServiceTypeAndClientId(v16, v15, &__p);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v36, &__p, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v13 = (v15 + 56);
  }

  v17 = *(a2 + 24);
  if (!v17)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v17 + 48))(v17) & 1) == 0)
  {
    memset(v34, 0, sizeof(v34));
    v35 = 1065353216;
    if (ULLoiTypes::rtLoiStringToLocationType((a3 + 40)))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }
    }

    else
    {
      v19 = (*(**(a1 + 4) + 144))(*(a1 + 4));
      v20 = v19;
      *&__p.__r_.__value_.__l.__data_ = *(a3 + 24);
      __p.__r_.__value_.__s.__data_[16] = 1;
      if (v19)
      {
        objc_msgSend_getScanningEventUUIDsAtLoiGroupId_withScanType_startDate_endDate_onlyScansWithLabels_Limit_(v19);
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
      }

      CLMicroLocationLearner::getAnchorAppearanceMapForLoi(a1, v30);
      v21 = v36;
      if (v36 != v37)
      {
        do
        {
          v22 = *(a2 + 24);
          if (!v22)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          if ((*(*v22 + 48))(v22))
          {
            break;
          }

          __p.__r_.__value_.__s.__data_[0] = 0;
          v50 = 0;
          v23 = CLMicroLocationCoreAnalyticsPublishHelper::initializeModelLearningEventMetricsDict(a6, 0, &__p);
          if (v50 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationLearner::persistSingleModel();
          }

          v24 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            operator new();
          }

          CLMicroLocationLearner::getMostRecentMagicalMomentsModelAtLoi(&__p, a1, *(a3 + 24));
          CLMicroLocationLearner::learnMagicalMomentsModel(a1, v23, &v31, a2, v34, (v21 + 4), (a3 + 24), v42, &__p);
          if (v48 == 1)
          {
            v47 = *(a3 + 24);
          }

          v28[0] = 0;
          v29 = 0;
          CLMicroLocationLearner::persistSingleModel(a1, 0, a6, v42, v28, v23);
          if (v29 == 1)
          {
            v41 = v28;
            std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v41);
          }

          if (v48 == 1)
          {
            if (v46 == 1 && v45 < 0)
            {
              operator delete(v44);
            }

            std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v43);
          }

          if (v54 == 1)
          {
            if (v53 == 1 && v52 < 0)
            {
              operator delete(*(&v51[27] + 2));
            }

            std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v51 + 2));
          }

          v25 = v21[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v21[2];
              v27 = *v26 == v21;
              v21 = v26;
            }

            while (!v27);
          }

          v21 = v26;
        }

        while (v26 != v37);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v30);
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(v34);
  }

  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&v36, v37[0]);
  __p.__r_.__value_.__r.__words[0] = &v38;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_259184024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char *a40, uint64_t a41, char a42)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(&a33);
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&a39, a40);
  STACK[0x270] = &a42;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::getMostRecentMagicalMomentsModelAtLoi(uint64_t *__return_ptr a1@<X8>, CLMicroLocationLearner *this@<X0>, uuid a3@<0:X1, 8:X2>)
{
  v3 = *&a3.data[8];
  v4 = *a3.data;
  v6 = (*(**(this + 4) + 80))(*(this + 4));
  v7 = v6;
  if (v6)
  {
    [v6 fetchMostRecentMagicalMomentsModelAtLoiGroupId:{v4, v3}];
  }

  else
  {
    a1[40] = 0;
    *(a1 + 18) = 0u;
    *(a1 + 19) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 17) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 15) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }
}

void CLMicroLocationLearner::learnMagicalMomentsModel(uint64_t a1@<X0>, void *a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X3>, const CLMicroLocationProto::Model *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v87 = *MEMORY[0x277D85DE8];
  v17 = a2;
  *a9 = 0;
  a9[320] = 0;
  v18 = cl::chrono::CFAbsoluteTimeClock::now();
  CLMicroLocationLearner::learnMagicalMomentsModelInternal(a1, v17, a3, a4, a6, a8, a10, v33, v18, 0);
  if (v52 == 1 && CLMicroLocationModel::isValid(v33))
  {
    if (onceToken_MicroLocationQE_Default != -1)
    {
      CLMicroLocationLearner::learnMagicalMomentsModel();
    }

    v19 = logObject_MicroLocationQE_Default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = CLMicroLocationModel::numRecordingsBeforePruning(v33);
      v21 = v46[1];
      v22 = v46[0];
      v23 = CLMicroLocationModel::numClusters(v33);
      *buf = 68292098;
      *&buf[4] = 0;
      v58 = 2082;
      v59 = "";
      v60 = 2050;
      v61 = v20;
      v62 = 2050;
      v63 = (v21 - v22) >> 5;
      v64 = 2050;
      v65 = v23;
      v66 = 1026;
      v67 = v34;
      v68 = 2050;
      v69 = v35[3];
      v70 = 1026;
      v71 = v39;
      v72 = 1026;
      v73 = v40;
      v74 = 1026;
      v75 = v42;
      v76 = 1026;
      v77 = v41;
      v78 = 1026;
      v79 = v43;
      v80 = 1026;
      v81 = v44;
      v82 = 1026;
      v83 = v45;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Microlocation model learned, numFingerprints before pruning:%{public}lu, numFingerprints after pruning:%{public}lu, numClusters:%{public}lu, type:%{public}d, numAnchors:%{public}lu, Number of Recording triggers at current LOI:%{public}u, Number of Input Valid Fingerprints:%{public}u, Number of Input Valid Fingerprints Labeled:%{public}u, Number of Input Valid Fingerprints Unlabeled:%{public}u, Number of WiFi Access Points:%{public}u, Number of Ble Sources:%{public}u, Number of Uwb Sources:%{public}u}", buf, 0x6Au);
    }

    CLMicroLocationModel::toProtobuf(v32, v33);
    v31 = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v31);
    v24 = boost::uuids::random_generator_pure::operator()(&v31);
    v26 = v25;
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v30, v32);
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v55, v30);
    v56 = 0;
    if (*(a7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *a7, *(a7 + 8));
    }

    else
    {
      v28 = *a7;
    }

    v29 = 1;
    LOBYTE(v53) = 0;
    v54 = 0;
    ULModelDO::ULModelDO(buf, v24, v26, v55, &v28, &v53, *a8, a8[1], v18);
    std::optional<ULModelDO>::operator=[abi:ne200100]<ULModelDO,void>(a9, buf);
    if (v86 == 1 && v85 < 0)
    {
      operator delete(__p);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((&v63 + 2));
    if (v29 == 1 && SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v55);
    CLMicroLocationProto::Model::~Model(v30);
    boost::uuids::detail::random_provider_base::destroy(&v31);
    CLMicroLocationProto::Model::~Model(v32);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v27 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, "No models were generated for model type %{public}d", buf, 8u);
    }
  }

  if (v52 == 1)
  {
    if (v51 < 0)
    {
      operator delete(v50);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v47);
    *buf = v46;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v38 == 1 && v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v35);
  }
}

void sub_259184664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, __int16 a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x328]);
  CLMicroLocationProto::Model::~Model(&a15);
  boost::uuids::detail::random_provider_base::destroy(&a42);
  CLMicroLocationProto::Model::~Model(&a44);
  std::optional<CLMicroLocationModel>::~optional(&a65);
  std::optional<ULModelDO>::~optional(v66);

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnLSLModelForLOI(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, int a6, double a7)
{
  v116 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = (*(**(a1 + 32) + 104))(*(a1 + 32));
  v14 = v13;
  if (v13)
  {
    objc_msgSend_fetchAllServicesForServiceType_onlyServicesWithLabels_(v13);
  }

  else
  {
    v79 = 0;
    v78 = 0;
    v80 = 0;
  }

  if (v78 == v79)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      __p.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 2082;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skipping Location Similarity List model learning, no such services}", &__p, 0x12u);
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    v89 = 0;
    v15 = CLMicroLocationCoreAnalyticsPublishHelper::initializeModelLearningEventMetricsDict(a6, 2, &__p);
    if (v89 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = *(a2 + 24);
    if (!v16)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (((*(*v16 + 48))(v16) & 1) == 0)
    {
      memset(v76, 0, sizeof(v76));
      v77 = 1065353216;
      v17 = ULLoiTypes::rtLoiStringToLocationType((a3 + 40));
      if (v17 == 3)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v18 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }
      }

      else
      {
        v48 = v17;
        v49 = v15;
        v20 = (*(**(a1 + 32) + 144))(*(a1 + 32));
        v21 = v20;
        *&__p.__r_.__value_.__l.__data_ = *(a3 + 24);
        __p.__r_.__value_.__s.__data_[16] = 1;
        if (v20)
        {
          objc_msgSend_getScanningEventUUIDsAtLoiGroupId_withScanType_startDate_endDate_onlyScansWithLabels_Limit_(v20);
        }

        else
        {
          v74 = 0;
          v73 = 0;
          v75 = 0;
        }

        CLMicroLocationLearner::getAnchorAppearanceMapForLoi(a1, v72);
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v22 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }

        __p.__r_.__value_.__s.__data_[0] = 0;
        v94[0] = 0;
        CLMicroLocationLearner::learnMagicalMomentsModelInternal(a1, v15, &v73, a2, v76, a3 + 24, &__p, v60, a7, 2);
        if (v94[0] == 1)
        {
          if (v93 == 1 && v92 < 0)
          {
            operator delete(v91);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((&v90 + 2));
        }

        v23 = *(a2 + 24);
        if (!v23)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if (((*(*v23 + 48))(v23) & 1) == 0 && v71 == 1 && CLMicroLocationModel::isValid(v60))
        {
          if ((v71 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v24 = v79;
          if (v78 != v79)
          {
            v25 = v78 + 4;
            do
            {
              v26 = *(a2 + 24);
              if (!v26)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              if ((*(*v26 + 48))(v26))
              {
                break;
              }

              v28 = ULService::uint64ToLocationTypesBitset(v25[3], v27);
              if (v48 >= 0x20)
              {
                std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
              }

              if ((v28 & (1 << v48)) != 0)
              {
                if (onceToken_MicroLocation_Default != -1)
                {
                  CLMicroLocationLearner::persistSingleModel();
                }

                v29 = logObject_MicroLocation_Default;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  operator new();
                }

                if (v15)
                {
                  v30 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v49];
                  v31 = v25;
                  if (*(v25 + 23) < 0)
                  {
                    v31 = *v25;
                  }

                  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:v31];
                  [v30 setObject:v32 forKeyedSubscript:@"clientIdentifier"];
                }

                else
                {
                  v30 = 0;
                }

                v33 = (*(**(a1 + 32) + 80))(*(a1 + 32));
                v34 = v33;
                v98 = *(v25 - 3);
                v99 = 1;
                v96 = *(a3 + 24);
                v97 = 1;
                if (v33)
                {
                  objc_msgSend_fetchMostRecentModelOfModelType_ForService_atLoiGroupId_(v33);
                }

                else
                {
                  v115 = 0;
                  v114 = 0u;
                  v113 = 0u;
                  v112 = 0u;
                  v111 = 0u;
                  *v110 = 0u;
                  v109 = 0u;
                  v108 = 0u;
                  v107 = 0u;
                  v106 = 0u;
                  v105 = 0u;
                  v104 = 0u;
                  v103 = 0u;
                  memset(v102, 0, sizeof(v102));
                  v101 = 0u;
                  *v100 = 0u;
                }

                LOBYTE(v58[0]) = 0;
                v59 = 0;
                if (v115 == 1)
                {
                  if (LODWORD(v110[0]))
                  {
                    std::__throw_bad_variant_access[abi:ne200100]();
                  }

                  v35 = 0x100000000;
                  if (!BYTE8(v103))
                  {
                    v35 = 0;
                  }

                  v58[0] = v35 | HIDWORD(v103);
                  v58[1] = v101;
                  v59 = 1;
                }

                std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](v100);
                v36 = (*(**(a1 + 32) + 144))(*(a1 + 32));
                v37 = v36;
                *&__p.__r_.__value_.__l.__data_ = *(a3 + 24);
                __p.__r_.__value_.__s.__data_[16] = 1;
                if (v36)
                {
                  v47 = v47 & 0xFFFFFFFF00000000 | 0x10000;
                  objc_msgSend_getScanningEventUUIDsAtLoiGroupId_withScanType_startDate_endDate_onlyScansWithLabels_Limit_(v36);
                }

                else
                {
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                }

                v38 = (*(**(a1 + 32) + 144))(*(a1 + 32));
                v39 = v38;
                *&__p.__r_.__value_.__l.__data_ = *(a3 + 24);
                __p.__r_.__value_.__s.__data_[16] = 1;
                if (v38)
                {
                  v46 = v46 & 0xFFFFFFFF00000000 | 0x10001;
                  objc_msgSend_getScanningEventUUIDsAtLoiGroupId_withScanType_startDate_endDate_onlyScansWithLabels_Limit_(v38);
                }

                else
                {
                  v52 = 0;
                  v53 = 0;
                  v54 = 0;
                }

                CLMicroLocationLearner::learnLocationSimilarityListModel(a1, v30, a2, (v25 - 4), v60, (a3 + 24), &v55, &v52, &__p, a7, v58);
                v40 = *(a2 + 24);
                if (!v40)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                v41 = (*(*v40 + 48))(v40);
                if ((v41 & 1) == 0)
                {
                  LOBYTE(v82[0]) = 0;
                  v87 = 0;
                  v50[0] = 0;
                  v51 = 0;
                  if (v95 == 1)
                  {
                    v42 = std::optional<std::vector<ULMapLabelDOAndLabelObjectID>>::operator=[abi:ne200100]<std::vector<ULMapLabelDOAndLabelObjectID>,void>(v50, v94);
                    v43 = _CLLogObjectForCategory_MicroLocation_Default(v42);
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      boost::uuids::to_string();
                    }

                    if ((v95 & 1) == 0)
                    {
                      std::__throw_bad_optional_access[abi:ne200100]();
                    }

                    std::optional<ULModelDO>::operator=[abi:ne200100]<ULModelDO,void>(v82, &__p);
                  }

                  CLMicroLocationLearner::persistSingleModel(a1, 2, a6, v82, v50, v30);
                  std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](v82);
                  if (v51 == 1)
                  {
                    *buf = v50;
                    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
                  }

                  if (v87 == 1)
                  {
                    if (v86 == 1 && v85 < 0)
                    {
                      operator delete(v84);
                    }

                    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v83);
                  }
                }

                if (v95 == 1)
                {
                  v82[0] = v94;
                  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](v82);
                  if (v93 == 1 && v92 < 0)
                  {
                    operator delete(v91);
                  }

                  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((&v90 + 2));
                }

                if (v52)
                {
                  v53 = v52;
                  operator delete(v52);
                }

                if (v55)
                {
                  v56 = v55;
                  operator delete(v55);
                }

                if (v115 == 1)
                {
                  if (v112 == 1 && SHIBYTE(v111) < 0)
                  {
                    operator delete(v110[1]);
                  }

                  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v102);
                }

                v15 = v49;
                if (v41)
                {
                  break;
                }
              }

              v44 = v25 + 7;
              v25 += 11;
            }

            while (v44 != v24);
          }
        }

        else
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationLearner::persistSingleModel();
          }

          v45 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            __p.__r_.__value_.__r.__words[0] = 68289026;
            LOWORD(__p.__r_.__value_.__r.__words[1]) = 2082;
            *(&__p.__r_.__value_.__r.__words[1] + 2) = "";
            _os_log_impl(&dword_258FE9000, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Similarity List Model Learning, unsupervised model not created or is invalid so learning is skipped}", &__p, 0x12u);
          }
        }

        if (v71 == 1)
        {
          if (v70 < 0)
          {
            operator delete(v69);
          }

          if (v67)
          {
            v68 = v67;
            operator delete(v67);
          }

          std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v66);
          __p.__r_.__value_.__r.__words[0] = &v65;
          std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&__p);
          if (v64 == 1 && v62)
          {
            v63 = v62;
            operator delete(v62);
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v61);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v72);
        if (v73)
        {
          v74 = v73;
          operator delete(v73);
        }
      }

      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(v76);
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v78;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_25918558C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a39 == 1)
  {
    STACK[0x2F0] = &a36;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F0]);
  }

  std::optional<ULModelDO>::~optional(&STACK[0x328]);
  std::optional<ULModelWithMapLabels>::~optional(&STACK[0x470]);
  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  std::optional<ULModelDO>::~optional(&STACK[0x610]);

  std::optional<CLMicroLocationModel>::~optional(&a49);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x260]);
  v52 = STACK[0x298];
  if (STACK[0x298])
  {
    STACK[0x2A0] = v52;
    operator delete(v52);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(&STACK[0x2B0]);

  STACK[0x470] = &STACK[0x2D8];
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&STACK[0x470]);

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnMagicalMomentsModelInternal(uint64_t a1@<X0>, void *a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X3>, const CLMicroLocationProto::Model *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, int a10)
{
  v169 = *MEMORY[0x277D85DE8];
  v141 = a9;
  v96 = a2;
  v10 = +[ULDefaultsSingleton shared];
  v11 = [v10 defaultsDictionary];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearnerAlgorithm"];
  v13 = [v11 objectForKey:v12];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [v13 unsignedIntValue];
  }

  else
  {
    v14 = [&unk_286A72678 unsignedIntValue];
  }

  v15 = v14;

  ULAlgorithms::createLearner(v15, &v140);
  v16 = +[ULDefaultsSingleton shared];
  v17 = [v16 defaultsDictionary];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberOfModelIterations"];
  v19 = [v17 objectForKey:v18];
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v91 = [v19 unsignedIntValue];
  }

  else
  {
    v91 = [&unk_286A72648 unsignedIntValue];
  }

  v21 = *a3;
  v20 = a3[1];
  v22 = +[ULDefaultsSingleton shared];
  v23 = [v22 defaultsDictionary];

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumNumberOfRecordingsInStableModel"];
  v25 = [v23 objectForKey:v24];
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v80 = [v25 unsignedLongValue];
  }

  else
  {
    v80 = [&unk_286A72690 unsignedLongValue];
  }

  v138 = 0;
  __src = 0;
  v139 = 0;
  std::vector<double>::reserve(&__src, v91);
  if (onceToken_MicroLocationQE_Default != -1)
  {
    CLMicroLocationLearner::learnMagicalMomentsModel();
  }

  v26 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = a3[1] - *a3;
    *buf = 68290050;
    *&buf[4] = 0;
    v157 = 2082;
    *v158 = "";
    *&v158[8] = 1026;
    *&v158[10] = a10;
    v159 = 1026;
    v160 = v15;
    v161 = 1026;
    v162 = v91;
    v163 = 2050;
    v164 = v27;
    _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Learning started, modelType:%{public}d, algorithmType:%{public}d, numModelIters:%{public}u, numRecordingScanningEvents:%{public}lu}", buf, 0x2Eu);
  }

  CLMicroLocationModel::CLMicroLocationModel(&v125);
  v79 = (v20 - v21) >> 4;
  buf[0] = 0;
  v168 = 0;
  if (*(a7 + 320) != 1)
  {
    goto LABEL_27;
  }

  if (*(a7 + 240))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  CLMicroLocationModel::fromProtobuf(&v106, (a7 + 32), a5);
  CLMicroLocationModel::operator=(&v125, &v106);
  if (SHIBYTE(v123) < 0)
  {
    operator delete(__p);
  }

  if (v120)
  {
    *(&v120 + 1) = v120;
    operator delete(v120);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v117);
  *v143 = &v115;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v143);
  if (v113 == 1 && v108)
  {
    *(&v108 + 1) = v108;
    operator delete(v108);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v107);
  if ((CLMicroLocationModel::isStable(&v125) & 1) != 0 || v79 < v80 && (v74 = v126, ULSettings::get<ULSettings::MinimumNumberOfDaysWithRecordingsInStableModel>() - 1 > v74))
  {
LABEL_27:
    v95 = 0;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v75 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v106) = 0;
      _os_log_impl(&dword_258FE9000, v75, OS_LOG_TYPE_DEFAULT, "got sufficient recording triggers, will ignore prior cluster number in learning", &v106, 2u);
    }

    v95 = 1;
  }

  CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings(&v105);
  CLMicroLocationModel::CLMicroLocationModel(&v106);
  v81 = *a3;
  v82 = a3[1];
  v102 = 0;
  v103 = 0;
  v104 = 0;
  if (v91)
  {
    v94 = 0;
    v93 = 0;
    v28 = 0;
    while (1)
    {
      if (CLMicroLocationModel::isValid(&v106))
      {
        memset(v143, 0, 32);
        *&v143[32] = 1065353216;
        for (i = v118; i; i = *i)
        {
          v30 = i[4];
          v31 = i[5];
          while (v30 != v31)
          {
            std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(v143, v30, v30);
            v30 += 2;
          }
        }

        v32 = v102;
        v33 = v103;
        if (v102 == v103)
        {
          goto LABEL_47;
        }

        while (std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v143, v32 + 5))
        {
          v32 += 28;
          if (v32 == v33)
          {
            v34 = v33;
            goto LABEL_48;
          }
        }

        if (v32 == v33 || v32 + 28 == v33)
        {
LABEL_47:
          v34 = v32;
        }

        else
        {
          v34 = v32;
          do
          {
            if (std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v143, v32 + 33))
            {
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v34, v32 + 28);
              v35 = *(v32 + 33);
              *(v34 + 56) = v32[35];
              *(v34 + 40) = v35;
              std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v34 + 64, v32 + 36);
              std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v34 + 104, v32 + 41);
              v36 = *(v32 + 23);
              *(v34 + 160) = *(v32 + 96);
              *(v34 + 144) = v36;
              std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(v34 + 168, (v32 + 49));
              *(v34 + 192) = *(v32 + 416);
              std::vector<ULPhotoFeaturesDO>::__vdeallocate((v34 + 200));
              *(v34 + 200) = *(v32 + 53);
              *(v34 + 216) = v32[55];
              v32[53] = 0;
              v32[54] = 0;
              v32[55] = 0;
              v34 += 224;
            }

            v37 = v32 + 56;
            v32 += 28;
          }

          while (v37 != v33);
        }

LABEL_48:
        std::vector<CLMicroLocationFingerprint>::erase(&v102, v34, v103);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v143);
      }

      if (!v28)
      {
        std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v155, a4);
        CLMicroLocationLearner::initializeFingerprintVector(&v102, a3, &v105, v155, *(a1 + 32));
        std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v155);
        v94 = -1227133513 * ((v103 - v102) >> 5);
      }

      v38 = *(a4 + 24);
      if (!v38)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v38 + 48))(v38))
      {
        break;
      }

      if (!v93)
      {
        v93 = CLMicroLocationQualityEstimationAlgorithms::evaluateQualityWithNumFingerprints(&v102);
      }

      v39 = 0x6DB6DB6DB6DB6DB7 * ((v103 - v102) >> 5);
      v40 = v138;
      if (v138 >= v139)
      {
        v42 = __src;
        v43 = v138 - __src;
        v44 = (v138 - __src) >> 3;
        v45 = v44 + 1;
        if ((v44 + 1) >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v46 = v139 - __src;
        if ((v139 - __src) >> 2 > v45)
        {
          v45 = v46 >> 2;
        }

        v47 = v46 >= 0x7FFFFFFFFFFFFFF8;
        v48 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v47)
        {
          v48 = v45;
        }

        if (v48)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v48);
        }

        *(8 * v44) = v39;
        v41 = 8 * v44 + 8;
        memcpy(0, v42, v43);
        v49 = __src;
        __src = 0;
        v138 = v41;
        v139 = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v138 = v39;
        v41 = (v40 + 8);
      }

      v138 = v41;
      if (v102 == v103)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v77 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *v143 = 67109376;
          *&v143[4] = a10;
          *&v143[8] = 1024;
          *&v143[10] = v28;
          _os_log_impl(&dword_258FE9000, v77, OS_LOG_TYPE_DEFAULT, "#Warning Fingerprint vector empty for model type %d at iteration %d", v143, 0xEu);
        }

        goto LABEL_167;
      }

      if (v96)
      {
        if (v28)
        {
          CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedFingerprints(v96, &__src, v28);
        }

        else
        {
          v85 &= 0xFFFFFFFFFFFFFF00;
          v86 &= 0xFFFFFFFFFFFFFF00;
          CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(v96, &v102, v85, 0, v141);
        }
      }

      if (CLMicroLocationModel::isValid(&v125))
      {
        if ((v95 & 1) == 0)
        {
          CLMicroLocationModel::numClusters(&v125);
        }

        (*(*v140 + 16))(v143);
        CLMicroLocationModel::operator=(&v106, v143);
        if (v154 < 0)
        {
          operator delete(v153);
        }

        if (v151)
        {
          v152 = v151;
          operator delete(v151);
        }

        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v150);
        v97 = v149;
        std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v97);
        if (v148 == 1 && v146)
        {
          v147 = v146;
          operator delete(v146);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v143[16]);
        v50 = CLMicroLocationModel::numClusters(&v106);
        *v143 = &v125;
        v143[8] = 1;
        CLMicroLocationModel::mapIdentifiersFromOldModelAndPruneNoiseClusters(&v106, v143, v95, v96);
        CLMicroLocationModel::getIdentifiers(&v97, &v106);
        CLMicroLocationModel::getIdentifiers(v143, &v125);
        v51 = *v143;
        if (*v143 == &v143[8])
        {
          std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v143, *&v143[8]);
        }

        else
        {
          LOBYTE(v52) = 1;
          while (1)
          {
            v53 = std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(&v97, (v51 + 25));
            if (v98 == v53)
            {
              break;
            }

            v54 = v51[1];
            if (v54)
            {
              do
              {
                v55 = v54;
                v54 = *v54;
              }

              while (v54);
            }

            else
            {
              do
              {
                v55 = v51[2];
                v56 = *v55 == v51;
                v51 = v55;
              }

              while (!v56);
            }

            v52 = (v98 != v53) & v52;
            v51 = v55;
            if (v55 == &v143[8])
            {
              goto LABEL_102;
            }
          }

          v52 = 0;
LABEL_102:
          std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v143, *&v143[8]);
          if (((v95 | v52) & 1) == 0)
          {
            (*(*v140 + 16))(v143);
            CLMicroLocationModel::operator=(&v106, v143);
            if (v154 < 0)
            {
              operator delete(v153);
            }

            if (v151)
            {
              v152 = v151;
              operator delete(v151);
            }

            std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v150);
            v100[0] = v149;
            std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v100);
            if (v148 == 1 && v146)
            {
              v147 = v146;
              operator delete(v146);
            }

            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v143[16]);
            v50 = CLMicroLocationModel::numClusters(&v106);
            *v143 = &v125;
            v143[8] = 1;
            CLMicroLocationModel::mapIdentifiersFromOldModelAndPruneNoiseClusters(&v106, v143, 0, v96);
          }
        }

        std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v97, v98[0]);
      }

      else
      {
        (*(*v140 + 16))(v143);
        CLMicroLocationModel::operator=(&v106, v143);
        if (v154 < 0)
        {
          operator delete(v153);
        }

        if (v151)
        {
          v152 = v151;
          operator delete(v151);
        }

        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v150);
        v97 = v149;
        std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v97);
        if (v148 == 1 && v146)
        {
          v147 = v146;
          operator delete(v146);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v143[16]);
        v50 = CLMicroLocationModel::numClusters(&v106);
        v143[0] = 0;
        v143[8] = 0;
        CLMicroLocationModel::mapIdentifiersFromOldModelAndPruneNoiseClusters(&v106, v143, v95, v96);
      }

      CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedClusters(v96, &v106, v50, v28);
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v57 = logObject_MicroLocation_Default;
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);

      if (v58)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v59 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v60 = *(&v115 + 1);
          v61 = v115;
          v62 = CLMicroLocationModel::numClusters(&v106);
          *v143 = 68289795;
          *&v143[4] = 0;
          *&v143[8] = 2082;
          *&v143[10] = "";
          *&v143[18] = 2049;
          *&v143[20] = (v60 - v61) >> 5;
          *&v143[28] = 2049;
          *&v143[30] = v62;
          v144 = 1025;
          LODWORD(v145) = DWORD1(v106);
          _os_log_impl(&dword_258FE9000, v59, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:model, size:%{private}lu, numClusters:%{private}lu, type:%{private}d}", v143, 0x2Cu);
        }

        v63 = *(&v115 + 1);
        for (j = v115; j != v63; j += 32)
        {
          if (onceToken_MicroLocationQE_Default != -1)
          {
            CLMicroLocationLearner::learnMagicalMomentsModel();
          }

          v65 = logObject_MicroLocationQE_Default;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            operator new();
          }
        }
      }

      v28 = (v28 + 1);
      if (v28 == v91)
      {
        goto LABEL_129;
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v76 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v143 = 68289026;
      *&v143[4] = 0;
      *&v143[8] = 2082;
      *&v143[10] = "";
      _os_log_impl(&dword_258FE9000, v76, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:operation cancelled during learning of internal model}", v143, 0x12u);
    }

LABEL_167:
    *a8 = 0;
    *(a8 + 304) = 0;
  }

  else
  {
    v93 = 0;
    v94 = 0;
LABEL_129:
    LOBYTE(v100[0]) = 0;
    v101 = 0;
    if (*(a7 + 320) == 1)
    {
      if (*(a7 + 240))
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v66 = *(a7 + 16);
      v67 = 0x100000000;
      if (!*(a7 + 136))
      {
        v67 = 0;
      }

      v100[0] = (v67 | *(a7 + 140));
      v100[1] = v66;
      v101 = 1;
    }

    CLMicroLocationLearner::updateModelDaysWithRecordings(a1, &v106, &v141, v100, a6);
    if (a10 != 2)
    {
      if (v79 >= v80 || (v68 = HIDWORD(v106), ULSettings::get<ULSettings::MinimumNumberOfDaysWithRecordingsInStableModel>() <= v68))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v69 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 0;
          _os_log_impl(&dword_258FE9000, v69, OS_LOG_TYPE_DEBUG, "set model to stable", v143, 2u);
        }

        BYTE8(v106) = 1;
      }
    }

    CLMicroLocationModel::setQualityIndicator(&v106, v93);
    CLMicroLocationQualityEstimationAlgorithms::evaluateQualityTreeBased(&v97, &v106);
    CLMicroLocationModel::setCandidateQualityIndicator(&v106, v97);
    CLMicroLocationModel::setCandidateQualityReasons(&v106, v98);
    *&v114[16] = v98[3];
    *&v114[24] = v99;
    CLMicroLocationModel::toProtobuf(v143, &v106);
    v70 = v141;
    CLMicroLocationCoreAnalyticsPublishHelper::updateLearnEventSummary(v96, &v106, v143, v141);
    if (*(a7 + 320) == 1)
    {
      if (v168)
      {
        v71 = *&v158[6];
      }

      else
      {
        v71 = 0;
      }

      CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentOldModelMetrics(v96, &v106, &v125, v71, v168, v70);
    }

    v142[0] = CLMicroLocationModel::isStable(&v125);
    v142[1] = 1;
    CLMicroLocationCoreAnalyticsPublishHelper::updateModelStabilityMetrics(v96, &v106, v142);
    *v114 = (v82 - v81) >> 4;
    *&v114[4] = v94;
    *&v114[8] = v94;
    *&v114[12] = 0;
    *a8 = v106;
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a8 + 16, v107);
    *(a8 + 56) = *&v107[40];
    *(a8 + 72) = 0;
    *(a8 + 136) = 0;
    if (v113 == 1)
    {
      *(a8 + 72) = v108;
      *(a8 + 88) = v109;
      v109 = 0;
      v108 = 0uLL;
      v72 = v111;
      *(a8 + 96) = v110;
      *(a8 + 112) = v72;
      *(a8 + 128) = v112;
      *(a8 + 136) = 1;
    }

    *(a8 + 144) = *v114;
    *(a8 + 156) = *&v114[12];
    *(a8 + 176) = v115;
    *(a8 + 192) = v116;
    v115 = 0uLL;
    v116 = 0;
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a8 + 200, v117);
    v73 = v121;
    *(a8 + 240) = v119;
    *(a8 + 248) = v120;
    *(a8 + 264) = v73;
    v120 = 0uLL;
    *(a8 + 272) = __p;
    *(a8 + 288) = v123;
    v121 = 0;
    __p = 0uLL;
    v123 = 0;
    *(a8 + 296) = v124;
    *(a8 + 304) = 1;
    CLMicroLocationProto::Model::~Model(v143);
    if (v98[0])
    {
      v98[1] = v98[0];
      operator delete(v98[0]);
    }
  }

  v100[0] = &v102;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](v100);
  if (SHIBYTE(v123) < 0)
  {
    operator delete(__p);
  }

  if (v120)
  {
    *(&v120 + 1) = v120;
    operator delete(v120);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v117);
  v102 = &v115;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v102);
  if (v113 == 1 && v108)
  {
    *(&v108 + 1) = v108;
    operator delete(v108);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v107);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v105.var1);
  if (v168 == 1)
  {
    if (v167 == 1 && v166 < 0)
    {
      operator delete(v165);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v162);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v132);
  *buf = &v131;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v130 == 1 && v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v127);
  if (__src)
  {
    v138 = __src;
    operator delete(__src);
  }

  v78 = v140;
  v140 = 0;
  if (v78)
  {
    (*(*v78 + 8))(v78);
  }
}

void sub_259186C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::runtime_error a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  a46.__vftable = &a48;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&a46);
  CLMicroLocationModel::~CLMicroLocationModel(&a58);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a53);
  std::optional<ULModelDO>::~optional(&STACK[0x580]);
  CLMicroLocationModel::~CLMicroLocationModel(&STACK[0x2C0]);
  v59 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v59;
    operator delete(v59);
  }

  v60 = STACK[0x408];
  STACK[0x408] = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnLocationSimilarityListModel(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uuid **a7@<X6>, uuid **a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v99 = *MEMORY[0x277D85DE8];
  v61 = a10;
  v19 = a2;
  v60 = 0;
  v98 = 0uLL;
  *buf = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(buf);
  *&v98 = boost::uuids::random_generator_pure::operator()(buf);
  *(&v98 + 1) = v20;
  boost::uuids::detail::random_provider_base::destroy(buf);
  CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings(&v59);
  CLMicroLocationLearner::createLSLMapLabelsForLabeledScanEventUUIDs(a1, a7, &v59, a3, a5, &v98, &v60, &v57);
  v21 = *(a3 + 24);
  if (!v21)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (!(*(*v21 + 48))(v21))
  {
    CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(&v56);
    CLMicroLocationLearner::createLSLMapLabelsForLabeledScanEventUUIDs(a1, a8, &v56, a3, a5, &v98, &v60, &v54);
    v22 = *(a3 + 24);
    if (!v22)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v22 + 48))(v22))
    {
      *a9 = 0;
      *(a9 + 344) = 0;
LABEL_52:
      *buf = &v54;
      std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v56.var1);
      goto LABEL_53;
    }

    std::vector<ULMapLabelDOAndLabelObjectID>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>>(&v57, v58, v54, v55, 0xEEEEEEEEEEEEEEEFLL * ((v55 - v54) >> 4));
    v23 = v60;
    if (v60)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v24 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a4 + 32;
        if (*(a4 + 55) < 0)
        {
          v25 = *(a4 + 32);
        }

        *buf = 68289795;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2049;
        *&buf[20] = v23;
        *&buf[28] = 2049;
        v63 = -286331153 * ((v58 - v57) >> 4);
        v64 = 2082;
        v65 = v25;
        v26 = "{msg%{public}.0s:Similarity List Model Learning, generated LSL, Num labeled fingerprints:%{private}lu, Num map labels:%{private}lu, Client ID:%{public, location:escape_only}s}";
        v27 = v24;
        v28 = 48;
LABEL_20:
        _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v29 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v30 = a4 + 32;
        if (*(a4 + 55) < 0)
        {
          v30 = *(a4 + 32);
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v30;
        v26 = "{msg%{public}.0s:Similarity List Model Learning, learned without labeled fingerprints, Client ID:%{public, location:escape_only}s}";
        v27 = v29;
        v28 = 28;
        goto LABEL_20;
      }
    }

    v31 = *(a5 + 148) - v23;
    if (v31 < 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v32 = logObject_MicroLocation_Default;
      v33 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
      v31 = 0;
      if (v33)
      {
        v34 = *(a5 + 148);
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = v34;
        *&buf[24] = 1026;
        *&buf[26] = v23;
        _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning, number of total input fingerprints is smaller than number of labeled fingerprints, note labeled fingerprints include localization triggers which used a different fp generation configuration, Number of Input ValidFingerprints:%{public}u, Number of Input Valid Fingerprints Labeled:%{public}u}", buf, 0x1Eu);
        v31 = 0;
      }
    }

    *(a5 + 152) = v31;
    *(a5 + 156) = v23;
    CLMicroLocationLearner::updateModelDaysWithRecordings(a1, a5, &v61, a11, a6);
    if (CLMicroLocationModel::getQualityIndicator(a5) == 3)
    {
      *(a5 + 8) = 1;
      if ((*(a11 + 16) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (*(a11 + 16) != 1)
      {
LABEL_32:
        *buf = 0;
        goto LABEL_33;
      }

      *(a5 + 8) = *(a11 + 4);
    }

    *buf = *(a11 + 4) | 0x100;
LABEL_33:
    CLMicroLocationCoreAnalyticsPublishHelper::updateModelStabilityMetrics(v19, a5, buf);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v35 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = CLMicroLocationModel::numRecordingsBeforePruning(a5);
      v38 = *(a5 + 176);
      v37 = *(a5 + 184);
      v39 = CLMicroLocationModel::numClusters(a5);
      v40 = *(a5 + 4);
      v41 = *(a5 + 40);
      v42 = *(a5 + 144);
      v43 = *(a5 + 148);
      v45 = *(a5 + 152);
      v44 = *(a5 + 156);
      v46 = *(a5 + 160);
      *buf = 68291842;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v36;
      *&buf[28] = 2050;
      v63 = (v37 - v38) >> 5;
      v64 = 2050;
      v65 = v39;
      v66 = 1026;
      v67 = v40;
      v68 = 2050;
      v69 = v41;
      v70 = 1026;
      v71 = v42;
      v72 = 1026;
      v73 = v43;
      v74 = 1026;
      v75 = v44;
      v76 = 1026;
      v77 = v45;
      v78 = 2050;
      v79 = 0xEEEEEEEEEEEEEEEFLL * ((v58 - v57) >> 4);
      v80 = 1026;
      v81 = v46;
      _os_log_impl(&dword_258FE9000, v35, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Microlocation model learned, numFingerprints before pruning:%{public}lu, numFingerprints after pruning:%{public}lu, numClusters:%{public}lu, type:%{public}d, numAnchors:%{public}lu, Number of Recording triggers at current LOI:%{public}u, Number of Input Valid Fingerprints:%{public}u, Number of Labeled Fingerprints:%{public}u, Number of Unlabeled Fingerprints:%{public}u, Number of Map Labels:%{public}lu, Number of WiFi Access Points:%{public}u}", buf, 0x68u);
    }

    CLMicroLocationModel::toProtobuf(v53, a5);
    v47 = v98;
    v48 = v61;
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v52, v53);
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(buf, v52);
    v82 = 0;
    if (*(a4 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a4 + 32), *(a4 + 40));
    }

    else
    {
      __p = *(a4 + 32);
    }

    v51 = 1;
    v91 = *(a4 + 8);
    v92 = 1;
    ULModelDO::ULModelDO(v93, v47, *(&v47 + 1), buf, &__p, &v91, *a6, a6[1], v48);
    if (v51 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
    CLMicroLocationProto::Model::~Model(v52);
    ULModelWithMapLabels::ULModelWithMapLabels(buf, v93);
    *a9 = *buf;
    *(a9 + 12) = *&buf[12];
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((a9 + 32), &v63 + 2);
    *(a9 + 248) = 0;
    *(a9 + 272) = 0;
    if (v85 == 1)
    {
      *(a9 + 248) = v83;
      *(a9 + 264) = v84;
      v84 = 0;
      v83 = 0uLL;
      *(a9 + 272) = 1;
    }

    *(a9 + 312) = v88;
    v49 = v87;
    *(a9 + 280) = v86;
    *(a9 + 296) = v49;
    *(a9 + 320) = v89;
    *(a9 + 336) = v90;
    v89 = 0uLL;
    v90 = 0;
    *(a9 + 344) = 1;
    v52[0] = &v89;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](v52);
    if (v85 == 1 && SHIBYTE(v84) < 0)
    {
      operator delete(v83);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((&v63 + 2));
    if (v97 == 1 && v96 < 0)
    {
      operator delete(v95);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v94);
    CLMicroLocationProto::Model::~Model(v53);
    goto LABEL_52;
  }

  *a9 = 0;
  *(a9 + 344) = 0;
LABEL_53:
  *buf = &v57;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v59.var1);
}

void sub_259187744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x270]);
  CLMicroLocationProto::Model::~Model(&a13);
  CLMicroLocationProto::Model::~Model(&a39);
  STACK[0x270] = &a65;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a66);
  STACK[0x270] = &STACK[0x210];
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x238]);

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<ULMapLabelDOAndLabelObjectID>>::operator=[abi:ne200100]<std::vector<ULMapLabelDOAndLabelObjectID>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<ULMapLabelDOAndLabelObjectID>::__vdeallocate(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
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
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t std::optional<CLMicroLocationModel>::~optional(uint64_t a1)
{
  if (*(a1 + 304) == 1)
  {
    if (*(a1 + 295) < 0)
    {
      operator delete(*(a1 + 272));
    }

    v2 = *(a1 + 248);
    if (v2)
    {
      *(a1 + 256) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table((a1 + 200));
    v5 = (a1 + 176);
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 136) == 1)
    {
      v3 = *(a1 + 72);
      if (v3)
      {
        *(a1 + 80) = v3;
        operator delete(v3);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 16);
  }

  return a1;
}

void CLMicroLocationLearner::learnHomeSlamModelForLOI(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, double a6)
{
  v198 = *MEMORY[0x277D85DE8];
  v96 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 63) >= 0)
    {
      v9 = a3 + 40;
    }

    else
    {
      v9 = *(a3 + 40);
    }

    [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  if (!ULLoiTypes::rtLoiStringToLocationType((a3 + 40)))
  {
    ULSettings::get<ULSettings::OdometrySource>();
    v10 = +[ULDefaultsSingleton shared];
    v11 = [v10 defaultsDictionary];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULReferenceOdometrySource"];
    v13 = [v11 objectForKey:v12];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v13 unsignedIntValue];
    }

    else
    {
      [&unk_286A726D8 unsignedIntValue];
    }

    v14 = (*(**(a1 + 32) + 128))(*(a1 + 32));
    *__p = *(a3 + 24);
    *&__p[16] = [MEMORY[0x277CCAD78] nilBoostUUID];
    *&__p[24] = v15;
    v139 = 0;
    v137 = 0;
    v138 = 0;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&v137, __p, v173, 2uLL);
    if (v14)
    {
      objc_msgSend_efficientlyFetchOdometryEntriesWithLOIGroupUUIDs_odometrySource_startDate_endDate_fetchLimit_newest_ascending_(v14, 1);
    }

    else
    {
      v141 = 0;
      v140 = 0;
      v142 = 0;
    }

    if (v137)
    {
      v138 = v137;
      operator delete(v137);
    }

    v135 = 0u;
    v134 = 0u;
    v136 = 1065353216;
    v132 = 0;
    v131 = 0;
    v133 = 0;
    v16 = +[ULDefaultsSingleton shared];
    v17 = [v16 defaultsDictionary];

    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamUtilizeOnlyStaticMotionScanningEvents"];
    v19 = [v17 objectForKey:v18];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v19 BOOLValue];
    }

    else
    {
      [MEMORY[0x277CBEC28] BOOLValue];
    }

    v20 = (*(**(a1 + 32) + 144))(*(a1 + 32));
    v21 = +[ULDefaultsSingleton shared];
    v22 = [v21 defaultsDictionary];

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearnOnlyFromPhotoFeatures"];
    v24 = [v22 objectForKey:v23];
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v24 BOOLValue];
    }

    else
    {
      [MEMORY[0x277CBEC28] BOOLValue];
    }

    v25 = +[ULDefaultsSingleton shared];
    v26 = [v25 defaultsDictionary];

    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearnFromLabeledEventsOnly"];
    v28 = [v26 objectForKey:v27];
    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v29 = [v28 BOOLValue];
    }

    else
    {
      v29 = [MEMORY[0x277CBEC28] BOOLValue];
    }

    v30 = v29;

    v31 = +[ULDefaultsSingleton shared];
    v32 = [v31 defaultsDictionary];

    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearningScanningEventsLimit"];
    v34 = [v32 objectForKey:v33];
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v35 = [v34 unsignedIntValue];
    }

    else
    {
      v35 = [&unk_286A72630 unsignedIntValue];
    }

    v36 = v35;

    if (v20)
    {
      LOBYTE(v92) = v30;
      objc_msgSend_fetchScanningEventUUIDsWithLOIGroupUUID_scanType_motionState_scansWithPhotoFeatures_startDate_endDate_onlyScansWithLabels_fetchLimit_newest_ascending_(v20, v92, v36, 257);
    }

    else
    {
      v129 = 0;
      v128 = 0;
      v130 = 0;
    }

    CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings(&v125);
    CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(&v121);
    v37 = v128;
    v38 = v129;
    if (v128 != v129)
    {
      do
      {
        v39 = (*(**(a1 + 32) + 144))(*(a1 + 32));
        buf.var0 = *v37;
        memset(__p, 0, 24);
        std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(__p, &buf, buf.var1.var0.var0.var0, 1uLL);
        if (v39)
        {
          objc_msgSend_fetchScanningEventsWithLabelObjectIDsForUUIDs_(v39);
        }

        else
        {
          *&v164.var0.data[8] = 0;
          *v164.var0.data = 0;
          v165 = 0;
        }

        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        if (*v164.var0.data != *&v164.var0.data[8])
        {
          *buf.var0.data = v125;
          *&buf.var0.data[8] = v126;
          std::unordered_map<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>::unordered_map(&buf.var1, v127);
          v40 = *&v164.var0.data[8];
          if (*(*&v164.var0.data[8] - 256) == 1)
          {
            *buf.var0.data = v121;
            *&buf.var0.data[8] = v122;
            v149[2] = v124;
            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,void *> *>>(&buf.var1.var0.var1.var0, v123[2], 0);
            v41 = (*&v164.var0.data[8] - 296);
            v42 = v132;
            if (v132 >= v133)
            {
              v43 = std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__emplace_back_slow_path<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>> const&>(&v131, v41);
            }

            else
            {
              std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100](v132, v41);
              v43 = (v42 + 296);
            }

            v132 = v43;
            v40 = *&v164.var0.data[8];
          }

          CLMicroLocationFingerprint::create(__p, (v40 - 296), &buf);
          if (v186)
          {
            std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&,CLMicroLocationFingerprint const&>(&v134, v173 + 1);
            if (v186)
            {
              v111[0] = &v184;
              std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v111);
              if (v181)
              {
                v182 = v181;
                operator delete(v181);
              }

              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v176);
              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v174);
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(__p);
            }
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&buf.var1);
        }

        *__p = &v164;
        std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](__p);
        ++v37;
      }

      while (v37 != v38);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v44 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0x14C1BACF914C1BADLL * ((v132 - v131) >> 3)];
      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xEB3E45306EB3E453 * ((v132 - v131) >> 3) + ((v129 - v128) >> 4)];
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(&v135 + 1)];
      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v141 - v140) >> 6];
      *__p = 138413058;
      *&__p[4] = v45;
      *&__p[12] = 2112;
      *&__p[14] = v46;
      *&__p[22] = 2112;
      *&__p[24] = v47;
      LOWORD(v173[0]) = 2112;
      *(v173 + 2) = v48;
      _os_log_impl(&dword_258FE9000, v44, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: localizationScansASC: %@, recordingScansASC: %@, fingerprintsASC: %@, odometryEntriesASC: %@", __p, 0x2Au);
    }

    v197 = 0uLL;
    *__p = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(__p);
    *&v197 = boost::uuids::random_generator_pure::operator()(__p);
    *(&v197 + 1) = v49;
    boost::uuids::detail::random_provider_base::destroy(__p);
    CLMicroLocationLearner::getAnchorAppearanceMapForLoi(a1, v120);
    LOBYTE(v111[0]) = 0;
    v119 = 0;
    if (*(a1 + 72) == 1)
    {
      v175 = 0;
      memset(v174, 0, sizeof(v174));
      memset(v173, 0, sizeof(v173));
      memset(__p, 0, sizeof(__p));
      v176 = 1065353216;
      v187[56] = 0;
      v187[64] = 0;
      v187[96] = 0;
      v192 = 0;
      v193 = 0;
      v194 = 0;
      v195 = 0;
      v196 = 0;
      *v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0;
      v189 = 0;
      v188 = 0;
      v191 = 0;
      v190 = 0;
      std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v171, a2);
      ULHomeSlamMapper::generateModel(&v140, &v134, v120, v171, __p, 1, &buf);
      std::__optional_storage_base<ULHomeSlamModel,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULHomeSlamModel,false>>(v111, &buf);
      if (v158[8] == 1)
      {
        *v164.var0.data = &v157;
        std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v164);
        if (SHIBYTE(v155) < 0)
        {
          operator delete(v154);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v150);
        *v164.var0.data = v149;
        std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v164);
        if (buf.var1.var0.var0.var0[16] == 1)
        {
          std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&buf.var1.var0.var1.var1, 0);
          *v164.var0.data = &buf;
          std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v164);
        }
      }

      std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v171);
      v50 = *(a1 + 24);
      v51 = v197;
      ULHomeSlamMapperIntermediateOutputs::ULHomeSlamMapperIntermediateOutputs(v110, __p);
      (*(*v50 + 56))(v50, v51, *(&v51 + 1), v110);
      ULHomeSlamMapperIntermediateOutputs::~ULHomeSlamMapperIntermediateOutputs(v110);
      ULHomeSlamMapperIntermediateOutputs::~ULHomeSlamMapperIntermediateOutputs(__p);
    }

    else
    {
      std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v170, a2);
      ULHomeSlamMapper::generateModel(&v140, &v134, v120, v170, 0, 0, __p);
      std::__optional_storage_base<ULHomeSlamModel,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULHomeSlamModel,false>>(v111, __p);
      if (v185 == 1)
      {
        *buf.var0.data = &v183;
        std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&buf);
        if (SHIBYTE(v178) < 0)
        {
          operator delete(v177[1]);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v174);
        *buf.var0.data = v173 + 8;
        std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&buf);
        if (LOBYTE(v173[0]) == 1)
        {
          std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&__p[24], 0);
          *buf.var0.data = __p;
          std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&buf);
        }
      }

      std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v170);
    }

    if (v119)
    {
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::clear(&v134);
      v129 = v128;
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v52 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      __p[0] = 0;
      __p[24] = 0;
      v54 = CLMicroLocationCoreAnalyticsPublishHelper::initializeModelLearningEventMetricsDict(a5, 4, __p);
      if (__p[24] == 1 && (__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v119 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULHomeSlamModel::toProtobuf(v111, v109);
      v55 = v197;
      ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(&buf, v109);
      ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(__p, &buf);
      v185 = 1;
      LOBYTE(v106) = 0;
      v108 = 0;
      LOBYTE(v145) = 0;
      LOBYTE(v146) = 0;
      ULModelDO::ULModelDO(&v164, v55, *(&v55 + 1), __p, &v106, &v145, *(a3 + 24), *(a3 + 32), a6);
      if (v108 == 1 && v107 < 0)
      {
        operator delete(v106);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](__p);
      CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(&buf);
      if ((v119 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULModel::ULModel(__p, v111);
      var0 = 0;
      v105 = 0;
      if ((v195 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (ULHomeSlamModel::getWorkMode(v187))
      {
        v56 = (*(**(a1 + 32) + 48))(*(a1 + 32));
        v57 = v56;
        if (v56)
        {
          objc_msgSend_fetchAllLabelsAndObjectIDsASCWithLOIGroupUUID_(v56);
        }

        else
        {
          v145 = 0uLL;
          v146 = 0;
        }

        v61 = (*(**(a1 + 32) + 144))(*(a1 + 32));
        v62 = +[ULDefaultsSingleton shared];
        v63 = [v62 defaultsDictionary];

        v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearningImageScanningEventsLimit"];
        v65 = [v63 objectForKey:v64];
        if (v65 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v66 = [v65 unsignedIntValue];
        }

        else
        {
          v66 = [&unk_286A725E8 unsignedIntValue];
        }

        v67 = v66;

        if (v61)
        {
          LOWORD(v93) = 257;
          LOBYTE(v92) = 0;
          objc_msgSend_oneByOneFetchScanningEventsWithLOIGroupUUID_scanType_motionState_scansWithPhotoFeatures_startDate_endDate_onlyScansWithLabels_fetchLimit_newest_ascending_(v61, v92, v67, v93);
        }

        else
        {
          v101 = 0;
          v102 = 0;
          v103 = 0;
        }

        v98 = 0;
        v99 = 0;
        v100 = 0;
        std::vector<ULScanningEventDO>::reserve(&v98, 0x14C1BACF914C1BADLL * ((v132 - v131) >> 3));
        v68 = v131;
        v69 = v132;
        for (i = &v98; v68 != v69; v68 = (v68 + 296))
        {
          ULScanningEventDO::ULScanningEventDO(&buf, v68);
          std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&i, &buf);
          *v163 = v158;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v163);
          if (v155)
          {
            v156 = v155;
            operator delete(v155);
          }

          if (v153)
          {
            v154 = v153;
            operator delete(v153);
          }

          if (v151)
          {
            v152 = v151;
            operator delete(v151);
          }

          *v163 = v150;
          std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](v163);
          if (*(&buf.var1.var0.var1 + 23) < 0)
          {
            operator delete(buf.var1.var0.var1.var0);
          }
        }

        memset(&buf, 0, 24);
        p_buf = &buf;
        std::vector<ULScanningEventDO>::reserve(&buf, 0xF0F0F0F0F0F0F0F1 * ((v99 - v98) >> 4) - 0xF0F0F0F0F0F0F0FLL * ((v102 - v101) >> 4));
        v72 = v98;
        v71 = v99;
        v74 = v101;
        v73 = v102;
        v143 = &buf;
        if (v98 == v99)
        {
LABEL_127:
          i = p_buf;
          while (v74 != v73)
          {
            std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&i, v74);
            v74 += 34;
          }
        }

        else
        {
          while (v74 != v73)
          {
            if (*(v74 + 6) >= *(v72 + 48))
            {
              std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&v143, v72);
              v72 += 272;
            }

            else
            {
              std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&v143, v74);
              v74 += 34;
            }

            if (v72 == v71)
            {
              p_buf = v143;
              goto LABEL_127;
            }
          }

          i = v143;
          while (v72 != v71)
          {
            std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&i, v72);
            v72 += 272;
          }
        }

        v75 = *buf.var0.data;
        v76 = *&buf.var0.data[8];
        if (*buf.var0.data != *&buf.var0.data[8])
        {
          while (1)
          {
            v77 = v75 + 34;
            if (v75 + 34 == *&buf.var0.data[8])
            {
              break;
            }

            v78 = *v75;
            v79 = v75[1];
            v81 = v75[34];
            v80 = v75[35];
            v82 = v78 == v81 && v79 == v80;
            v75 = v77;
            if (v82)
            {
              v83 = v77 + 34;
              v84 = v77 - 34;
              while (v83 != v76)
              {
                if (*v84 != *v83 || v84[1] != v83[1])
                {
                  v84 += 34;
                  ULScanningEventDO::operator=(v84, v83);
                }

                v83 += 34;
              }

              v86 = (v84 + 34);
              goto LABEL_150;
            }
          }
        }

        v86 = *&buf.var0.data[8];
LABEL_150:
        std::vector<ULScanningEventDO>::erase(&buf, v86, v76);
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v87 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v88 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xF0F0F0F0F0F0F0F1 * ((*(&v145 + 1) - v145) >> 3)];
          v89 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xF0F0F0F0F0F0F0F1 * ((*&buf.var0.data[8] - *buf.var0.data) >> 4)];
          *v163 = 138412546;
          *&v163[4] = v88;
          *&v163[12] = 2112;
          *&v163[14] = v89;
          _os_log_impl(&dword_258FE9000, v87, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: running learnHomeSlamModel_ReplayPhase with labelsASC: %@, mergedScanningEvents: %@", v163, 0x16u);
        }

        CLMicroLocationLearner::learnHomeSlamModel_ReplayPhase(v163, __p, &buf, &v140, &v145, a2, &v197);
        std::vector<ULMapLabelDOAndLabelObjectID>::__vdeallocate(&var0);
        var0 = *v163;
        v105 = *&v163[16];
        memset(v163, 0, 24);
        i = v163;
        std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&i);
        *v163 = &buf;
        std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](v163);
        *buf.var0.data = &v98;
        std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&buf);
        *buf.var0.data = &v101;
        std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&buf);
        *buf.var0.data = &v145;
        std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&buf);
      }

      else
      {
        v58 = v141;
        v59 = v140;
        while (v58 != v59)
        {
          v58 -= 64;
          std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(v58);
        }

        v141 = v59;
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v60 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf.var0.data = 0;
          _os_log_impl(&dword_258FE9000, v60, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: learnHomeSlamModel_ReplayPhase_RFOnly", buf.var0.data, 2u);
        }

        CLMicroLocationLearner::learnHomeSlamModel_ReplayPhase_RFOnly(&buf, __p, &v131, a2, &v197);
        std::vector<ULMapLabelDOAndLabelObjectID>::__vdeallocate(&var0);
        var0 = buf.var0;
        v105 = buf.var1.var0.var1.var0;
        memset(&buf, 0, 24);
        *&v145 = &buf;
        std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v145);
      }

      v90 = *(a2 + 24);
      if (!v90)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v90 + 48))(v90))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v91 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf.var0.data = 0;
          _os_log_impl(&dword_258FE9000, v91, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: Aborting persistSingleModel", buf.var0.data, 2u);
        }
      }

      else
      {
        ULModelDO::ULModelDO(&buf, &v164);
        v162 = 1;
        v145 = 0uLL;
        v146 = 0;
        std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>(&v145, *var0.data, *&var0.data[8], 0xEEEEEEEEEEEEEEEFLL * ((*&var0.data[8] - *var0.data) >> 4));
        v147 = 1;
        CLMicroLocationLearner::persistSingleModel(a1, 4, a5, &buf, &v145, v54);
        if (v147 == 1)
        {
          v101 = &v145;
          std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v101);
        }

        if (v162 == 1)
        {
          if (v161 == 1 && v160 < 0)
          {
            operator delete(v159);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((&buf.var1.var0.var1 + 1));
        }
      }

      *buf.var0.data = &var0;
      std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&buf);
      ULModel::~ULModel(__p);
      if (v169 == 1 && v168 < 0)
      {
        operator delete(v167);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v166);
      CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(v109);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v53 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&dword_258FE9000, v53, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: couldnt learn model", __p, 2u);
      }
    }

    if (v119 == 1)
    {
      *__p = &v118;
      std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v117 < 0)
      {
        operator delete(v116);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v115);
      *__p = &v114;
      std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v113 == 1)
      {
        std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&v112, 0);
        *__p = v111;
        std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](__p);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v120);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v123);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v127);
    if (v128)
    {
      v129 = v128;
      operator delete(v128);
    }

    *__p = &v131;
    std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::~__hash_table(&v134);
    *__p = &v140;
    std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](__p);
  }
}

void sub_2591891E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  a20 = &STACK[0x590];
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&a20);
  a20 = &a23;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&a20);
  ULModel::~ULModel(&STACK[0x8A0]);
  ULModelDO::~ULModelDO(&STACK[0x720]);
  CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(&a30);

  std::optional<ULHomeSlamModel>::~optional(&STACK[0x370]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x448]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x490]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x4C8]);
  v36 = STACK[0x4F0];
  if (STACK[0x4F0])
  {
    STACK[0x4F8] = v36;
    operator delete(v36);
  }

  STACK[0x370] = &STACK[0x508];
  std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::~__hash_table(&STACK[0x520]);
  STACK[0x370] = &STACK[0x568];
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::OdometrySource>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometrySource"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A726C0 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::optional<ULHomeSlamModel>::~optional(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v3 = (a1 + 184);
    std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 64);
    v3 = (a1 + 40);
    std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 32) == 1)
    {
      std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100]((a1 + 24), 0);
      v3 = a1;
      std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v3);
    }
  }

  return a1;
}

uint64_t std::vector<ULScanningEventDO>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      ULScanningEventDO::operator=(v7, v4);
      v4 += 272;
      v7 += 272;
    }

    std::vector<ULScanningEventDO>::__base_destruct_at_end[abi:ne200100](a1, v7);
  }

  return a2;
}

void CLMicroLocationLearner::learnHomeSlamModel_ReplayPhase(uint64_t *__return_ptr a1@<X8>, ULModel *a2@<X4>, uint64_t *a3@<X0>, uint64_t **a4@<X1>, uint64_t *a5@<X2>, uint64_t a6@<X3>, _OWORD *a7@<X5>)
{
  v99 = *MEMORY[0x277D85DE8];
  ULHomeSlamLocalizer::reset(&v70, a2, v96);
  LOBYTE(v63[0]) = 0;
  v69 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v7 = *a3;
  v8 = *a4;
  v58 = *a5;
  v51 = 0;
  v49 = ULSettings::get<ULSettings::OdometrySource>();
  v9 = 0x277CCA000uLL;
  while ((v7 != a3[1] || v8 != a4[1]) && v58 != a5[1])
  {
    v10 = v9;
    v11 = objc_autoreleasePoolPush();
    v12 = *(a6 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v13 = a1;
    v14 = (*(*v12 + 48))(v12);
    if (v14)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
        v13 = a1;
      }

      v15 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf.var0.data = 0;
        _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModel_ReplayPhase]: Aborting learnHomeSlamModel_ReplayPhase", buf.var0.data, 2u);
      }

      std::vector<ULMapLabelDOAndLabelObjectID>::__base_destruct_at_end[abi:ne200100](v13, *v13);
      goto LABEL_12;
    }

    if (v7 == a3[1])
    {
      v16 = 1.79769313e308;
    }

    else
    {
      v16 = *(v7 + 48);
    }

    if (v8 == a4[1])
    {
      v17 = 1.79769313e308;
    }

    else
    {
      v17 = *(v8 + 40);
    }

    if (v58 == a5[1])
    {
      v18 = 1.79769313e308;
    }

    else
    {
      v18 = *(v58 + 40);
    }

    if (v17 >= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    if (v18 >= v19)
    {
      v18 = v19;
    }

    if (v18 == v16)
    {
      CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(&buf);
      CLMicroLocationFingerprint::create(&v88.var0.var0.var0, v7, &buf);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&buf.var1);
      if (v95)
      {
        if (v93 == v94)
        {
          ULHomeSlamLocalizer::localize(&v70, a2, &v88, v96, 1, &buf);
          std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v63, &buf);
          if (v79[0] == 1)
          {
            if (__p)
            {
              v78 = __p;
              operator delete(__p);
            }

            if (v75)
            {
              v76 = v75;
              operator delete(v75);
            }

            if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
            {
              *&buf.var0.data[8] = *buf.var0.data;
              operator delete(*buf.var0.data);
            }
          }
        }

        else
        {
          ULHomeSlamLocalizer::localize(&v70, a2, &v88, v96, 0, &buf);
          std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v63, &buf);
          if (v79[0] == 1)
          {
            if (__p)
            {
              v78 = __p;
              operator delete(__p);
            }

            if (v75)
            {
              v76 = v75;
              operator delete(v75);
            }

            if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
            {
              *&buf.var0.data[8] = *buf.var0.data;
              operator delete(*buf.var0.data);
            }
          }

          if (v69 == 1)
          {
            ULLocalizationResult::getPointLocation(v63);
            if ((v20 & 0x100000000) != 0)
            {
              if ((*(a2 + 520) & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              if ((v69 & 1) == 0 || (PointLocation = ULLocalizationResult::getPointLocation(v63), (v22 & 0x100000000) == 0) || (*buf.var0.data = PointLocation, *&buf.var0.data[8] = v22, v95 != 1))
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              CLMicroLocationFingerprint::CLMicroLocationFingerprint(&buf.var1, &v88);
              ULHomeSlamModel::addPositionedImage(a2 + 39, &buf);
              *&v62 = &v86;
              std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v62);
              if (v82)
              {
                v83 = v82;
                operator delete(v82);
              }

              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v79);
              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v76);
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&buf.var1);
            }
          }
        }
      }

      if (v95 == 1)
      {
        *buf.var0.data = &v93;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&buf);
        if (v91)
        {
          v92 = v91;
          operator delete(v91);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v89);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v88.var2.var0.var1.var2);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v88);
      }

      v7 += 272;
      goto LABEL_82;
    }

    if (v18 != v17)
    {
      v25 = [ULOdometryStatus alloc];
      v26 = [MEMORY[0x277D28868] deviceClass];
      v27 = [MEMORY[0x277CBEAA8] date];
      v28 = [(ULOdometryStatus *)v25 initWithDeviceIdentifier:v26 odometrySourceType:v49 deltaPositionX:&unk_286A725D0 deltaPositionY:&unk_286A725D0 deltaPositionZ:&unk_286A725D0 date:v27];

      if (v69)
      {
        ULHomeSlamLocalizer::localize(a2, v28, v96, 0, &buf);
        std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v63, &buf);
        if (v79[0] == 1)
        {
          if (__p)
          {
            v78 = __p;
            operator delete(__p);
          }

          if (v75)
          {
            v76 = v75;
            operator delete(v75);
          }

          if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
          {
            *&buf.var0.data[8] = *buf.var0.data;
            operator delete(*buf.var0.data);
          }
        }

        if ((v69 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        ULLocalizationResult::getBlueDotConfidence(v63);
        if (v29)
        {
          if ((v69 & 1) == 0 || (BlueDotConfidence = ULLocalizationResult::getBlueDotConfidence(v63), (v31 & 1) == 0))
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if (BlueDotConfidence >= 2)
          {
            if ((v69 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            *&v62 = ULLocalizationResult::getPointLocation(v63);
            DWORD2(v62) = v43;
            BYTE12(v62) = v44;
            buf.var0.data[0] = 0;
            buf.var1.var0.var0.var0[8] = 0;
            LOBYTE(v60[0]) = 0;
            v61 = 0;
            v59 = cl::chrono::CFAbsoluteTimeClock::now();
            ULMapLabelDO::ULMapLabelDO(&v88, &v62, &buf, v60, &v59, v58, a7);
            if (v61 == 1 && v60[0])
            {
              v60[1] = v60[0];
              operator delete(v60[0]);
            }

            if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
            {
              *&buf.var0.data[8] = *buf.var0.data;
              operator delete(*buf.var0.data);
            }

            ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID(&buf, &v88, *(v58 + 128));
            v45 = a1[1];
            if (v45 >= a1[2])
            {
              v47 = std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDOAndLabelObjectID>(a1, &buf);
            }

            else
            {
              ULMapLabelDO::ULMapLabelDO(a1[1], &buf);
              v46 = v87;
              v87 = 0;
              *(v45 + 232) = v46;
              v47 = v45 + 240;
            }

            a1[1] = v47;

            if (v85 == 1)
            {
              v84 = -1;
            }

            if (v81 < 0)
            {
              operator delete(v80);
            }

            if (v75 == 1 && v73)
            {
              v74 = v73;
              operator delete(v73);
            }

            if (v72 == 1 && buf.var1.var0.var1.var0)
            {
              buf.var1.var0.var1.var1 = buf.var1.var0.var1.var0;
              operator delete(buf.var1.var0.var1.var0);
            }

            if (v94 == 1)
            {
              LODWORD(v93) = -1;
            }

            if (SHIBYTE(v92) < 0)
            {
              operator delete(v90);
            }

            if (v88.var2.var1 && v88.var2.var0.var1.var0)
            {
              v88.var2.var0.var1.var1 = v88.var2.var0.var1.var0;
              operator delete(v88.var2.var0.var1.var0);
            }

            if (v88.var1.var1 && v88.var1.var0.var1.var0)
            {
              v88.var1.var0.var1.var1 = v88.var1.var0.var1.var0;
              operator delete(v88.var1.var0.var1.var0);
            }
          }
        }
      }

      v58 += 136;
      goto LABEL_12;
    }

    v50 = v8 + 64;
    v23 = *(v8 + 48);
    if (!v23)
    {
      goto LABEL_51;
    }

    if (!v51)
    {
      v51 = v23;
LABEL_85:
      v32 = [ULOdometryStatus alloc];
      v33 = v8;
      if (*(v8 + 23) < 0)
      {
        v33 = *v8;
      }

      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:v33];
      LODWORD(v35) = *(v8 + 24);
      v36 = [*(v10 + 2992) numberWithFloat:v35];
      LODWORD(v37) = *(v8 + 28);
      v38 = [*(v10 + 2992) numberWithFloat:v37];
      LODWORD(v39) = *(v8 + 32);
      v40 = [*(v10 + 2992) numberWithFloat:v39];
      v41 = [MEMORY[0x277CBEAA8] date];
      v42 = [(ULOdometryStatus *)v32 initWithDeviceIdentifier:v34 odometrySourceType:v49 deltaPositionX:v36 deltaPositionY:v38 deltaPositionZ:v40 date:v41];

      ULHomeSlamLocalizer::localize(a2, v42, v96, 1, &buf);
      std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v63, &buf);
      if (v79[0] == 1)
      {
        if (__p)
        {
          v78 = __p;
          operator delete(__p);
        }

        if (v75)
        {
          v76 = v75;
          operator delete(v75);
        }

        if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
        {
          *&buf.var0.data[8] = *buf.var0.data;
          operator delete(*buf.var0.data);
        }
      }

      goto LABEL_96;
    }

    if (([v23 isEqual:?] & 1) == 0)
    {
LABEL_51:
      ULHomeSlamLocalizer::ioError(&v70, a2, v96);
    }

    v24 = *(v8 + 48);

    v51 = v24;
    if (v24)
    {
      goto LABEL_85;
    }

    v51 = 0;
LABEL_96:
    v8 = v50;
LABEL_12:
    v9 = v10;
LABEL_82:
    objc_autoreleasePoolPop(v11);
    if (v14)
    {
      break;
    }
  }

  if (v69 == 1)
  {
    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v64 == 1 && v63[0])
    {
      v63[1] = v63[0];
      operator delete(v63[0]);
    }
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings(v96);
}
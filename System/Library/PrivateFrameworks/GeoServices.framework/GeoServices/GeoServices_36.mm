void sub_1868F52EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, int a5, const FieldDescriptor *a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v15, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = v12[2];
  if (v13 == v12[3])
  {
    result = AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(v12, v13 + 1);
    v13 = v12[2];
  }

  v14 = *v12;
  v12[2] = v13 + 1;
  *(v14 + 4 * v13) = a5;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetInt64(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (v6[50] & 1) == 0)
    {
      return *(v6 + 5);
    }
  }

  return a3;
}

uint64_t *AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt64(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, uint64_t a4, const FieldDescriptor *a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v10, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  result[5] = a4;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedInt64(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 299);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_1868F554C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedInt64(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 299);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v10);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 8 * a3) = a4;
}

void sub_1868F562C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt64(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, uint64_t a5, const FieldDescriptor *a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v15, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = v12[2];
  if (v13 == v12[3])
  {
    result = AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve(v12, v13 + 1);
    v13 = v12[2];
  }

  v14 = *v12;
  v12[2] = v13 + 1;
  *(v14 + 8 * v13) = a5;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedUInt32(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 300);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 4 * a3);
}

void sub_1868F57D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedUInt32(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 300);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v10);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 4 * a3) = a4;
}

void sub_1868F58B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedUInt64(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 301);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_1868F5984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedUInt64(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 301);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v10);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 8 * a3) = a4;
}

void sub_1868F5A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float AddrObjGoogle::protobuf::internal::ExtensionSet::GetFloat(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, float a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[2 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (*(v6 + 50) & 1) == 0)
    {
      return v6[10];
    }
  }

  return result;
}

uint64_t *AddrObjGoogle::protobuf::internal::ExtensionSet::SetFloat(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, float a4, const FieldDescriptor *a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v10, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 10) = a4;
  return result;
}

float AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedFloat(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 302);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 4 * a3);
}

void sub_1868F5BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedFloat(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, float a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 302);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v10);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 4 * a3) = a4;
}

void sub_1868F5CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::internal::ExtensionSet::AddFloat(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, float a5, const FieldDescriptor *a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v15, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = v12[2];
  if (v13 == v12[3])
  {
    result = AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(v12, v13 + 1);
    v13 = v12[2];
  }

  v14 = *v12;
  v12[2] = v13 + 1;
  *(v14 + 4 * v13) = a5;
  return result;
}

double AddrObjGoogle::protobuf::internal::ExtensionSet::GetDouble(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, double a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[*(v4 + 8) < a2];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (*(v6 + 50) & 1) == 0)
    {
      return v6[5];
    }
  }

  return result;
}

uint64_t *AddrObjGoogle::protobuf::internal::ExtensionSet::SetDouble(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, double a4, const FieldDescriptor *a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v10, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 5) = a4;
  return result;
}

double AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedDouble(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 303);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_1868F5F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedDouble(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, double a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 303);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v10);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 8 * a3) = a4;
}

void sub_1868F600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::internal::ExtensionSet::AddDouble(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, double a5, const FieldDescriptor *a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v15, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = v12[2];
  if (v13 == v12[3])
  {
    result = AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve(v12, v13 + 1);
    v13 = v12[2];
  }

  v14 = *v12;
  v12[2] = v13 + 1;
  *(v14 + 8 * v13) = a5;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetBool(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (v6[50] & 1) == 0)
    {
      a3 = v6[40];
    }
  }

  return a3 & 1;
}

uint64_t *AddrObjGoogle::protobuf::internal::ExtensionSet::SetBool(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, const FieldDescriptor *a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v10, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 40) = a4;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedBool(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 304);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + a3);
}

void sub_1868F626C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedBool(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, char a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 304);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v10);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + a3) = a4;
}

void sub_1868F634C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::internal::ExtensionSet::AddBool(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, char a5, const FieldDescriptor *a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v15, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = v12[2];
  if (v13 == v12[3])
  {
    result = AddrObjGoogle::protobuf::RepeatedField<BOOL>::Reserve(v12, v13 + 1);
    v13 = v12[2];
  }

  v14 = *v12;
  v12[2] = v13 + 1;
  *(v14 + v13) = a5;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::MutableRawRepeatedField(AddrObjGoogle::protobuf::internal::ExtensionSet *this, uint64_t a2)
{
  v2 = a2;
  v4 = this + 8;
  v3 = *(this + 1);
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = this + 8;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 == v4 || *(v5 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 312);
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, "no extension numbered ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, v2);
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = v4;
  }

  return *(v5 + 5);
}

void sub_1868F64F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedEnum(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 346);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 4 * a3);
}

void sub_1868F65C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedEnum(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 353);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v10);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 4 * a3) = a4;
}

void sub_1868F66A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::internal::ExtensionSet::MutableString(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, const FieldDescriptor *a4)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  v6 = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v10, &v10);
  v7 = v6;
  v6[7] = a4;
  if (v8)
  {
    *(v6 + 48) = a3;
    *(v6 + 49) = 0;
    operator new();
  }

  result = v6[5];
  *(v7 + 50) &= 0xF0u;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedString(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 407);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_1868F6810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::MutableRepeatedString(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 414);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_1868F68E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::internal::ExtensionSet::AddString(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, const FieldDescriptor *a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v13 = a2;
  v6 = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v13, &v13);
  *(v6 + 7) = a4;
  if (v7)
  {
    *(v6 + 48) = a3;
    *(v6 + 49) = 1;
    *(v6 + 51) = 0;
    operator new();
  }

  v8 = *(v6 + 5);
  v9 = v8[3];
  v10 = v8[2];
  if (v10 >= v9)
  {
    if (v9 == v8[4])
    {
      v6 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(v8, v9 + 1);
      v9 = v8[3];
    }

    v8[3] = v9 + 1;
    AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(v6);
  }

  v11 = *v8;
  v8[2] = v10 + 1;
  return *(v11 + 8 * v10);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedMessage(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 539);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_1868F6AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::MutableRepeatedMessage(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 546);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_1868F6B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::AddMessage(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = a2;
  v8 = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(a1, &v16, &v16);
  v9 = v8;
  v8[7] = a5;
  if (v10)
  {
    *(v8 + 48) = a3;
    *(v8 + 49) = 1;
    operator new();
  }

  v11 = v8[5];
  v12 = *(v11 + 8);
  if (v12 >= *(v11 + 12) || (v13 = *v11, *(v11 + 8) = v12 + 1, (v14 = *(v13 + 8 * v12)) == 0))
  {
    v14 = (*(*a4 + 24))(a4);
    AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<AddrObjGoogle::protobuf::RepeatedPtrField<AddrObjGoogle::protobuf::MessageLite>::TypeHandler>(v9[5], v14);
  }

  return v14;
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::RemoveLast(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2)
{
  v3 = this + 8;
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = this + 8;
  do
  {
    if (*(v2 + 8) >= a2)
    {
      v4 = v2;
    }

    v2 = *&v2[8 * (*(v2 + 8) < a2)];
  }

  while (v2);
  if (v4 == v3 || *(v4 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 585);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: iter != extensions_.end(): ");
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v15, v6);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    v4 = v3;
  }

  v7 = AddrObjGoogle::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v4[48]];
  if (v7 > 5)
  {
    if (v7 <= 8)
    {
LABEL_18:
      --*(*(v4 + 5) + 8);
      return;
    }

    if (v7 == 9)
    {
      v11 = *(v4 + 5);
      v12 = *v11;
      v13 = *(v11 + 2) - 1;
      *(v11 + 2) = v13;
      v14 = *(v12 + 8 * v13);
      if (*(v14 + 23) < 0)
      {
        **v14 = 0;
        *(v14 + 8) = 0;
      }

      else
      {
        *v14 = 0;
        *(v14 + 23) = 0;
      }
    }

    else if (v7 == 10)
    {
      v8 = *(v4 + 5);
      v9 = *v8;
      v10 = *(v8 + 2) - 1;
      *(v8 + 2) = v10;
      (*(**(v9 + 8 * v10) + 32))(*(v9 + 8 * v10));
    }
  }

  else if (v7 > 2 || v7 == 1 || v7 == 2)
  {
    goto LABEL_18;
  }
}

void sub_1868F6E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::ReleaseLast(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2)
{
  v3 = this + 8;
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = this + 8;
  do
  {
    if (*(v2 + 8) >= a2)
    {
      v4 = v2;
    }

    v2 = *&v2[8 * (*(v2 + 8) < a2)];
  }

  while (v2);
  if (v4 == v3 || *(v4 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 626);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: iter != extensions_.end(): ");
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v12, v6);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v4 = v3;
  }

  v7 = *(v4 + 5);
  v8 = *v7;
  v9 = *(v7 + 3);
  v10 = *(v7 + 2);
  result = *(*v7 + 8 * (v10 - 1));
  *(v7 + 2) = v10 - 1;
  *(v7 + 3) = v9 - 1;
  if (v10 < v9)
  {
    *(v8 + 8 * (v10 - 1)) = *(v8 + 8 * (v9 - 1));
  }

  return result;
}

void sub_1868F6F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float AddrObjGoogle::protobuf::internal::ExtensionSet::SwapElements(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 636);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: iter != extensions_.end(): ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v21, v10);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  v12 = AddrObjGoogle::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8[48]];
  if (v12 <= 5)
  {
    if (v12 <= 2)
    {
      if (v12 != 1)
      {
        if (v12 != 2)
        {
          return *&v11;
        }

        goto LABEL_21;
      }
    }

    else if (v12 != 3)
    {
      if (v12 != 4)
      {
        v13 = **(v8 + 5);
        v11 = *(v13 + 8 * a3);
        *(v13 + 8 * a3) = *(v13 + 8 * a4);
        *(v13 + 8 * a4) = v11;
        return *&v11;
      }

LABEL_21:
      v14 = **(v8 + 5);
      v15 = *(v14 + 8 * a3);
      *(v14 + 8 * a3) = *(v14 + 8 * a4);
      *(v14 + 8 * a4) = v15;
      return *&v11;
    }

LABEL_22:
    v16 = **(v8 + 5);
    v17 = *(v16 + 4 * a3);
    *(v16 + 4 * a3) = *(v16 + 4 * a4);
    *(v16 + 4 * a4) = v17;
    return *&v11;
  }

  if (v12 <= 7)
  {
    v18 = **(v8 + 5);
    if (v12 == 6)
    {
      LODWORD(v11) = *(v18 + 4 * a3);
      *(v18 + 4 * a3) = *(v18 + 4 * a4);
      *(v18 + 4 * a4) = v11;
    }

    else
    {
      v19 = *(v18 + a3);
      *(v18 + a3) = *(v18 + a4);
      *(v18 + a4) = v19;
    }
  }

  else
  {
    if (v12 == 8)
    {
      goto LABEL_22;
    }

    if (v12 == 9 || v12 == 10)
    {
      goto LABEL_21;
    }
  }

  return *&v11;
}

void sub_1868F7114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(unsigned __int8 *this)
{
  v1 = this + 8;
  v2 = *this;
  if (*this != this + 8)
  {
    do
    {
      this = AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::Clear(v2 + 40);
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != v1);
  }

  return this;
}

AddrObjGoogle::protobuf::internal::ExtensionSet *AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom(AddrObjGoogle::protobuf::internal::ExtensionSet *this, const AddrObjGoogle::protobuf::internal::ExtensionSet **a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != (a2 + 1))
  {
    v4 = this;
    while (*(v3 + 49) != 1)
    {
      if ((*(v3 + 50) & 1) == 0)
      {
        v13 = *(v3 + 48);
        v14 = AddrObjGoogle::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v13];
        if (v14 > 5)
        {
          if (v14 <= 7)
          {
            if (v14 == 6)
            {
              v50 = *(v3 + 8);
              v51 = *(v3 + 10);
              v52 = v3[7];
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v67 = v50;
              this = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(v4, &v67, &v67);
              *(this + 7) = v52;
              if (v53)
              {
                *(this + 48) = v13;
                *(this + 49) = 0;
              }

              *(this + 50) &= 0xF0u;
              *(this + 10) = v51;
            }

            else
            {
              this = AddrObjGoogle::protobuf::internal::ExtensionSet::SetBool(v4, *(v3 + 8), *(v3 + 48), *(v3 + 40), v3[7]);
            }

            goto LABEL_80;
          }

          switch(v14)
          {
            case 8:
LABEL_62:
              v43 = *(v3 + 8);
              v44 = *(v3 + 10);
              v45 = v3[7];
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v67 = v43;
              this = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(v4, &v67, &v67);
              *(this + 7) = v45;
              if (v46)
              {
                *(this + 48) = v13;
                *(this + 49) = 0;
              }

              *(this + 50) &= 0xF0u;
              *(this + 10) = v44;
              break;
            case 9:
              v54 = v3[5];
              v55 = AddrObjGoogle::protobuf::internal::ExtensionSet::MutableString(v4, *(v3 + 8), *(v3 + 48), v3[7]);
              this = std::string::operator=(v55, v54);
              break;
            case 10:
              v26 = *(v3 + 8);
              v27 = v3[7];
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v67 = v26;
              v28 = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(v4, &v67, &v67);
              v29 = v28;
              v28[7] = v27;
              if (v30)
              {
                *(v28 + 48) = *(v3 + 48);
                *(v28 + 51) = *(v3 + 51);
                *(v28 + 49) = 0;
                v31 = *(v28 + 50) & 0xF;
                if ((*(v3 + 50) & 0x10) == 0)
                {
                  *(v28 + 50) = v31;
                  v32 = (*(*v3[5] + 24))(v3[5]);
                  v29[5] = v32;
                  goto LABEL_105;
                }

                *(v28 + 50) = v31 | 0x10;
                v66 = (*(*v3[5] + 16))(v3[5]);
                v29[5] = v66;
                this = (*(*v66 + 80))(v66, v3[5]);
LABEL_111:
                *(v29 + 50) &= 0xF0u;
                break;
              }

              v63 = v28[5];
              v64 = v3[5];
              if ((*(v3 + 50) & 0x10) != 0)
              {
                if ((*(v28 + 50) & 0x10) != 0)
                {
                  this = (*(*v63 + 80))(v28[5], v64);
                  goto LABEL_111;
                }

                v64 = (*(*v64 + 24))(v3[5], v28[5]);
                v65 = *v63;
              }

              else
              {
                v65 = *v63;
                if ((*(v28 + 50) & 0x10) != 0)
                {
                  v32 = (*(v65 + 32))(v28[5], v64);
LABEL_105:
                  this = (*(*v32 + 56))(v32, v3[5]);
                  goto LABEL_111;
                }
              }

              this = (*(v65 + 56))(v63, v64);
              goto LABEL_111;
          }
        }

        else if (v14 <= 2)
        {
          if (v14 == 1)
          {
            goto LABEL_62;
          }

          if (v14 == 2)
          {
LABEL_59:
            v39 = *(v3 + 8);
            v40 = v3[5];
            v41 = v3[7];
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v67 = v39;
            this = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(v4, &v67, &v67);
            *(this + 7) = v41;
            if (v42)
            {
              *(this + 48) = v13;
              *(this + 49) = 0;
            }

            *(this + 50) &= 0xF0u;
            *(this + 5) = v40;
          }
        }

        else
        {
          if (v14 == 3)
          {
            goto LABEL_62;
          }

          if (v14 == 4)
          {
            goto LABEL_59;
          }

          v15 = *(v3 + 8);
          v16 = v3[5];
          v17 = v3[7];
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v67 = v15;
          this = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(v4, &v67, &v67);
          *(this + 7) = v17;
          if (v18)
          {
            *(this + 48) = v13;
            *(this + 49) = 0;
          }

          *(this + 50) &= 0xF0u;
          *(this + 5) = v16;
        }
      }

LABEL_80:
      v47 = v3[1];
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
          v48 = v3[2];
          v49 = *v48 == v3;
          v3 = v48;
        }

        while (!v49);
      }

      v3 = v48;
      if (v48 == v2)
      {
        return this;
      }
    }

    v5 = *(v3 + 8);
    v6 = v3[7];
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v67 = v5;
    this = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(v4, &v67, &v67);
    v8 = this;
    *(this + 7) = v6;
    v9 = *(v3 + 48);
    if (v7)
    {
      *(this + 48) = v9;
      *(this + 51) = *(v3 + 51);
      *(this + 49) = 1;
    }

    v10 = AddrObjGoogle::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9];
    if (v10 > 5)
    {
      if (v10 <= 7)
      {
        if (v10 != 6)
        {
          if (v7)
          {
            operator new();
          }

          v11 = v3[5];
          v33 = *(v11 + 2);
          if (!v33)
          {
            goto LABEL_80;
          }

          v34 = *(this + 5);
          AddrObjGoogle::protobuf::RepeatedField<BOOL>::Reserve(v34, v34[2] + v33);
          v35 = *v11;
          v36 = *(v11 + 2);
          v37 = (*v34 + v34[2]);
          goto LABEL_79;
        }

        if (v7)
        {
          operator new();
        }

        v11 = v3[5];
        v38 = *(v11 + 2);
        if (!v38)
        {
          goto LABEL_80;
        }

        goto LABEL_74;
      }

      if (v10 != 8)
      {
        if (v10 == 9)
        {
          if (v7)
          {
            operator new();
          }

          v56 = *(this + 5);
          v57 = v3[5];
          this = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(v56, *(v57 + 2) + v56[2]);
          if (*(v57 + 2) >= 1)
          {
            v58 = 0;
            do
            {
              v59 = *(*v57 + 8 * v58);
              v60 = v56[3];
              v61 = v56[2];
              if (v61 >= v60)
              {
                if (v60 == v56[4])
                {
                  this = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(v56, v60 + 1);
                  v60 = v56[3];
                }

                v56[3] = v60 + 1;
                AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(this);
              }

              v62 = *v56;
              v56[2] = v61 + 1;
              this = std::string::operator=(*(v62 + 8 * v61), v59);
              ++v58;
            }

            while (v58 < *(v57 + 2));
          }
        }

        else if (v10 == 10)
        {
          if (v7)
          {
            operator new();
          }

          v19 = v3[5];
          if (*(v19 + 2) >= 1)
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 8 * v20);
              v22 = v8[5];
              v23 = *(v22 + 8);
              if (v23 >= *(v22 + 12) || (v24 = *v22, *(v22 + 8) = v23 + 1, (v25 = *(v24 + 8 * v23)) == 0))
              {
                v25 = (*(*v21 + 24))(v21);
                AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<AddrObjGoogle::protobuf::RepeatedPtrField<AddrObjGoogle::protobuf::MessageLite>::TypeHandler>(v8[5], v25);
              }

              this = (*(*v25 + 56))(v25, v21);
              ++v20;
            }

            while (v20 < *(v19 + 2));
          }
        }

        goto LABEL_80;
      }
    }

    else
    {
      if (v10 > 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            if (v7)
            {
              operator new();
            }

            v11 = v3[5];
            v12 = *(v11 + 2);
            if (!v12)
            {
              goto LABEL_80;
            }
          }

          else
          {
            if (v7)
            {
              operator new();
            }

            v11 = v3[5];
            v12 = *(v11 + 2);
            if (!v12)
            {
              goto LABEL_80;
            }
          }

          goto LABEL_78;
        }

        if (v7)
        {
          operator new();
        }

        v11 = v3[5];
        v38 = *(v11 + 2);
        if (!v38)
        {
          goto LABEL_80;
        }

LABEL_74:
        v34 = *(this + 5);
        AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(v34, v34[2] + v38);
        v37 = (*v34 + 4 * v34[2]);
        v35 = *v11;
        v36 = 4 * *(v11 + 2);
LABEL_79:
        this = memcpy(v37, v35, v36);
        v34[2] += *(v11 + 2);
        goto LABEL_80;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_80;
        }

        if (v7)
        {
          operator new();
        }

        v11 = v3[5];
        v12 = *(v11 + 2);
        if (!v12)
        {
          goto LABEL_80;
        }

LABEL_78:
        v34 = *(this + 5);
        AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve(v34, v34[2] + v12);
        v37 = (*v34 + 8 * v34[2]);
        v35 = *v11;
        v36 = 8 * *(v11 + 2);
        goto LABEL_79;
      }
    }

    if (v7)
    {
      operator new();
    }

    v11 = v3[5];
    v38 = *(v11 + 2);
    if (!v38)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

  return this;
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(uint64_t this, int a2, int a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = (this + 8);
  v4 = *(this + 8);
  if (v4)
  {
    v8 = (this + 8);
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v8 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v8 != v5)
    {
      do
      {
        v9 = *(v8 + 8);
        if (v9 >= a3)
        {
          break;
        }

        AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::SerializeFieldWithCachedSizes((v8 + 5), v9, a4, a4);
        v10 = v8[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v5);
    }
  }
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::SerializeFieldWithCachedSizes(AddrObjGoogle::protobuf::internal::ExtensionSet::Extension *this, AddrObjGoogle::protobuf::internal::WireFormatLite *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      if (*(this + 3))
      {
        AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * a2) | 2);
        AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, *(this + 3));
        switch(*(this + 8))
        {
          case 1:
            v79 = *this;
            if (*(*this + 8) >= 1)
            {
              v80 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, *(*v79 + 8 * v80++));
                v79 = *this;
              }

              while (v80 < *(*this + 8));
            }

            break;
          case 2:
            v81 = *this;
            if (*(*this + 8) >= 1)
            {
              v82 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, *(*v81 + 4 * v82++));
                v81 = *this;
              }

              while (v82 < *(*this + 8));
            }

            break;
          case 3:
            v71 = *this;
            if (*(*this + 8) >= 1)
            {
              v72 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a3, *(*v71 + 8 * v72++));
                v71 = *this;
              }

              while (v72 < *(*this + 8));
            }

            break;
          case 4:
            v75 = *this;
            if (*(*this + 8) >= 1)
            {
              v76 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a3, *(*v75 + 8 * v76++));
                v75 = *this;
              }

              while (v76 < *(*this + 8));
            }

            break;
          case 5:
            v66 = *this;
            if (*(*this + 8) >= 1)
            {
              v67 = 0;
              do
              {
                v68 = *(*v66 + 4 * v67);
                if ((v68 & 0x80000000) != 0)
                {
                  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a3, v68);
                }

                else
                {
                  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, v68);
                }

                ++v67;
                v66 = *this;
              }

              while (v67 < *(*this + 8));
            }

            break;
          case 6:
            v88 = *this;
            if (*(*this + 8) >= 1)
            {
              v89 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, *(*v88 + 8 * v89++));
                v88 = *this;
              }

              while (v89 < *(*this + 8));
            }

            break;
          case 7:
            v90 = *this;
            if (*(*this + 8) >= 1)
            {
              v91 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, *(*v90 + 4 * v91++));
                v90 = *this;
              }

              while (v91 < *(*this + 8));
            }

            break;
          case 8:
            v77 = *this;
            if (*(*this + 8) >= 1)
            {
              v78 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, *(*v77 + v78++));
                v77 = *this;
              }

              while (v78 < *(*this + 8));
            }

            break;
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
            AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v95, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 1182);
            v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v95, "Non-primitive types can't be packed.");
            AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v94, v7);
            AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v95[0].__r_.__value_.__l.__data_);
            break;
          case 0xD:
            v69 = *this;
            if (*(*this + 8) >= 1)
            {
              v70 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, *(*v69 + 4 * v70++));
                v69 = *this;
              }

              while (v70 < *(*this + 8));
            }

            break;
          case 0xE:
            v85 = *this;
            if (*(*this + 8) >= 1)
            {
              v86 = 0;
              do
              {
                v87 = *(*v85 + 4 * v86);
                if ((v87 & 0x80000000) != 0)
                {
                  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a3, v87);
                }

                else
                {
                  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, v87);
                }

                ++v86;
                v85 = *this;
              }

              while (v86 < *(*this + 8));
            }

            break;
          case 0xF:
            v64 = *this;
            if (*(*this + 8) >= 1)
            {
              v65 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, *(*v64 + 4 * v65++));
                v64 = *this;
              }

              while (v65 < *(*this + 8));
            }

            break;
          case 0x10:
            v73 = *this;
            if (*(*this + 8) >= 1)
            {
              v74 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, *(*v73 + 8 * v74++));
                v73 = *this;
              }

              while (v74 < *(*this + 8));
            }

            break;
          case 0x11:
            v62 = *this;
            if (*(*this + 8) >= 1)
            {
              v63 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, (2 * *(*v62 + 4 * v63)) ^ (*(*v62 + 4 * v63) >> 31));
                ++v63;
                v62 = *this;
              }

              while (v63 < *(*this + 8));
            }

            break;
          case 0x12:
            v83 = *this;
            if (*(*this + 8) >= 1)
            {
              v84 = 0;
              do
              {
                AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a3, (2 * *(*v83 + 8 * v84)) ^ (*(*v83 + 8 * v84) >> 63));
                ++v84;
                v83 = *this;
              }

              while (v84 < *(*this + 8));
            }

            break;
          default:
            return;
        }
      }
    }

    else
    {
      switch(*(this + 8))
      {
        case 1:
          v8 = *this;
          if (*(*this + 8) >= 1)
          {
            v9 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteDouble(a2, a3, *(*v8 + 8 * v9++), a3);
              v8 = *this;
            }

            while (v9 < *(*this + 8));
          }

          break;
        case 2:
          v44 = *this;
          if (*(*this + 8) >= 1)
          {
            v45 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFloat(a2, a3, *(*v44 + 4 * v45++), a3);
              v44 = *this;
            }

            while (v45 < *(*this + 8));
          }

          break;
        case 3:
          v32 = *this;
          if (*(*this + 8) >= 1)
          {
            v33 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt64(a2, *(*v32 + 8 * v33++), a3, a4);
              v32 = *this;
            }

            while (v33 < *(*this + 8));
          }

          break;
        case 4:
          v40 = *this;
          if (*(*this + 8) >= 1)
          {
            v41 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt64(a2, *(*v40 + 8 * v41++), a3, a4);
              v40 = *this;
            }

            while (v41 < *(*this + 8));
          }

          break;
        case 5:
          v21 = *this;
          if (*(*this + 8) >= 1)
          {
            v22 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(a2, *(*v21 + 4 * v22++), a3, a4);
              v21 = *this;
            }

            while (v22 < *(*this + 8));
          }

          break;
        case 6:
          v50 = *this;
          if (*(*this + 8) >= 1)
          {
            v51 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed64(a2, *(*v50 + 8 * v51++), a3, a4);
              v50 = *this;
            }

            while (v51 < *(*this + 8));
          }

          break;
        case 7:
          v54 = *this;
          if (*(*this + 8) >= 1)
          {
            v55 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed32(a2, *(*v54 + 4 * v55++), a3, a4);
              v54 = *this;
            }

            while (v55 < *(*this + 8));
          }

          break;
        case 8:
          v42 = *this;
          if (*(*this + 8) >= 1)
          {
            v43 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(a2, *(*v42 + v43++), a3, a4);
              v42 = *this;
            }

            while (v43 < *(*this + 8));
          }

          break;
        case 9:
          v59 = *this;
          if (*(*this + 8) >= 1)
          {
            v60 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(a2, *(*v59 + 8 * v60++), a3);
              v59 = *this;
            }

            while (v60 < *(*this + 8));
          }

          break;
        case 0xA:
          v29 = *this;
          if (*(*this + 8) >= 1)
          {
            v30 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteGroup(a2, *(*v29 + 8 * v30++), a3);
              v29 = *this;
            }

            while (v30 < *(*this + 8));
          }

          break;
        case 0xB:
          v56 = *this;
          if (*(*this + 8) >= 1)
          {
            v57 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessage(a2, *(*v56 + 8 * v57++), a3);
              v56 = *this;
            }

            while (v57 < *(*this + 8));
          }

          break;
        case 0xC:
          v18 = *this;
          if (*(*this + 8) >= 1)
          {
            v19 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteBytes(a2, *(*v18 + 8 * v19++), a3);
              v18 = *this;
            }

            while (v19 < *(*this + 8));
          }

          break;
        case 0xD:
          v25 = *this;
          if (*(*this + 8) >= 1)
          {
            v26 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(a2, *(*v25 + 4 * v26++), a3, a4);
              v25 = *this;
            }

            while (v26 < *(*this + 8));
          }

          break;
        case 0xE:
          v52 = *this;
          if (*(*this + 8) >= 1)
          {
            v53 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(a2, *(*v52 + 4 * v53++), a3, a4);
              v52 = *this;
            }

            while (v53 < *(*this + 8));
          }

          break;
        case 0xF:
          v14 = *this;
          if (*(*this + 8) >= 1)
          {
            v15 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed32(a2, *(*v14 + 4 * v15++), a3, a4);
              v14 = *this;
            }

            while (v15 < *(*this + 8));
          }

          break;
        case 0x10:
          v36 = *this;
          if (*(*this + 8) >= 1)
          {
            v37 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed64(a2, *(*v36 + 8 * v37++), a3, a4);
              v36 = *this;
            }

            while (v37 < *(*this + 8));
          }

          break;
        case 0x11:
          v11 = *this;
          if (*(*this + 8) >= 1)
          {
            v12 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteSInt32(a2, *(*v11 + 4 * v12++), a3, a4);
              v11 = *this;
            }

            while (v12 < *(*this + 8));
          }

          break;
        case 0x12:
          v47 = *this;
          if (*(*this + 8) >= 1)
          {
            v48 = 0;
            do
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteSInt64(a2, *(*v47 + 8 * v48++), a3, a4);
              v47 = *this;
            }

            while (v48 < *(*this + 8));
          }

          break;
        default:
          return;
      }
    }
  }

  else if ((*(this + 10) & 1) == 0)
  {
    switch(*(this + 8))
    {
      case 1:
        v10 = *this;

        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteDouble(a2, a3, v10, a3);
        return;
      case 2:
        v46 = *this;

        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFloat(a2, a3, v46, a3);
        return;
      case 3:
        v34 = *this;
        v35 = a2;

        goto LABEL_65;
      case 4:
        v34 = *this;
        v35 = a2;

LABEL_65:
        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt64(v35, v34, a3, a4);
        return;
      case 5:
        v23 = *this;
        v24 = a2;

        goto LABEL_44;
      case 6:
        v38 = *this;
        v39 = a2;

        goto LABEL_72;
      case 7:
        v16 = *this;
        v17 = a2;

        goto LABEL_30;
      case 8:
        v27 = *this;
        v28 = a2;

        goto LABEL_51;
      case 9:
        v61 = *this;

        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(a2, v61, a3);
        return;
      case 0xA:
        v31 = *this;

        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteGroup(a2, v31, a3);
        return;
      case 0xB:
        v58 = *this;
        if ((*(this + 10) & 0x10) != 0)
        {
          v92 = *(*v58 + 104);
          v93 = *this;

          v92(v93, a2);
        }

        else
        {

          AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessage(a2, v58, a3);
        }

        return;
      case 0xC:
        v20 = *this;

        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteBytes(a2, v20, a3);
        return;
      case 0xD:
        v27 = *this;
        v28 = a2;

LABEL_51:
        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(v28, v27, a3, a4);
        break;
      case 0xE:
        v23 = *this;
        v24 = a2;

LABEL_44:
        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(v24, v23, a3, a4);
        break;
      case 0xF:
        v16 = *this;
        v17 = a2;

LABEL_30:
        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed32(v17, v16, a3, a4);
        break;
      case 0x10:
        v38 = *this;
        v39 = a2;

LABEL_72:
        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed64(v39, v38, a3, a4);
        break;
      case 0x11:
        v13 = *this;

        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteSInt32(a2, v13, a3, a4);
        break;
      case 0x12:
        v49 = *this;

        AddrObjGoogle::protobuf::internal::WireFormatLite::WriteSInt64(a2, v49, a3, a4);
        break;
      default:
        return;
    }
  }
}

void sub_1868F8878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  v1 = this + 1;
  v2 = *this;
  if (*this == (this + 1))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::ByteSize((v2 + 5), *(v2 + 8));
    v5 = v2[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v2[2];
        v7 = *v6 == v2;
        v2 = v6;
      }

      while (!v7);
    }

    v3 = (v4 + v3);
    v2 = v6;
  }

  while (v6 != v1);
  return v3;
}

unint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::ByteSize(AddrObjGoogle::protobuf::internal::ExtensionSet::Extension *this, unint64_t a2)
{
  v2 = a2;
  if (*(this + 9) == 1)
  {
    v4 = *(this + 8);
    if (*(this + 11) == 1)
    {
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v6 = (8 * *(*this + 8));
          goto LABEL_136;
        case 2:
        case 7:
        case 0xF:
          v6 = (4 * *(*this + 8));
          goto LABEL_136;
        case 3:
          v73 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v74 = 0;
          LODWORD(v6) = 0;
          do
          {
            v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(*(*v73 + 8 * v74++)) + v6;
            v73 = *this;
          }

          while (v74 < *(*this + 8));
          goto LABEL_136;
        case 4:
          v75 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v76 = 0;
          LODWORD(v6) = 0;
          do
          {
            v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(*(*v75 + 8 * v76++)) + v6;
            v75 = *this;
          }

          while (v76 < *(*this + 8));
          goto LABEL_136;
        case 5:
          v58 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v59 = 0;
          LODWORD(v6) = 0;
          do
          {
            v60 = *(*v58 + 4 * v59);
            if ((v60 & 0x80000000) != 0)
            {
              v61 = 10;
            }

            else if (v60 >= 0x80)
            {
              v61 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
              v58 = *this;
            }

            else
            {
              v61 = 1;
            }

            v6 = (v61 + v6);
            ++v59;
          }

          while (v59 < *(v58 + 8));
          goto LABEL_136;
        case 8:
          v6 = *(*this + 8);
          goto LABEL_136;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v104, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 1294);
          v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v104, "Non-primitive types can't be packed.");
          AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v103, v5);
          AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v104[0].__r_.__value_.__l.__data_);
          goto LABEL_5;
        case 0xD:
          v26 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v27 = 0;
          LODWORD(v6) = 0;
          do
          {
            v28 = *(*v26 + 4 * v27);
            if (v28 >= 0x80)
            {
              v29 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
              v26 = *this;
            }

            else
            {
              v29 = 1;
            }

            v6 = (v29 + v6);
            ++v27;
          }

          while (v27 < *(v26 + 8));
          goto LABEL_136;
        case 0xE:
          v44 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v45 = 0;
          LODWORD(v6) = 0;
          do
          {
            v46 = *(*v44 + 4 * v45);
            if ((v46 & 0x80000000) != 0)
            {
              v47 = 10;
            }

            else if (v46 >= 0x80)
            {
              v47 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
              v44 = *this;
            }

            else
            {
              v47 = 1;
            }

            v6 = (v47 + v6);
            ++v45;
          }

          while (v45 < *(v44 + 8));
          goto LABEL_136;
        case 0x11:
          v17 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v18 = 0;
          LODWORD(v6) = 0;
          do
          {
            v19 = ((2 * *(*v17 + 4 * v18)) ^ (*(*v17 + 4 * v18) >> 31));
            if (v19 >= 0x80)
            {
              v20 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
              v17 = *this;
            }

            else
            {
              v20 = 1;
            }

            v6 = (v20 + v6);
            ++v18;
          }

          while (v18 < *(v17 + 8));
          goto LABEL_136;
        case 0x12:
          v62 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v63 = 0;
          LODWORD(v6) = 0;
          do
          {
            v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64((2 * *(*v62 + 8 * v63)) ^ (*(*v62 + 8 * v63) >> 63)) + v6;
            ++v63;
            v62 = *this;
          }

          while (v63 < *(*this + 8));
LABEL_136:
          *(this + 3) = v6;
          if (v6 >= 1)
          {
            if (v6 >= 0x80)
            {
              v77 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
            }

            else
            {
              v77 = 1;
            }

            v78 = v77 + v6;
            if ((8 * v2) >= 0x80)
            {
              v79 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(((8 * v2) | 2u));
            }

            else
            {
              v79 = 1;
            }

            v6 = (v78 + v79);
          }

          break;
        default:
LABEL_5:
          v6 = 0;
          *(this + 3) = 0;
          break;
      }
    }

    else
    {
      v7 = (8 * a2);
      if (v7 >= 0x80)
      {
        v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v8 = 1;
      }

      v12 = v8 << (v4 == 10);
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v13 = v12 + 8;
          goto LABEL_19;
        case 2:
        case 7:
        case 0xF:
          v13 = v12 + 4;
LABEL_19:
          v6 = (*(*this + 8) * v13);
          break;
        case 3:
          v67 = *this;
          v68 = *(*this + 8);
          v6 = (v68 * v12);
          if (v68 >= 1)
          {
            v69 = 0;
            do
            {
              v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(*(*v67 + 8 * v69++)) + v6;
              v67 = *this;
            }

            while (v69 < *(*this + 8));
          }

          break;
        case 4:
          v70 = *this;
          v71 = *(*this + 8);
          v6 = (v71 * v12);
          if (v71 >= 1)
          {
            v72 = 0;
            do
            {
              v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(*(*v70 + 8 * v72++)) + v6;
              v70 = *this;
            }

            while (v72 < *(*this + 8));
          }

          break;
        case 5:
          v53 = *this;
          v54 = *(*this + 8);
          v6 = (v54 * v12);
          if (v54 >= 1)
          {
            v55 = 0;
            do
            {
              v56 = *(*v53 + 4 * v55);
              if ((v56 & 0x80000000) != 0)
              {
                v57 = 10;
              }

              else if (v56 >= 0x80)
              {
                v57 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
                v53 = *this;
              }

              else
              {
                v57 = 1;
              }

              v6 = (v57 + v6);
              ++v55;
            }

            while (v55 < *(v53 + 8));
          }

          break;
        case 8:
          v6 = (*(*this + 8) + *(*this + 8) * v12);
          break;
        case 9:
          v91 = *this;
          v92 = *(*this + 8);
          v6 = (v92 * v12);
          if (v92 >= 1)
          {
            v93 = 0;
            do
            {
              v94 = *(*v91 + 8 * v93);
              v95 = *(v94 + 23);
              v96 = v95;
              v97 = *(v94 + 8);
              if ((v95 & 0x80u) == 0)
              {
                v98 = *(v94 + 23);
              }

              else
              {
                v98 = v97;
              }

              if (v98 >= 0x80)
              {
                v99 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98);
                v95 = *(v94 + 23);
                v97 = *(v94 + 8);
                v91 = *this;
                v96 = *(v94 + 23);
              }

              else
              {
                v99 = 1;
              }

              if (v96 < 0)
              {
                v95 = v97;
              }

              v6 = (v99 + v6 + v95);
              ++v93;
            }

            while (v93 < *(v91 + 8));
          }

          break;
        case 0xA:
          v35 = *this;
          v36 = *(*this + 8);
          v6 = (v36 * v12);
          if (v36 >= 1)
          {
            v37 = 0;
            do
            {
              v6 = (*(**(*v35 + 8 * v37) + 72))(*(*v35 + 8 * v37)) + v6;
              ++v37;
              v35 = *this;
            }

            while (v37 < *(*this + 8));
          }

          break;
        case 0xB:
          v38 = *this;
          v39 = *(*this + 8);
          v6 = (v39 * v12);
          if (v39 >= 1)
          {
            v40 = 0;
            do
            {
              v41 = (*(**(*v38 + 8 * v40) + 72))(*(*v38 + 8 * v40));
              v42 = v41;
              if (v41 >= 0x80)
              {
                v43 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
              }

              else
              {
                v43 = 1;
              }

              v6 = (v42 + v6 + v43);
              ++v40;
              v38 = *this;
            }

            while (v40 < *(*this + 8));
          }

          break;
        case 0xC:
          v81 = *this;
          v82 = *(*this + 8);
          v6 = (v82 * v12);
          if (v82 >= 1)
          {
            v83 = 0;
            do
            {
              v84 = *(*v81 + 8 * v83);
              v85 = *(v84 + 23);
              v86 = v85;
              v87 = *(v84 + 8);
              if ((v85 & 0x80u) == 0)
              {
                v88 = *(v84 + 23);
              }

              else
              {
                v88 = v87;
              }

              if (v88 >= 0x80)
              {
                v89 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88);
                v85 = *(v84 + 23);
                v87 = *(v84 + 8);
                v81 = *this;
                v86 = *(v84 + 23);
              }

              else
              {
                v89 = 1;
              }

              if (v86 < 0)
              {
                v85 = v87;
              }

              v6 = (v89 + v6 + v85);
              ++v83;
            }

            while (v83 < *(v81 + 8));
          }

          break;
        case 0xD:
          v30 = *this;
          v31 = *(*this + 8);
          v6 = (v31 * v12);
          if (v31 >= 1)
          {
            v32 = 0;
            do
            {
              v33 = *(*v30 + 4 * v32);
              if (v33 >= 0x80)
              {
                v34 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
                v30 = *this;
              }

              else
              {
                v34 = 1;
              }

              v6 = (v34 + v6);
              ++v32;
            }

            while (v32 < *(v30 + 8));
          }

          break;
        case 0xE:
          v48 = *this;
          v49 = *(*this + 8);
          v6 = (v49 * v12);
          if (v49 >= 1)
          {
            v50 = 0;
            do
            {
              v51 = *(*v48 + 4 * v50);
              if ((v51 & 0x80000000) != 0)
              {
                v52 = 10;
              }

              else if (v51 >= 0x80)
              {
                v52 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
                v48 = *this;
              }

              else
              {
                v52 = 1;
              }

              v6 = (v52 + v6);
              ++v50;
            }

            while (v50 < *(v48 + 8));
          }

          break;
        case 0x11:
          v21 = *this;
          v22 = *(*this + 8);
          v6 = (v22 * v12);
          if (v22 >= 1)
          {
            v23 = 0;
            do
            {
              v24 = ((2 * *(*v21 + 4 * v23)) ^ (*(*v21 + 4 * v23) >> 31));
              if (v24 >= 0x80)
              {
                v25 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
                v21 = *this;
              }

              else
              {
                v25 = 1;
              }

              v6 = (v25 + v6);
              ++v23;
            }

            while (v23 < *(v21 + 8));
          }

          break;
        case 0x12:
          v64 = *this;
          v65 = *(*this + 8);
          v6 = (v65 * v12);
          if (v65 >= 1)
          {
            v66 = 0;
            do
            {
              v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64((2 * *(*v64 + 8 * v66)) ^ (*(*v64 + 8 * v66) >> 63)) + v6;
              ++v66;
              v64 = *this;
            }

            while (v66 < *(*this + 8));
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(this + 10))
  {
    return 0;
  }

  else
  {
    v9 = *(this + 8);
    v10 = (8 * a2);
    if (v10 >= 0x80)
    {
      v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v11 = 1;
    }

    v6 = (v11 << (v9 == 10));
    switch(*(this + 8))
    {
      case 1:
      case 6:
      case 0x10:
        return (v6 + 8);
      case 2:
      case 7:
      case 0xF:
        return (v6 + 4);
      case 3:
      case 4:
        v14 = *this;
        goto LABEL_119;
      case 5:
      case 0xE:
        v15 = *this;
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_89;
        }

        v16 = 10;
        goto LABEL_120;
      case 8:
        return (v6 + 1);
      case 9:
      case 0xC:
        v16 = AddrObjGoogle::protobuf::internal::WireFormatLite::StringSize(*this);
        goto LABEL_120;
      case 0xA:
        v16 = (*(**this + 72))();
        goto LABEL_120;
      case 0xB:
        v90 = *this;
        if ((*(this + 10) & 0x10) != 0)
        {
          v100 = (*(*v90 + 64))(v90);
          v101 = v100;
          if (v100 >= 0x80)
          {
            v102 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100);
          }

          else
          {
            v102 = 1;
          }

          v6 = (v101 + v6 + v102);
        }

        else
        {
          v16 = AddrObjGoogle::protobuf::internal::WireFormatLite::MessageSize(v90);
LABEL_120:
          v6 = (v16 + v6);
        }

        break;
      case 0xD:
        v15 = *this;
        goto LABEL_89;
      case 0x11:
        v15 = ((2 * *this) ^ (*this >> 31));
LABEL_89:
        if (v15 >= 0x80)
        {
          v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        }

        else
        {
          v16 = 1;
        }

        goto LABEL_120;
      case 0x12:
        v14 = (2 * *this) ^ (*this >> 63);
LABEL_119:
        v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(v14);
        goto LABEL_120;
      default:
        return v6;
    }
  }

  return v6;
}

void sub_1868F928C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::StringSize(uint64_t a1)
{
  v2 = *(a1 + 23);
  v3 = v2;
  v4 = *(a1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = v4;
  }

  if (v5 >= 0x80)
  {
    v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    v2 = *(a1 + 23);
    v4 = *(a1 + 8);
    v3 = *(a1 + 23);
  }

  else
  {
    v6 = 1;
  }

  if (v3 < 0)
  {
    v2 = v4;
  }

  return (v6 + v2);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::MessageSize(uint64_t a1)
{
  v1 = (*(*a1 + 72))(a1);
  v2 = v1;
  if (v1 >= 0x80)
  {
    v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v1);
  }

  else
  {
    v3 = 1;
  }

  return (v3 + v2);
}

void std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

_DWORD *AddrObjGoogle::protobuf::RepeatedField<BOOL>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    v3[3] = v5;
    operator new[]();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__erase_unique<int>(uint64_t a1, int *a2)
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

  std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

int *AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<AddrObjGoogle::protobuf::RepeatedPtrField<AddrObjGoogle::protobuf::MessageLite>::TypeHandler>(int *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  v5 = this[4];
  if (v4 == v5)
  {
    this = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v4 + 1);
    v6 = v3[3] + 1;
LABEL_9:
    v3[3] = v6;
    goto LABEL_10;
  }

  v7 = this[3];
  if (v7 != v5)
  {
    if (v4 < v7)
    {
      *(*this + 8 * v7) = *(*this + 8 * v4);
    }

    v6 = v7 + 1;
    goto LABEL_9;
  }

  this = *(*this + 8 * v4);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_10:
  v8 = *v3;
  v9 = v3[2];
  v3[2] = v9 + 1;
  *(v8 + 8 * v9) = a2;
  return this;
}

uint64_t **std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::swap(uint64_t **result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = (result + 1);
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

void AddrObjGoogle::protobuf::internal::ReflectionOps::Copy(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2, AddrObjGoogle::protobuf::Message *a3)
{
  if (this != a2)
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Clear(a2, a2);

    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(this, a2, v6);
  }
}

void AddrObjGoogle::protobuf::internal::ReflectionOps::Clear(AddrObjGoogle::protobuf::internal::ReflectionOps *this, AddrObjGoogle::protobuf::Message *a2)
{
  v3 = (*(*this + 144))(this, a2);
  __p = 0;
  v8 = 0;
  v9 = 0;
  (*(*v3 + 96))(v3, this, &__p);
  v4 = __p;
  if (v8 != __p)
  {
    v5 = 0;
    do
    {
      (*(*v3 + 56))(v3, this, v4[v5++]);
      v4 = __p;
    }

    while (v5 < (v8 - __p) >> 3);
  }

  v6 = (*(*v3 + 24))(v3, this);
  if (*v6)
  {
    AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1868F97FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(AddrObjGoogle::protobuf::internal::ReflectionOps *this, const AddrObjGoogle::protobuf::Message *a2, AddrObjGoogle::protobuf::Message *a3)
{
  if (this == a2)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/reflection_ops.cc", 56);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: (&from) != (to): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(__p, v5);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
  }

  v6 = (*(*this + 152))(this);
  if ((*(*a2 + 152))(a2) != v6)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/reflection_ops.cc", 59);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: (to->GetDescriptor()) == (descriptor): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Tried to merge messages of different types.");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(__p, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
  }

  v9 = (*(*this + 144))(this);
  v10 = (*(*a2 + 144))(a2);
  memset(v34, 0, 24);
  (*(*v9 + 96))(v9, this, v34);
  v11 = v34[0].__r_.__value_.__r.__words[0];
  if (v34[0].__r_.__value_.__l.__size_ != v34[0].__r_.__value_.__r.__words[0])
  {
    for (i = 0; i < (v34[0].__r_.__value_.__l.__size_ - v34[0].__r_.__value_.__r.__words[0]) >> 3; ++i)
    {
      v13 = *(v11 + 8 * i);
      if (*(v13 + 48) == 3)
      {
        v14 = (*(*v9 + 48))(v9, this, v13);
        if (v14 >= 1)
        {
          v15 = 0;
          do
          {
            v16 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v13 + 44)];
            if (v16 > 5)
            {
              if (v16 <= 7)
              {
                if (v16 == 6)
                {
                  (*(*v9 + 312))(v9, this, v13, v15);
                  (*(*v10 + 480))(v10, a2, v13);
                }

                else
                {
                  v21 = (*(*v9 + 328))(v9, this, v13, v15);
                  (*(*v10 + 496))(v10, a2, v13, v21);
                }
              }

              else
              {
                switch(v16)
                {
                  case 8:
                    v22 = (*(*v9 + 344))(v9, this, v13, v15);
                    (*(*v10 + 512))(v10, a2, v13, v22);
                    break;
                  case 9:
                    (*(*v9 + 336))(__p, v9, this, v13, v15);
                    (*(*v10 + 504))(v10, a2, v13, __p);
                    if (v33 < 0)
                    {
                      operator delete(__p[0]);
                    }

                    break;
                  case 10:
                    v17 = (*(*v10 + 520))(v10, a2, v13, 0);
                    v18 = (*(*v9 + 352))(v9, this, v13, v15);
                    (*(*v17 + 112))(v17, v18);
                    break;
                }
              }

              goto LABEL_33;
            }

            if (v16 <= 2)
            {
              if (v16 == 1)
              {
                v19 = (*(*v9 + 280))(v9, this, v13, v15);
                v20 = (*v10 + 448);
                goto LABEL_28;
              }

              if (v16 == 2)
              {
                v19 = (*(*v9 + 288))(v9, this, v13, v15);
                v20 = (*v10 + 456);
LABEL_28:
                (*v20)(v10, a2, v13, v19);
              }
            }

            else
            {
              if (v16 == 3)
              {
                v19 = (*(*v9 + 296))(v9, this, v13, v15);
                v20 = (*v10 + 464);
                goto LABEL_28;
              }

              if (v16 == 4)
              {
                v19 = (*(*v9 + 304))(v9, this, v13, v15);
                v20 = (*v10 + 472);
                goto LABEL_28;
              }

              (*(*v9 + 320))(v9, this, v13, v15);
              (*(*v10 + 488))(v10, a2, v13);
            }

LABEL_33:
            v15 = (v15 + 1);
          }

          while (v14 != v15);
        }
      }

      else
      {
        v23 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v13 + 44)];
        if (v23 > 5)
        {
          if (v23 <= 7)
          {
            if (v23 == 6)
            {
              (*(*v9 + 136))(v9, this, v13);
              (*(*v10 + 224))(v10, a2, v13);
            }

            else
            {
              v28 = (*(*v9 + 152))(v9, this, v13);
              (*(*v10 + 240))(v10, a2, v13, v28);
            }
          }

          else
          {
            switch(v23)
            {
              case 8:
                v29 = (*(*v9 + 168))(v9, this, v13);
                (*(*v10 + 256))(v10, a2, v13, v29);
                break;
              case 9:
                (*(*v9 + 160))(__p, v9, this, v13);
                (*(*v10 + 248))(v10, a2, v13, __p);
                if (v33 < 0)
                {
                  operator delete(__p[0]);
                }

                break;
              case 10:
                v24 = (*(*v10 + 264))(v10, a2, v13, 0);
                v25 = (*(*v9 + 176))(v9, this, v13, 0);
                (*(*v24 + 112))(v24, v25);
                break;
            }
          }

          goto LABEL_58;
        }

        if (v23 <= 2)
        {
          if (v23 == 1)
          {
            v26 = (*(*v9 + 104))(v9, this, v13);
            v27 = (*v10 + 192);
            goto LABEL_53;
          }

          if (v23 == 2)
          {
            v26 = (*(*v9 + 112))(v9, this, v13);
            v27 = (*v10 + 200);
LABEL_53:
            (*v27)(v10, a2, v13, v26);
          }
        }

        else
        {
          if (v23 == 3)
          {
            v26 = (*(*v9 + 120))(v9, this, v13);
            v27 = (*v10 + 208);
            goto LABEL_53;
          }

          if (v23 == 4)
          {
            v26 = (*(*v9 + 128))(v9, this, v13);
            v27 = (*v10 + 216);
            goto LABEL_53;
          }

          (*(*v9 + 144))(v9, this, v13);
          (*(*v10 + 232))(v10, a2, v13);
        }
      }

LABEL_58:
      v11 = v34[0].__r_.__value_.__r.__words[0];
    }
  }

  v30 = (*(*v10 + 24))(v10, a2);
  v31 = (*(*v9 + 16))(v9, this);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom(v30, v31);
  if (v34[0].__r_.__value_.__r.__words[0])
  {
    v34[0].__r_.__value_.__l.__size_ = v34[0].__r_.__value_.__r.__words[0];
    operator delete(v34[0].__r_.__value_.__l.__data_);
  }
}

uint64_t AddrObjGoogle::protobuf::internal::ReflectionOps::IsInitialized(AddrObjGoogle::protobuf::internal::ReflectionOps *this, const AddrObjGoogle::protobuf::Message *a2)
{
  v3 = (*(*this + 152))(this, a2);
  v4 = (*(*this + 144))(this);
  v5 = *(v3 + 44);
  if (v5 > 0)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      if (*(*(v3 + 48) + v6 + 48) == 2)
      {
        if (!(*(*v4 + 40))(v4, this))
        {
          return 0;
        }

        v5 = *(v3 + 44);
      }

      v6 += 120;
    }
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  (*(*v4 + 96))(v4, this, &v18);
  v8 = v18;
  if (v19 == v18)
  {
    v16 = 1;
    if (!v18)
    {
      return v16;
    }

LABEL_23:
    v19 = v8;
    operator delete(v8);
    return v16;
  }

  v9 = 0;
  while (1)
  {
    v10 = *&v8[8 * v9];
    if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v10 + 44)] != 10)
    {
      goto LABEL_17;
    }

    v11 = *v4;
    if (*(v10 + 48) == 3)
    {
      break;
    }

    v15 = (*(v11 + 176))(v4, this, v10, 0);
    if (!(*(*v15 + 40))(v15))
    {
      goto LABEL_19;
    }

LABEL_17:
    ++v9;
    v8 = v18;
    if (v9 >= (v19 - v18) >> 3)
    {
      v16 = 1;
      goto LABEL_20;
    }
  }

  v12 = (*(v11 + 48))(v4, this, v10);
  if (v12 < 1)
  {
    goto LABEL_17;
  }

  v13 = 0;
  while (1)
  {
    v14 = (*(*v4 + 352))(v4, this, v10, v13);
    if (((*(*v14 + 40))(v14) & 1) == 0)
    {
      break;
    }

    v13 = (v13 + 1);
    if (v12 == v13)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v16 = 0;
LABEL_20:
  v8 = v18;
  if (v18)
  {
    goto LABEL_23;
  }

  return v16;
}

void sub_1868FA890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::internal::ReflectionOps::DiscardUnknownFields(AddrObjGoogle::protobuf::internal::ReflectionOps *this, AddrObjGoogle::protobuf::Message *a2)
{
  v3 = (*(*this + 144))(this, a2);
  v4 = (*(*v3 + 24))(v3, this);
  if (*v4)
  {
    AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  (*(*v3 + 96))(v3, this, &v13);
  v5 = v13;
  if (v14 != v13)
  {
    v6 = 0;
    do
    {
      v7 = *&v5[8 * v6];
      if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v7 + 44)] == 10)
      {
        v8 = *v3;
        if (*(v7 + 48) == 3)
        {
          v9 = (*(v8 + 48))(v3, this, v7);
          if (v9 >= 1)
          {
            v10 = 0;
            do
            {
              v11 = (*(*v3 + 440))(v3, this, v7, v10);
              (*(*v11 + 120))(v11);
              v10 = (v10 + 1);
            }

            while (v9 != v10);
          }
        }

        else
        {
          v12 = (*(v8 + 264))(v3, this, v7, 0);
          (*(*v12 + 120))(v12);
        }
      }

      ++v6;
      v5 = v13;
    }

    while (v6 < (v14 - v13) >> 3);
  }

  if (v5)
  {
    v14 = v5;
    operator delete(v5);
  }
}

void sub_1868FAAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::internal::ReflectionOps::FindInitializationErrors(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = (*(*a1 + 152))(a1);
  v7 = (*(*a1 + 144))(a1);
  if (*(v6 + 44) > 0)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (*(*(v6 + 48) + v8 + 48) == 2 && ((*(*v7 + 40))(v7, a1) & 1) == 0)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, *(*(v6 + 48) + v8), &__p);
        v11 = *(a3 + 8);
        v10 = *(a3 + 16);
        if (v11 >= v10)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a3) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          v34.__end_cap_.__value_ = a3;
          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v16);
          }

          v17 = 24 * v13;
          v18 = *&__p.__r_.__value_.__l.__data_;
          *(v17 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v17 = v18;
          memset(&__p, 0, sizeof(__p));
          v19 = 24 * v13 + 24;
          v20 = *(a3 + 8) - *a3;
          v21 = 24 * v13 - v20;
          memcpy((v17 - v20), *a3, v20);
          v22 = *a3;
          *a3 = v21;
          *(a3 + 8) = v19;
          v23 = *(a3 + 16);
          *(a3 + 16) = 0;
          v34.__end_ = v22;
          v34.__end_cap_.__value_ = v23;
          v34.__first_ = v22;
          v34.__begin_ = v22;
          std::__split_buffer<std::string>::~__split_buffer(&v34);
          v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(a3 + 8) = v19;
          if (v24 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v12 = *&__p.__r_.__value_.__l.__data_;
          *(v11 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v11 = v12;
          *(a3 + 8) = v11 + 24;
        }
      }

      ++v9;
      v8 += 120;
    }

    while (v9 < *(v6 + 44));
  }

  memset(&v34, 0, 24);
  (*(*v7 + 96))(v7, a1, &v34);
  first = v34.__first_;
  if (v34.__begin_ != v34.__first_)
  {
    v26 = 0;
    do
    {
      v27 = *(&first->__r_.__value_.__l.__data_ + v26);
      if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v27 + 44)] == 10)
      {
        v28 = *v7;
        if (*(v27 + 48) == 3)
        {
          v29 = (*(v28 + 48))(v7, a1, v27);
          if (v29 >= 1)
          {
            v30 = 0;
            do
            {
              v31 = (*(*v7 + 352))(v7, a1, v27, v30);
              sub_186843D8C(a2, v27, v30, &__p);
              AddrObjGoogle::protobuf::internal::ReflectionOps::FindInitializationErrors(v31, &__p.__r_.__value_.__l.__data_, a3);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v30 = (v30 + 1);
            }

            while (v29 != v30);
          }
        }

        else
        {
          v32 = (*(v28 + 176))(v7, a1, v27, 0);
          sub_186843D8C(a2, v27, 0xFFFFFFFFLL, &__p);
          AddrObjGoogle::protobuf::internal::ReflectionOps::FindInitializationErrors(v32, &__p.__r_.__value_.__l.__data_, a3);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      ++v26;
      first = v34.__first_;
    }

    while (v26 < (v34.__begin_ - v34.__first_) >> 3);
  }

  if (first)
  {
    v34.__begin_ = first;
    operator delete(first);
  }
}

void sub_1868FAF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::internal::StringSpaceUsedExcludingSelf(unint64_t a1)
{
  if (*(a1 + 23) < 0 && (*a1 >= a1 ? (v1 = *a1 > a1 + 24) : (v1 = 1), v1))
  {
    return (*(a1 + 16) - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t *AddrObjGoogle::protobuf::internal::NameOfEnum(AddrObjGoogle::protobuf::internal *this, const AddrObjGoogle::protobuf::EnumDescriptor *a2)
{
  ValueByNumber = AddrObjGoogle::protobuf::EnumDescriptor::FindValueByNumber(this, a2);
  if (ValueByNumber)
  {
    return *ValueByNumber;
  }

  return AddrObjGoogle::protobuf::internal::kEmptyString(0);
}

AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GeneratedMessageReflection(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Descriptor *a2, const AddrObjGoogle::protobuf::Message *a3, const int *a4, int a5, int a6, int a7, const AddrObjGoogle::protobuf::DescriptorPool *a8, AddrObjGoogle::protobuf::MessageFactory *a9, int a10)
{
  *this = &unk_1EF7E1C80;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 8) = a5;
  *(this + 9) = a6;
  *(this + 10) = a7;
  *(this + 11) = a10;
  if (!a8)
  {
    a8 = AddrObjGoogle::protobuf::DescriptorPool::generated_pool(this);
  }

  *(this + 6) = a8;
  *(this + 7) = a9;
  return this;
}

{
  return AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GeneratedMessageReflection(this, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::~GeneratedMessageReflection(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this)
{
  addr_obj::Localization::getDisplayLanguage(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SpaceUsed(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2)
{
  v4 = *(this + 11);
  v5 = (*(*this + 16))(this);
  v6 = AddrObjGoogle::protobuf::UnknownFieldSet::SpaceUsedExcludingSelf(v5) + v4;
  v7 = *(this + 10);
  if (v7 != -1)
  {
    v6 = AddrObjGoogle::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelf((a2 + v7)) + v6;
  }

  v8 = *(this + 1);
  if (*(v8 + 44) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v8 + 48) + 120 * v9;
      v11 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v10 + 44)];
      if (*(v10 + 48) != 3)
      {
        break;
      }

      if (v11 > 5)
      {
        if (v11 <= 7)
        {
          if (v11 != 6)
          {
            if (*(v10 + 52))
            {
              v20 = *(v10 + 64);
              if (v20)
              {
                v21 = (v20 + 112);
              }

              else
              {
                v21 = (*(v10 + 32) + 128);
              }
            }

            else
            {
              v21 = (*(v10 + 56) + 48);
            }

            v35 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v21) >> 3)) >> 30));
            if (*v35)
            {
              v29 = *(v35 + 3);
              goto LABEL_76;
            }

            goto LABEL_75;
          }
        }

        else if (v11 != 8)
        {
          if (v11 == 9)
          {
            if (*(v10 + 52))
            {
              v26 = *(v10 + 64);
              if (v26)
              {
                v27 = (v26 + 112);
              }

              else
              {
                v27 = (*(v10 + 32) + 128);
              }
            }

            else
            {
              v27 = (*(v10 + 56) + 48);
            }

            v39 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v27) >> 3)) >> 30));
            v40 = *v39;
            if (*v39)
            {
              v41 = 8 * *(v39 + 4);
            }

            else
            {
              v41 = 0;
            }

            v42 = *(v39 + 3);
            if (v42 >= 1)
            {
              do
              {
                v43 = *v40;
                if (*(*v40 + 23) < 0 && (*v43 >= v43 ? (v44 = *v43 > v43 + 24) : (v44 = 1), v44))
                {
                  v45 = *(v43 + 16) + 23;
                }

                else
                {
                  v45 = 24;
                }

                v41 += v45;
                ++v40;
                --v42;
              }

              while (v42);
            }

            v6 = (v41 + v6);
          }

          else if (v11 == 10)
          {
            if (*(v10 + 52))
            {
              v14 = *(v10 + 64);
              if (v14)
              {
                v15 = (v14 + 112);
              }

              else
              {
                v15 = (*(v10 + 32) + 128);
              }
            }

            else
            {
              v15 = (*(v10 + 56) + 48);
            }

            v36 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v15) >> 3)) >> 30));
            if (*v36)
            {
              v37 = 8 * *(v36 + 4);
            }

            else
            {
              v37 = 0;
            }

            if (*(v36 + 3) >= 1)
            {
              v38 = 0;
              do
              {
                v37 += (*(**(*v36 + 8 * v38) + 128))(*(*v36 + 8 * v38));
                ++v38;
              }

              while (v38 < *(v36 + 3));
            }

            v6 = (v37 + v6);
          }

          goto LABEL_77;
        }

        goto LABEL_36;
      }

      if (v11 > 2)
      {
        if (v11 != 3)
        {
LABEL_29:
          if (*(v10 + 52))
          {
            v18 = *(v10 + 64);
            if (v18)
            {
              v19 = (v18 + 112);
            }

            else
            {
              v19 = (*(v10 + 32) + 128);
            }
          }

          else
          {
            v19 = (*(v10 + 56) + 48);
          }

          v33 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v19) >> 3)) >> 30));
          if (*v33)
          {
            v29 = 8 * *(v33 + 3);
            goto LABEL_76;
          }

          goto LABEL_75;
        }

LABEL_36:
        if (*(v10 + 52))
        {
          v22 = *(v10 + 64);
          if (v22)
          {
            v23 = (v22 + 112);
          }

          else
          {
            v23 = (*(v10 + 32) + 128);
          }
        }

        else
        {
          v23 = (*(v10 + 56) + 48);
        }

        v28 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v23) >> 3)) >> 30));
        if (*v28)
        {
          v29 = 4 * *(v28 + 3);
LABEL_76:
          v6 = (v29 + v6);
          goto LABEL_77;
        }

LABEL_75:
        v29 = 0;
        goto LABEL_76;
      }

      if (v11 == 1)
      {
        goto LABEL_36;
      }

      if (v11 == 2)
      {
        goto LABEL_29;
      }

LABEL_77:
      ++v9;
      v8 = *(this + 1);
      if (v9 >= *(v8 + 44))
      {
        return v6;
      }
    }

    if (v11 == 10)
    {
      if (*(this + 2) != a2)
      {
        if (*(v10 + 52))
        {
          v16 = *(v10 + 64);
          v17 = (v16 ? v16 + 112 : *(v10 + 32) + 128);
        }

        else
        {
          v17 = (*(v10 + 56) + 48);
        }

        v34 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v17) >> 3)) >> 30)));
        if (v34)
        {
          v6 = (*(*v34 + 128))(v34) + v6;
        }
      }

      goto LABEL_77;
    }

    if (v11 != 9)
    {
      goto LABEL_77;
    }

    if (*(v10 + 52))
    {
      v12 = *(v10 + 64);
      if (v12)
      {
        v13 = (v12 + 112);
        if ((*(v10 + 52) & 1) == 0)
        {
          goto LABEL_52;
        }

LABEL_41:
        v24 = *(v10 + 64);
        if (v24)
        {
          v25 = (v24 + 112);
        }

        else
        {
          v25 = (*(v10 + 32) + 128);
        }

LABEL_54:
        v30 = *(this + 3);
        v31 = *(a2 + *(v30 + ((0xEEEEEEEF00000000 * ((v10 - *v13) >> 3)) >> 30)));
        if (v31 != *(*(this + 2) + *(v30 + ((0xEEEEEEEF00000000 * ((v10 - *v25) >> 3)) >> 30))))
        {
          if (*(v31 + 23) < 0 && (*v31 >= v31 ? (v32 = *v31 > v31 + 24) : (v32 = 1), v32))
          {
            v29 = *(v31 + 16) + 23;
          }

          else
          {
            v29 = 24;
          }

          goto LABEL_76;
        }

        goto LABEL_77;
      }

      v13 = (*(v10 + 32) + 128);
      if (*(v10 + 52))
      {
        goto LABEL_41;
      }
    }

    else
    {
      v13 = (*(v10 + 56) + 48);
    }

LABEL_52:
    v25 = (*(v10 + 56) + 48);
    goto LABEL_54;
  }

  return v6;
}

uint64_t *AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::Swap(uint64_t *this, AddrObjGoogle::protobuf::Message *a2, AddrObjGoogle::protobuf::Message *a3)
{
  if (a2 != a3)
  {
    v5 = this;
    if ((*(*a2 + 144))(a2) != this)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v78, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 316);
      v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v78, "CHECK failed: (message1->GetReflection()) == (this): ");
      v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, "First argument to Swap() (of type ");
      v8 = (*(*a2 + 152))(a2);
      v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, *(v8 + 8));
      v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, ") is not compatible with this reflection object (which is for type ");
      v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, *(v5[1] + 8));
      v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, ").  Note that the exact same class is required; not just the same descriptor.");
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v77, v12);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v78[0].__r_.__value_.__l.__data_);
    }

    if ((*(*a3 + 144))(a3) != v5)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v78, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 323);
      v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v78, "CHECK failed: (message2->GetReflection()) == (this): ");
      v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "Second argument to Swap() (of type ");
      v15 = (*(*a3 + 152))(a3);
      v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, *(v15 + 8));
      v17 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, ") is not compatible with this reflection object (which is for type ");
      v18 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v17, *(v5[1] + 8));
      v19 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v18, ").  Note that the exact same class is required; not just the same descriptor.");
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v77, v19);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v78[0].__r_.__value_.__l.__data_);
    }

    v20 = v5[1];
    v21 = *(v20 + 44);
    if (v21 >= 1)
    {
      v22 = *(v5 + 8);
      v23 = (a2 + v22);
      v24 = (a3 + v22);
      v25 = (v21 + 31) >> 5;
      do
      {
        v26 = *v23;
        *v23++ = *v24;
        *v24++ = v26;
        --v25;
      }

      while (v25);
      if (*(v20 + 44) >= 1)
      {
        v27 = 0;
        v28 = 0;
        while (1)
        {
          v29 = *(v20 + 48);
          v30 = v29 + v27;
          v31 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v29 + v27 + 44)];
          if (*(v29 + v27 + 48) == 3)
          {
            break;
          }

          if (v31 > 5)
          {
            if (v31 <= 7)
            {
              if (v31 == 6)
              {
                v56 = v29 + v27;
                if (*(v29 + v27 + 52) == 1)
                {
                  v57 = *(v56 + 64);
                  if (v57)
                  {
                    v58 = (v57 + 112);
                  }

                  else
                  {
                    v58 = (*(v29 + v27 + 32) + 128);
                  }
                }

                else
                {
                  v58 = (*(v56 + 56) + 48);
                }

                v70 = *(v5[3] + ((0xEEEEEEEF00000000 * ((v27 + v29 - *v58) >> 3)) >> 30));
                v71 = *(a2 + v70);
                *(a2 + v70) = *(a3 + v70);
                *(a3 + v70) = v71;
              }

              else
              {
                v47 = v29 + v27;
                if (*(v29 + v27 + 52) == 1)
                {
                  v48 = *(v47 + 64);
                  if (v48)
                  {
                    v49 = (v48 + 112);
                  }

                  else
                  {
                    v49 = (*(v29 + v27 + 32) + 128);
                  }
                }

                else
                {
                  v49 = (*(v47 + 56) + 48);
                }

                v68 = *(v5[3] + ((0xEEEEEEEF00000000 * ((v27 + v29 - *v49) >> 3)) >> 30));
                v69 = *(a2 + v68);
                *(a2 + v68) = *(a3 + v68);
                *(a3 + v68) = v69;
              }

              goto LABEL_78;
            }

            if (v31 == 8)
            {
LABEL_40:
              v41 = v29 + v27;
              if (*(v29 + v27 + 52) == 1)
              {
                v42 = *(v41 + 64);
                if (v42)
                {
                  v43 = (v42 + 112);
                }

                else
                {
                  v43 = (*(v29 + v27 + 32) + 128);
                }
              }

              else
              {
                v43 = (*(v41 + 56) + 48);
              }

              v65 = *(v5[3] + ((0xEEEEEEEF00000000 * ((v27 + v29 - *v43) >> 3)) >> 30));
              v66 = *(a2 + v65);
              *(a2 + v65) = *(a3 + v65);
              *(a3 + v65) = v66;
              goto LABEL_78;
            }

            if (v31 == 9 || v31 == 10)
            {
LABEL_37:
              v38 = v29 + v27;
              if (*(v29 + v27 + 52) == 1)
              {
                v39 = *(v38 + 64);
                if (v39)
                {
                  v40 = (v39 + 112);
                }

                else
                {
                  v40 = (*(v29 + v27 + 32) + 128);
                }
              }

              else
              {
                v40 = (*(v38 + 56) + 48);
              }

              v63 = *(v5[3] + ((0xEEEEEEEF00000000 * ((v27 + v29 - *v40) >> 3)) >> 30));
              v64 = *(a2 + v63);
              *(a2 + v63) = *(a3 + v63);
              *(a3 + v63) = v64;
              goto LABEL_78;
            }

LABEL_61:
            AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v78, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 401);
            v61 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v78, "Unimplemented type: ");
            v62 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v61, AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v30 + 44)]);
            AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v77, v62);
LABEL_62:
            AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v78[0].__r_.__value_.__l.__data_);
            goto LABEL_78;
          }

          if (v31 <= 2)
          {
            if (v31 == 1)
            {
              goto LABEL_40;
            }

            if (v31 == 2)
            {
              goto LABEL_37;
            }

            goto LABEL_61;
          }

          if (v31 == 3)
          {
            goto LABEL_40;
          }

          if (v31 == 4)
          {
            goto LABEL_37;
          }

          v32 = v29 + v27;
          if (*(v29 + v27 + 52) == 1)
          {
            v33 = *(v32 + 64);
            if (v33)
            {
              v34 = (v33 + 112);
            }

            else
            {
              v34 = (*(v29 + v27 + 32) + 128);
            }
          }

          else
          {
            v34 = (*(v32 + 56) + 48);
          }

          v72 = *(v5[3] + ((0xEEEEEEEF00000000 * ((v27 + v29 - *v34) >> 3)) >> 30));
          v73 = *(a2 + v72);
          *(a2 + v72) = *(a3 + v72);
          *(a3 + v72) = v73;
LABEL_78:
          ++v28;
          v20 = v5[1];
          v27 += 120;
          if (v28 >= *(v20 + 44))
          {
            goto LABEL_79;
          }
        }

        if (v31 > 5)
        {
          if (v31 <= 8)
          {
            goto LABEL_31;
          }

          if ((v31 - 9) < 2)
          {
            v44 = v29 + v27;
            if (*(v29 + v27 + 52) == 1)
            {
              v45 = *(v44 + 64);
              if (v45)
              {
                v46 = (v45 + 112);
              }

              else
              {
                v46 = (*(v29 + v27 + 32) + 128);
              }
            }

            else
            {
              v46 = (*(v44 + 56) + 48);
            }

            v67 = *(v5[3] + ((0xEEEEEEEF00000000 * ((v27 + v29 - *v46) >> 3)) >> 30));
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Swap((a2 + v67), (a3 + v67));
            goto LABEL_78;
          }
        }

        else if (v31 > 2 || v31 == 1 || v31 == 2)
        {
LABEL_31:
          v35 = v29 + v27;
          if (*(v29 + v27 + 52) == 1)
          {
            v36 = *(v35 + 64);
            if (v36)
            {
              v37 = (v36 + 112);
            }

            else
            {
              v37 = (*(v29 + v27 + 32) + 128);
            }
          }

          else
          {
            v37 = (*(v35 + 56) + 48);
          }

          if (a2 != a3)
          {
            v50 = *(v5[3] + ((0xEEEEEEEF00000000 * ((v27 + v29 - *v37) >> 3)) >> 30));
            v51 = (a2 + v50);
            v52 = (a3 + v50);
            v53 = *v51;
            *v51 = *v52;
            v54 = v52[1];
            *v52 = v53;
            v55 = v51[1];
            v51[1] = v54;
            v52[1] = v55;
          }

          goto LABEL_78;
        }

        AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v78, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 366);
        v59 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v78, "Unimplemented type: ");
        v60 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v59, AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v30 + 44)]);
        AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v77, v60);
        goto LABEL_62;
      }
    }

LABEL_79:
    v74 = *(v5 + 10);
    if (v74 != -1)
    {
      AddrObjGoogle::protobuf::internal::ExtensionSet::Swap((a2 + v74), (a3 + v74));
    }

    v75 = (*(*v5 + 24))(v5, a2);
    this = (*(*v5 + 24))(v5, a3);
    v76 = *v75;
    *v75 = *this;
    *this = v76;
  }

  return this;
}

void sub_1868FBD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::HasField(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "HasField", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "HasField", "Field is repeated; the method requires a singular field.");
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v7 = *&a3[2].Kind;
    v8 = (a2 + *(this + 10));

    return AddrObjGoogle::protobuf::internal::ExtensionSet::Has(v8, v7);
  }

  else
  {
    v10 = -286331153 * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    return (*(a2 + 4 * (v10 / 32) + *(this + 8)) >> v10) & 1;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::FieldSize(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "FieldSize", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "FieldSize", "Field is singular; the method requires a repeated field.");
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    v10 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields];
    if (v10 > 5)
    {
      if (v10 > 8 && (v10 - 9) >= 2)
      {
        goto LABEL_16;
      }
    }

    else if (v10 <= 2 && v10 != 1 && v10 != 2)
    {
LABEL_16:
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 455);
      v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "Can't get here.");
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v12, v11);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      return 0;
    }

    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)) + 8);
  }

  v7 = *&a3[2].Kind;
  v8 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSize(v8, v7);
}

void sub_1868FC078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::ClearField(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "ClearField", "Field does not match message type.");
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v7 = *&a3[2].Kind;
    v8 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::ClearExtension(v8, v7);
    return;
  }

  if (a3[3].MangledTypeName != 3)
  {
    v10 = a2 + *(this + 8);
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    v12 = v11 + 31;
    if ((v11 & 0x80000000) == 0)
    {
      v12 = -286331153 * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    }

    v13 = *&v10[4 * (v12 >> 5)];
    if (((1 << v11) & v13) == 0)
    {
      return;
    }

    *&v10[4 * (v12 >> 5)] = v13 & ~(1 << v11);
    v14 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields];
    if (v14 > 5)
    {
      if (v14 <= 7)
      {
        if (v14 == 6)
        {
          *(a2 + *(*(this + 3) + 4 * v11)) = a3[7].MangledTypeName;
        }

        else
        {
          *(a2 + *(*(this + 3) + 4 * v11)) = a3[7].MangledTypeName;
        }

        return;
      }

      if (v14 != 8)
      {
        if (v14 == 9)
        {
          v19 = *(*(this + 3) + 4 * v11);
          v20 = *(a2 + v19);
          if (v20 != *(*(this + 2) + v19))
          {
            if (LOBYTE(a3[6].Kind) == 1)
            {
              v21 = *&a3[7].MangledTypeName;

              std::string::operator=(v20, v21);
            }

            else if (*(v20 + 23) < 0)
            {
              **v20 = 0;
              *(v20 + 8) = 0;
            }

            else
            {
              *v20 = 0;
              *(v20 + 23) = 0;
            }
          }
        }

        else if (v14 == 10)
        {
          v16 = *(**(a2 + *(*(this + 3) + 4 * v11)) + 32);

          v16();
        }

        return;
      }

      MangledTypeName = *(*&a3[7].MangledTypeName + 16);
    }

    else
    {
      if (v14 <= 2)
      {
        if (v14 != 1)
        {
          if (v14 != 2)
          {
            return;
          }

LABEL_38:
          *(a2 + *(*(this + 3) + 4 * v11)) = *&a3[7].MangledTypeName;
          return;
        }
      }

      else if (v14 != 3)
      {
        if (v14 != 4)
        {
          *(a2 + *(*(this + 3) + 4 * v11)) = *&a3[7].MangledTypeName;
          return;
        }

        goto LABEL_38;
      }

      MangledTypeName = a3[7].MangledTypeName;
    }

    *(a2 + *(*(this + 3) + 4 * v11)) = MangledTypeName;
    return;
  }

  v9 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields];
  if (v9 <= 5)
  {
    if (v9 <= 2 && v9 != 1 && v9 != 2)
    {
      return;
    }

LABEL_34:
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)) + 8) = 0;
    return;
  }

  if (v9 <= 8)
  {
    goto LABEL_34;
  }

  if (v9 == 9)
  {
    v18 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30));

    AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v18);
  }

  else if (v9 == 10)
  {
    v15 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30));

    AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v15);
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::RemoveLast(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "RemoveLast", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "RemoveLast", "Field is singular; the method requires a repeated field.");
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v7 = *&a3[2].Kind;
    v8 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::RemoveLast(v8, v7);
    return;
  }

  v9 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields];
  if (v9 <= 5)
  {
    if (v9 <= 2 && v9 != 1 && v9 != 2)
    {
      return;
    }

LABEL_20:
    v14 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30));
    --*(v14 + 2);
    return;
  }

  if (v9 <= 8)
  {
    goto LABEL_20;
  }

  if (v9 == 9)
  {
    v15 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30));
    v16 = *v15;
    v17 = *(v15 + 2) - 1;
    *(v15 + 2) = v17;
    v18 = *(v16 + 8 * v17);
    if (*(v18 + 23) < 0)
    {
      **v18 = 0;
      *(v18 + 8) = 0;
    }

    else
    {
      *v18 = 0;
      *(v18 + 23) = 0;
    }
  }

  else if (v9 == 10)
  {
    v10 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30));
    v11 = *(v10 + 2) - 1;
    v12 = *(*v10 + 8 * v11);
    *(v10 + 2) = v11;
    v13 = *(*v12 + 32);

    v13();
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::ReleaseLast(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "ReleaseLast", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "ReleaseLast", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 10)
  {
    sub_186843FE8(*(this + 1), a3, "ReleaseLast", 10);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v7 = *&a3[2].Kind;
    v8 = (a2 + *(this + 10));

    return AddrObjGoogle::protobuf::internal::ExtensionSet::ReleaseLast(v8, v7);
  }

  else
  {
    v10 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30));
    v11 = *v10;
    v12 = *(v10 + 3);
    v13 = *(v10 + 2);
    result = *(*v10 + 8 * (v13 - 1));
    *(v10 + 2) = v13 - 1;
    *(v10 + 3) = v12 - 1;
    if (v13 < v12)
    {
      *(v11 + 8 * (v13 - 1)) = *(v11 + 8 * (v12 - 1));
    }
  }

  return result;
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SwapElements(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4, int a5)
{
  v10 = *(this + 1);
  if (*&a3[3].Kind != v10)
  {
    sub_186843F14(v10, a3, "Swap", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "Swap", "Field is singular; the method requires a repeated field.");
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    v13 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields];
    if (v13 > 5)
    {
      if (v13 > 8)
      {
        if ((v13 - 9) >= 2)
        {
          return;
        }

        goto LABEL_23;
      }

      if (v13 == 6)
      {
        v20 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
        v21 = *(v20 + 4 * a4);
        *(v20 + 4 * a4) = *(v20 + 4 * a5);
        *(v20 + 4 * a5) = v21;
        return;
      }

      if (v13 == 7)
      {
        v22 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
        v23 = *(v22 + a4);
        *(v22 + a4) = *(v22 + a5);
        *(v22 + a5) = v23;
        return;
      }
    }

    else if (v13 <= 2)
    {
      if (v13 != 1)
      {
        if (v13 != 2)
        {
          return;
        }

        goto LABEL_23;
      }
    }

    else if (v13 != 3)
    {
      if (v13 != 4)
      {
        v14 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
        v15 = *(v14 + 8 * a4);
        *(v14 + 8 * a4) = *(v14 + 8 * a5);
        *(v14 + 8 * a5) = v15;
        return;
      }

LABEL_23:
      v18 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
      v19 = *(v18 + 8 * a4);
      *(v18 + 8 * a4) = *(v18 + 8 * a5);
      *(v18 + 8 * a5) = v19;
      return;
    }

    v16 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v17 = *(v16 + 4 * a4);
    *(v16 + 4 * a4) = *(v16 + 4 * a5);
    *(v16 + 4 * a5) = v17;
    return;
  }

  v11 = *&a3[2].Kind;
  v12 = (a2 + *(this + 10));

  AddrObjGoogle::protobuf::internal::ExtensionSet::SwapElements(v12, v11, a4, a5);
}

uint64_t *AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::ListFields(uint64_t *result, uint64_t a2, const void **a3)
{
  a3[1] = *a3;
  if (result[2] != a2)
  {
    v19[7] = v3;
    v19[8] = v4;
    v7 = result;
    v8 = result[1];
    if (*(v8 + 44) >= 1)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(v8 + 48);
        v19[0] = v11 + v9;
        if (*(v11 + v9 + 48) == 3)
        {
          if ((*(*v7 + 48))(v7, a2) <= 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (*(v11 + v9 + 52) == 1)
          {
            v12 = *(v11 + v9 + 64);
            if (v12)
            {
              v13 = (v12 + 112);
            }

            else
            {
              v13 = (*(v11 + v9 + 32) + 128);
            }
          }

          else
          {
            v13 = (*(v11 + v9 + 56) + 48);
          }

          v14 = -286331153 * ((v9 + v11 - *v13) >> 3);
          if (((*(a2 + *(v7 + 32) + 4 * (v14 / 32)) >> v14) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        std::vector<AddrObjGoogle::protobuf::FieldDescriptor const*>::push_back[abi:ne200100](a3, v19);
LABEL_14:
        ++v10;
        v8 = *(v7 + 8);
        v9 += 120;
      }

      while (v10 < *(v8 + 44));
    }

    v15 = *(v7 + 40);
    if (v15 != -1)
    {
      AddrObjGoogle::protobuf::internal::ExtensionSet::AppendToList((a2 + v15), v8, *(v7 + 48), a3);
    }

    v16 = a3[1];
    v17 = 126 - 2 * __clz((v16 - *a3) >> 3);
    if (v16 == *a3)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    return sub_1868441D4(*a3, v16, v18, 1);
  }

  return result;
}

void std::vector<AddrObjGoogle::protobuf::FieldDescriptor const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::FieldDescriptor const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "GetInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetInt32", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 1)
  {
    sub_186843FE8(*(this + 1), a3, "GetInt32", 1);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
  }

  v7 = *&a3[2].Kind;
  MangledTypeName = a3[7].MangledTypeName;
  v9 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetInt32(v9, v7, MangledTypeName);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "SetInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "SetInt32", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 1)
  {
    sub_186843FE8(*(this + 1), a3, "SetInt32", 1);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt32(v11, v9, NumFields, a4, a3);
  }

  else
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v12 / 32) + *(this + 8)) |= 1 << v12;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedInt32", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 1)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedInt32", 1);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 4 * a4);
  }

  v9 = *&a3[2].Kind;
  v10 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedInt32(v10, v9, a4);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetRepeatedInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4, int a5)
{
  v10 = *(this + 1);
  if (*&a3[3].Kind != v10)
  {
    sub_186843F14(v10, a3, "SetRepeatedInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "SetRepeatedInt32", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 1)
  {
    sub_186843FE8(*(this + 1), a3, "SetRepeatedInt32", 1);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v11 = *&a3[2].Kind;
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedInt32(v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 4 * a4) = a5;
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "AddInt32", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 1)
  {
    sub_186843FE8(*(this + 1), a3, "AddInt32", 1);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = *(*&a3[6].MangledTypeName + 44);
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(v12, v9, NumFields, v11, a4, a3);
  }

  else
  {
    v13 = (a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v14 = v13[2];
    if (v14 == v13[3])
    {
      AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(v13, v14 + 1);
      v14 = v13[2];
    }

    v15 = *v13;
    v13[2] = v14 + 1;
    *(v15 + 4 * v14) = a4;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "GetInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetInt64", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 2)
  {
    sub_186843FE8(*(this + 1), a3, "GetInt64", 2);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
  }

  v7 = *&a3[2].Kind;
  v8 = *&a3[7].MangledTypeName;
  v9 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetInt64(v9, v7, v8);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, uint64_t a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "SetInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "SetInt64", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 2)
  {
    sub_186843FE8(*(this + 1), a3, "SetInt64", 2);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt64(v11, v9, NumFields, a4, a3);
  }

  else
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v12 / 32) + *(this + 8)) |= 1 << v12;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedInt64", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 2)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedInt64", 2);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v9 = *&a3[2].Kind;
  v10 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedInt64(v10, v9, a4);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetRepeatedInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4, uint64_t a5)
{
  v10 = *(this + 1);
  if (*&a3[3].Kind != v10)
  {
    sub_186843F14(v10, a3, "SetRepeatedInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "SetRepeatedInt64", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 2)
  {
    sub_186843FE8(*(this + 1), a3, "SetRepeatedInt64", 2);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v11 = *&a3[2].Kind;
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedInt64(v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 8 * a4) = a5;
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, uint64_t a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "AddInt64", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 2)
  {
    sub_186843FE8(*(this + 1), a3, "AddInt64", 2);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = *(*&a3[6].MangledTypeName + 44);
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt64(v12, v9, NumFields, v11, a4, a3);
  }

  else
  {
    v13 = (a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v14 = v13[2];
    if (v14 == v13[3])
    {
      AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve(v13, v14 + 1);
      v14 = v13[2];
    }

    v15 = *v13;
    v13[2] = v14 + 1;
    *(v15 + 8 * v14) = a4;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetUInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "GetUInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetUInt32", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 3)
  {
    sub_186843FE8(*(this + 1), a3, "GetUInt32", 3);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
  }

  v7 = *&a3[2].Kind;
  MangledTypeName = a3[7].MangledTypeName;
  v9 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetInt32(v9, v7, MangledTypeName);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetUInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "SetUInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "SetUInt32", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 3)
  {
    sub_186843FE8(*(this + 1), a3, "SetUInt32", 3);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt32(v11, v9, NumFields, a4, a3);
  }

  else
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v12 / 32) + *(this + 8)) |= 1 << v12;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedUInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedUInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedUInt32", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 3)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedUInt32", 3);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 4 * a4);
  }

  v9 = *&a3[2].Kind;
  v10 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedUInt32(v10, v9, a4);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetRepeatedUInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4, int a5)
{
  v10 = *(this + 1);
  if (*&a3[3].Kind != v10)
  {
    sub_186843F14(v10, a3, "SetRepeatedUInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "SetRepeatedUInt32", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 3)
  {
    sub_186843FE8(*(this + 1), a3, "SetRepeatedUInt32", 3);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v11 = *&a3[2].Kind;
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedUInt32(v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 4 * a4) = a5;
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddUInt32(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddUInt32", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "AddUInt32", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 3)
  {
    sub_186843FE8(*(this + 1), a3, "AddUInt32", 3);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = *(*&a3[6].MangledTypeName + 44);
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(v12, v9, NumFields, v11, a4, a3);
  }

  else
  {
    v13 = (a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v14 = v13[2];
    if (v14 == v13[3])
    {
      AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(v13, v14 + 1);
      v14 = v13[2];
    }

    v15 = *v13;
    v13[2] = v14 + 1;
    *(v15 + 4 * v14) = a4;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetUInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "GetUInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetUInt64", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 4)
  {
    sub_186843FE8(*(this + 1), a3, "GetUInt64", 4);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
  }

  v7 = *&a3[2].Kind;
  v8 = *&a3[7].MangledTypeName;
  v9 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetInt64(v9, v7, v8);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetUInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, uint64_t a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "SetUInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "SetUInt64", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 4)
  {
    sub_186843FE8(*(this + 1), a3, "SetUInt64", 4);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt64(v11, v9, NumFields, a4, a3);
  }

  else
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v12 / 32) + *(this + 8)) |= 1 << v12;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedUInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedUInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedUInt64", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 4)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedUInt64", 4);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v9 = *&a3[2].Kind;
  v10 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedUInt64(v10, v9, a4);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetRepeatedUInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4, uint64_t a5)
{
  v10 = *(this + 1);
  if (*&a3[3].Kind != v10)
  {
    sub_186843F14(v10, a3, "SetRepeatedUInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "SetRepeatedUInt64", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 4)
  {
    sub_186843FE8(*(this + 1), a3, "SetRepeatedUInt64", 4);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v11 = *&a3[2].Kind;
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedUInt64(v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 8 * a4) = a5;
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddUInt64(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, uint64_t a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddUInt64", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "AddUInt64", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 4)
  {
    sub_186843FE8(*(this + 1), a3, "AddUInt64", 4);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = *(*&a3[6].MangledTypeName + 44);
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt64(v12, v9, NumFields, v11, a4, a3);
  }

  else
  {
    v13 = (a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v14 = v13[2];
    if (v14 == v13[3])
    {
      AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve(v13, v14 + 1);
      v14 = v13[2];
    }

    v15 = *v13;
    v13[2] = v14 + 1;
    *(v15 + 8 * v14) = a4;
  }
}

float AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetFloat(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "GetFloat", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetFloat", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 6)
  {
    sub_186843FE8(*(this + 1), a3, "GetFloat", 6);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
  }

  v7 = *&a3[2].Kind;
  MangledTypeName = a3[7].MangledTypeName;
  v9 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetFloat(v9, v7, *&MangledTypeName);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetFloat(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, float a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "SetFloat", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "SetFloat", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 6)
  {
    sub_186843FE8(*(this + 1), a3, "SetFloat", 6);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetFloat(v11, v9, NumFields, a4, a3);
  }

  else
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v12 / 32) + *(this + 8)) |= 1 << v12;
  }
}

float AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedFloat(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedFloat", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedFloat", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 6)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedFloat", 6);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 4 * a4);
  }

  v9 = *&a3[2].Kind;
  v10 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedFloat(v10, v9, a4);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetRepeatedFloat(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4, float a5)
{
  v10 = *(this + 1);
  if (*&a3[3].Kind != v10)
  {
    sub_186843F14(v10, a3, "SetRepeatedFloat", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "SetRepeatedFloat", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 6)
  {
    sub_186843FE8(*(this + 1), a3, "SetRepeatedFloat", 6);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v11 = *&a3[2].Kind;
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedFloat(v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 4 * a4) = a5;
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddFloat(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, float a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddFloat", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "AddFloat", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 6)
  {
    sub_186843FE8(*(this + 1), a3, "AddFloat", 6);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = *(*&a3[6].MangledTypeName + 44);
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::AddFloat(v12, v9, NumFields, v11, a4, a3);
  }

  else
  {
    v13 = (a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v14 = v13[2];
    if (v14 == v13[3])
    {
      AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(v13, v14 + 1);
      v14 = v13[2];
    }

    v15 = *v13;
    v13[2] = v14 + 1;
    *(v15 + 4 * v14) = a4;
  }
}

double AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetDouble(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "GetDouble", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetDouble", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 5)
  {
    sub_186843FE8(*(this + 1), a3, "GetDouble", 5);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
  }

  v7 = *&a3[2].Kind;
  v8 = *&a3[7].MangledTypeName;
  v9 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetDouble(v9, v7, v8);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetDouble(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, double a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "SetDouble", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "SetDouble", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 5)
  {
    sub_186843FE8(*(this + 1), a3, "SetDouble", 5);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetDouble(v11, v9, NumFields, a4, a3);
  }

  else
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v12 / 32) + *(this + 8)) |= 1 << v12;
  }
}

double AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedDouble(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedDouble", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedDouble", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 5)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedDouble", 5);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v9 = *&a3[2].Kind;
  v10 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedDouble(v10, v9, a4);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetRepeatedDouble(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4, double a5)
{
  v10 = *(this + 1);
  if (*&a3[3].Kind != v10)
  {
    sub_186843F14(v10, a3, "SetRepeatedDouble", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "SetRepeatedDouble", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 5)
  {
    sub_186843FE8(*(this + 1), a3, "SetRepeatedDouble", 5);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v11 = *&a3[2].Kind;
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedDouble(v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 8 * a4) = a5;
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddDouble(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, double a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddDouble", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "AddDouble", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 5)
  {
    sub_186843FE8(*(this + 1), a3, "AddDouble", 5);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = *(*&a3[6].MangledTypeName + 44);
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::AddDouble(v12, v9, NumFields, v11, a4, a3);
  }

  else
  {
    v13 = (a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v14 = v13[2];
    if (v14 == v13[3])
    {
      AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve(v13, v14 + 1);
      v14 = v13[2];
    }

    v15 = *v13;
    v13[2] = v14 + 1;
    *(v15 + 8 * v14) = a4;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetBool(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "GetBool", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetBool", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 7)
  {
    sub_186843FE8(*(this + 1), a3, "GetBool", 7);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
  }

  v7 = *&a3[2].Kind;
  MangledTypeName = a3[7].MangledTypeName;
  v9 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetBool(v9, v7, MangledTypeName);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetBool(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, char a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "SetBool", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "SetBool", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 7)
  {
    sub_186843FE8(*(this + 1), a3, "SetBool", 7);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetBool(v11, v9, NumFields, a4, a3);
  }

  else
  {
    v12 = *&a3[3].Kind;
    v14 = *(v12 + 48);
    v13 = (v12 + 48);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - v14) >> 3)) >> 30))) = a4;
    if (LOBYTE(a3[3].Superclass) == 1)
    {
      v15 = *&a3[4].MangledTypeName;
      if (v15)
      {
        v13 = (v15 + 112);
      }

      else
      {
        v13 = (*&a3[2].MangledTypeName + 128);
      }
    }

    v16 = -286331153 * ((a3 - *v13) >> 3);
    *(a2 + 4 * (v16 / 32) + *(this + 8)) |= 1 << v16;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedBool(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedBool", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedBool", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 7)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedBool", 7);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + a4);
  }

  v9 = *&a3[2].Kind;
  v10 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedBool(v10, v9, a4);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetRepeatedBool(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4, char a5)
{
  v10 = *(this + 1);
  if (*&a3[3].Kind != v10)
  {
    sub_186843F14(v10, a3, "SetRepeatedBool", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "SetRepeatedBool", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 7)
  {
    sub_186843FE8(*(this + 1), a3, "SetRepeatedBool", 7);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v11 = *&a3[2].Kind;
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedBool(v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + a4) = a5;
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddBool(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, char a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddBool", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "AddBool", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 7)
  {
    sub_186843FE8(*(this + 1), a3, "AddBool", 7);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = *(*&a3[6].MangledTypeName + 44);
    v12 = (a2 + *(this + 10));

    AddrObjGoogle::protobuf::internal::ExtensionSet::AddBool(v12, v9, NumFields, v11, a4, a3);
  }

  else
  {
    v13 = (a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v14 = v13[2];
    if (v14 == v13[3])
    {
      AddrObjGoogle::protobuf::RepeatedField<BOOL>::Reserve(v13, v14 + 1);
      v14 = v13[2];
    }

    v15 = *v13;
    v13[2] = v14 + 1;
    *(v15 + v14) = a4;
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetString(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this@<X0>, const AddrObjGoogle::protobuf::Message *a2@<X1>, const FieldDescriptor *a3@<X2>, std::string *a4@<X8>)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetString", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetString", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 9)
  {
    sub_186843FE8(*(this + 1), a3, "GetString", 9);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    Int64 = AddrObjGoogle::protobuf::internal::ExtensionSet::GetInt64((a2 + *(this + 10)), *&a3[2].Kind, *&a3[7].MangledTypeName);
    if ((*(Int64 + 23) & 0x80000000) == 0)
    {
      v10 = *Int64;
      v11 = *(Int64 + 16);
LABEL_12:
      a4->__r_.__value_.__r.__words[2] = v11;
      *&a4->__r_.__value_.__l.__data_ = v10;
      return;
    }

    v13 = *Int64;
    v14 = *(Int64 + 8);
  }

  else
  {
    v12 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    if ((*(v12 + 23) & 0x80000000) == 0)
    {
      v10 = *v12;
      v11 = *(v12 + 2);
      goto LABEL_12;
    }

    v13 = *v12;
    v14 = *(v12 + 1);
  }

  std::string::__init_copy_ctor_external(a4, v13, v14);
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetStringReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (*(a3 + 56) != v6)
  {
    sub_186843F14(v6, a3, "GetStringReference", "Field does not match message type.");
  }

  if (*(a3 + 48) == 3)
  {
    sub_186843F14(*(a1 + 8), a3, "GetStringReference", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 44)] != 9)
  {
    sub_186843FE8(*(a1 + 8), a3, "GetStringReference", 9);
  }

  if (*(a3 + 52) != 1)
  {
    return *(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 56) + 48)) >> 3)) >> 30)));
  }

  v7 = *(a3 + 40);
  v8 = *(a3 + 112);
  v9 = (a2 + *(a1 + 40));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetInt64(v9, v7, v8);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetString(uint64_t a1, uint64_t a2, FieldDescriptor *a3, const std::string *a4)
{
  v8 = *(a1 + 8);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "SetString", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(a1 + 8), a3, "SetString", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 9)
  {
    sub_186843FE8(*(a1 + 8), a3, "SetString", 9);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = AddrObjGoogle::protobuf::internal::ExtensionSet::MutableString((a2 + *(a1 + 40)), *&a3[2].Kind, a3[2].NumFields, a3);
  }

  else
  {
    v10 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + *(a1 + 32) + 4 * (v10 / 32)) |= 1 << v10;
    v11 = *(*(a1 + 24) + 4 * v10);
    v9 = *(a2 + v11);
    if (v9 == *(*(a1 + 16) + v11))
    {
      operator new();
    }
  }

  std::string::operator=(v9, a4);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedString(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this@<X0>, const AddrObjGoogle::protobuf::Message *a2@<X1>, const FieldDescriptor *a3@<X2>, int a4@<W3>, std::string *a5@<X8>)
{
  v10 = *(this + 1);
  if (*&a3[3].Kind != v10)
  {
    sub_186843F14(v10, a3, "GetRepeatedString", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedString", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 9)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedString", 9);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    RepeatedString = AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedString((a2 + *(this + 10)), *&a3[2].Kind, a4);
    if ((*(RepeatedString + 23) & 0x80000000) == 0)
    {
      v12 = *RepeatedString;
      v13 = *(RepeatedString + 16);
LABEL_12:
      a5->__r_.__value_.__r.__words[2] = v13;
      *&a5->__r_.__value_.__l.__data_ = v12;
      return;
    }

    v15 = *RepeatedString;
    v16 = *(RepeatedString + 8);
  }

  else
  {
    v14 = *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 8 * a4);
    if ((*(v14 + 23) & 0x80000000) == 0)
    {
      v12 = *v14;
      v13 = *(v14 + 2);
      goto LABEL_12;
    }

    v15 = *v14;
    v16 = *(v14 + 1);
  }

  std::string::__init_copy_ctor_external(a5, v15, v16);
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedStringReference(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 8);
  if (*(a3 + 56) != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedStringReference", "Field does not match message type.");
  }

  if (*(a3 + 48) != 3)
  {
    sub_186843F14(*(a1 + 8), a3, "GetRepeatedStringReference", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 44)] != 9)
  {
    sub_186843FE8(*(a1 + 8), a3, "GetRepeatedStringReference", 9);
  }

  if (*(a3 + 52) != 1)
  {
    return *(*(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 56) + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v9 = *(a3 + 40);
  v10 = (a2 + *(a1 + 40));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedString(v10, v9, a4);
}

std::string *AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetRepeatedString(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const std::string *a5)
{
  v10 = *(a1 + 8);
  if (*(a3 + 56) != v10)
  {
    sub_186843F14(v10, a3, "SetRepeatedString", "Field does not match message type.");
  }

  if (*(a3 + 48) != 3)
  {
    sub_186843F14(*(a1 + 8), a3, "SetRepeatedString", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 44)] != 9)
  {
    sub_186843FE8(*(a1 + 8), a3, "SetRepeatedString", 9);
  }

  if (*(a3 + 52) == 1)
  {
    v11 = AddrObjGoogle::protobuf::internal::ExtensionSet::MutableRepeatedString((a2 + *(a1 + 40)), *(a3 + 40), a4);
  }

  else
  {
    v11 = *(*(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 56) + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  return std::string::operator=(v11, a5);
}

std::string *AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddString(uint64_t a1, uint64_t a2, FieldDescriptor *a3, const std::string *a4)
{
  v8 = *(a1 + 8);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddString", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(a1 + 8), a3, "AddString", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 9)
  {
    sub_186843FE8(*(a1 + 8), a3, "AddString", 9);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = AddrObjGoogle::protobuf::internal::ExtensionSet::AddString((a2 + *(a1 + 40)), *&a3[2].Kind, a3[2].NumFields, a3);
  }

  else
  {
    v10 = (a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v11 = v10[3];
    v12 = v10[2];
    if (v12 >= v11)
    {
      if (v11 == v10[4])
      {
        v8 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(v10, v11 + 1);
        v11 = v10[3];
      }

      v10[3] = v11 + 1;
      AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(v8);
    }

    v13 = *v10;
    v10[2] = v12 + 1;
    v9 = *(v13 + 8 * v12);
  }

  return std::string::operator=(v9, a4);
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetEnum(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3)
{
  v6 = *(this + 1);
  if (*&a3[3].Kind != v6)
  {
    sub_186843F14(v6, a3, "GetEnum", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetEnum", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 8)
  {
    sub_186843FE8(*(this + 1), a3, "GetEnum", 8);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    Int32 = AddrObjGoogle::protobuf::internal::ExtensionSet::GetInt32((a2 + *(this + 10)), *&a3[2].Kind, *(*&a3[7].MangledTypeName + 16));
  }

  else
  {
    Int32 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
  }

  ValueByNumber = AddrObjGoogle::protobuf::EnumDescriptor::FindValueByNumber(*&a3[5].MangledTypeName, Int32);
  if (!ValueByNumber)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 910);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: result != NULL: ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Value ");
    v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, Int32);
    v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, " is not valid for field ");
    v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, *&a3->Kind);
    v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, " of type ");
    v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, *(*&a3[5].MangledTypeName + 8));
    v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, ".");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v18, v16);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  return ValueByNumber;
}

void sub_18690033C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetEnum(uint64_t a1, uint64_t a2, FieldDescriptor *a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "SetEnum", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(a1 + 8), a3, "SetEnum", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 8)
  {
    sub_186843FE8(*(a1 + 8), a3, "SetEnum", 8);
  }

  if (*(a4 + 24) != *&a3[5].MangledTypeName)
  {
    sub_1868440E8(*(a1 + 8), a3, "SetEnum", a4);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = *(a4 + 16);
    v12 = (a2 + *(a1 + 40));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt32(v12, v9, NumFields, v11, a3);
  }

  else
  {
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) = *(a4 + 16);
    *(a2 + *(a1 + 32) + 4 * (v13 / 32)) |= 1 << v13;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedEnum(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedEnum", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedEnum", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 8)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedEnum", 8);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    RepeatedEnum = AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedEnum((a2 + *(this + 10)), *&a3[2].Kind, a4);
  }

  else
  {
    RepeatedEnum = *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 4 * a4);
  }

  ValueByNumber = AddrObjGoogle::protobuf::EnumDescriptor::FindValueByNumber(*&a3[5].MangledTypeName, RepeatedEnum);
  if (!ValueByNumber)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 942);
    v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: result != NULL: ");
    v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "Value ");
    v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, RepeatedEnum);
    v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, " is not valid for field ");
    v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, *&a3->Kind);
    v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, " of type ");
    v17 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, *(*&a3[5].MangledTypeName + 8));
    v18 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v17, ".");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v20, v18);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  return ValueByNumber;
}

void sub_186900684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::SetRepeatedEnum(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *(a1 + 8);
  if (*(a3 + 56) != v10)
  {
    sub_186843F14(v10, a3, "SetRepeatedEnum", "Field does not match message type.");
  }

  if (*(a3 + 48) != 3)
  {
    sub_186843F14(*(a1 + 8), a3, "SetRepeatedEnum", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 44)] != 8)
  {
    sub_186843FE8(*(a1 + 8), a3, "SetRepeatedEnum", 8);
  }

  if (*(a5 + 24) != *(a3 + 80))
  {
    sub_1868440E8(*(a1 + 8), a3, "SetRepeatedEnum", a5);
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 40);
    v12 = *(a5 + 16);
    v13 = (a2 + *(a1 + 40));

    AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedEnum(v13, v11, a4, v12);
  }

  else
  {
    *(*(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 56) + 48)) >> 3)) >> 30))) + 4 * a4) = *(a5 + 16);
  }
}

void AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddEnum(uint64_t a1, uint64_t a2, FieldDescriptor *a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddEnum", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(a1 + 8), a3, "AddEnum", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 8)
  {
    sub_186843FE8(*(a1 + 8), a3, "AddEnum", 8);
  }

  if (*(a4 + 24) != *&a3[5].MangledTypeName)
  {
    sub_1868440E8(*(a1 + 8), a3, "AddEnum", a4);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    NumFields = a3[2].NumFields;
    v11 = *(*&a3[6].MangledTypeName + 44);
    v12 = *(a4 + 16);
    v13 = (a2 + *(a1 + 40));

    AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(v13, v9, NumFields, v11, v12, a3);
  }

  else
  {
    v14 = *(a4 + 16);
    v15 = (a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v16 = v15[2];
    if (v16 == v15[3])
    {
      AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(v15, v16 + 1);
      v16 = v15[2];
    }

    v17 = *v15;
    v15[2] = v16 + 1;
    *(v17 + 4 * v16) = v14;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetMessage(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, AddrObjGoogle::protobuf::MessageFactory *a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetMessage", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "GetMessage", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 10)
  {
    sub_186843FE8(*(this + 1), a3, "GetMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 7);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = *&a3[2].Kind;
    v10 = *&a3[4].Kind;
    v11 = a2 + *(this + 10);

    return AddrObjGoogle::protobuf::internal::ExtensionSet::GetMessage(v11, v9, v10, a4);
  }

  else
  {
    v13 = *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30));
    result = *(a2 + v13);
    if (!result)
    {
      return *(*(this + 2) + v13);
    }
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::MutableMessage(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, AddrObjGoogle::protobuf::MessageFactory *a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "MutableMessage", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "MutableMessage", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 10)
  {
    sub_186843FE8(*(this + 1), a3, "MutableMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 7);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = (a2 + *(this + 10));

    return AddrObjGoogle::protobuf::internal::ExtensionSet::MutableMessage(v9, a3, a4);
  }

  else
  {
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + 4 * (v11 / 32) + *(this + 8)) |= 1 << v11;
    v12 = *(*(this + 3) + 4 * v11);
    result = *(a2 + v12);
    if (!result)
    {
      result = (*(**(*(this + 2) + v12) + 24))(*(*(this + 2) + v12));
      *(a2 + v12) = result;
    }
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::ReleaseMessage(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, AddrObjGoogle::protobuf::MessageFactory *a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "ReleaseMessage", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName == 3)
  {
    sub_186843F14(*(this + 1), a3, "ReleaseMessage", "Field is repeated; the method requires a singular field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 10)
  {
    sub_186843FE8(*(this + 1), a3, "ReleaseMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 7);
  }

  if (LOBYTE(a3[3].Superclass) == 1)
  {
    v9 = (a2 + *(this + 10));

    return AddrObjGoogle::protobuf::internal::ExtensionSet::ReleaseMessage(v9, a3, a4);
  }

  else
  {
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*&a3[3].Kind + 48)) >> 3);
    *(a2 + 4 * (v11 / 32) + *(this + 8)) &= ~(1 << v11);
    v12 = *(*(this + 3) + 4 * v11);
    result = *(a2 + v12);
    *(a2 + v12) = 0;
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::GetRepeatedMessage(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, const AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "GetRepeatedMessage", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "GetRepeatedMessage", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 10)
  {
    sub_186843FE8(*(this + 1), a3, "GetRepeatedMessage", 10);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v9 = *&a3[2].Kind;
  v10 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedMessage(v10, v9, a4);
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::MutableRepeatedMessage(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, int a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "MutableRepeatedMessage", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "MutableRepeatedMessage", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 10)
  {
    sub_186843FE8(*(this + 1), a3, "MutableRepeatedMessage", 10);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v9 = *&a3[2].Kind;
  v10 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::MutableRepeatedMessage(v10, v9, a4);
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::AddMessage(AddrObjGoogle::protobuf::internal::GeneratedMessageReflection *this, AddrObjGoogle::protobuf::Message *a2, const FieldDescriptor *a3, AddrObjGoogle::protobuf::MessageFactory *a4)
{
  v8 = *(this + 1);
  if (*&a3[3].Kind != v8)
  {
    sub_186843F14(v8, a3, "AddMessage", "Field does not match message type.");
  }

  if (a3[3].MangledTypeName != 3)
  {
    sub_186843F14(*(this + 1), a3, "AddMessage", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a3[2].NumFields] != 10)
  {
    sub_186843FE8(*(this + 1), a3, "AddMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 7);
  }

  if (LOBYTE(a3[3].Superclass) != 1)
  {
    v11 = (a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*&a3[3].Kind + 48)) >> 3)) >> 30)));
    v12 = v11[2];
    if (v12 < v11[3])
    {
      v13 = *v11;
      v11[2] = v12 + 1;
      v14 = v13[v12];
      if (v14)
      {
        return v14;
      }

      ++v12;
    }

    if (v12)
    {
      v15 = **v11;
    }

    else
    {
      v15 = (*(*a4 + 16))(a4, *&a3[4].Kind);
    }

    v14 = (*(*v15 + 24))(v15);
    AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<AddrObjGoogle::protobuf::RepeatedPtrField<AddrObjGoogle::protobuf::MessageLite>::TypeHandler>(v11, v14);
    return v14;
  }

  v9 = (a2 + *(this + 10));

  return AddrObjGoogle::protobuf::internal::ExtensionSet::AddMessage(v9, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::MutableRawRepeatedField(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  if (*(a3 + 48) != 3)
  {
    sub_186843F14(*(a1 + 8), a3, "MutableRawRepeatedField", "Field is singular; the method requires a repeated field.");
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 44)] != a4)
  {
    sub_186843FE8(*(a1 + 8), a3, "MutableRawRepeatedField", a4);
  }

  if ((a5 & 0x80000000) == 0 && *(*(a3 + 96) + 40) != a5)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 1110);
    v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (field->options().ctype()) == (ctype): ");
    v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "subtype mismatch");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v17, v13);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  if (a6 && *(a3 + 72) != a6)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 1112);
    v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (field->message_type()) == (desc): ");
    v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, "wrong submessage type");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v17, v15);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  if (*(a3 + 52) == 1)
  {
    return AddrObjGoogle::protobuf::internal::ExtensionSet::MutableRawRepeatedField((a2 + *(a1 + 40)), *(a3 + 40));
  }

  else
  {
    return a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 56) + 48)) >> 3)) >> 30));
  }
}

void sub_18690132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::FindKnownExtensionByName(uint64_t a1, char *a2)
{
  if (*(a1 + 40) == -1)
  {
    return 0;
  }

  result = AddrObjGoogle::protobuf::DescriptorPool::FindExtensionByName(*(a1 + 48), a2);
  if (result)
  {
    v5 = *(a1 + 8);
    if (*(result + 56) == v5)
    {
      return result;
    }
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (*(*(v5 + 32) + 64) != 1)
  {
    return 0;
  }

  result = AddrObjGoogle::protobuf::DescriptorPool::FindMessageTypeByName(*(a1 + 48), a2);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 104);
  if (v7 < 1)
  {
    return 0;
  }

  for (result = *(result + 112); *(result + 56) != *(a1 + 8) || *(result + 44) != 11 || *(result + 48) != 1 || *(result + 72) != v6; result += 120)
  {
    if (!--v7)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedMessageReflection::FindKnownExtensionByNumber(AddrObjGoogle::protobuf::DescriptorPool **this, uint64_t a2)
{
  if (*(this + 10) == -1)
  {
    return 0;
  }

  else
  {
    return AddrObjGoogle::protobuf::DescriptorPool::FindExtensionByNumber(this[6], this[1], a2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::FieldDescriptor const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unsigned __int8 *AddrObjGoogle::protobuf::MessageLite::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::MessageLite *this, unsigned __int8 *a2)
{
  v4 = (*(*this + 96))(this);
  AddrObjGoogle::protobuf::io::ArrayOutputStream::ArrayOutputStream(v10, a2, v4, -1);
  AddrObjGoogle::protobuf::io::CodedOutputStream::CodedOutputStream(v9, v10);
  (*(*this + 80))(this, v9);
  if (v9[24] == 1)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message_lite.cc", 225);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !coded_out.HadError(): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v5);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::io::CodedOutputStream::~CodedOutputStream(v9);
  AddrObjGoogle::protobuf::io::ArrayOutputStream::~ArrayOutputStream(v10);
  return &a2[v4];
}

void sub_18690159C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  AddrObjGoogle::protobuf::io::CodedOutputStream::~CodedOutputStream(va1);
  AddrObjGoogle::protobuf::io::ArrayOutputStream::~ArrayOutputStream((v5 - 64));
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::MessageLite::SerializeAsString@<X0>(AddrObjGoogle::protobuf::MessageLite *this@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  return AddrObjGoogle::protobuf::MessageLite::AppendPartialToString(this, a2);
}

void sub_186901624(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::AppendToList(void *a1, const AddrObjGoogle::protobuf::Descriptor *a2, AddrObjGoogle::protobuf::DescriptorPool *a3, const void **a4)
{
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1 != a1 + 1)
  {
    while (*(v5 + 49) != 1)
    {
      if ((*(v5 + 50) & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_32:
      v29 = v5[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v5[2];
          v31 = *v30 == v5;
          v5 = v30;
        }

        while (!v31);
      }

      v5 = v30;
      if (v30 == v4)
      {
        return;
      }
    }

    if (AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::GetSize((v5 + 5)) <= 0)
    {
      goto LABEL_32;
    }

LABEL_6:
    v9 = v5[7];
    if (v9)
    {
      v11 = a4[1];
      v10 = a4[2];
      if (v11 < v10)
      {
        *v11 = v9;
        v12 = v11 + 8;
LABEL_31:
        a4[1] = v12;
        goto LABEL_32;
      }

      v16 = (v11 - *a4) >> 3;
      if ((v16 + 1) >> 61)
      {
        goto LABEL_39;
      }

      v17 = v10 - *a4;
      v18 = v17 >> 2;
      if (v17 >> 2 <= (v16 + 1))
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::FieldDescriptor const*>>(a4, v19);
      }

      *(8 * v16) = v9;
      v12 = (8 * v16 + 8);
      v24 = *a4;
      v25 = a4[1] - *a4;
      v26 = (8 * v16 - v25);
    }

    else
    {
      ExtensionByNumber = AddrObjGoogle::protobuf::DescriptorPool::FindExtensionByNumber(a3, a2, *(v5 + 8));
      v15 = a4[1];
      v14 = a4[2];
      if (v15 < v14)
      {
        *v15 = ExtensionByNumber;
        v12 = v15 + 8;
        goto LABEL_31;
      }

      v20 = (v15 - *a4) >> 3;
      if ((v20 + 1) >> 61)
      {
LABEL_39:
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v21 = v14 - *a4;
      v22 = v21 >> 2;
      if (v21 >> 2 <= (v20 + 1))
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::FieldDescriptor const*>>(a4, v23);
      }

      v27 = (8 * v20);
      *v27 = ExtensionByNumber;
      v12 = (8 * v20 + 8);
      v24 = *a4;
      v25 = a4[1] - *a4;
      v26 = v27 - v25;
    }

    memcpy(v26, v24, v25);
    v28 = *a4;
    *a4 = v26;
    a4[1] = v12;
    a4[2] = 0;
    if (v28)
    {
      operator delete(v28);
    }

    goto LABEL_31;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetMessage(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v4 = a1 + 8;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 == v4 || *(v7 + 32) > a2 || (*(v7 + 50) & 1) != 0)
  {
LABEL_9:
    v8 = *(*a4 + 16);

    return v8(a4, a3);
  }

  else
  {
    v10 = *(v7 + 40);
    if ((*(v7 + 50) & 0x10) != 0)
    {
      v11 = (*(*a4 + 16))(a4, a3);
      v12 = *(*v10 + 24);

      return v12(v10, v11);
    }

    else
    {
      return *(v7 + 40);
    }
  }
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::MutableMessage(AddrObjGoogle::protobuf::internal::ExtensionSet *this, const FieldDescriptor *a2, AddrObjGoogle::protobuf::MessageFactory *a3)
{
  v14 = 0;
  if (AddrObjGoogle::protobuf::internal::ExtensionSet::MaybeNewExtension(this, *&a2[2].Kind, a2, &v14))
  {
    v5 = v14;
    *(v14 + 8) = a2[2].NumFields;
    *(v5 + 9) = 0;
    *(v5 + 11) = 0;
    v6 = (*(*a3 + 16))(a3, *&a2[4].Kind);
    *(v14 + 10) &= 0xFu;
    v7 = (*(*v6 + 24))(v6);
    *v14 = v7;
    v8 = v14;
    *(v14 + 10) &= 0xF0u;
    return *v8;
  }

  else
  {
    v10 = v14;
    v11 = *(v14 + 10);
    *(v14 + 10) = v11 & 0xF0;
    v9 = *v10;
    if ((v11 & 0x10) != 0)
    {
      v12 = (*(*a3 + 16))(a3, *&a2[4].Kind);
      return (*(*v9 + 32))(v9, v12);
    }
  }

  return v9;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::ReleaseMessage(AddrObjGoogle::protobuf::internal::ExtensionSet *this, const FieldDescriptor *a2, AddrObjGoogle::protobuf::MessageFactory *a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v6 = *&a2[2].Kind;
  v7 = this + 8;
  do
  {
    if (*(v3 + 8) >= v6)
    {
      v7 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < v6)];
  }

  while (v3);
  if (v7 == this + 8 || v6 < *(v7 + 8))
  {
    return 0;
  }

  v8 = *(v7 + 5);
  if ((v7[50] & 0x10) != 0)
  {
    v10 = (*(*a3 + 16))(a3, *&a2[4].Kind);
    v8 = (*(*v8 + 48))(v8, v10);
    v11 = *(v7 + 5);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = *&a2[2].Kind;
  std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__erase_unique<int>(this, &v12);
  return v8;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::AddMessage(AddrObjGoogle::protobuf::internal::ExtensionSet *this, const FieldDescriptor *a2, AddrObjGoogle::protobuf::MessageFactory *a3)
{
  v16 = 0;
  if (AddrObjGoogle::protobuf::internal::ExtensionSet::MaybeNewExtension(this, *&a2[2].Kind, a2, &v16))
  {
    v5 = v16;
    *(v16 + 8) = a2[2].NumFields;
    *(v5 + 9) = 1;
    operator new();
  }

  v6 = v16;
  v7 = *v16;
  v8 = *(*v16 + 8);
  if (v8 < *(*v16 + 12))
  {
    v9 = *v7;
    *(v7 + 8) = v8 + 1;
    v10 = v9[v8];
    if (v10)
    {
      return v10;
    }

    v7 = *v6;
    v8 = *(*v6 + 8);
  }

  if (v8)
  {
    v11 = **v7;
  }

  else
  {
    v11 = (*(*a3 + 16))(a3, *&a2[4].Kind);
    if (!v11)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set_heavy.cc", 207);
      v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: prototype != NULL: ");
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v14, v12);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
      v11 = 0;
    }
  }

  v10 = (*(*v11 + 24))(v11);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<AddrObjGoogle::protobuf::RepeatedPtrField<AddrObjGoogle::protobuf::MessageLite>::TypeHandler>(*v16, v10);
  return v10;
}

void sub_186901D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL AddrObjGoogle::protobuf::internal::DescriptorPoolExtensionFinder::Find(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ExtensionByNumber = AddrObjGoogle::protobuf::DescriptorPool::FindExtensionByNumber(*(a1 + 8), *(a1 + 24), a2);
  v6 = ExtensionByNumber;
  if (ExtensionByNumber)
  {
    v7 = *(ExtensionByNumber + 44);
    v8 = *(ExtensionByNumber + 48);
    *a3 = v7;
    *(a3 + 1) = v8 == 3;
    *(a3 + 2) = *(*(ExtensionByNumber + 96) + 44);
    *(a3 + 24) = ExtensionByNumber;
    v9 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7];
    if (v9 == 8)
    {
      *(a3 + 8) = sub_186844FE4;
      *(a3 + 16) = *(ExtensionByNumber + 80);
    }

    else if (v9 == 10)
    {
      v10 = (*(**(a1 + 16) + 16))(*(a1 + 16), *(ExtensionByNumber + 72));
      *(a3 + 8) = v10;
      if (!v10)
      {
        AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set_heavy.cc", 235);
        v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: output->message_prototype != NULL: ");
        v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "Extension factory's GetPrototype() returned NULL for extension: ");
        v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, *(v6 + 8));
        AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v15, v13);
        AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
      }
    }
  }

  return v6 != 0;
}

void sub_186901E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelf(AddrObjGoogle::protobuf::internal::ExtensionSet *this)
{
  v1 = (32 * *(this + 4));
  v2 = *this;
  v3 = (this + 8);
  if (*this != (this + 8))
  {
    do
    {
      v4 = AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::SpaceUsedExcludingSelf(v2 + 5);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v1 = (v4 + v1);
      v2 = v6;
    }

    while (v6 != v3);
  }

  return v1;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::SpaceUsedExcludingSelf(uint64_t **this)
{
  v2 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 8)];
  if (*(this + 9) == 1)
  {
    result = 0;
    if (v2 <= 5)
    {
      if (v2 <= 2)
      {
        if (v2 != 1)
        {
          if (v2 != 2)
          {
            return result;
          }

LABEL_22:
          v8 = *this;
          if (*v8)
          {
            v9 = 8 * *(v8 + 3);
            return (v9 + 16);
          }

          return 16;
        }
      }

      else if (v2 != 3)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    if (v2 <= 7)
    {
      if (v2 != 6)
      {
        v10 = *this;
        if (*v10)
        {
          v9 = *(v10 + 3);
          return (v9 + 16);
        }

        return 16;
      }

      goto LABEL_27;
    }

    switch(v2)
    {
      case 8:
LABEL_27:
        v11 = *this;
        if (*v11)
        {
          v9 = 4 * *(v11 + 3);
          return (v9 + 16);
        }

        return 16;
      case 9:
        v12 = *this;
        if (**this)
        {
          v5 = 8 * *(v12 + 4);
        }

        else
        {
          v5 = 0;
        }

        if (*(v12 + 3) >= 1)
        {
          v14 = 0;
          do
          {
            v5 += AddrObjGoogle::protobuf::internal::StringSpaceUsedExcludingSelf(*(*v12 + 8 * v14++)) + 24;
          }

          while (v14 < *(v12 + 3));
        }

        break;
      case 10:
        v4 = *this;
        if (**this)
        {
          v5 = 8 * *(v4 + 4);
        }

        else
        {
          v5 = 0;
        }

        if (*(v4 + 3) >= 1)
        {
          v13 = 0;
          do
          {
            v5 += (*(**(*v4 + 8 * v13) + 128))(*(*v4 + 8 * v13));
            ++v13;
          }

          while (v13 < *(v4 + 3));
        }

        break;
      default:
        return result;
    }

    return (v5 + 24);
  }

  else if (v2 == 10)
  {
    v6 = **this;
    if ((*(this + 10) & 0x10) != 0)
    {
      v7 = *(v6 + 72);
    }

    else
    {
      v7 = *(v6 + 128);
    }

    return v7();
  }

  else if (v2 == 9)
  {
    return AddrObjGoogle::protobuf::internal::StringSpaceUsedExcludingSelf(*this) + 24;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, unsigned __int8 *a4)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (v4)
  {
    v7 = this + 8;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v7 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 + 8);
        if (v8 >= a3)
        {
          break;
        }

        a4 = AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::SerializeFieldWithCachedSizesToArray((v7 + 40), v8, a4, a4);
        v9 = *(v7 + 1);
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
            v10 = *(v7 + 2);
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v5);
    }
  }

  return a4;
}

unsigned __int8 *AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::SerializeFieldWithCachedSizesToArray(AddrObjGoogle::protobuf::internal::ExtensionSet::Extension *this, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a3;
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      if (*(this + 3))
      {
        v6 = 8 * a2;
        if ((8 * a2) > 0x7F)
        {
          if (v6 >> 14)
          {
            v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * a2) | 2u), a3, a3);
          }

          else
          {
            *a3 = (8 * a2) | 0x82;
            a3[1] = v6 >> 7;
            v7 = a3 + 2;
          }
        }

        else
        {
          *a3 = (8 * a2) | 2;
          v7 = a3 + 1;
        }

        v24 = *(this + 3);
        if ((v24 & 0x80000000) != 0)
        {
          v25 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v24, v7, a3);
        }

        else
        {
          if (v24 <= 0x7F)
          {
            *v7 = v24;
            v4 = v7 + 1;
            goto LABEL_32;
          }

          v25 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v7, a3);
        }

        v4 = v25;
LABEL_32:
        switch(*(this + 8))
        {
          case 1:
            v218 = *this;
            if (*(*this + 8) >= 1)
            {
              v219 = 0;
              do
              {
                *v4 = *(*v218 + 8 * v219);
                v4 += 8;
                ++v219;
                v218 = *this;
              }

              while (v219 < *(*this + 8));
            }

            return v4;
          case 2:
            v220 = *this;
            if (*(*this + 8) >= 1)
            {
              v221 = 0;
              do
              {
                *v4 = *(*v220 + 4 * v221);
                v4 += 4;
                ++v221;
                v220 = *this;
              }

              while (v221 < *(*this + 8));
            }

            return v4;
          case 3:
            v210 = *this;
            if (*(*this + 8) >= 1)
            {
              v211 = 0;
              do
              {
                v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(*(*v210 + 8 * v211++), v4, a3);
                v210 = *this;
              }

              while (v211 < *(*this + 8));
            }

            return v4;
          case 4:
            v214 = *this;
            if (*(*this + 8) >= 1)
            {
              v215 = 0;
              do
              {
                v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(*(*v214 + 8 * v215++), v4, a3);
                v214 = *this;
              }

              while (v215 < *(*this + 8));
            }

            return v4;
          case 5:
            v203 = *this;
            if (*(*this + 8) < 1)
            {
              return v4;
            }

            v204 = 0;
            while (1)
            {
              v205 = *(*v203 + 4 * v204);
              if ((v205 & 0x80000000) != 0)
              {
                break;
              }

              if (v205 > 0x7F)
              {
                v206 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v205, v4, a3);
                goto LABEL_286;
              }

              *v4++ = v205;
LABEL_287:
              ++v204;
              v203 = *this;
              if (v204 >= *(*this + 8))
              {
                return v4;
              }
            }

            v206 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v205, v4, a3);
LABEL_286:
            v4 = v206;
            goto LABEL_287;
          case 6:
            v228 = *this;
            if (*(*this + 8) >= 1)
            {
              v229 = 0;
              do
              {
                *v4 = *(*v228 + 8 * v229);
                v4 += 8;
                ++v229;
                v228 = *this;
              }

              while (v229 < *(*this + 8));
            }

            return v4;
          case 7:
            v230 = *this;
            if (*(*this + 8) >= 1)
            {
              v231 = 0;
              do
              {
                *v4 = *(*v230 + 4 * v231);
                v4 += 4;
                ++v231;
                v230 = *this;
              }

              while (v231 < *(*this + 8));
            }

            return v4;
          case 8:
            v216 = *this;
            if (*(*this + 8) >= 1)
            {
              v217 = 0;
              do
              {
                v4[v217] = *(*v216 + v217);
                ++v217;
                v216 = *this;
              }

              while (v217 < *(*this + 8));
              v4 += v217;
            }

            return v4;
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
            AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v246, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set_heavy.cc", 409);
            v26 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v246, "Non-primitive types can't be packed.");
            AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v245, v26);
            AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v246[0].__r_.__value_.__l.__data_);
            return v4;
          case 0xD:
            v207 = *this;
            if (*(*this + 8) >= 1)
            {
              v208 = 0;
              do
              {
                v209 = *(*v207 + 4 * v208);
                if (v209 > 0x7F)
                {
                  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v209, v4, a3);
                }

                else
                {
                  *v4++ = v209;
                }

                ++v208;
                v207 = *this;
              }

              while (v208 < *(*this + 8));
            }

            return v4;
          case 0xE:
            v224 = *this;
            if (*(*this + 8) < 1)
            {
              return v4;
            }

            v225 = 0;
            break;
          case 0xF:
            v201 = *this;
            if (*(*this + 8) >= 1)
            {
              v202 = 0;
              do
              {
                *v4 = *(*v201 + 4 * v202);
                v4 += 4;
                ++v202;
                v201 = *this;
              }

              while (v202 < *(*this + 8));
            }

            return v4;
          case 0x10:
            v212 = *this;
            if (*(*this + 8) >= 1)
            {
              v213 = 0;
              do
              {
                *v4 = *(*v212 + 8 * v213);
                v4 += 8;
                ++v213;
                v212 = *this;
              }

              while (v213 < *(*this + 8));
            }

            return v4;
          case 0x11:
            v198 = *this;
            if (*(*this + 8) >= 1)
            {
              v199 = 0;
              do
              {
                v200 = ((2 * *(*v198 + 4 * v199)) ^ (*(*v198 + 4 * v199) >> 31));
                if (v200 > 0x7F)
                {
                  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v200, v4, a3);
                }

                else
                {
                  *v4++ = (2 * *(*v198 + 4 * v199)) ^ (*(*v198 + 4 * v199) >> 31);
                }

                ++v199;
                v198 = *this;
              }

              while (v199 < *(*this + 8));
            }

            return v4;
          case 0x12:
            v222 = *this;
            if (*(*this + 8) >= 1)
            {
              v223 = 0;
              do
              {
                v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray((2 * *(*v222 + 8 * v223)) ^ (*(*v222 + 8 * v223) >> 63), v4, a3);
                ++v223;
                v222 = *this;
              }

              while (v223 < *(*this + 8));
            }

            return v4;
          default:
            return v4;
        }

        while (1)
        {
          v226 = *(*v224 + 4 * v225);
          if ((v226 & 0x80000000) != 0)
          {
            break;
          }

          if (v226 > 0x7F)
          {
            v227 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v226, v4, a3);
            goto LABEL_331;
          }

          *v4++ = v226;
LABEL_332:
          ++v225;
          v224 = *this;
          if (v225 >= *(*this + 8))
          {
            return v4;
          }
        }

        v227 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v226, v4, a3);
LABEL_331:
        v4 = v227;
        goto LABEL_332;
      }

      return v4;
    }

    switch(*(this + 8))
    {
      case 1:
        v9 = *this;
        if (*(*this + 8) >= 1)
        {
          v10 = 0;
          v11 = 8 * a2;
          v12 = ((8 * a2) | 1u);
          v13 = (8 * a2) | 0x81;
          v14 = (8 * a2) >> 14;
          v15 = (8 * a2) >> 7;
          do
          {
            v16 = *(*v9 + 8 * v10);
            if (v11 > 0x7F)
            {
              if (v14)
              {
                v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4, a3);
              }

              else
              {
                *v4 = v13;
                v4[1] = v15;
                v17 = v4 + 2;
              }
            }

            else
            {
              *v4 = v12;
              v17 = v4 + 1;
            }

            *v17 = v16;
            v4 = v17 + 8;
            ++v10;
            v9 = *this;
          }

          while (v10 < *(*this + 8));
        }

        return v4;
      case 2:
        v125 = *this;
        if (*(*this + 8) >= 1)
        {
          v126 = 0;
          v127 = 8 * a2;
          v128 = ((8 * a2) | 5u);
          v129 = (8 * a2) >> 14;
          v130 = (8 * a2) >> 7;
          v131 = (8 * a2) | 0x85;
          do
          {
            v132 = *(*v125 + 4 * v126);
            if (v127 > 0x7F)
            {
              if (v129)
              {
                v133 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v128, v4, a3);
              }

              else
              {
                *v4 = v131;
                v4[1] = v130;
                v133 = v4 + 2;
              }
            }

            else
            {
              *v4 = v128;
              v133 = v4 + 1;
            }

            *v133 = v132;
            v4 = v133 + 4;
            ++v126;
            v125 = *this;
          }

          while (v126 < *(*this + 8));
        }

        return v4;
      case 3:
        v96 = *this;
        if (*(*this + 8) >= 1)
        {
          v97 = 0;
          v98 = (8 * a2);
          v99 = (8 * a2) | 0x80;
          do
          {
            v100 = *(*v96 + 8 * v97);
            if (v98 > 0x7F)
            {
              if (v98 >> 14)
              {
                v101 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v98, v4, a3);
              }

              else
              {
                *v4 = v99;
                v4[1] = v98 >> 7;
                v101 = v4 + 2;
              }
            }

            else
            {
              *v4 = v98;
              v101 = v4 + 1;
            }

            v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v100, v101, a3);
            ++v97;
            v96 = *this;
          }

          while (v97 < *(*this + 8));
        }

        return v4;
      case 4:
        v113 = *this;
        if (*(*this + 8) >= 1)
        {
          v114 = 0;
          v115 = (8 * a2);
          v116 = (8 * a2) | 0x80;
          do
          {
            v117 = *(*v113 + 8 * v114);
            if (v115 > 0x7F)
            {
              if (v115 >> 14)
              {
                v118 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v115, v4, a3);
              }

              else
              {
                *v4 = v116;
                v4[1] = v115 >> 7;
                v118 = v4 + 2;
              }
            }

            else
            {
              *v4 = v115;
              v118 = v4 + 1;
            }

            v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v117, v118, a3);
            ++v114;
            v113 = *this;
          }

          while (v114 < *(*this + 8));
        }

        return v4;
      case 5:
        v72 = *this;
        if (*(*this + 8) < 1)
        {
          return v4;
        }

        v73 = 0;
        v74 = (8 * a2);
        v75 = (8 * a2) | 0x80;
        while (1)
        {
          v76 = *(*v72 + 4 * v73);
          if (v74 > 0x7F)
          {
            if (v74 >> 14)
            {
              v77 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v74, v4, a3);
              if ((v76 & 0x80000000) != 0)
              {
LABEL_101:
                v78 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v76, v77, a3);
                goto LABEL_102;
              }
            }

            else
            {
              *v4 = v75;
              v4[1] = v74 >> 7;
              v77 = v4 + 2;
              if ((v76 & 0x80000000) != 0)
              {
                goto LABEL_101;
              }
            }
          }

          else
          {
            *v4 = v74;
            v77 = v4 + 1;
            if ((v76 & 0x80000000) != 0)
            {
              goto LABEL_101;
            }
          }

          if (v76 > 0x7F)
          {
            v78 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v76, v77, a3);
LABEL_102:
            v4 = v78;
            goto LABEL_103;
          }

          *v77 = v76;
          v4 = v77 + 1;
LABEL_103:
          ++v73;
          v72 = *this;
          if (v73 >= *(*this + 8))
          {
            return v4;
          }
        }

      case 6:
        v142 = *this;
        if (*(*this + 8) >= 1)
        {
          v143 = 0;
          v144 = 8 * a2;
          v145 = ((8 * a2) | 1u);
          v146 = (8 * a2) | 0x81;
          v147 = (8 * a2) >> 14;
          v148 = (8 * a2) >> 7;
          do
          {
            v149 = *(*v142 + 8 * v143);
            if (v144 > 0x7F)
            {
              if (v147)
              {
                v150 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v145, v4, a3);
              }

              else
              {
                *v4 = v146;
                v4[1] = v148;
                v150 = v4 + 2;
              }
            }

            else
            {
              *v4 = v145;
              v150 = v4 + 1;
            }

            *v150 = v149;
            v4 = v150 + 8;
            ++v143;
            v142 = *this;
          }

          while (v143 < *(*this + 8));
        }

        return v4;
      case 7:
        v162 = *this;
        if (*(*this + 8) >= 1)
        {
          v163 = 0;
          v164 = 8 * a2;
          v165 = ((8 * a2) | 5u);
          v166 = (8 * a2) >> 14;
          v167 = (8 * a2) >> 7;
          v168 = (8 * a2) | 0x85;
          do
          {
            v169 = *(*v162 + 4 * v163);
            if (v164 > 0x7F)
            {
              if (v166)
              {
                v170 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v165, v4, a3);
              }

              else
              {
                *v4 = v168;
                v4[1] = v167;
                v170 = v4 + 2;
              }
            }

            else
            {
              *v4 = v165;
              v170 = v4 + 1;
            }

            *v170 = v169;
            v4 = v170 + 4;
            ++v163;
            v162 = *this;
          }

          while (v163 < *(*this + 8));
        }

        return v4;
      case 8:
        v119 = *this;
        if (*(*this + 8) >= 1)
        {
          v120 = 0;
          v121 = (8 * a2);
          v122 = (8 * a2) | 0x80;
          do
          {
            v123 = *(*v119 + v120);
            if (v121 > 0x7F)
            {
              if (v121 >> 14)
              {
                v124 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v121, v4, a3);
              }

              else
              {
                *v4 = v122;
                v4[1] = v121 >> 7;
                v124 = v4 + 2;
              }
            }

            else
            {
              *v4 = v121;
              v124 = v4 + 1;
            }

            *v124 = v123;
            v4 = v124 + 1;
            ++v120;
            v119 = *this;
          }

          while (v120 < *(*this + 8));
        }

        return v4;
      case 9:
        v184 = *this;
        if (*(*this + 8) >= 1)
        {
          v185 = 0;
          v186 = 8 * a2;
          v187 = ((8 * a2) | 2u);
          v188 = (8 * a2) >> 14;
          v189 = (8 * a2) >> 7;
          v190 = (8 * a2) | 0x82;
          do
          {
            v191 = *(*v184 + 8 * v185);
            if (v186 > 0x7F)
            {
              if (v188)
              {
                v192 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v187, v4, a3);
              }

              else
              {
                *v4 = v190;
                v4[1] = v189;
                v192 = v4 + 2;
              }
            }

            else
            {
              *v4 = v187;
              v192 = v4 + 1;
            }

            v193 = *(v191 + 23);
            if ((v193 & 0x8000000000000000) != 0)
            {
              v193 = *(v191 + 8);
            }

            if (v193 > 0x7F)
            {
              v194 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v193, v192, a3);
            }

            else
            {
              *v192 = v193;
              v194 = v192 + 1;
            }

            v195 = *(v191 + 23);
            if (v195 >= 0)
            {
              v196 = v191;
            }

            else
            {
              v196 = *v191;
            }

            if (v195 >= 0)
            {
              v197 = *(v191 + 23);
            }

            else
            {
              v197 = *(v191 + 8);
            }

            v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v196, v197, v194, a4);
            ++v185;
            v184 = *this;
          }

          while (v185 < *(*this + 8));
        }

        return v4;
      case 0xA:
        v85 = *this;
        if (*(*this + 8) >= 1)
        {
          v86 = 0;
          v87 = 8 * a2;
          v88 = ((8 * a2) | 3u);
          v244 = (8 * a2) | 0x83;
          v89 = ((8 * a2) | 4u);
          v90 = (8 * a2) >> 14;
          v91 = (8 * a2) >> 7;
          v92 = (8 * a2) | 0x84;
          do
          {
            v93 = *(*v85 + 8 * v86);
            if (v87 > 0x7F)
            {
              if (v90)
              {
                v94 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v88, v4, a3);
              }

              else
              {
                *v4 = v244;
                v4[1] = v91;
                v94 = v4 + 2;
              }
            }

            else
            {
              *v4 = v88;
              v94 = v4 + 1;
            }

            v95 = (*(*v93 + 88))(v93, v94, a3, a4);
            if (v87 > 0x7F)
            {
              if (v90)
              {
                v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v89, v95, a3);
              }

              else
              {
                *v95 = v92;
                v95[1] = v91;
                v4 = v95 + 2;
              }
            }

            else
            {
              *v95 = v89;
              v4 = v95 + 1;
            }

            ++v86;
            v85 = *this;
          }

          while (v86 < *(*this + 8));
        }

        return v4;
      case 0xB:
        v172 = *this;
        if (*(*this + 8) >= 1)
        {
          v173 = 0;
          v174 = 8 * a2;
          v175 = ((8 * a2) | 2u);
          v176 = (8 * a2) >> 14;
          v177 = (8 * a2) >> 7;
          v178 = (8 * a2) | 0x82;
          do
          {
            v179 = *(*v172 + 8 * v173);
            if (v174 > 0x7F)
            {
              if (v176)
              {
                v180 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v175, v4, a3);
              }

              else
              {
                *v4 = v178;
                v4[1] = v177;
                v180 = v4 + 2;
              }
            }

            else
            {
              *v4 = v175;
              v180 = v4 + 1;
            }

            v181 = (*(*v179 + 96))(v179);
            if (v181 > 0x7F)
            {
              v183 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v181, v180, v182);
            }

            else
            {
              *v180 = v181;
              v183 = v180 + 1;
            }

            v4 = (*(*v179 + 88))(v179, v183);
            ++v173;
            v172 = *this;
          }

          while (v173 < *(*this + 8));
        }

        return v4;
      case 0xC:
        v58 = *this;
        if (*(*this + 8) >= 1)
        {
          v59 = 0;
          v60 = 8 * a2;
          v61 = ((8 * a2) | 2u);
          v62 = (8 * a2) >> 14;
          v63 = (8 * a2) >> 7;
          v64 = (8 * a2) | 0x82;
          do
          {
            v65 = *(*v58 + 8 * v59);
            if (v60 > 0x7F)
            {
              if (v62)
              {
                v66 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v61, v4, a3);
              }

              else
              {
                *v4 = v64;
                v4[1] = v63;
                v66 = v4 + 2;
              }
            }

            else
            {
              *v4 = v61;
              v66 = v4 + 1;
            }

            v67 = *(v65 + 23);
            if ((v67 & 0x8000000000000000) != 0)
            {
              v67 = *(v65 + 8);
            }

            if (v67 > 0x7F)
            {
              v68 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v67, v66, a3);
            }

            else
            {
              *v66 = v67;
              v68 = v66 + 1;
            }

            v69 = *(v65 + 23);
            if (v69 >= 0)
            {
              v70 = v65;
            }

            else
            {
              v70 = *v65;
            }

            if (v69 >= 0)
            {
              v71 = *(v65 + 23);
            }

            else
            {
              v71 = *(v65 + 8);
            }

            v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v70, v71, v68, a4);
            ++v59;
            v58 = *this;
          }

          while (v59 < *(*this + 8));
        }

        return v4;
      case 0xD:
        v79 = *this;
        if (*(*this + 8) >= 1)
        {
          v80 = 0;
          v81 = (8 * a2);
          v82 = (8 * a2) | 0x80;
          do
          {
            v83 = *(*v79 + 4 * v80);
            if (v81 > 0x7F)
            {
              if (v81 >> 14)
              {
                v84 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v81, v4, a3);
              }

              else
              {
                *v4 = v82;
                v4[1] = v81 >> 7;
                v84 = v4 + 2;
              }
            }

            else
            {
              *v4 = v81;
              v84 = v4 + 1;
            }

            if (v83 > 0x7F)
            {
              v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v83, v84, a3);
            }

            else
            {
              *v84 = v83;
              v4 = v84 + 1;
            }

            ++v80;
            v79 = *this;
          }

          while (v80 < *(*this + 8));
        }

        return v4;
      case 0xE:
        v151 = *this;
        if (*(*this + 8) < 1)
        {
          return v4;
        }

        v152 = 0;
        v153 = (8 * a2);
        v154 = (8 * a2) | 0x80;
        break;
      case 0xF:
        v46 = *this;
        if (*(*this + 8) >= 1)
        {
          v47 = 0;
          v48 = 8 * a2;
          v49 = ((8 * a2) | 5u);
          v50 = (8 * a2) >> 14;
          v51 = (8 * a2) >> 7;
          v52 = (8 * a2) | 0x85;
          do
          {
            v53 = *(*v46 + 4 * v47);
            if (v48 > 0x7F)
            {
              if (v50)
              {
                v54 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v49, v4, a3);
              }

              else
              {
                *v4 = v52;
                v4[1] = v51;
                v54 = v4 + 2;
              }
            }

            else
            {
              *v4 = v49;
              v54 = v4 + 1;
            }

            *v54 = v53;
            v4 = v54 + 4;
            ++v47;
            v46 = *this;
          }

          while (v47 < *(*this + 8));
        }

        return v4;
      case 0x10:
        v102 = *this;
        if (*(*this + 8) >= 1)
        {
          v103 = 0;
          v104 = 8 * a2;
          v105 = ((8 * a2) | 1u);
          v106 = (8 * a2) | 0x81;
          v107 = (8 * a2) >> 14;
          v108 = (8 * a2) >> 7;
          do
          {
            v109 = *(*v102 + 8 * v103);
            if (v104 > 0x7F)
            {
              if (v107)
              {
                v110 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v105, v4, a3);
              }

              else
              {
                *v4 = v106;
                v4[1] = v108;
                v110 = v4 + 2;
              }
            }

            else
            {
              *v4 = v105;
              v110 = v4 + 1;
            }

            *v110 = v109;
            v4 = v110 + 8;
            ++v103;
            v102 = *this;
          }

          while (v103 < *(*this + 8));
        }

        return v4;
      case 0x11:
        v36 = *this;
        if (*(*this + 8) >= 1)
        {
          v37 = 0;
          v38 = (8 * a2);
          v39 = (8 * a2) | 0x80;
          do
          {
            v40 = *(*v36 + 4 * v37);
            if (v38 > 0x7F)
            {
              if (v38 >> 14)
              {
                v41 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v38, v4, a3);
              }

              else
              {
                *v4 = v39;
                v4[1] = v38 >> 7;
                v41 = v4 + 2;
              }
            }

            else
            {
              *v4 = v38;
              v41 = v4 + 1;
            }

            v42 = ((2 * v40) ^ (v40 >> 31));
            if (v42 > 0x7F)
            {
              v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v42, v41, a3);
            }

            else
            {
              *v41 = (2 * v40) ^ (v40 >> 31);
              v4 = v41 + 1;
            }

            ++v37;
            v36 = *this;
          }

          while (v37 < *(*this + 8));
        }

        return v4;
      case 0x12:
        v134 = *this;
        if (*(*this + 8) >= 1)
        {
          v135 = 0;
          v136 = (8 * a2);
          v137 = (8 * a2) | 0x80;
          do
          {
            v138 = *(*v134 + 8 * v135);
            if (v136 > 0x7F)
            {
              if (v136 >> 14)
              {
                v139 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v136, v4, a3);
              }

              else
              {
                *v4 = v137;
                v4[1] = v136 >> 7;
                v139 = v4 + 2;
              }
            }

            else
            {
              *v4 = v136;
              v139 = v4 + 1;
            }

            v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray((2 * v138) ^ (v138 >> 63), v139, a3);
            ++v135;
            v134 = *this;
          }

          while (v135 < *(*this + 8));
        }

        return v4;
      default:
        return v4;
    }

    while (1)
    {
      v155 = *(*v151 + 4 * v152);
      if (v153 > 0x7F)
      {
        if (v153 >> 14)
        {
          v156 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v153, v4, a3);
          if ((v155 & 0x80000000) != 0)
          {
LABEL_215:
            v157 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v155, v156, a3);
            goto LABEL_216;
          }
        }

        else
        {
          *v4 = v154;
          v4[1] = v153 >> 7;
          v156 = v4 + 2;
          if ((v155 & 0x80000000) != 0)
          {
            goto LABEL_215;
          }
        }
      }

      else
      {
        *v4 = v153;
        v156 = v4 + 1;
        if ((v155 & 0x80000000) != 0)
        {
          goto LABEL_215;
        }
      }

      if (v155 > 0x7F)
      {
        v157 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v155, v156, a3);
LABEL_216:
        v4 = v157;
        goto LABEL_217;
      }

      *v156 = v155;
      v4 = v156 + 1;
LABEL_217:
      ++v152;
      v151 = *this;
      if (v152 >= *(*this + 8))
      {
        return v4;
      }
    }
  }

  if (*(this + 10))
  {
    return v4;
  }

  switch(*(this + 8))
  {
    case 1:
    case 6:
    case 0x10:
      v18 = *this;
      v19 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        if (v19 >> 14)
        {
          v20 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * a2) | 1u), a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x81;
          a3[1] = v19 >> 7;
          v20 = a3 + 2;
        }
      }

      else
      {
        *a3 = (8 * a2) | 1;
        v20 = a3 + 1;
      }

      *v20 = v18;
      return v20 + 8;
    case 2:
    case 7:
    case 0xF:
      v21 = *this;
      v22 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        if (v22 >> 14)
        {
          v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * a2) | 5u), a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x85;
          a3[1] = v22 >> 7;
          v23 = a3 + 2;
        }
      }

      else
      {
        *a3 = (8 * a2) | 5;
        v23 = a3 + 1;
      }

      *v23 = v21;
      return v23 + 4;
    case 3:
    case 4:
      v30 = *this;
      v31 = (8 * a2);
      if (v31 > 0x7F)
      {
        if (v31 >> 14)
        {
          v32 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x80;
          a3[1] = v31 >> 7;
          v32 = a3 + 2;
        }
      }

      else
      {
        *a3 = 8 * a2;
        v32 = a3 + 1;
      }

      v238 = v30;
      goto LABEL_386;
    case 5:
    case 0xE:
      v33 = *this;
      v34 = (8 * a2);
      if (v34 > 0x7F)
      {
        if (v34 >> 14)
        {
          v35 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x80;
          a3[1] = v34 >> 7;
          v35 = a3 + 2;
        }
      }

      else
      {
        *a3 = 8 * a2;
        v35 = a3 + 1;
      }

      return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32SignExtendedToArray(v33, v35, a3);
    case 8:
      LOBYTE(v111) = *this;
      v171 = (8 * a2);
      if (v171 > 0x7F)
      {
        if (v171 >> 14)
        {
          v45 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v171, a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x80;
          a3[1] = v171 >> 7;
          v45 = a3 + 2;
        }
      }

      else
      {
        *a3 = 8 * a2;
        v45 = a3 + 1;
      }

      goto LABEL_398;
    case 9:
    case 0xC:
      v27 = *this;
      v28 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        if (v28 >> 14)
        {
          v29 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * a2) | 2u), a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x82;
          a3[1] = v28 >> 7;
          v29 = a3 + 2;
        }
      }

      else
      {
        *a3 = (8 * a2) | 2;
        v29 = a3 + 1;
      }

      v233 = *(v27 + 23);
      if ((v233 & 0x8000000000000000) != 0)
      {
        v233 = *(v27 + 8);
      }

      if (v233 > 0x7F)
      {
        v234 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v233, v29, a3);
      }

      else
      {
        *v29 = v233;
        v234 = v29 + 1;
      }

      v235 = *(v27 + 23);
      if (v235 >= 0)
      {
        v236 = v27;
      }

      else
      {
        v236 = *v27;
      }

      if (v235 >= 0)
      {
        v237 = *(v27 + 23);
      }

      else
      {
        v237 = *(v27 + 8);
      }

      return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v236, v237, v234, a4);
    case 0xA:
      v158 = *this;
      v159 = 8 * a2;
      v160 = (8 * a2) >> 14;
      if ((8 * a2) > 0x7F)
      {
        if (v160)
        {
          v161 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * a2) | 3u), a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x83;
          a3[1] = v159 >> 7;
          v161 = a3 + 2;
        }
      }

      else
      {
        *a3 = (8 * a2) | 3;
        v161 = a3 + 1;
      }

      v45 = (*(*v158 + 88))(v158, v161);
      v239 = (v159 | 4);
      if (v159 <= 0x7F)
      {
        goto LABEL_391;
      }

      if (v160)
      {
        goto LABEL_394;
      }

      *v45 = v159 | 0x84;
      v45[1] = v159 >> 7;
      return v45 + 2;
    case 0xB:
      v55 = *this;
      if ((*(this + 10) & 0x10) != 0)
      {
        v232 = *(*v55 + 112);

        return v232(v55, a2);
      }

      else
      {
        v56 = 8 * a2;
        if ((8 * a2) > 0x7F)
        {
          if (v56 >> 14)
          {
            v57 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * a2) | 2u), a3, a3);
          }

          else
          {
            *a3 = (8 * a2) | 0x82;
            a3[1] = v56 >> 7;
            v57 = a3 + 2;
          }
        }

        else
        {
          *a3 = (8 * a2) | 2;
          v57 = a3 + 1;
        }

        v240 = (*(*v55 + 96))(v55);
        if (v240 > 0x7F)
        {
          v242 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v240, v57, v241);
        }

        else
        {
          *v57 = v240;
          v242 = v57 + 1;
        }

        v243 = *(*v55 + 88);

        return v243(v55, v242);
      }

    case 0xD:
      v111 = *this;
      v112 = (8 * a2);
      if (v112 > 0x7F)
      {
        if (v112 >> 14)
        {
          v45 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v112, a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x80;
          a3[1] = v112 >> 7;
          v45 = a3 + 2;
        }
      }

      else
      {
        *a3 = 8 * a2;
        v45 = a3 + 1;
      }

      if (v111 <= 0x7F)
      {
LABEL_398:
        *v45 = v111;
        return v45 + 1;
      }

      v239 = v111;
LABEL_394:

      result = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v239, v45, a3);
      break;
    case 0x11:
      v43 = *this;
      v44 = (8 * a2);
      if (v44 > 0x7F)
      {
        if (v44 >> 14)
        {
          v45 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x80;
          a3[1] = v44 >> 7;
          v45 = a3 + 2;
        }
      }

      else
      {
        *a3 = 8 * a2;
        v45 = a3 + 1;
      }

      v239 = ((2 * v43) ^ (v43 >> 31));
      if (v239 > 0x7F)
      {
        goto LABEL_394;
      }

LABEL_391:
      *v45 = v239;
      return v45 + 1;
    case 0x12:
      v140 = *this;
      v141 = (8 * a2);
      if (v141 > 0x7F)
      {
        if (v141 >> 14)
        {
          v32 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v141, a3, a3);
        }

        else
        {
          *a3 = (8 * a2) | 0x80;
          a3[1] = v141 >> 7;
          v32 = a3 + 2;
        }
      }

      else
      {
        *a3 = 8 * a2;
        v32 = a3 + 1;
      }

      v238 = (2 * v140) ^ (v140 >> 63);
LABEL_386:

      return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v238, v32, a3);
    default:
      return v4;
  }

  return result;
}
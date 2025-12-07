uint64_t minijson::detail::parse_long(minijson::detail *this, const char *a2)
{
  if (!this)
  {
    goto LABEL_11;
  }

  v3 = *this;
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = a2;
  if ((v3 & 0x80000000) != 0)
  {
    if (__maskrune(v3, 0x4000uLL))
    {
      goto LABEL_11;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x4000) != 0)
  {
    goto LABEL_11;
  }

  v5 = *__error();
  *__error() = 0;
  __endptr = 0;
  v6 = strtol(this, &__endptr, v4);
  v7 = __error();
  v8 = *v7;
  *v7 = v5;
  if (*__endptr || v8 == 34 && (v6 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
  {
LABEL_11:
    exception = __cxa_allocate_exception(1uLL);
  }

  return v6;
}

double minijson::detail::parse_double(minijson::detail *this, const char *a2)
{
  if (!this)
  {
    goto LABEL_12;
  }

  v3 = *this;
  if (!*this)
  {
    goto LABEL_12;
  }

  v4 = 1;
  do
  {
    if ((v3 & 0x80) != 0 || (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x400) == 0)
    {
      v5 = v3 - 43;
      if (v5 > 0x3A || ((1 << v5) & 0x40000000400000DLL) == 0)
      {
        goto LABEL_12;
      }
    }

    v3 = *(this + v4++);
  }

  while (v3);
  v6 = *__error();
  *__error() = 0;
  v12 = 0;
  v7 = strtod(this, &v12);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (*v12 || v9 == 34)
  {
LABEL_12:
    exception = __cxa_allocate_exception(1uLL);
  }

  return v7;
}

void *minijson::detail::buffer_context_base::write(void *this, char a2)
{
  v2 = this[6];
  if (v2 >= this[5])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid write call, please file a bug report");
  }

  v3 = this[3];
  this[6] = v2 + 1;
  *(v3 + v2) = a2;
  return this;
}

const char *minijson::parse_error::what(minijson::parse_error *this)
{
  v1 = *(this + 4);
  if (v1 > 0xD)
  {
    return "";
  }

  else
  {
    return off_1E72BA028[v1];
  }
}

void minijson::parse_error::~parse_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

void applesauce::CF::details::to_description_json_style_helper(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  v93 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    goto LABEL_44;
  }

  v8 = CFGetTypeID(*a2);
  TypeID = CFBooleanGetTypeID();
  v10 = *a2;
  if (v8 == TypeID)
  {
    if (v10)
    {
      if (!applesauce::CF::convert_to<BOOL,0>(v10))
      {
        *(a1 + 23) = 5;
        strcpy(a1, "false");
        return;
      }

      *(a1 + 23) = 4;
      v11 = 1702195828;
      goto LABEL_53;
    }

    goto LABEL_152;
  }

  if (!v10)
  {
    goto LABEL_44;
  }

  v12 = CFGetTypeID(v10);
  v13 = CFNumberGetTypeID();
  v14 = *a2;
  if (v12 != v13)
  {
    if (v14)
    {
      v19 = CFGetTypeID(v14);
      if (v19 == CFStringGetTypeID())
      {
        *(&v90.__r_.__value_.__s + 23) = 1;
        LOWORD(v90.__r_.__value_.__l.__data_) = 34;
        if (!*a2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        applesauce::CF::convert_to<std::string,0>(&v88, *a2);
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v88;
        }

        else
        {
          v20 = v88.__r_.__value_.__r.__words[0];
        }

        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v88.__r_.__value_.__l.__size_;
        }

        applesauce::CF::details::make_json_string(&__p, v20, size);
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
          v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = __p.__r_.__value_.__l.__size_;
        }

        v24 = std::string::append(&v90, p_p, v23);
        v25 = *&v24->__r_.__value_.__l.__data_;
        valuePtr.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&valuePtr.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = std::string::append(&valuePtr, "", 1uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&v26->__r_.__value_.__l + 2);
        *a1 = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(valuePtr.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        v28 = v90.__r_.__value_.__r.__words[0];
        goto LABEL_102;
      }

      if (*a2)
      {
        v29 = CFGetTypeID(*a2);
        v30 = CFArrayGetTypeID();
        v31 = *a2;
        if (v29 == v30)
        {
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v92, a4);
          applesauce::CF::details::to_description_json_style_array(a1, v31, a3, v92);
          v32 = v92;
LABEL_108:
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v32);
          return;
        }

        if (v31)
        {
          v61 = CFGetTypeID(*a2);
          v62 = CFDictionaryGetTypeID();
          v31 = *a2;
          if (v61 == v62)
          {
            std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v91, a4);
            applesauce::CF::details::to_description_json_style_object(a1, v31, a3, v91);
            v32 = v91;
            goto LABEL_108;
          }
        }

LABEL_45:
        v33 = CFGetTypeID(v31);
        if (v33 == CFNullGetTypeID() || (v34 = *a2) == 0)
        {
          *(a1 + 23) = 4;
          v11 = 1819047278;
LABEL_53:
          *a1 = v11;
          *(a1 + 4) = 0;
          return;
        }

        if (!*(a4 + 24))
        {
          v77 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v77, "Error, not a json style CFDictionary");
          goto LABEL_153;
        }

        v83 = 0;
        CFRetain(v34);
        v35 = *(a4 + 24);
        cf = v34;
        if (!v35)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v35 + 48))(&valuePtr);
        CFRelease(cf);
        v36 = SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v36 = valuePtr.__r_.__value_.__l.__size_;
          if (valuePtr.__r_.__value_.__l.__size_)
          {
            p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
            goto LABEL_57;
          }
        }

        else if (*(&valuePtr.__r_.__value_.__s + 23))
        {
          p_valuePtr = &valuePtr;
LABEL_57:
          applesauce::CF::details::make_json_string(&v81, p_valuePtr, v36);
          v38 = std::string::insert(&v81, 0, "{ ", 3uLL);
          v39 = *&v38->__r_.__value_.__l.__data_;
          v88.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&v88.__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          v40 = std::string::append(&v88, " : ", 5uLL);
          v41 = *&v40->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          if ((v87 & 0x80u) == 0)
          {
            v42 = &v85;
          }

          else
          {
            v42 = v85;
          }

          if ((v87 & 0x80u) == 0)
          {
            v43 = v87;
          }

          else
          {
            v43 = v86;
          }

          applesauce::CF::details::make_json_string(v79, v42, v43);
          if ((v80 & 0x80u) == 0)
          {
            v44 = v79;
          }

          else
          {
            v44 = v79[0];
          }

          if ((v80 & 0x80u) == 0)
          {
            v45 = v80;
          }

          else
          {
            v45 = v79[1];
          }

          v46 = std::string::append(&__p, v44, v45);
          v47 = *&v46->__r_.__value_.__l.__data_;
          v90.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v90.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          v48 = std::string::append(&v90, " }", 3uLL);
          v49 = *&v48->__r_.__value_.__l.__data_;
          *(a1 + 16) = *(&v48->__r_.__value_.__l + 2);
          *a1 = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          if (v80 < 0)
          {
            operator delete(v79[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          v50 = v81.__r_.__value_.__r.__words[0];
LABEL_97:
          operator delete(v50);
LABEL_98:
          if (v87 < 0)
          {
            operator delete(v85);
          }

          if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return;
          }

          v28 = valuePtr.__r_.__value_.__r.__words[0];
LABEL_102:
          operator delete(v28);
          return;
        }

        *(&__p.__r_.__value_.__s + 23) = 1;
        LOWORD(__p.__r_.__value_.__l.__data_) = 34;
        if ((v87 & 0x80u) == 0)
        {
          v51 = &v85;
        }

        else
        {
          v51 = v85;
        }

        if ((v87 & 0x80u) == 0)
        {
          v52 = v87;
        }

        else
        {
          v52 = v86;
        }

        applesauce::CF::details::make_json_string(&v88, v51, v52);
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v88;
        }

        else
        {
          v53 = v88.__r_.__value_.__r.__words[0];
        }

        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v54 = v88.__r_.__value_.__l.__size_;
        }

        v55 = std::string::append(&__p, v53, v54);
        v56 = *&v55->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        v57 = std::string::append(&v90, "", 1uLL);
        v58 = *&v57->__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&v57->__r_.__value_.__l + 2);
        *a1 = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_98;
        }

        v50 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_97;
      }
    }

LABEL_44:
    v31 = 0;
    goto LABEL_45;
  }

  if (!v14)
  {
    goto LABEL_152;
  }

  v15 = applesauce::CF::convert_to<float,0>(v14);
  if (vabds_f32(floorf(v15), v15) >= 0.00000011921)
  {

    std::to_string(a1, v15);
    return;
  }

  v16 = *a2;
  if (!*a2)
  {
LABEL_152:
    v77 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v77);
LABEL_153:
  }

  v17 = CFNumberGetTypeID();
  if (v17 == CFGetTypeID(v16))
  {
    switch(CFNumberGetType(v16))
    {
      case kCFNumberSInt8Type:
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        Value = CFNumberGetValue(v16, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_125;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v69 = CFNumberGetValue(v16, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_120;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v68 = CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_143;
      case kCFNumberSInt64Type:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_134;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v64 = CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_112;
      case kCFNumberFloat64Type:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v67 = CFNumberGetValue(v16, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_122;
      case kCFNumberCharType:
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        Value = CFNumberGetValue(v16, kCFNumberCharType, &valuePtr);
LABEL_125:
        v73 = Value;
        LODWORD(v74) = Value != 0;
        if (Value)
        {
          v75 = valuePtr.__r_.__value_.__s.__data_[0];
        }

        else
        {
          v75 = 0;
        }

        if (valuePtr.__r_.__value_.__s.__data_[0] < 0)
        {
          v74 = v74;
        }

        else
        {
          v74 = 0;
        }

        if (!v73)
        {
          goto LABEL_148;
        }

        v60 = v75 | (v74 << 63 >> 63 << 8);
        goto LABEL_139;
      case kCFNumberShortType:
        LOWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v69 = CFNumberGetValue(v16, kCFNumberShortType, &valuePtr);
LABEL_120:
        v70 = v69;
        v71 = valuePtr.__r_.__value_.__s.__data_[0];
        data_low = SLOWORD(valuePtr.__r_.__value_.__l.__data_);
        goto LABEL_144;
      case kCFNumberIntType:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v68 = CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
LABEL_143:
        v70 = v68;
        v71 = valuePtr.__r_.__value_.__s.__data_[0];
        data_low = SLODWORD(valuePtr.__r_.__value_.__l.__data_);
LABEL_144:
        v76 = data_low & 0xFFFFFFFFFFFFFF00 | v71;
        if (v70)
        {
          v60 = v76;
        }

        else
        {
          v60 = 0;
        }

        if (!v70)
        {
          goto LABEL_148;
        }

        goto LABEL_139;
      case kCFNumberLongType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberLongType, &valuePtr);
        goto LABEL_134;
      case kCFNumberLongLongType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberLongLongType, &valuePtr);
        goto LABEL_134;
      case kCFNumberFloatType:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v64 = CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr);
LABEL_112:
        v65 = v64;
        v66 = *&valuePtr.__r_.__value_.__l.__data_;
        goto LABEL_135;
      case kCFNumberDoubleType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v67 = CFNumberGetValue(v16, kCFNumberDoubleType, &valuePtr);
        goto LABEL_122;
      case kCFNumberCFIndexType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_134;
      case kCFNumberNSIntegerType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberNSIntegerType, &valuePtr);
LABEL_134:
        v65 = v63;
        v66 = valuePtr.__r_.__value_.__r.__words[0];
        goto LABEL_135;
      case kCFNumberCGFloatType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v67 = CFNumberGetValue(v16, kCFNumberCGFloatType, &valuePtr);
LABEL_122:
        v65 = v67;
        v66 = *&valuePtr.__r_.__value_.__l.__data_;
LABEL_135:
        if (v65)
        {
          v60 = v66;
        }

        else
        {
          v60 = 0;
        }

        if (v65)
        {
          goto LABEL_139;
        }

        goto LABEL_148;
      default:
        goto LABEL_148;
    }
  }

  v59 = CFBooleanGetTypeID();
  if (v59 != CFGetTypeID(v16))
  {
LABEL_148:
    v77 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(v77);
    goto LABEL_153;
  }

  v60 = CFBooleanGetValue(v16);
LABEL_139:

  std::to_string(a1, v60);
}

uint64_t std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t applesauce::CF::convert_to<BOOL,0>(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
  }

  else
  {
    v4 = CFNumberGetTypeID();
    if (v4 != CFGetTypeID(a1) || (v3 = applesauce::CF::details::number_convert_as<BOOL>(a1), v3 <= 0xFFu))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::convert_error(exception);
    }
  }

  return v3 & 1;
}

float applesauce::CF::convert_to<float,0>(const __CFNumber *a1)
{
  v1 = applesauce::CF::convert_as<float,0>(a1);
  if (!(v1 >> 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return *&v1;
}

uint64_t applesauce::CF::details::make_json_string(void *a1, char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v6 = v14;
  *(&v14 + *(v14 - 24) + 8) = *(&v14 + *(v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v14 + *(v6 - 24) + 8) = *(&v14 + *(v6 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v7 = &v14 + *(v6 - 24);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((&v14 + *(v6 - 24)));
    v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(&v19);
  }

  *(v7 + 36) = 48;
  while (a3)
  {
    v9 = *a2;
    if (v9 <= 0xB)
    {
      switch(v9)
      {
        case 8u:
          v10 = "\\b";
          break;
        case 9u:
          v10 = "\\t";
          break;
        case 0xAu:
          v10 = "\\n";
          break;
        default:
          goto LABEL_17;
      }
    }

    else if (*a2 > 0x21u)
    {
      v10 = "\\\"";
      if (v9 != 92)
      {
        if (v9 != 34)
        {
LABEL_17:
          if (v9 == 127 || v9 - 1 <= 0x1E)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "\\u", 2);
            *(&v16[1].__locale_ + *(v14 - 24)) = 4;
            MEMORY[0x193ADEE60](&v14, *a2);
          }

          else
          {
            LOBYTE(v19.__locale_) = v9;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &v19, 1);
          }

          goto LABEL_23;
        }

        v10 = "\";
      }
    }

    else if (v9 == 12)
    {
      v10 = "\\f";
    }

    else
    {
      if (v9 != 13)
      {
        goto LABEL_17;
      }

      v10 = "\\r";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v10, 2);
LABEL_23:
    ++a2;
    --a3;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a1, v13);
  v13[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v11;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x193ADF120](&v18);
}

void sub_18F69A2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

std::string *applesauce::CF::details::to_description_json_style_array(std::string *this, CFArrayRef theArray, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  *(&this->__r_.__value_.__s + 23) = 1;
  LOWORD(this->__r_.__value_.__l.__data_) = 91;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v9 = CFArrayGetCount(theArray);
    if (Count)
    {
      if (v9)
      {
        v10 = 0;
        v11 = v9 - 1;
        v12 = 1;
        do
        {
          if ((v12 & 1) == 0)
          {
            std::string::append(this, ",", 1uLL);
            std::string::append(this, " ", 1uLL);
          }

          if (CFArrayGetCount(theArray) <= v10 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10), (v14 = ValueAtIndex) == 0))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not find item");
          }

          CFRetain(ValueAtIndex);
          v20 = v14;
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v23, a4);
          applesauce::CF::details::to_description_json_style_helper(__p, &v20, a3 + 2, v23);
          if ((v22 & 0x80u) == 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if ((v22 & 0x80u) == 0)
          {
            v16 = v22;
          }

          else
          {
            v16 = __p[1];
          }

          std::string::append(this, v15, v16);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }

          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v23);
          CFRelease(v14);
          if (Count - 1 == v10)
          {
            break;
          }

          v12 = 0;
        }

        while (v11 != v10++);
      }
    }
  }

  return std::string::append(this, "]", 1uLL);
}

void sub_18F69A588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void applesauce::CF::details::to_description_json_style_object(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = 1;
  *(a1 + 23) = 1;
  *a1 = 123;
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v64, a2);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v58, a2);
  v59 = (v61 - v60) >> 3;
  while (1)
  {
    if (v64 && v65 != (v67 - v66) >> 3)
    {
      v9 = v58;
      goto LABEL_8;
    }

    v9 = v58;
    if (!v58 || v59 == (v61 - v60) >> 3)
    {
      break;
    }

LABEL_8:
    if (v64 == v9 && v65 == v59)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      std::string::append(a1, ",", 1uLL);
      std::string::append(a1, " ", 1uLL);
    }

    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(cf, &v64);
    v10 = cf[0];
    v12 = 0;
    if (cf[0])
    {
      v11 = CFGetTypeID(cf[0]);
      if (v11 == CFStringGetTypeID())
      {
        v12 = 1;
      }
    }

    if (cf[1])
    {
      CFRelease(cf[1]);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v12)
    {
      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&v48, &v64);
      v13 = v48.__r_.__value_.__r.__words[0];
      if (!v48.__r_.__value_.__r.__words[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(&__p, v48.__r_.__value_.__l.__data_);
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

      applesauce::CF::details::make_json_string(&v56, p_p, size);
      v16 = std::string::insert(&v56, 0, "", 1uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v57, " : ", 4uLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v52 = v18->__r_.__value_.__r.__words[2];
      *cf = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (v52 >= 0)
      {
        v20 = cf;
      }

      else
      {
        v20 = cf[0];
      }

      if (v52 >= 0)
      {
        v21 = HIBYTE(v52);
      }

      else
      {
        v21 = cf[1];
      }

      std::string::append(a1, v20, v21);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(cf[0]);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v48.__r_.__value_.__l.__size_)
      {
        CFRelease(v48.__r_.__value_.__l.__size_);
      }

      CFRelease(v13);
      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&v57, &v64);
      std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v70, a4);
      applesauce::CF::details::to_description_json_style_helper(cf, &v57.__r_.__value_.__l.__size_, a3 + 2, v70);
      if (v52 >= 0)
      {
        v22 = cf;
      }

      else
      {
        v22 = cf[0];
      }

      if (v52 >= 0)
      {
        v23 = HIBYTE(v52);
      }

      else
      {
        v23 = cf[1];
      }

      std::string::append(a1, v22, v23);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(cf[0]);
      }

      std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v70);
      if (v57.__r_.__value_.__l.__size_)
      {
        CFRelease(v57.__r_.__value_.__l.__size_);
      }

      if (v57.__r_.__value_.__r.__words[0])
      {
        CFRelease(v57.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (!*(a4 + 24))
      {
        v44 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v44, "Error, not a json style CFDictionary");
      }

      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&v57, &v64);
      v24 = v57.__r_.__value_.__r.__words[0];
      if (v57.__r_.__value_.__r.__words[0])
      {
        CFRetain(v57.__r_.__value_.__l.__data_);
      }

      v49 = 0;
      v50 = v24;
      v25 = *(a4 + 24);
      if (!v25)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v25 + 48))(cf);
      if (v49)
      {
        CFRelease(v49);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      if (v57.__r_.__value_.__l.__size_)
      {
        CFRelease(v57.__r_.__value_.__l.__size_);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      v26 = SHIBYTE(v52);
      if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
      {
        v26 = cf[1];
        if (!cf[1])
        {
LABEL_118:
          v43 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v43, "Error, not a json style CFDictionary");
        }

        v27 = cf[0];
      }

      else
      {
        if (!HIBYTE(v52))
        {
          goto LABEL_118;
        }

        v27 = cf;
      }

      applesauce::CF::details::make_json_string(&v47, v27, v26);
      v28 = std::string::insert(&v47, 0, "", 1uLL);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v48, " : ", 5uLL);
      v31 = *&v30->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if ((v54 & 0x80u) == 0)
      {
        v32 = v53;
      }

      else
      {
        v32 = v53[0];
      }

      if ((v54 & 0x80u) == 0)
      {
        v33 = v54;
      }

      else
      {
        v33 = v53[1];
      }

      applesauce::CF::details::make_json_string(v45, v32, v33);
      if ((v46 & 0x80u) == 0)
      {
        v34 = v45;
      }

      else
      {
        v34 = v45[0];
      }

      if ((v46 & 0x80u) == 0)
      {
        v35 = v46;
      }

      else
      {
        v35 = v45[1];
      }

      v36 = std::string::append(&__p, v34, v35);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v56, "", 1uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v57;
      }

      else
      {
        v40 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v57.__r_.__value_.__l.__size_;
      }

      std::string::append(a1, v40, v41);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(cf[0]);
      }
    }

    v8 = 0;
    ++v65;
  }

  std::string::append(a1, "}", 1uLL);
  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_18F69ACA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v64);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(&a63);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator((v65 - 192));
  if (*(v63 + 23) < 0)
  {
    operator delete(*v63);
  }

  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(void *a1, void *a2)
{
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&cf, a2);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = v3;
  v4 = v6;
  if (!v6)
  {
    a1[1] = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  CFRetain(v6);
  a1[1] = v4;
  CFRelease(v4);
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::iterator_proxy::~iterator_proxy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(void *result, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "DictionaryRef_iterator iterator out of range.");
  }

  v5 = result;
  v6 = *(v4 + 8 * v2);
  if (v6)
  {
    result = CFRetain(*(v4 + 8 * v2));
    v2 = a2[1];
  }

  v7 = a2[5];
  v8 = *(v7 + 8 * v2);
  if (v8)
  {
    result = CFRetain(*(v7 + 8 * v2));
  }

  *v5 = v6;
  v5[1] = v8;
  return result;
}

void std::vector<void const*>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x193ADF120](a1 + 128);
  return a1;
}

{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

const __CFNumber *applesauce::CF::convert_as<float,0>(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_24;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_19;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_11;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_24:
          v6 = SLOBYTE(valuePtr);
          goto LABEL_25;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_19:
          v6 = SLOWORD(valuePtr);
LABEL_25:
          v7 = v6;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = SLODWORD(valuePtr);
          goto LABEL_30;
        case kCFNumberLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_11:
          v5 = LODWORD(valuePtr);
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_21;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = *&valuePtr;
          goto LABEL_30;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_21:
          v7 = valuePtr;
LABEL_30:
          v5 = LODWORD(v7);
LABEL_31:
          v8 = v5 | 0x100000000;
          if (!Value)
          {
            v8 = 0;
          }

          v9 = v8 & 0x100000000;
          break;
        default:
          v9 = 0;
          LODWORD(v8) = 0;
          break;
      }

      return (v8 | v9);
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return (COERCE_UNSIGNED_INT(CFBooleanGetValue(v1)) | 0x100000000);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

void std::__function::__func<VorbisComment::SetLoudnessInfoDictionary(CACFDictionary *)::$_0,std::allocator<VorbisComment::SetLoudnessInfoDictionary(CACFDictionary *)::$_0>,std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::operator()(const void **a1@<X1>, const void **a2@<X2>, std::string *a3@<X8>)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  if (!v4)
  {
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Error, neither key nor value is valid in JSON handler function");
    }

    v7 = CFGetTypeID(v5);
    std::to_string(&v9, v7);
    std::string::basic_string[abi:ne200100]<0>(a3, "Unsupported CoreFoundation type");
    a3[1] = v9;
LABEL_6:
    CFRelease(v5);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  v6 = CFGetTypeID(v4);
  std::to_string(&v9, v6);
  std::string::basic_string[abi:ne200100]<0>(a3, "bad key");
  a3[1] = v9;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  CFRelease(v4);
}

void sub_18F69BB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  applesauce::CF::TypeRef::~TypeRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t VorbisComment::GetWAVEChannelMask(VorbisComment *this, VorbisComment *a2, _DWORD *a3)
{
  v3 = 2003334207;
  if (this != a2)
  {
    v6 = this;
    while (1)
    {
      v7 = *v6;
      v23.length = CFStringGetLength(*v6);
      v23.location = 0;
      if (CFStringCompareWithOptions(v7, @"WAVEFORMATEXTENSIBLE_CHANNEL_MASK", v23, 1uLL) == kCFCompareEqualTo)
      {
        break;
      }

      v6 = (v6 + 16);
      if (v6 == a2)
      {
        return v3;
      }
    }

    v8 = *(v6 + 1);
    v22 = 0;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
    *(&v17 + *(v17 - 24) + 8) = *(&v17 + *(v17 - 24) + 8) & 0xFFFFFFB5 | 8;
    applesauce::CF::convert_to<std::string,0>(__p, v8);
    if ((v15 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v9, v10);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    MEMORY[0x193ADEDF0](v16, &v22);
    v11 = v22;
    v16[0] = *MEMORY[0x1E69E54D8];
    v12 = *(MEMORY[0x1E69E54D8] + 72);
    *(v16 + *(v16[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v17 = v12;
    v18 = MEMORY[0x1E69E5548] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x193ADF120](&v21);
    v3 = 0;
    *a3 = v11;
  }

  return v3;
}

uint64_t VorbisComment::SetWAVEChannelMask(const void **this, uint64_t a2)
{
  if (__PAIR128__(this[2], 0) == *this)
  {
    VorbisComment::SetVendorString(this, @"Apple");
  }

  VorbisComment::RemoveUserCommentsWithFieldName(this, @"WAVEFORMATEXTENSIBLE_CHANNEL_MASK");
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  *(&v21 + *(v21 - 24) + 8) = *(&v21 + *(v21 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x193ADEE60](&v21, a2);
  std::string::basic_string[abi:ne200100]<0>(v18, "0x");
  applesauce::CF::StringRef::from_get(&v17, @"WAVEFORMATEXTENSIBLE_CHANNEL_MASK");
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v13, v20);
  if ((v19 & 0x80u) == 0)
  {
    v4 = v18;
  }

  else
  {
    v4 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v5 = v19;
  }

  else
  {
    v5 = v18[1];
  }

  v6 = std::string::insert(&v13, 0, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v15 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v8)
  {
    if (v15 >= 0)
    {
      v9 = HIBYTE(v15);
    }

    else
    {
      v9 = __p[1];
    }

    cf = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    cf = 0;
  }

  VorbisComment::AddUserComment(this, v17, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v20[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v21 = v11;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x193ADF120](&v25);
}

void sub_18F69C1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, const void *a23, const void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a23);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  applesauce::CF::StringRef::~StringRef(&a24);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a31);
  _Unwind_Resume(a1);
}

CFCharacterSetRef CreateEqualCharSet(void *a1)
{
  result = CFCharacterSetCreateWithCharactersInString(0, @"=");
  sEqualCharSet = result;
  return result;
}

double DSPGraph::VolumeCurveBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.29504994e171;
  *a1 = xmmword_18F901760;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::VolumeCurveBox::getParameterInfo(DSPGraph::VolumeCurveBox *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = 0;
    v6 = -10866;
LABEL_6:
    *a4 = v6;
    goto LABEL_7;
  }

  DSPGraph::VolumeCurveBox::parameterInfos(this);
  if (0x4EC4EC4EC4EC4EC5 * ((qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3) <= a3)
  {
    v5 = 0;
    v6 = -10878;
    goto LABEL_6;
  }

  DSPGraph::VolumeCurveBox::parameterInfos(v8);
  v9 = DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos + 104 * a3;
  v10 = *(v9 + 80);
  *(a4 + 64) = *(v9 + 64);
  *(a4 + 80) = v10;
  *(a4 + 96) = *(v9 + 96);
  v11 = *(v9 + 16);
  *a4 = *v9;
  *(a4 + 16) = v11;
  v12 = *(v9 + 48);
  *(a4 + 32) = *(v9 + 32);
  *(a4 + 48) = v12;
  v5 = 1;
LABEL_7:
  *(a4 + 104) = v5;
}

void sub_18F69C398(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = -1;
  *(v1 + 104) = 0;
  __cxa_end_catch();
  JUMPOUT(0x18F69C38CLL);
}

void DSPGraph::VolumeCurveBox::parameterInfos(DSPGraph::VolumeCurveBox *this)
{
  {
    if (v1)
    {
      DSPGraph::VolumeCurveBox::ParameterInfos::ParameterInfos(v1);
    }
  }
}

void DSPGraph::VolumeCurveBox::ParameterInfos::ParameterInfos(DSPGraph::VolumeCurveBox::ParameterInfos *this)
{
  v8 = *MEMORY[0x1E69E9840];
  qword_1EAD30D00 = 0;
  qword_1EAD30D08 = 0;
  DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos = 0;
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  LODWORD(v6) = 1;
  DWORD2(v6) = 1097859072;
  strlcpy(&v1, "Transfer function", 0x34uLL);
  *(&v5 + 1) = @"Transfer function";
  LODWORD(v7) = v7 | 0xC8000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v1);
  v7 = 0;
  v5 = 0u;
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  LODWORD(v6) = 13;
  *(&v6 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  HIDWORD(v6) = -1032847360;
  strlcpy(&v1, "Minimum volume", 0x34uLL);
  *(&v5 + 1) = @"Minimum volume";
  LODWORD(v7) = v7 | 0xC8000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v1);
  v7 = 0;
  v5 = 0u;
  HIDWORD(v6) = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  LODWORD(v6) = 13;
  *(&v6 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  strlcpy(&v1, "Maximum volume", 0x34uLL);
  *(&v5 + 1) = @"Maximum volume";
  LODWORD(v7) = v7 | 0xC8000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v1);
  v7 = 0;
  v5 = 0u;
  *&v6 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  *(&v6 + 1) = 0x3E8000003F800000;
  strlcpy(&v1, "Raw slider value", 0x34uLL);
  *(&v5 + 1) = @"Raw slider value";
  LODWORD(v7) = v7 | 0xC8000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v1);
  v7 = 0;
  v5 = 0u;
  *&v6 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  *(&v6 + 1) = 0x3E8000003F800000;
  strlcpy(&v1, "Mapped slider value", 0x34uLL);
  *(&v5 + 1) = @"Mapped slider value";
  LODWORD(v7) = v7 | 0x48000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v1);
  v7 = 0;
  v5 = 0u;
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  LODWORD(v6) = 13;
  *(&v6 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  HIDWORD(v6) = -1036779520;
  strlcpy(&v1, "Decibel gain", 0x34uLL);
  *(&v5 + 1) = @"Decibel gain";
  LODWORD(v7) = v7 | 0x48000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v1);
}

void sub_18F69C6C0(_Unwind_Exception *exception_object)
{
  if (DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos)
  {
    qword_1EAD30D00 = DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    operator delete(DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](__int128 *a1)
{
  v1 = qword_1EAD30D00;
  if (qword_1EAD30D00 >= qword_1EAD30D08)
  {
    v8 = DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    v9 = qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x276276276276276)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    if (0x9D89D89D89D89D8ALL * ((qword_1EAD30D08 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3) > v11)
    {
      v11 = 0x9D89D89D89D89D8ALL * ((qword_1EAD30D08 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((qword_1EAD30D08 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v12 = 0x276276276276276;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0x276276276276276)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = a1[5];
    v14 = 8 * ((qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    *(v14 + 64) = a1[4];
    *(v14 + 80) = v13;
    *(v14 + 96) = *(a1 + 12);
    v15 = a1[1];
    *v14 = *a1;
    *(v14 + 16) = v15;
    v16 = a1[3];
    *(v14 + 32) = a1[2];
    *(v14 + 48) = v16;
    v7 = 104 * v10 + 104;
    v17 = v14 - v9;
    memcpy((v14 - v9), v8, v9);
    DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos = v17;
    qword_1EAD30D00 = v7;
    qword_1EAD30D08 = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v2 = *a1;
    v3 = a1[2];
    *(qword_1EAD30D00 + 16) = a1[1];
    *(v1 + 32) = v3;
    *v1 = v2;
    v4 = a1[3];
    v5 = a1[4];
    v6 = a1[5];
    *(v1 + 96) = *(a1 + 12);
    *(v1 + 64) = v5;
    *(v1 + 80) = v6;
    *(v1 + 48) = v4;
    v7 = v1 + 104;
  }

  qword_1EAD30D00 = v7;
}

DSPGraph::VolumeCurveBox *DSPGraph::VolumeCurveBox::getParameterList@<X0>(DSPGraph::VolumeCurveBox *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    DSPGraph::VolumeCurveBox::parameterInfos(this);
    this = std::vector<unsigned int>::vector[abi:ne200100](a3, 0x4EC4EC4EC4EC4EC5 * ((qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3));
    v5 = *a3;
    v4 = a3[1];
    if (*a3 != v4)
    {
      v6 = 0;
      v7 = (v4 - v5 - 4) >> 2;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v10 = (v5 + 8);
      do
      {
        v11 = vdupq_n_s64(v6);
        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_18F9016C0)));
        if (vuzp1_s16(v12, *v8.i8).u8[0])
        {
          *(v10 - 2) = v6;
        }

        if (vuzp1_s16(v12, *&v8).i8[2])
        {
          *(v10 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_18F9016B0)))).i32[1])
        {
          *v10 = v6 + 2;
          v10[1] = v6 + 3;
        }

        v6 += 4;
        v10 += 4;
      }

      while (v9 != v6);
    }
  }

  return this;
}

uint64_t *std::vector<unsigned int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_18F69C9F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float DSPGraph::VolumeCurveBox::getParameter(DSPGraph::VolumeCurveBox *this, int a2, int a3)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v4, "");
    DSPGraph::ThrowException(-10878, &v6, 256, &v5, &v4);
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return *(this + 198);
      case 4:
        return *(this + 199);
      case 5:
        return *(this + 200);
      default:
        goto LABEL_17;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        return *(this + 197);
      }

LABEL_17:
      std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v5, "getParameter");
      std::string::basic_string[abi:ne200100]<0>(&v4, "");
      DSPGraph::ThrowException(-10878, &v6, 282, &v5, &v4);
    }

    return *(this + 196);
  }

  else
  {
    return *(this + 193);
  }
}

void sub_18F69CB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::VolumeCurveBox::setParameter(DSPGraph::VolumeCurveBox *this, int a2, int a3, float a4)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v19, "");
    DSPGraph::ThrowException(-10878, &v21, 208, &v20, &v19);
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = *(this + 197);
        if (v6 < a4)
        {
          std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
          std::string::basic_string[abi:ne200100]<0>(&v19, "MinVolume must be less than MaxVolume");
          DSPGraph::ThrowException(-10878, &v21, 222, &v20, &v19);
        }

        *(this + 196) = a4;
        v7 = *(this + 198);
        if (v7 < 0.0)
        {
          v7 = 0.0;
        }

        if (v7 > 1.0)
        {
          v7 = 1.0;
        }

        v8 = powf(v7, *(this + 194) / *(this + 195));
        *(this + 199) = v8;
        v9 = a4 + (v8 * (v6 - a4));
        goto LABEL_31;
      }

LABEL_33:
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
      std::string::basic_string[abi:ne200100]<0>(&v19, "");
      DSPGraph::ThrowException(-10878, &v21, 246, &v20, &v19);
    }

    v13 = a4;
    *(this + 193) = a4;
    v10 = 1.0;
    v11 = 2.0;
    v12 = 1.0;
    if (v13 <= 0xF)
    {
      v11 = flt_18F9020C4[v13];
      v12 = flt_18F902104[v13];
    }

    *(this + 194) = v11;
    *(this + 195) = v12;
    v14 = *(this + 198);
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    if (v14 <= 1.0)
    {
      v10 = v14;
    }

LABEL_24:
    v15 = powf(v10, v11 / v12);
    *(this + 199) = v15;
    v9 = *(this + 196) + (v15 * (*(this + 197) - *(this + 196)));
    goto LABEL_31;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      goto LABEL_33;
    }

    v10 = 0.0;
    if (a4 >= 0.0)
    {
      v10 = a4;
    }

    if (v10 > 1.0)
    {
      v10 = 1.0;
    }

    *(this + 198) = v10;
    v11 = *(this + 194);
    v12 = *(this + 195);
    goto LABEL_24;
  }

  v16 = *(this + 196);
  if (v16 > a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v19, "MaxVolume must be greater than MinVolume");
    DSPGraph::ThrowException(-10878, &v21, 231, &v20, &v19);
  }

  *(this + 197) = a4;
  v17 = *(this + 198);
  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  v18 = powf(v17, *(this + 194) / *(this + 195));
  *(this + 199) = v18;
  v9 = v16 + (v18 * (a4 - v16));
LABEL_31:
  *(this + 200) = v9;
}

void sub_18F69CE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::VolumeCurveBox::~VolumeCurveBox(DSPGraph::VolumeCurveBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

uint64_t DSPGraph::streamToString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v9);
  if ((v16 & 0x10) != 0)
  {
    v6 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v6 = v12;
    }

    locale = v11[4].__locale_;
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_15;
    }

    locale = v11[1].__locale_;
    v6 = v11[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, locale, v5);
  }

LABEL_15:
  a2[v5] = 0;
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v17);
}

void sub_18F69D150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va);
  MEMORY[0x193ADF120](va1);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::MakeFloatNoninterleavedFormat@<X0>(uint64_t this@<X0>, double a2@<D0>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  *(a4 + 16) = a3 >> 3;
  *(a4 + 20) = 1;
  *a4 = a2;
  *(a4 + 8) = 0x296C70636DLL;
  *(a4 + 24) = a3 >> 3;
  *(a4 + 28) = this;
  *(a4 + 32) = a3;
  *(a4 + 36) = 0;
  return this;
}

uint64_t DSPGraph::MakeFloatInterleavedFormat@<X0>(uint64_t this@<X0>, double a2@<D0>, int a3@<W1>, uint64_t a4@<X8>)
{
  v4 = (a3 * this) >> 3;
  *(a4 + 16) = v4;
  *(a4 + 20) = 1;
  *a4 = a2;
  *(a4 + 8) = 0x96C70636DLL;
  *(a4 + 24) = v4;
  *(a4 + 28) = this;
  *(a4 + 32) = a3;
  *(a4 + 36) = 0;
  return this;
}

uint64_t DSPGraph::MakeCBRFormat@<X0>(uint64_t this@<X0>, double a2@<D0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, int a6@<W4>, uint64_t a7@<X8>)
{
  *a7 = a2;
  *(a7 + 8) = this;
  *(a7 + 12) = a6;
  *(a7 + 16) = a5;
  *(a7 + 20) = a4;
  *(a7 + 24) = 0;
  *(a7 + 28) = a3;
  *(a7 + 32) = 0;
  return this;
}

void DSPGraph::printi(void *a1, unsigned int a2, char *__s, ...)
{
  v4 = a2;
  if (a2 >= 0x40)
  {
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "                                                                ", 64);
      v4 -= 64;
    }

    while (v4 > 0x3F);
  }

  if (v4)
  {
    v6 = &asc_18F94CCA4[-v4];
    v7 = strlen(v6 + 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, (v6 + 64), v7);
  }

  strlen(__s);
  operator new[]();
}

DSPGraph *DSPGraph::OSTypeToStr(DSPGraph *this, char *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = &a2[this];
    v14 = bswap32(a3);
    if (a2 <= 0)
    {
      v12 = v4 - 1;
    }

    else
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E9830];
      v7 = this;
      do
      {
        v8 = *(&v14 + v5);
        if ((v8 & 0x80000000) != 0)
        {
          v9 = __maskrune(*(&v14 + v5), 0x40000uLL);
        }

        else
        {
          v9 = *(v6 + 4 * v8 + 60) & 0x40000;
        }

        if (v8 == 92 || v9 == 0)
        {
          v11 = snprintf(v7, v4 - v7, "\\x%02x", v8);
          v7 += v11 & ~(v11 >> 31);
        }

        else
        {
          *v7++ = v8;
        }

        if (v5 > 2)
        {
          break;
        }

        ++v5;
      }

      while (v7 < v4);
      if (v7 >= v4)
      {
        v12 = v4 - 1;
      }

      else
      {
        v12 = v7;
      }
    }

    *v12 = 0;
  }

  return this;
}

uint64_t DSPGraph::StrToOSType(DSPGraph *this, char *a2, unsigned int *a3)
{
  v5 = 0;
  v6 = MEMORY[0x1E69E9830];
  v16 = 0;
  v7 = this;
  while (1)
  {
    v8 = *v7;
    if (v8 == 92)
    {
      break;
    }

    if (!*v7)
    {
      v9 = v7;
LABEL_18:
      *a2 = bswap32(v16);
      return v9 - this;
    }

    v9 = (v7 + 1);
LABEL_14:
    *(&v16 + v5++) = v8;
    v7 = v9;
    if (v5 == 4)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 1) == 120 && strlen(v7 + 2) >= 2)
  {
    v10 = 0;
    v9 = (v7 + 4);
    v11 = 2;
    while (1)
    {
      v12 = v10;
      v13 = __tolower(*(v7 + v11));
      if (v13 > 0xFF || (*(v6 + 4 * v13 + 60) & 0x400) == 0 && v13 - 97 >= 6)
      {
        break;
      }

      v10 = 1;
      v11 = 3;
      if (v12)
      {
        v15 = 0;
        if (sscanf(v7 + 2, "%02X", &v15) != 1)
        {
          return 0;
        }

        LOBYTE(v8) = v15;
        if (v15 >= 0x100)
        {
          return 0;
        }

        goto LABEL_14;
      }
    }
  }

  return 0;
}

void *DSPGraph::print4cc(void *a1, unsigned int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *__s = 0;
  v6 = 0;
  DSPGraph::OSTypeToStr(__s, 0x10, a2);
  v3 = strlen(__s);
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v3);
}

void *DSPGraph::printACD(void *a1, unsigned int *a2, int a3)
{
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " (", 2);
  DSPGraph::print4cc(v6, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  DSPGraph::print4cc(v7, a2[1]);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  DSPGraph::print4cc(v8, a2[2]);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ") ", 3);
  if (a3)
  {
    v10 = 10;
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v10, 1);
  }

  return result;
}

const char *DSPGraph::errstring(DSPGraph *this)
{
  if (this <= 1718775072)
  {
    if (this > 1667788320)
    {
      if (this <= 1718188064)
      {
        if (this == 1667788321)
        {
          return "channel counts error";
        }

        if (this == 1701602593)
        {
          return "element count error";
        }
      }

      else
      {
        switch(this)
        {
          case 0x66697821:
            return "requires fixed block size";
          case 0x666D6321:
            return "format conflict";
          case 0x666D743F:
            return "format not supported";
        }
      }
    }

    else if (this <= 1633906208)
    {
      if (this == 561211770)
      {
        return "wrong property size";
      }

      if (this == 1633903905)
      {
        return "already connected";
      }
    }

    else
    {
      switch(this)
      {
        case 0x61636E21:
          return "AudioComponent not found";
        case 0x616E7321:
          return "AudioUnit not supported";
        case 0x63666721:
          return "configured state error";
      }
    }
  }

  else if (this <= 1869640254)
  {
    if (this <= 1768975392)
    {
      if (this == 1718775073)
      {
        return "frame count error";
      }

      if (this == 1768843553)
      {
        return "initialized state error";
      }
    }

    else
    {
      switch(this)
      {
        case 0x69706C21:
          return "cannot process in place";
        case 0x6D706C21:
          return "must process in place";
        case 0x6E666421:
          return "not found";
      }
    }
  }

  else if (this > 1953460256)
  {
    switch(this)
    {
      case 0x746F7021:
        return "illegal topology";
      case 0x75637021:
        return "unconnected property";
      case 0x756E6321:
        return "unconnected port";
    }
  }

  else
  {
    switch(this)
    {
      case 0x6F70723F:
        return "operation not supported";
      case 0x70727321:
        return "parse failed";
      case 0x726E6721:
        return "range error";
    }
  }

  return "";
}

double DSPGraph::decompileFormat@<D0>(DSPGraph *this@<X0>, const AudioStreamBasicDescription *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v40[2] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(this + 2);
  if (v6 == 1819304813)
  {
    if ((~*(this + 3) & 0x21) == 0 && *(this + 8) == 32)
    {
      std::to_string(&v37, *this);
      v22 = std::string::insert(&v37, 0, "(", 1uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v38, " ", 1uLL);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, *(this + 7));
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

      v28 = std::string::append(&v39, p_p, size);
      v29 = v28->__r_.__value_.__r.__words[0];
      v40[0] = v28->__r_.__value_.__l.__size_;
      *(v40 + 7) = *(&v28->__r_.__value_.__r.__words[1] + 7);
      v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      v31 = v40[0];
      *a3 = v29;
      *(a3 + 8) = v31;
      *(a3 + 15) = *(v40 + 7);
      *(a3 + 23) = v30;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (v3 >= 2)
      {
        std::to_string(&v38, v3);
        v32 = std::string::insert(&v38, 0, " ", 1uLL);
        v33 = *&v32->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v39;
        }

        else
        {
          v34 = v39.__r_.__value_.__r.__words[0];
        }

        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = v39.__r_.__value_.__l.__size_;
        }

        std::string::append(a3, v34, v35);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_29;
    }
  }

  else if (v6 == 1718773105)
  {
    std::to_string(&v37, *this);
    v7 = std::string::insert(&v37, 0, "(freq ", 6uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v38, " ", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, *(this + 7));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v39, v11, v12);
    v14 = v13->__r_.__value_.__r.__words[0];
    v40[0] = v13->__r_.__value_.__l.__size_;
    *(v40 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v16 = v40[0];
    *a3 = v14;
    *(a3 + 8) = v16;
    *(a3 + 15) = *(v40 + 7);
    *(a3 + 23) = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    std::to_string(&v38, v3);
    v17 = std::string::insert(&v38, 0, " ", 1uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v39;
    }

    else
    {
      v19 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v39.__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v19, v20);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

LABEL_29:
    std::string::append(a3, ")", 1uLL);
    return result;
  }

  DSPGraph::ToText(&v39, this);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  result = *&v39.__r_.__value_.__l.__data_;
  *a3 = v39;
  return result;
}

void sub_18F69DEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::ToText(std::string *__return_ptr a1@<X8>, DSPGraph *this@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v4 = *(this + 2);
  if (v4 != 1819304813)
  {
    v11 = 24;
    v12 = MEMORY[0x1E69E9830];
    while (1)
    {
      v13 = *(this + 2);
      v14 = v13 >> v11;
      v15 = (v13 >> v11);
      if (v15 < 0x80)
      {
        v16 = *(v12 + 4 * (v13 >> v11) + 60);
        if ((v16 & 0x500) != 0 || (v16 & 0x2000) != 0)
        {
          goto LABEL_28;
        }
      }

      else if (__maskrune((v13 >> v11), 0x500uLL) || __maskrune(v15, 0x2000uLL))
      {
        goto LABEL_28;
      }

      std::string::append(a1, "\\x", 2uLL);
      std::string::push_back(a1, a0123456789abcd[v14 >> 4]);
      LOBYTE(v14) = a0123456789abcd[v14 & 0xF];
LABEL_28:
      std::string::push_back(a1, v14);
      v11 -= 8;
      if (v11 == -8)
      {
        goto LABEL_29;
      }
    }
  }

  v5 = *(this + 3);
  if ((v5 & 2) != 0)
  {
    std::string::append(a1, "BE", 2uLL);
    v5 = *(this + 3);
  }

  v6 = "F";
  if ((v5 & 1) == 0)
  {
    v6 = "UI";
  }

  if ((v5 & 4) != 0)
  {
    v7 = "I";
  }

  else
  {
    v7 = v6;
  }

  if ((v5 & 5) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  std::string::append(a1, v7, v8);
  std::to_string(&v38, *(this + 8));
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v38;
  }

  else
  {
    v9 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v38.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v9, size);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

LABEL_29:
  std::string::push_back(a1, 64);
  std::to_string(&v38, *this);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v38;
  }

  else
  {
    v17 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v38.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v17, v18);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v4 != 1819304813 && *(this + 3))
  {
    std::string::append(a1, "/", 1uLL);
    v19 = *(this + 3);
    if (v19)
    {
      memset(&v38, 0, sizeof(v38));
      do
      {
        std::string::push_back(&v38, a0123456789abcd[v19 & 0xF]);
        v20 = v19 >= 0x10;
        v19 >>= 4;
      }

      while (v20);
      v21 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      v22 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      v24 = v38.__r_.__value_.__l.__size_;
      v23 = v38.__r_.__value_.__r.__words[0];
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v38;
      }

      else
      {
        v25 = v38.__r_.__value_.__r.__words[0];
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v38.__r_.__value_.__l.__size_;
      }

      v27 = (v25 + v26 - 1);
      if (v26)
      {
        v28 = v27 > v25;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v29 = &v25->__r_.__value_.__s.__data_[1];
        do
        {
          v30 = *(v29 - 1);
          *(v29 - 1) = v27->__r_.__value_.__s.__data_[0];
          v27->__r_.__value_.__s.__data_[0] = v30;
          v27 = (v27 - 1);
          v20 = v29++ >= v27;
        }

        while (!v20);
        v21 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
        v24 = v38.__r_.__value_.__l.__size_;
        v23 = v38.__r_.__value_.__r.__words[0];
        v22 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      if (v22 >= 0)
      {
        v31 = &v38;
      }

      else
      {
        v31 = v23;
      }

      if (v22 >= 0)
      {
        v32 = v21;
      }

      else
      {
        v32 = v24;
      }

      std::string::append(a1, v31, v32);
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(a1, "0", 1uLL);
    }
  }

  if (*(this + 5) != 1)
  {
    std::string::push_back(a1, 35);
    std::to_string(&v38, *(this + 5));
    v33 = (v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v38 : v38.__r_.__value_.__r.__words[0];
    v34 = (v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v38.__r_.__value_.__r.__words[2]) : v38.__r_.__value_.__l.__size_;
    std::string::append(a1, v33, v34);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 7) >= 2u)
  {
    std::string::push_back(a1, 44);
    std::to_string(&v38, *(this + 7));
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v38;
    }

    else
    {
      v35 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = v38.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v35, v36);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v4 == 1819304813)
    {
      if ((*(this + 3) & 0x20) != 0)
      {
        v37 = 68;
      }

      else
      {
        v37 = 73;
      }

      std::string::push_back(a1, v37);
    }
  }
}

void sub_18F69E3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::asDecompileString(char *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = a2;
  LODWORD(a2) = a1[23];
  if (a1[23] < 0)
  {
    if (!*(a1 + 1))
    {
      a2 = 0;
      v3->__r_.__value_.__r.__words[0] = 0;
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_31;
    }

    v4 = *a1;
  }

  else
  {
    v4 = a1;
    if (!a1[23])
    {
      v3->__r_.__value_.__r.__words[0] = 0;
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
LABEL_12:
      a2 = a2;
LABEL_31:
      std::string::reserve(v3, a2 + 2);
      std::string::push_back(v3, 34);
      v16 = a1[23];
      if (v16 >= 0)
      {
        v17 = a1;
      }

      else
      {
        v17 = *a1;
      }

      if (v16 >= 0)
      {
        v18 = a1[23];
      }

      else
      {
        v18 = *(a1 + 1);
      }

      std::string::append(v3, v17, v18);
      std::string::push_back(v3, 34);
      return;
    }
  }

  v5 = *v4;
  if ((v5 & 0x80000000) != 0)
  {
    v6 = __maskrune(*v4, 0x500uLL);
    LODWORD(a2) = a1[23];
  }

  else
  {
    v6 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x500;
  }

  if (v5 != 95 && !v6)
  {
LABEL_11:
    v3->__r_.__value_.__r.__words[0] = 0;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    if ((a2 & 0x80) != 0)
    {
      a2 = *(a1 + 1);
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v7 = (a2 & 0x80u) != 0;
  v8 = *(a1 + 1);
  v9 = a2;
  if ((a2 & 0x80u) != 0)
  {
    v9 = *(a1 + 1);
  }

  if (v9 >= 2)
  {
    v10 = 1;
    v11 = MEMORY[0x1E69E9830];
    do
    {
      v12 = *a1;
      if (!v7)
      {
        v12 = a1;
      }

      v13 = v12[v10];
      if ((v13 & 0x80000000) != 0)
      {
        if (!__maskrune(v12[v10], 0x500uLL))
        {
LABEL_23:
          v14 = memchr("_-+=|./:!@#$%^&*<>?~", v13, 0x15uLL);
          LODWORD(a2) = a1[23];
          if (!v14)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      else if ((*(v11 + 4 * v13 + 60) & 0x500) == 0)
      {
        goto LABEL_23;
      }

      LODWORD(a2) = a1[23];
LABEL_24:
      ++v10;
      v7 = (a2 & 0x80u) != 0;
      v8 = *(a1 + 1);
      v15 = a2;
      if ((a2 & 0x80u) != 0)
      {
        v15 = *(a1 + 1);
      }
    }

    while (v10 < v15);
  }

  if ((a2 & 0x80) != 0)
  {
    v19 = *a1;

    std::string::__init_copy_ctor_external(v3, v19, v8);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *a1;
    v3->__r_.__value_.__r.__words[2] = *(a1 + 2);
  }
}

void sub_18F69E608(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::SimpleABL::SimpleABL(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t DSPGraph::SimpleABL::SimpleABL(uint64_t this, AudioBufferList *a2)
{
  *this = a2;
  *(this + 8) = 0;
  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  return this;
}

void DSPGraph::SimpleABL::~SimpleABL(DSPGraph::SimpleABL *this)
{
  DSPGraph::SimpleABL::free(this);
}

{
  DSPGraph::SimpleABL::free(this);
}

uint64_t DSPGraph::SimpleABL::set(uint64_t this, AudioBufferList *a2)
{
  if (*(this + 8) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v4, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v3, "set");
    std::string::basic_string[abi:ne200100]<0>(&v2, "setting a buffer list which is already allocated.");
    DSPGraph::ThrowException(1869640255, &v4, 577, &v3, &v2);
  }

  *(this + 8) = 0;
  *this = a2;
  return this;
}

void sub_18F69E72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::SimpleABL::zero(DSPGraph::SimpleABL *this, unsigned int a2, unsigned int a3)
{
  v3 = *this;
  if (*this && *v3)
  {
    v5 = 0;
    v6 = a2;
    v7 = 4;
    v8 = a3;
    do
    {
      bzero((*&v3[v7] + v6), v8);
      ++v5;
      v3 = *this;
      v7 += 4;
    }

    while (v5 < **this);
  }
}

void DSPGraph::SimpleABL::zero(DSPGraph::SimpleABL *this)
{
  v1 = *this;
  if (*this && *v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      bzero(*&v1[v3 + 4], v1[v3 + 3]);
      ++v4;
      v1 = *this;
      v3 += 4;
    }

    while (v4 < **this);
  }
}

void *DSPGraph::SimpleABL::copy(void *this, DSPGraph::SimpleABL *a2, int a3)
{
  v3 = *this;
  if (!*this)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "copy");
    std::string::basic_string[abi:ne200100]<0>(&v12, "null internal ABL");
    DSPGraph::ThrowException(1768843553, &v14, 631, &v13, &v12);
  }

  v4 = *a2;
  if (!*a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "copy");
    std::string::basic_string[abi:ne200100]<0>(&v12, "null destination ABL");
    DSPGraph::ThrowException(1768843553, &v14, 635, &v13, &v12);
  }

  if (*v3 != *v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "copy");
    std::string::basic_string[abi:ne200100]<0>(&v12, "mABL->mNumberBuffers != toABL->mNumberBuffers");
    DSPGraph::ThrowException(1718444833, &v14, 638, &v13, &v12);
  }

  if (*v3)
  {
    v6 = this;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v3[v7 + 3];
      v10 = &v4[v7];
      if (v9 > v4[v7 + 3])
      {
        std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v13, "copy");
        DSPGraph::strprintf("mABL->mBuffers[%u].mDataByteSize (%u) > toABL->mBuffers[%u].mDataByteSize (%u)", v8, *(*v6 + 16 * v8 + 12), v8, v10[3]);
      }

      v11 = *&v3[v7 + 4];
      this = *(v10 + 2);
      if (v11 != this)
      {
        this = memcpy(this, v11, v9);
        v3 = *v6;
      }

      if (a3)
      {
        v10[3] = v3[v7 + 3];
      }

      ++v8;
      v7 += 4;
    }

    while (v8 < *v3);
  }

  return this;
}

void sub_18F69EA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::RingBuffer::~RingBuffer(DSPGraph::RingBuffer *this)
{
  DSPGraph::SimpleABL::free(this);
  DSPGraph::SimpleABL::free(this);
}

{
  DSPGraph::SimpleABL::free(this);
  DSPGraph::SimpleABL::free(this);
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

uint64_t MP4BoxParser_SampleDescription::Init(MP4BoxParser_SampleDescription *this)
{
  v77 = *MEMORY[0x1E69E9840];
  DataSourceBytes = MP4BoxParser_Full::Initialize(this);
  if (!DataSourceBytes)
  {
    if (*(this + 5) != 1937011556)
    {
      return 4294967294;
    }

    v3 = (*(*this + 24))(this);
    v75 = 0;
    MP4BoxParser::GetDataSourceSize(*(this + 1), &v75);
    DataSourceBytes = v4;
    if (!v4)
    {
      DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3, 4uLL, this + 60);
      v5 = *(this + 15);
      *(this + 15) = bswap32(v5);
      if (!DataSourceBytes)
      {
        if (!v5)
        {
          return 0;
        }

        DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 4, 8uLL, v74);
        if (!DataSourceBytes)
        {
          DataSourceBytes = 1667787583;
          v6 = bswap32(v74[0]);
          if (v75 - (v3 + 4) + 8 >= v6)
          {
            *(this + 16) = bswap32(v74[1]);
            if ((v6 + 2147483640) >= 0x8000001C)
            {
              v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 20, 8uLL, &v76);
              if (v7)
              {
                return v7;
              }

              v7 = 1718449215;
              v8 = bswap32(v76) >> 16;
              *(this + 17) = v8;
              if (v8 != *(this + 56))
              {
                return v7;
              }

              v9 = *(this + 16);
              if (v9 == 1768973165 || v9 == 1718641517)
              {
                LOWORD(__src[0]) = 0;
                v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 28, 2uLL, __src);
                *(this + 60) = bswap32(LOWORD(__src[0])) >> 16;
                if (v7)
                {
                  return v7;
                }

                LOWORD(outPropertyDataSize[0]) = 0;
                v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 30, 2uLL, outPropertyDataSize);
                if (v7)
                {
                  return v7;
                }

                *(this + 61) = bswap32(LOWORD(outPropertyDataSize[0])) >> 16;
                LOWORD(v73) = 0;
                v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 32, 2uLL, &v73);
                if (v7)
                {
                  return v7;
                }

                LODWORD(inSpecifier) = 0;
                v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 36, 4uLL, &inSpecifier);
                if (v7)
                {
                  return v7;
                }

                *(this + 31) = bswap32(inSpecifier) >> 16;
              }

              v11 = (v6 - 36);
              if (v11 >= 9)
              {
                DataSourceBytes = 0;
                outPropertyData[0] = v3 + 40;
                alloc = *MEMORY[0x1E695E480];
                while (1)
                {
                  v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), outPropertyData[0], 8uLL, &v73);
                  if (v7)
                  {
                    return v7;
                  }

                  v12 = bswap32(v73);
                  v13 = (v11 - v12);
                  if (v11 < v12 || v12 <= 7)
                  {
                    return 0;
                  }

                  v15 = HIDWORD(v73);
                  std::vector<unsigned char>::vector[abi:ne200100](__src, v12);
                  v16 = v11;
                  v17 = __src[0];
                  v18 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), outPropertyData[0], v12, __src[0]);
                  v19 = v18;
                  if (v18)
                  {
                    v20 = 0;
                    DataSourceBytes = v18;
                    v11 = v16;
                    goto LABEL_153;
                  }

                  v21 = bswap32(v15);
                  v22 = (v12 - 8);
                  v23 = v17 + 2;
                  outPropertyData[0] += v12;
                  if (v21 <= 1702061170)
                  {
                    break;
                  }

                  if (v21 <= 1935767393)
                  {
                    if (v21 <= 1885564226)
                    {
                      if (v21 != 1702061171 && v21 != 1832149349)
                      {
                        goto LABEL_118;
                      }

                      v19 = 0;
                      if (v22 >= 5 && !*(this + 11))
                      {
                        operator new();
                      }

LABEL_94:
                      if (v22 >= 5 && !*(this + 11))
                      {
                        v38 = (v12 - 12);
                        *(this + 24) = v38;
                        v39 = malloc_type_malloc(v38, 0x182B0142uLL);
                        v40 = v39;
                        if (!v39)
                        {
                          exception = __cxa_allocate_exception(8uLL);
                          v55 = std::bad_alloc::bad_alloc(exception);
                        }

                        bzero(v39, v38);
                        *(this + 11) = v40;
                        memcpy(v40, v17 + 3, *(this + 24));
                      }

                      if (*(this + 16) != 1685220723)
                      {
                        goto LABEL_151;
                      }

LABEL_138:
                      *(this + 18) = v21;
LABEL_151:
                      v20 = 1;
                      goto LABEL_152;
                    }

                    if (v21 == 1885564227)
                    {
                      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 16, __src[0], __src[0] + v12, v12);
                      goto LABEL_150;
                    }

                    if (v21 != 1935764850)
                    {
                      goto LABEL_118;
                    }
                  }

                  else
                  {
                    if (v21 > 1936289381)
                    {
                      switch(v21)
                      {
                        case 1936289382:
                          v19 = 0;
                          v20 = 1;
                          if (v22 >= 0x20 && *(this + 16) == 1701733217)
                          {
                            if (bswap32(v17[2]) >= 0xC && v17[3] == 1634562662)
                            {
                              *(this + 19) = bswap32(v17[4]);
                            }

                            v19 = 0;
                            if (bswap32(v17[5]) >= 0x14 && v17[6] == 1835557747)
                            {
                              v19 = 0;
                              *(this + 20) = bswap32(v17[8]);
                            }
                          }

                          goto LABEL_152;
                        case 1936875892:
                          v19 = 0;
                          v20 = 1;
                          if (v22 >= 8 && *(this + 17))
                          {
                            v19 = 0;
                            *(this + 31) = bswap32(v17[3]);
                          }

                          goto LABEL_152;
                        case 2002876005:
                          if (v22 < 8)
                          {
                            goto LABEL_150;
                          }

                          v24 = 0;
                          v25 = v17 + v22;
                          v26 = (v25 + 8);
                          v27 = v17 + 4;
                          while (1)
                          {
                            v28 = bswap32(*v23);
                            v20 = v28 > 7;
                            if (v28 < 8)
                            {
                              v19 = 0;
                              DataSourceBytes = 1718449215;
                              goto LABEL_152;
                            }

                            v29 = v23[1];
                            v19 = bswap32(v29);
                            if (v19 == 1718775137)
                            {
                              v23 += 3;
                              if (v26 < v23)
                              {
                                goto LABEL_150;
                              }

                              v24 = bswap32(*v27);
                            }

                            else
                            {
                              if (!v19)
                              {
                                goto LABEL_151;
                              }

                              if (v29 == 1935962981 && v24 == 1836069985)
                              {
                                v50 = v28 >= 0xC && *(this + 11) == 0;
                                if (v50 && v28 - 8 <= v26 - v27)
                                {
                                  v51 = (v28 - 12);
                                  *(this + 24) = v51;
                                  v52 = malloc_type_malloc(v51, 0x27E6A73DuLL);
                                  v53 = v52;
                                  if (v51 && !v52)
                                  {
                                    v62 = __cxa_allocate_exception(8uLL);
                                    v63 = std::bad_alloc::bad_alloc(v62);
                                  }

                                  bzero(v52, v51);
                                  *(this + 11) = v53;
                                  memcpy(v53, v23 + 3, *(this + 24));
                                }

                                goto LABEL_150;
                              }

                              v23 = (v23 + v28);
                            }

                            v27 = v23 + 2;
                            v20 = 1;
                            if (v25 < v23)
                            {
                              v19 = 0;
                              goto LABEL_152;
                            }
                          }
                      }

                      goto LABEL_118;
                    }

                    if (v21 != 1935767394)
                    {
                      if (v21 == 1935832164)
                      {
                        if (v22 >= 5)
                        {
                          v34 = CFStringCreateWithBytes(alloc, v17 + 12, (v12 - 12), 0x8000100u, 0);
                          v35 = v34;
                          if (v34)
                          {
                            *(this + 38) = BitDepthFromCFString(v34);
                            CFRelease(v35);
                          }
                        }

                        goto LABEL_150;
                      }

LABEL_118:
                      outPropertyData[1] = 0;
                      if (IsConfigBoxForCodingName(*(this + 16), v21, &outPropertyData[1]))
                      {
                        if (!*(this + 11))
                        {
                          MP4BoxParser_SampleDescription::GetMagicCookieAndAudioChannelLayoutFromConfigBox(this, *(this + 16), outPropertyData[1], v21, v12, __src[0]);
                        }
                      }

                      else
                      {
                        v44 = CFStringCreateWithBytes(alloc, &v73 + 4, 4, 0x8000100u, 0);
                        if (v44)
                        {
                          *&inSpecifier = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                          WORD4(inSpecifier) = 257;
                          *outPropertyDataSize = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                          LOWORD(v71) = 257;
                          if (CACFDictionary::HasKey((this + 104), v44))
                          {
                            CACFDictionary::GetCACFArray((this + 104), v44, &inSpecifier);
                            if (*(this + 113) == 1)
                            {
                              v45 = *(this + 13);
                              if (v45)
                              {
                                CFDictionaryRemoveValue(v45, v44);
                              }
                            }
                          }

                          CACFArray::SetCFMutableArrayFromCopy(outPropertyDataSize, inSpecifier);
                          v46 = CFDataCreate(0, v17 + 8, (v12 - 8));
                          CACFArray::AppendData(outPropertyDataSize, v46);
                          CFRelease(v46);
                          CACFDictionary::AddArray((this + 104), v44, *outPropertyDataSize);
                          CFRelease(v44);
                          CACFArray::~CACFArray(outPropertyDataSize);
                          CACFArray::~CACFArray(&inSpecifier);
                        }
                      }

LABEL_150:
                      v19 = 0;
                      goto LABEL_151;
                    }
                  }

                  if (*(this + 11))
                  {
                    goto LABEL_150;
                  }

                  *(this + 24) = 47;
                  v36 = malloc_type_malloc(0x2FuLL, 0x84090200uLL);
                  if (!v36)
                  {
                    v58 = __cxa_allocate_exception(8uLL);
                    v59 = std::bad_alloc::bad_alloc(v58);
                  }

                  *(v36 + 31) = 0u;
                  *v36 = 0u;
                  *(v36 + 1) = 0u;
                  *(this + 11) = v36;
                  v37 = *(this + 24);
                  if (v37 >= 0x2F && v22 + 38 <= v37)
                  {
                    *v36 = 0x616D72660C000000;
                    *(v36 + 2) = v15;
                    *(v36 + 12) = 0x61646E650A000000;
                    *(v36 + 10) = 0;
                    HIDWORD(v73) = 1919770980;
                    *(v36 + 22) = v73;
                    v49 = v36 + 30;
                    memcpy(v36 + 30, v17 + 2, v22);
                    v19 = 0;
                    *&v49[v22] = 0x8000000;
                    goto LABEL_151;
                  }

                  v20 = 0;
                  v19 = 0xFFFFFFFFLL;
                  DataSourceBytes = 0xFFFFFFFFLL;
LABEL_152:
                  v11 = v13;
LABEL_153:
                  if (__src[0])
                  {
                    __src[1] = __src[0];
                    operator delete(__src[0]);
                  }

                  if (!v20)
                  {
                    return DataSourceBytes;
                  }

                  if (v11 < 9)
                  {
                    return v19;
                  }
                }

                if (v21 > 1684103986)
                {
                  if (v21 > 1684425824)
                  {
                    if (v21 == 1684425825)
                    {
                      goto LABEL_77;
                    }

                    v30 = 1700998451;
                  }

                  else
                  {
                    if (v21 == 1684103987)
                    {
                      goto LABEL_77;
                    }

                    v30 = 1684366131;
                  }

                  if (v21 != v30)
                  {
                    goto LABEL_118;
                  }
                }

                else
                {
                  if (v21 > 1667785069)
                  {
                    if (v21 == 1667785070)
                    {
                      std::vector<unsigned char>::resize((this + 160), (v12 - 8));
                      memcpy(*(this + 20), v17 + 2, (v12 - 8));
                      if (*(this + 16) == 1634492771 && *(this + 11))
                      {
                        std::vector<unsigned char>::vector[abi:ne200100](&inSpecifier, *(this + 24));
                        memcpy(inSpecifier, *(this + 11), *(this + 24));
                        free(*(this + 11));
                        v41 = (*(this + 24) + v12);
                        v42 = malloc_type_malloc(v41, 0xB961CF8BuLL);
                        v43 = v42;
                        if (v41 && !v42)
                        {
                          v60 = __cxa_allocate_exception(8uLL);
                          v61 = std::bad_alloc::bad_alloc(v60);
                        }

                        bzero(v42, v41);
                        *(this + 11) = v43;
                        memcpy(v43, inSpecifier, *(this + 24));
                        memcpy((*(this + 11) + *(this + 24)), __src[0], v12);
                        *(this + 24) = v41;
                        if (inSpecifier)
                        {
                          *(&inSpecifier + 1) = inSpecifier;
                          operator delete(inSpecifier);
                        }
                      }

                      goto LABEL_150;
                    }

                    if (v21 == 1667788396)
                    {
                      v67 = 0u;
                      v68 = 0u;
                      inSpecifier = 0u;
                      outPropertyDataSize[0] = 0;
                      HIDWORD(v67) = *(this + 60);
                      *(&v68 + 1) = __src[0];
                      v69 = v12;
                      if (!AudioFormatGetPropertyInfo(0x6463636Cu, 0x38u, &inSpecifier, outPropertyDataSize))
                      {
                        std::vector<unsigned char>::resize((this + 160), outPropertyDataSize[0]);
                        if (AudioFormatGetProperty(0x6463636Cu, 0x38u, &inSpecifier, outPropertyDataSize, *(this + 20)))
                        {
                          v31 = 0;
                        }

                        else
                        {
                          v31 = outPropertyDataSize[0];
                        }

                        std::vector<unsigned char>::resize((this + 160), v31);
                      }

                      goto LABEL_150;
                    }

                    goto LABEL_118;
                  }

                  if (v21 != 1633889587)
                  {
                    if (v21 != 1634492771)
                    {
                      goto LABEL_118;
                    }

                    v19 = 0;
                    goto LABEL_94;
                  }
                }

LABEL_77:
                if (*(this + 11))
                {
LABEL_135:
                  v32 = *(this + 16);
                  goto LABEL_136;
                }

                v32 = *(this + 16);
                if (v32 <= 1700998450)
                {
                  if (v32 != 1633889587)
                  {
                    if (v32 != 1685220723)
                    {
                      goto LABEL_136;
                    }

                    goto LABEL_133;
                  }

                  v33 = 862151012;
                }

                else
                {
                  switch(v32)
                  {
                    case 1716281667:
                      v33 = 1632396900;
                      break;
                    case 1701733217:
LABEL_133:
                      *(this + 24) = v12;
                      v47 = malloc_type_malloc(v12, 0x735F45D2uLL);
                      v48 = v47;
                      if (!v47)
                      {
                        v56 = __cxa_allocate_exception(8uLL);
                        v57 = std::bad_alloc::bad_alloc(v56);
                      }

                      bzero(v47, v12);
                      *(this + 11) = v48;
                      memcpy(v48, __src[0], *(this + 24));
                      goto LABEL_135;
                    case 1700998451:
                      v33 = 862152036;
                      break;
                    default:
LABEL_136:
                      if (v32 != 1685220723)
                      {
                        goto LABEL_150;
                      }

                      v19 = 0;
                      goto LABEL_138;
                  }
                }

                if (v15 != v33)
                {
                  goto LABEL_150;
                }

                goto LABEL_133;
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return DataSourceBytes;
}

void sub_18F69FA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MP4AudioESDS>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 1512);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 1496);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

BOOL IsConfigBoxForCodingName(int a1, int a2, unsigned int *outPropertyData)
{
  if (a1 == 1685220723)
  {
    inSpecifier = 0x46D703466;
    v14 = a2;
    ioPropertyDataSize[0] = 4;
    v5 = AudioFormatGetProperty(0x6964656Eu, 0xCu, &inSpecifier, ioPropertyDataSize, outPropertyData) == 0;
    v6 = ioPropertyDataSize[0];
  }

  else
  {
    inSpecifier = 0x46D703466;
    v14 = a1;
    v12 = 0;
    *ioPropertyDataSize = 0;
    v10 = 12;
    if (AudioFormatGetProperty(0x656E636Eu, 0xCu, &inSpecifier, &v10, ioPropertyDataSize))
    {
      return 0;
    }

    if (v10 != 12 || v12 != a2)
    {
      return 0;
    }

    v10 = 4;
    v5 = AudioFormatGetProperty(0x6964636Eu, 0xCu, &inSpecifier, &v10, outPropertyData) == 0;
    v6 = v10;
  }

  return v5 && v6 == 4;
}

void MP4BoxParser_SampleDescription::GetMagicCookieAndAudioChannelLayoutFromConfigBox(MP4BoxParser_SampleDescription *this, int a2, int a3, int a4, unsigned int a5, void *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  inSpecifier[0] = a3;
  inSpecifier[1] = 1836069990;
  v29 = a6;
  v30 = a5;
  outPropertyDataSize = 0;
  if (AudioFormatGetPropertyInfo(0x6D636563u, 0x18u, inSpecifier, &outPropertyDataSize))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "MP4_BoxParser_SampleDescription.cpp";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 452;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CanonicalMagicCookieFromEncapsulatedMagicCookie not supported for specifier", buf, 0x12u);
    }

LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  v11 = outPropertyDataSize;
  v12 = malloc_type_malloc(outPropertyDataSize, 0x5952BD5FuLL);
  v10 = v12;
  if (v11 && !v12)
  {
    exception = __cxa_allocate_exception(8uLL);
    v22 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v12, v11);
  if (AudioFormatGetProperty(0x6D636563u, 0x18u, inSpecifier, &outPropertyDataSize, v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "MP4_BoxParser_SampleDescription.cpp";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 456;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Couldn't extract magic cookie", buf, 0x12u);
    }
  }

  else
  {
    v13 = outPropertyDataSize;
    *(this + 24) = outPropertyDataSize;
    *(this + 11) = v10;
    if (a2 == 1685220723)
    {
      *(this + 18) = a4;
    }

    if (v10)
    {
      v32 = 0;
      v35 = 0;
      memset(buf, 0, sizeof(buf));
      v33 = v10;
      v34 = v13;
      v26 = 0;
      buf[2] = a3;
      if (AudioFormatGetPropertyInfo(0x636C6669u, 0x38u, buf, &v26))
      {
        v25 = 0u;
        memset(outPropertyData, 0, sizeof(outPropertyData));
        ioPropertyDataSize = 48;
        if (!AudioFormatGetProperty(0x666C7374u, 0x38u, buf, &ioPropertyDataSize, outPropertyData))
        {
          v14 = *(this + 20);
          v15 = *(this + 21) - v14;
          if (v15 > 0x1F)
          {
            if (v15 != 32)
            {
              *(this + 21) = v14 + 8;
            }
          }

          else
          {
            std::vector<unsigned char>::__append((this + 160), 32 - v15);
            v14 = *(this + 20);
          }

          *v14 = DWORD2(v25);
        }
      }

      else
      {
        v16 = *(this + 20);
        v17 = *(this + 21) - v16;
        if (v26 <= v17)
        {
          if (v26 < v17)
          {
            *(this + 21) = &v16[v26];
          }
        }

        else
        {
          std::vector<unsigned char>::__append((this + 160), v26 - v17);
          v16 = *(this + 20);
        }

        if (AudioFormatGetProperty(0x636C6669u, 0x38u, buf, &v26, v16))
        {
          v18 = 0;
        }

        else
        {
          v18 = v26;
        }

        v19 = *(this + 20);
        v20 = *(this + 21) - v19;
        if (v18 <= v20)
        {
          if (v18 < v20)
          {
            *(this + 21) = v19 + v18;
          }
        }

        else
        {
          std::vector<unsigned char>::__append((this + 160), v18 - v20);
        }
      }

      goto LABEL_4;
    }
  }

LABEL_5:
  free(v10);
}

CFMutableArrayRef CACFArray::SetCFMutableArrayFromCopy(CACFArray *this, CFArrayRef theArray)
{
  if (*(this + 8) == 1)
  {
    v4 = *this;
    if (*this)
    {
      CFRelease(v4);
    }
  }

  result = CFArrayCreateMutableCopy(0, 0, theArray);
  *this = result;
  *(this + 4) = 257;
  return result;
}

void CACFArray::~CACFArray(CACFArray *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(MP4BoxParser_SampleDescription *this)
{
  MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325AD8;
  v2 = *(this + 11);
  if (v2)
  {
    free(v2);
  }

  std::unique_ptr<MP4AudioESDS>::reset[abi:ne200100](this + 23, 0);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  CACFDictionary::~CACFDictionary((this + 104));
  v5 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

uint64_t MP4BoxParser_SampleDescription::MP4BoxParser_SampleDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 8;
  *a1 = &unk_1F0325AD8;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = 0;
  *(a1 + 68) = 0;
  *(a1 + 104) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 112) = 257;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return a1;
}

void sub_18F6A022C(_Unwind_Exception *exception_object)
{
  v4 = v1[1];
  *v1 = v2;
  v1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_SampleDescription::GetASBD(MP4BoxParser_SampleDescription *this, AudioStreamBasicDescription *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, unsigned int *a8)
{
  v41 = 40;
  HIDWORD(v10) = 0;
  *&a2->mSampleRate = 0u;
  *&a2->mBytesPerPacket = 0u;
  *&a2->mBitsPerChannel = 0;
  v11 = *(this + 16);
  if (v11 == 1701733217)
  {
    v11 = *(this + 19);
  }

  else if (v11 == 1685220723)
  {
    v12 = *(this + 18);
    if (v12 != 1684103987)
    {
      if (v12 != 1684366131)
      {
        if (v12 != 1702061171)
        {
          v11 = 1685220723;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

LABEL_18:
      Property = ParseEAC3MP4Cookie(*(this + 11), *(this + 24), a2, 0, 0, 0, a7, a8, v37, inSpecifier, v39, v40);
      goto LABEL_50;
    }

LABEL_25:
    v18 = (*(*this + 24))(this);
    v16 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), (v18 + 4), 0x2FuLL, &inSpecifier);
    if (v16)
    {
      goto LABEL_51;
    }

    *&a2->mBitsPerChannel = 0;
    *&a2->mSampleRate = 0u;
    *&a2->mBytesPerPacket = 0u;
    Property = ParseAC3MP4Cookie(*(this + 11), *(this + 24), a2, 0, v19, v20);
    goto LABEL_50;
  }

  if (v11 > 1768973164)
  {
    if (v11 > 1836069984)
    {
      if (v11 == 1935767394)
      {
        a2->mFormatID = 1935767394;
        a2->mChannelsPerFrame = 1;
        v31 = 16000.0;
      }

      else
      {
        if (v11 != 1935764850)
        {
          v13 = 1836069985;
          goto LABEL_29;
        }

        a2->mFormatID = 1935764850;
        a2->mChannelsPerFrame = 1;
        v31 = 8000.0;
      }

      a2->mSampleRate = v31;
LABEL_48:
      v28 = *(this + 24);
      v27 = *(this + 11);
      p_inSpecifier = &v41;
      v30 = 1718449257;
LABEL_49:
      Property = AudioFormatGetProperty(v30, v28, v27, p_inSpecifier, a2);
      goto LABEL_50;
    }

    if (v11 == 1768973165)
    {
      goto LABEL_38;
    }

    v13 = 1832149349;
LABEL_29:
    if (v11 == v13)
    {
LABEL_30:
      v21 = *(this + 23);
      if (!v21)
      {
        goto LABEL_42;
      }

      Property = DecoderConfigDescr::MakeStreamDescription((v21 + 296), a2, 0.0);
      if (!Property)
      {
        mFormatID = a2->mFormatID;
        if (mFormatID == 1634497332 || mFormatID == 1936487278 || mFormatID == 1936487267)
        {
          mFormatFlags = a2->mFormatFlags;
LABEL_61:
          SourceBitDepthFromASBD = GetSourceBitDepthFromASBD(mFormatID, mFormatFlags);
          v16 = 0;
LABEL_62:
          *(this + 38) = SourceBitDepthFromASBD;
          goto LABEL_51;
        }

LABEL_42:
        v16 = 0;
        goto LABEL_51;
      }

LABEL_50:
      v16 = Property;
      goto LABEL_51;
    }

    goto LABEL_36;
  }

  if (v11 > 1700998450)
  {
    if (v11 == 1700998451)
    {
      goto LABEL_18;
    }

    if (v11 == 1716281667)
    {
      a2->mFormatID = 1718378851;
      v16 = AudioFormatGetProperty(0x666D7469u, *(this + 24), *(this + 11), &v41, a2);
      if (v16)
      {
        goto LABEL_51;
      }

      SourceBitDepthFromASBD = GetSourceBitDepthFromASBD(a2->mFormatID, a2->mFormatFlags);
      goto LABEL_62;
    }

    if (v11 != 1718641517)
    {
      goto LABEL_36;
    }

LABEL_38:
    LODWORD(inSpecifier) = 40;
    LODWORD(v10) = *(this + 31);
    v23 = *(this + 60);
    v24 = *(this + 61);
    a2->mSampleRate = v10;
    if (v11 == 1718641517)
    {
      v25 = 11;
    }

    else
    {
      v25 = 14;
    }

    a2->mFormatID = 1819304813;
    a2->mFormatFlags = v25;
    v26 = (v24 >> 3) * v23;
    a2->mBytesPerPacket = v26;
    a2->mFramesPerPacket = 1;
    a2->mBytesPerFrame = v26;
    a2->mChannelsPerFrame = v23;
    a2->mBitsPerChannel = v24;
    v27 = *(this + 16);
    v28 = *(this + 34) - v27;
    p_inSpecifier = &inSpecifier;
    v30 = 1885565796;
    goto LABEL_49;
  }

  if (v11 == 1633889587)
  {
    goto LABEL_25;
  }

  if (v11 != 1634492771)
  {
LABEL_36:
    inSpecifier = 0x46D703466;
    LODWORD(v39) = v11;
    HIDWORD(v37) = 4;
    v16 = AudioFormatGetProperty(0x6964636Eu, 0xCu, &inSpecifier, &v37 + 1, &a2->mFormatID);
    if (v16)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v15 = *(this + 11);
  v16 = 4294967246;
  if (v15 && *(this + 24) >= 0x18u)
  {
    a2->mFormatID = 1634492771;
    a2->mSampleRate = bswap32(*(v15 + 20));
    if ((((*(v15 + 5) - 16) >> 2) | ((*(v15 + 5) - 16) << 6)) > 4u)
    {
      mFormatFlags = 0;
    }

    else
    {
      mFormatFlags = dword_18F917B98[(((*(v15 + 5) - 16) >> 2) | ((*(v15 + 5) - 16) << 6))];
    }

    a2->mFormatFlags = mFormatFlags;
    a2->mChannelsPerFrame = *(v15 + 9);
    v36 = bswap32(*v15);
    a2->mBytesPerPacket = 0;
    *&a2->mFramesPerPacket = v36;
    *&a2->mBitsPerChannel = 0;
    mFormatID = 1634492771;
    goto LABEL_61;
  }

LABEL_51:
  v33 = *(this + 16);
  if (v33 == 1685220723)
  {
    v34 = 1885695587;
LABEL_57:
    a2->mFormatID = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(a2->mFormatID, v34);
    return v16;
  }

  if (v33 == 1701733217)
  {
    v34 = *(this + 20);
    if (v34 == 1667591779 || v34 == 1667392371)
    {
      goto LABEL_57;
    }
  }

  return v16;
}

const __CFDictionary *MP4BoxParser_SampleDescription::GetASEBoxes(MP4BoxParser_SampleDescription *this, const __CFDictionary **a2)
{
  if (CACFDictionary::Size((this + 104)) && (v4 = *(this + 13)) != 0)
  {
    result = CFDictionaryCreateCopy(0, v4);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t MP4BoxParser_SampleDescription::GetChannelLayout(MP4BoxParser_SampleDescription *this, AudioChannelLayout **a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, unsigned int *a8)
{
  v11 = *(this + 16);
  *a2 = 0;
  *a3 = 0;
  if (v11 == 1701733217)
  {
    v11 = *(this + 19);
  }

  else if (v11 == 1685220723)
  {
    v11 = *(this + 18);
    if (v11 != 1684103987)
    {
      if (v11 != 1684366131)
      {
        v12 = 1702061171;
LABEL_11:
        if (v11 == v12)
        {
          goto LABEL_12;
        }

LABEL_38:
        v21 = *(this + 21) - *(this + 20);
        *a3 = v21;
        if (!v21)
        {
          return 0;
        }

        v22 = v21;
        v23 = malloc_type_malloc(v21, 0xD03117C2uLL);
        if (v23)
        {
          v24 = v23;
          bzero(v23, v22);
          *a2 = v24;
          memcpy(v24, *(this + 20), *a3);
          return 0;
        }

        goto LABEL_43;
      }

      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (v11 <= 1700998450)
  {
    if (v11 != 1633889587)
    {
      if (v11 != 1634492771)
      {
        goto LABEL_38;
      }

      if (*(this + 24) != 48 || *(*(this + 11) + 28) != 1851877475)
      {
        return 0;
      }

      *a3 = 32;
      v16 = malloc_type_malloc(0x20uLL, 0x2FE20AECuLL);
      if (!v16)
      {
        goto LABEL_43;
      }

      v15 = 0;
      *v16 = 0u;
      *(v16 + 1) = 0u;
      *a2 = v16;
      mSampleRate_low = bswap32(*(*(this + 11) + 36));
      goto LABEL_37;
    }

LABEL_30:
    v18 = (*(*this + 24))(this);
    if (MP4BoxParser::ReadDataSourceBytes(*(this + 1), (v18 + 4), 0x2FuLL, &v30))
    {
      return 0;
    }

    v29 = 0;
    v15 = ParseAC3MP4Cookie(*(this + 11), *(this + 24), &v28, &v29, v19, v20);
    if (v15 || v29 == 6553601 || v29 == 6619138 || v29 + 0x10000 < 0x20000)
    {
      return v15;
    }

    *a3 = 32;
    v16 = malloc_type_malloc(0x20uLL, 0x35B487B4uLL);
    if (!v16)
    {
      goto LABEL_43;
    }

    *(v16 + 7) = 0;
    *(v16 + 20) = 0;
    *(v16 + 4) = 0u;
    *a2 = v16;
    mSampleRate_low = v29;
LABEL_37:
    *v16 = mSampleRate_low;
    return v15;
  }

  if (v11 != 1700998451)
  {
    if (v11 == 1836069985)
    {
LABEL_12:
      if (!*(this + 23))
      {
        return 0;
      }

      *a3 = 32;
      v13 = malloc_type_malloc(0x20uLL, 0xE71A773AuLL);
      if (v13)
      {
        *&v13->mChannelLayoutTag = 0u;
        *&v13->mChannelDescriptions[0].mChannelFlags = 0u;
        *a2 = v13;
        DecoderConfigDescr::GetChannelLayoutTag((*(this + 23) + 296), &v13->mChannelLayoutTag);
        mChannelLayoutTag = (*a2)->mChannelLayoutTag;
        if (mChannelLayoutTag == 6553601 || mChannelLayoutTag == 6619138 || !((mChannelLayoutTag + 0x10000) >> 17))
        {
          free(*a2);
          v15 = 0;
          *a2 = 0;
          *a3 = 0;
          return v15;
        }

        return 0;
      }

LABEL_43:
      exception = __cxa_allocate_exception(8uLL);
      v27 = std::bad_alloc::bad_alloc(exception);
    }

    v12 = 1832149349;
    goto LABEL_11;
  }

LABEL_24:
  LODWORD(v30.mSampleRate) = 0;
  v15 = ParseEAC3MP4Cookie(*(this + 11), *(this + 24), 0, &v30, 0, 0, a7, a8, *&v28.mSampleRate, v28.mFormatID, *&v28.mBytesPerPacket, *&v28.mBytesPerFrame);
  if (!v15 && LODWORD(v30.mSampleRate) != 6553601 && LODWORD(v30.mSampleRate) != 6619138 && (LODWORD(v30.mSampleRate) + 0x10000) >= 0x20000)
  {
    *a3 = 32;
    v16 = malloc_type_malloc(0x20uLL, 0xD46628D3uLL);
    if (!v16)
    {
      goto LABEL_43;
    }

    *(v16 + 7) = 0;
    *(v16 + 20) = 0;
    *(v16 + 4) = 0u;
    *a2 = v16;
    mSampleRate_low = LODWORD(v30.mSampleRate);
    goto LABEL_37;
  }

  return v15;
}

void AudioMetadataTimeline::AudioMetadataTimeline(AudioMetadataTimeline *this)
{
  v2 = this + 600;
  *(this + 600) = 0u;
  bzero(this, 0x250uLL);
  *(this + 74) = v2;
  *(this + 39) = 0u;
  *(this + 77) = this + 624;
  *(this + 648) = 0u;
  *(this + 80) = this + 648;
  AudioMetadataMemoryPool::create<AudioMetadataFormatExtended>(&v3, this + 592);
}

void sub_18F6A10D8(_Unwind_Exception *a1)
{
  AudioMetadataMemoryPool::~AudioMetadataMemoryPool((v1 + 592));
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 528);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 464);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 400);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 336);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 272);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 208);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 144);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 80);
  std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](v1 + 16);
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void AudioMetadataMemoryPool::~AudioMetadataMemoryPool(AudioMetadataMemoryPool *this)
{
  std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(this + 7));
  std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(*(this + 4));
  std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(*(this + 1));
}

uint64_t std::deque<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*a1);
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(*a1);
    std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      v3 = a1[6];
      v4 = a1[5];
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 8);
          if (v5)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = a1[5];
      }

      a1[6] = v2;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

void sub_18F6A1570(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x193ADF1F0](v1, 0x80C80B8603338);
  }

  __cxa_rethrow();
}

uint64_t **std::__tree<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::__map_value_compare<void *,std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::vector<std::shared_ptr<void *[]>>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void std::vector<std::shared_ptr<void *[]>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t std::__shared_ptr_pointer<void * *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x193ADF1F0);
  }

  return result;
}

void std::__shared_ptr_pointer<void * *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t *std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void std::__shared_ptr_emplace<AudioMetadataFormatExtended>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032E9A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void AudioMetadataTimeline::addEvent(int64x2_t *a1, std::__shared_weak_count_vtbl **a2, double a3)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_18F6A9E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *****a31, uint64_t a32, uint64_t a33, uint64_t ****a34, uint64_t a35, uint64_t a36, uint64_t ***a37, uint64_t a38, uint64_t a39, uint64_t **a40, uint64_t a41, uint64_t a42, uint64_t *a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(v47 - 160) = v46;
  if (v46)
  {
    operator delete(v46);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  *(v47 - 168) = &a31;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v47 - 168));
  a31 = &a34;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a34 = &a37;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a34);
  a37 = &a40;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a37);
  a40 = &a43;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a40);
  a43 = &a46;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a46 = v47 - 240;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a46);
  *(v47 - 240) = v47 - 216;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v47 - 240));
  *(v47 - 216) = v47 - 192;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v47 - 216));
  _Unwind_Resume(a1);
}

void sub_18F6AA030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  JUMPOUT(0x18F6AA568);
}

void sub_18F6AA040(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA074(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA0A8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA0DC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA110(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA144(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA178(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA1AC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA1E0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA214(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA248(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA27C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA2B0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA2E4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA318(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA34C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA380(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA3B4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 - 152);
  v3 = *(v1 - 144);
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  __cxa_rethrow();
}

void sub_18F6AA400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  JUMPOUT(0x18F6AA560);
}

void sub_18F6AA4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *****a31, uint64_t a32, uint64_t a33, uint64_t ****a34, uint64_t a35, uint64_t a36, uint64_t ***a37, uint64_t a38, uint64_t a39, uint64_t **a40, uint64_t a41, uint64_t a42, uint64_t *a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  *(v46 - 168) = &a31;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 168));
  a31 = &a34;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a34 = &a37;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a34);
  a37 = &a40;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a37);
  a40 = &a43;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a40);
  a43 = &a46;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a46 = v46 - 240;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a46);
  *(v46 - 240) = v46 - 216;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 240));
  *(v46 - 216) = v46 - 192;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 216));
  _Unwind_Resume(a1);
}

void sub_18F6AA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  JUMPOUT(0x18F6AA560);
}

void sub_18F6AA524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  JUMPOUT(0x18F6AA560);
}

void std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,false>(void *a1, void *a2, uint64_t a3, char a4)
{
LABEL_1:
  v228 = a2 - 4;
  v229 = a2 - 2;
  v227 = a2 - 6;
  v7 = a1;
  v235 = a2;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 4;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(v7, (v7 + 2), v229);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(v7, v7 + 2, v7 + 4, v229);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(v7, (v7 + 2), (v7 + 4), v7 + 6, v229);
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
        v88 = *(a2 - 2);
        v89 = *(a2 - 1);
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v91 = *v7;
        v90 = v7[1];
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v92 = 0;
        if (v88 && v91)
        {
          v93 = *v88;
          v92 = v93 && (v94 = *v91) != 0 && *(v93 + 28) < *(v94 + 28);
        }

        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }

        if (v92)
        {
          v225 = *v7;
          *v7 = *(v235 - 2);
          *(v235 - 2) = v225;
          v226 = v7[1];
          v7[1] = *(v235 - 1);
          *(v235 - 1) = v226;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      v95 = v7 + 2;
      v97 = v7 == a2 || v95 == a2;
      if (a4)
      {
        if (v97)
        {
          return;
        }

        v98 = 0;
        v99 = v7;
        while (1)
        {
          v100 = v99;
          v99 = v95;
          v101 = v100[2];
          v102 = v100[3];
          if (v102)
          {
            atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v104 = *v100;
          v103 = v100[1];
          if (v103)
          {
            atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v101 && v104 != 0)
          {
            v106 = *v101;
            if (v106)
            {
              v107 = *v104;
              if (v107)
              {
                break;
              }
            }
          }

          v108 = 0;
          if (v103)
          {
            goto LABEL_283;
          }

LABEL_284:
          if (v102)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v102);
          }

          if (!v108)
          {
            goto LABEL_311;
          }

          v109 = *v99;
          v110 = v100[3];
          v111 = v98;
          *v99 = 0;
          v99[1] = 0;
          do
          {
            v112 = a1 + v111;
            v113 = *(a1 + v111);
            *v112 = 0;
            *(v112 + 1) = 0;
            v114 = *(a1 + v111 + 24);
            *(v112 + 1) = v113;
            if (v114)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v114);
            }

            if (!v111)
            {
              v119 = a1;
              goto LABEL_309;
            }

            if (v110)
            {
              atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v116 = *(a1 + v111 - 16);
            v115 = *(a1 + v111 - 8);
            if (v115)
            {
              atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v117 = 0;
            if (!v109 || !v116)
            {
              goto LABEL_300;
            }

            if (*v109)
            {
              v118 = *v116;
              if (v118)
              {
                v117 = *(*v109 + 28) < *(v118 + 28);
LABEL_300:
                if (!v115)
                {
                  goto LABEL_302;
                }

LABEL_301:
                std::__shared_weak_count::__release_shared[abi:ne200100](v115);
                goto LABEL_302;
              }
            }

            v117 = 0;
            if (v115)
            {
              goto LABEL_301;
            }

LABEL_302:
            if (v110)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v110);
            }

            v111 -= 16;
          }

          while (v117);
          v119 = (a1 + v111 + 16);
LABEL_309:
          v120 = v119[1];
          *v119 = v109;
          v119[1] = v110;
          if (v120)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v120);
          }

LABEL_311:
          v95 = v99 + 2;
          v98 += 16;
          if (v99 + 2 == v235)
          {
            return;
          }
        }

        v108 = *(v106 + 28) < *(v107 + 28);
        if (!v103)
        {
          goto LABEL_284;
        }

LABEL_283:
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        goto LABEL_284;
      }

      if (v97)
      {
        return;
      }

LABEL_475:
      v206 = a1;
      a1 = v95;
      v207 = v206[2];
      v208 = v206[3];
      if (v208)
      {
        atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v210 = *v206;
      v209 = v206[1];
      if (v209)
      {
        atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v207)
      {
        v211 = v210 == 0;
      }

      else
      {
        v211 = 1;
      }

      if (!v211 && (v212 = *v207) != 0 && (v213 = *v210) != 0)
      {
        v214 = *(v212 + 28) < *(v213 + 28);
        if (!v209)
        {
LABEL_489:
          if (v208)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v208);
          }

          if (!v214)
          {
            goto LABEL_514;
          }

          v215 = *a1;
          v216 = v206[3];
          v217 = a1;
          *a1 = 0;
          a1[1] = 0;
          while (1)
          {
            v218 = *(v217 - 1);
            *(v217 - 2) = 0;
            *(v217 - 1) = 0;
            v219 = v217[1];
            *v217 = v218;
            if (v219)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v219);
            }

            if (v216)
            {
              atomic_fetch_add_explicit(&v216->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v221 = *(v217 - 4);
            v220 = *(v217 - 3);
            if (v220)
            {
              atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v222 = 0;
            if (v215 && v221)
            {
              if (!*v215 || (v223 = *v221) == 0)
              {
                v222 = 0;
                if (!v220)
                {
                  goto LABEL_506;
                }

LABEL_505:
                std::__shared_weak_count::__release_shared[abi:ne200100](v220);
                goto LABEL_506;
              }

              v222 = *(*v215 + 28) < *(v223 + 28);
            }

            if (v220)
            {
              goto LABEL_505;
            }

LABEL_506:
            if (v216)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v216);
            }

            v217 -= 2;
            if (!v222)
            {
              v224 = v217[1];
              *v217 = v215;
              v217[1] = v216;
              if (v224)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v224);
              }

LABEL_514:
              v95 = a1 + 2;
              if (a1 + 2 == v235)
              {
                return;
              }

              goto LABEL_475;
            }
          }
        }
      }

      else
      {
        v214 = 0;
        if (!v209)
        {
          goto LABEL_489;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v209);
      goto LABEL_489;
    }

    if (!a3)
    {
      break;
    }

    v9 = &v7[2 * (v8 >> 1)];
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(&a1[2 * (v8 >> 1)], a1, v229);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>(a1, &a1[2 * (v8 >> 1)], v229);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>((a1 + 2), (v9 - 1), v228);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>((a1 + 4), &a1[2 * (v8 >> 1) + 2], v227);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,0>((v9 - 1), &a1[2 * (v8 >> 1)], &a1[2 * (v8 >> 1) + 2]);
      v10 = *a1;
      *a1 = *v9;
      *v9 = v10;
    }

    --a3;
    if (a4)
    {
      v11 = *a1;
LABEL_31:
      v19 = a1[1];
      v20 = a1;
      *a1 = 0;
      a1[1] = 0;
      do
      {
        v21 = v20[2];
        v22 = v20[3];
        v20 += 2;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v21)
        {
          v23 = v11 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (v23 || (v24 = *v21) == 0 || !*v11)
        {
          v25 = 0;
          if (!v19)
          {
            goto LABEL_46;
          }

LABEL_45:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_46;
        }

        v25 = *(v24 + 28) < *(*v11 + 28);
        if (v19)
        {
          goto LABEL_45;
        }

LABEL_46:
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      while (v25);
      v233 = a3;
      v26 = a2;
      if (v20 - 2 != a1)
      {
        while (1)
        {
          v27 = *(v26 - 2);
          v28 = *(v26 - 1);
          v26 -= 2;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v27 && v11 != 0)
          {
            v30 = *v27;
            if (v30)
            {
              if (*v11)
              {
                break;
              }
            }
          }

          v31 = 0;
          if (v19)
          {
            goto LABEL_63;
          }

LABEL_64:
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          if (v31)
          {
            goto LABEL_67;
          }
        }

        v31 = *(v30 + 28) < *(*v11 + 28);
        if (!v19)
        {
          goto LABEL_64;
        }

LABEL_63:
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        goto LABEL_64;
      }

      v26 = a2;
      while (2)
      {
        if (v20 < v26)
        {
          v51 = *(v26 - 2);
          v52 = *(v26 - 1);
          v26 -= 2;
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = 0;
          if (v51 && v11)
          {
            v54 = *v51;
            if (v54 && *v11)
            {
              v53 = *(v54 + 28) < *(*v11 + 28);
              goto LABEL_126;
            }

            v53 = 0;
            if (!v19)
            {
LABEL_128:
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }

              if (v53)
              {
                break;
              }

              continue;
            }
          }

          else
          {
LABEL_126:
            if (!v19)
            {
              goto LABEL_128;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_128;
        }

        break;
      }

LABEL_67:
      v7 = v20;
      if (v20 < v26)
      {
        v32 = v26;
        do
        {
          v33 = *v7;
          *v7 = *v32;
          *v32 = v33;
          v34 = v7[1];
          v7[1] = v32[1];
          v32[1] = v34;
          do
          {
            v35 = v7[2];
            v36 = v7[3];
            v7 += 2;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v35)
            {
              v37 = v11 == 0;
            }

            else
            {
              v37 = 1;
            }

            if (v37 || (v38 = *v35) == 0 || !*v11)
            {
              v39 = 0;
              if (!v19)
              {
                goto LABEL_84;
              }

LABEL_83:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_84;
            }

            v39 = *(v38 + 28) < *(*v11 + 28);
            if (v19)
            {
              goto LABEL_83;
            }

LABEL_84:
            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }
          }

          while (v39);
          do
          {
            v40 = *(v32 - 2);
            v41 = *(v32 - 1);
            v32 -= 2;
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v40)
            {
              v42 = v11 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (v42 || (v43 = *v40) == 0 || !*v11)
            {
              v44 = 0;
              if (!v19)
              {
                goto LABEL_101;
              }

LABEL_100:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_101;
            }

            v44 = *(v43 + 28) < *(*v11 + 28);
            if (v19)
            {
              goto LABEL_100;
            }

LABEL_101:
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }
          }

          while (!v44);
        }

        while (v7 < v32);
      }

      v45 = (v7 - 2);
      if (v7 - 2 != a1)
      {
        v46 = *v45;
        *v45 = 0;
        *(v7 - 1) = 0;
        v47 = a1[1];
        *a1 = v46;
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }
      }

      v48 = *(v7 - 1);
      *(v7 - 2) = v11;
      *(v7 - 1) = v19;
      a2 = v235;
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      v49 = v20 >= v26;
      a3 = v233;
      if (v49)
      {
        v50 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*>(a1, (v7 - 2));
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*>(v7, v235))
        {
          a2 = v7 - 2;
          if (v50)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v50)
        {
          goto LABEL_114;
        }
      }

      else
      {
LABEL_114:
        std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>*,false>(a1, v7 - 2, v233, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(a1 - 2);
      v13 = *(a1 - 1);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *a1;
      v14 = a1[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = 0;
      if (v12 && v15)
      {
        v17 = *v12;
        v16 = v17 && (v18 = *v15) != 0 && *(v17 + 28) < *(v18 + 28);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v11 = *a1;
      if (v16)
      {
        goto LABEL_31;
      }

      v55 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v57 = *(a2 - 2);
      v56 = *(a2 - 1);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = 0;
      if (v11 && v57)
      {
        v58 = *v11 && (v59 = *v57) != 0 && *(*v11 + 28) < *(v59 + 28);
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v58)
      {
        v7 = a1;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = v7[2];
          v60 = v7[3];
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = 0;
          if (v11 && v61)
          {
            v62 = *v11 && (v63 = *v61) != 0 && *(*v11 + 28) < *(v63 + 28);
          }

          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 2;
        }

        while (!v62);
      }

      else
      {
        v64 = (a1 + 2);
        do
        {
          v7 = v64;
          if (v64 >= a2)
          {
            break;
          }

          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = *v64;
          v65 = v7[1];
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = 0;
          if (v11 && v66)
          {
            v67 = *v11 && (v68 = *v66) != 0 && *(*v11 + 28) < *(v68 + 28);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v64 = (v7 + 2);
        }

        while (!v67);
      }

      v69 = a2;
      if (v7 < a2)
      {
        v69 = a2;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v71 = *(v69 - 2);
          v70 = *(v69 - 1);
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v72 = 0;
          if (v11 && v71)
          {
            v72 = *v11 && (v73 = *v71) != 0 && *(*v11 + 28) < *(v73 + 28);
          }

          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v69 -= 2;
        }

        while (v72);
      }

LABEL_235:
      if (v7 < v69)
      {
        v74 = *v7;
        *v7 = *v69;
        *v69 = v74;
        v75 = v7[1];
        v7[1] = v69[1];
        v69[1] = v75;
        while (1)
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v77 = v7[2];
          v76 = v7[3];
          if (v76)
          {
            atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v78 = 0;
          if (v11 && v77)
          {
            if (!*v11 || (v79 = *v77) == 0)
            {
              v78 = 0;
              if (!v76)
              {
                goto LABEL_213;
              }

LABEL_212:
              std::__shared_weak_count::__release_shared[abi:ne200100](v76);
              goto LABEL_213;
            }

            v78 = *(*v11 + 28) < *(v79 + 28);
          }

          if (v76)
          {
            goto LABEL_212;
          }

LABEL_213:
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 2;
          if (v78)
          {
            while (1)
            {
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v82 = *(v69 - 2);
              v81 = *(v69 - 1);
              if (v81)
              {
                atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v80 = 0;
              if (v11 && v82)
              {
                if (!*v11 || (v83 = *v82) == 0)
                {
                  v80 = 0;
                  if (!v81)
                  {
                    goto LABEL_232;
                  }

LABEL_231:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v81);
                  goto LABEL_232;
                }

                v80 = *(*v11 + 28) < *(v83 + 28);
              }

              if (v81)
              {
                goto LABEL_231;
              }

LABEL_232:
              if (v55)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v55);
              }

              v69 -= 2;
              if (!v80)
              {
                goto LABEL_235;
              }
            }
          }
        }
      }

      v84 = (v7 - 2);
      if (v7 - 2 != a1)
      {
        v85 = *v84;
        *v84 = 0;
        *(v7 - 1) = 0;
        v86 = a1[1];
        *a1 = v85;
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }
      }

      a4 = 0;
      v87 = *(v7 - 1);
      *(v7 - 2) = v11;
      *(v7 - 1) = v55;
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        a4 = 0;
      }
    }
  }

  if (v7 == a2)
  {
    return;
  }

  v121 = (v8 - 2) >> 1;
  v122 = v121;
  do
  {
    v123 = v122;
    if (v121 < v122)
    {
      goto LABEL_397;
    }

    v124 = (2 * v122) | 1;
    v125 = &a1[2 * v124];
    if (2 * v122 + 2 < v8)
    {
      v126 = *v125;
      v127 = v125[1];
      if (v127)
      {
        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v129 = v125[2];
      v128 = v125[3];
      if (v128)
      {
        atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v126)
      {
        v130 = v129 == 0;
      }

      else
      {
        v130 = 1;
      }

      if (!v130 && (v131 = *v126) != 0 && (v132 = *v129) != 0)
      {
        v133 = *(v131 + 28) < *(v132 + 28);
        if (!v128)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v133 = 0;
        if (!v128)
        {
LABEL_331:
          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }

          if (v133)
          {
            v125 += 2;
            v124 = 2 * v123 + 2;
          }

          goto LABEL_335;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v128);
      goto LABEL_331;
    }

LABEL_335:
    v134 = *v125;
    v135 = v125[1];
    if (v135)
    {
      atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v136 = &a1[2 * v123];
    v138 = *v136;
    v137 = v136[1];
    if (v137)
    {
      atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v134)
    {
      v139 = v138 == 0;
    }

    else
    {
      v139 = 1;
    }

    if (v139 || (v140 = *v134) == 0 || (v141 = *v138) == 0)
    {
      v142 = 0;
      if (!v137)
      {
        goto LABEL_349;
      }

LABEL_348:
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      goto LABEL_349;
    }

    v142 = *(v140 + 28) < *(v141 + 28);
    if (v137)
    {
      goto LABEL_348;
    }

LABEL_349:
    if (v135)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }

    a2 = v235;
    if (!v142)
    {
      v231 = v123;
      v144 = *v136;
      v143 = v136[1];
      *v136 = 0;
      v136[1] = 0;
      while (1)
      {
        v145 = v125;
        v146 = *v125;
        *v125 = 0;
        v125[1] = 0;
        v147 = v136[1];
        *v136 = v146;
        if (v147)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v147);
        }

        if (v121 < v124)
        {
LABEL_395:
          v162 = v145[1];
          *v145 = v144;
          v145[1] = v143;
          a2 = v235;
          v123 = v231;
          if (v162)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v162);
          }

          goto LABEL_397;
        }

        v148 = (2 * v124) | 1;
        v125 = &a1[2 * v148];
        v124 = 2 * v124 + 2;
        if (v124 >= v8)
        {
          v124 = v148;
          goto LABEL_378;
        }

        v149 = *v125;
        v150 = v125[1];
        if (v150)
        {
          atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v152 = v125[2];
        v151 = v125[3];
        if (v151)
        {
          atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v149 && v152 != 0)
        {
          v154 = *v149;
          if (v154)
          {
            v155 = *v152;
            if (v155)
            {
              break;
            }
          }
        }

        v156 = 0;
        if (v151)
        {
          goto LABEL_371;
        }

LABEL_372:
        if (v150)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v150);
        }

        if (v156)
        {
          v125 += 2;
        }

        else
        {
          v124 = v148;
        }

        v121 = (v8 - 2) >> 1;
LABEL_378:
        v157 = *v125;
        v158 = v125[1];
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v143)
        {
          atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v157)
        {
          v159 = v144 == 0;
        }

        else
        {
          v159 = 1;
        }

        if (!v159)
        {
          v160 = *v157;
          if (v160)
          {
            if (*v144)
            {
              v161 = *(v160 + 28) < *(*v144 + 28);
              if (!v143)
              {
                goto LABEL_392;
              }

LABEL_391:
              std::__shared_weak_count::__release_shared[abi:ne200100](v143);
              goto LABEL_392;
            }
          }
        }

        v161 = 0;
        if (v143)
        {
          goto LABEL_391;
        }

LABEL_392:
        if (v158)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
        }

        v136 = v145;
        if (v161)
        {
          goto LABEL_395;
        }
      }

      v156 = *(v154 + 28) < *(v155 + 28);
      if (!v151)
      {
        goto LABEL_372;
      }

LABEL_371:
      std::__shared_weak_count::__release_shared[abi:ne200100](v151);
      goto LABEL_372;
    }

LABEL_397:
    v122 = v123 - 1;
  }

  while (v123);
  do
  {
    if (v8 < 2)
    {
      goto LABEL_472;
    }

    v236 = a2;
    v163 = 0;
    v232 = *a1;
    v234 = a1[1];
    v164 = a1;
    *a1 = 0;
    a1[1] = 0;
    do
    {
      v165 = &v164[2 * v163];
      v166 = (v165 + 2);
      v167 = (2 * v163) | 1;
      v168 = 2 * v163 + 2;
      if (v168 >= v8)
      {
        v163 = (2 * v163) | 1;
        goto LABEL_421;
      }

      v169 = v165[2];
      v170 = v165[3];
      if (v170)
      {
        atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v172 = v165[4];
      v171 = v165[5];
      if (v171)
      {
        atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v169)
      {
        v173 = v172 == 0;
      }

      else
      {
        v173 = 1;
      }

      if (!v173)
      {
        v174 = *v169;
        if (v174)
        {
          v175 = *v172;
          if (v175)
          {
            v176 = *(v174 + 28) < *(v175 + 28);
            if (!v171)
            {
              goto LABEL_416;
            }

LABEL_415:
            std::__shared_weak_count::__release_shared[abi:ne200100](v171);
            goto LABEL_416;
          }
        }
      }

      v176 = 0;
      if (v171)
      {
        goto LABEL_415;
      }

LABEL_416:
      if (v170)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v170);
      }

      if (v176)
      {
        v166 = (v165 + 4);
        v163 = v168;
      }

      else
      {
        v163 = v167;
      }

LABEL_421:
      v177 = *v166;
      *v166 = 0;
      v166[1] = 0;
      v178 = v164[1];
      *v164 = v177;
      if (v178)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v178);
      }

      v164 = v166;
    }

    while (v163 <= ((v8 - 2) >> 1));
    a2 = v236;
    if (v166 == v236 - 2)
    {
      v195 = v166[1];
      *v166 = v232;
      v166[1] = v234;
      if (v195)
      {
        goto LABEL_471;
      }

      goto LABEL_472;
    }

    v179 = *(v236 - 1);
    *(v236 - 2) = 0;
    *(v236 - 1) = 0;
    v180 = v166[1];
    *v166 = v179;
    if (v180)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v180);
    }

    v181 = *(v236 - 1);
    *(v236 - 2) = v232;
    *(v236 - 1) = v234;
    if (v181)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v181);
    }

    v182 = ((v166 + 2) - a1) >> 4;
    v183 = v182 < 2;
    v184 = v182 - 2;
    if (v183)
    {
      goto LABEL_472;
    }

    v185 = v184 >> 1;
    v186 = &a1[2 * (v184 >> 1)];
    v187 = *v186;
    v188 = v186[1];
    if (v188)
    {
      atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v190 = *v166;
    v189 = v166[1];
    if (v189)
    {
      atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v187)
    {
      v191 = v190 == 0;
    }

    else
    {
      v191 = 1;
    }

    if (v191 || (v192 = *v187) == 0 || (v193 = *v190) == 0)
    {
      v194 = 0;
      if (!v189)
      {
        goto LABEL_446;
      }

LABEL_445:
      std::__shared_weak_count::__release_shared[abi:ne200100](v189);
      goto LABEL_446;
    }

    v194 = *(v192 + 28) < *(v193 + 28);
    if (v189)
    {
      goto LABEL_445;
    }

LABEL_446:
    if (v188)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v188);
    }

    a2 = v236;
    if (!v194)
    {
      goto LABEL_472;
    }

    v196 = *v166;
    v197 = v166[1];
    *v166 = 0;
    v166[1] = 0;
    while (2)
    {
      v198 = v186;
      v199 = *v186;
      *v186 = 0;
      v186[1] = 0;
      v200 = v166[1];
      *v166 = v199;
      if (v200)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v200);
      }

      if (v185)
      {
        v185 = (v185 - 1) >> 1;
        v186 = &a1[2 * v185];
        v201 = *v186;
        v202 = v186[1];
        if (v202)
        {
          atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v197)
        {
          atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v201)
        {
          v203 = v196 == 0;
        }

        else
        {
          v203 = 1;
        }

        if (!v203 && (v204 = *v201) != 0 && *v196)
        {
          v205 = *(v204 + 28) < *(*v196 + 28);
          if (!v197)
          {
LABEL_467:
            if (v202)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v202);
            }

            v166 = v198;
            if (!v205)
            {
              break;
            }

            continue;
          }
        }

        else
        {
          v205 = 0;
          if (!v197)
          {
            goto LABEL_467;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        goto LABEL_467;
      }

      break;
    }

    v195 = v198[1];
    *v198 = v196;
    v198[1] = v197;
    a2 = v236;
    if (v195)
    {
LABEL_471:
      std::__shared_weak_count::__release_shared[abi:ne200100](v195);
    }

LABEL_472:
    a2 -= 2;
    v183 = v8-- > 2;
  }

  while (v183);
}

uint64_t *AudioMetadataMemoryPool::lookup<AudioMetadataObject>(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = a3;
  v8 = &v7;
  if (!std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 48), a3, &v8)[5])
  {
    __assert_rtn("lookup", "AudioMetadataTimeline.hpp", 109, "mObjects[rawPtr] != nullptr");
  }

  v8 = &v7;
  result = std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 48), v7, &v8);
  v6 = result[6];
  *a1 = result[5];
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*,false>(char *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = (a2 - 16);
  v184 = (a2 - 8);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = &a2[-v8] >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v108 = (v8 + 16);
          v109 = (v8 + 24);
          v110 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v8 + 16), *(v8 + 24), v8);
          v111 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v8 + 16);
          if (v110)
          {
            v112 = (v8 + 8);
            v113 = *v8;
            if (v111)
            {
              *v8 = *v7;
              *v7 = v113;
            }

            else
            {
              v177 = *(v8 + 8);
              *v8 = *(v8 + 16);
              *(v8 + 16) = v113;
              *(v8 + 24) = v177;
              if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v8 + 16))
              {
                return;
              }

              v178 = *v108;
              *v108 = *v7;
              *v7 = v178;
              v112 = (v8 + 24);
            }

            v109 = v184;
          }

          else
          {
            if (!v111)
            {
              return;
            }

            v165 = *(v8 + 16);
            *(v8 + 16) = *v7;
            *v7 = v165;
            v166 = *(v8 + 24);
            *(v8 + 24) = *v184;
            *v184 = v166;
            if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v8 + 16), *(v8 + 24), v8))
            {
              return;
            }

            v167 = *v8;
            *v8 = *(v8 + 16);
            *(v8 + 16) = v167;
            v112 = (v8 + 8);
          }

          v179 = *v112;
          *v112 = *v109;
          *v109 = v179;
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*,0>(v8, (v8 + 16), (v8 + 32), v7);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48), v7);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v8))
        {
          v106 = *v8;
          *v8 = *v7;
          *v7 = v106;
          v107 = *(v8 + 8);
          *(v8 + 8) = *v184;
          *v184 = v107;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v128 = v10 >> 1;
      v129 = v10 >> 1;
      do
      {
        v130 = v129;
        if (v128 >= v129)
        {
          v131 = (2 * v129) | 1;
          v132 = &a1[16 * v131];
          if (2 * v129 + 2 < v9 && sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v132, *(v132 + 1), (v132 + 16)))
          {
            v132 += 16;
            v131 = 2 * v130 + 2;
          }

          v133 = &a1[16 * v130];
          if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v132, *(v132 + 1), v133))
          {
            v188 = *v133;
            *v133 = 0;
            *(v133 + 1) = 0;
            do
            {
              v134 = v132;
              v135 = *v132;
              *v132 = 0;
              *(v132 + 1) = 0;
              v136 = *(v133 + 1);
              *v133 = v135;
              if (v136)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v136);
              }

              if (v128 < v131)
              {
                break;
              }

              v137 = (2 * v131) | 1;
              v132 = &a1[16 * v137];
              v138 = 2 * v131 + 2;
              if (v138 < v9 && sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v132, *(v132 + 1), (v132 + 16)))
              {
                v132 += 16;
                v137 = v138;
              }

              v133 = v134;
              v131 = v137;
            }

            while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v132, *(v132 + 1), &v188));
            v139 = v188;
            v188 = 0uLL;
            v140 = *(v134 + 1);
            *v134 = v139;
            if (v140)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v140);
            }

            if (*(&v188 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v188 + 1));
            }
          }
        }

        v129 = v130 - 1;
      }

      while (v130);
      while (2)
      {
        if (v9 >= 2)
        {
          v141 = 0;
          v142 = *a1;
          v186 = *(a1 + 1);
          v143 = a1;
          *a1 = 0;
          *(a1 + 1) = 0;
          do
          {
            v144 = &v143[16 * v141];
            v145 = (v144 + 16);
            v146 = (2 * v141) | 1;
            v147 = 2 * v141 + 2;
            if (v147 >= v9)
            {
              v141 = (2 * v141) | 1;
            }

            else
            {
              v148 = (v144 + 32);
              if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v144 + 2), *(v144 + 3), (v144 + 32)))
              {
                v145 = v148;
                v141 = v147;
              }

              else
              {
                v141 = v146;
              }
            }

            v149 = *v145;
            *v145 = 0;
            *(v145 + 8) = 0;
            v150 = *(v143 + 1);
            *v143 = v149;
            if (v150)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v150);
            }

            v143 = v145;
          }

          while (v141 <= ((v9 - 2) >> 1));
          if (v145 == a2 - 16)
          {
            v164 = *(v145 + 8);
            *v145 = v142;
            *(v145 + 8) = v186;
            if (!v164)
            {
              goto LABEL_190;
            }
          }

          else
          {
            v151 = *(a2 - 1);
            *(a2 - 2) = 0;
            *(a2 - 1) = 0;
            v152 = *(v145 + 8);
            *v145 = v151;
            if (v152)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v152);
            }

            v153 = *(a2 - 1);
            *(a2 - 2) = v142;
            *(a2 - 1) = v186;
            if (v153)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v153);
            }

            v154 = (v145 + 16 - a1) >> 4;
            v155 = v154 < 2;
            v156 = v154 - 2;
            if (v155)
            {
              goto LABEL_190;
            }

            v157 = v156 >> 1;
            v158 = &a1[16 * (v156 >> 1)];
            if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v158, *(v158 + 1), v145))
            {
              goto LABEL_190;
            }

            v188 = *v145;
            *v145 = 0;
            *(v145 + 8) = 0;
            do
            {
              v159 = v158;
              v160 = *v158;
              *v158 = 0;
              *(v158 + 1) = 0;
              v161 = *(v145 + 8);
              *v145 = v160;
              if (v161)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v161);
              }

              if (!v157)
              {
                break;
              }

              v157 = (v157 - 1) >> 1;
              v158 = &a1[16 * v157];
              v145 = v159;
            }

            while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v158, *(v158 + 1), &v188));
            v162 = v188;
            v188 = 0uLL;
            v163 = *(v159 + 1);
            *v159 = v162;
            if (!v163)
            {
              goto LABEL_190;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v163);
            v164 = *(&v188 + 1);
            if (!*(&v188 + 1))
            {
              goto LABEL_190;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

LABEL_190:
        a2 -= 16;
        v155 = v9-- > 2;
        if (!v155)
        {
          return;
        }

        continue;
      }
    }

    v182 = a3;
    v11 = v9 >> 1;
    v12 = (v8 + 16 * (v9 >> 1));
    if (v9 >= 0x81)
    {
      v13 = (v12 + 1);
      v14 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v12, v12[1], a1);
      v15 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v12);
      if (v14)
      {
        v16 = a1 + 8;
        v17 = *a1;
        if (v15)
        {
          *a1 = *v7;
          *v7 = v17;
          goto LABEL_26;
        }

        v29 = *(a1 + 1);
        *a1 = *v12;
        *v12 = v17;
        v12[1] = v29;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, v12))
        {
          v30 = *v12;
          *v12 = *v7;
          *v7 = v30;
          v16 = (v12 + 1);
LABEL_26:
          v25 = a2 - 8;
LABEL_27:
          v31 = *v16;
          *v16 = *v25;
          *v25 = v31;
        }
      }

      else if (v15)
      {
        v22 = *v12;
        *v12 = *v7;
        *v7 = v22;
        v23 = v12[1];
        v12[1] = *v184;
        *v184 = v23;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v12, v12[1], a1))
        {
          v24 = *a1;
          *a1 = *v12;
          v16 = a1 + 8;
          *v12 = v24;
          v25 = (v12 + 1);
          goto LABEL_27;
        }
      }

      v32 = v12 - 2;
      v33 = v12 - 1;
      v34 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v12 - 2), *(v12 - 1), (a1 + 16));
      v35 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a2 - 4), *(a2 - 3), (v12 - 2));
      if (v34)
      {
        v36 = *(a1 + 2);
        v37 = a1 + 24;
        if (v35)
        {
          *(a1 + 2) = *(a2 - 4);
          *(a2 - 4) = v36;
          goto LABEL_39;
        }

        v44 = *v37;
        *(a1 + 1) = *v32;
        *v32 = v36;
        *(v12 - 1) = v44;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a2 - 4), *(a2 - 3), (v12 - 2)))
        {
          v45 = *v32;
          *v32 = *(a2 - 4);
          *(a2 - 4) = v45;
          v37 = (v12 - 1);
LABEL_39:
          v41 = a2 - 24;
LABEL_40:
          v46 = *v37;
          *v37 = *v41;
          *v41 = v46;
        }
      }

      else if (v35)
      {
        v38 = *v32;
        *v32 = *(a2 - 4);
        *(a2 - 4) = v38;
        v39 = *(v12 - 1);
        *(v12 - 1) = *(a2 - 3);
        *(a2 - 3) = v39;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v32, *(v12 - 1), (a1 + 16)))
        {
          v40 = *(a1 + 2);
          *(a1 + 2) = *v32;
          *v32 = v40;
          v37 = a1 + 24;
          v41 = (v12 - 1);
          goto LABEL_40;
        }
      }

      v180 = v11;
      v47 = v11 + 1;
      v48 = &a1[16 * v11 + 16];
      v49 = v48 + 8;
      v50 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v48, *(v48 + 1), (a1 + 32));
      v51 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a2 - 6), *(a2 - 5), v48);
      if (v50)
      {
        v52 = *(a1 + 4);
        v53 = a1 + 40;
        if (v51)
        {
          *(a1 + 4) = *(a2 - 6);
          *(a2 - 6) = v52;
          goto LABEL_49;
        }

        v57 = *v53;
        *(a1 + 2) = *v48;
        *v48 = v52;
        *(v48 + 1) = v57;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a2 - 6), *(a2 - 5), v48))
        {
          v58 = *v48;
          *v48 = *(a2 - 6);
          *(a2 - 6) = v58;
          v53 = v48 + 8;
LABEL_49:
          v49 = a2 - 40;
LABEL_50:
          v59 = *v53;
          *v53 = *v49;
          *v49 = v59;
        }
      }

      else if (v51)
      {
        v54 = *v48;
        *v48 = *(a2 - 6);
        *(a2 - 6) = v54;
        v55 = *(v48 + 1);
        *(v48 + 1) = *(a2 - 5);
        *(a2 - 5) = v55;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v48, *(v48 + 1), (a1 + 32)))
        {
          v56 = *(a1 + 4);
          *(a1 + 4) = *v48;
          *v48 = v56;
          v53 = a1 + 40;
          goto LABEL_50;
        }
      }

      v60 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v12, v12[1], (v12 - 2));
      v61 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v48, *(v48 + 1), v12);
      if (v60)
      {
        v62 = *v32;
        if (v61)
        {
          *v32 = *v48;
          *v48 = v62;
          v7 = (a2 - 16);
          goto LABEL_59;
        }

        v66 = *(v12 - 1);
        *v32 = *v12;
        *v12 = v62;
        v12[1] = v66;
        v7 = (a2 - 16);
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v48, *(v48 + 1), v12))
        {
          v67 = *v12;
          *v12 = *v48;
          *v48 = v67;
          v33 = v12 + 1;
LABEL_59:
          v68 = &a1[16 * v47];
          v69 = *v33;
          *v33 = *(v68 + 1);
          *(v68 + 1) = v69;
        }
      }

      else
      {
        v7 = (a2 - 16);
        if (v61)
        {
          v63 = *v48;
          v64 = *v12;
          *v12 = *v48;
          *v48 = v64;
          if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v63, *(&v63 + 1), (v12 - 2)))
          {
            v65 = *v32;
            *v32 = *v12;
            *v12 = v65;
            v47 = v180;
            goto LABEL_59;
          }
        }
      }

      v70 = *a1;
      *a1 = *v12;
      v20 = a1 + 8;
      *v12 = v70;
      goto LABEL_61;
    }

    v13 = a1 + 8;
    v18 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*a1, *(a1 + 1), &a1[16 * (v9 >> 1)]);
    v19 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, a1);
    if (v18)
    {
      v20 = (v12 + 1);
      v21 = *v12;
      if (v19)
      {
        *v12 = *v7;
        *v7 = v21;
      }

      else
      {
        v42 = v12[1];
        *v12 = *a1;
        *a1 = v21;
        *(a1 + 1) = v42;
        if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*v7, *v184, a1))
        {
          goto LABEL_62;
        }

        v43 = *a1;
        *a1 = *v7;
        *v7 = v43;
        v20 = a1 + 8;
      }

      v13 = a2 - 8;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_62;
      }

      v26 = *a1;
      *a1 = *v7;
      *v7 = v26;
      v27 = *(a1 + 1);
      *(a1 + 1) = *v184;
      *v184 = v27;
      if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*a1, *(a1 + 1), v12))
      {
        goto LABEL_62;
      }

      v28 = *v12;
      *v12 = *a1;
      *a1 = v28;
      v20 = (v12 + 1);
    }

LABEL_61:
    v71 = *v20;
    *v20 = *v13;
    *v13 = v71;
LABEL_62:
    a3 = v182 - 1;
    if ((a4 & 1) != 0 || sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(a1 - 2), *(a1 - 1), a1))
    {
      v188 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      v72 = a1;
      do
      {
        v73 = v72;
        v74 = *(v72 + 2);
        v72 += 16;
      }

      while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v74, *(v73 + 3), &v188));
      v75 = a2;
      if (v73 == a1)
      {
        v75 = a2;
        do
        {
          if (v72 >= v75)
          {
            break;
          }

          v78 = *(v75 - 2);
          v79 = *(v75 - 1);
          v75 -= 16;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v78, v79, &v188));
      }

      else
      {
        do
        {
          v76 = *(v75 - 2);
          v77 = *(v75 - 1);
          v75 -= 16;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v76, v77, &v188));
      }

      v8 = v72;
      if (v72 < v75)
      {
        v80 = v75;
        do
        {
          v81 = *v8;
          *v8 = *v80;
          *v80 = v81;
          v82 = *(v8 + 8);
          *(v8 + 8) = *(v80 + 1);
          *(v80 + 1) = v82;
          do
          {
            v83 = *(v8 + 16);
            v84 = *(v8 + 24);
            v8 += 16;
          }

          while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v83, v84, &v188));
          do
          {
            v85 = *(v80 - 2);
            v86 = *(v80 - 1);
            v80 -= 16;
          }

          while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v85, v86, &v188));
        }

        while (v8 < v80);
      }

      v87 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v88 = *v87;
        *v87 = 0;
        *(v8 - 8) = 0;
        v89 = *(a1 + 1);
        *a1 = v88;
        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }
      }

      v90 = v188;
      v188 = 0uLL;
      v91 = *(v8 - 8);
      *(v8 - 16) = v90;
      if (v91)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v91);
      }

      if (*(&v188 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v188 + 1));
      }

      if (v72 < v75)
      {
        goto LABEL_88;
      }

      v92 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*>(a1, (v8 - 16));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*>(v8, a2))
      {
        a2 = (v8 - 16);
        if (v92)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v92)
      {
LABEL_88:
        std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>*,false>(a1, (v8 - 16), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v93 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      v94 = v93;
      v183 = v93;
      v95 = *(&v93 + 1);
      if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v93, *(&v93 + 1), v7))
      {
        v8 = a1;
        do
        {
          v8 += 16;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v8));
      }

      else
      {
        v96 = a1 + 16;
        do
        {
          v8 = v96;
          if (v96 >= a2)
          {
            break;
          }

          v97 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v96);
          v96 = (v8 + 16);
        }

        while (!v97);
      }

      v98 = a2;
      if (v8 < a2)
      {
        v98 = a2;
        do
        {
          v98 -= 16;
        }

        while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v98));
      }

      while (v8 < v98)
      {
        v99 = *v8;
        *v8 = *v98;
        *v98 = v99;
        v100 = *(v8 + 8);
        *(v8 + 8) = *(v98 + 1);
        *(v98 + 1) = v100;
        do
        {
          v8 += 16;
        }

        while (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v8));
        do
        {
          v98 -= 16;
        }

        while (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v94, v95, v98));
      }

      v101 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v102 = *v101;
        *v101 = 0;
        *(v8 - 8) = 0;
        v103 = *(a1 + 1);
        *a1 = v102;
        if (v103)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        }
      }

      a4 = 0;
      v104 = *(v8 - 8);
      *(v8 - 16) = v183;
      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
        a4 = 0;
      }
    }
  }

  v114 = (v8 + 16);
  v116 = v8 == a2 || v114 == a2;
  if (a4)
  {
    if (!v116)
    {
      v117 = 0;
      do
      {
        v118 = v8;
        v8 = v114;
        if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v118 + 16), *(v114 + 1), v118))
        {
          v119 = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
          v120 = v119;
          v185 = v119;
          v121 = *(&v119 + 1);
          v122 = v117;
          while (1)
          {
            v123 = &a1[v122];
            v124 = *&a1[v122];
            *v123 = 0;
            *(v123 + 1) = 0;
            v125 = *&a1[v122 + 24];
            *(v123 + 1) = v124;
            if (v125)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v125);
            }

            if (!v122)
            {
              break;
            }

            v122 -= 16;
            if (!sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v120, v121, &a1[v122]))
            {
              v126 = &a1[v122 + 16];
              goto LABEL_139;
            }
          }

          v126 = a1;
LABEL_139:
          v127 = *(v126 + 1);
          *v126 = v185;
          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }
        }

        v114 = (v8 + 16);
        v117 += 16;
      }

      while ((v8 + 16) != a2);
    }
  }

  else if (!v116)
  {
    do
    {
      v168 = a1;
      a1 = v114;
      if (sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(*(v168 + 2), *(v114 + 1), v168))
      {
        v169 = *a1;
        *a1 = 0;
        *(a1 + 1) = 0;
        v170 = v169;
        v187 = v169;
        v171 = *(&v169 + 1);
        v172 = a1;
        do
        {
          v173 = *(v172 - 1);
          *(v172 - 2) = 0;
          *(v172 - 1) = 0;
          v174 = *(v172 + 1);
          *v172 = v173;
          if (v174)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v174);
          }

          v175 = sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>> const&)#1}::operator()(v170, v171, (v172 - 32));
          v172 -= 16;
        }

        while (v175);
        v176 = *(v172 + 1);
        *v172 = v187;
        if (v176)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v176);
        }
      }

      v114 = a1 + 16;
    }

    while (a1 + 16 != a2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,false>(void *a1, void *a2, uint64_t a3, char a4)
{
LABEL_1:
  v228 = a2 - 4;
  v229 = a2 - 2;
  v227 = a2 - 6;
  v7 = a1;
  v235 = a2;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 4;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(v7, (v7 + 2), v229);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(v7, v7 + 2, v7 + 4, v229);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(v7, (v7 + 2), (v7 + 4), v7 + 6, v229);
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
        v88 = *(a2 - 2);
        v89 = *(a2 - 1);
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v91 = *v7;
        v90 = v7[1];
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v92 = 0;
        if (v88 && v91)
        {
          v93 = *v88;
          v92 = v93 && (v94 = *v91) != 0 && *(v93 + 20) < *(v94 + 20);
        }

        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }

        if (v92)
        {
          v225 = *v7;
          *v7 = *(v235 - 2);
          *(v235 - 2) = v225;
          v226 = v7[1];
          v7[1] = *(v235 - 1);
          *(v235 - 1) = v226;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      v95 = v7 + 2;
      v97 = v7 == a2 || v95 == a2;
      if (a4)
      {
        if (v97)
        {
          return;
        }

        v98 = 0;
        v99 = v7;
        while (1)
        {
          v100 = v99;
          v99 = v95;
          v101 = v100[2];
          v102 = v100[3];
          if (v102)
          {
            atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v104 = *v100;
          v103 = v100[1];
          if (v103)
          {
            atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v101 && v104 != 0)
          {
            v106 = *v101;
            if (v106)
            {
              v107 = *v104;
              if (v107)
              {
                break;
              }
            }
          }

          v108 = 0;
          if (v103)
          {
            goto LABEL_283;
          }

LABEL_284:
          if (v102)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v102);
          }

          if (!v108)
          {
            goto LABEL_311;
          }

          v109 = *v99;
          v110 = v100[3];
          v111 = v98;
          *v99 = 0;
          v99[1] = 0;
          do
          {
            v112 = a1 + v111;
            v113 = *(a1 + v111);
            *v112 = 0;
            *(v112 + 1) = 0;
            v114 = *(a1 + v111 + 24);
            *(v112 + 1) = v113;
            if (v114)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v114);
            }

            if (!v111)
            {
              v119 = a1;
              goto LABEL_309;
            }

            if (v110)
            {
              atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v116 = *(a1 + v111 - 16);
            v115 = *(a1 + v111 - 8);
            if (v115)
            {
              atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v117 = 0;
            if (!v109 || !v116)
            {
              goto LABEL_300;
            }

            if (*v109)
            {
              v118 = *v116;
              if (v118)
              {
                v117 = *(*v109 + 20) < *(v118 + 20);
LABEL_300:
                if (!v115)
                {
                  goto LABEL_302;
                }

LABEL_301:
                std::__shared_weak_count::__release_shared[abi:ne200100](v115);
                goto LABEL_302;
              }
            }

            v117 = 0;
            if (v115)
            {
              goto LABEL_301;
            }

LABEL_302:
            if (v110)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v110);
            }

            v111 -= 16;
          }

          while (v117);
          v119 = (a1 + v111 + 16);
LABEL_309:
          v120 = v119[1];
          *v119 = v109;
          v119[1] = v110;
          if (v120)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v120);
          }

LABEL_311:
          v95 = v99 + 2;
          v98 += 16;
          if (v99 + 2 == v235)
          {
            return;
          }
        }

        v108 = *(v106 + 20) < *(v107 + 20);
        if (!v103)
        {
          goto LABEL_284;
        }

LABEL_283:
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        goto LABEL_284;
      }

      if (v97)
      {
        return;
      }

LABEL_475:
      v206 = a1;
      a1 = v95;
      v207 = v206[2];
      v208 = v206[3];
      if (v208)
      {
        atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v210 = *v206;
      v209 = v206[1];
      if (v209)
      {
        atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v207)
      {
        v211 = v210 == 0;
      }

      else
      {
        v211 = 1;
      }

      if (!v211 && (v212 = *v207) != 0 && (v213 = *v210) != 0)
      {
        v214 = *(v212 + 20) < *(v213 + 20);
        if (!v209)
        {
LABEL_489:
          if (v208)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v208);
          }

          if (!v214)
          {
            goto LABEL_514;
          }

          v215 = *a1;
          v216 = v206[3];
          v217 = a1;
          *a1 = 0;
          a1[1] = 0;
          while (1)
          {
            v218 = *(v217 - 1);
            *(v217 - 2) = 0;
            *(v217 - 1) = 0;
            v219 = v217[1];
            *v217 = v218;
            if (v219)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v219);
            }

            if (v216)
            {
              atomic_fetch_add_explicit(&v216->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v221 = *(v217 - 4);
            v220 = *(v217 - 3);
            if (v220)
            {
              atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v222 = 0;
            if (v215 && v221)
            {
              if (!*v215 || (v223 = *v221) == 0)
              {
                v222 = 0;
                if (!v220)
                {
                  goto LABEL_506;
                }

LABEL_505:
                std::__shared_weak_count::__release_shared[abi:ne200100](v220);
                goto LABEL_506;
              }

              v222 = *(*v215 + 20) < *(v223 + 20);
            }

            if (v220)
            {
              goto LABEL_505;
            }

LABEL_506:
            if (v216)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v216);
            }

            v217 -= 2;
            if (!v222)
            {
              v224 = v217[1];
              *v217 = v215;
              v217[1] = v216;
              if (v224)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v224);
              }

LABEL_514:
              v95 = a1 + 2;
              if (a1 + 2 == v235)
              {
                return;
              }

              goto LABEL_475;
            }
          }
        }
      }

      else
      {
        v214 = 0;
        if (!v209)
        {
          goto LABEL_489;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v209);
      goto LABEL_489;
    }

    if (!a3)
    {
      break;
    }

    v9 = &v7[2 * (v8 >> 1)];
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(&a1[2 * (v8 >> 1)], a1, v229);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>(a1, &a1[2 * (v8 >> 1)], v229);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>((a1 + 2), (v9 - 1), v228);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>((a1 + 4), &a1[2 * (v8 >> 1) + 2], v227);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,0>((v9 - 1), &a1[2 * (v8 >> 1)], &a1[2 * (v8 >> 1) + 2]);
      v10 = *a1;
      *a1 = *v9;
      *v9 = v10;
    }

    --a3;
    if (a4)
    {
      v11 = *a1;
LABEL_31:
      v19 = a1[1];
      v20 = a1;
      *a1 = 0;
      a1[1] = 0;
      do
      {
        v21 = v20[2];
        v22 = v20[3];
        v20 += 2;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v21)
        {
          v23 = v11 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (v23 || (v24 = *v21) == 0 || !*v11)
        {
          v25 = 0;
          if (!v19)
          {
            goto LABEL_46;
          }

LABEL_45:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_46;
        }

        v25 = *(v24 + 20) < *(*v11 + 20);
        if (v19)
        {
          goto LABEL_45;
        }

LABEL_46:
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      while (v25);
      v233 = a3;
      v26 = a2;
      if (v20 - 2 != a1)
      {
        while (1)
        {
          v27 = *(v26 - 2);
          v28 = *(v26 - 1);
          v26 -= 2;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v27 && v11 != 0)
          {
            v30 = *v27;
            if (v30)
            {
              if (*v11)
              {
                break;
              }
            }
          }

          v31 = 0;
          if (v19)
          {
            goto LABEL_63;
          }

LABEL_64:
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          if (v31)
          {
            goto LABEL_67;
          }
        }

        v31 = *(v30 + 20) < *(*v11 + 20);
        if (!v19)
        {
          goto LABEL_64;
        }

LABEL_63:
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        goto LABEL_64;
      }

      v26 = a2;
      while (2)
      {
        if (v20 < v26)
        {
          v51 = *(v26 - 2);
          v52 = *(v26 - 1);
          v26 -= 2;
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = 0;
          if (v51 && v11)
          {
            v54 = *v51;
            if (v54 && *v11)
            {
              v53 = *(v54 + 20) < *(*v11 + 20);
              goto LABEL_126;
            }

            v53 = 0;
            if (!v19)
            {
LABEL_128:
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }

              if (v53)
              {
                break;
              }

              continue;
            }
          }

          else
          {
LABEL_126:
            if (!v19)
            {
              goto LABEL_128;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_128;
        }

        break;
      }

LABEL_67:
      v7 = v20;
      if (v20 < v26)
      {
        v32 = v26;
        do
        {
          v33 = *v7;
          *v7 = *v32;
          *v32 = v33;
          v34 = v7[1];
          v7[1] = v32[1];
          v32[1] = v34;
          do
          {
            v35 = v7[2];
            v36 = v7[3];
            v7 += 2;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v35)
            {
              v37 = v11 == 0;
            }

            else
            {
              v37 = 1;
            }

            if (v37 || (v38 = *v35) == 0 || !*v11)
            {
              v39 = 0;
              if (!v19)
              {
                goto LABEL_84;
              }

LABEL_83:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_84;
            }

            v39 = *(v38 + 20) < *(*v11 + 20);
            if (v19)
            {
              goto LABEL_83;
            }

LABEL_84:
            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }
          }

          while (v39);
          do
          {
            v40 = *(v32 - 2);
            v41 = *(v32 - 1);
            v32 -= 2;
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v40)
            {
              v42 = v11 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (v42 || (v43 = *v40) == 0 || !*v11)
            {
              v44 = 0;
              if (!v19)
              {
                goto LABEL_101;
              }

LABEL_100:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_101;
            }

            v44 = *(v43 + 20) < *(*v11 + 20);
            if (v19)
            {
              goto LABEL_100;
            }

LABEL_101:
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }
          }

          while (!v44);
        }

        while (v7 < v32);
      }

      v45 = (v7 - 2);
      if (v7 - 2 != a1)
      {
        v46 = *v45;
        *v45 = 0;
        *(v7 - 1) = 0;
        v47 = a1[1];
        *a1 = v46;
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }
      }

      v48 = *(v7 - 1);
      *(v7 - 2) = v11;
      *(v7 - 1) = v19;
      a2 = v235;
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      v49 = v20 >= v26;
      a3 = v233;
      if (v49)
      {
        v50 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*>(a1, (v7 - 2));
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*>(v7, v235))
        {
          a2 = v7 - 2;
          if (v50)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v50)
        {
          goto LABEL_114;
        }
      }

      else
      {
LABEL_114:
        std::__introsort<std::_ClassicAlgPolicy,void sortAndRemoveDuplicates<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>(std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>> &)::{lambda(std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>> const&)#1} &,std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>*,false>(a1, v7 - 2, v233, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(a1 - 2);
      v13 = *(a1 - 1);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *a1;
      v14 = a1[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = 0;
      if (v12 && v15)
      {
        v17 = *v12;
        v16 = v17 && (v18 = *v15) != 0 && *(v17 + 20) < *(v18 + 20);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v11 = *a1;
      if (v16)
      {
        goto LABEL_31;
      }

      v55 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v57 = *(a2 - 2);
      v56 = *(a2 - 1);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = 0;
      if (v11 && v57)
      {
        v58 = *v11 && (v59 = *v57) != 0 && *(*v11 + 20) < *(v59 + 20);
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v58)
      {
        v7 = a1;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = v7[2];
          v60 = v7[3];
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = 0;
          if (v11 && v61)
          {
            v62 = *v11 && (v63 = *v61) != 0 && *(*v11 + 20) < *(v63 + 20);
          }

          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 2;
        }

        while (!v62);
      }

      else
      {
        v64 = (a1 + 2);
        do
        {
          v7 = v64;
          if (v64 >= a2)
          {
            break;
          }

          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = *v64;
          v65 = v7[1];
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = 0;
          if (v11 && v66)
          {
            v67 = *v11 && (v68 = *v66) != 0 && *(*v11 + 20) < *(v68 + 20);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v64 = (v7 + 2);
        }

        while (!v67);
      }

      v69 = a2;
      if (v7 < a2)
      {
        v69 = a2;
        do
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v71 = *(v69 - 2);
          v70 = *(v69 - 1);
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v72 = 0;
          if (v11 && v71)
          {
            v72 = *v11 && (v73 = *v71) != 0 && *(*v11 + 20) < *(v73 + 20);
          }

          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v69 -= 2;
        }

        while (v72);
      }

LABEL_235:
      if (v7 < v69)
      {
        v74 = *v7;
        *v7 = *v69;
        *v69 = v74;
        v75 = v7[1];
        v7[1] = v69[1];
        v69[1] = v75;
        while (1)
        {
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v77 = v7[2];
          v76 = v7[3];
          if (v76)
          {
            atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v78 = 0;
          if (v11 && v77)
          {
            if (!*v11 || (v79 = *v77) == 0)
            {
              v78 = 0;
              if (!v76)
              {
                goto LABEL_213;
              }

LABEL_212:
              std::__shared_weak_count::__release_shared[abi:ne200100](v76);
              goto LABEL_213;
            }

            v78 = *(*v11 + 20) < *(v79 + 20);
          }

          if (v76)
          {
            goto LABEL_212;
          }

LABEL_213:
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          v7 += 2;
          if (v78)
          {
            while (1)
            {
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v82 = *(v69 - 2);
              v81 = *(v69 - 1);
              if (v81)
              {
                atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v80 = 0;
              if (v11 && v82)
              {
                if (!*v11 || (v83 = *v82) == 0)
                {
                  v80 = 0;
                  if (!v81)
                  {
                    goto LABEL_232;
                  }

LABEL_231:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v81);
                  goto LABEL_232;
                }

                v80 = *(*v11 + 20) < *(v83 + 20);
              }

              if (v81)
              {
                goto LABEL_231;
              }

LABEL_232:
              if (v55)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v55);
              }

              v69 -= 2;
              if (!v80)
              {
                goto LABEL_235;
              }
            }
          }
        }
      }

      v84 = (v7 - 2);
      if (v7 - 2 != a1)
      {
        v85 = *v84;
        *v84 = 0;
        *(v7 - 1) = 0;
        v86 = a1[1];
        *a1 = v85;
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }
      }

      a4 = 0;
      v87 = *(v7 - 1);
      *(v7 - 2) = v11;
      *(v7 - 1) = v55;
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        a4 = 0;
      }
    }
  }

  if (v7 == a2)
  {
    return;
  }

  v121 = (v8 - 2) >> 1;
  v122 = v121;
  do
  {
    v123 = v122;
    if (v121 < v122)
    {
      goto LABEL_397;
    }

    v124 = (2 * v122) | 1;
    v125 = &a1[2 * v124];
    if (2 * v122 + 2 < v8)
    {
      v126 = *v125;
      v127 = v125[1];
      if (v127)
      {
        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v129 = v125[2];
      v128 = v125[3];
      if (v128)
      {
        atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v126)
      {
        v130 = v129 == 0;
      }

      else
      {
        v130 = 1;
      }

      if (!v130 && (v131 = *v126) != 0 && (v132 = *v129) != 0)
      {
        v133 = *(v131 + 20) < *(v132 + 20);
        if (!v128)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v133 = 0;
        if (!v128)
        {
LABEL_331:
          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }

          if (v133)
          {
            v125 += 2;
            v124 = 2 * v123 + 2;
          }

          goto LABEL_335;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v128);
      goto LABEL_331;
    }

LABEL_335:
    v134 = *v125;
    v135 = v125[1];
    if (v135)
    {
      atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v136 = &a1[2 * v123];
    v138 = *v136;
    v137 = v136[1];
    if (v137)
    {
      atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v134)
    {
      v139 = v138 == 0;
    }

    else
    {
      v139 = 1;
    }

    if (v139 || (v140 = *v134) == 0 || (v141 = *v138) == 0)
    {
      v142 = 0;
      if (!v137)
      {
        goto LABEL_349;
      }

LABEL_348:
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      goto LABEL_349;
    }

    v142 = *(v140 + 20) < *(v141 + 20);
    if (v137)
    {
      goto LABEL_348;
    }

LABEL_349:
    if (v135)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }

    a2 = v235;
    if (!v142)
    {
      v231 = v123;
      v144 = *v136;
      v143 = v136[1];
      *v136 = 0;
      v136[1] = 0;
      while (1)
      {
        v145 = v125;
        v146 = *v125;
        *v125 = 0;
        v125[1] = 0;
        v147 = v136[1];
        *v136 = v146;
        if (v147)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v147);
        }

        if (v121 < v124)
        {
LABEL_395:
          v162 = v145[1];
          *v145 = v144;
          v145[1] = v143;
          a2 = v235;
          v123 = v231;
          if (v162)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v162);
          }

          goto LABEL_397;
        }

        v148 = (2 * v124) | 1;
        v125 = &a1[2 * v148];
        v124 = 2 * v124 + 2;
        if (v124 >= v8)
        {
          v124 = v148;
          goto LABEL_378;
        }

        v149 = *v125;
        v150 = v125[1];
        if (v150)
        {
          atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v152 = v125[2];
        v151 = v125[3];
        if (v151)
        {
          atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v149 && v152 != 0)
        {
          v154 = *v149;
          if (v154)
          {
            v155 = *v152;
            if (v155)
            {
              break;
            }
          }
        }

        v156 = 0;
        if (v151)
        {
          goto LABEL_371;
        }

LABEL_372:
        if (v150)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v150);
        }

        if (v156)
        {
          v125 += 2;
        }

        else
        {
          v124 = v148;
        }

        v121 = (v8 - 2) >> 1;
LABEL_378:
        v157 = *v125;
        v158 = v125[1];
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v143)
        {
          atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v157)
        {
          v159 = v144 == 0;
        }

        else
        {
          v159 = 1;
        }

        if (!v159)
        {
          v160 = *v157;
          if (v160)
          {
            if (*v144)
            {
              v161 = *(v160 + 20) < *(*v144 + 20);
              if (!v143)
              {
                goto LABEL_392;
              }

LABEL_391:
              std::__shared_weak_count::__release_shared[abi:ne200100](v143);
              goto LABEL_392;
            }
          }
        }

        v161 = 0;
        if (v143)
        {
          goto LABEL_391;
        }

LABEL_392:
        if (v158)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
        }

        v136 = v145;
        if (v161)
        {
          goto LABEL_395;
        }
      }

      v156 = *(v154 + 20) < *(v155 + 20);
      if (!v151)
      {
        goto LABEL_372;
      }

LABEL_371:
      std::__shared_weak_count::__release_shared[abi:ne200100](v151);
      goto LABEL_372;
    }

LABEL_397:
    v122 = v123 - 1;
  }

  while (v123);
  do
  {
    if (v8 < 2)
    {
      goto LABEL_472;
    }

    v236 = a2;
    v163 = 0;
    v232 = *a1;
    v234 = a1[1];
    v164 = a1;
    *a1 = 0;
    a1[1] = 0;
    do
    {
      v165 = &v164[2 * v163];
      v166 = (v165 + 2);
      v167 = (2 * v163) | 1;
      v168 = 2 * v163 + 2;
      if (v168 >= v8)
      {
        v163 = (2 * v163) | 1;
        goto LABEL_421;
      }

      v169 = v165[2];
      v170 = v165[3];
      if (v170)
      {
        atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v172 = v165[4];
      v171 = v165[5];
      if (v171)
      {
        atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v169)
      {
        v173 = v172 == 0;
      }

      else
      {
        v173 = 1;
      }

      if (!v173)
      {
        v174 = *v169;
        if (v174)
        {
          v175 = *v172;
          if (v175)
          {
            v176 = *(v174 + 20) < *(v175 + 20);
            if (!v171)
            {
              goto LABEL_416;
            }

LABEL_415:
            std::__shared_weak_count::__release_shared[abi:ne200100](v171);
            goto LABEL_416;
          }
        }
      }

      v176 = 0;
      if (v171)
      {
        goto LABEL_415;
      }

LABEL_416:
      if (v170)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v170);
      }

      if (v176)
      {
        v166 = (v165 + 4);
        v163 = v168;
      }

      else
      {
        v163 = v167;
      }

LABEL_421:
      v177 = *v166;
      *v166 = 0;
      v166[1] = 0;
      v178 = v164[1];
      *v164 = v177;
      if (v178)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v178);
      }

      v164 = v166;
    }

    while (v163 <= ((v8 - 2) >> 1));
    a2 = v236;
    if (v166 == v236 - 2)
    {
      v195 = v166[1];
      *v166 = v232;
      v166[1] = v234;
      if (v195)
      {
        goto LABEL_471;
      }

      goto LABEL_472;
    }

    v179 = *(v236 - 1);
    *(v236 - 2) = 0;
    *(v236 - 1) = 0;
    v180 = v166[1];
    *v166 = v179;
    if (v180)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v180);
    }

    v181 = *(v236 - 1);
    *(v236 - 2) = v232;
    *(v236 - 1) = v234;
    if (v181)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v181);
    }

    v182 = ((v166 + 2) - a1) >> 4;
    v183 = v182 < 2;
    v184 = v182 - 2;
    if (v183)
    {
      goto LABEL_472;
    }

    v185 = v184 >> 1;
    v186 = &a1[2 * (v184 >> 1)];
    v187 = *v186;
    v188 = v186[1];
    if (v188)
    {
      atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v190 = *v166;
    v189 = v166[1];
    if (v189)
    {
      atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v187)
    {
      v191 = v190 == 0;
    }

    else
    {
      v191 = 1;
    }

    if (v191 || (v192 = *v187) == 0 || (v193 = *v190) == 0)
    {
      v194 = 0;
      if (!v189)
      {
        goto LABEL_446;
      }

LABEL_445:
      std::__shared_weak_count::__release_shared[abi:ne200100](v189);
      goto LABEL_446;
    }

    v194 = *(v192 + 20) < *(v193 + 20);
    if (v189)
    {
      goto LABEL_445;
    }

LABEL_446:
    if (v188)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v188);
    }

    a2 = v236;
    if (!v194)
    {
      goto LABEL_472;
    }

    v196 = *v166;
    v197 = v166[1];
    *v166 = 0;
    v166[1] = 0;
    while (2)
    {
      v198 = v186;
      v199 = *v186;
      *v186 = 0;
      v186[1] = 0;
      v200 = v166[1];
      *v166 = v199;
      if (v200)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v200);
      }

      if (v185)
      {
        v185 = (v185 - 1) >> 1;
        v186 = &a1[2 * v185];
        v201 = *v186;
        v202 = v186[1];
        if (v202)
        {
          atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v197)
        {
          atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v201)
        {
          v203 = v196 == 0;
        }

        else
        {
          v203 = 1;
        }

        if (!v203 && (v204 = *v201) != 0 && *v196)
        {
          v205 = *(v204 + 20) < *(*v196 + 20);
          if (!v197)
          {
LABEL_467:
            if (v202)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v202);
            }

            v166 = v198;
            if (!v205)
            {
              break;
            }

            continue;
          }
        }

        else
        {
          v205 = 0;
          if (!v197)
          {
            goto LABEL_467;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v197);
        goto LABEL_467;
      }

      break;
    }

    v195 = v198[1];
    *v198 = v196;
    v198[1] = v197;
    a2 = v236;
    if (v195)
    {
LABEL_471:
      std::__shared_weak_count::__release_shared[abi:ne200100](v195);
    }

LABEL_472:
    a2 -= 2;
    v183 = v8-- > 2;
  }

  while (v183);
}
Security::CFDictionary *Security::CFDictionary::CFDictionary(Security::CFDictionary *this, const __CFDictionary *a2, Security::MacOSError *a3)
{
  *(Security::CFCopyRef<__CFDictionary const*>::CFCopyRef(this, a2) + 2) = a3;
  if (!a2)
  {
    Security::MacOSError::throwMe(a3);
  }

  return this;
}

CFTypeRef Security::CFRef<__CFNumber const*>::check<void const*>(CFTypeRef cf, Security::MacOSError *a2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFNumberGetTypeID())
    {
      Security::MacOSError::throwMe(a2);
    }
  }

  return cf;
}

CFTypeRef Security::CFRef<__CFData const*>::check<void const*>(CFTypeRef cf, Security::MacOSError *a2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDataGetTypeID())
    {
      Security::MacOSError::throwMe(a2);
    }
  }

  return cf;
}

CFTypeRef Security::CFRef<__CFBoolean const*>::check<void const*>(CFTypeRef cf, Security::MacOSError *a2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFBooleanGetTypeID())
    {
      Security::MacOSError::throwMe(a2);
    }
  }

  return cf;
}

CFTypeRef Security::CFRef<__CFURL const*>::check<void const*>(CFTypeRef cf, Security::MacOSError *a2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFURLGetTypeID())
    {
      Security::MacOSError::throwMe(a2);
    }
  }

  return cf;
}

void *Security::CFCopyRef<void const*>::CFCopyRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

unint64_t Security::cfNumber<unsigned long>(const __CFNumber *a1)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  Value = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
  if (!Value)
  {
    Security::CFError::throwMe(Value);
  }

  return valuePtr;
}

CFTypeRef Security::CFRef<__CFString const*>::check<void const*>(CFTypeRef cf, Security::MacOSError *a2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFStringGetTypeID())
    {
      Security::MacOSError::throwMe(a2);
    }
  }

  return cf;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Security::CFRef<__CFData const*>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *Security::CFCopyRef<__CFDictionary const*>::CFCopyRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void Security::CodeSigning::SecCodeSigner::sign(Security::CodeSigning::SecCodeSigner *this, Security::CodeSigning::SecStaticCode *a2, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = Security::CodeSigning::SecStaticCode::codeDirectory(a2, 0);
  if ((a3 & 2) == 0 || !v6 || (v7 = Security::CodeSigning::SecStaticCode::codeDirectory(a2, 0)) != 0 && (v7[13] & 2) != 0)
  {
    *(a2 + 52) = a3;
    memcpy(__dst, &unk_188967AC8, sizeof(__dst));
    Security::CodeSigning::SecCodeSigner::Signer::Signer(__dst, this, a2);
    v8 = *(this + 4) | a3;
    if (v8)
    {
      v10 = secLogObjForScope("signer");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = this;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%p will remove signature from %p", buf, 0x16u);
      }

      if (*(__dst[1] + 32))
      {
        v19 = 4294900259;
      }

      else
      {
        Security::RefPointer<Security::CodeSigning::DiskRep>::setPointer(&__dst[3], *(__dst[2] + 32));
        if (*(__dst[1] + 300) != 1)
        {
          if ((*(__dst[1] + 249) & 1) == 0)
          {
            v11 = (*(*__dst[3] + 80))(__dst[3]);
            if (v11)
            {
              v36 = 0xAAAAAAAAAAAAAAAALL;
              *&v12 = 0xAAAAAAAAAAAAAAAALL;
              *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v34 = v12;
              v35 = v12;
              v32 = v12;
              v33 = v12;
              v30 = v12;
              v31 = v12;
              v28 = v12;
              v29 = v12;
              v26 = v12;
              v27 = v12;
              *&buf[16] = v12;
              v25 = v12;
              *buf = v12;
              v13 = (*(*__dst[3] + 264))();
              v14 = (*(__dst[0] + 24))(__dst);
              std::set<unsigned int>::set[abi:ne200100](v22, v14);
              (*(*__dst[3] + 40))(__p);
              Security::CodeSigning::MachOEditor::MachOEditor(buf, v13, v11, v22, __p);
              if (v21 < 0)
              {
                operator delete(__p[0]);
              }

              std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v22[1]);
              Security::CodeSigning::MachOEditor::allocate(buf);
            }
          }

          *&v27 = 0xAAAAAAAAAAAAAAAALL;
          *&v15 = 0xAAAAAAAAAAAAAAAALL;
          *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v25 = v15;
          v26 = v15;
          *buf = v15;
          *&buf[16] = v15;
          v16 = (*(*__dst[3] + 264))();
          Security::Mutex::Mutex(&buf[8]);
          if (v16)
          {
            atomic_fetch_add_explicit(v16 + 2, 1u, memory_order_relaxed);
          }

          *buf = v16;
          (*(*v16 + 40))(v16);
          (*(**buf + 48))(*buf);
          Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(buf);
          goto LABEL_23;
        }

        (*(*__dst[3] + 264))(__dst[3]);
        v19 = 4294967292;
      }
    }

    else
    {
      if ((v8 & 0x400) != 0)
      {
        v17 = secLogObjForScope("signer");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = this;
          *&buf[12] = 2048;
          *&buf[14] = a2;
          _os_log_debug_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEBUG, "%p will edit signature of %p", buf, 0x16u);
        }

        v18 = (*(**(__dst[2] + 32) + 16))(*(__dst[2] + 32));
        Security::RefPointer<Security::CodeSigning::DiskRep>::setPointer(&__dst[3], v18);
        if (*(__dst[1] + 249) == 1)
        {
          Security::CodeSigning::SecCodeSigner::Signer::prepareForEdit(__dst);
        }

        (*(*__dst[3] + 80))(__dst[3]);
        Security::CodeSigning::SecCodeSigner::Signer::prepareForEdit(__dst);
      }

      if ((*(*this + 80))(this))
      {
        v9 = secLogObjForScope("signer");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218496;
          *&buf[4] = this;
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 1024;
          *&buf[24] = a3;
          _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "%p will sign %p (flags 0x%x)", buf, 0x1Cu);
        }

        Security::CodeSigning::SecCodeSigner::Signer::sign(__dst, *(this + 4) & 0x1000000 | a3);
LABEL_23:
        Security::CodeSigning::SecStaticCode::resetValidity(a2);
        Security::CodeSigning::SecCodeSigner::Signer::~Signer(__dst);
        return;
      }

      v19 = 4294900225;
    }

    Security::MacOSError::throwMe(v19);
  }
}

void sub_188933C48(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, ...)
{
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a14);
  MEMORY[0x18CFD9760](v14, 0x10B3C408FE6E862);
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(&STACK[0x210]);
  Security::CodeSigning::SecCodeSigner::Signer::~Signer(v16);
  _Unwind_Resume(a1);
}

Security::CodeSigning::SecCodeSigner::Signer *Security::CodeSigning::SecCodeSigner::Signer::Signer(Security::CodeSigning::SecCodeSigner::Signer *this, Security::CodeSigning::SecCodeSigner *a2, Security::CodeSigning::SecStaticCode *a3)
{
  *this = &unk_1EFA8BD98;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  Security::Mutex::Mutex((this + 32));
  *(this + 15) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 13) = 0;
  *(this + 14) = this + 120;
  *(this + 136) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 200) = 0u;
  *(this + 29) = this + 240;
  *(this + 35) = 0;
  *(this + 34) = 0;
  *(this + 33) = this + 272;
  *(this + 37) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 39) = this + 320;
  *(this + 346) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = this + 384;
  Security::Mutex::Mutex((this + 400));
  *(this + 345) = ((*(*this + 16))(this) & 0x80) != 0;
  return this;
}

void sub_188933E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  Security::Mutex::~Mutex((v16 + 280));
  std::__tree<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>>>::destroy(*(v10 + 384));
  Security::CFRef<__CFArray const*>::~CFRef((v16 + 240));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v10 + 320));
  std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>>>::destroy(*(v10 + 272));
  std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::destroy(*(v10 + 240));
  Security::CFRef<__CFData const*>::~CFRef(v14);
  a10 = (v16 + 72);
  std::vector<Security::CFRef<__CFData const*>>::__destroy_vector::operator()[abi:ne200100](&a10);
  Security::CFRef<__CFData const*>::~CFRef(v13);
  if (*(v10 + 183) < 0)
  {
    operator delete(*(v10 + 160));
  }

  if (*(v10 + 159) < 0)
  {
    operator delete(*v15);
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v10 + 120));
  Security::CFRef<__CFData const*>::~CFRef((v10 + 104));
  Security::CFRef<__CFDictionary const*>::~CFRef(v12);
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(v11);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::SecCodeSigner::Signer::~Signer(Security::CodeSigning::SecCodeSigner::Signer *this)
{
  *this = &unk_1EFA8BD98;
  free(*(this + 37));
  Security::Mutex::~Mutex((this + 400));
  std::__tree<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>>>::destroy(*(this + 48));
  Security::CFRef<__CFArray const*>::~CFRef(this + 45);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 40));
  std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>>>::destroy(*(this + 34));
  std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::destroy(*(this + 30));
  Security::CFRef<__CFData const*>::~CFRef(this + 27);
  v2 = (this + 192);
  std::vector<Security::CFRef<__CFData const*>>::__destroy_vector::operator()[abi:ne200100](&v2);
  Security::CFRef<__CFData const*>::~CFRef(this + 23);
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 15));
  Security::CFRef<__CFData const*>::~CFRef(this + 13);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 12);
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 24);
}

void std::__tree<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>>>::destroy(*a1);
    std::__tree<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(v2 + 8));
      MEMORY[0x18CFD9760](v2, 0x1020C4062D53EE8);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,unsigned int>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::destroy(*a1);
    std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void Security::CodeSigning::SecCodeSigner::returnDetachedSignature(CFTypeRef *this, Security::BlobCore *a2, Security::CodeSigning::SecCodeSigner::Signer *a3)
{
  v5 = CFGetTypeID(this[4]);
  if (v5 == CFURLGetTypeID())
  {
    Security::cfString(__p, this[4]);
    v15 = 0xAAAAAAAAFFFFFFFFLL;
    if (v14 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    Security::UnixPlusPlus::FileDesc::open(&v15, v6, 1537, 438);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    Security::UnixPlusPlus::FileDesc::writeAll(&v15, a2, bswap32(*(a2 + 1)));
    Security::UnixPlusPlus::FileDesc::closeAndLog(&v15);
  }

  else
  {
    v7 = CFGetTypeID(this[4]);
    TypeID = CFDataGetTypeID();
    v9 = this[4];
    if (v7 == TypeID)
    {
      v10 = bswap32(*(a2 + 1));

      CFDataAppendBytes(v9, a2, v10);
    }

    else
    {
      v11 = CFGetTypeID(v9);
      if (v11 == CFNullGetTypeID())
      {
        v12 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "Platform does not support the detached signature database", __p, 2u);
        }

        Security::MacOSError::throwMe(0xFFFFFFFCLL);
      }
    }
  }
}

void *__Block_byref_object_copy__18077(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void *__Block_byref_object_copy__13(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

__CFData *Security::Blob<Security::CodeSigning::EntitlementDERBlob,4208882034u>::blobify(const __CFData *a1)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  Length = CFDataGetLength(a1);
  CFDataSetLength(Mutable, Length + 8);
  if (!Mutable)
  {
    Security::MacOSError::throwMe(0xFFFFFF94);
  }

  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v5 = CFDataGetLength(a1);
  *MutableBytePtr = 1920065274;
  *(MutableBytePtr + 1) = bswap32(v5 + 8);
  BytePtr = CFDataGetBytePtr(a1);
  v7 = CFDataGetLength(a1);
  memcpy(MutableBytePtr + 8, BytePtr, v7);
  return Mutable;
}

CFHashCode Security::CodeSigning::SecStaticCode::hash(CFDataRef *this)
{
  v2 = Security::CodeSigning::SecStaticCode::cdHash(this);
  if (v2)
  {

    return CFHash(v2);
  }

  else
  {
    v5 = (*(*this[4] + 48))(this[4]);
    v4 = CFHash(v5);
    Security::CFRef<__CFURL const*>::~CFRef(&v5);
    return v4;
  }
}

void sub_18893449C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFURL const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

BOOL Security::CodeSigning::SecStaticCode::equal(CFDataRef *this, CFDataRef *a2)
{
  v4 = Security::CodeSigning::SecStaticCode::cdHash(this);
  v5 = Security::CodeSigning::SecStaticCode::cdHash(a2);
  if (v4 | v5)
  {
    v6 = 0;
    if (v4 && v5)
    {
      return CFEqual(v4, v5) != 0;
    }
  }

  else
  {
    v9 = (*(*this[4] + 48))(this[4]);
    v8 = (*(*a2[4] + 48))(a2[4]);
    v6 = CFEqual(v9, v8) != 0;
    Security::CFRef<__CFURL const*>::~CFRef(&v8);
    Security::CFRef<__CFURL const*>::~CFRef(&v9);
  }

  return v6;
}

void sub_1889345A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  Security::CFRef<__CFURL const*>::~CFRef(&a9);
  Security::CFRef<__CFURL const*>::~CFRef(&a10);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::SecStaticCode::CollectingContext::throwMe(Security::CodeSigning::SecStaticCode::CollectingContext *this)
{
  exception = __cxa_allocate_exception(0xA0uLL);
  v3 = *(this + 6);
  v4 = *(this + 2);
  if (v4)
  {
    CFRetain(v4);
    v5 = *(this + 2);
  }

  else
  {
    v5 = 0;
  }

  Security::CodeSigning::CSError::CSError(exception, v3, v5);
}

Security::MacOSError *Security::CodeSigning::CSError::CSError(Security::CodeSigning::CSError *this, int a2, const __CFDictionary *a3)
{
  result = Security::MacOSError::MacOSError(this, a2);
  *result = &unk_1EFA8C310;
  *(result + 19) = a3;
  return result;
}

Security::UnixError *Security::CodeSigning::SecStaticCode::CollectingContext::reportProblem(Security::CodeSigning::SecStaticCode::CollectingContext *this, int a2, const __CFString *a3, const void *a4)
{
  v8 = (this + 32);
  v15 = this + 32;
  v9 = pthread_mutex_lock((this + 32));
  if (v9)
  {
    Security::UnixError::throwMe(v9);
  }

  if (*(this + 6))
  {
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(this + 6) = a2;
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  CFMutableDictionary = *(this + 2);
  if (!CFMutableDictionary)
  {
    CFMutableDictionary = Security::makeCFMutableDictionary(v9);
    v11 = *(this + 2);
    if (v11)
    {
      CFRelease(v11);
    }

    *(this + 2) = CFMutableDictionary;
  }

  Value = CFDictionaryGetValue(CFMutableDictionary, a3);
  if (!Value)
  {
    Value = Security::makeCFMutableArray(0, v12, v15, 0xAAAAAAAAAAAAAA01);
    if (!Value)
    {
      Security::CFError::throwMe(0);
    }

    CFDictionaryAddValue(*(this + 2), a3, Value);
    CFRelease(Value);
  }

  CFArrayAppendValue(Value, a4);
LABEL_14:
  result = pthread_mutex_unlock(v8);
  if (result)
  {
    Security::UnixError::throwMe(result);
  }

  return result;
}

void Security::CodeSigning::SecStaticCode::CollectingContext::~CollectingContext(Security::CodeSigning::SecStaticCode::CollectingContext *this)
{
  *this = &unk_1EFA8BB90;
  v1 = (this + 16);
  Security::Mutex::~Mutex((this + 32));
  Security::CFRef<__CFDictionary *>::~CFRef(v1);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8BB90;
  v1 = (this + 16);
  Security::Mutex::~Mutex((this + 32));
  Security::CFRef<__CFDictionary *>::~CFRef(v1);
}

void Security::CodeSigning::SecStaticCode::initializeFromParent(Security::CodeSigning::SecStaticCode *this, const Security::CodeSigning::SecStaticCode *a2)
{
  *(this + 40) = a2;
  *(this + 74) = *(a2 + 74);
  if (*(a2 + 75))
  {
    operator new();
  }
}

void Security::CodeSigning::SecStaticCode::prepareProgress(Security::CodeSigning::SecStaticCode *this, int a2)
{
  v4 = *(this + 39);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN8Security11CodeSigning13SecStaticCode15prepareProgressEj_block_invoke;
  block[3] = &__block_descriptor_tmp_18101;
  block[4] = this;
  dispatch_sync(v4, block);
  if ((*(this + 211) & 0x10) != 0)
  {
    *(this + 53) = a2;
    *(this + 54) = 0;
  }
}

void Security::CodeSigning::SecStaticCode::reportProgress(Security::CodeSigning::SecStaticCode *this)
{
  if (*(this + 74) && (*(this + 211) & 0x10) != 0)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    v1 = *(this + 39);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN8Security11CodeSigning13SecStaticCode14reportProgressEj_block_invoke;
    block[3] = &unk_1E70E4AD8;
    block[4] = &v4;
    block[5] = this;
    v3 = 1;
    dispatch_sync(v1, block);
    if (*(v5 + 24) == 1)
    {
      Security::MacOSError::throwMe(0xFFFEFA42);
    }

    _Block_object_dispose(&v4, 8);
  }
}

const void **___ZN8Security11CodeSigning13SecStaticCode14reportProgressEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 220) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  *(v1 + 216) += *(a1 + 48);
  v2 = *(v1 + 592);
  v3 = Security::SecCFObject::handle(v1, 0);
  Security::CFTemp<__CFDictionary const*>::CFTemp(&v5, "{current=%d,total=%d}", *(v1 + 216), *(v1 + 212));
  (*(v2 + 16))(v2, v3, @"progress", v5);
  return Security::CFRef<__CFDictionary const*>::~CFRef(&v5);
}

void sub_188934BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Security::CFRef<__CFDictionary const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const void *Security::CFDictionary::get<__CFArray const*>(uint64_t a1, const char *a2)
{
  Security::CFTempString::CFTempString<char const*>(&key, a2);
  Value = CFDictionaryGetValue(*a1, key);
  v4 = Value;
  if (Value)
  {
    v5 = *(a1 + 8);
    v6 = CFGetTypeID(Value);
    if (v6 != CFArrayGetTypeID())
    {
      Security::MacOSError::throwMe(v5);
    }
  }

  Security::CFRef<__CFString const*>::~CFRef(&key);
  return v4;
}

void sub_188934C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFString const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

uint64_t *Security::CodeSigning::addError(Security::CodeSigning *this, uint64_t *a2, void *a3)
{
  v5 = CFGetTypeID(this);
  result = CFNumberGetTypeID();
  if (v5 == result)
  {
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(this, kCFNumberSInt64Type, &valuePtr);
    v7 = valuePtr;
    return std::__tree<int>::__emplace_unique_key_args<int,int const&>(a2, valuePtr, &v7);
  }

  return result;
}

CFTypeRef *Security::CodeSigning::SecStaticCode::detachedSignature(CFTypeRef *this, const __CFData *a2)
{
  if (a2)
  {
    Security::CFRef<__CFArray const*>::operator=(this + 17, a2);
    operator new();
  }

  v3 = this[17];
  if (v3)
  {
    CFRelease(v3);
  }

  this[17] = 0;
  v4 = (*(*this[4] + 16))(this[4]);
  Security::RefPointer<Security::CodeSigning::DiskRep>::setPointer((this + 4), v4);
  return this;
}

void sub_188935038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v16 + 151) < 0)
  {
    operator delete(*(v17 + 32));
  }

  Security::CFRef<__CFData const*>::~CFRef(v17);
  Security::CFRef<__CFData const*>::~CFRef((v16 + 88));
  Security::CodeSigning::FilterRep::~FilterRep(v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x18CFD9760](v16, v15);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::SecStaticCode::resetValidity(Security::CodeSigning::SecStaticCode *this)
{
  *(this + 176) = 0;
  *(this + 192) = 0;
  *(this + 185) = 0;
  v2 = *(this + 25);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 25) = 0;
  }

  v3 = *(this + 42);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 14);
  *(this + 42) = 0;
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(v4);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = this + 112;
  v5 = *(this + 46);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = 0;
  *(this + 46) = 0;
  v7 = this + 392;
  do
  {
    v8 = *&v7[v6];
    if (v8)
    {
      CFRelease(v8);
    }

    *&v7[v6] = 0;
    v6 += 8;
  }

  while (v6 != 96);
  v9 = *(this + 61);
  if (v9)
  {
    CFRelease(v9);
  }

  *(this + 61) = 0;
  *(this + 496) = 0;
  v10 = *(this + 63);
  if (v10)
  {
    CFRelease(v10);
  }

  *(this + 63) = 0;
  *(this + 512) = 0;
  v11 = *(this + 65);
  if (v11)
  {
    CFRelease(v11);
  }

  *(this + 65) = 0;
  *(this + 66) = 0;
  v12 = *(this + 67);
  if (v12)
  {
    CFRelease(v12);
  }

  *(this + 67) = 0;
  *(this + 576) = 0;
  v13 = *(this + 79);
  if (v13)
  {
    CFRelease(v13);
  }

  *(this + 79) = 0;
  v14 = *(this + 80);
  if (v14)
  {
    CFRelease(v14);
  }

  *(this + 80) = 0;
  *(this + 306) = 0;
  *(this + 77) = 0x7FF8000000000000;
  (*(**(this + 4) + 152))(*(this + 4));
  v15 = *(this + 71);
  if (v15)
  {
    CFRelease(v15);
  }

  *(this + 71) = 0;

  SecCEReleaseContext(this + 70);
}

const UInt8 *Security::CodeSigning::SecStaticCode::validateNonResourceComponents(UInt8 *this)
{
  Security::CodeSigning::SecStaticCode::validateDirectory(this);
  result = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
  v3 = bswap32(*(result + 6));
  if (v3 >= 0xB)
  {
    v4 = 11;
  }

  else
  {
    v4 = v3;
  }

  while (1)
  {
    if (v4 == 3)
    {
      goto LABEL_7;
    }

    if (!v4)
    {
      return result;
    }

    result = (*(*this + 80))(this, v4, 4294900235);
LABEL_7:
    v4 = (v4 - 1);
  }
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL ___ZN8Security11CodeSigning13SecStaticCode18validateExecutableEv_block_invoke(uint64_t a1, uint64_t a2, Security::DynamicHash *a3)
{
  v11 = a2;
  v5 = *(a1 + 40);
  v12 = &v11;
  v6 = std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v5 + 104, a2, &v12);
  BytePtr = CFDataGetBytePtr(v6[5]);
  if ((*(v5 + 209) & 8) == 0)
  {
    v8 = *(BytePtr + 4);
LABEL_5:
    v9 = &BytePtr[bswap32(v8) + *(a1 + 48) * BytePtr[36]];
    goto LABEL_7;
  }

  if (bswap32(*(BytePtr + 2)) >> 8 >= 0x205)
  {
    v8 = *(BytePtr + 23);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_7:
  result = Security::DynamicHash::verify(a3, v9);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 8);
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
      v5 = *(v3 + 32);
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

uint64_t Security::CodeSigning::SecStaticCode::resourceDictionary(Security::CodeSigning::SecStaticCode *this, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 65);
  if (!v2)
  {
    Dictionary = Security::CodeSigning::SecStaticCode::getDictionary(this, 3, a2);
    v9 = Dictionary;
    if (Dictionary && Security::cfscan(Dictionary, "{rules=%Dn,files=%Dn}", v5))
    {
      v6 = secLogObjForScope("staticCode");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(this + 65);
        *buf = 134218240;
        v11 = this;
        v12 = 2048;
        v13 = v8;
        _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "%p loaded ResourceDict %p", buf, 0x16u);
      }

      Security::CFRef<__CFURL const*>::operator=(this + 65, &v9);
      v2 = *(this + 65);
      Security::CFRef<__CFDictionary const*>::~CFRef(&v9);
    }

    else
    {
      Security::CFRef<__CFDictionary const*>::~CFRef(&v9);
      return 0;
    }
  }

  return v2;
}

void sub_1889356F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFDictionary const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const void *Security::cfget<__CFDictionary const*>(const void *Value, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = &a9;
  v15[0] = a2;
  v15[1] = &v14;
  v15[2] = 0;
  v16 = 0;
  v17 = 0;
  while (Security::CFMunge::next(v15))
  {
    if (Security::CFMunge::next(v15) == 46)
    {
      ++v15[0];
    }

    if (!Value)
    {
      return 0;
    }

    v10 = CFGetTypeID(Value);
    if (v10 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    v11 = Security::CFMake::make(v15);
    Value = CFDictionaryGetValue(Value, v11);
    CFRelease(v11);
  }

  if (!Value)
  {
    return 0;
  }

  v12 = CFGetTypeID(Value);
  if (v12 == CFDictionaryGetTypeID())
  {
    return Value;
  }

  else
  {
    return 0;
  }
}

BOOL Security::CodeSigning::itemQualifiesForResourceExemption(Security::CodeSigning *a1, const char *a2)
{
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (Security::CodeSigning::isOnRootFilesystem(a1, a2))
  {
    return 1;
  }

  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "/AppleInternal/");
  if (v2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *v2, *(v2 + 1));
  }

  else
  {
    __s = *v2;
  }

  if (Security::CodeSigning::isPathPrefix(v18, &__s))
  {
    isPathPrefix = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "/System/Volumes/Data/AppleInternal/");
    if (v2[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *v2, *(v2 + 1));
    }

    else
    {
      v14 = *v2;
    }

    if (Security::CodeSigning::isPathPrefix(v15, &v14))
    {
      isPathPrefix = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "/System/AppleInternal/");
      if (v2[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v11, *v2, *(v2 + 1));
      }

      else
      {
        v11 = *v2;
      }

      if (Security::CodeSigning::isPathPrefix(v12, &v11))
      {
        isPathPrefix = 1;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v9, "/usr/local/");
        if (v2[23] < 0)
        {
          std::string::__init_copy_ctor_external(&v8, *v2, *(v2 + 1));
        }

        else
        {
          v8 = *v2;
        }

        if (Security::CodeSigning::isPathPrefix(v9, &v8))
        {
          isPathPrefix = 1;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v6, "/usr/appleinternal/");
          if (v2[23] < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
          }

          else
          {
            __p = *v2;
          }

          isPathPrefix = Security::CodeSigning::isPathPrefix(v6, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v7 < 0)
          {
            operator delete(v6[0]);
          }
        }

        if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v8.__r_.__value_.__l.__data_);
        }

        if (v10 < 0)
        {
          operator delete(v9[0]);
        }
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  return (isPathPrefix & 1) != 0;
}

void sub_188935A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (*(v44 - 65) < 0)
  {
    operator delete(*(v44 - 88));
  }

  if (*(v44 - 41) < 0)
  {
    operator delete(*(v44 - 64));
  }

  if (*(v44 - 17) < 0)
  {
    operator delete(*(v44 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL Security::CodeSigning::SecStaticCode::loadResources(Security::CodeSigning::SecStaticCode *this, const __CFDictionary **a2, const __CFDictionary **a3, unsigned int *a4)
{
  v8 = Security::CodeSigning::SecStaticCode::resourceDictionary(this, 1);
  v9 = Security::CodeSigning::SecStaticCode::resourceBase(this);
  if (!v9)
  {
    if (!v8)
    {
      return v9 != 0;
    }

LABEL_17:
    Security::MacOSError::throwMe(0xFFFEFA10);
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(v8, @"files2");
  if (Value)
  {
    v17 = "rules2";
  }

  else
  {
    v17 = "rules";
  }

  if (Value)
  {
    v18 = "files2";
  }

  else
  {
    v18 = "files";
  }

  if (Value)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  *a2 = Security::cfget<__CFDictionary const*>(v8, v17, v11, v12, v13, v14, v15, v16, v27);
  *a3 = Security::cfget<__CFDictionary const*>(v8, v18, v20, v21, v22, v23, v24, v25, v28);
  *a4 = v19;
  if (!*a2 || !*a3)
  {
    Security::MacOSError::throwMe(0xFFFEFA11);
  }

  return v9 != 0;
}

uint64_t Security::CodeSigning::SecStaticCode::resourceBase(Security::CodeSigning::SecStaticCode *this)
{
  if ((*(this + 576) & 1) == 0)
  {
    memset(__p, 170, sizeof(__p));
    (*(**(this + 4) + 56))(__p);
    v3 = HIBYTE(__p[2]);
    v4 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v3 = __p[1];
    }

    if (v3)
    {
      if (SHIBYTE(__p[2]) >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      CFURL = Security::makeCFURL(v5, 1, 0, v2);
      v7 = *(this + 73);
      if (v7)
      {
        CFRelease(v7);
      }

      *(this + 73) = CFURL;
      v4 = HIBYTE(__p[2]);
    }

    *(this + 576) = 1;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return *(this + 73);
}

void sub_188935D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8Security11CodeSigning13SecStaticCode17validateResourcesEj_block_invoke(uint64_t a1, uint64_t a2, char a3, Security *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = a3 & 0x40;
  v9 = secLogObjForScope("staticCode");
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    if (!v8)
    {
      return;
    }

LABEL_3:
    cf = 0;
    v10 = *(a2 + 88);
    if (v10 != 8)
    {
      if (v10 == 12)
      {
        memset(__b, 170, 0x400uLL);
        if (realpath_DARWIN_EXTSN(*(a2 + 48), __b))
        {
          cf = Security::makeCFURL(__b, 0, 0, v11);
          v12 = secLogObjForScope("staticCode");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v30 = __b;
            _os_log_debug_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEBUG, "Checking symlink target: %s", buf, 0xCu);
          }

LABEL_12:
          v16 = cf;
          cf = 0;
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 0x40000000;
          v26[2] = ___ZN8Security11CodeSigning13SecStaticCode17validateResourcesEj_block_invoke_31;
          v26[3] = &__block_descriptor_tmp_32_18203;
          v26[4] = v7;
          v26[5] = v16;
          v27 = *(a1 + 48);
          Security::CodeSigning::LimitedAsync::perform(*(*(v7 + 75) + 8), *(a1 + 40), v26);
LABEL_20:
          Security::CFRef<__CFURL const*>::~CFRef(&cf);
          return;
        }

        v23 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v24 = *__error();
        *buf = 67109120;
        LODWORD(v30) = v24;
        v19 = "realpath failed checking symlink: %d";
        v20 = buf;
        v21 = v23;
        v22 = 8;
      }

      else
      {
        v17 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v18 = *(a2 + 88);
        if (*(a4 + 23) < 0)
        {
          a4 = *a4;
        }

        __b[0] = 67109378;
        __b[1] = v18;
        LOWORD(__b[2]) = 2080;
        *(&__b[2] + 2) = a4;
        v19 = "Unexpected scan input: %d, %s";
        v20 = __b;
        v21 = v17;
        v22 = 18;
      }

      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, v19, v20, v22);
      goto LABEL_20;
    }

    v13 = Security::CodeSigning::SecStaticCode::resourceBase(v7);
    if (*(a4 + 23) >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    cf = Security::makeCFURL(v15, 0, v13, v14);
    goto LABEL_12;
  }

  v25 = a4;
  if (*(a4 + 23) < 0)
  {
    v25 = *a4;
  }

  __b[0] = 67109378;
  __b[1] = v8 >> 6;
  LOWORD(__b[2]) = 2080;
  *(&__b[2] + 2) = v25;
  _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "Visiting unhandled file: %d, %s", __b, 0x12u);
  if (v8)
  {
    goto LABEL_3;
  }
}

void sub_188936068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Security::CFRef<__CFURL const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

void ___ZN8Security11CodeSigning13SecStaticCode17validateResourcesEj_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = *(*(*(a1 + 32) + 8) + 40);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a4, *(a4 + 8));
  }

  else
  {
    v18 = *a4;
  }

  Security::CFTempString::CFTempString<std::string>(&v19, &v18);
  CFDictionaryRemoveValue(v8, v19);
  Security::CFRef<__CFString const*>::~CFRef(&v19);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v9 = *(a2 + 88) == 12;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1174405120;
  v11[2] = ___ZN8Security11CodeSigning13SecStaticCode17validateResourcesEj_block_invoke_3;
  v11[3] = &__block_descriptor_tmp_36_18145;
  v11[4] = v7;
  v15 = *(a1 + 72);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v16 = *(a1 + 73);
  v10 = *(a1 + 56);
  v13 = *(a1 + 48);
  v17 = v9;
  v14 = *(a1 + 64);
  Security::CodeSigning::LimitedAsync::perform(*(*(v7 + 600) + 8), v10, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1889361E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **Security::CodeSigning::SecStaticCode::checkOptionalResource(const __CFString *this, const void *a2, Security::CodeSigning::SecStaticCode **a3, void *a4)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v6;
  v16 = v6;
  Security::CodeSigning::ResourceSeal::ResourceSeal(&v15, a2);
  if ((BYTE8(v16) & 1) == 0)
  {
    if (this && (v7 = CFGetTypeID(this), v7 == CFStringGetTypeID()))
    {
      v8 = Security::CodeSigning::SecStaticCode::resourceBase(a3[1]);
      if (v8)
      {
        v9 = MEMORY[0x18CFD91B0](0, this, 0, 0, v8);
      }

      else
      {
        v9 = CFURLCreateWithFileSystemPath(0, this, kCFURLPOSIXPathStyle, 0);
      }

      v14 = v9;
      if (v9)
      {
        v10 = 4294900242;
      }

      else
      {
        v10 = 4294900238;
      }

      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = this;
      }

      if (v9)
      {
        v12 = @"SecCSResourceMissing";
      }

      else
      {
        v12 = @"SecCSResourceSeal";
      }

      (*(*a3 + 2))(a3, v10, v12, v11);
      Security::CFRef<__CFURL const*>::~CFRef(&v14);
    }

    else
    {
      (*(*a3 + 2))(a3, 4294900242, @"SecCSResourceSeal", this);
    }
  }

  return Security::CFRef<__CFDictionary const*>::~CFRef(&v15);
}

void sub_1889363A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  Security::CFRef<__CFURL const*>::~CFRef(va);
  Security::CFRef<__CFDictionary const*>::~CFRef(va1);
  _Unwind_Resume(a1);
}

void ___ZN8Security11CodeSigning13SecStaticCode17validateResourcesEj_block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(a1 + 80) != 1)
  {
    goto LABEL_17;
  }

  v3 = Security::CodeSigning::SecStaticCode::resourceBase(*(a1 + 32));
  Security::cfString(&v27, v3);
  v4 = std::string::append(&v27, "/", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = (a1 + 40);
  v7 = *(a1 + 63);
  if (v7 >= 0)
  {
    v8 = (a1 + 40);
  }

  else
  {
    v8 = *(a1 + 40);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 63);
  }

  else
  {
    v9 = *(a1 + 48);
  }

  v10 = std::string::append(&v28, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v26 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  IsValidXattrFile = Security::CodeSigning::pathIsValidXattrFile(__p, "staticCode");
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if (IsValidXattrFile)
    {
      goto LABEL_14;
    }

LABEL_17:
    v14 = 1;
    goto LABEL_18;
  }

  if (!IsValidXattrFile)
  {
    goto LABEL_17;
  }

LABEL_14:
  v13 = secLogObjForScope("staticCode");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 63) < 0)
    {
      v6 = *v6;
    }

    LODWORD(v28.__r_.__value_.__l.__data_) = 136315138;
    *(v28.__r_.__value_.__r.__words + 4) = v6;
    _os_log_debug_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEBUG, "resource validation on xattr file skipped: %s", &v28, 0xCu);
  }

  v14 = 0;
LABEL_18:
  if (*(a1 + 81) != 1)
  {
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v15 = Security::CodeSigning::SecStaticCode::resourceBase(v2);
  if (*(a1 + 63) >= 0)
  {
    v17 = (a1 + 40);
  }

  else
  {
    v17 = *(a1 + 40);
  }

  CFURL = Security::makeCFURL(v17, 0, v15, v16);
  memset(&v28, 170, sizeof(v28));
  Security::cfString(&v28, CFURL);
  if (Security::CodeSigning::itemQualifiesForResourceExemption(&v28, v18))
  {
    v19 = secLogObjForScope("staticCode");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = &v28;
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v28.__r_.__value_.__r.__words[0];
      }

      LODWORD(v27.__r_.__value_.__l.__data_) = 136315138;
      *(v27.__r_.__value_.__r.__words + 4) = v22;
      _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "resource validation on root volume skipped: %s", &v27, 0xCu);
    }

    LOBYTE(v14) = 0;
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  Security::CFRef<__CFURL const*>::~CFRef(&CFURL);
  if (v14)
  {
LABEL_30:
    v20 = secLogObjForScope("staticCode");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v21 = *v21;
      }

      LODWORD(v28.__r_.__value_.__l.__data_) = 136315138;
      *(v28.__r_.__value_.__r.__words + 4) = v21;
      _os_log_debug_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEBUG, "performing resource validation on item: %s", &v28, 0xCu);
    }

    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v23 = *(a1 + 40);
    }

    Security::CodeSigning::SecStaticCode::validateResource(v2);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

LABEL_36:
  Security::CodeSigning::SecStaticCode::reportProgress(v2);
}

void sub_188936720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  Security::CFRef<__CFURL const*>::~CFRef(&a15);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
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

const void **Security::CodeSigning::SecStaticCode::validateResource(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v112 = *MEMORY[0x1E69E9840];
  if (!Security::CodeSigning::SecStaticCode::resourceBase(v1))
  {
    Security::MacOSError::throwMe(0xFFFEFA10);
  }

  v15 = Security::CodeSigning::SecStaticCode::resourceBase(v14);
  if (*(v11 + 23) >= 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = *v11;
  }

  CFURL = Security::makeCFURL(v17, 0, v15, v16);
  v104[0] = CFURL;
  if (v3 >= 2 && (v5 & 0x210) == 0x210)
  {
    __b[0].__r_.__value_.__r.__words[0] = 0xAAAAAAAAFFFFFFFFLL;
    Security::cfString(__p, CFURL);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    Security::UnixPlusPlus::FileDesc::open(__b, v19, 0, 438);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    data_low = LODWORD(__b[0].__r_.__value_.__l.__data_);
    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(LODWORD(__b[0].__r_.__value_.__l.__data_), "com.apple.ResourceFork"))
    {
      Security::cfString(__p, v104[0]);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Disallowed xattr %s found on %s", "com.apple.ResourceFork", v21);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v7 + 16))(v7, 4294900297, @"SecCSResourceHasSidebandData", v22);
    }

    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(data_low, "com.apple.FinderInfo"))
    {
      Security::cfString(__p, v104[0]);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      v24 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Disallowed xattr %s found on %s", "com.apple.FinderInfo", v23);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v7 + 16))(v7, 4294900297, @"SecCSResourceHasSidebandData", v24);
    }

    Security::UnixPlusPlus::FileDesc::closeAndLog(__b);
  }

  (*(**(v14 + 32) + 40))(__p);
  Security::cfString(__b, v104[0]);
  v25 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v26 = HIBYTE(__p[2]);
  }

  else
  {
    v26 = __p[1];
  }

  size = HIBYTE(__b[0].__r_.__value_.__r.__words[2]);
  v28 = SHIBYTE(__b[0].__r_.__value_.__r.__words[2]);
  if ((__b[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __b[0].__r_.__value_.__l.__size_;
  }

  if (v26 != size)
  {
    v31 = 0;
    if (SHIBYTE(__b[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_45;
    }

LABEL_42:
    if (v25 < 0)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (!v31)
    {
      goto LABEL_47;
    }

LABEL_44:
    (*(*v7 + 16))(v7, 4294900242, @"SecCSResourceRecursive", v104[0]);
    return Security::CFRef<__CFURL const*>::~CFRef(v104);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if ((__b[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = __b;
  }

  else
  {
    v30 = __b[0].__r_.__value_.__r.__words[0];
  }

  v31 = memcmp(v29, v30, v26) == 0;
  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_45:
  operator delete(__b[0].__r_.__value_.__l.__data_);
  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    goto LABEL_43;
  }

LABEL_46:
  operator delete(__p[0]);
  if (v31)
  {
    goto LABEL_44;
  }

LABEL_47:
  if (*(v11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, *v11, *(v11 + 8));
  }

  else
  {
    v103 = *v11;
  }

  Security::CFTempString::CFTempString<std::string>(__p, &v103);
  Value = CFDictionaryGetValue(v13, __p[0]);
  Security::CFRef<__CFString const*>::~CFRef(__p);
  if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (Value)
    {
      goto LABEL_52;
    }

LABEL_68:
    if (v3 != 2)
    {
      if (v3 == 1)
      {
        memset(__p, 170, 0x400uLL);
        Security::cfString(__b, v104[0]);
        if ((__b[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = __b;
        }

        else
        {
          v41 = __b[0].__r_.__value_.__r.__words[0];
        }

        v42 = readlink(v41, __p, 0x400uLL);
        if (SHIBYTE(__b[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__b[0].__r_.__value_.__l.__data_);
        }

        if (v42 >= 1)
        {
          return Security::CFRef<__CFURL const*>::~CFRef(v104);
        }
      }

LABEL_123:
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v93, *v11, *(v11 + 8));
      }

      else
      {
        v93 = *v11;
      }

      v59 = Security::CodeSigning::SecStaticCode::resourceBase(v14);
      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = &v93;
      }

      else
      {
        v61 = v93.__r_.__value_.__r.__words[0];
      }

      __p[0] = Security::makeCFURL(v61, 0, v59, v60);
      (*(*v7 + 16))(v7, 4294900242, @"SecCSResourceAdded", __p[0]);
      Security::CFRef<__CFURL const*>::~CFRef(__p);
      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      return Security::CFRef<__CFURL const*>::~CFRef(v104);
    }

    if (*(v11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v94, *v11, *(v11 + 8));
    }

    else
    {
      v94 = *v11;
    }

    v56 = Security::CodeSigning::SecStaticCode::checkfix30814861(v14, &v94, 1);
    v57 = v56;
    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
      if ((v57 & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (!v56)
    {
      goto LABEL_123;
    }

    v58 = secLogObjForScope("validateResource");
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      if (*(v11 + 23) < 0)
      {
        v11 = *v11;
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v11;
      _os_log_debug_impl(&dword_1887D2000, v58, OS_LOG_TYPE_DEBUG, "%s check-fixed (added).", __p, 0xCu);
    }

    return Security::CFRef<__CFURL const*>::~CFRef(v104);
  }

  operator delete(v103.__r_.__value_.__l.__data_);
  if (!Value)
  {
    goto LABEL_68;
  }

LABEL_52:
  *&v33 = 0xAAAAAAAAAAAAAAAALL;
  *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *text = v33;
  *theString = v33;
  Security::CodeSigning::ResourceSeal::ResourceSeal(text, Value);
  if ((theString[1] & 4) != 0)
  {
    if (v9)
    {
      goto LABEL_78;
    }

    memset(v100, 170, sizeof(v100));
    std::string::basic_string[abi:ne200100]<0>(v100, ".framework");
    v43 = *(v11 + 23);
    if ((v43 & 0x8000000000000000) != 0)
    {
      v50 = *(v11 + 8);
      if (v100[2] >= 0)
      {
        v44 = SHIBYTE(v100[2]);
      }

      else
      {
        v44 = v100[1];
      }

      v45 = v50 > v44;
      v46 = v50 - v44;
      if (!v45)
      {
LABEL_110:
        v52 = v104[0];
        requirement = 0;
        if (!SecRequirementCreateWithStringAndErrors(text[1], 0, 0, &requirement))
        {
          v104[1] = 0xAAAAAAAAAAAAAAAALL;
          v53 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
          Security::SecCFObject::allocate(0x298, *(v53 + 200), v54);
          Security::cfString(__p, v52);
          if (SHIBYTE(__p[2]) >= 0)
          {
            v55 = __p;
          }

          else
          {
            v55 = __p[0];
          }

          Security::CodeSigning::DiskRep::bestGuess(v55, 0);
        }

        Security::MacOSError::throwMe(0xFFFEFA11);
      }

      v47 = SHIBYTE(v100[2]) >> 63;
      v11 = *v11;
    }

    else
    {
      if (v100[2] >= 0)
      {
        v44 = SHIBYTE(v100[2]);
      }

      else
      {
        v44 = v100[1];
      }

      v45 = v43 > v44;
      v46 = v43 - v44;
      if (!v45)
      {
        goto LABEL_110;
      }

      v47 = SHIBYTE(v100[2]) >> 63;
    }

    if (v47)
    {
      v51 = v100[0];
    }

    else
    {
      v51 = v100;
    }

    memcmp((v11 + v46), v51, v44);
    goto LABEL_110;
  }

  if (!theString[0])
  {
    v48 = Security::CodeSigning::SecStaticCode::codeDirectory(v14, 1);
    if (!Security::CodeSigning::ResourceSeal::hash(text, v48[37]) || (v9 & 1) != 0)
    {
      goto LABEL_78;
    }

    v108[0] = 0xAAAAAAAAFFFFFFFFLL;
    Security::cfString(__p, v104[0]);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v49 = __p;
    }

    else
    {
      v49 = __p[0];
    }

    Security::UnixPlusPlus::FileDesc::open(v108, v49, 0, 4096);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (LODWORD(v108[0]) == -1)
    {
      if (theString[1])
      {
        Security::UnixPlusPlus::FileDesc::closeAndLog(v108);
        goto LABEL_209;
      }

      (*(*v7 + 16))(v7, 4294900242, @"SecCSResourceMissing", v104[0]);
      goto LABEL_175;
    }

    __p[0] = 0;
    __p[1] = __p;
    __p[2] = 0x2000000000;
    LOBYTE(__p[3]) = 1;
    LODWORD(__b[0].__r_.__value_.__l.__data_) = v108[0];
    __b[0].__r_.__value_.__s.__data_[4] = BYTE4(v108[0]);
    std::set<unsigned int>::set[abi:ne200100](v97, (v14 + 344));
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 0x40000000;
    v96[2] = ___ZN8Security11CodeSigning13SecStaticCode16validateResourceEPK14__CFDictionaryNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEbRNS1_17ValidationContextEjj_block_invoke;
    v96[3] = &unk_1E70E4C18;
    v96[4] = __p;
    v96[5] = text;
    Security::CodeSigning::CodeDirectory::multipleHashFileData(__b, 0, v97, v96);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v97[1]);
    if ((*(__p[1] + 24) & 1) == 0)
    {
      if (v3 == 2)
      {
        if (*(v11 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v95, *v11, *(v11 + 8));
        }

        else
        {
          v95 = *v11;
        }

        v77 = Security::CodeSigning::SecStaticCode::checkfix30814861(v14, &v95, 0);
        v78 = v77;
        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
          if (v78)
          {
LABEL_168:
            v79 = secLogObjForScope("validateResource");
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              if (*(v11 + 23) < 0)
              {
                v11 = *v11;
              }

              LODWORD(__b[0].__r_.__value_.__l.__data_) = 136315138;
              *(__b[0].__r_.__value_.__r.__words + 4) = v11;
              _os_log_debug_impl(&dword_1887D2000, v79, OS_LOG_TYPE_DEBUG, "%s check-fixed (altered).", __b, 0xCu);
            }

            goto LABEL_174;
          }
        }

        else if (v77)
        {
          goto LABEL_168;
        }
      }

      (*(*v7 + 16))(v7, 4294900242, @"SecCSResourceAltered", v104[0]);
    }

LABEL_174:
    _Block_object_dispose(__p, 8);
LABEL_175:
    Security::UnixPlusPlus::FileDesc::closeAndLog(v108);
    goto LABEL_209;
  }

  if (!v9)
  {
LABEL_78:
    (*(*v7 + 16))(v7, 4294900242, @"SecCSResourceAltered", v104[0]);
    goto LABEL_209;
  }

  Security::cfString(&__str, v104[0]);
  Security::cfString(&__s1, theString[0]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  memset(__p, 170, 0x400uLL);
  v35 = readlink(p_str, __p, 0x3FFuLL);
  if (v35 < 0)
  {
    v92 = __error();
    Security::UnixError::throwMe(*v92);
  }

  *(__p + v35) = 0;
  memset(v108, 170, 24);
  std::string::basic_string[abi:ne200100]<0>(v108, __p);
  if (LOBYTE(__p[0]) != 47)
  {
    v36 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v37 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = __str.__r_.__value_.__l.__size_;
      v37 = __str.__r_.__value_.__r.__words[0];
    }

    if (v36)
    {
      v38 = v37 + v36;
      while (v36)
      {
        v39 = *--v38;
        --v36;
        if (v39 == 47)
        {
          v40 = v38 - v37;
          goto LABEL_132;
        }
      }
    }

    v40 = -1;
LABEL_132:
    std::string::basic_string(&v106, &__str, 0, v40, &v107);
    std::string::push_back(&v106, 47);
    __b[0] = v106;
    memset(&v106, 0, sizeof(v106));
    v62 = strlen(__p);
    v63 = std::string::append(__b, __p, v62);
    v64 = v63->__r_.__value_.__r.__words[0];
    v109.__r_.__value_.__r.__words[0] = v63->__r_.__value_.__l.__size_;
    *(v109.__r_.__value_.__r.__words + 7) = *(&v63->__r_.__value_.__r.__words[1] + 7);
    v65 = HIBYTE(v63->__r_.__value_.__r.__words[2]);
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v108[2]) < 0)
    {
      operator delete(v108[0]);
    }

    v108[0] = v64;
    v108[1] = v109.__r_.__value_.__l.__data_;
    *(&v108[1] + 7) = *(v109.__r_.__value_.__r.__words + 7);
    HIBYTE(v108[2]) = v65;
    if (SHIBYTE(__b[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__b[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }
  }

  v66 = strlen(__p);
  v67 = v66;
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v66 == __s1.__r_.__value_.__l.__size_)
    {
      if (v66 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      p_s1 = __s1.__r_.__value_.__r.__words[0];
      goto LABEL_144;
    }

LABEL_145:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__b, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      __b[0] = __str;
    }

    Security::CFTempString::CFTempString<std::string>(&v106, __b);
    (*(*v7 + 16))(v7, 4294900242, @"SecCSResourceAltered", v106.__r_.__value_.__r.__words[0]);
    Security::CFRef<__CFString const*>::~CFRef(&v106.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__b[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    v69 = __b[0].__r_.__value_.__r.__words[0];
    goto LABEL_150;
  }

  if (v66 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
  {
    goto LABEL_145;
  }

  p_s1 = &__s1;
LABEL_144:
  if (memcmp(p_s1, __p, v67))
  {
    goto LABEL_145;
  }

  if ((~*(v14 + 208) & 0x90) != 0)
  {
    goto LABEL_203;
  }

  memset(__b, 170, 0x400uLL);
  if (SHIBYTE(v108[2]) >= 0)
  {
    v70 = v108;
  }

  else
  {
    v70 = v108[0];
  }

  if (!realpath_DARWIN_EXTSN(v70, __b))
  {
    goto LABEL_192;
  }

  v71 = strlen(__b);
  if (LOBYTE(__p[0]) == 47)
  {
    v72 = v71;
    v73 = "/System/";
    v74 = &off_1E70E4C48;
    while (1)
    {
      v75 = strlen(v73);
      if (v72 > v75 && !strncmp(__b, v73, v75))
      {
        goto LABEL_203;
      }

      v76 = *v74++;
      v73 = v76;
      if (!v76)
      {
        goto LABEL_192;
      }
    }
  }

  v80 = v14;
  while (1)
  {
    memset(&v106, 170, sizeof(v106));
    v81 = *(v80 + 328);
    if (*(v81 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v106, *v81, *(v81 + 8));
    }

    else
    {
      v106 = *v81;
    }

    v82 = SHIBYTE(v106.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      break;
    }

    v84 = v106.__r_.__value_.__l.__size_;
    v83 = v106.__r_.__value_.__r.__words[0];
    if (!strncmp(__b, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_))
    {
      goto LABEL_187;
    }

    operator delete(v83);
LABEL_185:
    v80 = *(v80 + 320);
    if (!v80)
    {
      goto LABEL_192;
    }
  }

  if (strncmp(__b, &v106, SHIBYTE(v106.__r_.__value_.__r.__words[2])))
  {
    goto LABEL_185;
  }

  v84 = v82;
LABEL_187:
  v85 = *(v80 + 328);
  std::string::basic_string[abi:ne200100]<0>(&v109, &__b[0].__r_.__value_.__l.__data_ + v84 + 1);
  v86 = Security::CodeSigning::ResourceBuilder::includes(v85, &v109);
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  if ((v82 & 0x80000000) != 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if ((v86 & 1) == 0)
  {
LABEL_192:
    v89 = *(v14 + 152);
    v88 = v14 + 152;
    v87 = v89;
    if (v89)
    {
      v90 = v88;
      do
      {
        if (*(v87 + 28) >= -67003)
        {
          v90 = v87;
        }

        v87 = *(v87 + 8 * (*(v87 + 28) < -67003));
      }

      while (v87);
      if (v90 != v88 && *(v90 + 28) <= -67003)
      {
        goto LABEL_203;
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v106, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      v106 = __str;
    }

    Security::CFTempString::CFTempString<std::string>(&v107, &v106);
    (*(*v7 + 16))(v7, 4294900293, @"SecCSResourceAltered", v107);
    Security::CFRef<__CFString const*>::~CFRef(&v107);
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    v69 = v106.__r_.__value_.__r.__words[0];
LABEL_150:
    operator delete(v69);
  }

LABEL_203:
  if (SHIBYTE(v108[2]) < 0)
  {
    operator delete(v108[0]);
  }

  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_209:
  Security::CFRef<__CFDictionary const*>::~CFRef(text);
  return Security::CFRef<__CFURL const*>::~CFRef(v104);
}

void sub_188937C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, uint64_t a50, const void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  if (v65 < 0)
  {
    operator delete(a65);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  Security::CFRef<__CFDictionary const*>::~CFRef(&a51);
  JUMPOUT(0x1889381D0);
}

void sub_188937F80()
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    JUMPOUT(0x188937F94);
  }

  std::ostringstream::~ostringstream(&STACK[0x6C0]);
  Security::CodeSigning::DirScanner::~DirScanner(&STACK[0x7D0]);
  JUMPOUT(0x18893800CLL);
}

void sub_188937FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  Security::SecPointerBase::~SecPointerBase(va);
  JUMPOUT(0x188937FB8);
}

void sub_188937FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  Security::CFRef<__CFString const*>::~CFRef(&STACK[0x7D0]);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1889381D0);
}

void sub_1889381A4()
{
  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    JUMPOUT(0x1889381B4);
  }

  JUMPOUT(0x1889381D0);
}

void sub_1889381E0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1889381D8);
}

BOOL ___ZN8Security11CodeSigning13SecStaticCode16validateResourceEPK14__CFDictionaryNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEbRNS1_17ValidationContextEjj_block_invoke(uint64_t a1, int a2, Security::DynamicHash *a3)
{
  v5 = Security::CodeSigning::ResourceSeal::hash(*(a1 + 40), a2);
  result = Security::DynamicHash::verify(a3, v5);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t Security::CodeSigning::SecStaticCode::checkfix30814861(uint64_t a1, const char *a2, int a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v27 = (*(**(a1 + 32) + 160))(*(a1 + 32));
  theDict = 0xAAAAAAAAAAAAAAAALL;
  v30[0] = 0xAAAAAAAAAAAAAAAALL;
  Security::CFDictionary::CFDictionary(&theDict, v27, 0xFFFEFA23);
  Value = CFDictionaryGetValue(theDict, @"VersionPlatform");
  v7 = Security::CFRef<__CFNumber const*>::check<void const*>(Value, 0xFFFEFA23);
  valuePtr = -1431655766;
  v8 = CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
  v9 = valuePtr;
  v10 = CFDictionaryGetValue(theDict, @"VersionSDK");
  v11 = Security::CFRef<__CFNumber const*>::check<void const*>(v10, 0xFFFEFA23);
  valuePtr = -1431655766;
  if (CFNumberGetValue(v11, kCFNumberIntType, &valuePtr))
  {
    v12 = valuePtr >= 0x90000;
  }

  else
  {
    v12 = 0;
  }

  v13 = !v12;
  Security::CFRef<__CFDictionary const*>::~CFRef(&theDict);
  v14 = 0;
  if (v8 && v9 == 2 && (v13 & 1) != 0)
  {
    if (Security::CodeSigning::SecStaticCode::checkfix30814861(std::string,BOOL)::once != -1)
    {
      dispatch_once(&Security::CodeSigning::SecStaticCode::checkfix30814861(std::string,BOOL)::once, &__block_literal_global_18160);
    }

    if (a3)
    {
      v15 = &Security::CodeSigning::SecStaticCode::checkfix30814861(std::string,BOOL)::pathre_sinf;
    }

    else
    {
      v15 = &Security::CodeSigning::SecStaticCode::checkfix30814861(std::string,BOOL)::pathre_supp_supf;
    }

    v16 = a2;
    if (a2[23] < 0)
    {
      v16 = *a2;
    }

    v17 = regexec(v15, v16, 0, 0, 0);
    v18 = v17;
    if (v17)
    {
      if (v17 != 1)
      {
        v19 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          if (a2[23] < 0)
          {
            a2 = *a2;
          }

          LODWORD(theDict) = 67109378;
          HIDWORD(theDict) = v18;
          LOWORD(v30[0]) = 2080;
          *(v30 + 2) = a2;
          _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "unexpected regexec result %d for path '%s'", &theDict, 0x12u);
        }
      }

      goto LABEL_33;
    }

    v20 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN8Security11CodeSigning13SecStaticCode16checkfix30814861ENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEb_block_invoke_55;
    block[3] = &__block_descriptor_tmp_56_18163;
    block[4] = a1;
    if (v20 != -1)
    {
      dispatch_once((a1 + 24), block);
    }

    v21 = *(a1 + 16);
    if (a2[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 1));
    }

    else
    {
      __p = *a2;
    }

    Rule = Security::CodeSigning::ResourceBuilder::findRule(v21, &__p);
    v23 = Rule;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v23)
      {
LABEL_33:
        v14 = 0;
        goto LABEL_34;
      }
    }

    else if (!Rule)
    {
      goto LABEL_33;
    }

    v14 = (*(v23 + 36) >> 1) & 1;
  }

LABEL_34:
  Security::CFRef<__CFDictionary const*>::~CFRef(&v27);
  return v14;
}

void ___ZN8Security11CodeSigning13SecStaticCode16checkfix30814861ENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEb_block_invoke_55(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = Security::CodeSigning::SecStaticCode::resourceDictionary(v1, 1);
  Security::cfget<__CFDictionary const*>(v2, "rules", v3, v4, v5, v6, v7, v8, v10);
  memset(__p, 170, sizeof(__p));
  v9 = Security::CodeSigning::SecStaticCode::resourceBase(v1);
  Security::cfString(__p, v9);
  operator new();
}

void sub_188938658(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x18CFD9760](v15, 0x10F2C40CEC4FCADLL, a3, a4, a5, a6, a7, a8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN8Security11CodeSigning13SecStaticCode16checkfix30814861ENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEb_block_invoke()
{
  if (regcomp(&Security::CodeSigning::SecStaticCode::checkfix30814861(std::string,BOOL)::pathre_sinf, "^(Frameworks/[^/]+\\.framework/|PlugIns/[^/]+\\.appex/|())SC_Info/[^/]+\\.sinf$", 5))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_5;
  }

  result = regcomp(&Security::CodeSigning::SecStaticCode::checkfix30814861(std::string,BOOL)::pathre_supp_supf, "^(Frameworks/[^/]+\\.framework/|PlugIns/[^/]+\\.appex/|())SC_Info/[^/]+\\.(supf|supp)$", 5);
  if (result)
  {
LABEL_5:
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

const void **Security::CodeSigning::SecStaticCode::staticValidate(Security::CodeSigning::SecStaticCode *this, unsigned int a2, const Security::CodeSigning::Requirement **a3)
{
  v55 = *MEMORY[0x1E69E9840];
  *(this + 52) = a2;
  if ((a2 & 0x10000000) != 0)
  {
    v6 = Security::CodeSigning::SecStaticCode::resourceDictionary(this, 1);
    v13 = Security::cfget<__CFDictionary const*>(v6, "files2", v7, v8, v9, v10, v11, v12, v46[0]);
    if (v13 || (v13 = Security::cfget<__CFDictionary const*>(v6, "files", v14, v15, v16, v17, v18, v19, v46[0])) != 0)
    {
      v20 = CFDictionaryGetCount(v13) + 2;
    }

    else
    {
      v20 = 2;
    }

    Security::CodeSigning::SecStaticCode::prepareProgress(this, v20);
  }

  Security::CodeSigning::SecStaticCode::staticValidateCore(this, a2, a3);
  if (a2)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 0x40000000;
    v46[2] = ___ZN8Security11CodeSigning13SecStaticCode14staticValidateEjPKNS0_14SecRequirementE_block_invoke;
    v46[3] = &__block_descriptor_tmp_78_18179;
    v47 = a2;
    v46[4] = a3;
    buf.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    buf.__r_.__value_.__l.__size_ = 0x40000000;
    buf.__r_.__value_.__r.__words[2] = ___ZN8Security11CodeSigning13SecStaticCode24handleOtherArchitecturesEU13block_pointerFvPS1_E_block_invoke;
    v52 = &unk_1E70E4E28;
    v53 = v46;
    v54 = this;
    Security::CodeSigning::SecStaticCode::visitOtherArchitectures(this, &buf);
  }

  Security::CodeSigning::SecStaticCode::reportProgress(this);
  v21 = *(this + 74);
  if (v21)
  {
    v22 = Security::SecCFObject::handle(this, 0);
    (*(v21 + 16))(v21, v22, @"prepared", 0);
  }

  if ((a2 & 4) == 0)
  {
    if (*(this + 192) == 1 && ((a2 & 8) == 0 || (*(this + 193) & 1) != 0))
    {
      v35 = *(this + 49);
      if (v35)
      {
        Security::MacOSError::throwMe(v35);
      }

      if ((*(**(this + 25) + 24))(*(this + 25)))
      {
        (*(**(this + 25) + 32))(*(this + 25));
      }
    }

    else
    {
      memset(__p, 170, sizeof(__p));
      v23 = (*(**(this + 4) + 48))(*(this + 4));
      Security::cfStringRelease(__p, v23);
      v25 = Security::CodeSigning::itemQualifiesForResourceExemption(__p, v24);
      v27 = v25;
      v28 = *(this + 52) & 0x4000;
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v25;
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      v31 = Security::CodeSigning::pathFileSystemUsesXattrFiles(v30, v26);
      v32 = secLogObjForScope("staticCode");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v34 = __p;
        if (SHIBYTE(__p[2]) < 0)
        {
          v34 = __p[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = v34;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v27;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v28 >> 14;
        LOWORD(v52) = 1024;
        *(&v52 + 2) = v29;
        HIWORD(v52) = 1024;
        LODWORD(v53) = v31;
        _os_log_debug_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEBUG, "performing resource validation for %s (%d, %d, %d, %d)", &buf, 0x24u);
      }

      if (!*(this + 75))
      {
        if ((a2 & 0x1000) == 0)
        {
          v33 = (*(**(this + 4) + 144))(*(this + 4));
          Security::UnixPlusPlus::FileDesc::mediumType(&buf, *v33);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        operator new();
      }

      memset(v49, 170, sizeof(v49));
      if (Security::CodeSigning::SecStaticCode::loadResources(this, &v49[3], &v49[1], v49))
      {
        v48 = this;
        operator new();
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if ((a2 & 0x10) != 0)
  {
    v38 = *(this + 4);
    v39 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
    (*(*v38 + 232))(v38, v39, this + 144, *(this + 52));
    Security::CodeSigning::SecStaticCode::reportProgress(this);
  }

  else if ((a2 & 0x2000) != 0)
  {
    v36 = *(this + 4);
    v37 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
    (*(*v36 + 240))(v36, v37, this + 144, *(this + 52));
  }

  buf.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v40 = *(this + 74);
  if (v40)
  {
    v41 = Security::SecCFObject::handle(this, 0);
    v42 = (*(v40 + 16))(v40, v41, @"validated", 0);
    buf.__r_.__value_.__r.__words[0] = v42;
    if (v42)
    {
      v43 = CFGetTypeID(v42);
      if (v43 == CFNumberGetTypeID())
      {
        v44 = Security::cfNumber<int>(buf.__r_.__value_.__l.__data_);
      }

      else
      {
        v44 = 4294900276;
      }

      Security::MacOSError::throwMe(v44);
    }
  }

  else
  {
    buf.__r_.__value_.__r.__words[0] = 0;
  }

  return Security::CFRef<void const*>::~CFRef(&buf.__r_.__value_.__l.__data_);
}

void sub_188939368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, const void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, const void *a57, int buf)
{
  if (a2)
  {
    Security::CFRef<__CFDictionary const*>::~CFRef(&a41);
    _Block_object_dispose(&a15, 8);
    _Block_object_dispose(&buf, 8);
    if (a30 < 0)
    {
      operator delete(__p);
    }

    Security::CFRef<__CFArray *>::~CFRef(&a57);
    Security::CFRef<__CFArray const*>::~CFRef((v61 - 112));
    Security::CodeSigning::SecStaticCode::validateResources::_DTFrameCODESIGN_EVAL_STATIC_RESOURCES::~_DTFrameCODESIGN_EVAL_STATIC_RESOURCES();
    v64 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      *(v58 + 192) = 1;
      *(v58 + 193) = (v59 & 8) != 0;
      *(v58 + 196) = (*(*v64 + 24))(v64);
      __cxa_rethrow();
    }

    v65 = secLogObjForScope("staticCode");
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      buf = 134217984;
      *(v60 + 4) = v58;
      _os_log_debug_impl(&dword_1887D2000, v65, OS_LOG_TYPE_DEBUG, "%p executable validation threw non-common exception", &buf, 0xCu);
    }

    *(v58 + 192) = 1;
    *(v58 + 193) = (v59 & 8) != 0;
    *(v58 + 196) = -67048;
    Security::Syslog::notice("code signing internal problem: unknown exception thrown by validation", v66);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_188939660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_end_catch();
  if (a50 < 0)
  {
    operator delete(a45);
  }

  JUMPOUT(0x18893969CLL);
}

void sub_188939688(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Security::CodeSigning::SecStaticCode::staticValidateCore(UInt8 *this, char a2, const Security::CodeSigning::Requirement **a3)
{
  v49 = *MEMORY[0x1E69E9840];
  Security::CodeSigning::SecStaticCode::validateNonResourceComponents(this);
  v6 = (*(*this + 80))(this, 4, 4294900235);
  v7 = v6;
  if (v6)
  {
    CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v7);
    v9 = Length;
    if (Length >= 4)
    {
      v10 = Length >> 2;
      if (!((v9 >> 2) >> 62))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v10);
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    __p = 0;
    v35 = 0;
    v36 = 0;
    LODWORD(v45) = 0;
    std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v45);
    v11 = 1;
    do
    {
      if (v11 != 7 || (v12 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1), Security::CodeSigning::CodeDirectory::slotIsPresent(v12, -7)))
      {
        if ((*(*this + 80))(this, v11, 4294900235))
        {
          LODWORD(v45) = v11;
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v45);
        }
      }

      v11 = (v11 + 1);
    }

    while (v11 != 12);
    v13 = *(this + 30) - 1;
    if (v13 >= 1)
    {
      v14 = 4096;
      do
      {
        LODWORD(v45) = v14;
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v45);
        ++v14;
        --v13;
      }

      while (v13);
    }

    LODWORD(v45) = 0x10000;
    std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v45);
    v15 = __p;
    if (v35 != __p || memcmp(0, __p, 0))
    {
      Security::MacOSError::throwMe(0xFFFEFA0BLL);
    }

    if (v15)
    {
      operator delete(v15);
    }
  }

  if ((a2 & 2) != 0)
  {
    goto LABEL_47;
  }

  if ((this[185] & 1) == 0)
  {
    v44[1] = this;
    v16 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
    if (!v16)
    {
      Security::MacOSError::throwMe(0xFFFEFA0ALL);
    }

    v44[0] = 0xAAAAAAAAFFFFFFFFLL;
    (*(**(this + 4) + 40))(&__p);
    if (SHIBYTE(v36) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    Security::UnixPlusPlus::FileDesc::open(v44, p_p, 0, 438);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p);
    }

    v20 = Security::UnixPlusPlus::FileDesc::fcntl(v44, v18, v19);
    v21 = (*(**(this + 4) + 80))(*(this + 4), v20);
    if (v21)
    {
      v22 = Security::Universal::archOffset(v21);
    }

    else
    {
      if (!(*(**(this + 4) + 88))(*(this + 4)))
      {
        goto LABEL_31;
      }

      v22 = (*(**(this + 4) + 88))(*(this + 4));
    }

    Security::UnixPlusPlus::FileDesc::seek(LODWORD(v44[0]), v22);
LABEL_31:
    v32 = a3;
    if (bswap32(*(v16 + 2)) >> 8 >= 0x203 && (v23 = *(v16 + 7)) != 0)
    {
      v24 = bswap64(v23);
    }

    else
    {
      v24 = bswap32(*(v16 + 8));
    }

    if (*(v16 + 7))
    {
      v25 = 0;
      v33 = v16[39];
      v26 = v44[0];
      v27 = BYTE4(v44[0]);
      do
      {
        v28 = v16;
        if (v24 >= 1 << v33)
        {
          v29 = 1 << v33;
        }

        else
        {
          v29 = v24;
        }

        v45 = 0;
        v46 = &v45;
        if (v33)
        {
          v30 = v29;
        }

        else
        {
          v30 = v24;
        }

        v47 = 0x2000000000;
        v48 = 1;
        v42 = v26;
        v43 = v27;
        std::set<unsigned int>::set[abi:ne200100](v41, this + 43);
        __p = MEMORY[0x1E69E9820];
        v35 = 0x40000000;
        v36 = ___ZN8Security11CodeSigning13SecStaticCode18validateExecutableEv_block_invoke;
        v37 = &unk_1E70E4B28;
        v40 = v25;
        v38 = &v45;
        v39 = this;
        Security::CodeSigning::CodeDirectory::multipleHashFileData(&v42, v30, v41, &__p);
        std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v41[1]);
        if ((v46[3] & 1) == 0)
        {
          Security::MacOSError::throwMe(0xFFFEFA0BLL);
        }

        v24 -= v30;
        _Block_object_dispose(&v45, 8);
        ++v25;
        v16 = v28;
      }

      while (v25 < bswap32(*(v28 + 7)));
    }

    this[185] = 1;
    *(this + 47) = 0;
    Security::UnixPlusPlus::FileDesc::closeAndLog(v44);
    Security::CodeSigning::SecStaticCode::validateExecutable(void)::_DTFrameCODESIGN_EVAL_STATIC_EXECUTABLE::~_DTFrameCODESIGN_EVAL_STATIC_EXECUTABLE();
    a3 = v32;
  }

  v31 = *(this + 47);
  if (v31)
  {
    goto LABEL_53;
  }

LABEL_47:
  if (a3 && !Security::CodeSigning::SecStaticCode::satisfiesRequirement(this, a3[2], -67050))
  {
    v31 = 4294900246;
LABEL_53:
    Security::MacOSError::throwMe(v31);
  }
}

void sub_188939C54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a2)
  {
    v41 = __cxa_begin_catch(a1);
    if (a2 == 4)
    {
      *(v38 + 185) = 1;
      *(v38 + 188) = (*(*v41 + 24))(v41);
      __cxa_rethrow();
    }

    v42 = secLogObjForScope("staticCode");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *(v39 - 144) = 134217984;
      *(v39 - 140) = v38;
      _os_log_debug_impl(&dword_1887D2000, v42, OS_LOG_TYPE_DEBUG, "%p executable validation threw non-common exception", (v39 - 144), 0xCu);
    }

    *(v38 + 185) = 1;
    *(v38 + 188) = -67048;
    Security::Syslog::notice("code signing internal problem: unknown exception thrown by validation", v43);
    __cxa_rethrow();
  }

  JUMPOUT(0x18893A0D0);
}

void sub_188939E40(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18893A0D0);
  }

  JUMPOUT(0x188939E78);
}

void sub_188939E58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v25)
  {
    operator delete(v25);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    v28 = (*(**(v24 + 32) + 80))(*(v24 + 32));
    if (!v28)
    {
      __cxa_rethrow();
    }

    Security::Universal::architecture(v28);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v29 = (*(**(v24 + 32) + 80))(*(v24 + 32));
    if (!v29)
    {
      __cxa_rethrow();
    }

    Security::Universal::architecture(v29);
  }

  JUMPOUT(0x18893A0D0);
}

void sub_18893A048(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  Security::CFRef<__CFString const*>::~CFRef((v23 - 144));
  __cxa_end_catch();
  JUMPOUT(0x18893A0D0);
}

void sub_18893A0C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN8Security11CodeSigning13SecStaticCode14staticValidateEjPKNS0_14SecRequirementE_block_invoke(uint64_t a1, Security::CodeSigning::SecStaticCode *this)
{
  v4 = *(a1 + 40);
  if ((v4 & 0x41) != 0)
  {
    v5 = (*(**(this + 4) + 80))(*(this + 4));
    if ((Security::Universal::bestNativeArch(v5) & 0xFFFFFF) == 0x12)
    {
      return;
    }

    v4 = *(a1 + 40);
  }

  v6 = *(a1 + 32);

  Security::CodeSigning::SecStaticCode::staticValidateCore(this, v4, v6);
}

uint64_t ___ZN8Security11CodeSigning13SecStaticCode24handleOtherArchitecturesEU13block_pointerFvPS1_E_block_invoke(uint64_t a1, Security::CodeSigning::SecStaticCode *a2)
{
  v4 = *(a1 + 40);
  if (Security::CodeSigning::SecStaticCode::teamID(v4) && Security::CodeSigning::SecStaticCode::teamID(a2))
  {
    v5 = Security::CodeSigning::SecStaticCode::teamID(v4);
    v6 = Security::CodeSigning::SecStaticCode::teamID(a2);
    if (strcmp(v5, v6))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = Security::CodeSigning::SecStaticCode::teamID(v4);
    if (v7 != Security::CodeSigning::SecStaticCode::teamID(a2))
    {
LABEL_4:
      Security::MacOSError::throwMe(0xFFFEFA1BLL);
    }
  }

  v8 = *(*(a1 + 32) + 16);

  return v8();
}

void Security::CodeSigning::SecStaticCode::visitOtherArchitectures(uint64_t a1, uint64_t a2)
{
  v3 = (*(**(a1 + 32) + 80))(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    Security::Universal::architectures(v3, &v29);
    if (v31 >= 2)
    {
      v26 = 0xAAAAAAAAAAAAAA00;
      v28 = 0xAAAAAAAAAAAAAA00;
      v24[0] = 0xFFFFFFFF00000000;
      v24[1] = 0;
      v25 = 0;
      v27 = 0;
      v5 = Security::Universal::archOffset(v4);
      v6 = v29;
      if (v29 != &v30)
      {
        v7 = v5;
        v8 = (v4 + 56);
        do
        {
          v9 = Security::Universal::archOffset(v4, *(v6 + 7), *(v6 + 8));
          v25 = v9;
          v10 = *v8;
          if (!*v8)
          {
            goto LABEL_26;
          }

          v11 = (v4 + 56);
          do
          {
            v12 = v10[4];
            v13 = v12 >= v9;
            v14 = v12 < v9;
            if (v13)
            {
              v11 = v10;
            }

            v10 = v10[v14];
          }

          while (v10);
          if (v11 == v8 || v11[4] > v9)
          {
LABEL_26:
            Security::MacOSError::throwMe(0xFFFEF7A9);
          }

          v27 = v11[5];
          if (v9 != v7)
          {
            v23 = 0xAAAAAAAAAAAAAAAALL;
            v15 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
            Security::SecCFObject::allocate(0x298, *(v15 + 200), v16);
            (*(**(a1 + 32) + 40))(&__p);
            if (v22 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            Security::CodeSigning::DiskRep::bestGuess(p_p, v24);
          }

          v18 = v6[1];
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = v6[2];
              v20 = *v19 == v6;
              v6 = v19;
            }

            while (!v20);
          }

          v6 = v19;
        }

        while (v19 != &v30);
      }
    }

    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v30);
  }
}

BOOL Security::CodeSigning::SecStaticCode::satisfiesRequirement(uint64_t a1, Security::CodeSigning::Requirement *a2, int a3)
{
  Security::CodeSigning::SecStaticCode::validateDirectory(a1);
  v42 = 0;
  Security::CodeSigning::SecStaticCode::validateDirectory(a1);
  v5 = *(a1 + 384);
  if (v5 != 0.0)
  {
    v42 = CFDateCreate(0, v5);
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  v41 = (*(**(a1 + 32) + 48))(*(a1 + 32));
  memset(v40, 170, sizeof(v40));
  Security::cfString(v40, v41);
  if (*(a2 + 2) == 0x2000000)
  {
    v6 = (*(**(a1 + 32) + 80))(*(a1 + 32));
    if (v6)
    {
      v27[0] = Security::Universal::bestNativeArch(v6);
      v7 = (*(**(a1 + 32) + 120))(*(a1 + 32), v27);
    }

    else
    {
      v7 = 0;
    }

    if (SHIBYTE(v40[2]) >= 0)
    {
      v10 = v40;
    }

    else
    {
      v10 = v40[0];
    }

    v11 = openat_authenticated_np(-2, v10, 0, -1);
    v8 = v11 != -1;
    if (v11 != -1)
    {
      close(v11);
    }

    if (SHIBYTE(v40[2]) >= 0)
    {
      v13 = v40;
    }

    else
    {
      v13 = v40[0];
    }

    v9 = Security::CodeSigning::isOnRootFilesystem(v13, v12);
    v25 = Security::CodeSigning::SecStaticCode::validationCategory(a1);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v25 = 0;
  }

  v14 = *(a1 + 640);
  v15 = (*(*a1 + 88))(a1, 1);
  v16 = Security::CodeSigning::SecStaticCode::entitlements(a1, 1);
  v24 = a2;
  v17 = Security::CodeSigning::SecStaticCode::codeDirectory(a1, 1);
  std::string::basic_string[abi:ne200100]<0>(&v26, &v17[bswap32(*(v17 + 5))]);
  v18 = Security::CodeSigning::SecStaticCode::codeDirectory(a1, 1);
  v19 = (*(**(a1 + 32) + 256))(*(a1 + 32));
  v20 = v42;
  v21 = Security::CodeSigning::SecStaticCode::teamID(a1);
  v27[0] = v14;
  v27[1] = v15;
  v27[2] = v16;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v26;
  }

  v29 = v18;
  v30 = 0;
  v31 = 0;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v7;
  v36 = 0;
  v37 = v8;
  v38 = v9;
  v39 = v25;
  v22 = Security::CodeSigning::Requirement::validates(v24, v27);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40[2]) < 0)
  {
    operator delete(v40[0]);
  }

  Security::CFRef<__CFURL const*>::~CFRef(&v41);
  Security::CFRef<__CFDate const*>::~CFRef(&v42);
  return v22;
}

void sub_18893AA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 105) < 0)
  {
    operator delete(*(v26 - 128));
  }

  Security::CFRef<__CFURL const*>::~CFRef((v26 - 104));
  Security::CFRef<__CFDate const*>::~CFRef((v26 - 96));
  _Unwind_Resume(a1);
}

const void **___ZN8Security11CodeSigning13SecStaticCode17validateResourcesEj_block_invoke_31(uint64_t a1)
{
  v6 = *(a1 + 40);
  v5[1] = -1431655766;
  Security::cfString(__p, v6);
  v5[0] = -1;
  if (v4 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  Security::UnixPlusPlus::FileDesc::open(v5, v1, 0, 4096);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog(v5);
  return Security::CFRef<__CFURL const*>::~CFRef(&v6);
}

void sub_18893AB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  Security::CFRef<__CFURL const*>::~CFRef((v15 - 24));
  _Unwind_Resume(a1);
}

void ___ZN8Security11CodeSigning13SecStaticCode20hasWeakResourceRulesEPK14__CFDictionaryjPK9__CFArray_block_invoke(uint64_t a1, __CFString *a2, const void *a3)
{
  memset(&__p, 170, sizeof(__p));
  Security::cfString(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = *(a1 + 71);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 56);
  }

  if (size == v7)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v8 >= 0)
    {
      v10 = (a1 + 48);
    }

    else
    {
      v10 = *(a1 + 48);
    }

    v11 = memcmp(p_p, v10, size);
    v12 = *MEMORY[0x1E695E4D0];
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 == a3;
    }

    if (v13)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      goto LABEL_25;
    }
  }

  else
  {
    v12 = *MEMORY[0x1E695E4D0];
  }

  v14 = CFGetTypeID(a3);
  if (v14 == CFBooleanGetTypeID())
  {
    if (*MEMORY[0x1E695E4C0] != a3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v17[0] = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    Security::CFDictionary::CFDictionary(v17, a3);
    v15 = Security::CFDictionary::get<__CFBoolean const*>(v17, "omit");
    Security::CFRef<__CFDictionary const*>::~CFRef(v17);
    if (v15 != v12)
    {
      goto LABEL_25;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) |= CFArrayContainsValue(*(a1 + 72), *(a1 + 80), a2) == 0;
LABEL_25:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18893AD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  Security::CFRef<__CFDictionary const*>::~CFRef(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void __copy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

Security::CFDictionary *Security::CFDictionary::CFDictionary(Security::CFDictionary *this, CFTypeRef cf)
{
  *this = cf;
  if (!cf)
  {
    *(this + 2) = -67053;
    Security::MacOSError::throwMe(0xFFFEFA13);
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFDictionaryGetTypeID())
  {
    Security::MacOSError::throwMe(0xFFFEFA13);
  }

  if (*this)
  {
    CFRetain(*this);
  }

  *(this + 2) = -67053;
  return this;
}

const void *Security::CFDictionary::get<__CFBoolean const*>(uint64_t a1, const char *a2)
{
  Security::CFTempString::CFTempString<char const*>(&key, a2);
  Value = CFDictionaryGetValue(*a1, key);
  Security::CFRef<__CFBoolean const*>::check<void const*>(Value, *(a1 + 8));
  Security::CFRef<__CFString const*>::~CFRef(&key);
  return Value;
}

void sub_18893AEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFString const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const __CFData *Security::CodeSigning::SecStaticCode::internalRequirements(Security::CodeSigning::SecStaticCode *this)
{
  result = (*(*this + 80))(this, 2, 4294900235);
  if (result)
  {
    result = CFDataGetBytePtr(result);
    if (*result != 17620730 || (v2 = 8 * bswap32(*(result + 2)), v3 = v2 + 12, v4 = bswap32(*(result + 1)), v2 + 12 > v4))
    {
      *__error() = 22;
      goto LABEL_15;
    }

    if ((v2 | 4uLL) >= 0xC)
    {
      for (i = v2 + 8; ; i -= 8)
      {
        v6 = *(result + i);
        if (v6)
        {
          v7 = bswap32(v6);
          v8 = v3 > v7 || v7 + 8 > v4;
          if (v8 || bswap32(*(result + v7 + 4)) + v7 > v4)
          {
            break;
          }
        }

        v9 = i - 4;
        if (v9 < 20)
        {
          return result;
        }
      }

LABEL_15:
      Security::MacOSError::throwMe(0xFFFEFA14);
    }
  }

  return result;
}

const __CFData *Security::CodeSigning::SecStaticCode::internalRequirement(Security::CodeSigning::SecStaticCode *this, SecRequirementType a2)
{
  result = Security::CodeSigning::SecStaticCode::internalRequirements(this);
  if (result)
  {
    v4 = *(result + 2);
    if (!v4)
    {
      return 0;
    }

    v5 = 0;
    LODWORD(v6) = bswap32(v4);
    v6 = v6 <= 1 ? 1 : v6;
    v7 = (result + 12);
    while (1)
    {
      v8 = *v7;
      v7 += 2;
      if (bswap32(v8) == a2)
      {
        break;
      }

      if (v6 == ++v5)
      {
        return 0;
      }
    }

    v9 = *(result + 2 * v5 + 4);
    if (v9)
    {
      result = (result + bswap32(v9));
      if (result)
      {
        v10 = bswap32(*(result + 1));
        if (*result != 843514 || v10 <= 0xB)
        {
          v12 = __error();
          result = 0;
          *v12 = 22;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *Security::CodeSigning::SecStaticCode::designatedRequirement(Security::CodeSigning::SecStaticCode *this)
{
  v2 = Security::CodeSigning::SecStaticCode::internalRequirement(this, kSecDesignatedRequirementType);
  if (!v2)
  {
    v2 = *(this + 66);
    if (!v2)
    {
      v3 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 0);
      if (!v3 || (v3[15] & 2) == 0)
      {
        Security::MacOSError::throwMe(0xFFFEFA00);
      }

      v4 = malloc_type_malloc(0x400uLL, 0x10000403E1C8BA9uLL);
      v22 = v4;
      *v4 = 843514;
      v4[2] = 0x1000000;
      v23 = 0xC00000400;
      v21[0] = 0xAAAAAAAA0000000CLL;
      v21[1] = &v22;
      v21[2] = 7;
      v15 = 0;
      v16 = &v15;
      v17 = 0x3002000000;
      v18 = __Block_byref_object_copy__69;
      v19 = __Block_byref_object_dispose__70;
      MutableCopy = 0xAAAAAAAAAAAAAAAALL;
      v6 = Security::CodeSigning::SecStaticCode::cdHashes(this, v5);
      MutableCopy = CFArrayCreateMutableCopy(0, 0, v6);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = ___ZN8Security11CodeSigning13SecStaticCode28defaultDesignatedRequirementEv_block_invoke;
      v14[3] = &unk_1E70E4C60;
      v14[4] = &v15;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZN8Security11CodeSigning13SecStaticCode24handleOtherArchitecturesEU13block_pointerFvPS1_E_block_invoke;
      v24[3] = &unk_1E70E4E28;
      v24[4] = v14;
      v24[5] = this;
      Security::CodeSigning::SecStaticCode::visitOtherArchitectures(this, v24);
      Count = CFArrayGetCount(v16[5]);
      if (Count >= 1)
      {
        v8 = 0;
        do
        {
          Security::CodeSigning::Requirement::Maker::Chain::add(v21);
          ValueAtIndex = CFArrayGetValueAtIndex(v16[5], v8);
          Security::CodeSigning::Requirement::Maker::require(&v22, 4);
          v10 = HIDWORD(v23);
          HIDWORD(v23) += 4;
          *(v22 + v10) = 0x8000000;
          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          Length = CFDataGetLength(ValueAtIndex);
          Security::CodeSigning::Requirement::Maker::putData(&v22, BytePtr, Length);
          ++v8;
        }

        while (Count != v8);
      }

      v2 = v22;
      *(v22 + 1) = bswap32(HIDWORD(v23));
      v22 = 0;
      _Block_object_dispose(&v15, 8);
      Security::CFRef<__CFArray *>::~CFRef(&MutableCopy);
      free(v22);
      *(this + 66) = v2;
    }
  }

  return v2;
}

void sub_18893B310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a14, 8);
  Security::CFRef<__CFArray *>::~CFRef((v23 + 40));
  free(a23);
  _Unwind_Resume(a1);
}

void ___ZN8Security11CodeSigning13SecStaticCode28defaultDesignatedRequirementEv_block_invoke(uint64_t a1, Security::CodeSigning::SecStaticCode *this)
{
  v3 = Security::CodeSigning::SecStaticCode::cdHashes(this, this);
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5.length = CFArrayGetCount(v3);
  v5.location = 0;

  CFArrayAppendArray(v4, v3, v5);
}

_DWORD *Security::CodeSigning::Requirement::Maker::Chain::add(_DWORD *this)
{
  v1 = this[5];
  this[5] = v1 + 1;
  if (v1)
  {
    v2 = this;
    v3 = this[4];
    v4 = *(this + 1);
    Security::CodeSigning::Requirement::Maker::require(v4, 4);
    this = memmove((*v2 + *v4 + 4), (*v2 + *v4), (*(v4 + 12) - *v2));
    *(v4 + 12) += 4;
    *(*v2 + *v4) = bswap32(v3);
  }

  return this;
}

uint64_t Security::CodeSigning::SecStaticCode::defaultDesignatedLightWeightCodeRequirement(Security::CodeSigning::SecStaticCode *this)
{
  v43 = *MEMORY[0x1E69E9840];
  result = *(this + 82);
  if (result)
  {
    return result;
  }

  memset(__p, 170, sizeof(__p));
  v3 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
  std::string::basic_string[abi:ne200100]<0>(__p, &v3[bswap32(*(v3 + 5))]);
  v4 = Security::CodeSigning::SecStaticCode::teamID(this);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3002000000;
  v27 = __Block_byref_object_copy__69;
  v28 = __Block_byref_object_dispose__70;
  MutableCopy = 0xAAAAAAAAAAAAAAAALL;
  v6 = Security::CodeSigning::SecStaticCode::cdHashes(this, v5);
  MutableCopy = CFArrayCreateMutableCopy(0, 0, v6);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___ZN8Security11CodeSigning13SecStaticCode43defaultDesignatedLightWeightCodeRequirementEv_block_invoke;
  v23[3] = &unk_1E70E4C88;
  v23[4] = &v24;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 0x40000000;
  v32 = ___ZN8Security11CodeSigning13SecStaticCode24handleOtherArchitecturesEU13block_pointerFvPS1_E_block_invoke;
  v33 = &unk_1E70E4E28;
  v34 = v23;
  v35 = this;
  Security::CodeSigning::SecStaticCode::visitOtherArchitectures(this, &buf);
  v7 = Security::CodeSigning::SecStaticCode::validationCategory(this);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      if (v8)
      {
        *&buf = &unk_1EFAAC6B8;
        v40 = @"validation-category";
        v41 = @"signing-identifier";
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
        *(&buf + 1) = v9;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v40 count:2];
      }

      else
      {
        v9 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "defaultPlatformLWCR";
          _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "%s: signing identifier is NULL, cannot generate a LWCR", &buf, 0xCu);
        }

        v11 = 0;
      }

      goto LABEL_55;
    }

    if (v7 == 2)
    {
      if (v8)
      {
        *&buf = &unk_1EFAAC6D0;
        v40 = @"validation-category";
        v41 = @"signing-identifier";
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
        *(&buf + 1) = v9;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v40 count:2];
      }

      else
      {
        v9 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "defaultTestflightLWCR";
          _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "%s: signing identifier is NULL, cannot generate a LWCR", &buf, 0xCu);
        }

        v11 = 0;
      }

      goto LABEL_55;
    }

LABEL_24:
    v16 = v25[5];
    v17 = v16;
    if (v16 && [v16 count])
    {
      v40 = @"cdhash";
      v38[0] = @"$in";
      v39[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:1];
      *&buf = v18;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v40 count:1];
    }

    else
    {
      v18 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "defaultAdhocLWCR";
        _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "%s: no cdhashes for code, cannot generate a LWCR", &buf, 0xCu);
      }

      v11 = 0;
    }

    goto LABEL_56;
  }

  if (v7 == 3)
  {
    if (v8)
    {
      if (v4)
      {
        *&buf = &unk_1EFAAC6E8;
        v40 = @"validation-category";
        v41 = @"signing-identifier";
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
        *(&buf + 1) = v9;
        v42 = @"team-identifier";
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
        v32 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v40 count:3];

        goto LABEL_55;
      }

      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "defaultDevelopmentLWCR";
        v19 = "%s: team identifier is NULL, cannot generate a LWCR";
        goto LABEL_45;
      }
    }

    else
    {
      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "defaultDevelopmentLWCR";
        v19 = "%s: signing identifier is NULL, cannot generate a LWCR";
LABEL_45:
        _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, v19, &buf, 0xCu);
      }
    }

    v11 = 0;
    goto LABEL_55;
  }

  if (v7 == 4)
  {
    if (v8)
    {
      if (v4)
      {
        v40 = @"$or";
        v38[1] = @"$and";
        v39[0] = &unk_1EFAAC700;
        v38[0] = @"validation-category";
        v37[0] = &unk_1EFAAC718;
        v36[0] = @"validation-category";
        v36[1] = @"team-identifier";
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
        v37[1] = v9;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
        v39[1] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
        *&buf = v14;
        v41 = @"signing-identifier";
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
        *(&buf + 1) = v15;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v40 count:2];

        goto LABEL_55;
      }

      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "defaultAppStoreLWCR";
        v20 = "%s: team identifier is NULL, cannot generate a LWCR";
        goto LABEL_49;
      }
    }

    else
    {
      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "defaultAppStoreLWCR";
        v20 = "%s: signing identifier is NULL, cannot generate a LWCR";
LABEL_49:
        _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, v20, &buf, 0xCu);
      }
    }

    v11 = 0;
    goto LABEL_55;
  }

  if (v7 != 6)
  {
    goto LABEL_24;
  }

  if (!v8)
  {
    v9 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "defaultDeveloperIDLWCR";
      v21 = "%s: signing identifier is NULL, cannot generate a LWCR";
LABEL_53:
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, v21, &buf, 0xCu);
    }

LABEL_54:
    v11 = 0;
    goto LABEL_55;
  }

  if (!v4)
  {
    v9 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "defaultDeveloperIDLWCR";
      v21 = "%s: team identifier is NULL, cannot generate a LWCR";
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  *&buf = &unk_1EFAAC718;
  v40 = @"validation-category";
  v41 = @"signing-identifier";
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  *(&buf + 1) = v9;
  v42 = @"team-identifier";
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v32 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v40 count:3];

LABEL_55:
LABEL_56:
  v22 = *(this + 82);
  if (v22)
  {
    CFRelease(v22);
  }

  *(this + 82) = v11;
  _Block_object_dispose(&v24, 8);
  Security::CFRef<__CFArray *>::~CFRef(&MutableCopy);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  return *(this + 82);
}

void sub_18893BD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  _Block_object_dispose(&a14, 8);
  Security::CFRef<__CFArray *>::~CFRef((v29 + 40));
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN8Security11CodeSigning13SecStaticCode43defaultDesignatedLightWeightCodeRequirementEv_block_invoke(uint64_t a1, Security::CodeSigning::SecStaticCode *this)
{
  v3 = Security::CodeSigning::SecStaticCode::cdHashes(this, this);
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5.length = CFArrayGetCount(v3);
  v5.location = 0;

  CFArrayAppendArray(v4, v3, v5);
}

void Security::CodeSigning::SecStaticCode::validateRequirements(Security::CodeSigning::SecStaticCode *this, SecRequirementType a2, Security::CodeSigning::SecStaticCode *a3, uint64_t a4)
{
  v6 = Security::CodeSigning::SecStaticCode::internalRequirement(this, a2);
  if (!v6)
  {
    if (!a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    Security::MacOSError::throwMe(a4);
  }

  if (a4)
  {
    a4 = a4;
  }

  else
  {
    a4 = 4294900246;
  }

  if (!Security::CodeSigning::SecStaticCode::satisfiesRequirement(a3, v6, a4))
  {
    goto LABEL_8;
  }

LABEL_6:
  Security::CodeSigning::SecStaticCode::validateRequirements(SecRequirementType,Security::CodeSigning::SecStaticCode*,int)::_DTFrameCODESIGN_EVAL_STATIC_INTREQ::~_DTFrameCODESIGN_EVAL_STATIC_INTREQ();
}

void Security::CodeSigning::SecStaticCode::staticValidateResource(Security::CodeSigning::SecStaticCode *a1, std::string::size_type a2, int a3, uint64_t a4)
{
  v103 = *MEMORY[0x1E69E9840];
  memset(&v99, 0, sizeof(v99));
  memset(&v98, 0, sizeof(v98));
  (*(**(a1 + 4) + 40))(__p);
  v8 = __p[23];
  if (__p[23] >= 0)
  {
    v9 = __p[23];
  }

  else
  {
    v9 = *&__p[8];
  }

  v10 = *(a2 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v9 != v10)
  {
    v14 = 0;
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (__p[23] >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = *__p;
  }

  if (v11 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = memcmp(v12, v13, v9) == 0;
  if (v8 < 0)
  {
LABEL_16:
    operator delete(*__p);
  }

LABEL_17:
  if (v14)
  {
    v15 = 0;
LABEL_39:
    v19 = a3 | 2;
    v20 = *(a1 + 4);
    goto LABEL_40;
  }

  v16 = Security::CodeSigning::SecStaticCode::resourceBase(a1);
  Security::cfString(__p, v16);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  v99 = *__p;
  if ((__p[23] & 0x8000000000000000) != 0)
  {
    v18 = v99.__r_.__value_.__r.__words[0];
    if (*(v99.__r_.__value_.__r.__words[0] + v99.__r_.__value_.__l.__size_ - 1) != 46)
    {
      goto LABEL_27;
    }

    v17 = --v99.__r_.__value_.__l.__size_;
  }

  else
  {
    if (v99.__r_.__value_.__s.__data_[SHIBYTE(v99.__r_.__value_.__r.__words[2]) - 1] != 46)
    {
      goto LABEL_27;
    }

    v17 = SHIBYTE(v99.__r_.__value_.__r.__words[2]) - 1;
    *(&v99.__r_.__value_.__s + 23) = (*(&v99.__r_.__value_.__s + 23) - 1) & 0x7F;
    v18 = &v99;
  }

  v18->__r_.__value_.__s.__data_[v17] = 0;
LABEL_27:
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v97, *a2, *(a2 + 8));
  }

  else
  {
    v97 = *a2;
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v96, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v96 = v99;
  }

  Security::CodeSigning::pathRemaining(__p, &v97, &v96.__r_.__value_.__l.__data_);
  v98 = *__p;
  __p[23] = 0;
  __p[0] = 0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  v15 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((*(&v98.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v98.__r_.__value_.__l.__size_)
    {
      goto LABEL_39;
    }
  }

  else if (*(&v98.__r_.__value_.__s + 23))
  {
    goto LABEL_39;
  }

  memset(__p, 170, sizeof(__p));
  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v99;
  }

  else
  {
    v30 = v99.__r_.__value_.__r.__words[0];
  }

  v31 = realpath_DARWIN_EXTSN(v30, __p);
  if (v31)
  {
    v32 = secLogObjForScope("staticCode");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *__b = 136315138;
      *&__b[4] = __p;
      _os_log_debug_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEBUG, "Checking resolved path for containment: %s", __b, 0xCu);
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v95, *a2, *(a2 + 8));
    }

    else
    {
      v95 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(v93, __p);
    Security::CodeSigning::pathRemaining(__b, &v95, v93);
    if ((v15 & 0x80) != 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    v98 = *__b;
    __b[23] = 0;
    __b[0] = 0;
    if (v94 < 0)
    {
      operator delete(v93[0]);
    }

    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    v15 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  }

  if ((v15 & 0x80) != 0)
  {
    if (v98.__r_.__value_.__l.__size_)
    {
      goto LABEL_101;
    }
  }

  else if (v15)
  {
    goto LABEL_101;
  }

  memset(__b, 170, sizeof(__b));
  v33 = a2;
  if (*(a2 + 23) < 0)
  {
    v33 = *a2;
  }

  if (!realpath_DARWIN_EXTSN(v33, __b))
  {
    goto LABEL_99;
  }

  v34 = secLogObjForScope("staticCode");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(requirement.__r_.__value_.__l.__data_) = 136315138;
    *(requirement.__r_.__value_.__r.__words + 4) = __b;
    _os_log_debug_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEBUG, "Checking resolved resource path for containment: %s", &requirement, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(v91, __b);
  std::string::basic_string[abi:ne200100]<0>(v89, __p);
  Security::CodeSigning::pathRemaining(&requirement, v91, v89);
  if ((v15 & 0x80) != 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  v98 = requirement;
  *(&requirement.__r_.__value_.__s + 23) = 0;
  requirement.__r_.__value_.__s.__data_[0] = 0;
  if (v90 < 0)
  {
    operator delete(v89[0]);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  v15 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((*(&v98.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (!v98.__r_.__value_.__l.__size_)
    {
      goto LABEL_207;
    }
  }

  else if (!*(&v98.__r_.__value_.__s + 23))
  {
LABEL_207:
    v66 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      v67 = &v99;
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v67 = v99.__r_.__value_.__r.__words[0];
      }

      *__p = 136315394;
      *&__p[4] = a2;
      *&__p[12] = 2080;
      *&__p[14] = v67;
      _os_log_impl(&dword_1887D2000, v66, OS_LOG_TYPE_DEFAULT, "Requested resource was not within the code object: %s, %s", __p, 0x16u);
    }

    Security::MacOSError::throwMe(0xFFFFFFCELL);
  }

  std::string::__assign_external(a2, __b);
  v35 = secLogObjForScope("staticCode");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v65 = a2;
    if (*(a2 + 23) < 0)
    {
      v65 = *a2;
    }

    LODWORD(requirement.__r_.__value_.__l.__data_) = 136315138;
    *(requirement.__r_.__value_.__r.__words + 4) = v65;
    _os_log_debug_impl(&dword_1887D2000, v35, OS_LOG_TYPE_DEBUG, "Updated resource path: %s", &requirement, 0xCu);
    if ((v15 & 0x80) == 0)
    {
LABEL_100:
      if (!v15)
      {
        goto LABEL_207;
      }

      goto LABEL_101;
    }
  }

  else
  {
LABEL_99:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_100;
    }
  }

  if (!v98.__r_.__value_.__l.__size_)
  {
    goto LABEL_207;
  }

LABEL_101:
  v19 = a3 | 2;
  v20 = *(a1 + 4);
  if (!v31)
  {
LABEL_40:
    (*(*v20 + 40))(__p, v20);
    v21 = __p[23];
    if (__p[23] >= 0)
    {
      v22 = __p[23];
    }

    else
    {
      v22 = *&__p[8];
    }

    v23 = *(a2 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a2 + 8);
    }

    if (v22 == v23)
    {
      if (__p[23] >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = *__p;
      }

      if (v24 >= 0)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a2;
      }

      v27 = memcmp(v25, v26, v22) == 0;
      if ((v21 & 0x80000000) == 0)
      {
LABEL_53:
        if (v27)
        {
          goto LABEL_57;
        }

        goto LABEL_111;
      }
    }

    else
    {
      v27 = 0;
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_53;
      }
    }

    operator delete(*__p);
    if (v27)
    {
      goto LABEL_57;
    }

    goto LABEL_111;
  }

  memset(__p, 170, sizeof(__p));
  (*(*v20 + 40))(__b, v20);
  if (__b[23] >= 0)
  {
    v36 = __b;
  }

  else
  {
    v36 = *__b;
  }

  v37 = realpath_DARWIN_EXTSN(v36, __p);
  if ((__b[23] & 0x80000000) != 0)
  {
    operator delete(*__b);
  }

  if (v37)
  {
    v38 = a2;
    if (*(a2 + 23) < 0)
    {
      v38 = *a2;
    }

    if (!strcmp(__p, v38))
    {
LABEL_57:
      v28 = 0;
      if ((v19 & 0x20000) == 0)
      {
        v19 &= ~2u;
      }

      if ((v15 & 0x80) != 0)
      {
        goto LABEL_60;
      }

LABEL_112:
      if (v15 != 10)
      {
        goto LABEL_122;
      }

      v29 = &v98;
      goto LABEL_114;
    }
  }

LABEL_111:
  v28 = 1;
  if ((v15 & 0x80) == 0)
  {
    goto LABEL_112;
  }

LABEL_60:
  if (v98.__r_.__value_.__l.__size_ != 10)
  {
    goto LABEL_122;
  }

  v29 = v98.__r_.__value_.__r.__words[0];
LABEL_114:
  v39 = 0x496E666F2E706C69;
  v40 = bswap64(v29->__r_.__value_.__r.__words[0]);
  if (v40 == 0x496E666F2E706C69 && (v40 = bswap32(LOWORD(v29->__r_.__value_.__r.__words[1])) >> 16, v39 = 29556, v40 == 29556))
  {
    v41 = 0;
  }

  else if (v40 < v39)
  {
    v41 = -1;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v28 = 0;
  }

LABEL_122:
  Security::CodeSigning::SecStaticCode::staticValidateCore(a1, v19, 0);
  if (a4 && !Security::CodeSigning::SecStaticCode::satisfiesRequirement(a1, *(a4 + 16), -67054))
  {
    Security::MacOSError::throwMe(0xFFFEFA12);
  }

  if (v28)
  {
    if ((v19 & 0x4000) == 0 && Security::CodeSigning::itemQualifiesForResourceExemption(a2, v42))
    {
      v43 = secLogObjForScope("staticCode");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        if (*(a2 + 23) < 0)
        {
          a2 = *a2;
        }

        *__p = 136315138;
        *&__p[4] = a2;
        _os_log_debug_impl(&dword_1887D2000, v43, OS_LOG_TYPE_DEBUG, "Requested resource was on root filesystem: %s", __p, 0xCu);
      }

      goto LABEL_198;
    }

    memset(v88, 170, sizeof(v88));
    if (!Security::CodeSigning::SecStaticCode::loadResources(a1, &v88[3], &v88[1], v88))
    {
      Security::MacOSError::throwMe(0xFFFEFA10);
    }

    v87[0] = 0;
    v87[1] = 0;
    v86 = v87;
    *&v44 = 0xAAAAAAAAAAAAAAAALL;
    *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__b[64] = v44;
    *&__b[80] = v44;
    *&__b[32] = v44;
    *&__b[48] = v44;
    *__b = v44;
    *&__b[16] = v44;
    Security::CodeSigning::ResourceBuilder::ResourceBuilder(__b, &v99, &v99, *&v88[3], (v19 & 0x10) != 0, &v86);
    (*(**(a1 + 4) + 64))(*(a1 + 4), __b);
    if ((v15 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v85, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
    }

    else
    {
      v85 = v98;
    }

    Rule = Security::CodeSigning::ResourceBuilder::findRule(__b, &v85);
    v46 = Rule;
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
      if (!v46)
      {
        goto LABEL_140;
      }
    }

    else if (!Rule)
    {
      goto LABEL_140;
    }

    if ((*(v46 + 36) & 0x12) != 0)
    {
      v68 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = *(v46 + 36);
        *__p = 67109120;
        *&__p[4] = v69;
        _os_log_impl(&dword_1887D2000, v68, OS_LOG_TYPE_DEFAULT, "Requested resource was not sealed: %d", __p, 8u);
      }

      Security::MacOSError::throwMe(0xFFFEFA0FLL);
    }

LABEL_140:
    v47 = *&v88[1];
    if ((v15 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v84, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
    }

    else
    {
      v84 = v98;
    }

    Security::CFTempString::CFTempString<std::string>(__p, &v84);
    Value = CFDictionaryGetValue(v47, *__p);
    Security::CFRef<__CFString const*>::~CFRef(__p);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
      if (Value)
      {
        goto LABEL_145;
      }
    }

    else if (Value)
    {
LABEL_145:
      v83 = 0xAAAAAAAAFFFFFFFFLL;
      if (*(a2 + 23) >= 0)
      {
        v49 = a2;
      }

      else
      {
        v49 = *a2;
      }

      Security::UnixPlusPlus::FileDesc::open(&v83, v49, 0x200000, 438);
      *&v50 = 0xAAAAAAAAAAAAAAAALL;
      *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&__p[112] = v50;
      *&__p[128] = v50;
      *&__p[80] = v50;
      *&__p[96] = v50;
      *&__p[48] = v50;
      *&__p[64] = v50;
      *&__p[16] = v50;
      *&__p[32] = v50;
      *__p = v50;
      Security::UnixPlusPlus::FileDesc::fstat(v83, __p);
      *&v51 = 0xAAAAAAAAAAAAAAAALL;
      *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v51;
      *&__p[16] = v51;
      Security::CodeSigning::ResourceSeal::ResourceSeal(__p, Value);
      if ((__p[24] & 4) != 0)
      {
        requirement.__r_.__value_.__r.__words[0] = 0;
        if (!SecRequirementCreateWithStringAndErrors(*&__p[8], 0, 0, &requirement))
        {
          v82 = 0xAAAAAAAAAAAAAAAALL;
          v52 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
          Security::SecCFObject::allocate(0x298, *(v52 + 200), v53);
          if (*(a2 + 23) >= 0)
          {
            v54 = a2;
          }

          else
          {
            v54 = *a2;
          }

          Security::CodeSigning::DiskRep::bestGuess(v54, 0);
        }

        Security::MacOSError::throwMe(0xFFFEFA11);
      }

      requirement.__r_.__value_.__r.__words[0] = &unk_1EFA8BB48;
      requirement.__r_.__value_.__l.__size_ = a1;
      if ((v15 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(&v81, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
      }

      else
      {
        v81 = v98;
      }

      Security::CodeSigning::SecStaticCode::validateResource(a1);
      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      Security::CFRef<__CFDictionary const*>::~CFRef(__p);
      Security::UnixPlusPlus::FileDesc::closeAndLog(&v83);
LABEL_197:
      Security::CodeSigning::ResourceBuilder::~ResourceBuilder(__b);
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v87[0]);
      goto LABEL_198;
    }

    *__p = 0;
    *&__p[8] = __p;
    *&__p[16] = 0x2000000000;
    __p[24] = 0;
    if ((v15 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v80, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
    }

    else
    {
      v80 = v98;
    }

    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 1174405120;
    v72 = ___ZN8Security11CodeSigning13SecStaticCode22staticValidateResourceENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEjPKNS0_14SecRequirementE_block_invoke;
    v73 = &unk_1EFA8BB08;
    v75 = a1;
    v76 = v47;
    v74 = __p;
    v78 = v19;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v77, *a2, *(a2 + 8));
    }

    else
    {
      v77 = *a2;
    }

    v79 = v88[0];
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v80.__r_.__value_.__l.__size_;
    }

    while (1)
    {
      v56 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      v58 = v80.__r_.__value_.__l.__size_;
      v57 = v80.__r_.__value_.__r.__words[0];
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v80;
        v58 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      if (v58 > size)
      {
        v58 = size + 1;
      }

      v59 = v57 + v58;
      do
      {
        if (!v58)
        {
          goto LABEL_187;
        }

        v60 = *--v59;
        --v58;
      }

      while (v60 != 47);
      v61 = v59 - v57;
      size = v61 - 1;
      if (v61 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v80.__r_.__value_.__l.__size_ < v61)
        {
LABEL_224:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v62 = v80.__r_.__value_.__r.__words[0];
        v80.__r_.__value_.__l.__size_ = v61;
      }

      else
      {
        if (v61 > HIBYTE(v80.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_224;
        }

        *(&v80.__r_.__value_.__s + 23) = v61;
        v62 = &v80;
      }

      v62->__r_.__value_.__s.__data_[v61] = 0;
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&requirement, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
      }

      else
      {
        requirement = v80;
      }

      v63 = v72(v71, &requirement);
      v64 = v63;
      if (SHIBYTE(requirement.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(requirement.__r_.__value_.__l.__data_);
        if (v64)
        {
LABEL_186:
          v56 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
          break;
        }
      }

      else if (v63)
      {
        goto LABEL_186;
      }
    }

LABEL_187:
    if (v56 < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if ((*(*&__p[8] + 24) & 1) == 0)
    {
      v70 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) < 0)
        {
          a2 = *a2;
        }

        LODWORD(requirement.__r_.__value_.__l.__data_) = 136315138;
        *(requirement.__r_.__value_.__r.__words + 4) = a2;
        _os_log_impl(&dword_1887D2000, v70, OS_LOG_TYPE_DEFAULT, "Requested resource was not found: %s", &requirement, 0xCu);
      }

      Security::MacOSError::throwMe(0xFFFEFA12);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    _Block_object_dispose(__p, 8);
    goto LABEL_197;
  }

LABEL_198:
  if ((v15 & 0x80) != 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }
}

void sub_18893CDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  Security::CFRef<__CFDictionary const*>::~CFRef(&STACK[0x610]);
  Security::UnixPlusPlus::FileDesc::closeAndLog(&a32);
  Security::CodeSigning::ResourceBuilder::~ResourceBuilder(&STACK[0x210]);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a41);
  if (v66 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a66);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN8Security11CodeSigning13SecStaticCode22staticValidateResourceENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEjPKNS0_14SecRequirementE_block_invoke(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  v5 = a1[6];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
  }

  else
  {
    v20 = *a2;
  }

  Security::CFTempString::CFTempString<std::string>(key, &v20);
  Value = CFDictionaryGetValue(v5, key[0]);
  Security::CFRef<__CFString const*>::~CFRef(key);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if (Value)
    {
LABEL_6:
      *(*(a1[4] + 8) + 24) = 1;
      CFURL = 0xAAAAAAAAAAAAAAAALL;
      v7 = Security::CodeSigning::SecStaticCode::resourceBase(v4);
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      CFURL = Security::makeCFURL(v9, 0, v7, v8);
      memset(v18, 170, sizeof(v18));
      Security::cfString(v18, CFURL);
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *text = v10;
      v17 = v10;
      Security::CodeSigning::ResourceSeal::ResourceSeal(text, Value);
      if ((BYTE8(v17) & 4) != 0)
      {
        key[0] = 0;
        if (!SecRequirementCreateWithStringAndErrors(text[1], 0, 0, key))
        {
          v11 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
          Security::SecCFObject::allocate(0x298, *(v11 + 200), v12);
          if (SHIBYTE(v18[2]) >= 0)
          {
            v13 = v18;
          }

          else
          {
            v13 = v18[0];
          }

          Security::CodeSigning::DiskRep::bestGuess(v13, 0);
        }

        Security::MacOSError::throwMe(0xFFFEFA11);
      }

      if (v17)
      {
        operator new();
      }

      v15 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(key[0]) = 138412290;
        *(key + 4) = Value;
        _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "Unexpected item hit traversing resource: %@", key, 0xCu);
      }

      Security::MacOSError::throwMe(0xFFFEFA12);
    }
  }

  else if (Value)
  {
    goto LABEL_6;
  }

  return 0;
}

void sub_18893D404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }
}

void __copy_helper_block_e8_56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v2 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v2;
  }
}

BOOL Security::CodeSigning::Requirement::validates(Security::CodeSigning::Requirement *this, Security::CodeSigning::CodeDirectory **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v4 = bswap32(v3);
  if (v4 == 2)
  {
    if (v3 == 0x2000000)
    {
      *buf = this;
      v11 = 0xAAAAAAAA0000000CLL;
      v8 = 0;
      size = 0;
      Security::CodeSigning::Requirement::Reader::getData(buf, &size, &v8);
      CFDataCreate(0, size, v8);
      objc_autoreleasePoolPush();
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = os_variant_allows_internal_security_policies();
      bindAndAddBoolFact(v5, "apple-internal", v6);
      Security::CodeSigning::CodeDirectory::cdhash(a2[6], 1u);
    }

    Security::MacOSError::throwMe(0xFFFEFA14);
  }

  if (v4 != 1)
  {
    Security::MacOSError::throwMe(0xFFFEFA15);
  }

  *buf = this;
  LODWORD(v11) = 12;
  v12 = a2;
  return Security::CodeSigning::Requirement::Interpreter::eval(buf, 1000) != 0;
}

void sub_18893DB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const void *Security::CodeSigning::Requirement::Context::cert(CFArrayRef *this, int a2)
{
  v3 = *this;
  if (!v3)
  {
    return 0;
  }

  v4 = a2;
  if (a2 < 0)
  {
    v4 = CFArrayGetCount(v3) + a2;
    v3 = *this;
  }

  if (CFArrayGetCount(v3) <= v4)
  {
    return 0;
  }

  result = CFArrayGetValueAtIndex(*this, v4);
  if (!result)
  {
    return 0;
  }

  return result;
}

CFHashCode Security::CodeSigning::SecRequirement::hash(const UInt8 **this)
{
  v3 = CFDataCreateWithBytesNoCopy(0, this[2], bswap32(*(this[2] + 1)), *MEMORY[0x1E695E498]);
  v1 = CFHash(v3);
  Security::CFRef<__CFData const*>::~CFRef(&v3);
  return v1;
}

void sub_18893DCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::SecRequirement::~SecRequirement(void **this)
{
  *this = &unk_1EFA8BBE0;
  free(this[2]);

  Security::SecCFObject::operator delete(this);
}

{
  *this = &unk_1EFA8BBE0;
  free(this[2]);
}

void *Security::CodeSigning::SecRequirement::SecRequirement(void *a1, Security::BlobCore *a2, char a3)
{
  a1[1] = 1;
  *a1 = &unk_1EFA8BBE0;
  a1[2] = 0;
  v3 = bswap32(*(a2 + 1));
  if (*a2 != 843514 || v3 <= 0xB)
  {
    *__error() = 22;
    Security::MacOSError::throwMe(0xFFFEFA14);
  }

  if ((a3 & 1) == 0)
  {
    a2 = Security::Blob<Security::CodeSigning::Requirement,4208856064u>::clone(a2);
  }

  a1[2] = a2;
  return a1;
}

uint64_t Security::RefPointer<Security::LoadableBundle>::~RefPointer(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = pthread_mutex_lock((a1 + 8));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::RefPointer<Security::LoadableBundle>::release_internal(a1);
  v4 = pthread_mutex_unlock(v2);
  if (v4)
  {
    Security::UnixError::throwMe(v4);
  }

  Security::Mutex::~Mutex(v2);
  return a1;
}

void *Security::RefPointer<Security::LoadableBundle>::release_internal(void *result)
{
  if (*result && atomic_fetch_add_explicit((*result + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v1 = 0;
  }

  return result;
}

uint64_t Security::ModuleNexus<Security::CodeSigning::PluginHost>::operator()()
{
  os_unfair_lock_lock(&unk_1EA91CBF8);
  if (!Security::CodeSigning::plugin)
  {
    Security::CodeSigning::plugin = Security::ModuleNexusCommon::create(&Security::CodeSigning::plugin, Security::ModuleNexus<Security::CodeSigning::PluginHost>::make);
  }

  os_unfair_lock_unlock(&unk_1EA91CBF8);
  return Security::CodeSigning::plugin;
}

void sub_18893DFAC(void *a1)
{
  __cxa_begin_catch(a1);
  os_unfair_lock_unlock(&unk_1EA91CBF8);
  __cxa_rethrow();
}

void sub_18893E2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (*(v22 + 63) < 0)
  {
    operator delete(*v23);
  }

  if (*(v22 + 39) < 0)
  {
    operator delete(*(v22 + 16));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x18CFD9760](v22, 0x10B3C40C4AD4AC1);
  Security::CFRef<__CFURL const*>::~CFRef(&a15);
  Security::CFRef<__CFURL const*>::~CFRef(&a16);
  Security::RefPointer<Security::LoadableBundle>::~RefPointer(v20);
  MEMORY[0x18CFD9760](v20, v21);
  _Unwind_Resume(a1);
}

std::string *Security::CodeSigning::Dumper::print(Security::CodeSigning::Dumper *this, const char *__format, ...)
{
  va_start(va, __format);
  v22 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v3;
  v21 = v3;
  v18 = v3;
  v19 = v3;
  v16 = v3;
  v17 = v3;
  v14 = v3;
  v15 = v3;
  v12 = v3;
  v13 = v3;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  *__str = v3;
  v7 = v3;
  vsnprintf(__str, 0x100uLL, __format, va);
  v4 = strlen(__str);
  return std::string::append((this + 16), __str, v4);
}

std::string *Security::CodeSigning::Dumper::expr(uint64_t a1, int a2)
{
  while (2)
  {
    if (*(a1 + 40) == 1)
    {
      Security::CodeSigning::Dumper::print(a1, "/*@0x%x*/", *(a1 + 8));
    }

    v4 = Security::CodeSigning::Requirement::Reader::get<unsigned int>(a1);
    v5 = 0;
    v6 = "! ";
    switch(v4 & 0xFFFFFF)
    {
      case 0u:
        v7 = "never";
        goto LABEL_48;
      case 1u:
        v7 = "always";
        goto LABEL_48;
      case 2u:
        Security::CodeSigning::Dumper::print(a1, "identifier ");
        goto LABEL_30;
      case 3u:
        v7 = "anchor apple";
        goto LABEL_48;
      case 4u:
        Security::CodeSigning::Dumper::print(a1, "certificate");
        Security::CodeSigning::Dumper::certSlot(a1);
        Security::CodeSigning::Dumper::print(a1, " = ");
        goto LABEL_19;
      case 5u:
        if (*(a1 + 40) == 1)
        {
          Security::CodeSigning::Dumper::print(a1, "/*legacy*/");
        }

        Security::CodeSigning::Dumper::print(a1, "info[");
        Security::CodeSigning::Dumper::data(a1, 1);
        Security::CodeSigning::Dumper::print(a1, "] = ");
        goto LABEL_30;
      case 6u:
        if (a2 <= 0)
        {
          Security::CodeSigning::Dumper::print(a1, "(");
          Security::CodeSigning::Dumper::expr(a1, 1);
          Security::CodeSigning::Dumper::print(a1, " and ");
          v9 = a1;
          v10 = 1;
          goto LABEL_46;
        }

        v5 = 1;
        v6 = " and ";
        goto LABEL_8;
      case 7u:
        if (a2 > 1)
        {
          v5 = 2;
          v6 = " or ";
LABEL_8:
          Security::CodeSigning::Dumper::expr(a1, v5);
LABEL_9:
          Security::CodeSigning::Dumper::print(a1, v6);
          a2 = v5;
          continue;
        }

        Security::CodeSigning::Dumper::print(a1, "(");
        Security::CodeSigning::Dumper::expr(a1, 2);
        Security::CodeSigning::Dumper::print(a1, " or ");
        v9 = a1;
        v10 = 2;
LABEL_46:
        Security::CodeSigning::Dumper::expr(v9, v10);
LABEL_47:
        v7 = ")";
LABEL_48:

        return Security::CodeSigning::Dumper::print(a1, v7);
      case 8u:
        Security::CodeSigning::Dumper::print(a1, "cdhash ");
LABEL_19:

        return Security::CodeSigning::Dumper::hashData(a1);
      case 9u:
        goto LABEL_9;
      case 0xAu:
        Security::CodeSigning::Dumper::print(a1, "info[");
        goto LABEL_37;
      case 0xBu:
        Security::CodeSigning::Dumper::print(a1, "certificate");
        Security::CodeSigning::Dumper::certSlot(a1);
        Security::CodeSigning::Dumper::print(a1, "[");
        goto LABEL_37;
      case 0xCu:
        Security::CodeSigning::Dumper::print(a1, "certificate");
        Security::CodeSigning::Dumper::certSlot(a1);
        v7 = "trusted";
        goto LABEL_48;
      case 0xDu:
        v7 = "anchor trusted";
        goto LABEL_48;
      case 0xEu:
      case 0x11u:
      case 0x16u:
        Security::CodeSigning::Dumper::print(a1, "certificate");
        Security::CodeSigning::Dumper::certSlot(a1);
        Security::CodeSigning::Dumper::print(a1, "[");
        goto LABEL_38;
      case 0xFu:
        v7 = "anchor apple generic";
        goto LABEL_48;
      case 0x10u:
        Security::CodeSigning::Dumper::print(a1, "entitlement[");
LABEL_37:
        Security::CodeSigning::Dumper::data(a1, 1);
LABEL_38:
        Security::CodeSigning::Dumper::print(a1, "]");

        return Security::CodeSigning::Dumper::match(a1);
      case 0x12u:
        Security::CodeSigning::Dumper::print(a1, "anchor apple ");
LABEL_30:

        return Security::CodeSigning::Dumper::data(a1, 0);
      case 0x13u:
        Security::CodeSigning::Dumper::print(a1, "(");
        Security::CodeSigning::Dumper::data(a1, 0);
        goto LABEL_47;
      case 0x14u:
        Security::CodeSigning::Requirement::Reader::get<unsigned int>(a1);
        return Security::CodeSigning::Dumper::print(a1, "platform = %d");
      case 0x15u:
        v7 = "notarized";
        goto LABEL_48;
      case 0x17u:
        v7 = "legacy";
        goto LABEL_48;
      default:
        if ((v4 & 0x80000000) != 0)
        {
          return Security::CodeSigning::Dumper::print(a1, " false /* opcode %d */");
        }

        if (v4 >> 30)
        {
          return Security::CodeSigning::Dumper::print(a1, " /* opcode %d */");
        }

        return Security::CodeSigning::Dumper::print(a1, "OPCODE %d NOT UNDERSTOOD (ending print)");
    }
  }
}

uint64_t Security::CodeSigning::Requirement::Reader::get<unsigned int>(unsigned int *a1)
{
  v1 = a1[2];
  v2 = *a1;
  if (v1 + 4 > bswap32(*(*a1 + 4)))
  {
    Security::MacOSError::throwMe(0xFFFEFA14);
  }

  a1[2] = v1 + 4;
  return bswap32(*(v2 + v1));
}

std::string *Security::CodeSigning::Dumper::data(Security::CodeSigning::Requirement::Reader *a1, int a2)
{
  __len = 0xAAAAAAAAAAAAAAAALL;
  __src = 0xAAAAAAAAAAAAAAAALL;
  Security::CodeSigning::Requirement::Reader::getData(a1, &__src, &__len);
  v4 = __len;
  if (!__len)
  {
    __dst[1] = 0xAAAAAAAAAAAAAAAALL;
    __dst[2] = 0xAAAAAAAAAAAAAALL;
    __dst[0] = 0xAAAAAAAAAAAAAAAALL;
    goto LABEL_31;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = __src;
  v9 = MEMORY[0x1E69E9830];
  do
  {
    v10 = v8[v5];
    if (v10 < 0)
    {
      if (__maskrune(v8[v5], 0x500uLL))
      {
        goto LABEL_15;
      }
    }

    else if ((*(v9 + 4 * v10 + 60) & 0x500) != 0)
    {
      goto LABEL_15;
    }

    v11 = v8[v5];
    if (v11 != 46 || a2 == 0)
    {
      if ((v11 & 0x80) != 0)
      {
        if (!__maskrune(v11, 0x800uLL))
        {
          goto LABEL_19;
        }
      }

      else if ((*(v9 + 4 * v11 + 60) & 0x800) == 0)
      {
LABEL_19:
        v13 = v8[v5];
        if (v13 < 0)
        {
          if (!__maskrune(v8[v5], 0x4000uLL))
          {
LABEL_57:
            Security::CodeSigning::Dumper::print(a1, "0x");
            v31 = 0;
            v32 = 1;
            do
            {
              result = Security::CodeSigning::Dumper::print(a1, "%02.2x", v8[v31]);
              v31 = v32;
              v14 = v4 > v32++;
            }

            while (v14);
            return result;
          }
        }

        else if ((*(v9 + 4 * v13 + 60) & 0x4000) == 0)
        {
          goto LABEL_57;
        }
      }

      v6 = 1;
      goto LABEL_24;
    }

LABEL_15:
    if (v7 == 1 && (*(v9 + 4 * v8[v5] + 60) & 0x400) != 0)
    {
      v6 = 1;
    }

LABEL_24:
    v5 = v7;
    v14 = v4 > v7++;
  }

  while (v14);
  if (v6)
  {
    Security::CodeSigning::Dumper::print(a1, "");
    goto LABEL_44;
  }

  memset(__dst, 170, sizeof(__dst));
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst[2]) = v4;
  memmove(__dst, v8, v4);
LABEL_31:
  *(__dst + v4) = 0;
  v15 = HIBYTE(__dst[2]);
  v16 = "guest";
  v17 = off_1E70E4E58;
  v18 = __dst[0];
  v19 = __dst[1];
  while (2)
  {
    v20 = strlen(v16);
    v21 = v20;
    if ((v15 & 0x80) == 0)
    {
      if (v20 == v15)
      {
        v22 = __dst;
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v20 != v19)
    {
      goto LABEL_38;
    }

    v22 = v18;
    if (v19 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

LABEL_37:
    if (memcmp(v22, v16, v21))
    {
LABEL_38:
      v23 = *v17++;
      v16 = v23;
      if (!v23)
      {
        v24 = 1;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v24 = 0;
  if ((v15 & 0x80) != 0)
  {
LABEL_40:
    operator delete(v18);
  }

LABEL_41:
  v4 = __len;
  if (v24)
  {
    return Security::CodeSigning::Dumper::print(a1, "%.*s", __len, __src);
  }

  Security::CodeSigning::Dumper::print(a1, "");
  if (v4)
  {
LABEL_44:
    v26 = 0;
    v27 = 1;
    v28 = __src;
    do
    {
      v29 = v28[v26];
      if (v29 == 34 || v29 == 92)
      {
        Security::CodeSigning::Dumper::print(a1, "\\%c");
      }

      else
      {
        Security::CodeSigning::Dumper::print(a1, "%c");
      }

      v26 = v27;
      v14 = v4 > v27++;
    }

    while (v14);
  }

  return Security::CodeSigning::Dumper::print(a1, "");
}

std::string *Security::CodeSigning::Dumper::certSlot(Security::CodeSigning::Dumper *this)
{
  v2 = Security::CodeSigning::Requirement::Reader::get<unsigned int>(this);
  if (v2)
  {
    if (v2 != -1)
    {
      return Security::CodeSigning::Dumper::print(this, " %d", v2);
    }

    v3 = " root";
  }

  else
  {
    v3 = " leaf";
  }

  return Security::CodeSigning::Dumper::print(this, v3);
}

std::string *Security::CodeSigning::Dumper::hashData(Security::CodeSigning::Dumper *this)
{
  Security::CodeSigning::Dumper::print(this, "H");
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  Security::CodeSigning::Requirement::Reader::getData(this, &v9, &v8);
  v2 = v8;
  if (v8)
  {
    v3 = 0;
    v4 = v9;
    v5 = 1;
    do
    {
      Security::CodeSigning::Dumper::print(this, "%02.2x", v4[v3]);
      v3 = v5;
    }

    while (v2 > v5++);
  }

  return Security::CodeSigning::Dumper::print(this, "");
}

std::string *Security::CodeSigning::Dumper::match(Security::CodeSigning::Dumper *this)
{
  v2 = Security::CodeSigning::Requirement::Reader::get<unsigned int>(this);
  switch(v2)
  {
    case 0:
      v3 = " /* exists */";
      goto LABEL_11;
    case 1:
      Security::CodeSigning::Dumper::print(this, " = ");
      goto LABEL_24;
    case 2:
      Security::CodeSigning::Dumper::print(this, " ~ ");
      goto LABEL_24;
    case 3:
      Security::CodeSigning::Dumper::print(this, " = ");
      Security::CodeSigning::Dumper::data(this, 0);
      v3 = "*";
      goto LABEL_11;
    case 4:
      Security::CodeSigning::Dumper::print(this, " = *");
      goto LABEL_24;
    case 5:
      Security::CodeSigning::Dumper::print(this, " < ");
      goto LABEL_24;
    case 6:
      Security::CodeSigning::Dumper::print(this, " > ");
      goto LABEL_24;
    case 7:
      Security::CodeSigning::Dumper::print(this, " <= ");
      goto LABEL_24;
    case 8:
      Security::CodeSigning::Dumper::print(this, " >= ");
LABEL_24:

      return Security::CodeSigning::Dumper::data(this, 0);
    case 9:
      Security::CodeSigning::Dumper::print(this, " = ");
      goto LABEL_20;
    case 10:
      Security::CodeSigning::Dumper::print(this, " < ");
      goto LABEL_20;
    case 11:
      Security::CodeSigning::Dumper::print(this, " > ");
      goto LABEL_20;
    case 12:
      Security::CodeSigning::Dumper::print(this, " <= ");
      goto LABEL_20;
    case 13:
      Security::CodeSigning::Dumper::print(this, " >= ");
LABEL_20:

      result = Security::CodeSigning::Dumper::timestamp(this);
      break;
    case 14:
      v3 = " absent ";
LABEL_11:

      result = Security::CodeSigning::Dumper::print(this, v3);
      break;
    default:
      result = Security::CodeSigning::Dumper::print(this, "MATCH OPCODE %d NOT UNDERSTOOD", v2);
      break;
  }

  return result;
}

const void **Security::CodeSigning::Dumper::timestamp(Security::CodeSigning::Dumper *this)
{
  v2 = Security::CodeSigning::Requirement::Reader::get<long long>(this);
  v7 = CFDateCreate(0, v2);
  v6 = CFCopyDescription(v7);
  Security::cfString(&__p, v6);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  Security::CodeSigning::Dumper::print(this, "<%s>", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Security::CFRef<__CFString const*>::~CFRef(&v6);
  return Security::CFRef<__CFDate const*>::~CFRef(&v7);
}

void sub_18893F014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  Security::CFRef<__CFString const*>::~CFRef(&a16);
  Security::CFRef<__CFDate const*>::~CFRef((v16 - 24));
  _Unwind_Resume(a1);
}

unint64_t Security::CodeSigning::Requirement::Reader::get<long long>(unsigned int *a1)
{
  v1 = a1[2];
  v2 = *a1;
  if (v1 + 8 > bswap32(*(*a1 + 4)))
  {
    Security::MacOSError::throwMe(0xFFFEFA14);
  }

  a1[2] = v1 + 8;
  return bswap64(*(v2 + v1));
}

void Security::CodeSigning::Dumper::dump(std::string *a1, uint64_t a2)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v2;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  *&__p[16] = v2;
  v6 = a2;
  *__p = 12;
  if (bswap32(*(a2 + 8)) - 1 >= 2)
  {
    Security::MacOSError::throwMe(0xFFFEFA15);
  }

  memset(&__p[8], 0, 24);
  LOBYTE(v8) = 0;
  Security::CodeSigning::Dumper::expr(&v6, 3);
  v4 = __p[31];
  v5 = *&__p[8];
  if (__p[31] >= 0)
  {
    v5 = &__p[8];
  }

  if (*v5 == 32)
  {
    std::string::basic_string(&v9, &__p[8], 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v10);
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    *&__p[8] = v9;
    v4 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  if (v4 < 0)
  {
    std::string::__init_copy_ctor_external(a1, *&__p[8], *&__p[16]);
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *&__p[8];
    a1->__r_.__value_.__r.__words[2] = *&__p[24];
  }
}

uint64_t Security::CodeSigning::SecCodeSignerRemote::valid(Security::CodeSigning::SecCodeSignerRemote *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(this + 41);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      for (i = 0; i != v4; v5 = i >= v4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(this + 41), i);
        TypeID = SecCertificateGetTypeID();
        if (TypeID != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        ++i;
      }

      if (v5)
      {
        return 1;
      }
    }
  }

  v10 = secLogObjForScope("SecError");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v11)
  {
    v12 = *(this + 41);
    v13 = 134218242;
    v14 = this;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "Invalid remote signing operation: %p, %@", &v13, 0x16u);
    return 0;
  }

  return result;
}

void Security::CodeSigning::SecCodeSignerRemote::~SecCodeSignerRemote(const void **this)
{
  *this = &unk_1EFA8BCB0;
  Security::CFRef<__CFArray const*>::~CFRef(this + 41);
  Security::CodeSigning::SecCodeSigner::~SecCodeSigner(this);

  Security::SecCFObject::operator delete(v2);
}

{
  *this = &unk_1EFA8BCB0;
  Security::CFRef<__CFArray const*>::~CFRef(this + 41);

  Security::CodeSigning::SecCodeSigner::~SecCodeSigner(this);
}

uint64_t Security::CodeSigning::Requirement::Interpreter::eval(Security::CodeSigning::Requirement::Interpreter *this, int a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (a2 < 2)
  {
LABEL_129:
    Security::MacOSError::throwMe(0xFFFEFA14);
  }

  v2 = a2;
  v4 = 0;
  while (2)
  {
    v5 = v2;
LABEL_4:
    v2 = v5 - 1;
    v6 = Security::CodeSigning::Requirement::Reader::get<unsigned int>(this);
    v7 = v6;
    switch(v6 & 0xFFFFFF)
    {
      case 0u:
        goto LABEL_84;
      case 1u:
        LODWORD(v13) = 1;
        return (v4 ^ v13) & 1;
      case 2u:
        if (!*(*(this + 2) + 48))
        {
          goto LABEL_84;
        }

        Security::CodeSigning::Requirement::Reader::getString(&c, this);
        v13 = *(*(this + 2) + 48);
        v30 = bswap32(*(v13 + 5));
        v31 = strlen(&v13[v30]);
        if ((SHIBYTE(c.Nl) & 0x8000000000000000) != 0)
        {
          if (v31 == *&c.h2)
          {
            if (v31 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v59 = *&c.h0;
            LODWORD(v13) = memcmp(*&c.h0, &v13[v30], v31) == 0;
          }

          else
          {
            LODWORD(v13) = 0;
            v59 = *&c.h0;
          }

          v32 = v59;
LABEL_45:
          operator delete(v32);
        }

        else if (v31 == SHIBYTE(c.Nl))
        {
          v17 = memcmp(&c, &v13[v30], v31) == 0;
LABEL_71:
          LODWORD(v13) = v17;
        }

        else
        {
LABEL_84:
          LODWORD(v13) = 0;
        }

        return (v4 ^ v13) & 1;
      case 3u:
        Security::CodeSigning::CodeDirectory::cdhash(*(*(this + 2) + 48), 1u);
      case 4u:
        v11 = *(this + 2);
        v12 = Security::CodeSigning::Requirement::Reader::get<unsigned int>(this);
        v13 = Security::CodeSigning::Requirement::Context::cert(v11, v12);
        *&c.h0 = 0xAAAAAAAAAAAAAAAALL;
        *md = 0xAAAAAAAAAAAAAAAALL;
        Security::CodeSigning::Requirement::Reader::getData(this, &c, md);
        if (*md != 20)
        {
          goto LABEL_129;
        }

        if (!v13)
        {
          return (v4 ^ v13) & 1;
        }

        v14 = *&c.h0;
        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&c.data[9] = v15;
        *&c.data[13] = v15;
        *&c.data[1] = v15;
        *&c.data[5] = v15;
        *&c.h0 = v15;
        *&c.h4 = v15;
        CC_SHA1_Init(&c);
        CC_SHA1_Update(&c, *(v13 + 2), *(v13 + 6));
        memset(md, 170, 20);
        CC_SHA1_Final(md, &c);
        v17 = *md == *v14 && *&md[8] == *(v14 + 8) && *&md[16] == *(v14 + 16);
        goto LABEL_71;
      case 5u:
        memset(&c, 170, 24);
        Security::CodeSigning::Requirement::Reader::getString(&c, this);
        Security::CodeSigning::Requirement::Reader::getString(__p, this);
        Security::CFTempString::CFTempString<std::string>(cf, __p);
        Security::CFCopyRef<void const*>::CFCopyRef(md, cf[0]);
        *&md[8] = 1;
        LODWORD(v13) = Security::CodeSigning::Requirement::Interpreter::infoKeyValue(*(*(this + 2) + 8), &c, md);
        Security::CFRef<void const*>::~CFRef(md);
        Security::CFRef<__CFString const*>::~CFRef(cf);
        if (v76 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      case 6u:
        v24 = Security::CodeSigning::Requirement::Interpreter::eval(this, v5 - 1);
        LODWORD(v13) = v24 & Security::CodeSigning::Requirement::Interpreter::eval(this, v5 - 1);
        return (v4 ^ v13) & 1;
      case 7u:
        v23 = Security::CodeSigning::Requirement::Interpreter::eval(this, v5 - 1);
        LODWORD(v13) = v23 | Security::CodeSigning::Requirement::Interpreter::eval(this, v5 - 1);
        return (v4 ^ v13) & 1;
      case 8u:
        v22 = *(*(this + 2) + 48);
        if (v22)
        {
          Security::CodeSigning::CodeDirectory::cdhash(v22, 1u);
        }

        goto LABEL_84;
      case 9u:
        v4 ^= 1u;
        if (v5 < 3)
        {
          goto LABEL_129;
        }

        continue;
      case 0xAu:
        memset(&c, 170, 24);
        Security::CodeSigning::Requirement::Reader::getString(&c, this);
        memset(md, 170, 16);
        Security::CodeSigning::Requirement::Interpreter::Match::Match(md, this);
        LODWORD(v13) = Security::CodeSigning::Requirement::Interpreter::infoKeyValue(*(*(this + 2) + 8), &c, md);
        Security::CFRef<void const*>::~CFRef(md);
        goto LABEL_43;
      case 0xBu:
        v27 = *(this + 2);
        v28 = Security::CodeSigning::Requirement::Reader::get<unsigned int>(this);
        Security::CodeSigning::Requirement::Context::cert(v27, v28);
        memset(&c, 170, 24);
        Security::CodeSigning::Requirement::Reader::getString(&c, this);
        memset(md, 170, 16);
        Security::CodeSigning::Requirement::Interpreter::Match::Match(md, this);
        Security::CFRef<void const*>::~CFRef(md);
        if (SHIBYTE(c.Nl) < 0)
        {
          operator delete(*&c.h0);
        }

        goto LABEL_84;
      case 0xCu:
        v33 = Security::CodeSigning::Requirement::Reader::get<unsigned int>(this);
        if (Security::CodeSigning::Requirement::Context::cert(*(this + 2), v33))
        {
          v34 = **(this + 2);
          if (v34)
          {
            CFArrayGetCount(v34);
          }
        }

        goto LABEL_84;
      case 0xDu:
        v35 = **(this + 2);
        if (!v35)
        {
          goto LABEL_84;
        }

        v36 = CFArrayGetCount(v35) - 1;
        if (v36 < 0)
        {
          goto LABEL_84;
        }

        v37 = 0;
        do
        {
          LODWORD(v13) = 0;
          if (Security::CodeSigning::Requirement::Context::cert(*(this + 2), v37))
          {
            v38 = v36 == v37;
          }

          else
          {
            v38 = 1;
          }

          ++v37;
        }

        while (!v38);
        return (v4 ^ v13) & 1;
      case 0xFu:
        LODWORD(v13) = Security::CodeSigning::Requirement::Interpreter::appleAnchored(*(this + 2));
        return (v4 ^ v13) & 1;
      case 0x10u:
        memset(md, 170, sizeof(md));
        Security::CodeSigning::Requirement::Reader::getString(md, this);
        cf[0] = 0xAAAAAAAAAAAAAAAALL;
        cf[1] = 0xAAAAAAAAAAAAAAAALL;
        Security::CodeSigning::Requirement::Interpreter::Match::Match(cf, this);
        v18 = *(*(this + 2) + 16);
        if (!v18)
        {
          goto LABEL_94;
        }

        v19 = md[23];
        if (md[23] < 0)
        {
          std::string::__init_copy_ctor_external(&c, *md, *&md[8]);
        }

        else
        {
          *&c.h0 = *md;
          *&c.h4 = *&md[16];
        }

        Security::CFTempString::CFTempString<std::string>(&key, &c);
        Value = CFDictionaryGetValue(v18, key);
        Security::CFRef<__CFString const*>::~CFRef(&key);
        if (SHIBYTE(c.Nl) < 0)
        {
          operator delete(*&c.h0);
        }

        if (Value)
        {
          LODWORD(v13) = Security::CodeSigning::Requirement::Interpreter::Match::operator()(cf, Value);
        }

        else
        {
LABEL_94:
          LODWORD(v13) = Security::CodeSigning::Requirement::Interpreter::Match::operator()(cf, *MEMORY[0x1E695E738]);
          v19 = md[23];
        }

        Security::CFRef<void const*>::~CFRef(cf);
        if ((v19 & 0x80) == 0)
        {
          return (v4 ^ v13) & 1;
        }

        v32 = *md;
        goto LABEL_45;
      case 0x12u:
        v25 = Security::ModuleNexus<Security::CodeSigning::Fragments>::operator()();
        Security::CodeSigning::Requirement::Reader::getString(&c, this);
        v26 = Security::CodeSigning::Fragments::evalNamed(v25, "anchorreq", &c, *(this + 2));
        goto LABEL_36;
      case 0x13u:
        v29 = Security::ModuleNexus<Security::CodeSigning::Fragments>::operator()();
        Security::CodeSigning::Requirement::Reader::getString(&c, this);
        v26 = Security::CodeSigning::Fragments::evalNamed(v29, "subreq", &c, *(this + 2));
LABEL_36:
        LODWORD(v13) = v26;
LABEL_43:
        if ((SHIBYTE(c.Nl) & 0x80000000) == 0)
        {
          return (v4 ^ v13) & 1;
        }

        v32 = *&c.h0;
        goto LABEL_45;
      case 0x14u:
        v46 = Security::CodeSigning::Requirement::Reader::get<unsigned int>(this);
        v47 = *(*(this + 2) + 48);
        if (!v47)
        {
          goto LABEL_84;
        }

        v17 = v46 == *(v47 + 38);
        goto LABEL_71;
      case 0x15u:
        v20 = *(this + 2);
        *md = 0;
        cf[0] = 0;
        if (v20)
        {
          v21 = *(v20 + 48);
          if (v21)
          {
            Security::CodeSigning::CodeDirectory::cdhash(v21, 1u);
          }

          v54 = *(v20 + 56);
          if (v54)
          {
            CFRetain(*(v20 + 56));
            *md = v54;
            v55 = *(v20 + 64);
            v56 = secLogObjForScope("notarization");
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              c.h0 = 67109378;
              c.h1 = v55;
              LOWORD(c.h2) = 2112;
              *(&c.h2 + 2) = v54;
              _os_log_debug_impl(&dword_1887D2000, v56, OS_LOG_TYPE_DEBUG, "checking notarization on %d, %@", &c, 0x12u);
            }
          }
        }

        v57 = secLogObjForScope("notarization");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          c.h0 = 67109120;
          c.h1 = 0;
          _os_log_debug_impl(&dword_1887D2000, v57, OS_LOG_TYPE_DEBUG, "isNotarized = %d", &c, 8u);
        }

        Security::CFRef<__CFError *>::~CFRef(cf);
        Security::CFRef<__CFData const*>::~CFRef(md);
        goto LABEL_84;
      case 0x17u:
        v39 = *(this + 2);
        key = 0;
        *md = 0;
        cf[0] = 0;
        at = 0.0;
        if (!v39)
        {
          goto LABEL_125;
        }

        v40 = Security::CodeSigning::Requirement::Context::cert(v39, 0);
        cf[0] = 0;
        if (!SecCertificateGetDeveloperIDDate(v40, &at, cf))
        {
          Code = CFErrorGetCode(cf[0]);
          if (Code != -67880)
          {
            v50 = secLogObjForScope("SecError");
            if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_125;
            }

            c.h0 = 134217984;
            *&c.h1 = Code;
            v51 = "Unexpected error checking account creation date: %ld";
            v52 = v50;
            v53 = 12;
            goto LABEL_124;
          }

LABEL_101:
          if (*(v39 + 72))
          {
            otherDate = 0xAAAAAAAAAAAAAAAALL;
            otherDate = Security::CodeSigning::copyCutOffDate(@"SecureTimestampCutOffDate", v48, 581040000.0);
            v61 = secLogObjForScope("meetsDeveloperIDLegacyAllowedPolicy");
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              c.h0 = 138412290;
              *&c.h1 = otherDate;
              _os_log_debug_impl(&dword_1887D2000, v61, OS_LOG_TYPE_DEBUG, "Secure Timestamp Cutoff Date cutoff: %@", &c, 0xCu);
            }

            v62 = secLogObjForScope("meetsDevleoperIDLegacyAllowedPolicy");
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v71 = *(v39 + 72);
              c.h0 = 138412290;
              *&c.h1 = v71;
              _os_log_debug_impl(&dword_1887D2000, v62, OS_LOG_TYPE_DEBUG, "Secure Timestamp: %@", &c, 0xCu);
            }

            if (CFDateCompare(*(v39 + 72), otherDate, 0) < 0)
            {
              Security::CFRef<__CFDate const*>::~CFRef(&otherDate);
              LODWORD(v13) = 1;
              goto LABEL_126;
            }

            v63 = secLogObjForScope("meetsDeveloperIDLegacyAllowedPolicy");
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              v72 = *(v39 + 72);
              c.h0 = 138412546;
              *&c.h1 = v72;
              LOWORD(c.h3) = 2112;
              *(&c.h3 + 2) = otherDate;
              _os_log_debug_impl(&dword_1887D2000, v63, OS_LOG_TYPE_DEBUG, "Secure timestamp %@ is after cut-off %@", &c, 0x16u);
            }

            Security::CFRef<__CFDate const*>::~CFRef(&otherDate);
          }

          v64 = *(v39 + 48);
          if (v64)
          {
            Security::CodeSigning::CodeDirectory::cdhash(v64, 1u);
          }

          v65 = *(v39 + 56);
          if (v65)
          {
            CFRetain(*(v39 + 56));
            if (*md)
            {
              CFRelease(*md);
            }

            *md = v65;
            v66 = *(v39 + 64);
          }

          else
          {
            v66 = 0;
            LODWORD(v13) = *md;
            if (!*md)
            {
              goto LABEL_126;
            }
          }

          v67 = *(v39 + 80);
          if (v67)
          {
            v68 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v67, 0x8000100u);
            if (key)
            {
              CFRelease(key);
            }

            key = v68;
          }

          v69 = secLogObjForScope("legacy_list");
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_125;
          }

          c.h0 = 67109634;
          c.h1 = v66;
          LOWORD(c.h2) = 2112;
          *(&c.h2 + 2) = *md;
          HIWORD(c.h4) = 2112;
          *&c.Nl = key;
          v51 = "checking the legacy list for %d, %@, %@";
          v52 = v69;
          v53 = 28;
LABEL_124:
          _os_log_impl(&dword_1887D2000, v52, OS_LOG_TYPE_DEFAULT, v51, &c, v53);
          goto LABEL_125;
        }

        otherDate = 0xAAAAAAAAAAAAAAAALL;
        v41 = CFDateCreate(0, at);
        v77 = 0xAAAAAAAAAAAAAAAALL;
        otherDate = v41;
        v77 = Security::CodeSigning::copyCutOffDate(@"AccountCreationCutOffDate", v42, 576374400.0);
        v43 = secLogObjForScope("meetsDeveloperIDLegacyAllowedPolicy");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          c.h0 = 138412290;
          *&c.h1 = v77;
          _os_log_debug_impl(&dword_1887D2000, v43, OS_LOG_TYPE_DEBUG, "Account Creation Date Cutoff: %@", &c, 0xCu);
        }

        v44 = secLogObjForScope("meetsDeveloperIDLegacyAllowedPolicy");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          c.h0 = 138412290;
          *&c.h1 = otherDate;
          _os_log_debug_impl(&dword_1887D2000, v44, OS_LOG_TYPE_DEBUG, "Account Creation date: %@", &c, 0xCu);
        }

        if (CFDateCompare(otherDate, v77, 0) < 0)
        {
          Security::CFRef<__CFDate const*>::~CFRef(&v77);
          Security::CFRef<__CFDate const*>::~CFRef(&otherDate);
          goto LABEL_101;
        }

        v45 = secLogObjForScope("meetsDeveloperIDLegacyAllowedPolicy");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          c.h0 = 138412546;
          *&c.h1 = otherDate;
          LOWORD(c.h3) = 2112;
          *(&c.h3 + 2) = v77;
          _os_log_debug_impl(&dword_1887D2000, v45, OS_LOG_TYPE_DEBUG, "Account creation date %@ is after cut-off %@", &c, 0x16u);
        }

        Security::CFRef<__CFDate const*>::~CFRef(&v77);
        Security::CFRef<__CFDate const*>::~CFRef(&otherDate);
LABEL_125:
        LODWORD(v13) = 0;
LABEL_126:
        v70 = secLogObjForScope("legacy_list");
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          c.h0 = 67109120;
          c.h1 = v13;
          _os_log_impl(&dword_1887D2000, v70, OS_LOG_TYPE_DEFAULT, "meetsDeveloperIDLegacyAllowedPolicy = %d", &c, 8u);
        }

        Security::CFRef<__CFString const*>::~CFRef(&key);
        Security::CFRef<__CFError *>::~CFRef(cf);
        Security::CFRef<__CFData const*>::~CFRef(md);
        return (v4 ^ v13) & 1;
      default:
        if (!(v6 >> 30))
        {
          v73 = secLogObjForScope("csinterp");
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            c.h0 = 67109120;
            c.h1 = v7;
            _os_log_debug_impl(&dword_1887D2000, v73, OS_LOG_TYPE_DEBUG, "opcode 0x%x cannot be handled; aborting", &c, 8u);
          }

          Security::MacOSError::throwMe(0xFFFEFA00);
        }

        v8 = Security::CodeSigning::Requirement::Reader::get<unsigned int>(this);
        v9 = *(this + 2);
        if (v9 + v8 > bswap32(*(*this + 4)))
        {
          goto LABEL_129;
        }

        *(this + 2) = v9 + v8;
        if ((v7 & 0x80000000) != 0)
        {
          LODWORD(v13) = 0;
          return (v4 ^ v13) & 1;
        }

        if (v5-- < 3)
        {
          goto LABEL_129;
        }

        goto LABEL_4;
    }
  }
}

BOOL Security::CodeSigning::Requirement::Interpreter::appleAnchored(CFArrayRef *this)
{
  v1 = Security::CodeSigning::Requirement::Context::cert(this, -1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (os_variant_allows_internal_security_policies())
  {
    goto LABEL_6;
  }

  if (SecAreQARootCertificatesEnabled_onceToken != -1)
  {
    dispatch_once(&SecAreQARootCertificatesEnabled_onceToken, &__block_literal_global_16024);
  }

  if (SecAreQARootCertificatesEnabled_sQACertsEnabled == 1)
  {
LABEL_6:
    v3 = v2;
    v4 = 3;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  return (SecIsAppleTrustAnchor(v3, v4) & 1) != 0;
}

unint64_t Security::CodeSigning::Requirement::Interpreter::infoKeyValue(const __CFDictionary *a1, uint64_t a2, int *a3)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  Security::CFTempString::CFTempString<std::string>(&key, &__p);
  Value = CFDictionaryGetValue(a1, key);
  Security::CFRef<__CFString const*>::~CFRef(&key);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (Value)
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = *MEMORY[0x1E695E738];
    v6 = a3;
    return Security::CodeSigning::Requirement::Interpreter::Match::operator()(v6, v7);
  }

  if (!Value)
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = a3;
  v7 = Value;
  return Security::CodeSigning::Requirement::Interpreter::Match::operator()(v6, v7);
}

void sub_18894056C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  Security::CFRef<__CFString const*>::~CFRef(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

Security::CodeSigning::Requirement::Interpreter::Match *Security::CodeSigning::Requirement::Interpreter::Match::Match(Security::CodeSigning::Requirement::Interpreter::Match *this, Security::CodeSigning::Requirement::Interpreter *a2)
{
  *this = 0;
  v3 = *(a2 + 2);
  v4 = *a2;
  if (v3 + 4 > bswap32(*(*a2 + 4)))
  {
    Security::MacOSError::throwMe(0xFFFEFA14);
  }

  *(a2 + 2) = v3 + 4;
  v5 = bswap32(*(v4 + v3));
  *(this + 2) = v5;
  if (v5 > 0xE)
  {
    Security::CodeSigning::Requirement::Reader::getString(&v13, a2);
    if ((v14 & 0x80000000) == 0)
    {
      return this;
    }

    v11 = v13;
    goto LABEL_19;
  }

  v6 = 1 << v5;
  if ((v6 & 0x1FE) == 0)
  {
    if ((v6 & 0x3E00) != 0)
    {
      v8 = Security::CodeSigning::Requirement::Reader::get<long long>(a2);
      v9 = CFDateCreate(0, v8);
      if (*this)
      {
        CFRelease(*this);
      }

      *this = v9;
    }

    return this;
  }

  Security::CodeSigning::Requirement::Reader::getString(cStr, a2);
  if (v16 < 0)
  {
    v7 = *cStr;
    if (!*cStr)
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v7 = cStr;
  }

  v10 = CFStringCreateWithCString(0, v7, 0x8000100u);
  if (!v10)
  {
    v10 = CFStringCreateWithCString(0, v7, 0x600u);
    if (!v10)
    {
      Security::CFError::throwMe(0);
    }
  }

LABEL_15:
  if (*this)
  {
    CFRelease(*this);
  }

  *this = v10;
  if (v16 < 0)
  {
    v11 = *cStr;
LABEL_19:
    operator delete(v11);
  }

  return this;
}

uint64_t Security::ModuleNexus<Security::CodeSigning::Fragments>::operator()()
{
  os_unfair_lock_lock(&unk_1EA91D4D0);
  if (!Security::CodeSigning::fragments)
  {
    Security::CodeSigning::fragments = Security::ModuleNexusCommon::create(&Security::CodeSigning::fragments, Security::ModuleNexus<Security::CodeSigning::Fragments>::make);
  }

  os_unfair_lock_unlock(&unk_1EA91D4D0);
  return Security::CodeSigning::fragments;
}

void sub_188940788(void *a1)
{
  __cxa_begin_catch(a1);
  os_unfair_lock_unlock(&unk_1EA91D4D0);
  __cxa_rethrow();
}

BOOL Security::CodeSigning::Fragments::evalNamed(uint64_t a1, const char *a2, uint64_t a3, Security::CodeSigning::CodeDirectory **a4)
{
  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  memset(&v39, 170, sizeof(v39));
  v9 = &v39;
  std::string::basic_string[abi:ne200100](&v39, v8 + 2);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v39.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    memmove(v9, v10, v8);
  }

  strcpy(v9 + v8, "!!");
  v11 = strlen(a2);
  v12 = std::string::append(&v39, a2, v11);
  __p = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v13 = (a1 + 8);
  v37[1] = (a1 + 8);
  v37[2] = 0xAAAAAAAAAAAAAA01;
  v14 = pthread_mutex_lock((a1 + 8));
  if (v14)
  {
    Security::UnixError::throwMe(v14);
  }

  v15 = *(a1 + 80);
  v16 = (a1 + 80);
  if (v15)
  {
    v17 = a1 + 80;
    do
    {
      v18 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v15 + 32), &__p);
      if ((v18 & 0x80u) == 0)
      {
        v17 = v15;
      }

      v15 = *(v15 + ((v18 >> 4) & 8));
    }

    while (v15);
    if (v17 != a1 + 80 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, (v17 + 32)) & 0x80) == 0)
    {
      v19 = *(v17 + 56);
      goto LABEL_53;
    }
  }

  v36 = 0xAAAAAAAAAAAAAAAALL;
  v37[0] = 0;
  v20 = *a1;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *a3, *(a3 + 8));
  }

  else
  {
    v35 = *a3;
  }

  Security::CFTempString::CFTempString<std::string>(&v39, &v35);
  v21 = v39.__r_.__value_.__r.__words[0];
  if (a2)
  {
    v22 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (!v22)
    {
      v22 = CFStringCreateWithCString(0, a2, 0x600u);
      if (!v22)
      {
        Security::CFError::throwMe(0);
      }
    }
  }

  else
  {
    v22 = 0;
  }

  theData = v22;
  v36 = CFBundleCopyResourceURL(v20, v21, @"csreq", v22);
  Security::CFRef<__CFString const*>::~CFRef(&theData);
  Security::CFRef<__CFString const*>::~CFRef(&v39.__r_.__value_.__l.__data_);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v36)
  {
    theData = 0xAAAAAAAAAAAAAAAALL;
    File = Security::cfLoadFile(v36, v23);
    theData = File;
    if (File)
    {
      BytePtr = CFDataGetBytePtr(File);
      Length = CFDataGetLength(theData);
      if (Length >= 0xC)
      {
        if (*BytePtr == 843514 && (v27 = bswap32(*(BytePtr + 1)), v27 > 0xB))
        {
          if (Length == v27)
          {
            Security::CFRef<__CFURL const*>::operator=(v37, &theData);
            goto LABEL_45;
          }
        }

        else
        {
          *__error() = 22;
        }
      }

      Security::cfString(&v39, v36);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v39;
      }

      else
      {
        v29 = v39.__r_.__value_.__r.__words[0];
      }

      Security::Syslog::warning("Invalid sub-requirement at %s", v28, v29);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }

LABEL_45:
    Security::CFRef<__CFData const*>::~CFRef(&theData);
  }

  Security::CFRef<__CFURL const*>::~CFRef(&v36);
LABEL_47:
  v30 = *v16;
  if (!*v16)
  {
LABEL_51:
    memset(&v39, 170, sizeof(v39));
    operator new();
  }

  while (1)
  {
    v16 = v30;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, v30 + 4) & 0x80) != 0)
    {
      goto LABEL_47;
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16 + 4, &__p) & 0x80) == 0)
    {
      break;
    }

    v30 = v16[1];
    if (!v30)
    {
      goto LABEL_51;
    }
  }

  Security::CFRef<__CFURL const*>::operator=(v16 + 7, v37);
  v19 = v37[0];
  Security::CFRef<__CFData const*>::~CFRef(v37);
LABEL_53:
  v31 = pthread_mutex_unlock(v13);
  if (v31)
  {
    Security::UnixError::throwMe(v31);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v19)
    {
      goto LABEL_56;
    }

    return 0;
  }

  if (!v19)
  {
    return 0;
  }

LABEL_56:
  v32 = CFDataGetBytePtr(v19);

  return Security::CodeSigning::Requirement::validates(v32, a4);
}

void sub_188940C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,Security::CFRef<__CFData const*>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,Security::CFRef<__CFData const*>>,void *>>>>::~unique_ptr[abi:ne200100](&a31);
  Security::CFRef<__CFData const*>::~CFRef(&a20);
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(&a21);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,Security::CFRef<__CFData const*>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,Security::CFRef<__CFData const*>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,Security::CFRef<__CFData const*>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,Security::CFRef<__CFData const*>>,0>(uint64_t a1)
{
  Security::CFRef<__CFData const*>::~CFRef((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

unint64_t Security::CodeSigning::Requirement::Interpreter::Match::operator()(int *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*MEMORY[0x1E695E738] == a2)
  {
    return a1[2] == 14;
  }

  v4 = CFGetTypeID(a2);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
        if (Security::CodeSigning::Requirement::Interpreter::Match::operator()(a1, ValueAtIndex))
        {
          return 1;
        }
      }

      while (v6 != ++v7);
    }
  }

  result = 0;
  v10 = a1[2];
  if (v10 > 6)
  {
    if ((v10 - 9) >= 5)
    {
      if (v10 == 7)
      {
        v27 = a1;
        v28 = a2;
        v29 = 1;
      }

      else
      {
        if (v10 != 8)
        {
          return result;
        }

        v27 = a1;
        v28 = a2;
        v29 = -1;
      }

      v34 = kCFCompareEqualTo;
LABEL_50:

      return Security::CodeSigning::Requirement::Interpreter::Match::inequality(v27, v28, v29, v34);
    }

    v20 = CFGetTypeID(*a1);
    if (v20 != CFDateGetTypeID())
    {
      return 0;
    }

    v21 = CFGetTypeID(a2);
    if (v21 != CFDateGetTypeID())
    {
      return 0;
    }

    v22 = CFGetTypeID(*a1);
    if (v22 == CFDateGetTypeID())
    {
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    v35 = CFDateCompare(a2, v23, 0);
    v36 = a1[2];
    if (v36 <= 10)
    {
      if (v36 == 9)
      {
        return v35 == kCFCompareEqualTo;
      }

      if (v36 == 10)
      {
        return v35 >> 63;
      }
    }

    else
    {
      switch(v36)
      {
        case 11:
          return v35 > kCFCompareEqualTo;
        case 12:
          return v35 < kCFCompareGreaterThan;
        case 13:
          return v35 >= kCFCompareEqualTo;
      }
    }

    abort();
  }

  if (v10 > 2)
  {
    if (v10 <= 4)
    {
      if (v10 != 3)
      {
        v11 = CFGetTypeID(*a1);
        if (v11 == CFStringGetTypeID())
        {
          v12 = CFGetTypeID(a2);
          if (v12 == CFStringGetTypeID())
          {
            v13 = Security::CodeSigning::Requirement::Interpreter::Match::cfStringValue(a1);
            Length = CFStringGetLength(v13);
            v15 = CFStringGetLength(a2) - Length;
            if (v15 >= 0)
            {
              v16 = Security::CodeSigning::Requirement::Interpreter::Match::cfStringValue(a1);
              v17 = a2;
              v18.location = v15;
              v18.length = Length;
              return CFStringFindWithOptions(v17, v16, v18, 0, 0) != 0;
            }
          }
        }

        return 0;
      }

      v30 = CFGetTypeID(*a1);
      if (v30 != CFStringGetTypeID())
      {
        return 0;
      }

      v31 = CFGetTypeID(a2);
      if (v31 != CFStringGetTypeID())
      {
        return 0;
      }

      v32 = Security::CodeSigning::Requirement::Interpreter::Match::cfStringValue(a1);
      v33 = Security::CodeSigning::Requirement::Interpreter::Match::cfStringValue(a1);
      v18.length = CFStringGetLength(v33);
      v17 = a2;
      v16 = v32;
LABEL_39:
      v18.location = 0;
      return CFStringFindWithOptions(v17, v16, v18, 0, 0) != 0;
    }

    v27 = a1;
    v28 = a2;
    if (v10 == 5)
    {
      v29 = -1;
    }

    else
    {
      v29 = 1;
    }

    v34 = kCFCompareGreaterThan;
    goto LABEL_50;
  }

  switch(v10)
  {
    case 0:
      return CFEqual(a2, *MEMORY[0x1E695E4C0]) == 0;
    case 1:
      return CFEqual(a2, *a1) != 0;
    case 2:
      v24 = CFGetTypeID(*a1);
      if (v24 != CFStringGetTypeID())
      {
        return 0;
      }

      v25 = CFGetTypeID(a2);
      if (v25 != CFStringGetTypeID())
      {
        return 0;
      }

      v26 = Security::CodeSigning::Requirement::Interpreter::Match::cfStringValue(a1);
      v18.length = CFStringGetLength(a2);
      v17 = a2;
      v16 = v26;
      goto LABEL_39;
  }

  return result;
}

CFTypeRef Security::CodeSigning::Requirement::Interpreter::Match::cfStringValue(CFTypeRef *this)
{
  v2 = CFGetTypeID(*this);
  if (v2 == CFStringGetTypeID())
  {
    return *this;
  }

  else
  {
    return 0;
  }
}

BOOL Security::CodeSigning::Requirement::Interpreter::Match::inequality(CFTypeRef *this, const __CFString *a2, uint64_t a3, CFComparisonResult a4)
{
  v4 = a4;
  v8 = CFGetTypeID(*this);
  result = 0;
  if (v8 == CFStringGetTypeID())
  {
    v9 = CFGetTypeID(a2);
    if (v9 == CFStringGetTypeID())
    {
      v10 = Security::CodeSigning::Requirement::Interpreter::Match::cfStringValue(this);
      if ((CFStringCompare(a2, v10, 0x40uLL) == a3) == v4)
      {
        return 1;
      }
    }
  }

  return result;
}

const void **___ZN8Security11CodeSigning11Requirement11Interpreter18appleLocalAnchoredEv_block_invoke(Security *a1, uint64_t a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3002000000;
  v19 = __Block_byref_object_copy__18439;
  v20 = __Block_byref_object_dispose__18440;
  CFMutableArray = 0xAAAAAAAAAAAAAAAALL;
  CFMutableArray = Security::makeCFMutableArray(a1, a2);
  v2 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/options");
  v3 = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = *MEMORY[0x1E695E480];
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"AMFITrustedKeys", *MEMORY[0x1E695E480], 0);
  theData = CFProperty;
  IOObjectRelease(v3);
  if (!CFProperty)
  {
    goto LABEL_9;
  }

  BytePtr = CFDataGetBytePtr(CFProperty);
  Length = CFDataGetLength(theData);
  v8 = IOCFUnserializeWithSize(BytePtr, Length, v4, 0, 0);
  v14 = v8;
  if (!v8 || (Value = CFDictionaryGetValue(v8, @"trustedKeys")) == 0 && (v10 = CFGetTypeID(0), v10 != CFArrayGetTypeID()))
  {
    Security::CFRef<__CFDictionary const*>::~CFRef(&v14);
LABEL_9:
    Security::CFRef<__CFData const*>::~CFRef(&theData);
    goto LABEL_10;
  }

  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = ___ZN8Security11CodeSigning11Requirement11Interpreter27getAdditionalTrustedAnchorsEv_block_invoke;
  context[3] = &unk_1E70E4F50;
  context[4] = &v16;
  v22.length = CFArrayGetCount(Value);
  v22.location = 0;
  CFArrayApplyFunction(Value, v22, Security::cfarrayApplyBlock_func, context);
  Security::CFRef<__CFDictionary const*>::~CFRef(&v14);
  Security::CFRef<__CFData const*>::~CFRef(&theData);
  if (!CFArrayGetCount(v17[5]))
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = v17[5];
  v17[5] = 0;
LABEL_11:
  _Block_object_dispose(&v16, 8);
  result = Security::CFRef<__CFArray *>::~CFRef(&CFMutableArray);
  Security::CodeSigning::Requirement::Interpreter::appleLocalAnchored(void)::additionalTrustedCertificates = v11;
  return result;
}

void sub_18894152C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Security::CFRef<__CFData const*>::~CFRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1889414C8);
}

void sub_188941568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  Security::CFRef<__CFArray *>::~CFRef((v16 + 40));
  _Unwind_Resume(a1);
}

void ___ZN8Security11CodeSigning11Requirement11Interpreter27getAdditionalTrustedAnchorsEv_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict || (v4 = CFGetTypeID(0), v4 == CFDictionaryGetTypeID()))
  {
    Value = CFDictionaryGetValue(theDict, @"certDigest");
    if (Value || (v6 = CFGetTypeID(0), v6 == CFDataGetTypeID()))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);

      CFArrayAppendValue(v7, Value);
    }
  }
}

void *Security::CodeSigning::Requirement::Maker::require(void *this, uint64_t a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3) + a2;
  if (v3 > v2)
  {
    v4 = this;
    v5 = (2 * v2);
    if (v3 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    *(this + 2) = v6;
    this = malloc_type_realloc(*this, v6, 0x10000403E1C8BA9uLL);
    *v4 = this;
    if (!this)
    {
      Security::UnixError::throwMe(0xC);
    }
  }

  return this;
}

uint64_t Security::CodeSigning::Requirement::Maker::alloc(Security::CodeSigning::Requirement::Maker *this, uint64_t a2)
{
  v4 = (a2 - 1) & 0xFFFFFFFFFFFFFFFCLL;
  Security::CodeSigning::Requirement::Maker::require(this, v4 + 4);
  v5 = *this;
  v6 = *(this + 3);
  v7 = (v6 + v4 + 4);
  *(this + 3) = v7;
  __src = 0;
  memcpy((a2 - v4 + v5 + v7 - 4), &__src, v4 + 4 - a2);
  return v6 + v5;
}

void *Security::CodeSigning::Requirement::Maker::putData(Security::CodeSigning::Requirement::Maker *this, const void *a2, size_t a3)
{
  Security::CodeSigning::Requirement::Maker::require(this, 4);
  v6 = *this;
  v7 = *(this + 3);
  *(this + 3) = v7 + 4;
  *(v7 + v6) = bswap32(a3);
  v8 = Security::CodeSigning::Requirement::Maker::alloc(this, a3);

  return memcpy(v8, a2, a3);
}

void Security::CodeSigning::SecCodeSigner::Signer::setDigestAlgorithms(uint64_t a1, void *a2)
{
  v2 = (a1 + 112);
  if (v2 != a2)
  {
    std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(v2, *a2, a2 + 1);
  }
}

void std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = *(v13 + 7);
      *(v9 + 28) = v14;
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 >= *(v15 + 7))
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_16:
      std::__tree<unsigned int>::__insert_node_at(a1, v16, v17, v9);
      if (v10)
      {
        v10 = std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

void Security::CodeSigning::SecCodeSigner::Signer::sdkPath(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(*(a1 + 8) + 112);
  if (v5)
  {
    Security::cfString(&v12, v5);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = std::string::append(&v12, v7, v8);
    *a3 = *v9;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  else if (*(a2 + 23) < 0)
  {
    v10 = *a2;
    v11 = *(a2 + 8);

    std::string::__init_copy_ctor_external(a3, v10, v11);
  }

  else
  {
    *a3 = *a2;
  }
}

void sub_188941B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::SecCodeSigner::Signer::sign(Security::CodeSigning::SecCodeSigner::Signer *this, int a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = (*(**(*(this + 2) + 32) + 16))(*(*(this + 2) + 32));
  Security::RefPointer<Security::CodeSigning::DiskRep>::setPointer(this + 24, v4);
  Security::CodeSigning::SecCodeSigner::Signer::prepare(this, a2);
  v49 = 0;
  *cf = 0u;
  v5 = *(this + 45);
  v6 = MEMORY[0x1E695E738];
  if (!v5)
  {
    if (*(*(this + 1) + 24) == *MEMORY[0x1E695E738])
    {
      goto LABEL_19;
    }

    v8 = secLogObjForScope("signer");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(*(this + 1) + 24);
      *certificates = 138412290;
      *&certificates[4] = v43;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "looking at identity to create cert chain: %@", certificates, 0xCu);
    }

    *certificates = *(*(*(this + 1) + 24) + 16);
    CFRetain(*certificates);
    *v73 = 0xAAAAAAAAAAAAAAAALL;
    *v73 = SecPolicyCreateWithProperties(@"1.2.840.113635.100.1.16", 0);
    trust = 0;
    v9 = SecTrustCreateWithCertificates(*certificates, *v73, &trust);
    if (v9)
    {
      Security::MacOSError::throwMe(v9);
    }

    if (!SecTrustEvaluateWithError(trust, 0))
    {
      v10 = secLogObjForScope("signer");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v54) = 0;
        _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "SecTrust evaluation of signing certificate failed - not fatal", &v54, 2u);
      }
    }

    v54 = 0xAAAAAAAAAAAAAAAALL;
    v11 = SecTrustCopyCertificateChain(trust);
    v54 = v11;
    if (v11)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v11);
      if (cf[1])
      {
        CFRelease(cf[1]);
      }

      cf[1] = Copy;
      if (Copy)
      {
        v49 = Copy;
        Security::CFRef<__CFArray const*>::~CFRef(&v54);
        Security::CFRef<__SecTrust *>::~CFRef(&trust);
        Security::CFRef<__SecPolicy *>::~CFRef(v73);
        Security::CFRef<__SecCertificate *>::~CFRef(certificates);
        goto LABEL_19;
      }

      v47 = secLogObjForScope("SecError");
      v46 = 4294900248;
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
LABEL_107:
        Security::MacOSError::throwMe(v46);
      }

      *v53 = 0;
      v48 = "Unable to copy certChain array";
    }

    else
    {
      v46 = 4294900225;
      v47 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_107;
      }

      *v53 = 0;
      v48 = "Certificate chain is NULL";
    }

    _os_log_impl(&dword_1887D2000, v47, OS_LOG_TYPE_DEFAULT, v48, v53, 2u);
    goto LABEL_107;
  }

  CFRetain(*(this + 45));
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  cf[1] = v5;
  v7 = secLogObjForScope("signer");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *certificates = 138412290;
    *&certificates[4] = v5;
    _os_log_debug_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEBUG, "signing context setup with existing cert chain: %@", certificates, 0xCu);
    v5 = cf[1];
  }

  v49 = v5;
LABEL_19:
  if (*(this + 159) < 0)
  {
    std::string::__init_copy_ctor_external(certificates, *(this + 17), *(this + 18));
  }

  else
  {
    *certificates = *(this + 136);
    *&certificates[16] = *(this + 19);
  }

  __p = *certificates;
  v51 = certificates[23];
  memset(certificates, 170, 24);
  v13 = *(*(this + 1) + 24);
  if (!v13 || v13 == *v6)
  {
    goto LABEL_30;
  }

  *v73 = *(v13 + 16);
  CFRetain(*v73);
  trust = 0xAAAAAAAAAAAAAAAALL;
  v14 = SecPolicyCreateiPhoneProfileApplicationSigning();
  trust = v14;
  if (!v14)
  {
    v44 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v54) = 0;
      _os_log_impl(&dword_1887D2000, v44, OS_LOG_TYPE_DEFAULT, "Unable to create iPhoneProfileApplicationSigning SecPolicy", &v54, 2u);
    }

    Security::MacOSError::throwMe(0xFFFEFA18);
  }

  v54 = 0;
  v15 = SecTrustCreateWithCertificates(v49, v14, &v54);
  if (v15)
  {
    Security::MacOSError::throwMe(v15);
  }

  if (!SecTrustEvaluateWithError(v54, 0))
  {
    Security::CFRef<__SecTrust *>::~CFRef(&v54);
    Security::CFRef<__SecPolicy *>::~CFRef(&trust);
    Security::CFRef<__SecCertificate *>::~CFRef(v73);
LABEL_30:
    v17 = 0;
    certificates[23] = 0;
    certificates[0] = 0;
    goto LABEL_31;
  }

  v16 = SecCertificateCopySubjectAttributeValue(*v73, &oidOrganizationalUnitName);
  *v53 = v16;
  if (!v16)
  {
    v45 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1887D2000, v45, OS_LOG_TYPE_DEFAULT, "Unable to get team ID (OrganizationalUnitName) from Apple signed certificate", &buf, 2u);
    }

    Security::MacOSError::throwMe(0xFFFEFA4ALL);
  }

  Security::cfString(certificates, v16);
  Security::CFRef<__CFString const*>::~CFRef(v53);
  Security::CFRef<__SecTrust *>::~CFRef(&v54);
  Security::CFRef<__SecPolicy *>::~CFRef(&trust);
  Security::CFRef<__SecCertificate *>::~CFRef(v73);
  v17 = certificates[23];
LABEL_31:
  v18 = *(this + 1);
  v19 = v17;
  if ((v17 & 0x80u) == 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = *&certificates[8];
  }

  if ((*(v18 + 140) & 0x20) == 0)
  {
    v21 = (v18 + 224);
    if (v20)
    {
      v22 = *(v18 + 247);
      if (v22 < 0)
      {
        if (*(v18 + 232))
        {
LABEL_38:
          v23 = *(v18 + 232);
          if (v22 >= 0)
          {
            v23 = v22;
          }

          if (v23 != v20)
          {
            goto LABEL_60;
          }

          v24 = v22 >= 0 ? v21 : v21->__r_.__value_.__r.__words[0];
          v21 = certificates;
          v25 = v19 >= 0 ? certificates : *certificates;
          if (memcmp(v24, v25, v20))
          {
            goto LABEL_60;
          }

          goto LABEL_63;
        }
      }

      else if (*(v18 + 247))
      {
        goto LABEL_38;
      }

      v21 = certificates;
    }

LABEL_63:
    std::string::operator=((this + 160), v21);
    goto LABEL_64;
  }

  if (v20)
  {
    v26 = *(this + 183);
    v27 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(this + 21);
    }

    if (v26 != v20 || (v27 >= 0 ? (v28 = this + 160) : (v28 = *(this + 20)), v19 >= 0 ? (v29 = certificates) : (v29 = *certificates), memcmp(v28, v29, v20)))
    {
LABEL_60:
      Security::MacOSError::throwMe(0xFFFEFA02);
    }
  }

LABEL_64:
  if ((certificates[23] & 0x80000000) != 0)
  {
    operator delete(*certificates);
  }

  v30 = *(this + 1);
  if ((*(v30 + 249) & 1) == 0)
  {
    if ((*(**(this + 3) + 80))(*(this + 3)))
    {
      *&v62 = 0xAAAAAAAAAAAAAAAALL;
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = v31;
      v61 = v31;
      *certificates = v31;
      *&certificates[16] = v31;
      v32 = (*(**(this + 3) + 264))();
      Security::Mutex::Mutex(&certificates[8]);
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1u, memory_order_relaxed);
      }

      *certificates = v32;
      v33 = *(this + 1);
      if (*(v33 + 300) != 1)
      {
        if (*(v33 + 32))
        {
          operator new();
        }

        operator new();
      }

      Security::MacOSError::throwMe(0xFFFFFFFCLL);
    }

    v30 = *(this + 1);
  }

  v77 = 0xAAAAAAAAAAAAAAAALL;
  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75 = v34;
  v76 = v34;
  *v73 = v34;
  v74 = v34;
  if (*(v30 + 32))
  {
    operator new();
  }

  v35 = (*(**(this + 3) + 264))(*(this + 3));
  Security::Mutex::Mutex(&v73[2]);
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1u, memory_order_relaxed);
  }

  *v73 = v35;
  if (*(*(this + 1) + 300) == 1)
  {
    Security::MacOSError::throwMe(0xFFFFFFFCLL);
  }

  trust = v56;
  v56[0] = 0;
  v56[1] = 0;
  v57 = 0;
  v36 = *(*(*this + 24))(this);
  if (v36 != (*(*this + 24))(this) + 8)
  {
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v71 = v37;
    v72 = v37;
    v69 = v37;
    v70 = v37;
    v67 = v37;
    v68 = v37;
    v65 = v37;
    v66 = v37;
    v63 = v37;
    v64 = v37;
    v61 = v37;
    v62 = v37;
    *&certificates[16] = v37;
    v60 = v37;
    *certificates = v37;
    Security::CodeSigning::CodeDirectory::Builder::Builder(certificates, *(v36 + 28));
  }

  v38 = *(this + 1);
  if (*(v38 + 32))
  {
    *certificates = (*(**(this + 3) + 32))(*(this + 3));
    (*(**v73 + 16))(*v73, 65537, *certificates);
    Security::CFRef<__CFData const*>::~CFRef(certificates);
    v38 = *(this + 1);
  }

  if ((*(v38 + 250) & 1) == 0)
  {
    Security::CodeSigning::CodeDirectorySet::populate(&trust, *v73);
  }

  v39 = Security::CodeSigning::CodeDirectorySet::hashDict(&trust);
  *certificates = v39;
  v41 = Security::CodeSigning::CodeDirectorySet::hashList(&trust, v40);
  v54 = v41;
  v42 = v57;
  if (!v57)
  {
    v42 = *(trust + 5);
    v57 = v42;
  }

  *v53 = Security::CodeSigning::SecCodeSigner::Signer::signCodeDirectory(this, v42, v39, v41);
  (*(**v73 + 16))(*v73, 0x10000, *v53);
  (*(**v73 + 48))(*v73);
  Security::CFRef<__CFData const*>::~CFRef(v53);
  Security::CFRef<__CFArray const*>::~CFRef(&v54);
  Security::CFRef<__CFDictionary const*>::~CFRef(certificates);
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(&trust);
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(v73);
  Security::CFRef<__CFArray const*>::~CFRef(&cf[1]);
  if (v51 < 0)
  {
    operator delete(__p);
  }
}

void sub_1889430F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a61);
  MEMORY[0x18CFD9760](v64, 0x10B3C408FE6E862);
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(&a64);
  Security::CodeSigning::PreSigningContext::~PreSigningContext(&a19);
  _Unwind_Resume(a1);
}

const void **Security::CodeSigning::SecCodeSigner::Signer::prepare(Security::CodeSigning::SecCodeSigner::Signer *this, int a2)
{
  v227 = *MEMORY[0x1E69E9840];
  if (*(this + 345) == 1)
  {
    v3 = *(this + 3);
    *&v226[8] = 0uLL;
    *v226 = &v226[8];
    (*(*v3 + 232))(v3, 0, v226, a2 | 0x4000200u);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*&v226[8]);
  }

  Security::CodeSigning::SecStaticCode::prepareProgress(*(this + 2), 0);
  cf = 0;
  *v226 = 0xAAAAAAAAAAAAAAAALL;
  v4 = (*(**(this + 3) + 24))(*(this + 3), 1);
  *v226 = v4;
  if (v4)
  {
    cf = Security::makeCFDictionaryFrom(v4, v5);
  }

  Security::CFRef<__CFData const*>::~CFRef(v226);
  if (!Security::CodeSigning::SecStaticCode::codeDirectory(*(this + 2), 0) || (Security::CodeSigning::SecStaticCode::codeDirectory(*(this + 2), 0)[13] & 2) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(this + 1) + 140);
  }

  v196 = (this + 136);
  std::string::operator=((this + 136), (*(this + 1) + 176));
  v7 = *(this + 159);
  if (v7 < 0)
  {
    if (*(this + 18))
    {
      goto LABEL_17;
    }
  }

  else if (*(this + 159))
  {
    goto LABEL_17;
  }

  if (v6)
  {
    v8 = Security::CodeSigning::SecStaticCode::codeDirectory(*(this + 2), 1);
    std::string::basic_string[abi:ne200100]<0>(v226, &v8[bswap32(*(v8 + 5))]);
    v9 = this + 136;
    if (*(this + 159) < 0)
    {
      operator delete(v196->__r_.__value_.__l.__data_);
      v9 = this + 136;
    }

    *v9 = *v226;
    *(v9 + 2) = *&v226[16];
    LOBYTE(v7) = *(this + 159);
  }

LABEL_17:
  if ((v7 & 0x80) != 0)
  {
    v7 = *(this + 18);
  }

  else
  {
    v7 = v7;
  }

  if (v7)
  {
    v10 = secLogObjForScope("signer");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_83;
    }

    v11 = this + 136;
    if (*(this + 159) < 0)
    {
      v11 = v196->__r_.__value_.__r.__words[0];
    }

    *v226 = 136315138;
    *&v226[4] = v11;
    v12 = "using explicit identifier=%s";
    goto LABEL_359;
  }

  (*(**(this + 3) + 184))(v226);
  v13 = (this + 136);
  if (*(this + 159) < 0)
  {
    operator delete(v196->__r_.__value_.__l.__data_);
    v13 = (this + 136);
  }

  *&v13->__r_.__value_.__l.__data_ = *v226;
  v13->__r_.__value_.__r.__words[2] = *&v226[16];
  if (std::string::find(v13, 46, 0) == -1)
  {
    v14 = *(this + 1);
    if (*(v14 + 223) >= 0)
    {
      v15 = *(v14 + 223);
    }

    else
    {
      v15 = *(v14 + 208);
    }

    if (*(this + 159) >= 0)
    {
      v16 = *(this + 159);
    }

    else
    {
      v16 = *(this + 18);
    }

    memset(v226, 170, 24);
    v17 = v226;
    std::string::basic_string[abi:ne200100](v226, v16 + v15);
    if (v226[23] < 0)
    {
      v17 = *v226;
    }

    if (v15)
    {
      if (*(v14 + 223) >= 0)
      {
        v18 = (v14 + 200);
      }

      else
      {
        v18 = *(v14 + 200);
      }

      memmove(v17, v18, v15);
    }

    v19 = &v17[v15];
    if (v16)
    {
      if (*(this + 159) >= 0)
      {
        v20 = this + 136;
      }

      else
      {
        v20 = *(this + 17);
      }

      memmove(v19, v20, v16);
    }

    v19[v16] = 0;
    v13 = (this + 136);
    if (*(this + 159) < 0)
    {
      operator delete(v196->__r_.__value_.__l.__data_);
      v13 = (this + 136);
    }

    *&v13->__r_.__value_.__l.__data_ = *v226;
    v13->__r_.__value_.__r.__words[2] = *&v226[16];
  }

  if (std::string::find(v13, 46, 0) == -1 && (*(*this + 8))(this))
  {
    (*(**(this + 3) + 192))(v226);
    if (v226[23] >= 0)
    {
      v21 = v226[23];
    }

    else
    {
      v21 = *&v226[8];
    }

    if ((v226[23] & 0x8000000000000000) != 0)
    {
      operator delete(*v226);
    }

    if (!v21)
    {
      if (*(this + 159) >= 0)
      {
        v22 = *(this + 159);
      }

      else
      {
        v22 = *(this + 18);
      }

      memset(v226, 170, 24);
      std::string::basic_string[abi:ne200100](v226, v22 + 1);
      if (v226[23] >= 0)
      {
        v23 = v226;
      }

      else
      {
        v23 = *v226;
      }

      if (v22)
      {
        if (*(this + 159) >= 0)
        {
          v24 = this + 136;
        }

        else
        {
          v24 = *(this + 17);
        }

        memmove(v23, v24, v22);
      }

      *&v23[v22] = 45;
      v209.__r_.__value_.__r.__words[0] = (*(**(this + 3) + 32))(*(this + 3));
      BytePtr = CFDataGetBytePtr(v209.__r_.__value_.__l.__data_);
      Length = CFDataGetLength(v209.__r_.__value_.__l.__data_);
      memset(v213, 0, 24);
      if (Length >= 1)
      {
        do
        {
          memset(&__str, 170, 3);
          v27 = *BytePtr++;
          snprintf(&__str, 3uLL, "%02x", v27);
          v28 = strlen(&__str);
          std::string::append(v213, &__str, v28);
          --Length;
        }

        while (Length);
      }

      Security::CFRef<__CFData const*>::~CFRef(&v209.__r_.__value_.__l.__data_);
      if (v213[23] >= 0)
      {
        v29 = v213;
      }

      else
      {
        v29 = *v213;
      }

      if (v213[23] >= 0)
      {
        v30 = v213[23];
      }

      else
      {
        v30 = *&v213[8];
      }

      v31 = std::string::append(v226, v29, v30);
      v32 = v31->__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__r.__words[0] = v31->__r_.__value_.__l.__size_;
      *(__p.__r_.__value_.__r.__words + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
      v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      if (*(this + 159) < 0)
      {
        operator delete(v196->__r_.__value_.__l.__data_);
      }

      *(this + 17) = v32;
      *(this + 18) = __p.__r_.__value_.__r.__words[0];
      *(this + 151) = *(__p.__r_.__value_.__r.__words + 7);
      *(this + 159) = v33;
      if ((v213[23] & 0x80000000) != 0)
      {
        operator delete(*v213);
      }

      if ((v226[23] & 0x80000000) != 0)
      {
        operator delete(*v226);
      }
    }
  }

  v10 = secLogObjForScope("signer");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v187 = this + 136;
    if (*(this + 159) < 0)
    {
      v187 = v196->__r_.__value_.__r.__words[0];
    }

    *v226 = 136315138;
    *&v226[4] = v187;
    v12 = "using default identifier=%s";
LABEL_359:
    _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, v12, v226, 0xCu);
  }

LABEL_83:
  std::string::operator=((this + 160), (*(this + 1) + 224));
  if ((*(this + 183) & 0x8000000000000000) == 0)
  {
    if (*(this + 183))
    {
      goto LABEL_90;
    }

LABEL_87:
    if ((v6 & 0x20) != 0)
    {
      v34 = Security::CodeSigning::SecStaticCode::teamID(*(this + 2));
      if (v34)
      {
        std::string::__assign_external((this + 160), v34);
      }
    }

    goto LABEL_90;
  }

  if (!*(this + 21))
  {
    goto LABEL_87;
  }

LABEL_90:
  v35 = *(this + 1);
  v195 = (this + 112);
  if ((this + 112) != (v35 + 152))
  {
    std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(v195, *(v35 + 152), (v35 + 160));
  }

  if (!*(this + 16) && (v6 & 0x40) != 0)
  {
    std::set<unsigned int>::set[abi:ne200100](v226, (*(this + 2) + 344));
    v36 = this + 120;
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 15));
    v37 = *&v226[8];
    *(this + 14) = *v226;
    *(this + 15) = v37;
    v38 = *&v226[16];
    *(this + 16) = *&v226[16];
    if (v38)
    {
      v37[2] = v36;
      *v226 = &v226[8];
      *&v226[8] = 0uLL;
      v37 = 0;
    }

    else
    {
      *v195 = v36;
    }

    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v37);
  }

  Security::CFRef<__CFURL const*>::operator=(this + 23, (*(this + 1) + 64));
  if (!*(this + 23) && (v6 & 4) != 0)
  {
    v39 = (*(**(this + 2) + 80))(*(this + 2), 5, 4294900235);
    Security::CFRef<__CFArray const*>::operator=(this + 23, v39);
  }

  v40 = *(this + 1);
  v41 = (this + 192);
  if ((this + 192) == (v40 + 80))
  {
    v46 = *(this + 25);
  }

  else
  {
    v42 = *(v40 + 80);
    v43 = *(v40 + 88);
    v44 = v43 - v42;
    v45 = *(this + 26);
    v46 = *(this + 24);
    if (v45 - v46 < (v43 - v42))
    {
      v47 = v44 >> 3;
      if (v46)
      {
        v48 = *(this + 25);
        v49 = *(this + 24);
        if (v48 != v46)
        {
          do
          {
            v48 = Security::CFRef<__CFData const*>::~CFRef(v48 - 1);
          }

          while (v48 != v46);
          v49 = *v41;
        }

        *(this + 25) = v46;
        operator delete(v49);
        v45 = 0;
        *v41 = 0;
        *(this + 25) = 0;
        *(this + 26) = 0;
      }

      if (!(v47 >> 61))
      {
        v50 = v45 >> 2;
        if (v45 >> 2 <= v47)
        {
          v50 = v47;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFF8)
        {
          v51 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        if (!(v51 >> 61))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Security::CFRef<__CFData const*>>>(v51);
        }
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v52 = *(this + 25);
    v53 = v52 - v46;
    if (v52 - v46 >= v44)
    {
      if (v42 != v43)
      {
        do
        {
          Security::CFRef<__CFURL const*>::operator=(v46++, v42++);
        }

        while (v42 != v43);
        v52 = *(this + 25);
      }

      while (v52 != v46)
      {
        v52 = Security::CFRef<__CFData const*>::~CFRef(v52 - 1);
      }
    }

    else
    {
      if (v52 != v46)
      {
        v54 = v52 - v46;
        v55 = v42;
        do
        {
          Security::CFRef<__CFURL const*>::operator=(v46++, v55++);
          v54 -= 8;
        }

        while (v54);
        v52 = *(this + 25);
      }

      v56 = (v42 + v53);
      v57 = v52;
      if ((v42 + v53) != v43)
      {
        v57 = v52;
        do
        {
          v58 = *v56++;
          *v57++ = v58;
        }

        while (v56 != v43);
      }

      v46 = v57;
    }

    *(this + 25) = v46;
  }

  for (i = *v41; i != v46; ++i)
  {
    if (*i)
    {
      CFRetain(*i);
    }
  }

  if ((v6 & 0x200) != 0)
  {
    v60 = *v41;
    if (!**v41 && !v60[1] && !v60[2])
    {
      v61 = (*(**(this + 2) + 80))(*(this + 2), 8, 4294900235);
      if (v61)
      {
        Security::CFRef<__CFArray const*>::operator=(*v41, v61);
      }

      v62 = (*(**(this + 2) + 80))(*(this + 2), 9, 4294900235);
      if (v62)
      {
        Security::CFRef<__CFArray const*>::operator=(*v41 + 1, v62);
      }

      v63 = (*(**(this + 2) + 80))(*(this + 2), 10, 4294900235);
      if (v63)
      {
        Security::CFRef<__CFArray const*>::operator=(*v41 + 2, v63);
      }
    }
  }

  Security::CFRef<__CFURL const*>::operator=(this + 27, (*(this + 1) + 104));
  if ((v6 & 0x400) != 0 && !*(this + 27))
  {
    v64 = (*(**(this + 2) + 80))(*(this + 2), 11, 4294900235);
    if (v64)
    {
      Security::CFRef<__CFArray const*>::operator=(this + 27, v64);
    }
  }

  *(this + 72) = 0;
  v65 = *(this + 1);
  if (*(v65 + 144) == 1)
  {
    *(this + 72) = *(v65 + 136);
    v66 = secLogObjForScope("signer");
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v186 = *(this + 72);
      *v226 = 67109120;
      *&v226[4] = v186;
      v86 = "using explicit cdFlags=0x%x";
LABEL_355:
      _os_log_debug_impl(&dword_1887D2000, v66, OS_LOG_TYPE_DEBUG, v86, v226, 8u);
    }

    goto LABEL_153;
  }

  if (!cf || (v82 = CFDictionaryGetValue(cf, @"CSFlags"), (v83 = v82) == 0))
  {
    v67 = (v6 & 0x100) == 0;
    if ((v6 & 0x100) != 0)
    {
      *(this + 72) |= (*(Security::CodeSigning::SecStaticCode::codeDirectory(*(this + 2), 0) + 3) << 8) & 0x10000;
    }

    if ((v6 & 0x10) != 0)
    {
      *(this + 72) = bswap32(*(Security::CodeSigning::SecStaticCode::codeDirectory(*(this + 2), 0) + 3) & 0xFDFFFFFF);
      v90 = secLogObjForScope("signer");
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        v91 = *(this + 72);
        *v226 = 67109120;
        *&v226[4] = v91;
        _os_log_debug_impl(&dword_1887D2000, v90, OS_LOG_TYPE_DEBUG, "using inherited cdFlags=0x%x", v226, 8u);
      }
    }

    goto LABEL_154;
  }

  v84 = CFGetTypeID(v82);
  if (v84 == CFNumberGetTypeID())
  {
    *(this + 72) = Security::cfNumber<unsigned int>(v83);
    v66 = secLogObjForScope("signer");
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v85 = *(this + 72);
      *v226 = 67109120;
      *&v226[4] = v85;
      v86 = "using numeric cdFlags=0x%x from Info.plist";
      goto LABEL_355;
    }

    goto LABEL_153;
  }

  v114 = CFGetTypeID(v83);
  if (v114 != CFStringGetTypeID())
  {
    Security::MacOSError::throwMe(0xFFFEFA0ELL);
  }

  Security::cfString(&v207, v83);
  v115 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
  if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v207.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v207.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = &v207;
    }

    else
    {
      v117 = v207.__r_.__value_.__r.__words[0];
    }

    v118 = memchr(v117, 44, size);
    if (v118)
    {
      v119 = v118 - v117;
    }

    else
    {
      v119 = -1;
    }
  }

  else
  {
    v119 = -1;
  }

  v169 = 0;
  while (2)
  {
    memset(v226, 170, 24);
    if (v119 == -1)
    {
      if (v115 < 0)
      {
        std::string::__init_copy_ctor_external(v226, v207.__r_.__value_.__l.__data_, v207.__r_.__value_.__l.__size_);
      }

      else
      {
        *v226 = v207;
      }
    }

    else
    {
      std::string::basic_string(v226, &v207, 0, v119, v213);
    }

    v170 = v6;
    v171 = v226[23];
    v172 = "host";
    v173 = &kSecCodeDirectoryFlagTable;
    v174 = *v226;
    while (1)
    {
      if (*(v173 + 12) != 1)
      {
        goto LABEL_332;
      }

      v175 = strlen(v172);
      v176 = v175;
      if ((v171 & 0x80) != 0)
      {
        break;
      }

      if (v175 == v171)
      {
        v177 = v226;
        goto LABEL_331;
      }

LABEL_332:
      v178 = v173[2];
      v173 += 2;
      v172 = v178;
      if (!v178)
      {
        Security::MacOSError::throwMe(0xFFFEFA02);
      }
    }

    if (v175 != *(&v174 + 1))
    {
      goto LABEL_332;
    }

    v177 = v174;
    if (*(&v174 + 1) == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

LABEL_331:
    if (memcmp(v177, v172, v176))
    {
      goto LABEL_332;
    }

    v179 = *(v173 + 2);
    if ((v171 & 0x80) != 0)
    {
      operator delete(v174);
    }

    v169 |= v179;
    v6 = v170;
    if (v119 != -1)
    {
      std::string::basic_string(v226, &v207, v119 + 1, 0xFFFFFFFFFFFFFFFFLL, v213);
      if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v207.__r_.__value_.__l.__data_);
      }

      v207 = *v226;
      v180 = *&v226[16];
      v226[23] = 0;
      v226[0] = 0;
      v181 = HIBYTE(v180);
      v115 = v181;
      if ((v181 & 0x80u) == 0)
      {
        v182 = v181;
      }

      else
      {
        v182 = v207.__r_.__value_.__l.__size_;
      }

      if (v182)
      {
        if ((v181 & 0x80u) == 0)
        {
          v183 = &v207;
        }

        else
        {
          v183 = v207.__r_.__value_.__r.__words[0];
        }

        v184 = memchr(v183, 44, v182);
        if (v184)
        {
          v119 = v184 - v183;
        }

        else
        {
          v119 = -1;
        }
      }

      else
      {
        v119 = -1;
      }

      continue;
    }

    break;
  }

  *(this + 72) = v169;
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v207.__r_.__value_.__l.__data_);
  }

  v66 = secLogObjForScope("signer");
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    v185 = *(this + 72);
    *v226 = 67109120;
    *&v226[4] = v185;
    v86 = "using text cdFlags=0x%x from Info.plist";
    goto LABEL_355;
  }

LABEL_153:
  v67 = (v6 & 0x100) == 0;
LABEL_154:
  v68 = *(this + 1);
  v69 = *MEMORY[0x1E695E738];
  if (*(v68 + 24) == *MEMORY[0x1E695E738] && (*(v68 + 301) & 1) == 0)
  {
    *(this + 72) |= 2u;
  }

  v70 = *(v68 + 120);
  if (!v70)
  {
    if ((v6 & 2) != 0)
    {
      v74 = Security::CodeSigning::SecStaticCode::internalRequirements(*(this + 2));
      if (v74)
      {
        goto LABEL_177;
      }
    }

    goto LABEL_203;
  }

  v71 = CFGetTypeID(v70);
  TypeID = CFDataGetTypeID();
  v73 = *(*(this + 1) + 120);
  if (v71 != TypeID)
  {
    v87 = CFGetTypeID(v73);
    if (v87 != CFStringGetTypeID())
    {
      Security::MacOSError::throwMe(0xFFFEFA01);
    }

    theDict = 0xAAAAAAAAAAAAAAAALL;
    theDict = CFStringCreateMutableCopy(0, 0, *(*(this + 1) + 120));
    v88 = CFStringGetLength(theDict);
    v89 = theDict;
    if (*(this + 159) < 0)
    {
      std::string::__init_copy_ctor_external(&v206, *(this + 17), *(this + 18));
    }

    else
    {
      *&v206.__r_.__value_.__l.__data_ = *&v196->__r_.__value_.__l.__data_;
      v206.__r_.__value_.__r.__words[2] = *(this + 19);
    }

    Security::CFTempString::CFTempString<std::string>(v226, &v206);
    v228.location = 0;
    v228.length = v88;
    CFStringFindAndReplace(v89, @"$self.identifier", *v226, v228, 0);
    Security::CFRef<__CFString const*>::~CFRef(v226);
    if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v206.__r_.__value_.__l.__data_);
    }

    Security::cfString(&__str, theDict);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v209, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      v209 = __str;
    }

    memset(v226, 0, 24);
    v92 = *(*(Security::ModuleNexus<Security::CodeSigning::PluginHost>::operator()() + 72) + 32);
    v93 = SHIBYTE(v209.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v213, v209.__r_.__value_.__l.__data_, v209.__r_.__value_.__l.__size_);
    }

    else
    {
      *v213 = v209;
    }

    v94 = v92(v213, v226);
    if ((v213[23] & 0x80000000) != 0)
    {
      operator delete(*v213);
    }

    if (!v94)
    {
      if ((v226[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v226, *&v226[8]);
      }

      else
      {
        __p = *v226;
      }

      Security::CFTempString::CFTempString<std::string>(&v204, &__p);
      Security::CodeSigning::CSError::throwMe(0xFFFEFA14, @"SecRequirementSyntax", v204.__r_.__value_.__l.__data_, v192);
    }

    if ((v226[23] & 0x80000000) != 0)
    {
      operator delete(*v226);
      if ((v93 & 0x80000000) == 0)
      {
        goto LABEL_200;
      }
    }

    else if ((v93 & 0x80000000) == 0)
    {
LABEL_200:
      *(this + 37) = v94;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      Security::CFRef<__CFString *>::~CFRef(&theDict);
      goto LABEL_203;
    }

    operator delete(v209.__r_.__value_.__l.__data_);
    goto LABEL_200;
  }

  v74 = CFDataGetBytePtr(v73);
  if (*v74 != 17620730 || (v75 = 8 * bswap32(v74[2]), v76 = v75 + 12, v77 = bswap32(v74[1]), v75 + 12 > v77))
  {
    *__error() = 22;
    goto LABEL_383;
  }

  if ((v75 | 4uLL) >= 0xC)
  {
    while (1)
    {
      v78 = v74[v75 / 4 + 2];
      if (v78)
      {
        v79 = bswap32(v78);
        v80 = v76 > v79 || v79 + 8 > v77;
        if (v80 || bswap32(*(v74 + v79 + 4)) + v79 > v77)
        {
          break;
        }
      }

      v81 = v75 + 4;
      v75 -= 8;
      if (v81 < 20)
      {
        goto LABEL_177;
      }
    }

LABEL_383:
    Security::MacOSError::throwMe(0xFFFEFA14);
  }

LABEL_177:
  *(this + 37) = Security::Blob<Security::SuperBlob<4208856065u,unsigned int>,4208856065u>::clone(v74);
LABEL_203:
  memset(&__str, 170, sizeof(__str));
  (*(**(this + 3) + 56))(&__str);
  memset(&v204, 0, sizeof(v204));
  v203 = 0;
  v95 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = __str.__r_.__value_.__l.__size_;
  }

  if (v95)
  {
    Security::CFRef<__CFURL const*>::operator=(&v203, (*(this + 1) + 40));
    v96 = v203;
    if (!v203 && (v6 & 8) != 0)
    {
      v97 = Security::CodeSigning::SecStaticCode::resourceDictionary(*(this + 2), 0);
      v96 = v97;
      if (v97)
      {
        CFRetain(v97);
        if (v203)
        {
          CFRelease(v203);
        }

        v203 = v96;
        goto LABEL_216;
      }

      v96 = v203;
    }

    if (v96)
    {
      goto LABEL_216;
    }

    if (!cf)
    {
      goto LABEL_254;
    }

    v100 = CFDictionaryGetValue(cf, *MEMORY[0x1E695E140]);
    v101 = v100;
    if (!v100)
    {
      v96 = v203;
      if (v203)
      {
        goto LABEL_216;
      }

      goto LABEL_254;
    }

    v102 = CFGetTypeID(v100);
    if (v102 == CFStringGetTypeID())
    {
      theDict = 0xAAAAAAAAAAAAAAAALL;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v103 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v103 = __str.__r_.__value_.__l.__size_;
      }

      memset(v213, 170, 24);
      std::string::basic_string[abi:ne200100](v213, v103 + 1);
      if (v213[23] >= 0)
      {
        v104 = v213;
      }

      else
      {
        v104 = *v213;
      }

      if (v103)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v104, p_str, v103);
      }

      *&v104[v103] = 47;
      Security::cfString(&__p, v101);
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
        v107 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v107 = __p.__r_.__value_.__l.__size_;
      }

      v108 = std::string::append(v213, p_p, v107);
      v111 = v108->__r_.__value_.__r.__words[0];
      v110 = v108->__r_.__value_.__l.__size_;
      LODWORD(v218) = v108->__r_.__value_.__r.__words[2];
      *(&v218 + 3) = *(&v108->__r_.__value_.__r.__words[2] + 3);
      v112 = SHIBYTE(v108->__r_.__value_.__r.__words[2]);
      v108->__r_.__value_.__l.__size_ = 0;
      v108->__r_.__value_.__r.__words[2] = 0;
      v108->__r_.__value_.__r.__words[0] = 0;
      if (v112 < 0)
      {
        std::string::__init_copy_ctor_external(v226, v111, v110);
        if (v226[23] >= 0)
        {
          v113 = v226;
        }

        else
        {
          v113 = *v226;
        }
      }

      else
      {
        *v226 = v111;
        *&v226[8] = v110;
        *&v226[16] = v218;
        *&v226[19] = *(&v218 + 3);
        v226[23] = v112;
        v113 = v226;
      }

      v209.__r_.__value_.__r.__words[0] = Security::makeCFURL(v113, 0, 0, v109);
      File = Security::cfLoadFile(v209.__r_.__value_.__l.__data_, v188);
      Security::CFRef<__CFURL const*>::~CFRef(&v209.__r_.__value_.__l.__data_);
      if ((v226[23] & 0x80000000) != 0)
      {
        operator delete(*v226);
      }

      theDict = File;
      if (v112 < 0)
      {
        operator delete(v111);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v213[23] & 0x80000000) != 0)
      {
        operator delete(*v213);
      }

      if (theDict)
      {
        CFDictionaryFrom = Security::makeCFDictionaryFrom(theDict, v190);
        if (CFDictionaryFrom)
        {
          if (v203)
          {
            CFRelease(v203);
          }

          v203 = CFDictionaryFrom;
        }
      }

      Security::CFRef<__CFData const*>::~CFRef(&theDict);
    }

    v96 = v203;
    if (!v203)
    {
      Security::MacOSError::throwMe(0xFFFEFA13);
    }

LABEL_216:
    v98 = CFDictionaryGetValue(v96, @"rules");
    if (!v98 || (v99 = CFGetTypeID(v98), v99 != CFDictionaryGetTypeID()))
    {
      Security::MacOSError::throwMe(0xFFFEFA13);
    }

    if (!v203)
    {
LABEL_254:
      v120 = (*(**(this + 3) + 200))(*(this + 3), this);
      if (v203)
      {
        CFRelease(v203);
      }

      v203 = v120;
    }

    std::string::operator=(&v204, &__str);
    if (((*(*this + 16))(this) & 0x40) != 0)
    {
      v121 = (*(**(this + 3) + 48))(*(this + 3));
      Security::cfStringRelease(v226, v121);
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v204.__r_.__value_.__l.__data_);
      }

      v204 = *v226;
    }
  }

  v122 = *(this + 1);
  v123 = *(v122 + 48);
  if (v123 == v69)
  {
    *(this + 344) = 0;
  }

  else if (v123)
  {
    v124 = MEMORY[0x18CFD8B20]();
    if (v124 > CFAbsoluteTimeGetCurrent())
    {
      Security::MacOSError::throwMe(0xFFFEFA0ELL);
    }

    *(this + 344) = 1;
    *(this + 42) = v124;
    v122 = *(this + 1);
  }

  else
  {
    *(this + 344) = 1;
    *(this + 42) = 0;
  }

  v125 = *(v122 + 256);
  if (v125)
  {
    v126 = Security::cfNumber<unsigned long>(v125);
  }

  else
  {
    v126 = (*(**(this + 3) + 216))(*(this + 3), this);
  }

  *(this + 38) = v126;
  v202 = 0xAAAAAAAAAAAAAAAALL;
  if ((*(**(*(this + 2) + 32) + 80))(*(*(this + 2) + 32)))
  {
    v127 = (*(**(*(this + 2) + 32) + 80))(*(*(this + 2) + 32));
    v128 = Security::Universal::bestNativeArch(v127);
  }

  else
  {
    v128 = Security::Architecture::local(0);
  }

  v202 = v128;
  v129 = *(*(this + 1) + 256);
  if (v129)
  {
    v130 = Security::cfNumber<unsigned long>(v129);
  }

  else
  {
    v130 = (*(**(this + 3) + 224))(*(this + 3), this, &v202);
  }

  *v226 = &v202;
  std::__tree<std::__value_type<Security::Architecture,unsigned long>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,unsigned long>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,unsigned long>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>(this + 39, v202, v226)[5] = v130;
  v131 = *(this + 2);
  v201[0] = MEMORY[0x1E69E9820];
  v201[1] = 0x40000000;
  v201[2] = ___ZN8Security11CodeSigning13SecCodeSigner6Signer7prepareEj_block_invoke;
  v201[3] = &__block_descriptor_tmp_18538;
  v201[4] = this;
  Security::CodeSigning::SecStaticCode::visitOtherArchitectures(v131, v201);
  (*(**(this + 3) + 72))(*(this + 3), this);
  if (!*(this + 16))
  {
    *v226 = 2;
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v195, 2u, v226);
  }

  v132 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v132 = __str.__r_.__value_.__l.__size_;
  }

  if (!v132)
  {
    goto LABEL_306;
  }

  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v200, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_285;
    }

LABEL_283:
    v199 = __str;
  }

  else
  {
    v200 = v204;
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_283;
    }

LABEL_285:
    std::string::__init_copy_ctor_external(&v199, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  v133 = v203;
  v134 = secLogObjForScope("codesign");
  v135 = os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG);
  if (v135)
  {
    *v226 = 0;
    _os_log_debug_impl(&dword_1887D2000, v134, OS_LOG_TYPE_DEBUG, "start building resource directory", v226, 2u);
  }

  theDict = 0xAAAAAAAAAAAAAAAALL;
  theDict = Security::makeCFMutableDictionary(v135);
  v142 = Security::cfget<__CFDictionary const*>(v133, "rules", v136, v137, v138, v139, v140, v141, v193);
  if (!*(*(this + 1) + 288))
  {
    if (((*(*this + 16))(this) & 0x800) == 0)
    {
      operator new();
    }

    operator new();
  }

  if (((*(*this + 16))(this) & 0x10) != 0)
  {
    v155 = 0;
  }

  else
  {
    v209.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    v149 = Security::cfget<__CFDictionary const*>(v133, "rules2", v143, v144, v145, v146, v147, v148, v194);
    Security::CFCopyRef<__CFDictionary const*>::CFCopyRef(&v209, v149);
    if (!v209.__r_.__value_.__r.__words[0])
    {
      v150 = Security::cfmake<__CFDictionary const*>("{+%O'^(Frameworks|SharedFrameworks|PlugIns|Plug-ins|XPCServices|Helpers|MacOS|Library/(Automator|Spotlight|LoginItems))/' = {nested=#T, weight=0}}", v142);
      if (v209.__r_.__value_.__r.__words[0])
      {
        CFRelease(v209.__r_.__value_.__l.__data_);
      }

      v209.__r_.__value_.__r.__words[0] = v150;
    }

    *&v226[88] = 0xAAAAAAAAAAAAAAAALL;
    *&v151 = 0xAAAAAAAAAAAAAAAALL;
    *(&v151 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v226[72] = v151;
    *&v226[56] = v151;
    *&v226[40] = v151;
    *&v226[24] = v151;
    *&v226[8] = v151;
    *v226 = &unk_1EFA8A990;
    Security::Mutex::Mutex(&v226[8]);
    v226[72] = 0;
    *&v226[80] = 0;
    *&v226[88] = dispatch_group_create();
    v218 = 0xAAAAAAAAAAAAAAAALL;
    CFMutableDictionary = Security::makeCFMutableDictionary(*&v226[88]);
    v218 = CFMutableDictionary;
    *&v153 = 0xAAAAAAAAAAAAAAAALL;
    *(&v153 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v216 = v153;
    v217 = v153;
    v214 = v153;
    *value = v153;
    *v213 = v153;
    *&v213[16] = v153;
    v154 = *(this + 345);
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
    Security::CodeSigning::ResourceBuilder::ResourceBuilder(v213, &v200, &v199, v209.__r_.__value_.__l.__data_, v154, &__p);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(__p.__r_.__value_.__l.__size_);
    (*(**(this + 3) + 64))(*(this + 3), v213);
    __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    __p.__r_.__value_.__l.__size_ = 0x40000000;
    __p.__r_.__value_.__r.__words[2] = ___ZN8Security11CodeSigning13SecCodeSigner6Signer14buildResourcesENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_PK14__CFDictionary_block_invoke;
    v221 = &__block_descriptor_tmp_31_18547;
    v222 = this;
    v223 = CFMutableDictionary;
    v224 = v226;
    v225 = v213;
    Security::CodeSigning::ResourceBuilder::scan(v213, &__p, 0);
    Security::Dispatch::Group::wait(v226);
    CFDictionaryAddValue(theDict, @"rules2", value[1]);
    v155 = v218;
    CFDictionaryAddValue(theDict, @"files2", v218);
    Security::CodeSigning::ResourceBuilder::~ResourceBuilder(v213);
    Security::CFRef<__CFDictionary *>::~CFRef(&v218);
    Security::Dispatch::Group::~Group(v226);
    Security::CFRef<__CFDictionary const*>::~CFRef(&v209.__r_.__value_.__l.__data_);
  }

  CFDictionaryAddValue(theDict, @"rules", v142);
  v156 = (*(*this + 16))(this);
  if ((v156 & 0x20) == 0)
  {
    v209.__r_.__value_.__r.__words[0] = 0;
    v209.__r_.__value_.__l.__size_ = &v209;
    v209.__r_.__value_.__r.__words[2] = 0x3002000000;
    v210 = __Block_byref_object_copy__18550;
    v211 = __Block_byref_object_dispose__18551;
    v212 = 0xAAAAAAAAAAAAAAAALL;
    v157 = Security::makeCFMutableDictionary(v156);
    *&v158 = 0xAAAAAAAAAAAAAAAALL;
    *(&v158 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v226[64] = v158;
    *&v226[80] = v158;
    *&v226[32] = v158;
    *&v226[48] = v158;
    *v226 = v158;
    *&v226[16] = v158;
    v159 = *(this + 345);
    *&v213[8] = 0;
    *&v213[16] = 0;
    v212 = v157;
    *v213 = &v213[8];
    Security::CodeSigning::ResourceBuilder::ResourceBuilder(v226, &v200, &v199, v142, v159, v213);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*&v213[8]);
    (*(**(this + 3) + 64))(*(this + 3), v226);
    *v213 = MEMORY[0x1E69E9820];
    *&v213[8] = 0x40000000;
    *&v213[16] = ___ZN8Security11CodeSigning13SecCodeSigner6Signer14buildResourcesENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_PK14__CFDictionary_block_invoke_38;
    *&v213[24] = &unk_1E70E5018;
    *(&v214 + 1) = v155;
    value[0] = v226;
    *&v214 = &v209;
    Security::CodeSigning::ResourceBuilder::scan(v226, v213, 0);
    CFDictionaryAddValue(theDict, @"files", *(v209.__r_.__value_.__l.__size_ + 40));
    Security::CodeSigning::ResourceBuilder::~ResourceBuilder(v226);
    _Block_object_dispose(&v209, 8);
    Security::CFRef<__CFDictionary *>::~CFRef(&v212);
  }

  Security::CFRef<__CFArray const*>::operator=(this + 12, theDict);
  Data = CFPropertyListCreateData(0, *(this + 12), kCFPropertyListXMLFormat_v1_0, 0, 0);
  v161 = *(this + 13);
  if (v161)
  {
    CFRelease(v161);
  }

  *(this + 13) = Data;
  Security::CFRef<__CFDictionary *>::~CFRef(&theDict);
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v199.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
    if ((v6 & 0x80) != 0)
    {
LABEL_307:
      v162 = v202;
      *(this + 28) = v202;
      *v226 = this + 224;
      v163 = std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>(this + 29, v162, v226);
      Security::CodeSigning::SecCodeSigner::Signer::addPreEncryptHashes((v163 + 5), *(this + 2));
      v164 = *(this + 2);
      v198[0] = MEMORY[0x1E69E9820];
      v198[1] = 0x40000000;
      v198[2] = ___ZN8Security11CodeSigning13SecCodeSigner6Signer7prepareEj_block_invoke_2;
      v198[3] = &__block_descriptor_tmp_11_18539;
      v198[4] = this;
      *v226 = MEMORY[0x1E69E9820];
      *&v226[8] = 0x40000000;
      *&v226[16] = ___ZN8Security11CodeSigning13SecStaticCode24handleOtherArchitecturesEU13block_pointerFvPS1_E_block_invoke;
      *&v226[24] = &unk_1E70E4E28;
      *&v226[32] = v198;
      *&v226[40] = v164;
      Security::CodeSigning::SecStaticCode::visitOtherArchitectures(v164, v226);
    }
  }

  else
  {
LABEL_306:
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_307;
    }
  }

  if (!v67)
  {
    v165 = v202;
    *(this + 32) = v202;
    *v226 = this + 256;
    v166 = std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>(this + 33, v165, v226);
    Security::CodeSigning::SecCodeSigner::Signer::addRuntimeVersions(v166 + 5, *(this + 2));
    v167 = *(this + 2);
    v197[0] = MEMORY[0x1E69E9820];
    v197[1] = 0x40000000;
    v197[2] = ___ZN8Security11CodeSigning13SecCodeSigner6Signer7prepareEj_block_invoke_3;
    v197[3] = &__block_descriptor_tmp_12_18540;
    v197[4] = this;
    *v226 = MEMORY[0x1E69E9820];
    *&v226[8] = 0x40000000;
    *&v226[16] = ___ZN8Security11CodeSigning13SecStaticCode24handleOtherArchitecturesEU13block_pointerFvPS1_E_block_invoke;
    *&v226[24] = &unk_1E70E4E28;
    *&v226[32] = v197;
    *&v226[40] = v167;
    Security::CodeSigning::SecStaticCode::visitOtherArchitectures(v167, v226);
  }

  Security::CFRef<__CFDictionary const*>::~CFRef(&v203);
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return Security::CFRef<__CFDictionary const*>::~CFRef(&cf);
}

void sub_1889452CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, const void *a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  operator delete(v66);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a63);
  }

  Security::CFRef<__CFDictionary const*>::~CFRef(&a36);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  Security::CFRef<__CFDictionary const*>::~CFRef(&a56);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::PreSigningContext::~PreSigningContext(Security::CodeSigning::PreSigningContext *this)
{
  Security::CFRef<__CFArray const*>::~CFRef(this + 12);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t **std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_25:
    operator new();
  }

  v4 = HIDWORD(a2);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      v8 = v4 != HIDWORD(v6) && SHIDWORD(a2) < SHIDWORD(v6);
      if (a2 != v6)
      {
        v8 = a2 < v6;
      }

      if (!v8)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_25;
      }
    }

    v9 = v4 != HIDWORD(v6) && SHIDWORD(v6) < SHIDWORD(a2);
    v10 = v9;
    v11 = a2 == v6 ? v10 : v6 < a2;
    if (v11 != 1)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

uint64_t Security::CodeSigning::SecCodeSigner::Signer::populate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, int a12)
{
  v49[4] = *MEMORY[0x1E69E9840];
  (*(**(a1 + 24) + 40))(__p);
  Security::UnixPlusPlus::FileDesc::close((a2 + 40));
  if (v48 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  Security::UnixPlusPlus::FileDesc::open((a2 + 40), v20, 0, 438);
  *(a2 + 56) = a6;
  *(a2 + 64) = a10;
  *(a2 + 48) = a5;
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  *(a2 + 72) = *(a1 + 288);
  std::string::operator=((a2 + 88), (a1 + 136));
  std::string::operator=((a2 + 112), (a1 + 160));
  *(a2 + 80) = *(*(a1 + 8) + 248);
  *(a2 + 168) = a8;
  *(a2 + 176) = a9;
  *(a2 + 184) = a7;
  v43 = a4;
  v44 = a7;
  *(a2 + 192) = ((*(*a1 + 16))(a1) >> 8) & 1;
  v46[0] = 0;
  v46[1] = 0;
  v45 = v46;
  v21 = *a11;
  if (*a11 != a11 + 1)
  {
    if (v45 != v46)
    {
      v22 = v46;
      do
      {
        v23 = v22[2];
        v24 = *v23 == v22;
        v22 = v23;
      }

      while (v24);
    }

    memset(v49, 170, 24);
    std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::__construct_node<std::pair<unsigned int const,Security::CFCopyRef<__CFData const*>> const&>(v49, &v45, (v21 + 4));
  }

  if ((a2 + 200) != &v45)
  {
    v25 = v45;
    if (*(a2 + 216))
    {
      v27 = (a2 + 208);
      v26 = *(a2 + 208);
      v28 = *(a2 + 200);
      *(a2 + 200) = a2 + 208;
      *(v26 + 16) = 0;
      *(a2 + 208) = 0;
      *(a2 + 216) = 0;
      if (v28[1])
      {
        v29 = v28[1];
      }

      else
      {
        v29 = v28;
      }

      v49[0] = (a2 + 200);
      v49[1] = v29;
      v49[2] = v29;
      if (!v29 || (v49[1] = std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::_DetachedTreeCache::__detach_next(v29), v25 == v46))
      {
        v34 = v25;
      }

      else
      {
        do
        {
          *(v29 + 8) = *(v25 + 8);
          Security::CFRef<__CFURL const*>::operator=(v29 + 5, v25 + 5);
          v30 = *v27;
          v31 = (a2 + 208);
          v32 = (a2 + 208);
          if (*v27)
          {
            do
            {
              while (1)
              {
                v31 = v30;
                if (*(v49[2] + 8) >= *(v30 + 8))
                {
                  break;
                }

                v30 = *v30;
                v32 = v31;
                if (!*v31)
                {
                  goto LABEL_24;
                }
              }

              v30 = v30[1];
            }

            while (v30);
            v32 = v31 + 1;
          }

LABEL_24:
          std::__tree<unsigned int>::__insert_node_at((a2 + 200), v31, v32, v49[2]);
          v29 = v49[1];
          v49[2] = v49[1];
          if (v49[1])
          {
            v49[1] = std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::_DetachedTreeCache::__detach_next(v49[1]);
          }

          v33 = v25[1];
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = v25[2];
              v24 = *v34 == v25;
              v25 = v34;
            }

            while (!v24);
          }

          if (!v29)
          {
            break;
          }

          v25 = v34;
        }

        while (v34 != v46);
      }

      std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](v49);
      v25 = v34;
    }

    if (v25 != v46)
    {
      memset(v49, 170, 24);
      std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::__construct_node<std::pair<unsigned int const,Security::CFCopyRef<__CFData const*>> const&>(v49, a2 + 200, (v25 + 4));
    }
  }

  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(v46[0]);
  *(a2 + 224) = a12;
  v35 = (*(**(a1 + 24) + 24))(*(a1 + 24), 1);
  v49[0] = v35;
  if (v35)
  {
    Security::CodeSigning::CodeDirectory::Builder::specialSlot(a2, 1u, v35);
  }

  Security::CFRef<__CFData const*>::~CFRef(v49);
  v36 = *(v43 + 24);
  if (v36)
  {
    v37 = CFDataCreate(0, v36, bswap32(*(v36 + 4)));
    v49[0] = v37;
    (*(*a3 + 16))(a3, 2, v37);
    Security::CodeSigning::CodeDirectory::Builder::specialSlot(a2, 2u, v37);
  }

  if (*(a1 + 96))
  {
    Security::CodeSigning::CodeDirectory::Builder::specialSlot(a2, 3u, *(a1 + 104));
  }

  v38 = *(a1 + 192);
  v39 = *(a1 + 200);
  if (v38 != v39)
  {
    v40 = 8;
    do
    {
      if (*v38)
      {
        (*(*a3 + 16))(a3, v40);
        Security::CodeSigning::CodeDirectory::Builder::specialSlot(a2, v40, *v38);
      }

      v40 = (v40 + 1);
      ++v38;
    }

    while (v38 != v39);
  }

  if (*(a1 + 216))
  {
    (*(*a3 + 16))(a3, 11);
    Security::CodeSigning::CodeDirectory::Builder::specialSlot(a2, 0xBu, *(a1 + 216));
  }

  if (*(a1 + 184) && ((v44 & 1) != 0 || *(*(a1 + 8) + 72) == 1))
  {
    (*(*a3 + 16))(a3, 5);
    Security::CodeSigning::CodeDirectory::Builder::specialSlot(a2, 5u, *(a1 + 184));
  }

  v41 = (*(**(a1 + 24) + 24))(*(a1 + 24), 6);
  v49[0] = v41;
  if (v41)
  {
    Security::CodeSigning::CodeDirectory::Builder::specialSlot(a2, 6u, v41);
  }

  Security::CFRef<__CFData const*>::~CFRef(v49);
  return (*(*a3 + 32))(a3, a2);
}

void sub_1889461F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf)
{
  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = (*(*v24 + 16))(v24);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v26;
      _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "failed to parse entitlements: %s", &buf, 0xCu);
    }

    __cxa_rethrow();
  }

  Security::CFRef<__CFData const*>::~CFRef(&a12);
  _Unwind_Resume(a1);
}

void sub_188946300(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_188946310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void **a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(a14);
  _Unwind_Resume(a1);
}

void *Security::CodeSigning::SecCodeSigner::Signer::signCodeDirectory(Security::CodeSigning::SecCodeSigner::Signer *this, const Security::CodeSigning::CodeDirectory *a2, const __CFDictionary *a3, const __CFArray *a4)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*(this + 346) != 1)
  {
    *buf = 0;
    if (*(*(this + 1) + 24) != *MEMORY[0x1E695E738])
    {
      cf = 0;
      updated = CMSEncoderCreate(&cf);
      if (!updated)
      {
        v42 = cf;
        if (!cf || *(cf + 4) || (*(cf + 30) = 4, CMSEncoderAddSigners(v42, *(*(this + 1) + 24)), CMSEncoderSetSignerAlgorithm(v42, @"sha256"), *(v42 + 4)))
        {
          updated = 4294967246;
        }

        else
        {
          v42[24] = 1;
          if (*(this + 344) == 1)
          {
            *(v42 + 18) |= 8u;
            Current = *(this + 42);
            if (Current == 0.0 && (Current = CFAbsoluteTimeGetCurrent(), (v42 = cf) == 0) || *(v42 + 4))
            {
              Security::MacOSError::throwMe(0xFFFFFFCELL);
            }

            *(v42 + 10) = Current;
          }

          if (a3)
          {
            *(v42 + 18) |= 0x20u;
            CFRetain(a3);
            *(v42 + 17) = a3;
            propertyList = 0xAAAAAAAAAAAAAAAALL;
            Security::CFTemp<__CFDictionary const*>::CFTemp(&propertyList, "{cdhashes=%O}", a4);
            Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
            v45 = Data;
            v77 = Data;
            v46 = cf;
            if (!cf || *(cf + 4))
            {
              Security::MacOSError::throwMe(0xFFFFFFCELL);
            }

            *(cf + 18) |= 0x10u;
            if (Data)
            {
              CFRetain(Data);
            }

            v46[16] = v45;
            Security::CFRef<__CFData const*>::~CFRef(&v77);
            Security::CFRef<__CFDictionary const*>::~CFRef(&propertyList);
            v42 = cf;
          }

          updated = CMSEncoderUpdateContent(v42, a2, bswap32(*(a2 + 1)));
          if (!updated)
          {
            if (*(*(this + 1) + 280) != 1)
            {
              propertyList = 0xAAAAAAAAAAAAAAAALL;
              v47 = CMSEncoderCopyEncodedContent(cf, &propertyList);
              if (v47)
              {
                Security::MacOSError::throwMe(v47);
              }

              v48 = propertyList;
              Security::CFRef<_CMSEncoder *>::~CFRef(&cf);
              goto LABEL_62;
            }

            v62 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(propertyList) = 0;
              _os_log_impl(&dword_1887D2000, v62, OS_LOG_TYPE_DEFAULT, "Platform does not support signing secure timestamps", &propertyList, 2u);
            }

            updated = 4294967292;
          }
        }
      }

      Security::MacOSError::throwMe(updated);
    }

    v48 = CFDataCreate(0, 0, 0);
LABEL_62:
    Security::CFRef<__CFDictionary *>::~CFRef(buf);
    return v48;
  }

  v8 = 0.0;
  if (*(this + 344) == 1)
  {
    v8 = *(this + 42);
    if (v8 == 0.0)
    {
      v8 = CFAbsoluteTimeGetCurrent();
    }
  }

  v9 = *(this + 44);
  v10 = *(this + 45);
  v71 = 0;
  v11 = v9;
  v12 = v11;
  cf = 0;
  if (!a2 || !*(a2 + 1))
  {
    v17 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v49 = "Remote signing requires valid code directory.";
LABEL_56:
    v50 = v17;
    v51 = 2;
LABEL_57:
    _os_log_impl(&dword_1887D2000, v50, OS_LOG_TYPE_DEFAULT, v49, buf, v51);
    goto LABEL_58;
  }

  if (!a3)
  {
    v17 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v49 = "Remote signing requires hash dictionary.";
    goto LABEL_56;
  }

  if (!a4)
  {
    v17 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v49 = "Remote signing requires hash list.";
    goto LABEL_56;
  }

  if (!v11)
  {
    v17 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v49 = "Remote signing requires signing block.";
    goto LABEL_56;
  }

  if (v10 && CFArrayGetCount(v10))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
    v14 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    cf = v14;
    v15 = *MEMORY[0x1E69B1760];
    propertyList = 0;
    v16 = [MEMORY[0x1E69B17C0] OIDWithString:v15 error:&propertyList];
    v17 = propertyList;
    if (v16)
    {
      v18 = objc_alloc(MEMORY[0x1E69B17A8]);
      if (objc_opt_respondsToSelector())
      {
        v19 = v18;
        v77 = v17;
        v70 = [v19 initWithCertificate:cf signatureAlgorithm:v16 useIssuerAndSerialNumber:1 error:&v77];
        v20 = v77;

        if (!v70 || v20)
        {
          v54 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = cf;
            v56 = [v16 OIDString];
            *buf = 138412802;
            *&buf[4] = v55;
            *&buf[12] = 2112;
            *&buf[14] = v56;
            v81 = 2112;
            v82 = v20;
            _os_log_impl(&dword_1887D2000, v54, OS_LOG_TYPE_DEFAULT, "Unable to create signer info: %@, %@, %@", buf, 0x20u);
          }

          v40 = 4294900305;
          v18 = v70;
          v17 = v20;
        }

        else
        {
          v69 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:bswap32(*(a2 + 1))];
          v76 = 0;
          v18 = [objc_alloc(MEMORY[0x1E69B17A0]) initWithDataContent:v69 isDetached:1 signer:v70 additionalCertificates:v10 error:&v76];
          v17 = v76;
          if (v18)
          {
            if (v8 != 0.0)
            {
              v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v8];
              v23 = [objc_alloc(MEMORY[0x1E69B17B0]) initWithSigningTime:v22];
              [v70 addProtectedAttribute:v23];
            }

            v24 = Security::CodeSigning::createHashAgilityV1Data(a4, v21);
            v67 = [objc_alloc(MEMORY[0x1E69B1778]) initWithHashAgilityValue:v24];
            [v70 addProtectedAttribute:v67];
            v66 = Security::CodeSigning::createHashAgilityV2Dictionary(a3, v25);
            v65 = [objc_alloc(MEMORY[0x1E69B1780]) initWithHashAgilityValues:v66];
            [v70 addProtectedAttribute:v65];
            v68 = [objc_alloc(MEMORY[0x1E69B1790]) initWithEmbeddedContent:v18];
            v75 = v17;
            v26 = [v70 calculateSignerInfoDigest:&v75];
            v27 = v75;

            if (v26)
            {
              v28 = MEMORY[0x1E69B1768];
              v29 = [v70 signatureAlgorithm];
              v74 = v27;
              v30 = [v28 digestAlgorithmWithSignatureAlgorithm:v29 error:&v74];
              v64 = v74;

              if (v30)
              {
                v31 = [v30 algorithm];
                v32 = [v31 OIDString];
                v34 = Security::CodeSigning::mapDigestAlgorithm(v32, v33);

                if (v34)
                {
                  v35 = secLogObjForScope("remotesigner");
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 67109378;
                    *&buf[4] = v34;
                    *&buf[8] = 2112;
                    *&buf[10] = v26;
                    _os_log_debug_impl(&dword_1887D2000, v35, OS_LOG_TYPE_DEBUG, "Passing out external digest: %d, %@", buf, 0x12u);
                  }

                  v73 = [v16 secKeyAlgorithm];
                  v63 = (v12)[2](v12, v26, v34, v73);
                  if (v63)
                  {
                    v36 = secLogObjForScope("remotesigner");
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      *&buf[4] = v63;
                      _os_log_debug_impl(&dword_1887D2000, v36, OS_LOG_TYPE_DEBUG, "Got external signature blob: %@", buf, 0xCu);
                    }

                    [v70 setSignature:v63];
                    v72 = v64;
                    v37 = [v68 encodeMessageSecurityObject:&v72];
                    v38 = v72;

                    if (!v37 || v38)
                    {
                      v61 = secLogObjForScope("SecError");
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *&buf[4] = v38;
                        _os_log_impl(&dword_1887D2000, v61, OS_LOG_TYPE_DEFAULT, "Failed to encode signature: %@", buf, 0xCu);
                      }

                      v40 = 4294900305;
                      v64 = v38;
                    }

                    else
                    {
                      v39 = secLogObjForScope("remotesigner");
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        *&buf[4] = v37;
                        _os_log_debug_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEBUG, "Encoded CMS signature: %@", buf, 0xCu);
                      }

                      v37 = v37;
                      v64 = 0;
                      v40 = 0;
                      v71 = v37;
                    }
                  }

                  else
                  {
                    v37 = secLogObjForScope("SecError");
                    v40 = 4294900306;
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEFAULT, "External block did not provide a signature, failing.", buf, 2u);
                    }
                  }

                  Security::CFRef<__CFString const*>::~CFRef(&v73);
                }

                else
                {
                  v58 = secLogObjForScope("SecError");
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    v59 = [v30 algorithm];
                    v60 = [v59 OIDString];
                    *buf = 138412290;
                    *&buf[4] = v60;
                    _os_log_impl(&dword_1887D2000, v58, OS_LOG_TYPE_DEFAULT, "Unable to map digest algorithm: %@", buf, 0xCu);
                  }

                  v40 = 4294900296;
                }
              }

              else
              {
                v57 = secLogObjForScope("SecError");
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v70;
                  *&buf[12] = 2112;
                  *&buf[14] = v64;
                  _os_log_impl(&dword_1887D2000, v57, OS_LOG_TYPE_DEFAULT, "Unable to create digest algorithm: %@, %@", buf, 0x16u);
                }

                v30 = 0;
                v40 = 4294900305;
              }

              v27 = v64;
            }

            else
            {
              v40 = 4294900305;
              v30 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v70;
                *&buf[12] = 2112;
                *&buf[14] = v27;
                _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "Unable to create signature digest: %@, %@", buf, 0x16u);
              }
            }

            v17 = v27;
          }

          else
          {
            v40 = 4294900305;
            v24 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v17;
              _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "Unable to create signed data: %@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        v53 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1887D2000, v53, OS_LOG_TYPE_DEFAULT, "Unable to create signer due to old CMS interfaces", buf, 2u);
        }

        v40 = 4294966387;
      }
    }

    else
    {
      v18 = secLogObjForScope("SecError");
      v40 = 4294899624;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "Unable to create signing algorithm: %@", buf, 0xCu);
      }
    }

    goto LABEL_59;
  }

  v17 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v10;
    v49 = "Unable to perform remote signing with no certificates: %@";
    v50 = v17;
    v51 = 12;
    goto LABEL_57;
  }

LABEL_58:
  v40 = 4294967246;
LABEL_59:

  Security::CFRef<__SecCertificate *>::~CFRef(&cf);
  if (v40)
  {
    Security::MacOSError::throwMe(v40);
  }

  v48 = v71;
  v71 = 0;
  Security::CFRef<__CFData const*>::~CFRef(&v71);
  return v48;
}

void sub_188947088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, const void *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, const void *a32)
{
  Security::CFRef<__SecCertificate *>::~CFRef(&a32);

  Security::CFRef<__CFData const*>::~CFRef(&a20);
  _Unwind_Resume(a1);
}

const void **Security::CFRef<_CMSEncoder *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const __CFBoolean *Security::CodeSigning::SecCodeSigner::Signer::BOOLeanEntitlement(Security::CodeSigning::SecCodeSigner::Signer *this, const __CFDictionary *a2, const __CFString *a3)
{
  result = CFDictionaryGetValue(this, a2);
  if (result)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(v4) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(v2);
  }

  return a1;
}

void sub_18894742C(_Unwind_Exception *a1)
{
  Security::CFRef<__CFData const*>::~CFRef(v2);
  std::unique_ptr<std::__tree_node<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
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
      v5 = *(v3 + 7);
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

uint64_t ___ZN8Security11CodeSigning13SecCodeSigner6Signer9signMachOEPNS_9UniversalERKNS0_11Requirement7ContextE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v5 + 56);
  v7 = *(v6 + 48);
  CodeSignature = Security::MachOBase::findCodeSignature(v6);
  if (!CodeSignature || ((cmd = CodeSignature[1].cmd, v10 = bswap32(cmd), !*(v6 + 33)) ? (v11 = cmd) : (v11 = v10), !v11))
  {
    v11 = *(v6 + 56);
  }

  v12 = *(a1 + 52);
  v13 = (*(*v4[3] + 104))(v4[3], *(a1 + 40) + 48);
  v14 = (*(*v4[3] + 112))(v4[3], *(a1 + 40) + 48);
  v15 = *(a1 + 40);
  v16 = *(v15 + 48);
  v22 = (v15 + 48);
  v17 = std::__tree<std::__value_type<Security::Architecture,unsigned long>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,unsigned long>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,unsigned long>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>(v4 + 39, v16, &v22)[5];
  ((*v4)[3])(v4);
  v18 = *(a1 + 40);
  v19 = *(v18 + 48);
  v22 = (v18 + 48);
  v20 = std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>(v4 + 29, v19, &v22);
  return Security::CodeSigning::SecCodeSigner::Signer::populate(v4, a2, v5, v5 + 88, v7, v11, v12, v13, v14, v17, v20 + 5, *(a1 + 48));
}

__n128 __Block_byref_object_copy__48(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__49(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN8Security11CodeSigning13SecCodeSigner6Signer9signMachOEPNS_9UniversalERKNS0_11Requirement7ContextE_block_invoke_50(uint64_t a1, Security::CodeSigning::CodeDirectory::Builder *this)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = Security::CodeSigning::CodeDirectory::Builder::size(this, 0x20500u);
  v5 = v2[6];
  v4 = v2[7];
  if (v5 >= v4)
  {
    v7 = v2[5];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (v5 - v7) >> 3;
    v14 = (8 * v9);
    v15 = (8 * v9 - 8 * v13);
    *v14 = v3;
    v6 = v14 + 1;
    memcpy(v15, v7, v8);
    v2[5] = v15;
    v2[6] = v6;
    v2[7] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  v2[6] = v6;
}

uint64_t *__Block_byref_object_copy__52(uint64_t *result, void *a2)
{
  result[6] = 0;
  v2 = result + 6;
  result[5] = (result + 6);
  result[7] = 0;
  v3 = a2[5];
  if (v3 != a2 + 6)
  {
    do
    {
      v4 = *v2;
      v5 = result + 6;
      if (result[5] == v2)
      {
        goto LABEL_8;
      }

      v6 = *v2;
      v7 = result + 6;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 8);
      if (*(v5 + 8) < v9)
      {
LABEL_8:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 6;
        }
      }

      else
      {
        v10 = result + 6;
        if (v4)
        {
          v10 = result + 6;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_12;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_12:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a2 + 6);
  }

  result[8] = a2[8];
  return result;
}

void ___ZN8Security11CodeSigning13SecCodeSigner6Signer9signMachOEPNS_9UniversalERKNS0_11Requirement7ContextE_block_invoke_54(uint64_t a1, Security::CodeSigning::CodeDirectory::Builder *this)
{
  v3 = Security::CodeSigning::CodeDirectory::Builder::build(this);
  v4 = (*(*(a1 + 32) + 8) + 40);

  Security::CodeSigning::CodeDirectorySet::add(v4, v3);
}

uint64_t **std::__tree<std::__value_type<Security::Architecture,unsigned long>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,unsigned long>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,unsigned long>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_25:
    operator new();
  }

  v4 = HIDWORD(a2);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      v8 = v4 != HIDWORD(v6) && SHIDWORD(a2) < SHIDWORD(v6);
      if (a2 != v6)
      {
        v8 = a2 < v6;
      }

      if (!v8)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_25;
      }
    }

    v9 = v4 != HIDWORD(v6) && SHIDWORD(v6) < SHIDWORD(a2);
    v10 = v9;
    v11 = a2 == v6 ? v10 : v6 < a2;
    if (v11 != 1)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

_DWORD *Security::Blob<Security::SuperBlob<4208856065u,unsigned int>,4208856065u>::clone(Security::BlobCore *a1)
{
  result = Security::BlobCore::clone(a1);
  if (*result == 17620730 && (v2 = 8 * bswap32(result[2]), v3 = v2 + 12, v4 = bswap32(result[1]), v2 + 12 <= v4))
  {
    if ((v2 | 4uLL) >= 0xC)
    {
      for (i = v2 + 8; ; i -= 8)
      {
        v7 = *(result + i);
        if (v7)
        {
          v8 = bswap32(v7);
          v9 = v3 > v8 || v8 + 8 > v4;
          if (v9 || bswap32(*(result + v8 + 4)) + v8 > v4)
          {
            break;
          }
        }

        v10 = i - 4;
        if (v10 <= 19)
        {
          return result;
        }
      }

      return 0;
    }
  }

  else
  {
    v5 = __error();
    result = 0;
    *v5 = 22;
  }

  return result;
}

const void **Security::CFRef<__CFString *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t **___ZN8Security11CodeSigning13SecCodeSigner6Signer7prepareEj_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = (*(**(a2 + 32) + 80))(*(a2 + 32));
  v4 = Security::Universal::bestNativeArch(v3);
  v8 = v4;
  v5 = *(*(v2 + 8) + 256);
  if (v5)
  {
    v6 = Security::cfNumber<unsigned long>(v5);
  }

  else
  {
    v6 = (*(**(v2 + 24) + 224))(*(v2 + 24), v2, &v8);
    v4 = v8;
  }

  v9 = &v8;
  result = std::__tree<std::__value_type<Security::Architecture,unsigned long>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,unsigned long>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,unsigned long>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>((v2 + 312), v4, &v9);
  result[5] = v6;
  return result;
}

const UInt8 *Security::CodeSigning::SecCodeSigner::Signer::addPreEncryptHashes(uint64_t a1, Security::CodeSigning::SecStaticCode *this)
{
  result = Security::CodeSigning::SecStaticCode::codeDirectories(this, 1);
  if (result)
  {
    v4 = result + 8;
    v5 = *result;
    if (*result != result + 8)
    {
      do
      {
        v13 = *(v5 + 8);
        result = CFDataGetBytePtr(v5[5]);
        if (bswap32(*(result + 2)) >> 8 >= 0x205)
        {
          v6 = *(result + 23);
          v8 = v6 == 0;
          v7 = bswap32(v6);
          v8 = v8 || &result[v7] == 0;
          if (!v8)
          {
            v12 = 0xAAAAAAAAAAAAAAAALL;
            v12 = CFDataCreate(0, &result[v7], bswap32(*(result + 7)) * result[36]);
            v14 = &v13;
            v9 = std::__tree<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1, v13, &v14);
            Security::CFRef<__CFURL const*>::operator=(v9 + 5, &v12);
            result = Security::CFRef<__CFData const*>::~CFRef(&v12);
          }
        }

        v10 = v5[1];
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
            v11 = v5[2];
            v8 = *v11 == v5;
            v5 = v11;
          }

          while (!v8);
        }

        v5 = v11;
      }

      while (v11 != v4);
    }
  }

  return result;
}

void sub_188947DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const UInt8 *___ZN8Security11CodeSigning13SecCodeSigner6Signer7prepareEj_block_invoke_2(uint64_t a1, Security::CodeSigning::SecStaticCode *a2)
{
  v3 = *(a1 + 32);
  v4 = (*(**(a2 + 4) + 80))(*(a2 + 4));
  v7 = Security::Universal::bestNativeArch(v4);
  v8 = &v7;
  v5 = std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>((v3 + 232), v7, &v8);
  return Security::CodeSigning::SecCodeSigner::Signer::addPreEncryptHashes((v5 + 5), a2);
}

_DWORD *Security::CodeSigning::SecCodeSigner::Signer::addRuntimeVersions(uint64_t **a1, Security::CodeSigning::SecStaticCode *this)
{
  result = Security::CodeSigning::SecStaticCode::codeDirectories(this, 1);
  if (result)
  {
    v4 = result + 2;
    v5 = *result;
    if (*result != result + 2)
    {
      do
      {
        v11 = *(v5 + 8);
        result = CFDataGetBytePtr(v5[5]);
        if (bswap32(result[2]) >> 8 >= 0x205)
        {
          v6 = result[22];
          if (v6)
          {
            v7 = bswap32(v6);
            v12 = &v11;
            result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1, v11, &v12);
            result[8] = v7;
          }
        }

        v8 = v5[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
      }

      while (v9 != v4);
    }
  }

  return result;
}

_DWORD *___ZN8Security11CodeSigning13SecCodeSigner6Signer7prepareEj_block_invoke_3(uint64_t a1, Security::CodeSigning::SecStaticCode *a2)
{
  v3 = *(a1 + 32);
  v4 = (*(**(a2 + 4) + 80))(*(a2 + 4));
  v7 = Security::Universal::bestNativeArch(v4);
  v8 = &v7;
  v5 = std::__tree<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::map<unsigned int,Security::CFCopyRef<__CFData const*>>>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>((v3 + 264), v7, &v8);
  return Security::CodeSigning::SecCodeSigner::Signer::addRuntimeVersions(v5 + 5, a2);
}

void ___ZN8Security11CodeSigning13SecCodeSigner6Signer14buildResourcesENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_PK14__CFDictionary_block_invoke(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = a1[4];
  v9 = *(a2 + 88) == 12;
  memset(&v24, 170, sizeof(v24));
  std::string::basic_string[abi:ne200100]<0>(&v24, *(a2 + 48));
  memset(&v23, 170, sizeof(v23));
  std::string::basic_string[abi:ne200100]<0>(&v23, *(a2 + 40));
  v22 = 0;
  v10 = a1[5];
  if (v10)
  {
    CFRetain(v10);
  }

  v22 = 0;
  v11 = *(*(v8 + 8) + 288);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1174405120;
  v14[2] = ___ZN8Security11CodeSigning13SecCodeSigner6Signer14buildResourcesENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_PK14__CFDictionary_block_invoke_2;
  v14[3] = &__block_descriptor_tmp_29_18569;
  v12 = a1[5];
  v13 = a1[6];
  v14[4] = v8;
  v14[5] = v12;
  v20 = (a3 & 4) != 0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v24;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
  }

  else
  {
    v16 = *a4;
  }

  v21 = v9;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v23;
  }

  v18 = a1[7];
  v19 = a3;
  Security::CodeSigning::LimitedAsync::perform(*(v11 + 8), v13, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  Security::CFRef<__CFDictionary *>::~CFRef(&v22);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1889481CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  Security::CFRef<__CFDictionary *>::~CFRef((v32 - 120));
  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  _Unwind_Resume(a1);
}

const void **___ZN8Security11CodeSigning13SecCodeSigner6Signer14buildResourcesENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_PK14__CFDictionary_block_invoke_38(const void **result, uint64_t a2, int a3, const std::string::value_type **a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a2 + 88) == 8)
  {
    v6 = a4;
    v9 = result;
    cf = 0;
    v10 = result[5];
    if (!v10)
    {
      goto LABEL_15;
    }

    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *a4, a4[1]);
    }

    else
    {
      v24 = *a4;
    }

    Security::CFTempString::CFTempString<std::string>(key, &v24);
    Value = CFDictionaryGetValue(v10, *key);
    Security::CFRef<__CFString const*>::~CFRef(key);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
      if (!Value)
      {
        goto LABEL_14;
      }
    }

    else if (!Value)
    {
      goto LABEL_14;
    }

    v13 = CFGetTypeID(Value);
    if (v13 == CFDataGetTypeID())
    {
      CFRetain(Value);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = Value;
      goto LABEL_17;
    }

    v14 = CFDictionaryGetValue(Value, @"hash");
    Security::CFRef<__CFArray const*>::operator=(&cf, v14);
LABEL_14:
    Value = cf;
    if (!cf)
    {
LABEL_15:
      v15 = *(a2 + 40);
      v26 = 0xAAAAAAAAFFFFFFFFLL;
      Security::UnixPlusPlus::FileDesc::open(&v26, v15, 0, 438);
      Security::UnixPlusPlus::FileDesc::fcntl(&v26, v16, v17);
      v30 = 0xAAAAAAAAAAAAAAAALL;
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v28 = v18;
      v29 = v18;
      *key = v18;
      *&key[16] = v18;
      Security::CodeSigning::CodeDirectory::hashFor(1);
    }

LABEL_17:
    v19 = *(*(v9[4] + 1) + 40);
    v20 = *(v6 + 23);
    v21 = v6;
    if ((a3 & 0xFFFFFFBF) != 0)
    {
      if (v20 < 0)
      {
        v21 = *v6;
      }

      Security::cfadd(v19, "{%s={hash=%O,optional=%B}}", v12, v21, Value, a3 & 1);
      v22 = secLogObjForScope("csresource");
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        return Security::CFRef<__CFData const*>::~CFRef(&cf);
      }

      if (*(v6 + 23) < 0)
      {
        v6 = *v6;
      }

      *key = 136315394;
      *&key[4] = v6;
      *&key[12] = 2048;
      *&key[14] = a5;
      v23 = "%s added complex (rule %p)";
    }

    else
    {
      if (v20 < 0)
      {
        v21 = *v6;
      }

      Security::cfadd(v19, "{%s=%O}", v12, v21, Value);
      v22 = secLogObjForScope("csresource");
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        return Security::CFRef<__CFData const*>::~CFRef(&cf);
      }

      if (*(v6 + 23) < 0)
      {
        v6 = *v6;
      }

      *key = 136315394;
      *&key[4] = v6;
      *&key[12] = 2048;
      *&key[14] = a5;
      v23 = "%s added simple (rule %p)";
    }

    _os_log_debug_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEBUG, v23, key, 0x16u);
    return Security::CFRef<__CFData const*>::~CFRef(&cf);
  }

  return result;
}

const void **___ZN8Security11CodeSigning13SecCodeSigner6Signer14buildResourcesENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_PK14__CFDictionary_block_invoke_2(uint64_t a1)
{
  __b[129] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  cf = 0;
  v41 = v2;
  if (*(a1 + 132) == 1)
  {
    v46 = 0xAAAAAAAAAAAAAAAALL;
    v4 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
    Security::SecCFObject::allocate(0x298, *(v4 + 200), v5);
    if (*(a1 + 71) >= 0)
    {
      v6 = (a1 + 48);
    }

    else
    {
      v6 = *(a1 + 48);
    }

    Security::CodeSigning::DiskRep::bestGuess(v6, 0);
  }

  if (*(a1 + 133) == 1)
  {
    memset(__b, 170, 0x400uLL);
    v7 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v7 = *v7;
    }

    v8 = readlink(v7, __b, 0x3FFuLL);
    if (v8 < 0)
    {
      v32 = __error();
      Security::UnixError::throwMe(*v32);
    }

    *(__b + v8) = 0;
    v9 = Security::cfmake<__CFDictionary const*>("{symlink=%s}", __b);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = v9;
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_42:
    v26 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 132);
      v28 = *(a1 + 133);
      v29 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v29 = *v29;
      }

      LODWORD(__b[0]) = 67109634;
      HIDWORD(__b[0]) = v27;
      LOWORD(__b[1]) = 1024;
      *(&__b[1] + 2) = v28;
      HIWORD(__b[1]) = 2080;
      __b[2] = v29;
      _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "Failed to generate sealed resource: %d, %d, %s", __b, 0x18u);
    }

    Security::MacOSError::throwMe(0xFFFEFA12);
  }

  if (((*(*v3 + 16))(v3) & 0x1000000) != 0)
  {
    __b[0] = 0xAAAAAAAAFFFFFFFFLL;
    if (*(a1 + 71) >= 0)
    {
      v15 = (a1 + 48);
    }

    else
    {
      v15 = *(a1 + 48);
    }

    Security::UnixPlusPlus::FileDesc::open(__b, v15, 0, 438);
    v16 = LODWORD(__b[0]);
    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(LODWORD(__b[0]), "com.apple.ResourceFork"))
    {
      Security::UnixPlusPlus::FileDesc::removeAttr(v16, "com.apple.ResourceFork");
    }

    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(v16, "com.apple.FinderInfo"))
    {
      Security::UnixPlusPlus::FileDesc::removeAttr(v16, "com.apple.FinderInfo");
    }

    Security::UnixPlusPlus::FileDesc::closeAndLog(__b);
  }

  v17 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    v17 = *v17;
  }

  v18 = (*(*v3 + 24))(v3);
  std::set<unsigned int>::set[abi:ne200100](v39, v18);
  v19 = (*(*v3 + 16))(v3);
  v46 = 0xAAAAAAAAFFFFFFFFLL;
  Security::UnixPlusPlus::FileDesc::open(&v46, v17, 0, 438);
  Security::UnixPlusPlus::FileDesc::fcntl(&v46, v20, v21);
  if (v19 < 0)
  {
    v23 = v46;
    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(v46, "com.apple.ResourceFork"))
    {
      v33 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Disallowed xattr %s found on %s", "com.apple.ResourceFork", v17);
      Security::CodeSigning::CSError::throwMe(0xFFFEFA49, @"SecCSResourceHasSidebandData", v33, v34);
    }

    hasExtendedAttribute = Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(v23, "com.apple.FinderInfo");
    if (hasExtendedAttribute)
    {
      v35 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Disallowed xattr %s found on %s", "com.apple.FinderInfo", v17);
      Security::CodeSigning::CSError::throwMe(0xFFFEFA49, @"SecCSResourceHasSidebandData", v35, v36);
    }
  }

  CFMutableDictionary = Security::makeCFMutableDictionary(hasExtendedAttribute);
  v45 = CFMutableDictionary;
  v43 = v46;
  v44 = BYTE4(v46);
  std::set<unsigned int>::set[abi:ne200100](__p, v39);
  __b[0] = MEMORY[0x1E69E9820];
  __b[1] = 0x40000000;
  __b[2] = ___ZN8Security11CodeSigning15ResourceBuilder8hashFileEPKcNSt3__13setIjNS4_4lessIjEENS4_9allocatorIjEEEEb_block_invoke;
  __b[3] = &__block_descriptor_tmp_18748;
  __b[4] = CFMutableDictionary;
  Security::CodeSigning::CodeDirectory::multipleHashFileData(&v43, 0, __p, __b);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(__p[1]);
  v25 = v45;
  v45 = 0;
  Security::CFRef<__CFDictionary *>::~CFRef(&v45);
  Security::UnixPlusPlus::FileDesc::closeAndLog(&v46);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = v25;
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v39[1]);
  v9 = cf;
  if (!cf)
  {
    goto LABEL_42;
  }

LABEL_13:
  if (*(a1 + 128))
  {
    CFDictionaryAddValue(v9, @"optional", *MEMORY[0x1E695E4D0]);
  }

  __b[0] = (v3 + 400);
  __b[1] = 0xAAAAAAAAAAAAAA01;
  v10 = pthread_mutex_lock((v3 + 400));
  if (v10)
  {
    Security::UnixError::throwMe(v10);
  }

  Value = CFDictionaryGetValue(cf, @"hash");
  if (Value && CFDictionaryGetCount(cf) == 1)
  {
    v12 = v41;
    if (*(a1 + 95) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      v38 = *(a1 + 72);
    }

    Security::CFTempString::CFTempString<std::string>(__p, &v38);
    CFDictionaryAddValue(v12, __p[0], Value);
    Security::CFRef<__CFString const*>::~CFRef(__p);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v38.__r_.__value_.__r.__words[0];
      goto LABEL_50;
    }
  }

  else
  {
    v13 = v41;
    if (*(a1 + 95) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      v37 = *(a1 + 72);
    }

    Security::CFTempString::CFTempString<std::string>(__p, &v37);
    CFDictionaryAddValue(v13, __p[0], cf);
    Security::CFRef<__CFString const*>::~CFRef(__p);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v37.__r_.__value_.__r.__words[0];
LABEL_50:
      operator delete(v14);
    }
  }

  Security::CodeSigning::SecStaticCode::reportProgress(*(v3 + 16));
  v30 = pthread_mutex_unlock((v3 + 400));
  if (v30)
  {
    Security::UnixError::throwMe(v30);
  }

  Security::CFRef<__CFDictionary *>::~CFRef(&cf);
  return Security::CFRef<__CFDictionary *>::~CFRef(&v41);
}

void sub_188948DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__pa, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, __int16 a26, char a27, char a28, std::string *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  Security::UnixPlusPlus::FileDesc::closeAndLog(&a36);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a25);
  JUMPOUT(0x18894902CLL);
}

void sub_188948EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  Security::CFRef<__CFString const*>::~CFRef(va);
  if (SHIBYTE(a13) < 0)
  {
    JUMPOUT(0x188948ED0);
  }

  JUMPOUT(0x188949024);
}

void sub_188948F10(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30)
{
  Security::SecCFObject::operator delete(v31);
  if (a2 == 2)
  {
    v35 = __cxa_begin_catch(a1);
    v37 = (*(*v35 + 24))(v35);
    if (*(v30 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&a29, *(v30 + 48), *(v30 + 56));
    }

    else
    {
      a29 = *v32;
      a30 = *(v32 + 16);
    }

    if (a30 >= 0)
    {
      v38 = &a29;
    }

    else
    {
      v38 = a29;
    }

    CFURL = Security::makeCFURL(v38, 0, 0, v36);
    Security::CodeSigning::CSError::throwMe(v37, @"SecComponentPath", CFURL, v39);
  }

  JUMPOUT(0x18894902CLL);
}

void sub_188949004(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18894903CLL);
}

void sub_188949020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(va);
  Security::CFRef<__CFDictionary *>::~CFRef(&a21);
  Security::CFRef<__CFDictionary *>::~CFRef(&a22);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void __copy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 4, *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    a1[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
    *&a1[4].__r_.__value_.__l.__data_ = v6;
  }
}

void sub_188949148(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::SecCodeSigner::Signer::prepareForEdit(Security::CodeSigning::SecCodeSigner::Signer *this)
{
  std::set<unsigned int>::set[abi:ne200100](v9, (*(this + 2) + 344));
  (*(*this + 32))(this, v9);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v9[1]);
  v2 = (*(**(*(this + 2) + 32) + 80))(*(*(this + 2) + 32));
  if (v2 && (v2 = (*(**(*(this + 2) + 32) + 80))(*(*(this + 2) + 32))) != 0)
  {
    v3 = v2;
    *(this + 46) = Security::Universal::bestNativeArch(v2);
    if (*(v3 + 4))
    {
      goto LABEL_9;
    }

    v6 = *(this + 1);
    v7 = *(v6 + 304);
    if (v7 && !*(v3 + 1))
    {
      Security::MacOSError::throwMe(0xFFFEFA02, v4, v5);
    }

    if (*(v6 + 312) && !v7 && *(v3 + 1))
    {
LABEL_9:
      Security::MacOSError::throwMe(0xFFFEFA23, v4, v5);
    }
  }

  else
  {
    *(this + 46) = Security::Architecture::local(v2);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN8Security11CodeSigning13SecCodeSigner6Signer14prepareForEditEj_block_invoke;
  v8[3] = &__block_descriptor_tmp_85_18595;
  v8[4] = this;
  ___ZN8Security11CodeSigning13SecCodeSigner6Signer14prepareForEditEj_block_invoke(v8, *(this + 2), *(this + 46));
}

uint64_t **std::__tree<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::__map_value_compare<Security::Architecture,std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>,std::less<Security::Architecture>,true>,std::allocator<std::__value_type<Security::Architecture,std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>>>>::__emplace_unique_key_args<Security::Architecture,std::piecewise_construct_t const&,std::tuple<Security::Architecture const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_25:
    operator new();
  }

  v4 = HIDWORD(a2);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      v8 = v4 != HIDWORD(v6) && SHIDWORD(a2) < SHIDWORD(v6);
      if (a2 != v6)
      {
        v8 = a2 < v6;
      }

      if (!v8)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_25;
      }
    }

    v9 = v4 != HIDWORD(v6) && SHIDWORD(v6) < SHIDWORD(a2);
    v10 = v9;
    v11 = a2 == v6 ? v10 : v6 < a2;
    if (v11 != 1)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

uint64_t *std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(v2 + 8));

    JUMPOUT(0x18CFD9760);
  }

  return result;
}

void ___ZN8Security11CodeSigning13SecCodeSigner6Signer14prepareForEditEj_block_invoke(uint64_t a1, uint64_t a2, const char *a3)
{
  v7 = a3;
  v3 = *(a2 + 32);
  if (v3)
  {
    if (v4)
    {
      v5 = v4;
      if (v6)
      {
        v6 = v6[13];
        if (v6)
        {
        }
      }

      if (!v6)
      {
        v6 = v5;
      }

      (**v6)(&v8);
      operator new();
    }
  }

  Security::MacOSError::throwMe(0xFFFEFA23, a2, a3);
}

void sub_188949838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void **a13)
{
  std::unique_ptr<std::map<int,Security::CFCopyRef<__CFData const*>>>::reset[abi:ne200100](&a9, 0);
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(a13);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8Security11CodeSigning13SecCodeSigner6Signer14prepareForEditEj_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = (*(**(a2 + 32) + 80))(*(a2 + 32));
  Security::Universal::bestNativeArch(v3);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

CFTypeRef *Security::CodeSigning::MachORep::createRawComponents@<X0>(Security::CodeSigning::MachORep *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  if (!Security::CodeSigning::MachORep::signingData(this))
  {
    Security::MacOSError::throwMe(0xFFFEFA0ALL);
  }

  result = Security::CodeSigning::MachORep::signingData(this);
  v6 = result;
  if (*(result + 2))
  {
    v7 = 0;
    v8 = (result + 2);
    do
    {
      v9 = bswap32(*(v8 - 1));
      v14 = v9;
      v10 = v6 + bswap32(*v8);
      if (*v8)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = Security::CodeSigning::EmbeddedSignatureBlob::blobData(v9, v11, v5);
      v15 = &v14;
      v13 = std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, v14, &v15);
      result = Security::CFRef<__CFArray const*>::operator=(v13 + 5, v12);
      v8 += 2;
      ++v7;
    }

    while (v7 < bswap32(*(v6 + 2)));
  }

  return result;
}

void Security::CodeSigning::MachORep::Writer::~Writer(Security::CodeSigning::MachORep::Writer *this)
{
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 96));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 96));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);
}

void Security::CodeSigning::MachORep::strictValidate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  Security::CodeSigning::SingleDiskRep::strictValidate(a1, a2, a3, a4);
  v6 = *(a1 + 56);
  if (*(v6 + 76))
  {
    v9 = *(a3 + 8);
    v8 = a3 + 8;
    v7 = v9;
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v8;
    do
    {
      if (*(v7 + 28) >= -67010)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 28) < -67010));
    }

    while (v7);
    if (v10 == v8 || *(v10 + 28) > -67010)
    {
LABEL_12:
      Security::MacOSError::throwMe(0xFFFEFA3ELL);
    }
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    v11 = v12;
    Security::Universal::architectures(v6, &v11);
    if (v11 != v12)
    {
      Security::Universal::architecture(v6, *(v11 + 7), *(v11 + 8));
    }

    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v12[0]);
  }
}

uint64_t Security::CodeSigning::MachORep::pageSize(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 == 33554444 || v3 == 16777228)
  {
    Security::Universal::architecture(*(a1 + 56), v3, a3[1]);
  }

  return 4096;
}

void Security::CodeSigning::MachORep::defaultRequirements(uint64_t a1, unsigned int *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  v3 = (*(*a1 + 80))(a1);
  Security::Universal::architecture(v3, *a2, a2[1]);
}

void sub_18894A4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, const void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31)
{
  if (a2)
  {
    if (a25 < 0)
    {
      operator delete(__p);
    }

    Security::CFRef<__SecRequirement *>::~CFRef(&a19);
    if (v32 < 0)
    {
      operator delete(a31);
    }

    __cxa_begin_catch(exception_object);
    free(v31);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18894A5F4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18894A610);
}

void sub_18894A6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFDictionary const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::MachORep::recommendedIdentifier(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__p, 170, sizeof(__p));
  (*(*a1 + 192))(__p);
  v4 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v4 = __p[1];
  }

  if (v4)
  {
    *a2 = *__p;
    *(a2 + 16) = __p[2];
  }

  else
  {
    Security::CodeSigning::DiskRep::canonicalIdentifier(a2, a1 + 16);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_18894A79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef Security::CodeSigning::MachORep::copyStapledTicket(Security::CodeSigning::MachORep *this, uint64_t a2, const Security::BlobCore *a3)
{
  cf = 0;
  v3 = *(this + 8);
  if (v3)
  {
    v4 = Security::CodeSigning::EmbeddedSignatureBlob::component(v3, 0x10002, a3);
  }

  else
  {
    v4 = 0;
  }

  cf = 0;
  Security::CFRef<__CFData const*>::~CFRef(&cf);
  return v4;
}

void sub_18894A81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const void **Security::CodeSigning::MachORep::registerStapledTicket(Security::CodeSigning::MachORep *this)
{
  v3 = (*(*this + 176))(this);
  Security::CodeSigning::registerStapledTicketWithSystem(v3, v1);
  return Security::CFRef<__CFData const*>::~CFRef(&v3);
}

void Security::CodeSigning::MachORep::flush(Security::CodeSigning::MachORep *this)
{
  v2 = *(this + 7);
  free(*(v2 + 8));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v2 + 56));
  MEMORY[0x18CFD9760](v2, 0x1020C4076728D04);
  *(this + 7) = 0;
  free(*(this + 8));
  *(this + 8) = 0;
  Security::UnixPlusPlus::FileDesc::close((this + 40));
  operator new();
}

void Security::CodeSigning::MachORep::platformType(Security::CodeSigning::MachORep *this, const Security::Architecture *a2)
{
  v2 = *(this + 7);
  if (a2)
  {
    Security::Universal::architecture(v2, *a2, *(a2 + 1));
  }

  Security::Universal::architecture(v2);
}

void Security::CodeSigning::MachORep::execSegLimit(Security::CodeSigning::MachORep *this, const Security::Architecture *a2)
{
  v2 = *(this + 7);
  if (a2)
  {
    Security::Universal::architecture(v2, *a2, *(a2 + 1));
  }

  Security::Universal::architecture(v2);
}

void Security::CodeSigning::MachORep::execSegBase(Security::CodeSigning::MachORep *this, const Security::Architecture *a2)
{
  v2 = *(this + 7);
  if (a2)
  {
    Security::Universal::architecture(v2, *a2, *(a2 + 1));
  }

  Security::Universal::architecture(v2);
}

void Security::CodeSigning::MachORep::prepareForSigning(uint64_t a1, uint64_t a2)
{
  if (!*((*(*a2 + 24))(a2) + 16))
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    Security::Universal::architectures(*(a1 + 56), &v3);
    if (v3 != v4)
    {
      Security::Universal::architecture(*(a1 + 56), *(v3 + 7), *(v3 + 8));
    }

    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v4[0]);
  }
}

CFDataRef Security::CodeSigning::MachORep::identificationFor(const void **this, Security::MachO *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  Command = Security::MachOBase::findCommand(this, 27);
  if (Command)
  {
    cmdsize = Command->cmdsize;
    v5 = bswap32(cmdsize);
    if (*(this + 33))
    {
      cmdsize = v5;
    }

    if (cmdsize != 24)
    {
      Security::MacOSError::throwMe(0xFFFEFA1BLL);
    }

    c.h0 = 1145656661;
    *&c.h1 = *&Command[1].cmd;
    p_c = &c;
  }

  else
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&c.data[9] = v7;
    *&c.data[13] = v7;
    *&c.data[1] = v7;
    *&c.data[5] = v7;
    *&c.h0 = v7;
    *&c.h4 = v7;
    CC_SHA1_Init(&c);
    CC_SHA1_Update(&c, this[1], 0x1Cu);
    v8 = bswap32(*(this[1] + 5));
    if (*(this + 33))
    {
      v9 = v8;
    }

    else
    {
      v9 = *(this[1] + 5);
    }

    CC_SHA1_Update(&c, this[2], v9);
    memset(md, 170, 20);
    CC_SHA1_Final(md, &c);
    p_c = md;
  }

  return CFDataCreate(0, p_c, 20);
}

uint64_t *std::unique_ptr<Security::Universal>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    free(*(v2 + 8));
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v2 + 56));
    MEMORY[0x18CFD9760](v2, 0x1020C4076728D04);
  }

  return a1;
}

void Security::CodeSigning::EmbeddedSignatureBlob::Maker::component(uint64_t **this, Security::CodeSigning::CodeDirectory *a2, const __CFData *a3)
{
  v6 = Security::CodeSigning::CodeDirectory::slotAttributes(a2);
  BytePtr = CFDataGetBytePtr(a3);
  v8 = BytePtr;
  if (v6 >= 2)
  {
    v10 = Security::BlobCore::clone(BytePtr);
  }

  else
  {
    Length = CFDataGetLength(a3);
    v10 = Security::BlobWrapper::alloc(v8, Length);
  }

  Security::SuperBlobCore<Security::SuperBlob<4208856065u,unsigned int>,4208856065u,unsigned int>::Maker::add(this, a2, v10);
}

CFPropertyListRef Security::CodeSigning::EntitlementBlob::entitlements(Security::CodeSigning::EntitlementBlob *this)
{
  v4 = CFDataCreate(0, this + 8, bswap32(*(this + 1)) - 8);
  CFDictionaryFrom = Security::makeCFDictionaryFrom(v4, v1);
  Security::CFRef<__CFData const*>::~CFRef(&v4);
  return CFDictionaryFrom;
}

void sub_18894B220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

void ce_abort(const CERuntime *a1, const char *a2, ...)
{
  va_start(va, a2);
  vsyslog(2, a2, va);
  abort();
}

const void *getTCCEntitlements(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"com.apple.private.tcc.allow");
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFArrayGetTypeID())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *updateOSInstallerSetupdEntitlements(const __CFDictionary *a1)
{
  result = getTCCEntitlements(a1);
  if (result)
  {
    v3 = result;
    v7.length = CFArrayGetCount(result);
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v7, @"kTCCServiceSystemPolicyAllFiles");
    if (FirstIndexOfValue == -1)
    {
      return 0;
    }

    else
    {
      v5 = FirstIndexOfValue;
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v3);
      CFArrayRemoveValueAtIndex(MutableCopy, v5);
      CFDictionaryReplaceValue(a1, @"com.apple.private.tcc.allow", MutableCopy);
      Security::CFRef<__CFArray *>::~CFRef(&MutableCopy);
      return 1;
    }
  }

  return result;
}

void sub_18894B384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFArray *>::~CFRef(va);
  _Unwind_Resume(a1);
}

uint64_t Security::CFDictionary::Applier<Security::CodeSigning::ResourceBuilder>::apply(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[1];
  v6 = a3[2];
  v7 = (*a3 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7, a1, a2);
}

void Security::CodeSigning::ResourceBuilder::addRule(Security::CodeSigning::ResourceBuilder *this, __CFString *a2, const void *a3)
{
  memset(&__p, 170, sizeof(__p));
  Security::cfString(&__p, a2);
  v4 = CFGetTypeID(a3);
  if (v4 != CFBooleanGetTypeID())
  {
    theDict = 0xAAAAAAAAAAAAAAAALL;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    Security::CFDictionary::CFDictionary(&theDict, a3);
    v5 = CFStringCreateWithCString(0, "weight", 0x8000100u);
    if (!v5)
    {
      v5 = CFStringCreateWithCString(0, "weight", 0x600u);
      if (!v5)
      {
        Security::CFError::throwMe(0);
      }
    }

    v10 = v5;
    Value = CFDictionaryGetValue(theDict, v5);
    Security::CFRef<__CFNumber const*>::check<void const*>(Value, v8);
    Security::CFRef<__CFString const*>::~CFRef(&v10);
    if (Value)
    {
      Security::cfNumber<unsigned int>(Value);
    }

    Security::CFDictionary::get<__CFBoolean const*>(&theDict, "omit");
    Security::CFDictionary::get<__CFBoolean const*>(&theDict, "optional");
    Security::CFDictionary::get<__CFBoolean const*>(&theDict, "nested");
    Security::CFRef<__CFDictionary const*>::~CFRef(&theDict);
  }

  operator new();
}

void sub_18894B640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  Security::CFRef<__CFDictionary const*>::~CFRef(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

regex_t *Security::CodeSigning::ResourceBuilder::Rule::Rule(regex_t *a1, __int128 *a2, int a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  a1[1].re_magic = a3;
  *(&a1[1].re_magic + 1) = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a1[1].re_nsub, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    a1[1].re_g = *(a2 + 2);
    *&a1[1].re_nsub = v8;
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (regcomp(a1, v9, 5))
  {
    Security::MacOSError::throwMe(0xFFFEFA13);
  }

  v10 = secLogObjForScope("csresource");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    v13 = 134218754;
    v14 = a1;
    v15 = 2080;
    v16 = v12;
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%p rule %s added (weight %d, flags 0x%x)", &v13, 0x22u);
  }

  return a1;
}

void sub_18894B800(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type Security::CodeSigning::ResourceBuilder::ResourceBuilder(std::string::size_type a1, uint64_t a2, uint64_t a3, const void *a4, char a5, uint64_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = 0u;
  v10 = (a1 + 56);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v11 = (a1 + 24);
  *a1 = 0u;
  *(a1 + 72) = 0u;
  if (a5)
  {
    v14 = *(a6 + 8);
    v12 = a6 + 8;
    v13 = v14;
    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = v12;
    v16 = v13;
    do
    {
      if (*(v16 + 28) >= -67060)
      {
        v15 = v16;
      }

      v16 = *(v16 + 8 * (*(v16 + 28) < -67060));
    }

    while (v16);
    if (v15 == v12 || *(v15 + 28) > -67060)
    {
LABEL_9:
      v15 = v12;
    }

    *(a1 + 88) = v15 == v12;
    if (!v13)
    {
      goto LABEL_17;
    }

    v17 = v12;
    do
    {
      if (*(v13 + 28) >= -67016)
      {
        v17 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 28) < -67016));
    }

    while (v13);
    if (v17 == v12 || *(v17 + 28) > -67016)
    {
LABEL_17:
      v17 = v12;
    }

    v18 = v17 == v12;
  }

  else
  {
    v18 = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 89) = v18;
  memset(__b, 170, sizeof(__b));
  if (*(a2 + 23) >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (!realpath_DARWIN_EXTSN(v19, __b))
  {
LABEL_106:
    v46 = __error();
    Security::UnixError::throwMe(*v46);
  }

  std::string::__assign_external(a1, __b);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a3, *(a3 + 8));
  }

  else
  {
    __str = *a3;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&context, &__str, size - 2, 2uLL, theDict);
  if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
  {
    if (context.__r_.__value_.__l.__size_ == 2)
    {
      v21 = *context.__r_.__value_.__l.__data_;
      operator delete(context.__r_.__value_.__l.__data_);
      if (v21 == 11823)
      {
LABEL_35:
        v22 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __str.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v51, &__str, 0, v22 - 2, &context);
        goto LABEL_52;
      }
    }

    else
    {
      operator delete(context.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(context.__r_.__value_.__r.__words[2]) == 2 && LOWORD(context.__r_.__value_.__l.__data_) == 11823)
  {
    goto LABEL_35;
  }

  v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = __str.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&context, &__str, v23 - 1, 1uLL, theDict);
  if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
  {
    if (context.__r_.__value_.__l.__size_ == 1)
    {
      v24 = *context.__r_.__value_.__l.__data_;
      operator delete(context.__r_.__value_.__l.__data_);
      if (v24 == 47)
      {
        goto LABEL_47;
      }
    }

    else
    {
      operator delete(context.__r_.__value_.__l.__data_);
    }

LABEL_51:
    v51 = __str;
    memset(&__str, 0, sizeof(__str));
    goto LABEL_52;
  }

  if (SHIBYTE(context.__r_.__value_.__r.__words[2]) != 1 || context.__r_.__value_.__s.__data_[0] != 47)
  {
    goto LABEL_51;
  }

LABEL_47:
  v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v25 = __str.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&v51, &__str, 0, v25 - 1, &context);
LABEL_52:
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v51;
  }

  else
  {
    v26 = v51.__r_.__value_.__r.__words[0];
  }

  v27 = realpath_DARWIN_EXTSN(v26, __b);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (!v27)
  {
    goto LABEL_106;
  }

  std::string::__assign_external(v11, __b);
  v28 = *(a1 + 23);
  if (v28 >= 0)
  {
    v29 = *(a1 + 23);
  }

  else
  {
    v29 = *(a1 + 8);
  }

  v30 = *(a1 + 47);
  v31 = v30;
  if ((v30 & 0x80u) != 0)
  {
    v30 = *(a1 + 32);
  }

  if (v29 != v30 || (v28 >= 0 ? (v32 = a1) : (v32 = *a1), v31 >= 0 ? (v33 = v11) : (v33 = *(a1 + 24)), memcmp(v32, v33, v29)))
  {
    memset(&context, 170, sizeof(context));
    p_context = &context;
    std::string::basic_string[abi:ne200100](&context, v29 + 9);
    if ((context.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_context = context.__r_.__value_.__r.__words[0];
    }

    if (v29)
    {
      if (*(a1 + 23) >= 0)
      {
        v35 = a1;
      }

      else
      {
        v35 = *a1;
      }

      memmove(p_context, v35, v29);
    }

    strcpy(p_context + v29, "/Contents");
    v36 = *(a1 + 47);
    if (v36 >= 0)
    {
      v37 = *(a1 + 47);
    }

    else
    {
      v37 = *(a1 + 32);
    }

    v38 = HIBYTE(context.__r_.__value_.__r.__words[2]);
    v39 = SHIBYTE(context.__r_.__value_.__r.__words[2]);
    if ((context.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = context.__r_.__value_.__l.__size_;
    }

    if (v37 == v38)
    {
      if (v36 >= 0)
      {
        v40 = v11;
      }

      else
      {
        v40 = v11->__r_.__value_.__r.__words[0];
      }

      if ((context.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &context;
      }

      else
      {
        v41 = context.__r_.__value_.__r.__words[0];
      }

      v42 = memcmp(v40, v41, v37) != 0;
      if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v42 = 1;
      if ((SHIBYTE(context.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_96:
        if (v42)
        {
          Security::MacOSError::throwMe(0xFFFEFA2CLL);
        }

        LOBYTE(v28) = *(a1 + 23);
        goto LABEL_98;
      }
    }

    operator delete(context.__r_.__value_.__l.__data_);
    goto LABEL_96;
  }

LABEL_98:
  v43 = a1;
  if ((v28 & 0x80) != 0)
  {
    v43 = *a1;
  }

  *&v51.__r_.__value_.__l.__data_ = v43;
  v44 = fts_open(&v51.__r_.__value_.__l.__data_, 21, 0);
  *(a1 + 48) = v44;
  if (!v44)
  {
    v47 = __error();
    Security::UnixError::throwMe(*v47);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  if (*v10)
  {
    CFRelease(*v10);
  }

  *v10 = a4;
  theDict[0] = 0xAAAAAAAAAAAAAAAALL;
  theDict[1] = 0xAAAAAAAAAAAAAAAALL;
  Security::CFDictionary::CFDictionary(theDict, a4, 0xFFFEFA13);
  context.__r_.__value_.__r.__words[0] = a1;
  context.__r_.__value_.__l.__size_ = Security::CodeSigning::ResourceBuilder::addRule;
  context.__r_.__value_.__r.__words[2] = 0;
  CFDictionaryApplyFunction(theDict[0], Security::CFDictionary::Applier<Security::CodeSigning::ResourceBuilder>::apply, &context);
  Security::CFRef<__CFDictionary const*>::~CFRef(theDict);
  return a1;
}

void sub_18894BD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v29 = *(v25 + 64);
  if (v29)
  {
    *(v25 + 72) = v29;
    operator delete(v29);
  }

  Security::CFRef<__CFDictionary const*>::~CFRef(v27);
  if (*(v25 + 47) < 0)
  {
    operator delete(*v26);
  }

  if (*(v25 + 23) < 0)
  {
    operator delete(*v25);
  }

  _Unwind_Resume(a1);
}

void Security::CodeSigning::ResourceBuilder::Rule::~Rule(void **this)
{
  MEMORY[0x18CFDB4E0]();
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }
}

void Security::CodeSigning::ResourceBuilder::~ResourceBuilder(Security::CodeSigning::ResourceBuilder *this)
{
  v3 = *(this + 8);
  for (i = *(this + 9); v3 != i; ++v3)
  {
    if (*v3)
    {
      Security::CodeSigning::ResourceBuilder::Rule::~Rule(*v3);
      MEMORY[0x18CFD9760]();
      i = *(this + 9);
    }
  }

  fts_close(*(this + 6));
  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  Security::CFRef<__CFDictionary const*>::~CFRef(this + 7);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void Security::CodeSigning::ResourceBuilder::scan(const void **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v81 = *MEMORY[0x1E69E9840];
  v57 = -67060;
  memset(&v78, 0, sizeof(v78));
  v60 = a1 + 3;
  v59 = 1;
  while (1)
  {
    v6 = fts_read(a1[6]);
    v7 = v6;
    if (!v6)
    {
      break;
    }

    v8 = *(a1 + 23);
    if (v8 < 0)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = *(a1 + 23);
    }

    v10 = &v6->fts_path[v9];
    v12 = *v10;
    v11 = (v10 + 1);
    if (v12)
    {
      p_str = v11;
    }

    else
    {
      p_str = &v6->fts_path[v9];
    }

    memset(&__str, 0, sizeof(__str));
    v14 = *(a1 + 47);
    v15 = v14;
    if (v14 < 0)
    {
      v14 = a1[4];
    }

    if (v14 != v9 || (v15 >= 0 ? (v16 = v60) : (v16 = a1[3]), v8 >= 0 ? (v17 = a1) : (v17 = *a1), memcmp(v16, v17, v9)))
    {
      v18 = std::string::basic_string[abi:ne200100]<0>(&v79, p_str);
      v19 = std::string::insert(v18, 0, "../", 3uLL);
      v20 = v19->__r_.__value_.__r.__words[0];
      *v80 = v19->__r_.__value_.__l.__size_;
      *&v80[7] = *(&v19->__r_.__value_.__r.__words[1] + 7);
      v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v20;
      __str.__r_.__value_.__l.__size_ = *v80;
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *&v80[7];
      *(&__str.__r_.__value_.__s + 23) = v21;
      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      std::string::basic_string(&v79, &__str, 0, 0xCuLL, v80);
      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v79.__r_.__value_.__l.__size_ != 12)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
LABEL_43:
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          goto LABEL_46;
        }

        v24 = *v79.__r_.__value_.__l.__data_ != 0x65746E6F432F2E2ELL || *(v79.__r_.__value_.__r.__words[0] + 8) != 796095598;
        operator delete(v79.__r_.__value_.__l.__data_);
        if (v24)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) != 12)
        {
          goto LABEL_43;
        }

        if (v79.__r_.__value_.__r.__words[0] != 0x65746E6F432F2E2ELL || LODWORD(v79.__r_.__value_.__r.__words[1]) != 796095598)
        {
          goto LABEL_43;
        }
      }

      std::string::basic_string(&v79, &__str, 0xCuLL, 0xFFFFFFFFFFFFFFFFLL, v80);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v79;
      goto LABEL_43;
    }

LABEL_46:
    fts_info = v7->fts_info;
    v26 = secLogObjForScope("rdirenum");
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    if (fts_info <= 5)
    {
      if (fts_info == 1)
      {
        if (v27)
        {
          fts_path = v7->fts_path;
          LODWORD(v79.__r_.__value_.__l.__data_) = 136315138;
          *(v79.__r_.__value_.__r.__words + 4) = fts_path;
          _os_log_debug_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEBUG, "entering %s", &v79, 0xCu);
        }

        ++GKBIS_Num_dirs;
        if ((v59 | v5))
        {
          goto LABEL_123;
        }

        std::string::basic_string[abi:ne200100]<0>(v63, p_str);
        Rule = Security::CodeSigning::ResourceBuilder::findRule(a1, v63);
        v38 = Rule;
        if (v64 < 0)
        {
          operator delete(v63[0]);
          if (!v38)
          {
            goto LABEL_122;
          }
        }

        else if (!Rule)
        {
LABEL_122:
          v5 = 0;
LABEL_123:
          fts_name = v7->fts_name;
          v44 = strlen(fts_name);
          if (v44 >= 6 && !strcasecmp(&fts_name[v44 - 6], ".lproj"))
          {
            v59 = 0;
            ++GKBIS_Num_localizations;
          }

          else
          {
            v59 = 0;
          }

          goto LABEL_126;
        }

        v40 = *(v38 + 36);
        if ((v40 & 4) != 0)
        {
          if (!strchr(v7->fts_name, 46))
          {
            goto LABEL_122;
          }

          std::string::basic_string[abi:ne200100]<0>(v61, p_str);
          (*(a2 + 16))(a2, v7, v40, v61, v38);
          if (v62 < 0)
          {
            operator delete(v61[0]);
          }
        }

        else
        {
          if ((v40 & 0x10) == 0)
          {
            goto LABEL_122;
          }

          if (a3)
          {
            std::string::__assign_external(&v78, p_str);
            v41 = secLogObjForScope("rdirenum");
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v55 = &v78;
              if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v55 = v78.__r_.__value_.__r.__words[0];
              }

              LODWORD(v79.__r_.__value_.__l.__data_) = 136315138;
              *(v79.__r_.__value_.__r.__words + 4) = v55;
              _os_log_debug_impl(&dword_1887D2000, v41, OS_LOG_TYPE_DEBUG, "entering excluded path: %s", &v79, 0xCu);
            }

            v5 = 1;
            goto LABEL_123;
          }
        }

        fts_set(a1[6], v7, 4);
        goto LABEL_122;
      }

      if (fts_info == 4)
      {
        if (v27)
        {
          v50 = v7->fts_path;
          LODWORD(v79.__r_.__value_.__l.__data_) = 136315138;
          *(v79.__r_.__value_.__r.__words + 4) = v50;
          _os_log_debug_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEBUG, "cannot read directory %s", &v79, 0xCu);
        }

        if (a1[11])
        {
          goto LABEL_146;
        }

        goto LABEL_126;
      }

LABEL_90:
      if (v27)
      {
        v51 = v7->fts_info;
        fts_errno = v7->fts_errno;
        v53 = v7->fts_path;
        LODWORD(v79.__r_.__value_.__l.__data_) = 67109634;
        HIDWORD(v79.__r_.__value_.__r.__words[0]) = v51;
        LOWORD(v79.__r_.__value_.__r.__words[1]) = 1024;
        *(&v79.__r_.__value_.__r.__words[1] + 2) = fts_errno;
        HIWORD(v79.__r_.__value_.__r.__words[1]) = 2080;
        v79.__r_.__value_.__r.__words[2] = v53;
        _os_log_debug_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEBUG, "type %d (errno %d): %s", &v79, 0x18u);
      }

      if (*(a1 + 89))
      {
        v56 = -67016;
LABEL_145:
        v57 = v56;
LABEL_146:
        Security::MacOSError::throwMe(v57);
      }

      goto LABEL_126;
    }

    switch(fts_info)
    {
      case 6:
        if (v27)
        {
          v46 = v7->fts_path;
          LODWORD(v79.__r_.__value_.__l.__data_) = 136315138;
          *(v79.__r_.__value_.__r.__words + 4) = v46;
          _os_log_debug_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEBUG, "leaving %s", &v79, 0xCu);
          if ((v5 & 1) == 0)
          {
            goto LABEL_117;
          }
        }

        else if ((v5 & 1) == 0)
        {
          goto LABEL_117;
        }

        v31 = strlen(p_str);
        v32 = v31;
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v31 != v78.__r_.__value_.__l.__size_)
          {
            goto LABEL_105;
          }

          if (v31 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v33 = v78.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v31 != SHIBYTE(v78.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_105;
          }

          v33 = &v78;
        }

        if (memcmp(v33, p_str, v32))
        {
LABEL_105:
          v5 = 1;
          break;
        }

        v45 = secLogObjForScope("rdirenum");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v54 = &v78;
          if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v54 = v78.__r_.__value_.__r.__words[0];
          }

          LODWORD(v79.__r_.__value_.__l.__data_) = 136315138;
          *(v79.__r_.__value_.__r.__words + 4) = v54;
          _os_log_debug_impl(&dword_1887D2000, v45, OS_LOG_TYPE_DEBUG, "exiting excluded path: %s", &v79, 0xCu);
        }

        v5 = 0;
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          *v78.__r_.__value_.__l.__data_ = 0;
          v78.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v78.__r_.__value_.__s.__data_[0] = 0;
          *(&v78.__r_.__value_.__s + 23) = 0;
        }

        break;
      case 12:
        if (v27)
        {
          v47 = v7->fts_path;
          LODWORD(v79.__r_.__value_.__l.__data_) = 136315138;
          *(v79.__r_.__value_.__r.__words + 4) = v47;
          _os_log_debug_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEBUG, "symlink %s", &v79, 0xCu);
        }

        ++GKBIS_Num_symlinks;
        if (!strcasecmp(v7->fts_name, ".DS_Store"))
        {
          v56 = -67012;
          goto LABEL_145;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, p_str);
        v34 = Security::CodeSigning::ResourceBuilder::findRule(a1, __p);
        if (v70 < 0)
        {
          operator delete(__p[0]);
        }

        if (!((v34 == 0) | v5 & 1))
        {
          v35 = *(v34 + 36);
          if ((v35 & 0x12) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v67, p_str);
            (*(a2 + 16))(a2, v7, v35 & 0xFFFFFFE9, v67, v34);
            if (v68 < 0)
            {
              v42 = v67[0];
LABEL_116:
              operator delete(v42);
            }

LABEL_117:
            v5 = 0;
            break;
          }
        }

        if (a3)
        {
          v36 = v34 ? *(v34 + 36) : 0;
          std::string::basic_string[abi:ne200100]<0>(v65, p_str);
          (*(a3 + 16))(a3, v7, v36, v65, v34);
          if (v66 < 0)
          {
            v39 = v65[0];
            goto LABEL_100;
          }
        }

        break;
      case 8:
        if (v27)
        {
          v49 = v7->fts_path;
          LODWORD(v79.__r_.__value_.__l.__data_) = 136315138;
          *(v79.__r_.__value_.__r.__words + 4) = v49;
          _os_log_debug_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEBUG, "file %s", &v79, 0xCu);
        }

        ++GKBIS_Num_files;
        if (!strncasecmp(v7->fts_name, "._", 2uLL))
        {
          ++GKBIS_Dot_underbar_Present;
        }

        if (!strcasecmp(v7->fts_name, ".DS_Store"))
        {
          ++GKBIS_DS_Store_Present;
        }

        std::string::basic_string[abi:ne200100]<0>(v75, p_str);
        v28 = Security::CodeSigning::ResourceBuilder::findRule(a1, v75);
        if (v76 < 0)
        {
          operator delete(v75[0]);
        }

        if (!((v28 == 0) | v5 & 1))
        {
          v29 = *(v28 + 36);
          if ((v29 & 0x12) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v73, p_str);
            (*(a2 + 16))(a2, v7, v29, v73, v28);
            if (v74 < 0)
            {
              v42 = v73[0];
              goto LABEL_116;
            }

            goto LABEL_117;
          }
        }

        if (a3)
        {
          v30 = v28 ? *(v28 + 36) : 0;
          std::string::basic_string[abi:ne200100]<0>(v71, p_str);
          (*(a3 + 16))(a3, v7, v30, v71, v28);
          if (v72 < 0)
          {
            v39 = v71[0];
LABEL_100:
            operator delete(v39);
          }
        }

        break;
      default:
        goto LABEL_90;
    }

LABEL_126:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }
}

void sub_18894C880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Security::CodeSigning::ResourceBuilder::findRule(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("rscan");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v18 = a2;
    if (*(a2 + 23) < 0)
    {
      v18 = *a2;
    }

    *buf = 136315138;
    v20 = v18;
    _os_log_debug_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEBUG, "test %s", buf, 0xCu);
  }

  v5 = *(a1 + 64);
  if (v5 != *(a1 + 72))
  {
    v6 = 0;
    while (1)
    {
      v7 = *v5;
      v8 = secLogObjForScope("rscan");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = (v7 + 40);
        if (*(v7 + 63) < 0)
        {
          v11 = *v11;
        }

        *buf = 136315138;
        v20 = v11;
        _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "try %s", buf, 0xCu);
      }

      v9 = a2;
      if (*(a2 + 23) < 0)
      {
        v9 = *a2;
      }

      if (Security::CodeSigning::ResourceBuilder::Rule::match(v7, v9))
      {
        v10 = secLogObjForScope("rscan");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "match", buf, 2u);
        }

        if ((*(v7 + 36) & 0x10) != 0)
        {
          v16 = secLogObjForScope("rscan");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "excluded", buf, 2u);
          }

          return v7;
        }

        if (!v6 || *(v7 + 32) > *(v6 + 32))
        {
          v6 = v7;
        }
      }

      if (++v5 == *(a1 + 72))
      {
        goto LABEL_20;
      }
    }
  }

  v6 = 0;
LABEL_20:
  v12 = secLogObjForScope("rscan");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      v15 = (v6 + 40);
      if (*(v6 + 63) < 0)
      {
        v15 = *v15;
      }

      v13 = *(v6 + 32);
      v14 = *(v6 + 36);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = "NOTHING";
    }

    *buf = 136315650;
    v20 = v15;
    v21 = 1024;
    v22 = v13;
    v23 = 1024;
    v24 = v14;
    _os_log_debug_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEBUG, "choosing %s (%d,0x%x)", buf, 0x18u);
  }

  return v6;
}

uint64_t Security::CodeSigning::ResourceBuilder::Rule::match(const regex_t *this, const char *a2)
{
  v2 = regexec(this, a2, 0, 0, 0);
  if (!v2)
  {
    return 1;
  }

  if (v2 != 1)
  {
    Security::MacOSError::throwMe(0xFFFEFA13);
  }

  return 0;
}

uint64_t Security::CodeSigning::ResourceBuilder::includes(uint64_t a1, std::string *this)
{
  v4 = std::string::find(this, 47, 0);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  std::string::basic_string(&v12, this, 0, v4, &v13);
  Rule = Security::CodeSigning::ResourceBuilder::findRule(a1, &v12);
  v6 = Rule;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else if (!Rule)
  {
    goto LABEL_7;
  }

  v7 = *(v6 + 36);
  if ((v7 & 0x10) != 0)
  {
    return (v7 >> 5) & 1;
  }

LABEL_7:
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *this;
  }

  v8 = Security::CodeSigning::ResourceBuilder::findRule(a1, &__p);
  v9 = v8;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    return 0;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v9)
  {
    return 0;
  }

LABEL_12:
  if ((*(v9 + 36) & 0x12) != 0)
  {
    return (*(v9 + 36) >> 5) & 1;
  }

  else
  {
    return 1;
  }
}

void sub_18894CDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8Security11CodeSigning15ResourceBuilder8hashFileEPKcNSt3__13setIjNS4_4lessIjEENS4_9allocatorIjEEEEb_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = (*(*a3 + 16))(a3);
  memset(bytes, 170, sizeof(bytes));
  std::vector<unsigned char>::vector[abi:ne200100](bytes, v6);
  (*(*a3 + 32))(a3, bytes[0]);
  v7 = *(a1 + 32);
  Security::CodeSigning::ResourceBuilder::hashName(cStr, a2);
  if (v12 < 0)
  {
    v8 = *cStr;
    if (!*cStr)
    {
      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = cStr;
  }

  v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  if (!v9)
  {
    v9 = CFStringCreateWithCString(0, v8, 0x600u);
    if (!v9)
    {
      Security::CFError::throwMe(0);
    }
  }

LABEL_8:
  v13 = v9;
  v10 = CFDataCreate(0, bytes[0], v6);
  CFDictionaryAddValue(v7, v9, v10);
  Security::CFRef<__CFData const*>::~CFRef(&v10);
  Security::CFRef<__CFString const*>::~CFRef(&v13);
  if (v12 < 0)
  {
    operator delete(*cStr);
  }

  if (bytes[0])
  {
    bytes[1] = bytes[0];
    operator delete(bytes[0]);
  }
}

void sub_18894CF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, void *a17, uint64_t a18)
{
  Security::CFRef<__CFData const*>::~CFRef(&a9);
  Security::CFRef<__CFString const*>::~CFRef(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void *Security::CodeSigning::ResourceBuilder::hashName(Security::CodeSigning::ResourceBuilder *this, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {

    return std::string::basic_string[abi:ne200100]<0>(this, "hash");
  }

  else
  {
    memset(__str, 170, 20);
    snprintf(__str, 0x14uLL, "hash%d", a2);
    return std::string::basic_string[abi:ne200100]<0>(this, __str);
  }
}

void Security::CodeSigning::ResourceBuilder::escapeRE(std::string *a1, std::string::value_type *a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v2 = a2[23];
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  if (v2)
  {
    if (v3 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    do
    {
      v7 = *v6;
      if (memchr("\\[]{}().+*?^$|", *v6, 0xFuLL))
      {
        std::string::push_back(a1, 92);
      }

      std::string::push_back(a1, v7);
      ++v6;
      v8 = a2[23];
      if ((v8 & 0x80u) == 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a2 + 1);
      }
    }

    while (v6 != &v9[v8]);
  }
}

void sub_18894D16C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

Security::CodeSigning::ResourceSeal *Security::CodeSigning::ResourceSeal::ResourceSeal(Security::CodeSigning::ResourceSeal *this, CFTypeRef cf)
{
  *(this + 1) = 0;
  v3 = this + 8;
  *(this + 2) = 0;
  v4 = this + 16;
  *this = 0;
  *(this + 6) = 0;
  if (!cf)
  {
    goto LABEL_20;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDataGetTypeID())
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFDictionaryGetTypeID())
    {
      Security::CFRef<__CFArray const*>::operator=(this, cf);
      v7 = *this;
      goto LABEL_8;
    }

LABEL_20:
    Security::MacOSError::throwMe(0xFFFEFA11);
  }

  v7 = Security::cfmake<__CFDictionary const*>("{hash=%O}", cf);
  if (*this)
  {
    CFRelease(*this);
  }

  *this = v7;
LABEL_8:
  v16 = 0;
  Value = CFDictionaryGetValue(v7, @"requirement");
  v11 = *this;
  if (Value)
  {
    v12 = "{requirement=%SO,?optional=%B}";
    v4 = v3;
LABEL_12:
    v14 = Security::cfscan(v11, v12, v9, v4, &v16);
    goto LABEL_13;
  }

  v13 = CFDictionaryGetValue(v11, @"symlink");
  v11 = *this;
  if (v13)
  {
    v12 = "{symlink=%SO,?optional=%B}";
    goto LABEL_12;
  }

  v14 = Security::cfscan(v11, "{?optional=%B}", v9, &v16);
LABEL_13:
  if ((v14 & 1) == 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA11);
  }

  if (v16)
  {
    *(this + 6) |= 1u;
  }

  if (*v3)
  {
    *(this + 6) |= 4u;
  }

  return this;
}

const UInt8 *Security::CodeSigning::ResourceSeal::hash(CFDictionaryRef *this, int a2)
{
  memset(&v12, 170, sizeof(v12));
  Security::CodeSigning::ResourceBuilder::hashName(&v12, a2);
  v3 = *this;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v12;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
    if (!__p.__r_.__value_.__r.__words[0])
    {
      v5 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    p_p = &__p;
  }

  v5 = CFStringCreateWithCString(0, p_p, 0x8000100u);
  if (!v5)
  {
    v5 = CFStringCreateWithCString(0, p_p, 0x600u);
    if (!v5)
    {
      Security::CFError::throwMe(0);
    }
  }

LABEL_11:
  v11 = v5;
  Value = CFDictionaryGetValue(v3, v5);
  Security::CFRef<__CFString const*>::~CFRef(&v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (Value)
    {
      goto LABEL_16;
    }
  }

  else if (Value)
  {
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(*this, @"hash");
  if (!Value)
  {
    goto LABEL_20;
  }

LABEL_16:
  v7 = CFGetTypeID(Value);
  if (v7 != CFDataGetTypeID())
  {
LABEL_20:
    Security::MacOSError::throwMe(0xFFFEFA11);
  }

  BytePtr = CFDataGetBytePtr(Value);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return BytePtr;
}

void sub_18894D480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18894D4E4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18894D4DCLL);
}

uint64_t SecCodeSignerRemoteCreate(const __CFDictionary *a1, const void *a2, int a3, void *a4)
{
  if ((a3 & 0xFFFFFC0D) != 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  v8 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v10 = Security::SecCFObject::allocate(0x150, *(v8 + 512), v9);
  *(v10 + 8) = 1;
  *(v10 + 16) = a3;
  *(v10 + 168) = 0;
  *(v10 + 160) = 0;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 152) = v10 + 160;
  *(v10 + 288) = 0;
  *(v10 + 296) = 0;
  *(v10 + 176) = 0u;
  *(v10 + 192) = 0u;
  *(v10 + 208) = 0u;
  *(v10 + 224) = 0u;
  *(v10 + 240) = 0;
  *(v10 + 256) = 0;
  *(v10 + 264) = 0;
  *(v10 + 272) = 0;
  *(v10 + 304) = 0;
  *(v10 + 312) = 0;
  *v10 = &unk_1EFA8BCB0;
  *(v10 + 328) = 0;
  Security::CFRef<__CFArray const*>::operator=((v10 + 328), a2);
  Security::SecPointerBase::SecPointerBase(&v13, v10);
  Security::CodeSigning::SecCodeSigner::parameters(v13, a1);
  v11 = Security::SecCFObject::handle(v13, 1);
  if (!a4)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  *a4 = v11;
  Security::SecPointerBase::~SecPointerBase(&v13);
  return 0;
}

void sub_18894D644(void *a1, int a2)
{
  Security::CFRef<__CFArray const*>::~CFRef(v3 + 41);
  Security::CodeSigning::SecCodeSigner::~SecCodeSigner(v3);
  Security::SecCFObject::operator delete(v6);
  switch(a2)
  {
    case 7:
      v7 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v7, v2);
      goto LABEL_32;
    case 6:
      v8 = __cxa_begin_catch(a1);
      if (v8[36] == 8)
      {
        v9 = -67049;
      }

      else
      {
        v9 = (*(*v8 + 24))(v8);
      }

      if (v2)
      {
LABEL_30:
        v12 = CFErrorCreate(0, *MEMORY[0x1E695E638], v9, 0);
        goto LABEL_31;
      }

LABEL_32:
      __cxa_end_catch();
      JUMPOUT(0x18894D608);
    case 5:
      v10 = __cxa_begin_catch(a1);
      v11 = (*(*v10 + 24))(v10);
      if (!v2)
      {
        goto LABEL_32;
      }

      v12 = CFErrorCreate(0, *MEMORY[0x1E695E638], v11, 0);
LABEL_31:
      *v2 = v12;
      goto LABEL_32;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v16 = __cxa_begin_catch(a1);
      v17 = (*(*v16 + 24))(v16);
      if (v2)
      {
        *v2 = CFErrorCreate(0, *MEMORY[0x1E695E638], v17, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v2)
        {
          *v2 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v18);
        if (v2)
        {
          *v2 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_32;
  }

  v13 = __cxa_begin_catch(a1);
  v14 = v13[36];
  if (v14 > 0x1A)
  {
    goto LABEL_28;
  }

  v9 = -67033;
  v15 = 1 << v14;
  if ((v15 & 0x800108) != 0)
  {
    goto LABEL_29;
  }

  if ((v15 & 0x4014000) != 0)
  {
    v9 = -67032;
  }

  else
  {
LABEL_28:
    v9 = (*(*v13 + 24))(v13);
  }

LABEL_29:
  if (!v2)
  {
    goto LABEL_32;
  }

  goto LABEL_30;
}

uint64_t SecCodeSignerRemoteAddSignature(uint64_t a1, Security::CodeSigning::SecStaticCode *a2, int a3, uint64_t a4)
{
  __dst[59] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  {
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  Security::SecPointerBase::SecPointerBase(&v17, v6);
  v7 = v17;
  v9 = Security::CodeSigning::SecStaticCode::required(a2, v8);
  Security::CodeSigning::SecStaticCode::codeDirectory(v9, 0);
  v10 = secLogObjForScope("remotesigner");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__dst[0]) = 134218496;
    *(__dst + 4) = v7;
    WORD2(__dst[1]) = 2048;
    *(&__dst[1] + 6) = v9;
    HIWORD(__dst[2]) = 2048;
    __dst[3] = a4;
    _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%p will start remote signature from %p with block %p", __dst, 0x20u);
  }

  *(v9 + 52) = 0;
  memcpy(__dst, &unk_188967AC8, 0x1D0uLL);
  Security::CodeSigning::SecCodeSigner::Signer::Signer(__dst, v7, v9);
  if (((*(*v7 + 80))(v7) & 1) == 0)
  {
    v16 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Invalid signing operation, bailing.", buf, 2u);
    }

    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  v11 = secLogObjForScope("remotesigner");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(v7 + 41);
    *buf = 134218754;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    v22 = 1024;
    v23 = 0;
    v24 = 2112;
    v25 = v15;
    _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "%p will sign %p (flags 0x%x) with certs: %@", buf, 0x26u);
  }

  v12 = *(v7 + 41);
  v13 = secLogObjForScope("signer");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = v12;
    _os_log_debug_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEBUG, "configuring remote signing with cert chain: %@", buf, 0xCu);
  }

  BYTE2(__dst[43]) = 1;
  __dst[44] = a4;
  Security::CFRef<__CFArray const*>::operator=(&__dst[45], v12);
  Security::CodeSigning::SecCodeSigner::Signer::sign(__dst, 0);
  Security::CodeSigning::SecStaticCode::resetValidity(v9);
  Security::CodeSigning::SecCodeSigner::Signer::~Signer(__dst);
  Security::SecPointerBase::~SecPointerBase(&v17);
  return 0;
}

void sub_18894DC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  switch(a2)
  {
    case 7:
      v19 = __cxa_begin_catch(exception_object);
      Security::CodeSigning::CSError::cfError(v19, v17);
      __cxa_end_catch();
      goto LABEL_36;
    case 6:
      v20 = __cxa_begin_catch(exception_object);
      if (v20[36] == 8)
      {
        v21 = -67049;
      }

      else
      {
        v21 = (*(*v20 + 24))(v20);
      }

      if (v17)
      {
        *v17 = CFErrorCreate(0, *MEMORY[0x1E695E638], v21, 0);
      }

LABEL_23:
      __cxa_end_catch();
LABEL_36:
      JUMPOUT(0x18894DAFCLL);
    case 5:
      v22 = __cxa_begin_catch(exception_object);
      v23 = (*(*v22 + 24))(v22);
      if (v17)
      {
        *v17 = CFErrorCreate(0, *MEMORY[0x1E695E638], v23, 0);
      }

      goto LABEL_23;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v28 = __cxa_begin_catch(exception_object);
      v29 = (*(*v28 + 24))(v28);
      if (v17)
      {
        *v17 = CFErrorCreate(0, *MEMORY[0x1E695E638], v29, 0);
      }
    }

    else
    {
      __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        if (v17)
        {
          *v17 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v30);
        if (v17)
        {
          *v17 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_23;
  }

  v24 = __cxa_begin_catch(exception_object);
  v25 = v24[36];
  if (v25 > 0x1A)
  {
    goto LABEL_31;
  }

  v26 = -67033;
  v27 = 1 << v25;
  if ((v27 & 0x800108) != 0)
  {
    goto LABEL_32;
  }

  if ((v27 & 0x4014000) != 0)
  {
    v26 = -67032;
  }

  else
  {
LABEL_31:
    v26 = (*(*v24 + 24))(v24);
  }

LABEL_32:
  if (v17)
  {
    *v17 = CFErrorCreate(0, *MEMORY[0x1E695E638], v26, 0);
  }

  goto LABEL_23;
}

void Security::CodeSigning::LimitedAsync::~LimitedAsync(Security::CodeSigning::LimitedAsync *this)
{
  *this = &unk_1EFA8C180;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8C180;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

void Security::CodeSigning::LimitedAsync::LimitedAsync(Security::CodeSigning::LimitedAsync *this, unsigned __int8 a2)
{
  *this = &unk_1EFA8C180;
  sysconf(58);
  operator new();
}

void Security::CodeSigning::LimitedAsync::perform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4002000000;
  v10 = __Block_byref_object_copy__18805;
  v11 = __Block_byref_object_dispose__18806;
  v13 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v12 = &unk_1EFA8A9D0;
  LOBYTE(v14) = dispatch_semaphore_wait(*(a1 + 8), 0) == 0;
  if (*(v8 + 56) == 1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN8Security11CodeSigning12LimitedAsync7performERNS_8Dispatch5GroupEU13block_pointerFvvE_block_invoke;
    v6[3] = &unk_1E70E5218;
    v6[4] = a3;
    v6[5] = &v7;
    v15 = MEMORY[0x1E69E9820];
    v16 = 0x40000000;
    v17 = ___ZN8Security8Dispatch5Group7enqueueEP16dispatch_queue_sU13block_pointerFvvE_block_invoke;
    v18 = &__block_descriptor_tmp_7_17021;
    v19 = a2;
    v20 = global_queue;
    if ((*(a2 + 72) & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN8Security8Dispatch23ExceptionAwareEnqueuing21enqueueWithDispatcherEU13block_pointerFvU13block_pointerFvvEES3__block_invoke;
      block[3] = &unk_1E70E47B0;
      block[4] = v6;
      block[5] = a2 + 8;
      dispatch_group_async(*(a2 + 88), global_queue, block);
    }
  }

  else
  {
    (*(a3 + 16))(a3);
  }

  _Block_object_dispose(&v7, 8);
  v12 = &unk_1EFA8A9D0;
  if (v14 == 1)
  {
    dispatch_semaphore_signal(*(v13 + 8));
  }
}

void sub_18894E378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  _Block_object_dispose(&a15, 8);
  if (a22 == 1)
  {
    dispatch_semaphore_signal(*(a21 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18805(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = &unk_1EFA8A9D0;
  *(result + 48) = v2;
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  return result;
}

intptr_t __Block_byref_object_dispose__18806(intptr_t result)
{
  *(result + 40) = &unk_1EFA8A9D0;
  if (*(result + 56) == 1)
  {
    return dispatch_semaphore_signal(*(*(result + 48) + 8));
  }

  return result;
}

intptr_t ___ZN8Security11CodeSigning12LimitedAsync7performERNS_8Dispatch5GroupEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *(v1 + 56) = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v4 == 1)
  {
    return dispatch_semaphore_signal(*(v3 + 8));
  }

  return result;
}

void sub_18894E4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    dispatch_semaphore_signal(*(a11 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t Security::CodeSigning::isOnRootFilesystem(Security::CodeSigning *this, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&__b, 170, sizeof(__b));
  if (!statfs(this, &__b))
  {
    return (BYTE1(__b.f_flags) >> 6) & 1;
  }

  v3 = secLogObjForScope("SecError");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v4)
  {
    v6 = *__error();
    v7[0] = 67109378;
    v7[1] = v6;
    v8 = 2080;
    v9 = this;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Unable to check if path is on rootfs: %d, %s", v7, 0x12u);
    return 0;
  }

  return result;
}

BOOL Security::CodeSigning::pathFileSystemUsesXattrFiles(Security::CodeSigning *this, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = -1431655766;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = v3;
  v18 = v3;
  memset(&__b, 170, sizeof(__b));
  if (!this)
  {
    v10 = secLogObjForScope("SecError");
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v9 = "path is NULL";
    v11 = v10;
    v12 = 2;
    goto LABEL_11;
  }

  if (statfs(this, &__b))
  {
    v4 = secLogObjForScope("SecError");
    result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136315650;
    f_mntonname = this;
    v23 = 1024;
    v24 = v6;
    v25 = 2080;
    v26 = v8;
    v9 = "Unable to convert %s to its filesystem mount [statfs failed]: %d [%s]";
LABEL_10:
    v11 = v4;
    v12 = 28;
LABEL_11:
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, v9, buf, v12);
    return 0;
  }

  v20[2] = 0;
  v20[0] = 5;
  v20[1] = 2147614720;
  if (getattrlist(__b.f_mntonname, v20, &v17, 0x24uLL, 0))
  {
    v4 = secLogObjForScope("SecError");
    result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v13 = *__error();
    v14 = __error();
    v15 = strerror(*v14);
    *buf = 136315650;
    f_mntonname = __b.f_mntonname;
    v23 = 1024;
    v24 = v13;
    v25 = 2080;
    v26 = v15;
    v9 = "Unable to get volume capabilities from %s: %d [%s]";
    goto LABEL_10;
  }

  if (v17 == 36)
  {
    return (WORD4(v17) & 0x4000) == 0 || (BYTE9(v18) & 0x40) == 0;
  }

  else
  {
    v16 = secLogObjForScope("SecError");
    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 134218240;
      f_mntonname = 36;
      v23 = 1024;
      v24 = v17;
      v9 = "getattrlist return length incorrect, expected %lu, got %u";
      v11 = v16;
      v12 = 18;
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t Security::CodeSigning::pathIsValidXattrFile(char *a1, const char *a2)
{
  v3 = a1;
  v66 = *MEMORY[0x1E69E9840];
  if (a1[23] < 0)
  {
    v5 = *a1;
    v4 = **a1;
  }

  else
  {
    v4 = *a1;
    v5 = a1;
  }

  if (v4 != 47)
  {
    v11 = secLogObjForScope(a2);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    if (v3[23] < 0)
    {
      v3 = *v3;
    }

    v65.st_dev = 136315138;
    *&v65.st_mode = v3;
    v12 = "%s isn't a full path, but a relative path";
LABEL_28:
    _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, v12, &v65, 0xCu);
    return 0;
  }

  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v65.st_blksize = v6;
  *v65.st_qspare = v6;
  v65.st_birthtimespec = v6;
  *&v65.st_size = v6;
  v65.st_mtimespec = v6;
  v65.st_ctimespec = v6;
  *&v65.st_uid = v6;
  v65.st_atimespec = v6;
  *&v65.st_dev = v6;
  if (stat(v5, &v65))
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 136315650;
      *&buf[4] = v5;
      *&buf[12] = 1024;
      *&buf[14] = v8;
      *&buf[18] = 2080;
      *&buf[20] = v10;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Unable to stat %s: %d [%s]", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  if ((v65.st_mode & 0x80000000) == 0)
  {
LABEL_13:
    v11 = secLogObjForScope(a2);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    if (v3[23] < 0)
    {
      v3 = *v3;
    }

    v65.st_dev = 136315138;
    *&v65.st_mode = v3;
    v12 = "%s isn't a regular file";
    goto LABEL_28;
  }

  v15 = v3;
  if (v3[23] < 0)
  {
    v15 = *v3;
    if (!*v3)
    {
      v33 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      LOWORD(v65.st_dev) = 0;
      v26 = "path is NULL";
      v27 = v33;
      v28 = 2;
      goto LABEL_36;
    }
  }

  v16 = strlen(v15);
  v17 = malloc_type_malloc(v16 + 1, 0x100004077774924uLL);
  if (!v17)
  {
    v22 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v23 = *__error();
    v24 = __error();
    v25 = strerror(*v24);
    v65.st_dev = 67109378;
    *&v65.st_mode = v23;
    LOWORD(v65.st_ino) = 2080;
    *(&v65.st_ino + 2) = v25;
    v26 = "Unable to allocate space for storing basename: %d [%s]";
    v27 = v22;
    v28 = 18;
LABEL_36:
    _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, v26, &v65, v28);
    goto LABEL_37;
  }

  v18 = v17;
  if (!basename_r(v15, v17))
  {
    v29 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *__error();
      v31 = __error();
      v32 = strerror(*v31);
      v65.st_dev = 136315650;
      *&v65.st_mode = v15;
      WORD2(v65.st_ino) = 1024;
      *(&v65.st_ino + 6) = v30;
      HIWORD(v65.st_uid) = 2080;
      *&v65.st_gid = v32;
      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "Could not get basename of %s: %d [%s]", &v65, 0x1Cu);
    }

    goto LABEL_33;
  }

  if (strlen(v18) < 3 || *v18 != 46)
  {
LABEL_33:
    free(v18);
    goto LABEL_37;
  }

  v19 = v18[1];
  free(v18);
  if (v19 != 95)
  {
LABEL_37:
    v11 = secLogObjForScope(a2);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    if (v3[23] < 0)
    {
      v3 = *v3;
    }

    v65.st_dev = 136315138;
    *&v65.st_mode = v3;
    v12 = "%s doesn't match Xattr file path spec";
    goto LABEL_28;
  }

  v20 = v3[23];
  if (v20 < 0)
  {
    v21 = *v3;
    v20 = *(v3 + 1);
  }

  else
  {
    v21 = v3;
  }

  v34 = &v21[v20];
  while (v20)
  {
    v35 = *--v34;
    --v20;
    if (v35 == 47)
    {
      v36 = v34 - v21;
      goto LABEL_47;
    }
  }

  v36 = -1;
LABEL_47:
  std::string::basic_string(&v62, v3, 0, v36, &v61);
  v37 = std::string::append(&v62, "/", 1uLL);
  v38 = *&v37->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v37->__r_.__value_.__l + 2);
  *buf = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string(&v61, v3, v36 + 3, 0xFFFFFFFFFFFFFFFFLL, &v63);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v61;
  }

  else
  {
    v39 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v61.__r_.__value_.__l.__size_;
  }

  v41 = std::string::append(buf, v39, size);
  v42 = *&v41->__r_.__value_.__l.__data_;
  *&v65.st_uid = *(&v41->__r_.__value_.__l + 2);
  *&v65.st_dev = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if ((v65.st_gid & 0x80000000) == 0)
  {
    v43 = &v65;
  }

  else
  {
    v43 = *&v65.st_dev;
  }

  if (!v43)
  {
    v49 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
LABEL_70:
      v50 = secLogObjForScope(a2);
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
LABEL_71:
        v13 = 0;
        goto LABEL_72;
      }

      v60 = &v65;
      if ((v65.st_gid & 0x80000000) != 0)
      {
        v60 = *&v65.st_dev;
      }

      if (v3[23] < 0)
      {
        v3 = *v3;
      }

      *buf = 136315394;
      *&buf[4] = v60;
      *&buf[12] = 2080;
      *&buf[14] = v3;
      v59 = "%s does not exist, forcing resource validation on %s";
LABEL_97:
      _os_log_debug_impl(&dword_1887D2000, v50, OS_LOG_TYPE_DEBUG, v59, buf, 0x16u);
      goto LABEL_71;
    }

    *buf = 0;
    v46 = "path is NULL";
    v47 = v49;
    v48 = 2;
LABEL_69:
    _os_log_impl(&dword_1887D2000, v47, OS_LOG_TYPE_DEFAULT, v46, buf, v48);
    goto LABEL_70;
  }

  if (access(v43, 0))
  {
    if (*__error() == 2)
    {
      goto LABEL_70;
    }

    v44 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    v45 = *__error();
    *buf = 67109378;
    *&buf[4] = v45;
    *&buf[8] = 2080;
    *&buf[10] = v43;
    v46 = "Unable to check if path exists: %d, %s";
    v47 = v44;
    v48 = 18;
    goto LABEL_69;
  }

  if ((v65.st_gid & 0x80000000) == 0)
  {
    v51 = &v65;
  }

  else
  {
    v51 = *&v65.st_dev;
  }

  if (!v51)
  {
    v53 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_86;
    }

    *buf = 0;
    v54 = "path is NULL";
    v55 = v53;
    v56 = 2;
LABEL_85:
    _os_log_impl(&dword_1887D2000, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
    goto LABEL_86;
  }

  v52 = listxattr(v51, 0, 0, 0);
  if (v52 == -1)
  {
    v57 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_86;
    }

    *buf = 136315138;
    *&buf[4] = v51;
    v54 = "Unable to acquire the xattr list from %s";
    v55 = v57;
    v56 = 12;
    goto LABEL_85;
  }

  if (v52 <= 0)
  {
LABEL_86:
    v50 = secLogObjForScope(a2);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_71;
    }

    v58 = &v65;
    if ((v65.st_gid & 0x80000000) != 0)
    {
      v58 = *&v65.st_dev;
    }

    if (v3[23] < 0)
    {
      v3 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = v58;
    *&buf[12] = 2080;
    *&buf[14] = v3;
    v59 = "%s does not contain xattrs, forcing resource validation on %s";
    goto LABEL_97;
  }

  v13 = 1;
LABEL_72:
  if (SHIBYTE(v65.st_gid) < 0)
  {
    operator delete(*&v65.st_dev);
  }

  return v13;
}

void sub_18894F000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *Security::CodeSigning::pathRemaining(std::string *a1, uint64_t a2, const std::string::value_type **a3)
{
  v3 = a3;
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = *(a2 + 23);
  }

  v8 = *(a3 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = a3[1];
    if (v7 < v9)
    {
      return std::string::basic_string[abi:ne200100]<0>(a1, &unk_188967DD7);
    }
  }

  else
  {
    v9 = *(a3 + 23);
    if (v7 < v8)
    {
      return std::string::basic_string[abi:ne200100]<0>(a1, &unk_188967DD7);
    }
  }

  if (!v9)
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, &unk_188967DD7);
  }

  if ((v6 & 0x80000000) != 0)
  {
    if (!*(a2 + 8))
    {
      return std::string::basic_string[abi:ne200100]<0>(a1, &unk_188967DD7);
    }
  }

  else if (!*(a2 + 23))
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, &unk_188967DD7);
  }

  if ((v8 & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a3, a3[1]);
    if ((*(a2 + 23) & 0x80) == 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    goto LABEL_18;
  }

  v17 = *a3;
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  __p = *a2;
LABEL_18:
  isPathPrefix = Security::CodeSigning::isPathPrefix(&v17, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((isPathPrefix & 1) == 0)
    {
      return std::string::basic_string[abi:ne200100]<0>(a1, &unk_188967DD7);
    }
  }

  else if ((isPathPrefix & 1) == 0)
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, &unk_188967DD7);
  }

  v11 = *(v3 + 23);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v12 = v3;
    v3 = *v3;
    v11 = v12[1];
  }

  if (*(v3 + v11 - 1) == 47)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 + 1;
  }

  v14 = *(a2 + 23);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v14 = *(a2 + 8);
  }

  if (v13 < v14)
  {
    return std::string::basic_string(a1, a2, v13, 0xFFFFFFFFFFFFFFFFLL, &v18);
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, &unk_188967DD7);
}

void sub_18894F1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Security::CodeSigning::isPathPrefix(char *a1, void *__s)
{
  v2 = __s;
  v4 = *(__s + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *__s;
    v6 = __s[1];
  }

  else
  {
    v5 = __s;
    v6 = *(__s + 23);
  }

  v7 = a1[23];
  v8 = *a1;
  v9 = *(a1 + 1);
  if ((v7 & 0x80u) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if ((v7 & 0x80u) == 0)
  {
    v11 = a1[23];
  }

  else
  {
    v11 = *(a1 + 1);
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  if (v6 < v11)
  {
    return 0;
  }

  v20 = v5;
  v21 = *a1;
  v12 = v5 + v6;
  v13 = *v10;
  v14 = v5;
  while (1)
  {
    v15 = v6 - v11;
    if (v15 == -1)
    {
      return 0;
    }

    result = memchr(v14, v13, v15 + 1);
    if (!result)
    {
      return result;
    }

    v17 = result;
    result = memcmp(result, v10, v11);
    if (!result)
    {
      break;
    }

    v14 = (v17 + 1);
    v6 = &v12[-v17 - 1];
    if (v6 < v11)
    {
      return 0;
    }
  }

  if (v17 != v12)
  {
    v8 = v21;
    if (v17 == v20)
    {
LABEL_20:
      if ((v4 & 0x80000000) != 0)
      {
        v18 = v2[1];
      }

      else
      {
        v18 = v4;
      }

      if (v11 == v18)
      {
        return 0;
      }

      if ((v7 & 0x80) != 0)
      {
        v19 = *(v8 + v9 - 1);
        v7 = v9;
      }

      else
      {
        v19 = a1[v7 - 1];
      }

      if (v19 == 47)
      {
        return 1;
      }

      if ((v4 & 0x80000000) != 0)
      {
        if (v2[1] <= v7)
        {
          goto LABEL_37;
        }

        v2 = *v2;
      }

      else if (v7 >= v4)
      {
LABEL_37:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      return *(v2 + v7) == 47;
    }
  }

  return result;
}

void Security::CodeSigning::SingleDiskRep::strictValidate(char *a1, uint64_t a2, uint64_t a3, int a4)
{
  Security::CodeSigning::DiskRep::strictValidate(a1, a2, a3, a4);
  if ((a4 & 0x1000000) != 0)
  {
    v8 = (*(*a1 + 144))(a1);
    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(*v8, "com.apple.ResourceFork"))
    {
      v9 = (*(*a1 + 144))(a1);
      Security::UnixPlusPlus::FileDesc::removeAttr(*v9, "com.apple.ResourceFork");
    }

    v10 = (*(*a1 + 144))(a1);
    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(*v10, "com.apple.FinderInfo"))
    {
      v11 = (*(*a1 + 144))(a1);
      Security::UnixPlusPlus::FileDesc::removeAttr(*v11, "com.apple.FinderInfo");
    }
  }

  if ((a4 & 0x200) != 0)
  {
    v14 = *(a3 + 8);
    v13 = a3 + 8;
    v12 = v14;
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v13;
    do
    {
      if (*(v12 + 28) >= -66999)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < -66999));
    }

    while (v12);
    if (v15 == v13 || *(v15 + 28) > -66999)
    {
LABEL_14:
      v16 = (*(*a1 + 144))(a1);
      v17 = "com.apple.ResourceFork";
      if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(*v16, "com.apple.ResourceFork") || (v18 = (*(*a1 + 144))(a1), v17 = "com.apple.FinderInfo", Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(*v18, "com.apple.FinderInfo")))
      {
        v21 = a1 + 16;
        if (a1[39] < 0)
        {
          v21 = *v21;
        }

        v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Disallowed xattr %s found on %s", v17, v21);
        Security::CodeSigning::CSError::throwMe(0xFFFEFA49, @"SecCSResourceHasSidebandData", v22, v23);
      }
    }
  }

  if (a2)
  {
    if (bswap32(*(a2 + 8)) >> 8 >= 0x203 && (v19 = *(a2 + 56)) != 0)
    {
      v20 = bswap64(v19);
    }

    else
    {
      v20 = bswap32(*(a2 + 32));
    }

    if (v20 != (*(*a1 + 96))(a1))
    {
      Security::MacOSError::throwMe(0xFFFEFA1BLL);
    }
  }
}

off_t Security::CodeSigning::SingleDiskRep::signingLimit(Security::CodeSigning::SingleDiskRep *this)
{
  v1 = (*(*this + 144))(this);
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v4.st_blksize = v2;
  *v4.st_qspare = v2;
  v4.st_birthtimespec = v2;
  *&v4.st_size = v2;
  v4.st_mtimespec = v2;
  v4.st_ctimespec = v2;
  *&v4.st_uid = v2;
  v4.st_atimespec = v2;
  *&v4.st_dev = v2;
  Security::UnixPlusPlus::FileDesc::fstat(*v1, &v4);
  return v4.st_size;
}

CFURLRef Security::CodeSigning::SingleDiskRep::copyCanonicalPath(Security::CodeSigning::SingleDiskRep *this, uint64_t a2, uint64_t a3, const __CFURL *a4)
{
  v6 = *(this + 2);
  v4 = this + 16;
  v5 = v6;
  if (v4[23] < 0)
  {
    v4 = v5;
  }

  return Security::makeCFURL(v4, 0, 0, a4);
}

CFDataRef Security::CodeSigning::SingleDiskRep::identification(Security::CodeSigning::SingleDiskRep *this)
{
  v13 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7.data[9] = v2;
  *&v7.data[13] = v2;
  *&v7.data[1] = v2;
  *&v7.data[5] = v2;
  *&v7.h0 = v2;
  *&v7.h4 = v2;
  CC_SHA1_Init(&v7);
  v3 = (*(*this + 144))(this);
  Security::UnixPlusPlus::FileDesc::seek(*v3, 0);
  v4 = (*(*this + 144))(this);
  v5 = *(v4 + 4);
  v8 = *v4;
  v9 = v5;
  *md = MEMORY[0x1E69E9820];
  *&md[8] = 0x40000000;
  *&md[16] = ___ZN8Security11CodeSigning12hashFileDataINS_4SHA1EEEmNS_12UnixPlusPlus8FileDescEPT_m_block_invoke;
  v11 = &__block_descriptor_tmp_18909;
  v12 = &v7;
  Security::CodeSigning::scanFileData(&v8, 0, md);
  memset(md, 170, 20);
  CC_SHA1_Final(md, &v7);
  return CFDataCreate(0, md, 20);
}

Security::UnixPlusPlus::FileDesc *Security::CodeSigning::SingleDiskRep::Writer::fd(Security::CodeSigning::SingleDiskRep::Writer *this)
{
  v1 = (this + 96);
  if (*(this + 24) == -1)
  {
    v2 = *(this + 3);
    if (*(v2 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v2 + 16), *(v2 + 24));
    }

    else
    {
      __p = *(v2 + 16);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    Security::UnixPlusPlus::FileDesc::open(v1, p_p, 2, 438);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v1;
}

void sub_18894F8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Security::CodeSigning::Requirement::Reader::getData(Security::CodeSigning::Requirement::Reader *this, const void **a2, unint64_t *a3)
{
  result = Security::CodeSigning::Requirement::Reader::get<unsigned int>(this);
  *a3 = result;
  v7 = *(this + 2);
  if (v7 + result > bswap32(*(*this + 4)))
  {
    Security::MacOSError::throwMe(0xFFFEFA14);
  }

  *a2 = (*this + v7);
  *(this + 2) = ((result - 1) & 0xFFFFFFFC) + v7 + 4;
  return result;
}

void *Security::CodeSigning::Requirement::Reader::getString(Security::CodeSigning::Requirement::Reader *this, Security::CodeSigning::Requirement::Reader *a2)
{
  __len = 0xAAAAAAAAAAAAAAAALL;
  __src = 0xAAAAAAAAAAAAAAAALL;
  result = Security::CodeSigning::Requirement::Reader::getData(a2, &__src, &__len);
  v4 = __len;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = __src;
  if (__len >= 0x17)
  {
    operator new();
  }

  *(this + 23) = __len;
  if (v4)
  {
    result = memmove(this, v5, v4);
  }

  *(this + v4) = 0;
  return result;
}

void Security::CodeSigning::CSError::~CSError(std::exception *this)
{
  this->__vftable = &unk_1EFA8C310;
  Security::CFRef<__CFDictionary const*>::~CFRef(&this[19].__vftable);
  std::exception::~exception(this);

  JUMPOUT(0x18CFD9760);
}

{
  this->__vftable = &unk_1EFA8C310;
  Security::CFRef<__CFDictionary const*>::~CFRef(&this[19].__vftable);

  std::exception::~exception(this);
}

void Security::CodeSigning::CSError::throwMe(Security::CodeSigning::CSError *this, uint64_t a2, const __CFString *a3, const void *a4)
{
  v6 = this;
  exception = __cxa_allocate_exception(0xA0uLL);
  v8 = Security::cfmake<__CFDictionary const*>("{%O=%O}", a2, a3);
  Security::CodeSigning::CSError::CSError(exception, v6, v8);
}

void Security::CodeSigning::CSError::augment(Security::CodeSigning::CSError *this, const __CFString *a2, const void *a3)
{
  v4 = Security::cfmake<__CFDictionary const*>("{+%O,%O=%O}", *(this + 19), a2, a3);
  v5 = *(this + 19);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 19) = v4;
}

uint64_t Security::CodeSigning::CSError::cfError(CFDictionaryRef *this, __CFError **a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x1E695E638];
    v5 = (*(*this + 3))(this);
    *a2 = CFErrorCreate(0, v4, v5, this[19]);
  }

  v6 = *(*this + 3);

  return v6(this);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions)
{
  v4 = MEMORY[0x1EEDB6CF0](theData, dataToFind, searchRange.location, searchRange.length, compareOptions);
  result.length = v5;
  result.location = v4;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

double gotLoadHelper_x8__OBJC_CLASS___MCProfileConnection(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ManagedConfiguration))
  {
    return dlopenHelper_ManagedConfiguration(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SecureBackup(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupAuthenticationPassword(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x9__kSecureBackupContainsiCDPDataKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x10__kSecureBackupErrorDomain(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupRecoveryKeyKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupUsesRecoveryKeyKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupiCloudDataProtectionDeleteAllRecordsKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double dlopenHelper_CloudServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CloudServices.framework/CloudServices", 0);
  atomic_store(1u, &dlopenHelperFlag_CloudServices);
  return a1;
}

double dlopenHelper_ManagedConfiguration(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 0);
  atomic_store(1u, &dlopenHelperFlag_ManagedConfiguration);
  return a1;
}
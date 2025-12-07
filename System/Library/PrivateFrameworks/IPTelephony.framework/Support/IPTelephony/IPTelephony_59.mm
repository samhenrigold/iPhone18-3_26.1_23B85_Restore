uint64_t SDPSession::hasStream(SDPSession *this)
{
  v1 = *(this + 238);
  if (v1 == (this + 1912))
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 5);
    if (v2)
    {
      if (*(v2 + 48))
      {
        break;
      }
    }

    v3 = *(v1 + 1);
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
        v4 = *(v1 + 2);
        v5 = *v4 == v1;
        v1 = v4;
      }

      while (!v5);
    }

    v1 = v4;
    if (v4 == (this + 1912))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t SDPSession::streamsValidForManager(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1904);
  v3 = (a1 + 1912);
  if (v2 == (a1 + 1912))
  {
    return 1;
  }

  do
  {
    result = (*(**(*a2 + 152) + 40))(*(*a2 + 152), *(v2[5] + 48));
    if (!result)
    {
      break;
    }

    v6 = v2[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v2[2];
        v8 = *v7 == v2;
        v2 = v7;
      }

      while (!v8);
    }

    v2 = v7;
  }

  while (v7 != v3);
  return result;
}

uint64_t SDPSession::initializeCarrierTemplateSDP(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2)
  {
    v3 = SipStack::prefs(v2);
    v5 = *a1;
    v4 = *(a1 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = SipStack::prefs(v5);
    ImsPrefs::AllowIPv6UnicastAddress(v6);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    ImsPrefs::SDPTemplate(v3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      operator delete(__p.__r_.__value_.__l.__data_);
      if (size)
      {
LABEL_8:
        ImsPrefs::SDPTemplate(v3, &__p);
        SDPParser::parse();
      }
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_8;
    }

    SDPTemplateBuilder::createSDPTemplate(v3, &__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "sdp.session");
  v10[0] = 0;
  v13 = 0;
  v7 = ims::error(&__p, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "No valid SIP stack", 18);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E508EE5C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  STACK[0x2B0] = &unk_1F5EF5FB8;
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void SDPModel::setDirection(uint64_t a1, int a2)
{
  v2 = a1 + 424;
  SDPMediaDirection::SDPMediaDirection(v3, a2);
  std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaDirection>(v2, 0, 0, v3);
}

void sub_1E508F338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPSession::initializeLazuliTemplateSDP(SipStack **a1)
{
  v2 = *a1;
  if (v2)
  {
    SipStack::prefs(v2);
    v7[0] = 0;
    v7[1] = 0;
    SipStack::getTlsFingerprint(*a1, &v6);
    SDPTemplateBuilder::createLazuliSDPTemplate(v7);
  }

  v3 = std::string::basic_string[abi:ne200100]<0>(&v12, "sdp.session");
  v8[0] = 0;
  v11 = 0;
  v4 = ims::error(v3, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "No valid SIP stack", 18);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  return 0;
}

void sub_1E508F944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 41) < 0)
  {
    operator delete(*(v19 - 64));
  }

  v21 = *(v19 - 136);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void sub_1E508FA5C()
{
  if (*(v0 - 72) == 1 && *(v0 - 81) < 0)
  {
    operator delete(*(v0 - 104));
  }

  if (*(v0 - 41) < 0)
  {
    operator delete(*(v0 - 64));
  }

  JUMPOUT(0x1E508FA54);
}

void SDPSession::setModelPath(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = *(a1 + 120);
      if (v7)
      {
        memset(v16, 0, sizeof(v16));
        memset(v15, 0, sizeof(v15));
        SipHost::SipHost(&v11, (a1 + 72));
        LazuliUri::LazuliUri(v15, &v11, *(v7 + 2881));
        SipHost::~SipHost(&v11);
        LazuliUri::setHostPort(v15, a3);
        std::string::operator=(v16, (a1 + 1960));
        v11 = &unk_1F5EF8000;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v9[0] = 0;
        v9[1] = 0;
        __p[0] = &unk_1F5EBEF50;
        __p[1] = v9;
        LOWORD(v10) = 256;
        LazuliRouteSet::addHop(&v11, v15, 0, 0, __p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E508FCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  ims::AccessNetwork::~AccessNetwork(&__p);
  LazuliRouteSet::~LazuliRouteSet(&a19);
  LazuliUri::~LazuliUri(&a26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

uint64_t SDPSession::getAMRPacketAlignmentFromString(unint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = a1[1];
    if (v2 != 16)
    {
      if (v2 != 22)
      {
        return 2;
      }

      a1 = *a1;
      goto LABEL_8;
    }

    v7 = **a1 == 0x696C41746574636FLL && *(*a1 + 8) == 0x796C6E4F64656E67;
LABEL_25:
    v8 = !v7;
    return (2 * v8);
  }

  v1 = *(a1 + 23);
  if (v1 == 16)
  {
    v7 = *a1 == 0x696C41746574636FLL && a1[1] == 0x796C6E4F64656E67;
    goto LABEL_25;
  }

  if (v1 != 22)
  {
    return 2;
  }

LABEL_8:
  v3 = 0x62616E6477696474;
  v4 = bswap64(*a1);
  if (v4 == 0x62616E6477696474 && (v3 = 0x6845666669636965, v4 = bswap64(a1[1]), v4 == 0x6845666669636965) && (v3 = 0x69656E744F6E6C79, v4 = bswap64(*(a1 + 14)), v4 == 0x69656E744F6E6C79))
  {
    v5 = 0;
  }

  else if (v4 < v3)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t std::variant<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>::variant[abi:ne200100]<SDPMediaFormatDTMFParams,0,0,0,SDPMediaFormatDTMFParams,3ul,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  *a1 = &unk_1F5EBF210;
  *(a1 + 120) = 3;
  return a1;
}

void SDPSession::addMediaStreamForType(void *a1, int a2)
{
  v4 = a1[242];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = a1[241];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = a1[239];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = a1 + 239;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 == a1 + 239 || *(v8 + 8) > a2 || !v8[5])
  {
LABEL_16:
    if ((a2 == 4 || a2 == 2) && v6)
    {
      operator new();
    }
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E50900F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPSession::handleLazuliOfferAnswer(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 128);
  if (!v5)
  {
    return 0;
  }

  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *(a1 + 120);
  if (v11)
  {
    v70 = 0u;
    v71 = 0u;
    *v68 = 0u;
    v69 = 0u;
    *__str = 0u;
    *v67 = 0u;
    memset(v65, 0, sizeof(v65));
    v12 = *a3;
    if (*a3)
    {
      v13 = a2[1];
      v63 = *a2;
      v64 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        v12 = *a3;
      }

      v14 = a3[1];
      v61 = v12;
      v62 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = SipStack::prefs(v11);
      SDPLazuliSettingsBuilder::createLazuliSettingsForOfferAnswer(a1 + 1464, &v63, &v61, v15, v65);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      v16 = v64;
    }

    else
    {
      v16 = a2[1];
      v60[0] = *a2;
      v60[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = SipStack::prefs(v11);
      SDPLazuliSettingsBuilder::createLazuliSettingsForOffer(a1 + 1464, v60, v18, v65);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v19 = *(a1 + 1872);
    v20 = *(a1 + 1864);
    if (v19 != v20)
    {
      v21 = v19 - 25;
      v22 = v19 - 25;
      v23 = v19 - 25;
      do
      {
        v24 = *v23;
        v23 -= 25;
        (*v24)(v22);
        v21 -= 25;
        v25 = v22 == v20;
        v22 = v23;
      }

      while (!v25);
    }

    *(a1 + 1872) = v20;
    v26 = *a3;
    if (!*a3)
    {
      v26 = *a2;
    }

    v57 = 0;
    v58 = 0;
    v59 = 0;
    std::vector<SDPMedia>::__init_with_size[abi:ne200100]<SDPMedia*,SDPMedia*>(&v57, *(v26 + 448), *(v26 + 456), 0x8F5C28F5C28F5C29 * ((*(v26 + 456) - *(v26 + 448)) >> 3));
    v27 = v57;
    v28 = v58;
    while (v27 != v28)
    {
      SDPMedia::SDPMedia(v55, v27, 0);
      v29 = *(a1 + 1872);
      if (v29 >= *(a1 + 1880))
      {
        v30 = std::vector<SDPMedia>::__emplace_back_slow_path<SDPMedia>(a1 + 1864, v55);
      }

      else
      {
        SDPMedia::SDPMedia(*(a1 + 1872), v55);
        v30 = v29 + 200;
        *(a1 + 1872) = v29 + 200;
      }

      *(a1 + 1872) = v30;
      SDPMedia::~SDPMedia(v55);
      SDPSession::addMediaStreamForType(a1, v27[3]);
      v27 += 50;
    }

    std::string::basic_string[abi:ne200100]<0>(v55, "sdp.session");
    v51[0] = 0;
    v54 = 0;
    v31 = ims::info(v55, v51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "SDPSession::handleLazuliOfferAnswer: we have ", 45);
    *(v31 + 17) = 0;
    if (*a2)
    {
      v32 = "both an OFFER and ANSWER";
    }

    else
    {
      v32 = "an ANSWER";
    }

    v33 = "an OFFER";
    if (!*a2)
    {
      v33 = "nothing";
    }

    if (*a3)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    v35 = strlen(v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), v34, v35);
    *(v31 + 17) = 0;
    (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v31 + 17) = 0;
    if (v54 == 1 && v53 < 0)
    {
      operator delete(__p);
    }

    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

    if (BYTE8(v71) == 1 && (*(*&v65[0] + 24))(v65))
    {
      v36 = *(a1 + 1856);
      if (v36 == 1)
      {
        if ((BYTE8(v71) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if ((*(*&v65[0] + 32))(v65, a1 + 1496))
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v36 = *(a1 + 1856);
      }

      else
      {
        v17 = 2;
      }

      if (v36 == BYTE8(v71))
      {
        if (v36)
        {
          SDPMediaSettings::operator=(a1 + 1496, v65);
          if ((a1 + 1496) != v65)
          {
            std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1776), __str[1], *v67, 0xAAAAAAAAAAAAAAABLL * ((*v67 - __str[1]) >> 3));
            std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1800), v68[0], v68[1], 0xAAAAAAAAAAAAAAABLL * ((v68[1] - v68[0]) >> 3));
          }

          v41 = *(&v69 + 1);
          v42 = v70;
          if (v70)
          {
            atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
          }

          *(a1 + 1824) = v41;
          v43 = *(a1 + 1832);
          *(a1 + 1832) = v42;
          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }

          v44 = *(&v70 + 1);
          v45 = v71;
          if (v71)
          {
            atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
          }

          *(a1 + 1840) = v44;
          v46 = *(a1 + 1848);
          *(a1 + 1848) = v45;
          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v46);
          }
        }
      }

      else if (v36)
      {
        SDPMediaLazuliSettings::~SDPMediaLazuliSettings((a1 + 1496));
        *(a1 + 1856) = 0;
      }

      else
      {
        SDPMediaLazuliSettings::SDPMediaLazuliSettings((a1 + 1496), v65);
        *(a1 + 1856) = 1;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v55, "sdp.session");
      v47[0] = 0;
      v50 = 0;
      v37 = ims::error(v55, v47);
      v38 = v37;
      if (BYTE8(v71))
      {
        v39 = "Invalid";
      }

      else
      {
        v39 = "Missing";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), v39, 7);
      *(v38 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " lazuli settings!", 17);
      *(v38 + 17) = 0;
      (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v38 + 17) = 0;
      if (v50 == 1 && v49 < 0)
      {
        operator delete(v48);
      }

      if (v56 < 0)
      {
        operator delete(v55[0]);
      }

      v17 = 0;
    }

    if (*(a1 + 1856) == 1)
    {
      *(a1 + 1592) = a4;
    }

    v55[0] = &v57;
    std::vector<SDPMedia>::__destroy_vector::operator()[abi:ne200100](v55);
    if (BYTE8(v71) == 1)
    {
      SDPMediaLazuliSettings::~SDPMediaLazuliSettings(v65);
    }
  }

  else
  {
    v17 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  return v17;
}

void sub_1E5090764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  a23 = &a48;
  std::vector<SDPMedia>::__destroy_vector::operator()[abi:ne200100](&a23);
  if (LOBYTE(STACK[0x2E8]) == 1)
  {
    SDPMediaLazuliSettings::~SDPMediaLazuliSettings(&a57);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  _Unwind_Resume(a1);
}

uint64_t SDPSession::handleOfferAnswer(uint64_t a1, SDPModel ***a2, SDPModel ***a3, uint64_t a4)
{
  v5 = *(a1 + 128);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = *(a1 + 120);
      if (!v10)
      {
LABEL_159:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        return v10;
      }

      v65 = v9;
      v138 = 0;
      v136 = 0u;
      memset(v137, 0, sizeof(v137));
      memset(v135, 0, sizeof(v135));
      __s2 = 0u;
      v134 = 0u;
      memset(v132, 0, sizeof(v132));
      v11 = *a3;
      if (*a3)
      {
        v12 = a2[1];
        v130 = *a2;
        v131 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
          v11 = *a3;
        }

        v13 = a3[1];
        v128 = v11;
        v129 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = SipStack::prefs(v10);
        SDPAudioSettingsBuilder::createAudioSettingsForOfferAnswer(a1 + 1376, &v130, &v128, v14, v132);
        if (v129)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v129);
        }

        v15 = v131;
      }

      else
      {
        v15 = a2[1];
        v127[0] = *a2;
        v127[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
        }

        v16 = SipStack::prefs(v10);
        SDPAudioSettingsBuilder::createAudioSettingsForOffer(a1 + 1376, v127, v16, v132);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v17 = *(a1 + 1872);
      v18 = *(a1 + 1864);
      if (v17 != v18)
      {
        v19 = v17 - 25;
        v20 = v17 - 25;
        v21 = v17 - 25;
        do
        {
          v22 = *v21;
          v21 -= 25;
          (*v22)(v20);
          v19 -= 25;
          v23 = v20 == v18;
          v20 = v21;
        }

        while (!v23);
      }

      *(a1 + 1872) = v18;
      v24 = *a3;
      if (!*a3)
      {
        v24 = *a2;
      }

      v125 = 0;
      v124 = 0;
      v126 = 0;
      std::vector<SDPMedia>::__init_with_size[abi:ne200100]<SDPMedia*,SDPMedia*>(&v124, v24[56], v24[57], 0x8F5C28F5C28F5C29 * ((v24[57] - v24[56]) >> 3));
      v25 = v124;
      v26 = v125;
      while (v25 != v26)
      {
        SDPMedia::SDPMedia(&v102, v25, 0);
        v27 = *(a1 + 1872);
        if (v27 >= *(a1 + 1880))
        {
          v28 = std::vector<SDPMedia>::__emplace_back_slow_path<SDPMedia>(a1 + 1864, &v102);
        }

        else
        {
          SDPMedia::SDPMedia(*(a1 + 1872), &v102);
          v28 = v27 + 200;
          *(a1 + 1872) = v27 + 200;
        }

        *(a1 + 1872) = v28;
        SDPMedia::~SDPMedia(&v102);
        SDPSession::addMediaStreamForType(a1, v25[3]);
        v25 += 50;
      }

      std::string::basic_string[abi:ne200100]<0>(&v102, "sdp.session");
      v120[0] = 0;
      v123 = 0;
      v29 = ims::info(&v102, v120);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "SDPSession::handleOfferAnswer: we have ", 39);
      *(v29 + 17) = 0;
      if (*a2)
      {
        v30 = "both an OFFER and ANSWER";
      }

      else
      {
        v30 = "an ANSWER";
      }

      v31 = "an OFFER";
      if (!*a2)
      {
        v31 = "nothing";
      }

      if (*a3)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      v33 = strlen(v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), v32, v33);
      *(v29 + 17) = 0;
      (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v29 + 17) = 0;
      if (v123 == 1 && v122 < 0)
      {
        operator delete(__p);
      }

      if (SBYTE7(v103) < 0)
      {
        operator delete(v102);
      }

      memset(v119, 0, sizeof(v119));
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      if (*(a1 + 1328) == 1)
      {
        v34 = *(a1 + 1056);
      }

      else
      {
        v34 = 0;
      }

      if (*(a1 + 136))
      {
        v35 = *a2;
        for (i = (*a2)[56]; ; i = (i + 200))
        {
          if (i == (*a2)[57])
          {
            goto LABEL_67;
          }

          if (*(i + 3) == 4)
          {
            break;
          }
        }

        v37 = *a3;
        if (*a3)
        {
          v38 = a2[1];
          v96 = *a2;
          v97 = v38;
          v39 = v37;
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            v39 = *a3;
          }

          v40 = a3[1];
          v94 = v39;
          v95 = v40;
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v41 = SipStack::prefs(v10);
          SDPTTYSettingsBuilder::createTTYSettingsForOfferAnswer(a1 + 1408, &v96, &v94, v41, &v98);
        }

        else
        {
          v42 = a2[1];
          v92 = v35;
          v93 = v42;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = SipStack::prefs(v10);
          SDPTTYSettingsBuilder::createTTYSettingsForOffer(a1 + 1408, &v92, v43, &v98);
        }

        std::__optional_storage_base<SDPMediaTTYSettings,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SDPMediaTTYSettings,false>>(&v102, &v98);
        if (v101 == 1)
        {
          SDPMediaSettings::~SDPMediaSettings(&v98);
        }

        if (v37)
        {
          if (v95)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v95);
          }

          v44 = v97;
          if (v97)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v44 = v93;
          if (v93)
          {
LABEL_66:
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          }
        }
      }

LABEL_67:
      if (v138 == 1 && (*(v132[0] + 3))(v132))
      {
        if (*(a1 + 584) != 1)
        {
          goto LABEL_173;
        }

        if ((v138 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (!(*(v132[0] + 4))(v132, a1 + 152))
        {
          v10 = 1;
        }

        else
        {
LABEL_173:
          if (*a3 || *(a1 + 584) != 1 || *(a1 + 424) != 1 || LOBYTE(v135[0]) != 1 || (v45 = *(a1 + 392), v46 = *(a1 + 400) - v45, v46 == *(&__s2 + 1) - __s2) && !memcmp(v45, __s2, v46))
          {
            v10 = 2;
          }

          else
          {
            v10 = 2;
            SDPSession::generate_key_and_salt(a1, 2);
          }
        }

        if (*(a1 + 584) == v138)
        {
          if (*(a1 + 584))
          {
            SDPMediaSettings::operator=(a1 + 152, v132);
            std::string::operator=((a1 + 432), &v135[1]);
            *(a1 + 456) = v136;
            *(a1 + 461) = *(&v136 + 5);
            v62 = *&v137[3];
            *(a1 + 480) = *&v137[1];
            *(a1 + 496) = v62;
            *(a1 + 576) = v137[13];
            v63 = *&v137[11];
            *(a1 + 544) = *&v137[9];
            *(a1 + 560) = v63;
            v64 = *&v137[7];
            *(a1 + 512) = *&v137[5];
            *(a1 + 528) = v64;
          }
        }

        else if (*(a1 + 584))
        {
          SDPMediaAudioSettings::~SDPMediaAudioSettings((a1 + 152));
          *(a1 + 584) = 0;
        }

        else
        {
          SDPMediaAudioSettings::SDPMediaAudioSettings((a1 + 152), v132);
          *(a1 + 584) = 1;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v98, "sdp.session");
        v88[0] = 0;
        v91 = 0;
        v47 = ims::error(&v98, v88);
        v48 = v47;
        if (v138)
        {
          v49 = "Invalid";
        }

        else
        {
          v49 = "Missing";
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), v49, 7);
        *(v48 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), " audio settings!", 16);
        *(v48 + 17) = 0;
        (*(*v48 + 64))(v48, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v48 + 17) = 0;
        if (v91 == 1 && v90 < 0)
        {
          operator delete(v89);
        }

        if (SHIBYTE(v100) < 0)
        {
          operator delete(v98);
        }

        v10 = 0;
      }

      if (LOBYTE(v119[3]) == 1)
      {
        if (*(a1 + 1328) != 1)
        {
          goto LABEL_174;
        }

        v50 = (*(v102 + 32))(&v102, a1 + 1032) ^ 1;
        if (v10 == 2)
        {
          LOBYTE(v50) = 0;
        }

        if ((v50 & 1) == 0)
        {
LABEL_174:
          if (!*a3 && *(a1 + 1328) == 1 && *(a1 + 1304) == 1 && LOBYTE(v119[0]) == 1)
          {
            v51 = *(a1 + 1272);
            v52 = *(a1 + 1280) - v51;
            if (v52 != *(&v117 + 1) - v117 || memcmp(v51, v117, v52))
            {
              SDPSession::generate_key_and_salt(a1, 4);
            }
          }

          v10 = 2;
        }

        v53 = *(a1 + 1328);
        if (v53 == LOBYTE(v119[3]))
        {
          if (*(a1 + 1328))
          {
            SDPMediaSettings::operator=(a1 + 1032, &v102);
            *(a1 + 1312) = v119[1];
            *(a1 + 1317) = *(&v119[1] + 5);
            LOBYTE(v53) = *(a1 + 1328);
          }

          if ((v53 & 1) != 0 && v34)
          {
            *(a1 + 1056) = v34;
          }

          if ((v53 & 1) == 0)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (*(a1 + 1328))
          {
            SDPMediaSettings::~SDPMediaSettings((a1 + 1032));
            *(a1 + 1328) = 0;
            goto LABEL_116;
          }

          SDPMediaSettings::SDPMediaSettings((a1 + 1032), &v102);
          *(a1 + 1032) = &unk_1F5EC4ED0;
          *(a1 + 1312) = v119[1];
          *(a1 + 1320) = v119[2];
          *(a1 + 1324) = BYTE4(v119[2]);
          *(a1 + 1328) = 1;
          if (v34)
          {
            *(a1 + 1056) = v34;
          }
        }

        if (((*(*(a1 + 1032) + 24))(a1 + 1032) & 1) == 0)
        {
          SDPSession::setRttPortInSDP(a1, 0);
        }
      }

LABEL_116:
      v54 = *(a1 + 1888);
      if (!v54 || *(v54 + 308) != 2)
      {
LABEL_152:
        if (*(a1 + 584) == 1)
        {
          *(a1 + 248) = a4;
        }

        if (LOBYTE(v119[3]) == 1)
        {
          SDPMediaSettings::~SDPMediaSettings(&v102);
        }

        *&v102 = &v124;
        std::vector<SDPMedia>::__destroy_vector::operator()[abi:ne200100](&v102);
        if (v138 == 1)
        {
          SDPMediaAudioSettings::~SDPMediaAudioSettings(v132);
        }

        v9 = v65;
        goto LABEL_159;
      }

      v98 = 0;
      v99 = 0;
      v100 = 0;
      if (*(a1 + 584) == 1)
      {
        if (SDPPayloadTypeSanitizer::sanitizePayloadType(&v98, *(a1 + 180)) != *(a1 + 180))
        {
          std::string::basic_string[abi:ne200100]<0>(v86, "sdp.session");
          v82[0] = 0;
          v85 = 0;
          v55 = ims::error(v86, v82);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "Audio settings RX payload type failed sanitization: ", 52);
          *(v55 + 17) = 0;
          MEMORY[0x1E6923390](*(v55 + 8), *(a1 + 180));
          *(v55 + 17) = 0;
          (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v55 + 17) = 0;
          if (v85 == 1 && v84 < 0)
          {
            operator delete(v83);
          }

          if (v87 < 0)
          {
            operator delete(v86[0]);
          }
        }

        if (SDPPayloadTypeSanitizer::sanitizePayloadType(&v98, *(a1 + 456)) == *(a1 + 456))
        {
          goto LABEL_135;
        }

        std::string::basic_string[abi:ne200100]<0>(v86, "sdp.session");
        v78[0] = 0;
        v81 = 0;
        v56 = ims::error(v86, v78);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "Audio settings DTMF RX payload type failed sanitization: ", 57);
        *(v56 + 17) = 0;
        MEMORY[0x1E6923390](*(v56 + 8), *(a1 + 456));
        *(v56 + 17) = 0;
        (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v56 + 17) = 0;
        if (v81 == 1 && v80 < 0)
        {
          v57 = v79;
LABEL_132:
          operator delete(v57);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v86, "sdp.session");
        v74[0] = 0;
        v77 = 0;
        v58 = ims::error(v86, v74);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), "No audio settings found. The payload types used for the second audio settings will not be sanitized.", 100);
        *(v58 + 17) = 0;
        (*(*v58 + 64))(v58, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v58 + 17) = 0;
        if (v77 == 1 && v76 < 0)
        {
          v57 = v75;
          goto LABEL_132;
        }
      }

      if (v87 < 0)
      {
        operator delete(v86[0]);
      }

LABEL_135:
      if (*(a1 + 1328) == 1)
      {
        if (SDPPayloadTypeSanitizer::sanitizePayloadType(&v98, *(a1 + 1060)) != *(a1 + 1060))
        {
          std::string::basic_string[abi:ne200100]<0>(v86, "sdp.session");
          v70[0] = 0;
          v73 = 0;
          v59 = ims::error(v86, v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v59 + 8), "TTY settings RX payload type failed sanitization: ", 50);
          *(v59 + 17) = 0;
          MEMORY[0x1E6923390](*(v59 + 8), *(a1 + 1060));
          *(v59 + 17) = 0;
          (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v59 + 17) = 0;
          if (v73 == 1 && v72 < 0)
          {
            operator delete(v71);
          }

          if (v87 < 0)
          {
            operator delete(v86[0]);
          }
        }

        if (SDPPayloadTypeSanitizer::sanitizePayloadType(&v98, *(a1 + 1320)) != *(a1 + 1320))
        {
          std::string::basic_string[abi:ne200100]<0>(v86, "sdp.session");
          v66[0] = 0;
          v69 = 0;
          v60 = ims::error(v86, v66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "TTY settings redundant RX payload type failed sanitization: ", 60);
          *(v60 + 17) = 0;
          MEMORY[0x1E6923390](*(v60 + 8), *(a1 + 1320));
          *(v60 + 17) = 0;
          (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v60 + 17) = 0;
          if (v69 == 1 && v68 < 0)
          {
            operator delete(v67);
          }

          if (v87 < 0)
          {
            operator delete(v86[0]);
          }
        }
      }

      if (*(a1 + 1024) == 1)
      {
        SDPMediaAudioSettings::~SDPMediaAudioSettings((a1 + 592));
        *(a1 + 1024) = 0;
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      goto LABEL_152;
    }
  }

  return 0;
}

void sub_1E50915E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x3F8]) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(&STACK[0x2D0]);
  }

  STACK[0x2D0] = &STACK[0x438];
  std::vector<SDPMedia>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D0]);
  if (LOBYTE(STACK[0x630]) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(&STACK[0x480]);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  _Unwind_Resume(a1);
}

void SDPSession::setRttPortInSDP(SDPSession *this, unsigned int a2)
{
  v3 = *(this + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 15);
      if (v7)
      {
        v8 = *this;
        v10 = *(*this + 448);
        v9 = *(v8 + 456);
        while (v10 != v9)
        {
          if (*(v10 + 12) == 4)
          {
            SDPMedia::setPort(v10, a2);
            v11 = SipStack::prefs(v7);
            if (ImsPrefs::AlwaysPrintSDPFormatInfo(v11))
            {
              *(v10 + 184) = 1;
            }

            break;
          }

          v10 += 200;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

uint64_t SDPPayloadTypeSanitizer::sanitizePayloadType(SDPPayloadTypeSanitizer *this, unsigned int a2)
{
  if (a2 >= 0x60)
  {
    if (a2 <= 0x7F)
    {
      v5 = *this;
      v6 = *(this + 1);
      v7 = a2;
      while (1)
      {
        v8 = *this;
        if (v5 != v6)
        {
          v8 = *this;
          while (*v8 != v7)
          {
            if (++v8 == v6)
            {
              goto LABEL_17;
            }
          }
        }

        if (v8 == v6)
        {
          break;
        }

        if (((v7 + 1) & 0xFF80) != 0)
        {
          v7 = 96;
        }

        else
        {
          ++v7;
        }

        v3 = 255;
        if (a2 == v7)
        {
          return v3;
        }
      }

LABEL_17:
      v9 = *(this + 2);
      if (v6 >= v9)
      {
        v11 = v6 - v5;
        v12 = v6 - v5;
        if (v12 <= -2)
        {
          std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - v5;
        if (v13 <= v12 + 1)
        {
          v14 = v12 + 1;
        }

        else
        {
          v14 = v13;
        }

        v15 = v13 >= 0x7FFFFFFFFFFFFFFELL;
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v15)
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(this, v16);
        }

        v17 = v6 - v5;
        v18 = (2 * v12);
        v19 = (2 * v12 - 2 * v17);
        *v18 = v7;
        v10 = v18 + 1;
        memcpy(v19, v5, v11);
        v20 = *this;
        *this = v19;
        *(this + 1) = v10;
        *(this + 2) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v6 = v7;
        v10 = v6 + 1;
      }

      *(this + 1) = v10;
      return v7;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    return a2;
  }
}

void SDPSession::localSdp(SDPSession *this)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v12, "sdp.session");
  v8[0] = 0;
  v11 = 0;
  v5 = ims::debug(v4, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "SDPSession::localSdp", 20);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  std::__optional_copy_base<SDPMediaAudioSettings,false>::__optional_copy_base[abi:ne200100](v7, (this + 152));
  std::__optional_copy_base<SDPMediaTTYSettings,false>::__optional_copy_base[abi:ne200100](v6, this + 1032);
  SDPModelBuilder::createSDP(&v12);
}

void sub_1E5091C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, void *a51)
{
  if (a50 == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(&a13);
  }

  if (LOBYTE(STACK[0x300]) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(&a51);
  }

  _Unwind_Resume(a1);
}

void sub_1E5091DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(exception_object);
}

void SDPSession::localTemplateSdp(SDPSession *this@<X0>, void *a3@<X8>)
{
  if (*(this + 584) == 1)
  {
    *(this + 90) = 255;
  }

  if (*(this + 1328) == 1)
  {
    *(this + 530) = 255;
  }

  *a3 = 0;
  a3[1] = 0;
  SDPSession::localSdp(this);
}

void SDPSession::createLocalSdpForFork(uint64_t a1@<X0>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + 128);
  if (v6 && (v8 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v9 = *(a1 + 120);
    if (v9)
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      v10 = a3[1];
      v21[0] = *a3;
      v21[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = SipStack::prefs(v9);
      SDPAudioSettingsBuilder::createAudioSettingsForOffer(a1 + 1376, v21, v11, v22);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      memset(v20, 0, sizeof(v20));
      if (*(a1 + 136))
      {
        for (i = *(*a3 + 448); ; i += 200)
        {
          if (i == *(*a3 + 456))
          {
            goto LABEL_21;
          }

          if (*(i + 12) == 4)
          {
            break;
          }
        }

        v13 = a3[1];
        v17[0] = *a3;
        v17[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
        }

        v14 = SipStack::prefs(v9);
        SDPTTYSettingsBuilder::createTTYSettingsForOffer(a1 + 1408, v17, v14, v18);
        std::__optional_storage_base<SDPMediaTTYSettings,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SDPMediaTTYSettings,false>>(v20, v18);
        if (v19 == 1)
        {
          SDPMediaSettings::~SDPMediaSettings(v18);
        }

        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

LABEL_21:
      *a4 = 0;
      a4[1] = 0;
      std::__optional_copy_base<SDPMediaAudioSettings,false>::__optional_copy_base[abi:ne200100](v16, v22);
      std::__optional_copy_base<SDPMediaTTYSettings,false>::__optional_copy_base[abi:ne200100](v15, v20);
      SDPModelBuilder::createSDP(a4);
    }

    *a4 = 0;
    a4[1] = 0;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_1E50920D8(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x428]) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(&STACK[0x300]);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (LOBYTE(STACK[0x558]) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(&STACK[0x430]);
  }

  if (LOBYTE(STACK[0x720]) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(&STACK[0x570]);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SDPSession::initializeOffer(SDPSession *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 15);
      if (!v5)
      {
LABEL_62:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      v6 = SipStack::prefs(*(this + 15));
      *(this + 140) = ImsPrefs::EnableSDPCandidateAttribute(v6);
      v7 = *(this + 3);
      v27 = *(this + 2);
      v28 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(this + 141);
      v9 = SipStack::prefs(v5);
      SDPTemplateBuilder::createInitialSettings(&v27, this + 2, v8, v9, &v29);
      std::__optional_storage_base<SDPMediaAudioSettings,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SDPMediaAudioSettings,false>>(this + 152, &v29);
      if (v30 == 1)
      {
        SDPMediaAudioSettings::~SDPMediaAudioSettings(&v29.__r_.__value_.__l.__data_);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v10 = *(this + 236);
      if (!v10 || *(v10 + 308) != 2 || *(this + 584) != 1)
      {
LABEL_60:
        SDPSession::addMediaStreamForType(this, 2);
        if (*(this + 34))
        {
          SDPSession::addMediaStreamForType(this, 4);
        }

        goto LABEL_62;
      }

      if (*(this + 455) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *(this + 54), *(this + 55));
      }

      else
      {
        v29 = *(this + 18);
      }

      v11 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v29.__r_.__value_.__l.__size_ != 6)
        {
          goto LABEL_25;
        }

        v12 = v29.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) != 6)
        {
          goto LABEL_25;
        }

        v12 = &v29;
      }

      data = v12->__r_.__value_.__l.__data_;
      v14 = WORD2(v12->__r_.__value_.__r.__words[0]);
      if (data == 760368449 && v14 == 16983)
      {
        v17 = 1;
LABEL_48:
        if (v11 < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          v19 = *(this + 3);
          v24 = *(this + 2);
          v25 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = *(this + 230);
          v21 = *(this + 141);
          v22 = SipStack::prefs(v5);
          if (v20 == 16000)
          {
            v23 = 8000;
          }

          else
          {
            v23 = 16000;
          }

          SDPTemplateBuilder::createInitialSecondAudioSettings(&v24, v23, v21, v22, &v29);
          std::__optional_storage_base<SDPMediaAudioSettings,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SDPMediaAudioSettings,false>>(this + 592, &v29);
          if (v30 == 1)
          {
            SDPMediaAudioSettings::~SDPMediaAudioSettings(&v29.__r_.__value_.__l.__data_);
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }
        }

        goto LABEL_60;
      }

LABEL_25:
      if (*(this + 455) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *(this + 54), *(this + 55));
      }

      else
      {
        v26 = *(this + 18);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        v17 = v26.__r_.__value_.__l.__size_ == 3 && *v26.__r_.__value_.__l.__data_ == 19777 && *(v26.__r_.__value_.__r.__words[0] + 2) == 82;
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      else
      {
        v17 = SHIBYTE(v26.__r_.__value_.__r.__words[2]) == 3 && LOWORD(v26.__r_.__value_.__l.__data_) == 19777 && v26.__r_.__value_.__s.__data_[2] == 82;
      }

      v11 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      goto LABEL_48;
    }
  }
}

void sub_1E509243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void SDPSession::initializeLazuliOffer(SDPSession *this)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(&v7, "sdp.session");
  v3[0] = 0;
  v6 = 0;
  v2 = ims::debug(v1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "SDPSession::initializeLazuliOffer", 33);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }
}

void sub_1E5092590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

SDPMedia *SDPSession::updatePortForMedia(uint64_t a1, unsigned int a2, int a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *(v6 + 448);
  v8 = *(v6 + 456);
  while (result != v8)
  {
    if (*(result + 3) == a3)
    {
      result = SDPMedia::setPort(result, a2);
      break;
    }

    result = (result + 200);
  }

  if (a3 == 4)
  {
    if (!*(a1 + 142))
    {
      *(a1 + 142) = v4;
    }

    if (*(a1 + 1328) == 1)
    {
      v9 = 1056;
      goto LABEL_14;
    }
  }

  else if (a3 == 2 && (*(a1 + 584) & 1) != 0)
  {
    v9 = 176;
LABEL_14:
    *(a1 + v9) = v4;
  }

  return result;
}

uint64_t SDPSession::enableRTCPBandwidthSpecifiers(uint64_t this)
{
  v1 = *(this + 16);
  for (i = v1[56]; i != v1[57]; i += 200)
  {
    if (*(i + 12) == 2)
    {
      goto LABEL_6;
    }
  }

  i = 0;
LABEL_6:
  v3 = i + 112;
  for (j = *(i + 120); j != v3; j = *(j + 8))
  {
    if ((*(j + 28) - 3) <= 1)
    {
      *(j + 32) = 1;
    }
  }

  v5 = v1 + 41;
  for (k = v1[42]; k != v5; k = *(k + 8))
  {
    if ((*(k + 28) - 3) <= 1)
    {
      *(k + 32) = 1;
    }
  }

  return this;
}

uint64_t std::optional<SDPMediaTTYSettings>::operator=[abi:ne200100]<SDPMediaTTYSettings,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 296) == 1)
  {
    SDPMediaSettings::operator=(a1, a2);
    v4 = *(a2 + 285);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 285) = v4;
  }

  else
  {
    SDPMediaSettings::SDPMediaSettings(a1, a2);
    *a1 = &unk_1F5EC4ED0;
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 292) = *(a2 + 292);
    *(a1 + 296) = 1;
  }

  return a1;
}

void SDPTTYBuilder::adjustModel(void *a1, void *a2, const SDPMediaAudioSettings *a3, uint64_t a4, uint64_t a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v10 = a2[1];
  v54 = *a2;
  v55 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__optional_copy_base<SDPMediaAudioSettings,false>::__optional_copy_base[abi:ne200100](v52, a3);
  std::__optional_copy_base<SDPMediaTTYSettings,false>::__optional_copy_base[abi:ne200100](v51, a4);
  SDPAudioBuilder::adjustModel(a1, &v54, v52, v51, a5);
  if (v51[296] == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(v51);
  }

  if (v53 == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v52);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (*(a4 + 296) == 1)
  {
    v12 = *(*a2 + 448);
    v11 = *(*a2 + 456);
    if (v12 != v11)
    {
      while (*(v12 + 12) != 4)
      {
        v12 += 200;
        if (v12 == v11)
        {
          return;
        }
      }

      if (*(a4 + 292))
      {
        v13 = *(a4 + 24);
      }

      else
      {
        v13 = 0;
      }

      SDPMedia::setPort(v12, v13);
      if (*(a4 + 28) != 255)
      {
        v34 = v12 + 40;
        std::__list_imp<SDPMediaFormatInfo>::clear((v12 + 40));
        v14 = *(a4 + 288);
        if (v14 != 255)
        {
          v67 = 1uLL;
          v79 = 0;
          v78 = 0u;
          v77 = 0u;
          v76 = 0u;
          *&v71 = 0x10000;
          v69 = 0xFFuLL;
          v65 = &unk_1F5EEA550;
          *&v66 = v14;
          v68 = 0uLL;
          *(&v66 + 1) = &unk_1F5EF7520;
          v70 = 0uLL;
          v72 = 1uLL;
          v73 = 0uLL;
          v74 = 0xFFuLL;
          *(&v71 + 1) = &unk_1F5EBF288;
          v75 = 0uLL;
          std::string::basic_string[abi:ne200100]<0>(__p, "red");
          SDPMediaRTPMap::SDPMediaRTPMap(&v56, v14, __p, 1000, 1);
          LOBYTE(v67) = v57;
          std::string::operator=((&v67 + 8), &v58);
          LOWORD(v69) = v59;
          std::string::operator=((&v69 + 8), &v62);
          LODWORD(v71) = v63;
          SDPMediaRTPMap::~SDPMediaRTPMap(&v56);
          if (v50 < 0)
          {
            operator delete(__p[0]);
          }

          v15 = *(a4 + 28);
          SDPMediaFormatParams::SDPMediaFormatParams(v40, *(a4 + 288));
          *v40 = &unk_1F5EF2518;
          v44 = v15;
          SDPMediaFormatParams::SDPMediaFormatParams(&v56, v43);
          v56 = &unk_1F5EF2518;
          v60 = v44;
          v64 = 5;
          SDPMediaFormatInfo::setSDPMediaFormatParams(&v65, &v56);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v56);
          *v40 = &unk_1F5EF5FB8;
          if (v42 < 0)
          {
            operator delete(v41);
          }

          std::__list_imp<SDPMediaFormatInfo>::__create_node[abi:ne200100]<SDPMediaFormatInfo const&>(v34, 0, 0, &v65);
        }

        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v79 = 0;
        v78 = 0u;
        v77 = 0u;
        v76 = 0u;
        v75 = 0u;
        v74 = 0u;
        v73 = 0u;
        v72 = 0u;
        v71 = 0u;
        v70 = 0u;
        v69 = 0u;
        v16 = *(a4 + 28);
        v65 = &unk_1F5EEA550;
        LOWORD(v66) = v16;
        LOBYTE(v67) = 1;
        *(&v67 + 1) = 0;
        v68 = 0uLL;
        *(&v66 + 1) = &unk_1F5EF7520;
        LOWORD(v69) = 255;
        v70 = 0uLL;
        *(&v69 + 1) = 0;
        LODWORD(v71) = 0x10000;
        v72 = 1uLL;
        v73 = 0uLL;
        v74 = 0xFFuLL;
        *(&v71 + 1) = &unk_1F5EBF288;
        v75 = 0uLL;
        std::string::basic_string[abi:ne200100]<0>(v47, "t140");
        SDPMediaRTPMap::SDPMediaRTPMap(&v56, v16, v47, 1000, 1);
        LOBYTE(v67) = v57;
        std::string::operator=((&v67 + 8), &v58);
        LOWORD(v69) = v59;
        std::string::operator=((&v69 + 8), &v62);
        LODWORD(v71) = v63;
        SDPMediaRTPMap::~SDPMediaRTPMap(&v56);
        if (v48 < 0)
        {
          operator delete(v47[0]);
        }

        v17 = *(a4 + 280);
        v18 = a1[4];
        SDPMediaFormatParams::SDPMediaFormatParams(v40, *(a4 + 28));
        *v40 = &unk_1F5EF24A0;
        v45 = v17;
        v46 = v18;
        SDPMediaFormatParams::SDPMediaFormatParams(&v56, v43);
        v56 = &unk_1F5EF24A0;
        v61 = v45;
        v62.__r_.__value_.__r.__words[0] = v46;
        v64 = 4;
        SDPMediaFormatInfo::setSDPMediaFormatParams(&v65, &v56);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v56);
        *v40 = &unk_1F5EF5FB8;
        if (v42 < 0)
        {
          operator delete(v41);
        }

        std::__list_imp<SDPMediaFormatInfo>::__create_node[abi:ne200100]<SDPMediaFormatInfo const&>(v34, 0, 0, &v65);
      }

      v19 = *a2;
      v20 = a2[1];
      v39[0] = v19;
      v39[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(a4 + 296) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (a1[4] <= *(a4 + 48))
      {
        v21 = *(a4 + 48);
      }

      else
      {
        v21 = a1[4];
      }

      SDPModelBuilder::setBandwidthSpecifiers(a1, v39, v12, a4, v21);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      v22 = v12 + 136;
      v23 = *(v12 + 144);
      if (v12 + 136 != v23)
      {
        v24 = *(v12 + 144);
        while (*(v24 + 136) != 4)
        {
          v24 = *(v24 + 8);
          if (v22 == v24)
          {
            goto LABEL_60;
          }
        }

        v25 = *(a4 + 40);
        if (!v25)
        {
          v26 = *(a4 + 36);
          if (v26 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v26;
          }

          v40[0] = v25;
          std::string::basic_string[abi:ne200100]<0>(&v65, "sdp");
          v35[0] = 0;
          v38 = 0;
          v27 = ims::warn(&v65, v35);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "The text direction was set to undefined, setting to ", 52);
          *(v27 + 17) = 0;
          ims::toString<MediaDirection>(v40, &v56);
          (*(*v27 + 32))(v27, &v56);
          (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v27 + 17) = 0;
          if (v58.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(v56);
          }

          if (v38 == 1 && v37 < 0)
          {
            operator delete(v36);
          }

          if (SHIBYTE(v66) < 0)
          {
            operator delete(v65);
          }

          v23 = *(v12 + 144);
        }

        while (1)
        {
          if (v22 == v23)
          {
            v28 = 0;
            goto LABEL_59;
          }

          if (*(v23 + 136) == 4)
          {
            break;
          }

          v23 = *(v23 + 8);
        }

        v28 = v23 + 16;
LABEL_59:
        *(v28 + 40) = SDPModelBuilder::getResponseDirection(a1, v25, a5);
      }

LABEL_60:
      if (*(a4 + 272) == 1)
      {
        SDPMedia::mediaCryptoList(&v65, v12);
        v29 = v66;
        if (v66 != &v65)
        {
          v30 = a3 + 192;
          if (!*(a3 + 272))
          {
            v30 = 0;
          }

          v31 = *(v30 + 20);
          do
          {
            v32 = *(v29 + 16);
            if (*(v32 + 40) == v31)
            {
              if (*(a4 + 272))
              {
                v33 = a4 + 192;
              }

              else
              {
                v33 = 0;
              }

              *(v32 + 73) = *(v33 + 73);
              *(v32 + 74) = *(v33 + 74);
            }

            v29 = *(v29 + 8);
          }

          while (v29 != &v65);
        }

        std::__list_imp<unsigned long long>::clear(&v65);
      }
    }
  }
}

void sub_1E50930D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a23 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  _Unwind_Resume(a1);
}

void std::vector<SDPMedia>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 25;
      v7 = v4 - 25;
      v8 = v4 - 25;
      do
      {
        v9 = *v8;
        v8 -= 25;
        (*v9)(v7);
        v6 -= 25;
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

uint64_t *std::vector<SDPMedia>::__init_with_size[abi:ne200100]<SDPMedia*,SDPMedia*>(uint64_t *result, SDPMedia *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SDPMedia>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E50933E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<SDPMedia>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<SDPMedia>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SDPMedia>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

SDPMedia *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SDPMedia>,SDPMedia*,SDPMedia*,SDPMedia*>(int a1, SDPMedia *a2, SDPMedia *a3, SDPMedia *this)
{
  v4 = this;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = this - 200;
    do
    {
      SDPMedia::SDPMedia(v4, v6);
      v6 = (v6 + 200);
      v4 = (v4 + 200);
      v7 -= 200;
      v8 += 200;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_1E50934C0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v5 = (v1 - 200);
    do
    {
      v6 = *v5;
      v5 -= 25;
      (*v6)();
      v3 -= 200;
      v2 += 200;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

double std::__optional_storage_base<SDPMediaTTYSettings,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SDPMediaTTYSettings,false>>(SDPMediaSettings *this, SDPMediaSettings *a2)
{
  if (*(this + 296) == *(a2 + 296))
  {
    if (*(this + 296))
    {
      SDPMediaSettings::operator=(this, a2);
      v5 = *(a2 + 285);
      *(this + 35) = *(a2 + 35);
      *(this + 285) = v5;
    }
  }

  else if (*(this + 296))
  {
    SDPMediaSettings::~SDPMediaSettings(this);
    *(this + 296) = 0;
  }

  else
  {
    SDPMediaSettings::SDPMediaSettings(this, a2);
    *this = &unk_1F5EC4ED0;
    result = *(a2 + 35);
    *(this + 35) = result;
    *(this + 72) = *(a2 + 72);
    *(this + 292) = *(a2 + 292);
    *(this + 296) = 1;
  }

  return result;
}

SDPMediaAudioSettings *std::__optional_copy_base<SDPMediaAudioSettings,false>::__optional_copy_base[abi:ne200100](SDPMediaAudioSettings *this, const SDPMediaAudioSettings *a2)
{
  *this = 0;
  *(this + 432) = 0;
  if (*(a2 + 432) == 1)
  {
    SDPMediaAudioSettings::SDPMediaAudioSettings(this, a2);
    *(this + 432) = 1;
  }

  return this;
}

void sub_1E509360C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 432) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v1);
  }

  _Unwind_Resume(exception_object);
}

SDPMediaSettings *std::__optional_copy_base<SDPMediaTTYSettings,false>::__optional_copy_base[abi:ne200100](SDPMediaSettings *this, uint64_t a2)
{
  *this = 0;
  *(this + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    SDPMediaSettings::SDPMediaSettings(this, a2);
    *this = &unk_1F5EC4ED0;
    *(this + 35) = *(a2 + 280);
    *(this + 72) = *(a2 + 288);
    *(this + 292) = *(a2 + 292);
    *(this + 296) = 1;
  }

  return this;
}

void sub_1E50936AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 296) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<SDPMediaAudioSettings,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SDPMediaAudioSettings,false>>(uint64_t a1, const SDPMediaAudioSettings *a2)
{
  if (*(a1 + 432) == *(a2 + 432))
  {
    if (*(a1 + 432))
    {

      SDPMediaAudioSettings::operator=(a1, a2);
    }
  }

  else if (*(a1 + 432))
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(a1);
    *(v2 + 432) = 0;
  }

  else
  {
    SDPMediaAudioSettings::SDPMediaAudioSettings(a1, a2);
    *(v3 + 432) = 1;
  }
}

uint64_t BambiDeregisterHandler::BambiDeregisterHandler(uint64_t a1, void *a2)
{
  *a1 = &unk_1F5EBEEC0;
  v4 = (a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(v22, "bambi.deregister");
  v5 = *a2;
  v18 = *(*a2 + 200);
  v19 = *(v5 + 208);
  if (*(v5 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v5 + 216), *(v5 + 224));
  }

  else
  {
    __p = *(v5 + 216);
  }

  v21 = *(v5 + 240);
  ims::getQueue(&v26);
  ClientConfig::getLogTag(&v24, &v18);
  if ((v23 & 0x80u) == 0)
  {
    v6 = v22;
  }

  else
  {
    v6 = v22[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v7 = v23;
  }

  else
  {
    v7 = v22[1];
  }

  v8 = std::string::insert(&v24, 0, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v11 = v26;
  *(a1 + 32) = v26;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 40) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 48), "com.apple.ipTelephony", p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  *v4 = &unk_1F5EEE548;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  *a1 = &unk_1F5EEE418;
  *(a1 + 8) = &unk_1F5EEE450;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 72));
  v13 = *a2;
  v12 = a2[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 64);
  *(a1 + 56) = v13;
  *(a1 + 64) = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  *(a1 + 200) = a1;
  std::string::basic_string[abi:ne200100]<0>(&__str, "bambi.deregister");
  v15 = *a2;
  std::string::operator=((a1 + 120), &__str);
  v16 = *(v15 + 200);
  *(a1 + 152) = *(v15 + 208);
  *(a1 + 144) = v16;
  std::string::operator=((a1 + 160), (v15 + 216));
  *(a1 + 184) = *(v15 + 240);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1E5093A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiDeregisterHandler::~BambiDeregisterHandler(BambiDeregisterHandler *this)
{
  *this = &unk_1F5EEE418;
  *(this + 1) = &unk_1F5EEE450;
  SipTimerContainer::~SipTimerContainer((this + 72));
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 48);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 2);
}

{
  BambiDeregisterHandler::~BambiDeregisterHandler(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiDeregisterHandler::~BambiDeregisterHandler(BambiDeregisterHandler *this)
{
  BambiDeregisterHandler::~BambiDeregisterHandler((this - 8));
}

{
  BambiDeregisterHandler::~BambiDeregisterHandler((this - 8));

  JUMPOUT(0x1E69235B0);
}

void BambiDeregisterHandler::handleUpdateRegistration(BambiDeregisterHandler *this)
{
  if (*(this + 60) == 1)
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "bambi");
    v4[0] = 0;
    v7 = 0;
    v3 = ims::debug(v2, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Resetting state due to registration update while SRVCC cleanup is pending", 73);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v7 == 1 && v6 < 0)
    {
      operator delete(__p);
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }

    *(this + 30) = 0;
  }

  else
  {

    BambiDeregisterHandler::stop(this);
  }
}

void sub_1E5093CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

const void **BambiDeregisterHandler::stop(BambiDeregisterHandler *this)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 10, "BambiDeregisterTimer");
  if (result)
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(&v13, "bambi");
    v9[0] = 0;
    v12 = 0;
    v4 = ims::debug(v3, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "stopping timer for ", 19);
    *(v4 + 17) = 0;
    v5 = *(this + 60) - 1;
    if (v5 > 2)
    {
      v6 = "Unknown";
    }

    else
    {
      v6 = off_1E876C2C0[v5];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v6);
    (*(*v4 + 32))(v4, __p);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    return SipTimerContainer::cancelTimer((this + 72), "BambiDeregisterTimer");
  }

  return result;
}

void sub_1E5093E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a25 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 17) < 0)
  {
    operator delete(*(v25 - 40));
  }

  _Unwind_Resume(exception_object);
}

void BambiDeregisterHandler::handleEndRegistration(BambiDeregisterHandler *this, int a2)
{
  if (a2)
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(v36, "bambi");
    v32[0] = 0;
    v35 = 0;
    v4 = ims::debug(v3, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "local deregistration requested", 30);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 10, "BambiDeregisterTimer"))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(v36, "bambi");
    v28[0] = 0;
    v31 = 0;
    v10 = ims::debug(v9, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "end registration requested, terminate immediately", 49);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    *(this + 61) = v5;
LABEL_24:
    BambiDeregisterHandler::performAction(this);
    return;
  }

  v6 = *(this + 60);
  if (v6 != 1)
  {
    if (v6 != 2)
    {
      return;
    }

    v7 = std::string::basic_string[abi:ne200100]<0>(v36, "bambi");
    v24[0] = 0;
    v27 = 0;
    v8 = ims::debug(v7, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "deregister requested during voice service fallback, dropping registration silently", 82);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v27 == 1 && v26 < 0)
    {
      operator delete(__p);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    *(this + 61) = 1;
    BambiDeregisterHandler::stop(this);
    goto LABEL_24;
  }

  if (*(this + 61))
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(v36, "bambi");
    v16[0] = 0;
    v19 = 0;
    v12 = ims::debug(v11, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "ignoring deregister, deregister already pending or registration state will be dropped silently", 94);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      v13 = v17;
LABEL_33:
      operator delete(v13);
    }
  }

  else
  {
    *(this + 61) = v5;
    v14 = std::string::basic_string[abi:ne200100]<0>(v36, "bambi");
    v20[0] = 0;
    v23 = 0;
    v15 = ims::debug(v14, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "deferring deregister request during SRVCC cleanup", 49);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      v13 = v21;
      goto LABEL_33;
    }
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_1E5094270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 33) < 0)
  {
    operator delete(*(v48 - 56));
  }

  _Unwind_Resume(exception_object);
}

void BambiDeregisterHandler::performAction(BambiDeregisterHandler *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 7);
      if (v5)
      {
        v6 = *(v5 + 248);
        v7 = *(v5 + 256);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v6)
          {
            v6 = *(v5 + 248);
            v8 = *(v5 + 256);
            if (v8)
            {
              atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            goto LABEL_10;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        else if (v6)
        {
          v8 = 0;
LABEL_10:
          v10 = *(v6 + 336);
          v9 = *(v6 + 344);
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          if (v10)
          {
            v11 = *(this + 61);
            if (v11 == 2)
            {
              v16 = std::string::basic_string[abi:ne200100]<0>(v36, "bambi");
              v26[0] = 0;
              v29 = 0;
              v17 = ims::debug(v16, v26);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "performing termination of registration due to ", 46);
              *(v17 + 17) = 0;
              v18 = *(this + 60) - 1;
              if (v18 > 2)
              {
                v19 = "Unknown";
              }

              else
              {
                v19 = off_1E876C2C0[v18];
              }

              std::string::basic_string[abi:ne200100]<0>(&v30, v19);
              LoggableString::LoggableString(&__p, &v30);
              (*(*v17 + 40))(v17, &__p);
              (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v17 + 17) = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v30.__r_.__value_.__l.__data_);
              }

              if (v29 == 1 && v28 < 0)
              {
                operator delete(v27);
              }

              if (v37 < 0)
              {
                operator delete(v36[0]);
              }

              SipStack::endRegistration(v5);
            }

            else if (v11 == 1)
            {
              v12 = std::string::basic_string[abi:ne200100]<0>(v36, "bambi");
              v32[0] = 0;
              v35 = 0;
              v13 = ims::debug(v12, v32);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "performing silent drop of registration due to ", 46);
              *(v13 + 17) = 0;
              v14 = *(this + 60) - 1;
              if (v14 > 2)
              {
                v15 = "Unknown";
              }

              else
              {
                v15 = off_1E876C2C0[v14];
              }

              std::string::basic_string[abi:ne200100]<0>(&v30, v15);
              LoggableString::LoggableString(&__p, &v30);
              (*(*v13 + 40))(v13, &__p);
              (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v13 + 17) = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v30.__r_.__value_.__l.__data_);
              }

              if (v35 == 1 && v34 < 0)
              {
                operator delete(v33);
              }

              if (v37 < 0)
              {
                operator delete(v36[0]);
              }

              v20 = *(this + 60) - 1;
              if (v20 > 2)
              {
                v21 = 3;
              }

              else
              {
                v21 = *&asc_1E517CFEC[4 * v20];
              }

              v22 = *(v5 + 248);
              v23 = *(v5 + 256);
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v24 = *(v22 + 336);
              v25 = *(v22 + 344);
              if (v25)
              {
                atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v24 + 176))(v24, v21, 0, 0);
              if (v25)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v25);
              }

              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }

              SipTransportLayer::removeConnections(*(v5 + 280), 0, 1, 1);
            }

            *(this + 30) = 0;
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void BambiDeregisterHandler::start(uint64_t a1, int a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 80), "BambiDeregisterTimer"))
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v39, "bambi");
    v27[0] = 0;
    v30 = 0;
    v7 = ims::debug(v6, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "timer already started with reason ", 34);
    *(v7 + 17) = 0;
    v8 = *(a1 + 240) - 1;
    if (v8 > 2)
    {
      v9 = "Unknown";
    }

    else
    {
      v9 = off_1E876C2C0[v8];
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v9);
    (*(*v7 + 32))(v7, &__p);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    return;
  }

  *(a1 + 240) = a2;
  *(a1 + 244) = 0;
  v10 = *(a1 + 64);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v11 = std::__shared_weak_count::lock(v10);
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = *(a1 + 56);
  if (!v12)
  {
    goto LABEL_24;
  }

  v14 = *(v12 + 248);
  v13 = *(v12 + 256);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a2 != 1 || !v14)
  {
LABEL_24:
    if (a3)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v15 = *(v12 + 248);
  v16 = *(v12 + 256);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 244) = *(SipUserAgent::config(v15) + 1121);
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_25:
    v17 = std::string::basic_string[abi:ne200100]<0>(v39, "bambi");
    v35[0] = 0;
    v38 = 0;
    v18 = ims::debug(v17, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "starting timer for ", 19);
    *(v18 + 17) = 0;
    v19 = *(a1 + 240) - 1;
    if (v19 > 2)
    {
      v20 = "Unknown";
    }

    else
    {
      v20 = off_1E876C2C0[v19];
    }

    std::string::basic_string[abi:ne200100]<0>(&v33, v20);
    LoggableString::LoggableString(&__p, &v33);
    (*(*v18 + 40))(v18, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " with action ", 13);
    *(v18 + 17) = 0;
    v21 = *(a1 + 244);
    v22 = "None";
    if (v21 == 2)
    {
      v22 = "Deregister";
    }

    if (v21 == 1)
    {
      v23 = "Drop";
    }

    else
    {
      v23 = v22;
    }

    std::string::basic_string[abi:ne200100]<0>(&v31, v23);
    LoggableString::LoggableString(&v32, &v31);
    (*(*v18 + 40))(v18, &v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " and timeout ", 13);
    *(v18 + 17) = 0;
    MEMORY[0x1E6923350](*(v18 + 8), a3);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    v24 = *(a1 + 24);
    if (v24)
    {
      v25 = std::__shared_weak_count::lock(v24);
      if (v25)
      {
        p_shared_weak_owners = &v25->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v41 = 0;
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *(a1 + 244) = *(SipUserAgent::config(v15) + 1121);
  if (a3)
  {
    goto LABEL_25;
  }

LABEL_13:
  *(a1 + 244) = 1;
  BambiDeregisterHandler::performAction(a1);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E5094D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  _Unwind_Resume(exception_object);
}

void BambiDeregisterHandler::handleTimer(BambiDeregisterHandler *this, uint64_t **a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (v2 == 20)
  {
    if (v3 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 4);
    if (v5 == 0x72654469626D6142 && v6 == 0x5472657473696765 && v7 == 1919249769)
    {
      BambiDeregisterHandler::performAction(this);
    }
  }
}

uint64_t ims::SharedLoggable<BambiDeregisterHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiDeregisterHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0,std::allocator<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEE570;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0,std::allocator<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEE570;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0,std::allocator<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EEE570;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0,std::allocator<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0,std::allocator<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0,std::allocator<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 32))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0,std::allocator<BambiDeregisterHandler::start(BambiDeregisterHandler::BambiDeregisterReason,unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void SipAuthInfoInterface::SipAuthInfoInterface(SipAuthInfoInterface *this, const ClientConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v8, "sip.auth.inf");
  v4 = *a2;
  v5 = *(a2 + 2);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    __p = *(a2 + 16);
  }

  v7 = *(a2 + 40);
  ims::SharedLoggable<SipAuthInfoInterface>::SharedLoggable(this, v8, &v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  *this = &unk_1F5EEE5F0;
}

void sub_1E50952F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 17) < 0)
  {
    operator delete(*(v17 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *ims::SharedLoggable<SipAuthInfoInterface>::SharedLoggable(void *a1, uint64_t a2, ClientConfig *a3)
{
  ims::getQueue(&v17);
  ClientConfig::getLogTag(&v14, a3);
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

  v9 = std::string::insert(&v14, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v16 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  a1[1] = 0;
  a1[2] = 0;
  v12 = v17;
  a1[3] = v17;
  if (v12)
  {
    dispatch_retain(v12);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 5), "com.apple.ipTelephony", v11);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *a1 = &unk_1F5EEE710;
  return a1;
}

void sub_1E5095440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v21 + 8));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    dispatch_release(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t ims::SharedLoggable<SipAuthInfoInterface>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipAuthInfoInterface>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPMediaAcceptWrappedTypes::SDPMediaAcceptWrappedTypes(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "accept-wrapped-types");
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p[0], __p[1]);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v6;
  }

  *a1 = &unk_1F5EEE738;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void sub_1E5095610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaAcceptWrappedTypes::SDPMediaAcceptWrappedTypes(SDPMediaAcceptWrappedTypes *this, const SDPMediaAcceptWrappedTypes *a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    __p = *(a2 + 16);
  }

  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 16) = __p;
  }

  *this = &unk_1F5EEE738;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
}

void sub_1E509574C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaAcceptWrappedTypes::~SDPMediaAcceptWrappedTypes(void **this)
{
  *this = &unk_1F5EEE738;
  v2 = this + 5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  SDPMediaAcceptWrappedTypes::~SDPMediaAcceptWrappedTypes(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPMediaAcceptWrappedTypes::value@<X0>(SDPMediaAcceptWrappedTypes *this@<X0>, _BYTE *a2@<X8>)
{
  v26 = 0;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  *__p = 0u;
  v23 = 0u;
  v20 = 0u;
  *__src = 0u;
  v18 = 0u;
  v19 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v4 = *(this + 6) - *(this + 5);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    v8 = v7 - 1;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    do
    {
      v10 = *(this + 5) + v5;
      v11 = *(v10 + 23);
      if (v11 >= 0)
      {
        v12 = *(this + 5) + v5;
      }

      else
      {
        v12 = *v10;
      }

      if (v11 >= 0)
      {
        v13 = *(v10 + 23);
      }

      else
      {
        v13 = *(v10 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v12, v13);
      if (v6 < v8)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " ", 1);
      }

      ++v6;
      v5 += 24;
    }

    while (v9 != v6);
  }

  if ((BYTE8(v24) & 0x10) != 0)
  {
    v15 = v24;
    if (v24 < __src[1])
    {
      *&v24 = __src[1];
      v15 = __src[1];
    }

    v16 = __src[0];
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v14 = 0;
      a2[23] = 0;
      goto LABEL_27;
    }

    v16 = *(&v19 + 1);
    v15 = *(&v20 + 1);
  }

  v14 = v15 - v16;
  if ((v15 - v16) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a2[23] = v14;
  if (v14)
  {
    memmove(a2, v16, v14);
  }

LABEL_27:
  a2[v14] = 0;
  *&v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v18 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v18 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v25);
}

void sub_1E5095AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a23);
  _Unwind_Resume(a1);
}

uint64_t SDPModel::SDPModel(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F5EC1DA0;
  *(a1 + 8) = 1;
  ims::getQueue(&object);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = object;
  *(a1 + 40) = object;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *(a1 + 48) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 56), "com.apple.ipTelephony", "sdp.model");
  if (v4)
  {
    dispatch_release(v4);
  }

  *a1 = &unk_1F5EEE8F8;
  *(a1 + 16) = &unk_1F5EEE928;
  v5 = *a2;
  v6 = *(*a2 + 64);
  *(a1 + 80) = 1;
  *(a1 + 64) = v6;
  *(a1 + 72) = &unk_1F5EF7868;
  *(a1 + 96) = 1;
  *(a1 + 88) = &unk_1F5ED8C78;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (*(v5 + 167) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 144), *(v5 + 144), *(v5 + 152));
  }

  else
  {
    v7 = *(v5 + 144);
    *(a1 + 160) = *(v5 + 160);
    *(a1 + 144) = v7;
  }

  *(a1 + 168) = *(v5 + 168);
  if (SDPConnection::valid((v5 + 88)))
  {
    SDPConnection::SDPConnection(&object, v5 + 88);
    *(a1 + 96) = v25[0];
    *(a1 + 100) = *&v25[4];
    std::string::operator=((a1 + 112), &__p);
    *(a1 + 136) = v27;
    object = &unk_1F5ED8C78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = *a2;
  if (*(*a2 + 207) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 184), *(v8 + 184), *(v8 + 192));
  }

  else
  {
    v9 = *(v8 + 184);
    *(a1 + 200) = *(v8 + 200);
    *(a1 + 184) = v9;
  }

  v10 = *a2;
  if (*(*a2 + 231) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 208), *(v10 + 208), *(v10 + 216));
  }

  else
  {
    v11 = *(v10 + 208);
    *(a1 + 224) = *(v10 + 224);
    *(a1 + 208) = v11;
  }

  v12 = *a2;
  if (*(*a2 + 255) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 232), *(v12 + 232), *(v12 + 240));
  }

  else
  {
    v13 = *(v12 + 232);
    *(a1 + 248) = *(v12 + 248);
    *(a1 + 232) = v13;
  }

  std::list<std::string>::list((a1 + 256), *a2 + 256);
  std::list<std::string>::list((a1 + 280), *a2 + 280);
  *(a1 + 304) = a1 + 304;
  *(a1 + 312) = a1 + 304;
  *(a1 + 320) = 0;
  *(a1 + 328) = a1 + 328;
  *(a1 + 336) = a1 + 328;
  *(a1 + 344) = 0;
  *(a1 + 352) = a1 + 352;
  *(a1 + 360) = a1 + 352;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = a1 + 424;
  *(a1 + 432) = a1 + 424;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  v14 = *a2;
  v15 = *(*a2 + 312);
  if (v15 != *a2 + 304)
  {
    std::__list_imp<SDPConnection>::__create_node[abi:ne200100]<SDPConnection const&>(a1 + 304, 0, 0, v15 + 16);
  }

  if (*(v14 + 336) != v14 + 328)
  {
    operator new();
  }

  if (*(v14 + 360) != v14 + 352)
  {
    operator new();
  }

  if (*(v14 + 416))
  {
    v25[0] = 1;
    object = &unk_1F5EF6688;
    std::list<std::pair<unsigned long long,long>>::list(&v25[8], v14 + 392);
    std::optional<SDPTimeZone>::operator=[abi:ne200100]<SDPTimeZone,void>(a1 + 376, &object);
    object = &unk_1F5EF6688;
    std::__list_imp<unsigned long long>::clear(&v25[8]);
    v14 = *a2;
  }

  v16 = v14 + 424;
  v17 = *(v14 + 432);
  if (v17 != v14 + 424)
  {
    do
    {
      object = a1;
      *v25 = a1;
      v18 = *(v17 + 136);
      if (v18 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      p_object = &object;
      (off_1F5EEE7B8[v18])(&p_object, v17 + 16);
      v17 = *(v17 + 8);
    }

    while (v17 != v16);
    v14 = *a2;
  }

  v19 = *(v14 + 448);
  v20 = *(v14 + 456);
  while (v19 != v20)
  {
    SDPMedia::SDPMedia(&object, v19, a1);
    v21 = *(a1 + 456);
    if (v21 >= *(a1 + 464))
    {
      v22 = std::vector<SDPMedia>::__emplace_back_slow_path<SDPMedia>(a1 + 448, &object);
    }

    else
    {
      SDPMedia::SDPMedia(*(a1 + 456), &object);
      v22 = v21 + 200;
      *(a1 + 456) = v21 + 200;
    }

    *(a1 + 456) = v22;
    SDPMedia::~SDPMedia(&object);
    v19 = (v19 + 200);
  }

  return a1;
}

void sub_1E5096094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 231) < 0)
  {
    operator delete(*(v22 + 208));
  }

  if (*(v22 + 207) < 0)
  {
    operator delete(*(v22 + 184));
  }

  SDPOrigin::~SDPOrigin(v23);
  MEMORY[0x1E69225A0](v22 + 56);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v24);
  _Unwind_Resume(a1);
}

void SDPModel::~SDPModel(SDPModel *this)
{
  *this = &unk_1F5EEE8F8;
  *(this + 2) = &unk_1F5EEE928;
  v2 = (this + 448);
  std::vector<SDPMedia>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::clear(this + 53);
  if (*(this + 416) == 1)
  {
    *(this + 47) = &unk_1F5EF6688;
    std::__list_imp<unsigned long long>::clear(this + 49);
  }

  std::__list_imp<SDPRepeatTime>::clear(this + 44);
  std::__list_imp<SDPRepeatTime>::clear(this + 41);
  std::__list_imp<SDPRepeatTime>::clear(this + 38);
  std::__list_imp<std::string>::clear(this + 35);
  std::__list_imp<std::string>::clear(this + 32);
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  SDPOrigin::~SDPOrigin(this + 9);
  MEMORY[0x1E69225A0](this + 56);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 3);
}

{
  SDPModel::~SDPModel(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSDPModel::~SDPModel(SDPModel *this)
{
  SDPModel::~SDPModel((this - 16));
}

{
  SDPModel::~SDPModel((this - 16));

  JUMPOUT(0x1E69235B0);
}

void SDPModel::toStream(SDPModel *this, ImsOutStream *a2)
{
  v4 = *(a2 + 1);
  __p.__r_.__value_.__s.__data_[0] = 118;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &__p, 1);
  *(a2 + 17) = 0;
  v5 = *(a2 + 1);
  __p.__r_.__value_.__s.__data_[0] = 61;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &__p, 1);
  *(a2 + 17) = 0;
  MEMORY[0x1E69233B0](*(a2 + 1), *(this + 8));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
  *(a2 + 17) = 0;
  if (SDPOrigin::valid((this + 72)))
  {
    SDPOrigin::toStream((this + 72), a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
  }

  v6 = *(a2 + 1);
  __p.__r_.__value_.__s.__data_[0] = 115;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &__p, 1);
  *(a2 + 17) = 0;
  v7 = *(a2 + 1);
  __p.__r_.__value_.__s.__data_[0] = 61;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &__p, 1);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, this + 184);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
  *(a2 + 17) = 0;
  if ((*(this + 231) & 0x80000000) == 0)
  {
    if (!*(this + 231))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(this + 27))
  {
LABEL_5:
    v8 = *(a2 + 1);
    __p.__r_.__value_.__s.__data_[0] = 105;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &__p, 1);
    *(a2 + 17) = 0;
    v9 = *(a2 + 1);
    __p.__r_.__value_.__s.__data_[0] = 61;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &__p, 1);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, this + 208);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
  }

LABEL_6:
  if ((*(this + 255) & 0x80000000) == 0)
  {
    if (!*(this + 255))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(this + 30))
  {
LABEL_8:
    v10 = *(a2 + 1);
    __p.__r_.__value_.__s.__data_[0] = 117;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &__p, 1);
    *(a2 + 17) = 0;
    v11 = *(a2 + 1);
    __p.__r_.__value_.__s.__data_[0] = 61;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &__p, 1);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, this + 232);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
  }

LABEL_9:
  for (i = *(this + 33); i != (this + 256); i = *(i + 8))
  {
    memset(&__p, 0, sizeof(__p));
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(i + 16), *(i + 24));
    }

    else
    {
      __p = *(i + 16);
    }

    v13 = *(a2 + 1);
    LOBYTE(p_p) = 101;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &p_p, 1);
    *(a2 + 17) = 0;
    v14 = *(a2 + 1);
    LOBYTE(p_p) = 61;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &p_p, 1);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  for (j = *(this + 36); j != (this + 280); j = *(j + 8))
  {
    memset(&__p, 0, sizeof(__p));
    if (*(j + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(j + 16), *(j + 24));
    }

    else
    {
      __p = *(j + 16);
    }

    v16 = *(a2 + 1);
    LOBYTE(p_p) = 112;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &p_p, 1);
    *(a2 + 17) = 0;
    v17 = *(a2 + 1);
    LOBYTE(p_p) = 61;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &p_p, 1);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  for (k = *(this + 39); k != (this + 304); k = *(v19 - 1))
  {
    v20 = k[2];
    v19 = k + 2;
    (*(v20 + 16))(v19, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
  }

  for (m = *(this + 42); m != (this + 328); m = m[1])
  {
    isHeld = SDPModel::isHeld(this);
    SDPBandwidth::toStream((m + 2), a2, isHeld);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
  }

  for (n = *(this + 45); n != (this + 352); n = *(v24 - 1))
  {
    v25 = n[2];
    v24 = n + 2;
    (*(v25 + 16))(v24, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
  }

  if (*(this + 416))
  {
    (*(*(this + 47) + 16))(this + 376, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
  }

  for (ii = *(this + 54); ii != (this + 424); ii = *(ii + 8))
  {
    __p.__r_.__value_.__r.__words[0] = a2;
    __p.__r_.__value_.__l.__size_ = a2;
    v27 = *(ii + 136);
    if (v27 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    p_p = &__p;
    (off_1F5EEE850[v27])(&p_p, ii + 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
  }

  v28 = *(this + 56);
  v29 = *(this + 57);
  if (v28 != v29)
  {
    v30 = *(this + 56);
    v31 = v30;
    do
    {
      v32 = *v31;
      v31 += 25;
      (*(v32 + 16))(v30, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
      *(a2 + 17) = 0;
      v28 += 25;
      v30 = v31;
    }

    while (v31 != v29);
  }
}

void sub_1E5096A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SDPModel::isHeld(SDPModel *this)
{
  v1 = *(this + 54);
  if (v1 == (this + 424))
  {
    goto LABEL_9;
  }

  v2 = *(this + 54);
  while (*(v2 + 136) != 4)
  {
    v2 = *(v2 + 8);
    if (v2 == (this + 424))
    {
      goto LABEL_9;
    }
  }

  while (*(v1 + 136) != 4)
  {
    v1 = *(v1 + 8);
  }

  if (*(v1 + 56) != 1)
  {
    return 1;
  }

LABEL_9:
  for (i = *(this + 56); ; i += 200)
  {
    if (i == *(this + 57))
    {
      return 0;
    }

    if (*(i + 12) == 2)
    {
      v4 = *(i + 144);
      if (v4 != i + 136)
      {
        break;
      }
    }

LABEL_16:
    ;
  }

  v5 = *(i + 144);
  while (*(v5 + 136) != 4)
  {
    v5 = *(v5 + 8);
    if (v5 == i + 136)
    {
      goto LABEL_16;
    }
  }

  while (*(v4 + 136) != 4)
  {
    v4 = *(v4 + 8);
  }

  return *(v4 + 56) != 1;
}

BOOL SDPModel::valid(SDPModel *this)
{
  v2 = this + 304;
  for (i = *(this + 39); i != v2; i = *(i + 8))
  {
    if (((*(*(i + 16) + 24))() & 1) == 0)
    {
      v10 = std::string::basic_string[abi:ne200100]<0>(v41, "sdp.model");
      v37[0] = 0;
      v40 = 0;
      v11 = ims::error(v10, v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "SDPModel::valid() Invalid connection", 36);
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v40 == 1 && v39 < 0)
      {
        v12 = v38;
LABEL_38:
        operator delete(v12);
      }

LABEL_39:
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }

      return 0;
    }
  }

  for (j = *(this + 42); j != (this + 328); j = j[1])
  {
    if (((*(j[2] + 24))() & 1) == 0)
    {
      v13 = std::string::basic_string[abi:ne200100]<0>(v41, "sdp.model");
      v33[0] = 0;
      v36 = 0;
      v14 = ims::error(v13, v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "SDPModel::valid() Invalid bandwidth", 35);
      *(v14 + 17) = 0;
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v36 == 1 && v35 < 0)
      {
        v12 = v34;
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  for (k = *(this + 45); k != (this + 352); k = k[1])
  {
    if (((*(k[2] + 24))() & 1) == 0)
    {
      v15 = std::string::basic_string[abi:ne200100]<0>(v41, "sdp.model");
      v29[0] = 0;
      v32 = 0;
      v16 = ims::error(v15, v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "SDPModel::valid() Invalid timing", 32);
      *(v16 + 17) = 0;
      (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v16 + 17) = 0;
      if (v32 == 1 && v31 < 0)
      {
        v12 = v30;
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  if (*(this + 416) == 1 && ((*(*(this + 47) + 24))() & 1) == 0)
  {
    v17 = std::string::basic_string[abi:ne200100]<0>(v41, "sdp.model");
    v25[0] = 0;
    v28 = 0;
    v18 = ims::error(v17, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SDPModel::valid() Invalid timezone", 34);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      v12 = v26;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v6 = *(this + 56);
  v7 = *(this + 57);
  if (v6 != v7)
  {
    v8 = *(this + 56);
    while (((*(*v8 + 24))(v8) & 1) != 0)
    {
      v8 += 200;
      v6 += 200;
      if (v8 == v7)
      {
        goto LABEL_19;
      }
    }

    v19 = std::string::basic_string[abi:ne200100]<0>(v41, "sdp.model");
    v21[0] = 0;
    v24 = 0;
    v20 = ims::error(v19, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "SDPModel::valid() Invalid media", 31);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      v12 = __p;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

LABEL_19:
  if (*(this + 8) != 1 || *(this + 8))
  {
    return 0;
  }

  result = SDPOrigin::valid((this + 72));
  if (result)
  {
    return !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(this + 23, "");
  }

  return result;
}

void sub_1E5097018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 49) < 0)
  {
    operator delete(*(v48 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPModel::preferredDirection(void *a1, int a2, int a3)
{
  if (a3)
  {
    v3 = a1[54];
    if (v3 == a1 + 53)
    {
LABEL_6:
      v5 = 0;
    }

    else
    {
      v4 = a1[54];
      while (*(v4 + 136) != 4)
      {
        v4 = *(v4 + 8);
        if (v4 == a1 + 53)
        {
          goto LABEL_6;
        }
      }

      while (*(v3 + 136) != 4)
      {
        v3 = *(v3 + 8);
      }

      v5 = *(v3 + 56);
    }

    for (i = a1[56]; ; i += 200)
    {
      if (i == a1[57])
      {
        if (v5 <= 1)
        {
          return 1;
        }

        else
        {
          return v5;
        }
      }

      if (*(i + 12) == a2)
      {
        v7 = *(i + 144);
        if (v7 != i + 136)
        {
          v8 = *(i + 144);
          while (*(v8 + 136) != 4)
          {
            v8 = *(v8 + 8);
            if (v8 == i + 136)
            {
              goto LABEL_26;
            }
          }

          if (*(v7 + 136) == 4)
          {
            if (*(v7 + 56) > v5)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v9 = *(i + 144);
            do
            {
              v9 = *(v9 + 8);
            }

            while (*(v9 + 136) != 4);
            if (*(v9 + 56) > v5)
            {
              do
              {
                v7 = *(v7 + 8);
              }

              while (*(v7 + 136) != 4);
LABEL_25:
              v5 = *(v7 + 56);
              continue;
            }
          }
        }
      }

LABEL_26:
      ;
    }
  }

  for (j = a1[56]; j != a1[57]; j += 200)
  {
    if (*(j + 12) == a2)
    {
      v11 = *(j + 144);
      if (v11 != j + 136)
      {
        v12 = *(j + 144);
        while (*(v12 + 136) != 4)
        {
          v12 = *(v12 + 8);
          if (v12 == j + 136)
          {
            goto LABEL_34;
          }
        }

        while (*(v11 + 136) != 4)
        {
          v11 = *(v11 + 8);
        }

        return *(v11 + 56);
      }
    }

LABEL_34:
    ;
  }

  v14 = a1[54];
  if (v14 == a1 + 53)
  {
    return 1;
  }

  v15 = a1[54];
  while (*(v15 + 136) != 4)
  {
    v15 = *(v15 + 8);
    if (v15 == a1 + 53)
    {
      return 1;
    }
  }

  while (*(v14 + 136) != 4)
  {
    v14 = *(v14 + 8);
  }

  return *(v14 + 56);
}

void *SDPModel::hold(void *this)
{
  v1 = this + 53;
  v2 = this[54];
  if (v2 != this + 53)
  {
    v3 = this[54];
    while (*(v3 + 136) != 4)
    {
      v3 = *(v3 + 8);
      if (v3 == v1)
      {
        goto LABEL_17;
      }
    }

    v4 = this[54];
    while (*(v4 + 136) != 4)
    {
      v4 = *(v4 + 8);
      if (v4 == v1)
      {
        v5 = 0;
        goto LABEL_12;
      }
    }

    v5 = v4 + 16;
LABEL_12:
    while (*(v2 + 136) != 4)
    {
      v2 = *(v2 + 8);
    }

    if (((*(v2 + 56) - 2) & 0xFFFFFFFD) != 0)
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    *(v5 + 40) = v6;
  }

LABEL_17:
  for (i = this[42]; i != this + 41; i = *(i + 8))
  {
    if ((*(i + 28) - 3) <= 1)
    {
      *(i + 32) = 1;
    }
  }

  v8 = this[56];
  for (j = this[57]; v8 != j; v8 += 200)
  {
    v10 = *(v8 + 12);
    if (v10 == 2)
    {
      v14 = v8 + 136;
      v15 = *(v8 + 144);
      if (v15 != v8 + 136)
      {
        v16 = *(v8 + 144);
        while (*(v16 + 136) != 4)
        {
          v16 = *(v16 + 8);
          if (v16 == v14)
          {
            goto LABEL_58;
          }
        }

        v19 = *(v8 + 144);
        while (*(v19 + 136) != 4)
        {
          v19 = *(v19 + 8);
          if (v19 == v14)
          {
            v20 = 0;
            goto LABEL_53;
          }
        }

        v20 = v19 + 16;
LABEL_53:
        while (*(v15 + 136) != 4)
        {
          v15 = *(v15 + 8);
        }

        if (((*(v15 + 56) - 2) & 0xFFFFFFFD) != 0)
        {
          v22 = 3;
        }

        else
        {
          v22 = 4;
        }

        *(v20 + 40) = v22;
      }

LABEL_58:
      for (k = *(v8 + 120); k != v8 + 112; k = *(k + 8))
      {
        if ((*(k + 28) - 3) <= 1)
        {
          *(k + 32) = 1;
        }
      }
    }

    else if (v10 == 4)
    {
      v11 = v8 + 136;
      v12 = *(v8 + 144);
      if (v12 != v8 + 136)
      {
        v13 = *(v8 + 144);
        while (*(v13 + 136) != 4)
        {
          v13 = *(v13 + 8);
          if (v13 == v11)
          {
            goto LABEL_49;
          }
        }

        v17 = *(v8 + 144);
        while (*(v17 + 136) != 4)
        {
          v17 = *(v17 + 8);
          if (v17 == v11)
          {
            v18 = 0;
            goto LABEL_44;
          }
        }

        v18 = v17 + 16;
LABEL_44:
        while (*(v12 + 136) != 4)
        {
          v12 = *(v12 + 8);
        }

        if (((*(v12 + 56) - 2) & 0xFFFFFFFD) != 0)
        {
          v21 = 3;
        }

        else
        {
          v21 = 4;
        }

        *(v18 + 40) = v21;
      }
    }

LABEL_49:
    ;
  }

  return this;
}

void *SDPModel::resumeAllStreams(void *this, char a2)
{
  v2 = this + 53;
  v3 = this[54];
  if (v3 == this + 53)
  {
    goto LABEL_18;
  }

  v4 = this[54];
  while (*(v4 + 136) != 4)
  {
    v4 = *(v4 + 8);
    if (v4 == v2)
    {
      goto LABEL_18;
    }
  }

  v5 = this[54];
  do
  {
    if (*(v5 + 136) == 4)
    {
      v6 = v5 + 16;
      if ((a2 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_13:
      v7 = 1;
      goto LABEL_17;
    }

    v5 = *(v5 + 8);
  }

  while (v5 != v2);
  v6 = 0;
  if (a2)
  {
    goto LABEL_13;
  }

LABEL_10:
  while (*(v3 + 136) != 4)
  {
    v3 = *(v3 + 8);
  }

  if (*(v3 + 56) == 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

LABEL_17:
  *(v6 + 40) = v7;
LABEL_18:
  v8 = this[56];
  v9 = this[57];
  if (v8 == v9)
  {
    return this;
  }

  do
  {
    v10 = v8 + 136;
    v11 = *(v8 + 144);
    if (v11 == v8 + 136)
    {
      goto LABEL_36;
    }

    v12 = *(v8 + 144);
    while (*(v12 + 136) != 4)
    {
      v12 = *(v12 + 8);
      if (v12 == v10)
      {
        goto LABEL_36;
      }
    }

    v13 = *(v8 + 144);
    do
    {
      if (*(v13 + 136) == 4)
      {
        v14 = v13 + 16;
        if ((a2 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        v15 = 1;
        goto LABEL_35;
      }

      v13 = *(v13 + 8);
    }

    while (v13 != v10);
    v14 = 0;
    if (a2)
    {
      goto LABEL_31;
    }

LABEL_28:
    while (*(v11 + 136) != 4)
    {
      v11 = *(v11 + 8);
    }

    if (*(v11 + 56) == 4)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

LABEL_35:
    *(v14 + 40) = v15;
LABEL_36:
    v8 += 200;
  }

  while (v8 != v9);
  return this;
}

void *SDPModel::setDirectionForSessionAndMedia(void *result, int a2)
{
  v2 = result[54];
  if (v2 != result + 53)
  {
    v3 = result[54];
    while (*(v3 + 136) != 4)
    {
      v3 = *(v3 + 8);
      if (v3 == result + 53)
      {
        goto LABEL_9;
      }
    }

    while (*(v2 + 136) != 4)
    {
      v2 = *(v2 + 8);
    }

    *(v2 + 56) = a2;
  }

LABEL_9:
  v4 = result[56];
  v5 = result[57];
  while (v4 != v5)
  {
    v6 = *(v4 + 144);
    if (v6 != v4 + 136)
    {
      v7 = *(v4 + 144);
      while (*(v7 + 136) != 4)
      {
        v7 = *(v7 + 8);
        if (v7 == v4 + 136)
        {
          goto LABEL_19;
        }
      }

      while (*(v6 + 136) != 4)
      {
        v6 = *(v6 + 8);
      }

      *(v6 + 56) = a2;
    }

LABEL_19:
    v4 += 200;
  }

  return result;
}

uint64_t SDPModel::updateWithLocalAddressAndUsername(std::string *a1, IpAddress **a2, const std::string *a3)
{
  result = SDPOrigin::valid(&a1[3]);
  if (result)
  {
    result = (*(a1[3].__r_.__value_.__r.__words[2] + 24))(&a1[3].__r_.__value_.__r.__words[2]);
    if (result)
    {
      std::string::operator=(a1 + 6, a3);
      memset(&__str, 0, sizeof(__str));
      IpAddress::asString(&__str, *a2, 0);
    }
  }

  return result;
}

void sub_1E50977B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPModel::removeTextSession(SDPModel *this)
{
  std::string::basic_string[abi:ne200100]<0>(v17, "sdp");
  v13[0] = 0;
  v16 = 0;
  v2 = ims::debug(v17, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "SDPModel::removeTextSession", 27);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v3 = *(this + 56);
  v4 = *(this + 57);
  if (v4 != v3)
  {
    v5 = 0x8F5C28F5C28F5C29 * ((v4 - v3) >> 3);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    while (*(v3 + 12) != 4)
    {
      v3 += 200;
      if (!--v5)
      {
        return;
      }
    }

    if (v3 + 200 != v4)
    {
      do
      {
        v6 = v3 + 200;
        SDPMedia::operator=(v3, v3 + 200);
        v7 = v3 + 400;
        v3 += 200;
      }

      while (v7 != v4);
      v4 = *(this + 57);
      v3 = v6;
    }

    if (v4 != v3)
    {
      v8 = (v4 - 200);
      v9 = v8;
      v10 = v8;
      do
      {
        v11 = *v10;
        v10 -= 25;
        (*v11)(v9);
        v8 -= 25;
        v12 = v9 == v3;
        v9 = v10;
      }

      while (!v12);
    }

    *(this + 57) = v3;
  }
}

void sub_1E5097984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void *SDPModel::setMasterKeyAndSalt(void *result, int a2, char **a3)
{
  v3 = result[56];
  for (i = result[57]; v3 != i; v3 += 200)
  {
    if (*(v3 + 12) == a2)
    {
      SDPMedia::mediaCryptoList(v9, v3);
      for (j = v9[1]; j != v9; j = j[1])
      {
        v8 = (j[2] + 48);
        if (v8 != a3)
        {
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8, *a3, a3[1], a3[1] - *a3);
        }
      }

      result = std::__list_imp<unsigned long long>::clear(v9);
    }
  }

  return result;
}

void sub_1E5097A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<unsigned long long>::clear(va);
  _Unwind_Resume(a1);
}

BOOL SDPModel::hasPreconditions(SDPModel *this)
{
  for (i = *(this + 56); ; i += 200)
  {
    if (i == *(this + 57))
    {
      return 0;
    }

    if (*(i + 12) == 2)
    {
      break;
    }
  }

  v3 = *(i + 160);
  v2 = *(i + 168);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = v3 + 20;
  do
  {
    v5 = *(v4 - 4);
    result = v5 > 0;
    v7 = v5 > 0 || v4 == v2;
    v4 += 20;
  }

  while (!v7);
  return result;
}

BOOL SDPModel::containsPreconditions(uint64_t a1, int a2, int a3)
{
  for (i = *(a1 + 448); ; i += 200)
  {
    if (i == *(a1 + 456))
    {
      return 0;
    }

    if (*(i + 12) == 2)
    {
      break;
    }
  }

  v5 = *(i + 160);
  v4 = *(i + 168);
  if (v5 == v4)
  {
    return 0;
  }

  v6 = v5 + 20;
  do
  {
    v7 = *(v6 - 12) != a2 || *(v6 - 4) < a3;
    result = !v7;
    if (!v7)
    {
      break;
    }

    v9 = v6 == v4;
    v6 += 20;
  }

  while (!v9);
  return result;
}

uint64_t SDPModel::setPrecondition(uint64_t result, int a2, int a3, int a4, int a5, int a6)
{
  v7 = *(result + 448);
  v6 = *(result + 456);
  if (v7 != v6)
  {
    while (*(v7 + 12) != 2)
    {
      v7 += 200;
      if (v7 == v6)
      {
        return result;
      }
    }

    v12 = 0x100000001;
    v13 = a3;
    v14 = a2;
    v15 = a4;
    v16 = 1;
    SDPPreconditionTable::processPrecondition((v7 + 160), &v12);
    v12 = 0x100000000;
    v13 = 0;
    v14 = a2;
    v15 = a5;
    v16 = 1;
    result = SDPPreconditionTable::processPrecondition((v7 + 160), &v12);
    if (a6)
    {
      v12 = 0x100000002;
      v13 = 0;
      v14 = a2;
      v15 = a4;
      v16 = 1;
      return SDPPreconditionTable::processPrecondition((v7 + 160), &v12);
    }
  }

  return result;
}

uint64_t SDPModel::setDesiredPrecondition(uint64_t result, int a2, int a3, int a4)
{
  v5 = *(result + 448);
  v4 = *(result + 456);
  if (v5 != v4)
  {
    while (*(v5 + 12) != 2)
    {
      v5 += 200;
      if (v5 == v4)
      {
        return result;
      }
    }

    if (a3 == 4)
    {
      SDPMedia::setPort(v5, 0);
    }

    v9 = 0x100000001;
    v10 = a3;
    v11 = a2;
    v12 = a4;
    v13 = 1;
    return SDPPreconditionTable::processPrecondition((v5 + 160), &v9);
  }

  return result;
}

uint64_t SDPModel::transactionPreconditionTable(SDPModel *this, void **a2)
{
  v3 = *(this + 56);
  v2 = *(this + 57);
  if (v3 == v2)
  {
    return 0;
  }

  for (i = v3 + 20; *(i - 37) != 2; i += 25)
  {
    v5 = i + 5;
    if (v5 == v2)
    {
      return 0;
    }
  }

  if (i != a2)
  {
    std::vector<SDPPreconditionRow>::__assign_with_size[abi:ne200100]<SDPPreconditionRow*,SDPPreconditionRow*>(a2, *i, i[1], 0xCCCCCCCCCCCCCCCDLL * ((i[1] - *i) >> 2));
  }

  return 1;
}

void SDPModel::addSDPConnection(SDPModel *this, const SDPConnection *a2)
{
  v2 = this + 304;
  SDPConnection::SDPConnection(v3, a2);
  std::__list_imp<SDPConnection>::__create_node[abi:ne200100]<SDPConnection>(v2, 0, 0, v3);
}

void sub_1E5097DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPModel::validConnection(uint64_t *__return_ptr a1@<X8>, SDPModel *this@<X0>)
{
  v3 = this + 304;
  for (i = *(this + 39); i != v3; i = *(i + 8))
  {
    if ((*(*(i + 16) + 24))(i + 16))
    {
      SDPConnection::SDPConnection(a1, i + 16);
      *(a1 + 56) = 1;
      return;
    }
  }

  v6 = 0u;
  LOBYTE(v6) = 1;
  v5 = &unk_1F5ED8C78;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0uLL;
  SDPConnection::SDPConnection(a1, &v5);
  *(a1 + 56) = 0;
  v5 = &unk_1F5ED8C78;
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E5097EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPModel::setConnectionAddress(void *a1, std::string *__str, uint64_t a3)
{
  v6 = a1 + 38;
  for (i = a1[39]; i != v6; i = *(i + 8))
  {
    std::string::operator=((i + 40), __str);
    SDPConnection::setAddressTypeFromString((i + 16), a3);
  }

  v8 = a1[56];
  v9 = a1[57];
  while (v8 != v9)
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__stra, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      __stra = *__str;
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    SDPMedia::setConnectionAddress(v8, &__stra, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__stra.__r_.__value_.__l.__data_);
    }

    v8 += 25;
  }
}

void sub_1E5098014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPModel::setConnectionAddress(void *a1, std::string *__str, int a3)
{
  v6 = a1 + 38;
  for (i = a1[39]; i != v6; i = *(i + 8))
  {
    std::string::operator=((i + 40), __str);
    *(i + 32) = a3;
  }

  v9 = a1[56];
  v8 = a1[57];
  while (v9 != v8)
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      __p = *__str;
    }

    for (j = *(v9 + 96); j != v9 + 88; j = *(j + 8))
    {
      std::string::operator=((j + 40), &__p);
      *(j + 32) = a3;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 += 200;
  }
}

void sub_1E5098124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPModel::validateRemoteAddress(uint64_t a1, const void **a2)
{
  v2 = a1 + 304;
  v3 = *(a1 + 312);
  if (v3 == a1 + 304)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = (v3 + 40);
    v8 = *(v3 + 63);
    v9 = v8;
    v10 = (v3 + 40);
    if (v8 < 0)
    {
      v10 = *(v3 + 40);
      v9 = *(v3 + 48);
    }

    v11 = (v5 >= v9 ? v9 : v5);
    v12 = memcmp(v10, v6, v11);
    if (v5 != v9 || v12 != 0)
    {
      break;
    }

LABEL_27:
    v3 = *(v3 + 8);
    if (v3 == v2)
    {
      return 0;
    }
  }

  if ((v8 & 0x80000000) != 0)
  {
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
  }

  if (v8 >= 8)
  {
    v14 = &v7[v8];
    v15 = v7;
    do
    {
      v16 = memchr(v15, 46, v8 - 7);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (*v16 == 0x64696C61766E692ELL)
      {
        result = 1;
        if (v17 == v14 || v17 - v7 == -1)
        {
          return result;
        }

        goto LABEL_27;
      }

      v15 = v16 + 1;
      v8 = v14 - (v17 + 1);
    }

    while (v8 >= 8);
  }

  return 1;
}

void sub_1E50983A0(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPModel::SDPModel(std::shared_ptr<SDPModel>)::$_0,SDPModel::(std::shared_ptr<SDPModel>)::$_1,SDPModel::(std::shared_ptr<SDPModel>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> &>(uint64_t a1, const SDPMediaEndToAccessEdgeProtection *a2)
{
  SDPMediaEndToAccessEdgeProtection::SDPMediaEndToAccessEdgeProtection(v2, a2);
  v2[0] = &unk_1F5EF5FB8;
  if (v3 < 0)
  {
    operator delete(v2[2]);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPModel::SDPModel(std::shared_ptr<SDPModel>)::$_0,SDPModel::(std::shared_ptr<SDPModel>)::$_1,SDPModel::(std::shared_ptr<SDPModel>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> &>(uint64_t a1, const SDPMediaFormatAMRParams *a2)
{
  SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(v2, a2);
  v2[0] = &unk_1F5EF5FB8;
  if (v3 < 0)
  {
    operator delete(v2[2]);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPModel::SDPModel(std::shared_ptr<SDPModel>)::$_0,SDPModel::(std::shared_ptr<SDPModel>)::$_1,SDPModel::(std::shared_ptr<SDPModel>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> &>(uint64_t a1, const SDPMediaFormatEVSParams *a2)
{
  SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(v2, a2);
  v2[0] = &unk_1F5EF5FB8;
  if (v3 < 0)
  {
    operator delete(v2[2]);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPModel::SDPModel(std::shared_ptr<SDPModel>)::$_0,SDPModel::(std::shared_ptr<SDPModel>)::$_1,SDPModel::(std::shared_ptr<SDPModel>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> &>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    __p = *(a2 + 16);
  }

  v4 = *(a2 + 40);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPModel::SDPModel(std::shared_ptr<SDPModel>)::$_0,SDPModel::(std::shared_ptr<SDPModel>)::$_1,SDPModel::(std::shared_ptr<SDPModel>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> &>(uint64_t a1, uint64_t a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(v3, *(a2 + 40));
  v5 = *(a2 + 44);
  v6 = *(a2 + 48);
  v3[0] = &unk_1F5EF5FB8;
  if (v4 < 0)
  {
    operator delete(v3[2]);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPModel::SDPModel(std::shared_ptr<SDPModel>)::$_0,SDPModel::(std::shared_ptr<SDPModel>)::$_1,SDPModel::(std::shared_ptr<SDPModel>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> &>(uint64_t a1, uint64_t a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(v3, *(a2 + 40));
  v5 = *(a2 + 42);
  v3[0] = &unk_1F5EF5FB8;
  if (v4 < 0)
  {
    operator delete(v3[2]);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPModel::SDPModel(std::shared_ptr<SDPModel>)::$_0,SDPModel::(std::shared_ptr<SDPModel>)::$_1,SDPModel::(std::shared_ptr<SDPModel>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> &>(uint64_t a1, const SDPPacketizationTimeAttribute *a2)
{
  SDPPacketizationTimeAttribute::SDPPacketizationTimeAttribute(v2, a2);
  v2[0] = &unk_1F5EF5FB8;
  if (v3 < 0)
  {
    operator delete(v2[2]);
  }
}

uint64_t *std::list<std::string>::list(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(a1, 0, 0, v2 + 16);
  }

  return a1;
}

uint64_t IPTelephonyPrefs::getBoolValueFromRuntimeConfig(uint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  cf = 0;
  TypeID = CFBooleanGetTypeID();
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v6, v7, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v40 = v8;
  if (!v8)
  {
    v16 = std::string::basic_string[abi:ne200100]<0>(v38, "prefs");
    LOBYTE(v34[0]) = 0;
    v37 = 0;
    v17 = ims::debug(v16, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Failed to create CF reference for key: ", 39);
    *(v17 + 17) = 0;
    (*(*v17 + 32))(v17, a1);
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v37 == 1 && v36 < 0)
    {
      v18 = v35;
LABEL_20:
      operator delete(v18);
    }

LABEL_21:
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    goto LABEL_23;
  }

  v9 = CFPreferencesCopyValue(v8, @"com.apple.ipTelephony", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v10 = cf;
  cf = v9;
  v38[0] = v10;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(v38);
  if (!cf)
  {
LABEL_23:
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v40);
    goto LABEL_24;
  }

  if (CFGetTypeID(cf) != TypeID)
  {
    v19 = std::string::basic_string[abi:ne200100]<0>(v38, "prefs");
    v30[0] = 0;
    v33 = 0;
    v20 = ims::debug(v19, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Value for key ", 15);
    *(v20 + 17) = 0;
    (*(*v20 + 32))(v20, a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " (type ", 8);
    *(v20 + 17) = 0;
    v21 = CFGetTypeID(cf);
    MEMORY[0x1E6923370](*(v20 + 8), v21);
    *(v20 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), ") is not of the expected type (type ", 36);
    *(v20 + 17) = 0;
    MEMORY[0x1E6923370](*(v20 + 8), TypeID);
    *(v20 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), ")", 1);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      v18 = __p;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v40);
  std::string::basic_string[abi:ne200100]<0>(v34, "prefs");
  v25[0] = 0;
  v28 = 0;
  v11 = ims::debug(v34, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Key found in prefs file: ", 25);
  *(v11 + 17) = 0;
  (*(*v11 + 32))(v11, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " with value: ", 13);
  *(v11 + 17) = 0;
  v12 = cf;
  v30[0] = 0;
  if (cf && (v13 = CFGetTypeID(cf), v13 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(v30, v12, v14);
    v15 = v30[0];
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1E6923320](*(v11 + 8), v15 & 1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  v2 = cf;
  LOBYTE(v34[0]) = 0;
  if (cf)
  {
    v23 = CFGetTypeID(cf);
    if (v23 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(v34, v2, v24);
      LOBYTE(v2) = v34[0];
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

LABEL_24:
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  return v2 & 1;
}

void IPTelephonyPrefs::setBoolValueInRuntimeConfig(uint64_t a1, int a2)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    v8 = *MEMORY[0x1E695E8B8];
    v9 = *MEMORY[0x1E695E898];
    CFPreferencesSetValue(v5, *v7, @"com.apple.ipTelephony", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    CFPreferencesSynchronize(@"com.apple.ipTelephony", v8, v9);

    CFRelease(v6);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "prefs");
    v11[0] = 0;
    v14 = 0;
    v10 = ims::debug(v15, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Failed to create CF reference for key: ", 39);
    *(v10 + 17) = 0;
    (*(*v10 + 32))(v10, a1);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v14 == 1 && v13 < 0)
    {
      operator delete(__p);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }
}

void sub_1E509949C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void SDPTTYSettingsBuilder::createTTYSettingsForOffer(uint64_t a1@<X0>, SDPModel **a2@<X1>, SDPMedia *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v5 = *(a1 + 16);
  v8[0] = *(a1 + 8);
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a2[1];
  v7[0] = *a2;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  SDPTTYSettingsBuilder::createTTYSettings(a1, v8, v7, a3, a4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a4 + 296) == 1)
  {
    *(a4 + 28) = *(a4 + 30);
    *(a4 + 288) = *(a4 + 290);
  }
}

void sub_1E5099610(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SDPTTYSettingsBuilder::createTTYSettings(uint64_t a1@<X0>, uint64_t a2@<X1>, SDPModel **a3@<X2>, SDPMedia *a4@<X3>, SDPMediaSettings *a5@<X8>)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x15802000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  for (i = *(*a2 + 448); i != *(*a2 + 456); i = (i + 200))
  {
    if (*(i + 3) == 4)
    {
      goto LABEL_6;
    }
  }

  i = 0;
LABEL_6:
  v11 = *(*a3 + 56);
  v10 = *(*a3 + 57);
  if (v11 != v10)
  {
    while (*(v11 + 12) != 4)
    {
      v11 += 200;
      if (v11 == v10)
      {
        goto LABEL_22;
      }
    }

    if (i)
    {
      v29 = 0;
      v25 = 0u;
      v22[1] = 0;
      v22[2] = 0;
      v23 = 0;
      v24 = 16711935;
      *(&v25 + 4) = 0x100000001;
      v26 = 0u;
      v27 = 0u;
      memset(v28, 0, sizeof(v28));
      v22[0] = &unk_1F5EC4ED0;
      v30 = 0x2800000028;
      v31 = 16711935;
      v32 = 1;
      std::optional<SDPMediaTTYSettings>::operator=[abi:ne200100]<SDPMediaTTYSettings,void>(v38, v22);
      SDPMediaSettings::~SDPMediaSettings(v22);
      if (*(v34 + 336) != 1)
      {
        goto LABEL_25;
      }

      SDPSettingsBuilder::copyGeneralMediaSettings((v34 + 5), i, v11, a4, v12);
      v13 = v34;
      if (*(v34 + 336) != 1)
      {
        goto LABEL_25;
      }

      v14 = a3[1];
      v20 = *a3;
      v21 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SDPSettingsBuilder::copyRemoteMediaSettings((v13 + 5), &v20, v11);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      *(v34 + 332) = *(v11 + 16) != 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZNK21SDPTTYSettingsBuilder17createTTYSettingsENSt3__110shared_ptrI8SDPModelEES3_RK8ImsPrefs_block_invoke;
      v19[3] = &unk_1E876C2E0;
      v19[4] = &v33;
      SDPSettingsBuilder::findRTPMatches(a1, i + 40, v11 + 40, v19, &__block_literal_global_10);
      v15 = v34;
      if ((v34[42] & 1) == 0)
      {
LABEL_25:
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v16 = *a3;
      v17 = a3[1];
      v18[0] = v16;
      v18[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
      }

      SDPSettingsBuilder::generateBandwidthSpecifierInfo((v15 + 5), v18, v11);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }
  }

LABEL_22:
  std::__optional_copy_base<SDPMediaTTYSettings,false>::__optional_copy_base[abi:ne200100](a5, (v34 + 5));
  _Block_object_dispose(&v33, 8);
  if (BYTE8(v39) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(v38);
  }
}

void sub_1E5099950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  _Block_object_dispose(&a56, 8);
  if (LOBYTE(STACK[0x2C8]) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(v56);
  }

  _Unwind_Resume(a1);
}

void SDPTTYSettingsBuilder::createTTYSettingsForOfferAnswer(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, SDPMedia *a4@<X3>, SDPMediaSettings *a5@<X8>)
{
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a3 + 8);
  v7[0] = *a3;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  SDPTTYSettingsBuilder::createTTYSettings(a1, v8, v7, a4, a5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5099A50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 336) = 0;
  if (*(a2 + 336) == 1)
  {
    SDPMediaSettings::SDPMediaSettings((a1 + 40), (a2 + 40));
    *(a1 + 40) = &unk_1F5EC4ED0;
    result = *(a2 + 320);
    *(a1 + 320) = result;
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 332) = *(a2 + 332);
    *(a1 + 336) = 1;
  }

  return result;
}

void sub_1E5099B00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 336) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(v2);
  }

  _Unwind_Resume(exception_object);
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  if (*(a1 + 336) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings((a1 + 40));
  }
}

void ___ZNK21SDPTTYSettingsBuilder17createTTYSettingsENSt3__110shared_ptrI8SDPModelEES3_RK8ImsPrefs_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    __p = *(a2 + 64);
  }

  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  p_p = &__p;
  if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 3)
  {
LABEL_21:
    if (LOWORD(p_p->__r_.__value_.__l.__data_) == 25970 && p_p->__r_.__value_.__s.__data_[2] == 100)
    {
      v12 = *(*(a1 + 32) + 8);
      if (*(v12 + 328) == 255)
      {
        *(v12 + 328) = *(a2 + 8);
        *(*(*(a1 + 32) + 8) + 330) = *(a3 + 8);
      }
    }

    goto LABEL_28;
  }

  if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 4)
  {
LABEL_9:
    if (LODWORD(p_p->__r_.__value_.__l.__data_) == 808726900)
    {
      v9 = *(*(a1 + 32) + 8);
      if (*(v9 + 68) == 255)
      {
        *(v9 + 68) = *(a2 + 8);
        *(*(*(a1 + 32) + 8) + 70) = *(a3 + 8);
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        memset(v21, 0, sizeof(v21));
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v21, a2 + 96);
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        memset(v14, 0, sizeof(v14));
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v14, a3 + 96);
        v10 = DWORD2(v27);
        if (DWORD2(v20) == 4)
        {
          *(*(*(a1 + 32) + 8) + 324) = HIDWORD(v15);
        }

        if (v10 == 4)
        {
          *(*(*(a1 + 32) + 8) + 320) = HIDWORD(v22);
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v14);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v21);
        v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_28:
        if ((v6 & 0x80) == 0)
        {
          return;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
        goto LABEL_30;
      }
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 3)
      {
        return;
      }

      p_p = &__p;
      goto LABEL_21;
    }

    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
LABEL_20:
    if (size != 3)
    {
LABEL_30:
      operator delete(p_p);
      return;
    }

    goto LABEL_21;
  }
}

void sub_1E5099D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int a32)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a32);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SipProxyResolver::SipProxyResolver(uint64_t a1, uint64_t *a2, int a3)
{
  *a1 = &unk_1F5ED34D0;
  *(a1 + 8) = &unk_1F5ED34F8;
  std::string::basic_string[abi:ne200100]<0>(&object, "sip.proxy");
  v14[0] = 0;
  v17 = 0;
  ImsLogContainer::ImsLogContainer(a1 + 16, &object, v14);
  if (v17 == 1 && v16 < 0)
  {
    operator delete(__p);
  }

  if (v12.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(object);
  }

  *(a1 + 152) = &unk_1F5EBEEC0;
  ims::getQueue(&object);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v6 = object;
  *(a1 + 184) = object;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 192) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 200), "com.apple.ipTelephony", "sip.proxy");
  if (v6)
  {
    dispatch_release(v6);
  }

  *a1 = &unk_1F5EEE970;
  *(a1 + 8) = &unk_1F5EEE9C0;
  *(a1 + 16) = &unk_1F5EEE9E8;
  *(a1 + 152) = &unk_1F5EEEA48;
  *(a1 + 160) = &unk_1F5EEEA78;
  *(a1 + 208) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = a1 + 264;
  *(a1 + 264) = 0;
  *(a1 + 288) = 3;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 321) = 0u;
  SipTimerContainer::SipTimerContainer((a1 + 344));
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 328);
  *(a1 + 320) = v8;
  *(a1 + 328) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(a1 + 472) = a1 + 152;
  *&object = 0;
  DWORD2(object) = 0;
  memset(&v12, 0, sizeof(v12));
  v13 = 0;
  std::string::operator=((a1 + 392), (a1 + 24));
  *(a1 + 416) = object;
  *(a1 + 424) = DWORD2(object);
  std::string::operator=((a1 + 432), &v12);
  *(a1 + 456) = v13;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  *(a1 + 340) = a3;
  return a1;
}

void sub_1E509A018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  v36 = *(v31 + 328);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (*(v31 + 319) < 0)
  {
    operator delete(*v34);
  }

  v37 = *(v31 + 280);
  if (v37)
  {
    _Block_release(v37);
  }

  std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::destroy(*(v31 + 264));
  if (*(v31 + 255) < 0)
  {
    operator delete(*(v31 + 232));
  }

  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&a10);
  MEMORY[0x1E69225A0](v31 + 200);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v33);
  ImsLogContainer::~ImsLogContainer(v32);
  _Unwind_Resume(a1);
}

void SipProxyResolver::~SipProxyResolver(SipProxyResolver *this)
{
  *this = &unk_1F5EEE970;
  *(this + 1) = &unk_1F5EEE9C0;
  *(this + 2) = &unk_1F5EEE9E8;
  *(this + 19) = &unk_1F5EEEA48;
  *(this + 20) = &unk_1F5EEEA78;
  SipTimerContainer::cancelAllTimers((this + 344));
  if (!NetworkInterfaceMonotorManager::_instance)
  {
    operator new();
  }

  NetworkInterfaceMonotorManager::releaseMonitor(NetworkInterfaceMonotorManager::_instance, this + 37);
  SipTimerContainer::~SipTimerContainer((this + 344));
  v2 = *(this + 41);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  v3 = *(this + 35);
  if (v3)
  {
    _Block_release(v3);
  }

  std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::destroy(*(this + 33));
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  v4 = (this + 208);
  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&v4);
  MEMORY[0x1E69225A0](this + 200);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 21);
  *(this + 2) = &unk_1F5ED7318;
  if (*(this + 96) == 1 && *(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  SipProxyResolver::~SipProxyResolver(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipProxyResolver::~SipProxyResolver(SipProxyResolver *this)
{
  SipProxyResolver::~SipProxyResolver((this - 8));
}

{
  SipProxyResolver::~SipProxyResolver((this - 16));
}

{
  SipProxyResolver::~SipProxyResolver((this - 152));
}

{
  SipProxyResolver::~SipProxyResolver((this - 160));
}

{
  SipProxyResolver::~SipProxyResolver((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipProxyResolver::~SipProxyResolver((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  SipProxyResolver::~SipProxyResolver((this - 152));

  JUMPOUT(0x1E69235B0);
}

{
  SipProxyResolver::~SipProxyResolver((this - 160));

  JUMPOUT(0x1E69235B0);
}

void SipProxyResolver::resolveProxiesOnInterface(SipProxyResolver *this, uint64_t *a2, uint64_t a3, int a4, void **a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a2 != a2[1])
  {
    operator new();
  }

  v6 = *a5;
  if (*a5)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(this + 35);
  *(this + 35) = v6;
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::string::operator=((this + 232), a3);
    *(this + 72) = a4;
    if (os_log_type_enabled(*(this + 25), OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 32))(v20, this);
      IpAddress::addressTypeMaskToString(*(this + 72));
    }

    v9 = (*(**(this + 40) + 40))(*(this + 40), a3);
    if (v9)
    {
      buf.__r_.__value_.__r.__words[0] = v9;
      (*(*this + 16))(this, a3, &buf);
      v10 = buf.__r_.__value_.__r.__words[0];
      buf.__r_.__value_.__r.__words[0] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    else
    {
      v11 = *(this + 25);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v20;
        (*(*this + 32))(v20, this);
        if (v21 < 0)
        {
          v12 = v20[0];
        }

        if (*(a3 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v18, *a3, *(a3 + 8));
        }

        else
        {
          v18 = *a3;
        }

        __p = v18;
        memset(&v18, 0, sizeof(v18));
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 141558531;
        *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v23 = p_p;
        _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swaiting for interface %s to come up", &buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      if (!NetworkInterfaceMonotorManager::_instance)
      {
        operator new();
      }

      v14 = *(this + 319);
      if (v14 < 0)
      {
        v14 = *(this + 38);
      }

      if (!v14)
      {
        v15 = *(this + 41);
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        NetworkInterfaceMonotorManager::createMonitor(&buf);
      }

      NetworkInterfaceMonotorManager::startMonitoring(NetworkInterfaceMonotorManager::_instance, this + 37, a3, *(this + 72));
    }
  }

  else
  {

    SipProxyResolver::internalResolve(this);
  }
}

void sub_1E509AA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipProxyResolver::internalResolve(SipProxyResolver *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v31 = (*(**(this + 40) + 48))(*(this + 40));
  v3 = *(this + 26);
  v2 = *(this + 27);
  if (v3 == v2)
  {
    return;
  }

  v4 = this + 256;
  v32 = (this + 264);
  while (1)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v6 + 48))
    {
      v43 = 0;
      v44 = 0;
      SipHost::address(&v43, (v6 + 8));
      v7 = v43;
      if ((*(this + 72) & (*(*v43 + 160))(v43)) != 0)
      {
        SipProxyResolver::ResolvedUri::addAddress(v6, v7);
      }

      else if (os_log_type_enabled(*(this + 25), OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 32))(v41, this);
        v10 = (*(*v7 + 152))(v7);
        if (*(v10 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v39, *v10, *(v10 + 8));
        }

        else
        {
          v11 = *v10;
          v39.__r_.__value_.__r.__words[2] = *(v10 + 16);
          *&v39.__r_.__value_.__l.__data_ = v11;
        }

        v40 = v39;
        memset(&v39, 0, sizeof(v39));
        asString();
      }

      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      goto LABEL_41;
    }

    if (*(v6 + 408) == *(v6 + 416))
    {
      break;
    }

    v8 = *(this + 25);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 32))(v41, this);
      if (v42 >= 0)
      {
        v9 = v41;
      }

      else
      {
        v9 = v41[0];
      }

      if (*(v6 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        v37 = *(v6 + 16);
      }

      v40 = v37;
      memset(&v37, 0, sizeof(v37));
      v15 = &v40;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v40.__r_.__value_.__r.__words[0];
      }

      buf[0] = 141558531;
      *&buf[1] = 1752392040;
      v46 = 2081;
      v47 = v9;
      v48 = 2080;
      v49 = v15;
      _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sskipping already resolved hostname %s", buf, 0x20u);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (v42 < 0)
      {
        operator delete(v41[0]);
        if (!v5)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

LABEL_41:
    if (v5)
    {
      goto LABEL_42;
    }

LABEL_43:
    v3 += 2;
    if (v3 == v2)
    {
      return;
    }
  }

  if (v32 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v4, (v6 + 16)))
  {
    ++*(v6 + 432);
    v12 = *v32;
    if (!*v32)
    {
      goto LABEL_46;
    }

    v13 = (this + 264);
    while (1)
    {
      while (1)
      {
        v14 = v12;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v6 + 16), v12 + 32) & 0x80) == 0)
        {
          break;
        }

        v12 = *v14;
        v13 = v14;
        if (!*v14)
        {
          goto LABEL_46;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14 + 4, (v6 + 16)) & 0x80) == 0)
      {
        break;
      }

      v13 = (v14 + 8);
      v12 = *(v14 + 1);
      if (!v12)
      {
        goto LABEL_46;
      }
    }

    v16 = *v13;
    if (!*v13)
    {
LABEL_46:
      operator new();
    }

    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = *(v16 + 64);
    *(v16 + 56) = v6;
    *(v16 + 64) = v5;
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *(this + 25);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 32))(v41, this);
      if (v42 >= 0)
      {
        v19 = v41;
      }

      else
      {
        v19 = v41[0];
      }

      std::to_string(&v40, *(v6 + 432));
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v40;
      }

      else
      {
        v20 = v40.__r_.__value_.__r.__words[0];
      }

      if (*(v6 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        v35 = *(v6 + 16);
      }

      __p = v35;
      memset(&v35, 0, sizeof(v35));
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      buf[0] = 141558787;
      *&buf[1] = 1752392040;
      v46 = 2081;
      v47 = v19;
      v48 = 2080;
      v49 = v20;
      v50 = 2080;
      v51 = p_p;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sattempt %s : starting DNS lookup for %s", buf, 0x2Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }

    v22 = *(this + 22);
    if (!v22 || (v23 = *(this + 21), (v24 = std::__shared_weak_count::lock(v22)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v25 = v24;
    p_shared_weak_owners = &v24->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    v27 = *(this + 72);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 1174405120;
    v33[2] = ___ZN16SipProxyResolver15internalResolveEv_block_invoke;
    v33[3] = &__block_descriptor_tmp_60;
    v33[4] = v23;
    v34 = v25;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    (*(*v31 + 32))(v31, v6 + 16, v27, this + 232, v33);
    v4 = this + 256;
    if (v34)
    {
      std::__shared_weak_count::__release_weak(v34);
    }

    std::__shared_weak_count::__release_weak(v25);
    if (!v5)
    {
      goto LABEL_43;
    }

LABEL_42:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    goto LABEL_43;
  }

  v28 = *(this + 25);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 32))(v41, this);
    if (v42 >= 0)
    {
      v29 = v41;
    }

    else
    {
      v29 = v41[0];
    }

    if (*(v6 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, *(v6 + 16), *(v6 + 24));
    }

    else
    {
      v36 = *(v6 + 16);
    }

    v40 = v36;
    memset(&v36, 0, sizeof(v36));
    v30 = &v40;
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v40.__r_.__value_.__r.__words[0];
    }

    buf[0] = 141558531;
    *&buf[1] = 1752392040;
    v46 = 2081;
    v47 = v29;
    v48 = 2080;
    v49 = v30;
    _os_log_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sresolution already in-progress for hostname %s", buf, 0x20u);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E509B3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v45 - 193) < 0)
  {
    operator delete(*(v45 - 216));
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void SipProxyResolver::networkInterfaceChanged(uint64_t a1, uint64_t a2, const ImsLoggable **a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a1 + 200);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v19;
      (*(*a1 + 32))(v19, a1);
      if (v20 < 0)
      {
        v9 = v19[0];
      }

      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
      }

      else
      {
        v16 = *a2;
      }

      __p = v16;
      memset(&v16, 0, sizeof(v16));
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v9;
      *&buf[22] = 2080;
      v22 = p_p;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinterface %s is up", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      v7 = *(a1 + 200);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 32))(v19, a1);
      asString();
    }

    v12 = *(*a3 + 1);
    v13 = *(*a3 + 2);
    if (v12 == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v14 |= (*(**v12 + 160))();
        v12 += 16;
      }

      while (v12 != v13);
    }

    *(a1 + 288) &= v14;
    if (!NetworkInterfaceMonotorManager::_instance)
    {
      operator new();
    }

    NetworkInterfaceMonotorManager::releaseMonitor(NetworkInterfaceMonotorManager::_instance, (a1 + 296));
    if (*(a1 + 319) < 0)
    {
      **(a1 + 296) = 0;
      *(a1 + 304) = 0;
    }

    else
    {
      *(a1 + 296) = 0;
      *(a1 + 319) = 0;
    }

    if (*(a1 + 288))
    {
      SipProxyResolver::internalResolve(a1);
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      (*(*(a1 + 280) + 16))();
      v19[0] = buf;
      std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](v19);
    }
  }

  else if (v8)
  {
    (*(*a1 + 32))(v19, a1);
    if (v20 >= 0)
    {
      v10 = v19;
    }

    else
    {
      v10 = v19[0];
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
    }

    else
    {
      v17 = *a2;
    }

    __p = v17;
    memset(&v17, 0, sizeof(v17));
    v15 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v10;
    *&buf[22] = 2080;
    v22 = v15;
    _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinterface %s is not up", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_1E509B980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipProxyResolver::ResolvedUri::addAddress(uint64_t a1, uint64_t a2)
{
  v3 = 0uLL;
  (*(*a2 + 32))(&v3, a2);
  (*(*v3 + 64))(v3, *(a1 + 40));
  std::vector<std::shared_ptr<LazuliHeader>>::push_back[abi:ne200100]((a1 + 408), &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }
}

void sub_1E509BA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN16SipProxyResolver15internalResolveEv_block_invoke(uint64_t a1, uint64_t a2, const ImsResult *a3, char **a4)
{
  v88[47] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 32);
      if (!v11)
      {
LABEL_141:
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        return;
      }

      ImsResult::ImsResult(v78, a3);
      if ((*(*v79 + 24))(v79, v80))
      {
        if (os_log_type_enabled(*(v11 + 200), OS_LOG_TYPE_ERROR))
        {
          (*(*v11 + 32))(v85, v11);
          if (*(a2 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v83, *a2, *(a2 + 8));
          }

          else
          {
            v83 = *a2;
          }

          __p = v83;
          memset(&v83, 0, sizeof(v83));
          asString();
        }

LABEL_140:
        ImsResult::~ImsResult(v78);
        goto LABEL_141;
      }

      v12 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v11 + 256, a2);
      if (v11 + 264 == v12)
      {
        v22 = *(v11 + 200);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v11 + 32))(v85, v11);
          if ((v85[23] & 0x80u) == 0)
          {
            v23 = v85;
          }

          else
          {
            v23 = *v85;
          }

          if (*(a2 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v83, *a2, *(a2 + 8));
          }

          else
          {
            v83 = *a2;
          }

          __p = v83;
          memset(&v83, 0, sizeof(v83));
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v23;
          *&buf[22] = 2080;
          *&buf[24] = p_p;
          _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sI wasn't waiting for hostname resolution for %s", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          if (v85[23] < 0)
          {
            operator delete(*v85);
          }
        }

        goto LABEL_140;
      }

      v13 = v12;
      v14 = *(v12 + 64);
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
        v16 = v15;
        if (v15)
        {
          v17 = *(v13 + 56);
          if (v17)
          {
            v77 = v15;
            v18 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v11 + 256, a2);
            if (v11 + 264 != v18)
            {
              v19 = v18;
              v20 = *(v18 + 8);
              if (v20)
              {
                do
                {
                  v21 = v20;
                  v20 = *v20;
                }

                while (v20);
              }

              else
              {
                v28 = v18;
                do
                {
                  v21 = v28[2];
                  v64 = *v21 == v28;
                  v28 = v21;
                }

                while (!v64);
              }

              if (*(v11 + 256) == v18)
              {
                *(v11 + 256) = v21;
              }

              v29 = *(v11 + 264);
              --*(v11 + 272);
              std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v29, v19);
              std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>((v19 + 4));
              operator delete(v19);
            }

            v30 = *(v11 + 200);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v11 + 32))(v85, v11);
              v31 = v85[23];
              v32 = *v85;
              std::to_string(&__p, *(v17 + 432));
              v33 = v85;
              if (v31 < 0)
              {
                v33 = v32;
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v34 = &__p;
              }

              else
              {
                v34 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 141558531;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v33;
              *&buf[22] = 2080;
              *&buf[24] = v34;
              _os_log_impl(&dword_1E4C3F000, v30, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sattempt %s :", buf, 0x20u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v85[23] < 0)
              {
                operator delete(*v85);
              }

              v30 = *(v11 + 200);
            }

            v35 = *a4;
            v36 = a4[1];
            v37 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
            if (v35 == v36)
            {
              if (v37)
              {
                (*(*v11 + 32))(v85, v11);
                if (*(a2 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v83, *a2, *(a2 + 8));
                }

                else
                {
                  v83 = *a2;
                }

                __p = v83;
                memset(&v83, 0, sizeof(v83));
                IpAddress::addressTypeMaskToString(*(v11 + 288));
              }

              if (*(v11 + 340) > *(v17 + 432))
              {
                v38 = *(v11 + 176);
                if (v38)
                {
                  v39 = std::__shared_weak_count::lock(v38);
                  if (v39)
                  {
                    p_shared_weak_owners = &v39->__shared_weak_owners_;
                    atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
                    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
                    *&buf[24] = 0;
                    operator new();
                  }
                }

                std::__throw_bad_weak_ptr[abi:ne200100]();
              }
            }

            else if (v37)
            {
              (*(*v11 + 32))(&__p, v11);
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v82, *a2, *(a2 + 8));
              }

              else
              {
                v82 = *a2;
              }

              v83 = v82;
              memset(&v82, 0, sizeof(v82));
              std::string::basic_string[abi:ne200100]<0>(v81, ",");
              v86 = 0;
              memset(v85, 0, sizeof(v85));
              ImsStringOutStream::ImsStringOutStream(v85, 1);
            }

            memset(v81, 0, sizeof(v81));
            v42 = *a4;
            v41 = a4[1];
            *buf = v81;
            v43 = v41 - v42;
            if (v41 != v42)
            {
              *&buf[8] = 0;
              if (!((v43 >> 4) >> 60))
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(v81, v43 >> 4);
              }

              std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
            }

            v16 = v77;
            *buf = v81;
            std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](buf);
            v44 = *(v11 + 272);
            v45 = *(v11 + 200);
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
            if (!v44)
            {
              if (v46)
              {
                (*(*v11 + 32))(buf, v11);
                v51 = buf[23] >= 0 ? buf : *buf;
                *v85 = 141558275;
                *&v85[4] = 1752392040;
                *&v85[12] = 2081;
                *&v85[14] = v51;
                _os_log_impl(&dword_1E4C3F000, v45, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sfinished resolving proxy hosts", v85, 0x16u);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              memset(v85, 0, 24);
              memset(&__p, 0, sizeof(__p));
              v52 = *(v11 + 208);
              v53 = *(v11 + 216);
              if (v52 != v53)
              {
                do
                {
                  v54 = *v52;
                  v55 = v52[1];
                  if (v55)
                  {
                    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v56 = *(v54 + 408);
                  v57 = *(v54 + 416);
                  while (v56 != v57)
                  {
                    if (*(v11 + 336) != 1)
                    {
                      goto LABEL_117;
                    }

                    v58 = (*(**v56 + 152))();
                    v59 = *(v58 + 23);
                    v60 = v59;
                    if ((v59 & 0x80u) != 0)
                    {
                      v59 = *(v58 + 8);
                    }

                    if (v59 == 3 && (v60 >= 0 ? (v61 = v58) : (v61 = *v58), (v62 = *v61, v63 = *(v61 + 2), v62 == IpAddress::kAddressTypeIPv4) ? (v64 = v63 == 52) : (v64 = 0), v64))
                    {
LABEL_117:
                      SipUri::SipUri(buf, v56);
                      std::vector<SipUri>::push_back[abi:ne200100](v85, buf);
                    }

                    else
                    {
                      SipUri::SipUri(buf, v56);
                      std::vector<SipUri>::push_back[abi:ne200100](&__p, buf);
                    }

                    SipUri::~SipUri(buf);
                    v56 += 16;
                  }

                  if (v55)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
                  }

                  v52 += 2;
                }

                while (v52 != v53);
                v65 = __p.__r_.__value_.__r.__words[0];
                if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
                {
                  v66 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
                  if ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >= 1)
                  {
                    v67 = *&v85[8];
                    if (*&v85[16] - *&v85[8] >= v66)
                    {
                      *&v85[8] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SipUri>,SipUri*,SipUri*,SipUri*>(v85, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, *&v85[8]);
                    }

                    else
                    {
                      v68 = 0xFAFAFAFAFAFAFAFBLL * ((*&v85[8] - *v85) >> 3);
                      v69 = v68 - 0x505050505050505 * (v66 >> 3);
                      if (v69 > 0xA0A0A0A0A0A0A0)
                      {
                        std::vector<std::string>::__throw_length_error[abi:ne200100]();
                      }

                      v70 = 0xF5F5F5F5F5F5F5F6 * ((*&v85[16] - *v85) >> 3);
                      if (v70 <= v69)
                      {
                        v70 = v68 - 0x505050505050505 * (v66 >> 3);
                      }

                      if (0xFAFAFAFAFAFAFAFBLL * ((*&v85[16] - *v85) >> 3) >= 0x50505050505050)
                      {
                        v71 = 0xA0A0A0A0A0A0A0;
                      }

                      else
                      {
                        v71 = v70;
                      }

                      v88[0] = v85;
                      if (v71)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<SipUri>>(v85, v71);
                      }

                      v72 = (8 * ((*&v85[8] - *v85) >> 3));
                      *buf = 0;
                      *&buf[8] = v72;
                      *&buf[16] = v72;
                      *&buf[24] = 0;
                      v73 = (v72 + v66);
                      do
                      {
                        SipUri::SipUri(v72, v65);
                        v72 = (v72 + 408);
                        v65 = (v65 + 408);
                        v66 -= 408;
                      }

                      while (v66);
                      *&buf[16] = v73;
                      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipUri>,SipUri*>(v85, v67, *&v85[8], v73);
                      *&buf[16] += *&v85[8] - v67;
                      *&v85[8] = v67;
                      v74 = (*&buf[8] + *v85 - v67);
                      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipUri>,SipUri*>(v85, *v85, v67, v74);
                      v75 = *v85;
                      v76 = *&v85[16];
                      *v85 = v74;
                      *&v85[8] = *&buf[16];
                      *&buf[16] = v75;
                      *&buf[24] = v76;
                      *buf = v75;
                      *&buf[8] = v75;
                      std::__split_buffer<SipUri>::~__split_buffer(buf);
                    }
                  }
                }
              }

              (*(*(v11 + 280) + 16))();
              *buf = &__p;
              std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](buf);
              *buf = v85;
              std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](buf);
              v16 = v77;
              goto LABEL_138;
            }

            if (!v46)
            {
              goto LABEL_138;
            }

            (*(*v11 + 32))(v85, v11);
            v47 = v85[23];
            v48 = *v85;
            std::to_string(&__p, *(v11 + 272));
            v49 = v85;
            if (v47 < 0)
            {
              v49 = v48;
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v50 = &__p;
            }

            else
            {
              v50 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v49;
            *&buf[22] = 2080;
            *&buf[24] = v50;
            _os_log_impl(&dword_1E4C3F000, v45, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sstill waiting for %s hostnames to resolve", buf, 0x20u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v16 = v77;
            if ((v85[23] & 0x80000000) == 0)
            {
LABEL_138:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              goto LABEL_140;
            }

LABEL_36:
            operator delete(*v85);
            goto LABEL_138;
          }
        }
      }

      else
      {
        v16 = 0;
      }

      v24 = *(v11 + 200);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_138;
      }

      v25 = v85;
      (*(*v11 + 32))(v85, v11);
      if ((v85[23] & 0x80u) != 0)
      {
        v25 = *v85;
      }

      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v83, *a2, *(a2 + 8));
      }

      else
      {
        v83 = *a2;
      }

      __p = v83;
      memset(&v83, 0, sizeof(v83));
      v26 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v25;
      *&buf[22] = 2080;
      *&buf[24] = v26;
      _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sResolved uri for %s is gone.", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if ((v85[23] & 0x80000000) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_36;
    }
  }
}

void sub_1E509CB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void **p_p, uint64_t a42, uint64_t a43, void **a44, void *__p)
{
  a44 = &p_p;
  std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](&a44);
  p_p = &__p;
  std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ImsResult::~ImsResult(&a12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16SipProxyResolverEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16SipProxyResolverEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SipProxyResolver::handleTimer(SipProxyResolver *this, uint64_t **a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (v2 == 17)
  {
    if (v3 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 16);
    if (v5 == 0x73655279786F7250 && v6 == 0x656D695465766C6FLL && v7 == 114)
    {
      SipProxyResolver::internalResolve(this);
    }
  }
}

void *SipProxyResolver::logPrefix(SipProxyResolver *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "ProxyResolver: ", 15);
  *(a2 + 17) = 0;
  return result;
}

void *non-virtual thunk toSipProxyResolver::logPrefix(SipProxyResolver *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "ProxyResolver: ", 15);
  *(a2 + 17) = 0;
  return result;
}

void std::__shared_ptr_emplace<SipProxyResolver::ResolvedUri>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEEBD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipProxyResolver::ResolvedUri>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 432);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v2);
  SipUri::~SipUri((a1 + 24));
}

void *std::__function::__func<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0,std::allocator<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEEC20;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0,std::allocator<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEEC20;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0,std::allocator<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EEEC20;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0,std::allocator<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0,std::allocator<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0,std::allocator<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 48))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0,std::allocator<SipProxyResolver::resolvedHost(std::string const&,ImsResult,std::vector<std::shared_ptr<IpAddress>> const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void QMINasClient::AccessBarringHandler::listenForIndication(QMINasClient::AccessBarringHandler *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 16) != a3)
  {
    *(this + 16) = a3;
    memset(v20, 0, sizeof(v20));
    qmi::MutableMessageBase::MutableMessageBase(v20);
    (**this)(this, v20, a3);
    v11 = std::string::basic_string[abi:ne200100]<0>(&v25, "qmi.nas");
    v16[0] = 0;
    v19 = 0;
    v12 = ims::debug(v11, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "registering for ", 16);
    *(v12 + 17) = 0;
    v13 = (*(*this + 32))(this);
    (*(*v12 + 32))(v12, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " change indication for instance ", 32);
    *(v12 + 17) = 0;
    MEMORY[0x1E6923350](*(v12 + 8), a2);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (a2)
    {
      v14 = 2 * (a2 == 1);
    }

    else
    {
      v14 = 1;
    }

    qmi::ClientRouter::send<nas::IndicationRegister::Request>(v15, *(this + 1) + 112, v14, v20);
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(&v25, "qmi.nas");
  v21[0] = 0;
  v24 = 0;
  v7 = ims::debug(v6, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "already ", 8);
  *(v7 + 17) = 0;
  if (a3)
  {
    v8 = "";
  }

  else
  {
    v8 = "not ";
  }

  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = 4;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8, v9);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "listening for ", 14);
  *(v7 + 17) = 0;
  v10 = (*(*this + 32))(this);
  (*(*v7 + 32))(v7, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " indication for instance ", 25);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }
}

void sub_1E509D7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  v41 = *(v39 - 96);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void qmi::ClientRouter::send<nas::IndicationRegister::Request>(_DWORD *a1, uint64_t a2, uint64_t a3, QMIServiceMsg *a4)
{
  v4 = a3;
  qmi::ClientRouter::get();
  *a1 = v4;
  operator new();
}

uint64_t QMINasClient::SsacHandler::initializeIndicationRegisterRequest(uint64_t a1, uint64_t a2, char a3)
{
  *qmi::MutableMessageBase::getTLV<nas::tlv::RegSsacInfo>(a2) = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN12QMINasClient11SsacHandler35initializeIndicationRegisterRequestEPN3nas18IndicationRegister7RequestEb_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_11;
  v10 = a3;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 != v6)
  {
    while (*(*v5 + 8) != 48)
    {
      if (++v5 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_8:
    operator new();
  }

  if (!v7)
  {
    __cxa_bad_cast();
  }

  return ___ZN12QMINasClient11SsacHandler35initializeIndicationRegisterRequestEPN3nas18IndicationRegister7RequestEb_block_invoke_2(v9, v7 + 9);
}

uint64_t QMINasClient::SsacHandler::internalListenForIndication(QMINasClient::SsacHandler *this, uint64_t a2, int a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5EEF0E8;
  v7[1] = this;
  v7[3] = v7;
  qmi::ClientRouter::setIndHandlerInternal();
  result = std::__function::__value_func<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>::~__value_func[abi:ne200100](v7);
  if (a3)
  {
    return (*(*this + 40))(this, a2);
  }

  return result;
}

void QMINasClient::SsacHandler::requestCurrentBarringInfo(QMINasClient::SsacHandler *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "qmi.nas");
  v5[0] = 0;
  v8 = 0;
  v3 = ims::debug(&v9, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "requesting current SSAC info for instance ", 42);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), a2);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  memset(v4, 0, sizeof(v4));
  qmi::MutableMessageBase::MutableMessageBase(v4);
  qmi::ClientRouter::get();
  operator new();
}

void sub_1E509DE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  qmi::ClientRouter::SendProxy::~SendProxy(&a9);
  qmi::MutableMessageBase::~MutableMessageBase(&a11);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = 100;
  *(result + 44) = 0;
  *(result + 48) = 0;
  *(result + 52) = 0;
  *(result + 56) = 0;
  *(result + 40) = *(a2 + 40);
  *(result + 44) = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t ___ZN12QMINasClient11SsacHandler24handleSsacInfoIndicationEjRKN3nas11SsacInfoInd10IndicationE_block_invoke(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *a2;
  v4 = *(a2 + 1);
  *(v2 + 40) = v3;
  *(v2 + 44) = v4;
  *(v2 + 48) = 0;
  *(v2 + 52) = 1;
  *(v2 + 56) = 1;
  if (v3 > 0x64 || v4 >= 0x201)
  {
    *(v2 + 40) = 100;
    *(v2 + 44) = 0;
    *(v2 + 56) = 0;
    *(v2 + 52) = 0;
  }

  *(*(*(result + 32) + 8) + 52) |= 1u;
  return result;
}

uint64_t ___ZN12QMINasClient11SsacHandler22handleSsacInfoResponseEjRKN3nas11GetSsacInfo8ResponseE_block_invoke(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *a2;
  v4 = *(a2 + 1);
  *(v2 + 40) = v3;
  *(v2 + 44) = v4;
  *(v2 + 48) = 0;
  *(v2 + 52) = 1;
  *(v2 + 56) = 1;
  if (v3 > 0x64 || v4 >= 0x201)
  {
    *(v2 + 40) = 100;
    *(v2 + 44) = 0;
    *(v2 + 56) = 0;
    *(v2 + 52) = 0;
  }

  *(*(*(result + 32) + 8) + 52) |= 1u;
  return result;
}

uint64_t QMINasClient::AcbHandler::initializeIndicationRegisterRequest(uint64_t a1, uint64_t a2, char a3)
{
  *qmi::MutableMessageBase::getTLV<nas::tlv::RegSsacInfo>(a2) = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN12QMINasClient10AcbHandler35initializeIndicationRegisterRequestEPN3nas18IndicationRegister7RequestEb_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_24_0;
  v10 = a3;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 != v6)
  {
    while (*(*v5 + 8) != 44)
    {
      if (++v5 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_8:
    operator new();
  }

  if (!v7)
  {
    __cxa_bad_cast();
  }

  return ___ZN12QMINasClient10AcbHandler35initializeIndicationRegisterRequestEPN3nas18IndicationRegister7RequestEb_block_invoke_2(v9, v7 + 9);
}

uint64_t QMINasClient::AcbHandler::internalListenForIndication(QMINasClient::AcbHandler *this, uint64_t a2, int a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5EEF238;
  v7[1] = this;
  v7[3] = v7;
  qmi::ClientRouter::setIndHandlerInternal();
  result = std::__function::__value_func<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>::~__value_func[abi:ne200100](v7);
  if (a3)
  {
    return (*(*this + 40))(this, a2);
  }

  return result;
}

void QMINasClient::AcbHandler::requestCurrentBarringInfo(QMINasClient::AcbHandler *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "qmi.nas");
  v5[0] = 0;
  v8 = 0;
  v3 = ims::debug(&v9, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "requesting current ACB info for instance ", 41);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), a2);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  memset(v4, 0, sizeof(v4));
  qmi::MutableMessageBase::MutableMessageBase(v4);
  qmi::ClientRouter::get();
  operator new();
}

void sub_1E509E508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  qmi::ClientRouter::SendProxy::~SendProxy(&a9);
  qmi::MutableMessageBase::~MutableMessageBase(&a11);
  _Unwind_Resume(a1);
}

void QMINasClient::QMINasClient(QMINasClient *this, NSObject **a2)
{
  *this = &unk_1F5EC8D08;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 32;
  v3 = *a2;
  *(this + 6) = *a2;
  if (v3)
  {
    dispatch_retain(v3);
  }

  *(this + 7) = &unk_1F5EEEF88;
  ims::getQueue(&object);
  *(this + 9) = 0;
  *(this + 10) = 0;
  v4 = object;
  *(this + 11) = object;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *(this + 12) = 0;
  v5 = ctu::OsLogLogger::OsLogLogger((this + 104), "com.apple.ipTelephony", "qmi.nas");
  if (v4)
  {
    dispatch_release(v4);
  }

  *this = &unk_1F5EEECA0;
  *(this + 7) = &unk_1F5EEED40;
  *(this + 8) = &unk_1F5EEED80;
  v6 = ims::logger(v5);
  v7 = ImsLogger::osLog(v6);
  qmi::ClientRouter::ClientRouter((this + 112), v7);
  *(this + 64) = 0;
  *(this + 152) = 0;
  *(this + 17) = &unk_1F5EEEDD8;
  *(this + 18) = this;
  *(this + 176) = 0;
  *(this + 20) = &unk_1F5EEEE40;
  *(this + 21) = this;
  *(this + 46) = 0;
  *(this + 25) = 0;
  *(this + 24) = this + 200;
  *(this + 28) = 0;
  *(this + 26) = 0;
  *(this + 27) = this + 224;
  *(this + 32) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 30) = this + 248;
  *(this + 37) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
}

void sub_1E509E778(_Unwind_Exception *a1)
{
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v2);
  if (v3)
  {
    dispatch_release(v3);
  }

  IMSNasClient::~IMSNasClient(v1);
  _Unwind_Resume(a1);
}

void std::vector<QMINasCache>::emplace_back<int,std::shared_ptr<QMINasClient::create(dispatch::queue const&)::Wrapper> &>(QMINasCache **a1, int *a2, uint64_t a3)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3);
    if ((v7 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x1745D1745D1745DLL)
    {
      v10 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v10 = v9;
    }

    v27 = a1;
    if (v10)
    {
      if (v10 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 88 * v7;
    v23 = 0;
    v24 = 88 * v7;
    v12 = 0;
    v26 = 0;
    std::allocator_traits<std::allocator<QMINasCache>>::construct[abi:ne200100]<QMINasCache,int,std::shared_ptr<QMINasClient::create(dispatch::queue const&)::Wrapper> &,void,0>((88 * v7), *a2, *a3, *(a3 + 8));
    v13 = *a1;
    v14 = a1[1];
    v15 = v14 - *a1;
    v6 = (88 * v7 + 88);
    v25 = v6;
    if (v14 != v13)
    {
      v22 = v15;
      v16 = 0;
      v17 = 88 * v7 - 8 * ((v14 - v13) >> 3);
      do
      {
        v18 = v13 + v16;
        v19 = v17 + v16;
        v20 = *(v13 + v16 + 8);
        *v19 = *(v13 + v16);
        *(v19 + 8) = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
        }

        *(v19 + 16) = *(v18 + 4);
        std::map<nas::CallMediaType,QMINasCache::CallStatusRecord>::map[abi:ne200100]((v19 + 24), v18 + 3);
        std::map<nas::CallMediaType,QMINasCache::CallStatusRecord>::map[abi:ne200100]((v17 + v16 + 48), (v13 + v16 + 48));
        *(v17 + v16 + 72) = *(v18 + 72);
        v16 += 88;
      }

      while (v18 + 88 != v14);
      do
      {
        QMINasCache::~QMINasCache(v13);
        v13 = (v13 + 88);
      }

      while (v13 != v14);
      v13 = *a1;
      v6 = v25;
      v12 = v26;
      v15 = v22;
    }

    *a1 = (v11 - v15);
    a1[1] = v6;
    v21 = a1[2];
    a1[2] = v12;
    v25 = v13;
    v26 = v21;
    v23 = v13;
    v24 = v13;
    std::__split_buffer<QMINasCache>::~__split_buffer(&v23);
  }

  else
  {
    std::allocator_traits<std::allocator<QMINasCache>>::construct[abi:ne200100]<QMINasCache,int,std::shared_ptr<QMINasClient::create(dispatch::queue const&)::Wrapper> &,void,0>(a1[1], *a2, *a3, *(a3 + 8));
    v6 = (v5 + 88);
    a1[1] = (v5 + 88);
  }

  a1[1] = v6;
}

void QMINasClient::~QMINasClient(QMINasClient *this)
{
  *this = &unk_1F5EEECA0;
  *(this + 7) = &unk_1F5EEED40;
  *(this + 8) = &unk_1F5EEED80;
  qmi::ClientRouter::stop();
  v2 = *(this + 35);
  if (v2)
  {
    v3 = *(this + 36);
    v4 = *(this + 35);
    if (v3 != v2)
    {
      do
      {
        QMINasCache::~QMINasCache((v3 - 88));
      }

      while (v3 != v2);
      v4 = *(this + 35);
    }

    *(this + 36) = v2;
    operator delete(v4);
  }

  v5 = *(this + 34);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::string>::destroy(this + 240, *(this + 31));
  std::__tree<unsigned int>::destroy(this + 216, *(this + 28));
  std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::destroy(*(this + 25));
  v6 = *(this + 15);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  MEMORY[0x1E69225A0](this + 104);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 9);

  IMSNasClient::~IMSNasClient(this);
}

{
  QMINasClient::~QMINasClient(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toQMINasClient::~QMINasClient(QMINasClient *this)
{
  QMINasClient::~QMINasClient((this - 56));
}

{
  QMINasClient::~QMINasClient((this - 64));
}

{
  QMINasClient::~QMINasClient((this - 56));

  JUMPOUT(0x1E69235B0);
}

{
  QMINasClient::~QMINasClient((this - 64));

  JUMPOUT(0x1E69235B0);
}

void QMINasClient::bootstrap(std::__shared_weak_count **this, uint64_t a2, unsigned int a3)
{
  if (this[16])
  {
    if (*(this + 129) == 1)
    {
      QMINasClient::startListening(this, a3);
    }

    v6 = this[28];
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = this + 28;
    do
    {
      v8 = HIDWORD(v6[1].__vftable);
      v9 = v8 >= a3;
      v10 = v8 < a3;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(&v6->__vftable + v10);
    }

    while (v6);
    if (v7 != this + 28 && *(v7 + 7) <= a3)
    {
      v12 = this[2];
      if (v12)
      {
        v13 = std::__shared_weak_count::lock(v12);
        if (v13)
        {
          v14 = v13;
          v15 = this[1];
          if (v15)
          {
            (v15->__on_zero_shared)(v15, a2);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }
    }

    else
    {
LABEL_12:
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      v17 = a3;
      std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(this + 30, &__p, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v11 = (*this)[2].__vftable;

    v11();
  }
}

void QMINasClient::startListening(QMINasClient *this, int a2)
{
  memset(v6, 0, sizeof(v6));
  qmi::MutableMessageBase::MutableMessageBase(v6);
  *qmi::MutableMessageBase::getTLV<nas::tlv::RegSubscriptionInfo>(v6) = 1;
  *qmi::MutableMessageBase::getTLV<nas::tlv::RegMmtelRespInd>(v6) = 1;
  if (a2)
  {
    v4 = 2 * (a2 == 1);
  }

  else
  {
    v4 = 1;
  }

  qmi::ClientRouter::send<nas::IndicationRegister::Request>(&v5, this + 112, v4, v6);
}

void sub_1E509F190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  qmi::ClientRouter::SendProxy::~SendProxy(&a9);
  qmi::MutableMessageBase::~MutableMessageBase(&a11);
  _Unwind_Resume(a1);
}

uint64_t QMINasClient::initialize(std::string::size_type a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 128) == 1)
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(&v31, "qmi.nas");
    v25[0] = 0;
    v28 = 0;
    v4 = ims::debug(v3, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "already initialized", 19);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = a3;
    if (*(a1 + 129) == 1)
    {
      *(a1 + 128) = 1;
      (*(*a1 + 64))(a1, a2, a3);
    }

    else
    {
      v8 = std::string::basic_string[abi:ne200100]<0>(&v31, "qmi.nas");
      v21[0] = 0;
      v24 = 0;
      v9 = ims::debug(v8, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "initializing QMINasClient", 25);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      object = 0;
      ims::getQueue(&object);
      v19 = 3;
      v10 = *(a1 + 80);
      if (!v10 || (v11 = *(a1 + 72), (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v31.__r_.__value_.__r.__words[0] = v11;
      v31.__r_.__value_.__l.__size_ = v12;
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      IPTelephonyManager::getBBServerConnection(&v18);
      qmi::ClientRouter::addLocal<char const(&)[15],qmi::ServiceType,dispatch::queue &,char const(&)[4],std::weak_ptr<QMINasClient>,std::shared_ptr<BBServerConnection>>(a1 + 112, 1, "IMSNasClient.0", &v19, &object, &v31, &v18);
      if (*(&v18 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
      }

      if (v31.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_weak(v31.__r_.__value_.__l.__size_);
      }

      v19 = 3;
      v13 = *(a1 + 80);
      if (!v13 || (v14 = *(a1 + 72), (v15 = std::__shared_weak_count::lock(v13)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v31.__r_.__value_.__r.__words[0] = v14;
      v31.__r_.__value_.__l.__size_ = v15;
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      IPTelephonyManager::getBBServerConnection(&v18);
      qmi::ClientRouter::addLocal<char const(&)[15],qmi::ServiceType,dispatch::queue &,char const(&)[4],std::weak_ptr<QMINasClient>,std::shared_ptr<BBServerConnection>>(a1 + 112, 2, "IMSNasClient.1", &v19, &object, &v31, &v18);
      if (*(&v18 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
      }

      if (v31.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_weak(v31.__r_.__value_.__l.__size_);
      }

      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 8));
      }

      else
      {
        v31 = *a2;
      }

      LODWORD(v32) = v5;
      std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>((a1 + 240), &v31, &v31);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v30[0] = &unk_1F5EEF4A8;
      v30[1] = a1;
      v30[3] = v30;
      qmi::ClientRouter::setHandler();
      std::__function::__value_func<void ()(qmi::SubscriptionType)>::~__value_func[abi:ne200100](v30);
      v29[0] = &unk_1F5EEF5F8;
      v29[1] = a1;
      v29[3] = v29;
      qmi::ClientRouter::setHandler();
      std::__function::__value_func<void ()(qmi::SubscriptionType)>::~__value_func[abi:ne200100](v29);
      v31.__r_.__value_.__r.__words[0] = &unk_1F5EEF678;
      v31.__r_.__value_.__l.__size_ = a1;
      v32 = &v31;
      qmi::ClientRouter::setIndHandlerInternal();
      std::__function::__value_func<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>::~__value_func[abi:ne200100](&v31);
      v31.__r_.__value_.__r.__words[0] = &unk_1F5EEF6F8;
      v31.__r_.__value_.__l.__size_ = a1;
      v32 = &v31;
      qmi::ClientRouter::setIndHandlerInternal();
      std::__function::__value_func<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>::~__value_func[abi:ne200100](&v31);
      v31.__r_.__value_.__r.__words[0] = &unk_1F5EEF778;
      v31.__r_.__value_.__l.__size_ = a1;
      v32 = &v31;
      qmi::ClientRouter::setIndHandlerInternal();
      v16 = std::__function::__value_func<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>::~__value_func[abi:ne200100](&v31);
      if (capabilities::radio::supportsRel16(v16))
      {
        v31.__r_.__value_.__r.__words[0] = &unk_1F5EEF7F8;
        v31.__r_.__value_.__l.__size_ = a1;
        v32 = &v31;
        qmi::ClientRouter::setIndHandlerInternal();
        std::__function::__value_func<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>::~__value_func[abi:ne200100](&v31);
        v31.__r_.__value_.__r.__words[0] = &unk_1F5EEF878;
        v31.__r_.__value_.__l.__size_ = a1;
        v32 = &v31;
        qmi::ClientRouter::setIndHandlerInternal();
        std::__function::__value_func<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>::~__value_func[abi:ne200100](&v31);
      }

      qmi::ClientRouter::setIndShouldWake((a1 + 112));
      qmi::ClientRouter::setIndShouldWake((a1 + 112));
      qmi::ClientRouter::setIndShouldWake((a1 + 112));
      qmi::ClientRouter::start();
      *(a1 + 128) = 1;
      if (object)
      {
        dispatch_release(object);
      }
    }
  }

  return 1;
}

void sub_1E509F72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void qmi::ClientRouter::addLocal<char const(&)[15],qmi::ServiceType,dispatch::queue &,char const(&)[4],std::weak_ptr<QMINasClient>,std::shared_ptr<BBServerConnection>>(uint64_t a1, uint64_t a2, char *__s, unsigned __int8 *a4, NSObject **a5, uint64_t *a6, __int128 *a7)
{
  v27 = 0u;
  v28 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v25, __s);
  v10 = *a5;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ims");
  v20 = 0;
  v21 = 0;
  v11 = a6[1];
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = v12;
      v14 = *a6;
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v20 = v14;
      v21 = v12;
      v15 = a6[1];
      *a6 = 0;
      a6[1] = 0;
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v16 = a6[1];
      *a6 = 0;
      a6[1] = 0;
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }
    }
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
  }

  v19 = *a7;
  *a7 = 0;
  *(a7 + 1) = 0;
  qmi::Client::createWithQueueLocal();
  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = v28;
  v28 = 0uLL;
  qmi::ClientRouter::addClient();
  qmi::Client::~Client(v17);
  qmi::ClientRouter::get();
  qmi::Client::~Client(&v27);
}

void QMINasClient::stopListening(QMINasClient *this, unsigned int a2, char a3)
{
  v19 = a2;
  v5 = this + 200;
  v6 = *(this + 25);
  if (v6)
  {
    v7 = (this + 192);
    v8 = v5;
    do
    {
      v9 = *(v6 + 8);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *&v6[8 * v11];
    }

    while (v6);
    if (v8 != v5 && *(v8 + 8) <= a2)
    {
      v20 = &v19;
      v13 = std::__tree<std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,QMINasClient::BarringHandler>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, a2, &v20);
      v14 = v13[6];
      v15 = v13[7];
      while (v14 != v15)
      {
        v16 = *v14++;
        QMINasClient::AccessBarringHandler::listenForIndication(v16, v19, 0);
      }
    }
  }

  if ((a3 & 1) == 0)
  {
    memset(v18, 0, sizeof(v18));
    qmi::MutableMessageBase::MutableMessageBase(v18);
    *qmi::MutableMessageBase::getTLV<nas::tlv::RegSubscriptionInfo>(v18) = 0;
    *qmi::MutableMessageBase::getTLV<nas::tlv::RegMmtelRespInd>(v18) = 0;
    if (v19)
    {
      v12 = 2 * (v19 == 1);
    }

    else
    {
      v12 = 1;
    }

    qmi::ClientRouter::send<nas::IndicationRegister::Request>(&v17, this + 112, v12, v18);
  }
}

void sub_1E509FC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  qmi::ClientRouter::SendProxy::~SendProxy(&a9);
  qmi::MutableMessageBase::~MutableMessageBase(&a11);
  _Unwind_Resume(a1);
}

void QMINasClient::deinitialize(QMINasClient *this)
{
  if (*(this + 128) == 1)
  {
    v2 = *(this + 24);
    v3 = this + 200;
    if (v2 != this + 200)
    {
      do
      {
        v9 = 0;
        *__p = 0u;
        v7 = *(v2 + 8);
        __p[0] = 0;
        __p[1] = 0;
        v9 = 0;
        std::vector<QMINasClient::AccessBarringHandler *>::__init_with_size[abi:ne200100]<QMINasClient::AccessBarringHandler **,QMINasClient::AccessBarringHandler **>(__p, *(v2 + 6), *(v2 + 7), (*(v2 + 7) - *(v2 + 6)) >> 3);
        QMINasClient::stopListening(this, v7, 0);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v4 = *(v2 + 1);
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = *(v2 + 2);
            v6 = *v5 == v2;
            v2 = v5;
          }

          while (!v6);
        }

        v2 = v5;
      }

      while (v5 != v3);
    }

    *(this + 128) = 0;
  }
}

void sub_1E509FDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **QMINasClient::setAccessBarringType(QMINasClient *this, unsigned int a2, int a3)
{
  v55 = a2;
  v6 = *(this + 25);
  v7 = (this + 192);
  if (!v6)
  {
LABEL_14:
    operator new();
  }

  v8 = (this + 200);
  v9 = *(this + 25);
  do
  {
    v10 = v9[8];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v8 = v9;
    }

    v9 = *&v9[2 * v12];
  }

  while (v9);
  if (v8 == (this + 200) || v8[8] > a2)
  {
    while (1)
    {
      while (1)
      {
        v13 = v6;
        v14 = *(v6 + 32);
        if (v14 <= a2)
        {
          break;
        }

        v6 = *v13;
        if (!*v13)
        {
          goto LABEL_14;
        }
      }

      if (v14 >= a2)
      {
        break;
      }

      v6 = v13[1];
      if (!v6)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    QMINasClient::stopListening(this, a2, 1);
  }

  __p[0] = &v55;
  v15 = std::__tree<std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,QMINasClient::BarringHandler>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, a2, __p);
  v15[7] = v15[6];
  if ((a3 & 2) != 0)
  {
    if (a3)
    {
      __p[0] = &v55;
      v18 = std::__tree<std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,QMINasClient::BarringHandler>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, v55, __p);
      QMINasClient::BarringHandler::push_back(v18 + 5, this + 136);
    }

    __p[0] = &v55;
    v16 = std::__tree<std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,QMINasClient::BarringHandler>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, v55, __p) + 5;
    v17 = this + 160;
LABEL_23:
    QMINasClient::BarringHandler::push_back(v16, v17);
    goto LABEL_24;
  }

  if (a3)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_24;
    }

    __p[0] = &v55;
    v16 = std::__tree<std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,QMINasClient::BarringHandler>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, v55, __p) + 5;
    v17 = this + 136;
    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "qmi.nas");
  v51[0] = 0;
  v54 = 0;
  v33 = ims::debug(__p, v51);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "barring disabled for instance ", 30);
  *(v33 + 17) = 0;
  MEMORY[0x1E6923350](*(v33 + 8), v55);
  *(v33 + 17) = 0;
  (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v33 + 17) = 0;
  if (v54 == 1 && v53 < 0)
  {
    operator delete(v52);
  }

  if (SBYTE7(v43) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_24:
  __p[0] = &v55;
  result = std::__tree<std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,QMINasClient::BarringHandler>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, v55, __p);
  if (result[6] == result[7])
  {
    return result;
  }

  v50 = 0;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  __src = 0u;
  *__p = 0u;
  v43 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v40[0] = &v55;
  v20 = std::__tree<std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,QMINasClient::BarringHandler>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, v55, v40);
  v21 = v20[6];
  for (i = v20[7]; v21 != i; ++v21)
  {
    v23 = *v21;
    v24 = (*(**v21 + 32))(*v21);
    v25 = *(v24 + 23);
    if (v25 >= 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = *v24;
    }

    if (v25 >= 0)
    {
      v27 = *(v24 + 23);
    }

    else
    {
      v27 = *(v24 + 8);
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v26, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
    QMINasClient::AccessBarringHandler::listenForIndication(v23, v55, 1);
  }

  std::string::basic_string[abi:ne200100]<0>(v40, "qmi.nas");
  v36[0] = 0;
  v39 = 0;
  v29 = ims::debug(v40, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "set Access Barring type to ", 27);
  *(v29 + 17) = 0;
  if ((BYTE8(v48) & 0x10) != 0)
  {
    v31 = v48;
    if (v48 < *(&__src + 1))
    {
      *&v48 = *(&__src + 1);
      v31 = *(&__src + 1);
    }

    v32 = __src;
    goto LABEL_45;
  }

  if ((BYTE8(v48) & 8) != 0)
  {
    v32 = *(&v43 + 1);
    v31 = *(&v44 + 1);
LABEL_45:
    v30 = v31 - v32;
    if ((v31 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v30 >= 0x17)
    {
      operator new();
    }

    v35 = v31 - v32;
    if (v30)
    {
      memmove(&__dst, v32, v30);
    }

    goto LABEL_51;
  }

  v30 = 0;
  v35 = 0;
LABEL_51:
  *(&__dst + v30) = 0;
  (*(*v29 + 32))(v29, &__dst);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), " on instance ", 13);
  *(v29 + 17) = 0;
  MEMORY[0x1E6923350](*(v29 + 8), v55);
  *(v29 + 17) = 0;
  (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v29 + 17) = 0;
  if (v35 < 0)
  {
    operator delete(__dst);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  __p[0] = *MEMORY[0x1E69E54E8];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  __p[1] = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(*(&v46 + 1));
  }

  __p[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v43);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v49);
}

void sub_1E50A0404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::ostringstream::~ostringstream(&a32, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a49);
  _Unwind_Resume(a1);
}

void QMINasClient::BarringHandler::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    v6 = a1[1];
    v7 = (v4 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v6;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipConferenceEndpoint *>>(v10);
    }

    v11 = (8 * v7);
    *v11 = a2;
    v5 = 8 * v7 + 8;
    v12 = a1[1];
    v13 = a1[2] - v12;
    v14 = v11 - v13;
    memcpy(v11 - v13, v12, v13);
    v15 = a1[1];
    a1[1] = v14;
    a1[2] = v5;
    a1[3] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  a1[2] = v5;
}

void QMINasClient::requestCurrentBarringInfo(QMINasClient *this)
{
  if (*(this + 128))
  {
    v1 = *(this + 24);
    v2 = this + 200;
    if (v1 != this + 200)
    {
      do
      {
        v13 = 0;
        *v11 = 0u;
        v12 = 0u;
        v3 = *(v1 + 10);
        LODWORD(v11[0]) = *(v1 + 8);
        LODWORD(v11[1]) = v3;
        v12 = 0uLL;
        v13 = 0;
        std::vector<QMINasClient::AccessBarringHandler *>::__init_with_size[abi:ne200100]<QMINasClient::AccessBarringHandler **,QMINasClient::AccessBarringHandler **>(&v12, *(v1 + 6), *(v1 + 7), (*(v1 + 7) - *(v1 + 6)) >> 3);
        v4 = *(&v12 + 1);
        v5 = v12;
        if (v12 != *(&v12 + 1))
        {
          v6 = v12;
          do
          {
            (*(**v6 + 40))(*v6, LODWORD(v11[0]));
            ++v6;
          }

          while (v6 != v4);
        }

        if (v5)
        {
          operator delete(v5);
        }

        v7 = *(v1 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v1 + 2);
            v9 = *v8 == v1;
            v1 = v8;
          }

          while (!v9);
        }

        v1 = v8;
      }

      while (v8 != v2);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "qmi.nas");
    v14[0] = 0;
    v17 = 0;
    v10 = ims::debug(v11, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Client not initialized, can't get barring info", 46);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }
}
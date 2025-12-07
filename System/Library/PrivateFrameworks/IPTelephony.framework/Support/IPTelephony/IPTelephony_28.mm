void sub_1E4E326A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::resetTransportErrors(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 232);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 224))(__p, a1);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    *buf = 141558531;
    v10 = 1752392040;
    v11 = 2081;
    v12 = v5;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sresetting transport errors on %s", buf, 0x20u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 2048) = 0;
}

void SipTransportLayer::cancelTransportInit(SipTransportLayer *this)
{
  v2 = *(this + 46);
  *(this + 45) = 0;
  *(this + 46) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *(this + 266) = 0;
  SipTimerContainer::cancelAllTimers((this + 896));
  v3 = NetworkInterfaceMonotorManager::_instance;
  if (!NetworkInterfaceMonotorManager::_instance)
  {
    operator new();
  }

  NetworkInterfaceMonotorManager::stopMonitoring(v3, this + 134);
}

void SipTransportLayer::localClientAddress(SipTransportLayer *this, void *a2)
{
  v3 = a2[138];
  if (v3)
  {
    v4 = *(*v3 + 168);

    v4();
    return;
  }

  v6 = a2[2];
  if (!v6 || (v7 = std::__shared_weak_count::lock(v6)) == 0)
  {
LABEL_11:
    *this = 0;
    *(this + 1) = 0;
    return;
  }

  v8 = v7;
  v9 = a2[1];
  if (!v9 || !a2[144] || (v10 = SipStack::prefs(v9), ImsPrefs::AlwaysUseDefaultTransport(v10)))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    goto LABEL_11;
  }

  (*(*a2[144] + 168))(a2[144]);

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void SipTransportLayer::initializeTransportToProxy(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v224 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (!v6 || (v206 = std::__shared_weak_count::lock(v6)) == 0)
  {
    v206 = 0;
    goto LABEL_11;
  }

  v204 = *(a1 + 8);
  if (!v204)
  {
LABEL_11:
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v217.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v217.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v217.__r_.__value_.__r.__words[2]) = 1073741826;
    v23 = ImsResult::operator<<<char [12]>(&v217, "no sipstack");
    ImsResult::ImsResult(a5, v23);
    goto LABEL_12;
  }

  v198 = a3;
  v199 = a2;
  v200 = a4;
  if ((a1 + 2080) == a2)
  {
    goto LABEL_97;
  }

  v10 = a2[4];
  v11 = (v10 >> 1) & 0x7FFFFFFFFFFFFFF8;
  v12 = a2[1];
  v13 = (v12 + v11);
  if (a2[2] == v12)
  {
    v14 = 0;
    v24 = 0;
LABEL_15:
    v17 = 0;
    v202 = (a1 + 2120);
    goto LABEL_17;
  }

  v14 = *v13 + 408 * (a2[4] & 0xFLL);
  v15 = a2[5] + v10;
  v16 = (v15 >> 1) & 0x7FFFFFFFFFFFFFF8;
  if (*(v12 + v16) + 408 * (v15 & 0xF) == v14)
  {
    v24 = *v13 + 408 * (a2[4] & 0xFLL);
    goto LABEL_15;
  }

  v17 = (v15 & 0xF) - (a2[4] & 0xFLL) + 2 * (v16 - v11);
  v202 = (a1 + 2120);
  v18 = *(a1 + 2120);
  if (v18 < v17)
  {
    v217.__r_.__value_.__r.__words[0] = v12 + v11;
    v217.__r_.__value_.__l.__size_ = v14;
    std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](&v217, v18);
    size = v217.__r_.__value_.__l.__size_;
    v19 = v217.__r_.__value_.__r.__words[0];
    v21 = *(a1 + 2088);
    if (*(a1 + 2096) == v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v21 + 8 * (*(a1 + 2112) >> 4)) + 408 * (*(a1 + 2112) & 0xFLL);
    }

    v217.__r_.__value_.__r.__words[0] = v21 + 8 * (*(a1 + 2112) >> 4);
    v217.__r_.__value_.__l.__size_ = v22;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__copy_impl::_CopySegment<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>>>(v13, v14, v19, size, &v217);
    v46 = *(a1 + 2096);
    v47 = *(a1 + 2088);
    v48 = v46 - v47;
    v49 = *(a1 + 2120);
    if (v46 == v47)
    {
      v50 = 0;
    }

    else
    {
      v50 = 2 * (v46 - v47) - 1;
    }

    i = v17 - v49;
    v52 = *(a1 + 2112);
    v53 = v52 + v49;
    v54 = v50 - (v52 + v49);
    v55 = v17 - v49 >= v54;
    v56 = v17 - v49 - v54;
    if (v56 != 0 && v55)
    {
      v197 = v17 - v49;
      if (v46 == v47)
      {
        v57 = v56 + 1;
      }

      else
      {
        v57 = v56;
      }

      if ((v57 & 0xF) != 0)
      {
        v58 = (v57 >> 4) + 1;
      }

      else
      {
        v58 = v57 >> 4;
      }

      if (v58 >= v52 >> 4)
      {
        v59 = v52 >> 4;
      }

      else
      {
        v59 = v58;
      }

      if (v58 <= v52 >> 4)
      {
        *(a1 + 2112) = v52 - 16 * v59;
        i = v197;
        if (v59)
        {
          v64 = -v59;
          do
          {
            v65 = *(a1 + 2088);
            v217.__r_.__value_.__r.__words[0] = *v65;
            *(a1 + 2088) = v65 + 1;
            std::__split_buffer<SipUri *>::emplace_back<SipUri *&>((a1 + 2080), &v217);
            v55 = __CFADD__(v64++, 1);
          }

          while (!v55);
        }
      }

      else
      {
        v60 = v58 - v59;
        v61 = *(a1 + 2104) - *(a1 + 2080);
        if (v58 - v59 > (v61 >> 3) - (v48 >> 3))
        {
          v62 = v61 >> 2;
          if (v62 <= v60 + (v48 >> 3))
          {
            v63 = v60 + (v48 >> 3);
          }

          else
          {
            v63 = v62;
          }

          *(&v218 + 1) = a1 + 2080;
          if (v63)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1 + 2080, v63);
          }

          v217.__r_.__value_.__r.__words[0] = 0;
          v217.__r_.__value_.__l.__size_ = 8 * ((v48 >> 3) - v59);
          v217.__r_.__value_.__r.__words[2] = v217.__r_.__value_.__l.__size_;
          *&v218 = 0;
          operator new();
        }

        if (v60)
        {
          if (*(a1 + 2104) != *(a1 + 2096))
          {
            operator new();
          }

          operator new();
        }

        *(a1 + 2112) = v52 - 16 * v59;
        for (i = v197; v59; --v59)
        {
          v66 = *(a1 + 2088);
          v217.__r_.__value_.__r.__words[0] = *v66;
          *(a1 + 2088) = v66 + 1;
          std::__split_buffer<SipUri *>::emplace_back<SipUri *&>((a1 + 2080), &v217);
        }
      }

      v49 = *(a1 + 2120);
      v47 = *(a1 + 2088);
      v46 = *(a1 + 2096);
      v53 = *(a1 + 2112) + v49;
    }

    v67 = (v47 + 8 * (v53 >> 4));
    if (v46 == v47)
    {
      v68 = 0;
      v69 = 0;
    }

    else
    {
      v68 = *v67 + 408 * (v53 & 0xF);
      v69 = v68;
    }

    v217.__r_.__value_.__r.__words[0] = v67;
    v217.__r_.__value_.__l.__size_ = v69;
    std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](&v217, i);
    v70 = v217.__r_.__value_.__l.__size_;
    if (v68 != v217.__r_.__value_.__l.__size_)
    {
      v71 = v217.__r_.__value_.__r.__words[0];
      do
      {
        if (v67 == v71)
        {
          v72 = v70;
        }

        else
        {
          v72 = *v67 + 6528;
        }

        if (v68 == v72)
        {
          v72 = v68;
          v77 = (a1 + 2120);
        }

        else
        {
          v73 = 0;
          v74 = v68;
          do
          {
            SipUri::SipUri(v74, size);
            size = (size + 408);
            if ((size - *v19) == 6528)
            {
              v76 = v19[1];
              ++v19;
              size = v76;
            }

            v74 = (v75 + 408);
            v73 -= 408;
          }

          while (v74 != v72);
          v77 = (a1 + 2120);
          v49 = *v202;
        }

        v49 -= 0x505050505050505 * ((v72 - v68) >> 3);
        *v77 = v49;
        if (v67 == v71)
        {
          break;
        }

        v78 = v67[1];
        ++v67;
        v68 = v78;
      }

      while (v78 != v70);
    }

    goto LABEL_97;
  }

  v24 = *v13 + 408 * (a2[4] & 0xFLL);
LABEL_17:
  v25 = *(a1 + 2088);
  v26 = (v25 + 8 * (*(a1 + 2112) >> 4));
  if (*(a1 + 2096) == v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = *v26 + 408 * (*(a1 + 2112) & 0xFLL);
  }

  v217.__r_.__value_.__r.__words[0] = v13;
  v217.__r_.__value_.__l.__size_ = v24;
  std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](&v217, v17);
  v28 = *&v217.__r_.__value_.__l.__data_;
  v217.__r_.__value_.__r.__words[0] = v26;
  v217.__r_.__value_.__l.__size_ = v27;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__copy_impl::_CopySegment<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>>>(v13, v14, v28, *(&v28 + 1), &v217);
  v29 = *(a1 + 2120);
  v30 = *(a1 + 2112);
  v31 = *(a1 + 2088);
  v32 = (v31 + 8 * ((v30 + v29) >> 4));
  v33 = *(a1 + 2096);
  if (v33 == v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = *v32 + 408 * ((v30 + v29) & 0xF);
  }

  if (v34 != v217.__r_.__value_.__l.__size_)
  {
    v35 = (v217.__r_.__value_.__l.__size_ - *v217.__r_.__value_.__l.__data_) >> 3;
    v36 = 0xFAFAFAFAFAFAFAFBLL * ((v34 - *v32) >> 3) + 2 * (v32 - v217.__r_.__value_.__r.__words[0]) + 0x505050505050505 * v35;
    if (v36 >= 1)
    {
      v37 = (v31 + 8 * (v30 >> 4));
      if (v33 == v31)
      {
        v38 = 0;
      }

      else
      {
        v38 = *v37 + 408 * (*(a1 + 2112) & 0xFLL);
      }

      if (v217.__r_.__value_.__l.__size_ == v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = 0xFAFAFAFAFAFAFAFBLL * v35 + 2 * (v217.__r_.__value_.__r.__words[0] - v37) + 0x505050505050505 * ((v38 - *v37) >> 3);
      }

      v217.__r_.__value_.__r.__words[0] = v31 + 8 * (v30 >> 4);
      v217.__r_.__value_.__l.__size_ = v38;
      std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](&v217, v39);
      v40 = v217.__r_.__value_.__l.__size_;
      if (v217.__r_.__value_.__l.__size_ != v34)
      {
        v41 = v217.__r_.__value_.__r.__words[0];
        do
        {
          (**v40)(v40);
          v40 += 51;
          if ((v40 - *v41) == 6528)
          {
            v42 = v41[1];
            ++v41;
            v40 = v42;
          }
        }

        while (v40 != v34);
        v29 = *(a1 + 2120);
        v33 = *(a1 + 2096);
        v31 = *(a1 + 2088);
        v30 = *(a1 + 2112);
      }

      v43 = 2 * (v33 - v31) - 1;
      if (v33 == v31)
      {
        v43 = 0;
      }

      *v202 = v29 - v36;
      if (v43 - (v29 - v36 + v30) >= 0x20)
      {
        do
        {
          operator delete(*(v33 - 8));
          v33 = *(a1 + 2096) - 8;
          v44 = *(a1 + 2088);
          *(a1 + 2096) = v33;
          if (v33 == v44)
          {
            v45 = 0;
          }

          else
          {
            v45 = 2 * (v33 - v44) - 1;
          }
        }

        while ((v45 - (*(a1 + 2120) + *(a1 + 2112))) > 0x1F);
      }
    }
  }

LABEL_97:
  SipTransportLayer::localClientAddress(&v217, a1);
  v79 = v217.__r_.__value_.__r.__words[0];
  if (v217.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v217.__r_.__value_.__l.__size_);
  }

  if (!v79)
  {
    v95 = *(a1 + 232);
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_224;
    }

    (*(*a1 + 224))(&v217, a1);
    if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v96 = &v217;
    }

    else
    {
      v96 = v217.__r_.__value_.__r.__words[0];
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v96;
    v97 = "%{private, mask.hash}sno existing usable transport";
    goto LABEL_140;
  }

  memset(&v217, 0, sizeof(v217));
  v80 = *(a1 + 1176);
  if (v80)
  {
    std::string::operator=(&v217, (v80 + 32));
  }

  else
  {
    v98 = *(a1 + 16);
    if (v98)
    {
      v99 = std::__shared_weak_count::lock(v98);
      if (v99)
      {
        v100 = v99;
        v101 = *(a1 + 8);
        if (v101)
        {
          v102 = *(v101 + 1751);
          if (v102 < 0)
          {
            v102 = *(v101 + 1736);
          }

          if (v102)
          {
            std::string::operator=(&v217, (v101 + 1728));
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v100);
      }
    }
  }

  v81 = HIBYTE(v217.__r_.__value_.__r.__words[2]);
  if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v81 = v217.__r_.__value_.__l.__size_;
  }

  if (v81)
  {
    IPTelephonyManager::getBambiClient(buf);
    v82 = *(*buf + 680);
    v83 = *(*buf + 688);
    if (v83)
    {
      atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = (*(*v82 + 40))(v82, &v217);
    SipTransportLayer::setInterface(a1, v84);
    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v85 = *(a1 + 1176) != 0;
    if ((*(&v217.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_112:
      if (v85)
      {
        goto LABEL_113;
      }

      goto LABEL_135;
    }
  }

  else
  {
    v85 = 0;
    if ((*(&v217.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_112;
    }
  }

  operator delete(v217.__r_.__value_.__l.__data_);
  if (!v85)
  {
LABEL_135:
    v95 = *(a1 + 232);
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_224;
    }

    (*(*a1 + 224))(&v217, a1);
    if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = &v217;
    }

    else
    {
      v103 = v217.__r_.__value_.__r.__words[0];
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v103;
    v97 = "%{private, mask.hash}sno existing network interface";
LABEL_140:
    _os_log_impl(&dword_1E4C3F000, v95, OS_LOG_TYPE_DEFAULT, v97, buf, 0x16u);
    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }

    goto LABEL_224;
  }

LABEL_113:
  v86 = *(a1 + 1176);
  SipTransportLayer::localClientAddress(&v217, a1);
  v87 = *(v86 + 8);
  v88 = *(v86 + 16);
  if (v87 == v88)
  {
    v93 = 0;
    v91 = v198;
    v90 = v199;
  }

  else
  {
    v89 = v87 + 16;
    v91 = v198;
    v90 = v199;
    do
    {
      v92 = (*(**(v89 - 16) + 104))(*(v89 - 16), &v217, 0);
      v93 = v92;
      if (v89 == v88)
      {
        v94 = 1;
      }

      else
      {
        v94 = v92;
      }

      v89 += 16;
    }

    while (v94 != 1);
  }

  if (v217.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v217.__r_.__value_.__l.__size_);
  }

  if ((v93 & 1) == 0)
  {
    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(buf, a1);
      SipTransportLayer::localClientAddress(&v213, a1);
      IpAddress::asString(&__p, v213.__r_.__value_.__l.__data_, 0);
    }

    goto LABEL_224;
  }

  v104 = v90[5];
  if (v104 <= v91 || (v105 = v90[1], v90[2] == v105) || (v106 = v90[4], v107 = (v105 + 8 * (v106 >> 4)), v108 = *v107, v109 = (*v107 + 408 * (v106 & 0xF)), v110 = *(v105 + (((v106 + v104) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((v106 + v104) & 0xF), v109 == v110))
  {
LABEL_155:
    v112 = *(a1 + 2088);
    if (*(a1 + 2096) == v112)
    {
      goto LABEL_193;
    }

    v113 = *(a1 + 2112);
    v114 = (v112 + 8 * (v113 >> 4));
    v115 = *v114 + 408 * (v113 & 0xF);
    v116 = *(v112 + (((*(a1 + 2120) + v113) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a1 + 2120) + v113) & 0xF);
    if (v115 == v116)
    {
      goto LABEL_193;
    }

    while (1)
    {
      memset(&v217, 0, sizeof(v217));
      (*(*v115 + 48))(buf, v115);
      v117 = (*(**buf + 152))(*buf);
      if (*(v117 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v217, *v117, *(v117 + 8));
      }

      else
      {
        v118 = *v117;
        v217.__r_.__value_.__r.__words[2] = *(v117 + 16);
        *&v217.__r_.__value_.__l.__data_ = v118;
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      v119 = HIBYTE(v217.__r_.__value_.__r.__words[2]);
      if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v119 = v217.__r_.__value_.__l.__size_;
      }

      if (v119)
      {
        break;
      }

      v126 = 0;
      if ((*(&v217.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_188;
      }

LABEL_189:
      if (v126)
      {
        goto LABEL_224;
      }

      v115 += 408;
      if (v115 - *v114 == 6528)
      {
        v127 = v114[1];
        ++v114;
        v115 = v127;
      }

      if (v115 == v116)
      {
        goto LABEL_193;
      }
    }

    SipTransportLayer::localClientAddress(buf, a1);
    if (*buf)
    {
      SipTransportLayer::localClientAddress(&__p, a1);
      v120 = (*(*__p + 152))(__p);
      if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = HIBYTE(v217.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v121 = v217.__r_.__value_.__l.__size_;
      }

      v122 = *(v120 + 23);
      v123 = v122;
      if ((v122 & 0x80u) != 0)
      {
        v122 = *(v120 + 8);
      }

      if (v121 == v122)
      {
        if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v124 = &v217;
        }

        else
        {
          v124 = v217.__r_.__value_.__r.__words[0];
        }

        if (v123 >= 0)
        {
          v125 = v120;
        }

        else
        {
          v125 = *v120;
        }

        v126 = memcmp(v124, v125, v121) != 0;
      }

      else
      {
        v126 = 1;
      }

      if (v215)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v215);
      }
    }

    else
    {
      v126 = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if ((*(&v217.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_189;
    }

LABEL_188:
    operator delete(v217.__r_.__value_.__l.__data_);
    goto LABEL_189;
  }

  while (v91)
  {
LABEL_152:
    v109 = (v109 + 408);
    if (v109 - v108 == 6528)
    {
      v111 = v107[1];
      ++v107;
      v108 = v111;
      v109 = v111;
    }

    --v91;
    if (v109 == v110)
    {
      goto LABEL_155;
    }
  }

  if ((SipUri::equals((a1 + 376), v109, 1) & 1) == 0)
  {
    v108 = *v107;
    goto LABEL_152;
  }

  if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 224))(buf, a1);
    SipHop::logStr();
  }

LABEL_193:
  v128 = *(a1 + 2088);
  if (*(a1 + 2096) == v128 || (v129 = *(a1 + 2112), v130 = (v128 + 8 * (v129 >> 4)), v131 = (*v130 + 408 * (v129 & 0xF)), v132 = *(v128 + (((*(a1 + 2120) + v129) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a1 + 2120) + v129) & 0xF), v131 == v132))
  {
LABEL_224:
    v141 = *(a1 + 232);
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(&v217, a1);
      v142 = (v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v217 : v217.__r_.__value_.__r.__words[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v142;
      _os_log_impl(&dword_1E4C3F000, v141, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sDesired proxies cannot be reached by the existing transport.  Transport will be initialized.", buf, 0x16u);
      if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v217.__r_.__value_.__l.__data_);
      }
    }

    SipTransportLayer::closeTransports(a1);
    SipTransportLayer::cancelTransportInit(a1);
    v143 = *(a1 + 208);
    if (!v143 || (v144 = std::__shared_weak_count::lock(v143)) == 0)
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v145 = v144;
    p_shared_weak_owners = &v144->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v144->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v144);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (*(v204 + 2304))
    {
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v216 = 0;
      operator new();
    }

    v148 = *v200;
    v147 = v200[1];
    if (v147)
    {
      atomic_fetch_add_explicit((v147 + 16), 1uLL, memory_order_relaxed);
    }

    v149 = *(a1 + 368);
    *(a1 + 360) = v148;
    *(a1 + 368) = v147;
    if (v149)
    {
      std::__shared_weak_count::__release_weak(v149);
    }

    *(a1 + 1064) = 0;
    memset(&v208, 0, sizeof(v208));
    if (*(v204 + 1751) < 0)
    {
      std::string::__init_copy_ctor_external(&v208, *(v204 + 1728), *(v204 + 1736));
    }

    else
    {
      v208 = *(v204 + 1728);
    }

    v150 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
    LOBYTE(v151) = *(&v208.__r_.__value_.__s + 23);
    v152 = v208.__r_.__value_.__l.__size_;
    if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v153 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v153 = v208.__r_.__value_.__l.__size_;
    }

    if (!v153)
    {
      v154 = *(a1 + 232);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(&v217, a1);
        v155 = (v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v217 : v217.__r_.__value_.__r.__words[0];
        *buf = 141558275;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v155;
        _os_log_impl(&dword_1E4C3F000, v154, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno local interface specified.  I'll pick one.", buf, 0x16u);
        if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v217.__r_.__value_.__l.__data_);
        }
      }

      memset(&v213, 0, sizeof(v213));
      v210 = 0;
      v211 = 0;
      v212 = 0;
      IPTelephonyManager::getBambiClient(buf);
      v156 = *(*buf + 680);
      v157 = *(*buf + 688);
      if (v157)
      {
        atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v156 + 32))(&v217);
      v158 = (*(*v217.__r_.__value_.__l.__size_ + 24))(v217.__r_.__value_.__l.__size_, LODWORD(v217.__r_.__value_.__r.__words[2]));
      ImsResult::~ImsResult(&v217);
      if (v157)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v157);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      if (v158)
      {
        v159 = *(a1 + 232);
        if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
        {
          (*(*a1 + 224))(&v217, a1);
          v195 = (v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v217 : v217.__r_.__value_.__r.__words[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v195;
          _os_log_error_impl(&dword_1E4C3F000, v159, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo network interfaces available", buf, 0x16u);
          if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v217.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v207, "");
      }

      else
      {
        v160 = v210;
        v201 = v145;
        v203 = v211;
        if (v210 != v211)
        {
          while (1)
          {
            v161 = *(a1 + 2088);
            if (*(a1 + 2096) != v161)
            {
              v162 = *(a1 + 2112);
              v163 = (v161 + 8 * (v162 >> 4));
              v164 = *v163 + 408 * (v162 & 0xF);
              v165 = *(v161 + (((*(a1 + 2120) + v162) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a1 + 2120) + v162) & 0xF);
              if (v164 != v165)
              {
                break;
              }
            }

LABEL_278:
            if (++v160 == v203)
            {
              goto LABEL_283;
            }
          }

          v166 = *v160;
          v167 = (*v160 + 32);
          while (1)
          {
            IPTelephonyManager::getBambiClient(&v217);
            v168 = *(v217.__r_.__value_.__r.__words[0] + 680);
            v169 = *(v217.__r_.__value_.__r.__words[0] + 688);
            if (v169)
            {
              atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v164 + 48))(buf, v164);
            v170 = (*(*v168 + 64))(v168, v166, buf);
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            if (v169)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v169);
            }

            if (v217.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v217.__r_.__value_.__l.__size_);
            }

            v171 = os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT);
            if (v170)
            {
              break;
            }

            if (v171)
            {
              (*(*a1 + 224))(buf, a1);
              SipHop::logStr();
            }

            v164 += 408;
            if (v164 - *v163 == 6528)
            {
              v172 = v163[1];
              ++v163;
              v164 = v172;
            }

            if (v164 == v165)
            {
              goto LABEL_278;
            }
          }

          if (v171)
          {
            (*(*a1 + 224))(buf, a1);
            SipHop::logStr();
          }

          std::string::operator=(&v213, v167);
          SipUri::operator=((a1 + 376), v164);
        }

LABEL_283:
        v173 = v210;
        v174 = v211;
        v145 = v201;
        if (v210 != v211)
        {
          do
          {
            if (*v173)
            {
              (*(**v173 + 8))(*v173);
            }

            ++v173;
          }

          while (v173 != v174);
        }

        v175 = HIBYTE(v213.__r_.__value_.__r.__words[2]);
        if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v175 = v213.__r_.__value_.__l.__size_;
        }

        if (!v175)
        {
          v176 = *(a1 + 232);
          if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
          {
            (*(*a1 + 224))(&v217, a1);
            v196 = (v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v217 : v217.__r_.__value_.__r.__words[0];
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v196;
            _os_log_error_impl(&dword_1E4C3F000, v176, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}scan't find a suitable local address for proxies in list", buf, 0x16u);
            if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v217.__r_.__value_.__l.__data_);
            }
          }
        }

        v207 = v213;
        memset(&v213, 0, sizeof(v213));
      }

      if (v210)
      {
        v211 = v210;
        operator delete(v210);
        if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v213.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v208.__r_.__value_.__l.__data_);
      }

      v208 = v207;
      v150 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
      v152 = v207.__r_.__value_.__l.__size_;
      v151 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
    }

    if ((v151 & 0x80u) != 0)
    {
      v150 = v152;
    }

    if (!v150)
    {
      v218 = 0u;
      v219 = 0u;
      v220 = 0u;
      v221 = 0u;
      v217.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      v217.__r_.__value_.__l.__size_ = &_bambiDomain;
      LODWORD(v217.__r_.__value_.__r.__words[2]) = 0x40000000;
      v185 = ImsResult::operator<<<char [39]>(&v217, "no usable network interfaces available");
      ImsResult::ImsResult(a5, v185);
      ImsResult::~ImsResult(&v217);
LABEL_342:
      if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v208.__r_.__value_.__l.__data_);
      }

      std::__shared_weak_count::__release_weak(v145);
      std::__shared_weak_count::__release_weak(v145);
      goto LABEL_345;
    }

    SipTransportLayer::setState(a1, &unk_1EE2BC568);
    IPTelephonyManager::getBambiClient(&v217);
    v177 = *(v217.__r_.__value_.__r.__words[0] + 680);
    v178 = *(v217.__r_.__value_.__r.__words[0] + 688);
    if (v178)
    {
      atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v179 = (*(*v177 + 40))(v177, &v208);
    SipTransportLayer::setInterface(a1, v179);
    if (v178)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v178);
    }

    if (v217.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v217.__r_.__value_.__l.__size_);
    }

    __p = 0;
    v215 = 0;
    if (*(a1 + 1176))
    {
      SipTransportLayer::resolveLocalAddressFromProxies(&v217, a1, 1);
      v181 = v217.__r_.__value_.__l.__size_;
      v180 = v217.__r_.__value_.__r.__words[0];
      if (v217.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v217.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v181);
      }

      __p = v180;
      v215 = v181;
      if (v180)
      {
        v182 = *(a1 + 232);
        if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(buf, a1);
          if (v223 >= 0)
          {
            v183 = buf;
          }

          else
          {
            v183 = *buf;
          }

          v184 = &v208;
          if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v184 = v208.__r_.__value_.__r.__words[0];
          }

          LODWORD(v217.__r_.__value_.__l.__data_) = 141558531;
          *(v217.__r_.__value_.__r.__words + 4) = 1752392040;
          WORD2(v217.__r_.__value_.__r.__words[1]) = 2081;
          *(&v217.__r_.__value_.__r.__words[1] + 6) = v183;
          HIWORD(v217.__r_.__value_.__r.__words[2]) = 2080;
          *&v218 = v184;
          _os_log_impl(&dword_1E4C3F000, v182, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s is already up", &v217, 0x20u);
          if (v223 < 0)
          {
            operator delete(*buf);
          }
        }

        SipHost::SipHost(&v217, &__p);
        SipUri::makeSipUri(a1 + 1232);
        SipHost::operator=(a1 + 1240, &v217);
        *(a1 + 1552) = 0;
        SipHost::~SipHost(&v217);
        SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(a1);
LABEL_339:
        if (v181)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v181);
        }

        *(a5 + 24) = 0u;
        *(a5 + 40) = 0u;
        *(a5 + 56) = 0u;
        *(a5 + 72) = 0u;
        *a5 = &unk_1F5EBDEF8;
        *(a5 + 8) = &_bambiDomain;
        *(a5 + 16) = 0;
        goto LABEL_342;
      }
    }

    else
    {
      v186 = *(a1 + 232);
      if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(buf, a1);
        if (v223 >= 0)
        {
          v187 = buf;
        }

        else
        {
          v187 = *buf;
        }

        v188 = &v208;
        if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v188 = v208.__r_.__value_.__r.__words[0];
        }

        LODWORD(v217.__r_.__value_.__l.__data_) = 141558531;
        *(v217.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(v217.__r_.__value_.__r.__words[1]) = 2081;
        *(&v217.__r_.__value_.__r.__words[1] + 6) = v187;
        HIWORD(v217.__r_.__value_.__r.__words[2]) = 2080;
        *&v218 = v188;
        _os_log_impl(&dword_1E4C3F000, v186, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swaiting for %s to come up", &v217, 0x20u);
        if (v223 < 0)
        {
          operator delete(*buf);
        }
      }

      v181 = 0;
    }

    if (!NetworkInterfaceMonotorManager::_instance)
    {
      operator new();
    }

    v189 = *(a1 + 1095);
    if (v189 < 0)
    {
      v189 = *(a1 + 1080);
    }

    if (!v189)
    {
      IPTelephonyManager::getBambiClient(&v213);
      v190 = *(v213.__r_.__value_.__r.__words[0] + 688);
      *buf = *(v213.__r_.__value_.__r.__words[0] + 680);
      *&buf[8] = v190;
      if (v190)
      {
        atomic_fetch_add_explicit((v190 + 8), 1uLL, memory_order_relaxed);
      }

      NetworkInterfaceMonotorManager::createMonitor(&v217);
    }

    NetworkInterfaceMonotorManager::startMonitoring(NetworkInterfaceMonotorManager::_instance, (a1 + 1072), &v208, 3);
    goto LABEL_339;
  }

  while (2)
  {
    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(buf, a1);
      SipHop::logStr();
    }

    if (!v131[6])
    {
      SipHost::resolve(&v217, (v131 + 1), 1);
      v133 = (*(*v217.__r_.__value_.__l.__size_ + 24))(v217.__r_.__value_.__l.__size_, LODWORD(v217.__r_.__value_.__r.__words[2]));
      ImsResult::~ImsResult(&v217);
      if (v133)
      {
        if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(buf, a1);
          SipHop::logStr();
        }

LABEL_218:
        v131 += 51;
        if ((v131 - *v130) == 6528)
        {
          v140 = v130[1];
          ++v130;
          v131 = v140;
        }

        if (v131 == v132)
        {
          goto LABEL_224;
        }

        continue;
      }
    }

    break;
  }

  (*v131[1])(&v217, v131 + 1);
  v134 = v217.__r_.__value_.__r.__words[0];
  (**(a1 + 384))(buf, a1 + 384);
  v135 = (*(*v134 + 104))(v134, buf, 1);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v136 = v217.__r_.__value_.__l.__size_;
  if (v217.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v217.__r_.__value_.__l.__size_);
  }

  if (!v135)
  {
    if (SipTransportLayer::usingNullTransport(v136))
    {
      SipUri::operator=((a1 + 376), v131);
      if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(buf, a1);
        SipHop::logStr();
      }

      goto LABEL_352;
    }

    IPTelephonyManager::getBambiClient(&v217);
    v137 = *(v217.__r_.__value_.__r.__words[0] + 680);
    v138 = *(v217.__r_.__value_.__r.__words[0] + 688);
    if (v138)
    {
      atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportLayer::localClientAddress(buf, a1);
    (*(*v131 + 48))(&__p, v131);
    v139 = (*(*v137 + 72))(v137, buf, &__p);
    if (v215)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v215);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v138)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v138);
    }

    if (v217.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v217.__r_.__value_.__l.__size_);
    }

    if (v139)
    {
      SipUri::operator=((a1 + 376), v131);
      if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(buf, a1);
        SipHop::logStr();
      }

      v194 = *(a1 + 1096);
      SipTransportLayer::localClientAddress(&v217, a1);
      SipHost::ipAddress(buf, (a1 + 384));
      ImsNetworkReachabilityMonitor::startMonitoring(v194, &v217, buf);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      if (v217.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v217.__r_.__value_.__l.__size_);
      }

      goto LABEL_224;
    }

    goto LABEL_218;
  }

  SipUri::operator=((a1 + 376), v131);
  if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 224))(buf, a1);
    SipHop::logStr();
  }

LABEL_352:
  v191 = *(a1 + 232);
  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 224))(&v217, a1);
    v192 = (v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v217 : v217.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v192;
    _os_log_impl(&dword_1E4C3F000, v191, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}stransport is already initialized", buf, 0x16u);
    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }
  }

  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v217.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  v217.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(v217.__r_.__value_.__r.__words[2]) = 0;
  v193 = v200[1];
  v209[0] = *v200;
  v209[1] = v193;
  if (v193)
  {
    atomic_fetch_add_explicit(&v193->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportLayer::notifyDelegate(a5, a1, &v217, v209);
  if (v193)
  {
    std::__shared_weak_count::__release_weak(v193);
  }

LABEL_12:
  ImsResult::~ImsResult(&v217);
LABEL_345:
  if (v206)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v206);
  }
}

void sub_1E4E3521C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1E4E35370);
}

void sub_1E4E3522C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (*(v1 - 216))
  {
    JUMPOUT(0x1E4E35248);
  }

  JUMPOUT(0x1E4E352E8);
}

void sub_1E4E3525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (!*(v18 - 120))
  {
    if (a18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    }

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E4E3532CLL);
}

void sub_1E4E35288()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (*(v1 - 216))
  {
    JUMPOUT(0x1E4E352B4);
  }

  JUMPOUT(0x1E4E352C8);
}

void sub_1E4E352BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

uint64_t SipTransportLayer::usingNullTransport(SipTransportLayer *this)
{
  IPTelephonyManager::getBambiClient(&v5);
  v1 = *(v5 + 680);
  v2 = *(v5 + 688);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = (*(*v1 + 112))(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_1E4E35404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::notifyDelegate(ImsResult *a1, void *a2, ImsResult *a3, uint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4[1];
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = *a4;
      if (v10)
      {
        if (os_log_type_enabled(a2[29], OS_LOG_TYPE_DEFAULT))
        {
          (*(*a2 + 224))(v13, a2);
          ImsResult::logStr();
        }

        (*(*v10 + 16))(v10, a2 + 47, a3);
LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_16;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = a2[29];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a2 + 224))(buf, a2);
    v12 = v17 >= 0 ? buf : *buf;
    *v13 = 141558275;
    *&v13[4] = 1752392040;
    v14 = 2081;
    v15 = v12;
    _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sno delegate to notify of transport initialization", v13, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  ImsResult::ImsResult(a1, a3);
}

void sub_1E4E356A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

void SipTransportLayer::initializeTransportGroup(SipTransportLayer *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (!v5)
      {
LABEL_82:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      SipTransportLayer::setState(this, &unk_1EE2BC5A8);
      v41 = 0;
      v42 = 0;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v39 = &unk_1F5EBDEF8;
      v40 = &_bambiDomain;
      v43 = 0;
      v37 = 0;
      v38 = 0;
      if (*(v5 + 2169) == 1 && !*(this + 208))
      {
        SipHop::setHostPort((this + 376), *(v5 + 2162));
      }

      memset(&v36, 0, sizeof(v36));
      v6 = *(this + 147);
      if (v6)
      {
        if (*(v6 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v36, *(v6 + 32), *(v6 + 40));
        }

        else
        {
          v36 = *(v6 + 32);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v36, "");
      }

      if (*(v5 + 2817) == 1)
      {
        v7 = *(this + 29);
        v8 = 0;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 224))(v47, this);
          if (v48 >= 0)
          {
            v9 = v47;
          }

          else
          {
            v9 = *v47;
          }

          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v9;
          _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssetting local SIP port to be ephemeral", buf, 0x16u);
          if (SHIBYTE(v48) < 0)
          {
            operator delete(*v47);
          }

          v8 = 0;
        }
      }

      else
      {
        v8 = *(v5 + 2160);
        if (!v8)
        {
LABEL_29:
          IPTelephonyManager::getBambiClient(buf);
          v13 = *(*buf + 680);
          v14 = *(*buf + 688);
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = *(this + 26);
          if (!v15 || (v16 = *(this + 25), (v17 = std::__shared_weak_count::lock(v15)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v34 = v16;
          v35 = v17;
          SipHost::ipAddress(&__p, (this + 1240));
          (**(this + 48))(&v28);
          (*(*v13 + 104))(v47, v13, &v37, &v34, &__p, &v28, &v36, *(v5 + 2169));
          ImsResult::operator=(&v39, v47);
          ImsResult::~ImsResult(v47);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          SipUri::operator=((this + 1640), this + 1232);
          v18 = (*(*v40 + 24))(v40, v41);
          if (v37)
          {
            v19 = v18;
          }

          else
          {
            v19 = 1;
          }

          v20 = *(this + 29);
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              (*(*this + 224))(buf, this);
              ImsResult::logStr();
            }

            (*(*this + 64))(this, &v39);
            if (v43 && *(v43 + 16) == 65 && *(v43 + 8) == &_posixDomain && *(v5 + 2817) == 1)
            {
              if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_ERROR))
              {
                (*(*this + 224))(buf, this);
                SipHop::logStr();
              }

              SipTransportLayer::setNextInterfaceAddress(this);
            }

            SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(this);
          }

          else
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 224))(buf, this);
              SipTransportInterface::logStr();
            }

            SipTransportLayer::setState(this, &unk_1EE2BC548);
            v21 = v37;
            v22 = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(this + 138) = v21;
            v23 = *(this + 139);
            *(this + 139) = v22;
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              v21 = v37;
            }

            *(this + 2129) = 0;
            v24 = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(this + 144) = v21;
            v25 = *(this + 145);
            *(this + 145) = v24;
            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
              v21 = v37;
            }

            (*(*v21 + 176))(v47);
            if (*v47)
            {
              (*(*v37 + 176))(buf);
              v26 = (*(**buf + 56))(*buf) != 0;
              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }
            }

            else
            {
              v26 = 0;
            }

            if (*&v47[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v47[8]);
            }

            if (v26)
            {
              v27 = *(this + 46);
              v30[0] = *(this + 45);
              v30[1] = v27;
              if (v27)
              {
                atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              SipTransportLayer::notifyDelegate(v31, this, &v39, v30);
              ImsResult::~ImsResult(v31);
              if (v27)
              {
                std::__shared_weak_count::__release_weak(v27);
              }

              SipTransportLayer::cancelTransportInit(this);
            }
          }

          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }

          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          ImsResult::~ImsResult(&v39);
          goto LABEL_82;
        }

        v10 = *(this + 29);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 224))(buf, this);
          if (v51 >= 0)
          {
            v11 = buf;
          }

          else
          {
            v11 = *buf;
          }

          v12 = *(v5 + 2160);
          *v47 = 141558531;
          *&v47[4] = 1752392040;
          *&v47[12] = 2081;
          *&v47[14] = v11;
          v48 = 1024;
          LODWORD(v49) = v12;
          _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdefaulting local SIP port to %d", v47, 0x1Cu);
          if (v51 < 0)
          {
            operator delete(*buf);
          }

          v8 = *(v5 + 2160);
        }
      }

      SipHop::setHostPort((this + 1232), v8);
      goto LABEL_29;
    }
  }
}

void sub_1E4E36130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, std::__shared_weak_count *a43, char a44)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a43);
  }

  ImsResult::~ImsResult(&a44);
  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  _Unwind_Resume(a1);
}

void SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(os_log_t *this)
{
  v16 = *MEMORY[0x1E69E9840];
  SipTransportLayer::setState(this, &unk_1EE2BC588);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  SipHost::resolve(&v8, (this + 48), 1);
  if (!(*(**(&v8 + 1) + 24))(*(&v8 + 1), v9))
  {
    ++*(this + 266);
    v3 = this[26];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        p_shared_weak_owners = &v4->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v14 = 0;
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  if (os_log_type_enabled(this[29], OS_LOG_TYPE_ERROR))
  {
    ((*this)[28].isa)(buf, this);
    SipHop::logStr();
  }

  v2 = this[46];
  v6[0] = this[45];
  v6[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportLayer::notifyDelegate(v7, this, &v8, v6);
  ImsResult::~ImsResult(v7);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipTransportLayer::cancelTransportInit(this);
  ImsResult::~ImsResult(&v8);
}

void sub_1E4E36900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  std::__shared_weak_count::__release_weak(v44);
  std::__shared_weak_count::__release_weak(v44);
  ImsResult::~ImsResult(&a44);
  _Unwind_Resume(a1);
}

void SipTransportLayer::handleTimer(uint64_t a1, uint64_t ***a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = qword_1EE2BC518;
  if (byte_1EE2BC527 >= 0)
  {
    v6 = byte_1EE2BC527;
  }

  if (v5 == v6 && (v4 >= 0 ? (v7 = a2) : (v7 = *a2), byte_1EE2BC527 >= 0 ? (v8 = &qword_1EE2BC510) : (v8 = qword_1EE2BC510), !memcmp(v7, v8, v5)))
  {

    SipTransportLayer::initializeTransportGroup(a1);
  }

  else if (v5 == 21)
  {
    v17 = *a2;
    if (v4 >= 0)
    {
      v17 = a2;
    }

    v18 = *v17;
    v19 = v17[1];
    v20 = *(v17 + 13);
    if (v18 == 0x61576D6574737953 && v19 == 0x695474696157656BLL && v20 == 0x74756F656D695474)
    {
      IPTelephonyManager::getBambiClient(&__p);
      v23 = *(__p + 696);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v23)
      {
        *(a1 + 2128) = 1;
        v24 = *(a1 + 232);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(&__p, a1);
          v25 = v30 >= 0 ? &__p : __p;
          *buf = 141558275;
          v37 = 1752392040;
          v38 = 2081;
          v39 = v25;
          _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}stimed out waiting for system wake event. Processing deferred incoming messages.", buf, 0x16u);
          if (v30 < 0)
          {
            operator delete(__p);
          }
        }

        SipTransportLayer::processDeferredIncomingMessages(a1);
      }
    }
  }

  else if (v5 == 20)
  {
    v9 = *a2;
    if (v4 >= 0)
    {
      v9 = a2;
    }

    v10 = *v9;
    v11 = v9[1];
    v12 = *(v9 + 4);
    if (v10 == 0x726F70736E617254 && v11 == 0x6D695474696E4974 && v12 == 1953853285)
    {
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      __p = &unk_1F5EBDEF8;
      v28 = &_bambiDomain;
      v29 = 0x40000000;
      v15 = ImsResult::operator<<<char [25]>(&__p, "transport init timed out");
      v16 = *(a1 + 368);
      v26[0] = *(a1 + 360);
      v26[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      SipTransportLayer::notifyDelegate(v35, a1, v15, v26);
      ImsResult::~ImsResult(v35);
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      ImsResult::~ImsResult(&__p);
      SipTransportLayer::cancelTransportInit(a1);
    }
  }
}

void sub_1E4E36D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void SipTransportLayer::processDeferredIncomingMessages(SipTransportLayer *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(this + 44);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 43);
      if (v4)
      {
        memset(v37, 0, 24);
        std::list<IncomingSipMessage *>::list(v37, *(this + 257) + 32);
        v5 = *&v37[16];
        if (*&v37[16])
        {
          while (1)
          {
            v6 = *&v37[8];
            v7 = *(*&v37[8] + 8);
            v8 = *(*&v37[8] + 16);
            v9 = **&v37[8];
            *(v9 + 8) = v7;
            *v7 = v9;
            *&v37[16] = v5 - 1;
            operator delete(v6);
            v10 = *(this + 29);
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              goto LABEL_18;
            }

            (*(*this + 224))(v32, this);
            if (v33 >= 0)
            {
              v11 = v32;
            }

            else
            {
              v11 = v32[0];
            }

            v12 = *v8;
            v13 = *(v8 + 1);
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v12 + 40))(v30);
            v14 = v30;
            if (v31 < 0)
            {
              v14 = v30[0];
            }

            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v11;
            v35 = 2080;
            v36 = v14;
            _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sprocessing deferred %s", buf, 0x20u);
            if ((v31 & 0x80000000) == 0)
            {
              break;
            }

            operator delete(v30[0]);
            if (v13)
            {
              goto LABEL_15;
            }

LABEL_16:
            if (v33 < 0)
            {
              operator delete(v32[0]);
            }

LABEL_18:
            v15 = *(v8 + 1);
            v28 = *v8;
            v29 = v15;
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v16 = *(v8 + 3);
            *buf = *(v8 + 2);
            *&buf[8] = v16;
            if (v16)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }

            v17 = *(v8 + 6);
            if (!v17)
            {
              v22 = *(v8 + 5);
              v26 = *(v8 + 4);
              v27 = v22;
              if (v22)
              {
                atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              goto LABEL_35;
            }

            v18 = *(v17 + 280);
            if (!v18)
            {
              v20 = 0;
LABEL_31:
              v23 = *(v8 + 5);
              v26 = *(v8 + 4);
              v27 = v23;
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (!v20)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }

            v19 = *(v17 + 272);
            atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v20 = std::__shared_weak_count::lock(v18);
            std::__shared_weak_count::__release_weak(v18);
            if (!v20 || !v19)
            {
              goto LABEL_31;
            }

            v21 = *(v8 + 7);
            v26 = *(v8 + 6);
            v27 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

LABEL_34:
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
LABEL_35:
            (*(*v4 + 24))(v4, &v28, buf, &v26);
            if (v27)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v27);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }

            IncomingSipMessage::~IncomingSipMessage(v8);
            MEMORY[0x1E69235B0]();
            v5 = *&v37[16];
            if (!*&v37[16])
            {
              goto LABEL_55;
            }
          }

          if (!v13)
          {
            goto LABEL_16;
          }

LABEL_15:
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          goto LABEL_16;
        }

LABEL_55:
        SipTransportLayer::IncomingMessageList::clear(*(this + 257));
        std::__list_imp<unsigned long long>::clear(v37);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v24 = *(this + 29);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 224))(buf, this);
    v25 = v35 >= 0 ? buf : *buf;
    *v37 = 141558275;
    *&v37[4] = 1752392040;
    *&v37[12] = 2081;
    *&v37[14] = v25;
    _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sno delegate. Dropping deferred incoming messages", v37, 0x16u);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(*buf);
    }
  }

  SipTransportLayer::dropDeferredIncomingMessages(this);
  if (v3)
  {
LABEL_53:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4E3719C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::__list_imp<unsigned long long>::clear(&a28);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::resolveLocalAddressFromProxies(SipTransportLayer *this, void *a2, char a3)
{
  v74 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  v68 = 0;
  v67 = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v65 = &unk_1F5EBDEF8;
  v66 = &_bambiDomain;
  v69 = 0;
  v4 = a2[2];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_41;
  }

  v6 = std::__shared_weak_count::lock(v4);
  v7 = v6;
  if (!v6 || (v42 = a2[1]) == 0)
  {
LABEL_41:
    v22 = a2[29];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      (*(*a2 + 224))(&v56, a2);
      v35 = v58 >= 0 ? &v56 : v56;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v35;
      _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sstack is null. Unable to find resolvable proxy", buf, 0x16u);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(v56);
      }
    }

    v23 = a2[46];
    v63[0] = a2[45];
    v63[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportLayer::notifyDelegate(v64, a2, &v65, v63);
    ImsResult::~ImsResult(v64);
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    SipTransportLayer::cancelTransportInit(a2);
    goto LABEL_47;
  }

  v8 = a2[261];
  if (a2[262] == v8 || (v9 = a2[264], v10 = (*(v8 + 8 * (v9 >> 4)) + 408 * (v9 & 0xF)), v41 = *(v8 + (((a2[265] + v9) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a2 + 530) + v9) & 0xF), v10 == v41))
  {
    v11 = 0;
    v12 = 3;
    v24 = 1;
    goto LABEL_52;
  }

  v39 = a3;
  v40 = v6;
  v11 = 0;
  v44 = 0;
  v12 = 3;
  v13 = (v8 + 8 * (v9 >> 4));
  while (1)
  {
    v58 = 0;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v56 = &unk_1F5EBDEF8;
    v57 = &_bambiDomain;
    v59 = 0uLL;
    if (v10[6])
    {
      v14 = 0;
      v15 = &_bambiDomain;
    }

    else
    {
      SipHost::resolve(buf, (v10 + 1), 1);
      ImsResult::operator=(&v56, buf);
      ImsResult::~ImsResult(buf);
      v15 = v57;
      v14 = v58;
    }

    if (!(*(*v15 + 24))(v15, v14))
    {
      break;
    }

    if (os_log_type_enabled(a2[29], OS_LOG_TYPE_ERROR))
    {
      (*(*a2 + 224))(v55, a2);
      SipHop::logStr();
    }

    if (!v44 || ((*(*v66 + 24))(v66, v67) & 1) == 0)
    {
      ImsResult::operator=(&v65, &v56);
    }

    ++v44;
    ImsResult::~ImsResult(&v56);
LABEL_35:
    v10 += 51;
    if ((v10 - *v13) == 6528)
    {
      v21 = v13[1];
      ++v13;
      v10 = v21;
    }

    if (v10 == v41)
    {
      goto LABEL_51;
    }
  }

  (*(*v10 + 48))(buf, v10);
  v12 = (*(**buf + 160))(*buf);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v16 = a2[29];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a2 + 224))(v55, a2);
    NetworkInterface::logStr();
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a2 + 224))(v55, a2);
    (*(*v10 + 48))(&v52, v10);
    (*(*v52 + 152))(v52);
    (*(*a2[147] + 24))(&__p);
    (*(*v10 + 48))(&v51, v10);
    IpAddress::logStr();
  }

  v52 = 0;
  v53 = 0;
  if (*(v42 + 2817))
  {
    v17 = &qword_1EE2BC4F8;
  }

  else
  {
    v17 = &_MergedGlobals_11;
  }

  NetworkInterface::firstAddress(&v52, a2[147], v12, v17);
  v18 = v52;
  if (v52)
  {
    (*(*v52 + 32))(buf, v52);
    v19 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v20 = *(this + 1);
    *this = v19;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    SipUri::operator=((a2 + 47), v10);
    if (os_log_type_enabled(a2[29], OS_LOG_TYPE_DEFAULT))
    {
      (*(*a2 + 224))(v55, a2);
      SipHost::ipAddress(&v51, (a2 + 48));
      (*(*v51 + 152))(v51);
      IpAddress::logStr();
    }
  }

  else
  {
    ++v44;
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  ImsResult::~ImsResult(&v56);
  v11 = 1;
  if (!v18)
  {
    goto LABEL_35;
  }

LABEL_51:
  v24 = *this == 0;
  v7 = v40;
  a3 = v39;
LABEL_52:
  if (*(v42 + 2817) == 1)
  {
    if (v24)
    {
      NetworkInterface::firstAddress(&v56, a2[147], v12, &qword_1EE2BC4F8);
      v25 = v56;
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      if (v25)
      {
        v26 = a2[29];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          (*(*a2 + 224))(&v56, a2);
          v38 = v58 >= 0 ? &v56 : v56;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v38;
          _os_log_error_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}slocal address cannot reach any proxies", buf, 0x16u);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(v56);
          }
        }

        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v56 = &unk_1F5EBDEF8;
        v57 = &_bambiDomain;
        LODWORD(v58) = 1073741842;
        v27 = ImsResult::operator<<<char [31]>(&v56, "network configuration mismatch");
        v28 = a2[46];
        v49[0] = a2[45];
        v49[1] = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        SipTransportLayer::notifyDelegate(v50, a2, v27, v49);
        v29 = v50;
        goto LABEL_69;
      }

LABEL_62:
      NetworkInterface::firstAddress(&v56, a2[147], 3, 1);
      v30 = v56;
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      if (v30)
      {
        v31 = a2[29];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          (*(*a2 + 224))(&v56, a2);
          v37 = v58 >= 0 ? &v56 : v56;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v37;
          _os_log_error_impl(&dword_1E4C3F000, v31, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}slocal address cannot reach any proxies", buf, 0x16u);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(v56);
          }
        }

        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v56 = &unk_1F5EBDEF8;
        v57 = &_bambiDomain;
        LODWORD(v58) = 1073741842;
        v32 = ImsResult::operator<<<char [31]>(&v56, "network configuration mismatch");
        v28 = a2[46];
        v47[0] = a2[45];
        v47[1] = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        SipTransportLayer::notifyDelegate(v48, a2, v32, v47);
        v29 = v48;
LABEL_69:
        ImsResult::~ImsResult(v29);
        if (v28)
        {
          std::__shared_weak_count::__release_weak(v28);
        }

        ImsResult::~ImsResult(&v56);
        SipTransportLayer::cancelTransportInit(a2);
      }
    }
  }

  else if (v24)
  {
    goto LABEL_62;
  }

  if (!(v11 & 1 | ((a3 & 1) == 0)))
  {
    v33 = a2[29];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      (*(*a2 + 224))(&v56, a2);
      v36 = v58 >= 0 ? &v56 : v56;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v36;
      _os_log_error_impl(&dword_1E4C3F000, v33, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sunable to find resolvable proxy", buf, 0x16u);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(v56);
      }
    }

    v34 = a2[46];
    v45[0] = a2[45];
    v45[1] = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportLayer::notifyDelegate(v46, a2, &v65, v45);
    ImsResult::~ImsResult(v46);
    if (v34)
    {
      std::__shared_weak_count::__release_weak(v34);
    }

    SipTransportLayer::cancelTransportInit(a2);
  }

LABEL_47:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  ImsResult::~ImsResult(&v65);
}

void sub_1E4E38148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  ImsResult::~ImsResult(&STACK[0x2D8]);
  v23 = *(a21 + 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::reachabilityChanged(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 40) & 2) != 0)
  {
    if (ImsUuid::operator==(a1 + 296, &unk_1EE2BC588))
    {
      *(a1 + 1168) = 1;
      v5 = *(a1 + 16);
      if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
      {
        v7 = *(a1 + 8);
        if (v7)
        {
          v8 = *(v7 + 2817);
        }

        else
        {
          v8 = 0;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      else
      {
        v8 = 0;
      }

      if (SipUri::isValidUri((a1 + 376)) && !*(a1 + 1104) && ((v8 & 1) != 0 || *(a1 + 1064) >= 2u))
      {
        SipTimerContainer::cancelAllTimers((a1 + 896));

        SipTransportLayer::initializeTransportGroup(a1);
      }
    }

    else
    {
      v9 = *(a1 + 232);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(__p, a1);
        v10 = v12 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v14 = 1752392040;
        v15 = 2081;
        v16 = v10;
        _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot waiting for reachability", buf, 0x16u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else
  {
    v3 = *(a1 + 232);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(__p, a1);
      if (v12 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 141558275;
      v14 = 1752392040;
      v15 = 2081;
      v16 = v4;
      _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sproxy is no longer reachable", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 1168) = 0;
  }
}

void SipTransportLayer::networkInterfaceChanged(uint64_t a1, char *a2, NetworkInterface **a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v7 = *(a1 + 327);
    if (v7 >= 0)
    {
      v8 = *(a1 + 327);
    }

    else
    {
      v8 = *(a1 + 312);
    }

    v9 = qword_1EE2BC578;
    if (byte_1EE2BC587 >= 0)
    {
      v9 = byte_1EE2BC587;
    }

    if (v8 != v9 || (v7 >= 0 ? (v10 = (a1 + 304)) : (v10 = *(a1 + 304)), byte_1EE2BC587 >= 0 ? (v11 = &qword_1EE2BC570) : (v11 = qword_1EE2BC570), memcmp(v10, v11, v8)))
    {
      v12 = *(a1 + 232);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(__p, a1);
        if (v42 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = *__p;
        }

        *buf = 141558275;
        *&buf[4] = 1752392040;
        v47 = 2081;
        v48 = v13;
        _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot waiting for interface", buf, 0x16u);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(*__p);
        }
      }

      return;
    }

    *a3 = 0;
    SipTransportLayer::setInterface(a1, v5);
    v22 = *(a1 + 336);
    if (v22)
    {
      v23 = std::__shared_weak_count::lock(v22);
      if (v23)
      {
        v24 = v23;
        v25 = *(a1 + 328);
        if (v25)
        {
          (*(*v25 + 56))(v38);
          ImsResult::~ImsResult(v38);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    v26 = (*(*(a1 + 40) + 64))(a1 + 40);
    (*(*(a1 + 40) + 16))(a1 + 40, v26);
    (*(*v5 + 16))(v5, v26);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v26[17] = 0;
    v36 = 0;
    v37 = 0;
    SipTransportLayer::resolveLocalAddressFromProxies(&v36, a1, 0);
    if (v36)
    {
      v27 = *(a1 + 232);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(buf, a1);
        if (v49 >= 0)
        {
          v28 = buf;
        }

        else
        {
          v28 = *buf;
        }

        if (a2[23] >= 0)
        {
          v29 = a2;
        }

        else
        {
          v29 = *a2;
        }

        *__p = 141558531;
        *&__p[4] = 1752392040;
        v40 = 2081;
        v41 = v28;
        v42 = 2080;
        v43 = v29;
        _os_log_impl(&dword_1E4C3F000, v27, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinterface %s is up", __p, 0x20u);
        if (v49 < 0)
        {
          operator delete(*buf);
        }

        v27 = *(a1 + 232);
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(buf, a1);
        IpAddress::logStr();
      }

      SipHost::SipHost(__p, &v36);
      SipUri::makeSipUri(a1 + 1232);
      SipHost::operator=(a1 + 1240, __p);
      *(a1 + 1552) = 0;
      SipHost::~SipHost(__p);
      if (!NetworkInterfaceMonotorManager::_instance)
      {
        operator new();
      }

      NetworkInterfaceMonotorManager::releaseMonitor(NetworkInterfaceMonotorManager::_instance, (a1 + 1072));
      if (*(a1 + 1095) < 0)
      {
        **(a1 + 1072) = 0;
        *(a1 + 1080) = 0;
      }

      else
      {
        *(a1 + 1072) = 0;
        *(a1 + 1095) = 0;
      }

      SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(a1);
    }

    else
    {
      SipUri::operator=((a1 + 376), *(*(a1 + 2088) + ((*(a1 + 2112) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * (*(a1 + 2112) & 0xFLL));
      v30 = *(a1 + 232);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = buf;
        (*(*a1 + 224))(buf, a1);
        if (v49 < 0)
        {
          v31 = *buf;
        }

        if (a2[23] < 0)
        {
          a2 = *a2;
        }

        SipHost::ipAddress(&v34, (a1 + 384));
        v32 = (*(*v34 + 152))(v34);
        if (*(v32 + 23) >= 0)
        {
          v33 = v32;
        }

        else
        {
          v33 = *v32;
        }

        *__p = 141558787;
        *&__p[4] = 1752392040;
        v40 = 2081;
        v41 = v31;
        v42 = 2080;
        v43 = a2;
        v44 = 2080;
        v45 = v33;
        _os_log_impl(&dword_1E4C3F000, v30, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s is up, but it doesn't have an %s address.", __p, 0x2Au);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        if (v49 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    v21 = v37;
    if (v37)
    {
LABEL_72:
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  else
  {
    v14 = *(a1 + 232);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 224))(buf, a1);
      v15 = v49 >= 0 ? buf : *buf;
      v16 = a2[23] >= 0 ? a2 : *a2;
      *__p = 141558531;
      *&__p[4] = 1752392040;
      v40 = 2081;
      v41 = v15;
      v42 = 2080;
      v43 = v16;
      _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinterface %s is not up", __p, 0x20u);
      if (v49 < 0)
      {
        operator delete(*buf);
      }
    }

    v17 = *(a1 + 336);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = *(a1 + 328);
        if (v20)
        {
          (*(*v20 + 72))(v20, a2);
        }

        v21 = v19;
        goto LABEL_72;
      }
    }
  }
}

void sub_1E4E38D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (*(v25 - 73) < 0)
  {
    operator delete(*(v25 - 96));
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTransportLayer::isIPSecAvailable(SipTransportLayer *this)
{
  v2 = *(this + 42);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 41);
  if (v5)
  {
    v6 = (*(*v5 + 16))(v5, 1);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

uint64_t SipTransportLayer::isIPSecAvailableAndEnabled(SipTransportLayer *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 1);
  if (v5 && *(v5 + 2166) == 1)
  {
    isIPSecAvailable = SipTransportLayer::isIPSecAvailable(this);
  }

  else
  {
    isIPSecAvailable = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return isIPSecAvailable;
}

uint64_t SipTransportLayer::maxUdpMessageSize(SipTransportLayer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 1);
      if (v4)
      {
        v5 = *(v4 + 2232);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v3);
          return v5;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v6 = *(this + 147);
  if (!v6)
  {
    return 1300;
  }

  v5 = *(v6 + 56);
  if (v5 > 0x5DB)
  {
    return 1300;
  }

  if (v5 >= 0xC9)
  {
    return (v5 - 200);
  }

  return v5;
}

void SipTransportLayer::fillContactHost(uint64_t *__return_ptr a1@<X8>, SipTransportLayer *this@<X0>, SipUri *a3@<X1>)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(this + 144);
  if (v5)
  {
    v17 = 0;
    v18 = 0;
    (*(*v5 + 176))(&v17);
    if (v17)
    {
      SipUri::operator=(a3, this + 1232);
      memset(v20, 0, sizeof(v20));
      *__p = 0u;
      SipHost::SipHost(__p, this + 1240);
      SipHost::setAddress(__p, &v17);
      (*(*a3 + 32))(a3, __p);
      v7 = *(this + 2);
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = *(this + 1);
          if (v10)
          {
            SipHop::setSupportsCompression(a3, *(v10 + 2165));
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      *(a1 + 3) = 0u;
      *(a1 + 5) = 0u;
      *(a1 + 7) = 0u;
      *(a1 + 9) = 0u;
      *a1 = &unk_1F5EBDEF8;
      a1[1] = &_bambiDomain;
      *(a1 + 4) = 0;
      SipHost::~SipHost(__p);
    }

    else
    {
      v14 = *(this + 29);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 224))(__p, this);
        v15 = v20[7] >= 0 ? __p : __p[0];
        *buf = 141558275;
        v24 = 1752392040;
        v25 = 2081;
        v26 = v15;
        _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sfillContactHost: no local address", buf, 0x16u);
        if ((v20[7] & 0x80000000) != 0)
        {
          operator delete(__p[0]);
        }
      }

      memset(&v20[8], 0, 32);
      v21 = 0u;
      v22 = 0u;
      __p[0] = &unk_1F5EBDEF8;
      __p[1] = &_bambiDomain;
      *v20 = 1073741826;
      v16 = ImsResult::operator<<<char [17]>(__p, "no local address");
      ImsResult::ImsResult(a1, v16);
      ImsResult::~ImsResult(__p);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  else
  {
    v11 = *(this + 29);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 224))(__p, this);
      v12 = v20[7] >= 0 ? __p : __p[0];
      *buf = 141558275;
      v24 = 1752392040;
      v25 = 2081;
      v26 = v12;
      _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sfillContactHost: no active transport", buf, 0x16u);
      if ((v20[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }
    }

    memset(&v20[8], 0, 32);
    v21 = 0u;
    v22 = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    *v20 = 1073741826;
    v13 = ImsResult::operator<<<char [20]>(__p, "no active transport");
    ImsResult::ImsResult(a1, v13);
    ImsResult::~ImsResult(__p);
  }
}

void sub_1E4E39304(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  SipHost::~SipHost(va);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::sendMessage(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, SipTransportInterface **a4@<X3>, ImsResult *a5@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 72);
  if (v7 < 0)
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = &unk_1F5EBDEF8;
    v26 = &_bambiDomain;
    v27 = 0x40000000;
    v8 = ImsResult::operator<<<char [38]>(buf, "sendMessage: failing send for testing");
    v9 = ImsLogContainer::logResult((a1 + 5), v8);
    ImsResult::ImsResult(a5, v9);
    goto LABEL_5;
  }

  if (v7)
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = &unk_1F5EBDEF8;
    v26 = &_posixDomain;
    v27 = v7;
    ImsLogContainer::logResult((a1 + 5), buf, a5);
LABEL_5:
    ImsResult::~ImsResult(buf);
    return;
  }

  if (a3)
  {
    v14 = *a3;
    v13 = *(a3 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v14)
    {
      if (os_log_type_enabled(a1[29], OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(&v24, a1);
        SipTransportInterface::logStr();
      }

      goto LABEL_20;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = a1[144];
  if (!v14)
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = &unk_1F5EBDEF8;
    v26 = &_bambiDomain;
    v27 = 1073741827;
    v19 = ImsResult::operator<<<char [33]>(buf, "sendMessage: no active transport");
    v20 = ImsLogContainer::logResult((a1 + 5), v19);
    ImsResult::ImsResult(a5, v20);
    ImsResult::~ImsResult(buf);
    if (!v13)
    {
      return;
    }

LABEL_34:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    return;
  }

  v15 = a1[145];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v13 = v15;
LABEL_20:
  v16 = a2[1];
  v23[0] = *a2;
  v23[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportLayer::logMessageMetrics(a1, v23, 0, &ims::kEmptyString);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a4)
  {
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = a4[1];
    *a4 = v14;
    a4[1] = v13;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  v18 = a2[1];
  v21 = *a2;
  v22 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 32))(v14, &v21, a3);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v13)
  {
    goto LABEL_34;
  }
}

void sub_1E4E39744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::logMessageMetrics(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[1];
      if (v10)
      {
        pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        v11 = off_1EE2BBBC0;
        if (!off_1EE2BBBC0)
        {
          IMSMetricsManager::create_default_global();
        }

        v14 = *(&off_1EE2BBBC0 + 1);
        if (*(&off_1EE2BBBC0 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        v15 = *a2;
        if (!*a2)
        {
          goto LABEL_86;
        }

        if (v16)
        {
          v17 = v16;
          v18 = a2[1];
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            v62 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            v60 = v18;
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v62 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            v60 = 0;
          }

          v61 = v10;
          v59 = v16;
          IMSMetricsManager::logSipRequest(v11, &v61, &v59, a3, a4);
          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          if (v62)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v62);
          }

          v20 = SipMessage::header<SipConversationIdHeader>(*a2);
          v21 = (v20 + 64);
          if (!v20)
          {
            v21 = &ims::kEmptyString;
          }

          v22 = *(v21 + 23);
          v23 = *(v21 + 1);
          if ((v22 & 0x80u) == 0)
          {
            v23 = v22;
          }

          if (!v23)
          {
            v24 = SipMessage::header<SipContributionIdHeader>(*a2);
            v25 = (v24 + 64);
            if (!v24)
            {
              v25 = &ims::kEmptyString;
            }

            v26 = *(v25 + 23);
            v27 = *(v25 + 1);
            if ((v26 & 0x80u) == 0)
            {
              v27 = v26;
            }

            if (!v27)
            {
              v28 = SipMessage::header<SipInReplyToContributionIdHeader>(*a2);
              v29 = (v28 + 64);
              if (!v28)
              {
                v29 = &ims::kEmptyString;
              }

              v30 = *(v29 + 23);
              v31 = *(v29 + 1);
              if ((v30 & 0x80u) == 0)
              {
                v31 = v30;
              }

              if (!v31)
              {
                goto LABEL_84;
              }
            }
          }

          isWifi = ims::AccessNetwork::isWifi((v10 + 3432));
          v33 = (*(*v17 + 120))(v17);
          v34 = *(v33 + 23);
          v35 = v34;
          if ((v34 & 0x80u) != 0)
          {
            v34 = *(v33 + 8);
          }

          if (v34 == 6 && (v35 >= 0 ? (v36 = v33) : (v36 = *v33), (v37 = *v36, v38 = *(v36 + 4), v37 == *"INVITE") ? (v39 = v38 == *"TE") : (v39 = 0), v39))
          {
            v54 = 1;
          }

          else
          {
            v40 = (*(*v17 + 120))(v17);
            v41 = *(v40 + 23);
            v42 = v41;
            if ((v41 & 0x80u) != 0)
            {
              v41 = *(v40 + 8);
            }

            if (v41 == 3 && (v42 >= 0 ? (v43 = v40) : (v43 = *v40), (v44 = *v43, v45 = *(v43 + 2), v44 == SipRequest::kMethodBye) ? (v46 = v45 == BYTE2(SipRequest::kMethodBye)) : (v46 = 0), v46))
            {
              v54 = 2;
            }

            else
            {
              v47 = (*(*v17 + 120))(v17);
              v48 = *(v47 + 23);
              v49 = v48;
              if ((v48 & 0x80u) != 0)
              {
                v48 = *(v47 + 8);
              }

              if (v48 != 5)
              {
                goto LABEL_84;
              }

              v50 = v49 >= 0 ? v47 : *v47;
              v51 = *v50;
              v52 = *(v50 + 4);
              if (v51 != *"REFER" || v52 != SipRequest::kMethodRefer[4])
              {
                goto LABEL_84;
              }

              v54 = 3;
            }
          }

          powerlog::PowerLogger::logLazuliSipRequest(*(v11 + 200), a3, isWifi, v54, 0);
        }

        else
        {
          if (!v19)
          {
LABEL_86:
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

LABEL_88:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            return;
          }

          v18 = a2[1];
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            v58 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            v56 = v18;
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v58 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            v56 = 0;
          }

          v57 = v10;
          v55 = v19;
          IMSMetricsManager::logSipResponse(v11, &v57, &v55, a3, a4);
          if (v56)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v56);
          }

          if (v58)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v58);
          }
        }

LABEL_84:
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        goto LABEL_86;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = a1[29];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 224))(__p, a1);
    v13 = v64 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v66 = 1752392040;
    v67 = 2081;
    v68 = v13;
    _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}slogMessageMetrics() no stack", buf, 0x16u);
    if (v64 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v9)
  {
    goto LABEL_88;
  }
}

void sub_1E4E39D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipTransportLayer::setServiceRouteFromMessage(void *a1, uint64_t *a2)
{
  v3 = a1;
  v26 = *MEMORY[0x1E69E9840];
  SipRouteSet::clear(a1 + 98);
  v4 = *a2;
  v5 = *(*a2 + 48);
  v6 = *(*a2 + 56);
  if (v6 != v5)
  {
    v24 = v3;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = *(v5 + 8 * v8);
      v11 = *(v10 + 31);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = *(v10 + 8);
        v11 = *(v10 + 16);
      }

      else
      {
        v12 = (v10 + 8);
      }

      if (v11 >= 0xD)
      {
        v13 = 13;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v12, "Service-Route", v13);
      if (v11 == 13 && v14 == 0)
      {
        v17 = v7;
        v18 = v7 >> 3;
        if (((v7 >> 3) + 1) >> 61)
        {
          std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
        }

        if (v7 >> 3 != -1)
        {
          if (!(((v7 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v18) = v16;
        v7 = 8 * v18 + 8;
        memcpy(0, 0, v17);
        v5 = *(v4 + 48);
        v6 = *(v4 + 56);
      }

      v8 = v9++;
    }

    while (v8 < (v6 - v5) >> 3);
    if (v7)
    {
      v3 = v24;
      v19 = 0;
      if ((v7 >> 3) <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v7 >> 3;
      }

      do
      {
        SipRouteSet::addHops((v24 + 98), (*(8 * v19++) + 64), 0, 0, 0);
      }

      while (v20 != v19);
    }

    else
    {
      v3 = v24;
    }
  }

  if (v3[99] != v3[100] && os_log_type_enabled(v3[29], OS_LOG_TYPE_DEFAULT))
  {
    (*(*v3 + 224))(v25, v3);
    SipRouteSet::logStr();
  }

  SipRouteSet::clear(v3 + 105);
  v21 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((*a2 + 72), "Path");
  if (v21)
  {
    v22 = v21[5];
    if (v22)
    {
      if (v23)
      {
        SipRouteSet::addHops((v3 + 105), (v23 + 64), 0, 0, 0);
      }
    }
  }

  if (v3[106] != v3[107] && os_log_type_enabled(v3[29], OS_LOG_TYPE_DEFAULT))
  {
    (*(*v3 + 224))(v25, v3);
    SipRouteSet::logStr();
  }
}

void sub_1E4E3A2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::printTransportInfo(SipTransportLayer *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Transport:", 10);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    State:             ", 23);
  *(a2 + 17) = 0;
  (*(*(this + 37) + 16))(this + 296, a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (*(this + 138))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Default transport: ", 23);
    *(a2 + 17) = 0;
    (*(**(this + 138) + 256))();
  }

  if (*(this + 140))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Secure transport:  ", 23);
    *(a2 + 17) = 0;
    (*(**(this + 140) + 256))();
  }

  if (*(this + 99) != *(this + 100))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Service route:     ", 23);
    *(a2 + 17) = 0;
    SipRouteSet::toStream((this + 784), a2);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  if ((*(this + 503) & 0x8000000000000000) != 0)
  {
    if (!*(this + 61))
    {
      goto LABEL_15;
    }
  }

  else if (!*(this + 503))
  {
    goto LABEL_15;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Proxy:             ", 23);
  *(a2 + 17) = 0;
  SipUri::asString(this + 376, 2, &v5);
  LoggableString::LoggableString(__p, &v5);
  (*(*a2 + 40))(a2, __p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SBYTE7(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

LABEL_15:
  if (*(this + 265))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Proxy-List ", 15);
    *(a2 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v4, ",");
    v8 = 0;
    *__p = 0u;
    v7 = 0u;
    ImsStringOutStream::ImsStringOutStream(__p, 1);
  }
}

void sub_1E4E3A830(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, char a23, int a24, __int16 a25, char a26)
{
  if (a23 == 1 && a22)
  {
    (*(*a22 + 8))(a22, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTransportLayer::dropInfoForMethod(uint64_t a1, char *a2, int a3)
{
  v3 = a2;
  v4 = 264;
  if (a3)
  {
    v4 = 240;
  }

  v5 = a1 + v4;
  v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + v4, a2);
  if (v5 + 8 == v6)
  {
    v7 = v3[23];
    if (v7 < 0)
    {
      if (*(v3 + 1) != 1)
      {
        goto LABEL_10;
      }

      v3 = *v3;
    }

    else if (v7 != 1)
    {
LABEL_10:
      std::string::basic_string[abi:ne200100]<0>(__p, "*");
      v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v5, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_12;
    }

    if (*v3 == 42)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_12:
  if (v6 == v5 + 8)
  {
    return 0;
  }

  else
  {
    return v6 + 56;
  }
}

uint64_t SipTransportLayer::shouldDropMessage(void *a1, uint64_t a2, int a3)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a1[32])
    {
      v6 = "incoming";
      goto LABEL_6;
    }

    return 0;
  }

  if (!a1[35])
  {
    return 0;
  }

  v6 = "outgoing";
LABEL_6:
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  std::string::basic_string[abi:ne200100]<0>(v50, v6);
  if (*a2)
  {
    if (v7)
    {
      v8 = v7;
      v9 = *(a2 + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = SipMessage::header<SipCSeqHeader>(v7);
      if (v10)
      {
        v11 = v10 + 64;
      }

      else
      {
        v11 = &ims::kEmptyString;
      }

      v12 = SipTransportLayer::dropInfoForMethod(a1, v11, a3);
      if (!v12)
      {
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

LABEL_36:
        if (*a2)
        {
          if (v26)
          {
            v27 = v26;
            v28 = *(a2 + 8);
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v29 = (*(*v26 + 120))(v26);
            v30 = SipTransportLayer::dropInfoForMethod(a1, v29, a3);
            if (v30)
            {
              v31 = *(v30 + 24);
              if (v28)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                if (v31)
                {
LABEL_59:
                  v36 = a1[29];
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*a1 + 224))(__p, a1);
                    v37 = v49;
                    v38 = __p[0];
                    v39 = SHIBYTE(v51);
                    v40 = v50[0];
                    v41 = (*(*v27 + 120))(v27);
                    v42 = v50;
                    if (v39 < 0)
                    {
                      v42 = v40;
                    }

                    v43 = __p;
                    if (v37 < 0)
                    {
                      v43 = v38;
                    }

                    v44 = *(v41 + 23);
                    v45 = *v41;
                    *buf = 141558787;
                    v53 = 1752392040;
                    if (v44 >= 0)
                    {
                      v46 = v41;
                    }

                    else
                    {
                      v46 = v45;
                    }

                    v54 = 2081;
                    v55 = v43;
                    v56 = 2080;
                    v57 = v42;
                    v58 = 2080;
                    v59 = v46;
                    _os_log_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sDROPPING %s %s request", buf, 0x2Au);
                    if (v49 < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }

                  v25 = 1;
                  if (!v28)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_70;
                }

LABEL_46:
                v25 = 0;
LABEL_70:
                std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                goto LABEL_72;
              }

              if (*(v30 + 24))
              {
                goto LABEL_59;
              }
            }

            else if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
              goto LABEL_46;
            }
          }
        }

        v25 = 0;
LABEL_72:
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        goto LABEL_74;
      }

      v14 = v12 + 40;
      v13 = *(v12 + 40);
      if (v13)
      {
        v15 = v8[32];
        v16 = v12 + 40;
        v17 = *(v12 + 40);
        do
        {
          v18 = *(v17 + 28);
          v19 = v18 >= v15;
          v20 = v18 < v15;
          if (v19)
          {
            v16 = v17;
          }

          v17 = *(v17 + 8 * v20);
        }

        while (v17);
        if (v16 != v14 && v15 >= *(v16 + 28))
        {
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          goto LABEL_49;
        }

        v21 = v12 + 40;
        do
        {
          v22 = *(v13 + 28);
          v23 = v22 == -1;
          v24 = v22 != -1;
          if (v23)
          {
            v21 = v13;
          }

          v13 = *(v13 + 8 * v24);
        }

        while (v13);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = v12 + 40;
        if (v9)
        {
LABEL_27:
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          if (v21 == v14)
          {
            goto LABEL_36;
          }

LABEL_49:
          v32 = a1[29];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            (*(*a1 + 224))(__p, a1);
            if (v49 >= 0)
            {
              v33 = __p;
            }

            else
            {
              v33 = __p[0];
            }

            v34 = v50;
            if (v51 < 0)
            {
              v34 = v50[0];
            }

            v35 = v8[32];
            *buf = 141558787;
            v53 = 1752392040;
            v54 = 2081;
            v55 = v33;
            v56 = 2080;
            v57 = v34;
            v58 = 1024;
            LODWORD(v59) = v35;
            _os_log_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sDROPPING %s %u response", buf, 0x26u);
            if (v49 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v25 = 1;
          goto LABEL_72;
        }
      }

      if (v21 != v14)
      {
        goto LABEL_49;
      }
    }

    v9 = 0;
    goto LABEL_36;
  }

  v25 = 0;
LABEL_74:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  return v25;
}

void sub_1E4E3AEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::processMessageFromTransport(uint64_t a1, uint64_t *a2, uint64_t a3, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a4, IpAddress **a5, SipTransportInterface **a6, SipTransportInterface **a7)
{
  v113 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 2129) == 1 && (*(**a6 + 192))() == 5060;
  v11 = *a6;
  v12 = a6[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    if (*(a1 + 1152) == v11)
    {
      v13 = 1;
      goto LABEL_20;
    }

    {
      if (!v12)
      {
        LOBYTE(v13) = 1;
        goto LABEL_25;
      }

      v13 = 1;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = v12;
      goto LABEL_19;
    }
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v14 = v16;
      v17 = *(a1 + 8);
      if (v17)
      {
        v18 = SipStack::prefs(v17);
        v13 = !ImsPrefs::DropTrafficOnUnknownTransports(v18);
      }

      else
      {
        v13 = 0;
      }

LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      goto LABEL_20;
    }
  }

  v13 = 0;
LABEL_20:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10 || v13)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    LODWORD(v12) = (*(**a6 + 192))() == 5060;
    LOBYTE(v13) = v12;
  }

LABEL_25:
  memset(&v108, 0, sizeof(v108));
  std::string::basic_string[abi:ne200100]<0>(&v108, " ");
  v85 = v12;
  v83 = a3;
  v19 = *(a1 + 2088);
  if (*(a1 + 2096) != v19)
  {
    v20 = *(a1 + 2112);
    v21 = *(v19 + 8 * (v20 >> 4)) + 408 * (v20 & 0xF);
    if (v21 != *(v19 + (((*(a1 + 2120) + v20) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a1 + 2120) + v20) & 0xF))
    {
      (*(*v21 + 48))(&buf, v21);
      IpAddress::asString(&v107, buf.__r_.__value_.__l.__data_, 3);
    }
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = std::__shared_weak_count::lock(v22);
    if (v23)
    {
      v24 = v23;
      v25 = *(a1 + 8);
      if (!v25)
      {
LABEL_183:
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        goto LABEL_184;
      }

      v26 = v13;
      v82 = v23;
      v27 = SipStack::prefs(v25);
      if (ImsPrefs::AcceptMsgFromNonProxy(v27))
      {
        if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(&v107, a1);
          if (*(v25 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, *(v25 + 4432), *(v25 + 4440));
          }

          else
          {
            buf = *(v25 + 4432);
          }

          IpAddress::logStr();
        }

        v29 = 0;
        v36 = 0;
        memset(&v107, 0, sizeof(v107));
        v28 = v10;
        if (!v10 && v26)
        {
LABEL_61:
          v39 = a2[1];
          v105[0] = *a2;
          v105[1] = v39;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipTransportLayer::logMessageMetrics(a1, v105, 1, &v107);
          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          v40.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
          v41 = *a2;
          v42 = a2[1];
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = *(a1 + 352);
          v81 = v36;
          if (v43 && (v44 = std::__shared_weak_count::lock(v43)) != 0)
          {
            v45 = v44;
            v46 = *(a1 + 344);
            if (v46)
            {
              *v110 = v41;
              *&v110[8] = v42;
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v47 = (*(*v46 + 16))(v46, v110);
              if (*&v110[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&v110[8]);
              }
            }

            else
            {
              v47 = 0;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            if (!v42)
            {
LABEL_76:
              v48.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
              v49 = *(a1 + 232);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                (*(*a1 + 224))(&buf, a1);
                *v110 = 141558531;
                v50 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
                *&v110[4] = 1752392040;
                *&v110[12] = 2081;
                *&v110[14] = v50;
                v111 = 2048;
                v112 = (v48.__d_.__rep_ - v40.__d_.__rep_) / 1000;
                _os_log_impl(&dword_1E4C3F000, v49, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sTime taken to determine IncomingMessageCategory %lld", v110, 0x20u);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              v103 = 0;
              v104 = 0;
              v51 = *(a1 + 2064);
              v52 = *(a1 + 2072);
              if (v52)
              {
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              isWifi = ims::AccessNetwork::isWifi((v25 + 3432));
              v54 = isWifi;
              SipTransportLayer::assertionStringForCategory(v101, v47, isWifi);
              v103 = 0;
              v104 = 0;
              if (v52)
              {
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                v55 = v104;
                v103 = v51;
                v104 = v52;
                if (v55)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v55);
                }

                if (!v51)
                {
LABEL_91:
                  if (v102 < 0)
                  {
                    operator delete(v101[0]);
                  }

                  if (v52)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                  }

                  v57 = *(a1 + 1136);
                  v24 = v82;
                  if (v57)
                  {
                    if (*a6 == *(a1 + 1120))
                    {
                      if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                      {
                        (*(*a1 + 224))(&buf, a1);
                        SipTransportInterface::logStr();
                      }

                      v58 = *(a1 + 1144);
                      *(a1 + 1136) = 0u;
                      if (v58)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v58);
                      }
                    }

                    else if (*a6 == v57 && os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 224))(&buf, a1);
                      SipTransportInterface::logStr();
                    }
                  }

                  if (v10)
                  {
                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 224))(&buf, a1);
                      SipTransportInterface::logStr();
                    }

                    goto LABEL_181;
                  }

                  if (!v26)
                  {
                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 224))(&buf, a1);
                      SipTransportInterface::logStr();
                    }

                    goto LABEL_181;
                  }

                  if (v85 && os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*a1 + 224))(&buf, a1);
                    SipTransportInterface::logStr();
                  }

                  (*(**a2 + 72))(v110);
                  v59 = (*(**&v110[8] + 24))(*&v110[8], *&v110[16]);
                  ImsResult::~ImsResult(v110);
                  if (v59)
                  {
                    v60 = *(a1 + 232);
                    if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT) || (((*(*a1 + 224))(v110, a1), v111 >= 0) ? (v61 = v110) : (v61 = *v110), LODWORD(buf.__r_.__value_.__l.__data_) = 141558275, *(buf.__r_.__value_.__r.__words + 4) = 1752392040, WORD2(buf.__r_.__value_.__r.__words[1]) = 2081, *(&buf.__r_.__value_.__r.__words[1] + 6) = v61, _os_log_impl(&dword_1E4C3F000, v60, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sincoming message has invalid Via header.  Dropping.", &buf, 0x16u), (SHIBYTE(v111) & 0x80000000) == 0))
                    {
LABEL_181:
                      PowerAssertionTerminationLock::~PowerAssertionTerminationLock(&v103);
                      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v107.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_183;
                    }

                    v62 = *v110;
LABEL_180:
                    operator delete(v62);
                    goto LABEL_181;
                  }

                  if (v81)
                  {
                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 224))(&buf, a1);
                      if (*(v25 + 4455) < 0)
                      {
                        std::string::__init_copy_ctor_external(&__p, *(v25 + 4432), *(v25 + 4440));
                      }

                      else
                      {
                        __p = *(v25 + 4432);
                      }

                      IpAddress::logStr();
                    }

                    goto LABEL_181;
                  }

                  memset(&buf, 0, sizeof(buf));
                  v63 = *a6;
                  v64 = a7[1];
                  v97 = *a7;
                  v98 = v64;
                  if (v64)
                  {
                    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v63 + 224))(v63, &v97, &buf);
                  if (v98)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v98);
                  }

                  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = buf.__r_.__value_.__l.__size_;
                  }

                  if (!size)
                  {
                    std::string::operator=(&buf, &SipTransport::kTransportUDP);
                  }

                  v95 = 0;
                  v96 = 0;
                  v66 = *a7;
                  if (*a7)
                  {
                    v67 = v66[32];
                    if (v67)
                    {
                      (*(*v67 + 144))(&v93);
                      if (v93)
                      {
                        v68 = *(*a7 + 32);
                        if (v68)
                        {
                          (*(*v68 + 144))(&v95);
                        }

                        else
                        {
                          v95 = 0;
                          v96 = 0;
                        }

                        goto LABEL_142;
                      }
                    }

                    else
                    {
                      v93 = 0;
                      v94 = 0;
                    }
                  }

                  (*(**a6 + 176))(&v95);
                  if (!v66)
                  {
LABEL_144:
                    if (v95)
                    {
                      v69 = a2[1];
                      v91 = *a2;
                      v92 = v69;
                      if (v69)
                      {
                        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v80 = (*(**a6 + 208))();
                      (*(*a1 + 40))(a1, &v91, v83, a4, &buf, &v95, a5, 1, v80);
                      if (v92)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
                      }
                    }

                    if (*(v25 + 2318) == 1 && (*(a1 + 2128) & 1) == 0)
                    {
                      IPTelephonyManager::getBambiClient(v110);
                      v70 = *(*v110 + 696);
                      if (*&v110[8])
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](*&v110[8]);
                      }

                      if (v70)
                      {
                        v71 = *(a1 + 232);
                        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                        {
                          (*(*a1 + 224))(&__p, a1);
                          v72 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                          v73 = __p.__r_.__value_.__r.__words[0];
                          (*(**a2 + 40))(v99);
                          p_p = &__p;
                          if (v72 < 0)
                          {
                            p_p = v73;
                          }

                          if (v100 >= 0)
                          {
                            v75 = v99;
                          }

                          else
                          {
                            v75 = v99[0];
                          }

                          *v110 = 141558531;
                          *&v110[4] = 1752392040;
                          *&v110[12] = 2081;
                          *&v110[14] = p_p;
                          v111 = 2080;
                          v112 = v75;
                          _os_log_impl(&dword_1E4C3F000, v71, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sdeferring delivery of incoming %s until system wake", v110, 0x20u);
                          if (v100 < 0)
                          {
                            operator delete(v99[0]);
                          }

                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }
                        }

                        operator new();
                      }
                    }

                    v76 = a2[1];
                    v90[0] = *a2;
                    v90[1] = v76;
                    if (v76)
                    {
                      atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v77 = *a7;
                    if (*a7)
                    {
                      v78 = a7[1];
                    }

                    else
                    {
                      v77 = *a6;
                      v78 = a6[1];
                    }

                    v89[0] = v77;
                    v89[1] = v78;
                    if (v78)
                    {
                      atomic_fetch_add_explicit(v78 + 1, 1uLL, memory_order_relaxed);
                    }

                    SipTransportLayer::sendIncomingMessageToDelegate(a1, v90, a5, v89);
                    if (v78)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v78);
                    }

                    if (v76)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
                    }

                    if (v96)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
                    }

                    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_181;
                    }

                    v62 = buf.__r_.__value_.__r.__words[0];
                    goto LABEL_180;
                  }

LABEL_142:
                  if (v94)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
                  }

                  goto LABEL_144;
                }
              }

              else
              {
                v103 = v51;
                v104 = 0;
                if (!v51)
                {
                  goto LABEL_91;
                }
              }

              *v110 = v101;
              v56 = std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v51, v101, &std::piecewise_construct, v110, &buf);
              AssertionCounter::initialize(*(v56 + 56), 300.0, v54 ^ 1, v110);
              ImsResult::~ImsResult(v110);
              goto LABEL_91;
            }
          }

          else
          {
            v47 = 0;
            if (!v42)
            {
              goto LABEL_76;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          goto LABEL_76;
        }

LABEL_54:
        if (v28)
        {
          v37 = 23;
        }

        else
        {
          v37 = 25;
        }

        if (v28)
        {
          v38 = "DroppedOnDefaultSipPort";
        }

        else
        {
          v38 = "DroppedOnInvalidTransport";
        }

        std::string::__assign_external(&v107, v38, v37);
        v36 = v29;
        goto LABEL_61;
      }

      memset(&v107, 0, sizeof(v107));
      v28 = v10;
      if (v10 || !v13)
      {
        v29 = 1;
        goto LABEL_54;
      }

      *(&v107.__r_.__value_.__s + 23) = 22;
      qmemcpy(&v107, "DroppedMsgFromNonProxy", 22);
      v30 = *(a1 + 16);
      if (v30)
      {
        v31 = std::__shared_weak_count::lock(v30);
        if (v31)
        {
          v32 = *(a1 + 8);
          if (v32)
          {
            pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            v33 = off_1EE2BBBC0;
            if (!off_1EE2BBBC0)
            {
              IMSMetricsManager::create_default_global();
            }

            v79 = *(&off_1EE2BBBC0 + 1);
            if (*(&off_1EE2BBBC0 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            *v110 = v32;
            *&v110[8] = v31;
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            IMSMetricsManager::logSipRequestFromNonProxyDropped(v33, v110);
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            if (v79)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v79);
            }

LABEL_194:
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
LABEL_195:
            v36 = 1;
            goto LABEL_61;
          }
        }
      }

      else
      {
        v31 = 0;
      }

      v34 = *(a1 + 232);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 224))(v110, a1);
        v35 = v111 >= 0 ? v110 : *v110;
        LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
        *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v35;
        _os_log_impl(&dword_1E4C3F000, v34, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}slogSipRequestFromNonProxyDropped() no stack", &buf, 0x16u);
        if (SHIBYTE(v111) < 0)
        {
          operator delete(*v110);
        }
      }

      if (!v31)
      {
        goto LABEL_195;
      }

      goto LABEL_194;
    }
  }

LABEL_184:
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E3C67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v63 - 256);
  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
    std::__shared_weak_count::__release_weak(v62);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (*(v63 - 201) < 0)
  {
    operator delete(*(v63 - 224));
  }

  PowerAssertionTerminationLock::~PowerAssertionTerminationLock(&a43);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  if (a62 < 0)
  {
    operator delete(a57);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::sendIncomingMessageToDelegate(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1[44];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = a1[43];
      if (v11)
      {
        v12 = a2[1];
        v20 = *a2;
        v21 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = (*(*a1 + 32))(a1, &v20, 1);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        if ((v13 & 1) == 0)
        {
          v14 = a2[1];
          v18 = *a2;
          v19 = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = a4[1];
          v16 = *a4;
          v17 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v11 + 24))(v11, &v18, a3, &v16);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1E4E3CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipTransportLayer::createIPSecTransport(SipTransportLayer *this@<X0>, ImsResult *a2@<X1>, void *a4@<X8>)
{
  v7 = *(this + 2);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8 && *(this + 1))
    {
      SipTransportLayer::localClientAddress(v26, this);
      v9 = *&v26[0];
      if (*(&v26[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26[0] + 1));
      }

      if (v9)
      {
        memset(v26, 0, 88);
        SipHost::resolve(v26, (this + 384), 1);
        if ((*(**(&v26[0] + 1) + 24))(*(&v26[0] + 1), LODWORD(v26[1])))
        {
          if (a2)
          {
            v16 = 0u;
            v17 = 0u;
            v18 = 0u;
            v19 = 0u;
            v15.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
            v15.__r_.__value_.__l.__size_ = &_bambiDomain;
            LODWORD(v15.__r_.__value_.__r.__words[2]) = 1073741826;
            v10 = ImsResult::operator<<<char [20]>(&v15, "can't resolve proxy");
            ims::result::resultWithCause(v10, v26, v20);
          }
        }

        else
        {
          if (SipTransportLayer::isIPSecAvailable(this))
          {
            *a4 = 0;
            a4[1] = 0;
            v13 = *(this + 26);
            if (v13 && std::__shared_weak_count::lock(v13))
            {
              operator new();
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          if (a2)
          {
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v20[0] = &unk_1F5EBDEF8;
            v20[1] = &_bambiDomain;
            v21 = 1073741833;
            v14 = ImsResult::operator<<<char [31]>(v20, "IPSec support is not available");
            ImsResult::operator=(a2, v14);
            ImsResult::~ImsResult(v20);
          }
        }

        *a4 = 0;
        a4[1] = 0;
        ImsResult::~ImsResult(v26);
      }

      else
      {
        if (a2)
        {
          memset(&v26[1] + 8, 0, 64);
          *&v26[0] = &unk_1F5EBDEF8;
          *(&v26[0] + 1) = &_bambiDomain;
          LODWORD(v26[1]) = 1073741826;
          v12 = ImsResult::operator<<<char [55]>(v26, "creating secure transport requires an active transport");
          ImsResult::operator=(a2, v12);
          ImsResult::~ImsResult(v26);
        }

        *a4 = 0;
        a4[1] = 0;
      }

LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      return;
    }
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    memset(&v26[1] + 8, 0, 64);
    *&v26[0] = &unk_1F5EBDEF8;
    *(&v26[0] + 1) = &_bambiDomain;
    LODWORD(v26[1]) = 1073741826;
    v11 = ImsResult::operator<<<char [14]>(v26, "stack is null");
    ImsResult::operator=(a2, v11);
    ImsResult::~ImsResult(v26);
  }

  *a4 = 0;
  a4[1] = 0;
  if (v8)
  {
    goto LABEL_25;
  }
}

void sub_1E4E3D05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  ImsResult::~ImsResult((v30 - 192));
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void SipTransportLayer::setIPSecTransport(uint64_t a1, uint64_t *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1120);
  if (*a2 != v2)
  {
    if (*(a1 + 1136))
    {
      v5 = *(a1 + 1144);
      *(a1 + 1136) = 0u;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        v2 = *(a1 + 1120);
      }
    }

    if (v2)
    {
      if (*a2)
      {
        v6 = *(a1 + 1128);
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 1136) = v2;
        v7 = *(a1 + 1144);
        *(a1 + 1144) = v6;
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(v35, a1);
          SipTransportInterface::logStr();
        }
      }

      v8 = *(a1 + 1128);
      *(a1 + 1120) = 0u;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    v9 = *a2;
    if (*a2)
    {
      v10 = *(a1 + 1152);
      v11 = *(a1 + 1160);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *a2;
      }

      *(v9 + 552) = a1 + 184;
      v12 = a2[1];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 1120) = v9;
      v13 = *(a1 + 1128);
      *(a1 + 1128) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        v12 = *(a1 + 1128);
        v9 = *(a1 + 1120);
      }

      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 1152) = v9;
      v14 = *(a1 + 1160);
      *(a1 + 1160) = v12;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 224))(v35, a1);
        SipTransportInterface::logStr();
      }

      if (v10)
      {
        v15 = *(a1 + 232);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(v35, a1);
          v16 = v38;
          v17 = *v35;
          v18 = (*(*v10 + 192))(v10);
          v19 = v35;
          *buf = 141558531;
          if (v16 < 0)
          {
            v19 = v17;
          }

          *&buf[4] = 1752392040;
          v40 = 2081;
          v41 = v19;
          v42 = 1024;
          LODWORD(v43) = v18;
          _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sold transport using port %u", buf, 0x1Cu);
          if (v38 < 0)
          {
            operator delete(*v35);
          }
        }

        v20 = *(a1 + 16);
        if (v20)
        {
          v21 = std::__shared_weak_count::lock(v20);
          if (v21)
          {
            v22 = v21;
            if (v10 == *(a1 + 1104))
            {
              v23 = *(a1 + 8);
              if (v23)
              {
                v24 = SipStack::prefs(*(a1 + 8));
                if (!ImsPrefs::AlwaysUseDefaultTransport(v24))
                {
                  v25 = (*(*v10 + 192))(v10);
                  v26 = *(v23 + 2160);
                  v27 = os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT);
                  if (v25 == v26)
                  {
                    if (v27)
                    {
                      (*(*a1 + 224))(v35, a1);
                      SipTransportInterface::logStr();
                    }

                    *(a1 + 2129) = 1;
                  }

                  else
                  {
                    if (v27)
                    {
                      (*(*a1 + 224))(v35, a1);
                      SipTransportInterface::logStr();
                    }

                    v34 = *(a1 + 1112);
                    *(a1 + 1104) = 0u;
                    if (v34)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
                    }
                  }
                }
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      v28 = *(a1 + 1128);
      *(a1 + 1120) = 0u;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v29 = *(a1 + 1104);
      v30 = *(a1 + 1112);
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 1152) = v29;
      v31 = *(a1 + 1160);
      *(a1 + 1160) = v30;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (*(a1 + 2129) == 1)
      {
        if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 224))(v35, a1);
          SipTransportInterface::logStr();
        }

        *(a1 + 2129) = 0;
      }

      v32 = *(a1 + 232);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 224))(buf, a1);
        v33 = v42 >= 0 ? buf : *buf;
        *v35 = 141558275;
        *&v35[4] = 1752392040;
        v36 = 2081;
        v37 = v33;
        _os_log_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sset active transport to default transport", v35, 0x16u);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(*buf);
        }
      }
    }
  }
}

void sub_1E4E3D9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::handleTransportError(SipTransportLayer *this, const ImsResult *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 1);
      if (v6)
      {
        v7 = a2;
        do
        {
          v8 = v7;
          v7 = *(v7 + 4);
        }

        while (v7);
        if (ImsResultSet::containsResult((v6 + 2272), *(v8 + 4)))
        {
          v9 = *(this + 512) + 1;
          *(this + 512) = v9;
          v10 = *(v6 + 2268);
          if (v10 && v9 <= v10)
          {
            if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 224))(v19, this);
              ImsResult::logStr();
            }

            if (v9 == v10)
            {
              v11 = *(this + 29);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                (*(*this + 224))(&buf, this);
                v17 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
                *v19 = 141558275;
                *&v19[4] = 1752392040;
                *&v19[12] = 2081;
                *&v19[14] = v17;
                _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}stoo many transport errors", v19, 0x16u);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              v12 = *(this + 2);
              if (v12)
              {
                v13 = std::__shared_weak_count::lock(v12);
                if (v13)
                {
                  v14 = v13;
                  v15 = *(this + 1);
                  if (v15)
                  {
                    IPTelephonyManager::getBambiClient(v19);
                    v16 = *v19;
                    if (*(v15 + 4455) < 0)
                    {
                      std::string::__init_copy_ctor_external(&buf, *(v15 + 4432), *(v15 + 4440));
                    }

                    else
                    {
                      buf = *(v15 + 4432);
                    }

                    BambiClient::handleTransportErrors(v16, &buf);
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }

                    if (*&v19[8])
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](*&v19[8]);
                    }
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                }
              }
            }
          }

LABEL_22:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          return;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 224))(v19, this);
    ImsResult::logStr();
  }

  if (v5)
  {
    goto LABEL_22;
  }
}

void sub_1E4E3DE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, std::__shared_weak_count *a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

void SipTransportLayer::handleTransportInitCompletion(SipTransportLayer *this, const ImsResult *a2)
{
  if (((*(**(a2 + 1) + 24))(*(a2 + 1), *(a2 + 4)) & 1) == 0)
  {
    v4 = *(this + 46);
    v5[0] = *(this + 45);
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportLayer::notifyDelegate(v6, this, a2, v5);
    ImsResult::~ImsResult(v6);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  SipTransportLayer::cancelTransportInit(this);
}

void sub_1E4E3DF94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::ipsecTransportExpired(os_log_t *a1, SipTransportInterface **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (SipTransportLayer::usingNullTransport(a1))
  {
    goto LABEL_2;
  }

  if (!*a2)
  {
    return;
  }

  if (*a2 == a1[140])
  {
LABEL_2:
    v12[0] = 0;
    v12[1] = 0;
    SipTransportLayer::setIPSecTransport(a1, v12);
    v4 = a1[2];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = a1[1];
        if (v7)
        {
          isa = v7[31].isa;
          v9 = v7[32].isa;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (isa)
          {
            v10 = *(isa + 42);
            v11 = *(isa + 43);
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v10 + 176))(v10, 16, 0, 0);
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }
          }

          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  else if (os_log_type_enabled(a1[29], OS_LOG_TYPE_DEFAULT))
  {
    ((*a1)[28].isa)(&v13, a1);
    SipTransportInterface::logStr();
  }
}

void sub_1E4E3E214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v22 = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void SipTransportLayer::removeConnections(SipTransportLayer *this, int a2, int a3, char a4)
{
  v8 = *(this + 138);
  if (v8)
  {
    SipTransportGroup::removeConnections(v8, a2, a3, a4);
  }

  v9 = *(this + 140);
  if (v9)
  {
    SipTransportGroup::removeConnections(v9, a2, a3, a4);
  }

  v10 = *(this + 142);
  if (v10)
  {

    SipTransportGroup::removeConnections(v10, a2, a3, a4);
  }
}

uint64_t SipTransportLayer::updateServiceClass(SipTransportLayer *this)
{
  v2 = *(this + 138);
  if (v2)
  {
    (*(*v2 + 272))(v2);
  }

  v3 = *(this + 140);
  if (v3)
  {
    (*(*v3 + 272))(v3);
  }

  result = *(this + 142);
  if (result)
  {
    v5 = *(*result + 272);

    return v5();
  }

  return result;
}

void SipTransportLayer::updateCrlfKeepAliveInterval(SipTransportLayer *this, int a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 1);
      if (v9)
      {
        v9[544] = a3;
        v9[543] = a3;
        isWifi = ims::AccessNetwork::isWifi((v9 + 858));
        v11 = *(this + 29);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (isWifi)
        {
          if (v12)
          {
            (*(*this + 224))(__p, this);
            v13 = v23 >= 0 ? __p : __p[0];
            v14 = *(this + 534);
            v15 = v9[545];
            *buf = 141558787;
            v25 = 1752392040;
            v26 = 2081;
            v27 = v13;
            v28 = 1024;
            v29 = v14;
            v30 = 1024;
            v31 = v15;
            _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sWiFi: Keep current keepalive interval at %u, min: %u", buf, 0x22u);
            if (v23 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else
        {
          if (v12)
          {
            (*(*this + 224))(__p, this);
            v16 = v23 >= 0 ? __p : __p[0];
            v17 = *(this + 534);
            v18 = v9[545];
            *buf = 141559299;
            v25 = 1752392040;
            v26 = 2081;
            v27 = v16;
            v28 = 1024;
            v29 = v17;
            v30 = 1024;
            v31 = a3;
            v32 = 1024;
            v33 = v18;
            v34 = 1024;
            v35 = a2;
            _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sCell: Set current keepalive interval: %u --> %u, min: %u --> %u", buf, 0x2Eu);
            if (v23 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *(this + 534) = a3;
          v9[545] = a2;
        }

        v19 = *(this + 138);
        if (v19)
        {
          (*(*v19 + 280))(v19, *(this + 534));
        }

        v20 = *(this + 140);
        if (v20)
        {
          (*(*v20 + 280))(v20, *(this + 534));
        }

        v21 = *(this + 142);
        if (v21)
        {
          (*(*v21 + 280))(v21, *(this + 534));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void SipTransportLayer::updateCrlfKeepAliveNetwork(SipTransportLayer *this, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 1);
      if (v7)
      {
        if (a2 && !*(this + 533) && (*(this + 2141) != 1 || (*(this + 2140) & 1) == 0))
        {
          v8 = *(v7 + 2184);
          v9 = *(this + 29);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 224))(__p, this);
            v10 = v17 >= 0 ? __p : __p[0];
            v11 = *(this + 534);
            v12 = *(this + 533);
            *buf = 141559299;
            v19 = 1752392040;
            v20 = 2081;
            v21 = v10;
            v22 = 1024;
            v23 = v11;
            v24 = 1024;
            v25 = 0;
            v26 = 1024;
            v27 = v12;
            v28 = 1024;
            v29 = v8;
            _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sWiFi network: Reset keepalive interval: %u --> %u, delta: %u --> %u", buf, 0x2Eu);
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *(this + 534) = 0;
          *(this + 533) = v8;
        }

        v13 = *(this + 138);
        if (v13)
        {
          (*(*v13 + 288))(v13, a2);
        }

        v14 = *(this + 140);
        if (v14)
        {
          (*(*v14 + 288))(v14, a2);
        }

        v15 = *(this + 142);
        if (v15)
        {
          (*(*v15 + 288))(v15, a2);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void SipTransportLayer::growKeepaliveInterval(SipTransportLayer *this, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 1);
      if (v7 && *(v7 + 2817) == 1)
      {
        v8 = 2176;
        if (a2)
        {
          v8 = 2172;
        }

        v9 = *(v7 + v8);
        if (v9 >= *(this + 533) + *(this + 534))
        {
          v10 = *(this + 533) + *(this + 534);
        }

        else
        {
          v10 = v9;
        }

        v11 = *(this + 29);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 224))(__p, this);
          if (v15 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v13 = *(this + 534);
          *buf = 141558787;
          v17 = 1752392040;
          v18 = 2081;
          v19 = v12;
          v20 = 1024;
          v21 = v13;
          v22 = 1024;
          v23 = v10;
          _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sGrow CRLF ping interval: %u --> %u", buf, 0x22u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *(this + 534) = v10;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void SipTransportLayer::shrinkKeepaliveInterval(SipTransportLayer *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5 && *(v5 + 2817) == 1 && ims::AccessNetwork::isWifi((v5 + 3432)))
      {
        if ((*(this + 534) - *(v5 + 2184)) <= *(v5 + 2180))
        {
          v6 = *(v5 + 2180);
        }

        else
        {
          v6 = *(this + 534) - *(v5 + 2184);
        }

        v7 = *(this + 29);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 224))(__p, this);
          if (v11 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          v9 = *(this + 534);
          *buf = 141558787;
          v13 = 1752392040;
          v14 = 2081;
          v15 = v8;
          v16 = 1024;
          v17 = v9;
          v18 = 1024;
          v19 = v6;
          _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sShrink CRLF ping interval: %u --> %u", buf, 0x22u);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *(this + 534) = v6;
        *(this + 533) = 0;
        *(this + 1070) = ims::AccessNetwork::isWifi((v5 + 3432)) | 0x100;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipTransportLayer::setDropMaskFromString(void *a1, std::string *a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  ims::tokenize(a2, &v37, 0x2Cu);
  v5 = v37;
  v6 = v38;
  if (v37 != v38)
  {
    if (a3)
    {
      v7 = "incoming ";
    }

    else
    {
      v7 = "outgoing ";
    }

    v8 = 33;
    if (a3)
    {
      v8 = 30;
    }

    v9 = &a1[v8 + 1];
    while (1)
    {
      memset(&__str, 0, sizeof(__str));
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v5, *(v5 + 1));
      }

      else
      {
        v10 = *v5;
        __str.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&__str.__r_.__value_.__l.__data_ = v10;
      }

      memset(&v35, 0, sizeof(v35));
      v34 = 0;
      v11 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : __str.__r_.__value_.__l.__size_;
      if (!v11)
      {
        break;
      }

      v12 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v13 = memchr(v12, 58, v11);
      v14 = v13 - v12;
      if (!v13 || v14 == -1)
      {
        break;
      }

      std::string::basic_string(&v40, &__str, 0, v14, __p);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      v35 = v40;
      memset(&v40, 0, sizeof(v40));
      std::string::basic_string(&v40, &__str, v14 + 1, 0xFFFFFFFFFFFFFFFFLL, __p);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        v23 = v40.__r_.__value_.__r.__words[0];
        if (v40.__r_.__value_.__l.__size_ == 1 && *v40.__r_.__value_.__l.__data_ == 42)
        {
          v34 = -1;
          operator delete(v40.__r_.__value_.__l.__data_);
          goto LABEL_24;
        }
      }

      else
      {
        v23 = &v40;
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) == 1 && v40.__r_.__value_.__s.__data_[0] == 42)
        {
          v34 = -1;
          goto LABEL_24;
        }
      }

      v24 = strtoul(v23, 0, 10);
      v34 = v24;
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (v24)
      {
        goto LABEL_24;
      }

LABEL_73:
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v5 = (v5 + 24);
      if (v5 == v6)
      {
        goto LABEL_78;
      }
    }

    std::string::operator=(&v35, &__str);
LABEL_24:
    v16 = *v9;
    if (!*v9)
    {
      goto LABEL_54;
    }

    v17 = v9;
    do
    {
      v18 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v16 + 32), &v35);
      if ((v18 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v16 = *(v16 + ((v18 >> 4) & 8));
    }

    while (v16);
    if (v17 == v9 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v35, v17 + 32) & 0x80) != 0)
    {
      v20 = *v9;
      if (!*v9)
      {
        goto LABEL_54;
      }

      v21 = v9;
      while (1)
      {
        while (1)
        {
          v22 = v20;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v35, v20 + 32) & 0x80) == 0)
          {
            break;
          }

          v20 = *v22;
          v21 = v22;
          if (!*v22)
          {
            goto LABEL_54;
          }
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v22 + 4, &v35) & 0x80) == 0)
        {
          break;
        }

        v21 = v22 + 8;
        v20 = *(v22 + 1);
        if (!v20)
        {
          goto LABEL_54;
        }
      }

      if (!*v21)
      {
LABEL_54:
        operator new();
      }

      v19 = (*v21 + 56);
      std::string::operator=(v19, &v35);
    }

    else
    {
      v19 = (v17 + 7);
    }

    v25 = v34;
    v26 = a1[29];
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        (*(*a1 + 224))(__p, a1);
        v28 = __p;
        if (v33 < 0)
        {
          v28 = __p[0];
        }

        v29 = &v35;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v35.__r_.__value_.__r.__words[0];
        }

        LODWORD(v40.__r_.__value_.__l.__data_) = 141559043;
        *(v40.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(v40.__r_.__value_.__r.__words[1]) = 2081;
        *(&v40.__r_.__value_.__r.__words[1] + 6) = v28;
        HIWORD(v40.__r_.__value_.__r.__words[2]) = 2080;
        v41 = v7;
        v42 = 1024;
        *v43 = v34;
        *&v43[4] = 2080;
        *&v43[6] = v29;
        _os_log_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swill drop %s%u responses to %s", &v40, 0x30u);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v19[1].__r_.__value_.__l.__size_, &v34, &v34);
    }

    else
    {
      if (v27)
      {
        (*(*a1 + 224))(__p, a1);
        v30 = __p;
        if (v33 < 0)
        {
          v30 = __p[0];
        }

        v31 = &v35;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v35.__r_.__value_.__r.__words[0];
        }

        LODWORD(v40.__r_.__value_.__l.__data_) = 141558787;
        *(v40.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(v40.__r_.__value_.__r.__words[1]) = 2081;
        *(&v40.__r_.__value_.__r.__words[1] + 6) = v30;
        HIWORD(v40.__r_.__value_.__r.__words[2]) = 2080;
        v41 = v7;
        v42 = 2080;
        *v43 = v31;
        _os_log_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swill drop %s%s requests", &v40, 0x2Au);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v19[1].__r_.__value_.__s.__data_[0] = 1;
    }

    goto LABEL_73;
  }

LABEL_78:
  v40.__r_.__value_.__r.__words[0] = &v37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
}

void sub_1E4E3F22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, char *a33)
{
  a33 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

void SipTransportLayer::networkManager(void *a1@<X8>)
{
  IPTelephonyManager::getBambiClient(&v4);
  v2 = *(v4 + 688);
  *a1 = *(v4 + 680);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void SipTransportLayer::handleSystemWake(SipTransportLayer *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5)
      {
        v6 = *(this + 138);
        if (v6 && *(v5 + 2192))
        {
          v7 = *(this + 29);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 224))(__p, this);
            if (v10 >= 0)
            {
              v8 = __p;
            }

            else
            {
              v8 = __p[0];
            }

            *buf = 141558275;
            v12 = 1752392040;
            v13 = 2081;
            v14 = v8;
            _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipTransportLayer::handleSystemWake()", buf, 0x16u);
            if (v10 < 0)
            {
              operator delete(__p[0]);
            }

            v6 = *(this + 138);
          }

          (*(*v6 + 232))(v6);
        }

        SipTimerContainer::cancelTimer((this + 896), "SystemWakeWaitTimeout");
        *(this + 2128) = 0;
        SipTransportLayer::processDeferredIncomingMessages(this);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipTransportLayer::handleTcpIdleExtend(SipTransportLayer *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5)
      {
        v6 = *(this + 138);
        if (v6)
        {
          if (*(v5 + 2325) == 1)
          {
            v7 = *(this + 29);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 224))(__p, this);
              if (v10 >= 0)
              {
                v8 = __p;
              }

              else
              {
                v8 = __p[0];
              }

              *buf = 141558275;
              v12 = 1752392040;
              v13 = 2081;
              v14 = v8;
              _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sExternal activity extending SIP idle timer", buf, 0x16u);
              if (v10 < 0)
              {
                operator delete(__p[0]);
              }

              v6 = *(this + 138);
            }

            (*(*v6 + 304))(v6);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipTransportLayer::terminateRegistration(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[1];
      if (v7)
      {
        v8 = *(v7 + 248);
        v9 = *(v7 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          v10 = *(v8 + 336);
          v11 = *(v8 + 344);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v10 + 176))(v10, a2, 0, 0);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v12 = a1[2];
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = v13;
        v15 = a1[1];
        if (v15 && *(v15 + 2817) == 1)
        {
          v16 = (*(a1[5] + 64))(a1 + 5);
          (*(a1[5] + 16))(a1 + 5, v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Closing transports for lazuli upon terminating registration", 59);
          *(v16 + 17) = 0;
          (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v16 + 17) = 0;
          v17 = a1[26];
          if (!v17 || (v18 = a1[25], (v19 = std::__shared_weak_count::lock(v17)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v20 = v19;
          p_shared_weak_owners = &v19->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          ims::getQueue(&queue);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 1174405120;
          v23[2] = ___ZN17SipTransportLayer21terminateRegistrationE29RegistrationTerminationReasonl_block_invoke;
          v23[3] = &__block_descriptor_tmp_41;
          v23[4] = a1;
          v23[5] = v18;
          v24 = v20;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          v22 = queue;
          dispatch_async(queue, v23);
          if (v22)
          {
            dispatch_release(v22);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
          }

          std::__shared_weak_count::__release_weak(v20);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }
}

void ___ZN17SipTransportLayer21terminateRegistrationE29RegistrationTerminationReasonl_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        SipTransportLayer::closeTransports(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSKNSt3__18weak_ptrI17SipTransportLayerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSKNSt3__18weak_ptrI17SipTransportLayerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SipTransportLayer::addUAHeaders(uint64_t a1, SipMessage **a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 248);
        v9 = *(v7 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          v10 = a2[1];
          v11 = *a2;
          v12 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipUserAgent::addUAHeaders(v8, &v11);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4E3FA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipTransportLayer::preferredSeviceClass(SipTransportLayer *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 1);
    if (v7 && (v8 = SipStack::prefs(v7), ImsPrefs::AddQosOptionsToSockets(v8)))
    {
      if (ims::AccessNetwork::isWifi((v7 + 3432)))
      {
        if (*(v7 + 3480) == 1 && (v9 = SipStack::prefs(v7), !ImsPrefs::IgnoreWifiHotspot(v9)))
        {
          v10 = 2328;
        }

        else
        {
          v10 = 2340;
        }
      }

      else
      {
        v10 = 2352;
      }

      v11 = v7 + v10;
      *a2 = *v11;
      *(a2 + 8) = *(v11 + 8);
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void SipTransportLayer::clientConfig(SipTransportLayer *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 1);
    if (v7)
    {
      v8 = *(v7 + 200);
      *(a2 + 8) = *(v7 + 208);
      *a2 = v8;
      if (*(v7 + 239) < 0)
      {
        std::string::__init_copy_ctor_external((a2 + 16), *(v7 + 216), *(v7 + 224));
      }

      else
      {
        v9 = *(v7 + 216);
        *(a2 + 32) = *(v7 + 232);
        *(a2 + 16) = v9;
      }

      *(a2 + 40) = *(v7 + 240);
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a2 + 40) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
  }
}

uint64_t SipTransportLayer::securityDelegate@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 336);
  *a2 = *(this + 328);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t SipTransportLayer::stack@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1E4E3FD00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

uint64_t SipTransportLayer::State::State(uint64_t a1, const std::string *a2)
{
  *a1 = &unk_1F5ED3398;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  return a1;
}

void sub_1E4E3FDB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *SipStackLayer::SipStackLayer(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ED34B0;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v3;
    a1[2] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    a1[1] = v3;
    a1[2] = 0;
  }

  return a1;
}

void SipStackLayer::~SipStackLayer(SipStackLayer *this)
{
  *this = &unk_1F5ED34B0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5ED34B0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t IncomingSipMessage::IncomingSipMessage(uint64_t a1, SipMessage **a2, uint64_t a3, void *a4, void *a5, char a6)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a4;
  v8 = a4[1];
  *(a1 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *a5;
  v9 = a5[1];
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = a6;
  SipMessage::clone(&v15, *a2);
  v10 = v15;
  v15 = 0uLL;
  v11 = *(a1 + 8);
  *a1 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    }
  }

  (*(**a3 + 32))(&v15);
  v12 = v15;
  v15 = 0uLL;
  v13 = *(a1 + 24);
  *(a1 + 16) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    }
  }

  return a1;
}

void sub_1E4E40090(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(exception_object);
}

void PowerAssertionTerminationLock::~PowerAssertionTerminationLock(PowerAssertionTerminationLock *this)
{
  v2 = *this;
  if (*this)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    PowerAssertionLock::deinitialize(v2, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t *std::list<IncomingSipMessage *>::list(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

void IncomingSipMessage::~IncomingSipMessage(IncomingSipMessage *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t ims::SharedLoggable<SipTransportLayer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipTransportLayer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(*(a1 + 1));
    std::__tree<unsigned int>::destroy((a1 + 88), *(a1 + 12));
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(void **a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
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
}

void std::__shared_ptr_emplace<PowerAssertionLock>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED3570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>::operator+=[abi:ne200100](uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x505050505050505 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v7 = 15 - v3;
      v8 = (v2 - 8 * (v7 >> 4));
      *result = v8;
      v5 = *v8;
      v6 = ~v7 & 0xF;
    }

    else
    {
      v4 = (v2 + ((v3 >> 1) & 0x7FFFFFFFFFFFFFF8));
      *result = v4;
      v5 = *v4;
      v6 = v3 & 0xF;
    }

    result[1] = (v5 + 408 * v6);
  }

  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__copy_impl::_CopySegment<std::__deque_iterator<SipUri,SipUri const*,SipUri const&,SipUri const* const*,long,16l>,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v12 = *a5;
    v13 = a5[1];
    v16 = 0;
    v17 = 0uLL;
    std::__copy_impl::operator()[abi:ne200100]<SipUri const*,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>,0>(&v16, a2, v10 + 6528, v12, v13);
    v8 = *(&v17 + 1);
    v7 = v17;
    *a5 = v17;
    for (a5[1] = v8; v11 != a3; a5[1] = v8)
    {
      v14 = *v11++;
      v16 = 0;
      v17 = 0uLL;
      std::__copy_impl::operator()[abi:ne200100]<SipUri const*,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>,0>(&v16, v14, v14 + 6528, v7, v8);
      v8 = *(&v17 + 1);
      v7 = v17;
      *a5 = v17;
    }

    a2 = *v11;
  }

  v16 = 0;
  v17 = 0uLL;
  std::__copy_impl::operator()[abi:ne200100]<SipUri const*,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>,0>(&v16, a2, a4, v7, v8);
  result = *&v17;
  *a5 = v17;
  return result;
}

SipUri *std::__copy_impl::operator()[abi:ne200100]<SipUri const*,std::__deque_iterator<SipUri,SipUri*,SipUri&,SipUri**,long,16l>,0>(SipUri *result, uint64_t a2, uint64_t a3, void *a4, SipUri *this)
{
  v6 = a4;
  v7 = a2;
  v8 = result;
  if (a2 == a3)
  {
    v12 = a2;
    goto LABEL_14;
  }

  v10 = *a4;
  while (1)
  {
    v11 = 0xFAFAFAFAFAFAFAFBLL * ((v10 - this + 6528) >> 3);
    if ((0xFAFAFAFAFAFAFAFBLL * ((a3 - v7) >> 3)) < v11)
    {
      v11 = 0xFAFAFAFAFAFAFAFBLL * ((a3 - v7) >> 3);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v14 = v6[1];
    ++v6;
    v10 = v14;
    this = v14;
  }

  v12 = v7 + 408 * v11;
  v13 = 408 * v11;
  do
  {
    result = SipUri::operator=(this, v7);
    v7 += 408;
    this = (this + 408);
    v13 -= 408;
  }

  while (v13);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (this == (*v6 + 6528))
  {
    v15 = v6[1];
    ++v6;
    this = v15;
  }

LABEL_14:
  *v8 = v12;
  *(v8 + 1) = v6;
  *(v8 + 2) = this;
  return result;
}

void *std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED35C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED35C0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED35C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 192))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0,std::allocator<SipTransportLayer::initializeTransportToProxy(std::deque<SipUri> const&,unsigned long,std::weak_ptr<SipTransportInitDelegate>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3640;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3640;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED3640;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 192))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0,std::allocator<SipTransportLayer::waitUntilProxyIsReachableViaLocalAddress(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED36D8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED36D8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED36D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 192))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0,std::allocator<SipTransportLayer::processMessageFromTransport(std::shared_ptr<SipMessage>,unsigned char const*,unsigned long,std::shared_ptr<IpAddress> const&,std::shared_ptr<SipTransportGroup>,std::shared_ptr<SipTcpConnection>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<SipIPSecTransportGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED3758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t __cxx_global_var_init_68()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t __cxx_global_var_init_69()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

void _GLOBAL__sub_I_SipTransportLayer_cpp()
{
  v2 = *MEMORY[0x1E69E9840];
  *__p = xmmword_1E516F660;
  qword_1EE2BC4E8 = 0;
  unk_1EE2BC4F0 = 0;
  _MergedGlobals_11 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&_MergedGlobals_11, __p, &v1, 4uLL);
}

void sub_1E4E41308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallOptions::initializeFromPrefs(BambiCallOptions *this, const ImsPrefs *a2)
{
  *(this + 8) = ImsPrefs::SessionExpiresSeconds(a2);
  *(this + 9) = ImsPrefs::MinSessionExpiresSeconds(a2);
  *(this + 11) = ImsPrefs::SessionExpiresCushion(a2);
  *(this + 50) = ImsPrefs::SendOfferWithInvite(a2);
  *(this + 60) = ImsPrefs::StrictTS24930PreconditionHeaders(a2);
  *(this + 61) = ImsPrefs::EchoRemotePreconditionStrength(a2);
  memset(&v8, 0, sizeof(v8));
  ImsPrefs::InitialRemotePreconditionStrength(a2, &v8);
  size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *(this + 14) = SipPreconditions::strengthFromString(&v8, 2);
  }

  *(this + 62) = ImsPrefs::OnlyUpdatePreconditionsIfConfPresent(a2);
  *(this + 16) = ImsPrefs::PreconditionUpdateDelayTimerMilliseconds(a2);
  *(this + 72) = ImsPrefs::PreconditionAllowMTUpdate(a2);
  *(this + 73) = ImsPrefs::SendPreconditionsInConfirmedSessions(a2);
  *(this + 74) = ImsPrefs::SendPreconditionsInPrack(a2);
  *(this + 63) = ImsPrefs::RequirePreconditionsWhenSdpPresent(a2);
  *(this + 75) = ImsPrefs::IgnoreNonCompliantSupportedHeaders(a2);
  *(this + 76) = ImsPrefs::RequirePreconditionsWhenMandatory(a2);
  std::string::basic_string[abi:ne200100]<0>(v5, "Preconditions");
  ImsPrefs::enumAsString(a2, v5, &__p);
  *(this + 13) = SipPreconditions::supportLevelFromString(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  *(this + 49) = ImsPrefs::SetSessionTimerRefresherInInitialRequest(a2);
  *(this + 84) = ImsPrefs::SendReInviteInInactiveSessions(a2);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E414C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCall::BambiCall(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = &unk_1F5EBEEC0;
  v8 = a1 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v39, "bambi.call");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v34, (*a2 + 200));
  ImsLogContainer::ImsLogContainer(v8, &v39, v34);
  if (v37 == 1 && v36 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  std::string::basic_string[abi:ne200100]<0>(v32, "bambi.call");
  v9 = *a2;
  v28 = *(*a2 + 200);
  v29 = *(v9 + 208);
  if (*(v9 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *(v9 + 216), *(v9 + 224));
  }

  else
  {
    v30 = *(v9 + 216);
  }

  v31 = *(v9 + 240);
  ims::getQueue(&v41);
  ClientConfig::getLogTag(&v38, &v28);
  if ((v33 & 0x80u) == 0)
  {
    v10 = v32;
  }

  else
  {
    v10 = v32[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v11 = v33;
  }

  else
  {
    v11 = v32[1];
  }

  v12 = std::string::insert(&v38, 0, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v40 = v12->__r_.__value_.__r.__words[2];
  v39 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v14 = &v39;
  }

  else
  {
    v14 = v39;
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v15 = v41;
  *(a1 + 168) = v41;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", v14);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  *(a1 + 144) = &unk_1F5ED39E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  *a1 = &unk_1F5ED37A8;
  *(a1 + 8) = &unk_1F5ED3830;
  *(a1 + 144) = &unk_1F5ED3890;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 208));
  *(a1 + 488) = 0;
  *(a1 + 494) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 592) = 0x40A7700000000000;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 690) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 744) = 90;
  *(a1 + 752) = 1;
  *(a1 + 754) = 1;
  *(a1 + 756) = 0x200000001;
  *(a1 + 764) = 256;
  *(a1 + 766) = 1;
  *(a1 + 767) = 0;
  *(a1 + 775) = 256;
  *(a1 + 777) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0;
  *(a1 + 880) = 0x40A7700000000000;
  *(a1 + 1024) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  SipUri::SipUri((a1 + 1080));
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1536) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1513) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1740) = 0u;
  *(a1 + 1784) = 0;
  *(a1 + 1776) = 0;
  *(a1 + 1760) = 0u;
  *(a1 + 1788) = 0x10000;
  *(a1 + 1856) = 0;
  *(a1 + 1860) = 0;
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1839) = 0;
  *(a1 + 1844) = 0;
  *(a1 + 1852) = 0;
  v16 = *(a1 + 416);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a1 + 200);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v19 = *a2;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 384);
  *(a1 + 376) = v19;
  *(a1 + 384) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  v22 = *a3;
  v21 = a3[1];
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 400);
  *(a1 + 392) = v22;
  *(a1 + 400) = v21;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  *(a1 + 336) = a1;
  v24 = *a2;
  std::string::operator=((a1 + 256), (a1 + 16));
  v25 = *(v24 + 200);
  *(a1 + 288) = *(v24 + 208);
  *(a1 + 280) = v25;
  std::string::operator=((a1 + 296), (v24 + 216));
  *(a1 + 320) = *(v24 + 240);
  *(a1 + 456) = time(0);
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1;
  *(a1 + 493) = 0;
  *(a1 + 495) = 0;
  v26 = *(a1 + 1520);
  *(a1 + 1512) = 0u;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  *(a1 + 484) = 1;
  *(a1 + 492) = 0;
  *(a1 + 552) = a4;
  *(a1 + 1529) = 0;
  *(a1 + 497) = 0;
  return a1;
}

void sub_1E4E41A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(a9);
  _Unwind_Resume(a1);
}

void BambiCall::~BambiCall(BambiCall *this)
{
  *this = &unk_1F5ED37A8;
  v2 = this + 8;
  *(this + 1) = &unk_1F5ED3830;
  *(this + 18) = &unk_1F5ED3890;
  v3 = ImsLogContainer::debugStream((this + 8));
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~BambiCall()", 12);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = *(this + 51);
  if (v4)
  {
    v15[0] = 0;
    v15[1] = 0;
    SipSession::setCall(v4, v15);
  }

  v5 = *(this + 69);
  if (v5)
  {
    if (*(v5 + 4775) < 0)
    {
      operator delete(*(v5 + 4752));
    }

    SipUri::~SipUri((v5 + 4344));
    SipStackConfig::~SipStackConfig((v5 + 1752));
    SipRegistrationConfig::~SipRegistrationConfig((v5 + 80));
    if (*(v5 + 71) < 0)
    {
      operator delete(*(v5 + 48));
    }

    if (*(v5 + 47) < 0)
    {
      operator delete(*(v5 + 24));
    }

    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    MEMORY[0x1E69235B0](v5, 0x10B2C40F20492F8);
  }

  v6 = *(this + 227);
  if (v6)
  {
    *(this + 228) = v6;
    operator delete(v6);
  }

  v7 = *(this + 224);
  if (v7)
  {
    *(this + 225) = v7;
    operator delete(v7);
  }

  if (*(this + 1727) < 0)
  {
    operator delete(*(this + 213));
  }

  if (*(this + 1703) < 0)
  {
    operator delete(*(this + 210));
  }

  if (*(this + 1655) < 0)
  {
    operator delete(*(this + 204));
  }

  if (*(this + 1631) < 0)
  {
    operator delete(*(this + 201));
  }

  if (*(this + 1583) < 0)
  {
    operator delete(*(this + 195));
  }

  if (*(this + 1559) < 0)
  {
    operator delete(*(this + 192));
  }

  v8 = *(this + 190);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 1511) < 0)
  {
    operator delete(*(this + 186));
  }

  SipUri::~SipUri((this + 1080));
  if (*(this + 1079) < 0)
  {
    operator delete(*(this + 132));
  }

  BambiCallOptions::~BambiCallOptions(this + 88);
  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 679) < 0)
  {
    operator delete(*(this + 82));
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  v9 = *(this + 56);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 54);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 52);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 50);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 48);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  SipTimerContainer::~SipTimerContainer((this + 208));
  v14 = *(this + 25);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
  *(this + 1) = &unk_1F5ED7318;
  if (*(this + 88) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  BambiCall::~BambiCall(this);

  JUMPOUT(0x1E69235B0);
}

void SipSession::setCall(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  a1[103] = v5;
  v6 = a1[104];
  a1[104] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (!*a2)
  {
    v7 = *(*a1 + 104);

    v7(a1);
  }
}

void non-virtual thunk toBambiCall::~BambiCall(BambiCall *this)
{
  BambiCall::~BambiCall((this - 8));
}

{
  BambiCall::~BambiCall((this - 144));
}

{
  BambiCall::~BambiCall((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCall::~BambiCall((this - 144));

  JUMPOUT(0x1E69235B0);
}

BOOL BambiCall::setMediaDirection(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 0;
  if (!a2 || !a3)
  {
    return result;
  }

  v8 = *(a2 + 60);
  v21 = v8;
  if (a3 == 2)
  {
    *(a2 + 60) = 3;
    goto LABEL_11;
  }

  if (a3 != 3)
  {
    *(a2 + 60) = a3;
LABEL_11:
    if ((*(a1 + 480) & 0xFFFFFFFE) != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(a2 + 60) = 2;
  if ((*(a1 + 480) & 0xFFFFFFFE) != 2)
  {
    v9 = *(a1 + 384);
    if (v9)
    {
      v9 = std::__shared_weak_count::lock(v9);
      v10 = v9;
      if (v9)
      {
        v9 = *(a1 + 376);
      }
    }

    else
    {
      v10 = 0;
    }

    v14 = SipStack::prefs(v9);
    v15 = ImsPrefs::AllowHoldMusic(v14);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v15)
    {
      goto LABEL_13;
    }
  }

LABEL_12:
  *(a2 + 60) = 4;
LABEL_13:
  *(a1 + 484) = *(a2 + 60);
  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "SetMediaDirection");
    BambiCall::activateMediaSessionIfAppropriate(a1, a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v12 = *(a1 + 8);
  v11 = a1 + 8;
  v13 = (*(v12 + 64))(v11);
  (*(*v11 + 16))(v11, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Stream ", 7);
  *(v13 + 17) = 0;
  MEMORY[0x1E69233B0](*(v13 + 8), *(a2 + 48));
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " direction set to ", 18);
  *(v13 + 17) = 0;
  v18 = *(a2 + 60);
  ims::toString<MediaDirection>(&v18, &v19);
  LoggableString::LoggableString(&__p, &v19);
  (*(*v13 + 40))(v13, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " (was ", 6);
  *(v13 + 17) = 0;
  ims::toString<MediaDirection>(&v21, &v16);
  LoggableString::LoggableString(&v17, &v16);
  (*(*v13 + 40))(v13, &v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ")", 1);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v8 != *(a2 + 60);
}

void sub_1E4E423F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCall::activateMediaSessionIfAppropriate(uint64_t a1, uint64_t a2, std::string *a3)
{
  if (a2)
  {
    v5 = *(a1 + 408);
    if (!v5)
    {
      goto LABEL_21;
    }

    v8 = *(v5 + 240);
    v7 = *(v5 + 248);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v8)
    {
      if (*(a1 + 493))
      {
        v9 = *(a1 + 408);
        v11 = *(v9 + 240);
        v10 = *(v9 + 248);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(v11 + 2968);
        v13 = *(v11 + 2976);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if (v12)
        {
          if (*(a1 + 496))
          {
            if (SipSession::confirmed(*(a1 + 408)))
            {
              goto LABEL_16;
            }

            if (*(a1 + 1529) != 1)
            {
              v42 = *(a1 + 8);
              v41 = a1 + 8;
              v43 = (*(v42 + 64))(v41);
              (*(*v41 + 16))(v41, v43);
              v44 = ImsOutStream::operator<<(v43, "activateMediaSession (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v44 + 40))(v44, &v109);
              v37 = ImsOutStream::operator<<(v44, "): waiting for session to be confirmed");
              (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              goto LABEL_52;
            }

            if ((SipDialogFork::preconditionsSatisfied(v12) & 1) == 0)
            {
              v48 = *(a1 + 8);
              v47 = a1 + 8;
              v49 = (*(v48 + 64))(v47);
              (*(*v47 + 16))(v47, v49);
              v50 = ImsOutStream::operator<<(v49, "activateMediaSession (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v50 + 40))(v50, &v109);
              v51 = ImsOutStream::operator<<(v50, "): fork ");
              (*(*v51 + 32))(v51, v12 + 264);
              v37 = ImsOutStream::operator<<(v51, " preconditions have not been met yet, can’t activate the session");
              (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              goto LABEL_52;
            }

            if (*(*(a1 + 408) + 1500) == 1)
            {
              v34 = *(a1 + 8);
              v33 = a1 + 8;
              v35 = (*(v34 + 64))(v33);
              (*(*v33 + 16))(v33, v35);
              v36 = ImsOutStream::operator<<(v35, "activateMediaSession (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v36 + 40))(v36, &v109);
              v37 = ImsOutStream::operator<<(v36, "): no early media, waiting for session to be confirmed");
              (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_52:
              v37[17] = 0;
              goto LABEL_31;
            }

            v53 = *(a1 + 384);
            if (v53)
            {
              v53 = std::__shared_weak_count::lock(v53);
              v54 = v53;
              if (v53)
              {
                v53 = *(a1 + 376);
              }
            }

            else
            {
              v54 = 0;
            }

            v73 = SipStack::prefs(v53);
            if (ImsPrefs::UseRTPDetectionAutoStart(v73))
            {
              v74 = *(a1 + 494);
              if (v54)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v54);
              }

              if ((v74 & 1) == 0)
              {
                v75 = *(a1 + 384);
                if (v75)
                {
                  v75 = std::__shared_weak_count::lock(v75);
                  v76 = v75;
                  if (v75)
                  {
                    v75 = *(a1 + 376);
                  }
                }

                else
                {
                  v76 = 0;
                }

                v96 = SipStack::prefs(v75);
                if (!ImsPrefs::EnforceEarlyMediaInactiveDirection(v96))
                {
                  if (v76)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
                  }

                  goto LABEL_152;
                }

                v97 = *(a1 + 488);
                if (v76)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v76);
                }

                if (v97 != 4)
                {
LABEL_152:
                  v99 = *(a1 + 8);
                  v98 = a1 + 8;
                  v100 = (*(v99 + 64))(v98);
                  (*(*v98 + 16))(v98, v100);
                  v101 = ImsOutStream::operator<<(v100, "activateMediaSession (");
                  LoggableString::LoggableString(&v109, a3);
                  (*(*v101 + 40))(v101, &v109);
                  v37 = ImsOutStream::operator<<(v101, "): RTP auto detection running");
                  (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  goto LABEL_52;
                }
              }
            }

            else if (v54)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }

LABEL_16:
            if ((*(a1 + 480) & 0xFFFFFFFE) == 2)
            {
              v14 = (*(*(a1 + 8) + 64))(a1 + 8);
              (*(*(a1 + 8) + 16))(a1 + 8, v14);
              v15 = ImsOutStream::operator<<(v14, "activateMediaSession (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v15 + 40))(v15, &v109);
              v16 = ImsOutStream::operator<<(v15, "): call is ");
              v17 = *(a1 + 480);
              if (v17 == 3)
              {
                v107.__r_.__value_.__r.__words[2] = 0x400000000000000;
                v18 = "held";
              }

              else if (v17 == 2)
              {
                v107.__r_.__value_.__r.__words[2] = 0x700000000000000;
                v18 = "holding";
              }

              else if (v17)
              {
                v107.__r_.__value_.__r.__words[2] = 0x700000000000000;
                v18 = "resumed";
              }

              else
              {
                v107.__r_.__value_.__r.__words[2] = 0x800000000000000;
                v18 = "resuming";
              }

              *&v107.__r_.__value_.__l.__data_ = *v18;
              LoggableString::LoggableString(&__p, &v107);
              (*(*v16 + 40))(v16, &__p);
              v52 = ImsOutStream::operator<<(v16, ", can't activate the session");
              (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v52[17] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v107.__r_.__value_.__l.__data_);
              }

              goto LABEL_31;
            }

            v38 = (a1 + 484);
            if ((*(a1 + 484) - 1) < 2)
            {
LABEL_42:
              v105 = 0;
              v106 = 0;
              BambiCall::localSdp(&v105, a1);
              if (v105)
              {
                v39 = *(a2 + 64);
                for (i = *(v105 + 448); i != *(v105 + 456); i += 200)
                {
                  if (*(i + 12) == v39)
                  {
                    goto LABEL_64;
                  }
                }

                if (v39 != 2)
                {
                  v65 = *(a1 + 8);
                  v64 = a1 + 8;
                  v66 = (*(v65 + 64))(v64);
                  (*(*v64 + 16))(v64, v66);
                  v67 = ImsOutStream::operator<<(v66, "activateMediaSession: local SDP does not contain a media stream for type ");
                  (*(*v67 + 32))(v67, &v109);
                  (*(*v67 + 64))(v67, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_123:
                  v67[17] = 0;
                  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_126:
                    v25 = 0;
LABEL_142:
                    if (v106)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v106);
                    }

                    goto LABEL_35;
                  }

                  v72 = v109.__r_.__value_.__r.__words[0];
LABEL_125:
                  operator delete(v72);
                  goto LABEL_126;
                }
              }

LABEL_64:
              v55 = *v38;
              v104 = *v38;
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, "PreconditionsSatisfied"))
              {
                if (*(*(a1 + 408) + 1500) != 2)
                {
                  v69 = *(a1 + 8);
                  v68 = a1 + 8;
                  v70 = (*(v69 + 64))(v68);
                  (*(*v68 + 16))(v68, v70);
                  v71 = ImsOutStream::operator<<(v70, "activateMediaSession: preconditions are satisfied, but early media is not enforced, won't activate the session with direction ");
                  ims::toString<MediaDirection>(v38, &__p);
                  LoggableString::LoggableString(&v109, &__p);
                  (*(*v71 + 40))(v71, &v109);
                  (*(*v71 + 64))(v71, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v71[17] = 0;
                  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v109.__r_.__value_.__l.__data_);
                  }

                  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_126;
                  }

                  v72 = __p.__r_.__value_.__r.__words[0];
                  goto LABEL_125;
                }

                v56 = 0;
                goto LABEL_114;
              }

              v57 = *(a1 + 384);
              if (v57)
              {
                v57 = std::__shared_weak_count::lock(v57);
                v58 = v57;
                if (v57)
                {
                  v57 = *(a1 + 376);
                }
              }

              else
              {
                v58 = 0;
              }

              v77 = SipStack::prefs(v57);
              if (ImsPrefs::EnforceEarlyMediaDirection(v77) && *(a1 + 1529) == 1)
              {
                v78 = SipSession::confirmed(*(a1 + 408));
                if (v58)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
                }

                if ((v78 & 1) == 0 && *(a1 + 488) > v55)
                {
                  v79 = (*(*(a1 + 8) + 64))(a1 + 8);
                  (*(*(a1 + 8) + 16))(a1 + 8, v79);
                  v80 = ImsOutStream::operator<<(v79, "Changing early media direction from ");
                  ims::toString<MediaDirection>(&v104, &__p);
                  LoggableString::LoggableString(&v109, &__p);
                  (*(*v80 + 40))(v80, &v109);
                  v81 = ImsOutStream::operator<<(v80, " to ");
                  ims::toString<MediaDirection>((a1 + 488), &v103);
                  LoggableString::LoggableString(&v107, &v103);
                  (*(*v81 + 40))(v81, &v107);
                  (*(*v81 + 64))(v81, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v81[17] = 0;
                  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v107.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v103.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v109.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  v104 = *(a1 + 488);
                  v56 = v104 != 4;
                  goto LABEL_114;
                }
              }

              else if (v58)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v58);
              }

              v56 = 1;
LABEL_114:
              shouldContinueUpdatingSession = BambiCall::shouldContinueUpdatingSession(a1);
              v83 = a1 + 8;
              v84 = *(*(a1 + 8) + 64);
              if (shouldContinueUpdatingSession)
              {
                v85 = v84(a1 + 8);
                (*(*v83 + 16))(a1 + 8, v85);
                v86 = ImsOutStream::operator<<(v85, "activating ");
                (*(*v86 + 32))(v86, &v109);
                v87 = ImsOutStream::operator<<(v86, " media session (");
                LoggableString::LoggableString(&__p, a3);
                (*(*v87 + 40))(v87, &__p);
                v88 = ImsOutStream::operator<<(v87, ")");
                (*(*v88 + 64))(v88, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v88[17] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v109.__r_.__value_.__l.__data_);
                }

                *&v109.__r_.__value_.__l.__data_ = 0uLL;
                SipSession::getMostRecentRemoteFork(*(a1 + 408), &v109);
                if (v109.__r_.__value_.__r.__words[0])
                {
                  if (SipSession::confirmed(*(a1 + 408)))
                  {
                    v89 = v109.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    v89 = v109.__r_.__value_.__r.__words[0];
                    if ((*(a1 + 488) & 0xFFFFFFFB) != 0 && (*(v109.__r_.__value_.__r.__words[0] + 984) & 0xFFFFFFFB) != 0)
                    {
                      *(v109.__r_.__value_.__r.__words[0] + 988) = 1;
                      *(*(a1 + 408) + 1504) = 1;
                    }
                  }

                  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v89 + 264), (a1 + 1056)))
                  {
                    v93 = (*(*v83 + 64))(a1 + 8);
                    (*(*v83 + 16))(a1 + 8, v93);
                    v94 = ImsOutStream::operator<<(v93, "Media settings mismatch: maybe we should update media settings");
                    (*(*v94 + 64))(v94, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    v94[17] = 0;
                    size = v109.__r_.__value_.__l.__size_;
                    v102 = *&v109.__r_.__value_.__l.__data_;
                    if (v109.__r_.__value_.__l.__size_)
                    {
                      atomic_fetch_add_explicit((v109.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
                    }

                    BambiCall::applyMediaSettingsUsingForkIfRequired(a1, a2, &v102, 1);
                    if (size)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](size);
                    }
                  }
                }

                if (v109.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v109.__r_.__value_.__l.__size_);
                }

                RTPManager::activateSessionWithId(*(a1 + 392), *(a2 + 48), v104, v56);
                v25 = 1;
                goto LABEL_142;
              }

              v90 = v84(a1 + 8);
              (*(*v83 + 16))(v83, v90);
              v91 = ImsOutStream::operator<<(v90, "Skipped activating media session (");
              LoggableString::LoggableString(&v109, a3);
              (*(*v91 + 40))(v91, &v109);
              v67 = ImsOutStream::operator<<(v91, ")");
              (*(*v67 + 64))(v67, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              goto LABEL_123;
            }

            v45 = *(a1 + 384);
            if (v45)
            {
              v45 = std::__shared_weak_count::lock(v45);
              v46 = v45;
              if (v45)
              {
                v45 = *(a1 + 376);
              }
            }

            else
            {
              v46 = 0;
            }

            v59 = SipStack::prefs(v45);
            if (ImsPrefs::EnforceEarlyMediaInactiveDirection(v59) && *(a1 + 1529) == 1 && (SipSession::confirmed(*(a1 + 408)) & 1) == 0)
            {
              v92 = *(a1 + 488);
              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }

              if (v92 != 4)
              {
                goto LABEL_42;
              }
            }

            else if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            v61 = *(a1 + 8);
            v60 = a1 + 8;
            v62 = (*(v61 + 64))(v60);
            (*(*v60 + 16))(v60, v62);
            v63 = ImsOutStream::operator<<(v62, "activateMediaSession: session is not expecting remote RTP packets, won't activate the session with direction ");
            ims::toString<MediaDirection>(v38, &__p);
            LoggableString::LoggableString(&v109, &__p);
            (*(*v63 + 40))(v63, &v109);
            (*(*v63 + 64))(v63, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v63[17] = 0;
            if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v109.__r_.__value_.__l.__data_);
            }

            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

            v32 = __p.__r_.__value_.__r.__words[0];
            goto LABEL_33;
          }

          v31 = *(a1 + 8);
          v30 = a1 + 8;
          v29 = (*(v31 + 64))(v30);
          (*(*v30 + 16))(v30, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "activateMediaSession (", 22);
          *(v29 + 17) = 0;
          LoggableString::LoggableString(&v109, a3);
          (*(*v29 + 40))(v29, &v109);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "): no valid remote IP address", 29);
          *(v29 + 17) = 0;
          (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        }

        else
        {
          v28 = *(a1 + 8);
          v27 = a1 + 8;
          v29 = (*(v28 + 64))(v27);
          (*(*v27 + 16))(v27, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "activateMediaSession (", 22);
          *(v29 + 17) = 0;
          LoggableString::LoggableString(&v109, a3);
          (*(*v29 + 40))(v29, &v109);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "): no active fork", 17);
          *(v29 + 17) = 0;
          (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        }

        *(v29 + 17) = 0;
LABEL_31:
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_34:
          v25 = 0;
LABEL_35:
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          return v25;
        }

        v32 = v109.__r_.__value_.__r.__words[0];
LABEL_33:
        operator delete(v32);
        goto LABEL_34;
      }

      v24 = *(a1 + 8);
      v23 = a1 + 8;
      v21 = (*(v24 + 64))(v23);
      (*(*v23 + 16))(v23, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "activateMediaSession (", 22);
      *(v21 + 17) = 0;
      LoggableString::LoggableString(&v109, a3);
      (*(*v21 + 40))(v21, &v109);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "): waiting for media session to be configured", 45);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
LABEL_21:
      v20 = *(a1 + 8);
      v19 = a1 + 8;
      v21 = (*(v20 + 56))(v19);
      (*(*v19 + 16))(v19, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "activateMediaSession (", 22);
      *(v21 + 17) = 0;
      LoggableString::LoggableString(&v109, a3);
      (*(*v21 + 40))(v21, &v109);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "): no SIP session", 17);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }
  }

  else
  {
    v22 = a1 + 8;
    v21 = (*(*(a1 + 8) + 56))(a1 + 8);
    (*(*v22 + 16))(v22, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "activateMediaSession (", 22);
    *(v21 + 17) = 0;
    LoggableString::LoggableString(&v109, a3);
    (*(*v21 + 40))(v21, &v109);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "): no media stream", 18);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *(v21 + 17) = 0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E4E43B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 65) < 0)
  {
    operator delete(*(v33 - 88));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCall::checkForPause(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a2;
  v25 = a3;
  if (!a2)
  {
    goto LABEL_20;
  }

  v8 = a1 + 8;
  v9 = *(a1 + 480);
  v10 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*v8 + 16))(v8, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Checking for pause (local= ", 27);
  *(v10 + 17) = 0;
  v22 = *(v4 + 60);
  ims::toString<MediaDirection>(&v22, v23);
  (*(*v10 + 32))(v10, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ", remote= ", 10);
  *(v10 + 17) = 0;
  ims::toString<MediaDirection>(&v25, __p);
  (*(*v10 + 32))(v10, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ")", 1);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v11 = v9 & 0xFFFFFFFE;
  v12 = *(v4 + 60);
  if (v12 == 3)
  {
    v12 = 2;
  }

  else if (v12 == 2)
  {
    v12 = 3;
  }

  if (v11 == 2)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 >= a3 || a3 == 1;
  if (!v14 || v13)
  {
    v16 = BambiCall::setMediaDirection(a1, v4, a3, 0);
    if (BambiCall::shouldContinueUpdatingSession(a1))
    {
      if (v11 == 2)
      {
        v17 = 4;
      }

      else
      {
        v17 = *(v4 + 60);
      }

      RTPManager::deactivateSessionWithId(*(a1 + 392), *(v4 + 48), v17);
      if (!v16)
      {
        v15 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v18 = (*(*v8 + 64))(v8);
      (*(*v8 + 16))(v8, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Skipped deactivating media session (", 36);
      *(v18 + 17) = 0;
      MEMORY[0x1E69233B0](*(v18 + 8), *(v4 + 48));
      *(v18 + 17) = 0;
      LODWORD(v4) = 1;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), ")", 1);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    v15 = 256;
LABEL_30:
    LODWORD(v4) = 1;
    return v15 | v4;
  }

  LODWORD(v4) = 0;
LABEL_20:
  v15 = 0;
  return v15 | v4;
}

void sub_1E4E44078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCall::shouldContinueUpdatingSession(SipSession **this)
{
  if (SipSession::confirmed(this[51]))
  {
    return 1;
  }

  v2 = this[51];
  if (*(v2 + 1504) != 1)
  {
    return 1;
  }

  SipSessionInterface::stack(&v9, v2);
  v3 = SipStack::prefs(v9);
  active = ImsPrefs::SelectLatestForkWithActiveEarlyMedia(v3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (!active)
  {
    SipSessionInterface::stack(&v9, this[51]);
    v5 = SipStack::prefs(v9);
    v6 = ImsPrefs::SelectForkWithActiveEarlyMedia(v5);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v6)
    {
      v9 = 0;
      v10 = 0;
      SipSession::getMostRecentRemoteFork(this[51], &v9);
      if (!v9 || (*(v9 + 988) & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_14:
      v7 = 1;
      goto LABEL_18;
    }

    return 1;
  }

  v9 = 0;
  v10 = 0;
  SipSession::getMostRecentRemoteFork(this[51], &v9);
  if (v9 && (*(v9 + 246) & 0xFFFFFFFB) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v7 = 0;
LABEL_18:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v7;
}

void sub_1E4E441B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::handleSdpOfferInFork(uint64_t a1@<X0>, uint64_t *a2@<X1>, SipDialogFork **a3@<X2>, uint64_t a4@<X8>)
{
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v121[1] = &_bambiDomain;
  v121[2] = 0;
  v8 = a2[1];
  v120[0] = *a2;
  v120[1] = v8;
  v121[0] = &unk_1F5EBDEF8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::checkRemoteSdpForValidAddress(a1, v120);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *a2;
  v10 = *(a1 + 384);
  if (v10)
  {
    v10 = std::__shared_weak_count::lock(v10);
    v11 = v10;
    if (v10)
    {
      v10 = *(a1 + 376);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = SipStack::prefs(v10);
  v13 = ImsPrefs::UseRestrictiveDirectionWhenCreatingAnswer(v12);
  v14 = SDPModel::preferredDirection(v9, 2, v13);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v15 = *(a1 + 192);
  if (v15)
  {
    hasStream = SDPSession::hasStream(*(a1 + 192));
    if (hasStream & 1) != 0 || (*(a1 + 1529))
    {
      if (hasStream)
      {
        v17 = *a3;
        if (*a3)
        {
          v18 = a2[1];
          v110 = *a2;
          v111 = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            v17 = *a3;
          }

          v108 = 0;
          v109 = 0;
          v19 = SipDialogFork::incrementSdpVersion(v17);
          v20 = SDPSession::handleOfferAnswer(v15, &v110, &v108, v19);
          if (v109)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v109);
          }

          if (v111)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v111);
          }

          if (v20)
          {
            v21 = v20 == 2;
            v22 = *(a1 + 432);
            if (v22 && (v23 = std::__shared_weak_count::lock(v22)) != 0)
            {
              v96 = v23;
              v100 = *(a1 + 424);
            }

            else
            {
              v100 = 0;
              v96 = 0;
            }

            v48 = *(a1 + 192);
            v102 = &_bambiDomain;
            v103 = 0;
            v104 = 0u;
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v101 = &unk_1F5EBDEF8;
            v49 = *(v48 + 1904);
            v98 = (v48 + 1912);
            if (v49 != (v48 + 1912))
            {
              v97 = a1 + 8;
              v99 = v14;
              while (1)
              {
                v50 = v49[5];
                v51 = BambiCall::checkForPause(a1, v50, v14, 0);
                if (*(a1 + 496))
                {
                  v52 = v99;
                }

                else
                {
                  v52 = 4;
                }

                v53 = BambiCall::setMediaDirection(a1, v50, v52, 0);
                v54 = v51 > 0xFFu || v53;
                BambiCall::localSdp(v133, a1);
                v55 = *(v50 + 64);
                v56 = *(*v133 + 448);
                if (*(v56 + 12) != v55)
                {
                  v57 = v56 + 200;
                  do
                  {
                    v58 = *(v57 + 12);
                    v57 += 200;
                  }

                  while (v58 != v55);
                  v56 = v57 - 200;
                }

                v59 = v56 + 136;
                for (i = *(v56 + 144); ; i = *(i + 8))
                {
                  if (i == v59)
                  {
                    v61 = 3;
                    goto LABEL_81;
                  }

                  if (*(i + 136) == 4)
                  {
                    break;
                  }
                }

                BambiCall::localSdp(&v135, a1);
                v62 = *(v50 + 64);
                v63 = *(v135 + 448);
                if (*(v63 + 12) != v62)
                {
                  v64 = v63 + 200;
                  do
                  {
                    v65 = *(v64 + 12);
                    v64 += 200;
                  }

                  while (v65 != v62);
                  v63 = v64 - 200;
                }

                  ;
                }

                v67 = *(j + 56);
                if (v136)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v136);
                }

                v61 = v67 - 1;
LABEL_81:
                if (*&v133[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&v133[8]);
                }

                if (v61 > 2)
                {
                  v68 = 0;
                }

                else
                {
                  v68 = dword_1E517019C[v61];
                }

                if (v51 & v54)
                {
                  v69 = *(v50 + 60);
                  if ((v69 == 4 || v69 == 2) && *(v50 + 64) == 4 && v100)
                  {
                    *(a1 + 1860) = 1;
                    v70 = (*(*(a1 + 8) + 64))();
                    (*(*v97 + 16))(v97, v70);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v70 + 8), "RTT remote hold detected!!", 26);
                    *(v70 + 17) = 0;
                    (*(*v70 + 64))(v70, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v70 + 17) = 0;
                    (*(*v100 + 248))(v100, 0);
                  }
                }

                if (v54)
                {
                  v71 = *(v50 + 60);
                  if (v71 != 2 && v71 != 4 && *(a1 + 1860) == 1)
                  {
                    v72 = *(v50 + 64);
                    if (v72 != 4)
                    {
                      goto LABEL_100;
                    }

                    if (v100)
                    {
                      *(a1 + 1860) = 0;
                      v73 = (*(*(a1 + 8) + 64))();
                      (*(*v97 + 16))(v97, v73);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), "RTT remote resume detected!!", 28);
                      *(v73 + 17) = 0;
                      (*(*v73 + 64))(v73, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      *(v73 + 17) = 0;
                      (*(*v100 + 248))(v100, 1);
                    }
                  }
                }

                v72 = *(v50 + 64);
LABEL_100:
                *(v50 + 68) = v68;
                if (v100)
                {
                  v134 = 0;
                  memset(v133, 0, sizeof(v133));
                  v74 = v72 - 1;
                  if (v74 > 3)
                  {
                    v75 = 0;
                  }

                  else
                  {
                    v75 = dword_1E51701B0[v74];
                  }

                  v76 = *(a1 + 480);
                  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v135, (a1 + 152));
                  BambiCallHoldResumeIndicationEvent::BambiCallHoldResumeIndicationEvent(v133, (v76 & 0xFFFFFFFE) == 2, v68, v75, &v135);
                  if (v136)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v136);
                  }

                  (*(*v100 + 16))(v100, v133);
                  *v133 = &unk_1F5EC4090;
                  if (*&v133[24])
                  {
                    std::__shared_weak_count::__release_weak(*&v133[24]);
                  }

                  v72 = *(v50 + 64);
                }

                v77 = *(a1 + 192);
                if (v72 == 2)
                {
                  if (v77[584])
                  {
                    v78 = v77 + 152;
                    goto LABEL_118;
                  }
                }

                else if (v72 == 6 && (v77[1856] & 1) != 0)
                {
                  v78 = v77 + 1496;
                  goto LABEL_118;
                }

                if (v77[1328] != 1)
                {
                  goto LABEL_119;
                }

                v78 = v77 + 1032;
LABEL_118:
                *(v50 + 72) = *(v78 + 13);
LABEL_119:
                v79 = *(a1 + 384);
                if (!v79)
                {
                  v80 = 0;
LABEL_126:
                  if (v21)
                  {
                    goto LABEL_127;
                  }

                  v21 = 0;
                  goto LABEL_129;
                }

                v80 = std::__shared_weak_count::lock(v79);
                if (!v80)
                {
                  goto LABEL_126;
                }

                v81 = *(a1 + 392);
                if (*(v81 + 308) != 2)
                {
                  goto LABEL_126;
                }

                v82 = *(a1 + 376);
                if (!v82)
                {
                  goto LABEL_126;
                }

                if (*(v82 + 4455) < 0)
                {
                  std::string::__init_copy_ctor_external(v133, *(v82 + 4432), *(v82 + 4440));
                }

                else
                {
                  v83 = v82 + 4432;
                  *v133 = *v83;
                  *&v133[16] = *(v83 + 16);
                }

                v88 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v81 + 280, v133);
                v89 = v81 + 288 != v88 && *(v88 + 56) == 2;
                if ((v133[23] & 0x80000000) != 0)
                {
                  operator delete(*v133);
                }

                v90 = v21 | v54;
                if (!v89)
                {
                  v90 = v21;
                }

                if (v90)
                {
LABEL_127:
                  BambiCall::updateMediaSettings(a1, v50);
                  v21 = 1;
                  goto LABEL_129;
                }

                v21 = 0;
LABEL_129:
                std::string::basic_string[abi:ne200100]<0>(v133, "HandleSdpOffer");
                BambiCall::activateMediaSessionIfAppropriate(a1, v50, v133);
                if ((v133[23] & 0x80000000) != 0)
                {
                  operator delete(*v133);
                }

                v129 = 0u;
                v130 = 0u;
                v131 = 0u;
                v132 = 0u;
                v126 = &unk_1F5EBDEF8;
                v127 = &_bambiDomain;
                v128 = 0;
                if (v80)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v80);
                }

                ImsResult::operator=(&v101, &v126);
                ImsResult::~ImsResult(&v126);
                v129 = 0u;
                v130 = 0u;
                v131 = 0u;
                v132 = 0u;
                v126 = &unk_1F5EBDEF8;
                v127 = &_bambiDomain;
                v128 = 0;
                v14 = v99;
                if (v102 != &_bambiDomain)
                {
                  ImsResult::~ImsResult(v84);
                  break;
                }

                v85 = v103;
                ImsResult::~ImsResult(v84);
                if (!v85)
                {
                  v86 = v49[1];
                  if (v86)
                  {
                    do
                    {
                      v87 = v86;
                      v86 = *v86;
                    }

                    while (v86);
                  }

                  else
                  {
                    do
                    {
                      v87 = v49[2];
                      v44 = *v87 == v49;
                      v49 = v87;
                    }

                    while (!v44);
                  }

                  v49 = v87;
                  if (v87 != v98)
                  {
                    continue;
                  }
                }

                break;
              }
            }

            ImsResult::operator=(v121, &v101);
            ImsResult::~ImsResult(&v101);
            v34 = v96;
            if (!v96)
            {
              goto LABEL_158;
            }

            goto LABEL_157;
          }

          v92 = *(a1 + 8);
          v91 = a1 + 8;
          v93 = (*(v92 + 56))(v91);
          (*(*v91 + 16))(v91, v93);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v93 + 8), "handleSdpOffer: couldn't create answer for offer", 48);
          *(v93 + 17) = 0;
          v27 = (v93 + 17);
          (*(*v93 + 64))(v93, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v28 = 488;
        }

        else
        {
          v46 = *(a1 + 8);
          v45 = a1 + 8;
          v47 = (*(v46 + 56))(v45);
          (*(*v45 + 16))(v45, v47);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "handleSdpOffer: fork is null", 28);
          *(v47 + 17) = 0;
          v27 = (v47 + 17);
          (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v28 = 481;
        }

LABEL_28:
        *v27 = 0;
        *(a4 + 24) = 0u;
        *(a4 + 40) = 0u;
        *(a4 + 56) = 0u;
        *(a4 + 72) = 0u;
        *a4 = &unk_1F5EBDEF8;
        *(a4 + 8) = &SipResultDomain::_domain;
        *(a4 + 16) = v28;
        goto LABEL_163;
      }

LABEL_27:
      v25 = *(a1 + 8);
      v24 = a1 + 8;
      v26 = (*(v25 + 48))(v24);
      (*(*v24 + 16))(v24, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Received a new offer/answer, but we don't have any media streams to handle it!", 78);
      *(v26 + 17) = 0;
      v27 = (v26 + 17);
      (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v28 = 491;
      goto LABEL_28;
    }
  }

  else if (*(a1 + 1529))
  {
    goto LABEL_27;
  }

  v29 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "handleSdpOffer: initializing MT media session", 45);
  *(v29 + 17) = 0;
  (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v29 + 17) = 0;
  v30 = *a2;
  for (k = *(*a2 + 448); k != *(*a2 + 456); k += 200)
  {
    if (*(k + 12) == 3)
    {
      *(a1 + 1784) = 1;
      break;
    }
  }

  v32 = a2[1];
  v119[0] = v30;
  v119[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::initializeMediaForMTSession(&v126, a1, v119);
  ImsResult::operator=(v121, &v126);
  ImsResult::~ImsResult(&v126);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(a1 + 384);
  if (!v33)
  {
    goto LABEL_158;
  }

  v34 = std::__shared_weak_count::lock(v33);
  if (!v34)
  {
    goto LABEL_158;
  }

  v35 = *(a1 + 376);
  if (v35 && *(v35 + 1144) == 1)
  {
    v36 = v34;
    v37 = *(a1 + 192);
    v113 = &_bambiDomain;
    v114 = 0;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v112 = &unk_1F5EBDEF8;
    v38 = *(v37 + 1904);
    v39 = (v37 + 1912);
    if (v38 != (v37 + 1912))
    {
      while (1)
      {
        BambiCall::checkForPause(a1, v38[5], v14, 0);
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v126 = &unk_1F5EBDEF8;
        v127 = &_bambiDomain;
        v128 = 0;
        ImsResult::operator=(&v112, &v126);
        ImsResult::~ImsResult(&v126);
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v126 = &unk_1F5EBDEF8;
        v127 = &_bambiDomain;
        v128 = 0;
        if (v113 != &_bambiDomain)
        {
          break;
        }

        v41 = v114;
        ImsResult::~ImsResult(v40);
        if (!v41)
        {
          v42 = v38[1];
          if (v42)
          {
            do
            {
              v43 = v42;
              v42 = *v42;
            }

            while (v42);
          }

          else
          {
            do
            {
              v43 = v38[2];
              v44 = *v43 == v38;
              v38 = v43;
            }

            while (!v44);
          }

          v38 = v43;
          if (v43 != v39)
          {
            continue;
          }
        }

        goto LABEL_154;
      }

      ImsResult::~ImsResult(v40);
    }

LABEL_154:
    ImsResult::~ImsResult(&v112);
    v34 = v36;
  }

LABEL_157:
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
LABEL_158:
  v94 = *a2;
  v95 = a2[1];
  if (v95)
  {
    atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::handleRttInSDP(a1, *(v94 + 448), *(v94 + 456));
  if (v95)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v95);
  }

  ImsResult::ImsResult(a4, v121);
LABEL_163:
  ImsResult::~ImsResult(v121);
}
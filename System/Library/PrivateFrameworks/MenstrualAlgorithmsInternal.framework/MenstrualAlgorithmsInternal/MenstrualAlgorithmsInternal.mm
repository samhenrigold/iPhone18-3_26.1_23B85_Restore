Nightingale::ngt_DayStreamProcessor *Nightingale::ngt_DayStreamProcessor::ngt_DayStreamProcessor(Nightingale::ngt_DayStreamProcessor *this, Nightingale::ngt_Config *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0;
  *(this + 140) = 0;
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 152) = 0;
  *(this + 156) = 0;
  *(this + 160) = 0;
  *(this + 164) = 0;
  *(this + 168) = 0;
  *(this + 172) = 0;
  *(this + 184) = 0;
  *(this + 248) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 105) = 0u;
  *(this + 252) = 0x1800000018;
  *(this + 260) = 1;
  *(this + 264) = 0;
  *(this + 288) = 0;
  *(this + 296) = 0;
  *(this + 320) = 0;
  *(this + 328) = 0;
  *(this + 352) = 0;
  *(this + 360) = 0;
  *(this + 384) = 0;
  *(this + 392) = 0;
  *(this + 416) = 0;
  *(this + 424) = 0;
  *(this + 448) = 0;
  *(this + 456) = 0;
  *(this + 480) = 0;
  *(this + 34) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 488) = 0u;
  *(this + 67) = this + 544;
  is_enabled = ha_sensitive_logging_is_enabled();
  if (is_enabled)
  {
    log = ha_get_log(is_enabled);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *(&__p.__r_.__value_.__s + 23) = 6;
      strcpy(&__p, "4.14.1");
      *buf = 136315138;
      *&buf[4] = &__p;
      _os_log_impl(&dword_2588F5000, log, OS_LOG_TYPE_DEFAULT, "DayStreamProcessor: %s,\n", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  Nightingale::fill_bundled_model_paths(a2, v5);
  *(this + 120) = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  *(this + 184) = *(a2 + 4);
  *(this + 168) = v9;
  *(this + 152) = v8;
  *(this + 136) = v7;
  v10 = *(a2 + 5);
  v11 = *(a2 + 6);
  v12 = *(a2 + 7);
  *(this + 245) = *(a2 + 125);
  *(this + 232) = v12;
  *(this + 216) = v11;
  *(this + 200) = v10;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 11, a2 + 6);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 296), (a2 + 176));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 328), (a2 + 208));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 15, a2 + 10);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 392), (a2 + 272));
  std::__optional_storage_base<std::vector<std::string>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<std::string>,false> const&>(this + 424, a2 + 38);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 19, a2 + 14);
  std::string::basic_string[abi:nn200100]<0>(&__p, "period_lstm");
  log_model_path(&__p, this + 33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "fwEnddet_lstm");
  log_model_path(&__p, this + 37);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "fwEnddet_rf");
  log_model_path(&__p, this + 41);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "model_period_10pct");
  log_model_path(&__p, this + 45);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "model_fwEnd_10pct");
  log_model_path(&__p, this + 49);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "period_ensemble_logic");
  log_model_path(&__p, this + 57);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(this + 448) == 1)
  {
    v13 = *(this + 53);
    for (i = *(this + 54); v13 != i; v13 = (v13 + 24))
    {
      std::string::basic_string[abi:nn200100]<0>(buf, "period_transfomer_models");
      if (*(v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v13, *(v13 + 1));
      }

      else
      {
        v15 = *v13;
        __p.__r_.__value_.__r.__words[2] = *(v13 + 2);
        *&__p.__r_.__value_.__l.__data_ = v15;
      }

      v20 = 1;
      log_model_path(buf, &__p);
      if (v20 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v22 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    v16 = ha_sensitive_logging_is_enabled();
    if (v16)
    {
      v17 = ha_get_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_2588F5000, v17, OS_LOG_TYPE_DEFAULT, "period_transfomer_models does not have path configured.\n", &__p, 2u);
      }
    }
  }

  return this;
}

void log_model_path(uint64_t *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  is_enabled = ha_sensitive_logging_is_enabled();
  if (v4 == 1)
  {
    if (is_enabled)
    {
      log = ha_get_log(is_enabled);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        if ((a2[3] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
          std::string::basic_string[abi:nn200100]<0>(v14, v15);
          return;
        }

        if (*(a1 + 23) >= 0)
        {
          v7 = a1;
        }

        else
        {
          v7 = *a1;
        }

        if (*(a2 + 23) >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        v16 = 136315394;
        v17 = v7;
        v18 = 2080;
        v19 = v8;
        v9 = "%s path: %s";
        v10 = log;
        v11 = 22;
        goto LABEL_18;
      }
    }
  }

  else if (is_enabled)
  {
    v12 = ha_get_log(is_enabled);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      v16 = 136315138;
      v17 = v13;
      v9 = "%s does not have path configured";
      v10 = v12;
      v11 = 12;
LABEL_18:
      _os_log_impl(&dword_2588F5000, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
    }
  }
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void Nightingale::ngt_DayStreamProcessor::~ngt_DayStreamProcessor(Nightingale::ngt_DayStreamProcessor *this)
{
  std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(this + 536, *(this + 68));
  v2 = *(this + 64);
  if (v2)
  {
    *(this + 65) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  if (v3)
  {
    *(this + 62) = v3;
    operator delete(v3);
  }

  Nightingale::ngt_Config::~ngt_Config(this + 15);
  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void Nightingale::ngt_DayStreamProcessor::appendDay(void *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = (v2 - *a1) >> 6;
  if (v3 <= 0x2AC5)
  {
    v4 = a1[2];
    if (v2 >= v4)
    {
      v8 = v4 - *a1;
      if (v8 >> 5 <= v3 + 1)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = v8 >> 5;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_DayInput>>(a1, v10);
    }

    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v2[2] = a2[2];
    v2[3] = v7;
    *v2 = v5;
    v2[1] = v6;
    a1[1] = v2 + 4;
  }
}

void Nightingale::ngt_DayStreamProcessor::appendPhaseSet(void *a1, uint64_t a2, int a3)
{
  v25 = a3;
  v4 = a1 + 3;
  if (a1[4] - a1[3] <= 0xAB17uLL)
  {
    std::vector<int>::push_back[abi:nn200100](a1 + 3, &v25);
    v7 = a1[7];
    v6 = a1[8];
    if (v7 >= v6)
    {
      v9 = a1[6];
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v11 = v6 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>((a1 + 6), v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v8 = 8 * v10 + 8;
      v15 = a1[6];
      v16 = a1[7] - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = a1[6];
      a1[6] = v17;
      a1[7] = v8;
      a1[8] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v7 = a2;
      v8 = (v7 + 1);
    }

    a1[7] = v8;
  }

  std::vector<int>::vector[abi:nn200100](__p, v4);
  std::vector<Nightingale::PhaseSet>::vector[abi:nn200100](&v23, a1 + 6);
  v19 = a1[9];
  if (v19)
  {
    a1[10] = v19;
    operator delete(v19);
  }

  *(a1 + 9) = *__p;
  a1[11] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v20 = a1[12];
  if (v20)
  {
    a1[13] = v20;
    operator delete(v20);
    v20 = __p[0];
  }

  *(a1 + 6) = v23;
  a1[14] = v24;
  v24 = 0;
  v23 = 0uLL;
  if (v20)
  {
    __p[1] = v20;
    operator delete(v20);
  }
}

void std::vector<int>::push_back[abi:nn200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void Nightingale::ngt_DayStreamProcessor::analyze(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v150 = *MEMORY[0x277D85DE8];
  Nightingale::PhaseCondenser::phase_updates(&v93, (a1 + 536));
  v8 = v93;
  v9 = v94;
  if (v93 != v94)
  {
    do
    {
      Nightingale::ngt_DayStreamProcessor::appendPhaseSet(a1, *v8, *(v8 + 2));
      v8 += 2;
    }

    while (v8 != v9);
    v8 = v93;
  }

  if (v8)
  {
    v94 = v8;
    operator delete(v8);
  }

  *(a4 + 52) = 0;
  *(a4 + 56) = 0;
  *(a4 + 60) = 0;
  *(a4 + 64) = 0;
  *(a4 + 68) = 0;
  *(a4 + 72) = 0;
  *(a4 + 76) = 0;
  *(a4 + 80) = 0;
  *(a4 + 84) = 0;
  *(a4 + 88) = 0;
  *(a4 + 92) = 0;
  *(a4 + 96) = 0;
  *(a4 + 100) = 0;
  *(a4 + 104) = 0;
  *(a4 + 108) = 0;
  *(a4 + 112) = 0;
  *(a4 + 116) = 0;
  *(a4 + 120) = 0;
  *(a4 + 256) = 0;
  *(a4 + 261) = 0;
  *(a4 + 264) = 0;
  *(a4 + 504) = 0;
  *(a4 + 512) = 0;
  *(a4 + 604) = 0;
  *(a4 + 48) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  is_enabled = ha_sensitive_logging_is_enabled();
  if (is_enabled)
  {
    log = ha_get_log(is_enabled);
    is_enabled = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
    if (is_enabled)
    {
      Nightingale::ngt_DayStreamProcessor::analyze();
    }
  }

  Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc(is_enabled, a1, (a1 + 72), a1 + 120);
  *(a1 + 164) = BYTE4(a2);
  *(a1 + 160) = a2;
  Nightingale::uiLogProcessor::uiLogProcessor(v148, *(a1 + 168));
  Nightingale::uiLogProcessor::extractCycles(v148, a1, (a1 + 72), a1 + 120, &v144);
  v12 = a1 + 488;
  v13 = *(a1 + 488);
  *(a1 + 496) = v13;
  v14 = a1 + 512;
  *(a1 + 520) = *(a1 + 512);
  if (v144 != v145 && v146 == 1 && (*(a1 + 156) & 1) != 0)
  {
    memset(v141, 0, sizeof(v141));
    std::vector<Nightingale::cycleInfo>::__init_with_size[abi:nn200100]<Nightingale::cycleInfo*,Nightingale::cycleInfo*>(v141, v144, v145, 0xAAAAAAAAAAAAAAABLL * ((v145 - v144) >> 5));
    Nightingale::ngt_DayStreamProcessor::compute_stats(v141, a1 + 120, (a1 + 72), v147, v142);
    v93 = v141;
    std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](&v93);
    v50 = Nightingale::ngt_DayStreamProcessor::inactiveDetect(v15, &v144, (a1 + 72), *&v142[0], *(a1 + 152));
    v131 = 0;
    v132 = 0;
    memset(&v149[2], 255, 20);
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    if (*(a1 + 248) == 1)
    {
      Nightingale::ngt_deviationAnalyzer::ngt_deviationAnalyzer(&v81);
      Nightingale::ngt_deviationAnalyzer::deviation_process(&v81, a1 + 120, a1, &v144, (a1 + 72), a3, &v93, v44);
      v16 = v93;
      v139 = *(&v93 + 1);
      v140 = BYTE3(v93);
      v56 = __PAIR64__(v94, HIDWORD(v93));
      v137 = *(&v94 + 5);
      v138 = HIBYTE(v94);
      v57 = v95;
      v48 = v96;
      v49 = BYTE4(v94);
      v135 = v97;
      v136 = v98;
      v58 = v99;
      v59 = v100;
      v64 = v101;
      v134 = v103;
      v133 = v102;
      v60 = v104;
      v132 = v106;
      v131 = v105;
      *&v149[14] = *&v107[14];
      *v149 = *v107;
      v130 = v109;
      v129 = v108;
      v51 = v111;
      v128 = v114;
      v127 = v113;
      v46 = v115;
      v47 = v110;
      v52 = v116;
      v53 = v117;
      v61 = v112;
      v62 = v118;
      v126 = v120;
      v125 = v119;
      v45 = v121;
      v54 = v122;
      v55 = v123;
      v63 = v124;
      Nightingale::ngt_deviationAnalyzer::~ngt_deviationAnalyzer(&v81);
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v16 = 0;
      v63 = -1;
      v64 = 0;
      v54 = -1;
      v55 = -1;
      v61 = -1;
      v62 = -1;
      v52 = -1;
      v53 = -1;
      v51 = -1;
      v60 = -1;
      v58 = -1;
      v59 = -1;
      v57 = -1;
      v56 = -1;
    }

    Nightingale::ngtProjector::ngtProjector(&v93, a1, a1 + 120, &v144, a1 + 72);
    BYTE8(v81) = 0;
    LOBYTE(v82) = 0;
    BYTE8(v82) = 0;
    LOBYTE(v83) = 0;
    BYTE8(v83) = 0;
    BYTE12(v83) = 0;
    LOBYTE(v84) = 0;
    BYTE4(v84) = 0;
    BYTE8(v84) = 0;
    LOBYTE(v85) = 0;
    BYTE8(v85) = 0;
    LOBYTE(v86) = 0;
    BYTE8(v86) = 0;
    BYTE12(v86) = 0;
    LOBYTE(v87) = 0;
    BYTE4(v87) = 0;
    BYTE8(v87) = 0;
    BYTE12(v87) = 0;
    v88[0] = 0;
    v88[4] = 0;
    *&v88[8] = 0;
    *&v88[12] = -4294967291;
    *&v88[20] = 0;
    *&v88[24] = -1;
    *&v89 = -1;
    BYTE8(v89) = 0;
    BYTE12(v89) = 0;
    DWORD1(v90) = -1082130432;
    *(&v90 + 1) = -1;
    *v91 = -1;
    __asm { FMOV            V0.4S, #-1.0 }

    *&v91[8] = _Q0;
    __asm { FMOV            V0.2S, #-1.0 }

    *&v91[24] = _Q0;
    *v92 = -1;
    *&v92[8] = 0;
    v92[10] = 0;
    *&v92[12] = xmmword_258950360;
    *&v92[28] = 9;
    Nightingale::ngtProjector::projector(&v93, a1 + 488, (a1 + 512), v148, a3, &v81);
    Nightingale::uiLogProcessor::print_anUILog(v148, &v144);
    v25 = *(a4 + 504);
    v26 = *v92;
    *(a4 + 456) = *&v91[16];
    *(a4 + 472) = v26;
    *(a4 + 488) = *&v92[16];
    v27 = v89;
    *(a4 + 392) = *&v88[16];
    *(a4 + 408) = v27;
    v28 = *v91;
    *(a4 + 424) = v90;
    *(a4 + 440) = v28;
    v29 = v86;
    *(a4 + 328) = v85;
    *(a4 + 344) = v29;
    v30 = *v88;
    *(a4 + 360) = v87;
    *(a4 + 376) = v30;
    v31 = v82;
    *(a4 + 264) = v81;
    *(a4 + 280) = v31;
    v32 = v84;
    *(a4 + 296) = v83;
    *(a4 + 312) = v32;
    if ((v25 & 1) == 0)
    {
      *(a4 + 504) = 1;
    }

    Nightingale::ngt_DayStreamProcessor::printStats(v24, v142);
    LOBYTE(v65) = v16;
    *(&v65 + 1) = v139;
    BYTE3(v65) = v140;
    *(&v65 + 4) = v56;
    BYTE12(v65) = v49;
    *(&v65 + 13) = v137;
    HIBYTE(v65) = v138;
    *&v66 = v57;
    BYTE8(v66) = v48;
    *(&v66 + 9) = v135;
    BYTE11(v66) = v136;
    HIDWORD(v66) = v58;
    LODWORD(v67) = v59;
    BYTE4(v67) = v64;
    BYTE7(v67) = v134;
    *(&v67 + 5) = v133;
    *(&v67 + 1) = v60;
    *&v68[4] = v132;
    *v68 = v131;
    *&v68[20] = *&v149[14];
    *&v68[6] = *v149;
    *&v68[32] = v130;
    *&v68[28] = v129;
    *&v68[34] = v47;
    *&v68[36] = v51;
    v70 = v128;
    *&v68[44] = v61;
    v69 = v127;
    v71 = v46;
    v72 = v52;
    v73 = v53;
    v76 = v126;
    v74 = v62;
    v75 = v125;
    v77 = v45;
    v78 = v54;
    v79 = v55;
    v80 = v63;
    Nightingale::ngt_DayStreamProcessor::printDeviations(v33, &v65);
    v34 = ha_sensitive_logging_is_enabled();
    if (v34)
    {
      v35 = ha_get_log(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_DayStreamProcessor::analyze();
      }
    }

    *(a4 + 260) = v147;
    if (v12 != a4)
    {
      std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:nn200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>(a4, *(a1 + 488), *(a1 + 496), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 496) - *(a1 + 488)) >> 3));
    }

    if (a4 + 24 != v14)
    {
      std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:nn200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>((a4 + 24), *(a1 + 512), *(a1 + 520), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 520) - *(a1 + 512)) >> 3));
    }

    v36 = v142[3];
    *(a4 + 80) = v142[2];
    *(a4 + 96) = v36;
    *(a4 + 112) = v143;
    v37 = v142[1];
    *(a4 + 48) = v142[0];
    *(a4 + 64) = v37;
    if (*(a1 + 248) == 1)
    {
      v38 = *(a4 + 256);
      *(a4 + 120) = v16;
      *(a4 + 121) = v139;
      *(a4 + 123) = v140;
      *(a4 + 124) = v56;
      *(a4 + 132) = v49;
      *(a4 + 133) = v137;
      *(a4 + 135) = v138;
      *(a4 + 136) = v57;
      *(a4 + 144) = v48;
      v39 = v135;
      *(a4 + 147) = v136;
      *(a4 + 145) = v39;
      *(a4 + 148) = v58;
      *(a4 + 152) = v59;
      *(a4 + 156) = v64;
      *(a4 + 157) = v133;
      *(a4 + 159) = v134;
      *(a4 + 160) = v60;
      *(a4 + 168) = v131;
      *(a4 + 172) = v132;
      *(a4 + 188) = *&v149[14];
      *(a4 + 174) = *v149;
      *(a4 + 200) = v130;
      *(a4 + 196) = v129;
      *(a4 + 202) = v47;
      *(a4 + 204) = v51;
      *(a4 + 220) = v128;
      v40 = v127;
      *(a4 + 212) = v61;
      *(a4 + 216) = v40;
      *(a4 + 222) = v46;
      *(a4 + 224) = v52;
      *(a4 + 228) = v53;
      v41 = v125;
      *(a4 + 240) = v126;
      *(a4 + 232) = v62;
      *(a4 + 236) = v41;
      *(a4 + 242) = v45;
      *(a4 + 244) = v54;
      *(a4 + 248) = v55;
      *(a4 + 252) = v63;
      if ((v38 & 1) == 0)
      {
        *(a4 + 256) = 1;
      }
    }

    *(a4 + 261) = v50;
    Nightingale::ngtProjector::getEnsembleTelemetry(&v65, &v93);
    v42 = *v68;
    *(a4 + 544) = v67;
    *(a4 + 560) = v42;
    *(a4 + 576) = *&v68[16];
    *(a4 + 589) = *&v68[29];
    v43 = v66;
    *(a4 + 512) = v65;
    *(a4 + 528) = v43;
    Nightingale::ngtProjector::~ngtProjector(&v93);
  }

  else
  {
    *(a4 + 260) = 0;
    if (v12 != a4)
    {
      std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:nn200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>(a4, v13, v13, 0);
    }

    if (a4 + 24 != v14)
    {
      std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:nn200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>((a4 + 24), *(a1 + 512), *(a1 + 520), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 520) - *(a1 + 512)) >> 3));
    }

    v17 = ha_sensitive_logging_is_enabled();
    if (v17)
    {
      v18 = ha_get_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_DayStreamProcessor::analyze();
      }
    }
  }

  v93 = &v144;
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](&v93);
  Nightingale::uiLogProcessor::~uiLogProcessor(v148);
}

void Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v100 = *MEMORY[0x277D85DE8];
  is_enabled = ha_sensitive_logging_is_enabled();
  if (is_enabled)
  {
    log = ha_get_log(is_enabled);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = ha_sensitive_logging_is_enabled();
  if (v7 != v8)
  {
    v86 = a3;
    if (v9)
    {
      v10 = ha_get_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
      }
    }

    v11 = *a2;
    v12 = a2[1];
    v13 = v12 - *a2;
    if (v13 == 64)
    {
LABEL_9:
      v15 = *(v12 - 64);
      v14 = *(v12 - 60);
      v16 = *(v12 - 56);
      v17 = *(v12 - 52);
      v18 = *(v12 - 44);
      v19 = *(v12 - 40);
      v20 = *(v12 - 36);
      v21 = *(v12 - 32);
      v22 = *(v12 - 28);
      v23 = *(v12 - 24);
      v91 = *(v12 - 16);
      v94 = *(v12 - 20);
      v24 = *(v12 - 4);
      v25 = ha_sensitive_logging_is_enabled();
      if (v25)
      {
        v26 = ha_get_log(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109888;
          *v96 = v15;
          *&v96[4] = 1024;
          *&v96[6] = v14;
          *&v96[10] = 1024;
          *&v96[12] = v16 & 1;
          *&v96[16] = 1024;
          *v97 = v17;
          _os_log_debug_impl(&dword_2588F5000, v26, OS_LOG_TYPE_DEBUG, "\t{jDay: %d, flow: %d, spotting: %d, opk: %d, ", buf, 0x1Au);
        }
      }

      v27 = ha_sensitive_logging_is_enabled();
      if (v27)
      {
        v28 = ha_get_log(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v82 = v18;
          v83 = -1.0;
          if ((v19 & 1) == 0)
          {
            v82 = -1.0;
          }

          if (v21)
          {
            v83 = v20;
          }

          *buf = 134218752;
          *v96 = v82;
          if (v23)
          {
            v84 = v22;
          }

          else
          {
            v84 = -1;
          }

          *&v96[8] = 2048;
          *&v96[10] = v83;
          *v97 = 1024;
          *&v97[2] = v84;
          v85 = v94;
          if ((v91 & 1) == 0)
          {
            v85 = -1;
          }

          v98 = 1024;
          v99 = v85;
          _os_log_debug_impl(&dword_2588F5000, v28, OS_LOG_TYPE_DEBUG, "sensor: {aHR: %5.2f, sHR: %5.2f, aHRCnt: %d, sHRCnt: %d, ", buf, 0x22u);
        }
      }

      v29 = ha_sensitive_logging_is_enabled();
      if (v24)
      {
        a3 = v86;
        if (v29)
        {
          v30 = ha_get_log(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
          }
        }
      }

      else
      {
        a3 = v86;
        if (v29)
        {
          v58 = ha_get_log(v29);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
          }
        }
      }

      v59 = ha_sensitive_logging_is_enabled();
      if (v59)
      {
        v60 = ha_get_log(v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
        }
      }

      goto LABEL_53;
    }

    v32 = 0;
    v33 = v13 >> 6;
    v34 = 60;
    while (1)
    {
      if (v33 <= v32)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v35 = (v11 + v34);
      v37 = *(v35 - 15);
      v36 = *(v35 - 14);
      v38 = *(v35 - 52);
      v39 = *(v35 - 12);
      v40 = *(v35 - 10);
      v41 = *(v35 - 36);
      v42 = *(v35 - 8);
      v43 = *(v35 - 28);
      v90 = *(v35 - 6);
      v92 = *(v35 - 4);
      v88 = *(v35 - 20);
      v89 = *(v35 - 12);
      v87 = *(v35 - 8);
      v44 = *(v35 - 1);
      v45 = *v35;
      v46 = ha_sensitive_logging_is_enabled();
      if (v46)
      {
        v47 = ha_get_log(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109888;
          *v96 = v37;
          *&v96[4] = 1024;
          *&v96[6] = v36;
          *&v96[10] = 1024;
          *&v96[12] = v38 & 1;
          *&v96[16] = 1024;
          *v97 = v39;
          _os_log_debug_impl(&dword_2588F5000, v47, OS_LOG_TYPE_DEBUG, "\t{jDay: %d, flow: %d, spotting: %d, opk: %d, ", buf, 0x1Au);
        }
      }

      v48 = ha_sensitive_logging_is_enabled();
      if (v48)
      {
        v49 = ha_get_log(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v54 = v40;
          if ((v41 & 1) == 0)
          {
            v54 = -1.0;
          }

          v55 = v42;
          if ((v43 & 1) == 0)
          {
            v55 = -1.0;
          }

          *buf = 134218752;
          *v96 = v54;
          v56 = v90;
          if ((v88 & 1) == 0)
          {
            v56 = -1;
          }

          *&v96[8] = 2048;
          *&v96[10] = v55;
          *v97 = 1024;
          *&v97[2] = v56;
          v57 = v92;
          if ((v89 & 1) == 0)
          {
            v57 = -1;
          }

          v98 = 1024;
          v99 = v57;
          _os_log_debug_impl(&dword_2588F5000, v49, OS_LOG_TYPE_DEBUG, "sensor: {aHR: %5.2f, sHR: %5.2f, aHRCnt: %d, sHRCnt: %d,", buf, 0x22u);
        }
      }

      v50 = ha_sensitive_logging_is_enabled();
      if (v45)
      {
        if (!v50)
        {
          goto LABEL_34;
        }

        v51 = ha_get_log(v50);
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_34;
        }

        *buf = 67109376;
        *v96 = v87;
        *&v96[4] = 2048;
        *&v96[6] = v44;
        v52 = v51;
      }

      else
      {
        if (!v50)
        {
          goto LABEL_34;
        }

        v53 = ha_get_log(v50);
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_34;
        }

        *buf = 67109376;
        *v96 = -1;
        *&v96[4] = 2048;
        *&v96[6] = 0xBFF0000000000000;
        v52 = v53;
      }

      _os_log_debug_impl(&dword_2588F5000, v52, OS_LOG_TYPE_DEBUG, "wTmp: {watchID: %d, tp: %5.2f}}},\n", buf, 0x12u);
LABEL_34:
      ++v32;
      v11 = *a2;
      v12 = a2[1];
      v33 = (v12 - *a2) >> 6;
      v34 += 64;
      if (v33 - 1 <= v32)
      {
        goto LABEL_9;
      }
    }
  }

  if (v9)
  {
    v31 = ha_get_log(v9);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }
  }

LABEL_53:
  v61 = *a3;
  v62 = a3[1];
  v63 = ha_sensitive_logging_is_enabled();
  if (v61 == v62)
  {
    if (v63)
    {
      v69 = ha_get_log(v63);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
      }
    }
  }

  else
  {
    if (v63)
    {
      v64 = ha_get_log(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
      }
    }

    if (a3[1] - *a3 != 4)
    {
      v76 = 0;
      do
      {
        v77 = ha_sensitive_logging_is_enabled();
        if (v77)
        {
          v78 = ha_get_log(v77);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            if (v76 >= (a3[1] - *a3) >> 2)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v79 = a3[3];
            if (v76 >= (a3[4] - v79) >> 3)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v80 = *(*a3 + 4 * v76);
            v81 = *(v79 + 8 * v76);
            *buf = 67109376;
            *v96 = v80;
            *&v96[4] = 1024;
            *&v96[6] = v81;
            _os_log_debug_impl(&dword_2588F5000, v78, OS_LOG_TYPE_DEBUG, "\t{jDay: %d, phase: %d}, \n", buf, 0xEu);
          }
        }

        ++v76;
      }

      while (((a3[1] - *a3) >> 2) - 1 > v76);
    }

    v65 = ha_sensitive_logging_is_enabled();
    if (v65)
    {
      v66 = ha_get_log(v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
      }
    }

    v67 = ha_sensitive_logging_is_enabled();
    if (v67)
    {
      v68 = ha_get_log(v67);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
      }
    }
  }

  v70 = ha_sensitive_logging_is_enabled();
  if (v70)
  {
    v71 = ha_get_log(v70);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }
  }

  v72 = ha_sensitive_logging_is_enabled();
  if (v72)
  {
    v73 = ha_get_log(v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }
  }

  v74 = ha_sensitive_logging_is_enabled();
  if (v74)
  {
    v75 = ha_get_log(v74);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }
  }
}

void Nightingale::ngt_DayStreamProcessor::compute_stats(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, _BYTE *a6@<X8>)
{
  *a6 = 0;
  a6[4] = 0;
  a6[8] = 0;
  a6[12] = 0;
  a6[16] = 0;
  a6[20] = 0;
  a6[24] = 0;
  a6[28] = 0;
  a6[32] = 0;
  a6[36] = 0;
  a6[40] = 0;
  a6[44] = 0;
  a6[48] = 0;
  a6[52] = 0;
  a6[56] = 0;
  a6[60] = 0;
  a6[64] = 0;
  a6[68] = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  if (*(a3 + 36) != 1)
  {
    return;
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  if (*a2 == v9)
  {
    return;
  }

  v11 = *(a3 + 32);
  if (v11 < 365 || v11 < *(v9 - 24))
  {
    return;
  }

  v14 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  do
  {
    if ((*(a3 + 36) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
LABEL_67:
      std::string::__throw_length_error[abi:nn200100]();
    }

    if ((*(a3 + 32) - *v8) <= 0x16C)
    {
      std::vector<int>::push_back[abi:nn200100](&v62, &v61);
      v14 = v61;
    }

    v61 = ++v14;
    v8 += 24;
  }

  while (v8 != v9);
  v15 = v62;
  v16 = v63;
  if (v62 != v63)
  {
    v51 = a5;
    v17 = *a2;
    v18 = *(a2 + 8);
    v19 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *a2) >> 5);
    v20 = v62;
    if (v19 - 1 == *(v63 - 1))
    {
      *(a6 + 16) = *(v18 - 96);
      a6[68] = 1;
      v20 = v15;
    }

    while (1)
    {
      v21 = *v20;
      if (v19 <= v21)
      {
LABEL_65:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = &v17[24 * v21];
      if (*(v22 + 24) == 1)
      {
        break;
      }

      if (++v20 == v16)
      {
        goto LABEL_18;
      }
    }

    *(a6 + 14) = *v22;
    a6[60] = 1;
LABEL_18:
    __src = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v52 = a4;
    do
    {
      v23 = *v15;
      v24 = *a2;
      v25 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5);
      if (v25 <= v23)
      {
        goto LABEL_65;
      }

      if (LOBYTE(v24[24 * v23 + 2]) == 1)
      {
        v54 = v24[24 * v23 + 1] - v24[24 * v23] + 1;
        std::vector<int>::push_back[abi:nn200100](&v55, &v54);
        v23 = *v15;
        v24 = *a2;
        v25 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5);
      }

      if (v25 <= v23)
      {
        goto LABEL_65;
      }

      v26 = &v24[24 * v23];
      if (*(v26 + 24) == 1)
      {
        v27 = *v26;
        v28 = v26[5];
        LOBYTE(v54) = 0;
        std::vector<Nightingale::Phase>::vector[abi:nn200100](__p, &v54, 1);
        v29 = Nightingale::phaseFactorProcessor::detectPhases(&v65, v27 | (v28 << 32), __p, a4);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (!v29)
        {
          v30 = v28 - v27 + 1;
          v31 = v59;
          if (v59 >= v60)
          {
            v33 = __src;
            v34 = v59 - __src;
            v35 = (v59 - __src) >> 2;
            v36 = v35 + 1;
            if ((v35 + 1) >> 62)
            {
              goto LABEL_67;
            }

            v37 = v60 - __src;
            if ((v60 - __src) >> 1 > v36)
            {
              v36 = v37 >> 1;
            }

            v38 = v37 >= 0x7FFFFFFFFFFFFFFCLL;
            v39 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v38)
            {
              v39 = v36;
            }

            if (v39)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(&__src, v39);
            }

            *(4 * v35) = v30;
            v32 = 4 * v35 + 4;
            memcpy(0, v33, v34);
            v40 = __src;
            __src = 0;
            v59 = v32;
            v60 = 0;
            if (v40)
            {
              operator delete(v40);
            }

            a4 = v52;
          }

          else
          {
            *v59 = v30;
            v32 = (v31 + 4);
          }

          v59 = v32;
        }
      }

      ++v15;
    }

    while (v15 != v16);
    if ((v51 & 1) != 0 && v56 != v55)
    {
      v56 -= 4;
    }

    v41 = v59 - __src;
    if (v59 != __src)
    {
      v42 = v41 >> 2;
      std::__sort<std::__less<int,int> &,int *>();
      v43 = __src;
      v44 = (__src + 4 * ((v41 >> 2) >> 1));
      if ((v41 & 4) != 0)
      {
        v45 = *v44;
      }

      else
      {
        v45 = llroundf(vcvts_n_f32_s32(*v44 + *(v44 - 1), 1uLL));
      }

      a6[4] = 1;
      *a6 = v45;
      *(a6 + 8) = v43[llround(vcvtd_n_f64_u64(v42 - 1, 3uLL))];
      a6[36] = 1;
      *(a6 + 10) = v43[llround((v42 - 1) * 0.875)];
      a6[44] = 1;
    }

    v46 = v55;
    v47 = v56 - v55;
    if (v56 == v55)
    {
      *(a6 + 12) = v41 >> 2;
      a6[52] = 1;
      if (!v46)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v48 = v47 >> 2;
      std::__sort<std::__less<int,int> &,int *>();
      v46 = v55;
      v49 = v55 + 4 * ((v47 >> 2) >> 1);
      if ((v47 & 4) != 0)
      {
        *(a6 + 2) = *v49;
        a6[12] = 1;
      }

      else
      {
        v50 = vcvts_n_f32_s32(*v49 + *(v49 - 1), 1uLL);
        a6[12] = 1;
        *(a6 + 2) = llroundf(v50);
      }

      *(a6 + 4) = v46[llround(vcvtd_n_f64_u64(v48 - 1, 3uLL))];
      a6[20] = 1;
      *(a6 + 6) = v46[llround((v48 - 1) * 0.875)];
      a6[28] = 1;
      *(a6 + 12) = v41 >> 2;
      a6[52] = 1;
    }

    v56 = v46;
    operator delete(v46);
LABEL_57:
    if (__src)
    {
      v59 = __src;
      operator delete(__src);
    }

    v15 = v62;
  }

  if (v15)
  {
    v63 = v15;
    operator delete(v15);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }
}

BOOL Nightingale::ngt_DayStreamProcessor::inactiveDetect(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x100000000) == 0)
  {
    return 0;
  }

  if (*(a2 + 60) != 1 || (a5 & 0x100000000) == 0)
  {
    return 0;
  }

  v9 = a4;
  v11 = *(a2 + 56);
  v12 = a5 - 181;
  v13 = a5 - 61;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v14 = a5 - 61;
  v28 = 0;
  std::vector<Nightingale::Phase>::vector[abi:nn200100](__p, &v28, 1);
  v15 = Nightingale::phaseFactorProcessor::detectPhases(&v30, *&v13 | 0xFFFFFFFF00000000, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v28 = 1;
  std::vector<Nightingale::Phase>::vector[abi:nn200100](v27, &v28, 1);
  v16 = Nightingale::phaseFactorProcessor::detectPhases(&v30, v14 | (a5 << 32), v27, a3);
  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  v17 = a5 << 32;
  v28 = 1;
  std::vector<Nightingale::Phase>::vector[abi:nn200100](v26, &v28, 1);
  v18 = Nightingale::phaseFactorProcessor::detectPhases(&v30, a5 | 0xFFFFFFFF00000000, v26, a3);
  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  v19 = a5 - v11;
  v20 = 2 * v9;
  v28 = 0;
  std::vector<Nightingale::Phase>::vector[abi:nn200100](v25, &v28, 1);
  v21 = Nightingale::phaseFactorProcessor::detectPhases(&v30, v12 | v17, v25, a3);
  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v19 >= v20)
  {
    v22 = ~v15;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 & ~v18;
  v24 = v21 ^ 1;
  if ((v16 & 1) == 0)
  {
    v24 = 1;
  }

  v7 = (v23 & v24) != 0;
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v7;
}

void Nightingale::ngt_DayStreamProcessor::printStats(uint64_t a1, uint64_t a2)
{
  is_enabled = ha_sensitive_logging_is_enabled();
  if (is_enabled)
  {
    log = ha_get_log(is_enabled);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v4 = ha_sensitive_logging_is_enabled();
  if (v4)
  {
    v5 = ha_get_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v6 = ha_sensitive_logging_is_enabled();
  if (v6)
  {
    v7 = ha_get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v8 = ha_sensitive_logging_is_enabled();
  if (v8)
  {
    v9 = ha_get_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v10 = ha_sensitive_logging_is_enabled();
  if (v10)
  {
    v11 = ha_get_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v12 = ha_sensitive_logging_is_enabled();
  if (v12)
  {
    v13 = ha_get_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v14 = ha_sensitive_logging_is_enabled();
  if (v14)
  {
    v15 = ha_get_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v16 = ha_sensitive_logging_is_enabled();
  if (v16)
  {
    v17 = ha_get_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v18 = ha_sensitive_logging_is_enabled();
  if (v18)
  {
    v19 = ha_get_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v20 = ha_sensitive_logging_is_enabled();
  if (v20)
  {
    v21 = ha_get_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }

  v22 = ha_sensitive_logging_is_enabled();
  if (v22)
  {
    v23 = ha_get_log(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printStats();
    }
  }
}

void Nightingale::ngt_DayStreamProcessor::printDeviations(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x277D85DE8];
  is_enabled = ha_sensitive_logging_is_enabled();
  if (is_enabled)
  {
    log = ha_get_log(is_enabled);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printDeviations();
    }
  }

  v5 = ha_sensitive_logging_is_enabled();
  if (v5)
  {
    v6 = ha_get_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printDeviations();
    }
  }

  v7 = ha_sensitive_logging_is_enabled();
  if (v7)
  {
    v8 = ha_get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printDeviations();
    }
  }

  v9 = ha_sensitive_logging_is_enabled();
  if (v9)
  {
    v10 = ha_get_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printDeviations();
    }
  }

  v11 = ha_sensitive_logging_is_enabled();
  if (v11)
  {
    v12 = ha_get_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printDeviations();
    }
  }

  v13 = *(a2 + 48);
  v14 = *(a2 + 49);
  v15 = *(a2 + 50);
  v16 = *(a2 + 51);
  v17 = *(a2 + 52);
  v18 = *(a2 + 53);
  v19 = *(a2 + 56);
  v20 = ha_sensitive_logging_is_enabled();
  if (v20)
  {
    v21 = ha_get_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v51 = *(a2 + 60);
      v52 = *(a2 + 64);
      v53 = *(a2 + 68);
      v54 = *(a2 + 72);
      v61 = 67111680;
      v62 = v13 & 1;
      v63 = 1024;
      v64 = v14 & 1;
      v65 = 1024;
      v66 = v15 & 1;
      v67 = 1024;
      v68 = v16 & 1;
      v69 = 1024;
      v70 = v17 & 1;
      v71 = 1024;
      v72 = v18 & 1;
      v73 = 1024;
      v74 = v19;
      v75 = 1024;
      v76 = v51;
      v77 = 1024;
      v78 = v52;
      v79 = 1024;
      v80 = v53;
      v81 = 1024;
      v82 = v54;
      _os_log_debug_impl(&dword_2588F5000, v21, OS_LOG_TYPE_DEBUG, "irregMeta: {common: {bfrRule: %d, minWS: %d, minWE: %d,enough: %d, washout: %d,inWin: %d,age: %d}, win1CycleLenDiff: %d, win2CycleLenDiff: %d, win1NumCycles: %d, win2NumCycles: %d},\n", &v61, 0x44u);
    }
  }

  v22 = *(a2 + 76);
  v23 = *(a2 + 77);
  v24 = *(a2 + 78);
  v25 = *(a2 + 79);
  v26 = *(a2 + 80);
  v27 = *(a2 + 81);
  v28 = *(a2 + 84);
  v29 = ha_sensitive_logging_is_enabled();
  if (v29)
  {
    v30 = ha_get_log(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v55 = *(a2 + 88);
      v56 = *(a2 + 92);
      v61 = 67111168;
      v62 = v22 & 1;
      v63 = 1024;
      v64 = v23 & 1;
      v65 = 1024;
      v66 = v24 & 1;
      v67 = 1024;
      v68 = v25 & 1;
      v69 = 1024;
      v70 = v26 & 1;
      v71 = 1024;
      v72 = v27 & 1;
      v73 = 1024;
      v74 = v28;
      v75 = 1024;
      v76 = v55;
      v77 = 1024;
      v78 = v56;
      _os_log_debug_impl(&dword_2588F5000, v30, OS_LOG_TYPE_DEBUG, "infreqMeta: {common: {bfrRule: %d, minWS: %d, minWE: %d,enough: %d, washout: %d,inWin: %d,age: %d}, win1NumPeriods: %d, win2NumPeriods: %d}, \n", &v61, 0x38u);
    }
  }

  v31 = *(a2 + 96);
  v32 = *(a2 + 97);
  v33 = *(a2 + 98);
  v34 = *(a2 + 99);
  v35 = *(a2 + 100);
  v36 = *(a2 + 101);
  v37 = *(a2 + 104);
  v38 = ha_sensitive_logging_is_enabled();
  if (v38)
  {
    v39 = ha_get_log(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v58 = *(a2 + 108);
      v57 = *(a2 + 112);
      v61 = 67111168;
      v62 = v31 & 1;
      v63 = 1024;
      v64 = v32 & 1;
      v65 = 1024;
      v66 = v33 & 1;
      v67 = 1024;
      v68 = v34 & 1;
      v69 = 1024;
      v70 = v35 & 1;
      v71 = 1024;
      v72 = v36 & 1;
      v73 = 1024;
      v74 = v37;
      v75 = 1024;
      v76 = v57;
      v77 = 1024;
      v78 = v58;
      _os_log_debug_impl(&dword_2588F5000, v39, OS_LOG_TYPE_DEBUG, "prolongMeta: {common: {bfrRule: %d, minWS: %d, minWE: %d,enough: %d, washout: %d,inWin: %d,age: %d}, numLongPeriodsDetected: %d, numPeriodsUsed: %d}, \n", &v61, 0x38u);
    }
  }

  v40 = *(a2 + 116);
  v41 = *(a2 + 117);
  v42 = *(a2 + 118);
  v43 = *(a2 + 119);
  v44 = *(a2 + 120);
  v45 = *(a2 + 121);
  v46 = *(a2 + 124);
  v47 = ha_sensitive_logging_is_enabled();
  if (v47)
  {
    v48 = ha_get_log(v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v59 = *(a2 + 128);
      v60 = *(a2 + 132);
      v61 = 67111168;
      v62 = v40 & 1;
      v63 = 1024;
      v64 = v41 & 1;
      v65 = 1024;
      v66 = v42 & 1;
      v67 = 1024;
      v68 = v43 & 1;
      v69 = 1024;
      v70 = v44 & 1;
      v71 = 1024;
      v72 = v45 & 1;
      v73 = 1024;
      v74 = v46;
      v75 = 1024;
      v76 = v59;
      v77 = 1024;
      v78 = v60;
      _os_log_debug_impl(&dword_2588F5000, v48, OS_LOG_TYPE_DEBUG, "spottingMeta: {common: {bfrRule: %d, minWS: %d, minWE: %d,enough: %d, washout: %d,inWin: %d,age: %d}, win1NumSpottingDays: %d, win2NumSpottingDays: %d}", &v61, 0x38u);
    }
  }

  v49 = ha_sensitive_logging_is_enabled();
  if (v49)
  {
    v50 = ha_get_log(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printDeviations();
    }
  }
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
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
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__optional_storage_base<std::vector<std::string>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<std::string>,false> const&>(uint64_t result, std::string **a2)
{
  if (*(result + 24) == *(a2 + 24))
  {
    if (result != a2 && *(result + 24))
    {
      v3 = a2[1];
      v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3);
      v5 = *a2;

      std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(result, v5, v3, v4);
    }
  }

  else if (*(result + 24))
  {
    v6 = result;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v6);
    *(result + 24) = 0;
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(result, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    *(result + 24) = 1;
  }
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:nn200100](a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:nn200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      ++this;
    }

    while (v6 != a3);
  }

  return this;
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

std::string *std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void Nightingale::ngt_Config::~ngt_Config(void **this)
{
  if (*(this + 360) == 1 && *(this + 359) < 0)
  {
    operator delete(this[42]);
  }

  if (*(this + 328) == 1)
  {
    v2 = this + 38;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
  }

  if (*(this + 296) == 1 && *(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  if (*(this + 264) == 1 && *(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  if (*(this + 232) == 1 && *(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 200) == 1 && *(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 168) == 1 && *(this + 167) < 0)
  {
    operator delete(this[18]);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_DayInput>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<Nightingale::PhaseSet>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<Nightingale::PhaseSet>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void std::vector<Nightingale::PhaseSet>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void **std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:nn200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x276276276276276)
    {
      v9 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x13B13B13B13B13BLL)
      {
        v11 = 0x276276276276276;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Nightingale::ngt_Prediction>::__vallocate[abi:nn200100](v6, v11);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x4EC4EC4EC4EC4EC5 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<Nightingale::ngt_Prediction>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_Prediction>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_Prediction>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<Nightingale::cycleInfo>::__init_with_size[abi:nn200100]<Nightingale::cycleInfo*,Nightingale::cycleInfo*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Nightingale::cycleInfo>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<Nightingale::cycleInfo>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::cycleInfo>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::cycleInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::construct_at[abi:nn200100]<Nightingale::cycleInfo,Nightingale::cycleInfo&,Nightingale::cycleInfo*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 48) = v5;
  *(a1 + 72) = 0;
  v6 = (a1 + 72);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v7 != v8)
  {
    std::vector<Nightingale::Phase>::__vallocate[abi:nn200100](v6, v7 - v8);
  }

  return a1;
}

void std::vector<Nightingale::Phase>::__vallocate[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Nightingale::cycleInfo>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Nightingale::cycleInfo>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 96)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t *std::vector<Nightingale::Phase>::vector[abi:nn200100](uint64_t *a1, char *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<Nightingale::Phase>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}

uint64_t Nightingale::periodEstimatorCalendar::periodEstimatorCalendar(Nightingale::periodEstimatorCalendar *this, const Nightingale::ngt_Config *a2)
{
  result = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  *(result + 8) = 0;
  *(result + 16) = 0;
  v4 = 16;
  if (*(a2 + 52) == 1)
  {
    if ((*(a2 + 12) - 18) >= 0x1B)
    {
      v4 = 36;
    }

    else
    {
      v4 = 16;
    }
  }

  *(result + 24) = v4;
  return result;
}

{
  result = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  *(result + 8) = 0;
  *(result + 16) = 0;
  v4 = 16;
  if (*(a2 + 52) == 1)
  {
    if ((*(a2 + 12) - 18) >= 0x1B)
    {
      v4 = 36;
    }

    else
    {
      v4 = 16;
    }
  }

  *(result + 24) = v4;
  return result;
}

void Nightingale::periodEstimatorCalendar::predict1stPeriodStartCal(Nightingale::periodEstimatorCalendar *a1@<X0>, unsigned int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>)
{
  Nightingale::CGradient::CGradient(a5);
  if (*(a2 + 36) == 1 && *(a2 + 44) == 1)
  {
    NullPoint = Nightingale::periodEstimatorBase::getNullPoint(a1, (a3 + 1) & ((a3 >> 1) >> 31) | a3 & 0x100000000, a4, *a2);
    if (a2[9] & 1) != 0 && (a2[11])
    {
      v13 = *(a2 + 10);
      v14 = 0.0;
      if (a6 != -2)
      {
        v14 = *(a2 + 10);
      }

      if ((a6 & 0x100000000) != 0)
      {
        v13 = v14;
      }

      Nightingale::periodEstimatorCalendar::getCalBasedPeriodStartGradient(a1, NullPoint & 0xFFFFFFFFFFLL, &v21, *(a2 + 8), v13);
      v15 = *a5;
      if (*a5)
      {
        *(a5 + 8) = v15;
        operator delete(v15);
      }

      *a5 = v21;
      *(a5 + 16) = v22;
      *(a5 + 24) = v23[0];
      *(a5 + 33) = *(v23 + 9);
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      Nightingale::periodEstimatorCalendar::getCalBasedPeriodStartGradient(v16, v17, v18, v19, v20);
    }
  }
}

void Nightingale::periodEstimatorCalendar::getCalBasedPeriodStartGradient(Nightingale::periodEstimatorCalendar *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  Nightingale::periodEstimatorCalendar::getPeriodStartGradient(a1, a4, a5, a3);
  if ((a2 & 0x100000000) != 0)
  {

    Nightingale::periodEstimatorCalendar::adjustForGradientNull(v9, a2, a3, a4, a5);
  }

  else
  {
    *(a3 + 36) = a4;
    *(a3 + 40) = 1;
    *(a3 + 44) = sqrtf(a5);
    *(a3 + 48) = 1;
  }
}

double Nightingale::periodEstimatorCalendar::getPeriodStartGradient@<D0>(Nightingale::periodEstimatorCalendar *this@<X0>, float a2@<S0>, float a3@<S1>, uint64_t a4@<X8>)
{
  Nightingale::CGradient::CGradient(a4);
  GradientLength = Nightingale::periodEstimatorCalendar::getGradientLength(this, a2, a3);
  Nightingale::periodEstimatorCalendar::getGradient(&v11, a2, a3, GradientLength);
  v9 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v9;
    operator delete(v9);
  }

  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13[0];
  result = *(v13 + 9);
  *(a4 + 33) = *(v13 + 9);
  return result;
}

uint64_t Nightingale::periodEstimatorCalendar::adjustForGradientNull(int a1, uint64_t a2, Nightingale::CGradient *this, float a4, float a5)
{
  result = Nightingale::CGradient::get_vGrad_empty(this);
  if ((result & 1) == 0 && (a2 & 0x100000000) != 0)
  {
    v10 = a4 + sqrtf(a5) * 1.64999998;
    if (a2 <= llround(v10))
    {
      Nightingale::CGradient::annihilateEarly(this, a2 + 1, *&v10);
      result = Nightingale::CGradient::normalize(this);
      *(this + 34) = 1;
    }

    else
    {
      *(this + 33) = 1;
      *(this + 1) = *this;
    }
  }

  return result;
}

uint64_t Nightingale::periodEstimatorCalendar::getGradientLength(Nightingale::periodEstimatorCalendar *this, float a2, float a3)
{
  v5 = sqrtf(a3) * 10.0;
  if (v5 >= 20.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 20.0;
  }

  if (Nightingale::check2Real_t_equal(this, fabsf(a3), 0.0))
  {
    v6 = sqrt(*(this + 6)) * 10.0;
  }

  return (v6 + a2);
}

void *Nightingale::periodEstimatorCalendar::getGradient@<X0>(Nightingale::CGradient *__return_ptr a1@<X8>, float a2@<S0>, float a3@<S1>, int a4@<W1>)
{
  v8 = Nightingale::CGradient::CGradient(a1);
  if (a4 >= 1)
  {
    v9 = a2;
    v10 = a3;
    v11 = 0.0;
    do
    {
      v12 = Nightingale::gaussian_pdf(v8, v11, v9, v10);
      Nightingale::CGradient::push_back(a1, v12);
      v11 = v11 + 1.0;
      --a4;
    }

    while (a4);
  }

  return Nightingale::CGradient::normalize(a1);
}

uint64_t Nightingale::periodEstimatorCalendarWithEnd::periodEstimatorCalendarWithEnd(Nightingale::periodEstimatorCalendarWithEnd *this, const Nightingale::ngt_Config *a2)
{
  result = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  *(result + 8) = 0;
  *(result + 16) = 0;
  v4 = 16;
  if (*(a2 + 52) == 1)
  {
    if ((*(a2 + 12) - 18) >= 0x1B)
    {
      v4 = 36;
    }

    else
    {
      v4 = 16;
    }
  }

  *(result + 24) = v4;
  return result;
}

{
  result = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  *(result + 8) = 0;
  *(result + 16) = 0;
  v4 = 16;
  if (*(a2 + 52) == 1)
  {
    if ((*(a2 + 12) - 18) >= 0x1B)
    {
      v4 = 36;
    }

    else
    {
      v4 = 16;
    }
  }

  *(result + 24) = v4;
  return result;
}

void Nightingale::periodEstimatorCalendarWithEnd::getPeriodEndProjection(uint64_t a1@<X1>, Nightingale::CGradient *a2@<X2>, uint64_t a3@<X8>)
{
  Nightingale::CGradient::CGradient(a3);
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  if (*(a1 + 60) == 1 && *(a1 + 52) == 1)
  {
    v6 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    *v16 = v6;
    *&v16[13] = *(a1 + 61);
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v9 = *(a1 + 72);
    v8 = *(a1 + 80);
    if (v8 != v9)
    {
      if (v8 - v9 >= 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    Nightingale::periodEstimatorCalendarWithEnd::get_period_duration_pdf(v15, v20);
    Nightingale::CGradient::get_list_reference(v14, v20);
    Nightingale::CGradient::get_list_reference(__p, a2);
    Nightingale::periodEstimatorCalendarWithEnd::get_period_end_gradient(v14, __p, &v11);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (&v11 != a3)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a3, v11, v12, (v12 - v11) >> 2);
    }

    *(a3 + 24) = v13[0];
    *(a3 + 33) = *(v13 + 9);
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v14[0])
    {
      v14[1] = v14[0];
      operator delete(v14[0]);
    }

    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }
  }
}

void Nightingale::periodEstimatorCalendarWithEnd::get_period_duration_pdf(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  Nightingale::CGradient::CGradient(a2);
  if (*(a1 + 52) == 1 && (*(a1 + 60) & 1) != 0)
  {
    Nightingale::periodEstimatorCalendar::getGradient(&v5, *(a1 + 48) + -1.0, *(a1 + 56), 60);
    v4 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7[0];
    *(a2 + 33) = *(v7 + 9);
  }

  else
  {
    *(a2 + 33) = 1;
    *(a2 + 8) = *a2;
  }
}

void Nightingale::periodEstimatorCalendarWithEnd::get_period_end_gradient(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  Nightingale::convolve_on_top(a2, a1, &__p, 0);
  v4 = Nightingale::CGradient::CGradient(a3, &__p);
  Nightingale::CGradient::normalize(v4);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

uint64_t *std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

float Nightingale::vVar<float>(float *a1, unsigned int a2, char a3)
{
  if (!a2)
  {
    return 0.0;
  }

  if (a2 < 1)
  {
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0.0;
  v5 = a1;
  v6 = a2;
  do
  {
    v7 = *v5++;
    v8 = v4 + v7;
    v9 = LODWORD(v7) & 0x7FFFFFFF;
    if ((LODWORD(v7) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v8;
    }

    if (v9 < 2139095040)
    {
      ++v3;
    }

    --v6;
  }

  while (v6);
  if (v3)
  {
    v10 = v4 / v3;
  }

  else
  {
LABEL_11:
    v10 = NAN;
  }

  v11 = 0;
  v12 = a2;
  result = 0.0;
  do
  {
    v14 = *a1++;
    v15 = v14 - v10;
    v16 = LODWORD(v14) & 0x7FFFFFFF;
    if ((LODWORD(v14) & 0x7FFFFFFFu) < 0x7F800000)
    {
      result = result + (v15 * v15);
    }

    if (v16 < 2139095040)
    {
      ++v11;
    }

    --v12;
  }

  while (v12);
  if (a3)
  {
    if (a2 == 1)
    {
      return result;
    }

    v17 = (v11 - 1);
  }

  else
  {
    v17 = v11;
  }

  return result / v17;
}

float Nightingale::vMean<float>(float *a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return NAN;
  }

  v2 = 0;
  v3 = a2;
  v4 = 0.0;
  do
  {
    v5 = *a1++;
    v6 = v4 + v5;
    v7 = LODWORD(v5) & 0x7FFFFFFF;
    if ((LODWORD(v5) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v6;
    }

    if (v7 < 2139095040)
    {
      ++v2;
    }

    --v3;
  }

  while (v3);
  if (v2)
  {
    return v4 / v2;
  }

  else
  {
    return NAN;
  }
}

double Nightingale::vVar<double>(float *a1, unsigned int a2, char a3)
{
  if (!a2)
  {
    return 0.0;
  }

  if (a2 < 1)
  {
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0.0;
  v5 = a1;
  v6 = a2;
  do
  {
    v7 = *v5++;
    v8 = LODWORD(v7) & 0x7FFFFFFF;
    v9 = v4 + v7;
    if ((LODWORD(v7) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v9;
    }

    if (v8 < 2139095040)
    {
      ++v3;
    }

    --v6;
  }

  while (v6);
  if (v3)
  {
    v10 = v4 / v3;
  }

  else
  {
LABEL_11:
    v10 = NAN;
  }

  v11 = 0;
  v12 = a2;
  result = 0.0;
  do
  {
    v14 = *a1++;
    v15 = LODWORD(v14) & 0x7FFFFFFF;
    v16 = result + (v14 - v10) * (v14 - v10);
    if ((LODWORD(v14) & 0x7FFFFFFFu) < 0x7F800000)
    {
      result = v16;
    }

    if (v15 < 2139095040)
    {
      ++v11;
    }

    --v12;
  }

  while (v12);
  if (a3)
  {
    if (a2 == 1)
    {
      return result;
    }

    v17 = (v11 - 1);
  }

  else
  {
    v17 = v11;
  }

  return result / v17;
}

double Nightingale::vMean<double>(float *a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return NAN;
  }

  v2 = 0;
  v3 = a2;
  v4 = 0.0;
  do
  {
    v5 = *a1++;
    v6 = LODWORD(v5) & 0x7FFFFFFF;
    v7 = v4 + v5;
    if ((LODWORD(v5) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v7;
    }

    if (v6 < 2139095040)
    {
      ++v2;
    }

    --v3;
  }

  while (v3);
  if (v2)
  {
    return v4 / v2;
  }

  else
  {
    return NAN;
  }
}

float Nightingale::vMedian<float>(int *a1, int a2)
{
  if (!a2)
  {
    return 0.0;
  }

  std::vector<float>::vector[abi:nn200100]<float const*,0>(&__p, a1, &a1[a2]);
  if (4 * (a2 / 2) != -4)
  {
    std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__p, __p + a2 / 2 + 1, v7, &v8);
  }

  v3 = (__p + 4 * ((a2 + (a2 >> 31)) >> 1));
  if (a2)
  {
    v4 = *v3;
  }

  else
  {
    v4 = (*(v3 - 1) + *v3) * 0.5;
  }

  v7 = __p;
  operator delete(__p);
  return v4;
}

double Nightingale::vMedian<double>(int *a1, int a2)
{
  if (!a2)
  {
    return 0.0;
  }

  std::vector<float>::vector[abi:nn200100]<float const*,0>(&__p, a1, &a1[a2]);
  if (4 * (a2 / 2) != -4)
  {
    std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__p, __p + a2 / 2 + 1, v8, &v9);
  }

  v3 = (__p + 4 * ((a2 + (a2 >> 31)) >> 1));
  if (a2)
  {
    v4 = *v3;
  }

  else
  {
    v4 = (*(v3 - 1) + *v3) * 0.5;
  }

  v5 = v4;
  v8 = __p;
  operator delete(__p);
  return v5;
}

uint64_t Nightingale::getCABoundedNumberOfDays(uint64_t this)
{
  if (this >= 0x2E)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return this;
  }
}

uint64_t Nightingale::getLowRangeStartDur@<X0>(float a1@<S0>, float a2@<S1>, uint64_t a3@<X8>)
{
  LODWORD(a3) = llroundf(a1);
  LODWORD(v3) = llround((a2 - a1) + 1.0);
  return a3 | (v3 << 32);
}

uint64_t Nightingale::getIdxOfMinValFromVec(int **a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v2 + 1;
  v4 = *a1;
  if (v2 + 1 != v1)
  {
    v5 = *v2;
    v4 = *a1;
    v6 = v2 + 1;
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 < v5)
      {
        v5 = v7;
        v4 = v3;
      }

      v3 = v6;
    }

    while (v6 != v1);
  }

  v9 = 0;
  v10 = *v4;
  while (*v2 != v10)
  {
    ++v2;
    ++v9;
    if (v2 == v1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      return v12 | v11 | v13;
    }
  }

  v15 = v2 == v1;
  v12 = v9;
  v11 = 0x100000000;
  if (v15)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = v9 & 0xFFFFFF00;
  }

  return v12 | v11 | v13;
}

void Nightingale::getVarianceWin(float **a1, uint64_t a2)
{
  v2 = a2;
  v5 = *a1;
  v4 = a1[1];
  if (v4 - *a1 == 4)
  {
    if (v5 == v4 || *v5 == a2)
    {
      return;
    }
  }

  else if (v5 == v4)
  {
    return;
  }

  std::vector<int>::vector[abi:nn200100](__p, a1);
  Mean = Nightingale::getMeanWin<float>(__p, v2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v9 = *a1;
  v8 = a1[1];
  v10 = v2;
  if (v8 != *a1)
  {
    v11 = 0;
    v12 = *a1;
    do
    {
      v13 = *v12++;
      if (v13 == v10)
      {
        ++v11;
      }
    }

    while (v12 != v8);
    if (((v8 - *a1) >> 2) != v11)
    {
      v14 = 0.0;
      while (v9 != v8)
      {
        v15 = *v9++;
        v16 = v14 + ((v15 - Mean) * (v15 - Mean));
        if (vabds_f32(v15, v10) >= 1.0e-12)
        {
          v14 = v16;
        }
      }
    }
  }
}

float Nightingale::getMeanWin<float>(float **a1, int a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (*a1 == v2)
  {
    return a2;
  }

  v4 = 0;
  result = a2;
  v6 = *a1;
  do
  {
    v7 = *v6++;
    if (v7 == result)
    {
      ++v4;
    }
  }

  while (v6 != v2);
  v8 = v2 - v3;
  if (v8 != v4)
  {
    v9 = *a1;
    do
    {
      if (*v9 == result)
      {
        *v9 = 0.0;
      }

      ++v9;
    }

    while (v9 != v2);
    v10 = 0.0;
    do
    {
      v11 = *v3++;
      v10 = v10 + v11;
    }

    while (v3 != v2);
    return v10 / (v8 - v4);
  }

  return result;
}

void Nightingale::pooledVar2Win(float **a1, float **a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = *a1;
  if (*a1 != v4)
  {
    v7 = a2[1];
    v8 = *a2;
    if (*a2 != v7)
    {
      v9 = 0;
      v10 = (v4 - v5) >> 2;
      v11 = a3;
      do
      {
        v12 = *v5++;
        if (v12 == v11)
        {
          ++v9;
        }
      }

      while (v5 != v4);
      v13 = 0;
      v14 = (v7 - v8) >> 2;
      do
      {
        v15 = *v8++;
        if (v15 == v11)
        {
          ++v13;
        }
      }

      while (v8 != v7);
      if (v10 != v9 && v14 != v13 && v14 - v13 + v10 - v9 >= 3)
      {
        Nightingale::getVarianceWin(a1, a3);
        Nightingale::getVarianceWin(a2, a3);
      }
    }
  }
}

uint64_t Nightingale::getMeanDiffOf2Windows(float **a1, float **a2, float a3)
{
  v5 = a1[1];
  if (*a1 == v5)
  {
    v9 = 0;
  }

  else
  {
    v6 = 0.0;
    v7 = *a1;
    do
    {
      v8 = *v7++;
      v6 = v6 + v8;
    }

    while (v7 != v5);
    v9 = v6;
  }

  v10 = a2[1];
  if (*a2 == v10)
  {
    v14 = 0;
  }

  else
  {
    v11 = 0.0;
    v12 = *a2;
    do
    {
      v13 = *v12++;
      v11 = v11 + v13;
    }

    while (v12 != v10);
    v14 = v11;
  }

  if (v9 == ((v5 - *a1) * a3) || v14 == ((v10 - *a2) * a3))
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    std::vector<int>::vector[abi:nn200100](__p, a1);
    Mean = Nightingale::getMeanWin<float>(__p, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    std::vector<int>::vector[abi:nn200100](v20, a2);
    v18 = Nightingale::getMeanWin<float>(v20, a3);
    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    v15 = 0x100000000;
    if (Mean != a3 && v18 != a3)
    {
      v16 = COERCE_UNSIGNED_INT(v18 - Mean);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }
  }

  return v16 | v15;
}

float Nightingale::getSlidingWinScore(float **a1, float **a2, float a3)
{
  v3 = a3;
  MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(a1, a2, a3);
  if ((MeanDiffOf2Windows & 0x100000000) != 0)
  {
    return 1.0 / (expf(-*&MeanDiffOf2Windows) + 1.0);
  }

  return v3;
}

float Nightingale::getSmoothedPow_aSample(float **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  result = -1.0;
  if (v3 != -1.0)
  {
    v5 = v2[1];
    if (v5 != -1.0)
    {
      v6 = v2[2];
      if (v6 != -1.0)
      {
        v7 = (v5 * *(*a2 + 4)) + (v3 * **a2);
        return (v7 + (v6 * *(*a2 + 8))) * (v7 + (v6 * *(*a2 + 8)));
      }
    }
  }

  return result;
}

uint64_t Nightingale::getMissingCnt(float **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v4 = *v1++;
    if (v4 >= 0.0)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }
  }

  while (v1 != v2);
  return result;
}

BOOL Nightingale::passMissingRateASlice(float **a1, double a2, float a3)
{
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a1;
  do
  {
    v6 = *v5++;
    if (v6 < 0.0)
    {
      ++v4;
    }
  }

  while (v5 != v3);
  return ((v3 - *a1) * a3) >= v4;
}

uint64_t Nightingale::checkNumTmpSwitches(float **a1, int a2, float a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *v3;
  while (1)
  {
    v7 = v6;
    v6 = *v3;
    if (vabds_f32(*v3, v7) >= a3)
    {
      break;
    }

LABEL_6:
    if (++v3 == v4)
    {
      return 0;
    }
  }

  if (v5 < a2)
  {
    ++v5;
    goto LABEL_6;
  }

  return 1;
}

long double Nightingale::gaussian_pdf(Nightingale *this, double a2, double a3, double a4)
{
  if (a4 != 0.0)
  {
    return 1.0 / sqrt(a4 * 6.28318531) * exp(-((a2 - a3) * (a2 - a3)) / (a4 + a4));
  }

  v4 = round(a3) == a2;
  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

long double Nightingale::gamma_pdf(Nightingale *this, long double a2, double a3, double a4)
{
  v5 = a3 / a4;
  v6 = a3 * a3 / a4;
  v7 = pow(a3 / a4, v6);
  v8 = v7 * pow(a2, v6 + -1.0);
  v9 = exp(-(v5 * a2)) * v8;
  return v9 / tgamma(v6);
}

void Nightingale::get_cdf(float **result, const void **a2, char a3)
{
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  a2[1] = *a2;
  if (a3)
  {
    v8 = result[1];
    v9 = 0.0;
    if (v6 != v8)
    {
      v10 = v6;
      do
      {
        v11 = *v10++;
        v9 = v9 + v11;
      }

      while (v10 != v8);
    }

    if (v5 != v6)
    {
      v12 = 0;
      if (v7 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v7;
      }

      do
      {
        v14 = v9;
        v20 = v14;
        std::vector<float>::push_back[abi:nn200100](a2, &v20);
        v9 = v9 - (*result)[v12++];
      }

      while (v13 != v12);
    }
  }

  else if (v5 != v6)
  {
    v15 = 0;
    if (v7 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v7;
    }

    v17 = 0.0;
    do
    {
      v17 = v17 + (*result)[v15];
      v18 = v17;
      v19 = v18;
      std::vector<float>::push_back[abi:nn200100](a2, &v19);
      ++v15;
    }

    while (v16 != v15);
  }
}

void std::vector<float>::push_back[abi:nn200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

double Nightingale::get_mad(float **a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = v3 - v2;
  if (v3 == v2)
  {
    return 0.0;
  }

  v6 = v5 >> 2;
  if (!a2)
  {
    Nightingale::vMedian<double>();
  }

  if ((v5 >> 2) < 1)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = (v5 >> 2) & 0x7FFFFFFF;
  v9 = 0.0;
  v10 = v2;
  do
  {
    v11 = *v10++;
    v12 = v9 + v11;
    if ((LODWORD(v11) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v9 = v12;
      ++v7;
    }

    --v8;
  }

  while (v8);
  if (v7)
  {
    v13 = v9 / v7;
  }

  else
  {
LABEL_12:
    v13 = NAN;
  }

  if (v6 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v6;
  }

  v16 = 0.0;
  do
  {
    v17 = *v2++;
    v16 = v16 + vabdd_f64(v17, v13);
    --v15;
  }

  while (v15);
  return v16 / v6;
}

void Nightingale::convolve(void *a1, float **a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 2;
  v5 = *a2;
  v4 = a2[1];
  *(a3 + 8) = *a3;
  if (v3)
  {
    v9 = 0;
    v10 = (v4 - v5) >> 2;
    v11 = 1;
    do
    {
      if (v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      if (v10)
      {
        v13 = *a2;
        v14 = 0.0;
        v15 = v9;
        do
        {
          v16 = *v13++;
          v14 = v14 + (*(*a1 + 4 * v15--) * v16);
          --v12;
        }

        while (v12);
        v17 = v14;
      }

      else
      {
        v17 = 0.0;
      }

      ++v9;
      v18 = v17;
      std::vector<float>::push_back[abi:nn200100](a3, &v18);
      ++v11;
    }

    while (v9 != v3);
  }
}

void Nightingale::convolve_on_top(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v6 = a1[1];
  *(a3 + 8) = *a3;
  v8 = v6 - v7;
  if (v8)
  {
    v40 = v4;
    v41 = v5;
    v12 = v8 >> 2;
    if ((v8 >> 2) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v8 >> 2;
    }

    if (a4)
    {
      v14 = 0;
      v15 = 0;
      v16 = v8 >> 2;
      do
      {
        v17 = v12 - v15;
        v18 = *a2;
        v19 = (*(a2 + 8) - *a2) >> 2;
        if (v19 < v12 - v15)
        {
          v17 = (*(a2 + 8) - *a2) >> 2;
        }

        if (v17)
        {
          if (v19 >= v16)
          {
            v19 = v16;
          }

          v20 = (*a1 + v14);
          v21 = 0.0;
          do
          {
            v22 = *v20++;
            v23 = v22;
            v24 = *v18++;
            v21 = v21 + (v23 * v24);
            --v19;
          }

          while (v19);
          v25 = v21;
        }

        else
        {
          v25 = 0.0;
        }

        v38 = v25;
        std::vector<float>::push_back[abi:nn200100](a3, &v38);
        ++v15;
        --v16;
        v14 += 4;
      }

      while (v15 != v13);
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = *a2;
        v30 = *(a2 + 8) - *a2;
        if (v30)
        {
          v31 = v30 >> 2;
          if (v31 >= v28)
          {
            v31 = v28;
          }

          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = (*a1 + v26);
          v33 = 0.0;
          do
          {
            v34 = *v32--;
            v35 = v34;
            v36 = *v29++;
            v33 = v33 + (v35 * v36);
            --v31;
          }

          while (v31);
          v37 = v33;
        }

        else
        {
          v37 = 0.0;
        }

        ++v27;
        v39 = v37;
        std::vector<float>::push_back[abi:nn200100](a3, &v39);
        ++v28;
        v26 += 4;
      }

      while (v27 != v13);
    }
  }
}

uint64_t Nightingale::assertVectorOfVectors(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = v1[1];
    if (*v1 != v3)
    {
      v4 = ((v3 - *v1) >> 2);
      while (1)
      {
        v5 = v1[1];
        if (*v1 == v5 || v4 != (v5 - *v1) >> 2)
        {
          break;
        }

        v1 += 3;
        if (v1 == v2)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t Nightingale::getSubVecLenVecOfVecs(uint64_t a1)
{
  result = Nightingale::assertVectorOfVectors(a1);
  if (result)
  {
    return (*(*a1 + 8) - **a1) >> 2;
  }

  return result;
}

uint64_t Nightingale::CGradient::CGradient(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 34) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 34) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  return this;
}

uint64_t Nightingale::CGradient::CGradient(uint64_t a1, char **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  if (a1 != a2)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return a1;
}

void Nightingale::CGradient::set_delta_at(Nightingale::CGradient *this, uint64_t a2, int16x4_t a3)
{
  v5 = *this;
  v6 = *(this + 1);
  if (*this == v6)
  {
    if (a2 != -1)
    {
      v7 = a2 + 1;
      do
      {
        v9 = 0;
        std::vector<float>::push_back[abi:nn200100](this, &v9);
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v8 = 0;
    std::vector<float>::assign(this, (v6 - v5) >> 2, &v8, a3);
  }

  *(*this + 4 * a2) = 1065353216;
  *(this + 32) = 1;
}

_DWORD *std::vector<float>::assign(uint64_t *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<int>::__vallocate[abi:nn200100](a1, v9);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2589503A0)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_258950390)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_2589503A0)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_258950390)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

float Nightingale::CGradient::push_back(Nightingale::CGradient *this, double a2)
{
  if (*(this + 32) == 1)
  {
    v2 = *this;
    v3 = *(this + 1) - *this;
    if (v3)
    {
      v4 = v3 >> 2;
      v5 = *(this + 3);
      if (v4 <= 1)
      {
        v4 = 1;
      }

      do
      {
        v6 = v5 * *v2;
        *v2++ = v6;
        --v4;
      }

      while (v4);
    }

    *(this + 32) = 0;
  }

  v7 = a2;
  v9 = v7;
  std::vector<float>::push_back[abi:nn200100](this, &v9);
  return result;
}

void Nightingale::CGradient::annihilateEarly(Nightingale::CGradient *this, unint64_t a2, int16x4_t a3)
{
  v4 = *this;
  if (a2 <= (*(this + 1) - v4) >> 2)
  {
    if (a2)
    {
      bzero(v4, 4 * a2);
    }
  }

  else
  {
    v6 = 0;
    std::vector<float>::assign(this, a2, &v6, a3);
  }

  *(this + 32) = 0;
}

uint64_t Nightingale::CGradient::normalize(uint64_t this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = *this;
    v2 = *(this + 8);
    if (*this == v2)
    {
      *(this + 24) = 0;
    }

    else
    {
      v3 = 0.0;
      v4 = *this;
      do
      {
        v5 = *v4++;
        v3 = v3 + v5;
      }

      while (v4 != v2);
      *(this + 24) = v3;
      if (v3 > 0.0)
      {
        v6 = v2 - v1;
        if (v6 <= 1)
        {
          v6 = 1;
        }

        do
        {
          v7 = *v1 / v3;
          *v1++ = v7;
          --v6;
        }

        while (v6);
      }
    }

    *(this + 32) = 1;
  }

  return this;
}

char **Nightingale::CGradient::set_vGrad(char **result, char **a2)
{
  v2 = result;
  if (result != a2)
  {
    result = std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  *(v2 + 32) = 0;
  return result;
}

uint64_t Nightingale::CGradient::set_isNull_if_grad_allZeros(uint64_t this)
{
  v1 = *(this + 8);
  if (*this == v1)
  {
    v4 = 1;
  }

  else
  {
    v2 = *this + 4;
    do
    {
      v3 = fabsf(*(v2 - 4));
      v4 = v3 < 1.0e-12;
      v5 = v3 >= 1.0e-12 || v2 == v1;
      v2 += 4;
    }

    while (!v5);
  }

  *(this + 33) = v4;
  return this;
}

double Nightingale::CGradient::get_expectation(float **this)
{
  v2 = *this;
  v1 = this[1];
  if (v1 == *this)
  {
    result = 0.0;
    v6 = 0.0;
  }

  else
  {
    v3 = 0;
    v4 = v1 - *this;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    result = 0.0;
    do
    {
      result = result + (v2[v3] * v3);
      ++v3;
    }

    while (v4 != v3);
    v6 = 0.0;
    do
    {
      v7 = *v2++;
      v6 = v6 + v7;
    }

    while (v2 != v1);
  }

  if (v6 > 0.0)
  {
    return result / v6;
  }

  return result;
}

double Nightingale::CGradient::get_variance(float **this)
{
  expectation = Nightingale::CGradient::get_expectation(this);
  v3 = this[1];
  v4 = v3 - *this;
  if (v3 == *this)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = v4 >> 2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = 0.0;
  do
  {
    v7 = v7 + (v5 - expectation) * (v5 - expectation) * (*this)[v5];
    ++v5;
  }

  while (v6 != v5);
  return v7;
}

float Nightingale::cumsum@<S0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = std::vector<int>::vector[abi:nn200100](a2, a1);
  if (*a1 != a1[1])
  {
    v5 = *v3;
    v6 = (v3[1] - *v3) >> 2;
    if (v6 >= 2)
    {
      v8 = *v5;
      v7 = v5 + 1;
      result = v8;
      v9 = v6 - 1;
      do
      {
        result = result + *v7;
        *v7++ = result;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

unint64_t Nightingale::argquantile(void *a1, float a2)
{
  Nightingale::cumsum(a1, &__p);
  if (*a1 == a1[1] || __p == v15)
  {
    v12 = 1;
    if (!__p)
    {
      return v12;
    }
  }

  else
  {
    v4 = __p;
    v5 = __p;
    while (*v5 < a2)
    {
      ++v5;
      v4 += 4;
      if (v5 == v15)
      {
        v4 = v15;
        break;
      }
    }

    v6 = v4 - __p;
    v7 = v6 >> 2;
    v8 = (v15 - __p) >> 2;
    if (v8 <= (v6 >> 2) || (v9 = v7 - 1, v8 <= v7 - 1))
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = *(__p + (v6 >> 2));
    v11 = *(__p + v9);
    if (v10 == v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = COERCE_UNSIGNED_INT(((a2 - v11) / (v10 - v11)) + v9) << 32;
    }
  }

  v15 = __p;
  operator delete(__p);
  return v12;
}

float Nightingale::getPercentile(uint64_t *a1, int a2, float a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = ((v4 - *a1) >> 2) - 1;
  v6 = v5 * a3;
  if (a2)
  {
    v7 = v6;
    v8 = v6 - v6;
    v9 = (v3 + 4 * v7);
    result = *v9;
    if (v8 != 0.0)
    {
      return result + ((v9[1] - result) * v8);
    }
  }

  else
  {
    v11 = ((1.0 - a3) * v5);
    result = *(v3 + 4 * v6);
    v12 = *(v4 - 4 * v11 - 4);
    if (result != v12)
    {
      return (result + v12) * 0.5;
    }
  }

  return result;
}

uint64_t *Nightingale::removeNANFromVector(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  if (*result != v1)
  {
    do
    {
      v2 += 4;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t Nightingale::getIdxOfDailyInFromJDay(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3 || *(v3 - 16) < a2)
  {
LABEL_6:
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v4;
      v2 += 16;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    v7 = v4 & 0x7FFFFF00;
    v6 = v4;
    v5 = 0x100000000;
  }

  return v5 | v7 | v6;
}

uint64_t Nightingale::getIdxOfDailyInGreaterThanJayDay(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3 || *(v3 - 16) < a2)
  {
LABEL_6:
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = 0;
    while (*v2 < a2)
    {
      ++v4;
      v2 += 16;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    v7 = v4 & 0x7FFFFF00;
    v6 = v4;
    v5 = 0x100000000;
  }

  return v5 | v7 | v6;
}

uint64_t *std::vector<float>::vector[abi:nn200100]<float const*,0>(uint64_t *a1, int *a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a2)
  {
    std::vector<int>::__vallocate[abi:nn200100](a1, a3 - a2);
  }

  return a1;
}

float *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>,std::__wrap_iter<float *>>(float *a1, float *a2, float *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v8 = a2;
    v10 = v5 >> 2;
    v11 = __OFSUB__(v5 >> 2, 2);
    v12 = (v5 >> 2) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = &a1[v13];
      v15 = v13 + 1;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, a4, v10, v14--);
        --v15;
      }

      while (v15);
    }

    v4 = v8;
    if (v8 != a3)
    {
      v16 = v8;
      do
      {
        v17 = *v16;
        if (*v16 < *a1)
        {
          *v16 = *a1;
          *a1 = v17;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, a4, v10, a1);
        }

        ++v16;
      }

      while (v16 != a3);
      v4 = a3;
    }

    if (v10 >= 2)
    {
      do
      {
        v18 = 0;
        v19 = *a1;
        v20 = a1;
        do
        {
          v21 = v20;
          v20 += v18 + 1;
          v22 = 2 * v18;
          v18 = (2 * v18) | 1;
          v23 = v22 + 2;
          if (v23 < v10 && *v20 < v20[1])
          {
            ++v20;
            v18 = v23;
          }

          *v21 = *v20;
        }

        while (v18 <= ((v10 - 2) >> 1));
        if (v20 == --v8)
        {
          *v20 = v19;
        }

        else
        {
          *v20 = *v8;
          *v8 = v19;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, (v20 + 1), a4, v20 + 1 - a1);
        }
      }

      while (v10-- > 2);
    }
  }

  return v4;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) | 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 < v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 >= *a4)
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
          if (v13 < a3 && *v8 < v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v7 = *(a2 - 4);
    v6 = (a2 - 4);
    v8 = v7;
    v9 = *v5;
    if (*v5 < v7)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v9 = *v5;
      }

      while (*v5 < v8);
      *v6 = v8;
    }
  }

  return result;
}

void Nightingale::heartRateInputAcquisition::heartRateInputAcquisition(Nightingale::heartRateInputAcquisition *this)
{
  Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *v1 = 0;
  v1[4] = 0;
  v1[8] = 0;
  v1[12] = 0;
}

{
  Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *v1 = 0;
  v1[4] = 0;
  v1[8] = 0;
  v1[12] = 0;
}

void Nightingale::heartRateInputAcquisition::acquireSlicesFwDayStream(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DailyJDayIdx1stHr = Nightingale::heartRateInputAcquisition::getDailyJDayIdx1stHr(a1, a2);
  *a1 = DailyJDayIdx1stHr;
  *(a1 + 4) = BYTE4(DailyJDayIdx1stHr);
  *(a1 + 8) = v11;
  *(a1 + 12) = BYTE4(v11);
  if ((DailyJDayIdx1stHr & 0x100000000) != 0 && (v11 & 0x100000000) != 0)
  {
    JDayHrSlicesStartEnd = Nightingale::heartRateInputAcquisition::getJDayHrSlicesStartEnd(a1, a3, a4);
    if ((JDayHrSlicesStartEnd & 0x100000000) != 0 && (v13 & 0x100000000) != 0)
    {

      Nightingale::heartRateInputAcquisition::acquireSlicesJDayRange(a1, a2, JDayHrSlicesStartEnd, v13, a5);
    }
  }
}

uint64_t Nightingale::heartRateInputAcquisition::getDailyJDayIdx1stHr(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 == v3)
  {
LABEL_8:
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = 0;
    while ((v2[24] != 1 || (v2[40] & 1) == 0) && (v2[32] != 1 || v2[48] != 1))
    {
      v2 += 64;
      ++v4;
      if (v2 == v3)
      {
        goto LABEL_8;
      }
    }

    v6 = *v2;
    v5 = 0x100000000;
  }

  return v6 | v5;
}

uint64_t Nightingale::heartRateInputAcquisition::getJDayHrSlicesStartEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0 && *(a1 + 4) == 1 && *(a1 + 12) == 1)
  {
    if (a3 <= 39)
    {
      v3 = 39;
    }

    else
    {
      v3 = a3;
    }

    v4 = v3 - 39;
    if (v4 <= *a1)
    {
      v4 = *a1;
    }

    v5 = v4 & 0xFFFFFF00;
    v6 = v4;
    v7 = 0x100000000;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  return v7 | v5 | v6;
}

void Nightingale::heartRateInputAcquisition::acquireSlicesJDayRange(uint64_t a1, uint64_t *a2, int a3, int a4, uint64_t a5)
{
  IdxOfDailyInGreaterThanJayDay = Nightingale::getIdxOfDailyInGreaterThanJayDay(a2, a3);
  IdxOfDailyInFromJDay = Nightingale::getIdxOfDailyInFromJDay(a2, a4);
  if ((IdxOfDailyInGreaterThanJayDay & 0x100000000) != 0 && *(a1 + 12) == 1)
  {
    if ((IdxOfDailyInFromJDay & 0x100000000) == 0)
    {
      LODWORD(IdxOfDailyInFromJDay) = ((a2[1] - *a2) >> 6) - 1;
    }

    v12 = *(a1 + 8);
    if (v12 <= IdxOfDailyInGreaterThanJayDay)
    {
      v12 = IdxOfDailyInGreaterThanJayDay;
    }

    if (v12 <= IdxOfDailyInFromJDay)
    {
      v13 = *a2;
      if (IdxOfDailyInFromJDay >= ((a2[1] - *a2) >> 6))
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v14 = (v13 + (IdxOfDailyInFromJDay << 6));
      v17 = *v14;
      v15 = (v14 + 16);
      v16 = v17;
      if (v17 > a4)
      {
        a4 = v16;
      }

      std::vector<Nightingale::ngt_DayInput>::vector[abi:nn200100]<std::__wrap_iter<Nightingale::ngt_DayInput const*>,0>(&__p, (v13 + (v12 << 6)), v15);
      v18 = __p;
      if (a4 - a3 >= 44 && __p != v29)
      {
        LOBYTE(v27) = 0;
        BYTE4(v27) = 0;
        LOBYTE(v26) = 0;
        BYTE4(v26) = 0;
        if (a4 >= a3)
        {
          v19 = 0;
          v20 = a3;
          do
          {
            if (v19 < ((v29 - __p) >> 6) && (v21 = __p + 64 * v19, v20 == *v21))
            {
              v22 = *(v21 + 20);
              v23 = *(v21 + 36);
              *&v25[12] = *(v21 + 3);
              v24 = v22;
              *v25 = v23;
              std::vector<std::optional<float>>::push_back[abi:nn200100](a5, &v24);
              std::vector<std::optional<float>>::push_back[abi:nn200100](a5 + 48, v25);
              std::vector<std::optional<float>>::push_back[abi:nn200100](a5 + 24, &v24 + 1);
              std::vector<std::optional<float>>::push_back[abi:nn200100](a5 + 72, &v25[8]);
              ++v19;
            }

            else
            {
              std::vector<std::optional<float>>::push_back[abi:nn200100](a5, &v27);
              std::vector<std::optional<float>>::push_back[abi:nn200100](a5 + 48, &v26);
              std::vector<std::optional<float>>::push_back[abi:nn200100](a5 + 24, &v27);
              std::vector<std::optional<float>>::push_back[abi:nn200100](a5 + 72, &v26);
            }

            ++v20;
          }

          while (a4 + 1 != v20);
          v18 = __p;
        }

        *(a5 + 96) = a3;
        *(a5 + 100) = 1;
        *(a5 + 104) = a4;
        *(a5 + 108) = 1;
        *(a5 + 112) = a4 - a3 - 43;
      }

      if (v18)
      {
        v29 = v18;
        operator delete(v18);
      }
    }
  }
}

void Nightingale::heartRateInputAcquisition::acquireSlicesPeriodDayStream(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  DailyJDayIdx1stHr = Nightingale::heartRateInputAcquisition::getDailyJDayIdx1stHr(a1, a2);
  *a1 = DailyJDayIdx1stHr;
  *(a1 + 4) = BYTE4(DailyJDayIdx1stHr);
  *(a1 + 8) = v9;
  *(a1 + 12) = BYTE4(v9);
  if ((DailyJDayIdx1stHr & 0x100000000) != 0 && (v9 & 0x100000000) != 0)
  {

    Nightingale::heartRateInputAcquisition::acquireSlicesJDayRange(a1, a2, a3 - 44, a3, a4);
  }
}

void std::vector<std::optional<float>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::optional<float>>>(a1, v10);
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

Nightingale::heartRateInputValidation *Nightingale::heartRateInputValidation::heartRateInputValidation(Nightingale::heartRateInputValidation *this, const Nightingale::ngt_Config *a2)
{
  Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  *(v4 + 48) = *(a2 + 3);
  *(v4 + 64) = v7;
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  v10 = *(a2 + 7);
  *(v4 + 125) = *(a2 + 125);
  *(v4 + 96) = v9;
  *(v4 + 112) = v10;
  *(v4 + 80) = v8;
  *(v4 + 144) = 0;
  *(this + 168) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((v4 + 144), a2 + 9);
  *(this + 176) = 0;
  *(this + 200) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((this + 176), a2 + 11);
  *(this + 208) = 0;
  *(this + 232) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((this + 208), a2 + 13);
  *(this + 240) = 0;
  *(this + 264) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(this + 10, a2 + 15);
  *(this + 272) = 0;
  *(this + 296) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((this + 272), a2 + 17);
  *(this + 304) = 0;
  *(this + 328) = 0;
  std::__optional_storage_base<std::vector<std::string>,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::vector<std::string>,false> const&>((this + 304), a2 + 304);
  *(this + 336) = 0;
  *(this + 360) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(this + 14, a2 + 21);
  *(this + 184) = 0;
  return this;
}

void Nightingale::heartRateInputValidation::~heartRateInputValidation(void **this)
{
  Nightingale::ngt_Config::~ngt_Config(this);

  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(v1);
}

{
  Nightingale::ngt_Config::~ngt_Config(this);

  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(v1);
}

void Nightingale::heartRateInputValidation::process(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (Nightingale::heartRateInputValidation::validateSizeOfSlices(a1, a2))
  {
    v8 = Nightingale::heartRateInputValidation::validateHrSamples(a1, a2);
    if (a4)
    {

      Nightingale::heartRateInputValidation::validateHrSlices(v8, a2, a3);
    }
  }
}

BOOL Nightingale::heartRateInputValidation::validateSizeOfSlices(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return 0;
  }

  if (!*(a2 + 112))
  {
    return 0;
  }

  if (*(a2 + 100) != 1)
  {
    return 0;
  }

  if (*(a2 + 108) != 1)
  {
    return 0;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4 == v5)
  {
    return 0;
  }

  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v6 == v7)
  {
    return 0;
  }

  result = 0;
  v9 = *(a2 + 8) - *a2;
  if (v5 - v4 == v9)
  {
    return v3 - v2 == v9 && v7 - v6 == v9;
  }

  return result;
}

uint64_t Nightingale::heartRateInputValidation::validateHrSamples(uint64_t result, void *a2)
{
  v2 = a2[6];
  v3 = a2[7];
  if (v2 != v3)
  {
    v4 = *(result + 132);
    v5 = (*a2 + 4);
    do
    {
      if (*(v2 + 4) != 1 || *v2 < v4)
      {
        if (*v5 == 1)
        {
          *v5 = 0;
        }

        if (*(v2 + 4) == 1)
        {
          *(v2 + 4) = 0;
        }
      }

      v2 += 8;
      v5 += 8;
    }

    while (v2 != v3);
  }

  v6 = a2[9];
  v7 = a2[10];
  if (v6 != v7)
  {
    v8 = *(result + 136);
    v9 = (a2[3] + 4);
    do
    {
      if (*(v6 + 4) != 1 || *v6 < v8)
      {
        if (*v9 == 1)
        {
          *v9 = 0;
        }

        if (*(v6 + 4) == 1)
        {
          *(v6 + 4) = 0;
        }
      }

      v6 += 8;
      v9 += 8;
    }

    while (v6 != v7);
  }

  return result;
}

void Nightingale::heartRateInputValidation::validateHrSlices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 112))
  {
    v5 = 0;
    do
    {
      v6 = 0;
      memset(__p, 0, sizeof(__p));
      v7 = 8 * v5;
      v8 = *(a2 + 48) + 8 * v5;
      v9 = v8 + 360;
      do
      {
        v6 += *(v8 + 4) ^ 1;
        v8 += 8;
      }

      while (v8 != v9);
      v16 = (v6 / 45.0) < 0.7;
      std::vector<BOOL>::push_back(__p, &v16);
      v10 = 0;
      v11 = v7 + *(a2 + 72);
      v12 = v11 + 360;
      do
      {
        v10 += *(v11 + 4) ^ 1;
        v11 += 8;
      }

      while (v11 != v12);
      v16 = (v10 / 45.0) < 1.0;
      std::vector<BOOL>::push_back(__p, &v16);
      v13 = 0;
      v14 = v7 + *(a2 + 48);
      v15 = v14 + 360;
      do
      {
        v13 += *(v14 + 4) ^ 1;
        v14 += 8;
      }

      while (v14 != v15);
      v16 = (v13 / 45.0) < 0.5;
      std::vector<BOOL>::push_back(__p, &v16);
      std::vector<std::vector<BOOL>>::push_back[abi:nn200100](a3, __p);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      ++v5;
    }

    while (v5 < *(a2 + 112));
  }
}

void std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(result, v7);
    v4 = *(result + 8);
  }

  *(result + 8) = v4 + 1;
  v8 = *result;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

BOOL Nightingale::heartRateInputValidation::validateASlice(float a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v6 = *a3 + 8 * a4;
  v7 = v6 + 360;
  do
  {
    v5 += *(v6 + 4) ^ 1;
    v6 += 8;
  }

  while (v6 != v7);
  return (v5 / a5) < a1;
}

uint64_t *std::vector<std::vector<BOOL>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<BOOL>>::__emplace_back_slow_path<std::vector<BOOL> const&>(a1, a2);
  }

  else
  {
    result = std::vector<BOOL>::vector(v3, a2) + 3;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t Nightingale::heartRateInputPreCondition::heartRateInputPreCondition(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  Nightingale::sensorInputProcessBase::sensorInputProcessBase(a1);
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  *(v8 + 24) = *a4;
  v9 = a4[1];
  v10 = a4[2];
  v11 = a4[3];
  *(v8 + 88) = a4[4];
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = v9;
  v12 = a4[5];
  v13 = a4[6];
  v14 = a4[7];
  *(v8 + 149) = *(a4 + 125);
  *(v8 + 136) = v14;
  *(v8 + 120) = v13;
  *(v8 + 104) = v12;
  *(v8 + 168) = 0;
  *(a1 + 192) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((v8 + 168), a4 + 9);
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((a1 + 200), a4 + 11);
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((a1 + 232), a4 + 13);
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((a1 + 264), a4 + 15);
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((a1 + 296), a4 + 17);
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  std::__optional_storage_base<std::vector<std::string>,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::vector<std::string>,false> const&>((a1 + 328), (a4 + 19));
  *(a1 + 360) = 0;
  *(a1 + 384) = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>((a1 + 360), a4 + 21);
  return a1;
}

void Nightingale::heartRateInputPreCondition::~heartRateInputPreCondition(void **this)
{
  Nightingale::ngt_Config::~ngt_Config(this + 3);

  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(this);
}

{
  Nightingale::ngt_Config::~ngt_Config(this + 3);

  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(this);
}

uint64_t Nightingale::heartRateInputPreCondition::preConditionHr(Nightingale::heartRateInputPreCondition *this)
{
  v2 = Nightingale::heartRateInputPreCondition::find1stHrSampleDayStreamLstmHr(this);
  v4 = BYTE4(v2) & (BYTE4(v3) & 1);
  if (v4 == 1)
  {
    v5 = v2;
    v6 = v3;
    v7 = *(this + 2);
    v8 = *v7;
    v9 = (v7[1] - *v7) >> 3;
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (v9 <= v11)
        {
LABEL_45:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v12 = &v8[v10];
        if (*(v12 + 4) == 1)
        {
          v13 = *v12;
        }

        else
        {
          v13 = 2143289344;
        }

        v30 = v13;
        std::vector<float>::push_back[abi:nn200100](v7 + 15, &v30);
        ++v11;
        v7 = *(this + 2);
        v8 = *v7;
        v9 = (v7[1] - *v7) >> 3;
        if (v9 >= 45)
        {
          v14 = 45;
        }

        else
        {
          v14 = (v7[1] - *v7) >> 3;
        }

        v10 += 2;
      }

      while (v11 < v14);
    }

    v15 = v7[3];
    v16 = (v7[4] - v15) >> 3;
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        if (v16 <= v18)
        {
          goto LABEL_45;
        }

        if (LOBYTE(v15[v17 + 1]) == 1)
        {
          v19 = v15[v17];
        }

        else
        {
          v19 = 2143289344;
        }

        v29 = v19;
        std::vector<float>::push_back[abi:nn200100](v7 + 18, &v29);
        ++v18;
        v7 = *(this + 2);
        v15 = v7[3];
        v16 = (v7[4] - v15) >> 3;
        if (v16 >= 45)
        {
          v20 = 45;
        }

        else
        {
          v20 = (v7[4] - v15) >> 3;
        }

        v17 += 2;
      }

      while (v18 < v20);
      v8 = *v7;
    }

    v21 = v7[1];
    if (v8 != v21)
    {
      do
      {
        if (*(v8 + 4) == 1)
        {
          v5 = *v8 | (*(v8 + 4) << 32);
        }

        else
        {
          *v8 = v5;
          *(v8 + 4) = BYTE4(v5);
        }

        v8 += 2;
      }

      while (v8 != v21);
      v7 = *(this + 2);
    }

    v22 = v7[3];
    v23 = v7[4];
    if (v22 != v23)
    {
      do
      {
        if (*(v22 + 4) == 1)
        {
          v6 = *v22 | (*(v22 + 4) << 32);
        }

        else
        {
          *v22 = v6;
          *(v22 + 4) = BYTE4(v6);
        }

        v22 += 2;
      }

      while (v22 != v23);
      v7 = *(this + 2);
    }

    v24 = *v7;
    v25 = v7[1];
    if (*v7 != v25)
    {
      do
      {
        if (*(v24 + 4) == 1)
        {
          *v24 = (*v24 + -68.352) / 9.696;
          *(v24 + 4) = 1;
        }

        v24 += 2;
      }

      while (v24 != v25);
      v7 = *(this + 2);
    }

    v27 = v7[3];
    for (i = v7[4]; v27 != i; v27 += 2)
    {
      if (*(v27 + 4) == 1)
      {
        *v27 = (*v27 + -64.88) / 9.6825;
        *(v27 + 4) = 1;
      }
    }
  }

  return v4;
}

unint64_t Nightingale::heartRateInputPreCondition::find1stHrSampleDayStreamLstmHr(Nightingale::heartRateInputPreCondition *this)
{
  v1 = *(this + 2);
  if (*(v1 + 100) == 1 && *(v1 + 108) == 1)
  {
    v2 = *(this + 1);
    v3 = *v2;
    v4 = v2[1];
    if (*v2 == v4)
    {
      v10 = 0;
      LODWORD(v9) = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = *(v1 + 96);
      v8 = 0;
      do
      {
        if (*v3 > v7)
        {
          goto LABEL_14;
        }

        if ((*(v3 + 24) & 1) != 0 && (*(v3 + 40) & 1) != 0 && *(v3 + 36) >= *(this + 39))
        {
          v5 = 1;
          v8 = *(v3 + 20);
        }

        if (*(v3 + 48) & 1) != 0 && *(v3 + 44) >= *(this + 40) && (*(v3 + 32))
        {
          v6 = 1;
        }

        else
        {
LABEL_14:
          if ((v6 & 1) == 0)
          {
            v6 = 1;
          }
        }

        v3 += 64;
      }

      while (v3 != v4);
      LODWORD(v9) = v8;
      v10 = v5 << 32;
    }

    v11 = v9 & 0xFFFFFF00;
    v9 = v9;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  return v10 | v9 | v11;
}

void Nightingale::heartRateInputPreCondition::forwardFill(uint64_t a1, unsigned int **a2, unint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    if (*(v3 + 4) == 1)
    {
      a3 = *v3 | (*(v3 + 4) << 32);
    }

    else
    {
      *v3 = a3;
      *(v3 + 4) = BYTE4(a3);
    }

    v3 += 2;
  }
}

void Nightingale::heartRateInputPreCondition::standardizeVec(float a1, float a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (*a4 != v5)
  {
    do
    {
      if (*(v4 + 4) == 1)
      {
        *v4 = (*v4 - a1) / a2;
        *(v4 + 4) = 1;
      }

      v4 += 8;
    }

    while (v4 != v5);
  }
}

uint64_t *std::vector<Nightingale::ngt_DayInput>::vector[abi:nn200100]<std::__wrap_iter<Nightingale::ngt_DayInput const*>,0>(uint64_t *a1, char *a2, char *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a2)
  {
    std::vector<Nightingale::ngt_DayInput>::__vallocate[abi:nn200100](a1, (a3 - a2) >> 6);
  }

  return a1;
}

void std::vector<Nightingale::ngt_DayInput>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_DayInput>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::optional<float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

std::string *std::__optional_storage_base<std::vector<std::string>,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::vector<std::string>,false> const&>(std::string *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *&result->__r_.__value_.__l.__data_ = 0uLL;
    result->__r_.__value_.__r.__words[2] = 0;
    result = std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    v2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return result;
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:nn200100](&v2, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<BOOL>::__vallocate[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>(a1, v2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, v13);
}

void std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:nn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:nn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t std::vector<std::vector<BOOL>>::__emplace_back_slow_path<std::vector<BOOL> const&>(void ***a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<BOOL>>>(a1, v6);
  }

  v7 = (24 * v2);
  std::vector<BOOL>::vector(v7, a2);
  v8 = (v7 + 3);
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<std::vector<BOOL>>::~__split_buffer(v14);
  return v8;
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](a1, v2);
  }

  return a1;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:nn200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__copy_impl::operator()[abi:nn200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 1);
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*v5)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }
}

void **std::__split_buffer<std::vector<BOOL>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<BOOL>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<BOOL>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    v5 = *(v1 - 24);
    v1 -= 24;
    v4 = v5;
    *(a1 + 16) = v1;
    if (v5)
    {
      operator delete(v4);
      v1 = *(a1 + 16);
    }
  }
}

void Nightingale::ngt_deviationAnalyzer::deviation_process(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  *a7 = 0;
  *(a7 + 4) = -1;
  *(a7 + 12) = 0;
  v8 = a7 + 12;
  *(a7 + 16) = -1;
  *(a7 + 24) = 0;
  v9 = a7 + 24;
  *(a7 + 28) = -1;
  *(a7 + 36) = 0;
  v10 = a7 + 36;
  *(a7 + 40) = -1;
  *(a7 + 48) = 0;
  *(a7 + 52) = 0;
  *(a7 + 56) = -1;
  *(a7 + 64) = -1;
  *(a7 + 72) = 0xFFFFFFFFLL;
  *(a7 + 80) = 0;
  *(a7 + 84) = -1;
  *(a7 + 92) = 0xFFFFFFFFLL;
  *(a7 + 100) = 0;
  *(a7 + 104) = -1;
  *(a7 + 116) = 0;
  v11 = a7 + 116;
  *(a7 + 112) = -1;
  *(a7 + 120) = 0;
  *(a7 + 124) = -1;
  *(a7 + 132) = -1;
  if (*(a2 + 36) == 1 && *(a2 + 128) == 1)
  {
    v13 = a6;
    v31 = *(a2 + 72);
    v27 = *(a2 + 88);
    v17 = *(a2 + 104);
    v28 = *(a2 + 112);
    v29 = *(a2 + 80);
    v26 = *(a2 + 120);
    Nightingale::ngt_deviationAnalyzer::detectIrreg(a1, *(a2 + 64), *(a2 + 96), a4, a5, *(a2 + 32), a6, a7, a7 + 48);
    if (*(a2 + 36) & 1) != 0 && (Nightingale::ngt_deviationAnalyzer::detectInfreq(a1, v31, v17, a4, a5, *(a2 + 32), v13, v8, v11 - 40), (*(a2 + 36)) && (Nightingale::ngt_deviationAnalyzer::detectProlonged(a1, v29, v28, a4, a5, *(a2 + 32), v13, v9, v11 - 20), std::vector<Nightingale::ngt_DayInput>::vector[abi:nn200100](__p, a3), (*(a2 + 36)))
    {
      Nightingale::ngt_deviationAnalyzer::detectSpotting(a1, v27, v26, __p, a4, a5, *(a2 + 32), v13, v10, v11);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      Nightingale::ngt_deviationAnalyzer::detectIrreg(v18, v19, v20, v21, v22, v23, v24, v25, a8);
    }
  }
}

void Nightingale::ngt_deviationAnalyzer::detectIrreg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  if (*(a4 + 84) != 1)
  {
    return;
  }

  v45 = v9;
  v46 = v10;
  if (*a4 == a4[1])
  {
    return;
  }

  v14 = *(a4 + 20);
  v15 = v14 - 179;
  *(a8 + 4) = v14 - 179;
  *(a8 + 8) = v14;
  v16 = Nightingale::ngt_deviationAnalyzer::ruleChecker(a1, a2, a3, v14 - 179, v14, a4, a5, a6, a7, a9);
  if ((v16 & 1) == 0 && !a7)
  {
    return;
  }

  __p = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v18 = *a4;
  v17 = a4[1];
  if (v18 == v17)
  {
    v25 = 0;
  }

  else
  {
    do
    {
      v19 = *v18;
      if (*(v18 + 24) == 1 && v19 >= v15)
      {
        v21 = *(v18 + 20);
        v22 = v21 + 1;
        if (v21 < v14 && v22 >= v14 - 89)
        {
          v37 = v22 - v19;
          std::vector<int>::push_back[abi:nn200100](&__p, &v37);
          v21 = *(v18 + 20);
          v22 = v21 + 1;
        }

        if (v21 < v14 - 90 && v22 >= v15)
        {
          v37 = v22 - *v18;
          std::vector<int>::push_back[abi:nn200100](&v38, &v37);
        }
      }

      v18 += 96;
    }

    while (v18 != v17);
    v25 = __p;
  }

  v26 = v42;
  if (*(a9 + 3))
  {
    v27 = (v39 - v38) >> 2;
    *(a9 + 20) = (v42 - v25) >> 2;
    *(a9 + 24) = v27;
  }

  if (v25 == v26)
  {
    goto LABEL_35;
  }

  v28 = v38;
  if (v38 != v39)
  {
    v44 = 0;
    v29 = std::__minmax_element_impl[abi:nn200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__identity,std::__less<void,void>>(v25, v26);
    v31 = *v30 - *v29;
    v44 = 0;
    v32 = std::__minmax_element_impl[abi:nn200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__identity,std::__less<void,void>>(v38, v39);
    v34 = *v33 - *v32;
    v36 = v31 > 16 && v34 > 16;
    *a9 = v36;
    *a8 = v16 & v36;
    if (*(a9 + 3) == 1)
    {
      *(a9 + 12) = v31;
      *(a9 + 16) = v34;
    }

LABEL_35:
    v28 = v38;
  }

  if (v28)
  {
    v39 = v28;
    operator delete(v28);
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

uint64_t Nightingale::ngt_deviationAnalyzer::detectInfreq(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  if (*(a4 + 60) == 1 && *a4 != *(a4 + 8))
  {
    v12 = *(a4 + 56);
    *(a8 + 4) = v12 - 179;
    *(a8 + 8) = v12;
    result = Nightingale::ngt_deviationAnalyzer::ruleChecker(result, a2, a3, v12 - 179, v12, a4, a5, a6, a7, a9);
    if ((result & 1) != 0 || a7)
    {
      v13 = *a4;
      v14 = *(a4 + 8);
      if (*a4 == v14)
      {
        v16 = 0;
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v18 = *v13;
          v13 += 24;
          v17 = v18;
          if (v18 <= v12 && v17 >= v12 - 89)
          {
            ++v15;
          }

          if (v17 <= v12 - 90 && v17 >= v12 - 179)
          {
            ++v16;
          }
        }

        while (v13 != v14);
      }

      if (*(a9 + 3))
      {
        *(a9 + 12) = v15;
        *(a9 + 16) = v16;
      }

      v21 = v15 >= 2 || v16 >= 2;
      v22 = !v21;
      *a9 = v22;
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = result;
      }

      *a8 = v23;
    }
  }

  return result;
}

uint64_t Nightingale::ngt_deviationAnalyzer::detectProlonged(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v9 = a4[1];
  if (*a4 != v9 && *(a4 + 68) == 1 && *(v9 - 88) == 1)
  {
    v14 = *(a4 + 16);
    v15 = v14 - 179;
    *(a8 + 4) = v14 - 179;
    *(a8 + 8) = v14;
    result = Nightingale::ngt_deviationAnalyzer::ruleChecker(result, a2, a3, v14 - 179, v14, a4, a5, a6, a7, a9);
    if ((result & 1) != 0 || a7)
    {
      v16 = *a4;
      v17 = a4[1];
      if (*a4 == v17)
      {
        v19 = 0;
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        do
        {
          if (*v16 >= v15)
          {
            ++v18;
            if (*(v16 + 8) == 1 && *(v16 + 4) - *v16 > 8)
            {
              ++v19;
            }
          }

          v16 += 96;
        }

        while (v16 != v17);
      }

      *a9 = v19 > 1;
      if (*(a9 + 3))
      {
        *(a9 + 12) = v18;
        *(a9 + 16) = v19;
      }

      if (v19 > 1)
      {
        v20 = result;
      }

      else
      {
        v20 = 0;
      }

      *a8 = v20;
    }
  }

  return result;
}

void Nightingale::ngt_deviationAnalyzer::detectSpotting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*a5 != *(a5 + 8))
  {
    v31[11] = v10;
    v31[12] = v11;
    if (*(a5 + 84) == 1)
    {
      v15 = *(a5 + 80);
      *(a9 + 4) = v15 - 179;
      *(a9 + 8) = v15;
      v16 = Nightingale::ngt_deviationAnalyzer::ruleChecker(a1, a2, a3, v15 - 179, v15, a5, a6, a7, a8, a10);
      if ((v16 & 1) != 0 || a8)
      {
        v28 = v16;
        std::vector<Nightingale::ngt_DayInput>::vector[abi:nn200100](__p, a4);
        Nightingale::ngt_deviationAnalyzer::extendPeriodWFlowSpotting(v15 - 179, v15, __p, a5, v30);
        NonAdjacentSpottingInACycle = __p[0];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        LODWORD(v31[0]) = 0;
        v18 = *a4;
        v19 = a4[1];
        if (*a4 == v19)
        {
          v21 = 0;
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v21 = 0;
          do
          {
            if (*(v18 + 8) == 1)
            {
              v22 = *v18;
              if (*v18 >= v15 - 89 && v22 <= v15)
              {
                NonAdjacentSpottingInACycle = Nightingale::ngt_deviationAnalyzer::findNonAdjacentSpottingInACycle(NonAdjacentSpottingInACycle, v30, v22, v31);
                v20 += NonAdjacentSpottingInACycle;
              }

              else if (v22 >= v15 - 179 && v22 <= v15 - 90)
              {
                NonAdjacentSpottingInACycle = Nightingale::ngt_deviationAnalyzer::findNonAdjacentSpottingInACycle(NonAdjacentSpottingInACycle, v30, v22, v31);
                v21 += NonAdjacentSpottingInACycle;
              }
            }

            v18 += 64;
          }

          while (v18 != v19);
        }

        v25 = v20 <= 0 || v21 <= 0;
        v26 = !v25;
        *a10 = v26;
        v27 = v28;
        if (v25)
        {
          v27 = 0;
        }

        *a9 = v27;
        if (*(a10 + 3))
        {
          *(a10 + 12) = v20;
          *(a10 + 16) = v21;
        }

        v31[0] = v30;
        std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](v31);
      }
    }
  }
}

uint64_t Nightingale::ngt_deviationAnalyzer::ruleChecker(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, char a9, uint64_t a10)
{
  v11 = a5;
  v14 = (a2 & 0x100000000) == 0 || a2 <= a4;
  *(a10 + 1) = v14;
  v16 = (a3 & 0x100000000) == 0 || a3 <= a5;
  *(a10 + 2) = v16;
  if (*(a6 + 36) == 1)
  {
    *(a10 + 3) = *(a6 + 32) <= a4;
  }

  *(a10 + 8) = a8 - a5;
  if (v14 && v16)
  {
    v17 = *(a10 + 3);
    if (a9)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = 0;
    if (a9)
    {
      goto LABEL_21;
    }
  }

  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  CycleFactorsEndBfrWinEnd = Nightingale::ngt_deviationAnalyzer::findCycleFactorsEndBfrWinEnd(a1, a5, a7);
  v21 = CycleFactorsEndBfrWinEnd < 1 || CycleFactorsEndBfrWinEnd + 84 < a4;
  *(a10 + 4) = v21;
  v22 = Nightingale::ngt_deviationAnalyzer::checkCycleFactorInWin(CycleFactorsEndBfrWinEnd, a4, (v11 - 1), a7);
  *(a10 + 5) = v22;
  return v22 & v17 & v21;
}

uint64_t Nightingale::ngt_deviationAnalyzer::findNonAdjacentSpottingInACycle(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  result = *a2 != v4 && a3 + 2 <= *v5;
  v7 = *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5);
  if (*a4 < v8)
  {
    v9 = v8 - v7;
    if (v8 < v7)
    {
      v9 = 0;
    }

    for (i = &v5[24 * v7 + 6]; ; i += 96)
    {
      if (!v9)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (*(i - 16) == 1 && *i == 1 && *(i - 6) <= a3)
      {
        v11 = *(i - 1);
        if (v11 >= a3 && *(i - 5) + 2 < a3 && v11 - 1 > a3)
        {
          break;
        }
      }

      ++v7;
      --v9;
      if (v8 == v7)
      {
        return result;
      }
    }

    result = (result + 1);
    *a4 = v7;
  }

  return result;
}

void Nightingale::ngt_deviationAnalyzer::extendPeriodWFlowSpotting(int a1@<W1>, uint64_t a2@<X2>, int **a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X8>)
{
  v73 = a2;
  v6 = a1;
  v9 = *a4;
  v8 = a4[1];
  v10 = &Nightingale::INVALID_JDAY;
  if (*a4 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *a4;
    do
    {
      if (*v12 >= a1)
      {
        break;
      }

      v13 = v12 + 4;
      v14 = *(v12 + 8) ? (v12 + 4) : &Nightingale::INVALID_JDAY;
      if (*v14 >= a1)
      {
        break;
      }

      ++v11;
      v12 = v13 + 92;
    }

    while (v13 + 92 != v8);
  }

  v15 = v11 != 0;
  v16 = v11 - 1;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 5);
  if (v18 <= v17)
  {
    goto LABEL_114;
  }

  v19 = v9 + 96 * v17;
  if (*(v19 + 8))
  {
    v10 = (v19 + 4);
  }

  v20 = *v10;
  if (v20 >= a1)
  {
    v20 = a1;
  }

  v21 = *a3;
  v22 = a3[1];
  if (*a3 == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    do
    {
      if (*v21 >= v20)
      {
        break;
      }

      ++v23;
      v21 += 16;
    }

    while (v21 != v22);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  BYTE4(v82) = 0;
  BYTE8(v82) = 0;
  BYTE12(v82) = 0;
  LOBYTE(v83) = 0;
  BYTE4(v83) = 0;
  BYTE8(v83) = 0;
  LOBYTE(v84) = 0;
  BYTE4(v84) = 0;
  BYTE8(v84) = 0;
  BYTE12(v84) = 0;
  v85[0] = 0;
  v85[4] = 0;
  v85[8] = 0;
  v85[12] = 0;
  v85[16] = 0;
  v85[20] = 0;
  v87 = 0;
  v88 = 0;
  __p = 0;
  if (v18 - 1 > v17)
  {
    v24 = v17;
    v72 = v17;
    v25 = v17;
    while (1)
    {
      if (v18 <= v25)
      {
        goto LABEL_114;
      }

      v26 = (v9 + 96 * v25);
      v75 = *v26;
      v27 = v26[1];
      v28 = v26[2];
      v29 = v26[3];
      *&v78[13] = *(v26 + 61);
      v77 = v28;
      *v78 = v29;
      v76 = v27;
      v80 = 0;
      v81 = 0;
      v79 = 0;
      v31 = *(v26 + 9);
      v30 = *(v26 + 10);
      if (v30 != v31)
      {
        if (v30 - v31 >= 0)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      if (BYTE8(v75) == 1 && BYTE8(v76) == 1)
      {
        v32 = DWORD1(v75);
        if (SDWORD1(v75) >= v6)
        {
          v33 = v6;
        }

        else
        {
          v33 = DWORD1(v75);
        }

        if (v72 < v24)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 5) <= v24 - 1)
          {
            goto LABEL_114;
          }

          v34 = *a4 + 96 * (v24 - 1);
          if (*(v34 + 8) == 1)
          {
            v33 = *(v34 + 4) + 3;
          }
        }

        v35 = DWORD1(v76) - 1;
        if (DWORD1(v76) - 1 >= v73)
        {
          v35 = v73;
        }

        v36 = (a3[1] - *a3) >> 6;
        if (v36 > v23)
        {
          v37 = 0;
          v38 = v23;
          v39 = v75;
          v40 = &(*a3)[16 * v23 + 2];
          v41 = -3;
          v42 = 4294967293;
          do
          {
            v43 = *(v40 - 2);
            if ((*(v40 - 1) - 1) < 4 || (*v40) && v43 >= v33 && v43 <= v35)
            {
              if (v43 < v39)
              {
                v45 = v43 - v42;
                v46 = v45 < 3;
                if (v45 >= 3)
                {
                  v47 = -3;
                }

                else
                {
                  v47 = v41;
                }

                if (v46 || v41 == -3)
                {
                  v37 = *(v40 - 2);
                }

                if (v41 == -3)
                {
                  v41 = *(v40 - 2);
                }

                else
                {
                  v41 = v47;
                }

                if (v39 - v37 <= 2)
                {
                  LODWORD(v75) = v41;
                  v39 = v41;
                }

                goto LABEL_51;
              }

              if (v43 > v32)
              {
                if (v43 - v32 > 2)
                {
                  v23 = v38;
                  break;
                }

                DWORD1(v75) = *(v40 - 2);
                BYTE8(v75) = 1;
                v32 = v43;
              }
            }

            v43 = v42;
LABEL_51:
            ++v38;
            v40 += 16;
            v42 = v43;
          }

          while (v36 > v38);
        }

        std::vector<Nightingale::cycleInfo>::push_back[abi:nn200100](a5, &v75);
        v49 = 1;
        if (v79)
        {
          v80 = v79;
          operator delete(v79);
        }
      }

      else
      {
        v49 = 0;
      }

      v8 = a4[1];
      if (v49)
      {
        ++v24;
        v9 = *a4;
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a4) >> 5);
        v25 = v24;
        if (v18 - 1 > v24)
        {
          continue;
        }
      }

      break;
    }
  }

  v82 = *(v8 - 96);
  v50 = *(v8 - 80);
  v51 = *(v8 - 64);
  v52 = *(v8 - 48);
  *&v85[13] = *(v8 - 35);
  v84 = v51;
  *v85 = v52;
  v83 = v50;
  if (&v82 != (v8 - 96))
  {
    std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(&__p, *(v8 - 24), *(v8 - 16), *(v8 - 16) - *(v8 - 24));
    v8 = a4[1];
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a4) >> 5) >= 2 && *(v8 - 184) == 1)
  {
    v6 = *(v8 - 188) + 3;
  }

  v53 = (a3[1] - *a3) >> 6;
  if (v53 > v23)
  {
    v54 = 0;
    v55 = v23;
    v56 = v82;
    v57 = &(*a3)[16 * v23 + 2];
    v58 = -3;
    v59 = 4294967293;
    do
    {
      v60 = *(v57 - 2);
      if ((*(v57 - 1) - 1) < 4 || (*v57) && (v60 >= v6 ? (v61 = v60 < v56) : (v61 = 0), v61))
      {
        v62 = v60 - v59;
        v63 = v62 < 3;
        if (v62 >= 3)
        {
          v64 = -3;
        }

        else
        {
          v64 = v58;
        }

        if (v63 || v58 == -3)
        {
          v54 = *(v57 - 2);
        }

        if (v58 == -3)
        {
          v58 = *(v57 - 2);
        }

        else
        {
          v58 = v64;
        }

        if (v56 - v54 <= 2)
        {
          LODWORD(v82) = v58;
          v56 = v58;
        }
      }

      else
      {
        v60 = v59;
      }

      ++v55;
      v57 += 16;
      v59 = v60;
    }

    while (v53 > v55);
  }

  std::vector<Nightingale::cycleInfo>::push_back[abi:nn200100](a5, &v82);
  v66 = *a5;
  v67 = a5[1] - *a5;
  if (v67 != 96)
  {
    v68 = 0;
    v69 = 0;
    v70 = 0xAAAAAAAAAAAAAAABLL * (v67 >> 5);
    while (v70 > ++v69)
    {
      v71 = v66 + v68;
      *(v71 + 20) = *(v71 + 96) - 1;
      *(v71 + 24) = 1;
      v66 = *a5;
      v70 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 5);
      v68 += 96;
      if (v70 - 1 <= v69)
      {
        goto LABEL_111;
      }
    }

LABEL_114:
    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_111:
  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }
}

uint64_t std::vector<Nightingale::cycleInfo>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<Nightingale::cycleInfo>::__emplace_back_slow_path<Nightingale::cycleInfo const&>(a1, a2);
  }

  else
  {
    std::construct_at[abi:nn200100]<Nightingale::cycleInfo,Nightingale::cycleInfo&,Nightingale::cycleInfo*>(a1[1], a2);
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

uint64_t Nightingale::ngt_deviationAnalyzer::findCycleFactorsEndBfrWinEnd(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  Nightingale::phaseFactorProcessor::getAllCycleVec(__p);
  EndOfReproductiveBfrADate = Nightingale::phaseFactorProcessor::findEndOfReproductiveBfrADate(&v8, a3, __p, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return EndOfReproductiveBfrADate;
}

BOOL Nightingale::ngt_deviationAnalyzer::checkCycleFactorInWin(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  Nightingale::phaseFactorProcessor::getAllCycleVec(&v12);
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (v13 != v12)
  {
    if (v13 - v12 >= 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = Nightingale::phaseFactorProcessor::detectPhases(&v14, a2 | (a3 << 32), &__p, a4);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return (v7 & 1) == 0;
}

uint64_t *std::vector<Nightingale::ngt_DayInput>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<Nightingale::ngt_DayInput>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 6);
  }

  return a1;
}

_DWORD *std::__minmax_element_impl[abi:nn200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__identity,std::__less<void,void>>(_DWORD *result, _DWORD *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= v5 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v4;
      }

      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v10 = *v7;
        v9 = v7[1];
        if (v9 >= *v7)
        {
          if (v10 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          v11 = v9 < v8;
          if (v9 > v8)
          {
            v8 = v7[1];
          }

          if (!v11)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v9 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          v8 = *v6;
          if (v10 > *v6)
          {
            v8 = *v7;
          }

          if (v10 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t std::vector<Nightingale::cycleInfo>::__emplace_back_slow_path<Nightingale::cycleInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::cycleInfo>>(a1, v6);
  }

  v7 = 96 * v2;
  std::construct_at[abi:nn200100]<Nightingale::cycleInfo,Nightingale::cycleInfo&,Nightingale::cycleInfo*>(v7, a2);
  v8 = v7 + 96;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<Nightingale::cycleInfo>::~__split_buffer(v14);
  return v8;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 61) = *(v6 + 61);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v6 += 96;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v10 = *(v5 + 72);
      if (v10)
      {
        *(v5 + 80) = v10;
        operator delete(v10);
      }

      v5 += 96;
    }
  }
}

uint64_t std::__split_buffer<Nightingale::cycleInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Nightingale::cycleInfo>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::cycleInfo>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 96;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 96;
    }
  }
}

uint64_t *std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Nightingale::Phase>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t Nightingale::rfLuna::rfLuna(uint64_t a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = -1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 177) = 0u;
  *(a1 + 224) = 9;
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition((a1 + 232));
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess((a1 + 304));
  Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation((a1 + 305));
  Nightingale::ngt_luna_fw_dl_tmp_process::ngt_luna_fw_dl_tmp_process((a1 + 312), a4);
  return a1;
}

void Nightingale::rfLuna::~rfLuna(id **this)
{
  Nightingale::ngt_luna_fw_dl_tmp_process::~ngt_luna_fw_dl_tmp_process(this + 39);
  Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation((this + 305));
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess((this + 38));
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition((this + 29));
  v6 = (this + 25);
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v2 = this[21];
  if (v2)
  {
    this[22] = v2;
    operator delete(v2);
  }

  v3 = this[18];
  if (v3)
  {
    this[19] = v3;
    operator delete(v3);
  }

  v6 = (this + 15);
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v4 = this[12];
  if (v4)
  {
    this[13] = v4;
    operator delete(v4);
  }

  v5 = this[9];
  if (v5)
  {
    this[10] = v5;
    operator delete(v5);
  }

  v6 = (this + 5);
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
}

uint64_t Nightingale::rfLuna::getOngoingFwRfLuna(Nightingale::rfLuna *this, uint64_t a2)
{
  *(this + 56) = 8;
  if (Nightingale::rfLuna::acquireWTmp(this, (a2 - 17), a2, 2) && Nightingale::rfLuna::validateWTmp(this, 0.3))
  {
    Nightingale::rfLuna::preCondition(this);
    if (Nightingale::rfLuna::applyAlgs(this, a2, 0.3))
    {
      return 1;
    }

    v5 = 8;
  }

  else
  {
    v5 = 1;
  }

  result = 0;
  *(this + 56) = v5;
  return result;
}

BOOL Nightingale::rfLuna::acquireWTmp(Nightingale::rfLuna *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(this + 232, *this);
  if (*(this + 32) == v9)
  {
    if (*(this + 32))
    {
      *(this + 3) = JDayIdx1stTmp;
    }

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(this + 32))
    {
      v10 = 0;
      *(this + 32) = 0;
      return v10;
    }

    *(this + 3) = JDayIdx1stTmp;
    *(this + 32) = 1;
  }

  memset(v22, 0, sizeof(v22));
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(this + 29, (v5 - v6 + 1), v5, *(*(*(this + 1) + 8) - 96) - 43, *this, *(this + 3), &v18);
  std::vector<std::vector<float>>::__vdeallocate(this + 5);
  *(this + 40) = v18;
  v11 = v19;
  v12 = *__p;
  v19 = 0;
  v18 = 0uLL;
  *(this + 7) = v11;
  *(this + 8) = v12;
  v13 = *(this + 9);
  if (v13)
  {
    *(this + 10) = v13;
    operator delete(v13);
  }

  *(this + 72) = *&__p[8];
  *(this + 11) = *&__p[24];
  memset(&__p[8], 0, 24);
  v14 = *(this + 12);
  if (v14)
  {
    *(this + 13) = v14;
    operator delete(v14);
    v14 = *&__p[8];
  }

  *(this + 6) = *&__p[32];
  *(this + 14) = v21;
  *&__p[40] = 0;
  v21 = 0;
  *&__p[32] = 0;
  if (v14)
  {
    *&__p[16] = v14;
    operator delete(v14);
  }

  v23 = &v18;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v23);
  if (*(this + 5) == *(this + 6))
  {
    v10 = 0;
  }

  else
  {
    Nightingale::wristTemperatureInputProcess::constructVectorOfSlicesFromMultipleWatches(this + 40, 17, v4, v6, &v18);
    std::vector<std::vector<float>>::__vdeallocate(this + 15);
    *(this + 120) = v18;
    *(this + 17) = v19;
    v19 = 0;
    v18 = 0uLL;
    v15 = *(this + 18);
    if (v15)
    {
      *(this + 19) = v15;
      operator delete(v15);
    }

    *(this + 9) = *__p;
    *(this + 20) = *&__p[16];
    memset(__p, 0, 24);
    v16 = *(this + 21);
    if (v16)
    {
      *(this + 22) = v16;
      operator delete(v16);
      v16 = *__p;
    }

    *(this + 168) = *&__p[24];
    *(this + 23) = *&__p[40];
    memset(&__p[24], 0, 24);
    if (v16)
    {
      *&__p[8] = v16;
      operator delete(v16);
    }

    v23 = &v18;
    std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v23);
    v10 = *(this + 15) != *(this + 16);
  }

  *&v18 = v22;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v18);
  return v10;
}

uint64_t Nightingale::rfLuna::validateWTmp(Nightingale::rfLuna *this, float a2)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v15 = &unk_2869C5CD8;
  v16 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh;
  v17 = 0;
  v18 = &v15;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:nn200100](v14, &v15);
  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](&v15);
  LODWORD(v13[0]) = (*(*(this + 15) + 8) - **(this + 15)) >> 2;
  std::vector<int>::vector[abi:nn200100](&v15, v13, 1uLL);
  *&__p = a2;
  std::vector<float>::vector[abi:nn200100](v13, &__p, 1uLL);
  v4 = *(this + 15);
  for (i = *(this + 16); v4 != i; v4 += 24)
  {
    v6 = *(this + 21);
    if (*(this + 22) == v6)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if ((*(v6 + 4) & 1) == 0)
    {
      v7 = *(this + 15);
      if (*(this + 16) == v7)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (**v7 < 0.0)
      {
        __p = 0;
        v11 = 0;
        v12 = 0;
        operator new();
      }
    }

    Nightingale::wristTemperatureInputValidation::checkListOfConditions(this + 305, v14, v4, &v15, v13, 1, &__p);
    std::vector<std::vector<std::pair<BOOL,float>>>::push_back[abi:nn200100](this + 25, &__p);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  *(this + 49) = 1;
  v8 = **(*(this + 26) - 24);
  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  v15 = v14;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  return v8 ^ 1u;
}

void Nightingale::rfLuna::preCondition(void *this)
{
  v1 = this[15];
  v2 = this[16];
  if (v1 != v2)
  {
    v4 = 0;
    do
    {
      v5 = this[21];
      if (v4 >= (this[22] - v5) >> 3)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v6 = *v1;
      v7 = *(v1 + 8);
      if (*v1 != v7)
      {
        v8 = v5 + 8 * v4;
        v9 = *v8;
        if ((*(v8 + 4) & 1) == 0)
        {
          v9 = -1.0;
        }

        v10 = (v7 - v6) >> 2;
        if (v10 <= 1)
        {
          v10 = 1;
        }

        v11 = *v1;
        v12 = v10;
        do
        {
          v13 = *v11;
          if (fabsf(*v11 + 1.0) < 1.0e-12)
          {
            *v11 = v9;
            v13 = v9;
          }

          ++v11;
          v9 = v13;
          --v12;
        }

        while (v12);
        do
        {
          *v6 = (*v6 + -36.033) / 0.41302;
          ++v6;
          --v10;
        }

        while (v10);
      }

      ++v4;
      Nightingale::vDemean<float>(v1);
      v1 += 24;
    }

    while (v1 != v2);
  }
}

uint64_t Nightingale::rfLuna::applyAlgs(Nightingale::rfLuna *this, uint64_t a2, float a3)
{
  v3 = *(this + 15);
  v4 = *(this + 16);
  if (v3 != v4 && (**(*(this + 26) - 24) & 1) == 0)
  {
    memset(&v10[3], 0, 24);
    do
    {
      if ((Nightingale::rfLuna::getRfAvailabilityFail(this, a2, a3, 2) & 1) == 0)
      {
        memset(v10, 0, 24);
        std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v10, 0, *v3, v3[1], v3[1] - *v3);
        memset(__p, 0, sizeof(__p));
        Nightingale::ngt_luna_fw_dl_tmp_process::ngt_luna_fwEndDetRF(this + 39, v10, __p);
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  return 0;
}

void std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t Nightingale::rfLuna::getRfAvailabilityFail(Nightingale::rfLuna *this, uint64_t a2, float a3, uint64_t a4)
{
  v5 = (this + 200);
  if (*(this + 25) != *(this + 26))
  {
    return *(this + 56) == 1;
  }

  result = Nightingale::rfLuna::acquireWTmp(this, (a2 - a4 - 15), a2, a4);
  if (result)
  {
    if (Nightingale::rfLuna::validateWTmp(this, a3))
    {
      return 0;
    }

    else
    {
      std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](v5);
      *(this + 56) = 9;
      return 1;
    }
  }

  return result;
}

uint64_t std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>>(a1, v11);
    }

    v12 = 32 * v8;
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::__value_func[abi:nn200100](v12, a2);
    v7 = v12 + 32;
    v13 = a1[1];
    v14 = v12 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>,std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>*>(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    a1[1] = v12 + 32;
    v16 = a1[2];
    a1[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::~__split_buffer(v17);
  }

  else
  {
    result = std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::__value_func[abi:nn200100](v4, a2);
    v7 = result + 32;
  }

  a1[1] = v7;
  return result;
}

uint64_t std::vector<std::vector<std::pair<BOOL,float>>>::push_back[abi:nn200100](uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<BOOL,float>>>>(a1, v11);
    }

    v12 = (24 * v8);
    std::vector<std::pair<BOOL,float>>::vector[abi:nn200100](v12, a2);
    v7 = v12 + 3;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy(v12 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 3;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::vector<std::pair<BOOL,float>>>::~__split_buffer(v17);
  }

  else
  {
    result = std::vector<std::pair<BOOL,float>>::vector[abi:nn200100](v4, a2);
    v7 = (result + 24);
  }

  *(a1 + 8) = v7;
  return result;
}

const void **std::vector<std::vector<std::pair<BOOL,float>>>::push_back[abi:nn200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<BOOL,float>>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::pair<BOOL,float>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void Nightingale::vDemean<float>(float **a1)
{
  if (*a1 != a1[1])
  {
    __p[3] = v4;
    __p[4] = v3;
    __p[7] = v1;
    __p[8] = v2;
    std::vector<int>::vector[abi:nn200100](__p, a1);
    Mean = Nightingale::getMeanWin<float>(__p, -1);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v7 = *a1;
    v8 = a1[1];
    while (v7 != v8)
    {
      *v7 = *v7 - Mean;
      ++v7;
    }
  }
}

void std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>,std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::__value_func[abi:nn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](v6);
      v6 += 32;
    }
  }
}

uint64_t std::__split_buffer<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<int>::vector[abi:nn200100](uint64_t *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<int>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}

uint64_t *std::vector<float>::vector[abi:nn200100](uint64_t *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<int>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}

void std::vector<std::pair<BOOL,float>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,float>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<std::pair<BOOL,float>>::vector[abi:nn200100](uint64_t *a1, uint64_t **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::pair<BOOL,float>>::__vallocate[abi:nn200100](a1, v2 - *a2);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<BOOL,float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<std::pair<BOOL,float>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<std::pair<BOOL,float>>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::pair<BOOL,float>>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double *std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(void *a1, char *__src, float *a3, float *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v16 = (v9 - __src) >> 3;
    if (v16 >= a5)
    {
      v20 = &__src[8 * a5];
      v21 = &v9[-8 * a5];
      v22 = a1[1];
      while (v21 < v9)
      {
        v23 = *v21;
        v21 += 8;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v9 != v20)
      {
        memmove(&__src[8 * a5], __src, v9 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + ((v9 - __src) >> 1));
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + ((v9 - __src) >> 1));
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19++ = v37;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[8 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v9)
        {
          v41 = *v39;
          v39 += 8;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[8 * a5], __src, v18 - v38);
        }

        v42 = __src;
        do
        {
          v43 = *v7++;
          *v42++ = v43;
        }

        while (v7 != v17);
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 3);
  if (v12 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>(a1, v15);
  }

  v27 = 8 * (v13 >> 3);
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 8;
  }

  while (v28);
  memcpy((v27 + 8 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

uint64_t std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float),std::allocator<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float)>,std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems&,std::vector<float> const&,int,float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2869C5CD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float),std::allocator<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float)>,std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems&,std::vector<float> const&,int,float)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, float *a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7, a3, *a4, *a5);
}

uint64_t std::__function::__func<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float),std::allocator<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float)>,std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems&,std::vector<float> const&,int,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

Nightingale::periodEstimatorLuna *Nightingale::periodEstimatorLuna::periodEstimatorLuna(Nightingale::periodEstimatorLuna *this, const Nightingale::ngt_Config *a2)
{
  v4 = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  Nightingale::ngt_luna_period_dl_tmp_process::ngt_luna_period_dl_tmp_process((v4 + 8), a2);
  *(this + 16) = 0;
  *(this + 20) = 0;
  if (*(a2 + 52))
  {
    *(this + 4) = *(a2 + 12);
    *(this + 20) = 1;
  }

  return this;
}

void Nightingale::periodEstimatorLuna::~periodEstimatorLuna(id **this)
{
  Nightingale::ngt_luna_period_dl_tmp_process::~ngt_luna_period_dl_tmp_process(this + 1);

  Nightingale::periodEstimatorBase::~periodEstimatorBase(this);
}

{
  Nightingale::ngt_luna_period_dl_tmp_process::~ngt_luna_period_dl_tmp_process(this + 1);

  Nightingale::periodEstimatorBase::~periodEstimatorBase(this);
}

void Nightingale::periodEstimatorLuna::estimatePeriodLuna(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, const Nightingale::ngt_Config *a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = a5;
  v47 = *MEMORY[0x277D85DE8];
  v13 = Nightingale::CGradient::CGradient(a7);
  *(a7 + 56) = 0;
  *(a7 + 60) = 0;
  *(a7 + 64) = 0;
  *(a7 + 68) = 0;
  *(a7 + 72) = 0;
  *(a7 + 76) = 5;
  *(a7 + 80) = 0;
  v14 = a3[1];
  v15 = *(v14 - 64);
  v16 = *(v14 - 48);
  v17 = *(v14 - 96);
  v38[1] = *(v14 - 80);
  v39 = v15;
  *v40 = v16;
  *&v40[13] = *(v14 - 35);
  v38[0] = v17;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v19 = *(v14 - 24);
  v18 = *(v14 - 16);
  if (v18 != v19)
  {
    if (v18 - v19 >= 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (*a3 != v14 && BYTE4(v39) == 1 && BYTE12(v39) == 1 && *(a4 + 36) == 1 && *(a6 + 16) == 1 && a6[2] >= a6[1])
  {
    AlgsUsedToRunLunaPeriod = Nightingale::periodEstimatorLuna::getAlgsUsedToRunLunaPeriod(v13, *a6, a3, a4, v8, *(a6 + 1));
    Nightingale::periodEstimatorCalendar::periodEstimatorCalendar(v37, a4);
    switch(AlgsUsedToRunLunaPeriod)
    {
      case 1:
        Nightingale::lstmLunaPeriod::lstmLunaPeriod(&v44, a2, a3, a4, *(a6 + 1));
        Nightingale::lstmLunaPeriod::estimatePeriodStartLuna(&__p, &v44);
        if (v34 == 1)
        {
          if (Nightingale::CGradient::get_vGrad_empty(&__p))
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            AlgsUsedToRunLunaPeriod = 5;
          }

          else
          {
            if (&__p != a7)
            {
              std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a7, __p, v28, (v28 - __p) >> 2);
            }

            *(a7 + 24) = v29[0];
            *(a7 + 33) = *(v29 + 9);
            if (*(a7 + 60) == v31)
            {
              if (*(a7 + 60))
              {
                *(a7 + 56) = v30;
              }
            }

            else if (*(a7 + 60))
            {
              *(a7 + 60) = 0;
            }

            else
            {
              *(a7 + 56) = v30;
              *(a7 + 60) = 1;
            }

            if (*(a7 + 68) == v33)
            {
              if (*(a7 + 68))
              {
                *(a7 + 64) = v32;
              }
            }

            else if (*(a7 + 68))
            {
              *(a7 + 68) = 0;
            }

            else
            {
              *(a7 + 64) = v32;
              *(a7 + 68) = 1;
            }

            v22 = v35;
            v23 = v35 & 0xFFFFFF00;
            AlgsUsedToRunLunaPeriod = 1;
            v24 = v36;
          }

          *(a7 + 72) = 1;
        }

        else if (*a6 == 1)
        {
          v22 = v35;
          v23 = v35 & 0xFFFFFF00;
          AlgsUsedToRunLunaPeriod = 2;
          v24 = v36;
        }

        else
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          AlgsUsedToRunLunaPeriod = 1;
        }

        if (__p)
        {
          v28 = __p;
          operator delete(__p);
        }

        Nightingale::lstmLunaPeriod::~lstmLunaPeriod(&v44);
        if ((v24 & 1) != 0 && Nightingale::periodEstimatorBase::checkDayToRunPeriodDLLessThanOPK(a1, a3[13], v23 | v22))
        {
          *(a7 + 80) = 1;
          *(a7 + 8) = *a7;
          if (*(a7 + 60) == 1)
          {
            *(a7 + 60) = 0;
          }

          if (*(a7 + 68) == 1)
          {
            *(a7 + 68) = 0;
          }

          *(a7 + 72) = 0;
          AlgsUsedToRunLunaPeriod = 5;
          goto LABEL_50;
        }

        break;
      case 0:
        Nightingale::periodEstimatorLuna::getPeriodRegularLuna(a1, 0, a3[12], v38, v37, &v44);
        v21 = *a7;
        if (*a7)
        {
          *(a7 + 8) = v21;
          operator delete(v21);
        }

        AlgsUsedToRunLunaPeriod = 0;
        *a7 = v44;
        *(a7 + 16) = v45;
        *(a7 + 24) = v46[0];
        *(a7 + 33) = *(v46 + 9);
LABEL_50:
        *(a7 + 76) = AlgsUsedToRunLunaPeriod;
        Nightingale::periodEstimatorCalendar::~periodEstimatorCalendar(v37);
        return;
      case 2:
        Nightingale::periodEstimatorLuna::getPeriodRegularLuna(a1, *(a6 + 3), a3[12], v38, v37, &v44);
        v25 = *a7;
        if (*a7)
        {
          *(a7 + 8) = v25;
          operator delete(v25);
        }

        *a7 = v44;
        *(a7 + 16) = v45;
        *(a7 + 24) = v46[0];
        *(a7 + 33) = *(v46 + 9);
        AlgsUsedToRunLunaPeriod = 2;
        break;
    }

    goto LABEL_50;
  }
}

uint64_t Nightingale::periodEstimatorLuna::getAlgsUsedToRunLunaPeriod(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, int a5, unint64_t a6)
{
  if (a2 == 7)
  {
    return 5;
  }

  v7 = a3[1];
  if (*(v7 - 52) == 1 && *(v7 - 56) < 2.25)
  {
    return 0;
  }

  v9 = HIDWORD(a6);
  if (a6 <= SHIDWORD(a6))
  {
    v11 = 0;
    v12 = *a3;
    if (*(a4 + 4))
    {
      v12 = a3[1];
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v12) >> 5) > 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = *(a4 + 4) & (v7 != *a3);
    }

    while (1)
    {
      v10 = (a6 - 45 >= a5) & v13;
      if (v10 == 1 && ((*(a3 + 36) & 1) == 0 || *(a3 + 8) <= a6 - 44))
      {
        break;
      }

      v11 = a6 >= v9;
      LODWORD(a6) = a6 + 1;
      if (v9 + 1 == a6)
      {
        v10 = 5;
        break;
      }
    }
  }

  else
  {
    v10 = 5;
    v11 = 1;
  }

  if (a2 == 1 && v11)
  {
    return 2;
  }

  else
  {
    return v10;
  }
}

void Nightingale::periodEstimatorLuna::getPeriodRegularLuna(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float *a4@<X3>, Nightingale::periodEstimatorCalendar *a5@<X5>, uint64_t a6@<X8>)
{
  Nightingale::CGradient::CGradient(a6);
  if (*(a4 + 36) == 1 && *(a4 + 44) == 1)
  {
    NullPoint = Nightingale::periodEstimatorBase::getNullPoint(a1, a2, a3, *a4);
    if (a4[9] & 1) != 0 && (a4[11])
    {
      Nightingale::periodEstimatorCalendar::getCalBasedPeriodStartGradient(a5, NullPoint & 0xFFFFFFFFFFLL, &v19, a4[8], a4[10]);
      v13 = *a6;
      if (*a6)
      {
        *(a6 + 8) = v13;
        operator delete(v13);
      }

      *a6 = v19;
      *(a6 + 16) = v20;
      *(a6 + 24) = v21[0];
      *(a6 + 33) = *(v21 + 9);
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      Nightingale::periodEstimatorLuna::enoughDataToRunlunaDL(v14, v15, v16, v17, v18);
    }
  }
}

uint64_t Nightingale::periodEstimatorLuna::enoughDataToRunlunaDL(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (a2 - 45 < a5)
  {
    goto LABEL_7;
  }

  v6 = *a3;
  v5 = a3[1];
  if (*(a4 + 4) != 1)
  {
LABEL_5:
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 5) >= 2)
    {
      goto LABEL_6;
    }

LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  if (v5 == v6)
  {
    v6 = a3[1];
    goto LABEL_5;
  }

LABEL_6:
  v7 = *(a3 + 36) ^ 1 | (*(a3 + 8) <= a2 - 44);
  return v7 & 1;
}

uint64_t Nightingale::periodEstimatorBase::getNullPoint(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3 - a4;
  v5 = (a3 - a4) & 0xFFFFFF00;
  v6 = 0x100000000;
  if ((a3 & 0x100000000) == 0)
  {
    v6 = 0;
    v4 = 0;
    v5 = 0;
  }

  v7 = a2 + 8;
  if (a2 + 8 <= a3)
  {
    v7 = a3;
  }

  v8 = v7 - a4;
  if ((a3 & 0x100000000) != 0)
  {
    v9 = v8 & 0xFFFFFF00;
  }

  else
  {
    LOBYTE(v8) = a2 + 8 - a4;
    v9 = (a2 + 8 - a4) & 0xFFFFFF00;
  }

  if ((a2 & 0x100000000) != 0)
  {
    v6 = 0x100000000;
    v4 = v8;
    v5 = v9;
  }

  return v6 | v5 | v4;
}

uint64_t Nightingale::periodEstimatorBase::constructPeriodGradFromDLOut@<X0>(void *a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, Nightingale::CGradient *a5@<X8>)
{
  result = Nightingale::CGradient::CGradient(a5);
  if (a1[1] - *a1 == 128)
  {
    if (a4 >= -31)
    {
      v11 = 0;
      v12 = ((a4 + 31) & ~((a4 + 31) >> 31)) + 1;
      v13 = -a4;
      v14 = -4 * a4;
      do
      {
        v15 = 0.0;
        if (v11 >= a2 && v11 <= a3)
        {
          if (v13 + v11 >= ((a1[1] - *a1) >> 2))
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v15 = *(*a1 + v14 + 4 * v11);
        }

        Nightingale::CGradient::push_back(a5, v15);
        ++v11;
      }

      while (v12 != v11);
    }

    return Nightingale::CGradient::normalize(a5);
  }

  return result;
}

unint64_t Nightingale::lstmModelCommonFw::fwDLPostProcess@<X0>(uint64_t *a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v7 = 0;
  *a4 = 0;
  *(a4 + 4) = 0;
  *(a4 + 8) = 0;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  v8 = (a4 + 16);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  if (a2)
  {
    v9 = *a1;
    v10 = a1[1] - 4;
    a1[1] = v10;
    v11 = v10 - (v9 + 1);
    if (v10 == v9 + 1)
    {
      v12 = v9;
    }

    else
    {
      memmove(v9, v9 + 1, v10 - (v9 + 1));
      v12 = *a1;
    }

    v13 = (v9 + v11);
    a1[1] = v9 + v11;
    if (v12 != (v9 + v11))
    {
      v14 = 0.0;
      v15 = v12;
      do
      {
        v16 = *v15++;
        v14 = v14 + v16;
      }

      while (v15 != v13);
      v17 = 1.0 / v14;
      do
      {
        *v12 = *v12 * v17;
        ++v12;
      }

      while (v12 != v13);
    }

    v7 = 1;
  }

  v18 = Nightingale::argquantile(a1, 0.2);
  result = Nightingale::argquantile(a1, 0.8);
  if ((v18 & 1) == 0 && (result & 1) == 0)
  {
    *a4 = (roundf((*(&v18 + 1) + *(&result + 1)) * 0.5) + (v7 + a3));
    *(a4 + 4) = 1;
    *(a4 + 8) = *(&result + 1) - *(&v18 + 1);
    *(a4 + 12) = 1;
    if (v8 != a1)
    {
      v20 = *a1;
      v21 = a1[1];
      v22 = &v21[-*a1] >> 2;

      return std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v8, v20, v21, v22);
    }
  }

  return result;
}

void Nightingale::lstmModelCommonPeriod::periodDLPostProcess(void *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  Nightingale::CGradient::CGradient(__p);
  v6 = Nightingale::argquantile(a1, 0.1);
  v7 = Nightingale::argquantile(a1, 0.2);
  v8 = Nightingale::argquantile(a1, 0.8);
  v9 = Nightingale::argquantile(a1, 0.9);
  if (v6 & 1) != 0 || (v7 & 1) != 0 || (v8 & 1) != 0 || (v9)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (__p[1] != __p[0])
    {
      std::vector<int>::__vallocate[abi:nn200100](a3, (__p[1] - __p[0]) >> 2);
    }

    *(a3 + 24) = v24[0];
    *(a3 + 33) = *(v24 + 9);
    *(a3 + 56) = 0;
    *(a3 + 60) = 1;
    *(a3 + 64) = 0;
    *(a3 + 68) = 1;
    *(a3 + 72) = 0;
    *(a3 + 76) = 0;
    *(a3 + 80) = 0;
    *(a3 + 84) = 0;
    goto LABEL_8;
  }

  v10 = (roundf((*(&v7 + 1) + *(&v8 + 1)) * 0.5) + 0.0);
  v11 = v10 - *(&v6 + 1);
  v12 = *(&v9 + 1) - v10;
  if (SHIDWORD(v9) != SHIDWORD(v6))
  {
    v11 = llroundf(v11 * 0.85);
    v12 = llroundf(v12 * 0.85);
  }

  if (v12 >= 6)
  {
    v13 = 6;
  }

  else
  {
    v13 = v12;
  }

  if (v11 >= 6)
  {
    v14 = 6;
  }

  else
  {
    v14 = v11;
  }

  if (v11 + v12 > 12)
  {
    v12 = v13;
    v11 = v14;
  }

  v15 = v10 - v11;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v16 = v15 + a2;
  v17 = v10 + a2 + v12;
  Nightingale::lstmModelCommonPeriod::constructPeriodGradFromDLOut(a1, v15 + a2, v17, a2, &v19);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v19;
  v23 = v20;
  v24[0] = v21[0];
  *(v24 + 9) = *(v21 + 9);
  Nightingale::CGradient::CGradient(a3);
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  if (__p == a3)
  {
    *(a3 + 24) = v24[0];
    *(a3 + 33) = *(v24 + 9);
  }

  else
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a3, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
    v18 = *(a3 + 60);
    *(a3 + 24) = v24[0];
    *(a3 + 33) = *(v24 + 9);
    if (v18)
    {
      goto LABEL_30;
    }
  }

  *(a3 + 60) = 1;
LABEL_30:
  *(a3 + 56) = v16;
  if ((*(a3 + 68) & 1) == 0)
  {
    *(a3 + 68) = 1;
  }

  *(a3 + 64) = v17;
LABEL_8:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t Nightingale::lstmModelCommonPeriod::constructPeriodGradFromDLOut@<X0>(void *a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, Nightingale::CGradient *a5@<X8>)
{
  result = Nightingale::CGradient::CGradient(a5);
  if (a1[1] - *a1 == 128)
  {
    if (a4 >= -31)
    {
      v11 = 0;
      v12 = ((a4 + 31) & ~((a4 + 31) >> 31)) + 1;
      v13 = -a4;
      v14 = -4 * a4;
      do
      {
        v15 = 0.0;
        if (v11 >= a2 && v11 <= a3)
        {
          if (v13 + v11 >= ((a1[1] - *a1) >> 2))
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v15 = *(*a1 + v14 + 4 * v11);
        }

        Nightingale::CGradient::push_back(a5, v15);
        ++v11;
      }

      while (v12 != v11);
    }

    return Nightingale::CGradient::normalize(a5);
  }

  return result;
}

void Nightingale::lstmModelCommonPeriod::periodDLTransformerPostProcess(float *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 * 31.0;
  v6 = (v4 * (1.0 - *a1)) * 31.0;
  v7 = a2;
  v8 = (v4 * 31.0) - v6;
  v9 = v8 / 1.28;
  v10 = v9 * v9;
  v11 = ((v4 * 31.0) + a2);
  v12 = (fmax((sqrtf(v9 * v9) * 10.0), 20.0) + v11);
  v13 = Nightingale::CGradient::CGradient(&__p);
  if (v12 >= 1)
  {
    v14 = v10;
    v15 = 0.0;
    do
    {
      v16 = Nightingale::gaussian_pdf(v13, v15, v11, v14);
      Nightingale::CGradient::push_back(&__p, v16);
      v15 = v15 + 1.0;
      --v12;
    }

    while (v12);
  }

  Nightingale::CGradient::CGradient(a3);
  if (&__p != a3)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a3, __p, v18, (v18 - __p) >> 2);
  }

  *(a3 + 24) = v19[0];
  *(a3 + 33) = *(v19 + 9);
  *(a3 + 56) = v6 + v7;
  *(a3 + 60) = (v5 + v8) + v7;
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

uint64_t Nightingale::lstmModelCommonPeriod::applyNoflowUpdateDL(Nightingale::lstmModelCommonPeriod *this, Nightingale::CGradient *a2, int a3)
{
  if (Nightingale::CGradient::get_vGrad_len(a2) < a3)
  {
    *(a2 + 33) = 1;
  }

  Nightingale::CGradient::annihilateEarly(a2, a3 + 1, v5);
  Nightingale::CGradient::normalize(a2);
  Nightingale::CGradient::set_isNull_if_grad_allZeros(a2);
  result = Nightingale::CGradient::get_isNull(a2);
  if (result)
  {
    *(a2 + 1) = *a2;
  }

  *(a2 + 34) = 1;
  return result;
}

void HealthAlgorithms::deviationInput(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1;
  *a2 = 0;
  a2[4] = 0;
  a2[8] = 0;
  a2[12] = 0;
  a2[16] = 0;
  a2[20] = 0;
  a2[24] = 0;
  a2[28] = 0;
  a2[32] = 0;
  a2[36] = 0;
  a2[40] = 0;
  a2[44] = 0;
  a2[48] = 0;
  a2[52] = 0;
  a2[56] = 0;
  a2[60] = 0;
  if (v3)
  {
    v28 = v3;
    v4 = [v3 julianDayMinAnalysisWindowStartIrregular];
    v6 = HealthAlgorithms::julianDayMinAnalysisWindow(v4, v5);
    *a2 = v6;
    a2[4] = BYTE4(v6);

    v7 = [v28 julianDayMinAnalysisWindowEndIrregular];
    v9 = HealthAlgorithms::julianDayMinAnalysisWindow(v7, v8);
    *(a2 + 8) = v9;
    a2[36] = BYTE4(v9);

    v10 = [v28 julianDayMinAnalysisWindowStartInfrequent];
    v12 = HealthAlgorithms::julianDayMinAnalysisWindow(v10, v11);
    *(a2 + 2) = v12;
    a2[12] = BYTE4(v12);

    v13 = [v28 julianDayMinAnalysisWindowEndInfrequent];
    v15 = HealthAlgorithms::julianDayMinAnalysisWindow(v13, v14);
    *(a2 + 10) = v15;
    a2[44] = BYTE4(v15);

    v16 = [v28 julianDayMinAnalysisWindowStartProlonged];
    v18 = HealthAlgorithms::julianDayMinAnalysisWindow(v16, v17);
    *(a2 + 4) = v18;
    a2[20] = BYTE4(v18);

    v19 = [v28 julianDayMinAnalysisWindowEndProlonged];
    v21 = HealthAlgorithms::julianDayMinAnalysisWindow(v19, v20);
    *(a2 + 12) = v21;
    a2[52] = BYTE4(v21);

    v22 = [v28 julianDayMinAnalysisWindowStartSpotting];
    v24 = HealthAlgorithms::julianDayMinAnalysisWindow(v22, v23);
    *(a2 + 6) = v24;
    a2[28] = BYTE4(v24);

    v25 = [v28 julianDayMinAnalysisWindowEndSpotting];
    v27 = HealthAlgorithms::julianDayMinAnalysisWindow(v25, v26);
    *(a2 + 14) = v27;
    a2[60] = BYTE4(v27);

    v3 = v28;
  }
}

uint64_t HealthAlgorithms::julianDayMinAnalysisWindow(HealthAlgorithms *this, NSNumber *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v4 = [(HealthAlgorithms *)v2 unsignedIntValue];
    v5 = v4 & 0xFFFFFF00;
    v6 = v4;
    v7 = 0x100000000;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  return v7 | v5 | v6;
}

id HealthAlgorithms::deviationAnalysis(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = HealthAlgorithms::deviation(a1);
  [v2 setIrregularBleeding:v3];

  v4 = HealthAlgorithms::deviation(a1 + 12);
  [v2 setInfrequentBleeding:v4];

  v5 = HealthAlgorithms::deviation(a1 + 24);
  [v2 setProlongedBleeding:v5];

  v6 = HealthAlgorithms::deviation(a1 + 36);
  [v2 setSpotting:v6];

  HealthAlgorithms::deviationAnalysisCoreAnalytics(a1, v2);

  return v2;
}

id HealthAlgorithms::deviation(uint64_t a1)
{
  if (*a1 == 1)
  {
    if ((*(a1 + 4) & 0x80000000) == 0 && (*(a1 + 8) & 0x80000000) == 0)
    {
      v2 = objc_opt_new();
      [v2 setJulianDayOfAnalysisWindowStart:*(a1 + 4)];
      [v2 setJulianDayOfAnalysisWindowEnd:*(a1 + 8)];
      goto LABEL_9;
    }

    v3 = ha_get_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      HealthAlgorithms::deviation(v3);
    }
  }

  v2 = 0;
LABEL_9:

  return v2;
}

void HealthAlgorithms::deviationAnalysisCoreAnalytics(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 irregularBleeding];

  if (v3)
  {
    v4 = HealthAlgorithms::deviationIrregularMetricsForCoreAnalytics((a1 + 48));
    v5 = [v15 irregularBleeding];
    [v5 setMetricsForCoreAnalytics:v4];
  }

  v6 = [v15 infrequentBleeding];

  if (v6)
  {
    v7 = HealthAlgorithms::deviationInfrequentMetricsForCoreAnalytics(a1 + 76);
    v8 = [v15 infrequentBleeding];
    [v8 setMetricsForCoreAnalytics:v7];
  }

  v9 = [v15 prolongedBleeding];

  if (v9)
  {
    v10 = HealthAlgorithms::deviationProlongedMetricsForCoreAnalytics(a1 + 96);
    v11 = [v15 prolongedBleeding];
    [v11 setMetricsForCoreAnalytics:v10];
  }

  v12 = [v15 spotting];

  if (v12)
  {
    v13 = HealthAlgorithms::deviationSpottingMetricsForCoreAnalytics(a1 + 116);
    v14 = [v15 spotting];
    [v14 setMetricsForCoreAnalytics:v13];
  }
}
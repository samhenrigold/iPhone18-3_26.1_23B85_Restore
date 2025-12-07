uint64_t asdtPowerTransitionsInOrder(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = asdtPowerTransitionUpwards(a1);
  v5 = asdtPowerTransitionIndex(v3);
  v6 = asdtPowerTransitionUpwards(v2);
  v7 = asdtPowerTransitionIndex(v2);
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v4 ^ v6;
  if (v8)
  {
    v9 = 1;
  }

  v10 = v9 ^ 1;
  if (v5 <= v7)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t asdtPowerTransitionIndex(int a1)
{
  if (a1 <= 1768843635)
  {
    v1 = 1685090417;
    if (a1 == 1685286000)
    {
      v9 = 5;
    }

    else
    {
      v9 = 0;
    }

    if (a1 == 1685092205)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (a1 == 1685090418)
    {
      v4 = 2;
    }

    else
    {
      v4 = v10;
    }

    v5 = 1684627811;
    v6 = 4;
    if (a1 == 1684628588)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v1 = 1970435437;
    if (a1 == 1970563428)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    if (a1 == 1970563425)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 1970435438)
    {
      v4 = 5;
    }

    else
    {
      v4 = v3;
    }

    v5 = 1768843636;
    v6 = 1;
    if (a1 == 1970304877)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    if (a1 == 1970303090)
    {
      v8 = 3;
    }

    else
    {
      v8 = v7;
    }
  }

  if (a1 == v5)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (a1 <= v1)
  {
    return v11;
  }

  else
  {
    return v4;
  }
}

uint64_t asdtPowerTransitionFromUInt32(uint64_t result)
{
  if (result <= 1768843635)
  {
    if (result <= 1685090417)
    {
      if (result == 1684627811)
      {
        return result;
      }

      v1 = 1684628588;
      goto LABEL_15;
    }

    if (result == 1685090418 || result == 1685092205)
    {
      return result;
    }

    v1 = 1685286000;
LABEL_15:
    if (result != v1)
    {
      return 0;
    }

    return result;
  }

  if (result > 1970435437)
  {
    if (result == 1970435438 || result == 1970563425)
    {
      return result;
    }

    v1 = 1970563428;
    goto LABEL_15;
  }

  if (result != 1768843636 && result != 1970303090)
  {
    v1 = 1970304877;
    goto LABEL_15;
  }

  return result;
}

void sub_24167418C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_241677B1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_1_4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_241679658(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2416797E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ASDTUserActivityNotifier;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_241679B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ASDT::Acoustic::SpeakerThieleSmallV2::asDictionary(ASDT::Acoustic::SpeakerThieleSmallV2 *this)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  LODWORD(v3) = 1036831949;
  v4 = ASDT::Acoustic::scaledValue(*this, v3);
  [v2 setObject:v4 forKey:kASDTAcousticKeySpeakerThieleSmallFs];

  LODWORD(v5) = 981668463;
  v6 = ASDT::Acoustic::scaledValue(*(this + 1), v5);
  [v2 setObject:v6 forKey:kASDTAcousticKeySpeakerThieleSmallQts];

  LODWORD(v7) = 981668463;
  v8 = ASDT::Acoustic::scaledValue(*(this + 2), v7);
  [v2 setObject:v8 forKey:kASDTAcousticKeySpeakerThieleSmallRe];

  LODWORD(v9) = 1008981770;
  v10 = ASDT::Acoustic::scaledValue(*(this + 3), v9);
  [v2 setObject:v10 forKey:kASDTAcousticKeySpeakerThieleSmallT];

  LODWORD(v11) = 1008981770;
  v12 = ASDT::Acoustic::scaledValue(*(this + 4), v11);
  [v2 setObject:v12 forKey:kASDTAcousticKeySpeakerThieleSmallLe];

  LODWORD(v13) = 1.0;
  v14 = ASDT::Acoustic::scaledValue(*(this + 5), v13);
  [v2 setObject:v14 forKey:kASDTAcousticKeySpeakerThieleSmallKms];

  LODWORD(v15) = 953267991;
  v16 = ASDT::Acoustic::scaledValue(*(this + 6), v15);
  [v2 setObject:v16 forKey:kASDTAcousticKeySpeakerThieleSmallMms];

  LODWORD(v17) = 953267991;
  v18 = ASDT::Acoustic::scaledValue(*(this + 7), v17);
  [v2 setObject:v18 forKey:kASDTAcousticKeySpeakerThieleSmallBI];

  LODWORD(v19) = 981668463;
  v20 = ASDT::Acoustic::scaledValue(*(this + 8), v19);
  [v2 setObject:v20 forKey:kASDTAcousticKeySpeakerThieleSmallRms];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 18)];
  [v2 setObject:v21 forKey:kASDTAcousticKeySpeakerThieleSmallDataSourceID];

  v22 = [v2 copy];

  return v22;
}

id ASDT::Acoustic::Data<ASDT::Acoustic::SpeakerThieleSmallV2,(unsigned short)2>::entries(unsigned __int8 *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  if (!a1[3])
  {
    v2 = ((((a1[2] - 6) * 0x2E8BA2E8BA2E8BA3uLL) >> 64) >> 2);
  }

  v3 = v2;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
  if (v3)
  {
    v6 = 0;
    v7 = (a1 + 4);
    *&v5 = 67109120;
    v13 = v5;
    do
    {
      v9 = ASDT::Acoustic::SpeakerThieleSmallV2::asDictionary(v7);
      if (!v9)
      {
        v10 = ASDTBaseLogType(0, v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = v13;
          v15 = v6;
          _os_log_error_impl(&dword_241659000, v10, OS_LOG_TYPE_ERROR, "Failed to create SpeakerThieleSmall data entry at index %hhu!", buf, 8u);
        }
      }

      [v4 addObject:{v9, v13}];

      ++v6;
      v7 = (v7 + 22);
    }

    while (v3 != v6);
  }

  v11 = [v4 copy];

  return v11;
}

void sub_24167A778(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ASDT::Acoustic::Base::valid(ASDT::Acoustic::Base *this, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3 + 6 > a2 || (v7 = this + 2, v6 = *(this + 2), v6 < a3))
  {
    v8 = ASDTBaseLogType(this, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ASDT::Acoustic::Base::valid();
    }

    goto LABEL_5;
  }

  if (*this != a4)
  {
    v8 = ASDTBaseLogType(this, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ASDT::Acoustic::Base::valid();
    }

    goto LABEL_5;
  }

  v10 = *(this + 3);
  if (v6 == a2 || v10 == 0)
  {
    v12 = (v6 - 6) % a3;
    if (v6 != a2 || v12)
    {
      v8 = ASDTBaseLogType(this, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v19 = *v7;
        v25 = 67109632;
        v26 = v19;
        v27 = 2048;
        v28 = a2;
        v29 = 2048;
        v30 = v12;
        v18 = "Unexpected size: Found 0x%hhx, expected: 0x%zx, remainder: 0x%zx";
        goto LABEL_27;
      }

LABEL_5:

      return 0;
    }

    if (*(this + 3))
    {
      v13 = *(this + 3);
    }

    else
    {
      v13 = (v6 - 6) / a3;
    }
  }

  else
  {
    v14 = (a2 - 6) / a3;
    v15 = (a2 - 6) % a3;
    if (v14 != v10 || v15 != 0)
    {
      v8 = ASDTBaseLogType(this, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v17 = *(this + 3);
        v25 = 67109632;
        v26 = v17;
        v27 = 2048;
        v28 = v14;
        v29 = 2048;
        v30 = v15;
        v18 = "Unexpected number of entries: Found 0x%hhx, expected: 0x%zx, remainder: 0x%zx";
LABEL_27:
        _os_log_error_impl(&dword_241659000, v8, OS_LOG_TYPE_ERROR, v18, &v25, 0x1Cu);
        goto LABEL_5;
      }

      goto LABEL_5;
    }

    v13 = *(this + 3);
    if (v6 != a3)
    {
      v8 = ASDTBaseLogType(this, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ASDT::Acoustic::Base::valid();
      }

      goto LABEL_5;
    }
  }

  v20 = v13 * a3 + 4;
  if (v13 * a3 == 0xFC)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v22 = (this + v20);
    v23 = this;
    do
    {
      v24 = *v23;
      v23 = (v23 + 1);
      v21 += v24;
    }

    while (v23 < v22);
  }

  if (!*(this + 3))
  {
    v10 = (v6 - 6) / a3;
  }

  if (*(this + (v10 * a3 + 4)) != -v21)
  {
    v8 = ASDTBaseLogType(this, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ASDT::Acoustic::Base::valid();
    }

    goto LABEL_5;
  }

  return 1;
}

void sub_24167AA54(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

id ASDT::Acoustic::TrimGainV2::asDictionary(ASDT::Acoustic::TrimGainV2 *this)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  LODWORD(v3) = 1036831949;
  v4 = ASDT::Acoustic::scaledValue(*this, v3);
  [v2 setObject:v4 forKey:kASDTAcousticKeyTrimGainDb];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 2)];
  [v2 setObject:v5 forKey:kASDTAcousticKeyTrimGainDataSourceID];

  v6 = [v2 copy];

  return v6;
}

id ASDT::Acoustic::Data<ASDT::Acoustic::TrimGainV2,(unsigned short)2>::entries(unsigned __int8 *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  if (!a1[3])
  {
    v2 = ((((a1[2] - 6) * 0xAAAAAAAAAAAAAAABLL) >> 64) >> 2);
  }

  v3 = v2;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
  if (v3)
  {
    v6 = 0;
    v7 = (a1 + 4);
    *&v5 = 67109120;
    v13 = v5;
    do
    {
      v9 = ASDT::Acoustic::TrimGainV2::asDictionary(v7);
      if (!v9)
      {
        v10 = ASDTBaseLogType(0, v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = v13;
          v15 = v6;
          _os_log_error_impl(&dword_241659000, v10, OS_LOG_TYPE_ERROR, "Failed to create SpeakerThieleSmall data entry at index %hhu!", buf, 8u);
        }
      }

      [v4 addObject:{v9, v13}];

      ++v6;
      v7 = (v7 + 6);
    }

    while (v3 != v6);
  }

  v11 = [v4 copy];

  return v11;
}

void sub_24167AF60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_24167B4B0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_24167BBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

ASDT::Exclaves::Sensor *ASDT::Exclaves::Sensor::Sensor(ASDT::Exclaves::Sensor *this, const char *a2)
{
  *this = &unk_28534DAB8;
  *(this + 2) = 0;
  v3 = (this + 8);
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = "";
  }

  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(this + 39) = v5;
  v7 = this + 16;
  if (v5)
  {
    memmove(v7, v4, v5);
  }

  v7[v6] = 0;
  *(this + 7) = 850045863;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  v8 = *(this + 39);
  if (v8 < 0)
  {
    v8 = *(this + 3);
    if (!v8)
    {
      return this;
    }

    v9 = *(this + 2);
  }

  else
  {
    if (!*(this + 39))
    {
      return this;
    }

    v9 = this + 16;
  }

  v10 = v9 - 1;
  do
  {
    if (!v8)
    {
      v12 = 0;
      goto LABEL_22;
    }

    v11 = v10[v8--];
  }

  while (v11 != 46);
  if (v8 == -2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8 + 1;
  }

LABEL_22:
  std::string::basic_string(&__p, (this + 16), v12, 0xFFFFFFFFFFFFFFFFLL, &v26);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  *__dst = 0;
  v14 = strlcpy(__dst, p_p, 9uLL);
  v25 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(this + 5) = *__dst;
  v16 = asdt_exclaves_available(v14, v15);
  if (v16)
  {
    v18 = exclaves_sensor_create();
    if (v18 || !*v3)
    {
      v20 = ASDTBaseLogType(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        ASDT::Exclaves::Sensor::Sensor();
      }

      *v3 = 0;
    }
  }

  else
  {
    v21 = ASDTBaseLogType(v16, v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      ASDT::Exclaves::Sensor::Sensor(v21);
    }
  }

  return this;
}

void sub_24167C56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::mutex::~mutex(v16);
  if (*(v14 + 39) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(a1);
}

void ASDT::Exclaves::Sensor::~Sensor(ASDT::Exclaves::Sensor *this)
{
  *this = &unk_28534DAB8;
  v2 = *(this + 2);
  if (v2)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], v2);
  }

  std::mutex::~mutex((this + 56));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  ASDT::Exclaves::Sensor::~Sensor(this);

  JUMPOUT(0x245CEC850);
}

uint64_t ASDT::Exclaves::Sensor::Start(uint64_t a1, _DWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 56));
  if (*(a1 + 8))
  {
    v4 = *(a1 + 48);
    if (v4 < 1)
    {
      v6 = exclaves_sensor_start();
      Status = v6;
      if (v6)
      {
        *a2 = 0;
        v8 = ASDTBaseLogType(v6, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = (a1 + 16);
          if (*(a1 + 39) < 0)
          {
            v9 = *v9;
          }

          *buf = 136315650;
          v13 = v9;
          v14 = 1024;
          v15 = 1;
          v16 = 1024;
          v17 = Status;
          _os_log_error_impl(&dword_241659000, v8, OS_LOG_TYPE_ERROR, "Sensor::Start: Failed: name: %s, status: %u, ret: %x", buf, 0x18u);
        }
      }

      else
      {
        *(a1 + 48) = 1;
        v10 = (a1 + 16);
        if (*(a1 + 39) < 0)
        {
          v10 = *v10;
        }

        Status = ASDT::Exclaves::Sensor::ConvertStatus(1, a2, v10);
      }

      kdebug_trace();
    }

    else
    {
      *(a1 + 48) = v4 + 1;
      Status = ASDT::Exclaves::Sensor::DoGetStatus(a1, a2);
    }
  }

  else
  {
    *a2 = 0;
    Status = 29;
  }

  std::mutex::unlock((a1 + 56));
  return Status;
}

uint64_t ASDT::Exclaves::Sensor::DoGetStatus(uint64_t a1, _DWORD *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = exclaves_sensor_status();
  if (v4)
  {
    v6 = v4;
    *a2 = 0;
    v7 = ASDTBaseLogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315650;
      v12 = v8;
      v13 = 1024;
      v14 = 1;
      v15 = 1024;
      v16 = v6;
      _os_log_error_impl(&dword_241659000, v7, OS_LOG_TYPE_ERROR, "Sensor::GetStatus: Failed: name: %s, status: %u, ret: %x", buf, 0x18u);
    }
  }

  else
  {
    v9 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v9 = *v9;
    }

    v6 = ASDT::Exclaves::Sensor::ConvertStatus(1, a2, v9);
  }

  kdebug_trace();
  return v6;
}

uint64_t ASDT::Exclaves::Sensor::ConvertStatus(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = a1;
  if ((a1 - 1) >= 4)
  {
    v6 = ASDTBaseLogType(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ASDT::Exclaves::Sensor::ConvertStatus();
    }

    v4 = 0;
    result = 18;
  }

  else
  {
    result = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t ASDT::Exclaves::Sensor::Stop(uint64_t a1, _DWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 56));
  if (*(a1 + 8))
  {
    v4 = *(a1 + 48);
    if (v4 == 1)
    {
      v5 = exclaves_sensor_stop();
      Status = v5;
      if (v5)
      {
        *a2 = 0;
        v8 = ASDTBaseLogType(v5, v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = (a1 + 16);
          if (*(a1 + 39) < 0)
          {
            v9 = *v9;
          }

          *buf = 136315650;
          v13 = v9;
          v14 = 1024;
          v15 = 1;
          v16 = 1024;
          v17 = Status;
          _os_log_error_impl(&dword_241659000, v8, OS_LOG_TYPE_ERROR, "Sensor::Stop: Failed: name: %s, status: %u, ret: %x", buf, 0x18u);
        }
      }

      else
      {
        *(a1 + 48) = 0;
        v10 = (a1 + 16);
        if (*(a1 + 39) < 0)
        {
          v10 = *v10;
        }

        Status = ASDT::Exclaves::Sensor::ConvertStatus(1, a2, v10);
      }

      kdebug_trace();
    }

    else
    {
      if (v4 >= 2)
      {
        *(a1 + 48) = v4 - 1;
      }

      Status = ASDT::Exclaves::Sensor::DoGetStatus(a1, a2);
    }
  }

  else
  {
    *a2 = 0;
    Status = 29;
  }

  std::mutex::unlock((a1 + 56));
  return Status;
}

uint64_t ASDT::Exclaves::Sensor::GetStatus(uint64_t a1, _DWORD *a2)
{
  std::mutex::lock((a1 + 56));
  if (*(a1 + 8))
  {
    Status = ASDT::Exclaves::Sensor::DoGetStatus(a1, a2);
  }

  else
  {
    Status = 29;
  }

  std::mutex::unlock((a1 + 56));
  return Status;
}

const char *ASDT::Exclaves::Sensor::StatusString(int a1)
{
  if ((a1 - 1) > 3)
  {
    return "Undefined";
  }

  else
  {
    return off_278CE6560[a1 - 1];
  }
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

__n128 ASDT::IOAudio2::Helpers::AudioStreamBasicDescriptionToIOAudio2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *a2 = vcvtd_n_u64_f64(*a1 - floor(*a1), 0x20uLL) + (vcvtmd_u64_f64(*a1) << 32);
  result = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v2;
  return result;
}

__n128 ASDT::IOAudio2::Helpers::AudioStreamBasicDescriptionFromIOAudio2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *a2 = vcvtd_n_f64_u64(*a1, 0x20uLL) + (*a1 >> 32);
  result = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t ASDTTime::ASDTTime(uint64_t a1, __int128 a2, uint64_t a3)
{
  v3 = a3;
  v4 = WORD4(a2);
  v5 = a2;
  *&a2 = a2 >> 48;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 18) = v3;
  *(a1 + 20) = 0;
  return a1;
}

{
  v3 = a3;
  v4 = WORD4(a2);
  v5 = a2;
  *&a2 = a2 >> 48;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 18) = v3;
  *(a1 + 20) = 0;
  return a1;
}

void ASDTTime::ASDTTime(uint64_t a1, ASDTTime *this, __int16 a3, unsigned __int16 *a4)
{
  *(a1 + 8) = 0;
  *a1 = this;
  *(a1 + 16) = 0;
  *(a1 + 18) = a3;
  *(a1 + 20) = 0;
}

{
  *(a1 + 8) = 0;
  *a1 = this;
  *(a1 + 16) = 0;
  *(a1 + 18) = a3;
  *(a1 + 20) = 0;
}

uint64_t anonymous namespace::NsecToHost(uint64_t this, void *a2, uint64_t *a3, unsigned __int16 *a4)
{
  {
  }

  result = __divti3();
  *(&v8 + 1) = v7;
  *&v8 = result;
  *a2 = v8 >> 16;
  *a3 = result;
  return result;
}

uint64_t ASDTTime::operator+=(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4)
{
  v5 = *a2;
  v6 = a1 + 1;
  v7 = *a1 + v5;
  *a1 = v7;
}

uint64_t ASDTTime::addTicks(ASDTTime *this, __int128 a2, uint64_t a3)
{
  v4 = *(a2 + 8) >> 48;
  hostTicks = this->hostTicks;
  hostFrac = this->hostFrac;
  v7 = hostTicks >> 48;
  v8 = *(a2 + 16) | (*(a2 + 8) << 16);
  v9 = __CFADD__(v8, hostFrac);
  v10 = v8 + hostFrac;
  if (v9)
  {
    ++v4;
  }

  *&a2 = (__PAIR128__(v4, v10) + __PAIR128__(v7, hostTicks << 16)) >> 64;
  this->hostTicks = (__PAIR128__(v4, v10) + __PAIR128__(v7, hostTicks << 16)) >> 16;
  this->hostFrac = v10;
  this->nsec = result;
  return result;
}

uint64_t anonymous namespace::NsecFromLargeHost(unint64_t this, __int128 a2, uint64_t a3)
{
  {
  }

  v3 = __divti3();
  if (__CFADD__(v3, (v4 >> 63) >> 48))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v4;
  }

  *(&v7 + 1) = v5;
  *&v7 = v3 + ((v4 >> 63) >> 48);
  return v7 >> 16;
}

uint64_t ASDTTime::operator-=(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4)
{
  v5 = *a2;
  v6 = a1 + 1;
  v7 = *a1 - v5;
  *a1 = v7;
}

uint64_t ASDTTime::subTicks(ASDTTime *this, __int128 a2, uint64_t a3)
{
  v4 = this->hostFrac - __PAIR128__(*(a2 + 8) >> 48, *(a2 + 16) | (*(a2 + 8) << 16));
  *&a2 = (v4 + this->hostTicks * 0x10000) >> 64;
  v5 = v4 + (this->hostTicks << 16);
  this->hostTicks = __PAIR128__(a2, v5) >> 16;
  this->hostFrac = v4;
  this->nsec = result;
  return result;
}

uint64_t ASDTTime::operator*=(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4)
{
  v5 = *a2;
  v6 = a1 + 1;
  v7 = *a1 * v5;
  *a1 = v7;
}

uint64_t ASDTTime::mulTicks(ASDTTime *this, __int128 a2, uint64_t a3)
{
  v4 = this->hostFrac | (this->hostTicks << 16);
  v5 = (((this->hostTicks * 0x10000) | this->hostFrac) * a2) >> 64;
  v7 = ((this->hostTicks * 0x10000) | this->hostFrac) * a2;
  v6 = v4 * a2;
  this->hostTicks = v7 >> 16;
  this->hostFrac = v4 * a2;
  *&a2 = v5;
  this->nsec = result;
  return result;
}

uint64_t ASDTTime::operator/=(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4)
{
  v5 = *a2;
  v6 = a1 + 1;
  v7 = *a1 / v5;
  *a1 = v7;
}

uint64_t ASDTTime::divTicks(ASDTTime *this, uint64_t a2)
{
  v3 = __divti3();
  *(&v4 + 1) = v7;
  *&v4 = v3;
  this->hostTicks = v4 >> 16;
  this->hostFrac = v3;
  this->nsec = result;
  return result;
}

uint64_t *ASDTTime::machAbsoluteTime@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v2 = mach_absolute_time();
  *&v5 = v2 >> 48;
  *a1 = result;
  a1[1] = v2;
  a1[2] = 0x10000;
  return result;
}

uint64_t ASDTTime::future@<X0>(ASDTTime *this@<X0>, uint64_t *a2@<X8>)
{
  v8 = this;
  v3 = mach_absolute_time();
  *&v9 = v3 >> 48;
  a2[1] = v3;
  a2[2] = 0x10000;
  return ASDTTime::operator+=<unsigned long long>(a2, &v8, v5, v6);
}

uint64_t ASDTTime::futureUSecs@<X0>(ASDTTime *this@<X0>, uint64_t *a2@<X8>)
{
  return ASDTTime::future((this * 1000.0), a2);
}

{
  return ASDTTime::future(((this & ~(this >> 63)) * 1000.0), a2);
}

{
  return ASDTTime::future((1000 * (this & ~(this >> 31))), a2);
}

uint64_t ASDTTime::futureUSecs@<X0>(ASDTTime *this@<X0>, double a2@<D0>, uint64_t *a3@<X8>)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  return ASDTTime::future((a2 * 1000.0), a3);
}

uint64_t ASDTTime::futureSecs@<X0>(ASDTTime *this@<X0>, uint64_t *a2@<X8>)
{
  return ASDTTime::future((1000000000 * this), a2);
}

{
  return ASDTTime::future((1000000000 * (this & ~(this >> 63))), a2);
}

{
  return ASDTTime::future((1000000000 * this), a2);
}

uint64_t *ASDTTime::futureSecs@<X0>(uint64_t *__return_ptr a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  return ASDTTime::future((a2 * 1000000000.0), a1);
}

uint64_t ASDTTime::operator+=<unsigned long long>(void *a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4)
{
  v8 = *a2;
  v6 = *a1 + v8;
  *a1 = v6;
}

double ASDT::VolumeCurve::VolumeCurve(ASDT::VolumeCurve *this)
{
  *this = 0;
  *(this + 3) = 0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 32) = 1;
  *(this + 9) = 5;
  result = 0.00781250186;
  *(this + 5) = 0x3F80000040000000;
  return result;
}

{
  *this = 0;
  *(this + 3) = 0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 32) = 1;
  *(this + 9) = 5;
  result = 0.00781250186;
  *(this + 5) = 0x3F80000040000000;
  return result;
}

uint64_t ASDT::VolumeCurve::GetMinimumRaw(ASDT::VolumeCurve *this)
{
  if (*(this + 3))
  {
    return *(*(this + 1) + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t ASDT::VolumeCurve::GetMaximumRaw(ASDT::VolumeCurve *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v3 = *(this + 1);
  std::__advance[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__tree_node<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,void *> *,long>>>(&v3, v1 - 1);
  return *(v3 + 8);
}

double ASDT::VolumeCurve::GetMinimumDB(ASDT::VolumeCurve *this)
{
  if (!*(this + 3))
  {
    return 0.0;
  }

  LODWORD(result) = *(*(this + 1) + 36);
  return result;
}

double ASDT::VolumeCurve::GetMaximumDB(ASDT::VolumeCurve *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0.0;
  }

  v3 = *(this + 1);
  std::__advance[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__tree_node<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,void *> *,long>>>(&v3, v1 - 1);
  LODWORD(result) = *(v3 + 10);
  return result;
}

uint64_t ASDT::VolumeCurve::SetTransferFunction(uint64_t this, unsigned int a2)
{
  *(this + 36) = a2;
  if (a2 > 0xF)
  {
    v4 = 1.0;
    v3 = 2.0;
    v2 = 1;
  }

  else
  {
    v2 = byte_2416A4B60[a2];
    v3 = flt_2416A4B70[a2];
    v4 = flt_2416A4BB0[a2];
  }

  *(this + 32) = v2;
  *(this + 40) = v3;
  *(this + 44) = v4;
  return this;
}

void ASDT::VolumeCurve::AddRange(ASDT::VolumeCurve *this, uint64_t a2, int a3, float a4, float a5)
{
  v7 = *(this + 1);
  v5 = this + 8;
  v6 = v7;
  if (v7 == v5 + 8)
  {
    goto LABEL_25;
  }

  do
  {
    v8 = *(v6 + 7);
    v9 = *(v6 + 8) > a2 && v8 < a3;
    v10 = v9;
    if (v9 || v8 <= a2)
    {
      v12 = v6;
    }

    else
    {
      v11 = *(v6 + 1);
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
          v12 = *(v6 + 2);
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }
    }

    if (v12 == v5 + 8)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      break;
    }

    v6 = v12;
  }

  while (v8 > a2);
  if ((v10 & 1) == 0)
  {
LABEL_25:
    v16 = __PAIR64__(a3, a2);
    v17 = a4;
    v18 = a5;
    std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::__emplace_unique_key_args<ASDT::RawPoint,std::pair<ASDT::RawPoint const,ASDT::DBPoint>>(v5, &v16, &v16);
  }

  else
  {
    v15 = ASDTBaseLogType(v5, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      ASDT::VolumeCurve::AddRange(v15);
    }
  }
}

void ASDT::VolumeCurve::ResetRange(ASDT::VolumeCurve *this)
{
  v1 = (this + 16);
  std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::destroy(this + 8, *(this + 2));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t ASDT::VolumeCurve::CheckForContinuity(ASDT::VolumeCurve *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 == this + 16)
  {
    return 1;
  }

  v3 = *(v1 + 7);
  v4 = *(v1 + 9);
  do
  {
    v5 = *(v1 + 1);
    v6 = v1;
    if (v5)
    {
      do
      {
        v7 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v7 = *(v6 + 2);
        v10 = *v7 == v6;
        v6 = v7;
      }

      while (!v10);
    }

    v8 = *(v1 + 7);
    v9 = *(v1 + 9);
    v10 = v4 == v9 && v3 == v8;
    result = v10;
    if (v7 == v2)
    {
      break;
    }

    v3 = v3 - v8 + *(v1 + 8);
    v4 = v4 + (*(v1 + 10) - v9);
    v1 = v7;
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t ASDT::VolumeCurve::ConvertDBToRaw(ASDT::VolumeCurve *this, float a2)
{
  if (*(this + 3))
  {
    v4 = *(*(this + 1) + 36);
  }

  else
  {
    v4 = 0.0;
  }

  MaximumDB = ASDT::VolumeCurve::GetMaximumDB(this);
  if (v4 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if (v6 <= *&MaximumDB)
  {
    *&MaximumDB = v6;
  }

  v7 = *(this + 1);
  result = *(v7 + 7);
  if (v7 != (this + 16))
  {
    do
    {
      v9 = *(v7 + 8) - *(v7 + 7);
      v10 = *(v7 + 10);
      if (*&MaximumDB <= v10)
      {
        v9 = llroundf((*&MaximumDB - *(v7 + 9)) / ((v10 - *(v7 + 9)) / v9));
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      result = (v9 + result);
      v13 = *&MaximumDB <= v10 || v12 == (this + 16);
      v7 = v12;
    }

    while (!v13);
  }

  return result;
}

uint64_t ASDT::VolumeCurve::ConvertRawToDB(ASDT::VolumeCurve *this, int a2)
{
  if (*(this + 3))
  {
    v4 = *(*(this + 1) + 28);
  }

  else
  {
    v4 = 0;
  }

  result = ASDT::VolumeCurve::GetMaximumRaw(this);
  if (v4 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if (v6 >= result)
  {
    v6 = result;
  }

  v7 = v6 - v4;
  v8 = *(this + 1);
  v9 = v8[9];
  v10 = (this + 16);
  v11 = v7 < 1 || v8 == v10;
  if (!v11)
  {
    do
    {
      v12 = *(v8 + 8) - *(v8 + 7);
      if (v7 >= v12)
      {
        v13 = *(v8 + 8) - *(v8 + 7);
      }

      else
      {
        v13 = v7;
      }

      v14 = *(v8 + 1);
      v15 = v8;
      if (v14)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = *(v15 + 2);
          v11 = *v16 == v15;
          v15 = v16;
        }

        while (!v11);
      }

      v9 = v9 + (v13 * ((v8[10] - v8[9]) / v12));
      v7 -= v13;
      if (v7 < 1)
      {
        break;
      }

      v8 = v16;
    }

    while (v16 != v10);
  }

  return result;
}

float ASDT::VolumeCurve::ConvertRawToScalar(ASDT::VolumeCurve *this, int a2)
{
  if (*(this + 3))
  {
    v4 = *(*(this + 1) + 28);
  }

  else
  {
    v4 = 0;
  }

  MaximumRaw = ASDT::VolumeCurve::GetMaximumRaw(this);
  if (v4 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if (v6 >= MaximumRaw)
  {
    v6 = MaximumRaw;
  }

  if (*(this + 3))
  {
    v7 = *(*(this + 1) + 36);
  }

  else
  {
    v7 = 0.0;
  }

  v8 = (v6 - v4) / (MaximumRaw - v4);
  MaximumDB = ASDT::VolumeCurve::GetMaximumDB(this);
  if (*(this + 32) != 1 || (*&MaximumDB - v7) <= 30.0)
  {
    return v8;
  }

  v10 = *(this + 10) / *(this + 11);

  return powf(v8, v10);
}

uint64_t ASDT::VolumeCurve::GetIsApplyingTransferFunction(ASDT::VolumeCurve *this)
{
  if (*(this + 3))
  {
    v2 = *(*(this + 1) + 36);
  }

  else
  {
    v2 = 0.0;
  }

  MaximumDB = ASDT::VolumeCurve::GetMaximumDB(this);
  if ((*&MaximumDB - v2) > 30.0)
  {
    return *(this + 32);
  }

  else
  {
    return 0;
  }
}

float ASDT::VolumeCurve::ConvertDBToScalar(ASDT::VolumeCurve *this, float a2)
{
  v3 = ASDT::VolumeCurve::ConvertDBToRaw(this, a2);

  return ASDT::VolumeCurve::ConvertRawToScalar(this, v3);
}

uint64_t ASDT::VolumeCurve::ConvertScalarToRaw(ASDT::VolumeCurve *this, float a2)
{
  v3 = 0.0;
  if (*(this + 3))
  {
    v4 = *(*(this + 1) + 28);
  }

  else
  {
    v4 = 0;
  }

  v5 = fmaxf(a2, 0.0);
  MaximumRaw = ASDT::VolumeCurve::GetMaximumRaw(this);
  if (*(this + 3))
  {
    v3 = *(*(this + 1) + 36);
  }

  v7 = fminf(v5, 1.0);
  MaximumDB = ASDT::VolumeCurve::GetMaximumDB(this);
  v9 = *&MaximumDB - v3;
  if (*(this + 32) == 1 && v9 > 30.0)
  {
    v7 = powf(v7, *(this + 11) / *(this + 10));
  }

  return v4 + llroundf(v7 * (MaximumRaw - v4));
}

uint64_t ASDT::VolumeCurve::ConvertScalarToDB(ASDT::VolumeCurve *this, float a2)
{
  v3 = ASDT::VolumeCurve::ConvertScalarToRaw(this, a2);

  return ASDT::VolumeCurve::ConvertRawToDB(this, v3);
}

void **std::__advance[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__tree_node<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,void *> *,long>>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
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
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

uint64_t *std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::__emplace_unique_key_args<ASDT::RawPoint,std::pair<ASDT::RawPoint const,ASDT::DBPoint>>(uint64_t a1, int *a2, void *a3)
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

void std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t asdt_exclaves_available(uint64_t a1, uint64_t a2)
{
  if (asdt_exclaves_available_onceToken != -1)
  {
    asdt_exclaves_available_cold_1();
  }

  return asdt_exclaves_available_exclaves_available;
}

uint64_t __asdt_exclaves_available_block_invoke()
{
  result = MGGetBoolAnswer();
  asdt_exclaves_available_exclaves_available = result;
  return result;
}

uint64_t ASDT::Acoustic::scaledValue(ASDT::Acoustic *this, double a2)
{
  *&a2 = this * *&a2;
  return [MEMORY[0x277CCABB0] numberWithFloat:a2];
}

{
  *&a2 = this * *&a2;
  return [MEMORY[0x277CCABB0] numberWithFloat:a2];
}

void ASDTIOSerivceWillTerminateHandler(void *a1, io_object_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = IOObjectRetain(a2);
    if (v4)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v17 = std::system_category();
      MEMORY[0x245CEC750](exception, v4, v17, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    v31 = a2;
    v28 = a2;
    v5 = IOObjectRetain(a2);
    if (v5)
    {
      v18 = __cxa_allocate_exception(0x20uLL);
      v19 = std::system_category();
      MEMORY[0x245CEC750](v18, v5, v19, "Error on Retain");
      __cxa_throw(v18, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    iterator = a2;
    v6 = IOObjectRetain(a2);
    if (v6)
    {
      v20 = __cxa_allocate_exception(0x20uLL);
      v21 = std::system_category();
      MEMORY[0x245CEC750](v20, v6, v21, "Error on Retain");
      __cxa_throw(v20, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    object = IOIteratorNext(iterator);
    IOObjectRelease(a2);
    v7 = object;
    v27 = object;
    if (object)
    {
      v8 = IOObjectRetain(object);
      if (v8)
      {
        v22 = __cxa_allocate_exception(0x20uLL);
        v23 = std::system_category();
        MEMORY[0x245CEC750](v22, v8, v23, "Error on Retain");
        __cxa_throw(v22, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }

      do
      {
        if (IOObjectConformsTo(v7, [v3 ioServiceClassNameCStr]))
        {
          v9 = [v3 delegate];
          ASDT::IOUserClient::CopyProperties(v7, &cf);
          v10 = cf;
          [v9 ioServiceWillTerminate:v7 withProperties:v10];

          if (cf)
          {
            CFRelease(cf);
          }
        }

        applesauce::iokit::details::io_services_iterator::operator++(&v24, &iterator);
        if (v25)
        {
          IOObjectRelease(v25);
        }

        if (v24)
        {
          IOObjectRelease(v24);
        }

        v11 = object;
        if (object)
        {
          v12 = IOObjectRetain(object);
          if (v12)
          {
            v13 = v12;
            v14 = __cxa_allocate_exception(0x20uLL);
            v15 = std::system_category();
            MEMORY[0x245CEC750](v14, v13, v15, "Error on Retain");
            __cxa_throw(v14, MEMORY[0x277D82718], MEMORY[0x277D82650]);
          }
        }

        v27 = v11;
        IOObjectRelease(v7);
        v7 = v11;
      }

      while (v11);
    }

    if (object)
    {
      IOObjectRelease(object);
    }

    if (iterator)
    {
      IOObjectRelease(iterator);
    }

    IOObjectRelease(a2);
  }
}

void sub_24167EBF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, __int16 a15, char a16, char a17, __int16 a18, char a19, char a20, int a21, io_object_t a22)
{
  __cxa_free_exception(v23);
  applesauce::iokit::details::io_services_iterator::~io_services_iterator(&a19);
  applesauce::iokit::io_object_holder::~io_object_holder(&a22);

  _Unwind_Resume(a1);
}

void ASDTIOServiceMatchingHandler(void *a1, io_object_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = IOObjectRetain(a2);
    if (v4)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v17 = std::system_category();
      MEMORY[0x245CEC750](exception, v4, v17, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    v31 = a2;
    v28 = a2;
    v5 = IOObjectRetain(a2);
    if (v5)
    {
      v18 = __cxa_allocate_exception(0x20uLL);
      v19 = std::system_category();
      MEMORY[0x245CEC750](v18, v5, v19, "Error on Retain");
      __cxa_throw(v18, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    iterator = a2;
    v6 = IOObjectRetain(a2);
    if (v6)
    {
      v20 = __cxa_allocate_exception(0x20uLL);
      v21 = std::system_category();
      MEMORY[0x245CEC750](v20, v6, v21, "Error on Retain");
      __cxa_throw(v20, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    object = IOIteratorNext(iterator);
    IOObjectRelease(a2);
    v7 = object;
    v27 = object;
    if (object)
    {
      v8 = IOObjectRetain(object);
      if (v8)
      {
        v22 = __cxa_allocate_exception(0x20uLL);
        v23 = std::system_category();
        MEMORY[0x245CEC750](v22, v8, v23, "Error on Retain");
        __cxa_throw(v22, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }

      do
      {
        if (IOObjectConformsTo(v7, [v3 ioServiceClassNameCStr]))
        {
          v9 = [v3 delegate];
          ASDT::IOUserClient::CopyProperties(v7, &cf);
          v10 = cf;
          [v9 matchedIOService:v7 withProperties:v10];

          if (cf)
          {
            CFRelease(cf);
          }
        }

        applesauce::iokit::details::io_services_iterator::operator++(&v24, &iterator);
        if (v25)
        {
          IOObjectRelease(v25);
        }

        if (v24)
        {
          IOObjectRelease(v24);
        }

        v11 = object;
        if (object)
        {
          v12 = IOObjectRetain(object);
          if (v12)
          {
            v13 = v12;
            v14 = __cxa_allocate_exception(0x20uLL);
            v15 = std::system_category();
            MEMORY[0x245CEC750](v14, v13, v15, "Error on Retain");
            __cxa_throw(v14, MEMORY[0x277D82718], MEMORY[0x277D82650]);
          }
        }

        v27 = v11;
        IOObjectRelease(v7);
        v7 = v11;
      }

      while (v11);
    }

    if (object)
    {
      IOObjectRelease(object);
    }

    if (iterator)
    {
      IOObjectRelease(iterator);
    }

    IOObjectRelease(a2);
  }
}

void sub_24167EFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, __int16 a15, char a16, char a17, __int16 a18, char a19, char a20, int a21, io_object_t a22)
{
  __cxa_free_exception(v23);
  applesauce::iokit::details::io_services_iterator::~io_services_iterator(&a19);
  applesauce::iokit::io_object_holder::~io_object_holder(&a22);

  _Unwind_Resume(a1);
}

void sub_24167F14C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ASDTIOServiceMatcher;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void applesauce::iokit::io_object_holder::~io_object_holder(io_object_t *this)
{
  v1 = *this;
  if (v1)
  {
    IOObjectRelease(v1);
  }
}

uint64_t *applesauce::iokit::details::io_services_iterator::operator++@<X0>(applesauce::iokit::details::io_services_iterator *__return_ptr a1@<X8>, io_object_t *a2@<X0>)
{
  applesauce::iokit::details::io_services_iterator::io_services_iterator(a1, a2);
  if (!a2[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "io_services_iterator exceeding size");
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_278CE6058, MEMORY[0x277D825F8]);
  }

  v3 = IOIteratorNext(*a2);
  result = a2[1];
  a2[1] = v3;
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

void sub_24167F49C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::iokit::details::io_services_iterator::~io_services_iterator(v1);
  _Unwind_Resume(a1);
}

void applesauce::iokit::details::io_services_iterator::~io_services_iterator(applesauce::iokit::details::io_services_iterator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  if (*this)
  {
    IOObjectRelease(*this);
  }
}

applesauce::iokit::details::io_services_iterator *applesauce::iokit::details::io_services_iterator::io_services_iterator(applesauce::iokit::details::io_services_iterator *this, io_object_t *a2)
{
  v4 = *a2;
  *this = *a2;
  if (v4)
  {
    v5 = IOObjectRetain(v4);
    if (v5)
    {
      v9 = v5;
      exception = __cxa_allocate_exception(0x20uLL);
      v11 = std::system_category();
      MEMORY[0x245CEC750](exception, v9, v11, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }

  v6 = a2[1];
  *(this + 1) = v6;
  if (v6)
  {
    v7 = IOObjectRetain(v6);
    if (v7)
    {
      v12 = __cxa_allocate_exception(0x20uLL);
      v13 = std::system_category();
      MEMORY[0x245CEC750](v12, v7, v13, "Error on Retain");
      __cxa_throw(v12, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }

  return this;
}

void sub_24167F5FC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::iokit::io_object_holder::~io_object_holder(v1);
  _Unwind_Resume(a1);
}

void sub_24167F85C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_24167FDE4(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_241680DF0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_241681C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241681D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2416820C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

double ASDT::IOConnect::Object::Object(ASDT::IOConnect::Object *this, int a2, int a3)
{
  *this = &unk_28534DB68;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 19) = a2;
  *(this + 20) = 0;
  *(this + 21) = a3;
  *(this + 88) = 1;
  return result;
}

{
  *this = &unk_28534DB68;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 19) = a2;
  *(this + 20) = 0;
  *(this + 21) = a3;
  *(this + 88) = 1;
  return result;
}

void ASDT::IOConnect::Object::~Object(ASDT::IOConnect::Object *this)
{
  *this = &unk_28534DB68;
  v2 = *(this + 20);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 20) = 0;
  }

  std::mutex::~mutex((this + 8));
}

{
  ASDT::IOConnect::Object::~Object(this);

  JUMPOUT(0x245CEC850);
}

uint64_t ASDT::IOConnect::Object::Close(ASDT::IOConnect::Object *this)
{
  result = *(this + 20);
  if (result)
  {
    result = IOServiceClose(result);
    *(this + 20) = 0;
  }

  return result;
}

void ASDT::IOConnect::Object::Enable(ASDT::IOConnect::Object *this, char a2)
{
  std::mutex::lock((this + 8));
  *(this + 88) = a2;

  std::mutex::unlock((this + 8));
}

uint64_t ASDT::IOConnect::Object::Retain(ASDT::IOConnect::Object *this)
{
  v25 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 8));
  if (*(this + 88) != 1 || !*(this + 19))
  {
    v3 = 0;
    goto LABEL_6;
  }

  v2 = (this + 80);
  v3 = *(this + 20);
  if (v3)
  {
    goto LABEL_4;
  }

  v5 = -15;
  v6 = MEMORY[0x277D85F48];
  while (1)
  {
    v7 = IOServiceOpen(*(this + 19), *v6, *(this + 21), this + 20);
    v9 = v7;
    if (!v5 || v7 != -536870201)
    {
      break;
    }

    v10 = ASDTBaseLogType(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 21);
      *buf = 67110400;
      v14 = v11;
      v15 = 1024;
      v16 = -536870201;
      v17 = 1024;
      v18 = 32;
      v19 = 1024;
      v20 = 32;
      v21 = 1024;
      v22 = 32;
      v23 = 1024;
      v24 = 32;
      _os_log_impl(&dword_241659000, v10, OS_LOG_TYPE_DEFAULT, "IOConnect::Retain: IOServiceOpen(%u) failed: %x (%c%c%c%c): Retrying...", buf, 0x26u);
    }

    ++v5;
    usleep(0x3D090u);
  }

  if (!v7)
  {
    v3 = *v2;
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_4:
    ++*(this + 18);
    goto LABEL_6;
  }

  v12 = ASDTBaseLogType(v7, v8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    ASDT::IOConnect::Object::Retain(this + 21, v9, v12);
  }

  v3 = 0;
  *v2 = 0;
LABEL_6:
  std::mutex::unlock((this + 8));
  return v3;
}

void ASDT::IOConnect::Object::Release(ASDT::IOConnect::Object *this)
{
  std::mutex::lock((this + 8));
  v4 = *(this + 18);
  if (v4)
  {
    v5 = v4 - 1;
    *(this + 18) = v5;
    if (!v5)
    {
      v7 = (this + 80);
      v6 = *(this + 20);
      if (v6)
      {
LABEL_8:
        IOServiceClose(v6);
        *v7 = 0;
      }
    }
  }

  else
  {
    v8 = ASDTBaseLogType(v2, v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ASDT::IOConnect::Object::Release(this + 18, v8);
    }

    v7 = (this + 80);
    v6 = *(this + 20);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  std::mutex::unlock((this + 8));
}

void ASDT::IOConnect::Object::Terminate(ASDT::IOConnect::Object *this)
{
  std::mutex::lock((this + 8));
  *(this + 19) = 0;

  std::mutex::unlock((this + 8));
}

BOOL ASDT::IOConnect::Object::IsValid(ASDT::IOConnect::Object *this)
{
  std::mutex::lock((this + 8));
  v2 = *(this + 19) != 0;
  std::mutex::unlock((this + 8));
  return v2;
}

uint64_t ASDT::IOConnect::Object::Get(ASDT::IOConnect::Object *this)
{
  std::mutex::lock((this + 8));
  if (*(this + 19))
  {
    v2 = *(this + 20);
  }

  else
  {
    v2 = 0;
  }

  std::mutex::unlock((this + 8));
  return v2;
}

ASDT::IOConnect *ASDT::IOConnect::IOConnect(ASDT::IOConnect *this, int a2, int a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 850045863;
  *this = &unk_28534DB88;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  if (a2)
  {
    operator new();
  }

  return this;
}

void sub_24168595C(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

double ASDT::IOConnect::IOConnect(ASDT::IOConnect *this)
{
  *this = &unk_28534DB88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 850045863;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  return result;
}

{
  *this = &unk_28534DB88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 850045863;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  return result;
}

ASDT::IOConnect *ASDT::IOConnect::IOConnect(ASDT::IOConnect *this, ASDT::IOConnect *a2, char a3)
{
  *(this + 3) = 850045863;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28534DB88;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  std::mutex::lock((a2 + 24));
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 2);
  *(this + 1) = v7;
  *(this + 2) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (ASDT::IOConnect::IsValid(this) && ((a3 & 1) != 0 || *(a2 + 88) == 1))
  {
    *(this + 88) = 1;
    ASDT::IOConnect::Object::Retain(*(this + 1));
  }

  std::mutex::unlock((a2 + 24));
  return this;
}

void sub_241685ACC(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

BOOL ASDT::IOConnect::IsValid(ASDT::IOConnect *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 1);
  if (v2)
  {
    std::mutex::lock((v2 + 8));
    v3 = *(v2 + 76) != 0;
    std::mutex::unlock((v2 + 8));
  }

  else
  {
    v3 = 0;
  }

  std::mutex::unlock((this + 24));
  return v3;
}

uint64_t ASDT::IOConnect::IOConnect(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 850045863;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28534DB88;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  std::mutex::lock((a2 + 24));
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(a1 + 88) = *(a2 + 88);
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a2 + 88) = 0;
  std::mutex::unlock((a2 + 24));
  return a1;
}

void sub_241685C3C(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t ASDT::IOConnect::operator=(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a2 + 24));
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a2 + 24));
  std::mutex::lock((a1 + 24));
  if (*(a1 + 88) == 1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      ASDT::IOConnect::Object::Release(v6);
      *(a1 + 88) = 0;
    }
  }

  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(a2 + 88) == 1)
  {
    *(a1 + 88) = 1;
    ASDT::IOConnect::Object::Retain(*(a1 + 8));
  }

  std::mutex::unlock((a1 + 24));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

{
  std::mutex::lock((a2 + 24));
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = (a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = (a2 + 88);
    v7 = *(a2 + 88);
    v9 = *(a2 + 16);
    *v4 = 0;
    *(a2 + 16) = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    v8 = (a2 + 88);
    v7 = *(a2 + 88);
    *v4 = 0;
    *(a2 + 16) = 0;
  }

  *v8 = 0;
  std::mutex::unlock((a2 + 24));
  std::mutex::lock((a1 + 24));
  if (*(a1 + 88) == 1)
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      ASDT::IOConnect::Object::Release(v10);
      *(a1 + 88) = 0;
    }
  }

  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 16);
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *(a1 + 88) = v7;
  std::mutex::unlock((a1 + 24));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void sub_241685D24(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 24));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void ASDT::IOConnect::DoClose(ASDT::IOConnect *this)
{
  if (*(this + 88) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      ASDT::IOConnect::Object::Release(v2);
      *(this + 88) = 0;
    }
  }
}

void sub_241685E74(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 24));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void ASDT::IOConnect::~IOConnect(ASDT::IOConnect *this)
{
  *this = &unk_28534DB88;
  if (*(this + 88) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      ASDT::IOConnect::Object::Release(v2);
      *(this + 88) = 0;
    }
  }

  std::mutex::~mutex((this + 24));
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  ASDT::IOConnect::~IOConnect(this);

  JUMPOUT(0x245CEC850);
}

uint64_t ASDT::IOConnect::IsOpen(ASDT::IOConnect *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 88);
  std::mutex::unlock((this + 24));
  return v2;
}

uint64_t ASDT::IOConnect::Open(ASDT::IOConnect *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 88) == 1)
    {
      v3 = ASDT::IOConnect::Object::Get(v2);
    }

    else
    {
      v3 = ASDT::IOConnect::Object::Retain(v2);
      *(this + 88) = v3 != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  std::mutex::unlock((this + 24));
  return v3;
}

uint64_t ASDT::IOConnect::Get(ASDT::IOConnect *this)
{
  std::mutex::lock((this + 24));
  if (*(this + 88) == 1 && (v2 = *(this + 1)) != 0)
  {
    v3 = ASDT::IOConnect::Object::Get(v2);
  }

  else
  {
    v3 = 0;
  }

  std::mutex::unlock((this + 24));
  return v3;
}

void ASDT::IOConnect::Close(ASDT::IOConnect *this)
{
  std::mutex::lock((this + 24));
  if (*(this + 88) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      ASDT::IOConnect::Object::Release(v2);
      *(this + 88) = 0;
    }
  }

  std::mutex::unlock((this + 24));
}

void ASDT::IOConnect::Enable(ASDT::IOConnect *this, char a2)
{
  std::mutex::lock((this + 24));
  v4 = *(this + 1);
  if (v4)
  {
    std::mutex::lock((v4 + 8));
    *(v4 + 88) = a2;
    std::mutex::unlock((v4 + 8));
  }

  std::mutex::unlock((this + 24));
}

void ASDT::IOConnect::Terminate(ASDT::IOConnect *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 1);
  if (v2)
  {
    std::mutex::lock((v2 + 8));
    *(v2 + 76) = 0;
    std::mutex::unlock((v2 + 8));
  }

  std::mutex::unlock((this + 24));
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<ASDT::IOConnect::Object>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28534DBC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEC850);
}

void sub_241687690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::mutex::unlock((a12 + a10));

  _Unwind_Resume(a1);
}

void sub_241687A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::mutex::unlock((a12 + a10));

  _Unwind_Resume(a1);
}

void sub_241687FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16)
{
  std::mutex::unlock((a16 + a14));

  _Unwind_Resume(a1);
}

void sub_24168988C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24168B9DC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

std::string *ASDT::Exclaves::AudioBuffer::AudioBuffer(std::string *this, const char *a2, std::string::size_type a3)
{
  v36 = *MEMORY[0x277D85DE8];
  this->__r_.__value_.__r.__words[0] = &unk_28534DC18;
  this->__r_.__value_.__l.__size_ = a3;
  LODWORD(this->__r_.__value_.__r.__words[2]) = 0;
  v6 = &this->__r_.__value_.__r.__words[2];
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&this[1].__r_.__value_.__s + 23) = v8;
  v10 = this + 1;
  if (v8)
  {
    memmove(v10, v7, v8);
  }

  v10->__r_.__value_.__s.__data_[v9] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (!a3)
    {
      return this;
    }

    size = this[1].__r_.__value_.__l.__size_;
    if (!size)
    {
      return this;
    }

    data = this[1].__r_.__value_.__l.__data_;
  }

  else
  {
    if (!a3 || !*(&this[1].__r_.__value_.__s + 23))
    {
      return this;
    }

    data = this + 1;
  }

  v13 = &data[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (!size)
    {
      v15 = 0;
      goto LABEL_24;
    }

    v14 = v13[size--];
  }

  while (v14 != 46);
  if (size == -2)
  {
    v15 = 0;
  }

  else
  {
    v15 = size + 1;
  }

LABEL_24:
  std::string::basic_string(&v32, this + 1, v15, 0xFFFFFFFFFFFFFFFFLL, &v31);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  *__dst = 0;
  v17 = strlcpy(__dst, v16, 9uLL);
  v30 = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  this[2].__r_.__value_.__r.__words[0] = *__dst;
  v19 = a3 / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
  if (v19 >= a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = *MEMORY[0x277D85FA0] + v19;
  }

  v21 = asdt_exclaves_available(v17, v18);
  if (v21)
  {
    v23 = exclaves_audio_buffer_create();
    v25 = v23;
    if (v23 || !*v6)
    {
      v26 = ASDTBaseLogType(v23, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v32.__r_.__value_.__l.__data_) = 136315906;
        *(v32.__r_.__value_.__r.__words + 4) = a2;
        WORD2(v32.__r_.__value_.__r.__words[1]) = 2048;
        *(&v32.__r_.__value_.__r.__words[1] + 6) = v20;
        HIWORD(v32.__r_.__value_.__r.__words[2]) = 2048;
        v33 = a3;
        v34 = 1024;
        v35 = v25;
        _os_log_error_impl(&dword_241659000, v26, OS_LOG_TYPE_ERROR, "AudioBuffer: Failed to create with name: %s, size: %llu (%llu): %x", &v32, 0x26u);
      }

      *v6 = 0;
    }
  }

  else
  {
    v27 = ASDTBaseLogType(v21, v22);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      ASDT::Exclaves::AudioBuffer::AudioBuffer(v27);
    }
  }

  return this;
}

void ASDT::Exclaves::AudioBuffer::~AudioBuffer(ASDT::Exclaves::AudioBuffer *this)
{
  *this = &unk_28534DC18;
  v2 = *(this + 4);
  if (v2)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  ASDT::Exclaves::AudioBuffer::~AudioBuffer(this);

  JUMPOUT(0x245CEC850);
}

uint64_t ASDT::Exclaves::AudioBuffer::Read(uint64_t a1, uint64_t *a2, unint64_t a3, _DWORD *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a2 && a3)
  {
    return 4;
  }

  if (!*(a1 + 16))
  {
    return 29;
  }

  v8 = a2[1];
  v7 = a2[2];
  v9 = *a2;
  if (a3 < 2)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    if (v9 + v7 != a2[3])
    {
      return 4;
    }

    v10 = a2[4];
    v11 = a2[5];
  }

  kdebug_trace();
  v12 = exclaves_audio_buffer_copyout_with_status();
  v6 = v12;
  if (v12)
  {
    v14 = ASDTBaseLogType(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v16 = *v16;
      }

      *buf = 136316674;
      v18 = v16;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      v25 = 2048;
      v26 = v11;
      v27 = 2048;
      v28 = v10;
      v29 = 1024;
      v30 = v6;
      _os_log_error_impl(&dword_241659000, v14, OS_LOG_TYPE_ERROR, "AudioBuffer::Read: Failed to copyout: name: %s, addr: %p, length1: %llu, offset1: %llu, length2: %llu, offset2: %llu, ret: %x", buf, 0x44u);
    }
  }

  ASDT::Exclaves::Sensor::ConvertStatus(2, a4, "com.apple.sensors.mic");
  kdebug_trace();
  return v6;
}

uint64_t ASDT::Exclaves::AudioBuffer::Read(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unint64_t a6, _DWORD *a7)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v7 = a4 * a3;
  v8 = a5 * a4 - a6 % a5 * a4;
  v9 = v8 >= v7;
  v12[0] = a2;
  v12[1] = a6 % a5 * a4;
  if (v8 >= v7)
  {
    v8 = a4 * a3;
  }

  v12[2] = v8;
  v12[3] = a2 + v8;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v12[4] = 0;
  v12[5] = v7 - v8;
  return ASDT::Exclaves::AudioBuffer::Read(a1, v12, v10, a7);
}

uint64_t ASDT::Exclaves::AudioBuffer::Read(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  v6[0] = a2;
  v6[1] = 0;
  v6[2] = (a4 * a3);
  return ASDT::Exclaves::AudioBuffer::Read(a1, v6, 1uLL, a5);
}

std::string *ASDT::Exclaves::InboundBuffer::InboundBuffer(std::string *this, const char *a2, std::string::size_type a3)
{
  v36 = *MEMORY[0x277D85DE8];
  this->__r_.__value_.__r.__words[0] = &unk_28534DC48;
  this->__r_.__value_.__l.__size_ = a3;
  LODWORD(this->__r_.__value_.__r.__words[2]) = 0;
  v6 = &this->__r_.__value_.__r.__words[2];
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&this[1].__r_.__value_.__s + 23) = v8;
  v10 = this + 1;
  if (v8)
  {
    memmove(v10, v7, v8);
  }

  v10->__r_.__value_.__s.__data_[v9] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (!a3)
    {
      return this;
    }

    size = this[1].__r_.__value_.__l.__size_;
    if (!size)
    {
      return this;
    }

    data = this[1].__r_.__value_.__l.__data_;
  }

  else
  {
    if (!a3 || !*(&this[1].__r_.__value_.__s + 23))
    {
      return this;
    }

    data = this + 1;
  }

  v13 = &data[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (!size)
    {
      v15 = 0;
      goto LABEL_24;
    }

    v14 = v13[size--];
  }

  while (v14 != 46);
  if (size == -2)
  {
    v15 = 0;
  }

  else
  {
    v15 = size + 1;
  }

LABEL_24:
  std::string::basic_string(&v32, this + 1, v15, 0xFFFFFFFFFFFFFFFFLL, &v31);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  *__dst = 0;
  v17 = strlcpy(__dst, v16, 9uLL);
  v30 = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  this[2].__r_.__value_.__r.__words[0] = *__dst;
  v19 = a3 / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
  if (v19 >= a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = *MEMORY[0x277D85FA0] + v19;
  }

  v21 = asdt_exclaves_available(v17, v18);
  if (v21)
  {
    v23 = exclaves_inbound_buffer_create();
    v25 = v23;
    if (v23 || !*v6)
    {
      v26 = ASDTBaseLogType(v23, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v32.__r_.__value_.__l.__data_) = 136315906;
        *(v32.__r_.__value_.__r.__words + 4) = a2;
        WORD2(v32.__r_.__value_.__r.__words[1]) = 2048;
        *(&v32.__r_.__value_.__r.__words[1] + 6) = v20;
        HIWORD(v32.__r_.__value_.__r.__words[2]) = 2048;
        v33 = a3;
        v34 = 1024;
        v35 = v25;
        _os_log_error_impl(&dword_241659000, v26, OS_LOG_TYPE_ERROR, "InboundBuffer: Failed to create with name: %s, size: %llu (%llu): %x", &v32, 0x26u);
      }

      *v6 = 0;
    }
  }

  else
  {
    v27 = ASDTBaseLogType(v21, v22);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      ASDT::Exclaves::InboundBuffer::InboundBuffer(v27);
    }
  }

  return this;
}

void ASDT::Exclaves::InboundBuffer::~InboundBuffer(ASDT::Exclaves::InboundBuffer *this)
{
  *this = &unk_28534DC48;
  v2 = *(this + 4);
  if (v2)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  ASDT::Exclaves::InboundBuffer::~InboundBuffer(this);

  JUMPOUT(0x245CEC850);
}

uint64_t ASDT::Exclaves::InboundBuffer::Write(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a2 && a3)
  {
    return 4;
  }

  if (!*(a1 + 16))
  {
    return 29;
  }

  v6 = a2[1];
  v5 = a2[2];
  v7 = *a2;
  if (a3 < 2)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    if (v7 + v5 != a2[3])
    {
      return 4;
    }

    v8 = a2[4];
    v9 = a2[5];
  }

  kdebug_trace();
  v10 = exclaves_inbound_buffer_copyin();
  v4 = v10;
  if (v10)
  {
    v12 = ASDTBaseLogType(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v14 = *v14;
      }

      v15 = 136316674;
      v16 = v14;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v9;
      v25 = 2048;
      v26 = v8;
      v27 = 1024;
      v28 = v4;
      _os_log_error_impl(&dword_241659000, v12, OS_LOG_TYPE_ERROR, "InboundBuffer::Write: Failed to copyin: name: %s, addr: %p, length1: %llu, offset1: %llu, length2: %llu, offset2: %llu, ret: %x", &v15, 0x44u);
    }
  }

  kdebug_trace();
  return v4;
}

uint64_t ASDT::Exclaves::InboundBuffer::Write(ASDT::Exclaves::InboundBuffer *this, const unsigned __int8 *a2, int a3, unsigned int a4, unsigned int a5, unint64_t a6)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v6 = a4 * a3;
  v7 = a5 * a4 - a6 % a5 * a4;
  v8 = v7 >= v6;
  v11[0] = a2;
  v11[1] = a6 % a5 * a4;
  if (v7 >= v6)
  {
    v7 = a4 * a3;
  }

  v11[2] = v7;
  v11[3] = &a2[v7];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v11[4] = 0;
  v11[5] = v6 - v7;
  return ASDT::Exclaves::InboundBuffer::Write(this, v11, v9);
}

uint64_t ASDT::Exclaves::InboundBuffer::Write(ASDT::Exclaves::InboundBuffer *this, const unsigned __int8 *a2, int a3, int a4)
{
  v5[0] = a2;
  v5[1] = 0;
  v5[2] = (a4 * a3);
  return ASDT::Exclaves::InboundBuffer::Write(this, v5, 1uLL);
}

void sub_241690B6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ASDTCondition;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_241690DAC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2416914B8(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

void sub_241692D00(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_24169316C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ASDTAudioDeviceFactory;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void anonymous namespace::GetEntryForPath()
{
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ASDT::IORegistry::GetObjectForKey(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "GetObjectForKey";
  v5 = 2048;
  v6 = a1;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%s: Invalid argumnents: %p %p\n", &v3, 0x20u);
}

void ASDT::IOUserClient::CacheProperties()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOUserClient::DictionarySetValueForKey()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOUserClient::ArraySetValueAtIndex()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOUserClient::SetProperty()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::IOUserClient::ReplaceProperty()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOUserClient::SetInterestNotificationEnabled()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::IOUserClient::InterestNotificationCallback()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ASDT::Ramper::Ramper(_DWORD *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *a1;
  OUTLINED_FUNCTION_0_4(&dword_241659000, a2, a3, "ASDTRamper: Missing format flags: %x", a5, a6, a7, a8, v8);
}

{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *a1;
  OUTLINED_FUNCTION_0_4(&dword_241659000, a2, a3, "ASDTRamper: Bad format flags: %x", a5, a6, a7, a8, v8);
}

{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *a1;
  OUTLINED_FUNCTION_0_4(&dword_241659000, a2, a3, "ASDTRamper: Format must be 32-bit: %u", a5, a6, a7, a8, v8);
}

uint64_t ASDT::Ramper::Ramper(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    MEMORY[0x245CEC830](v4, 0x1000C8052888210);
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {

    JUMPOUT(0x245CEC830);
  }

  return result;
}

void ASDT::IOMemoryMap::Release(unsigned int a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = HIBYTE(a1);
  if ((a1 - 0x20000000) >> 24 >= 0x5F)
  {
    v2 = 32;
  }

  v3 = BYTE2(a1);
  if (BYTE2(a1) - 32 >= 0x5F)
  {
    v3 = 32;
  }

  v4 = BYTE1(a1);
  if (BYTE1(a1) - 32 >= 0x5F)
  {
    v4 = 32;
  }

  v6[0] = 67110144;
  v6[1] = a1;
  v7 = 1024;
  v8 = v2;
  v9 = 1024;
  v10 = v3;
  v11 = 1024;
  v12 = v4;
  if (a1 - 32 >= 0x5F)
  {
    v5 = 32;
  }

  else
  {
    v5 = a1;
  }

  v13 = 1024;
  v14 = v5;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "IOMemoryMap: UnmapMemory() failed: %x (%c%c%c%c)", v6, 0x20u);
}

void ASDT::MachPort::CreatePort()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void ASDT::MachPort::CheckInPort()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void ASDT::MachPort::RetainPort()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void ASDT::MachPort::DestroyPort()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void ASDT::MachPort::ReceiveMessage(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6(&dword_241659000, v1, v2, "MachPort::ReceiveMessage: mach_msg() returned error 0x%X: '%s'", v3, v4, v5, v6);
}

void ASDT::MachPort::SendMessage(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6(&dword_241659000, v1, v2, "MachPort::SendMessage: mach_msg() returned error 0x%X: '%s'", v3, v4, v5, v6);
}

void ASDT::MachPort::SendMessageWithReply(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6(&dword_241659000, v1, v2, "MachPort::SendMessageWithReply: mach_msg() returned error 0x%X: '%s'", v3, v4, v5, v6);
}

void ASDT::MachPort::SetNotificationQueue()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::MachPort::SetNotificationHandler()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDT::Acoustic::Base::valid()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ASDT::IOConnect::Object::Retain(int *a1, unsigned int a2, os_log_t log)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = HIBYTE(a2);
  if ((a2 - 0x20000000) >> 24 >= 0x5F)
  {
    v4 = 32;
  }

  v5 = BYTE2(a2);
  if (BYTE2(a2) - 32 >= 0x5F)
  {
    v5 = 32;
  }

  v8[0] = 67110400;
  v8[1] = v3;
  v6 = BYTE1(a2);
  if (BYTE1(a2) - 32 >= 0x5F)
  {
    v6 = 32;
  }

  v9 = 1024;
  v10 = a2;
  v11 = 1024;
  v12 = v4;
  v13 = 1024;
  v14 = v5;
  v15 = 1024;
  if (a2 - 32 >= 0x5F)
  {
    v7 = 32;
  }

  else
  {
    v7 = a2;
  }

  v16 = v6;
  v17 = 1024;
  v18 = v7;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "IOConnect::Retain: IOServiceOpen(%u) failed: %x (%c%c%c%c)", v8, 0x26u);
}

void ASDT::IOConnect::Object::Release(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "IOConnect::Object::Release: called with refCount of %u", v3, 8u);
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
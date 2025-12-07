void awd::AppContext::submitTrigger(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a1[1];
  if (v5 && std::__shared_weak_count::lock(v5))
  {
    v6 = a1[1];
    if (v6)
    {
      if (std::__shared_weak_count::lock(v6))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

uint64_t *std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x2383CD480](v2, 0x60C40A44E5E0CLL);
  }

  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void write_rest_value(const CSGServingSystem *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v36 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v36 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v36 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v36 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v34, v7, v9, v8);
  v19 = &v36;
  v20 = "slot";
  xpc::dict::object_proxy::operator=(&v19, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  if (*(a1 + 8) == 1)
  {
    v32 = xpc_BOOL_create(1);
    if (!v32)
    {
      v32 = xpc_null_create();
    }

    v19 = &v36;
    v20 = "csgValid";
    xpc::dict::object_proxy::operator=(&v19, &v32, &v33);
    xpc_release(v33);
    v33 = 0;
    xpc_release(v32);
    v32 = 0;
    if ((*(a1 + 8) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v30 = xpc_int64_create(*(a1 + 1));
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    v19 = &v36;
    v20 = "csg";
    xpc::dict::object_proxy::operator=(&v19, &v30, &v31);
    xpc_release(v31);
    v31 = 0;
    xpc_release(v30);
    v30 = 0;
  }

  else
  {
    v28 = xpc_BOOL_create(0);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    v19 = &v36;
    v20 = "csgValid";
    xpc::dict::object_proxy::operator=(&v19, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
  }

  if (*(a1 + 80) == 1)
  {
    object = xpc_BOOL_create(1);
    if (!object)
    {
      object = xpc_null_create();
    }

    v19 = &v36;
    v20 = "plmnValid";
    xpc::dict::object_proxy::operator=(&v19, &object, &v27);
    xpc_release(v27);
    v27 = 0;
    xpc_release(object);
    object = 0;
    MCCAndMNC::getMcc(&v19, (a1 + 16));
    MCC::getStringValue(__p, &v19);
    if (v23 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v24 = xpc_string_create(v10);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    v17 = &v36;
    v18 = "mcc";
    xpc::dict::object_proxy::operator=(&v17, &v24, &v25);
    xpc_release(v25);
    v25 = 0;
    xpc_release(v24);
    v24 = 0;
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    MCCAndMNC::getMnc(&v19, (a1 + 16));
    MCC::getStringValue(__p, &v19);
    if (v23 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v15 = xpc_string_create(v11);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    v17 = &v36;
    v18 = "mnc";
    xpc::dict::object_proxy::operator=(&v17, &v15, &v16);
    xpc_release(v16);
    v16 = 0;
    xpc_release(v15);
    v15 = 0;
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  else
  {
    v13 = xpc_BOOL_create(0);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    v19 = &v36;
    v20 = "plmnValid";
    xpc::dict::object_proxy::operator=(&v19, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
  }

  v12 = v36;
  *a2 = v36;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v36);
}

void sub_2374EF01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v21 - 40));
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void write_rest_value(const MCC *a1@<X0>, xpc_object_t *a2@<X8>)
{
  MCC::getStringValue(__p, a1);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = xpc_string_create(v3);
  *a2 = v4;
  if (!v4)
  {
    *a2 = xpc_null_create();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void read_rest_value(CSGServingSystem *a1, xpc_object_t *a2)
{
  v23 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v23 && MEMORY[0x2383CD810](v23) == v3)
  {
    xpc_retain(v23);
  }

  else
  {
    v23 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    v9 = &v23;
    v10 = "slot";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v24);
    v5 = MEMORY[0x2383CD810](v24);
    if (v5 == MEMORY[0x277D864C0])
    {
      LODWORD(v21) = *a1;
      ctu::rest::detail::read_enum_string_value();
      *a1 = v21;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default();
    }

    xpc_release(v24);
    v9 = &v23;
    v10 = "csgValid";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v24);
    v6 = xpc::dyn_cast_or_default();
    xpc_release(v24);
    if (v6)
    {
      v9 = &v23;
      v10 = "csg";
      xpc::dict::object_proxy::operator xpc::object(&v9, &v24);
      v7 = xpc::dyn_cast_or_default();
      xpc_release(v24);
      *(a1 + 1) = v7;
      *(a1 + 8) = 1;
    }

    else if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }

    v9 = &v23;
    v10 = "plmnValid";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v24);
    v8 = xpc::dyn_cast_or_default();
    xpc_release(v24);
    if (!v8)
    {
      std::__optional_destruct_base<MCCAndMNC,false>::reset[abi:ne200100](a1 + 16);
      goto LABEL_36;
    }

    v21 = 0uLL;
    v22 = 0;
    v19[0] = &v23;
    v19[1] = "mcc";
    xpc::dict::object_proxy::operator xpc::object(v19, object);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v9);
    }

    v21 = v24;
    v22 = v25;
    xpc_release(object[0]);
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
    object[0] = &v23;
    object[1] = "mnc";
    xpc::dict::object_proxy::operator xpc::object(object, &v18);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v9);
    }

    *v19 = v24;
    v20 = v25;
    xpc_release(v18);
    MEMORY[0x2383CD030](&v9, &v21, v19);
    std::optional<MCCAndMNC>::operator=[abi:ne200100]<MCCAndMNC,void>((a1 + 16), &v9);
    if (SHIBYTE(__p) < 0)
    {
      operator delete(v13);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v10);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      v4 = v21;
      goto LABEL_34;
    }
  }

  else
  {
    LODWORD(v9) = 0;
    BYTE4(v9) = 0;
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
    v16 = 0;
    *(a1 + 8) = 0;
    *a1 = v9;
    std::__optional_storage_base<MCCAndMNC,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<MCCAndMNC,false>>((a1 + 16), &v11);
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v13) < 0)
      {
        v4 = v12;
LABEL_34:
        operator delete(v4);
      }
    }
  }

LABEL_36:
  xpc_release(v23);
}

void sub_2374EF4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t a23, uint64_t a24, xpc_object_t object, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  MCCAndMNC::~MCCAndMNC(&a9);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 73) < 0)
  {
    operator delete(*(v31 - 96));
  }

  xpc_release(*(v31 - 64));
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void std::__optional_destruct_base<MCCAndMNC,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 64) = 0;
  }
}

void write_rest_value(const MNC *a1@<X0>, xpc_object_t *a2@<X8>)
{
  MCC::getStringValue(__p, a1);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = xpc_string_create(v3);
  *a2 = v4;
  if (!v4)
  {
    *a2 = xpc_null_create();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void write_rest_value(const MCCAndMNC *a1@<X0>, xpc_object_t *a2@<X8>)
{
  MCCAndMNC::getMcc(v14, a1);
  MCC::getStringValue(&v16, v14);
  MCCAndMNC::getMnc(v10, a1);
  MCC::getStringValue(__p, v10);
  if ((v13 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v5 = v13;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v18 = v6->__r_.__value_.__r.__words[2];
  v17 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v18 >= 0)
  {
    v8 = &v17;
  }

  else
  {
    v8 = v17;
  }

  v9 = xpc_string_create(v8);
  *a2 = v9;
  if (!v9)
  {
    *a2 = xpc_null_create();
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[1]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[1]);
  }
}

void sub_2374EF844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void read_rest_value(MCC *a1, const xpc::object *a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  xpc::dyn_cast_or_default();
  MEMORY[0x2383CCD20](v4, &v2);
  MCC::operator=();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }
}

void sub_2374EF934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void read_rest_value(MCCAndMNC *a1, const xpc::object *a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  xpc::dyn_cast_or_default();
  MEMORY[0x2383CD020](v4, &v2);
  MCC::operator=();
  MCC::operator=();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }
}

void sub_2374EFA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void write_rest_value(BOOL *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v14 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v14 = v6;
LABEL_9:
  xpc_release(v5);
  v12 = xpc_BOOL_create(*a1);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "in_home_country";
  xpc::dict::object_proxy::operator=(&v10, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v8 = xpc_BOOL_create(a1[1]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "actual_in_home_country";
  xpc::dict::object_proxy::operator=(&v10, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v14;
  *a2 = v14;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v14);
}

void read_rest_value(InHomeCountryStatus *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v8 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v8 = v3;
  }

  if (MEMORY[0x2383CD810](v3) == v4)
  {
    v5 = &v8;
    v6 = "in_home_country";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v8;
    v6 = "actual_in_home_country";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 1) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v3 = v8;
  }

  else
  {
    InHomeCountryStatus::InHomeCountryStatus(&v5);
    *a1 = v5;
  }

  xpc_release(v3);
}

void sub_2374EFD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

CFPropertyListRef CCPreferences::copyValue@<X0>(CFStringRef key@<X1>, CFStringRef applicationID@<X2>, CFStringRef userName@<X3>, CFStringRef hostName@<X4>, void *a5@<X8>)
{
  result = CFPreferencesCopyValue(key, applicationID, userName, hostName);
  *a5 = result;
  return result;
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2374EFE10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0>(awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0,dispatch_queue_s *::default_delete<awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(*v1 + 64);
  if (v2)
  {
    (*(v2 + 16))(v2, v1[1], v1[2], v1[3]);
  }

  std::unique_ptr<awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0,std::default_delete<awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_2374EFE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0,std::default_delete<awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0,std::default_delete<awd::AppContext::submitTrigger(awd::MetricInfo,unsigned long long)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x2383CD480](v2, 0x1060C4061D8C922);
  }

  return a1;
}

void awd::AppContext::submitMetricPayload(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5)
{
  *(a5 + 8) = 0uLL;
  *a5 = 0;
  v6 = a1[1];
  if (v6 && std::__shared_weak_count::lock(v6))
  {
    v7 = a1[1];
    if (v7)
    {
      if (std::__shared_weak_count::lock(v7))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_2374F0044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0>(awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0,std::default_delete<awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *(*v1 + 72);
  if (v2)
  {
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    __p = 0;
    v12 = 0;
    v13 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v6, v7, v7 - v6);
    (*(v2 + 16))(v2, v3, v4, v5, &__p);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  std::unique_ptr<awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0,std::default_delete<awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0>>::~unique_ptr[abi:ne200100](&v10);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v9);
}

void sub_2374F0104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a15)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  std::unique_ptr<awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0,std::default_delete<awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

void *std::unique_ptr<awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0,std::default_delete<awd::AppContext::submitMetricPayload(awd::MetricInfo,unsigned int,std::vector<unsigned char>)::$_0>>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[4];
    if (v4)
    {
      v2[5] = v4;
      operator delete(v4);
    }

    MEMORY[0x2383CD480](v2, 0x1070C40D42409D5);
  }

  return a1;
}

void awd::AppContext::markMetricSubmissionComplete(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = a1[1];
  if (v5 && std::__shared_weak_count::lock(v5))
  {
    v6 = a1[1];
    if (v6)
    {
      if (std::__shared_weak_count::lock(v6))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::markMetricSubmissionComplete(awd::MetricInfo,unsigned short)::$_0>(awd::AppContext::markMetricSubmissionComplete(awd::MetricInfo,unsigned short)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AppContext::markMetricSubmissionComplete(awd::MetricInfo,unsigned short)::$_0,dispatch_queue_s *::default_delete<awd::AppContext::markMetricSubmissionComplete(awd::MetricInfo,unsigned short)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(*v1 + 80);
  if (v2)
  {
    (*(v2 + 16))(v2, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  }

  std::unique_ptr<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0,std::default_delete<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_2374F0374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0,std::default_delete<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0,std::default_delete<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x2383CD480](v2, 0x1060C40E89583D5);
  }

  return a1;
}

void awd::AwdCommandDriver::broadcastState_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = (a1 + 64);
  if (v2 != (a1 + 64))
  {
    v4 = a2;
    do
    {
      v5 = v2[5];
      v6 = v2[6];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v5)
      {
        awd::AppContext::updateClientState(v5, v4);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = v2[1];
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
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }
}

void sub_2374F0488(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void awd::AppContext::updateClientState(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (v3 && std::__shared_weak_count::lock(v3))
  {
    v4 = a1[1];
    if (v4)
    {
      if (std::__shared_weak_count::lock(v4))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AppContext::updateClientState(awd::ClientState)::$_0,dispatch_queue_s *::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(*v1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, v1[8]);
  }

  std::unique_ptr<awd::AppContext::updateClientState(awd::ClientState)::$_0,std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_2374F0610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<awd::AppContext::updateClientState(awd::ClientState)::$_0,std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<awd::AppContext::updateClientState(awd::ClientState)::$_0,std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x2383CD480](v2, 0x1060C4037EB2405);
  }

  return a1;
}

void awd::AppContext::updateAppSettingsUsed(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = a1[1];
  if (v5 && std::__shared_weak_count::lock(v5))
  {
    v6 = a1[1];
    if (v6)
    {
      if (std::__shared_weak_count::lock(v6))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0>(awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0,dispatch_queue_s *::default_delete<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(*v1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  }

  std::unique_ptr<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0,std::default_delete<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_2374F0808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::unique_ptr<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0,std::default_delete<awd::AppContext::updateAppSettingsUsed(awd::MetricInfo,awd::AppSettingsUsed)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278A33410, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278A33408, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void VinylProfileDetails::~VinylProfileDetails(void **this)
{
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        VinylProfileDetails::~VinylProfileDetails(v4 - 27);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t ***a1, char *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void BBDataCommandDriverInterface::~BBDataCommandDriverInterface(BBDataCommandDriverInterface *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 56)) = a2[1];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void BBDataCommandDriverInterface::setDataDriver(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t BBDataCommandDriverInterface::getDataDriver@<X0>(uint64_t this@<X0>, void *a2@<X8>)
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

uint64_t AttachApnCommandDriver::AttachApnPushConfig::AttachApnPushConfig(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int16 a5)
{
  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v9 + 16))(v9);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>((a1 + 40), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 1);
  *(a1 + 64) = a5;
  return a1;
}

{
  return AttachApnCommandDriver::AttachApnPushConfig::AttachApnPushConfig(a1, a2, a3, a4, a5);
}

uint64_t AttachApnCommandDriver::AttachApnCommandDriver(uint64_t a1, void *a2, NSObject **a3, uint64_t a4)
{
  v4 = a4;
  v8 = "AttachAPN.CmdDriver.?";
  if (a4 == 2)
  {
    v8 = "AttachAPN.CmdDriver.2";
  }

  if (a4 == 1)
  {
    v9 = "AttachAPN.CmdDriver.1";
  }

  else
  {
    v9 = v8;
  }

  ctu::OsLogContext::OsLogContext(v14, *MEMORY[0x277CC4628], v9);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = *a3;
  *(a1 + 24) = *a3;
  if (v10)
  {
    dispatch_retain(v10);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 40, v15);
  MEMORY[0x2383CCDD0](v15);
  ctu::OsLogContext::~OsLogContext(v14);
  *a1 = &unk_284A795F0;
  v11 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = v4;
  v12 = *a3;
  *(a1 + 72) = *a3;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 80) = subscriber::asString();
  *(a1 + 88) = 0;
  return a1;
}

void sub_2374F1340(_Unwind_Exception *a1)
{
  v4 = *(v2 + 72);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(v2 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MEMORY[0x2383CCDD0](v2 + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void AttachApnCommandDriver::~AttachApnCommandDriver(AttachApnCommandDriver *this)
{
  *this = &unk_284A795F0;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void AttachApnCommandDriver::getApnListForType_sync(void *key@<X2>, uint64_t a2@<X0>, CFDictionaryRef *a3@<X1>, const void ***a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (key && *a3)
  {
    Value = CFDictionaryGetValue(*a3, key);
    if (Value)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        v8 = CFGetTypeID(Value);
        if (v8 == CFArrayGetTypeID())
        {
          theArray = Value;
          CFRetain(Value);
        }

        else
        {
          Value = 0;
          theArray = 0;
        }

        v13 = *(a2 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          memset(v23, 0, sizeof(v23));
          v24 = 0;
          ctu::cf::assign();
          *__p = 0u;
          v19 = 0;
          *buf = 136446210;
          v22 = __p;
          _os_log_impl(&dword_2374EE000, v13, OS_LOG_TYPE_DEFAULT, "#I array of APNs: %{public}s", buf, 0xCu);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(__p[0]);
          }

          Value = theArray;
        }

        if (Value)
        {
          Count = CFArrayGetCount(Value);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              *v23 = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
              ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(v23, ValueAtIndex);
              if (*v23)
              {
                std::vector<ctu::cf::CFSharedRef<__CFDictionary const>>::push_back[abi:ne200100](a4, v23);
              }

              ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v23);
            }
          }
        }

        ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&theArray);
      }

      else
      {
        v10 = CFDictionaryGetTypeID();
        if (v10 == CFGetTypeID(Value))
        {
          theArray = 0;
          ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&theArray, Value);
          v11 = *(a2 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            memset(v23, 0, sizeof(v23));
            v24 = 0;
            ctu::cf::assign();
            *__p = *v23;
            v19 = v24;
            v12 = __p;
            if (v24 < 0)
            {
              v12 = *v23;
            }

            *buf = 136446210;
            v22 = v12;
            _os_log_impl(&dword_2374EE000, v11, OS_LOG_TYPE_DEFAULT, "#I dict of APN: %{public}s", buf, 0xCu);
            if (SHIBYTE(v19) < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (theArray)
          {
            std::vector<ctu::cf::CFSharedRef<__CFDictionary const>>::push_back[abi:ne200100](a4, &theArray);
          }

          ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theArray);
        }

        else
        {
          v17 = *(a2 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 67109120;
            *&v23[4] = CFGetTypeID(Value);
            _os_log_impl(&dword_2374EE000, v17, OS_LOG_TYPE_DEFAULT, "#E unknown CF type: %d", v23, 8u);
          }
        }
      }
    }

    else
    {
      v9 = *(a2 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        memset(v23, 0, sizeof(v23));
        v24 = 0;
        ctu::cf::assign();
        *__p = 0u;
        v19 = 0;
        *buf = 136315138;
        v22 = __p;
        _os_log_impl(&dword_2374EE000, v9, OS_LOG_TYPE_DEFAULT, "#E No APN for type: %s", buf, 0xCu);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_2374F17AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a12);
  std::vector<ctu::cf::CFSharedRef<__CFDictionary const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ctu::cf::CFSharedRef<__CFDictionary const>>::push_back[abi:ne200100](const void ***a1, CFTypeRef *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = v3 - *a1;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
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

    v18[4] = a1;
    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * v7);
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(v11, *a2);
    v6 = (v11 + 1);
    v12 = *a1;
    v13 = a1[1];
    v14 = *a1 + v11 - v13;
    if (v13 != *a1)
    {
      v15 = *a1;
      v16 = v14;
      do
      {
        *v16 = 0;
        *v16++ = *v15;
        *v15++ = 0;
      }

      while (v15 != v13);
      do
      {
        v12 = ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v12) + 1;
      }

      while (v12 != v13);
      v12 = *a1;
    }

    *a1 = v14;
    a1[1] = v6;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v12;
    v18[3] = v17;
    v18[0] = v12;
    v18[1] = v12;
    result = std::__split_buffer<ctu::cf::CFSharedRef<__CFDictionary const>>::~__split_buffer(v18);
  }

  else
  {
    result = ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(v3, *a2);
    v6 = result + 8;
  }

  a1[1] = v6;
  return result;
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2374F1A10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

uint64_t std::__split_buffer<ctu::cf::CFSharedRef<__CFDictionary const>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<ctu::cf::CFSharedRef<__CFDictionary const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(void *a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
  {
    *a1 = cf;
    CFRetain(cf);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

char *awd::asString(unsigned int a1)
{
  if (a1 >= 3)
  {
    return __TUAssertTrigger();
  }

  else
  {
    return off_278A33518[a1];
  }
}

{
  if (a1 >= 4)
  {
    return __TUAssertTrigger();
  }

  else
  {
    return off_278A334E0[a1];
  }
}

{
  if (a1 >= 3)
  {
    return __TUAssertTrigger();
  }

  else
  {
    return off_278A33500[a1];
  }
}

uint64_t awd::operator<<(uint64_t a1, awd::AppContext **a2)
{
  v4 = MEMORY[0x277D82890] + 104;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v38 = 0;
  v37 = 0u;
  *__p = 0u;
  v35 = 0u;
  *__src = 0u;
  v33 = 0u;
  v32 = 0u;
  v30 = 0;
  v39 = MEMORY[0x277D82890] + 104;
  v5 = MEMORY[0x277D82890] + 64;
  v31 = MEMORY[0x277D82890] + 64;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v29 = *(MEMORY[0x277D82818] + 16);
  *(&v29 + *(v29 - 24)) = v7;
  v30 = 0;
  v8 = (&v29 + *(v29 - 24));
  std::ios_base::init(v8, &v32);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v6[5];
  v31 = v6[4];
  *(&v31 + *(v31 - 24)) = v10;
  v29 = v6[1];
  *(&v29 + *(v29 - 24)) = v6[6];
  v39 = v4;
  v29 = v9;
  v31 = v5;
  std::stringbuf::basic_stringbuf[abi:ne200100](&v32, 24);
  if (*a2)
  {
    awd::AppContext::getAppSettings(*a2);
    awd::AppContext::getAppSettingsUsed(*a2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Application: ", 13);
    v12 = *(*a2 + 32);
    if (v12 >= 3)
    {
      __TUAssertTrigger();
    }

    else
    {
      a2 = off_278A33518[v12];
    }

    v13 = strlen(a2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", PII used: ", 12);
    *(v15 + *(*v15 - 24) + 8) |= 1u;
    v16 = MEMORY[0x2383CD380]();
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", PII allowed: ", 15);
    *(v17 + *(*v17 - 24) + 8) |= 1u;
    v18 = MEMORY[0x2383CD380]();
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", Location used: ", 17);
    *(v19 + *(*v19 - 24) + 8) |= 1u;
    v20 = MEMORY[0x2383CD380]();
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", Location allowed: ", 20);
    *(v21 + *(*v21 - 24) + 8) |= 1u;
    MEMORY[0x2383CD380]();
  }

  if ((v38 & 0x10) != 0)
  {
    v23 = *(&v37 + 1);
    if (*(&v37 + 1) < v35)
    {
      *(&v37 + 1) = v35;
      v23 = v35;
    }

    v24 = __src[1];
  }

  else
  {
    if ((v38 & 8) == 0)
    {
      v22 = 0;
      v28 = 0;
      goto LABEL_19;
    }

    v24 = v33;
    v23 = __src[0];
  }

  v22 = v23 - v24;
  if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  v28 = v23 - v24;
  if (v22)
  {
    memmove(&__dst, v24, v22);
  }

LABEL_19:
  *(&__dst + v22) = 0;
  MEMORY[0x2383CCF40](a1, &__dst);
  if (v28 < 0)
  {
    operator delete(__dst);
  }

  v29 = *v6;
  v25 = v6[9];
  *(&v29 + *(v29 - 24)) = v6[8];
  v31 = v25;
  *&v32 = MEMORY[0x277D82878] + 16;
  if (SBYTE7(v37) < 0)
  {
    operator delete(__p[0]);
  }

  *&v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v32 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x2383CD440](&v39);
  return a1;
}

void sub_2374F2454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  MEMORY[0x2383CD440](a9);
  _Unwind_Resume(a1);
}

uint64_t awd::AppContext::getAppSettings(awd::AppContext *this)
{
  v5 = this;
  if (*(this + 3))
  {
    if (dispatch_workloop_is_current())
    {
      return *(this + 33);
    }

    v3 = *(this + 3) == 0;
  }

  else
  {
    v3 = 1;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableIN3awd10AppContextEE20execute_wrapped_syncIZNKS2_14getAppSettingsEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  v6[3] = &__block_descriptor_tmp_42;
  v6[4] = this;
  v6[5] = &v5;
  v7 = v6;
  v4 = *(this + 2);
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  if (v3)
  {
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFN3awd11AppSettingsEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_43;
    v11 = &v13;
    v12 = &v7;
    dispatch_sync(v4, block);
  }

  else
  {
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3awd11AppSettingsEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_44;
    v11 = &v13;
    v12 = &v7;
    dispatch_async_and_wait(v4, block);
  }

  return v13;
}

uint64_t awd::AppContext::getAppSettingsUsed(awd::AppContext *this)
{
  v5 = this;
  if (*(this + 3))
  {
    if (dispatch_workloop_is_current())
    {
      return *(this + 35);
    }

    v3 = *(this + 3) == 0;
  }

  else
  {
    v3 = 1;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableIN3awd10AppContextEE20execute_wrapped_syncIZNKS2_18getAppSettingsUsedEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  v6[3] = &__block_descriptor_tmp_46;
  v6[4] = this;
  v6[5] = &v5;
  v7 = v6;
  v4 = *(this + 2);
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  if (v3)
  {
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFN3awd15AppSettingsUsedEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_47;
    v11 = &v13;
    v12 = &v7;
    dispatch_sync(v4, block);
  }

  else
  {
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3awd15AppSettingsUsedEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_48;
    v11 = &v13;
    v12 = &v7;
    dispatch_async_and_wait(v4, block);
  }

  return v13;
}

uint64_t awd::AppContext::AppContext(uint64_t a1, char a2, NSObject **a3, NSObject **a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v7 = *a3;
  *(a1 + 16) = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a4;
  *(a1 + 24) = *a4;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = a2;
  *(a1 + 33) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void awd::AppContext::setHandler(uint64_t *a1, void **a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_11ClientStateEEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_4;
  v9[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3awd10AppContextEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A79970;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoENS_15AppSettingsUsedEEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_18;
  v9[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3awd10AppContextEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A79970;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvjhEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_19_0;
  v9[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3awd10AppContextEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A79970;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEyEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_20_0;
  v9[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3awd10AppContextEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A79970;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEjNSt3__16vectorIhNS4_9allocatorIhEEEEEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_21_0;
  v9[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3awd10AppContextEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A79970;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEtEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_22;
  v9[4] = a1;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3awd10AppContextEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A79970;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_11ClientStateEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd11ClientStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd11ClientStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoENS_15AppSettingsUsedEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c82_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoENS1_15AppSettingsUsedEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c82_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoENS1_15AppSettingsUsedEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvjhEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvjhEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvjhEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEyEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEyEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEyEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEjNSt3__16vectorIhNS4_9allocatorIhEEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 72);
  *(v2 + 72) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c97_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEjNSt3__16vectorIhNS3_9allocatorIhEEEEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c97_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEjNSt3__16vectorIhNS3_9allocatorIhEEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3awd10AppContext10setHandlerEN8dispatch5blockIU13block_pointerFvNS_10MetricInfoEtEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 80);
  *(v2 + 80) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEtEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c61_ZTSN8dispatch5blockIU13block_pointerFvN3awd10MetricInfoEtEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void awd::AppContext::sendConfigurationResult(awd::AppContext *this, int a2, char a3)
{
  v4 = *(this + 1);
  if (v4 && std::__shared_weak_count::lock(v4))
  {
    v5 = *(this + 1);
    if (v5)
    {
      if (std::__shared_weak_count::lock(v5))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void awd::AppContext::postResultToHandler(uint64_t *a1, uint64_t *a2, char a3)
{
  if (*a2)
  {
    *a2 = 0;
    v4 = a1[1];
    if (v4 && std::__shared_weak_count::lock(v4))
    {
      v5 = a1[1];
      if (v5)
      {
        if (std::__shared_weak_count::lock(v5))
        {
          operator new();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }
}

uint64_t awd::AwdCommandDriver::AwdCommandDriver(uint64_t a1, dispatch_object_t *a2, void *a3)
{
  *a1 = &unk_284A797F8;
  v5 = (a1 + 8);
  v6 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::OsLogContext::OsLogContext(v15, *MEMORY[0x277CC4628], "awd.cd");
  if (v6)
  {
    dispatch_retain(v6);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    dispatch_retain(v6);
    dispatch_retain(v6);
    v8 = dispatch_queue_create_with_target_V2("awd::CommandDriver", v7, v6);
  }

  else
  {
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("awd::CommandDriver", v9);
  }

  v10 = v8;
  *v5 = 0;
  v5[1] = 0;
  *(a1 + 24) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v6)
  {
    dispatch_release(v6);
    dispatch_release(v6);
    dispatch_release(v6);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 40, v16);
  MEMORY[0x2383CCDD0](v16);
  ctu::OsLogContext::~OsLogContext(v15);
  if (v6)
  {
    dispatch_release(v6);
  }

  *a1 = &unk_284A797F8;
  v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v12 = dispatch_queue_create_with_target_V2("awd::CommandDriver", v11, *(a1 + 24));
  *a1 = &unk_284A797F8;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v12;
  *(a1 + 56) = a1 + 64;
  v13 = a3[1];
  *(a1 + 80) = *a3;
  *(a1 + 88) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void awd::AwdCommandDriver::~AwdCommandDriver(awd::AwdCommandDriver *this)
{
  *this = &unk_284A797F8;
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*(this + 8));
  v3 = *(this + 6);
  if (v3)
  {
    dispatch_release(v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void awd::AwdCommandDriver::checkIn(void *a1, uint64_t *a2)
{
  if (*a2)
  {
    v2 = a2[1];
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = a1[2];
    if (v3)
    {
      if (std::__shared_weak_count::lock(v3))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }
}

void awd::AwdCommandDriver::checkOut(void *a1, uint64_t *a2, dispatch_object_t *a3)
{
  if (*a2)
  {
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v5);
    }

    v6 = a1[2];
    if (v6)
    {
      if (std::__shared_weak_count::lock(v6))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2383CD3F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2374F3DC0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x2383CD360](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2383CD370](v13);
  return a1;
}

void sub_2374F3F2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2383CD370](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2374F3F0CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2374F4168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<awd::AppContext::create(awd::AppID,dispatch::queue,dispatch::workloop)::make_shared_enabler,std::allocator<awd::AppContext::create(awd::AppID,dispatch::queue,dispatch::workloop)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A79928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CD480);
}

void std::__shared_ptr_emplace<awd::AppContext::create(awd::AppID,dispatch::queue,dispatch::workloop)::make_shared_enabler,std::allocator<awd::AppContext::create(awd::AppID,dispatch::queue,dispatch::workloop)::make_shared_enabler>>::__on_zero_shared(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = a1[4];
  if (v10)
  {

    std::__shared_weak_count::__release_weak(v10);
  }
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIKN3awd10AppContextEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIKN3awd10AppContextEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFN3awd11AppSettingsEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3awd11AppSettingsEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFN3awd15AppSettingsUsedEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3awd15AppSettingsUsedEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0>(awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0,dispatch_queue_s *::default_delete<awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(*v1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(v1 + 8), *(v1 + 12));
  }

  std::unique_ptr<awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0,std::default_delete<awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_2374F44AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0,std::default_delete<awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0,std::default_delete<awd::AppContext::sendConfigurationResult(unsigned int,unsigned char)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x2383CD480](v2, 0x1060C40F6F18CF5);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0>(awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0,dispatch_queue_s *::default_delete<awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(*(v1 + 1) + 16))(*(v1 + 1), *v1);
  std::unique_ptr<awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0,std::default_delete<awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0>>::~unique_ptr[abi:ne200100](&v4);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_2374F456C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0,std::default_delete<awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0,std::default_delete<awd::AppContext::postResultToHandler(dispatch::block<void({block_pointer})(BOOL)>,BOOL)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      _Block_release(v4);
    }

    MEMORY[0x2383CD480](v2, 0x10E0C40618FC5A2);
  }

  return a1;
}

void std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*a1);
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0>(awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0,std::default_delete<awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = v1[2];
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = v2[8];
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = *(v5 + 32);
      if (v7 <= v4)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 >= v4)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v8 = v1[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[6];
  v6[5] = v3;
  v6[6] = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = v1[1];
  v14 = *v1;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 72))(v2, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::unique_ptr<awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0,std::default_delete<awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0>>::~unique_ptr[abi:ne200100](&v13);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v12);
}

void sub_2374F47BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{
  std::unique_ptr<awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0,std::default_delete<awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0,std::default_delete<awd::AwdCommandDriver::checkIn(std::shared_ptr<awd::AppContext>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x2383CD480](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0>(awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0,std::default_delete<awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = (*v1 + 64);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(*(v1 + 8) + 32);
    v6 = v3;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != v3 && v5 >= *(v6 + 32))
    {
      v10 = v6[6];
      v20 = v6[5];
      v21 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v2 + 80))(v2, &v20);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v11 = v6[1];
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
        v13 = v6;
        do
        {
          v12 = v13[2];
          v14 = *v12 == v13;
          v13 = v12;
        }

        while (!v14);
      }

      if (v2[7] == v6)
      {
        v2[7] = v12;
      }

      v15 = v2[8];
      --v2[9];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v15, v6);
      v16 = v6[6];
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      operator delete(v6);
    }
  }

  std::unique_ptr<awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0,std::default_delete<awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0>>::~unique_ptr[abi:ne200100](&v19);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v18);
}

void sub_2374F497C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0,std::default_delete<awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0,std::default_delete<awd::AwdCommandDriver::checkOut(std::shared_ptr<awd::AppContext>,dispatch::group_session const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v2 + 24);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x2383CD480](v2, 0x20C40DC1BFBCFLL);
  }

  return a1;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void CommandDriversFactory::CommandDriversFactory(CommandDriversFactory *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284A799B0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284A799B0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

void CommandDriversFactory::~CommandDriversFactory(CommandDriversFactory *this)
{
  *this = &unk_284A799B0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  CommandDriversFactory::~CommandDriversFactory(this);

  JUMPOUT(0x2383CD480);
}

void CommandDriversFactory::init(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void CommandDriversFactory::create(uint64_t a1@<X0>, std::__shared_weak_count_vtbl **a2@<X8>)
{
  if (qword_2810D7930 != -1)
  {
    dispatch_once(&qword_2810D7930, &__block_literal_global);
  }

  if (!_MergedGlobals)
  {
    ctu::OsLogContext::OsLogContext(buf, *MEMORY[0x277CC4628], "dyld");
    v10 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v11 = "No CommandDriver dylib was loaded! Returning null-factory.";
    goto LABEL_34;
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v12 = dlsym(_MergedGlobals, "_ZN22KCommandDriversFactory6createEv");
    if (v12)
    {
      v6 = v12;
      v7 = *MEMORY[0x277CC4628];
      ctu::OsLogContext::OsLogContext(buf, *MEMORY[0x277CC4628], "dyld");
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v9 = "Loaded KCommandDriverFactory success!";
      goto LABEL_37;
    }

    v15 = *MEMORY[0x277CC4628];
    ctu::OsLogContext::OsLogContext(buf, *MEMORY[0x277CC4628], "dyld");
    v17 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v18 = "Loaded KCommandDriverFactory failed!";
    goto LABEL_31;
  }

  if (RadioVendor != 1)
  {
    if (RadioVendor == 4)
    {
      v5 = dlsym(_MergedGlobals, "_ZN22DCommandDriversFactory6createEv");
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x277CC4628];
        ctu::OsLogContext::OsLogContext(buf, *MEMORY[0x277CC4628], "dyld");
        v8 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_17;
        }

        *buf = 0;
        v9 = "Loaded DCommandDriverFactory success!";
        goto LABEL_37;
      }

      v15 = *MEMORY[0x277CC4628];
      ctu::OsLogContext::OsLogContext(buf, *MEMORY[0x277CC4628], "dyld");
      v17 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 0;
      v18 = "Loaded DCommandDriverFactory failed!";
      goto LABEL_31;
    }

    v15 = *MEMORY[0x277CC4628];
    goto LABEL_32;
  }

  v13 = dlsym(_MergedGlobals, "_ZN22MCommandDriversFactory6createEv");
  if (!v13)
  {
    v15 = *MEMORY[0x277CC4628];
    ctu::OsLogContext::OsLogContext(buf, *MEMORY[0x277CC4628], "dyld");
    v17 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Loaded MCommandDriverFactory failed!";
LABEL_31:
      _os_log_impl(&dword_2374EE000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }

LABEL_32:
    ctu::OsLogContext::OsLogContext(buf, v15, "dyld");
    v10 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v11 = "dylib loaded, but no method! Returning null-factory.";
LABEL_34:
    _os_log_impl(&dword_2374EE000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
LABEL_35:
    CommandDriversFactory::createNullFactory(a2);
  }

  v6 = v13;
  v7 = *MEMORY[0x277CC4628];
  ctu::OsLogContext::OsLogContext(buf, *MEMORY[0x277CC4628], "dyld");
  v8 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_17;
  }

  *buf = 0;
  v9 = "Loaded MCommandDriverFactory success!";
LABEL_37:
  _os_log_debug_impl(&dword_2374EE000, v8, OS_LOG_TYPE_DEBUG, v9, buf, 2u);
LABEL_17:
  memset(buf, 0, sizeof(buf));
  v6(buf);
  if (!*buf)
  {
    ctu::OsLogContext::OsLogContext(v19, v7, "dyld");
    v16 = v20;
    ctu::OsLogContext::~OsLogContext(v19);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_2374EE000, v16, OS_LOG_TYPE_DEFAULT, "loaded but returned null!", v19, 2u);
    }

    CommandDriversFactory::createNullFactory(a2);
  }

  ctu::OsLogContext::OsLogContext(v19, v7, "dyld");
  v14 = v20;
  ctu::OsLogContext::~OsLogContext(v19);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_2374EE000, v14, OS_LOG_TYPE_DEFAULT, "fully instantiated!", v19, 2u);
  }

  (*(**buf + 288))(*buf, a1);
  *a2 = *buf;
}

void sub_2374F555C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN12_GLOBAL__N_113sLoadTheDylibEv_block_invoke()
{
  result = TelephonyRadiosGetRadioVendor();
  if ((result - 1) <= 3)
  {
    result = dlopen(off_278A33550[result - 1], 1);
    _MergedGlobals = result;
  }

  return result;
}

void std::__shared_ptr_pointer<CommandDriversFactory *,std::shared_ptr<CommandDriversFactory>::__shared_ptr_default_delete<CommandDriversFactory,CommandDriversFactory>,std::allocator<CommandDriversFactory>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CD480);
}

uint64_t std::__shared_ptr_pointer<CommandDriversFactory *,std::shared_ptr<CommandDriversFactory>::__shared_ptr_default_delete<CommandDriversFactory,CommandDriversFactory>,std::allocator<CommandDriversFactory>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CommandDriversFactory *,std::shared_ptr<CommandDriversFactory>::__shared_ptr_default_delete<CommandDriversFactory,CommandDriversFactory>,std::allocator<CommandDriversFactory>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *NetworkRegistrationDriver::NetworkRegistrationDriver(void *a1, void *a2, dispatch_object_t *a3, const char *a4, char *a5)
{
  v9 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::OsLogContext::OsLogContext(v16, *MEMORY[0x277CC4628], a5);
  if (v9)
  {
    dispatch_retain(v9);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    dispatch_retain(v9);
    dispatch_retain(v9);
    v11 = dispatch_queue_create_with_target_V2(a4, v10, v9);
  }

  else
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create(a4, v12);
  }

  v13 = v11;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  a1[4] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v9)
  {
    dispatch_release(v9);
    dispatch_release(v9);
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v17);
  MEMORY[0x2383CCDD0](v17);
  ctu::OsLogContext::~OsLogContext(v16);
  if (v9)
  {
    dispatch_release(v9);
  }

  *a1 = &unk_284A79BB8;
  v14 = a2[1];
  a1[6] = *a2;
  a1[7] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  a1[9] = 0;
  a1[10] = a4;
  return a1;
}

void NetworkRegistrationDriver::~NetworkRegistrationDriver(NetworkRegistrationDriver *this)
{
  *this = &unk_284A79BB8;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void WiFiSettingsCommandDriver::~WiFiSettingsCommandDriver(WiFiSettingsCommandDriver *this)
{
  *this = &unk_284A79D90;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void *WiFiSettingsCommandDriver::WiFiSettingsCommandDriver(void *a1, void *a2, NSObject **a3, uint64_t a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A79D90;
  a1[6] = 0;
  a1[7] = 0;
  v10 = a2[1];
  a1[8] = *a2;
  a1[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = a4;
  return a1;
}

uint64_t WiFiSettingsCommandDriver::parseBssid(uint64_t a1, const char **a2, uint64_t a3)
{
  v3 = a2;
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a2 + 23) < 0)
  {
    v5 = *a2;
  }

  v6 = sscanf(v5, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", a3, a3 + 1, a3 + 2, a3 + 3, a3 + 4, a3 + 5);
  if (v6 != 6)
  {
    v7 = v6;
    if (v6 != -1)
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 23) < 0)
        {
          v3 = *v3;
        }

        *buf = 67109634;
        v12 = v7;
        v13 = 2080;
        v14 = v3;
        v15 = 2048;
        v16 = 6;
        goto LABEL_15;
      }

LABEL_16:
      (*(**(a1 + 48) + 24))(*(a1 + 48), 0);
      return 0;
    }

    v8 = *(v3 + 23);
    if (v8 < 0)
    {
      if (v3[1])
      {
LABEL_7:
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          if ((v8 & 0x80000000) != 0)
          {
            v3 = *v3;
          }

          *buf = 67109634;
          v12 = -1;
          v13 = 2080;
          v14 = v3;
          v15 = 2048;
          v16 = 6;
LABEL_15:
          _os_log_impl(&dword_2374EE000, v9, OS_LOG_TYPE_DEFAULT, "#N Found %d entries in BSSID %s, expected %zu", buf, 0x1Cu);
          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else if (*(v3 + 23))
    {
      goto LABEL_7;
    }
  }

  return 1;
}

void DisplayText::~DisplayText(void **this)
{
  *this = &unk_284A79E68;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A79E68;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A79E68;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void GetInkey::~GetInkey(void **this)
{
  *this = &unk_284A79E90;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A79E90;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A79E90;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void GetInput::~GetInput(void **this)
{
  *this = &unk_284A79EB8;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  GetInput::~GetInput(this);

  JUMPOUT(0x2383CD480);
}

void PlayTone::~PlayTone(void **this)
{
  *this = &unk_284A79EE0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A79EE0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A79EE0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void SendShortMessage::~SendShortMessage(void **this)
{
  *this = &unk_284A79F08;
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  SendShortMessage::~SendShortMessage(this);

  JUMPOUT(0x2383CD480);
}

void SendSS::~SendSS(void **this)
{
  *this = &unk_284A79F30;
  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

{
  SendSS::~SendSS(this);

  JUMPOUT(0x2383CD480);
}

void SendUSSD::~SendUSSD(void **this)
{
  *this = &unk_284A79F58;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  SendUSSD::~SendUSSD(this);

  JUMPOUT(0x2383CD480);
}

void SetupCall::~SetupCall(void **this)
{
  *this = &unk_284A79F80;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  SetupCall::~SetupCall(this);

  JUMPOUT(0x2383CD480);
}

void SetupCallUserConfirmation::~SetupCallUserConfirmation(void **this)
{
  SetupCall::~SetupCall(this);

  JUMPOUT(0x2383CD480);
}

void SetupCallAlphaDisplay::~SetupCallAlphaDisplay(void **this)
{
  SetupCall::~SetupCall(this);

  JUMPOUT(0x2383CD480);
}

void SelectionItem::~SelectionItem(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void SetupMenu::~SetupMenu(void **this)
{
  *this = &unk_284A79FA8;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this + 4;
  std::vector<SelectionItem>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  SetupMenu::~SetupMenu(this);

  JUMPOUT(0x2383CD480);
}

void SelectItem::~SelectItem(void **this)
{
  *this = &unk_284A79FD0;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this + 4;
  std::vector<SelectionItem>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  SelectItem::~SelectItem(this);

  JUMPOUT(0x2383CD480);
}

void SetupIdleText::~SetupIdleText(void **this)
{
  *this = &unk_284A79FF8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A79FF8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A79FF8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void SendDTMF::~SendDTMF(void **this)
{
  *this = &unk_284A7A020;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  SendDTMF::~SendDTMF(this);

  JUMPOUT(0x2383CD480);
}

void LanguageNotification::~LanguageNotification(void **this)
{
  *this = &unk_284A7A048;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A048;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A048;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void SetupEventNotifications::~SetupEventNotifications(SetupEventNotifications *this)
{
  *this = &unk_284A7A070;
  std::__tree<STKRegisteredEvent>::destroy(*(this + 4));
}

{
  *this = &unk_284A7A070;
  std::__tree<STKRegisteredEvent>::destroy(*(this + 4));
}

{
  *this = &unk_284A7A070;
  std::__tree<STKRegisteredEvent>::destroy(*(this + 4));

  JUMPOUT(0x2383CD480);
}

void OpenChannel::~OpenChannel(void **this)
{
  *this = &unk_284A7A098;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A098;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A098;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void CloseChannel::~CloseChannel(void **this)
{
  *this = &unk_284A7A0C0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A0C0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A0C0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void SendData::~SendData(void **this)
{
  *this = &unk_284A7A0E8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A0E8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A0E8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void ReceiveData::~ReceiveData(void **this)
{
  *this = &unk_284A7A110;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A110;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A110;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void RefreshAlpha::~RefreshAlpha(void **this)
{
  *this = &unk_284A7A138;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A138;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_284A7A138;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x2383CD480);
}

void std::vector<SelectionItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 4));
        }

        v4 -= 5;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<STKRegisteredEvent>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<STKRegisteredEvent>::destroy(*a1);
    std::__tree<STKRegisteredEvent>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t ctConvertGsmBandToInteger(int a1)
{
  if (a1 == 256)
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 128)
  {
    v2 = 8;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 64)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 32)
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 16)
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 63)
  {
    v3 = v5;
  }

  if (a1 == 8)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  if (a1 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (a1 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 3)
  {
    v7 = v9;
  }

  if (a1 <= 15)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

uint64_t ctConvertUmtsBandToInteger(int a1)
{
  if (a1 == 1024)
  {
    v1 = 11;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 512)
  {
    v2 = 10;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 256)
  {
    v3 = 9;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 128)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 64)
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  if (a1 == 32)
  {
    v6 = 6;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 255)
  {
    v3 = v6;
  }

  if (a1 == 16)
  {
    v7 = 5;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 8)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  if (a1 == 4)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if (a1 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  if (a1 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (a1 <= 3)
  {
    v9 = v11;
  }

  if (a1 <= 31)
  {
    return v9;
  }

  else
  {
    return v3;
  }
}

uint64_t ctConvertTdsBandToInteger(int a1)
{
  if (a1 == 32)
  {
    v1 = 6;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 16)
  {
    v2 = 5;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 8)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  if (a1 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 7)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t ctConvertCdmaBandToInteger(int a1)
{
  if (a1 > 1023)
  {
    if (a1 == 0x80000)
    {
      v12 = 20;
    }

    else
    {
      v12 = 0;
    }

    if (a1 == 0x40000)
    {
      v13 = 19;
    }

    else
    {
      v13 = v12;
    }

    if (a1 == 0x20000)
    {
      v14 = 18;
    }

    else
    {
      v14 = v13;
    }

    if (a1 == 0x10000)
    {
      v15 = 17;
    }

    else
    {
      v15 = 0;
    }

    if (a1 == 0x8000)
    {
      v16 = 16;
    }

    else
    {
      v16 = v15;
    }

    if (a1 < 0x20000)
    {
      v14 = v16;
    }

    if (a1 == 0x4000)
    {
      v17 = 15;
    }

    else
    {
      v17 = 0;
    }

    if (a1 == 0x2000)
    {
      v18 = 14;
    }

    else
    {
      v18 = v17;
    }

    if (a1 == 4096)
    {
      v19 = 13;
    }

    else
    {
      v19 = v18;
    }

    if (a1 == 2048)
    {
      v20 = 12;
    }

    else
    {
      v20 = 0;
    }

    if (a1 == 1024)
    {
      v21 = 11;
    }

    else
    {
      v21 = v20;
    }

    if (a1 <= 4095)
    {
      v19 = v21;
    }

    if (a1 < 0x8000)
    {
      return v19;
    }

    else
    {
      return v14;
    }
  }

  else
  {
    if (a1 == 512)
    {
      v1 = 10;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 256)
    {
      v2 = 9;
    }

    else
    {
      v2 = v1;
    }

    if (a1 == 128)
    {
      v3 = 8;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 64)
    {
      v4 = 7;
    }

    else
    {
      v4 = 0;
    }

    if (a1 == 32)
    {
      v5 = 6;
    }

    else
    {
      v5 = v4;
    }

    if (a1 <= 127)
    {
      v3 = v5;
    }

    if (a1 == 16)
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }

    if (a1 == 8)
    {
      v7 = 4;
    }

    else
    {
      v7 = v6;
    }

    if (a1 == 4)
    {
      v8 = 3;
    }

    else
    {
      v8 = v7;
    }

    if (a1 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    if (a1 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (a1 <= 3)
    {
      v8 = v10;
    }

    if (a1 <= 31)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t ctConvertLteBandToInteger(uint64_t a1)
{
  if (a1 >= 0x200000)
  {
    if (a1 > 0x7FFFFFFF)
    {
      if (a1 > 0xFFFFFFFFFLL)
      {
        v1 = 0x7FFFFFFFFFLL;
        if (a1 == 0x20000000000)
        {
          v2 = 71;
        }

        else
        {
          v2 = 0;
        }

        if (a1 == 0x10000000000)
        {
          v3 = 66;
        }

        else
        {
          v3 = v2;
        }

        if (a1 == 0x8000000000)
        {
          v4 = 48;
        }

        else
        {
          v4 = v3;
        }

        v5 = 0x1000000000;
        v6 = 42;
        if (a1 == 0x4000000000)
        {
          v7 = 46;
        }

        else
        {
          v7 = 0;
        }

        if (a1 == 0x2000000000)
        {
          v8 = 43;
        }

        else
        {
          v8 = v7;
        }

LABEL_134:
        if (a1 == v5)
        {
          v39 = v6;
        }

        else
        {
          v39 = v8;
        }

        if (a1 <= v1)
        {
          return v39;
        }

        else
        {
          return v4;
        }
      }

      v1 = 0x1FFFFFFFFLL;
      if (a1 == 0x800000000)
      {
        v37 = 41;
      }

      else
      {
        v37 = 0;
      }

      if (a1 == 0x400000000)
      {
        v38 = 40;
      }

      else
      {
        v38 = v37;
      }

      if (a1 == 0x200000000)
      {
        v4 = 39;
      }

      else
      {
        v4 = v38;
      }

      v5 = 0x80000000;
      v6 = 37;
      v36 = a1 == 0x100000000;
      v8 = 38;
LABEL_132:
      if (!v36)
      {
        v8 = 0;
      }

      goto LABEL_134;
    }

    if (a1 > 0x3FFFFFF)
    {
      v1 = 0xFFFFFFFLL;
      if (a1 == 0x40000000)
      {
        v34 = 36;
      }

      else
      {
        v34 = 0;
      }

      if (a1 == 0x20000000)
      {
        v35 = 35;
      }

      else
      {
        v35 = v34;
      }

      if (a1 == 0x10000000)
      {
        v4 = 34;
      }

      else
      {
        v4 = v35;
      }

      v5 = 0x4000000;
      v6 = 30;
      v36 = a1 == 0x8000000;
      v8 = 33;
      goto LABEL_132;
    }

    if (a1 == 0x2000000)
    {
      v20 = 29;
    }

    else
    {
      v20 = 0;
    }

    if (a1 == 0x1000000)
    {
      v21 = 28;
    }

    else
    {
      v21 = v20;
    }

    if (a1 == 0x800000)
    {
      v22 = 27;
    }

    else
    {
      v22 = v21;
    }

    if (a1 == 0x400000)
    {
      v23 = 26;
    }

    else
    {
      v23 = 0;
    }

    if (a1 == 0x200000)
    {
      v24 = 25;
    }

    else
    {
      v24 = v23;
    }

    v25 = a1 < 0x800000;
LABEL_109:
    if (v25)
    {
      return v24;
    }

    else
    {
      return v22;
    }
  }

  if (a1 > 2047)
  {
    if (a1 == 0x100000)
    {
      v26 = 24;
    }

    else
    {
      v26 = 0;
    }

    if (a1 == 0x80000)
    {
      v27 = 21;
    }

    else
    {
      v27 = v26;
    }

    if (a1 == 0x40000)
    {
      v22 = 20;
    }

    else
    {
      v22 = v27;
    }

    if (a1 == 0x20000)
    {
      v28 = 19;
    }

    else
    {
      v28 = 0;
    }

    if (a1 == 0x10000)
    {
      v29 = 18;
    }

    else
    {
      v29 = v28;
    }

    if (a1 < 0x40000)
    {
      v22 = v29;
    }

    if (a1 == 0x8000)
    {
      v30 = 17;
    }

    else
    {
      v30 = 0;
    }

    if (a1 == 0x4000)
    {
      v31 = 14;
    }

    else
    {
      v31 = v30;
    }

    if (a1 == 0x2000)
    {
      v24 = 13;
    }

    else
    {
      v24 = v31;
    }

    if (a1 == 4096)
    {
      v32 = 12;
    }

    else
    {
      v32 = 0;
    }

    if (a1 == 2048)
    {
      v33 = 11;
    }

    else
    {
      v33 = v32;
    }

    if (a1 < 0x2000)
    {
      v24 = v33;
    }

    v25 = a1 < 0x10000;
    goto LABEL_109;
  }

  if (a1 == 1024)
  {
    v9 = 10;
  }

  else
  {
    v9 = 0;
  }

  if (a1 == 512)
  {
    v10 = 9;
  }

  else
  {
    v10 = v9;
  }

  if (a1 == 256)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  if (a1 == 128)
  {
    v12 = 7;
  }

  else
  {
    v12 = 0;
  }

  if (a1 == 64)
  {
    v13 = 6;
  }

  else
  {
    v13 = v12;
  }

  if (a1 <= 255)
  {
    v11 = v13;
  }

  if (a1 == 32)
  {
    v14 = 5;
  }

  else
  {
    v14 = 0;
  }

  if (a1 == 16)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  if (a1 == 8)
  {
    v16 = 3;
  }

  else
  {
    v16 = v15;
  }

  if (a1 == 4)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  if (a1 == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  if (a1 <= 7)
  {
    v16 = v18;
  }

  if (a1 <= 63)
  {
    return v16;
  }

  else
  {
    return v11;
  }
}

uint64_t ctConvertNR5GBandToInteger(uint64_t a1)
{
  if (a1 >= 0x800000)
  {
    if (a1 <= 0x3FFFFFFFFLL)
    {
      if (a1 <= 0xFFFFFFF)
      {
        v14 = 0x1FFFFFFLL;
        if (a1 == 0x8000000)
        {
          v41 = 71;
        }

        else
        {
          v41 = 0;
        }

        if (a1 == 0x4000000)
        {
          v42 = 70;
        }

        else
        {
          v42 = v41;
        }

        if (a1 == 0x2000000)
        {
          v17 = 66;
        }

        else
        {
          v17 = v42;
        }

        if (a1 == 0x1000000)
        {
          v43 = 65;
        }

        else
        {
          v43 = 0;
        }

        if (a1 == 0x800000)
        {
          v40 = 53;
        }

        else
        {
          v40 = v43;
        }

LABEL_142:
        if (a1 <= v14)
        {
          return v40;
        }

        else
        {
          return v17;
        }
      }

      v14 = 0x7FFFFFFFLL;
      if (a1 == 0x200000000)
      {
        v35 = 79;
      }

      else
      {
        v35 = 0;
      }

      if (a1 == 0x100000000)
      {
        v36 = 78;
      }

      else
      {
        v36 = v35;
      }

      if (a1 == 0x80000000)
      {
        v17 = 77;
      }

      else
      {
        v17 = v36;
      }

      v18 = 0x10000000;
      v19 = 74;
      v20 = 0x20000000;
      v21 = 75;
      v22 = a1 == 0x40000000;
      v23 = 76;
    }

    else if (a1 > 0xFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFLL;
      if (a1 == 0x200000000000)
      {
        v37 = 261;
      }

      else
      {
        v37 = 0;
      }

      if (a1 == 0x100000000000)
      {
        v38 = 260;
      }

      else
      {
        v38 = v37;
      }

      if (a1 == 0x80000000000)
      {
        v17 = 259;
      }

      else
      {
        v17 = v38;
      }

      v18 = 0x10000000000;
      v19 = 86;
      v20 = 0x20000000000;
      v21 = 257;
      v22 = a1 == 0x40000000000;
      v23 = 258;
    }

    else
    {
      v14 = 0x1FFFFFFFFFLL;
      if (a1 == 0x8000000000)
      {
        v15 = 85;
      }

      else
      {
        v15 = 0;
      }

      if (a1 == 0x4000000000)
      {
        v16 = 84;
      }

      else
      {
        v16 = v15;
      }

      if (a1 == 0x2000000000)
      {
        v17 = 83;
      }

      else
      {
        v17 = v16;
      }

      v18 = 0x400000000;
      v19 = 80;
      v20 = 0x800000000;
      v21 = 81;
      v22 = a1 == 0x1000000000;
      v23 = 82;
    }

    if (!v22)
    {
      v23 = 0;
    }

    if (a1 == v20)
    {
      v39 = v21;
    }

    else
    {
      v39 = v23;
    }

    if (a1 == v18)
    {
      v40 = v19;
    }

    else
    {
      v40 = v39;
    }

    goto LABEL_142;
  }

  if (a1 <= 2047)
  {
    if (a1 == 1024)
    {
      v24 = 20;
    }

    else
    {
      v24 = 0;
    }

    if (a1 == 512)
    {
      v25 = 18;
    }

    else
    {
      v25 = v24;
    }

    if (a1 == 256)
    {
      v26 = 14;
    }

    else
    {
      v26 = v25;
    }

    if (a1 == 128)
    {
      v27 = 13;
    }

    else
    {
      v27 = 0;
    }

    if (a1 == 64)
    {
      v28 = 12;
    }

    else
    {
      v28 = v27;
    }

    if (a1 == 32)
    {
      v29 = 8;
    }

    else
    {
      v29 = v28;
    }

    if (a1 <= 255)
    {
      v26 = v29;
    }

    if (a1 == 16)
    {
      v30 = 7;
    }

    else
    {
      v30 = 0;
    }

    if (a1 == 8)
    {
      v31 = 5;
    }

    else
    {
      v31 = v30;
    }

    if (a1 == 4)
    {
      v32 = 3;
    }

    else
    {
      v32 = v31;
    }

    if (a1 == 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = 0;
    }

    if (a1 == 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    if (a1 <= 3)
    {
      v32 = v34;
    }

    if (a1 <= 31)
    {
      return v32;
    }

    else
    {
      return v26;
    }
  }

  else
  {
    if (a1 == 0x400000)
    {
      v1 = 51;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 0x200000)
    {
      v2 = 50;
    }

    else
    {
      v2 = v1;
    }

    if (a1 == 0x100000)
    {
      v3 = 48;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 0x80000)
    {
      v4 = 41;
    }

    else
    {
      v4 = 0;
    }

    if (a1 == 0x40000)
    {
      v5 = 40;
    }

    else
    {
      v5 = v4;
    }

    if (a1 == 0x20000)
    {
      v6 = 39;
    }

    else
    {
      v6 = v5;
    }

    if (a1 < 0x100000)
    {
      v3 = v6;
    }

    if (a1 == 0x10000)
    {
      v7 = 38;
    }

    else
    {
      v7 = 0;
    }

    if (a1 == 0x8000)
    {
      v8 = 34;
    }

    else
    {
      v8 = v7;
    }

    if (a1 == 0x4000)
    {
      v9 = 30;
    }

    else
    {
      v9 = v8;
    }

    if (a1 == 0x2000)
    {
      v10 = 28;
    }

    else
    {
      v10 = 0;
    }

    if (a1 == 4096)
    {
      v11 = 26;
    }

    else
    {
      v11 = v10;
    }

    if (a1 == 2048)
    {
      v12 = 25;
    }

    else
    {
      v12 = v11;
    }

    if (a1 < 0x4000)
    {
      v9 = v12;
    }

    if (a1 < 0x20000)
    {
      return v9;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t ctConvertGsmBandToMask(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_237526AA8[(a1 - 1)];
  }
}

uint64_t ctConvertUmtsBandToMask(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_237526AF0[(a1 - 1)];
  }
}

uint64_t ctConvertTdsBandToMask(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_237526B48[(a1 - 1)];
  }
}

uint64_t ctConvertCdmaBandToMask(int a1)
{
  if ((a1 - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_237526B78[(a1 - 1)];
  }
}

uint64_t ctConvertLteBandToMask(int a1)
{
  if ((a1 - 1) > 0x46)
  {
    return 0;
  }

  else
  {
    return qword_237526C18[(a1 - 1)];
  }
}

uint64_t ctConvertNrBandToMask(uint64_t result)
{
  if (result > 256)
  {
    if (result <= 258)
    {
      if (result == 257)
      {
        return 0x20000000000;
      }

      else
      {
        return 0x40000000000;
      }
    }

    else
    {
      switch(result)
      {
        case 0x103:
          return 0x80000000000;
        case 0x104:
          return 0x100000000000;
        case 0x105:
          return 0x200000000000;
        default:
          return 0;
      }
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 1:
        return result;
      case 2:
        result = 2;
        break;
      case 3:
        result = 4;
        break;
      case 5:
        result = 8;
        break;
      case 7:
        result = 16;
        break;
      case 8:
        result = 32;
        break;
      case 12:
        result = 64;
        break;
      case 13:
        result = 128;
        break;
      case 14:
        result = 256;
        break;
      case 18:
        result = 512;
        break;
      case 20:
        result = 1024;
        break;
      case 25:
        result = 2048;
        break;
      case 26:
        result = 4096;
        break;
      case 28:
        result = 0x2000;
        break;
      case 30:
        result = 0x4000;
        break;
      case 34:
        result = 0x8000;
        break;
      case 38:
        result = 0x10000;
        break;
      case 39:
        result = 0x20000;
        break;
      case 40:
        result = 0x40000;
        break;
      case 41:
        result = 0x80000;
        break;
      case 48:
        result = 0x100000;
        break;
      case 50:
        result = 0x200000;
        break;
      case 51:
        result = 0x400000;
        break;
      case 53:
        result = 0x800000;
        break;
      case 65:
        result = 0x1000000;
        break;
      case 66:
        result = 0x2000000;
        break;
      case 70:
        result = 0x4000000;
        break;
      case 71:
        result = 0x8000000;
        break;
      case 74:
        result = 0x10000000;
        break;
      case 75:
        result = 0x20000000;
        break;
      case 76:
        result = 0x40000000;
        break;
      case 77:
        result = 0x80000000;
        break;
      case 78:
        result = 0x100000000;
        break;
      case 79:
        result = 0x200000000;
        break;
      case 80:
        result = 0x400000000;
        break;
      case 81:
        result = 0x800000000;
        break;
      case 82:
        result = 0x1000000000;
        break;
      case 83:
        result = 0x2000000000;
        break;
      case 84:
        result = 0x4000000000;
        break;
      case 85:
        result = 0x8000000000;
        break;
      case 86:
        result = 0x10000000000;
        break;
      default:
        return 0;
    }
  }

  return result;
}

void *DesenseCommandDriver::DesenseCommandDriver(void *a1, uint64_t *a2, NSObject **a3, uint64_t a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v13, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v14);
  MEMORY[0x2383CCDD0](v14);
  ctu::OsLogContext::~OsLogContext(v13);
  *a1 = &unk_284A7A5F0;
  v11 = *a2;
  v10 = a2[1];
  a1[6] = a4;
  a1[7] = v11;
  a1[8] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void DesenseCommandDriver::~DesenseCommandDriver(DesenseCommandDriver *this)
{
  *this = &unk_284A7A5F0;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void DesenseCommandDriver::bootstrap(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 80);
  *(a1 + 72) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void DesenseCommandDriver::addSingleFrequencyToMap(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t **a5)
{
  if (a5)
  {
    v5 = a3 >> 1;
    v6 = a5[1];
    if (!v6)
    {
LABEL_19:
      operator new();
    }

    v7 = a5 + 1;
    v8 = a5[1];
    do
    {
      v9 = v8[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = v8[v11];
    }

    while (v8);
    if (v7 == a5 + 1 || v7[4] > a2 || v5 > *(v7 + 10))
    {
      while (1)
      {
        while (1)
        {
          v12 = v6;
          v13 = v6[4];
          if (v13 <= a2)
          {
            break;
          }

          v6 = *v12;
          if (!*v12)
          {
            goto LABEL_19;
          }
        }

        if (v13 >= a2)
        {
          break;
        }

        v6 = v12[1];
        if (!v6)
        {
          goto LABEL_19;
        }
      }

      v12[5] = v5 | (a4 << 32);
    }
  }

  else
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 0;
      _os_log_error_impl(&dword_2374EE000, v14, OS_LOG_TYPE_ERROR, "Given report structure is NULL!", v15, 2u);
    }
  }
}

CFArrayRef CCPreferences::copyKeyList@<X0>(CFStringRef applicationID@<X1>, CFStringRef userName@<X2>, CFStringRef hostName@<X3>, CFArrayRef *a4@<X8>)
{
  result = CFPreferencesCopyKeyList(applicationID, userName, hostName);
  *a4 = result;
  return result;
}

void CCPreferences::~CCPreferences(CCPreferences *this)
{
  CFPreferencesInterface::~CFPreferencesInterface(this);

  JUMPOUT(0x2383CD480);
}

void std::__shared_ptr_emplace<CCPreferences>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A7A788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CD480);
}

void NetworkListScanResult::getOperators(std::string **result, std::string **a2)
{
  if (a2 != result)
  {
    std::vector<NetworkListOperator>::__assign_with_size[abi:ne200100]<NetworkListOperator*,NetworkListOperator*>(a2, *result, result[1], 0xF0F0F0F0F0F0F0F1 * ((result[1] - *result) >> 3));
  }
}

uint64_t NetworkListScanResult::addOperator(NetworkListScanResult *this, os_log_t *a2, const NetworkListOperator *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  memset(v52, 0, sizeof(v52));
  v50 = 0u;
  *v51 = 0u;
  v48 = 0u;
  *v49 = 0u;
  *v47 = 0u;
  memset(__str, 0, sizeof(__str));
  NetworkListOperator::NetworkListOperator(__str, a3);
  v5 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    NetworkListOperator::getAsString(&__p, __str);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    _os_log_impl(&dword_2374EE000, v5, OS_LOG_TYPE_DEFAULT, "#I Attempting to add operator: %{public}s, will loop through the list and add this if relevant", &buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  memset(&__p, 0, sizeof(__p));
  NetworkListOperator::getCompositeName(&__p, __str);
  enforceStringIsUtf8(a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    NetworkListOperator::getKey(&buf, __str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = buf;
  }

  std::string::operator=(__str, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = *this;
  v9 = *(this + 1);
  if (*this != v9)
  {
    do
    {
      memset(&__p, 0, sizeof(__p));
      NetworkListOperator::getCompositeName(&__p, v8);
      memset(&buf, 0, sizeof(buf));
      NetworkListOperator::getCompositeName(&buf, __str);
      if (NetworkListOperator::matchesPLMN(v8, __str))
      {
        v10 = *a2;
        if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
        {
          NetworkListOperator::getAsString(v44, v8);
          v11 = v45 >= 0 ? v44 : v44[0];
          *v56 = 136446210;
          v57 = v11;
          _os_log_impl(&dword_2374EE000, v10, OS_LOG_TYPE_DEFAULT, "#I Entry already present matching the PLMN: %{public}s", v56, 0xCu);
          if (v45 < 0)
          {
            operator delete(v44[0]);
          }
        }

        goto LABEL_43;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v12 = __p.__r_.__value_.__l.__size_;
      }

      v13 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = buf.__r_.__value_.__l.__size_;
      }

      if (v12 != v13)
      {
        goto LABEL_43;
      }

      v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v15 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      v16 = memcmp(v14, v15, v12);
      if (!v12 || v16)
      {
        goto LABEL_43;
      }

      RAT = NetworkListOperator::getRAT(v8);
      v18 = NetworkListOperator::getRAT(__str);
      if (v18 != 2 || RAT == 2)
      {
        if (v18 == 2)
        {
          goto LABEL_43;
        }

        v19 = v8;
        if (RAT != 2)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v19 = __str;
      }

      NetworkListOperator::setAdditionalNameSuffix(v19, " (3G)");
LABEL_43:
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = (v8 + 136);
    }

    while (v8 != v9);
  }

  memset(&buf, 0, sizeof(buf));
  NetworkListOperator::getKey(&buf, __str);
  v20 = *this;
  v21 = *(this + 1);
  if (*this != v21)
  {
    while ((NetworkListOperator::operator==() & 1) == 0)
    {
      v20 = (v20 + 136);
      if (v20 == v21)
      {
        v20 = v21;
        break;
      }
    }

    v21 = *(this + 1);
  }

  if (v20 == v21)
  {
    v23 = *(this + 2);
    if (v21 >= v23)
    {
      v31 = 0xF0F0F0F0F0F0F0F1 * ((v21 - *this) >> 3);
      if (v31 + 1 > 0x1E1E1E1E1E1E1E1)
      {
        std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
      }

      v32 = 0xF0F0F0F0F0F0F0F1 * ((v23 - *this) >> 3);
      v33 = 2 * v32;
      if (2 * v32 <= v31 + 1)
      {
        v33 = v31 + 1;
      }

      if (v32 >= 0xF0F0F0F0F0F0F0)
      {
        v34 = 0x1E1E1E1E1E1E1E1;
      }

      else
      {
        v34 = v33;
      }

      v55 = this;
      if (v34)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkListOperator>>(v34);
      }

      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 136 * v31;
      __p.__r_.__value_.__r.__words[2] = 136 * v31;
      v54 = 0;
      NetworkListOperator::NetworkListOperator((136 * v31), __str);
      v24 = __p.__r_.__value_.__r.__words[2] + 136;
      __p.__r_.__value_.__r.__words[2] += 136;
      v35 = *this;
      v36 = *(this + 1);
      v37 = *this - v36;
      v38 = __p.__r_.__value_.__l.__size_ + v37;
      if (*this != v36)
      {
        v39 = 0;
        v40 = (__p.__r_.__value_.__l.__size_ + v37);
        v41 = *this;
        do
        {
          NetworkListOperator::NetworkListOperator(v40, v41);
          v41 = (v41 + 136);
          v40 = (v40 + 136);
          v39 -= 136;
        }

        while (v41 != v36);
        do
        {
          std::allocator_traits<std::allocator<NetworkListOperator>>::destroy[abi:ne200100]<NetworkListOperator,void,0>(v35);
          v35 += 136;
        }

        while (v35 != v36);
        v35 = *this;
        v24 = __p.__r_.__value_.__r.__words[2];
      }

      *this = v38;
      *(this + 1) = v24;
      v42 = *(this + 2);
      *(this + 2) = v54;
      __p.__r_.__value_.__r.__words[2] = v35;
      v54 = v42;
      __p.__r_.__value_.__r.__words[0] = v35;
      __p.__r_.__value_.__l.__size_ = v35;
      std::__split_buffer<NetworkListOperator>::~__split_buffer(&__p);
    }

    else
    {
      NetworkListOperator::NetworkListOperator(v21, __str);
      v24 = &v21[5].__r_.__value_.__r.__words[2];
      *(this + 1) = v21 + 136;
    }

    *(this + 1) = v24;
    goto LABEL_84;
  }

  v22 = NetworkListOperator::getRAT(__str);
  if (v22 > NetworkListOperator::getRAT(v20))
  {
    std::string::operator=(v20, __str);
    LODWORD(v20[1].__r_.__value_.__l.__data_) = *&__str[24];
    MCC::operator=();
    MCC::operator=();
    std::string::operator=(v20 + 4, v51);
    *&v20[5].__r_.__value_.__l.__data_ = *&v52[1];
LABEL_84:
    v26 = 1;
    goto LABEL_85;
  }

  v25 = *a2;
  v26 = 0;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    NetworkListOperator::getAsString(&__p, v20);
    v27 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v28 = __p.__r_.__value_.__r.__words[0];
    NetworkListOperator::getAsString(v44, __str);
    p_p = &__p;
    if (v27 < 0)
    {
      p_p = v28;
    }

    if (v45 >= 0)
    {
      v30 = v44;
    }

    else
    {
      v30 = v44[0];
    }

    *v56 = 136446466;
    v57 = p_p;
    v58 = 2082;
    v59 = v30;
    _os_log_impl(&dword_2374EE000, v25, OS_LOG_TYPE_DEFAULT, "#I Entry for %{public}s has a higher RAT, not adding %{public}s", v56, 0x16u);
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v26 = 0;
  }

LABEL_85:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52[0]) < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[1]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[1]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  return v26;
}

void sub_2374F87C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  NetworkListOperator::~NetworkListOperator(&a15);
  _Unwind_Resume(a1);
}

void NetworkListScanResult::replaceOperators(std::string **result, std::string **a2)
{
  if (result != a2)
  {
    std::vector<NetworkListOperator>::__assign_with_size[abi:ne200100]<NetworkListOperator*,NetworkListOperator*>(result, *a2, a2[1], 0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 3));
  }
}

const char *asString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A33570[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A33598[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A335B0[a1];
  }
}

{
  if (a1 > 0xB)
  {
    return "???";
  }

  else
  {
    return off_278A33978[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A339D8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278A33A38[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278A33A98[a1];
  }
}

{
  if (a1 > 2)
  {
    return "NR Registration Mode Allowed: StandAlone and NonStandAlone";
  }

  else
  {
    return off_278A33B80[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A33B98[a1];
  }
}

{
  if (a1 > 0xB)
  {
    return "Unknown file type";
  }

  else
  {
    return off_278A33BE0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown file format type";
  }

  else
  {
    return off_278A33C40[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278A33C58[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A33C78[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A33CA0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A33CC8[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A33CE0[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278A33D08[a1];
  }
}

void std::vector<NetworkListOperator>::__assign_with_size[abi:ne200100]<NetworkListOperator*,NetworkListOperator*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 136;
          std::allocator_traits<std::allocator<NetworkListOperator>>::destroy[abi:ne200100]<NetworkListOperator,void,0>(v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      *(a1 + 8) = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x1E1E1E1E1E1E1E1)
    {
      v12 = 0xF0F0F0F0F0F0F0F1 * (v8 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xF0F0F0F0F0F0F0)
      {
        v14 = 0x1E1E1E1E1E1E1E1;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x1E1E1E1E1E1E1E1)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkListOperator>>(v14);
      }
    }

    std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
  }

  v15 = *(a1 + 8) - v9;
  if (0xF0F0F0F0F0F0F0F1 * (v15 >> 3) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<NetworkListOperator *,NetworkListOperator *,NetworkListOperator *>(__str, a3, v9);
    for (i = *(a1 + 8); i != v16; std::allocator_traits<std::allocator<NetworkListOperator>>::destroy[abi:ne200100]<NetworkListOperator,void,0>(i))
    {
      i -= 136;
    }

    *(a1 + 8) = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<NetworkListOperator *,NetworkListOperator *,NetworkListOperator *>(__str, (__str + v15), v9);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<NetworkListOperator>,NetworkListOperator*,NetworkListOperator*,NetworkListOperator*>((__str + v15), a3, *(a1 + 8));
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<NetworkListOperator>,NetworkListOperator*,NetworkListOperator*,NetworkListOperator*>(NetworkListOperator *a1, NetworkListOperator *a2, std::string *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      NetworkListOperator::NetworkListOperator(this, v5);
      v5 = (v5 + 136);
      this = (this + 136);
      v6 -= 136;
    }

    while (v5 != a2);
  }

  return this;
}

void sub_2374F8B14(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 136;
    do
    {
      std::allocator_traits<std::allocator<NetworkListOperator>>::destroy[abi:ne200100]<NetworkListOperator,void,0>(v4);
      v4 -= 136;
      v2 += 136;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<NetworkListOperator>>::destroy[abi:ne200100]<NetworkListOperator,void,0>(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<NetworkListOperator *,NetworkListOperator *,NetworkListOperator *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      LODWORD(this[1].__r_.__value_.__l.__data_) = v5[1].__r_.__value_.__l.__data_;
      MCC::operator=();
      MCC::operator=();
      std::string::operator=(this + 4, v5 + 4);
      *&this[5].__r_.__value_.__l.__data_ = *&v5[5].__r_.__value_.__l.__data_;
      this = (this + 136);
      v5 = (v5 + 136);
    }

    while (v5 != a2);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkListOperator>>(unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void NetworkListOperator::NetworkListOperator(std::string *this, const NetworkListOperator *a2)
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

  LODWORD(this[1].__r_.__value_.__l.__data_) = *(a2 + 6);
  MCC::MCC();
  MCC::MCC(&this[2].__r_.__value_.__r.__words[2], (a2 + 64));
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v5 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v5;
  }

  *&this[5].__r_.__value_.__l.__data_ = *(a2 + 120);
}

void sub_2374F8D34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<NetworkListOperator>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::allocator_traits<std::allocator<NetworkListOperator>>::destroy[abi:ne200100]<NetworkListOperator,void,0>(i - 136);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void NetworkListOperator::~NetworkListOperator(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *HSFilerManager::HSFilerManager(void *a1, NSObject **a2)
{
  v3 = *a2;
  *a1 = &unk_284A7A7D8;
  a1[1] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void HSFilerManager::~HSFilerManager(HSFilerManager *this)
{
  *this = &unk_284A7A7D8;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void HSFilerManager::sendFile_sync(void *a1, Registry **a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 24))(a1, a3);
  v13 = v12;
  if (a1[2])
  {
    v14 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2374EE000, v14, OS_LOG_TYPE_ERROR, "Creating a new write session failed due to pending session", buf, 2u);
    }

    (*(*a1 + 16))(a1, a3, 2, a4, 0);
    return;
  }

  ServiceMap = Registry::getServiceMap(*a2);
  v16 = ServiceMap;
  v17 = off_284A7C938;
  if ((off_284A7C938 & 0x8000000000000000) != 0)
  {
    v18 = (off_284A7C938 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(ServiceMap);
  *buf = v17;
  v21 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v16[1].__m_.__sig, buf);
  v36 = a5;
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      v24 = 0;
      if (!v23)
      {
        goto LABEL_11;
      }

LABEL_15:
      (*(*v23 + 16))(buf, v23, a3, a1 + 1);
      v28 = *buf;
      memset(buf, 0, sizeof(buf));
      v29 = a1[3];
      *(a1 + 1) = v28;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        v30 = a1[2];
      }

      else
      {
        v30 = v28;
      }

      v31 = *v13;
      v32 = *v13;
      if (v30)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = asString(a4);
          *buf = 136315138;
          *&buf[4] = v33;
          _os_log_impl(&dword_2374EE000, v31, OS_LOG_TYPE_DEFAULT, "#I Successfully created write session for %s", buf, 0xCu);
        }

        v34 = a1[3];
        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 16), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v34 + 16), 1uLL, memory_order_relaxed);
        }

        if (*(a6 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v37, *a6, *(a6 + 8));
        }

        else
        {
          v37 = *a6;
        }

        v35 = v36[1];
        if (v35)
        {
          atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
        }

        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 16), 1uLL, memory_order_relaxed);
        }

        v38 = 0;
        operator new();
      }

      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v26 = "Creating write session failed";
      v27 = v31;
      goto LABEL_39;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
  if (v23)
  {
    goto LABEL_15;
  }

LABEL_11:
  v25 = *v13;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v26 = "Missing HiSpeed Filer factory";
    v27 = v25;
LABEL_39:
    _os_log_error_impl(&dword_2374EE000, v27, OS_LOG_TYPE_ERROR, v26, buf, 2u);
  }

LABEL_28:
  (*(*a1 + 16))(a1, a3, 2, a4, 0);
  if ((v24 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_2374F9434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  std::__function::__value_func<void ()(HiSpeedFileTransferStatus)>::~__value_func[abi:ne200100](&a21);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if ((a10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void HSFilerManager::handleRadioDown_sync(std::__shared_weak_count **this)
{
  if (this[2])
  {
    v2 = *((*this)[1].__shared_owners_)(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2374EE000, v2, OS_LOG_TYPE_DEFAULT, "#I Dropping HiSpeed Filer session due to radio down", v4, 2u);
    }

    v3 = this[3];
    this[2] = 0;
    this[3] = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void HSFilerManager::reportHSFileTransferStatus_sync(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1[2])
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v12 = v5;
    v13 = v6;
    v9 = *(*(*a1 + 24))(a1, a2, a3, a4, a5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2374EE000, v9, OS_LOG_TYPE_DEFAULT, "#I Cleaning up HiSpeed Filer session", v11, 2u);
    }

    v10 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void HSFilerManager::dumpState_sync(HSFilerManager *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*(*this + 32))(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 2) != 0;
    v4 = printers::asString(&v5, v3);
    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_2374EE000, v2, OS_LOG_TYPE_DEFAULT, "#I Active HiSpeed write session: %s", buf, 0xCu);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__function::__func<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0,std::allocator<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0>,void ()(HiSpeedFileTransferStatus)>::~__func(void *a1)
{
  *a1 = &unk_284A7A820;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0,std::allocator<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0>,void ()(HiSpeedFileTransferStatus)>::~__func(void *a1)
{
  *a1 = &unk_284A7A820;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2383CD480);
}

__n128 std::__function::__func<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0,std::allocator<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0>,void ()(HiSpeedFileTransferStatus)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_284A7A820;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 37) = *(a1 + 37);
  *(a2 + 24) = result;
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
  return result;
}

void std::__function::__func<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0,std::allocator<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0>,void ()(HiSpeedFileTransferStatus)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0,std::allocator<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0>,void ()(HiSpeedFileTransferStatus)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0,std::allocator<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0>,void ()(HiSpeedFileTransferStatus)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = *(a1 + 24);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 8))
      {
        if (v4 == 1)
        {
          (*(*v5 + 16))(v5, *(a1 + 40), 2, *(a1 + 44), 1);
        }

        else if (!v4)
        {
          v8 = **(a1 + 32);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_2374EE000, v8, OS_LOG_TYPE_DEFAULT, "#I File written successfully", v9, 2u);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0,std::allocator<HSFilerManager::sendFile_sync(std::shared_ptr<Registry const> const&,subscriber::SimSlot,FileType,std::shared_ptr<std::istream> const&,std::string const&)::$_0>,void ()(HiSpeedFileTransferStatus)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(HiSpeedFileTransferStatus)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *P2PCommandDriver::P2PCommandDriver(void *a1, uint64_t a2, const char *a3, NSObject **a4)
{
  ctu::OsLogContext::OsLogContext(v9, *MEMORY[0x277CC4628], a3);
  a1[1] = 0;
  a1[2] = 0;
  v7 = *a4;
  a1[3] = *a4;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v10);
  MEMORY[0x2383CCDD0](v10);
  ctu::OsLogContext::~OsLogContext(v9);
  *a1 = &unk_284A7A8B0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = a2;
  return a1;
}

void P2PCommandDriver::~P2PCommandDriver(P2PCommandDriver *this)
{
  *this = &unk_284A7A8B0;
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

_DWORD *NetworkListCommandDriverResponseError::NetworkListCommandDriverResponseError(_DWORD *result, int a2, int a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

void *NetworkListCommandDriver::NetworkListCommandDriver(void *a1, void *a2, NSObject **a3, uint64_t a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A7AA08;
  a1[6] = 0;
  a1[7] = 0;
  v10 = a2[1];
  a1[8] = *a2;
  a1[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = a4;
  return a1;
}

void NetworkListCommandDriver::~NetworkListCommandDriver(NetworkListCommandDriver *this)
{
  *this = &unk_284A7AA08;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void *BasebandSettingsDriver::BasebandSettingsDriver(void *a1, void *a2, NSObject **a3, uint64_t a4, char *a5, capabilities::ct **a6)
{
  v19 = *MEMORY[0x277D85DE8];
  ctu::OsLogContext::OsLogContext(v18, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v11 = *a3;
  a1[3] = *a3;
  if (v11)
  {
    dispatch_retain(v11);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, &v15);
  MEMORY[0x2383CCDD0](&v15);
  ctu::OsLogContext::~OsLogContext(v18);
  v12 = a6[3];
  if (!v12)
  {
    goto LABEL_6;
  }

  if (v12 != a6)
  {
    v12 = (*(*v12 + 2))(v12);
LABEL_6:
    v17 = v12;
    goto LABEL_8;
  }

  v17 = v16;
  v12 = (*(*v12 + 3))(v12, v16);
LABEL_8:
  a1[6] = 0;
  if ((capabilities::ct::supportsGemini(v12) & 1) == 0)
  {
    operator new();
  }

  if (!a1[6])
  {
    operator new();
  }

  std::__function::__value_func<char const* const ()(subscriber::SimSlot)>::~__value_func[abi:ne200100](v16);
  *a1 = &unk_284A7AB08;
  a1[7] = *a2;
  v13 = a2[1];
  a1[8] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = a4;
  return a1;
}

void sub_2374FA190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettingsDriver::~BasebandSettingsDriver(BasebandSettingsDriver *this)
{
  *this = &unk_284A7AB08;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    std::default_delete<ctu::MallocZone>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void BasebandSettingsDriver::reportFileTransferStatus_sync(uint64_t a1, int a2, int a3, FileType a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (a3 == 3 || a3 == 2)
  {
    v12 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = *(**(a1 + 72) + 64);
    goto LABEL_15;
  }

  v8 = v7;
  if (!a3)
  {
    v9 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      buf = 136315138;
      buf_4 = asString(a4);
      _os_log_impl(&dword_2374EE000, v9, OS_LOG_TYPE_DEFAULT, "#I File transfer of %s is complete, waiting for indication from baseband", &buf, 0xCu);
    }

    (*(*a1 + 136))(a1);
    v17 = 0;
    v18 = 0;
    Registry::getTimerService(&v17, *(a1 + 56));
    if (v17)
    {
      v10 = *(a1 + 16);
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          operator new();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2374EE000, v16, OS_LOG_TYPE_DEFAULT, "#N Could not create file transfer completion timer", &buf, 2u);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    (*(**(a1 + 72) + 80))(*(a1 + 72));
    return;
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    *(a1 + 96) = 0;
    (*(*v14 + 8))(v14);
    v13 = *(**(a1 + 72) + 64);
LABEL_15:

    v13();
    return;
  }

  v15 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 136315138;
    buf_4 = asString(a4);
    _os_log_impl(&dword_2374EE000, v15, OS_LOG_TYPE_DEFAULT, "#N File transfer for %s already timed out", &buf, 0xCu);
  }
}

void sub_2374FA870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *aBlock, dispatch_object_t object, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22BasebandSettingsDriver29reportFileTransferStatus_syncEN10subscriber7SimSlotE18FileTransferStatus8FileType_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = **(a1 + 56);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = asString(*(a1 + 76));
          v8 = *(a1 + 64);
          v10 = 134218242;
          v11 = v8;
          v12 = 2080;
          v13 = v7;
          _os_log_impl(&dword_2374EE000, v6, OS_LOG_TYPE_DEFAULT, "#N File transfer completion timer has fired after %lld seconds for %s", &v10, 0x16u);
        }

        BasebandSettingsDriver::reportFileTransferStatus_sync(v3, *(a1 + 72), 2, *(a1 + 76));
        v9 = *(v3 + 96);
        *(v3 + 96) = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22BasebandSettingsDriverEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22BasebandSettingsDriverEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t BasebandSettingsDriver::prepareFilePushTransaction(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (!a1[13])
  {
    operator new();
  }

  v8 = (a4 + 24);
  v7 = *(a4 + 24);
  if (v7)
  {
    if (v7 == a4)
    {
      v11[0] = v10;
      (*(*v7 + 24))(v7, v10);
      goto LABEL_9;
    }

    v11[0] = *(a4 + 24);
  }

  else
  {
    v8 = v11;
  }

  *v8 = 0;
LABEL_9:
  (*(*a1 + 224))(a1, a2, a3, v10);
  return std::__function::__value_func<void ()(subscriber::SimSlot,FilePushTransactionResult)>::~__value_func[abi:ne200100](v10);
}

void sub_2374FAC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettingsDriver::handleFileTransferComplete_sync(BasebandSettingsDriver *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2374EE000, v3, OS_LOG_TYPE_DEFAULT, "#I MallocZone for file push released", v4, 2u);
      v1 = *(this + 13);
      *(this + 13) = 0;
      if (!v1)
      {
        return;
      }
    }

    else
    {
      *(this + 13) = 0;
    }

    std::default_delete<ctu::MallocZone>::operator()[abi:ne200100](v1);
  }
}

void BasebandSettingsDriver::sendFile(BasebandSettingsDriver *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  if (!*(this + 2) || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(*(this + 2))) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a2 + 16) = 11;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 132) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 97) = 0u;

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void BasebandSettingsDriver::sendFile(BasebandSettingsDriver *this, SendFileProxy *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = (*(**(this + 6) + 16))(*(this + 6), *(a2 + 33));
  v5 = v4;
  v6 = *(a2 + 47);
  v7 = v6;
  v8 = *(a2 + 4);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 4);
  }

  if (!v6)
  {
    v10 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = asString(*(a2 + 16));
      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&dword_2374EE000, v10, OS_LOG_TYPE_DEFAULT, "#N Unable to send %s file, missing bundle path", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (*(a2 + 71) >= 0)
  {
    v9 = *(a2 + 71);
  }

  else
  {
    v9 = *(a2 + 7);
  }

  if (!v9)
  {
    v12 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = asString(*(a2 + 16));
      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&dword_2374EE000, v12, OS_LOG_TYPE_DEFAULT, "#N Unable to send %s file, missing file name", buf, 0xCu);
    }

LABEL_12:
    BasebandSettingsDriver::reportFileTransferStatus_sync(this, *(a2 + 33), 3, *(a2 + 16));
    return;
  }

  memset(&v47, 0, sizeof(v47));
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *(a2 + 3), v8);
  }

  else
  {
    v47 = *(a2 + 1);
  }

  ctu::path_join_impl();
  v14 = *(a2 + 9);
  if (!v14)
  {
    operator new();
  }

  if (*(v14 + *(*v14 - 24) + 32))
  {
    v15 = *v5;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = asString(*(a2 + 16));
      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&dword_2374EE000, v15, OS_LOG_TYPE_DEFAULT, "#N Invalid input file stream for %s", buf, 0xCu);
    }

    BasebandSettingsDriver::reportFileTransferStatus_sync(this, *(a2 + 33), 3, *(a2 + 16));
  }

  else
  {
    std::istream::seekg();
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *buf = 0u;
    v59 = 0u;
    std::istream::tellg();
    std::istream::seekg();
    v17 = (*(*this + 128))(this);
    v18 = v17;
    if (v66 % v17 <= 0)
    {
      v19 = v66 / v17;
    }

    else
    {
      v19 = v66 / v17 + 1;
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    BasebandSettingsDriver::getAllocator_sync<unsigned char>(&v44, *(this + 13));
    v42 = 0u;
    v43 = 0u;
    *data = 0u;
    std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::vector[abi:ne200100](data, v66, &v44);
    v39 = 0u;
    v40 = 0u;
    *md = 0u;
    std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::vector[abi:ne200100](md, 0x30uLL, &v44);
    std::istream::seekg();
    std::istream::read();
    std::istream::seekg();
    CC_SHA384(data[0], LODWORD(data[1]) - LODWORD(data[0]), md[0]);
    v20 = *v5;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a2 + 71);
      v22 = *(a2 + 6);
      v23 = v66;
      ctu::hex(__p, md[0], (md[1] - md[0]));
      v24 = v21 >= 0 ? (a2 + 48) : v22;
      v25 = v37 >= 0 ? __p : __p[0];
      *v48 = 136316162;
      v49 = v24;
      v50 = 1024;
      v51 = v23;
      v52 = 1024;
      v53 = v19;
      v54 = 1024;
      v55 = v18;
      v56 = 2082;
      v57 = v25;
      _os_log_impl(&dword_2374EE000, v20, OS_LOG_TYPE_DEFAULT, "#I Size of %s is %u bytes, %d segments of size %d SHA384: %{public}s", v48, 0x28u);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::~vector[abi:ne200100](md);
    std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::~vector[abi:ne200100](data);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    v26 = *(a2 + 16);
    v27 = *(a2 + 33);
    v28 = *(a2 + 9);
    if ((v26 - 3) <= 1u)
    {
      v29 = *(a2 + 10);
      v35[0] = v28;
      v35[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      BasebandSettingsDriver::sendCsimFiles(this, v27, v35, v66);
    }

    v30 = *(a2 + 10);
    v33 = *(a2 + 9);
    v34 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = *(a2 + 112);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(v32, a2 + 15);
    (*(*this + 216))(this, v27, v26, &v33, &v47, a2 + 88, v31, v32, *(a2 + 128), v19);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v32);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_2374FB588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a13);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void BasebandSettingsDriver::getAllocator_sync<unsigned char>(void *a1, uint64_t *a2)
{
  if (a2)
  {
    v4 = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = a2[2];
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    MEMORY[0x2383CCD90](&v11, "BasebandSettingDriver zone", 0);
    v6 = v11;
    v7 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v12;
      v9 = v13;
      *a1 = v6;
      a1[1] = v7;
      a1[2] = v9;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    else
    {
      v10 = v13;
      *a1 = v11;
      a1[1] = 0;
      a1[2] = v10;
    }
  }
}

void sub_2374FBA88(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BasebandSettingsDriver::readSegment(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  BasebandSettingsDriver::getAllocator_sync<unsigned char>(&v12, a1[13]);
  v6 = *(*a2 + *(**a2 - 24) + 32);
  *a3 = 0;
  a3[1] = 0;
  v7 = v12;
  v8 = v13;
  a3[2] = 0;
  a3[3] = v7;
  a3[4] = v8;
  if ((v6 & 2) != 0)
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    a3[5] = v14;
  }

  else
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    a3[5] = v14;
    v9 = ((*a1)[16])(a1);
    if (v9)
    {
      std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::__append(a3, v9);
    }

    ((*a1)[16])(a1);
    std::istream::read();
    v10 = *(*a2 + 8);
    v11 = a3[1] - *a3;
    if (v10 <= v11)
    {
      if (v10 < v11)
      {
        a3[1] = *a3 + v10;
      }
    }

    else
    {
      std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::__append(a3, v10 - v11);
    }
  }

  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_2374FBC90(_Unwind_Exception *a1)
{
  std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::~vector[abi:ne200100](v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandSettingsDriver::getFileTransferTimeout(BasebandSettingsDriver *this)
{
  if (*(TelephonyCapabilitiesGetHardwareModel() + 8) == 4)
  {
    return 180;
  }

  else
  {
    return 22;
  }
}

void *std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::vector[abi:ne200100](void *a1, size_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = a3[1];
  a1[3] = *a3;
  a1[4] = v5;
  v6 = (a1 + 3);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[5] = a3[2];
  if (a2)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v7 = ctu::MallocZone::malloc(v6);
    *a1 = v7;
    v8 = &v7[a2];
    a1[2] = &v7[a2];
    bzero(v7, a2);
    a1[1] = v8;
  }

  return a1;
}

void sub_2374FBD78(_Unwind_Exception *a1)
{
  std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::__destroy_vector::operator()[abi:ne200100](v1);
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::__destroy_vector::operator()[abi:ne200100](uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    return ctu::MallocZone::free((result + 24), v1);
  }

  return result;
}

uint64_t std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::~vector[abi:ne200100](uint64_t a1)
{
  std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::__destroy_vector::operator()[abi:ne200100](a1);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char *std::vector<unsigned char,ctu::malloc_zone_allocator<unsigned char>>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  result = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - result >= a2)
  {
    if (a2)
    {
      v12 = &result[a2];
      bzero(result, a2);
      result = v12;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v7 = &result[-*a1];
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *a1;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = ctu::MallocZone::malloc((a1 + 24));
    }

    else
    {
      v11 = 0;
    }

    v13 = &v7[v11];
    v14 = v11 + v10;
    v15 = &v13[a2];
    bzero(v13, a2);
    v16 = *(a1 + 8);
    v17 = &v13[*a1 - v16];
    result = memcpy(v17, *a1, v16 - *a1);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    *(a1 + 16) = v14;
    if (v18)
    {
      return ctu::MallocZone::free((a1 + 24), v18);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<char const* const ()(subscriber::SimSlot)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *SimInstanceLoggerDefault<ctu::OsLogLogger,subscriber::SimSlot,std::function<char const* const ()(subscriber::SimSlot)>>::~SimInstanceLoggerDefault(void *a1)
{
  *a1 = &unk_284A7AD40;
  MEMORY[0x2383CCDD0](a1 + 4);
  std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(a1[2]);
  return a1;
}

void SimInstanceLoggerDefault<ctu::OsLogLogger,subscriber::SimSlot,std::function<char const* const ()(subscriber::SimSlot)>>::~SimInstanceLoggerDefault(void *a1)
{
  *a1 = &unk_284A7AD40;
  MEMORY[0x2383CCDD0](a1 + 4);
  std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(a1[2]);

  JUMPOUT(0x2383CD480);
}

uint64_t SimInstanceLoggerDefault<ctu::OsLogLogger,subscriber::SimSlot,std::function<char const* const ()(subscriber::SimSlot)>>::getLoggerForSlot(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a1 + 32;
  }

  v3 = a1 + 16;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v3 != a1 + 16 && *(v3 + 32) <= a2)
  {
    return v3 + 40;
  }

  else
  {
    return a1 + 32;
  }
}

void std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(a1[1]);
    MEMORY[0x2383CCDD0](a1 + 5);

    operator delete(a1);
  }
}

uint64_t std::__function::__value_func<void ()(subscriber::SimSlot,FilePushTransactionResult)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::default_delete<ctu::MallocZone>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CD480);
}

void std::__shared_ptr_emplace<std::ifstream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A7AD80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CD480);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A7ADD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CD480);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *std::__function::__func<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0,std::allocator<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A7AE20;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0,std::allocator<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A7AE20;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2383CD480);
}

uint64_t std::__function::__func<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0,std::allocator<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A7AE20;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0,std::allocator<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0,std::allocator<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0,std::allocator<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0>,void ()(BOOL)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(**(v7 + 72) + 64))(*(v7 + 72), 1, v4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

uint64_t std::__function::__func<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0,std::allocator<BasebandSettingsDriver::sendCsimFiles(subscriber::SimSlot,std::shared_ptr<std::istream>,unsigned long)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::string,std::optional<VinylDriverError>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::map<subscriber::AuthInfo,std::vector<unsigned char>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<subscriber::AuthInfo,std::vector<unsigned char>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__tree_node<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<subscriber::AuthInfo,std::vector<unsigned char>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__tree_node<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_hint_unique_key_args<subscriber::AuthInfo,std::pair<subscriber::AuthInfo const,std::vector<unsigned char>> const&>(v5, (v5 + 8), v4 + 8, (v4 + 8));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_hint_unique_key_args<subscriber::AuthInfo,std::pair<subscriber::AuthInfo const,std::vector<unsigned char>> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__find_equal<subscriber::AuthInfo>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__construct_node<std::pair<subscriber::AuthInfo const,std::vector<unsigned char>> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__find_equal<subscriber::AuthInfo>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}
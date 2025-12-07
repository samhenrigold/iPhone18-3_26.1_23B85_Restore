void sub_1001674F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016716C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100167574(uint64_t a1)
{
  sub_10016716C(a1);

  operator delete();
}

uint64_t sub_1001675AC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100167720((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001676F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100167720(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 60;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 60;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100167904(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021FA10;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1001679B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001679CC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021FC30;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100167A7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100167A94(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021FE50;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100167B44(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_100167B5C(void *__dst, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_100050108(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v10;
  }

  v12 = *a4;
  v11 = a4[1];
  __dst[3] = a3;
  __dst[4] = v12;
  __dst[5] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 1);
  }

  __dst[6] = sub_1001959C4(v14, v15);
  __dst[7] = v16;
  __dst[8] = a5;
  return __dst;
}

void sub_100167C08(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_1001987C4(v1);
  _Unwind_Resume(a1);
}

void sub_100167C28(uint64_t a1, char *a2, uint64_t a3, uint8_t **a4)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *&v6 = AAS3DownloadStreamOpen(v5, 0, 0, 0);
  sub_100132BB4(&v9, &v6);
  sub_100132C94(&v8, &v9);
  sub_100132CC8(&v8, *a4, 0x20uLL);
  sub_100132BE8(&v9, &v8, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 0, &v7);
  sub_10014EE1C();
}

void sub_100167D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v8 = va_arg(va2, AEAContext);
  sub_100132BB8(va);
  sub_100132C98(va1);
  sub_100132BB8(va2);
  _Unwind_Resume(a1);
}

void sub_100167D48(void *a1, char **a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100192AE0(a1);
  *v7 = off_100220490;
  *(v7 + 3) = 0u;
  *(v7 + 5) = 0u;
  v9 = *a2;
  v10 = *(a4 + 8);
  v11[0] = *a4;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100167C28(a1, v9, v8, v11);
}

void sub_100167E40(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_100167EB8(void *a1)
{
  sub_100167F7C(a1);

  operator delete();
}

void *sub_100167F7C(void *a1)
{
  *a1 = off_100220490;
  v2 = a1[6];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_100168064(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F8A0;
  sub_1001680C0(a1 + 3, a2);
  return a1;
}

void *sub_1001680C0(void *a1, void *a2)
{
  v4 = sub_100192AE0(a1);
  *v4 = off_100220490;
  *(v4 + 3) = 0u;
  *(v4 + 5) = 0u;
  v6 = a2[3];
  v5 = a2[4];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[4];
    a1[3] = v6;
    a1[4] = v5;
    if (v7)
    {
      sub_10000E984(v7);
    }
  }

  else
  {
    a1[3] = v6;
    a1[4] = 0;
  }

  v9 = a2[5];
  v8 = a2[6];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a1[6];
  a1[5] = v9;
  a1[6] = v8;
  if (v10)
  {
    sub_10000E984(v10);
  }

  return a1;
}

void *sub_1001681F0(void *a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100220578;
  sub_100167B5C(a1 + 3, a2, *a3, a4, *a5);
  return a1;
}

void sub_100168274(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100220578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001682D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000E984(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_100168328(void *a1@<X0>, char a2@<W1>, const void **a3@<X8>)
{
  v5 = a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v14 = v5;
  v6 = [v5 activeNode];
  if (v6)
  {
    if ([v6 isCache])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 parent];
      if (v8)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }
    }

    if (*a3 != a3[1] || (a2 & 1) != 0 || !v7 || v7 == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 filePath];
        [objc_claimAutoreleasedReturnValue() path];
        v15 = [objc_claimAutoreleasedReturnValue() UTF8String];
        sub_100092720(&v16, &v15);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100050108(&__dst, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v16;
        }

        operator new();
      }

      v9 = v6;
      v10 = [v9 pluginName];
      sub_100010B0C(&__dst, [v10 UTF8String]);

      [v9 pluginParams];
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(150);
    *exception = &off_1002260F0;
    exception[1] = error_code;
    exception[2] = v13;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Stack with cache as top image cannot be opened for writing.";
  }
}

void sub_1001687CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_10005B238(&a11);

  _Unwind_Resume(a1);
}

void sub_100168914(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = [[NSFileHandle alloc] initWithFileDescriptor:a1 closeOnDealloc:0];
  v40 = 0;
  v41 = 0;
  v8 = [DiskImageGraph loadPlistDictFromFileHandle:v7 dict:&v41 error:&v40];
  v9 = v41;
  v10 = v40;
  v11 = v10;
  if ((v8 & 1) == 0)
  {
    v12 = [v10 domain];
    if ([v12 isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
    {
      v13 = [v11 code] == 167;

      if (v13)
      {
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    *&v38 = "create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
    *(&v38 + 1) = 34;
    v39 = 16;
    sub_100094DA8(buf, &v38);
    std::ostream::operator<<();
    sub_100094ED0(buf);
    exception = __cxa_allocate_exception(0x40uLL);
    v22 = [v11 code];
    if (v22 >= 0)
    {
      LODWORD(v23) = v22;
    }

    else
    {
      v23 = -v22;
    }

    v21 = std::generic_category();
    v20 = v23;
    v19 = "Failed to read file for pstack parsing";
LABEL_14:
    *exception = &off_1002260F0;
    exception[1] = v20;
    exception[2] = v21;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v19;
  }

  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
LABEL_13:
      exception = __cxa_allocate_exception(0x40uLL);
      v19 = "Cannot initialize pstack disk image without path.";
      v20 = 22;
      v21 = std::generic_category();
      goto LABEL_14;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_13;
  }

  v14 = [NSString stringWithUTF8String:a2];
  v15 = [NSURL fileURLWithPath:v14];

  v37 = v11;
  v16 = [[SerializedDiskImageGraph alloc] initWithGraphDB:v9 pstackURL:v15 error:&v37];
  v17 = v37;

  if (!v16)
  {
    v24 = *__error();
    v25 = sub_1000E95F0();
    if (v25)
    {
      *&v38 = 0;
      v27 = sub_1000E957C(v25, v26);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      v29 = [v17 description];
      if (v28)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      *buf = 68158210;
      *&buf[4] = 127;
      v43 = 2080;
      v44 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
      v45 = 2112;
      v46 = v29;
      v31 = _os_log_send_and_compose_impl(v30, &v38, 0, 0, &_mh_execute_header, v27, 16, "%.*s: Failed to create graph from plist: %@.", buf, 28);

      if (v31)
      {
        fprintf(__stderrp, "%s\n", v31);
        free(v31);
      }
    }

    else
    {
      v32 = sub_1000E957C(v25, v26);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [v17 description];
        *buf = 0x7F04100302;
        v43 = 2080;
        v44 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
        v45 = 2112;
        v46 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%.*s: Failed to create graph from plist: %@.", buf, 0x1Cu);
      }
    }

    *__error() = v24;
    v34 = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(161);
    *v34 = &off_1002260F0;
    v34[1] = error_code;
    v34[2] = v36;
    *(v34 + 24) = 0;
    *(v34 + 48) = 0;
    v34[7] = "Failed to create graph from plist.";
  }

  sub_100168328(v16, a3, a4);

  v11 = v17;
LABEL_12:
}

void sub_100168DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  __cxa_free_exception(v19);

  _Unwind_Resume(a1);
}

uint64_t *sub_100168ED4(uint64_t *a1)
{
  io_rings_unsubscribe_dest_object(*a1, *(a1 + 2));
  io_rings_release(*a1);
  return a1;
}

void sub_100168F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = io_rings_get_max_version(0, 0);
  v7[1] = 48;
  v8 = 0;
  v9 = sub_10016B844;
  v10 = 0;
  v11 = a3;
  v12 = a4;
  v6 = 0;
  io_rings_setup(256, v7, &v6);
}

uint64_t sub_100169130(uint64_t a1)
{
  io_rings_suspend(*(a1 + 48));
  io_rings_cancel(*(a1 + 48));
  std::mutex::~mutex((a1 + 136));
  std::condition_variable::~condition_variable((a1 + 88));
  sub_100168ED4((a1 + 56));
  sub_10016C350((a1 + 8), 0);
  sub_10016E3E0(a1 + 16);
  return a1;
}

double sub_10016919C(uint64_t a1)
{
  v1 = atomic_load((a1 + 76));
  v2 = atomic_load((a1 + 72));
  if (v2 - v1 < *(*(a1 + 8) + 8))
  {
    v3 = v2;
    while (1)
    {
      atomic_compare_exchange_strong((a1 + 72), &v3, v2 + 1);
      if (v3 == v2)
      {
        break;
      }

      v4 = atomic_load((a1 + 76));
      v5 = v3 - v4;
      v2 = v3;
      if (v5 >= *(*(a1 + 8) + 8))
      {
        return result;
      }
    }

    return io_rings_sqe_allocate(*(a1 + 48));
  }

  return result;
}

void sub_100169208(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cqe = io_rings_get_cqe(*(a1 + 48));
  if ((v5 & 0x100000000) != 0)
  {
    v7 = cqe;
    v8 = v5;
    add = atomic_fetch_add((a1 + 76), 1u);
    if (atomic_load((a1 + 80)))
    {
      v11 = atomic_load((a1 + 72));
      if (add + 1 == v11)
      {
        std::mutex::lock((a1 + 136));
        std::condition_variable::notify_all((a1 + 88));
        std::mutex::unlock((a1 + 136));
      }
    }

    *a2 = v7;
    *(a2 + 8) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v6;
}

void sub_1001692B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = off_100221028;
  v5[1] = a1;
  v5[3] = v5;
  sub_10005A748(a1, a2, a3, v5);
  sub_100073B14(v5);
  a1[35] = sub_1001694AC(a1);
  v4 = *(*(sub_10005A74C(a1) + 24) - 24);
  a1[36] = v4;
  a1[37] = (*(*v4 + 24))(v4);
  sub_100168F10((a1 + 38), *(a1[36] + 16), sub_100169534, a1);
}

void sub_100169450(_Unwind_Exception *a1)
{
  sub_100072AB4((v1 + 576));
  std::mutex::~mutex((v1 + 512));
  sub_10014FD8C((v1 + 504));
  sub_100169130(v1 + 304);
  sub_100073B14(v1 + 248);
  sub_1000739E8(v1 + 120);
  _Unwind_Resume(a1);
}

uint64_t sub_1001694AC(uint64_t a1)
{
  v1 = sub_10005A74C(a1);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 24) - *(v1 + 16)) >> 4) >= 2 && (v2 = *(v1 + 24), *(v2 - 96) == 2) && (*(**(v2 - 88) + 40))(*(v2 - 88)))
  {
    return *(v2 - 88);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100169540(void *a1, unsigned __int8 *a2)
{
  sub_10005A758(a1, v8);
  if (v8[1])
  {
    v4 = sub_1000BC46C(a1, v8, a2);
    if (*a2 - 1 > 1)
    {
      v5 = io_rings_return_status(a1[7], a2, v4, 0);
    }

    else
    {
      v5 = sub_100169604(a1, a2, v8, v4);
    }
  }

  else
  {
    v5 = io_rings_return_status(a1[7], a2, 0xFFFFFFF4, 0);
  }

  v6 = v5;
  sub_100074B3C(v8);
  return v6;
}

void sub_1001695F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100074B3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100169604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(*(*(a3 + 8) + 24) - 16);
  v10 = *(v7 + 16);
  v9 = v7 + 16;
  v8 = v10;
  if (v10 != *(*(*(*(a3 + 8) + 24) - 16) + 24))
  {
    if ((a4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_10016DA40(v9, v8);
  }

  v11 = *(a1 + 56);

  return io_rings_return_status(v11, a2, v4, 0);
}

void sub_100169D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_10000E984(a23);
  }

  v24 = *(v23 + 48);
  if (v24)
  {
    sub_10000E984(v24);
  }

  JUMPOUT(0x100169D74);
}

uint64_t sub_100169D84(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_1000BC1E8(a2))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100169E6C;
    v6[3] = &unk_1002205D8;
    v6[4] = a1;
    v6[5] = a2;
    sub_10014FF04((a1 + 624), v6);
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_10016A000;
    v5[3] = &unk_1002205F8;
    v5[4] = a1;
    v5[5] = a2;
    sub_10014FE54((a1 + 624), v5);
  }

  return 0;
}

void sub_100169E6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = atomic_load((v2 + 632));
  if (v3 == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(v2 + 56);

    io_rings_return_status(v5, v4, 0xFFFFFFA7, 0);
  }

  else
  {
    sub_100169F38(v2 + 304);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100169FEC;
    v7[3] = &unk_1002205B8;
    v6 = *(a1 + 40);
    v7[4] = v2;
    v7[5] = v6;
    sub_10014FE54((v2 + 624), v7);
  }
}

void sub_100169F38(uint64_t a1)
{
  v1 = (a1 + 72);
  v2 = atomic_load((a1 + 72));
  v3 = (a1 + 76);
  v4 = atomic_load((a1 + 76));
  if (v2 != v4)
  {
    atomic_fetch_add((a1 + 80), 1uLL);
    v8.__m_ = (a1 + 136);
    v8.__owns_ = 1;
    std::mutex::lock((a1 + 136));
    v6 = atomic_load(v1);
    for (i = atomic_load(v3); v6 != i; i = atomic_load((a1 + 76)))
    {
      std::condition_variable::wait((a1 + 88), &v8);
      v6 = atomic_load((a1 + 72));
    }

    if (v8.__owns_)
    {
      std::mutex::unlock(v8.__m_);
    }

    atomic_fetch_add((a1 + 80), 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t sub_100169FEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return sub_100169540(v1, *(a1 + 40));
}

uint64_t sub_10016A000(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return sub_100169540(v1, *(a1 + 40));
}

uint64_t sub_10016A014(uint64_t result)
{
  v1 = 2;
  atomic_compare_exchange_strong((result + 632), &v1, 0);
  if (v1 == 2)
  {
    v2 = result;
    sub_10014FF14((result + 624));
    io_rings_suspend(*(v2 + 352));
    *&v3 = "di_hybrid_subscriber_t::suspend()";
    *(&v3 + 1) = 31;
    v4 = 0;
    sub_10016A0E8(v5, &v3);
    sub_100001FE8(v6, "Plugin's ring suspended, ret code ", 34);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10016C69C(v5);
    return std::ios::~ios();
  }

  return result;
}

void sub_10016A0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10016A210(va);
  _Unwind_Resume(a1);
}

void *sub_10016A0E8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E61C(a1, a2);
  *a1 = off_1002208E0;
  a1[45] = &off_1002209E0;
  a1[46] = &off_100220A08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002208E0;
  a1[45] = off_100220968;
  a1[46] = off_100220990;
  return a1;
}

void sub_10016A1EC(_Unwind_Exception *a1)
{
  sub_10016C69C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016A210(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016C69C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10016A254(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong((result + 632), &v1, 2u);
  if (!v1)
  {
    v2 = result;
    sub_10014FF1C((result + 624));
    io_rings_resume(*(v2 + 352));
    *&v3 = "di_hybrid_subscriber_t::resume()";
    *(&v3 + 1) = 30;
    v4 = 0;
    sub_10016A32C(v5, &v3);
    sub_100001FE8(v6, "Plugin's ring resumed, ret code ", 32);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10016CE34(v5);
    return std::ios::~ios();
  }

  return result;
}

void sub_10016A318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10016A454(va);
  _Unwind_Resume(a1);
}

void *sub_10016A32C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E6E4(a1, a2);
  *a1 = off_100220B00;
  a1[45] = &off_100220C00;
  a1[46] = &off_100220C28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220B00;
  a1[45] = off_100220B88;
  a1[46] = off_100220BB0;
  return a1;
}

void sub_10016A430(_Unwind_Exception *a1)
{
  sub_10016CE34(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016A454(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016CE34(a1);
  std::ios::~ios();
  return a1;
}

void sub_10016A498(void *a1, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    sub_10016A598(a1, a2);
  }
}

void sub_10016A6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10016A6EC(uint64_t a1, uint64_t a2)
{
  sub_10016D474((a1 + 128), *(a1 + 136), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 4);
  result = sub_10016D820((a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
  *(a1 + 48) += *(a2 + 48);
  return result;
}

void sub_10016A750(uint64_t *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    *a6 = v8;
    a6[1] = v7;
    a6[2] = a1[2];
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v10 = a4;
  v11 = a2;
  v42 = a3 - 1;
  v43 = a4 * a5;
  do
  {
    v12 = *(v8 + 32) * v10;
    v13 = v12 / v11 * v11;
    v14 = a6[1];
    if (*a6 != v14)
    {
      v15 = *(v14 - 120) * a4 + *(v14 - 136) * v10;
      LODWORD(v16) = v12 - v15;
      v17 = v12 >= v15 && v15 + a3 > v13;
      if (v17 && (((*(v14 - 56) - *(v14 - 64)) >> 4) + ((*(v8 + 112) - *(v8 + 104)) >> 4) + 1) < 0x400)
      {
        goto LABEL_26;
      }

      v18 = (v14 - 168);
      v19 = (v42 + v15) / a3 * a3;
      if (v43 < v19)
      {
        LODWORD(v19) = v43;
      }

      sub_10016A498(v18, v19 - v15, a4);
    }

    memset(v53, 0, sizeof(v53));
    *__p = 0u;
    v21 = *(v8 + 152);
    v20 = *(v8 + 160);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    *&v54 = v21;
    *(&v54 + 1) = v20;
    v23 = *(v8 + 88);
    v22 = *(v8 + 96);
    v24 = *(v8 + 16);
    v45 = *v8;
    v46 = v24;
    v26 = *(v8 + 48);
    v25 = *(v8 + 64);
    v27 = *(v8 + 32);
    v50 = *(v8 + 80);
    v48 = v26;
    v49 = v25;
    v47 = v27;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    *&v51 = v23;
    *(&v51 + 1) = v22;
    LODWORD(v48) = 0;
    *&v47 = v13 / v10;
    v28 = a6[1];
    if (v28 >= a6[2])
    {
      v33 = sub_100083D5C(a6, &v45);
      v34 = *(&v54 + 1);
      a6[1] = v33;
      if (v34)
      {
        sub_10000E984(v34);
      }
    }

    else
    {
      v29 = v46;
      *v28 = v45;
      *(v28 + 16) = v29;
      v30 = v47;
      v31 = v48;
      v32 = v49;
      *(v28 + 80) = v50;
      *(v28 + 48) = v31;
      *(v28 + 64) = v32;
      *(v28 + 32) = v30;
      *(v28 + 88) = v51;
      v51 = 0uLL;
      *(v28 + 104) = 0;
      *(v28 + 112) = 0;
      *(v28 + 120) = 0;
      *(v28 + 128) = 0;
      *(v28 + 104) = *__p;
      *(v28 + 120) = v53[0];
      __p[0] = 0;
      __p[1] = 0;
      v53[0] = 0;
      *(v28 + 136) = 0;
      *(v28 + 144) = 0;
      *(v28 + 128) = *&v53[1];
      *(v28 + 144) = v53[3];
      memset(&v53[1], 0, 24);
      *(v28 + 152) = v54;
      v54 = 0uLL;
      a6[1] = v28 + 168;
    }

    v55 = &v53[1];
    sub_100015CD4(&v55);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v51 + 1))
    {
      sub_10000E984(*(&v51 + 1));
    }

    v16 = v12 % v11;
    v14 = a6[1];
LABEL_26:
    v35 = v14 - 168;
    sub_10016A498((v14 - 168), v16, a4);
    sub_10016A6EC(v35, v8);
    v8 += 168;
  }

  while (v8 != v7);
  v36 = a6[1];
  v37 = (v36 - 168);
  v38 = *(v36 - 120) * a4 + *(v36 - 136) * v10;
  v39 = (v42 + v38) / a3 * a3;
  if (v43 < v39)
  {
    LODWORD(v39) = v43;
  }

  sub_10016A498(v37, v39 - v38, a4);
  v40 = *a6;
  v41 = a6[1];
  while (v40 != v41)
  {
    if (*v40 == 2)
    {
      *(v40 + 24) = *(v40 + 104);
    }

    v40 += 168;
  }
}

void sub_10016AA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10007AC90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10016AA7C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = v8 + v7;
  if (v6 == v8 + v7)
  {
    sub_100170708(a1);
    v7 = a1[4];
    v8 = a1[5];
    v5 = a1[1];
    v9 = v7 + v8;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v8 + 1;
  v10 = v7 + v8 + 1;
  v11 = a1[1];
  v12 = (v11 + 8 * (v10 >> 9));
  v13 = *v12 + 8 * (v10 & 0x1FF);
  if (a1[2] == v11)
  {
    v13 = 0;
  }

  if (v13 == *v12)
  {
    v13 = *(v12 - 1) + 4096;
  }

  return v13 - 8;
}

void sub_10016AB3C(uint64_t a1)
{
  if (*(a1 + 616))
  {
    std::mutex::lock((a1 + 512));
    for (i = 0; *(a1 + 616); --i)
    {
      sub_10016919C(a1 + 304);
      if (!v3)
      {
        break;
      }

      v4 = *(*(*(a1 + 584) + ((*(a1 + 608) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 608) & 0x1FFLL));
      v5 = *(v4 + 32);
      v6 = *(v4 + 48);
      v7 = *(v4 + 64);
      *(v3 + 80) = *(v4 + 80);
      *(v3 + 48) = v6;
      *(v3 + 64) = v7;
      *(v3 + 32) = v5;
      v8 = *(v4 + 16);
      *v3 = *v4;
      *(v3 + 16) = v8;
      *(v3 + 8) = *(a1 + 368);
      *(a1 + 608) = vaddq_s64(*(a1 + 608), xmmword_1001BCEE0);
      sub_100073AB4(a1 + 576, 1);
    }

    std::mutex::unlock((a1 + 512));
    if (i)
    {
      v9 = *(a1 + 352);

      io_rings_enter(v9, -i, 0);
    }
  }
}

uint64_t sub_10016AC50(uint64_t result)
{
  v1 = atomic_load((result + 632));
  if (v1 != 1)
  {
    v2 = result;
    if (atomic_exchange((result + 632), 1u) == 2)
    {
      sub_10014FF14((result + 624));
    }

    sub_10014FF1C((v2 + 624));
    sub_10014FF0C((v2 + 624), &stru_100220638);
    if (io_rings_cancel(*(v2 + 352)) < 0)
    {
      goto LABEL_32;
    }

    std::mutex::lock((v2 + 512));
    v3 = *(v2 + 584);
    v4 = *(v2 + 592);
    if (v4 == v3)
    {
      v8 = (v2 + 616);
    }

    else
    {
      v5 = *(v2 + 608);
      v6 = &v3[v5 >> 9];
      v7 = (*v6 + 8 * (v5 & 0x1FF));
      v8 = (v2 + 616);
      v9 = *(v3 + (((*(v2 + 616) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 616) + v5) & 0x1FF);
      if (v7 != v9)
      {
        do
        {
          v10 = *v7;
          v21 = 0u;
          memset(v22, 0, sizeof(v22));
          memset(v20, 0, sizeof(v20));
          *(v10 + 80) = 0;
          *(v10 + 48) = 0u;
          *(v10 + 64) = 0u;
          *(v10 + 16) = 0u;
          *(v10 + 32) = 0u;
          *v10 = 0u;
          v11 = *(&v20[5] + 8);
          *(&v20[5] + 1) = 0;
          *&v20[6] = 0;
          v12 = *(v10 + 96);
          *(v10 + 88) = v11;
          if (v12)
          {
            sub_10000E984(v12);
          }

          v13 = *(v10 + 104);
          if (v13)
          {
            *(v10 + 112) = v13;
            operator delete(v13);
            *(v10 + 104) = 0;
            *(v10 + 112) = 0;
            *(v10 + 120) = 0;
          }

          *(v10 + 104) = *(&v20[6] + 8);
          *(v10 + 120) = *(&v20[7] + 1);
          memset(&v20[6] + 8, 0, 24);
          sub_1000BB5E4((v10 + 128));
          *(v10 + 128) = v21;
          *(v10 + 144) = v22[0];
          v21 = 0uLL;
          memset(v22, 0, sizeof(v22));
          v14 = *(v10 + 160);
          *(v10 + 152) = *&v22[1];
          if (v14)
          {
            sub_10000E984(v14);
          }

          if (v22[2])
          {
            sub_10000E984(v22[2]);
          }

          *&v18 = &v21;
          sub_100015CD4(&v18);
          if (*(&v20[6] + 1))
          {
            *&v20[7] = *(&v20[6] + 1);
            operator delete(*(&v20[6] + 1));
          }

          if (*&v20[6])
          {
            sub_10000E984(*&v20[6]);
          }

          if (++v7 - *v6 == 4096)
          {
            v15 = v6[1];
            ++v6;
            v7 = v15;
          }
        }

        while (v7 != v9);
        v3 = *(v2 + 584);
        v4 = *(v2 + 592);
        v8 = (v2 + 616);
      }
    }

    *v8 = 0;
    v16 = v4 - v3;
    if (v16 >= 3)
    {
      do
      {
        operator delete(*v3);
        v3 = (*(v2 + 584) + 8);
        *(v2 + 584) = v3;
        v16 = (*(v2 + 592) - v3) >> 3;
      }

      while (v16 > 2);
    }

    if (v16 == 1)
    {
      v17 = 256;
    }

    else
    {
      if (v16 != 2)
      {
LABEL_31:
        std::mutex::unlock((v2 + 512));
LABEL_32:
        *&v18 = "di_hybrid_subscriber_t::cancel()";
        *(&v18 + 1) = 30;
        v19 = 0;
        sub_10016AF58(v20, &v18);
        sub_100001FE8(v23, "Plugin's async ring cancelled, ret code ", 40);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10016DE00(v20);
        return std::ios::~ios();
      }

      v17 = 512;
    }

    *(v2 + 608) = v17;
    goto LABEL_31;
  }

  return result;
}

void sub_10016AF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10016B080(va);
  _Unwind_Resume(a1);
}

void *sub_10016AF58(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001708DC(a1, a2);
  *a1 = off_100220D80;
  a1[45] = &off_100220E80;
  a1[46] = &off_100220EA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220D80;
  a1[45] = off_100220E08;
  a1[46] = off_100220E30;
  return a1;
}

void sub_10016B05C(_Unwind_Exception *a1)
{
  sub_10016DE00(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016B080(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016DE00(a1);
  std::ios::~ios();
  return a1;
}

void sub_10016B0C4(uint64_t a1)
{
  v2 = *(a1 + 280) != 0;
  sub_100169208(a1 + 304, &v18);
  v3 = v19;
  if (v19)
  {
    v4 = v18;
    do
    {
      v5 = *(v4 + 152);
      v6 = *(v4 + 160);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = _NSConcreteStackBlock;
        v9 = 1174405120;
        v10 = sub_10016B2C0;
        v11 = &unk_100220658;
        v12 = a1;
        v13 = v4;
        v14 = v4;
        v15 = v3;
        v16 = v5;
        v17 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v8 = _NSConcreteStackBlock;
        v9 = 1174405120;
        v10 = sub_10016B2C0;
        v11 = &unk_100220658;
        v12 = a1;
        v13 = v4;
        v14 = v4;
        v15 = v3;
        v16 = v5;
        v17 = 0;
      }

      if (*(a1 + 280) || *(v5 + 104) == 1)
      {
        sub_10014FE54((a1 + 504), &v8);
        v2 = 1;
      }

      else
      {
        v10(&v8);
      }

      if (v17)
      {
        sub_10000E984(v17);
      }

      if (v6)
      {
        sub_10000E984(v6);
      }

      sub_100169208(a1 + 304, &v18);
      v4 = v18;
      v3 = v19;
    }

    while ((v19 & 1) != 0);
  }

  if (v2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_10016B83C;
    v7[3] = &unk_100220688;
    v7[4] = a1;
    sub_10014FE54((a1 + 504), v7);
  }

  else
  {
    sub_10016AB3C(a1);
  }
}

void sub_10016B29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_10000E984(a24);
  }

  if (v24)
  {
    sub_10000E984(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016B2C0(uint64_t a1)
{
  v2 = sub_10016B3D0(*(a1 + 32), *(a1 + 40), *(a1 + 56));
  if (v2)
  {
    v3 = 0;
    atomic_compare_exchange_strong((*(a1 + 72) + 16), &v3, v2);
  }

  v4 = *(a1 + 40);
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = *(v4 + 96);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = *(v4 + 104);
  if (v6)
  {
    *(v4 + 112) = v6;
    operator delete(v6);
  }

  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1000BB5E4((v4 + 128));
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = *(v4 + 160);
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  if (v7)
  {
    sub_10000E984(v7);
  }

  v10 = v8;
  sub_100015CD4(&v10);
}

uint64_t sub_10016B3D0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 48);
  if (a3 == v3)
  {
    v5 = *(a1 + 280);
    if (v5)
    {
      v33 = *(a2 + 32);
      v6 = *(a1 + 296);
      v7 = sub_100195B38();
      v8 = v7;
      v10 = *(a2 + 104);
      v9 = *(a2 + 112);
      v11 = v44;
      __p = v44;
      v43 = xmmword_1001BABD0;
      v12 = (v9 - v10 - 16) >> 4;
      if (v9 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12 + 1;
      }

      if (v13 < 6)
      {
        if (v10 == v9)
        {
          v13 = 0;
        }

        else
        {
          v23 = v12 + 1;
          do
          {
            v24 = *v10;
            v25 = v7[1];
            if (v25)
            {
              atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
            }

            v26 = *(v10 + 1);
            *v11 = v24;
            v11[1] = v25;
            v11[2] = v26;
            v10 += 16;
            v11 += 3;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        if (v13 >= 0x555555555555556)
        {
          sub_100012CFC("get_next_capacity, allocator's max size reached");
        }

        v14 = operator new(24 * v13);
        v15 = v14;
        if (__p)
        {
          v31 = v14;
          v32 = v5;
          v16 = v43;
          if (v43)
          {
            v17 = (__p + 8);
            do
            {
              if (*v17)
              {
                sub_10000E984(*v17);
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          *&v43 = 0;
          v15 = v31;
          v5 = v32;
          if (v44 != __p)
          {
            operator delete(__p);
          }
        }

        *(&v43 + 1) = v13;
        __p = v15;
        *&v43 = 0;
        if (v10 == v9)
        {
          v22 = 0;
          v18 = v15;
        }

        else
        {
          v18 = v15;
          do
          {
            v19 = *v10;
            v20 = v8[1];
            if (v20)
            {
              atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
            }

            v21 = *(v10 + 1);
            *v18 = v19;
            *(v18 + 1) = v20;
            *(v18 + 2) = v21;
            v10 += 16;
            v18 += 24;
          }

          while (v10 != v9);
          v22 = v43;
        }

        v13 = v22 - 0x5555555555555555 * ((v18 - v15) >> 3);
      }

      *&v43 = v13;
      v45 = &v47;
      v46 = xmmword_1001BABD0;
      sub_100013068(&v45, v13);
      v37 = __p;
      v34 = __p + 24 * v13;
      v41 = v45;
      v40 = &v45[8 * v46];
      sub_10002E0A8(v48, &v37, &v34, &v41, &v40, v6 * v33, v6 * v3, 1);
      v27 = (*(*v5 + 144))(v5);
      sub_10002E310(v48, &v37);
      sub_10002DF68(v48, &v34);
      v28 = sub_10000FEB4(v27);
      if (v36)
      {
        sub_10000E984(v36);
      }

      if (v35)
      {
        sub_10000E984(v35);
      }

      if (v39)
      {
        sub_10000E984(v39);
      }

      if (v38)
      {
        sub_10000E984(v38);
      }

      if (v27)
      {
        (*(*v27 + 40))(v27);
      }

      if (v28 < 0)
      {
        v5 = v28;
      }

      else
      {
        v5 = 0;
      }

      sub_1000157A4(&__p);
    }

    v29 = *(a2 + 88);
    if (v29)
    {
      sub_100147780(v29 + 248);
    }
  }

  else if ((a3 & 0x80000000) != 0)
  {
    return a3;
  }

  else
  {
    return 4294967291;
  }

  return v5;
}

void sub_10016B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_10000FF88(&a15);
  sub_10000FF88(&a43);
  if (v43)
  {
    (*(*v43 + 40))(v43);
  }

  sub_1000157A4(&STACK[0x200]);
  _Unwind_Resume(a1);
}

uint64_t sub_10016B810(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10016B82C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    sub_10000E984(v1);
  }
}

uint64_t sub_10016B844(uint64_t a1)
{
  io_rings_cq_get_overruns(a1);
  *&v3 = "di_plugin_cq_event_callback(io_uhandle_t, void *, enum io_rings_event_type_t, struct io_rings_event_type_data_t *)";
  *(&v3 + 1) = 27;
  v4 = 16;
  sub_10016B904(v5, &v3);
  std::ostream::operator<<();
  sub_100001FE8(v6, " overrun events occurred in the plugin's ring!", 46);
  std::ostream::~ostream();
  sub_10016BB38(v5);
  std::ios::~ios();
  return io_rings_cq_clear_overruns(a1);
}

void sub_10016B8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10016BA2C(va);
  _Unwind_Resume(a1);
}

void *sub_10016B904(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016BA70(a1, a2);
  *a1 = off_1002206C0;
  a1[45] = &off_1002207C0;
  a1[46] = &off_1002207E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002206C0;
  a1[45] = off_100220748;
  a1[46] = off_100220770;
  return a1;
}

void sub_10016BA08(_Unwind_Exception *a1)
{
  sub_10016BB38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016BA2C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016BB38(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10016BA70(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100220858;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10016BB20(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016BB38(uint64_t a1)
{
  *a1 = &off_100220858;
  sub_10016BF78(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10016BCA4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016BB38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016BD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016BD48(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10016BDB4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016BB38(v1);

  return std::ios::~ios();
}

void sub_10016BE00(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016BB38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016BE64(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016BB38(v1);

  return std::ios::~ios();
}

void sub_10016BEC4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016BB38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016BF40(uint64_t a1)
{
  sub_10016BB38(a1);

  operator delete();
}

uint64_t sub_10016BF78(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10016C0EC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016C0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10016C0EC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 57;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 57;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016C2D0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10016C350(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_10016C380((result + 1), v3);
  }

  return result;
}

uint64_t sub_10016C380(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10016C404(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016C69C(v1);

  return std::ios::~ios();
}

uint64_t sub_10016C450(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016C69C(v1);

  return std::ios::~ios();
}

void sub_10016C4B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016C69C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016C518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016C554(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10016C5C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016C69C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016C624(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016C69C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016C69C(uint64_t a1)
{
  *a1 = &off_100220A78;
  sub_10016C808(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10016C808(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10016C9B8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016C954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016C980(uint64_t a1)
{
  sub_10016C69C(a1);

  operator delete();
}

int *sub_10016C9B8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 250;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 250;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016CB9C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016CE34(v1);

  return std::ios::~ios();
}

uint64_t sub_10016CBE8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016CE34(v1);

  return std::ios::~ios();
}

void sub_10016CC48(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016CE34(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016CCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016CCEC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10016CD58(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016CE34(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016CDBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016CE34(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016CE34(uint64_t a1)
{
  *a1 = &off_100220C98;
  sub_10016CFA0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10016CFA0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10016D150((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016D0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016D118(uint64_t a1)
{
  sub_10016CE34(a1);

  operator delete();
}

int *sub_10016D150(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 259;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 259;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10016D39C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_10016D3DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10016D414(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_10016D434(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100220D58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

char *sub_10016D474(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_10016D640(a1, a2, a1[1], &a2[16 * a5]);
        v18 = (v7 + 16 * a5);
      }

      else
      {
        a1[1] = sub_10016D6A4(a1, v16 + a3, a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_10016D640(a1, v5, v10, &v5[16 * a5]);
        v18 = (v16 + v7);
      }

      sub_10016D7B4(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_100015B70();
    }

    v13 = &a2[-v11];
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      sub_100085E2C(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = 16 * a5;
    v21 = v19;
    v22 = (v19 + 16 * a5);
    do
    {
      *v21++ = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      v7 += 16;
      v20 -= 16;
    }

    while (v20);
    memcpy(v22, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v22[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_10007AB30(v30);
    return v19;
  }

  return v5;
}

void *sub_10016D640(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      v9 += 16;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10016D750(&v11, a2, v7, v6);
}

_OWORD *sub_10016D6A4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = a4;
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    do
    {
      *v4++ = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      a2 += 16;
    }

    while (a2 != a3);
    v9 = v4;
  }

  v7 = 1;
  sub_10016D718(v6);
  return v4;
}

uint64_t sub_10016D718(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100015C90(a1);
  }

  return a1;
}

void *sub_10016D750(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_10000E984(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *sub_10016D7B4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_10000E984(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

char *sub_10016D820(void *a1, char *__src, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 4)
  {
    v16 = (v10 - __src) >> 4;
    if (v16 >= a5)
    {
      v20 = &__src[16 * a5];
      v21 = &v10[-16 * a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21;
        v21 += 16;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[16 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25 = v26;
        v25 += 16;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
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
        v38 = &__src[16 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39;
          v39 += 16;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[16 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42 = v43;
            v42 += 16;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v10[-*a1] >> 4);
  if (v12 >> 60)
  {
    sub_100015B70();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 3 > v12)
  {
    v12 = v14 >> 3;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF0)
  {
    v15 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    sub_100083D14(a1, v15);
  }

  v27 = 16 * (v13 >> 4);
  v28 = 16 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 16;
  }

  while (v28);
  memcpy((v27 + 16 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 16 * a5 + a1[1] - __src;
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

void sub_10016DA40(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_100084050(a1, i))
  {
    i -= 168;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_10016DA94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 20) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *a5;
  *(a1 + 40) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 48) = 0;
  v7 = a1 + 48;
  *(v7 + 56) = 0;
  if (*(a6 + 56) == 1)
  {
    sub_10009386C(v7, a6);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_10016DB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10007AC90(va);
  _Unwind_Resume(a1);
}

void sub_10016DB28(uint64_t *a1)
{
  if (*a1)
  {
    sub_10016DA40(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10016DB68(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016DE00(v1);

  return std::ios::~ios();
}

uint64_t sub_10016DBB4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016DE00(v1);

  return std::ios::~ios();
}

void sub_10016DC14(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016DE00(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016DC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016DCB8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10016DD24(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016DE00(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016DD88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016DE00(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016DE00(uint64_t a1)
{
  *a1 = &off_100220F18;
  sub_10016DF6C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10016DF6C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10016E11C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016E0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016E0E4(uint64_t a1)
{
  sub_10016DE00(a1);

  operator delete();
}

int *sub_10016E11C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 610;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 610;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016E394(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016E3E0(uint64_t a1)
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

uint64_t sub_10016E4D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100221028;
  a2[1] = v2;
  return result;
}

uint64_t sub_10016E55C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016E61C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100220A78;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10016E6CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E6E4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100220C98;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10016E794(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10016E7AC(uint64_t a1)
{
  v2 = atomic_load((a1 + 16));
  if (!v2)
  {
    v2 = *(a1 + 20);
  }

  io_rings_return_status(*(*a1 + 56), *(a1 + 8), v2, 0);
  v3 = (a1 + 24);
  sub_10007AC90(&v3);
  operator delete();
}

void sub_10016E820(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10016E858(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = atomic_load((v1 + 16));
  if (!v2)
  {
    v2 = *(v1 + 20);
  }

  io_rings_return_status(*(*v1 + 56), *(v1 + 8), v2, 0);
  v3 = (v1 + 24);
  sub_10007AC90(&v3);
  operator delete();
}

uint64_t sub_10016E8CC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10016E998(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100221108;
  sub_10016EADC(a1 + 3, a2, a3, a4, *a5);
}

void sub_10016EA18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100221108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10016EA6C(uint64_t a1)
{
  v5 = (a1 + 520);
  sub_100015CD4(&v5);
  v2 = *(a1 + 496);
  if (v2)
  {
    *(a1 + 504) = v2;
    operator delete(v2);
  }

  sub_10003172C(a1 + 272);
  sub_100033424(a1 + 240);
  v3 = *(a1 + 200);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_100030E70(a1 + 24);
}

void sub_10016EADC(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v9[0] = *a2;
  v9[1] = v8;
  v10 = *(a2 + 8);
  sub_100030254(&v11, a2 + 40);
  sub_10016ED58(a1, v9, a3, a5);
}

void sub_10016ECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 496);
  sub_100015CD4(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 480) = v12;
    operator delete(v12);
  }

  sub_10016F2F4(v9);
  _Unwind_Resume(a1);
}

void sub_10016ED58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10016F33C(a2, &v30);
  if (v32 == 3)
  {
    sub_1001460D4(v22, a4 == 0, v33, v35);
    sub_100146188(v28, v22);
    v29 = 2;
    sub_100146248(v22);
  }

  else if (v32 == 2)
  {
    sub_100145D00(v22, a4 == 0, v33, v34, v35);
    sub_100145E3C(v28, v22);
    v29 = 1;
    v22[0] = off_10021B3A0;
    sub_100030D98(&v25);
    v22[0] = off_1001F8FA0;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_100146500(&v20, v34);
    sub_100145774(v22, a4 == 0, v33, &v20, v35);
    sub_1001458C8(v28, v22);
    v29 = 0;
    v22[0] = off_10021B378;
    sub_100030CF8(v26);
    v8 = v25;
    v25 = 0;
    if (v8)
    {
      operator delete[]();
    }

    v22[0] = off_1001F8FA0;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v9 = v20;
    v20 = 0;
    if (v9)
    {
      operator delete[]();
    }
  }

  v10 = *(sub_10016F290(a2) + 22);
  sub_100030DC4(a1, v28);
  a1[19] = v10;
  sub_100030E70(v28);
  if (v31)
  {
    sub_10000E984(v31);
  }

  sub_100192AE0(a1 + 20);
  a1[20] = off_1001FC8A8;
  a1[24] = 0;
  a1[25] = 0;
  a1[23] = -1;
  v11 = sub_10016F290(a2)[12];
  a1[26] = v11 - sub_10016F290(a2)[3];
  a1[27] = off_100221158;
  a1[28] = a1;
  a1[30] = a1 + 27;
  v12 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v12;
  v18 = *(a2 + 32);
  sub_100030254(&v19, a2 + 40);
  sub_100033298(v27, (a1 + 27));
  sub_100033298(v22, v27);
  sub_10016F5EC(v28, v17, v22);
  sub_100033424(v22);
  v13 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v13;
  v15 = *(a3 + 32);
  sub_100030254(&v16, a3 + 40);
  sub_100033298(v21, (a1 + 27));
  sub_100033298(&v30, v21);
  sub_10016F5EC(v22, v14, &v30);
  sub_100033424(&v30);
  sub_10016F654((a1 + 31), a1, (a1 + 20), v28, v22, a4, 0);
}

void sub_10016F14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_100030C64(&a54);
  if (a49)
  {
    operator delete[]();
  }

  v56 = *(v54 - 176);
  if (v56)
  {
    sub_10000E984(v56);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_10016F290(uint64_t **a1)
{
  sub_10016F33C(a1, &v3);
  sub_10002F0BC((a1 + 5), &v3);
  if (v4)
  {
    sub_10000E984(v4);
  }

  return a1 + 5;
}

void sub_10016F2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016F2F4(uint64_t a1)
{
  sub_10003172C(a1 + 248);
  sub_100033424(a1 + 216);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100030E70(a1);
  return a1;
}

void sub_10016F33C(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v6 = **a1;
  v5 = (*a1)[1];
  if (v5 >= a1[2])
  {
    v7 = a1[2];
  }

  else
  {
    v7 = (*a1)[1];
  }

  v8 = *(sub_100195B38() + 1);
  v13 = v6;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v7;
  v16 = v4;
  v17 = v5;
  v19 = 0;
  v20 = 0;
  v18 = 1 << *(a1 + 8);
  sub_100030254(a2, &v13);
  if (v14)
  {
    sub_10000E984(v14);
  }

  v9 = a1[3];
  if (v9)
  {
    if (*(a2 + 104) == 1)
    {
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      *(a2 + 96) = v9[6];
      *(a2 + 64) = v11;
      *(a2 + 80) = v12;
      *(a2 + 48) = v10;
    }

    else
    {
      sub_10009386C(a2 + 48, v9);
      *(a2 + 104) = 1;
    }
  }
}

void sub_10016F420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_10000E984(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016F448(uint64_t a1)
{
  sub_100033424(a1 + 152);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

uint64_t sub_10016F4F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100221158;
  a2[1] = v2;
  return result;
}

void sub_10016F51C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  sub_100030254(&v5, a2);
  v7 += *(v4 + 208);
  if (v8 == 1)
  {
    v8 = 0;
  }

  sub_100030254(a3, &v5);
  if (v6)
  {
    sub_10000E984(v6);
  }
}

void sub_10016F588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016F5A0(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_1002211B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016F5EC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v5;
  *(a1 + 16) = v6;
  sub_100030254(a1 + 40, a2 + 40);
  sub_100033298(a1 + 152, a3);
  return a1;
}

void sub_10016F63C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016F654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v14 = vm_page_size;
  v15 = *(a2 + 152);
  sub_100148204(a6, v20);
  v16 = sub_10016FB98(a4, a5, v14, v15, v20);
  sub_100147DC0(a1, v16, vm_page_size);
  sub_1000320D4(v20);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  v17 = *(a4 + 16);
  v26[0] = *a4;
  v26[1] = v17;
  v27 = *(a4 + 32);
  sub_100030254(&v28, a4 + 40);
  sub_100033298(v30, a4 + 152);
  v18 = *(a5 + 16);
  v21[0] = *a5;
  v21[1] = v18;
  v22 = *(a5 + 32);
  sub_100030254(&v23, a5 + 40);
  sub_100033298(v25, a5 + 152);
  v19 = sub_10016FF04(v26, v21);
  sub_100033424(v25);
  if (v24)
  {
    sub_10000E984(v24);
  }

  sub_100033424(v30);
  if (v29)
  {
    sub_10000E984(v29);
  }

  *(a1 + 96) = v19;
  is_mul_ok(3 * v19, 0x18uLL);
  operator new[]();
}

void sub_10016FA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100032234(v19 + 32);
  sub_1000320D4(va);
  sub_1000323C4((v18 + 200));
  sub_100032FF4((v18 + 176));
  sub_100031E48((v18 + 152));
  sub_1000330A8((v18 + 128));
  sub_100031E9C((v18 + 104));
  sub_100015888(v18, 0);
  sub_10001590C(v18 + 8);
  _Unwind_Resume(a1);
}

void sub_10016FB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1000320D4(va);
  JUMPOUT(0x10016FB80);
}

uint64_t sub_10016FB98(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*a1 == *a2 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 0;
  }

  sub_1001703CC(a1);
  sub_100030464(v28, &v42);
  if (v43)
  {
    sub_10000E984(v43);
  }

  v11 = v30 / a3 * a3;
  sub_100170460(&v42, a1, a2);
  sub_1001702A4(&v42, &v35);
  sub_100170310(&v42, v31);
  v10 = 0;
  v12 = v35;
  while (v12 != v31[0] || v36 != v31[1] || v38 != v31[3] || v39 != v32)
  {
    sub_1001703CC(&v35);
    sub_100030254(v22, &v26);
    v13 = *(a5 + 24);
    if (!v13)
    {
      sub_10001583C();
    }

    if ((*(*v13 + 48))(v13, v22))
    {
      v14 = v25 - v11 + v24;
      if (v14 % a3)
      {
        v15 = a3 - v14 % a3;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 + v14;
      v10 += v16;
      v11 += v16;
    }

    else
    {
      v17 = a3;
      if (!(v25 % a4))
      {
        if (!(v24 % a4))
        {
          v11 = v24 + v25;
          goto LABEL_25;
        }

        v17 = 0;
      }

      v18 = v17 + v10;
      if ((v24 + v25) % a4)
      {
        v19 = a3;
      }

      else
      {
        v19 = 0;
      }

      v10 = v18 + v19;
      v11 = (a4 - 1 + v24 + v25) / a4 * a4;
    }

LABEL_25:
    if (v23)
    {
      sub_10000E984(v23);
    }

    if (v27)
    {
      sub_10000E984(v27);
    }

    v20 = *(v35 + 8);
    if (v20 >= v37)
    {
      v20 = v37;
    }

    v37 -= v20;
    v12 = v35 + 16;
    v36 += v20;
    v35 += 16;
  }

  sub_100033424(&v34);
  if (v33)
  {
    sub_10000E984(v33);
  }

  sub_100033424(&v41);
  if (v40)
  {
    sub_10000E984(v40);
  }

  sub_100033424(&v47);
  if (v46)
  {
    sub_10000E984(v46);
  }

  sub_100033424(&v45);
  if (v44)
  {
    sub_10000E984(v44);
  }

  if (v29)
  {
    sub_10000E984(v29);
  }

  return v10;
}

void sub_10016FE90(_Unwind_Exception *a1)
{
  if (STACK[0x2D0])
  {
    sub_10000E984(STACK[0x2D0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10016FF04(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  v22 = *(a1 + 8);
  sub_100030254(&v23, a1 + 40);
  sub_100033298(v25, a1 + 152);
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 8);
  sub_100030254(&v17, a2 + 40);
  sub_100033298(v19, a2 + 152);
  v5 = *(&v20 + 1);
  if (v20 == v14 && __PAIR128__(*(&v21 + 1), *(&v20 + 1)) == __PAIR128__(*(&v15 + 1), *(&v14 + 1)) && v22 == v16)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v21;
    v8 = v20 + 16;
    while (1)
    {
      v9 = v8;
      ++v6;
      v10 = *(v8 - 8);
      if (v10 >= v7)
      {
        v10 = v7;
      }

      v5 += v10;
      v7 -= v10;
      *&v21 = v7;
      v8 = v9 + 16;
      if (v9 == v14)
      {
        v11 = v5 == *(&v14 + 1) && *(&v21 + 1) == *(&v15 + 1);
        if (v11 && v22 == v16)
        {
          break;
        }
      }
    }

    *&v20 = v9;
    *(&v20 + 1) = v5;
  }

  sub_100033424(v19);
  if (v18)
  {
    sub_10000E984(v18);
  }

  sub_100033424(v25);
  if (v24)
  {
    sub_10000E984(v24);
  }

  return v6;
}

void sub_100170078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a15)
  {
    sub_10000E984(a15);
  }

  sub_10016F448(&a33);
  _Unwind_Resume(a1);
}

void sub_1001700BC(void *a1, __int128 *a2, __int128 *a3)
{
  sub_100170460(v23, a2, a3);
  sub_1001702A4(v23, &v16);
  sub_100170310(v23, v12);
  v4 = v16;
  while (v4 != v12[0] || v17 != v12[1] || v19 != v12[3] || v20 != v13)
  {
    sub_1001703CC(&v16);
    sub_100030254(&v7, &v10);
    v5 = sub_100147EF8(a1, &v7, 0);
    if (v5 != v9)
    {
      sub_100148248(a1, &v7, v5, 0);
    }

    if (v8)
    {
      sub_10000E984(v8);
    }

    if (v11)
    {
      sub_10000E984(v11);
    }

    v6 = *(v16 + 8);
    if (v6 >= v18)
    {
      v6 = v18;
    }

    v17 += v6;
    v18 -= v6;
    v4 = v16 + 16;
    v16 += 16;
  }

  sub_100033424(&v15);
  if (v14)
  {
    sub_10000E984(v14);
  }

  sub_100033424(&v22);
  if (v21)
  {
    sub_10000E984(v21);
  }

  sub_100033424(&v27);
  if (v26)
  {
    sub_10000E984(v26);
  }

  sub_100033424(&v25);
  if (v24)
  {
    sub_10000E984(v24);
  }
}

void sub_100170258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_10016F448(&a38);
  sub_10016F448(&a61);
  sub_100170380(&STACK[0x258]);
  _Unwind_Resume(a1);
}

uint64_t sub_1001702A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  sub_100030254(a2 + 40, a1 + 40);
  return sub_100033298(a2 + 152, a1 + 152);
}

void sub_1001702F0(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_100001A14(a1);
}

uint64_t sub_100170310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 200);
  *a2 = *(a1 + 184);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 216);
  sub_100030254(a2 + 40, a1 + 224);
  return sub_100033298(a2 + 152, a1 + 336);
}

void sub_100170360(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_100001A14(a1);
}

uint64_t sub_100170380(uint64_t a1)
{
  sub_100033424(a1 + 336);
  v2 = *(a1 + 232);
  if (v2)
  {
    sub_10000E984(v2);
  }

  sub_100033424(a1 + 152);
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  return a1;
}

void sub_1001703CC(uint64_t a1)
{
  sub_10016F33C(a1, &v3);
  v2 = *(a1 + 176);
  if (!v2)
  {
    sub_10001583C();
  }

  (*(*v2 + 48))(v2, &v3);
  if (v4)
  {
    sub_10000E984(v4);
  }
}

void sub_100170448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100170460(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = *a2;
  v7 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v6;
  *(a1 + 16) = v7;
  sub_100030254(a1 + 40, a2 + 40);
  sub_100033298(a1 + 152, a2 + 152);
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 216) = *(a3 + 8);
  *(a1 + 200) = v9;
  *(a1 + 184) = v8;
  sub_100030254(a1 + 224, a3 + 40);
  sub_100033298(a1 + 336, a3 + 152);
  return a1;
}

void sub_1001704E8(void *a1)
{
  v3 = *(v1 + 232);
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_100001A14(a1);
}

uint64_t sub_1001705AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_100170680(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_1001706BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100170708(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10012091C(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1001204F4(a1, &v9);
}

void sub_100170890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001708DC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100220F18;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017098C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001709A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v8 = "int Ram::_write(const sg_entry &)";
    *(&v8 + 1) = 15;
    v9 = 16;
    sub_100170AAC(v10, &v8);
    sub_100001FE8(v11, "Trying to write @ ", 18);
    std::ostream::operator<<();
    sub_100001FE8(v11, " ", 1);
    std::ostream::operator<<();
    sub_100001FE8(v11, "bytes, which is after end of ramdisk", 36);
    sub_100170BD4(v10);
    return 4294967274;
  }

  else
  {
    memcpy((*(a1 + 64) + v4), *a2, v3);
    return *(a2 + 16);
  }
}

void sub_100170A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100170BD4(va);
  _Unwind_Resume(a1);
}

void *sub_100170AAC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100171EBC(a1, a2);
  *a1 = off_1002213C8;
  a1[45] = &off_1002214C8;
  a1[46] = &off_1002214F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002213C8;
  a1[45] = off_100221450;
  a1[46] = off_100221478;
  return a1;
}

void sub_100170BB0(_Unwind_Exception *a1)
{
  sub_1001711C8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100170BD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001711C8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100170C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v8 = "int Ram::_read(const sg_entry &)";
    *(&v8 + 1) = 14;
    v9 = 16;
    sub_100170D24(v10, &v8);
    sub_100001FE8(v11, "Trying to read @ ", 17);
    std::ostream::operator<<();
    sub_100001FE8(v11, " ", 1);
    std::ostream::operator<<();
    sub_100001FE8(v11, "bytes, which is after end of ramdisk", 36);
    sub_100170E4C(v10);
    return 4294967274;
  }

  else
  {
    memcpy(*a2, (*(a1 + 64) + v4), v3);
    return *(a2 + 16);
  }
}

void sub_100170D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100170E4C(va);
  _Unwind_Resume(a1);
}

void *sub_100170D24(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100171F84(a1, a2);
  *a1 = off_1002215E8;
  a1[45] = &off_1002216E8;
  a1[46] = &off_100221710;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002215E8;
  a1[45] = off_100221670;
  a1[46] = off_100221698;
  return a1;
}

void sub_100170E28(_Unwind_Exception *a1)
{
  sub_100171960(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100170E4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100171960(a1);
  std::ios::~ios();
  return a1;
}

void sub_100170E94(void *a1)
{
  sub_100171E60(a1);

  operator delete();
}

uint64_t sub_100170EEC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 72) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 72) = a2;
  return result;
}

uint64_t sub_100170F30(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001711C8(v1);

  return std::ios::~ios();
}

uint64_t sub_100170F7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001711C8(v1);

  return std::ios::~ios();
}

void sub_100170FDC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001711C8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100171044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100171080(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001710EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001711C8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100171150(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001711C8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001711C8(uint64_t a1)
{
  *a1 = &off_100221560;
  sub_100171334(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100171334(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1001714E4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100171480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001714AC(uint64_t a1)
{
  sub_1001711C8(a1);

  operator delete();
}

int *sub_1001714E4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 30;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 30;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001716C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100171960(v1);

  return std::ios::~ios();
}

uint64_t sub_100171714(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100171960(v1);

  return std::ios::~ios();
}

void sub_100171774(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100171960(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001717DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100171818(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100171884(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100171960(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001718E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100171960(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100171960(uint64_t a1)
{
  *a1 = &off_100221780;
  sub_100171ACC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100171ACC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100171C7C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100171C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100171C44(uint64_t a1)
{
  sub_100171960(a1);

  operator delete();
}

int *sub_100171C7C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 42;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 42;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100171E60(void *a1)
{
  *a1 = off_1002212D8;
  sub_100015888(a1 + 3, 0);
  sub_10001590C((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100171EBC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100221560;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100171F6C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100171F84(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100221780;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100172034(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100172054@<X0>(const char **a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100028820(v17);
  v4 = strlen(a1[3]);
  v5 = sub_100001FE8(&v18, a1[3], v4);
  v6 = sub_100001FE8(v5, ": ", 2);
  v7 = strlen(a1[1]);
  v8 = sub_100001FE8(v6, a1[1], v7);
  v9 = sub_100001FE8(v8, " - ", 3);
  v10 = a1[2];
  v11 = strlen(v10);
  sub_100001FE8(v9, v10, v11);
  if ((v25 & 0x10) != 0)
  {
    v13 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v13 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v13 = v20[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001BB0();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_14:
  a2[v12] = 0;
  v18 = v15;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_100174DC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100174DE0(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = a1[4];
    v9 = [v7 filePath];
    v10 = [v9 lastPathComponent];
    v11 = [v8 URLByAppendingPathComponent:v10];

    v12 = a1[5];
    v13 = [v7 filePath];
    v14 = *(a1[6] + 8);
    obj = *(v14 + 40);
    LOBYTE(v12) = [v12 copyItemAtURL:v13 toURL:v11 error:&obj];
    objc_storeStrong((v14 + 40), obj);

    if (v12)
    {
      [*(*(a1[7] + 8) + 40) addObject:v11];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
    v15 = *(a1[6] + 8);
    v18 = *(v15 + 40);
    [DIError failWithPOSIXCode:45 verboseInfo:@"Clone of plugin nodes is not supported." error:&v18];
    v16 = v18;
    v7 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

void sub_100175448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100175460(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [DiskImageGraphNode GraphNodeWithDictionary:a2 workDir:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v9 = a1[5];
    v10 = [v8 UUID];
    v11 = [v10 UUIDString];
    [v9 setObject:v8 forKey:v11];
  }

  else
  {
    *a4 = 1;
  }
}

void sub_100175630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100175648(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v15 = a3;
  v6 = [v15 parentUUID];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v15 parentUUID];
    v9 = [v8 UUIDString];
    v10 = [v7 objectForKey:v9];

    if (v10)
    {
      [v15 setParent:v10];
      v11 = [v15 parent];
      v12 = [v11 mutableChildren];
      [v12 addObject:v15];
    }

    else
    {
      *a4 = 1;
      v13 = [DIError errorWithPOSIXCode:22 verboseInfo:@"Missing parent node in graph."];
      v14 = *(*(a1 + 40) + 8);
      v11 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

void sub_100175B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100175B30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 tag];
  v5 = [v4 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

uint64_t sub_100176894(void *a1, size_t a2)
{
  result = CCRandomGenerateBytes(a1, a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v4);
    sub_100001FE8(v4, "random generation failed with err code ", 39);
    std::ostream::operator<<();
    sub_10000EBDC(exception, v4, 0x9Au);
  }

  return result;
}

void sub_100176934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100176968(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  LODWORD(v9) = 0;
  sub_1000A56E0("public_key_crypto_algo_mode", 0, &v9, 1);
  bzero((a1 + 48), 0x204uLL);
  LODWORD(v9) = bswap32(*a2);
  sub_100177738(a1, &v9);
  v4 = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 4) = v4;
  v5 = bswap32(*(a2 + 36));
  LODWORD(v9) = 42;
  sub_1000A56E0("public_key_crypto_algo", v5, &v9, 1);
  *(a1 + 36) = v5;
  v6 = bswap32(*(a2 + 40));
  v9 = 0x800000010000000ALL;
  sub_1000A56E0("public_key_padding_algo", v6, &v9, 2);
  *(a1 + 40) = v6;
  v7 = bswap32(*(a2 + 44));
  LODWORD(v9) = 0;
  sub_1000A56E0("public_key_crypto_algo_mode", v7, &v9, 1);
  *(a1 + 44) = v7;
  LODWORD(v9) = bswap32(*(a2 + 48));
  sub_100178A7C((a1 + 48), &v9);
  memcpy((a1 + 52), (a2 + 52), 0x200uLL);
  return a1;
}

uint64_t sub_100176D4C(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x2A00000000;
  LODWORD(v3) = 42;
  sub_1000A56E0("public_key_crypto_algo", 42, &v3, 1);
  *(a1 + 40) = 10;
  v3 = 0x800000010000000ALL;
  sub_1000A56E0("public_key_padding_algo", 10, &v3, 2);
  *(a1 + 44) = 0;
  LODWORD(v3) = 0;
  sub_1000A56E0("public_key_crypto_algo_mode", 0, &v3, 1);
  bzero((a1 + 48), 0x204uLL);
  return a1;
}

SecKeyAlgorithm sub_100176E2C(uint64_t a1)
{
  if (*(a1 + 36) != 42)
  {
    goto LABEL_7;
  }

  v1 = *(a1 + 40);
  if (v1 == 10)
  {
    v2 = &kSecKeyAlgorithmRSAEncryptionPKCS1;
    return *v2;
  }

  if (v1 != -2147483647)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001940(exception, "Unsupported public key algorithm.", 0xA1u);
  }

  v2 = &kSecKeyAlgorithmRSAEncryptionOAEPSHA1;
  return *v2;
}

uint64_t sub_100176EAC(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  v3 = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 4) = v3;
  *(a2 + 36) = bswap32(*(a1 + 36));
  *(a2 + 40) = bswap32(*(a1 + 40));
  *(a2 + 44) = bswap32(*(a1 + 44));
  *(a2 + 48) = bswap32(*(a1 + 48));
  memcpy((a2 + 52), (a1 + 52), 0x200uLL);
  return a2 + 564;
}

int *sub_100176F30(int *a1, uint64_t a2)
{
  bzero(a1, 0x268uLL);
  v4 = bswap32(*a2);
  LODWORD(v12) = 103;
  sub_1000A56E0("key_derivation_algorithm_t", v4, &v12, 1);
  *a1 = v4;
  v5 = bswap32(*(a2 + 4));
  LODWORD(v12) = 0;
  sub_1000A56E0("key_derivation_prng_algorithm_t", v5, &v12, 1);
  a1[1] = v5;
  a1[2] = bswap32(*(a2 + 8));
  LODWORD(v12) = bswap32(*(a2 + 12));
  sub_100177738(a1 + 3, &v12);
  v6 = *(a2 + 32);
  *(a1 + 1) = *(a2 + 16);
  *(a1 + 2) = v6;
  LODWORD(v12) = bswap32(*(a2 + 48));
  sub_100177738(a1 + 12, &v12);
  v7 = *(a2 + 52);
  *(a1 + 17) = *(a2 + 68);
  *(a1 + 13) = v7;
  a1[21] = bswap32(*(a2 + 84));
  v8 = bswap32(*(a2 + 88));
  v12 = 0x8000000100000011;
  sub_1000A56E0("wrap_key_crypto_algo", v8, &v12, 2);
  a1[22] = v8;
  v9 = bswap32(*(a2 + 92));
  LODWORD(v12) = 7;
  sub_1000A56E0("wrap_key_crypto_padding_algo", v9, &v12, 1);
  a1[23] = v9;
  v10 = bswap32(*(a2 + 96));
  LODWORD(v12) = 6;
  sub_1000A56E0("crypto_mode", v10, &v12, 1);
  a1[24] = v10;
  LODWORD(v12) = bswap32(*(a2 + 100));
  sub_100178A7C(a1 + 25, &v12);
  memcpy(a1 + 26, (a2 + 104), 0x200uLL);
  return a1;
}

uint64_t sub_1001774F8(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *(a2 + 48) = bswap32(*(a1 + 48));
  v4 = *(a1 + 52);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 52) = v4;
  *(a2 + 84) = bswap32(*(a1 + 84));
  *(a2 + 88) = bswap32(*(a1 + 88));
  *(a2 + 92) = bswap32(*(a1 + 92));
  *(a2 + 96) = bswap32(*(a1 + 96));
  *(a2 + 100) = bswap32(*(a1 + 100));
  memcpy((a2 + 104), (a1 + 104), 0x200uLL);
  return a2 + 616;
}

uint64_t sub_1001775C0(uint64_t a1)
{
  *a1 = 103;
  LODWORD(v3) = 103;
  sub_1000A56E0("key_derivation_algorithm_t", 103, &v3, 1);
  *(a1 + 4) = 0;
  LODWORD(v3) = 0;
  sub_1000A56E0("key_derivation_prng_algorithm_t", 0, &v3, 1);
  *(a1 + 68) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 84) = 0x11000000C0;
  v3 = 0x8000000100000011;
  sub_1000A56E0("wrap_key_crypto_algo", 17, &v3, 2);
  *(a1 + 92) = 7;
  LODWORD(v3) = 7;
  sub_1000A56E0("wrap_key_crypto_padding_algo", 7, &v3, 1);
  *(a1 + 96) = 6;
  LODWORD(v3) = 6;
  sub_1000A56E0("crypto_mode", 6, &v3, 1);
  bzero((a1 + 100), 0x204uLL);
  LODWORD(v3) = 20;
  sub_100177738((a1 + 12), &v3);
  LODWORD(v3) = 8;
  sub_100177738((a1 + 48), &v3);
  sub_100176894((a1 + 16), *(a1 + 12));
  sub_100176894((a1 + 52), *(a1 + 48));
  return a1;
}

_DWORD *sub_100177738(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x21u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &off_100219A30;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

uint64_t sub_1001777AC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == -2147483647)
  {
    return 0;
  }

  if (v1 != 17)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v4);
    sub_100001FE8(v4, "Unsupported key decryption algo", 31);
    sub_10000EBDC(exception, v4, 0xA1u);
  }

  return 2;
}

void sub_100177858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017788C(uint64_t a1, uint64_t a2)
{
  bzero(a1, 0x22CuLL);
  v7 = bswap32(*a2);
  sub_100177738(a1, &v7);
  v4 = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 4) = v4;
  v5 = bswap32(*(a2 + 36));
  v8 = -2147483647;
  sub_1000A56E0("wrap_key_crypto_algo", v5, &v8, 1);
  *(a1 + 36) = v5;
  v9 = bswap32(*(a2 + 40));
  sub_100178A7C((a1 + 40), &v9);
  memcpy((a1 + 44), (a2 + 44), 0x200uLL);
  return a1;
}

uint64_t sub_100177A54(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  v3 = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 4) = v3;
  *(a2 + 36) = bswap32(*(a1 + 36));
  *(a2 + 40) = bswap32(*(a1 + 40));
  memcpy((a2 + 44), (a1 + 44), 0x200uLL);
  return a2 + 556;
}

uint64_t sub_100177AC0(uint64_t a1)
{
  if (*(a1 + 36) != -2147483647)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v3);
    sub_100001FE8(v3, "Unsupported key decryption algo", 31);
    sub_10000EBDC(exception, v3, 0xA1u);
  }

  return 0;
}

void sub_100177B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100177B90(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = bswap32(*a2);
  *(result + 4) = bswap64(*(a2 + 4));
  *(result + 12) = bswap64(*(a2 + 12));
  return result;
}

uint64_t sub_100177BC0(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap64(*(a1 + 4));
  *(a2 + 12) = bswap64(*(a1 + 12));
  return a2 + 20;
}

void *sub_100177BEC(void *a1, const void **a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    v6 = a3;
    v7 = a4 >> 3;
    v8 = a5 >> 3;
    v9 = *a2;
    v10 = (a5 >> 3) + (a4 >> 3);
    do
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      sub_10017A9CC(v15, v9, &v9[v7], v7);
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      sub_10017A9CC(__p, &v9[v7], &v9[v10], v8);
      v11 = a1[1];
      if (v11 >= a1[2])
      {
        v12 = sub_10017A780(a1, v15);
        v13 = __p[0];
        a1[1] = v12;
        if (v13)
        {
          __p[1] = v13;
          operator delete(v13);
        }
      }

      else
      {
        v11[2] = 0;
        v11[3] = 0;
        *v11 = 0;
        v11[1] = 0;
        *v11 = *v15;
        v11[2] = v16;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v11[4] = 0;
        v11[5] = 0;
        *(v11 + 3) = *__p;
        v11[5] = v18;
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        a1[1] = v11 + 6;
      }

      if (v15[0])
      {
        v15[1] = v15[0];
        operator delete(v15[0]);
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void sub_100177D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_10017AA48(&__p);
  sub_10003FF54(&__p);
  _Unwind_Resume(a1);
}

void *sub_100177D64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == *(a1 + 8))
  {
    result = std::generic_category();
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 22;
    *(a3 + 24) = result;
LABEL_7:
    *(a3 + 632) = 4;
    return result;
  }

  result = (*(**(a1 + 24) + 8))(v6);
  if (v7 != 1)
  {
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = v6[0];
    goto LABEL_7;
  }

  result = sub_10003FC7C(a3, v6);
  if (v7)
  {
    return sub_10003F650(v6);
  }

  return result;
}

void sub_100177E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x280])
  {
    sub_10003F650(&a9);
  }

  _Unwind_Resume(a1);
}

void sub_100177E88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (***(a1 + 24))(&v6);
  if (v8 == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *a1 = v6;
    *(a1 + 16) = v7;
    v7 = 0;
    v6 = 0uLL;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = v6;
  }

  *(a2 + 16) = v5;
}

_BYTE *sub_100177F2C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *a2;
  v23 = *(a2 + 4);
  if (*(a2 + 20) == 1)
  {
    *(a2 + 20) = 0;
  }

  v6 = *(a1 + 8);
  v7 = a3[1];
  if (*a3 == a1 && v7 == v6)
  {
    v11 = *(a1 + 16);
    if (v6 >= v11)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 2);
      v15 = v14 + 1;
      if (v14 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        sub_100015B70();
      }

      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a1) >> 2);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x666666666666666)
      {
        v17 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_10017AAF4(a1, v17);
      }

      v18 = 20 * v14;
      *v18 = v22;
      *(v18 + 16) = v23;
      v13 = 20 * v14 + 20;
      v19 = *(a1 + 8) - *a1;
      v20 = 20 * v14 - v19;
      memcpy((v18 - v19), *a1, v19);
      v21 = *a1;
      *a1 = v20;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      v12 = *a2;
      *(v6 + 16) = *(a2 + 4);
      *v6 = v12;
      v13 = v6 + 20;
    }

    *(a1 + 8) = v13;
    *&v25 = a1;
    *(&v25 + 1) = v13 - 20;
    v26[0] = 0;
    v27 = 0;
    *a4 = v25;
    result = sub_10017AA8C((a4 + 16), v26);
  }

  else
  {
    v9 = *a2;
    *(v7 + 16) = *(a2 + 4);
    *v7 = v9;
    *&v24 = a1;
    *(&v24 + 1) = v7;
    v26[0] = 0;
    v27 = 0;
    *a4 = v24;
    result = sub_10017AA8C((a4 + 16), v26);
  }

  *(a4 + 664) = 1;
  if (v27 == 1)
  {
    return sub_10003F650(v26);
  }

  return result;
}

void sub_100178120(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x2B0]) == 1)
  {
    sub_10003F650(v1 + 16);
  }

  _Unwind_Resume(a1);
}

void sub_100178150(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  (*(**(*a1 + 24) + 32))(&v10);
  if (v11)
  {
    v4 = (*(**(v3 + 24) + 24))(*(v3 + 24), 0);
    sub_1001782C8(v4, &v8);
    if (v9)
    {
      v5 = (*(**(v3 + 24) + 24))(*(v3 + 24), 1);
      sub_1001782C8(v5, &v8);
      if (v9)
      {
        v6 = (*(**(v3 + 24) + 16))(*(v3 + 24));
        sub_100177BEC(&v8, &v10, v6, v4, v5);
        *a2 = v8;
        *(a2 + 16) = v9;
        v9 = 0;
        v8 = 0uLL;
        *(a2 + 24) = 1;
        v12 = &v8;
        sub_10003FF54(&v12);
        return;
      }
    }

    v7 = v8;
  }

  else
  {
    v7 = v10;
  }

  *a2 = v7;
  *(a2 + 24) = 0;
}

uint64_t sub_1001782C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 1 || (result & 7) != 0)
  {
    *&v5 = "diskimage_err> crypto::validate_key_size(ssize_t)";
    *(&v5 + 1) = 40;
    v6 = 16;
    sub_10016A32C(v7, &v5);
    sub_100001FE8(v8, "Key size isn't a multiple of 8", 30);
    std::ostream::~ostream();
    sub_10016CE34(v7);
    std::ios::~ios();
    result = make_error_code(152);
    v3 = 0;
    *a2 = result;
    *(a2 + 8) = v4;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 16) = v3;
  return result;
}

void sub_100178380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10016A454(va);
  _Unwind_Resume(a1);
}

void sub_100178394(uint64_t a1@<X0>, const char *a2@<X1>, int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  sub_100178720(a2, v35);
  if ((v35[16] & 1) == 0)
  {
    v19 = *v35;
LABEL_8:
    *a5 = v19;
    *(a5 + 628) = 0;
    return;
  }

  v10 = *a3;
  sub_1001775C0(v28);
  *v35 = a1;
  *&v35[8] = v10;
  v38 = v29;
  *&v35[12] = v28[0];
  v36 = v28[1];
  v37 = v28[2];
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  memcpy(dataOut, v34, 0x200uLL);
  LODWORD(v28[0]) = 8;
  sub_100177738(&v38, v28);
  v11 = strlen(a2);
  *&v35[20] = CCCalibratePBKDF(2u, v11, *&v35[24], 1u, v41 >> 3, 0x64u);
  (**a4)(__p, a4);
  if (v27 != 1)
  {
    v19 = *__p;
    goto LABEL_8;
  }

  dataOutMoved = 0;
  sub_100178780(v35, a2, &v23);
  if (v24)
  {
    v12 = sub_1001777AC(&v35[12]);
    v13 = v23;
    v14 = *(&v23 + 1) - v23;
    v15 = CCCrypt(0, v12, 1u, v23, *(&v23 + 1) - v23, &v39, __p[0], __p[1] - __p[0], dataOut, 0x200uLL, &dataOutMoved);
    bzero(v13, v14);
    if (v15)
    {
      *&v21 = "std::expected<passphrase, diskimage_err> crypto::auth_entry_ns::passphrase::create(const auth_table &, const char *, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
      *(&v21 + 1) = 82;
      v22 = 16;
      sub_100178910(v28, &v21);
      sub_100001FE8(&v34[32], "Image key encoding failed with err code ", 40);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10017ADE0(v28);
      std::ios::~ios();
      error_code = make_error_code(154);
      v17 = 0;
      *a5 = error_code;
      *(a5 + 8) = v18;
    }

    else
    {
      LODWORD(v28[0]) = dataOutMoved;
      sub_100178A7C(&v42, v28);
      *a5 = *v35;
      *(a5 + 12) = *&v35[12];
      *(a5 + 28) = v36;
      *(a5 + 44) = v37;
      *(a5 + 60) = v38;
      v20 = v40;
      *(a5 + 64) = v39;
      *(a5 + 80) = v20;
      *(a5 + 96) = v41;
      *(a5 + 112) = v42;
      memcpy((a5 + 116), dataOut, 0x200uLL);
      v17 = 1;
    }

    *(a5 + 628) = v17;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *a5 = v23;
    *(a5 + 628) = 0;
  }

  if (v27)
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1001786B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  if (a24 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

size_t sub_100178720@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && *a1)
  {
    result = strnlen(a1, 0x101uLL);
    if (result < 0x101)
    {
      v5 = 1;
      goto LABEL_7;
    }

    v4 = 169;
  }

  else
  {
    v4 = 168;
  }

  result = make_error_code(v4);
  v5 = 0;
  *a2 = result;
  *(a2 + 8) = v6;
LABEL_7:
  *(a2 + 16) = v5;
  return result;
}

double sub_100178780@<D0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 96);
  sub_1001782C8(v6, &v12);
  if (v13)
  {
    LOBYTE(v12) = 0;
    sub_10017B2E0(&v15, v6 >> 3, &v12);
    v7 = strlen(a2);
    if (CCKeyDerivationPBKDF(2u, a2, v7, (a1 + 28), *(a1 + 24), 1u, *(a1 + 20), v15, *(&v15 + 1) - v15))
    {
      *&v10 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_derivation_key(const char *) const";
      *(&v10 + 1) = 73;
      v11 = 16;
      sub_100178DD8(&v12, &v10);
      sub_100001FE8(v14, "crypto_format: Can't derive key ", 32);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10017B5F8(&v12);
      std::ios::~ios();
      *a3 = make_error_code(152);
      *(a3 + 8) = v8;
      *(a3 + 24) = 0;
      if (v15)
      {
        *(&v15 + 1) = v15;
        operator delete(v15);
      }
    }

    else
    {
      result = *&v15;
      *a3 = v15;
      *(a3 + 16) = v16;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    result = *&v12;
    *a3 = v12;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_1001788DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 - 80);
  if (v16)
  {
    *(v14 - 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100178910(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F020(a1, a2);
  *a1 = off_100221920;
  a1[45] = &off_100221A20;
  a1[46] = &off_100221A48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221920;
  a1[45] = off_1002219A8;
  a1[46] = off_1002219D0;
  return a1;
}

void sub_100178A14(_Unwind_Exception *a1)
{
  sub_10017ADE0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100178A38(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017ADE0(a1);
  std::ios::~ios();
  return a1;
}

_DWORD *sub_100178A7C(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x201u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &off_100219A30;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

double sub_100178AF0@<D0>(uint64_t *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100178720(a2, &v8);
  if ((v9 & 1) != 0 && (sub_100178BA8(a1, a2, &v8), v10 == 1))
  {
    v6 = v8;
    sub_100178150(a1, a3);
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_100178B90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100178BA8(unsigned int *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  __len = 0;
  sub_100178780(a1, a2, &key);
  if (v16 != 1)
  {
    *a3 = key;
    *(a3 + 24) = 0;
    return;
  }

  v5 = sub_1001777AC((a1 + 3));
  v6 = key;
  v7 = *(&key + 1) - key;
  v8 = CCCrypt(1u, v5, 1u, key, *(&key + 1) - key, a1 + 16, a1 + 29, a1[28], __src, a1[28], &__len);
  if (v7 >= 1)
  {
    bzero(v6, v7);
  }

  if (!v8)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v13 = 0;
    sub_10006F178(__dst, __len);
    sub_10006F2BC(__dst, __dst[0], __src, &__src[__len], __len);
    *a3 = *__dst;
    *(a3 + 16) = v13;
    *(a3 + 24) = 1;
    if (!v6)
    {
      return;
    }

    goto LABEL_11;
  }

  *&v10 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_wrapped_key(const char *) const";
  *(&v10 + 1) = 70;
  v11 = 16;
  sub_100097124(__dst, &v10);
  sub_100001FE8(v14, "crypto_format: Can't decrypt wrapped key ", 41);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10009FFC0(__dst);
  std::ios::~ios();
  if (v8 < 0)
  {
    v8 = -v8;
  }

  v9 = std::system_category();
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 24) = 0;
  if (v6)
  {
LABEL_11:
    operator delete(v6);
  }
}

void sub_100178D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void *sub_100178DD8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F0E8(a1, a2);
  *a1 = off_100221B40;
  a1[45] = &off_100221C40;
  a1[46] = &off_100221C68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221B40;
  a1[45] = off_100221BC8;
  a1[46] = off_100221BF0;
  return a1;
}

void sub_100178EDC(_Unwind_Exception *a1)
{
  sub_10017B5F8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100178F00(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017B5F8(a1);
  std::ios::~ios();
  return a1;
}

void sub_100178F44(uint64_t a1@<X0>, __SecKey *a2@<X1>, unsigned int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  sub_100176D4C(v32);
  *&v36 = a1;
  *(&v36 + 1) = __PAIR64__(*v32, v9);
  v37 = *&v32[4];
  v38 = v33;
  v39 = v34;
  memcpy(v40, v35, sizeof(v40));
  (**a4)(&__p, a4);
  error = 0;
  v10 = SecKeyCopyExternalRepresentation(a2, &error);
  if (!v10)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_100179388(v32, &v26);
    sub_100001FE8(&v35[77], "Key from the certificate is not exportable", 42);
    std::ostream::~ostream();
    sub_10017BD90(v32);
    std::ios::~ios();
    Code = CFErrorGetCode(error);
    v20 = std::generic_category();
    *a5 = Code;
    *(a5 + 8) = v20;
    *(a5 + 576) = 0;
    goto LABEL_10;
  }

  theData = v10;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(theData);
  CC_SHA1(BytePtr, Length, &v37);
  *v32 = 20;
  sub_100177738(&v36 + 3, v32);
  plaintext = CFDataCreate(kCFAllocatorDefault, __p, v30 - __p);
  if (!plaintext)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_1001794F4(v32, &v26);
    sub_100001FE8(&v35[77], "Failed to allocate raw blob data", 32);
    std::ostream::~ostream();
    sub_10017C528(v32);
    std::ios::~ios();
    v21 = std::generic_category();
    v22 = 12;
LABEL_8:
    *a5 = v22;
    *(a5 + 8) = v21;
    *(a5 + 576) = 0;
    goto LABEL_9;
  }

  v13 = sub_100176E2C(&v36 + 12);
  v14 = SecKeyCreateEncryptedData(a2, v13, plaintext, &error);
  if (!v14)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_100179660(v32, &v26);
    sub_100001FE8(&v35[77], "Failed to encrypt data using public key from certificate", 56);
    std::ostream::~ostream();
    sub_10017CCC0(v32);
    std::ios::~ios();
    v23 = CFErrorGetCode(error);
    v21 = std::generic_category();
    v22 = v23;
    goto LABEL_8;
  }

  *v32 = v14;
  LODWORD(v26) = CFDataGetLength(v14);
  sub_100178A7C(&v39 + 3, &v26);
  v15 = *v32;
  v41.length = CFDataGetLength(*v32);
  v41.location = 0;
  CFDataGetBytes(v15, v41, v40);
  v16 = HIDWORD(v36);
  v17 = v37;
  *a5 = v36;
  *(a5 + 16) = v17;
  *(a5 + 12) = v16;
  v18 = v39;
  *(a5 + 32) = v38;
  *(a5 + 48) = v18;
  memcpy((a5 + 64), v40, 0x200uLL);
  *(a5 + 576) = 1;
  sub_1000929D8(v32);
LABEL_9:
  sub_1000929D8(&plaintext);
  sub_1000929D8(&theData);
LABEL_10:
  if (v31 == 1)
  {
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }
}

void sub_1001792D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  sub_1000929D8(&a9);
  sub_1000929D8(&a10);
  if (a18 == 1)
  {
    if (__p)
    {
      a16 = __p;
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_100179388(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F1B0(a1, a2);
  *a1 = off_100221D60;
  a1[45] = &off_100221E60;
  a1[46] = &off_100221E88;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221D60;
  a1[45] = off_100221DE8;
  a1[46] = off_100221E10;
  return a1;
}

void sub_10017948C(_Unwind_Exception *a1)
{
  sub_10017BD90(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001794B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017BD90(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001794F4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F278(a1, a2);
  *a1 = off_100221F80;
  a1[45] = &off_100222080;
  a1[46] = &off_1002220A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221F80;
  a1[45] = off_100222008;
  a1[46] = off_100222030;
  return a1;
}

void sub_1001795F8(_Unwind_Exception *a1)
{
  sub_10017C528(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10017961C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017C528(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100179660(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F340(a1, a2);
  *a1 = off_1002221A0;
  a1[45] = &off_1002222A0;
  a1[46] = &off_1002222C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002221A0;
  a1[45] = off_100222228;
  a1[46] = off_100222250;
  return a1;
}

void sub_100179764(_Unwind_Exception *a1)
{
  sub_10017CCC0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100179788(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017CCC0(a1);
  std::ios::~ios();
  return a1;
}

const void **sub_1001797CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 12;
  v5 = CFDataCreate(kCFAllocatorDefault, (a1 + 16), *(a1 + 12));
  v22 = v5;
  *&v23 = kSecClass;
  *(&v23 + 1) = kSecClassKey;
  v24 = kSecAttrKeyClass;
  v25 = kSecAttrKeyClassPrivate;
  v26 = kSecAttrApplicationLabel;
  v27 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v28 = kSecReturnRef;
  v29 = kCFBooleanTrue;
  result = 0;
  *&v15 = &v23;
  *(&v15 + 1) = 4;
  sub_100145408(&v15, &query);
  for (i = 56; i != -8; i -= 16)
  {
    sub_100028CF8((&v23 + i));
  }

  sub_100028D60(&result);
  result = 0;
  if (!SecItemCopyMatching(query, &result))
  {
    error = 0;
    v19 = result;
    ciphertext = CFDataCreate(kCFAllocatorDefault, (a1 + 64), *(a1 + 60));
    if (ciphertext)
    {
      v8 = v19;
      v9 = sub_100176E2C(v4);
      v10 = SecKeyCreateDecryptedData(v8, v9, ciphertext, &error);
      v11 = v10;
      if (v10)
      {
        sub_100145208(v10, 0, 0, &v23);
        CFRelease(v11);
        *a2 = v23;
        *(a2 + 16) = v24;
        *(a2 + 24) = 1;
LABEL_13:
        sub_1000929D8(&ciphertext);
        sub_10017F408(&v19);
        goto LABEL_14;
      }

      *&v15 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v15 + 1) = 70;
      v16 = 16;
      sub_100179D04(&v23, &v15);
      sub_100001FE8(v30, "Error decrypting data using public key, error code ", 51);
      CFErrorGetCode(error);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10017DBF0(&v23);
      std::ios::~ios();
      v13 = std::generic_category();
      *a2 = 35;
      *(a2 + 8) = v13;
    }

    else
    {
      *&v15 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v15 + 1) = 70;
      v16 = 16;
      sub_100179B98(&v23, &v15);
      sub_100001FE8(v30, "Failed to create chiper data for public key auth", 48);
      std::ostream::~ostream();
      sub_10017D458(&v23);
      std::ios::~ios();
      *a2 = make_error_code(152);
      *(a2 + 8) = v12;
    }

    *(a2 + 24) = 0;
    goto LABEL_13;
  }

  v7 = std::generic_category();
  *a2 = 35;
  *(a2 + 8) = v7;
  *(a2 + 24) = 0;
LABEL_14:
  sub_100028D2C(&query);
  return sub_1000929D8(&v22);
}

void sub_100179AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, const void *a15, __int16 a17, char a18, char a19, int a20, const void *a21, const void *a22, void *__p, uint64_t a24)
{
  sub_100179E2C(&__p);
  sub_1000929D8(&a13);
  sub_10017F408(&a15);
  sub_100028D2C(&a21);
  sub_1000929D8(&a22);
  _Unwind_Resume(a1);
}

void *sub_100179B98(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F43C(a1, a2);
  *a1 = off_1002223C0;
  a1[45] = &off_1002224C0;
  a1[46] = &off_1002224E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002223C0;
  a1[45] = off_100222448;
  a1[46] = off_100222470;
  return a1;
}

void sub_100179C9C(_Unwind_Exception *a1)
{
  sub_10017D458(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100179CC0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017D458(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100179D04(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F504(a1, a2);
  *a1 = off_1002225E0;
  a1[45] = &off_1002226E0;
  a1[46] = &off_100222708;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002225E0;
  a1[45] = off_100222668;
  a1[46] = off_100222690;
  return a1;
}

void sub_100179E08(_Unwind_Exception *a1)
{
  sub_10017DBF0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100179E2C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017DBF0(a1);
  std::ios::~ios();
  return a1;
}

double sub_100179E70@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001797CC(a1, v6);
  if (v7 == 1)
  {
    v4 = v6[0];
    sub_100178150(a1, a2);
    if (v4 != 0.0)
    {
      operator delete(*&v4);
    }
  }

  else
  {
    result = v6[0];
    *a2 = *v6;
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_100179EF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100179F08(uint64_t *__return_ptr a1@<X8>, CFTypeRef cf@<X1>, uint64_t a3@<X0>, int *a4@<X2>, void (***a5)(__int128 *__return_ptr, void)@<X3>)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDataGetTypeID()))
  {
    v17 = std::generic_category();
    *a1 = 22;
    a1[1] = v17;
LABEL_7:
    *(a1 + 568) = 0;
    return;
  }

  v11 = *a4;
  LODWORD(v23[0]) = -2147483647;
  sub_1000A56E0("wrap_key_crypto_algo", -2147483647, v23, 1);
  *v28 = a3;
  *&v28[8] = v11;
  memset(&v28[12], 0, 32);
  *&v28[44] = 0x8000000100000000;
  bzero(&v28[52], 0x204uLL);
  LODWORD(v23[0]) = 8;
  sub_100177738(&v28[12], v23);
  (**a5)(&dataIn, a5);
  if (v27 != 1)
  {
    *a1 = dataIn;
    goto LABEL_7;
  }

  dataOutMoved = 0;
  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  sub_100177AC0(&v28[12]);
  if (CCCrypt(0, 0, 1u, BytePtr, Length, &v28[16], dataIn, *(&dataIn + 1) - dataIn, dataOut, 0x200uLL, &dataOutMoved))
  {
    *&v21 = "std::expected<symmetric_key, diskimage_err> crypto::auth_entry_ns::symmetric_key::create(const auth_table &, CFDataRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v21 + 1) = 88;
    v22 = 16;
    sub_10017A204(v23, &v21);
    sub_100001FE8(v24, "Image key encoding failed with err code ", 40);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10017E388(v23);
    std::ios::~ios();
    error_code = make_error_code(154);
    v15 = 0;
    *a1 = error_code;
    a1[1] = v16;
  }

  else
  {
    LODWORD(v23[0]) = dataOutMoved;
    sub_100178A7C(&v28[52], v23);
    v18 = *&v28[12];
    v19 = *&v28[16];
    v20 = *&v28[32];
    *a1 = *v28;
    *(a1 + 1) = v19;
    *(a1 + 3) = v18;
    *(a1 + 2) = v20;
    a1[6] = *&v28[48];
    memcpy(a1 + 7, dataOut, 0x200uLL);
    v15 = 1;
  }

  *(a1 + 568) = v15;
  if (v27)
  {
    if (dataIn)
    {
      *(&dataIn + 1) = dataIn;
      operator delete(dataIn);
    }
  }
}

void sub_10017A1B0(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x258]) == 1)
  {
    v2 = STACK[0x240];
    if (STACK[0x240])
    {
      STACK[0x248] = v2;
      operator delete(v2);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_10017A204(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F5CC(a1, a2);
  *a1 = off_100222800;
  a1[45] = &off_100222900;
  a1[46] = &off_100222928;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222800;
  a1[45] = off_100222888;
  a1[46] = off_1002228B0;
  return a1;
}

void sub_10017A308(_Unwind_Exception *a1)
{
  sub_10017E388(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10017A32C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017E388(a1);
  std::ios::~ios();
  return a1;
}

void sub_10017A370(uint64_t *__return_ptr a1@<X8>, CFTypeRef cf@<X1>, unsigned int *a3@<X0>)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDataGetTypeID()))
  {
    v8 = std::generic_category();
    *a1 = 22;
    a1[1] = v8;
LABEL_7:
    *(a1 + 24) = 0;
    return;
  }

  sub_10017A440(v9, cf, a3);
  if (v10 != 1)
  {
    *a1 = *v9;
    goto LABEL_7;
  }

  v7 = v9[0];
  sub_100178150(a3, a1);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_10017A428(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_10017A440@<D0>(uint64_t *__return_ptr a1@<X8>, CFDataRef theData@<X1>, unsigned int *a3@<X0>)
{
  __len = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  sub_100177AC0((a3 + 3));
  v8 = CCCrypt(1u, 0, 1u, BytePtr, Length, a3 + 4, a3 + 14, a3[13], __src, a3[13], &__len);
  if (v8)
  {
    *&v11 = "diskimage_err> crypto::auth_entry_ns::symmetric_key::generate_wrapped_key(CFDataRef) const";
    *(&v11 + 1) = 73;
    v12 = 16;
    sub_10017A614(__dst, &v11);
    sub_100001FE8(v15, "crypto_format: Can't decrypt wrapped key ", 41);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10017EB20(__dst);
    std::ios::~ios();
    if (v8 < 0)
    {
      v8 = -v8;
    }

    v9 = std::system_category();
    *a1 = v8;
    a1[1] = v9;
    *(a1 + 24) = 0;
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v14 = 0;
    sub_10006F178(__dst, __len);
    sub_10006F2BC(__dst, __dst[0], __src, &__src[__len], __len);
    result = *__dst;
    *a1 = *__dst;
    a1[2] = v14;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_10017A5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10017A614(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F694(a1, a2);
  *a1 = off_100222A20;
  a1[45] = &off_100222B20;
  a1[46] = &off_100222B48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222A20;
  a1[45] = off_100222AA8;
  a1[46] = off_100222AD0;
  return a1;
}

void sub_10017A718(_Unwind_Exception *a1)
{
  sub_10017EB20(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10017A73C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017EB20(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10017A780(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_100015B70();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100072B60(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = a1[1];
  v9 = (48 * v2 + *a1 - v8);
  sub_10017A8E0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10017A97C(&v14);
  return v13;
}

void sub_10017A8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10017A97C(va);
  _Unwind_Resume(a1);
}

void sub_10017A8E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_10003FFD8(v5);
      v5 += 48;
    }
  }
}

uint64_t sub_10017A97C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_10003FFD8(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_10017A9CC(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100040450(result, a4);
  }

  return result;
}

void sub_10017AA2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017AA48(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

_BYTE *sub_10017AA8C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[640] = 0;
  if (*(a2 + 640) == 1)
  {
    sub_10003FC7C(a1, a2);
    a1[640] = 1;
  }

  return a1;
}

void sub_10017AAD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 640) == 1)
  {
    sub_10003F650(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017AAF4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_10017AB48(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017ADE0(v1);

  return std::ios::~ios();
}

uint64_t sub_10017AB94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017ADE0(v1);

  return std::ios::~ios();
}

void sub_10017ABF4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017ADE0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017AC98(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017AD04(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017ADE0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017AD68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017ADE0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017ADE0(uint64_t a1)
{
  *a1 = &off_100221AB8;
  sub_10017AF4C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017AF4C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017B0FC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017B098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017B0C4(uint64_t a1)
{
  sub_10017ADE0(a1);

  operator delete();
}

int *sub_10017B0FC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 321;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 321;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t *sub_10017B2E0(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100040450(a1, a2);
  }

  return a1;
}

void sub_10017B344(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017B360(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017B5F8(v1);

  return std::ios::~ios();
}

uint64_t sub_10017B3AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017B5F8(v1);

  return std::ios::~ios();
}

void sub_10017B40C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017B5F8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017B474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017B4B0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017B51C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017B5F8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017B580(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017B5F8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017B5F8(uint64_t a1)
{
  *a1 = &off_100221CD8;
  sub_10017B764(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017B764(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017B914((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017B8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017B8DC(uint64_t a1)
{
  sub_10017B5F8(a1);

  operator delete();
}

int *sub_10017B914(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 371;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 371;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017BAF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017BD90(v1);

  return std::ios::~ios();
}

uint64_t sub_10017BB44(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017BD90(v1);

  return std::ios::~ios();
}

void sub_10017BBA4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017BD90(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017BC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017BC48(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017BCB4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017BD90(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017BD18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017BD90(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017BD90(uint64_t a1)
{
  *a1 = &off_100221EF8;
  sub_10017BEFC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017BEFC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017C0AC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017C048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017C074(uint64_t a1)
{
  sub_10017BD90(a1);

  operator delete();
}

int *sub_10017C0AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 421;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 421;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017C290(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017C528(v1);

  return std::ios::~ios();
}

uint64_t sub_10017C2DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017C528(v1);

  return std::ios::~ios();
}

void sub_10017C33C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017C528(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017C3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017C3E0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017C44C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017C528(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017C4B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017C528(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017C528(uint64_t a1)
{
  *a1 = &off_100222118;
  sub_10017C694(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017C694(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017C844((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017C7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017C80C(uint64_t a1)
{
  sub_10017C528(a1);

  operator delete();
}

int *sub_10017C844(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 432;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 432;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017CA28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017CCC0(v1);

  return std::ios::~ios();
}

uint64_t sub_10017CA74(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017CCC0(v1);

  return std::ios::~ios();
}

void sub_10017CAD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017CCC0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017CB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017CB78(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017CBE4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017CCC0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017CC48(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017CCC0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017CCC0(uint64_t a1)
{
  *a1 = &off_100222338;
  sub_10017CE2C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017CE2C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017CFDC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017CF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017CFA4(uint64_t a1)
{
  sub_10017CCC0(a1);

  operator delete();
}

int *sub_10017CFDC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 439;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 439;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017D1C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017D458(v1);

  return std::ios::~ios();
}

uint64_t sub_10017D20C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017D458(v1);

  return std::ios::~ios();
}

void sub_10017D26C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017D458(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017D310(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017D37C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017D458(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017D3E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017D458(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017D458(uint64_t a1)
{
  *a1 = &off_100222558;
  sub_10017D5C4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017D5C4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017D774((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017D710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017D73C(uint64_t a1)
{
  sub_10017D458(a1);

  operator delete();
}

int *sub_10017D774(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 468;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 468;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017D958(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017DBF0(v1);

  return std::ios::~ios();
}

uint64_t sub_10017D9A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017DBF0(v1);

  return std::ios::~ios();
}

void sub_10017DA04(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017DBF0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017DA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017DAA8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017DB14(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017DBF0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017DB78(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017DBF0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017DBF0(uint64_t a1)
{
  *a1 = &off_100222778;
  sub_10017DD5C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017DD5C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017DF0C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017DEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017DED4(uint64_t a1)
{
  sub_10017DBF0(a1);

  operator delete();
}

int *sub_10017DF0C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 474;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 474;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017E0F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017E388(v1);

  return std::ios::~ios();
}

uint64_t sub_10017E13C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017E388(v1);

  return std::ios::~ios();
}

void sub_10017E19C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017E388(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017E204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017E240(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017E2AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017E388(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017E310(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017E388(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017E388(uint64_t a1)
{
  *a1 = &off_100222998;
  sub_10017E4F4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017E4F4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017E6A4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017E640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017E66C(uint64_t a1)
{
  sub_10017E388(a1);

  operator delete();
}

int *sub_10017E6A4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 522;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 522;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017E888(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017EB20(v1);

  return std::ios::~ios();
}

uint64_t sub_10017E8D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017EB20(v1);

  return std::ios::~ios();
}

void sub_10017E934(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017EB20(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017E99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017E9D8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017EA44(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017EB20(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017EAA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017EB20(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017EB20(uint64_t a1)
{
  *a1 = &off_100222BB8;
  sub_10017EC8C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017EC8C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017EE3C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017EDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017EE04(uint64_t a1)
{
  sub_10017EB20(a1);

  operator delete();
}

int *sub_10017EE3C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 557;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 557;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017F020(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100221AB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F0D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F0E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100221CD8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F198(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F1B0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100221EF8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F260(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F278(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100222118;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F328(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F340(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100222338;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F3F0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **sub_10017F408(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_10017F43C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100222558;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F4EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F504(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100222778;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F5B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F5CC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100222998;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F67C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F694(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100222BB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F744(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F75C(uint64_t a1, int *a2, int a3, _DWORD *a4)
{
  *a1 = 1919118949;
  v13 = 1919118949;
  sub_1000A56E0("sig1_t", 1919118949, &v13, 1);
  *(a1 + 4) = 1634952291;
  v13 = 1634952291;
  sub_1000A56E0("sig2_t", 1634952291, &v13, 1);
  *(a1 + 8) = 2;
  v13 = 2;
  sub_1000A56E0("version_t", 2, &v13, 1);
  *(a1 + 12) = 16;
  v13 = 16;
  sub_1000A56E0("iv_tweak_size_t", 16, &v13, 1);
  *(a1 + 16) = *a4;
  *(a1 + 20) = -2147483647;
  v13 = -2147483647;
  sub_1000A56E0("algorithm_type", -2147483647, &v13, 1);
  v8 = *a2;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = v8;
  *(a1 + 52) = a3;
  *(a1 + 56) = xmmword_1001C9ED0;
  *(a1 + 72) = 0;
  if (*a4 == 5)
  {
    v9 = 91;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 28) = v9;
  if (*a4 == 5)
  {
    v10 = 160;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 32) = v10;
  *(a1 + 36) = sub_100195AE4();
  *(a1 + 44) = v11;
  return a1;
}
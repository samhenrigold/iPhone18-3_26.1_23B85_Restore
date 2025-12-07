void crypto::crypto_serializer_t::serialize(crypto::crypto_serializer_t *this@<X0>, const crypto::symmetric_key_header *a2@<X1>, uint64_t a3@<X8>)
{
  std::vector<char>::vector[abi:ne200100](__p, 556);
  crypto::symmetric_key_header::write(a2, __p[0]);
  crypto::crypto_serializer_t::serialize(this, __p, 4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_248F1C998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t crypto::crypto_serializer_t::serialize@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v19 = *a2;
    goto LABEL_18;
  }

  v8 = v6 - v5;
  v9 = malloc_type_valloc(v6 - v5, 0x8B7C732DuLL);
  if (!v9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v21, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v22 = &unk_285BF55F0;
  v25 = &v22;
  v30 = v9;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v31, &v22);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v22);
  v10 = *a2;
  if (*a2 != a2[1])
  {
    v11 = 0;
    do
    {
      crypto::auth_entry_descriptor::write((v10 + v11), &v30[v11]);
      v11 += 20;
    }

    while (v10 + v11 != a2[1]);
  }

  v12 = v30;
  v13 = *(details::get_dummy_shared_ptr() + 1);
  v22 = v12;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v8;
  v25 = 76;
  v26 = v8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v14 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v22);
  v15 = v14;
  if (v8 != v14)
  {
    if (v14 <= 0)
    {
      v16 = -v14;
    }

    else
    {
      v16 = 5;
    }

    v17 = std::generic_category();
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = 0;
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v30, 0);
  result = std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v31);
  if (v8 == v15)
  {
    v5 = *a2;
    v19 = a2[1];
LABEL_18:
    *(**(a1 + 32) + 72) = -858993459 * ((v19 - v5) >> 2);
    return crypto::crypto_serializer_t::write_header(a1, a3);
  }

  return result;
}

void sub_248F1CBD4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v22 + 8);
  _Unwind_Resume(a1);
}

crypto *crypto_format_backend::read_aligned(uint64_t a1, crypto::context::aes *a2, char *a3, unint64_t a4, const sg_per_io_crypto *a5)
{
  v30[19] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v10 = **(a1 + 48);
  v11 = *(v10 + 52);
  if (*(a1 + 392))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v10 + 64);
  }

  v13 = v12 + a4;
  v14 = *(a1 + 24);
  v15 = *(details::get_dummy_shared_ptr() + 1);
  v20 = a2;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v11 * a3;
  v23 = v13;
  v24 = v11 * a3;
  v25 = 0;
  v26[0] = 0;
  v27 = 0;
  if (*(a5 + 56))
  {
    sg_per_io_crypto::sg_per_io_crypto(v26, a5);
    v27 = 1;
  }

  v16 = (*(*v14 + 128))(v14, &v20);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if ((v16 & 0x80000000) != 0)
  {
    *&v18 = "crypto_format_backend::read_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
    *(&v18 + 1) = 35;
    v19 = 16;
    di_log::logger<di_log::log_printer<525ul>>::logger(&v20, &v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Crypto couldn't read from inner backend @ ", 42);
    MEMORY[0x24C1ED3E0](&v29, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "/", 1);
    MEMORY[0x24C1ED3B0](&v29, v11 * a3);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(&v20);
    MEMORY[0x24C1ED6A0](v30);
  }

  else
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v20, a1 + 216);
    v28 = v11;
    v16 = crypto::crypt_op::crypt(&v20, a2, a3, a4);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v20);
  }

  return v16;
}

void sub_248F1CE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<525ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<525ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<525ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF5AB8;
  a1[45] = &unk_285BF5BB8;
  a1[46] = &unk_285BF5BE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF5AB8;
  a1[45] = &unk_285BF5B40;
  a1[46] = &unk_285BF5B68;
  return a1;
}

void sub_248F1CF6C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<525ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t crypto_format_backend::read(uint64_t a1, char **a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = crypto_format_backend::read_aligned(a1, v13, 1, v8, v18);
    if (result)
    {
      return result;
    }

    v14 = v9;
    if (v6 >= (v7 - v9))
    {
      v15 = v7 - v9;
    }

    else
    {
      v15 = v6;
    }

    memcpy(v4, (*(a1 + 384) + v14), v15);
    v6 -= v15;
    v4 += v15;
    v8 += v7;
  }

  if (*(a2 + 104) == 1 && *(a2 + 12))
  {
    sg_per_io_crypto::sg_per_io_crypto(v18, (a2 + 6));
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v18[0] = 0;
  }

  v19 = v10;
  result = crypto_format_backend::read_aligned(a1, v4, (v6 / v7), v8, v18);
  if (!result)
  {
    v12 = v6 % v7;
    if (!(v6 % v7))
    {
      return *(a2 + 4);
    }

    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v16 = v6 - v12;
    v17 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = crypto_format_backend::read_aligned(a1, v17, 1, v16 + v8, v18);
    if (!result)
    {
      memcpy(&v4[v16], *(a1 + 384), v12);
      return *(a2 + 4);
    }
  }

  return result;
}

crypto *crypto_format_backend::write_aligned(uint64_t a1, crypto::context::aes *a2, char *a3, unint64_t a4, const sg_per_io_crypto *a5)
{
  v31[19] = *MEMORY[0x277D85DE8];
  v10 = **(a1 + 48);
  if (*(a1 + 392))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v10 + 52);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v21, a1 + 64);
  v29 = v12;
  v13 = crypto::crypt_op::crypt(&v21, a2, a3, a4);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
  if (!v13)
  {
    v14 = *(a1 + 24);
    v15 = v11 + a4;
    v16 = *(details::get_dummy_shared_ptr() + 1);
    v17 = v12 * a3;
    v21 = a2;
    v22 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v17;
    v24 = v15;
    v25 = v17;
    v26 = 0;
    v27[0] = 0;
    v28 = 0;
    if (*(a5 + 56))
    {
      sg_per_io_crypto::sg_per_io_crypto(v27, a5);
      v28 = 1;
    }

    v13 = (*(*v14 + 120))(v14, &v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if ((v13 & 0x80000000) != 0)
    {
      *&v19 = "crypto_format_backend::write_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
      *(&v19 + 1) = 36;
      v20 = 16;
      di_log::logger<di_log::log_printer<602ul>>::logger(&v21, &v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Crypto couldn't write to inner backend @ ", 41);
      MEMORY[0x24C1ED3E0](&v30, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "/", 1);
      MEMORY[0x24C1ED3B0](&v30, v17);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(&v21);
      MEMORY[0x24C1ED6A0](v31);
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

void sub_248F1D36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<602ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<602ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<602ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF5CD8;
  a1[45] = &unk_285BF5DD8;
  a1[46] = &unk_285BF5E00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF5CD8;
  a1[45] = &unk_285BF5D60;
  a1[46] = &unk_285BF5D88;
  return a1;
}

void sub_248F1D4B4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<602ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t crypto_format_backend::write(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 48))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = crypto_format_backend::read_aligned(a1, v13, 1, v8, v22);
    if (result)
    {
      return result;
    }

    v14 = v6 >= (v7 - v9) ? v7 - v9 : v6;
    memcpy(*(a1 + 384), v4 + v9, v14);
    v15 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = crypto_format_backend::write_aligned(a1, v15, 1, v8, v22);
    if (result)
    {
      return result;
    }

    v6 -= v14;
    v4 = (v4 + v14);
    v8 += v14;
  }

  if (*(a2 + 40))
  {
    if (v6 >= v7)
    {
      v16 = 0;
      while (1)
      {
        memcpy(*(a1 + 384), v4 + v16, v7);
        v17 = *(a1 + 384);
        if ((*(a2 + 104) & 1) != 0 && *(a2 + 48))
        {
          sg_per_io_crypto::clone_with_offset(v21, (a2 + 48), *(a2 + 24), v16);
          sg_per_io_crypto::sg_per_io_crypto(v22, v21);
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v22[0] = 0;
        }

        v23 = v18;
        result = crypto_format_backend::write_aligned(a1, v17, 1, v8 + v16, v22);
        if (result)
        {
          return result;
        }

        v6 -= v7;
        v16 += v7;
        if (v6 < v7)
        {
          v4 = (v4 + v16);
          v8 += v16;
          break;
        }
      }
    }
  }

  else
  {
    v10 = v6 / v7;
    if (*(a2 + 104) == 1 && *(a2 + 48))
    {
      sg_per_io_crypto::sg_per_io_crypto(v22, (a2 + 48));
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v22[0] = 0;
    }

    v23 = v11;
    result = crypto_format_backend::write_aligned(a1, v4, (v6 / v7), v8, v22);
    if (result)
    {
      return result;
    }

    v4 = (v4 + v10 * v7);
    v8 += v10 * v7;
    v6 %= v7;
  }

  if (!v6)
  {
    return *(a2 + 16);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48))
  {
    return 4294967194;
  }

  v19 = *(a1 + 384);
  v22[0] = 0;
  v23 = 0;
  result = crypto_format_backend::read_aligned(a1, v19, 1, v8, v22);
  if (!result)
  {
    memcpy(*(a1 + 384), v4, v6);
    v20 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = crypto_format_backend::write_aligned(a1, v20, 1, v8, v22);
    if (!result)
    {
      return *(a2 + 16);
    }
  }

  return result;
}

void crypto_format_backend::run_futures(crypto_format_backend *this)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = *(this + 51);
  v2 = *(this + 52);
  if (v2 == v1)
  {
    return;
  }

  v4 = *(this + 54);
  v5 = &v1[v4 >> 5];
  v6 = *v5 + 128 * (v4 & 0x1F);
  if (v6 == *(v1 + (((*(this + 55) + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(this + 55) + v4) & 0x1F))
  {
    return;
  }

  v7 = *(**(this + 6) + 52);
  v8 = *v5 + 128 * (*(this + 54) & 0x1FLL);
  v9 = &v1[v4 >> 5];
  if (v2 != v1)
  {
    v10 = *(v1 + (((v4 + *(this + 55)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v4 + *(this + 55)) & 0x1F);
    if (v6 == v10)
    {
      v36 = &v1[v4 >> 5];
      v37 = *v36 + 128 * (*(this + 54) & 0x1FLL);
      if (v37 != v8)
      {
        do
        {
          v38 = *(v37 + 112);
          if (v38)
          {
            *(v38 + 16) = 0;
          }

          v39 = *(v37 + 8);
          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          v37 += 128;
          if (v37 - *v36 == 4096)
          {
            v40 = v36[1];
            ++v36;
            v37 = v40;
          }
        }

        while (v37 != v8);
        v1 = *(this + 51);
        v2 = *(this + 52);
      }

      goto LABEL_63;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v10 = 0;
LABEL_8:
    v11 = &v1[v4 >> 5];
    if (v10 != v6)
    {
      v12 = ((v4 & 0x1F) << 7) >> 7;
      if (v12 < 0)
      {
        v14 = 30 - v12;
        v13 = ~v14;
        v11 = &v5[-(v14 >> 5)];
      }

      else
      {
        v13 = v12 + 1;
        v11 = &v5[(v12 + 1) >> 5];
      }

      v15 = *v11;
      v6 = *v11 + 128 * (v13 & 0x1F);
      if (v6 == v10)
      {
LABEL_19:
        v6 = v10;
      }

      else
      {
        v16 = *(v8 + 24);
        v17 = *v5 + 128 * (v4 & 0x1F);
        while (1)
        {
          v16 += *(v17 + 16);
          if (v16 != *(v6 + 24) || *(v17 + 120) != *(v6 + 120))
          {
            break;
          }

          v18 = v6 + 128;
          if (v6 + 128 - v15 == 4096)
          {
            v19 = v11[1];
            ++v11;
            v15 = v19;
            v18 = v19;
          }

          v17 = v6;
          v6 = v18;
          if (v18 == v10)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v20 = (v8 + 120);
    v21 = 64;
    if (!*(v8 + 120))
    {
      v21 = 216;
    }

    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v59, this + v21);
    v60 = v7;
    v44 = *(this + 3);
    v51 = v9;
    v52 = v8;
    v49 = v11;
    v50 = v6;
    if (*(this + 392))
    {
      v45 = 0;
    }

    else
    {
      v45 = *(**(this + 6) + 64);
    }

    v22 = *v20;
    v23 = *MEMORY[0x277D85FA0];
    crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(*v20, v61);
    if (v8 == v6)
    {
      v24 = 0;
      goto LABEL_50;
    }

    sg_entry::sg_entry(v46, v8);
    v24 = 0;
    v25 = v48 / v23 * v23;
    v26 = v8;
    v27 = v9;
    while (1)
    {
      sg_entry::sg_entry(&v63, v26);
      if (!v62)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v62 + 48))(v62, &v63))
      {
        v28 = v65 + v66 - v25;
        if (v28 % v23)
        {
          v29 = v23 - v28 % v23;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29 + v28;
        v24 += v30;
        v25 += v30;
      }

      else
      {
        v31 = v23;
        if (v66 % v7)
        {
          goto LABEL_36;
        }

        if (v65 % v7)
        {
          v31 = 0;
LABEL_36:
          v32 = v31 + v24;
          if ((v65 + v66) % v7)
          {
            v33 = v23;
          }

          else
          {
            v33 = 0;
          }

          v24 = v32 + v33;
          v25 = (v7 - 1 + v65 + v66) / v7 * v7;
          goto LABEL_40;
        }

        v25 = v65 + v66;
      }

LABEL_40:
      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
      }

      v26 += 128;
      if (v26 - *v27 == 4096)
      {
        v34 = v27[1];
        ++v27;
        v26 = v34;
      }

      if (v26 == v6)
      {
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

LABEL_50:
        crypto::details::sg_allocator::sg_allocator(v53, v24, *MEMORY[0x277D85FA0]);
        std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](v61);
        v54 = v59;
        v55 = v44;
        v56 = v22;
        v57 = v45;
        if (v52 == v50)
        {
          v35 = 0;
        }

        else
        {
          v35 = 4 * (v49 - v51) - ((v52 - *v51) >> 7) + ((v50 - *v49) >> 7);
        }

        v58 = v35;
        is_mul_ok(3 * v35, 0x18uLL);
        operator new[]();
      }
    }
  }

LABEL_63:
  *(this + 55) = 0;
  v41 = v2 - v1;
  if (v41 >= 3)
  {
    do
    {
      operator delete(*v1);
      v42 = *(this + 52);
      v1 = (*(this + 51) + 8);
      *(this + 51) = v1;
      v41 = (v42 - v1) >> 3;
    }

    while (v41 > 2);
  }

  if (v41 == 1)
  {
    v43 = 16;
  }

  else
  {
    if (v41 != 2)
    {
      return;
    }

    v43 = 32;
  }

  *(this + 54) = v43;
}

void sub_248F1E33C(_Unwind_Exception *a1, const void *a2)
{
  crypto::crypt_op::crypt_consecutive_vector_with_futures<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::~crypt_consecutive_vector_with_futures(&STACK[0x278], a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void crypto::crypt_op::crypt_consecutive_vector_with_futures<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::operator()(uint64_t a1)
{
  v2 = crypto::crypt_op::crypt_consecutive_vector::operator()(a1);
  if ((v2 & 0x80000000) != 0)
  {

    crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::report_errors(a1 + 224, v2);
  }
}

void *di_log::logger<di_log::log_printer<758ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<758ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF5EF8;
  a1[45] = &unk_285BF5FF8;
  a1[46] = &unk_285BF6020;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF5EF8;
  a1[45] = &unk_285BF5F80;
  a1[46] = &unk_285BF5FA8;
  return a1;
}

void sub_248F1E654(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<758ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<776ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<776ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF6118;
  a1[45] = &unk_285BF6218;
  a1[46] = &unk_285BF6240;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF6118;
  a1[45] = &unk_285BF61A0;
  a1[46] = &unk_285BF61C8;
  return a1;
}

void sub_248F1E7C0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<776ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void crypto::crypt_op::crypt_consecutive_vector_with_futures<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::~crypt_consecutive_vector_with_futures(uint64_t a1, const void *a2)
{
  crypto::crypt_op::crypt_consecutive_vector::reset(a1, a2);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::report_errors(a1 + 224, *(a1 + 304));

  crypto::crypt_op::crypt_consecutive_vector::~crypt_consecutive_vector(a1);
}

uint64_t crypto_format_backend::unmap_range(crypto_format_backend *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (*(this + 392))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(**(this + 6) + 64);
  }

  return (*(*v3 + 24))(v3, v4 + a2);
}

uint64_t crypto_format_backend::truncate(crypto_format_backend *this, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(this + 98);
  v4 = **(this + 6);
  if ((v3 & 2) == 0)
  {
    *(v4 + 56) = a2;
  }

  v5 = *(this + 3);
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 64);
  }

  v7 = (*(*v5 + 56))(v5, (a2 + *(v4 + 52) - 1) / *(v4 + 52) * *(v4 + 52) + v6);
  if (!v7)
  {
    crypto::header::write(**(this + 6), v18);
    v8 = *(details::get_dummy_shared_ptr() + 1);
    v11 = v18;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = xmmword_248FA7FB0;
    v14 = 76;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v9 = (*(**(this + 3) + 120))(*(this + 3), &v11);
    if (v13 == v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  return v7;
}

void sub_248F1EA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void crypto_format_backend::crypto_format_backend(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  (*(**a2 + 80))(&v8);
  BackendInternalBackend::BackendInternalBackend(a1, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v6 = *a3;
  v7 = a3[1];
  *(a1 + 40) = &unk_285BF6330;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = *a3;
  }

  *a1 = &unk_285BF5498;
  *(a1 + 40) = &unk_285BF5570;
  crypto::format::create_aes_context(v6, 0);
  crypto::format::create_aes_context(*a3, 1);
  *(a1 + 368) = crypto::context::get_cryptos_base(a1 + 64);
  *(a1 + 376) = crypto::context::get_cryptos_base(a1 + 216);
  operator new[]();
}

void sub_248F1EBD4(_Unwind_Exception *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 64);
  *(v1 + 5) = v2;
  v4 = *(v1 + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}

uint64_t crypto::format::create_aes_context(uint64_t a1, int a2)
{
  v4 = a1;
  v5 = a2;
  v6 = a1;
  v7 = a2;
  v2 = *(a1 + 80);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v8 = &v4;
  return (off_285BF6340[v2])(&v8, a1 + 64);
}

void BackendInternalBackend::~BackendInternalBackend(BackendInternalBackend *this)
{
  *this = &unk_285BD4DB0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void crypto_format_backend::crypto_format_backend(uint64_t a1, uint64_t a2, void *a3)
{
  BackendInternalBackend::BackendInternalBackend(a1, a3);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  *(a1 + 40) = &unk_285BF6330;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 48);
  }

  *a1 = &unk_285BF5498;
  *(a1 + 40) = &unk_285BF5570;
  crypto::format::create_aes_context(v5, 0);
  crypto::format::create_aes_context(*(a1 + 48), 1);
  *(a1 + 368) = crypto::context::get_cryptos_base(a1 + 64);
  *(a1 + 376) = crypto::context::get_cryptos_base(a1 + 216);
  operator new[]();
}

void sub_248F1EDF0(_Unwind_Exception *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 64);
  *(v1 + 5) = v2;
  v4 = *(v1 + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}

uint64_t crypto_format_backend::get_size(crypto_format_backend *this)
{
  if ((*(this + 392) & 2) != 0 || (result = *(**(this + 6) + 56)) == 0)
  {
    v3 = (*(**(this + 3) + 40))(*(this + 3));
    if (*(this + 392))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(**(this + 6) + 64);
    }

    if (v3 <= v4)
    {
      return 0;
    }

    else
    {
      v5 = (*(**(this + 3) + 40))(*(this + 3));
      if (*(this + 392))
      {
        v6 = 0;
      }

      else
      {
        v6 = *(**(this + 6) + 64);
      }

      return v5 - v6;
    }
  }

  return result;
}

void crypto_format_backend::~crypto_format_backend(crypto_format_backend *this)
{
  crypto_format_backend::~crypto_format_backend(this);

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285BF5498;
  *(this + 5) = &unk_285BF5570;
  v2 = *(this + 48);
  if (v2)
  {
    MEMORY[0x24C1ED710](v2, 0x1000C8077774924);
  }

  std::deque<crypto_format_backend::promise_io_t>::~deque[abi:ne200100](this + 50);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 216);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 64);
  *(this + 5) = &unk_285BF6330;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_285BD4DB0;
  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void crypto_format_backend::future_read(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sg_entry::sg_entry(&v7, a2);
  sg_entry::sg_entry(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 0;
  std::deque<crypto_format_backend::promise_io_t>::emplace_back<crypto_format_backend::promise_io_t>((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v14 == 1)
  {
    *a3 = v13;
    *(a3 + 4) = 1;
  }

  v6 = v16;
  *(a3 + 16) = v16;
  if (v6)
  {
    *v6 = a3;
  }

  if (v17)
  {
    *(v17 + 2) = 0;
  }
}

void sub_248F1F08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void crypto_format_backend::future_write(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sg_entry::sg_entry(&v7, a2);
  sg_entry::sg_entry(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 1;
  std::deque<crypto_format_backend::promise_io_t>::emplace_back<crypto_format_backend::promise_io_t>((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v14 == 1)
  {
    *a3 = v13;
    *(a3 + 4) = 1;
  }

  v6 = v16;
  *(a3 + 16) = v16;
  if (v6)
  {
    *v6 = a3;
  }

  if (v17)
  {
    *(v17 + 2) = 0;
  }
}

void sub_248F1F1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk tocrypto_format_backend::~crypto_format_backend(crypto_format_backend *this)
{
  crypto_format_backend::~crypto_format_backend((this - 40));
}

{
  crypto_format_backend::~crypto_format_backend((this - 40));

  JUMPOUT(0x24C1ED730);
}

void crypto::crypto_serializer_t::~crypto_serializer_t(crypto::crypto_serializer_t *this)
{
  *this = &unk_285BF5440;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285BF5440;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(this + 8, *(this + 2));
}

void *crypto::header::exec_with_enc_mode<di_utils::overloaded<crypto::format::create_crypto_mode_data(void)::{lambda(crypto::header::aes_cbc_iv8,crypto::header const&)#1},crypto::format::create_crypto_mode_data(void)::{lambda(crypto::header::aes_xts,crypto::header const&)#1}>>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 5)
  {
    v4 = *(*result + 48) - *(*result + 40);
    v8[0] = *(*result + 40);
    v8[1] = v4;
    crypto::context::aes_iv::aes_iv(&v9, v8);
    crypto::context::aes_iv::aes_iv(a3, &v9);
    *(a3 + 16) = 0;
    result = v9;
    v9 = 0;
    if (result)
    {
      return MEMORY[0x24C1ED710](result, 0x1000C8015230203);
    }
  }

  else
  {
    v5 = result[1];
    v6 = *(v5 + 40);
    v7 = *(v5 + 48) - v6;
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = 1;
  }

  return result;
}

void sub_248F1F370(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x24C1ED710](a12, 0x1000C8015230203, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::byte>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t *std::vector<std::byte>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_248F1F52C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<429ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<429ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<429ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<429ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<429ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF5810;
  di_log::logger_buf<di_log::log_printer<429ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<429ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<429ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F1FBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<429ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<429ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 429;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 429;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<437ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<437ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<437ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<437ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<437ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF5A30;
  di_log::logger_buf<di_log::log_printer<437ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<437ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<437ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F20364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<437ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<437ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 437;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 437;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<525ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<525ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<525ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<525ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<525ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF5C50;
  di_log::logger_buf<di_log::log_printer<525ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<525ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<525ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F20AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<525ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<525ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 525;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 525;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<602ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<602ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<602ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<602ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<602ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF5E70;
  di_log::logger_buf<di_log::log_printer<602ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<602ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<602ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F21294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<602ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<602ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 602;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 602;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<758ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<758ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<758ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<758ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<758ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF6090;
  di_log::logger_buf<di_log::log_printer<758ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<758ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<758ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F21A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<758ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<758ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 758;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 758;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<776ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<776ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<776ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<776ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<776ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF62B0;
  di_log::logger_buf<di_log::log_printer<776ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<776ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<776ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F221C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<776ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<776ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 776;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 776;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void crypto_format_getter::~crypto_format_getter(crypto_format_getter *this)
{
  *this = &unk_285BF6330;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_285BF6330;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1ED730);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<di_utils::overloaded<crypto::format::create_aes_context(crypto::context::aes::operation)::{lambda(crypto::format::aes_cbc_data const&)#1},crypto::format::create_aes_context(crypto::context::aes::operation)::{lambda(crypto::format::aes_xts_data const&)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,crypto::format::aes_cbc_data,crypto::format::aes_xts_data> &>(uint64_t a1@<X0>, void *a2@<X1>, crypto::context::aes_xts *a3@<X8>)
{
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = v5[3] - v5[2];
  v8[0] = v5[2];
  v8[1] = v7;
  crypto::context::aes_xts::aes_xts(v9, v6, v8, a2, *(*v5 + 52));
  crypto::context::aes_xts::aes_xts(a3, v9);
  *(a3 + 36) = 1;
  v9[0] = &unk_285BD82F8;
  std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](v12);
  v9[0] = &unk_285BD3848;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_248F22590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  crypto::context::aes_xts::~aes_xts(va);
  _Unwind_Resume(a1);
}

void crypto::format::create_aes_context(crypto::context::aes::operation)::{lambda(crypto::format::aes_cbc_data const&)#1}::operator()(_DWORD *a1@<X0>, const crypto::context::aes_iv *a2@<X1>, crypto::context::aes_cbc *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[2];
  v7 = *(*a1 + 24) - *(*a1 + 16);
  v9[0] = *(*a1 + 16);
  v9[1] = v7;
  crypto::context::aes_cbc::aes_cbc(v10, v6, v9, a2, *(*v5 + 52));
  crypto::context::aes_cbc::aes_cbc(a3, v10);
  *(a3 + 36) = 0;
  v10[0] = &unk_285BD82D0;
  std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](&v14);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    MEMORY[0x24C1ED710](v8, 0x1000C8015230203);
  }

  v10[0] = &unk_285BD3848;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_248F22684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  crypto::context::aes_cbc::~aes_cbc(va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<crypto_format_backend::promise_io_t>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 5];
    v7 = *v6 + 128 * (v5 & 0x1F);
    v8 = *(v2 + (((a1[5] + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((a1[5] + v5) & 0x1F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 14);
        if (v9)
        {
          *(v9 + 16) = 0;
        }

        v10 = *(v7 + 1);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v7 += 128;
        if (v7 - *v6 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 16;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 32;
  }

  a1[4] = v13;
LABEL_20:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<FileLocal::promise_io_t *>::~__split_buffer(a1);
}

uint64_t std::deque<crypto_format_backend::promise_io_t>::emplace_back<crypto_format_backend::promise_io_t>(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 4 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<crypto_format_backend::promise_io_t>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v7 & 0x1F) << 7);
  }

  v9 = sg_entry::sg_entry(v8, a2);
  *(v9 + 112) = *(a2 + 112);
  v9 += 112;
  *(a2 + 112) = 0;
  *(*v9 + 16) = v9;
  *(v9 + 8) = *(a2 + 120);
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 >> 5));
  v15 = *v14 + ((v12 & 0x1F) << 7);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4096;
  }

  return v15 - 128;
}

void std::deque<crypto_format_backend::promise_io_t>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x20;
  v3 = v1 - 32;
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
    std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *>>::emplace_back<std::atomic<DiskImage::Context *> *&>(a1, &v9);
}

void sub_248F22B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *serializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig1_t>>>::serializer_exception_trait(void *a1, uint64_t a2)
{
  serializer_exception_base::serializer_exception_base((a1 + 2), a2);
  *a1 = &unk_285BF6400;
  a1[2] = &unk_285BF6468;
  a1[1] = &unk_285BF6428;
  return a1;
}

std::exception *serializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig1_t>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = &unk_285BE70A8;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void serializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig1_t>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = &unk_285BE70A8;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x24C1ED730);
}

void non-virtual thunk toserializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig1_t>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toserializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig1_t>>>::~serializer_exception_trait(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = &unk_285BE70A8;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = &unk_285BE70A8;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  JUMPOUT(0x24C1ED730);
}

void *serializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig2_t>>>::serializer_exception_trait(void *a1, uint64_t a2)
{
  serializer_exception_base::serializer_exception_base((a1 + 2), a2);
  *a1 = &unk_285BF6540;
  a1[2] = &unk_285BF65A8;
  a1[1] = &unk_285BF6568;
  return a1;
}

std::exception *serializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig2_t>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = &unk_285BE70A8;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void serializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig2_t>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = &unk_285BE70A8;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x24C1ED730);
}

void non-virtual thunk toserializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig2_t>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toserializer_exception_trait<TraitExtractor<signature_type,print_as_string<crypto::header::sig2_t>>>::~serializer_exception_trait(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = &unk_285BE70A8;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = &unk_285BE70A8;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  JUMPOUT(0x24C1ED730);
}

void *std::__shared_ptr_emplace<crypto::crypto_format_auth_table_reader>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<crypto::header> const&,std::shared_ptr<Backend> const&,std::allocator<crypto::crypto_format_auth_table_reader>,0>(void *a1, uint64_t *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BF65E0;
  std::construct_at[abi:ne200100]<crypto::crypto_format_auth_table_reader,std::shared_ptr<crypto::header> const&,std::shared_ptr<Backend> const&,crypto::crypto_format_auth_table_reader*>(a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<crypto::crypto_format_auth_table_reader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BF65E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void *std::construct_at[abi:ne200100]<crypto::crypto_format_auth_table_reader,std::shared_ptr<crypto::header> const&,std::shared_ptr<Backend> const&,crypto::crypto_format_auth_table_reader*>(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = &unk_285BF6630;
    a1[1] = v5;
    a1[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = &unk_285BF6630;
    a1[1] = v5;
    a1[2] = 0;
  }

  v6 = a3[1];
  a1[3] = *a3;
  a1[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void sub_248F23974(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x24C1ED710](a9, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void crypto::crypto_format_auth_table_reader::read_auth_entry(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = **a3;
  switch(v4)
  {
    case 4:
      crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)4>>(a2, a3, x8_0);
      break;
    case 2:
      crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)2>>(a2, a3, x8_0);
      break;
    case 1:
      crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)1>>(a2, a3, x8_0);
      break;
    default:
      crypto::crypto_format_auth_table_reader::read_unknown_entry(a1, a2, a3, x8_0);
      break;
  }
}

uint64_t crypto::crypto_format_auth_table_reader::get_nr_bits_for_key(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = v2[6];
  if (v2[4] == 5)
  {
    v4 = v2[8];
  }

  else
  {
    v4 = 8 * v2[3];
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

void crypto::crypto_format_auth_table_reader::verify_decrypted_blob(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = v5[6];
  if (v5[4] == 5)
  {
    v7 = v5[8];
  }

  else
  {
    v7 = 8 * v5[3];
  }

  v8 = (v6 + v7) >> 3;
  if (a2[1] == v8 + 5)
  {
    v9 = *a2 + v8 + 5;
    *(&v15.__r_.__value_.__s + 23) = 4;
    LODWORD(v15.__r_.__value_.__l.__data_) = *(v9 - 5);
    v15.__r_.__value_.__s.__data_[4] = 0;
    if (!std::string::compare(&v15, "CKIE"))
    {
      v11 = *a2;
      v10 = 1;
    }

    else
    {
      *&v13 = "std::expected<std::span<std::byte>, diskimage_err> crypto::crypto_format_auth_table_reader::verify_decrypted_blob(const std::span<std::byte> &)";
      *(&v13 + 1) = 113;
      v14 = 16;
      di_log::logger<di_log::log_printer<355ul>>::logger(v16, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "crypto_format: cookie differs", 29);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(v16);
      MEMORY[0x24C1ED6A0](v18);
      v8 = std::generic_category();
      v10 = 0;
      v11 = 35;
    }

    *a3 = v11;
    *(a3 + 8) = v8;
    *(a3 + 16) = v10;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15.__r_.__value_.__r.__words[0] = "std::expected<std::span<std::byte>, diskimage_err> crypto::crypto_format_auth_table_reader::verify_decrypted_blob(const std::span<std::byte> &)";
    v15.__r_.__value_.__l.__size_ = 113;
    LODWORD(v15.__r_.__value_.__r.__words[2]) = 16;
    di_log::logger<di_log::log_printer<348ul>>::logger(v16, &v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "crypto_format: blob length differs", 34);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(v16);
    MEMORY[0x24C1ED6A0](v18);
    v12 = std::generic_category();
    *a3 = 35;
    *(a3 + 8) = v12;
    *(a3 + 16) = 0;
  }
}

void sub_248F23C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  di_log::logger<di_log::log_printer<355ul>>::~logger(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void crypto::crypto_format_auth_table_reader::~crypto_format_auth_table_reader(crypto::crypto_format_auth_table_reader *this)
{
  *this = &unk_285BF6630;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_285BF6630;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x24C1ED730);
}

void std::vector<crypto::auth_entry_descriptor>::reserve(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      std::allocator<crypto::auth_entry_descriptor>::allocate_at_least[abi:ne200100](a1, a2);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }
}

void *di_log::logger<di_log::log_printer<258ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<258ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF66A8;
  a1[45] = &unk_285BF67A8;
  a1[46] = &unk_285BF67D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF66A8;
  a1[45] = &unk_285BF6730;
  a1[46] = &unk_285BF6758;
  return a1;
}

void sub_248F23EE0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<258ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<258ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF6840;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F23FF8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF6840;
  di_log::logger_buf<di_log::log_printer<258ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<258ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<258ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<258ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<258ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<258ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<258ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<258ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<258ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F2459C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<258ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 258;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 258;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t *std::vector<crypto::auth_entry_descriptor>::__init_with_size[abi:ne200100]<crypto::auth_entry_descriptor*,crypto::auth_entry_descriptor*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<crypto::auth_entry_descriptor>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_248F24808(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<crypto::auth_entry_descriptor>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::allocator<crypto::auth_entry_descriptor>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<iovec>::__throw_length_error[abi:ne200100]();
}

uint64_t crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)1>>@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_285BF6D00;
  v5[1] = a2;
  v5[3] = v5;
  crypto::crypto_format_auth_table_reader::_read_auth_entry_specialized(a3, 0x268uLL, x8_0);
  return std::__function::__value_func<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::~__value_func[abi:ne200100](v5);
}

void sub_248F248F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)2>>@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_285BF6D90;
  v5[1] = a2;
  v5[3] = v5;
  crypto::crypto_format_auth_table_reader::_read_auth_entry_specialized(a3, 0x234uLL, x8_0);
  return std::__function::__value_func<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::~__value_func[abi:ne200100](v5);
}

void sub_248F24990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)4>>@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_285BF6E10;
  v5[1] = a2;
  v5[3] = v5;
  crypto::crypto_format_auth_table_reader::_read_auth_entry_specialized(a3, 0x22CuLL, x8_0);
  return std::__function::__value_func<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::~__value_func[abi:ne200100](v5);
}

void sub_248F24A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void crypto::crypto_format_auth_table_reader::read_unknown_entry(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  std::vector<char>::vector[abi:ne200100](&v31, *(*a3 + 3));
  v8 = *(a1 + 24);
  v9 = v31;
  v10 = *(*a3 + 3);
  v11 = *(*a3 + 1);
  v12 = *(details::get_dummy_shared_ptr() + 1);
  v21 = v9;
  v22 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = v10;
  v24 = v11;
  v25 = v10;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v13 = (*(*v8 + 128))(v8, &v21);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*(*a3 + 3) == v13)
  {
    v14 = **a3;
    v16 = v31;
    v15 = v32;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    *a4 = a2;
    *(a4 + 8) = 15;
    *(a4 + 12) = v14;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>((a4 + 16), v16, v15, v15 - v16);
    *(a4 + 632) = 3;
    *(a4 + 640) = 1;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *&v19 = "diskimage_err> crypto::crypto_format_auth_table_reader::read_unknown_entry(const auth_table &, const std::vector<auth_entry_descriptor>::const_iterator &)";
    *(&v19 + 1) = 74;
    v20 = 16;
    di_log::logger<di_log::log_printer<300ul>>::logger(&v21, &v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Can't read custom encryption entry header, error ", 49);
    MEMORY[0x24C1ED390](&v29, v13);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(&v21);
    MEMORY[0x24C1ED6A0](&v30);
    if (v13 <= 0)
    {
      v17 = -v13;
    }

    else
    {
      v17 = 5;
    }

    v18 = std::generic_category();
    *a4 = v17;
    *(a4 + 8) = v18;
    *(a4 + 640) = 0;
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_248F24C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v16 = *(v14 - 88);
  if (v16)
  {
    *(v14 - 80) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t crypto::crypto_format_auth_table_reader::_read_auth_entry_specialized@<X0>(uint64_t a2@<X2>, size_t a3@<X3>, uint64_t a5@<X8>)
{
  v12[34] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 12) == a3)
  {
    operator new[]();
  }

  *&v8 = "diskimage_err> crypto::crypto_format_auth_table_reader::_read_auth_entry_specialized(const auth_table &, const std::vector<auth_entry_descriptor>::const_iterator &, size_t, const std::function<auth_table::entry_variant (const char *)>)";
  *(&v8 + 1) = 219;
  v9 = 16;
  di_log::logger<di_log::log_printer<270ul>>::logger(&v10, &v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "encryption: header size mismatch", 32);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(&v10);
  MEMORY[0x24C1ED6A0](v12);
  result = make_error_code(161);
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 640) = 0;
  return result;
}

void *di_log::logger<di_log::log_printer<270ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<270ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF68C8;
  a1[45] = &unk_285BF69C8;
  a1[46] = &unk_285BF69F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF68C8;
  a1[45] = &unk_285BF6950;
  a1[46] = &unk_285BF6978;
  return a1;
}

void sub_248F2515C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<270ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<276ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<276ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF6AE8;
  a1[45] = &unk_285BF6BE8;
  a1[46] = &unk_285BF6C10;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF6AE8;
  a1[45] = &unk_285BF6B70;
  a1[46] = &unk_285BF6B98;
  return a1;
}

void sub_248F252C8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<276ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t std::function<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t di_log::logger_buf<di_log::log_printer<270ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF6A60;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F25434(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF6A60;
  di_log::logger_buf<di_log::log_printer<270ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<270ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<270ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<270ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<270ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<270ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<270ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<270ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<270ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F259D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<270ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 270;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 270;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<276ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF6C80;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F25C94(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF6C80;
  di_log::logger_buf<di_log::log_printer<276ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<276ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<276ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<276ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<276ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<276ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<276ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<276ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<276ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F26238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<276ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 276;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 276;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t std::__function::__func<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)1>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1},std::allocator<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)1>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1}>,std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BF6D00;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)1>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1},std::allocator<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)1>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1}>,std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::operator()@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  crypto::passphrase_header::passphrase_header(v10, *a2);
  v5 = v11;
  v6 = v15;
  *a3 = *(a1 + 8);
  *(a3 + 8) = 15;
  v7 = v10[1];
  *(a3 + 12) = v10[0];
  *(a3 + 28) = v7;
  *(a3 + 44) = v10[2];
  *(a3 + 60) = v5;
  v8 = v13;
  *(a3 + 64) = v12;
  *(a3 + 80) = v8;
  *(a3 + 96) = v14;
  *(a3 + 112) = v6;
  result = memcpy((a3 + 116), v16, 0x200uLL);
  *(a3 + 632) = 0;
  return result;
}

uint64_t std::__function::__func<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)1>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1},std::allocator<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)1>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1}>,std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)2>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1},std::allocator<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)2>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1}>,std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BF6D90;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)2>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1},std::allocator<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)2>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1}>,std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::operator()@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  crypto::public_key_header::public_key_header(&v8, *a2);
  v5 = v8;
  *a3 = *(a1 + 8);
  *(a3 + 8) = 15;
  *(a3 + 12) = v5;
  v6 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = v6;
  *(a3 + 48) = v11;
  result = memcpy((a3 + 64), v12, 0x200uLL);
  *(a3 + 632) = 1;
  return result;
}

uint64_t std::__function::__func<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)2>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1},std::allocator<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)2>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1}>,std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)4>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1},std::allocator<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)4>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1}>,std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BF6E10;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)4>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1},std::allocator<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)4>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1}>,std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::operator()@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  crypto::symmetric_key_header::symmetric_key_header(&v8, *a2);
  v5 = v8;
  *a3 = *(a1 + 8);
  *(a3 + 8) = 15;
  *(a3 + 12) = v5;
  v6 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = v6;
  *(a3 + 48) = v11;
  result = memcpy((a3 + 56), v12, 0x200uLL);
  *(a3 + 632) = 2;
  return result;
}

uint64_t std::__function::__func<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)4>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1},std::allocator<std::expected<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,std::error_code> crypto::crypto_format_auth_table_reader::read_auth_entry_specialized<crypto::auth_entry_ns::mechanism_to_entry<(crypto::auth_entry_descriptor::mechanism_t)4>>(crypto::auth_table const&,std::__wrap_iter<crypto::auth_entry_descriptor const*> const&)::{lambda(char const*)#1}>,std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *di_log::logger<di_log::log_printer<300ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<300ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF6E98;
  a1[45] = &unk_285BF6F98;
  a1[46] = &unk_285BF6FC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF6E98;
  a1[45] = &unk_285BF6F20;
  a1[46] = &unk_285BF6F48;
  return a1;
}

void sub_248F26AA8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<300ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<300ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF7030;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F26BC0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF7030;
  di_log::logger_buf<di_log::log_printer<300ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<300ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<300ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<300ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<300ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<300ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<300ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<300ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<300ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F27164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<300ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 300;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 300;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *di_log::logger<di_log::log_printer<348ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<348ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF70B8;
  a1[45] = &unk_285BF71B8;
  a1[46] = &unk_285BF71E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF70B8;
  a1[45] = &unk_285BF7140;
  a1[46] = &unk_285BF7168;
  return a1;
}

void sub_248F27474(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<348ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<355ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<355ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF72D8;
  a1[45] = &unk_285BF73D8;
  a1[46] = &unk_285BF7400;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF72D8;
  a1[45] = &unk_285BF7360;
  a1[46] = &unk_285BF7388;
  return a1;
}

void sub_248F275E0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<355ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<348ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF7250;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F276F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF7250;
  di_log::logger_buf<di_log::log_printer<348ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<348ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<348ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<348ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<348ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<348ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<348ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<348ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<348ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F27C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<348ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 348;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 348;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<355ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF7470;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F27F58(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF7470;
  di_log::logger_buf<di_log::log_printer<355ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<355ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<355ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<355ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<355ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<355ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<355ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<355ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<355ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F284FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<355ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 355;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 355;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<429ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF5810;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F287B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<437ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF5A30;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F28880(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t **boost::icl::interval_base_set<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>::subtract(uint64_t **a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 3)
    {
      if (v4 < v5)
      {
        return a1;
      }
    }

    else if (v5 >= v4)
    {
      return a1;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    return a1;
  }

  v7 = std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::lower_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a2);
  v8 = std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::upper_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a2);
  if (v7 == v8)
  {
    return a1;
  }

  v9 = v8;
  v10 = *v8;
  if (*v8)
  {
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
    }

    while (v10);
  }

  else
  {
    v12 = v8;
    do
    {
      v11 = v12[2];
      v13 = *v11 == v12;
      v12 = v11;
    }

    while (v13);
  }

  v19 = *(v7 + 32);
  v20 = *(v7 + 48);
  boost::icl::right_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v19, a2, &v21);
  v19 = *(v11 + 32);
  v20 = *(v11 + 48);
  boost::icl::left_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v19, a2, &v17);
  v19 = v17;
  LOBYTE(v20) = v18;
  std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::erase(a1, v7, v9);
  v14 = v21;
  if (v23)
  {
    if (v23 == 3)
    {
      if (v22 < v21)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (v21 >= v22)
    {
      goto LABEL_26;
    }

    v14 = v21 + 1;
  }

  if (v14 < v22)
  {
LABEL_25:
    std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::discrete_interval<unsigned long long,std::less> const&>(a1, &v21, &v21);
  }

LABEL_26:
  v15 = v19;
  if (v20)
  {
    if (v20 == 3)
    {
      if (*(&v19 + 1) < v19)
      {
        return a1;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (v19 >= *(&v19 + 1))
    {
      return a1;
    }

    v15 = v19 + 1;
  }

  if (v15 < *(&v19 + 1))
  {
LABEL_33:
    std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::discrete_interval<unsigned long long,std::less> const&>(a1, &v19, &v19);
  }

  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<525ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF5C50;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F28B04(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<602ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF5E70;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F28BCC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *crypto::details::buffer_aligner::operator()<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>(void *result, void **a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a2[1];
  v6 = *(a3 + 8);
  v7 = *a4;
  v8 = *a5;
  if (v5 != v6 && v7 != v8)
  {
    v10 = result;
    v11 = *a2;
    do
    {
      result = crypto::details::buffer_aligner::try_append_to_last_sg(v10, v5, v7);
      if (result != v5[2])
      {
        result = crypto::details::buffer_aligner::handle_unaligned_sg(v10, v5, result, v7);
      }

      v5 += 16;
      if ((v5 - *v11) == 4096)
      {
        v12 = v11[1];
        ++v11;
        v5 = v12;
      }

      if (v5 == v6)
      {
        break;
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<crypto_format_backend::run_futures(void)::$_0,std::__deque_iterator<crypto_format_backend::promise_io_t,crypto_format_backend::promise_io_t*,crypto_format_backend::promise_io_t&,crypto_format_backend::promise_io_t**,long,32l>,boost::use_default,boost::use_default>>::report_errors(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
  v2 = *(a1 + 64);
  while (v2 != *(a1 + 40))
  {
    v5 = (v2 + 112);
    if ((*(*(v2 + 112) + 4) & 1) == 0)
    {
      *&v9 = "crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/crypto/crypto_format.cpp:712:35), std::__deque_iterator<crypto_format_backend::promise_io_t, crypto_format_backend::promise_io_t *, crypto_format_backend::promise_io_t &, crypto_format_backend::promise_io_t **, long>>>::report_errors(int) [It = boost::iterators::transform_iterator<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/crypto/crypto_format.cpp:712:35), std::__deque_iterator<crypto_format_backend::promise_io_t, crypto_format_backend::promise_io_t *, crypto_format_backend::promise_io_t &, crypto_format_backend::promise_io_t **, long>>]";
      *(&v9 + 1) = 431;
      v10 = 16;
      di_log::logger<di_log::log_printer<60ul>>::logger(v11, &v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "diskimageuio: report err ", 25);
      MEMORY[0x24C1ED390](&v12, a2);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(v11);
      MEMORY[0x24C1ED6A0](&v13);
      v6 = *v5;
      *v6 = *(a1 + 80);
      *(v6 + 4) = 1;
      lw_promise<int>::notify_future(v5, v7);
      v2 = *(a1 + 64);
    }

    v2 += 128;
    *(a1 + 64) = v2;
    v8 = *(a1 + 56);
    if (v2 - *v8 == 4096)
    {
      *(a1 + 56) = v8 + 1;
      v2 = v8[1];
      *(a1 + 64) = v2;
    }
  }
}

void sub_248F28FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<60ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<60ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<60ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF75F8;
  a1[45] = &unk_285BF76F8;
  a1[46] = &unk_285BF7720;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF75F8;
  a1[45] = &unk_285BF7680;
  a1[46] = &unk_285BF76A8;
  return a1;
}

void sub_248F290D0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<60ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<60ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF7790;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F291E8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF7790;
  di_log::logger_buf<di_log::log_printer<60ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<60ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<60ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<60ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<60ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<60ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<60ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<60ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F2978C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<60ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<758ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF6090;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F29A48(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<776ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF62B0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F29B10(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<crypto_format_backend>::__shared_ptr_emplace[abi:ne200100]<crypto_format_backend&,std::shared_ptr<Backend> const&,std::allocator<crypto_format_backend>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6E08;
  crypto_format_backend::crypto_format_backend((a1 + 3), a2, a3);
}

void AEAHelper::create_auth_data(void *a1@<X0>, AEAwrapper::AuthData *a2@<X8>)
{
  v3 = (*(**a1 + 192))(*a1);
  if (v3 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "AEAHelper: Invalid file descriptor.", 0x16u);
  }

  v6 = AAFileStreamOpenWithFD(v3, 0);
  AEAwrapper::ByteStream::ByteStream(&v7, &v6);
  AEAwrapper::Context::Context(&v6, &v7);
  AEAwrapper::AuthData::AuthData(a2, &v6);
  AEAwrapper::Context::~Context(&v6);
  AEAwrapper::ByteStream::~ByteStream(&v7);
}

void sub_248F29CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  AEAwrapper::Context::~Context(&a9);
  AEAwrapper::ByteStream::~ByteStream(va);
  _Unwind_Resume(a1);
}

void sub_248F2A0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  AEAHelper::key_params_t::~key_params_t(v41);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(a27);
  }

  if (a34)
  {
    MEMORY[0x24C1ED710](a34, v40);
  }

  _Unwind_Resume(a1);
}

uint64_t *AEAHelper::key_params_t::emplace<std::unique_ptr<unsigned char []>,std::unique_ptr<unsigned char []>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Not allowed more than one instance of ", 38);
    v4 = strlen((0x8000000248FA9678 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, 0x8000000248FA9678 & 0x7FFFFFFFFFFFFFFFLL, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " auth entry", 11);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v5, 0x16u);
  }

  return std::optional<std::unique_ptr<unsigned char []>>::emplace[abi:ne200100]<std::unique_ptr<unsigned char []>,void>(a1, a2);
}

void sub_248F2A298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t get_auth_data_value@<X0>(AEAAuthData *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v6 = malloc_type_valloc(0x800uLL, 0x8B7C732DuLL);
  if (!v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v19, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  __s = &unk_285BF7810;
  v24[2] = &__s;
  __s2 = v6;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v26, &__s);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&__s);
  EntryCount = AEAwrapper::AuthData::getEntryCount(a1);
  if (EntryCount)
  {
    v8 = 0;
    v9 = __s2;
    while (1)
    {
      v22 = 0;
      bzero(v9, 0x800uLL);
      if (AEAwrapper::AuthData::getEntry(a1, v8, 0x800uLL, v9, 0, 0, 0, &v22))
      {
        v12 = std::generic_category();
        *a3 = 1;
        goto LABEL_13;
      }

      v10 = *(a2 + 23);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = *a2;
        v10 = *(a2 + 8);
      }

      else
      {
        v11 = a2;
      }

      v9 = __s2;
      if (!strncmp(v11, __s2, v10))
      {
        break;
      }

      if (EntryCount == ++v8)
      {
        goto LABEL_10;
      }
    }

    if (v22 < 0x100000)
    {
      v15 = malloc_type_valloc(v22 + 1, 0x8B7C732DuLL);
      if (!v15)
      {
        v20 = __cxa_allocate_exception(8uLL);
        v21 = std::bad_alloc::bad_alloc(v20);
        __cxa_throw(v21, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      v27[0] = &unk_285BF7810;
      v27[3] = v27;
      __s = v15;
      std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v24, v27);
      std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v27);
      bzero(__s, v22 + 1);
      if (AEAwrapper::AuthData::getEntry(a1, v8, 0x800uLL, __s2, 0, v22, __s, 0))
      {
        v16 = std::generic_category();
        v17 = 0;
        *a3 = 1;
        *(a3 + 8) = v16;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(a3, __s);
        v17 = 1;
      }

      *(a3 + 24) = v17;
      std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&__s, 0);
      std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v24);
      goto LABEL_14;
    }

    v12 = std::generic_category();
    v13 = 84;
  }

  else
  {
LABEL_10:
    v12 = std::generic_category();
    v13 = 22;
  }

  *a3 = v13;
LABEL_13:
  *(a3 + 8) = v12;
  *(a3 + 24) = 0;
LABEL_14:
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&__s2, 0);
  return std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v26);
}

void sub_248F2A584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v3 + 8);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](va1, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v4 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::expected<std::string,std::error_code>::operator=[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *(a1 + 23);
    if (*(a2 + 24))
    {
      if (v4 < 0)
      {
        operator delete(*a1);
      }

      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
      *(a2 + 23) = 0;
      *a2 = 0;
    }

    else
    {
      if (v4 < 0)
      {
        operator delete(*a1);
      }

      *a1 = *a2;
      *(a1 + 24) = 0;
    }
  }

  else if (*(a2 + 24))
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = *a2;
  }

  return a1;
}

std::string *AEAHelper::key_params_t::emplace<AEAHelper::wkms_t,std::string &,AEAwrapper::AuthData const&>(uint64_t a1, __int128 *a2, std::string::size_type a3)
{
  if (*(a1 + 112) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Not allowed more than one instance of ", 38);
    v6 = strlen(("N9AEAHelper6wkms_tE" & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "N9AEAHelper6wkms_tE" & 0x7FFFFFFFFFFFFFFFLL, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " auth entry", 11);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v7, 0x16u);
  }

  v3 = (a1 + 80);

  return std::optional<AEAHelper::wkms_t>::emplace[abi:ne200100]<std::string &,AEAwrapper::AuthData const&,void>(v3, a2, a3);
}

void sub_248F2A75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

std::string *AEAHelper::key_params_t::emplace<AEAHelper::saks_metadata_t,std::string &>(std::string *a1, __int128 *a2)
{
  if (a1[3].__r_.__value_.__s.__data_[0] == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Not allowed more than one instance of ", 38);
    v5 = strlen(("N9AEAHelper15saks_metadata_tE" & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "N9AEAHelper15saks_metadata_tE" & 0x7FFFFFFFFFFFFFFFLL, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " auth entry", 11);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v6, 0x16u);
  }

  v2 = a1 + 2;

  return std::optional<AEAHelper::saks_metadata_t>::emplace[abi:ne200100]<std::string &,void>(v2, a2);
}

void sub_248F2A870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

std::string *AEAHelper::key_params_t::emplace<AEAHelper::kms_t,std::string &>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Not allowed more than one instance of ", 38);
    v5 = strlen(("N9AEAHelper5kms_tE" & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "N9AEAHelper5kms_tE" & 0x7FFFFFFFFFFFFFFFLL, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " auth entry", 11);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v6, 0x16u);
  }

  v2 = (a1 + 16);

  return std::optional<AEAHelper::saks_metadata_t>::emplace[abi:ne200100]<std::string &,void>(v2, a2);
}

void sub_248F2A984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void AEAHelper::key_params_t::~key_params_t(void **this)
{
  if (*(this + 112) == 1 && *(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  if (*(this + 8) == 1)
  {
    v2 = *this;
    *this = 0;
    if (v2)
    {
      MEMORY[0x24C1ED710](v2, 0x1000C8077774924);
    }
  }
}

uint64_t *std::optional<std::unique_ptr<unsigned char []>>::emplace[abi:ne200100]<std::unique_ptr<unsigned char []>,void>(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    *a1 = 0;
    if (v4)
    {
      MEMORY[0x24C1ED710](v4, 0x1000C8077774924);
    }
  }

  v5 = *a2;
  *a2 = 0;
  *a1 = v5;
  *(a1 + 8) = 1;
  return a1;
}

std::string *std::optional<AEAHelper::wkms_t>::emplace[abi:ne200100]<std::string &,AEAwrapper::AuthData const&,void>(std::string *this, __int128 *a2, std::string::size_type a3)
{
  if (this[1].__r_.__value_.__s.__data_[8] == 1)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[8] = 0;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__s.__data_[8] = 1;
  return this;
}

std::string *std::optional<AEAHelper::saks_metadata_t>::emplace[abi:ne200100]<std::string &,void>(std::string *this, __int128 *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

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

  this[1].__r_.__value_.__s.__data_[0] = 1;
  return this;
}

uint64_t *AEAwrapper::ByteStream::ByteStream(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Error opening ByteStream", 0x16u);
  }

  return result;
}

AEAwrapper::Context *AEAwrapper::Context::Context(AEAwrapper::Context *this, AAByteStream *a2)
{
  v3 = AEAContextCreateWithEncryptedStream(*a2);
  *this = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Context creation failed.", 0x16u);
  }

  return this;
}

uint64_t AEAwrapper::Context::setSymmetricKey(AEAContext *this, uint8_t *buf, size_t buf_size)
{
  result = AEAContextSetFieldBlob(*this, 9u, 0, buf, buf_size);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Context setup failed.", 0x16u);
  }

  return result;
}

uint64_t AEAwrapper::Context::getAEAIdentifier(AEAContext_impl **this)
{
  __dst[4] = *MEMORY[0x277D85DE8];
  v1 = *this;
  buf_size = 0;
  if (AEAContextGetFieldBlob(v1, 0x12u, 0, 0, 0, &buf_size) < 0)
  {
    return 0;
  }

  v2 = buf_size;
  if (buf_size >= 0x100000)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = buf_size;
  }

  if (buf_size)
  {
    v4 = malloc_type_valloc(v3, 0x8B7C732DuLL);
    if (!v4)
    {
      exception = __cxa_allocate_exception(8uLL);
      v6 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v6, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  else
  {
    v4 = 0;
  }

  __dst[0] = &unk_285BF7890;
  __dst[3] = __dst;
  buf = v4;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v13, __dst);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](__dst);
  v8 = buf;
  if (AEAContextGetFieldBlob(v1, 0x12u, 0, v3, buf, 0) < 0)
  {
    v7 = 0;
  }

  else
  {
    if (v2 >= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v2;
    }

    memcpy(__dst, v8, v9);
    v7 = __dst[0];
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&buf, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v13);
  return v7;
}

void sub_248F2B054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v5 + 8);
  _Unwind_Resume(a1);
}

AEAwrapper::AuthData *AEAwrapper::AuthData::AuthData(AEAwrapper::AuthData *this, AEAContext *a2)
{
  v3 = AEAAuthDataCreateWithContext(*a2);
  *this = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Authentication Data creation failed.", 0x16u);
  }

  return this;
}

void *AEAwrapper::DecryptionStream::DecryptionStream(void *result, void *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  *result = *a2;
  *a2 = 0;
  result[1] = v4;
  *a3 = 0;
  result[2] = *a4;
  *a4 = 0;
  return result;
}

uint64_t transformed_extents_iterator_interface::transformed_extents_iterator_interface(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 40);
  *a1 = &unk_285BF7958;
  *(a1 + 8) = v4;
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *a1 = &unk_285BF7910;
  DiskImage::const_extents_iterator_t::const_extents_iterator_t(a1 + 48, a2 + 48);
  DiskImage::const_extents_iterator_t::const_extents_iterator_t(a1 + 96, a2 + 96);
  v7 = *(a2 + 144);
  v8 = *(a2 + 152);
  *(a1 + 144) = v7;
  *(a1 + 152) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 144);
  }

  v10 = *v7;
  v9 = v7[1];
  *(a1 + 160) = v10;
  *(a1 + 168) = v9;
  return a1;
}

void sub_248F2B2FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v3)
  {
    DiskImage::const_extents_iterator_t::operator++(v3);
  }

  _Unwind_Resume(exception_object);
}

void transformed_extents_iterator_interface::transformed_extents_iterator_interface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_285BF7958;
  *(a1 + 8) = a2;
  v9 = *(a3 + 16);
  *(a1 + 16) = *a3;
  *(a1 + 32) = v9;
  *(a1 + 40) = a4;
  *a1 = &unk_285BF7910;
  DiskImage::const_extents_iterator_t::const_extents_iterator_t(a1 + 48, a5);
  DiskImage::const_extents_iterator_t::const_extents_iterator_t(a1 + 96, a6);
  std::allocate_shared[abi:ne200100]<std::vector<DiskImage::diskimage_extent_t>,std::allocator<std::vector<DiskImage::diskimage_extent_t>>,std::vector<DiskImage::diskimage_extent_t> const&,0>();
}

void sub_248F2B3F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v3)
  {
    diskimage_uio::details::extents_db_impl::begin();
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  _Unwind_Resume(exception_object);
}

BOOL transformed_extents_iterator_interface::get_next_extent@<W0>(transformed_extents_iterator_interface *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v7 = *(this + 20);
  v6 = *(this + 21);
  while (v7 != v6 && *(v7 + 8) <= a2)
  {
    v7 += 32;
    *(this + 20) = v7;
  }

  v8 = (this + 80);
  while (DiskImage::const_extents_iterator_t::operator!=(this + 12, this + 24))
  {
    if (*v8 == 3 || *(this + 8) > v3)
    {
      break;
    }

    DiskImage::const_extents_iterator_t::operator++((this + 48), v20);
    v9 = v20[0];
    v20[0] = 0;
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }
  }

  result = DiskImage::const_extents_iterator_t::operator!=(this + 12, this + 24);
  if (result && *v8 == 3)
  {
    v11 = *(this + 8);
    if (*(this + 7) > v3)
    {
      v3 = *(this + 7);
    }

    v12 = 3;
    goto LABEL_44;
  }

  result = DiskImage::const_extents_iterator_t::operator==(this + 12, this + 24);
  v13 = *(this + 20);
  v14 = *(this + 21);
  if (result && v13 == v14)
  {
    v12 = 0;
    v11 = *(this + 3);
    goto LABEL_44;
  }

  if (v13 == v14)
  {
    v11 = *(this + 7);
    if (v11 <= v3)
    {
      v11 = *(this + 8);
      v12 = *(this + 20);
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  result = DiskImage::const_extents_iterator_t::operator==(this + 12, this + 24);
  if (result)
  {
    v15 = *(this + 20);
    v11 = *v15;
    if (*v15 <= v3)
    {
      v11 = *(v15 + 8);
      v12 = *(v15 + 24);
      goto LABEL_44;
    }

LABEL_39:
    v12 = 0;
    goto LABEL_44;
  }

  v16 = *(this + 7);
  v17 = *(this + 20);
  v18 = *v17;
  if (*v17 >= v16)
  {
    v11 = *(this + 7);
  }

  else
  {
    v11 = *v17;
  }

  if (v11 <= v3)
  {
    v11 = v3;
  }

  if (v11 < v16 && v11 < v18)
  {
    goto LABEL_39;
  }

  if (v11 >= v18)
  {
    v18 = v17[1];
    v8 = (v17 + 3);
  }

  else if (v18 >= *(this + 8))
  {
    v18 = *(this + 8);
  }

  v12 = *v8;
  v3 = v11;
  if (*(this + 3) >= v18)
  {
    v11 = v18;
  }

  else
  {
    v11 = *(this + 3);
  }

LABEL_44:
  *a3 = v3;
  *(a3 + 8) = v11;
  *(a3 + 16) = 2;
  *(a3 + 24) = v12;
  return result;
}

BOOL transformed_extents_iterator_interface::_make_val@<W0>(transformed_extents_iterator_interface *this@<X0>, uint64_t a2@<X8>)
{
  result = transformed_extents_iterator_interface::get_next_extent(this, *(this + 5), v9);
  v5 = *&v9[24];
  v7 = *v9;
  v6 = *&v9[8];
  do
  {
    if (v6 >= *(this + 3))
    {
      break;
    }

    if (v5 == 3)
    {
      break;
    }

    if (v5 != *&v9[24])
    {
      break;
    }

    v6 = *&v9[8];
    result = transformed_extents_iterator_interface::get_next_extent(this, *&v9[8], v8);
    *v9 = v8[0];
    *&v9[12] = *(v8 + 12);
  }

  while (*&v8[0] == v6);
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = 2;
  *(a2 + 24) = v5;
  return result;
}

uint64_t DiskImage::extents_t_transformer::make_custom_interface_extents@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::__value_func[abi:ne200100](v8, a2);
  DiskImage::extents_t::extents_t(a4, a1, v8, a3);
  return std::__function::__value_func<std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::~__value_func[abi:ne200100](v8);
}

void sub_248F2B774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t DiskImage::extents_t::extents_t(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v7 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v7;
  v8 = *(a2 + 4);
  *(a2 + 4) = 0;
  *(a1 + 32) = v8;
  v9 = *(a2 + 5);
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 40) = v9;
  std::__function::__value_func<std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::__value_func[abi:ne200100](a1 + 56, a2 + 56);
  std::function<std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::operator=((a1 + 56), a3);
  v10 = *a4;
  *(a1 + 24) = *(a4 + 16);
  *(a1 + 8) = v10;
  return a1;
}

void DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t *a1)
{
  v5[10] = *MEMORY[0x277D85DE8];
  DiskImage::extents_t::begin(v5, a1);
  DiskImage::extents_t::end(v4, a1);
  operator new();
}

void sub_248F2BB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::__function::__value_func<std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::~__value_func[abi:ne200100](v27 - 88);
  DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t &&,std::vector<DiskImage::diskimage_extent_t,DiskImage::extents_t &&::allocator<std::vector>> &&)::$_0::~$_0(&a9);
  DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t &&,std::vector<DiskImage::diskimage_extent_t,DiskImage::extents_t &&::allocator<std::vector>> &&)::$_0::~$_0(&a26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  v29 = *(v27 - 184);
  *(v27 - 184) = 0;
  if (v29)
  {
    (*(*v29 + 24))(v29);
  }

  v30 = *(v27 - 136);
  *(v27 - 136) = 0;
  if (v30)
  {
    (*(*v30 + 24))(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t *DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t &&,std::vector<DiskImage::diskimage_extent_t,DiskImage::extents_t &&::allocator<std::vector>> &&)::$_0::~$_0(uint64_t *a1)
{
  v2 = a1[13];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void transformed_extents_iterator_interface::~transformed_extents_iterator_interface(transformed_extents_iterator_interface *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }
}

{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  JUMPOUT(0x24C1ED730);
}

void *std::unique_ptr<transformed_extents_iterator_interface>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[19];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[12];
    v2[12] = 0;
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    v5 = v2[6];
    v2[6] = 0;
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }

    MEMORY[0x24C1ED730](v2, 0x10E1C4015EBE80FLL);
  }

  return a1;
}

uint64_t std::__shared_ptr_emplace<std::vector<DiskImage::diskimage_extent_t>>::__shared_ptr_emplace[abi:ne200100]<std::vector<DiskImage::diskimage_extent_t> const&,std::allocator<std::vector<DiskImage::diskimage_extent_t>>,0>(uint64_t a1, const void **a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285BF7988;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  std::vector<DiskImage::diskimage_extent_t>::__init_with_size[abi:ne200100]<DiskImage::diskimage_extent_t*,DiskImage::diskimage_extent_t*>((a1 + 24), *a2, a2[1], (a2[1] - *a2) >> 5);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<DiskImage::diskimage_extent_t>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BF7988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<std::vector<DiskImage::diskimage_extent_t>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t *std::vector<DiskImage::diskimage_extent_t>::__init_with_size[abi:ne200100]<DiskImage::diskimage_extent_t*,DiskImage::diskimage_extent_t*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DiskImage::diskimage_extent_t>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_248F2C140(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t &&,std::vector<DiskImage::diskimage_extent_t> &&)::$_0,DiskImage::diskimage_extent_t<std::vector<DiskImage::diskimage_extent_t> &>,std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_285BF79D8;
  v2 = a1[14];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void std::__function::__func<DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t &&,std::vector<DiskImage::diskimage_extent_t> &&)::$_0,DiskImage::diskimage_extent_t<std::vector<DiskImage::diskimage_extent_t> &>,std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_285BF79D8;
  v2 = a1[14];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  JUMPOUT(0x24C1ED730);
}

void sub_248F2C36C(_Unwind_Exception *a1)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    DiskImage::const_extents_iterator_t::operator++(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t &&,std::vector<DiskImage::diskimage_extent_t> &&)::$_0,DiskImage::diskimage_extent_t<std::vector<DiskImage::diskimage_extent_t> &>,std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285BF79D8;
  v4 = a2 + 7;
  DiskImage::const_extents_iterator_t::const_extents_iterator_t((a2 + 1), a1 + 8);
  result = DiskImage::const_extents_iterator_t::const_extents_iterator_t(v4, a1 + 56);
  v6 = *(a1 + 112);
  a2[13] = *(a1 + 104);
  a2[14] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_248F2C414(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    DiskImage::const_extents_iterator_t::operator++(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t &&,std::vector<DiskImage::diskimage_extent_t> &&)::$_0,DiskImage::diskimage_extent_t<std::vector<DiskImage::diskimage_extent_t> &>,std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::destroy(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  result = a1[1];
  a1[1] = 0;
  if (result)
  {
    v5 = *(*result + 24);

    return v5();
  }

  return result;
}

void std::__function::__func<DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t &&,std::vector<DiskImage::diskimage_extent_t> &&)::$_0,DiskImage::diskimage_extent_t<std::vector<DiskImage::diskimage_extent_t> &>,std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[14];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = __p[7];
  __p[7] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = __p[1];
  __p[1] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<DiskImage::extents_t_transformer::make_transformed_extents(DiskImage::extents_t &&,std::vector<DiskImage::diskimage_extent_t> &&)::$_0,DiskImage::diskimage_extent_t<std::vector<DiskImage::diskimage_extent_t> &>,std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uLong udif::get_csum_any(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    if (result != 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Unknown checksum found", 0x16u);
    }

    return crc32(0, 0, 0) << 32;
  }

  return result;
}

udif::header *udif::header::header(udif::header *this, const char *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  *(this + 44) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v54 = 0x100000000;
  smart_enums::validators::value<unsigned int>("segment_num_t", 0, &v54, 2);
  *(this + 15) = 0;
  v54 = 0x100000000;
  smart_enums::validators::value<unsigned int>("segment_count_t", 0, &v54, 2);
  *(this + 5) = 0u;
  *(this + 26) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  udif::checksum_type::checksum_type((this + 80));
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 21) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  udif::checksum_type::checksum_type((this + 352));
  *(this + 89) = 0;
  *(this + 122) = 0;
  v54 = 0x100000000;
  LODWORD(v55) = 2;
  smart_enums::validators::value<unsigned int>("image_variant_type", 0, &v54, 3);
  *(this + 492) = 0;
  v4 = *a2;
  LODWORD(v54) = 2037149547;
  smart_enums::validators::value<unsigned int>("header_signature", v4, &v54, 1);
  *this = 2037149547;
  v5 = bswap32(*(a2 + 1));
  LODWORD(v54) = 4;
  smart_enums::validators::value<unsigned int>("version_t", v5, &v54, 1);
  *(this + 1) = 4;
  v6 = bswap32(*(a2 + 2));
  LODWORD(v54) = 512;
  smart_enums::validators::value<unsigned int>("header_size_t", v6, &v54, 1);
  *(this + 2) = 512;
  udif::header::header_flags::header_flags(&v54, bswap32(*(a2 + 3)));
  *(this + 3) = v54;
  *(this + 2) = *(a2 + 2);
  *(this + 3) = bswap64(*(a2 + 3));
  *(this + 4) = bswap64(*(a2 + 4));
  *(this + 5) = bswap64(*(a2 + 5));
  *(this + 6) = bswap64(*(a2 + 6));
  v7 = bswap32(*(a2 + 14));
  v54 = 0x100000000;
  smart_enums::validators::value<unsigned int>("segment_num_t", v7, &v54, 2);
  *(this + 14) = v7;
  v8 = bswap32(*(a2 + 15));
  v54 = 0x100000000;
  smart_enums::validators::value<unsigned int>("segment_count_t", v8, &v54, 2);
  *(this + 15) = v8;
  *(this + 4) = *(a2 + 4);
  udif::checksum_type::checksum_type(&v45);
  v9 = *(a2 + 10);
  v10 = *(a2 + 12);
  v51 = *(a2 + 11);
  v52 = v10;
  v53 = *(a2 + 26);
  v11 = *(a2 + 6);
  v12 = *(a2 + 8);
  v47 = *(a2 + 7);
  v48 = v12;
  v49 = *(a2 + 9);
  v50 = v9;
  v45 = *(a2 + 5);
  v46 = v11;
  v59 = *(a2 + 152);
  v60 = *(a2 + 168);
  v61 = *(a2 + 184);
  v62 = *(a2 + 200);
  v55 = *(a2 + 88);
  v56 = *(a2 + 104);
  v57 = *(a2 + 120);
  v58 = *(a2 + 136);
  v54 = v45;
  udif::details::endian_reverse(&v54, &v36);
  *(this + 10) = v36;
  v13 = v42;
  *(this + 152) = v41;
  *(this + 168) = v13;
  v14 = v44;
  *(this + 184) = v43;
  *(this + 200) = v14;
  v15 = v38;
  *(this + 88) = v37;
  *(this + 104) = v15;
  v16 = v40;
  *(this + 120) = v39;
  *(this + 136) = v16;
  *(this + 27) = bswap64(*(a2 + 27));
  *(this + 28) = bswap64(*(a2 + 28));
  v17 = *(a2 + 232);
  v18 = *(a2 + 248);
  v19 = *(a2 + 280);
  *(this + 264) = *(a2 + 264);
  *(this + 280) = v19;
  *(this + 232) = v17;
  *(this + 248) = v18;
  *(this + 37) = bswap64(*(a2 + 37));
  *(this + 38) = bswap64(*(a2 + 38));
  v20 = *(a2 + 312);
  v21 = *(a2 + 328);
  *(this + 43) = *(a2 + 43);
  *(this + 312) = v20;
  *(this + 328) = v21;
  udif::checksum_type::checksum_type(&v45);
  v22 = *(a2 + 29);
  v51 = *(a2 + 28);
  v52 = v22;
  v23 = *(a2 + 25);
  v47 = *(a2 + 24);
  v48 = v23;
  v24 = *(a2 + 27);
  v49 = *(a2 + 26);
  v50 = v24;
  v25 = *(a2 + 23);
  v45 = *(a2 + 22);
  v46 = v25;
  v26 = *(a2 + 440);
  v59 = *(a2 + 424);
  v60 = v26;
  v27 = *(a2 + 472);
  v61 = *(a2 + 456);
  v62 = v27;
  v28 = *(a2 + 376);
  v55 = *(a2 + 360);
  v56 = v28;
  v29 = *(a2 + 408);
  v57 = *(a2 + 392);
  v53 = *(a2 + 60);
  v58 = v29;
  v54 = v45;
  udif::details::endian_reverse(&v54, &v36);
  *(this + 44) = v36;
  v30 = v42;
  *(this + 424) = v41;
  *(this + 440) = v30;
  v31 = v44;
  *(this + 456) = v43;
  *(this + 472) = v31;
  v32 = v38;
  *(this + 360) = v37;
  *(this + 376) = v32;
  v33 = v40;
  *(this + 392) = v39;
  *(this + 408) = v33;
  v34 = bswap32(*(a2 + 122));
  v54 = 0x100000000;
  LODWORD(v55) = 2;
  smart_enums::validators::value<unsigned int>("image_variant_type", v34, &v54, 3);
  *(this + 122) = v34;
  *(this + 492) = bswap64(*(a2 + 492));
  return this;
}

uint64_t udif::header::write(udif::header *this, char *a2)
{
  if (DIDebugLogsEnabled())
  {
    *&v12 = "*udif::header::write(char *)";
    *(&v12 + 1) = 20;
    v13 = 2;
    di_log::logger<di_log::log_printer<85ul>>::logger(v14, &v12);
    udif::operator<<(&v15, this);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](&v16);
  }

  *a2 = *this;
  *(a2 + 1) = bswap32(*(this + 1));
  *(a2 + 2) = bswap32(*(this + 2));
  *(a2 + 3) = bswap32(*(this + 3));
  *(a2 + 2) = *(this + 2);
  *(a2 + 3) = bswap64(*(this + 3));
  *(a2 + 4) = bswap64(*(this + 4));
  *(a2 + 5) = bswap64(*(this + 5));
  *(a2 + 6) = bswap64(*(this + 6));
  *(a2 + 14) = bswap32(*(this + 14));
  *(a2 + 15) = bswap32(*(this + 15));
  *(a2 + 4) = *(this + 4);
  v4 = udif::details::serialize_field(this + 80, (a2 + 80));
  *v4 = bswap64(*(this + 27));
  *(v4 + 8) = bswap64(*(this + 28));
  v5 = *(this + 232);
  v6 = *(this + 248);
  v7 = *(this + 280);
  *(v4 + 48) = *(this + 264);
  *(v4 + 64) = v7;
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  *(v4 + 80) = bswap64(*(this + 37));
  *(v4 + 88) = bswap64(*(this + 38));
  v9 = *(this + 312);
  v8 = *(this + 328);
  *(v4 + 128) = *(this + 43);
  *(v4 + 96) = v9;
  *(v4 + 112) = v8;
  v10 = udif::details::serialize_field(this + 352, v4 + 136);
  *v10 = bswap32(*(this + 122));
  *(v10 + 4) = bswap64(*(this + 492));
  return v10 + 12;
}

void sub_248F2D31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<85ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<85ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<85ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF7A98;
  a1[45] = &unk_285BF7B98;
  a1[46] = &unk_285BF7BC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF7A98;
  a1[45] = &unk_285BF7B20;
  a1[46] = &unk_285BF7B48;
  return a1;
}

void sub_248F2D434(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<85ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *udif::operator<<(void *a1, uint64_t a2)
{
  v167 = *MEMORY[0x277D85DE8];
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "header (", 8);
  v5 = MEMORY[0x24C1ED3C0](v4, 500);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "):", 2);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v8 = *(a2 + 12);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v136 = *(a2 + 60);
  v137 = *(a2 + 56);
  v134 = *(a2 + 72);
  v135 = *(a2 + 64);
  v14 = *(a2 + 80);
  v15 = *(a2 + 168);
  v158 = *(a2 + 152);
  v159 = v15;
  v16 = *(a2 + 200);
  v160 = *(a2 + 184);
  v161 = v16;
  v17 = *(a2 + 104);
  v154 = *(a2 + 88);
  v155 = v17;
  v18 = *(a2 + 136);
  v156 = *(a2 + 120);
  v157 = v18;
  v132 = *(a2 + 224);
  v133 = *(a2 + 216);
  v19 = *(a2 + 248);
  v150 = *(a2 + 232);
  v151 = v19;
  v20 = *(a2 + 280);
  v152 = *(a2 + 264);
  v153 = v20;
  v21 = *(a2 + 304);
  v131 = *(a2 + 296);
  v22 = *(a2 + 328);
  v147 = *(a2 + 312);
  v148 = v22;
  v149 = *(a2 + 344);
  v23 = *(a2 + 352);
  v24 = *(a2 + 440);
  v143 = *(a2 + 424);
  v144 = v24;
  v25 = *(a2 + 472);
  v145 = *(a2 + 456);
  v146 = v25;
  v26 = *(a2 + 376);
  v139 = *(a2 + 360);
  v140 = v26;
  v27 = *(a2 + 408);
  v141 = *(a2 + 392);
  v142 = v27;
  v129 = *(a2 + 488);
  v128 = *(a2 + 492);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "signature", 9);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
  v162[23] = 4;
  strcpy(v162, "koly");
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v162, 4);
  v130 = v21;
  if ((v162[23] & 0x80000000) != 0)
  {
    operator delete(*v162);
  }

  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "version", 7);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 2);
  v34 = MEMORY[0x24C1ED3A0](v33, 4);
  std::ios_base::getloc((v34 + *(*v34 - 24)));
  v35 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v35->__vftable[2].~facet_0)(v35, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "header_size", 11);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ": ", 2);
  v38 = MEMORY[0x24C1ED3A0](v37, 512);
  std::ios_base::getloc((v38 + *(*v38 - 24)));
  v39 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "flags", 5);
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ": ", 2);
  *v162 = v8;
  v42 = udif::operator<<(v41, v162);
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "run_data_fork_offset", 20);
  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ": ", 2);
  v46 = *v45;
  v47 = v45 + *(*v45 - 24);
  v48 = *(v47 + 2);
  *(v47 + 2) = v48 & 0xFFFFFFB5 | 8;
  *(v45 + *(v46 - 24) + 8) |= 0x200u;
  v162[0] = 48;
  v49 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, v162);
  MEMORY[0x24C1ED3E0](v49, v9);
  v50 = *v45;
  *(v45 + *(*v45 - 24) + 8) = v48;
  std::ios_base::getloc((v45 + *(v50 - 24)));
  v51 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v51->__vftable[2].~facet_0)(v51, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "data_fork_offset", 16);
  v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ": ", 2);
  v54 = *v53;
  v55 = v53 + *(*v53 - 24);
  LODWORD(v45) = *(v55 + 2);
  *(v55 + 2) = v45 & 0xFFFFFFB5 | 8;
  *(v53 + *(v54 - 24) + 8) |= 0x200u;
  v162[0] = 48;
  v56 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v53, v162);
  MEMORY[0x24C1ED3E0](v56, v10);
  v57 = *v53;
  *(v53 + *(*v53 - 24) + 8) = v45;
  std::ios_base::getloc((v53 + *(v57 - 24)));
  v58 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v58->__vftable[2].~facet_0)(v58, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "data_fork_len", 13);
  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, ": ", 2);
  v61 = MEMORY[0x24C1ED3E0](v60, v12);
  std::ios_base::getloc((v61 + *(*v61 - 24)));
  v62 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v62->__vftable[2].~facet_0)(v62, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "rsrc_fork_offset", 16);
  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ": ", 2);
  v65 = *v64;
  v66 = v64 + *(*v64 - 24);
  LODWORD(v45) = *(v66 + 2);
  *(v66 + 2) = v45 & 0xFFFFFFB5 | 8;
  *(v64 + *(v65 - 24) + 8) |= 0x200u;
  v162[0] = 48;
  v67 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v64, v162);
  MEMORY[0x24C1ED3E0](v67, v11);
  v68 = *v64;
  *(v64 + *(*v64 - 24) + 8) = v45;
  std::ios_base::getloc((v64 + *(v68 - 24)));
  v69 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v69->__vftable[2].~facet_0)(v69, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "rsrc_fork_len", 13);
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ": ", 2);
  v72 = MEMORY[0x24C1ED3E0](v71, v13);
  std::ios_base::getloc((v72 + *(*v72 - 24)));
  v73 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v73->__vftable[2].~facet_0)(v73, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "segment_num", 11);
  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ": ", 2);
  *v162 = v137;
  v76 = udif::operator<<(v75, v162);
  std::ios_base::getloc((v76 + *(*v76 - 24)));
  v77 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v77->__vftable[2].~facet_0)(v77, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "segment_count", 13);
  v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ": ", 2);
  *v162 = v136;
  v80 = udif::operator<<(v79, v162);
  std::ios_base::getloc((v80 + *(*v80 - 24)));
  v81 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v81->__vftable[2].~facet_0)(v81, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  *v162 = v135;
  *&v162[8] = v134;
  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "segment_id", 10);
  v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, ": ", 2);
  print_buffer(v83, v162, 16);
  std::ios_base::getloc((v83 + *(*v83 - 24)));
  v84 = std::locale::use_facet(&v138, MEMORY[0x277D82680]);
  (v84->__vftable[2].~facet_0)(v84, 10);
  std::locale::~locale(&v138);
  std::ostream::put();
  std::ostream::flush();
  *v162 = v14;
  v163 = v158;
  v164 = v159;
  v165 = v160;
  v166 = v161;
  *&v162[8] = v154;
  *&v162[24] = v155;
  *&v162[40] = v156;
  *&v162[56] = v157;
  v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "data_fork_checksum", 18);
  v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, ": ", 2);
  udif::details::operator<<(v86, v162);
  std::ios_base::getloc((v86 + *(*v86 - 24)));
  v87 = std::locale::use_facet(&v138, MEMORY[0x277D82680]);
  (v87->__vftable[2].~facet_0)(v87, 10);
  std::locale::~locale(&v138);
  std::ostream::put();
  std::ostream::flush();
  v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "xml_offset", 10);
  v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": ", 2);
  v90 = *v89;
  v91 = v89 + *(*v89 - 24);
  LODWORD(v45) = *(v91 + 2);
  *(v91 + 2) = v45 & 0xFFFFFFB5 | 8;
  *(v89 + *(v90 - 24) + 8) |= 0x200u;
  v162[0] = 48;
  v92 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v89, v162);
  MEMORY[0x24C1ED3E0](v92, v133);
  v93 = *v89;
  *(v89 + *(*v89 - 24) + 8) = v45;
  std::ios_base::getloc((v89 + *(v93 - 24)));
  v94 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v94->__vftable[2].~facet_0)(v94, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "xml_length", 10);
  v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, ": ", 2);
  v97 = MEMORY[0x24C1ED3E0](v96, v132);
  std::ios_base::getloc((v97 + *(*v97 - 24)));
  v98 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v98->__vftable[2].~facet_0)(v98, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  *v162 = v150;
  *&v162[16] = v151;
  *&v162[32] = v152;
  *&v162[48] = v153;
  v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "external", 8);
  v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, ": ", 2);
  print_buffer(v100, v162, 64);
  std::ios_base::getloc((v100 + *(*v100 - 24)));
  v101 = std::locale::use_facet(&v138, MEMORY[0x277D82680]);
  (v101->__vftable[2].~facet_0)(v101, 10);
  std::locale::~locale(&v138);
  std::ostream::put();
  std::ostream::flush();
  v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "code_sign_offset", 16);
  v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, ": ", 2);
  v104 = *v103;
  v105 = v103 + *(*v103 - 24);
  LODWORD(v45) = *(v105 + 2);
  *(v105 + 2) = v45 & 0xFFFFFFB5 | 8;
  *(v103 + *(v104 - 24) + 8) |= 0x200u;
  v162[0] = 48;
  v106 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v103, v162);
  MEMORY[0x24C1ED3E0](v106, v131);
  v107 = *v103;
  *(v103 + *(*v103 - 24) + 8) = v45;
  std::ios_base::getloc((v103 + *(v107 - 24)));
  v108 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v108->__vftable[2].~facet_0)(v108, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "code_sign_length", 16);
  v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, ": ", 2);
  v111 = MEMORY[0x24C1ED3E0](v110, v130);
  std::ios_base::getloc((v111 + *(*v111 - 24)));
  v112 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v112->__vftable[2].~facet_0)(v112, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  *v162 = v147;
  *&v162[16] = v148;
  *&v162[32] = v149;
  v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "reserved", 8);
  v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, ": ", 2);
  print_buffer(v114, v162, 40);
  std::ios_base::getloc((v114 + *(*v114 - 24)));
  v115 = std::locale::use_facet(&v138, MEMORY[0x277D82680]);
  (v115->__vftable[2].~facet_0)(v115, 10);
  std::locale::~locale(&v138);
  std::ostream::put();
  std::ostream::flush();
  *v162 = v23;
  v163 = v143;
  v164 = v144;
  v165 = v145;
  v166 = v146;
  *&v162[8] = v139;
  *&v162[24] = v140;
  *&v162[40] = v141;
  *&v162[56] = v142;
  v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "master_checksum", 15);
  v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, ": ", 2);
  udif::details::operator<<(v117, v162);
  std::ios_base::getloc((v117 + *(*v117 - 24)));
  v118 = std::locale::use_facet(&v138, MEMORY[0x277D82680]);
  (v118->__vftable[2].~facet_0)(v118, 10);
  std::locale::~locale(&v138);
  std::ostream::put();
  std::ostream::flush();
  v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "image_variant", 13);
  v120 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, ": ", 2);
  *v162 = v129;
  v121 = udif::operator<<(v120, v162);
  std::ios_base::getloc((v121 + *(*v121 - 24)));
  v122 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v122->__vftable[2].~facet_0)(v122, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "sector_count", 12);
  v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, ": ", 2);
  v125 = MEMORY[0x24C1ED3E0](v124, v128);
  std::ios_base::getloc((v125 + *(*v125 - 24)));
  v126 = std::locale::use_facet(v162, MEMORY[0x277D82680]);
  (v126->__vftable[2].~facet_0)(v126, 10);
  std::locale::~locale(v162);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_248F2E960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (*(v18 - 233) < 0)
  {
    operator delete(*(v18 - 256));
  }

  _Unwind_Resume(exception_object);
}

__n128 udif::details::endian_reverse@<Q0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v4 = udif::checksum_type::checksum_type(a2, bswap32(*a1));
  *(v4 + 1) = 0;
  v8 = bswap32(*(a1 + 4));
  vbuf::vbuf_t<unsigned char [128],unsigned int,8ul>::set_len(v4 + 1, &v8);
  v6 = *a2;
  if (*a2)
  {
    v7 = v6 == 10;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (v6 == 2)
    {
      a2[2] = bswap32(*(a1 + 8));
    }

    else
    {
      *(a2 + 18) = *(a1 + 72);
      *(a2 + 22) = *(a1 + 88);
      *(a2 + 26) = *(a1 + 104);
      *(a2 + 30) = *(a1 + 120);
      *(a2 + 2) = *(a1 + 8);
      *(a2 + 6) = *(a1 + 24);
      *(a2 + 10) = *(a1 + 40);
      result = *(a1 + 56);
      *(a2 + 14) = result;
    }
  }

  return result;
}

BOOL udif::details::checksum::operator==(_DWORD *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  udif::details::checksum::checksum(v4, a2);
  return udif::details::checksum::operator==(a1, v4);
}

uint64_t udif::details::checksum::checksum(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 12);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v5;
  (off_285BF7CA0[v2])(&v7, &v6, a2 + 4);
  *a1 = v7;
  *(a1 + 72) = v12;
  *(a1 + 88) = v13;
  *(a1 + 104) = v14;
  *(a1 + 120) = v15;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  *(a1 + 40) = v10;
  *(a1 + 56) = v11;
  return a1;
}

unsigned int *udif::details::endian_reverse@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X8>)
{
  v3 = bswap32(*result);
  if ((v3 & 0x80000000) != 0)
  {
    result = udif::details::descriptor_special::descriptor_special(&v4, v3);
    v3 = v4;
  }

  *a2 = v3;
  return result;
}

uint64_t udif::details::serialize_field(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap32(*(a1 + 4));
  v2 = (a2 + 8);
  v3 = *a1;
  if (*a1)
  {
    v4 = v3 == 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else if (v3 == 2)
  {
    *(a2 + 8) = bswap32(*(a1 + 8));
    v2 = (a2 + 12);
    v5 = 4;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v8 = *(a1 + 56);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 56) = v8;
    *v2 = v6;
    *(a2 + 24) = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    v11 = *(a1 + 120);
    *(a2 + 104) = *(a1 + 104);
    *(a2 + 120) = v11;
    *(a2 + 72) = v9;
    *(a2 + 88) = v10;
    v5 = 128;
  }

  bzero(v2, 128 - v5);
  return v2 - v5 + 128;
}

udif::run_type *udif::details::run_info::run_info(udif::details::run_info *this)
{
  result = udif::run_type::run_type(this, 2);
  *(result + 1) = 0;
  *(result + 2) = 0;
  return result;
}

uint64_t udif::details::run_info::make_sectors_interval@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(result + 8) + v3;
  v5 = v4 + *(result + 16);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 2;
  if (v4 < v5 && (v4 < v3 || v3 + *(a2 + 16) - 1 < v5 - 1))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Invalid UDIF, run is not within block boundary", 0x16u);
  }

  return result;
}

void sub_248F2EF30(_Unwind_Exception *a1)
{
  *v2 = 0;
  MEMORY[0x24C1ED710](v3, v1);
  _Unwind_Resume(a1);
}

void udif::details::UDIF_base::write_resources(udif::details::UDIF_base *this, const __CFDictionary *a2)
{
  keys[1] = *MEMORY[0x277D85DE8];
  values = a2;
  keys[0] = @"resource-fork";
  cf::make_dict(keys, &values, 1, &propertyList);
  if (DIDebugLogsEnabled())
  {
    v3 = *__error();
    v4 = DIForwardLogs();
    if (v4)
    {
      v19[0] = 0;
      DIOSLog = getDIOSLog(v4, v5);
      if (os_log_type_enabled(DIOSLog, OS_LOG_TYPE_DEBUG))
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      *buf = 68158210;
      *&buf[4] = 41;
      *v22 = 2080;
      *&v22[2] = "udif::details::UDIF_base::write_resources(CFDictionaryRef)";
      *&v22[10] = 2114;
      *&v22[12] = propertyList;
      v8 = _os_log_send_and_compose_impl(v7, v19, 0, 0, &dword_248DE0000, DIOSLog, 2, "%.*s: res_dict: %{public}@", buf, 28);
      if (v8)
      {
        v9 = v8;
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
        free(v9);
      }
    }

    else
    {
      v10 = getDIOSLog(v4, v5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68158210;
        *&buf[4] = 41;
        *v22 = 2080;
        *&v22[2] = "udif::details::UDIF_base::write_resources(CFDictionaryRef)";
        *&v22[10] = 2114;
        *&v22[12] = propertyList;
        _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_DEBUG, "%.*s: res_dict: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v3;
  }

  cf::serialize_to_xml_plist(v19, propertyList);
  v11 = *(*(this + 9) + 216);
  v12 = *(this + 7);
  v13 = v19[1];
  BytePtr = CFDataGetBytePtr(v19[0]);
  v15 = *(details::get_dummy_shared_ptr() + 1);
  *buf = BytePtr;
  *v22 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *&v22[8] = v13;
  *&v22[16] = v11;
  v23 = v13;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v16 = (*(*v12 + 120))(v12, buf);
  if (*v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v22);
  }

  if ((v16 & 0x80000000) == 0)
  {
    *(*(this + 9) + 224) = v13;
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_285BF4E60;
  v18 = std::generic_category();
  exception[1] = v16;
  exception[2] = v18;
  *(exception + 24) = 0;
  *(exception + 48) = 0;
  exception[7] = "Can't write UDIF resource part";
}

void sub_248F2F390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(va);
  _Unwind_Resume(a1);
}

void *udif::details::operator<<(void *a1, _DWORD *a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "partition_num: ", 15);

    JUMPOUT(0x24C1ED390);
  }

  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "special: ", 9);
  if (*a2 == -1)
  {
    v4 = "ddm";
  }

  else
  {
    v4 = "entire_device";
  }

  if (*a2 == -1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 13;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
}

void *udif::details::operator<<(void *a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Blocks header", 13);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(v71, MEMORY[0x277D82680]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 36);
  v69 = *(a2 + 40);
  v70 = *(a2 + 56);
  v11 = *(a2 + 64);
  v12 = *(a2 + 152);
  v65 = *(a2 + 136);
  v66 = v12;
  v13 = *(a2 + 184);
  v67 = *(a2 + 168);
  v68 = v13;
  v14 = *(a2 + 88);
  v61 = *(a2 + 72);
  v62 = v14;
  v15 = *(a2 + 120);
  v63 = *(a2 + 104);
  v64 = v15;
  v16 = *(a2 + 200);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "signature", 9);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": ", 2);
  v71[23] = 4;
  strcpy(v71, "mish");
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v71, 4);
  if ((v71[23] & 0x80000000) != 0)
  {
    operator delete(*v71);
  }

  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(v71, MEMORY[0x277D82680]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "version", 7);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ": ", 2);
  v23 = MEMORY[0x24C1ED3A0](v22, 1);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(v71, MEMORY[0x277D82680]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "first_sector_number", 19);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ": ", 2);
  v27 = MEMORY[0x24C1ED3E0](v26, v7);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(v71, MEMORY[0x277D82680]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "sector_count", 12);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": ", 2);
  v31 = MEMORY[0x24C1ED3E0](v30, v6);
  std::ios_base::getloc((v31 + *(*v31 - 24)));
  v32 = std::locale::use_facet(v71, MEMORY[0x277D82680]);
  (v32->__vftable[2].~facet_0)(v32, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "data_start", 10);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
  v35 = *v34;
  v36 = v34 + *(*v34 - 24);
  v37 = *(v36 + 2);
  *(v36 + 2) = v37 & 0xFFFFFFB5 | 8;
  *(v34 + *(v35 - 24) + 8) |= 0x200u;
  v71[0] = 48;
  v38 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v34, v71);
  MEMORY[0x24C1ED3E0](v38, v8);
  v39 = *v34;
  *(v34 + *(*v34 - 24) + 8) = v37;
  std::ios_base::getloc((v34 + *(v39 - 24)));
  v40 = std::locale::use_facet(v71, MEMORY[0x277D82680]);
  (v40->__vftable[2].~facet_0)(v40, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "decompression_buffer_req", 24);
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
  v43 = MEMORY[0x24C1ED3A0](v42, v9);
  std::ios_base::getloc((v43 + *(*v43 - 24)));
  v44 = std::locale::use_facet(v71, MEMORY[0x277D82680]);
  (v44->__vftable[2].~facet_0)(v44, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  LODWORD(v60.__locale_) = v10;
  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "descriptor", 10);
  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ": ", 2);
  v47 = udif::details::operator<<(v46, &v60);
  std::ios_base::getloc((v47 + *(*v47 - 24)));
  v48 = std::locale::use_facet(v71, MEMORY[0x277D82680]);
  (v48->__vftable[2].~facet_0)(v48, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  *v71 = v69;
  *&v71[16] = v70;
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "reserved", 8);
  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": ", 2);
  print_buffer(v50, v71, 24);
  std::ios_base::getloc((v50 + *(*v50 - 24)));
  v51 = std::locale::use_facet(&v60, MEMORY[0x277D82680]);
  (v51->__vftable[2].~facet_0)(v51, 10);
  std::locale::~locale(&v60);
  std::ostream::put();
  std::ostream::flush();
  *v71 = v11;
  v75 = v65;
  v76 = v66;
  v77 = v67;
  v78 = v68;
  *&v71[8] = v61;
  v72 = v62;
  v73 = v63;
  v74 = v64;
  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "checksum", 8);
  v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ": ", 2);
  udif::details::operator<<(v53, v71);
  std::ios_base::getloc((v53 + *(*v53 - 24)));
  v54 = std::locale::use_facet(&v60, MEMORY[0x277D82680]);
  (v54->__vftable[2].~facet_0)(v54, 10);
  std::locale::~locale(&v60);
  std::ostream::put();
  std::ostream::flush();
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "run_count", 9);
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ": ", 2);
  v57 = MEMORY[0x24C1ED3A0](v56, v16);
  std::ios_base::getloc((v57 + *(*v57 - 24)));
  v58 = std::locale::use_facet(v71, MEMORY[0x277D82680]);
  (v58->__vftable[2].~facet_0)(v58, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_248F2FDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *udif::details::operator<<(void *a1, int *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "type: ", 6);
  v17 = *a2;
  v6 = udif::operator<<(v5, &v17);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " ", 1);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v16 = 48;
  v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, &v16);
  v9 = *v8;
  *(v8 + *(*v8 - 24) + 24) = 2;
  v10 = *(v8 + *(v9 - 24) + 8);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "len: ", 5);
  v12 = MEMORY[0x24C1ED3A0](v11, a2[1]);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " data: ", 7);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  v14 = a2[1];
  if (v14)
  {
    print_buffer(v8, (a2 + 2), v14);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "(empty)", 7);
  }

  *(v8 + *(*v8 - 24) + 8) = v10;
  *(a1 + *(*a1 - 24) + 8) = v4;
  return a1;
}

uint64_t **udif::details::UDIF_base::get_compressed_types(udif::details::UDIF_base *this)
{
  v6 = *MEMORY[0x277D85DE8];
  {
    udif::run_type::run_type(v2, -2147483643);
    v2[1] = 0;
    udif::run_type::run_type(v3, -2147483641);
    v3[1] = 1;
    udif::run_type::run_type(v4, -2147483640);
    v4[1] = 2;
    udif::run_type::run_type(v5, -2147483642);
    v5[1] = 4;
    std::map<udif::run_type,CompressedBackend::algo_t>::map[abi:ne200100](&udif::details::UDIF_base::get_compressed_types(void)::compressed_types, v2, 4);
    __cxa_atexit(std::map<udif::run_type,CompressedBackend::algo_t>::~map[abi:ne200100], &udif::details::UDIF_base::get_compressed_types(void)::compressed_types, &dword_248DE0000);
  }

  return &udif::details::UDIF_base::get_compressed_types(void)::compressed_types;
}

uint64_t **udif::details::UDIF_base::find_compression_algo_by_run@<X0>(udif::details::UDIF_base *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  compressed_types = udif::details::UDIF_base::get_compressed_types(a1);
  v6 = qword_27EECE658;
  if (!qword_27EECE658)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  v8 = &qword_27EECE658;
  do
  {
    v9 = *(v6 + 28);
    v10 = v9 >= v7;
    v11 = v9 < v7;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 != &qword_27EECE658 && v7 >= *(v8 + 7))
  {
    result = udif::details::UDIF_base::get_compressed_types(compressed_types);
    *a3 = *(v8 + 8);
    v13 = 1;
  }

  else
  {
LABEL_9:
    result = udif::details::UDIF_base::get_compressed_types(compressed_types);
    v13 = 0;
    *a3 = 0;
  }

  *(a3 + 4) = v13;
  return result;
}

uint64_t *udif::details::UDIF_base::update_compressed_types(uint64_t *result, uint64_t a2, int *a3, unint64_t a4, unint64_t a5)
{
  if (HIBYTE(*a3) == 128)
  {
    v9 = result;
    v14 = *a3;
    (*(*result + 16))(v13);
    if ((BYTE4(v13[0]) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      std::ostringstream::basic_ostringstream[abi:ne200100](v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unsupported compressed run (", 28);
      v14 = *a3;
      udif::operator<<(v13, &v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ")", 1);
      DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v13, 0x2Du);
    }

    v13[0] = a3;
    v10 = std::__tree<std::__value_type<udif::run_type,unsigned long long>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,unsigned long long>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,unsigned long long>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(a2, a3, &std::piecewise_construct, v13)[5];
    if (v10)
    {
      v13[0] = a3;
      v10 = std::__tree<std::__value_type<udif::run_type,unsigned long long>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,unsigned long long>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,unsigned long long>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(a2, a3, &std::piecewise_construct, v13)[5];
    }

    if (v10 > a4)
    {
      a4 = v10;
    }

    v13[0] = a3;
    result = std::__tree<std::__value_type<udif::run_type,unsigned long long>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,unsigned long long>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,unsigned long long>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(a2, a3, &std::piecewise_construct, v13);
    result[5] = a4;
    *(v9 + 88) = 1;
    v11 = v9[12];
    if (v11 <= a5)
    {
      v11 = a5;
    }

    v9[12] = v11;
  }

  return result;
}

void udif::details::UDIF_base::create_backends(void *a1, void *a2)
{
  udif::run_type::run_type(&v11, 1);
  udif::details::UDIF_base::add_backend_to_map(a1, &v11, 0);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v10 = *(v5 + 8);
      udif::details::UDIF_base::add_backend_to_map(a1, &v10, v5[5]);
      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }
}

void udif::details::UDIF_base::add_backend_to_map(void *a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 != 1)
  {
    LODWORD(v10) = *a2;
    (*(*a1 + 16))(&v11, a1, &v10);
    if ((v11 & 0x100000000) != 0)
    {
      LODWORD(v12) = v11;
      CompressedBackend::make_backend((a1 + 7), &v12);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "UDIF: compression algo is invalid", 0x16u);
  }

  udif::run_type::run_type(&v12, 1);
  *&v10 = &v12;
  v4 = std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>((a1 + 13), &v12, &std::piecewise_construct, &v10);
  v6 = a1[7];
  v5 = a1[8];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_248F3061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void udif::details::UDIF_base::make_backend_contexts(uint64_t **__return_ptr a1@<X8>, udif::details::UDIF_base *this@<X0>)
{
  v23 = 0;
  v24 = 0;
  v22 = &v23;
  (*(**(this + 7) + 80))(&v21);
  v4 = *(this + 13);
  if (v4 != (this + 112))
  {
    while (1)
    {
      v5 = *(v4 + 5);
      if (v5 == *(this + 7))
      {
        break;
      }

      if (v5)
      {
        if (v6)
        {
          v7 = *(v4 + 6);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v19 = *(&v21 + 1);
          if (*(&v21 + 1))
          {
            atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          (*(*v6 + 192))(&v20);
          v25 = (v4 + 32);
          v8 = std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(&v22, v4 + 8, &std::piecewise_construct, &v25);
          v9 = v20;
          v20 = 0uLL;
          v10 = v8[6];
          *(v8 + 5) = v9;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            if (*(&v20 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
            }
          }

          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

LABEL_17:
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }
        }
      }

      v13 = *(v4 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v4 + 2);
          v15 = *v14 == v4;
          v4 = v14;
        }

        while (!v15);
      }

      v4 = v14;
      if (v14 == (this + 112))
      {
        goto LABEL_25;
      }
    }

    *&v20 = v4 + 32;
    v11 = std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(&v22, v4 + 8, &std::piecewise_construct, &v20);
    v12 = v21;
    if (*(&v21 + 1))
    {
      atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v11[6];
    *(v11 + 5) = v12;
    goto LABEL_17;
  }

LABEL_25:
  v16 = v23;
  *a1 = v22;
  a1[1] = v16;
  v17 = (a1 + 1);
  v18 = v24;
  a1[2] = v24;
  if (v18)
  {
    v16[2] = v17;
    v22 = &v23;
    v23 = 0;
    v24 = 0;
    v16 = 0;
  }

  else
  {
    *a1 = v17;
  }

  *(a1 + 3) = v21;
  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(&v22, v16);
}

uint64_t udif::details::UDIF_base::validate_runs(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != (this + 16))
  {
    do
    {
      if (*(v1 + 59) == 128 && (v1[5] - v1[4] + (v1[6] & 1) + ((*(v1 + 48) >> 1) & 1) - 1) << 9 > 0x400000)
      {
        v7 = (v1[5] - v1[4] + (v1[6] & 1) + ((*(v1 + 48) >> 1) & 1) - 1) << 9;
        *&v9 = "udif::details::UDIF_base::validate_runs()";
        *(&v9 + 1) = 39;
        v10 = 16;
        di_log::logger<di_log::log_printer<417ul>>::logger(v11, &v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Run interval: ", 14);
        boost::icl::operator<<<char,std::char_traits<char>,boost::icl::discrete_interval<unsigned long long,std::less>>(v12, v1 + 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " of type ", 9);
        LODWORD(v8) = *(v1 + 14);
        udif::operator<<(v12, &v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " has size ", 10);
        MEMORY[0x24C1ED3C0](v12, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "which is larger than allowed ", 29);
        MEMORY[0x24C1ED3C0](v12, 0x400000);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " or exceeds size_t size ", 24);
        v8 = -1;
        std::operator<<[abi:ne200100]<di_log::logger<di_log::log_printer<417ul>>,unsigned long,0>(v11, &v8);
        di_log::logger<di_log::log_printer<417ul>>::~logger(v11);
        exception = __cxa_allocate_exception(0x40uLL);
        DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "UDIF: compressed runs should be <= 1MB", 0x16u);
      }

      v2 = v1[1];
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
        do
        {
          v3 = v1[2];
          v4 = *v3 == v1;
          v1 = v3;
        }

        while (!v4);
      }

      v1 = v3;
    }

    while (v3 != (this + 16));
  }

  return this;
}

void sub_248F30AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  di_log::logger<di_log::log_printer<417ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<417ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<417ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF7CC8;
  a1[45] = &unk_285BF7DC8;
  a1[46] = &unk_285BF7DF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF7CC8;
  a1[45] = &unk_285BF7D50;
  a1[46] = &unk_285BF7D78;
  return a1;
}

void sub_248F30C18(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<417ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t *udif::details::UDIF_base::add_block(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1 + 40 != std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>>>::find<boost::icl::discrete_interval<unsigned long long,std::less>>(a1 + 32, a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Invalid UDIF format, contains intersected blocks", 0x16u);
  }

  v6 = *(a3 + 2);
  v19 = *(a3 + 76);
  v20 = *(a3 + 92);
  v21 = *(a3 + 108);
  v22 = *(a3 + 124);
  v15 = *(a3 + 12);
  v16 = *(a3 + 28);
  v17 = *(a3 + 44);
  v18 = *(a3 + 60);
  v7 = *a3;
  v11 = *a2;
  v12 = *(a2 + 2);
  v13 = v7;
  v14 = v6;
  v23 = 1;
  return boost::icl::interval_base_map<boost::icl::split_interval_map<unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>::_insert((a1 + 32), &v11);
}

void udif::details::UDIF_base::generate_blocks(udif::details::UDIF_base *this, CFArrayRef theArray)
{
  v2 = *MEMORY[0x277D85DE8];
  CFArrayGetCount(theArray);
  operator new[]();
}

void sub_248F31380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, ...)
{
  va_start(va, a22);
  di_log::logger<di_log::log_printer<500ul>>::~logger(va);
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(&a20, a21);
  MEMORY[0x24C1ED710](a11, v22);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<458ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<458ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF7EE8;
  a1[45] = &unk_285BF7FE8;
  a1[46] = &unk_285BF8010;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF7EE8;
  a1[45] = &unk_285BF7F70;
  a1[46] = &unk_285BF7F98;
  return a1;
}

void sub_248F31554(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<458ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<500ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<500ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF8108;
  a1[45] = &unk_285BF8208;
  a1[46] = &unk_285BF8230;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF8108;
  a1[45] = &unk_285BF8190;
  a1[46] = &unk_285BF81B8;
  return a1;
}

void sub_248F316C4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<500ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t *udif::details::UDIF_base::get_dummy_runs(udif::details::UDIF_base *this)
{
  v8 = *MEMORY[0x277D85DE8];
  {
    udif::run_type::run_type(&v2, 0);
    v3 = xmmword_248FA99A0;
    v4 = 2;
    v5 = v2;
    v6 = 0;
    v7 = 0;
    std::map<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>::map[abi:ne200100](&udif::details::UDIF_base::get_dummy_runs(void)::dummy_runs, &v3, 1);
    __cxa_atexit(std::map<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>::~map[abi:ne200100], &udif::details::UDIF_base::get_dummy_runs(void)::dummy_runs, &dword_248DE0000);
  }

  return &udif::details::UDIF_base::get_dummy_runs(void)::dummy_runs;
}

udif::details::UDIF_base *udif::details::UDIF_base::create_iterator(udif::details::UDIF_base *this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6[0] = a2 / a4;
  v6[1] = (a3 + a2) / a4;
  v7 = 2;
  result = std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::lower_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(this + 8, v6);
  if ((this + 16) == result)
  {
    udif::details::UDIF_base::get_dummy_runs(result);
    return udif::details::UDIF_base::get_dummy_runs(void)::dummy_runs;
  }

  return result;
}

void udif::details::UDIF_base::_get_runs_for_io(udif::details::UDIF_base *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v5 = a3;
  iterator = udif::details::UDIF_base::create_iterator(a1, a2, a3, 0x200uLL);
  if (v5)
  {
    v9 = iterator;
    v10 = a1 + 16;
    v11 = a2;
    while (v9 != v10)
    {
      v12 = *(v9 + 4);
      v13 = v12 << 9;
      if (v11 < v12 << 9)
      {
        goto LABEL_11;
      }

      v14 = (*(v9 + 5) - v12) << 9;
      if (v14 - (v11 - v13) >= v5)
      {
        v15 = v5;
      }

      else
      {
        v15 = v14 - (v11 - v13);
      }

      v16 = *(v9 + 14);
      v29 = v16;
      if (HIBYTE(v16) == 128)
      {
        v30 = *(v9 + 4);
        *&v31 = v13;
        *(&v31 + 1) = v14;
        *&v32 = v11 - a2;
        *(&v32 + 1) = v11 - v13;
      }

      else
      {
        *&v30 = *(v9 + 8) + v11 - v13;
        *(&v30 + 1) = v15;
        *&v31 = v11;
        *(&v31 + 1) = v15;
        v32 = v11 - a2;
      }

      v33 = v15;
      v22 = a4[1];
      v23 = *a4 + (v22 << 6);
      if (v22 == a4[2])
      {
        boost::container::vector<udif::run_io_info,boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,udif::run_io_info*,udif::run_io_info>>(a4, v23, 1, &v29, &v34);
      }

      else
      {
        *v23 = v16;
        v24 = v30;
        v25 = v31;
        v26 = v32;
        *(v23 + 56) = v33;
        *(v23 + 40) = v26;
        *(v23 + 24) = v25;
        *(v23 + 8) = v24;
        ++a4[1];
      }

      v27 = *(v9 + 1);
      if (v27)
      {
        do
        {
          v9 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v9;
          v9 = *(v9 + 2);
        }

        while (*v9 != v28);
      }

LABEL_23:
      v11 += v15;
      v5 -= v15;
      if (!v5)
      {
        return;
      }
    }

    v13 = v11 + v5;
LABEL_11:
    if (v13 - v11 >= v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = v13 - v11;
    }

    udif::run_type::run_type(&v29, 0);
    v30 = 0uLL;
    *&v31 = v11;
    *(&v31 + 1) = v15;
    v32 = v11 - a2;
    v33 = v15;
    v17 = a4[1];
    v18 = *a4 + (v17 << 6);
    if (v17 == a4[2])
    {
      boost::container::vector<udif::run_io_info,boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,udif::run_io_info*,udif::run_io_info>>(a4, v18, 1, &v29, &v34);
    }

    else
    {
      *v18 = v29;
      v19 = v30;
      v20 = v31;
      v21 = v32;
      *(v18 + 56) = v33;
      *(v18 + 40) = v21;
      *(v18 + 24) = v20;
      *(v18 + 8) = v19;
      ++a4[1];
    }

    goto LABEL_23;
  }
}

uint64_t udif::details::UDIF_base::create_runs_range_iterator(uint64_t a1, uint64_t a2)
{
  v4 = std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::lower_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(a1 + 8, a2);
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::upper_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(a1 + 8, a2);
  return v4;
}

uint64_t udif::details::UDIF_base::print_checksum_verification_status(uint64_t a1, uint64_t **a2, uint64_t a3, int *a4)
{
  v18[19] = *MEMORY[0x277D85DE8];
  udif::details::checksum::checksum(v16, a3);
  if (udif::details::checksum::operator==(a4, v16))
  {
    *&v14 = "udif::details::UDIF_base::print_checksum_verification_status(const std::string &, const csum_any &, const details::checksum &) const";
    *(&v14 + 1) = 60;
    v15 = 0;
    di_log::logger<di_log::log_printer<601ul>>::logger(v16, &v14);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, " - same ", 8);
    checksum::operator<<(&v17, a3);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(v16);
  }

  else
  {
    *&v14 = "udif::details::UDIF_base::print_checksum_verification_status(const std::string &, const csum_any &, const details::checksum &) const";
    *(&v14 + 1) = 60;
    v15 = 0;
    di_log::logger<di_log::log_printer<603ul>>::logger(v16, &v14);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = a2[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, " - different calculated: <", 26);
    checksum::operator<<(&v17, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "> real: <", 9);
    udif::details::operator<<(&v17, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ">", 1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(v16);
  }

  return MEMORY[0x24C1ED6A0](v18);
}

void sub_248F31CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<601ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<601ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<601ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF8328;
  a1[45] = &unk_285BF8428;
  a1[46] = &unk_285BF8450;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF8328;
  a1[45] = &unk_285BF83B0;
  a1[46] = &unk_285BF83D8;
  return a1;
}

void sub_248F31E24(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<601ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void udif::details::UDIF_base::UDIF_base(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_285BF7A58;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v3 = a2[2];
  *(a1 + 56) = a2[1];
  *(a1 + 64) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a2;
  *a2 = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 72) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  compressed_types = udif::details::UDIF_base::get_compressed_types(a1);
  udif::details::UDIF_base::get_dummy_runs(compressed_types);
  *(a1 + 89) = *(*(a1 + 72) + 216) >= *(*(a1 + 72) + 32) + *(*(a1 + 72) + 24);
  udif::details::UDIF_base::get_rsrc_iterators();
}

void sub_248F32164(_Unwind_Exception *a1)
{
  std::pair<udif::xml_rsrc_iterator,udif::xml_rsrc_iterator>::~pair(v7 - 168);
  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(v4, *(v1 + 112));
  v9 = *(v1 + 72);
  *(v1 + 72) = 0;
  if (v9)
  {
    MEMORY[0x24C1ED730](v9, 0x1000C407784F2AFLL);
  }

  v10 = *(v1 + 64);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(v3, *v6);
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(v2, *v5);
  _Unwind_Resume(a1);
}

void sub_248F32370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  udif::xml_rsrc_iterator::~xml_rsrc_iterator(va);
  udif::xml_rsrc_iterator::~xml_rsrc_iterator(va1);
  v5 = *(v3 - 32);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease((v3 - 24));
  _Unwind_Resume(a1);
}

void sub_248F32590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a10);
  _Unwind_Resume(a1);
}

void sub_248F328A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(va);
  if (v9)
  {
    MEMORY[0x24C1ED710](v9, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

udif::details::blocks *udif::details::blocks::blocks(udif::details::blocks *this, const char *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0xFFFFFFFE00000000;
  *(this + 40) = 0u;
  v4 = this + 40;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  udif::checksum_type::checksum_type((this + 64));
  *(this + 17) = 0;
  *(this + 50) = 0;
  v5 = *a2;
  LODWORD(v28) = 1752394093;
  smart_enums::validators::value<unsigned int>("blocks_signature", v5, &v28, 1);
  *this = 1752394093;
  v6 = bswap32(*(a2 + 1));
  LODWORD(v28) = 1;
  smart_enums::validators::value<unsigned int>("version", v6, &v28, 1);
  *(this + 1) = 1;
  *(this + 1) = bswap64(*(a2 + 1));
  *(this + 2) = bswap64(*(a2 + 2));
  *(this + 3) = bswap64(*(a2 + 3));
  *(this + 8) = bswap32(*(a2 + 8));
  LODWORD(v28) = *(a2 + 9);
  udif::details::endian_reverse(&v28, v26);
  *(this + 9) = v26[0];
  v7 = *(a2 + 40);
  *(v4 + 2) = *(a2 + 7);
  *v4 = v7;
  udif::checksum_type::checksum_type(v26);
  v8 = *(a2 + 9);
  v9 = *(a2 + 11);
  v26[6] = *(a2 + 10);
  v26[7] = v9;
  v27 = *(a2 + 24);
  v10 = *(a2 + 5);
  v11 = *(a2 + 7);
  v26[2] = *(a2 + 6);
  v26[3] = v11;
  v26[4] = *(a2 + 8);
  v26[5] = v8;
  v26[0] = *(a2 + 4);
  v26[1] = v10;
  v33 = *(a2 + 136);
  v34 = *(a2 + 152);
  v35 = *(a2 + 168);
  v36 = *(a2 + 184);
  v29 = *(a2 + 72);
  v30 = *(a2 + 88);
  v31 = *(a2 + 104);
  v32 = *(a2 + 120);
  v28 = *&v26[0];
  udif::details::endian_reverse(&v28, &v17);
  *(this + 8) = v17;
  v12 = v23;
  *(this + 136) = v22;
  *(this + 152) = v12;
  v13 = v25;
  *(this + 168) = v24;
  *(this + 184) = v13;
  v14 = v19;
  *(this + 72) = v18;
  *(this + 88) = v14;
  v15 = v21;
  *(this + 104) = v20;
  *(this + 120) = v15;
  *(this + 50) = bswap32(*(a2 + 50));
  return this;
}
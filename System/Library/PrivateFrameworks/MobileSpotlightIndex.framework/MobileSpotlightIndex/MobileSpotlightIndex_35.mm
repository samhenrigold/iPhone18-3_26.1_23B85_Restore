void DocStore::do_cool_hot_shard(DocStore *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(8);
  v4 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(this + 1);
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&dword_1C278D000, v3, v4, "do_cool_hot_shard called with hotfd %d", buf, 8u);
  }

  *__error() = v2;
  operator new();
}

uint64_t DocStore::add_cold_shard_to_bloom_filter(DocStore *this, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2) + 32 * a2;
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  *v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v5 = openat(*this, v4, 0);
  v6 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    v14 = *__error();
    v8 = -v14;
    v9 = *__error();
    v10 = _SILogForLogForCategory(8);
    v11 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v10, (dword_1EBF46AEC < 3)))
    {
      *buf = 136315394;
      v27 = v4;
      v28 = 2080;
      v29 = strerror(v14);
      v13 = "*warn* add_cold_shard_to_bloom_filter:  open(%s): %s";
      goto LABEL_21;
    }

LABEL_22:
    *__error() = v9;
    v15 = *v25;
    goto LABEL_23;
  }

  cold_shard_create_search_context_for_fd(v5, v25);
  if (v7)
  {
    v8 = v7;
    v9 = *__error();
    v10 = _SILogForLogForCategory(8);
    v11 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v10, (dword_1EBF46AEC < 3)))
    {
      v12 = strerror(-v8);
      *buf = 136315394;
      v27 = v4;
      v28 = 2080;
      v29 = v12;
      v13 = "*warn* add_cold_shard_to_bloom_filter:  create_search_context_for_fd(%s): %s";
LABEL_21:
      _os_log_impl(&dword_1C278D000, v10, v11, v13, buf, 0x16u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v15 = *v25;
  document_index = cold_shard_get_document_index(*v25, &__p);
  if (document_index)
  {
    v8 = document_index;
    v9 = *__error();
    v10 = _SILogForLogForCategory(8);
    v11 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v10, (dword_1EBF46AEC < 3)))
    {
      v17 = strerror(-v8);
      *buf = 136315394;
      v27 = v4;
      v28 = 2080;
      v29 = v17;
      v13 = "*warn* add_cold_shard_to_bloom_filter:  get_document_index(%s): %s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

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

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZN8DocStore30add_cold_shard_to_bloom_filterEi_block_invoke;
  v22[3] = &__block_descriptor_tmp_32;
  v22[4] = this;
  v23 = a2;
  v8 = cold_shard_document_index_iterate(p_p, size, v22);
  if (v8)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(8);
    v11 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v10, (dword_1EBF46AEC < 3)))
    {
      v20 = strerror(-v8);
      *buf = 136315394;
      v27 = v4;
      v28 = 2080;
      v29 = v20;
      v13 = "*warn* add_cold_shard_to_bloom_filter:  document_index_iterate(%s): %s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_23:
  if (v15)
  {
    MEMORY[0x1C691FEF0](v15, 0x1000C4034A301B9);
  }

  if ((v6 & 0x80000000) == 0)
  {
    close(v6);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t DocStore::create(DocStore *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(8);
  v4 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *this;
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&dword_1C278D000, v3, v4, "Calling create for fd %d", buf, 8u);
  }

  *__error() = v2;
  DocStore::init_file_backed_bloom_map(this);
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  v6 = *this;
  std::string::basic_string[abi:nn200100]<0>(buf, "hot.");
  *(this + 1) = shard_file;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    shard_file = *(this + 1);
    if ((shard_file & 0x80000000) == 0)
    {
LABEL_5:
      v26 = 8;
      *buf = &v26;
      *&buf[8] = 8;
      v8 = pwritevall(shard_file, buf, 1, 0);
      if (v8)
      {
        v9 = v8;
        v10 = *__error();
        v11 = _SILogForLogForCategory(8);
        v12 = 2 * (dword_1EBF46AEC < 4);
        if (os_log_type_enabled(v11, v12))
        {
          v13 = *this;
          v14 = *(this + 1);
          v15 = __p;
          if (v25 < 0)
          {
            v15 = __p[0];
          }

          *buf = 67109890;
          *&buf[4] = v13;
          *&buf[8] = 1024;
          *&buf[10] = v14;
          *&buf[14] = 2080;
          *&buf[16] = v15;
          v28 = 1024;
          v29 = v9;
          _os_log_impl(&dword_1C278D000, v11, v12, "Error calling hot_shard_init for fd %d, hotfd %d, filename '%s': %d", buf, 0x1Eu);
        }

        *__error() = v10;
      }

      caching_hot_shard_alloc(this + 1);
    }
  }

  else if ((shard_file & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v16 = *__error();
  v17 = _SILogForLogForCategory(8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v21 = *this;
    v20 = *(this + 1);
    if (v25 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    v23 = *__error();
    *buf = 136316418;
    *&buf[4] = "create";
    *&buf[12] = 1024;
    *&buf[14] = 333;
    *&buf[18] = 1024;
    *&buf[20] = v21;
    v28 = 1024;
    v29 = v20;
    v30 = 2080;
    v31 = v22;
    v32 = 1024;
    v33 = v23;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Error calling mkstempsat_np for fd %d, hotfd %d, filename '%s': %d", buf, 0x2Eu);
  }

  *__error() = v16;
  v18 = -*__error();
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  return v18;
}

uint64_t anonymous namespace::create_shard_file(int a1, uint64_t a2, char *a3)
{
  v3 = a3;
  if (v3[23] < 0)
  {
    v3 = *v3;
  }

  return mkstempsat_np(a1, v3, 0);
}

void anonymous namespace::create_shard_filename(uint64_t a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  std::to_string(&v14, v4.__d_.__rep_);
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

  v8 = std::string::insert(&v14, 0, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v15, ".XXXXXX");
  v11 = v10->__r_.__value_.__r.__words[0];
  v16[0] = v10->__r_.__value_.__l.__size_;
  *(v16 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  v13 = v16[0];
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 15) = *(v16 + 7);
  *(a2 + 23) = v12;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

uint64_t ___ZN8DocStore30add_cold_shard_to_bloom_filterEi_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 184))
  {
    v2 = FileBackedBloomMap::Update(*(*(a1 + 32) + 184), a2, *(a1 + 40));
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 4294967282;
  }

  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = dword_1EBF46AEC < 3;
  if (os_log_type_enabled(v4, (dword_1EBF46AEC < 3)))
  {
    v7 = 136315138;
    v8 = strerror(-v2);
    _os_log_impl(&dword_1C278D000, v4, v5, "*warn* add_cold_shard_to_bloom_filter:  file_backed_bloom_map_update: %s", &v7, 0xCu);
  }

  *__error() = v3;
  return v2;
}

uint64_t ___ZN8DocStore17do_cool_hot_shardEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5)
{
  v41 = *MEMORY[0x1E69E9840];
  ++**(a1 + 32);
  v7 = *(a1 + 40);
  v7[1] += a5;
  v8 = v7[3];
  v9 = v7[4];
  if (v8 >= v9)
  {
    v11 = v7[2];
    v12 = v8 - v11;
    v13 = (v8 - v11) >> 5;
    v14 = v13 + 1;
    if ((v13 + 1) >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v15 = v9 - v11;
    if (v15 >> 4 > v14)
    {
      v14 = v15 >> 4;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 59))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v17 = v13;
    v18 = 32 * v13;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = a2;
    *(v18 + 24) = 0;
    v10 = 32 * v13 + 32;
    v19 = (v18 - 32 * v17);
    memcpy(v19, v11, v12);
    v7[2] = v19;
    v7[3] = v10;
    v7[4] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = a2;
    v10 = v8 + 32;
    *(v8 + 24) = 0;
  }

  v7[3] = v10;
  if (*v7 > 4uLL)
  {
    fprintf(*MEMORY[0x1E69E9848], "logic error:  unknown compression type %llx\n", *v7);
    abort();
  }

  if (*v7 != 2)
  {
    return 0;
  }

  v22 = v7[12];
  v22[1] += a5;
  v24 = v22[4];
  v23 = v22[5];
  if (v24 >= v23)
  {
    v26 = v22[3];
    v27 = v24 - v26;
    v28 = (v24 - v26) >> 3;
    v29 = v28 + 1;
    if ((v28 + 1) >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v30 = v23 - v26;
    if (v30 >> 2 > v29)
    {
      v29 = v30 >> 2;
    }

    if (v30 >= 0x7FFFFFFFFFFFFFF8)
    {
      v31 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v29;
    }

    if (v31)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(v31);
    }

    v32 = (v24 - v26) >> 3;
    v33 = (8 * v28);
    v34 = (8 * v28 - 8 * v32);
    *v33 = a5;
    v25 = v33 + 1;
    memcpy(v34, v26, v27);
    v35 = v22[3];
    v22[3] = v34;
    v22[4] = v25;
    v22[5] = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v24 = a5;
    v25 = v24 + 8;
  }

  v22[4] = v25;
  buf.iov_base = a4;
  buf.iov_len = a5;
  v20 = writevall(*v22, &buf, 1);
  if (v20)
  {
    v36 = *__error();
    v37 = _SILogForLogForCategory(8);
    v38 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v37, (dword_1EBF46AEC < 3)))
    {
      v39 = strerror(-v20);
      LODWORD(buf.iov_base) = 136315138;
      *(&buf.iov_base + 4) = v39;
      _os_log_impl(&dword_1C278D000, v37, v38, "*warn* do_cool_hot_shard: cold_shard_first_pass_update_for_document: %s", &buf, 0xCu);
    }

    *__error() = v36;
  }

  return v20;
}

uint64_t ___ZN8DocStore17do_cool_hot_shardEv_block_invoke_27(__n128 a1)
{
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v6 = v4;
  v7 = v3;
  v49 = *MEMORY[0x1E69E9840];
  ++**(v1 + 32);
  v8 = *(v1 + 40);
  v10 = v8->__r_.__value_.__r.__words[2];
  data = v8[1].__r_.__value_.__l.__data_;
  if (data == v10)
  {
    v10 = v8[1].__r_.__value_.__l.__data_;
  }

  else
  {
    v11 = (data - v10) >> 5;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[32 * (v11 >> 1)];
      v14 = *v13 < v2;
      if (*v13 == v2)
      {
        v14 = v13[24] != 0;
      }

      v15 = v13 + 32;
      v11 += ~(v11 >> 1);
      if (v14)
      {
        v10 = v15;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
  }

  if (data == v10)
  {
    __assert_rtn("cold_shard_second_pass_update_for_document", "ColdShard.cc", 200, "doc_meta != ctx->doc_metas.end()");
  }

  v16 = *(v1 + 48);
  v10[24] = 1;
  if (data != v10 + 32 && *(v10 + 4) == v2)
  {
    return 0;
  }

  v19 = v8 + 3;
  v18 = v8->__r_.__value_.__r.__words[0];
  if (v8->__r_.__value_.__l.__data_ > 1)
  {
    if (v18 == 2)
    {
      if (SHIBYTE(v8[3].__r_.__value_.__r.__words[2]) < 0)
      {
        *v8[3].__r_.__value_.__l.__data_ = 0;
        v8[3].__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v8[3].__r_.__value_.__s.__data_[0] = 0;
        *(&v8[3].__r_.__value_.__s + 23) = 0;
      }

      v23 = v8[4].__r_.__value_.__l.__data_;
      v24 = MEMORY[0x1E69E9848];
      if (v23[16])
      {
        v17 = 4294967274;
      }

      else
      {
        bzero(__s, 0x10000uLL);
        *&v46 = v7;
        *(&v46 + 1) = v6;
        v47 = 0;
        v44 = __s;
        *__n = xmmword_1C2BFA350;
        ZSTD_CCtx_reset(*(v23 + 10), 1);
        v26 = v25;
        if (ZDICT_isError(v25))
        {
          v17 = 4294967284;
          v27 = "ZSTD_CCtx_reset: %s\n";
        }

        else
        {
          v27 = "ZSTD_compressStream2: %s\n";
          while (1)
          {
            v26 = ZSTD_compressStream2(*(v23 + 10), &v44, &v46, 2);
            if (ZDICT_isError(v26))
            {
              break;
            }

            if (__n[1])
            {
              std::string::append(v8 + 3, __s, __n[1]);
              __n[1] = 0;
            }

            if (!v26 && v47 == *(&v46 + 1))
            {
              goto LABEL_29;
            }
          }

          v17 = 4294967274;
        }

        v35 = *v24;
        ErrorName = ZDICT_getErrorName(v26);
        fprintf(v35, v27, ErrorName);
      }

      v37 = *v24;
      v38 = strerror(-v17);
      fprintf(v37, "zstd_dict_compress_do: %s\n", v38);
    }

    else
    {
      if (v18 == 3)
      {
        if (SHIBYTE(v8[3].__r_.__value_.__r.__words[2]) < 0)
        {
          *v8[3].__r_.__value_.__l.__data_ = 0;
          v8[3].__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v8[3].__r_.__value_.__s.__data_[0] = 0;
          *(&v8[3].__r_.__value_.__s + 23) = 0;
        }
      }

      else if (v18 != 4)
      {
LABEL_72:
        fprintf(*MEMORY[0x1E69E9848], "logic error:  unknown compression type %llx\n", v8->__r_.__value_.__r.__words[0]);
        abort();
      }

      v17 = 4294967194;
    }

    goto LABEL_67;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_72;
    }

    if (SHIBYTE(v8[3].__r_.__value_.__r.__words[2]) < 0)
    {
      *v8[3].__r_.__value_.__l.__data_ = 0;
      v8[3].__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v8[3].__r_.__value_.__s.__data_[0] = 0;
      *(&v8[3].__r_.__value_.__s + 23) = 0;
    }

    v28 = cctx;
    if (!cctx)
    {
      zstd_compress_init();
      v28 = cctx;
    }

    bzero(__s, 0x10000uLL);
    *&v46 = v7;
    *(&v46 + 1) = v6;
    v47 = 0;
    v44 = __s;
    *__n = xmmword_1C2BFA350;
    ZSTD_CCtx_reset(v28, 1);
    v30 = v29;
    if (ZDICT_isError(v29))
    {
      v31 = "ZSTD_CCtx_reset: %s\n";
    }

    else
    {
      ZSTD_initCStream(cctx, 9);
      v30 = v32;
      if (ZDICT_isError(v32))
      {
        v31 = "ZSTD_initCStream: %s\n";
      }

      else
      {
        v31 = "ZSTD_compressStream2: %s\n";
        while (1)
        {
          v30 = ZSTD_compressStream2(cctx, &v44, &v46, 2);
          if (ZDICT_isError(v30))
          {
            break;
          }

          if (__n[1])
          {
            std::string::append(v8 + 3, __s, __n[1]);
            __n[1] = 0;
          }

          if (!v30 && v47 == *(&v46 + 1))
          {
            goto LABEL_29;
          }
        }
      }
    }

    v33 = *MEMORY[0x1E69E9848];
    v34 = ZDICT_getErrorName(v30);
    fprintf(v33, v31, v34);
    v17 = 4294967284;
    goto LABEL_67;
  }

  MEMORY[0x1C691FAF0](&v8[3], v3, v4, v5);
LABEL_29:
  size = SHIBYTE(v8[3].__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v8[3].__r_.__value_.__l.__size_;
  }

  *(v10 + 2) = size;
  v10[25] = 1;
  v21 = v8[1].__r_.__value_.__r.__words[2];
  *(v10 + 1) = v21;
  v22 = SHIBYTE(v8[3].__r_.__value_.__r.__words[2]);
  if ((v22 & 0x8000000000000000) != 0)
  {
    v19 = v8[3].__r_.__value_.__l.__data_;
    v22 = v8[3].__r_.__value_.__l.__size_;
  }

  v8[1].__r_.__value_.__r.__words[2] = v21 + v22;
  __s[0].iov_base = v19;
  __s[0].iov_len = v22;
  v17 = writevall(v16, __s, 1);
  if (v17)
  {
LABEL_67:
    v39 = *__error();
    v40 = _SILogForLogForCategory(8);
    v41 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v40, (dword_1EBF46AEC < 3)))
    {
      v42 = strerror(-v17);
      LODWORD(__s[0].iov_base) = 136315138;
      *(&__s[0].iov_base + 4) = v42;
      _os_log_impl(&dword_1C278D000, v40, v41, "*warn* do_cool_hot_shard: cold_shard_second_pass_update_for_document: %s", __s, 0xCu);
    }

    *__error() = v39;
  }

  return v17;
}

DocStore *DocStore::MarkDocPurgeableTillN(DocStore *this)
{
  v3 = (*(this + 3) - *(this + 2)) >> 5;
  if (v3 >= 1)
  {
    v15[11] = v1;
    v15[12] = v2;
    v4 = this;
    v5 = 0;
    v6 = *(this + 13);
    v7 = v3 + 1;
    v8 = 32 * v3 - 32;
    v9 = MEMORY[0x1E69E9C10];
    do
    {
      v10 = *(v4 + 2) + v8;
      if (*(v10 + 23) < 0)
      {
        v10 = *v10;
      }

      this = openat(*v4, v10, 0);
      if ((this & 0x80000000) == 0)
      {
        v11 = this;
        v15[0] = 0;
        cold_shard_create_search_context_for_fd(this, v15);
        if (!v12)
        {
          v6 += *(v15[0] + 48);
        }

        v5 |= v6 > 0x5005;
        if (v5)
        {
          v14 = 65541;
          if (ffsctl(v11, 0xC0084A44uLL, &v14, 0))
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *v13 = 0;
              _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "TextStore - error: could not mark resource directory purgeable", v13, 2u);
            }
          }

          else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *v13 = 0;
            _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_INFO, "TextStore - marked resources purgeable", v13, 2u);
          }
        }

        close(v11);
        this = v15[0];
        if (v15[0])
        {
          this = MEMORY[0x1C691FEF0](v15[0], 0x1000C4034A301B9);
        }
      }

      --v7;
      v8 -= 32;
    }

    while (v7 > 1);
  }

  return this;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v7 = a1[1];
  *&v7[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = *(a1 + 12);
  v6 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v6;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 12) = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v3;
  *(a2 + 8) = *v7;
  *(a2 + 15) = *&v7[7];
  *(a2 + 23) = v4;
  *(a2 + 24) = v5;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a1 + 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v13)
  {
    v14 = v13 < 0;
  }

  else
  {
    v14 = v8 < v10;
  }

  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v15 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v8 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  v19 = memcmp(v17, v9, v18);
  v20 = v16 < v8;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v14)
  {
    v21 = a1;
    if (v20)
    {
LABEL_51:
      v31 = a3;
LABEL_72:

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(v21, v31);
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, a2);
    v22 = *(a2 + 23);
    v23 = *(a3 + 23);
    if (v23 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    if (v23 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v22 >= 0)
    {
      v26 = *(a2 + 23);
    }

    else
    {
      v26 = a2[1];
    }

    if (v22 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      v21 = a2;
      goto LABEL_51;
    }
  }

  else if (v20)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a2, a3);
    v32 = *(a1 + 23);
    v33 = *(a2 + 23);
    if (v33 >= 0)
    {
      v34 = *(a2 + 23);
    }

    else
    {
      v34 = a2[1];
    }

    if (v33 >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    if (v32 >= 0)
    {
      v36 = *(a1 + 23);
    }

    else
    {
      v36 = a1[1];
    }

    if (v32 >= 0)
    {
      v37 = a1;
    }

    else
    {
      v37 = *a1;
    }

    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v36;
    }

    v39 = memcmp(v35, v37, v38);
    v40 = v34 < v36;
    if (v39)
    {
      v40 = v39 < 0;
    }

    if (v40)
    {
      v21 = a1;
      v31 = a2;
      goto LABEL_72;
    }
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v16 = v10 < v12;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a3, a4);
    v17 = *(a2 + 23);
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = *(a3 + 8);
    }

    if (v18 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v17 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    if (v17 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v20, v22, v23);
    v25 = v19 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (v25)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a2, a3);
      v26 = *(a1 + 23);
      v27 = *(a2 + 23);
      if (v27 >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = *(a2 + 8);
      }

      if (v27 >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      if (v26 >= 0)
      {
        v30 = *(a1 + 23);
      }

      else
      {
        v30 = *(a1 + 8);
      }

      if (v26 >= 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = *a1;
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v34 = v28 < v30;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (v34)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(const void **a1, const void **a2, const void **a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 8);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a4, a5);
    v19 = *(a3 + 23);
    v20 = *(a4 + 23);
    if (v20 >= 0)
    {
      v21 = *(a4 + 23);
    }

    else
    {
      v21 = *(a4 + 8);
    }

    if (v20 >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    if (v19 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = a3[1];
    }

    if (v19 >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    if (v23 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(v22, v24, v25);
    v27 = v21 < v23;
    if (v26)
    {
      v27 = v26 < 0;
    }

    if (v27)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a3, a4);
      v28 = *(a2 + 23);
      v29 = *(a3 + 23);
      if (v29 >= 0)
      {
        v30 = *(a3 + 23);
      }

      else
      {
        v30 = a3[1];
      }

      if (v29 >= 0)
      {
        v31 = a3;
      }

      else
      {
        v31 = *a3;
      }

      if (v28 >= 0)
      {
        v32 = *(a2 + 23);
      }

      else
      {
        v32 = a2[1];
      }

      if (v28 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v32;
      }

      v35 = memcmp(v31, v33, v34);
      v36 = v30 < v32;
      if (v35)
      {
        v36 = v35 < 0;
      }

      if (v36)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a2, a3);
        v37 = *(a1 + 23);
        v38 = *(a2 + 23);
        if (v38 >= 0)
        {
          v39 = *(a2 + 23);
        }

        else
        {
          v39 = a2[1];
        }

        if (v38 >= 0)
        {
          v40 = a2;
        }

        else
        {
          v40 = *a2;
        }

        if (v37 >= 0)
        {
          v41 = *(a1 + 23);
        }

        else
        {
          v41 = a1[1];
        }

        if (v37 >= 0)
        {
          v42 = a1;
        }

        else
        {
          v42 = *a1;
        }

        if (v41 >= v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v41;
        }

        v44 = memcmp(v40, v42, v43);
        v45 = v39 < v41;
        if (v44)
        {
          v45 = v44 < 0;
        }

        if (v45)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*>(const void **a1, const void **a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = a2 - 4;
        v6 = *(a1 + 23);
        v7 = *(a2 - 9);
        if (v7 >= 0)
        {
          v8 = *(a2 - 9);
        }

        else
        {
          v8 = *(a2 - 3);
        }

        if (v7 >= 0)
        {
          v9 = a2 - 4;
        }

        else
        {
          v9 = *(a2 - 4);
        }

        if (v6 >= 0)
        {
          v10 = *(a1 + 23);
        }

        else
        {
          v10 = a1[1];
        }

        if (v6 >= 0)
        {
          v11 = a1;
        }

        else
        {
          v11 = *a1;
        }

        if (v10 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = memcmp(v9, v11, v12);
        v14 = v8 < v10;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (v14)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, v5);
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a1 + 4, a2 - 4);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, (a1 + 4), (a1 + 8), a2 - 4);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a1 + 4, a1 + 8, (a1 + 12), a2 - 4);
      return 1;
  }

LABEL_28:
  v15 = a1 + 8;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a1 + 4, a1 + 8);
  v16 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = *(v15 + 23);
    v20 = *(v16 + 23);
    if (v20 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = v16[1];
    }

    if (v20 >= 0)
    {
      v22 = v16;
    }

    else
    {
      v22 = *v16;
    }

    if (v19 >= 0)
    {
      v23 = *(v15 + 23);
    }

    else
    {
      v23 = v15[1];
    }

    if (v19 >= 0)
    {
      v24 = v15;
    }

    else
    {
      v24 = *v15;
    }

    if (v23 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(v22, v24, v25);
    v27 = v21 < v23;
    if (v26)
    {
      v27 = v26 < 0;
    }

    if (v27)
    {
      v40 = *v16;
      v41 = v16[2];
      v42 = 0;
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      LOWORD(v42) = *(v16 + 12);
      v28 = v17;
      while (1)
      {
        v29 = (a1 + v28);
        if (*(a1 + v28 + 119) < 0)
        {
          operator delete(v29[12]);
        }

        *(v29 + 6) = *(v29 + 4);
        v29[14] = v29[10];
        *(v29 + 87) = 0;
        *(v29 + 64) = 0;
        *(v29 + 60) = *(v29 + 44);
        if (v28 == -64)
        {
          break;
        }

        v30 = *(a1 + v28 + 55);
        if (SHIBYTE(v41) >= 0)
        {
          v31 = HIBYTE(v41);
        }

        else
        {
          v31 = *(&v40 + 1);
        }

        if (SHIBYTE(v41) >= 0)
        {
          v32 = &v40;
        }

        else
        {
          v32 = v40;
        }

        if (v30 >= 0)
        {
          v33 = *(a1 + v28 + 55);
        }

        else
        {
          v33 = *(a1 + v28 + 40);
        }

        if (v30 >= 0)
        {
          v34 = a1 + v28 + 32;
        }

        else
        {
          v34 = *(a1 + v28 + 32);
        }

        if (v33 >= v31)
        {
          v35 = v31;
        }

        else
        {
          v35 = v33;
        }

        v36 = memcmp(v32, v34, v35);
        v37 = v31 < v33;
        if (v36)
        {
          v37 = v36 < 0;
        }

        v28 -= 32;
        if (!v37)
        {
          v38 = a1 + v28 + 96;
          goto LABEL_72;
        }
      }

      v38 = a1;
LABEL_72:
      if (*(v38 + 23) < 0)
      {
        operator delete(*v38);
      }

      *v38 = v40;
      *(v38 + 16) = v41;
      *(v38 + 24) = v42;
      if (++v18 == 8)
      {
        return v16 + 4 == a2;
      }
    }

    v15 = v16;
    v17 += 32;
    v16 += 4;
    if (v16 == a2)
    {
      return 1;
    }
  }
}

BOOL std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(void *a1, void *a2, void *a3, void *a4)
{
  v8 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2, a1);
  v9 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = a3[2];
      *a1 = *a3;
      a1[2] = v12;
LABEL_9:
      *a3 = v11;
      a3[2] = v10;
      goto LABEL_10;
    }

    v19 = a1[2];
    v20 = *a1;
    v21 = a2[2];
    *a1 = *a2;
    a1[2] = v21;
    *a2 = v20;
    a2[2] = v19;
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a3, a2))
    {
      v10 = a2[2];
      v11 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = a3[2];
    *a2 = *a3;
    a2[2] = v15;
    *a3 = v14;
    a3[2] = v13;
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2, a1))
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
    }
  }

LABEL_10:
  if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a4, a3))
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a3, a2))
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2, a1))
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(void *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1);
        v15 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v5, a1 + 3);
        if (v14)
        {
          if (!v15)
          {
            v33 = a1[2];
            v34 = *a1;
            *a1 = *(a1 + 3);
            a1[2] = a1[5];
            *(a1 + 3) = v34;
            a1[5] = v33;
            if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v5, a1 + 3))
            {
              return 1;
            }

            v16 = a1[5];
            v17 = *(a1 + 3);
            v35 = v5[2];
            *(a1 + 3) = *v5;
            a1[5] = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = a1[2];
          v17 = *a1;
          v18 = v5[2];
          *a1 = *v5;
          a1[2] = v18;
LABEL_16:
          *v5 = v17;
          v5[2] = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = a1[5];
        v25 = *(a1 + 3);
        v26 = v5[2];
        *(a1 + 3) = *v5;
        a1[5] = v26;
        *v5 = v25;
        v5[2] = v24;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v6, a1 + 9))
        {
          return 1;
        }

        v7 = a1[11];
        v8 = *(a1 + 9);
        v9 = v6[2];
        *(a1 + 9) = *v6;
        a1[11] = v9;
        *v6 = v8;
        v6[2] = v7;
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 9, a1 + 6))
        {
          return 1;
        }

        v10 = a1[8];
        v11 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 9);
        a1[8] = a1[11];
        *(a1 + 9) = v11;
        a1[11] = v10;
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 6, a1 + 3))
        {
          return 1;
        }

        v12 = a1[5];
        v13 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 3);
        a1[5] = a1[8];
        *(a1 + 3) = v13;
        a1[8] = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1))
    {
      v27 = a1[2];
      v28 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v28;
      a1[5] = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = a1 + 6;
  v20 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1);
  v21 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 6, a1 + 3);
  if (v20)
  {
    if (v21)
    {
      v22 = a1[2];
      v23 = *a1;
      *a1 = *v19;
      a1[2] = a1[8];
    }

    else
    {
      v36 = a1[2];
      v37 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v37;
      a1[5] = v36;
      if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 6, a1 + 3))
      {
        goto LABEL_33;
      }

      v22 = a1[5];
      v23 = *(a1 + 3);
      *(a1 + 3) = *v19;
      a1[5] = a1[8];
    }

    *v19 = v23;
    a1[8] = v22;
  }

  else if (v21)
  {
    v29 = a1[5];
    v30 = *(a1 + 3);
    *(a1 + 3) = *v19;
    a1[5] = a1[8];
    *v19 = v30;
    a1[8] = v29;
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1))
    {
      v31 = a1[2];
      v32 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v32;
      a1[5] = v31;
    }
  }

LABEL_33:
  v38 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v38, v19))
    {
      v45 = *v38;
      v46 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 11) = *(a1 + v41 + 64);
        v42[71] = 0;
        v42[48] = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v45, v42 + 3))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 2) = v46;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__shared_ptr_pointer<analytics::SampledLogger<analytics::DeleteEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::DeleteEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::DeleteEvent>,analytics::SampledLogger<analytics::DeleteEvent>>,std::allocator<analytics::SampledLogger<analytics::DeleteEvent>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::SampledLogger<analytics::DeleteEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::DeleteEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::DeleteEvent>,analytics::SampledLogger<analytics::DeleteEvent>>,std::allocator<analytics::SampledLogger<analytics::DeleteEvent>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t std::__shared_ptr_pointer<analytics::SampledLogger<analytics::PutEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::PutEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::PutEvent>,analytics::SampledLogger<analytics::PutEvent>>,std::allocator<analytics::SampledLogger<analytics::PutEvent>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::SampledLogger<analytics::PutEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::PutEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::PutEvent>,analytics::SampledLogger<analytics::PutEvent>>,std::allocator<analytics::SampledLogger<analytics::PutEvent>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t std::__shared_ptr_pointer<analytics::SampledLogger<analytics::GetEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::GetEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::GetEvent>,analytics::SampledLogger<analytics::GetEvent>>,std::allocator<analytics::SampledLogger<analytics::GetEvent>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::SampledLogger<analytics::GetEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::GetEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::GetEvent>,analytics::SampledLogger<analytics::GetEvent>>,std::allocator<analytics::SampledLogger<analytics::GetEvent>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void doc_store_close(DocStore *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *__str = 0u;
  v4 = 0u;
  snprintf(__str, 0x200uLL, "doc_store_close(%p)", a1);
  v2[0] = 0;
  v2[1] = 0;
  ScopeLogger::ScopeLogger(v2, __str);
  if (a1)
  {
    DocStore::~DocStore(a1);
    MEMORY[0x1C691FEF0]();
  }

  ScopeLogger::~ScopeLogger(v2);
}

uint64_t doc_store_get_document(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__str = 0u;
  v14 = 0u;
  snprintf(__str, 0x200uLL, "doc_store_get_document(%p, %lld, %zd)", a1, a2, 0x3E8uLL);
  v10[0] = 0;
  v10[1] = 0;
  ScopeLogger::ScopeLogger(v10, __str);
  if (a1)
  {
    v12 = a2;
    v11 = 0;
    *buf = MEMORY[0x1E69E9820];
    v8.n128_u64[0] = 0x40000000;
    v46 = 0x40000000;
    v47 = ___ZN8DocStore11GetDocumentExmPcPm_block_invoke;
    v48 = &__block_descriptor_tmp_34;
    v49 = 1000;
    v50 = a3;
    v51 = a4;
    v52 = &v11;
    DocStore::GetDocumentsBulk(v8);
  }

  ScopeLogger::~ScopeLogger(v10);
  return 4294967282;
}

uint64_t ___ZN8DocStore11GetDocumentExmPcPm_block_invoke(uint64_t a1, int a2, void *__src, size_t a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  memcpy(v5, __src, v7);
  v8 = *(a1 + 56);
  **(a1 + 48) = v7;
  *v8 = 1;
  return 0;
}

void DocStore::GetDocumentsBulk(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v1;
  v3 = v2;
  v7 = *MEMORY[0x1E69E9840];
  std::mutex::lock((v2 + 40));
  v4 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t ___ZN8DocStore16GetDocumentsBulkEiPKxU13block_pointerFixPKcmE_block_invoke(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = v3[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (*&v4 <= a2)
      {
        v6 = a2 % *&v4;
      }
    }

    else
    {
      v6 = (*&v4 - 1) & a2;
    }

    v7 = *v3;
    v8 = *(*v3 + 8 * v6);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        v10 = *&v4 - 1;
        do
        {
          v11 = v9[1];
          if (v11 == a2)
          {
            if (v9[2] == a2)
            {
              v12 = v9[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v12 >= *&v4)
                {
                  v12 %= *&v4;
                }
              }

              else
              {
                v12 &= v10;
              }

              v13 = *(v7 + 8 * v12);
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13 != v9);
              if (v14 == v3 + 2)
              {
                goto LABEL_36;
              }

              v15 = v14[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v15 >= *&v4)
                {
                  v15 %= *&v4;
                }
              }

              else
              {
                v15 &= v10;
              }

              if (v15 != v12)
              {
LABEL_36:
                if (!*v9)
                {
                  goto LABEL_37;
                }

                v16 = *(*v9 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v16 >= *&v4)
                  {
                    v16 %= *&v4;
                  }
                }

                else
                {
                  v16 &= v10;
                }

                if (v16 != v12)
                {
LABEL_37:
                  *(v7 + 8 * v12) = 0;
                }
              }

              v17 = *v9;
              if (*v9)
              {
                v18 = *(v17 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v18 >= *&v4)
                  {
                    v18 %= *&v4;
                  }
                }

                else
                {
                  v18 &= v10;
                }

                if (v18 != v12)
                {
                  *(*v3 + 8 * v18) = v14;
                  v17 = *v9;
                }
              }

              *v14 = v17;
              *v9 = 0;
              --v3[3];
              operator delete(v9);
              break;
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v11 >= *&v4)
              {
                v11 %= *&v4;
              }
            }

            else
            {
              v11 &= v10;
            }

            if (v11 != v6)
            {
              break;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

  (*(a1[4] + 16))();
  v19 = a1[6];
  if ((*(v19 + 56) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    DocStore::PutDocument(v21, v22, v23, v24);
  }

  ++*(v19 + 48);
  return 0;
}

void DocStore::PutDocument(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v6 = a3;
  v9 = *MEMORY[0x1E69E9840];
  *&v8[1] = a2;
  v8[0] = 0;
  std::mutex::lock((a1 + 40));
  v5 = *(a1 + 152);
  v7 = *(a1 + 144);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void DocStore::DeleteDocumentsBulk(DocStore *this, uint64_t a2, const uint64_t *a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 40));
  memset(v5, 0, sizeof(v5));
  v4 = *(this + 21);
  *buf = *(this + 20);
  v7[0] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    analytics::ScopedLogger<analytics::DeleteEvent>::ScopedLogger(v5, buf);
  }

  analytics::ScopedLogger<analytics::DeleteEvent>::ScopedLogger(v5, buf);
}

uint64_t DocStore::do_delete_bulk(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = *v9;
    v80 = 1065353216;
    memset(v79, 0, sizeof(v79));
    v78 = 0;
    if (a3 >= 1)
    {
      v11 = a3;
      v12 = a2;
      v13 = a2;
      do
      {
        v14 = *v13++;
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v79, v14, v12);
        v12 = v13;
        --v11;
      }

      while (v11);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 1174405120;
    *&buf[16] = __hot_shard_delete_docs_block_invoke;
    v82 = &__block_descriptor_tmp_3_9288;
    std::unordered_set<long long>::unordered_set(v83, v79);
    v84 = v10;
    v83[5] = &v78;
    v15 = hot_shard_for_each_region(v10, buf);
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v83);
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v79);
    if (v15)
    {
      v16 = *v9;
      *(v9 + 2) = *(v9 + 1);
      *(v9 + 5) = *(v9 + 4);
      *(v9 + 8) = *(v9 + 7);
      *v9 = -1;
      CachingHotShard::Bind(v9, v16);
    }

    else
    {
      if (a3 >= 1)
      {
        v17 = 0;
        v18 = *(v9 + 1);
        v19 = *(v9 + 2);
        do
        {
          if (((v19 - v18) >> 3) >= 1)
          {
            v20 = 0;
            while (*(v18 + 8 * v20) != a2[v17])
            {
              if ((((v19 - v18) >> 3) & 0x7FFFFFFF) == ++v20)
              {
                goto LABEL_16;
              }
            }

            v21 = *(v19 - 8);
            v19 -= 8;
            *(v18 + 8 * v20) = v21;
            *(v9 + 2) = v19;
            v22 = *(v9 + 5);
            *(*(v9 + 4) + 8 * v20) = *(v22 - 8);
            *(v9 + 5) = v22 - 8;
            v23 = *(v9 + 8);
            *(*(v9 + 7) + 8 * v20) = *(v23 - 8);
            *(v9 + 8) = v23 - 8;
          }

LABEL_16:
          ++v17;
        }

        while (v17 != a3);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 4294967282;
  }

  v24 = *(a1 + 24) - *(a1 + 16);
  if (v24)
  {
    v75 = v15;
    v72 = a4;
    v70 = &v69;
    v25 = (v24 >> 5) + 7;
    v26 = v25 >> 3;
    v27.n128_f64[0] = MEMORY[0x1EEE9AC00](a5);
    v28 = &v69 - (((v25 >> 3) + 15) & 0x3FFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v27);
    v30 = &v69 - v29;
    bzero(&v69 - v29, v25 >> 3);
    bzero(v28, v25 >> 3);
    v74 = a3;
    if (a3 >= 1)
    {
      v32 = 0;
      v33 = (v25 >> 3) & 0x7FFFFFFF;
      v34 = v74;
      do
      {
        v35 = a2[v32];
        v36 = (((*(a1 + 24) - *(a1 + 16)) >> 5) + 7) >> 3;
        memset(v30, 255, v36);
        v37 = *(a1 + 184);
        if (v37)
        {
          FileBackedBloomMap::CalcMayContainBitset(v37, v35, v30, v36);
        }

        v38 = v30;
        v39 = v28;
        v40 = v33;
        if (v26 >= 1)
        {
          do
          {
            v41 = *v38++;
            *v39++ |= v41;
            --v40;
          }

          while (v40);
        }

        ++v32;
      }

      while (v32 != v34);
    }

    v42 = (*(a1 + 24) - *(a1 + 16)) >> 5;
    if (v42 >= 1)
    {
      v71 = v74;
      v43 = 32 * v42 - 32;
      *&v31 = 136315394;
      v69 = v31;
      *&v31 = 136315138;
      v73 = v31;
      while (1)
      {
        v44 = v42 - 1;
        v45 = *(a1 + 16);
        v46 = (v45 + v43);
        if (*(v45 + v43 + 25) & 1) == 0 && (v46[24] != 1 || ((v28[v44 >> 3] >> ((v42 - 1) & 7))))
        {
          break;
        }

LABEL_53:
        v43 -= 32;
        v42 = v44;
        if (v44 + 1 <= 1)
        {
          goto LABEL_58;
        }
      }

      v47 = v45 + v43;
      v48 = (v45 + v43);
      if (*(v45 + v43 + 23) < 0)
      {
        v48 = *v46;
      }

      v49 = openat(*a1, v48, 2, v69, *(&v69 + 1));
      if ((v49 & 0x80000000) != 0)
      {
        v58 = *__error();
        if (v58 != 2)
        {
          LODWORD(v74) = *__error();
          v59 = _SILogForLogForCategory(8);
          v60 = dword_1EBF46AEC < 3;
          if (os_log_type_enabled(v59, (dword_1EBF46AEC < 3)))
          {
            if (*(v47 + 23) < 0)
            {
              v46 = *v46;
            }

            v61 = strerror(v58);
            *buf = v69;
            *&buf[4] = v46;
            *&buf[12] = 2080;
            *&buf[14] = v61;
            _os_log_impl(&dword_1C278D000, v59, v60, "*warn* open(%s, RDWR): %s\n", buf, 0x16u);
          }

          *__error() = v74;
        }

        goto LABEL_53;
      }

      v50 = v49;
      *&v79[0] = 0;
      cold_shard_create_search_context_for_fd(v49, v79);
      if (v51)
      {
        v52 = v51;
        v53 = *__error();
        v54 = _SILogForLogForCategory(8);
        v55 = dword_1EBF46AEC < 3;
        if (os_log_type_enabled(v54, (dword_1EBF46AEC < 3)))
        {
          v56 = strerror(-v52);
          *buf = v73;
          *&buf[4] = v56;
          _os_log_impl(&dword_1C278D000, v54, v55, "*warn* cold_shard_create_search_context_for_fd: %s\n", buf, 0xCu);
        }

        *__error() = v53;
        v57 = *&v79[0];
        if (!*&v79[0])
        {
          goto LABEL_50;
        }
      }

      else
      {
        v77 = 0u;
        v76 = 0u;
        v57 = *&v79[0];
        v62 = cold_shard_delete_docs(*&v79[0], v71, a2, &v76);
        if (v62)
        {
          v52 = v62;
          LODWORD(v74) = *__error();
          v63 = _SILogForLogForCategory(8);
          v64 = dword_1EBF46AEC < 3;
          if (os_log_type_enabled(v63, (dword_1EBF46AEC < 3)))
          {
            v65 = strerror(-v52);
            *buf = v73;
            *&buf[4] = v65;
            _os_log_impl(&dword_1C278D000, v63, v64, "*warn* cold_shard_delete_docs: %s\n", buf, 0xCu);
          }

          *__error() = v74;
          if (!v57)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if ((*(v72 + 56) & 1) == 0)
          {
            goto LABEL_65;
          }

          v67 = *(&v77 + 1);
          *(v72 + 48) += v77;
          DocStore::doColdShardCompaction(a1, v44, v67);
          v52 = 0;
          if (!v57)
          {
            goto LABEL_50;
          }
        }
      }

      MEMORY[0x1C691FEF0](v57, 0x1000C4034A301B9);
LABEL_50:
      close(v50);
      v66 = v75;
      if (v52)
      {
        v66 = v52;
      }

      v75 = v66;
      goto LABEL_53;
    }

LABEL_58:
    a4 = v72;
    v15 = v75;
  }

  if ((*(a4 + 24) & 1) == 0)
  {
    goto LABEL_65;
  }

  if (*(a4 + 16) == -1)
  {
    if (*(a4 + 40) & 1) != 0 && (*(a4 + 56))
    {
      *(a4 + 16) = *(a4 + 48) + *(a4 + 32);
      return v15;
    }

LABEL_65:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  return v15;
}

int *DocStore::doColdShardCompaction(int *result, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v3 = *(result + 2) + 32 * a2;
    *(v3 + 25) = 1;
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    result = unlink(v3);
    if (result)
    {
      result = __error();
      v4 = *result;
      if (*result != 2)
      {
        v5 = *__error();
        v6 = _SILogForLogForCategory(8);
        v7 = dword_1EBF46AEC < 3;
        if (os_log_type_enabled(v6, (dword_1EBF46AEC < 3)))
        {
          v8 = 136315394;
          v9 = v3;
          v10 = 2080;
          v11 = strerror(v4);
          _os_log_impl(&dword_1C278D000, v6, v7, "*warn* unlink(%s): %s", &v8, 0x16u);
        }

        result = __error();
        *result = v5;
      }
    }
  }

  return result;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (result[2] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t tt_transition_for_state(void *a1, uint64_t a2, __int16 a3, void *a4, _BYTE *a5)
{
  v5 = a1[1];
  if (v5)
  {
    v6 = 196613 * a3 + HIBYTE(a3) + 6291469 * a2;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = 196613 * a3 + HIBYTE(a3) + 6291469 * a2;
      if (v6 >= *&v5)
      {
        v8 = v6 % *&v5;
      }
    }

    else
    {
      v8 = v6 & (*&v5 - 1);
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        if (HIBYTE(a3) >= 7u)
        {
          v11 = 7;
        }

        else
        {
          v11 = HIBYTE(a3);
        }

        v12 = ~(-1 << v11);
        do
        {
          v13 = v10[1];
          if (v13 == v6)
          {
            v14 = *(v10 + 12);
            if (HIBYTE(a3) == v14 >> 8 && ((v14 ^ a3) & v12) == 0 && v10[2] == a2)
            {
              v16 = *(v10 + 40);
              *a4 = v10[4];
              *a5 = v16;
              return 1;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= *&v5)
              {
                v13 %= *&v5;
              }
            }

            else
            {
              v13 &= *&v5 - 1;
            }

            if (v13 != v8)
            {
              return 0;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  return 0;
}

BOOL hasTrailingAsterisk(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    v3 = Length - 1;
    if (CFStringGetCharacterAtIndex(v1, Length - 1) == 42 && (Length == 1 || CFStringGetCharacterAtIndex(v1, Length - 2) != 92))
    {
      return 1;
    }

    else if (Length < 1)
    {
      return 0;
    }

    else
    {
      for (i = 0; i < Length; ++i)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v1, i);
        if (i < v3 && CharacterAtIndex == 92)
        {
          result = 0;
          ++i;
        }

        else
        {
          v6 = CFStringGetCharacterAtIndex(v1, i);
          result = i == v3 && v6 == 42;
        }
      }
    }
  }

  return result;
}

void utf8QueryString(const __CFString **a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = a3 - 1;
  if (a4)
  {
    v9 = ", ";
  }

  else
  {
    v9 = " ";
  }

  do
  {
    Length = CFStringGetLength(*(a2 + 8 * v7));
    v11 = Length;
    if (*(a1 + 23) >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = a1[1];
    }

    v13 = 3 * Length + 1;
    std::string::resize(a1, v12 + v13, 0);
    v14 = *(a2 + 8 * v7);
    if (*(a1 + 23) >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    usedBufLen = 0;
    v17.location = 0;
    v17.length = v11;
    CFStringGetBytes(v14, v17, 0x8000100u, 0, 0, v12 + v15, v13, &usedBufLen);
    std::string::resize(a1, v12 + usedBufLen, 0);
    if (usedBufLen)
    {
      if (v7 < v8)
      {
        std::string::append(a1, v9);
      }
    }

    ++v7;
  }

  while (a3 != v7);
}

_WORD *makeFalseNode(void)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal;
  }

  v0 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v0)
  {
    _log_fault_for_malloc_failure();
  }

  v0[24] = 16;
  return v0;
}

query_node *makeOrNode(query_node *a1, query_node *a2)
{
  if (!a1)
  {
    return a2;
  }

  v3 = a1;
  if (a2)
  {
    var6 = a1->var6;
    if (var6 == 16)
    {
      var2 = a1->var2;
      if (!var2 || *(var2 + 14) == 0.0)
      {
        goto LABEL_8;
      }
    }

    v6 = a2->var6;
    if (v6 == 16)
    {
      v8 = a2->var2;
      if (!v8 || var6 == 32 || *(v8 + 14) == 0.0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v6 == 32)
      {
LABEL_8:
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __db_query_tree_apply_block_block_invoke;
        v13 = &unk_1E8198ED0;
        v14 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(a1, &v10, 0);
        return a2;
      }

      if (var6 == 32)
      {
LABEL_20:
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __db_query_tree_apply_block_block_invoke;
        v13 = &unk_1E8198ED0;
        v14 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(a2, &v10, 0);
        return v3;
      }
    }

    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal;
    }

    v9 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v9)
    {
      _log_fault_for_malloc_failure();
    }

    v9->var0 = v3;
    v9->var1 = a2;
    v3 = v9;
    v9->var6 = 1;
  }

  return v3;
}

query_node *makeAndNode(query_node *a1, query_node *a2)
{
  if (!a1)
  {
    return a2;
  }

  v3 = a1;
  if (a2)
  {
    var6 = a1->var6;
    if (var6 == 32)
    {
      var2 = a1->var2;
      if (!var2 || *(var2 + 13) == 0.0)
      {
        goto LABEL_8;
      }
    }

    v6 = a2->var6;
    if (v6 == 32)
    {
      v8 = a2->var2;
      if (!v8 || var6 == 16 || *(v8 + 13) == 0.0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v6 == 16)
      {
LABEL_8:
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __db_query_tree_apply_block_block_invoke;
        v13 = &unk_1E8198ED0;
        v14 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(a1, &v10, 0);
        return a2;
      }

      if (var6 == 16)
      {
LABEL_20:
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __db_query_tree_apply_block_block_invoke;
        v13 = &unk_1E8198ED0;
        v14 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(a2, &v10, 0);
        return v3;
      }
    }

    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal;
    }

    v9 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v9)
    {
      _log_fault_for_malloc_failure();
    }

    *v9 = v3;
    v9[1] = a2;
    *(v9 + 24) = 2;
    return v9;
  }

  return v3;
}

_WORD *createQueryNode(const char *a1, char *__s, uint64_t a3, int a4, int a5, float a6, float a7)
{
  if (!a1)
  {
    return 0;
  }

  if (__s)
  {
    strlen(__s);
  }

  v15 = MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
  {
    ++sTotal;
  }

  v16 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
  if (!v16)
  {
    _log_fault_for_malloc_failure();
  }

  *v16 = strdup(a1);
  v16[6] = a4;
  *(v16 + 4) = a3;
  if (a5 >= 1)
  {
    operator new[]();
  }

  if (a5 == -1)
  {
    operator new[]();
  }

  *(v16 + 9) = strdup(__s);
  if ((*(v16 + 34) & 0x80) != 0)
  {
    *(v16 + 28) = 70;
  }

  *(v16 + 13) = a6;
  *(v16 + 14) = a7;
  if (*v15 <= 0x4FuLL)
  {
    ++sTotal;
  }

  v14 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v14)
  {
    _log_fault_for_malloc_failure();
  }

  v14[24] = 4;
  *(v14 + 2) = v16;
  return v14;
}

_WORD *createFieldMatchQueryNode(const char *a1, int a2, void *a3, float a4)
{
  v4 = 0;
  v26[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = -1431655765 * ((a3[1] - *a3) >> 3);
    if (v6 >= 1)
    {
      v10 = MEMORY[0x1E69E9AC8];
      if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
      {
        ++sTotal;
      }

      v11 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
      if (!v11)
      {
        _log_fault_for_malloc_failure();
      }

      *v11 = strdup(a1);
      if (a2)
      {
        v13 = 13;
      }

      else
      {
        v13 = 14;
      }

      v11[6] = v13;
      if (v6 >= 0x400)
      {
        v14 = 1024;
      }

      else
      {
        v14 = v6;
      }

      v11[10] = v14;
      MEMORY[0x1EEE9AC00](v12);
      v16 = (v26 - v15);
      bzero(v26 - v15, v17);
      v18 = v11[10];
      if (v18 >= 1)
      {
        v20 = a3;
        v19 = *a3;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v20[1] - v19) >> 3);
        v22 = v16;
        do
        {
          if (!v21)
          {
            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

          v23 = v19;
          if (*(v19 + 23) < 0)
          {
            v23 = *v19;
          }

          *v22++ = strdup(v23);
          v19 += 24;
          --v21;
          --v18;
        }

        while (v18);
      }

      v24 = malloc_type_zone_malloc(queryZone, 8 * (v6 & 0x7FFFFFFF), 0xA4971684uLL);
      if (!v24)
      {
        _log_fault_for_malloc_failure();
      }

      *(v11 + 21) = v24;
      memcpy(v24, v16, 8 * (v6 & 0x7FFFFFFF));
      *(v11 + 13) = a4;
      v11[14] = 0;
      if (*v10 <= 0x4FuLL)
      {
        ++sTotal;
      }

      v4 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
      if (!v4)
      {
        _log_fault_for_malloc_failure();
      }

      v4[24] = 4;
      *(v4 + 2) = v11;
    }
  }

  return v4;
}

query_node *createQueryNodeForPhotosMediaType(int a1, PRContext *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a2 + 7);
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        v26 = xmmword_1E8192AE0;
        v27 = "public.video";
        std::vector<char const*>::vector[abi:nn200100](&__p, &v26, 3uLL);
        if (a1)
        {
          v4 = 1;
        }

        else
        {
          v4 = 5;
        }

        v5 = __p;
        v6 = v21;
        if (__p != v21)
        {
          v7 = 0;
          if (a1)
          {
            v8 = makeOrNode;
          }

          else
          {
            v8 = makeAndNode;
          }

          do
          {
            v9 = *v5++;
            QueryNode = createQueryNode("kMDItemContentTypeTree", v9, 0, v4, 0, 0.0, 0.0);
            v7 = v8(v7, QueryNode);
          }

          while (v5 != v6);
          v5 = __p;
          if (!__p)
          {
            return v7;
          }

          goto LABEL_40;
        }

        v7 = 0;
        if (__p)
        {
LABEL_40:
          v21 = v5;
LABEL_45:
          operator delete(v5);
        }

        return v7;
      }

      if ((a1 & 1) == 0)
      {
        v26 = xmmword_1E8192AE0;
        v27 = "public.video";
        std::vector<char const*>::vector[abi:nn200100](&v24, &v26, 3uLL);
        v5 = v24;
        v17 = v25;
        if (v24 == v25)
        {
          v7 = 0;
          if (!v24)
          {
            return v7;
          }
        }

        else
        {
          v7 = 0;
          do
          {
            v18 = *v5++;
            v19 = createQueryNode("kMDItemContentTypeTree", v18, 0, 5, 0, 1.1755e-38, 0.0);
            v7 = makeAndNode(v7, v19);
          }

          while (v5 != v17);
          v5 = v24;
          if (!v24)
          {
            return v7;
          }
        }

        v25 = v5;
        goto LABEL_45;
      }

      v26 = xmmword_1E8192AE0;
      v27 = "public.video";
      std::vector<char const*>::vector[abi:nn200100](&v22, &v26, 3uLL);
      v5 = v22;
      v14 = v23;
      if (v22 == v23)
      {
        v7 = 0;
        if (!v22)
        {
          return v7;
        }
      }

      else
      {
        v7 = 0;
        do
        {
          v15 = *v5++;
          v16 = createQueryNode("kMDItemContentTypeTree", v15, 0, 1, 0, 1.1755e-38, 0.0);
          v7 = makeOrNode(v7, v16);
        }

        while (v5 != v14);
        v5 = v22;
        if (!v22)
        {
          return v7;
        }
      }

      v23 = v5;
      goto LABEL_45;
    }

    if ((v3 & 2) != 0)
    {
      v13 = 1.1755e-38;
      if (a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 5;
      }
    }

    else
    {
      if (a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 5;
      }

      v13 = 0.0;
    }

    return createQueryNode("kMDItemPhotosMediaTypes", "*", 0, v12, 0, v13, 0.0);
  }

  else
  {

    return makeFalseNode();
  }
}

void *std::vector<char const*>::vector[abi:nn200100](void *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(a3);
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void *makeRetrievalNodeFromQueryString(char *a1)
{
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_query_tree_apply_block_block_invoke;
  v3[3] = &unk_1E8198ED0;
  v3[4] = &__block_literal_global_1088;
  db_query_tree_apply_block_with_meta(query_node_with_ann, v3, 0);
  return query_node_with_ann;
}

uint64_t ___Z32makeRetrievalNodeFromQueryStringPKc_block_invoke(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      *(v3 + 52) = 0;
      *(v3 + 56) = 0;
    }
  }

  return result;
}

void *makeNonMatchRetrievalNodeFromQueryString(char *a1)
{
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_query_tree_apply_block_block_invoke;
  v3[3] = &unk_1E8198ED0;
  v3[4] = &__block_literal_global_14;
  db_query_tree_apply_block_with_meta(query_node_with_ann, v3, 0);
  return query_node_with_ann;
}

uint64_t ___Z40makeNonMatchRetrievalNodeFromQueryStringPKc_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 24) = 5;
      v3 = *(v2 + 72);
      if (v3)
      {
        free(v3);
      }

      operator new[]();
    }
  }

  return a2;
}

void *makeNonMatchRetrievalNodeFromORQueryString(char *a1)
{
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_query_tree_apply_block_block_invoke;
  v3[3] = &unk_1E8198ED0;
  v3[4] = &__block_literal_global_17_1092;
  db_query_tree_apply_block_with_meta(query_node_with_ann, v3, 0);
  return query_node_with_ann;
}

uint64_t ___Z42makeNonMatchRetrievalNodeFromORQueryStringPKc_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 48) == 1)
    {
      *(a2 + 48) = 2;
    }

    else
    {
      v2 = *(a2 + 16);
      if (v2)
      {
        *(v2 + 24) = 5;
        v3 = *(v2 + 72);
        if (v3)
        {
          free(v3);
        }

        operator new[]();
      }
    }
  }

  return a2;
}

query_node *queryNodeForToken(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = strlen(a1);
  v9 = 0;
  if (!a4 || !v8)
  {
    return v9;
  }

  v10 = *(a3 + 40);
  if (v10 <= 0 && v8 >= 4 && (*(a3 + 45) & 1) == 0 && (*(a4 + 28) & 0x806) == 4)
  {
    v10 = 2;
  }

  v11 = *(a3 + 16);
  if (*(v11 + 23) < 0)
  {
    if (!*(v11 + 8))
    {
      goto LABEL_27;
    }

    v12 = *v11;
    goto LABEL_14;
  }

  v12 = *(a3 + 16);
  if (*(v11 + 23))
  {
LABEL_14:
    v13 = 0.0;
    if ((*(a4 + 28) & 2) == 0)
    {
LABEL_20:
      if (v10 == -1)
      {
        v10 = 1;
      }

      else if (v10 < 1)
      {
        v10 = 0;
      }

      else
      {
        v16 = *(a3 + 32);
        std::string::basic_string[abi:nn200100]<0>(__p, v12);
        if (!std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v16, __p))
        {
          v10 = 0;
        }

        if (v39 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return createQueryNode(v12, a1, *a3, *(a3 + 24), v10, v13 * *(a3 + 8), v13 * *(a3 + 12));
    }

    if (*(a3 + 46) != 1 || strcmp(v12, "kMDItemTextContent"))
    {
      v14 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(a2, v11);
      v15 = (v14 + 5);
      if (!v14)
      {
        v15 = &defaultAttributeScore;
      }

      v13 = *v15 + *v15;
      goto LABEL_20;
    }

    return 0;
  }

LABEL_27:
  v37 = a2;
  v17 = a2[2];
  if (v17)
  {
    v9 = 0;
    do
    {
      v18 = (v17 + 2);
      if (*(v17 + 39) < 0)
      {
        v18 = *v18;
      }

      if ((*(a4 + 28) & 2) == 0 || *(a3 + 46) != 1 || strcmp(v18, "kMDItemTextContent"))
      {
        v19 = v10 == -1;
        if (v10 >= 1)
        {
          v20 = *(a3 + 32);
          std::string::basic_string[abi:nn200100]<0>(__p, v18);
          v19 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v20, __p) ? v10 : 0;
          if (v39 < 0)
          {
            operator delete(__p[0]);
          }
        }

        QueryNode = createQueryNode(v18, a1, *a3, *(a3 + 24), v19, *(v17 + 10) * *(a3 + 8), *(v17 + 10) * *(a3 + 12));
        v22 = *(a4 + 28);
        if ((v22 & 0x4000) != 0 && !strcmp(v18, "kMDItemTextContent"))
        {
          if ((v22 & 2) != 0)
          {
            v23 = 1.1755e-38;
            v24 = 1;
          }

          else
          {
            v23 = 0.0;
            v24 = 5;
          }

          v25 = createQueryNode("_kMDItemBundleID", "com.apple.mobilesafari", 0, v24, 0, 0.0, v23);
          QueryNode = makeAndNode(QueryNode, v25);
        }

        v26 = makeOrNode;
        if (*(a3 + 28))
        {
          v26 = makeAndNode;
        }

        v9 = v26(v9, QueryNode);
      }

      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    v9 = 0;
  }

  if ((*(a4 + 28) & 2) == 0 && v10 > 0)
  {
    v27 = *(*(a3 + 32) + 16);
    if (v27)
    {
      v28 = 0;
      v36 = *a3;
      v29 = *(a3 + 24);
      do
      {
        v30 = (v27 + 2);
        if (*(v27 + 39) < 0)
        {
          v30 = *v30;
        }

        if (*(v27 + 10))
        {
          v31 = *(v27 + 10);
        }

        else
        {
          v31 = v10;
        }

        if (strcmp(v30, "kMDItemTextContent"))
        {
          std::string::basic_string[abi:nn200100]<0>(__p, v30);
          v32 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v37, __p);
          if (v39 < 0)
          {
            operator delete(__p[0]);
          }

          if (!v32 && v31 >= 1)
          {
            v33 = createQueryNode(v30, a1, v36, v29, v31, 0.0, 0.0);
            v28 = makeOrNode(v28, v33);
          }
        }

        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    return makeOrNode(v9, v28);
  }

  return v9;
}

float normalizeQueryNode(query_node *a1, float a2)
{
  v8 = MEMORY[0x1E69E9820];
  v9 = 0x40000000;
  v10 = __db_query_tree_apply_block_block_invoke;
  v11 = &unk_1E8198ED0;
  v12 = &__block_literal_global_23;
  db_query_tree_apply_block_with_meta(a1, &v8, &__block_literal_global_27);
  var13 = a1->var13;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___Z18normalizeQueryNodeP10query_nodef_block_invoke_3;
  v6[3] = &__block_descriptor_tmp_28_1100;
  v7 = var13 / a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 0x40000000;
  v10 = __db_query_tree_apply_block_block_invoke;
  v11 = &unk_1E8198ED0;
  v12 = v6;
  db_query_tree_apply_block_with_meta(a1, &v8, 0);
  return var13;
}

uint64_t ___Z18normalizeQueryNodeP10query_nodef_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = *(v2 + 52);
      if (v3 > 1.1755e-38)
      {
        *(v2 + 52) = v3 / *(a1 + 32);
      }

      v4 = *(v2 + 56);
      if (v4 > 1.1755e-38)
      {
        *(v2 + 56) = v4 / *(a1 + 32);
      }
    }
  }

  *(a2 + 72) = 0;
  return a2;
}

uint64_t ___Z18normalizeQueryNodeP10query_nodef_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    *(a2 + 8) = a4;
    v7 = *(a2 + 48);
    if (v7 == 2)
    {
      v9 = *(a3 + 72);
      v8 = 0.0;
      if (v9 != 0.0)
      {
        v10 = *(a4 + 72);
        if (v10 != 0.0)
        {
          v8 = v9 + v10;
        }
      }

      goto LABEL_15;
    }

    if (v7 == 1)
    {
      v8 = *(a3 + 72);
      if (v8 <= *(a4 + 72))
      {
        v8 = *(a4 + 72);
      }

LABEL_15:
      *(a2 + 72) = v8;
    }
  }

  else if (a2)
  {
    v11[5] = v4;
    v11[6] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __db_query_tree_apply_block_block_invoke;
    v11[3] = &unk_1E8198ED0;
    v11[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a2, v11, 0);
    return 0;
  }

  return result;
}

uint64_t ___Z18normalizeQueryNodeP10query_nodef_block_invoke(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = *(v3 + 52);
      if (v4 <= *(v3 + 56))
      {
        v4 = *(v3 + 56);
      }

      *(a2 + 72) = v4;
    }
  }

  return result;
}

BOOL isOptionalSpecialChar(UniChar a1)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  v3 = 1;
  if (!CFCharacterSetIsCharacterMember(Predefined, a1))
  {
    v4 = CFCharacterSetGetPredefined(kCFCharacterSetControl);
    if (!CFCharacterSetIsCharacterMember(v4, a1))
    {
      v5 = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @",;:.!_*\"");
      v3 = CFCharacterSetIsCharacterMember(v5, a1) != 0;
      CFRelease(v5);
    }
  }

  return v3;
}

BOOL hasTrailingOptionalSpecialChar(const __CFString *a1)
{
  if (!a1 || !CFStringGetLength(a1))
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, Length - 1);

  return isOptionalSpecialChar(CharacterAtIndex);
}

BOOL hasOnlyOptionalSpecialChar(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  Length = CFStringGetLength(a1);
  v3 = Length - 1;
  if (Length < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v4);
    result = isOptionalSpecialChar(CharacterAtIndex);
    if (!result)
    {
      break;
    }
  }

  while (v3 != v4++);
  return result;
}

uint64_t hasOnlySpecialChar(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  Length = CFStringGetLength(a1);
  v4 = Length - 1;
  if (Length < 1)
  {
    v8 = 1;
  }

  else
  {
    v5 = 0;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v5);
      IsCharacterMember = CFCharacterSetIsCharacterMember(v2, CharacterAtIndex);
      v8 = IsCharacterMember != 0;
      if (!IsCharacterMember)
      {
        break;
      }
    }

    while (v4 != v5++);
  }

  CFRelease(v2);
  return v8;
}

BOOL isOptionalWord(char *a1)
{
  {
    OptionalWords(void)::optionalWords = 0u;
    unk_1EBF485B0 = 0u;
    dword_1EBF485C0 = 1065353216;
  }

  if (OptionalWords(void)::onceToken != -1)
  {
    dispatch_once(&OptionalWords(void)::onceToken, &__block_literal_global_42);
  }

  if (!qword_1EBF485B8)
  {
    return 0;
  }

  if (isLowerStr(a1))
  {
    return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&OptionalWords(void)::optionalWords, a1) != 0;
  }

  toLowerCase(&__p, a1);
  v2 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&OptionalWords(void)::optionalWords, &__p) != 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

BOOL isLowerStr(char *a1)
{
  v1 = a1[23];
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 1;
  }

  v3 = v1 - 1;
  v4 = MEMORY[0x1E69E9830];
  do
  {
    v5 = *v2;
    if ((v5 & 0x80000000) != 0)
    {
      v6 = __maskrune(v5, 0x1000uLL);
    }

    else
    {
      v6 = *(v4 + 4 * v5 + 60) & 0x1000;
    }

    result = v6 != 0;
    ++v2;
    if (v6)
    {
      v8 = v3 == 0;
    }

    else
    {
      v8 = 1;
    }

    --v3;
  }

  while (!v8);
  return result;
}

void toLowerCase(std::string *a1, char *a2)
{
  v2 = a2;
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (a2[23] >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  std::string::reserve(a1, v4);
  v5 = *(v2 + 1);
  if (v2[23] >= 0)
  {
    v6 = v2[23];
  }

  else
  {
    v2 = *v2;
    v6 = v5;
  }

  for (; v6; --v6)
  {
    v7 = *v2++;
    v8 = __tolower(v7);
    std::string::push_back(a1, v8);
  }
}

void ___ZL13OptionalWordsv_block_invoke()
{
  v42.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  v0 = CFLocaleCopyCurrent();
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x1C691EAF0]();
    if (CFStringHasPrefix(v2, @"en"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "to");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "with");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "in");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "and");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "or");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "on");
      std::string::basic_string[abi:nn200100]<0>(&v22, "of");
      std::string::basic_string[abi:nn200100]<0>(v23, "at");
      std::string::basic_string[abi:nn200100]<0>(v24, "am");
      std::string::basic_string[abi:nn200100]<0>(&v25, "is");
      std::string::basic_string[abi:nn200100]<0>(v26, "are");
      std::string::basic_string[abi:nn200100]<0>(v27, "was");
      std::string::basic_string[abi:nn200100]<0>(&v28, "were");
      std::string::basic_string[abi:nn200100]<0>(v29, "be");
      std::string::basic_string[abi:nn200100]<0>(v30, "a");
      std::string::basic_string[abi:nn200100]<0>(v31, "an");
      std::string::basic_string[abi:nn200100]<0>(v32, "the");
      std::string::basic_string[abi:nn200100]<0>(v33, "by");
      std::string::basic_string[abi:nn200100]<0>(v34, "for");
      std::string::basic_string[abi:nn200100]<0>(v35, "from");
      std::string::basic_string[abi:nn200100]<0>(v36, "off");
      std::string::basic_string[abi:nn200100]<0>(v37, "so");
      std::string::basic_string[abi:nn200100]<0>(v38, "as");
      std::string::basic_string[abi:nn200100]<0>(v39, "during");
      std::string::basic_string[abi:nn200100]<0>(&v40, "under");
      std::string::basic_string[abi:nn200100]<0>(&v41, "saved");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v42);
      v3 = 26;
      do
      {
        if (SHIBYTE(__str[v3 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v3 - 1].__r_.__value_.__l.__data_);
        }

        --v3;
      }

      while (v3 * 24);
    }

    else if (CFStringHasPrefix(v2, @"es"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "el");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "la");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "los");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "las");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "de");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "en");
      std::string::basic_string[abi:nn200100]<0>(&v22, "que");
      std::string::basic_string[abi:nn200100]<0>(v23, "y");
      std::string::basic_string[abi:nn200100]<0>(v24, "a");
      std::string::basic_string[abi:nn200100]<0>(&v25, "un");
      std::string::basic_string[abi:nn200100]<0>(v26, "una");
      std::string::basic_string[abi:nn200100]<0>(v27, "unos");
      std::string::basic_string[abi:nn200100]<0>(&v28, "unas");
      std::string::basic_string[abi:nn200100]<0>(v29, "por");
      std::string::basic_string[abi:nn200100]<0>(v30, "con");
      std::string::basic_string[abi:nn200100]<0>(v31, "para");
      std::string::basic_string[abi:nn200100]<0>(v32, "es");
      std::string::basic_string[abi:nn200100]<0>(v33, "al");
      std::string::basic_string[abi:nn200100]<0>(v34, "del");
      std::string::basic_string[abi:nn200100]<0>(v35, "pero");
      std::string::basic_string[abi:nn200100]<0>(v36, "o");
      std::string::basic_string[abi:nn200100]<0>(v37, "entre");
      std::string::basic_string[abi:nn200100]<0>(v38, "porque");
      std::string::basic_string[abi:nn200100]<0>(v39, "hasta");
      std::string::basic_string[abi:nn200100]<0>(&v40, "desde");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v41);
      v4 = 25;
      do
      {
        if (SHIBYTE(__str[v4 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v4 - 1].__r_.__value_.__l.__data_);
        }

        --v4;
      }

      while (v4 * 24);
    }

    else if (CFStringHasPrefix(v2, @"fr"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "à");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "avec");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "en");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "dans");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "a");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "et");
      std::string::basic_string[abi:nn200100]<0>(&v22, "de");
      std::string::basic_string[abi:nn200100]<0>(v23, "au");
      std::string::basic_string[abi:nn200100]<0>(v24, "un");
      std::string::basic_string[abi:nn200100]<0>(&v25, "le");
      std::string::basic_string[abi:nn200100]<0>(v26, "la");
      std::string::basic_string[abi:nn200100]<0>(v27, "pendant");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v28);
      v5 = 12;
      do
      {
        if (SHIBYTE(__str[v5 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v5 - 1].__r_.__value_.__l.__data_);
        }

        --v5;
      }

      while (v5 * 24);
    }

    else if (CFStringHasPrefix(v2, @"ja"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "から");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "で");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "と");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "に");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "の");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "へ");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v22);
      for (i = 0; i != -144; i -= 24)
      {
        if (SHIBYTE(__str[i / 0x18 + 5].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[i / 0x18 + 5].__r_.__value_.__l.__data_);
        }
      }
    }

    else if (CFStringHasPrefix(v2, @"zh"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "与");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "从");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "到");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "同");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "和");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "在");
      std::string::basic_string[abi:nn200100]<0>(&v22, "或");
      std::string::basic_string[abi:nn200100]<0>(v23, "的");
      std::string::basic_string[abi:nn200100]<0>(v24, "里");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v25);
      for (j = 0; j != -27; j -= 3)
      {
        if (SHIBYTE(v24[j + 2]) < 0)
        {
          operator delete(v24[j]);
        }
      }
    }

    else if (CFStringHasPrefix(v2, @"de"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "an");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "in");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "von");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "nach");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "mit");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "und");
      std::string::basic_string[abi:nn200100]<0>(&v22, "oder");
      std::string::basic_string[abi:nn200100]<0>(v23, "bin");
      std::string::basic_string[abi:nn200100]<0>(v24, "bist");
      std::string::basic_string[abi:nn200100]<0>(&v25, "seit");
      std::string::basic_string[abi:nn200100]<0>(v26, "ist");
      std::string::basic_string[abi:nn200100]<0>(v27, "sind");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v28);
      v8 = 12;
      do
      {
        if (SHIBYTE(__str[v8 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v8 - 1].__r_.__value_.__l.__data_);
        }

        --v8;
      }

      while (v8 * 24);
    }

    else if (CFStringHasPrefix(v2, @"it"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "il");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "lo");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "la");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "i");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "gli");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "le");
      std::string::basic_string[abi:nn200100]<0>(&v22, "un");
      std::string::basic_string[abi:nn200100]<0>(v23, "uno");
      std::string::basic_string[abi:nn200100]<0>(v24, "una");
      std::string::basic_string[abi:nn200100]<0>(&v25, "di");
      std::string::basic_string[abi:nn200100]<0>(v26, "da");
      std::string::basic_string[abi:nn200100]<0>(v27, "in");
      std::string::basic_string[abi:nn200100]<0>(&v28, "con");
      std::string::basic_string[abi:nn200100]<0>(v29, "su");
      std::string::basic_string[abi:nn200100]<0>(v30, "per");
      std::string::basic_string[abi:nn200100]<0>(v31, "tra");
      std::string::basic_string[abi:nn200100]<0>(v32, "fra");
      std::string::basic_string[abi:nn200100]<0>(v33, "e");
      std::string::basic_string[abi:nn200100]<0>(v34, "o");
      std::string::basic_string[abi:nn200100]<0>(v35, "ma");
      std::string::basic_string[abi:nn200100]<0>(v36, "se");
      std::string::basic_string[abi:nn200100]<0>(v37, "che");
      std::string::basic_string[abi:nn200100]<0>(v38, "sono");
      std::string::basic_string[abi:nn200100]<0>(v39, "del");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v40);
      v9 = 24;
      do
      {
        if (SHIBYTE(__str[v9 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v9 - 1].__r_.__value_.__l.__data_);
        }

        --v9;
      }

      while (v9 * 24);
    }

    else if (CFStringHasPrefix(v2, @"pt"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "o");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "a");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "os");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "as");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "um");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "uma");
      std::string::basic_string[abi:nn200100]<0>(&v22, "uns");
      std::string::basic_string[abi:nn200100]<0>(v23, "umas");
      std::string::basic_string[abi:nn200100]<0>(v24, "de");
      std::string::basic_string[abi:nn200100]<0>(&v25, "dos");
      std::string::basic_string[abi:nn200100]<0>(v26, "em");
      std::string::basic_string[abi:nn200100]<0>(v27, "para");
      std::string::basic_string[abi:nn200100]<0>(&v28, "com");
      std::string::basic_string[abi:nn200100]<0>(v29, "por");
      std::string::basic_string[abi:nn200100]<0>(v30, "sobre");
      std::string::basic_string[abi:nn200100]<0>(v31, "até");
      std::string::basic_string[abi:nn200100]<0>(v32, "e");
      std::string::basic_string[abi:nn200100]<0>(v33, "ou");
      std::string::basic_string[abi:nn200100]<0>(v34, "mas");
      std::string::basic_string[abi:nn200100]<0>(v35, "que");
      std::string::basic_string[abi:nn200100]<0>(v36, "se");
      std::string::basic_string[abi:nn200100]<0>(v37, "é");
      std::string::basic_string[abi:nn200100]<0>(v38, "são");
      std::string::basic_string[abi:nn200100]<0>(v39, "estar");
      std::string::basic_string[abi:nn200100]<0>(&v40, "ser");
      std::string::basic_string[abi:nn200100]<0>(&v41, "ter");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v42);
      v10 = 26;
      do
      {
        if (SHIBYTE(__str[v10 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v10 - 1].__r_.__value_.__l.__data_);
        }

        --v10;
      }

      while (v10 * 24);
    }

    else if (CFStringHasPrefix(v2, @"da"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "og");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "i");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "det");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "at");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "en");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "den");
      std::string::basic_string[abi:nn200100]<0>(&v22, "til");
      std::string::basic_string[abi:nn200100]<0>(v23, "er");
      std::string::basic_string[abi:nn200100]<0>(v24, "som");
      std::string::basic_string[abi:nn200100]<0>(&v25, "på");
      std::string::basic_string[abi:nn200100]<0>(v26, "de");
      std::string::basic_string[abi:nn200100]<0>(v27, "med");
      std::string::basic_string[abi:nn200100]<0>(&v28, "han");
      std::string::basic_string[abi:nn200100]<0>(v29, "af");
      std::string::basic_string[abi:nn200100]<0>(v30, "for");
      std::string::basic_string[abi:nn200100]<0>(v31, "ikke");
      std::string::basic_string[abi:nn200100]<0>(v32, "der");
      std::string::basic_string[abi:nn200100]<0>(v33, "var");
      std::string::basic_string[abi:nn200100]<0>(v34, "mig");
      std::string::basic_string[abi:nn200100]<0>(v35, "sig");
      std::string::basic_string[abi:nn200100]<0>(v36, "men");
      std::string::basic_string[abi:nn200100]<0>(v37, "et");
      std::string::basic_string[abi:nn200100]<0>(v38, "har");
      std::string::basic_string[abi:nn200100]<0>(v39, "om");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v40);
      v11 = 24;
      do
      {
        if (SHIBYTE(__str[v11 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v11 - 1].__r_.__value_.__l.__data_);
        }

        --v11;
      }

      while (v11 * 24);
    }

    else if (CFStringHasPrefix(v2, @"nl"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "de");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "en");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "van");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "te");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "dat");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "die");
      std::string::basic_string[abi:nn200100]<0>(&v22, "in");
      std::string::basic_string[abi:nn200100]<0>(v23, "een");
      std::string::basic_string[abi:nn200100]<0>(v24, "hij");
      std::string::basic_string[abi:nn200100]<0>(&v25, "het");
      std::string::basic_string[abi:nn200100]<0>(v26, "niet");
      std::string::basic_string[abi:nn200100]<0>(v27, "zijn");
      std::string::basic_string[abi:nn200100]<0>(&v28, "is");
      std::string::basic_string[abi:nn200100]<0>(v29, "was");
      std::string::basic_string[abi:nn200100]<0>(v30, "op");
      std::string::basic_string[abi:nn200100]<0>(v31, "aan");
      std::string::basic_string[abi:nn200100]<0>(v32, "met");
      std::string::basic_string[abi:nn200100]<0>(v33, "als");
      std::string::basic_string[abi:nn200100]<0>(v34, "voor");
      std::string::basic_string[abi:nn200100]<0>(v35, "er");
      std::string::basic_string[abi:nn200100]<0>(v36, "maar");
      std::string::basic_string[abi:nn200100]<0>(v37, "om");
      std::string::basic_string[abi:nn200100]<0>(v38, "hem");
      std::string::basic_string[abi:nn200100]<0>(v39, "dan");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v40);
      v12 = 24;
      do
      {
        if (SHIBYTE(__str[v12 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v12 - 1].__r_.__value_.__l.__data_);
        }

        --v12;
      }

      while (v12 * 24);
    }

    else if (CFStringHasPrefix(v2, @"sv"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "och");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "i");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "en");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "att");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "det");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "som");
      std::string::basic_string[abi:nn200100]<0>(&v22, "på");
      std::string::basic_string[abi:nn200100]<0>(v23, "är");
      std::string::basic_string[abi:nn200100]<0>(v24, "av");
      std::string::basic_string[abi:nn200100]<0>(&v25, "för");
      std::string::basic_string[abi:nn200100]<0>(v26, "med");
      std::string::basic_string[abi:nn200100]<0>(v27, "till");
      std::string::basic_string[abi:nn200100]<0>(&v28, "den");
      std::string::basic_string[abi:nn200100]<0>(v29, "har");
      std::string::basic_string[abi:nn200100]<0>(v30, "de");
      std::string::basic_string[abi:nn200100]<0>(v31, "inte");
      std::string::basic_string[abi:nn200100]<0>(v32, "ett");
      std::string::basic_string[abi:nn200100]<0>(v33, "han");
      std::string::basic_string[abi:nn200100]<0>(v34, "men");
      std::string::basic_string[abi:nn200100]<0>(v35, "om");
      std::string::basic_string[abi:nn200100]<0>(v36, "från");
      std::string::basic_string[abi:nn200100]<0>(v37, "vi");
      std::string::basic_string[abi:nn200100]<0>(v38, "hon");
      std::string::basic_string[abi:nn200100]<0>(v39, "sig");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v40);
      v13 = 24;
      do
      {
        if (SHIBYTE(__str[v13 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v13 - 1].__r_.__value_.__l.__data_);
        }

        --v13;
      }

      while (v13 * 24);
    }

    else if (CFStringHasPrefix(v2, @"nb"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "og");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "i");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "det");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "at");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "en");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "et");
      std::string::basic_string[abi:nn200100]<0>(&v22, "den");
      std::string::basic_string[abi:nn200100]<0>(v23, "til");
      std::string::basic_string[abi:nn200100]<0>(v24, "er");
      std::string::basic_string[abi:nn200100]<0>(&v25, "som");
      std::string::basic_string[abi:nn200100]<0>(v26, "på");
      std::string::basic_string[abi:nn200100]<0>(v27, "for");
      std::string::basic_string[abi:nn200100]<0>(&v28, "med");
      std::string::basic_string[abi:nn200100]<0>(v29, "han");
      std::string::basic_string[abi:nn200100]<0>(v30, "av");
      std::string::basic_string[abi:nn200100]<0>(v31, "ikke");
      std::string::basic_string[abi:nn200100]<0>(v32, "der");
      std::string::basic_string[abi:nn200100]<0>(v33, "de");
      std::string::basic_string[abi:nn200100]<0>(v34, "var");
      std::string::basic_string[abi:nn200100]<0>(v35, "meg");
      std::string::basic_string[abi:nn200100]<0>(v36, "seg");
      std::string::basic_string[abi:nn200100]<0>(v37, "men");
      std::string::basic_string[abi:nn200100]<0>(v38, "har");
      std::string::basic_string[abi:nn200100]<0>(v39, "om");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v40);
      v14 = 24;
      do
      {
        if (SHIBYTE(__str[v14 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v14 - 1].__r_.__value_.__l.__data_);
        }

        --v14;
      }

      while (v14 * 24);
    }

    else if (CFStringHasPrefix(v2, @"vi"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "và");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "là");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "của");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "ở");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "cho");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "có");
      std::string::basic_string[abi:nn200100]<0>(&v22, "không");
      std::string::basic_string[abi:nn200100]<0>(v23, "cũng");
      std::string::basic_string[abi:nn200100]<0>(v24, "đã");
      std::string::basic_string[abi:nn200100]<0>(&v25, "sẽ");
      std::string::basic_string[abi:nn200100]<0>(v26, "được");
      std::string::basic_string[abi:nn200100]<0>(v27, "một");
      std::string::basic_string[abi:nn200100]<0>(&v28, "các");
      std::string::basic_string[abi:nn200100]<0>(v29, "những");
      std::string::basic_string[abi:nn200100]<0>(v30, "bạn");
      std::string::basic_string[abi:nn200100]<0>(v31, "anh");
      std::string::basic_string[abi:nn200100]<0>(v32, "chị");
      std::string::basic_string[abi:nn200100]<0>(v33, "này");
      std::string::basic_string[abi:nn200100]<0>(v34, "đó");
      std::string::basic_string[abi:nn200100]<0>(v35, "khi");
      std::string::basic_string[abi:nn200100]<0>(v36, "thì");
      std::string::basic_string[abi:nn200100]<0>(v37, "với");
      std::string::basic_string[abi:nn200100]<0>(v38, "như");
      std::string::basic_string[abi:nn200100]<0>(v39, "mà");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v40);
      v15 = 24;
      do
      {
        if (SHIBYTE(__str[v15 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v15 - 1].__r_.__value_.__l.__data_);
        }

        --v15;
      }

      while (v15 * 24);
    }

    else if (CFStringHasPrefix(v2, @"tr"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "ve");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "bir");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "bu");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "için");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "de");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "ile");
      std::string::basic_string[abi:nn200100]<0>(&v22, "ama");
      std::string::basic_string[abi:nn200100]<0>(v23, "o");
      std::string::basic_string[abi:nn200100]<0>(v24, "da");
      std::string::basic_string[abi:nn200100]<0>(&v25, "olarak");
      std::string::basic_string[abi:nn200100]<0>(v26, "çok");
      std::string::basic_string[abi:nn200100]<0>(v27, "ne");
      std::string::basic_string[abi:nn200100]<0>(&v28, "var");
      std::string::basic_string[abi:nn200100]<0>(v29, "yok");
      std::string::basic_string[abi:nn200100]<0>(v30, "gibi");
      std::string::basic_string[abi:nn200100]<0>(v31, "en");
      std::string::basic_string[abi:nn200100]<0>(v32, "her");
      std::string::basic_string[abi:nn200100]<0>(v33, "kadar");
      std::string::basic_string[abi:nn200100]<0>(v34, "sen");
      std::string::basic_string[abi:nn200100]<0>(v35, "biz");
      std::string::basic_string[abi:nn200100]<0>(v36, "siz");
      std::string::basic_string[abi:nn200100]<0>(v37, "onlar");
      std::string::basic_string[abi:nn200100]<0>(v38, "mi");
      std::string::basic_string[abi:nn200100]<0>(v39, "şey");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v40);
      v16 = 24;
      do
      {
        if (SHIBYTE(__str[v16 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v16 - 1].__r_.__value_.__l.__data_);
        }

        --v16;
      }

      while (v16 * 24);
    }

    else if (CFStringHasPrefix(v2, @"ko"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "이");
      std::string::basic_string[abi:nn200100]<0>(__str[1].__r_.__value_.__r.__words, "그");
      std::string::basic_string[abi:nn200100]<0>(__str[2].__r_.__value_.__r.__words, "저");
      std::string::basic_string[abi:nn200100]<0>(__str[3].__r_.__value_.__r.__words, "것");
      std::string::basic_string[abi:nn200100]<0>(__str[4].__r_.__value_.__r.__words, "의");
      std::string::basic_string[abi:nn200100]<0>(__str[5].__r_.__value_.__r.__words, "에");
      std::string::basic_string[abi:nn200100]<0>(&v22, "에서");
      std::string::basic_string[abi:nn200100]<0>(v23, "은");
      std::string::basic_string[abi:nn200100]<0>(v24, "는");
      std::string::basic_string[abi:nn200100]<0>(&v25, "이");
      std::string::basic_string[abi:nn200100]<0>(v26, "가");
      std::string::basic_string[abi:nn200100]<0>(v27, "을");
      std::string::basic_string[abi:nn200100]<0>(&v28, "를");
      std::string::basic_string[abi:nn200100]<0>(v29, "과");
      std::string::basic_string[abi:nn200100]<0>(v30, "와");
      std::string::basic_string[abi:nn200100]<0>(v31, "하다");
      std::string::basic_string[abi:nn200100]<0>(v32, "있다");
      std::string::basic_string[abi:nn200100]<0>(v33, "없다");
      std::string::basic_string[abi:nn200100]<0>(v34, "그리고");
      std::string::basic_string[abi:nn200100]<0>(v35, "그러나");
      std::string::basic_string[abi:nn200100]<0>(v36, "그래서");
      std::string::basic_string[abi:nn200100]<0>(v37, "또는");
      std::string::basic_string[abi:nn200100]<0>(v38, "등");
      std::string::basic_string[abi:nn200100]<0>(v39, "수");
      std::string::basic_string[abi:nn200100]<0>(&v40, "우리");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v41);
      v17 = 25;
      do
      {
        if (SHIBYTE(__str[v17 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v17 - 1].__r_.__value_.__l.__data_);
        }

        --v17;
      }

      while (v17 * 24);
    }

    else
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@", @"com.apple.metadata.SpotlightLinguistics");
      if (v18)
      {
        v19 = v18;
        BundleWithIdentifier = CFBundleGetBundleWithIdentifier(v18);
        if (BundleWithIdentifier)
        {
          populateStopWords(v2, BundleWithIdentifier);
        }

        CFRelease(v19);
      }
    }

    CFRelease(v1);
  }
}

void populateStopWords(const __CFString *a1, uint64_t a2)
{
  v20 = -1;
  v21 = -1;
  v18 = 0;
  v19 = -1;
  if (CFBundleGetLocalizationInfoForLocalization())
  {
    v3 = CFBundleCopyLocalizationForLocalizationInfo();
    if (v3)
    {
      v4 = v3;
      v5 = CFBundleCopyLocalizedStringTableForLocalization();
      if (v5)
      {
        v6 = v5;
        if (CFDictionaryGetCount(v5) || (v22.location = 0, v22.length = 2, v7 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v22), CFRelease(v6), v6 = CFBundleCopyLocalizedStringTableForLocalization(), CFRelease(v7), v6))
        {
          Value = CFDictionaryGetValue(v6, @"STOPWORDS_SHORT");
          if (Value)
          {
            ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], Value, @" | ");
            if (ArrayBySeparatingStrings)
            {
              v10 = ArrayBySeparatingStrings;
              Count = CFArrayGetCount(ArrayBySeparatingStrings);
              if (Count >= 1)
              {
                v12 = Count;
                for (i = 0; i != v12; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
                  CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
                  if (CStringPtr)
                  {
                    std::string::basic_string[abi:nn200100]<0>(__p, CStringPtr);
                    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&OptionalWords(void)::optionalWords, __p, __p);
                    if (v17 < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }
                }
              }

              CFRelease(v10);
            }
          }

          CFRelease(v6);
        }
      }

      CFRelease(v4);
    }
  }
}

const __CFString *isOptionalToken(const __CFString *a1, int a2)
{
  v2 = a1;
  v10 = a1;
  if (!a2 || !hasTrailingAsterisk(a1) || (Length = CFStringGetLength(v2), Length < 1))
  {
    v4 = 0;
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_7:
    __p = 0;
    v8 = 0;
    v9 = 0;
    utf8QueryString(&__p, &v10, 1, 0);
    v5 = HIBYTE(v9);
    if (v9 < 0)
    {
      v5 = v8;
    }

    if (v5)
    {
      v2 = isOptionalWord(&__p);
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v2 = 0;
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    operator delete(__p);
    goto LABEL_12;
  }

  v11.location = 0;
  v11.length = Length - 1;
  v2 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v2, v11);
  v10 = v2;
  v4 = v2;
  if (v2)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (v4)
  {
    CFRelease(v4);
  }

  return v2;
}

BOOL isRelationWord(char *a1)
{
  {
    RelationWords(void)::relationWords = 0u;
    *algn_1EBF48578 = 0u;
    dword_1EBF48588 = 1065353216;
  }

  if (RelationWords(void)::onceToken[0] != -1)
  {
    dispatch_once(RelationWords(void)::onceToken, &__block_literal_global_336);
  }

  if (!qword_1EBF48580)
  {
    return 0;
  }

  if (isLowerStr(a1))
  {
    return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&RelationWords(void)::relationWords, a1) != 0;
  }

  toLowerCase(&__p, a1);
  v2 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&RelationWords(void)::relationWords, &__p) != 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void ___ZL13RelationWordsv_block_invoke()
{
  v46.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  v0 = CFLocaleCopyCurrent();
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x1C691EAF0]();
    if (CFStringHasPrefix(v2, @"en"))
    {
      std::string::basic_string[abi:nn200100]<0>(&__str, "mother");
      std::string::basic_string[abi:nn200100]<0>(v5, "mothers");
      std::string::basic_string[abi:nn200100]<0>(v6, "mom");
      std::string::basic_string[abi:nn200100]<0>(v7, "moms");
      std::string::basic_string[abi:nn200100]<0>(v8, "mama");
      std::string::basic_string[abi:nn200100]<0>(v9, "mommy");
      std::string::basic_string[abi:nn200100]<0>(v10, "mommies");
      std::string::basic_string[abi:nn200100]<0>(v11, "mum");
      std::string::basic_string[abi:nn200100]<0>(v12, "father");
      std::string::basic_string[abi:nn200100]<0>(v13, "fathers");
      std::string::basic_string[abi:nn200100]<0>(v14, "dad");
      std::string::basic_string[abi:nn200100]<0>(v15, "dads");
      std::string::basic_string[abi:nn200100]<0>(v16, "papa");
      std::string::basic_string[abi:nn200100]<0>(v17, "daddy");
      std::string::basic_string[abi:nn200100]<0>(v18, "daddies");
      std::string::basic_string[abi:nn200100]<0>(v19, "brother");
      std::string::basic_string[abi:nn200100]<0>(v20, "brothers");
      std::string::basic_string[abi:nn200100]<0>(v21, "sister");
      std::string::basic_string[abi:nn200100]<0>(v22, "sisters");
      std::string::basic_string[abi:nn200100]<0>(v23, "sibling");
      std::string::basic_string[abi:nn200100]<0>(v24, "siblings");
      std::string::basic_string[abi:nn200100]<0>(v25, "parent");
      std::string::basic_string[abi:nn200100]<0>(v26, "parents");
      std::string::basic_string[abi:nn200100]<0>(v27, "family");
      std::string::basic_string[abi:nn200100]<0>(v28, "relatives");
      std::string::basic_string[abi:nn200100]<0>(v29, "kin");
      std::string::basic_string[abi:nn200100]<0>(v30, "friend");
      std::string::basic_string[abi:nn200100]<0>(v31, "friends");
      std::string::basic_string[abi:nn200100]<0>(v32, "partner");
      std::string::basic_string[abi:nn200100]<0>(v33, "partners");
      std::string::basic_string[abi:nn200100]<0>(v34, "spouse");
      std::string::basic_string[abi:nn200100]<0>(v35, "spouses");
      std::string::basic_string[abi:nn200100]<0>(v36, "coworker");
      std::string::basic_string[abi:nn200100]<0>(v37, "coworkers");
      std::string::basic_string[abi:nn200100]<0>(v38, "colleague");
      std::string::basic_string[abi:nn200100]<0>(v39, "colleagues");
      std::string::basic_string[abi:nn200100]<0>(v40, "alumni");
      std::string::basic_string[abi:nn200100]<0>(v41, "alum");
      std::string::basic_string[abi:nn200100]<0>(v42, "son");
      std::string::basic_string[abi:nn200100]<0>(v43, "sons");
      std::string::basic_string[abi:nn200100]<0>(v44, "daughter");
      std::string::basic_string[abi:nn200100]<0>(v45, "daughters");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&RelationWords(void)::relationWords, &__str, &v46);
      v3 = 1008;
      do
      {
        if (__str.__r_.__value_.__s.__data_[v3 - 1] < 0)
        {
          operator delete(*(&__str.__r_.__value_.__l + v3 - 24));
        }

        v3 -= 24;
      }

      while (v3);
    }

    CFRelease(v1);
  }
}

BOOL isPhotosAttribute(uint64_t a1)
{
  {
    PhotosAttributes(void)::_photosAttributes = 0u;
    *algn_1EBF484F0 = 0u;
    dword_1EBF48500 = 1065353216;
  }

  if (PhotosAttributes(void)::onceToken != -1)
  {
    dispatch_once(&PhotosAttributes(void)::onceToken, &__block_literal_global_381);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&PhotosAttributes(void)::_photosAttributes, a1) != 0;
}

void ___ZL16PhotosAttributesv_block_invoke()
{
  v16.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&v1, "kMDItemPhotosBusinessCategories");
  std::string::basic_string[abi:nn200100]<0>(v2, "kMDItemPhotosBusinessNames");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemPhotosEventCategories");
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemPhotosEventNames");
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemPhotosEventPerformers");
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemPhotosHolidays");
  std::string::basic_string[abi:nn200100]<0>(v7, "kMDItemPhotosKeywords");
  std::string::basic_string[abi:nn200100]<0>(v8, "kMDItemPhotosLocationKeywords");
  std::string::basic_string[abi:nn200100]<0>(v9, "kMDItemPhotosMeanings");
  std::string::basic_string[abi:nn200100]<0>(v10, "kMDItemPhotosMediaTypes");
  std::string::basic_string[abi:nn200100]<0>(v11, "kMDItemPhotosMemoryTitle");
  std::string::basic_string[abi:nn200100]<0>(v12, "kMDItemPhotosPeopleNames");
  std::string::basic_string[abi:nn200100]<0>(v13, "kMDItemPhotosSceneClassificationLabels");
  std::string::basic_string[abi:nn200100]<0>(v14, "kMDItemPhotosSceneClassificationSynonyms");
  std::string::basic_string[abi:nn200100]<0>(v15, "kMDItemPhotosSeasons");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&PhotosAttributes(void)::_photosAttributes, &v1, &v16);
  v0 = 360;
  do
  {
    if (v1.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&v1.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
}

uint64_t is_tokenizable_searchable_string_field(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = gDefaultSchema;
  if (gDefaultSchema)
  {
    v4 = 0uLL;
    v5 = 0;
    _MDPlistContainerGetPlistObjectAtKeyArray();
    v6 = 0uLL;
    v7 = 0;
    v2 = 0uLL;
    v3 = 0;
    result = _MDPlistDictionaryGetPlistObjectForKey();
    if (result)
    {
      v2 = v6;
      v3 = v7;
      result = attrsKeyValueMatchesString(&v2, "type", 4, "CFString", 8uLL);
      if (result)
      {
        v2 = v6;
        v3 = v7;
        if (attrsKeyValueEnabled(&v2, "nosearch", 8))
        {
          return 0;
        }

        v2 = v6;
        v3 = v7;
        if (attrsKeyValueEnabled(&v2, "notokenize", 10))
        {
          return 0;
        }

        else
        {
          v2 = v6;
          v3 = v7;
          return attrsKeyValueEnabled(&v2, "noindex", 7) ^ 1;
        }
      }
    }
  }

  return result;
}

void *CreateQueryTokens(const __CFString *a1, int a2)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x1FuLL)
  {
    ++sTotal;
  }

  v4 = malloc_type_zone_calloc(queryZone, 1uLL, 0x20uLL, 0x5BAF1CEAuLL);
  if (!v4)
  {
    _log_fault_for_malloc_failure();
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9C0];
  *v4 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(v4 + 1) = CFArrayCreateMutable(v5, 0, v6);
  *(v4 + 2) = CFArrayCreateMutable(v5, 0, v6);
  if (a2)
  {
    v7 = CFLocaleCopyCurrent();
    MEMORY[0x1C691EAF0]();
    v8 = CITokenizerCreate(3);
    *(v4 + 3) = v8;
    CITokenizerGetQueryTokensWithOptions(v9);
    CFRelease(v7);
    CITokenizerDispose(v8);
    *(v4 + 3) = 0;
  }

  else
  {
    v13 = 0;
    Length = CFStringGetLength(a1);
    v10 = CFNumberCreate(v5, kCFNumberCFIndexType, &v13);
    CFArrayAppendValue(*(v4 + 1), v10);
    CFRelease(v10);
    v11 = CFNumberCreate(v5, kCFNumberCFIndexType, &Length);
    CFArrayAppendValue(*(v4 + 2), v11);
    CFRelease(v11);
    CFArrayAppendValue(*v4, a1);
  }

  return v4;
}

void QueryTokensCallback(unsigned __int16 *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    bzero(bytes, 0x414uLL);
    numBytes[0] = 0;
    if (!utf8_encodestr(a1, 2 * a2, bytes, numBytes, 1043))
    {
      v6 = numBytes[0];
      if (numBytes[0])
      {
        bytes[numBytes[0]] = 0;
        v7 = *MEMORY[0x1E695E480];
        v8 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, v6, 0x8000100u, 0);
        *numBytes = *(*(a3 + 3) + 88);
        v9 = CFNumberCreate(v7, kCFNumberCFIndexType, numBytes);
        CFArrayAppendValue(*(a3 + 1), v9);
        CFRelease(v9);
        v10 = CFNumberCreate(v7, kCFNumberCFIndexType, &numBytes[1]);
        CFArrayAppendValue(*(a3 + 2), v10);
        CFRelease(v10);
        CFArrayAppendValue(*a3, v8);
        CFRelease(v8);
      }
    }
  }
}

void freeQueryTokensContext(CFTypeRef *a1)
{
  if (a1)
  {
    CFRelease(*a1);
    CFRelease(a1[1]);
    CFRelease(a1[2]);

    free(a1);
  }
}

uint64_t getRangeAtIndex(const __CFArray *a1, const __CFArray *a2, CFIndex idx)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, idx);
  v6 = CFGetTypeID(ValueAtIndex);
  if (v6 != CFNumberGetTypeID())
  {
    return -1;
  }

  v7 = CFArrayGetValueAtIndex(a2, idx);
  v8 = CFGetTypeID(v7);
  if (v8 != CFNumberGetTypeID())
  {
    return -1;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr))
  {
    return -1;
  }

  v10 = 0;
  if (CFNumberGetValue(v7, kCFNumberCFIndexType, &v10))
  {
    return valuePtr;
  }

  else
  {
    return -1;
  }
}

uint64_t joinVectors(void *a1, void *a2, int a3)
{
  v32 = 0;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  *v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  std::ostringstream::basic_ostringstream[abi:nn200100](&v26);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "{", 1);
  v22 = *MEMORY[0x1E69E54E8];
  v23 = *(MEMORY[0x1E69E54E8] + 24);
  if (a2[1] != *a2)
  {
    v4 = 0;
    while (1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "{", 1);
      if (*(*a2 + 24 * v4 + 8) != *(*a2 + 24 * v4))
      {
        break;
      }

LABEL_44:
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "}", 1);
      v20 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      if (v4 < v20 - 1)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, ", ", 2);
        v20 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      }

      if (++v4 >= v20)
      {
        goto LABEL_47;
      }
    }

    v5 = 0;
    v6 = 0;
    while (1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "", 1);
      v7 = (*(*a2 + 24 * v4) + v5);
      v8 = v7[23];
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v7 + 1);
      }

      if (v8 >= 4)
      {
        if (!a3)
        {
          goto LABEL_16;
        }

        if (isSearchToolDebugModeEnabled_onceToken != -1)
        {
          dispatch_once(&isSearchToolDebugModeEnabled_onceToken, &__block_literal_global_14_11145);
        }

        if (isSearchToolDebugModeEnabled_ffStatus != 1)
        {
LABEL_16:
          v39 = 0;
          v37 = 0u;
          memset(v38, 0, sizeof(v38));
          *__p = 0u;
          v36 = 0u;
          v33 = 0u;
          memset(v34, 0, sizeof(v34));
          std::ostringstream::basic_ostringstream[abi:nn200100](&v33);
          if (v7[23] >= 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = *v7;
          }

          v25.__r_.__value_.__s.__data_[0] = *v11;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, &v25, 1);
          if (v7[23] >= 0)
          {
            v12 = v7;
          }

          else
          {
            v12 = *v7;
          }

          v25.__r_.__value_.__s.__data_[0] = v12[1];
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, &v25, 1);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, "...", 3);
          v13 = v7[23];
          if ((v13 & 0x80u) == 0)
          {
            v14 = v7;
          }

          else
          {
            v14 = *v7;
          }

          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v7 + 1);
          }

          v25.__r_.__value_.__s.__data_[0] = v14[v13 - 1];
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, &v25, 1);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, "<", 1);
          if (v7[23] >= 0)
          {
            v15 = v7[23];
          }

          else
          {
            v15 = *(v7 + 1);
          }

          v16 = MEMORY[0x1C691FCA0](&v33, v15);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " chars>", 7);
          std::stringbuf::str();
          *&v33 = v22;
          *(&v34[-1] + *(v22 - 24)) = v23;
          *(&v33 + 1) = MEMORY[0x1E69E5548] + 16;
          if (SHIBYTE(v36) < 0)
          {
            operator delete(__p[1]);
          }

          *(&v33 + 1) = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v34);
          std::ostream::~ostream();
          MEMORY[0x1C691FE80](v38);
          goto LABEL_33;
        }

        if (v7[23] < 0)
        {
LABEL_15:
          std::string::__init_copy_ctor_external(&v25, *v7, *(v7 + 1));
          goto LABEL_33;
        }
      }

      else if (v9 < 0)
      {
        goto LABEL_15;
      }

      v10 = *v7;
      v25.__r_.__value_.__r.__words[2] = *(v7 + 2);
      *&v25.__r_.__value_.__l.__data_ = v10;
LABEL_33:
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v25;
      }

      else
      {
        v17 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, v17, size);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "", 1);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((*(*a2 + 24 * v4 + 8) - *(*a2 + 24 * v4)) >> 3);
      if (v6 < v19 - 1)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, ", ", 2);
        v19 = 0xAAAAAAAAAAAAAAABLL * ((*(*a2 + 24 * v4 + 8) - *(*a2 + 24 * v4)) >> 3);
      }

      ++v6;
      v5 += 24;
      if (v6 >= v19)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_47:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "}", 1);
  std::stringbuf::str();
  *&v26 = v22;
  *(&v27[-1] + *(v22 - 24)) = v23;
  *(&v26 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  *(&v26 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  return MEMORY[0x1C691FE80](v31);
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x1E69E5570] + 24;
  v3 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x1E69E54E8] + 16);
  v6 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x1E69E5538] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x1C691FE40](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v4);
  return a1;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v19[0] = 0;
  v19[1] = 0;
  MEMORY[0x1C691FC40](v19, a1);
  if (LOBYTE(v19[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = a2 + a3;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v10;
      if (!v7)
      {
LABEL_28:
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
      goto LABEL_28;
    }

    v12 = *(v6 + 3);
    v13 = v12 <= a3;
    v14 = v12 - a3;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
    {
      goto LABEL_28;
    }

    if (v15 >= 1)
    {
      __b.__locale_ = 0;
      v21 = 0;
      v22 = 0;
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v22) = v15;
      memset(&__b, v10, v15);
      *(&__b.__locale_ + v15) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v17 = (*(*v7 + 96))(v7, p_b, v15);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v17 != v15)
      {
        goto LABEL_28;
      }
    }

    if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x1C691FC50](v19);
  return a1;
}

uint64_t store_stream_init(uint64_t a1, _DWORD *a2, char a3)
{
  v11 = 0;
  v6 = _fd_acquire_fd(a2, &v11);
  v7 = v6;
  v8 = v11;
  inited = store_stream_init_fd(a1, v6, v11, 0, a3);
  if (inited)
  {
    *(a1 + 56) = a2;
  }

  else
  {
    _fd_release_fd(a2, v7, 0, v8);
  }

  return inited;
}

uint64_t store_stream_init_fd(uint64_t a1, uint64_t a2, uint64_t a3, off_t a4, char a5)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&v17, 0, sizeof(v17));
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 48) = 0u;
  *a1 = -1;
  v10 = fstat(a2, &v17);
  *(a1 + 16) = v10;
  if (!v10)
  {
    st_size = 0x100000;
    *(a1 + 32) = 0x100000;
    if ((a5 & 1) == 0)
    {
      st_size = v17.st_size;
      if (v17.st_size >= 0x100000)
      {
        st_size = 0x100000;
      }

      else
      {
        *(a1 + 32) = v17.st_size;
      }
    }

    v15 = malloc_type_malloc(st_size, 0x9B7C0D93uLL);
    *(a1 + 48) = v15;
    if (v15)
    {
      *(a1 + 24) = a4;
      if (a5)
      {
LABEL_13:
        *a1 = a2;
        *(a1 + 8) = a3;
        return 1;
      }

      v16 = prot_pread(a2, v15, *(a1 + 32), a4);
      if (v16 != -1)
      {
        *(a1 + 24) += v16;
        *(a1 + 32) = v16;
        goto LABEL_13;
      }
    }
  }

  v11 = __error();
  v12 = *v11;
  *(a1 + 16) = *v11;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17.st_dev = 67109120;
    *&v17.st_mode = v12;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "store_stream_init err:%d", &v17, 8u);
  }

  store_stream_destroy(a1);
  return 0;
}

void store_stream_destroy(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    free(v2);
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    if (*a1 != -1)
    {
      v3 = *(a1 + 56);
      if (v3)
      {
        _fd_release_fd(v3, *a1, 0, *(a1 + 8));
        *a1 = -1;
      }
    }

    *(a1 + 56) = 0;
  }
}

void __work_fun_inner_block_invoke_2_55(uint64_t a1)
{
  dispatch_resume(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void si_enqueue_barrier(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      si_enqueue_barrier_with_qos(a1, *(a1 + 24), a2, a3);
    }

    else
    {
      si_enqueue_barrier_for_job(a1, a2, a3, 0);
    }
  }

  else
  {
    a2(a3, 1);
  }
}

void si_enqueue_block(uint64_t a1, void (**aBlock)(void *, uint64_t))
{
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      v3 = *(a1 + 24);
      v4 = _Block_copy(aBlock);

      si_enqueue_work_with_qos(a1, v3, _si_run_block, v4);
    }

    else
    {
      v6 = _Block_copy(aBlock);

      si_enqueue_work_for_job(a1, _si_run_block, v6, 0);
    }
  }

  else
  {
    v5 = aBlock[2];

    v5(aBlock, 1);
  }
}

void _si_run_block(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

void _si_wrapper_collect(int8x16_t *a1)
{
  v3 = a1[1].i64[0];
  v2 = a1[1].i64[1];
  v4 = a1[2].i64[0];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (v2)
  {
    if (v3)
    {
      if (v2 == *v3)
      {
        v5 = *v2;
        v6 = v2[4];
        v12 = MEMORY[0x1E69E9820];
        v13 = 0x40000000;
        v14 = __preRun_block_invoke;
        v15 = &unk_1E81930D0;
        v17 = a1;
        v18 = v2;
        v19 = v5;
        v20 = v4;
        v16.i64[0] = &v25;
        v16.i64[1] = &v21;
        dispatch_sync(v6, &v12);
        v7 = v22[3];
        if (v7)
        {
          SIGCContextWrapperCleanup(v7);
        }
      }
    }
  }

  v8 = *(v26 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  if (v8 == 1)
  {
    v9 = a1[2].i64[0];
    v10 = *(v9 + 32);
    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = __postRun_block_invoke;
    v15 = &__block_descriptor_tmp_85;
    v16 = vextq_s8(a1[1], a1[1], 8uLL);
    v17 = v9;
    dispatch_sync(v10, &v12);
  }

  else
  {
    v11 = a1->i64[1];
    if (v11)
    {
      a1->i64[1] = 0;
      SIGCContextRelease(v11);
    }
  }

  if (atomic_fetch_add(a1->i32, 0xFFFFFFFF) == 1)
  {
    free(a1);
  }
}

void __preRun_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(v2 + 24);
  v4 = !*(v3 + 104) && (*(v3 + 64) & 1) == 0 && *(*(v2 + 16) + 36) == 0;
  *(*(a1[4] + 8) + 24) = v4;
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v5 = a1[7];
    os_unfair_lock_lock(v5 + 32);
    ++v5[28]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5 + 32);
    v6 = a1[8];
    if (v6)
    {
      *(v6 + 24) = a1[7];
    }

    v7 = a1[9];
    os_unfair_lock_lock(v7 + 32);
    ++v7[28]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v7 + 32);
    *(*(a1[5] + 8) + 24) = *(a1[7] + 48);
    *(a1[7] + 56) = 0;
    *(a1[7] + 48) = 0;
  }
}

void __postRun_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == **(a1 + 40))
  {
    dec_running(v2);
  }

  dec_running(*(a1 + 48));
  if (v3)
  {
    *(v3 + 24) = 0;
  }
}

void si_workqueue_drain(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    si_scheduler_remove_workqueue(v2, a1);
  }

  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, &__block_literal_global_1457);
  dispatch_async(a1[2], v3);

  _Block_release(v3);
}

void si_scheduler_remove_workqueue(uint64_t a1, void *a2)
{
  if (*a2 == a1)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __si_scheduler_remove_workqueue_block_invoke;
    block[3] = &__block_descriptor_tmp_13;
    block[4] = a1;
    dispatch_sync(v5, block);
    *a2 = 0;
  }
}

void si_scheduler_drain_locked(atomic_uint *a1, dispatch_group_t group)
{
  if (a1)
  {
    v4 = *a1;
    if (v4)
    {
      si_scheduler_remove_scheduler(v4, a1);
    }

    atomic_fetch_add(a1 + 24, 1u);
    if (group)
    {
      dispatch_group_enter(group);
      dispatch_retain(group);
    }

    v5 = *(a1 + 20);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __si_scheduler_drain_locked_block_invoke;
    v6[3] = &__block_descriptor_tmp_7_1462;
    v6[4] = a1;
    v6[5] = group;
    dispatch_barrier_async(v5, v6);
  }
}

void si_scheduler_remove_scheduler(int *result, int **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD8 >= 5)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a2[10];
      v7 = *(result + 10);
      *buf = 136315394;
      v13 = v6;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "Remove scheduler %s from %s", buf, 0x16u);
    }

    *__error() = v4;
  }

  if (*a2 != result)
  {
    v8 = __si_assert_copy_extra_661(-1);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 1104, "child->parent==scheduler", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  atomic_fetch_add(result + 25, 0xFFFFFFFF);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (atomic_fetch_add(result + 24, 0xFFFFFFFF) == 1)
  {
    _si_scheduler_destroy(result);
  }
}

void __si_scheduler_drain_locked_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && atomic_fetch_add((v2 + 96), 0xFFFFFFFF) == 1)
  {
    _si_scheduler_destroy(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);

    dispatch_release(v4);
  }
}

void _si_scheduler_destroy(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  if (v2)
  {
    *v3 = 0;
    v3[1] = 0;
    SIGCContextWrapperCleanup(v2);
    if (*v3 || *(a1 + 56))
    {
      *v3 = 0;
      v3[1] = 0;
    }
  }

  if (*a1)
  {
    si_scheduler_remove_scheduler(*a1, a1);
  }

  free(*(a1 + 80));
  dispatch_activate(*(a1 + 160));
  dispatch_release(*(a1 + 160));
  dispatch_release(*(a1 + 32));
  if (*(a1 + 65) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      pthread_mutex_destroy(v4);
      free(*(a1 + 8));
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      pthread_cond_destroy(v5);
      free(*(a1 + 16));
    }
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    do
    {
      *(v6 + 4) = 0;
      v7 = *(v6 + 16);
      *(v6 + 8) = 0;
      release_token(v6);
      v6 = v7;
    }

    while (v7);
  }

  free(a1);
}

void __si_scheduler_remove_and_destroy_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2 == *(a1 + 40))
  {
    *v2 = 0;
    si_workqueue_destroy(*(a1 + 32));
  }

  else
  {
    si_workqueue_destroy(v2);
  }
}

void si_workqueue_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      CFRelease(v2);
    }

    dispatch_barrier_async(*(a1 + 16), &__block_literal_global_35_1476);
    dispatch_release(*(a1 + 16));
    dispatch_assert_queue_not_V2(*(a1 + 8));
    dispatch_barrier_sync(*(a1 + 8), &__block_literal_global_38);
    dispatch_release(*(a1 + 8));
    free(*(a1 + 48));

    free(a1);
  }
}

_DWORD *si_create_scheduler(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v33 = *MEMORY[0x1E69E9840];
  v13 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10B0040AF5728FAuLL);
  v13[34] = v8;
  bzero(__str, 0x1000uLL);
  snprintf(__str, 0x1000uLL, "MQ: %s", v10);
  *(v13 + 66) = v4;
  if (v12)
  {
    initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  }

  else
  {
    initially_inactive = makeAttrFromPolicy(v6, v4, 0);
  }

  *(v13 + 4) = dispatch_queue_create_with_target_V2(__str, initially_inactive, v12);
  if (!v2)
  {
    AttrFromPolicy = makeAttrFromPolicy(v6, v4, v8 > 1);
    *(v13 + 20) = dispatch_queue_create_with_target_V2(v10, AttrFromPolicy, 0);
    *(v13 + 11) = v6;
    if (v8 < 2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v8 >= 2)
  {
    v15 = dispatch_queue_attr_make_initially_inactive(MEMORY[0x1E69E96A8]);
    *(v13 + 20) = dispatch_queue_create_with_target_V2(v10, v15, v2);
    *(v13 + 11) = v6;
LABEL_8:
    dispatch_queue_set_width();
    goto LABEL_10;
  }

  v17 = dispatch_queue_attr_make_initially_inactive(0);
  *(v13 + 20) = dispatch_queue_create_with_target_V2(v10, v17, v2);
  *(v13 + 11) = v6;
LABEL_10:
  *(v13 + 10) = strdup(v10);
  atomic_store(1u, v13 + 24);
  v13[55] = si_pc_priority_from_string(v10);
  v18 = *__error();
  v19 = _SILogForLogForCategory(3);
  v20 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v13 + 4);
    v22 = *(v13 + 20);
    *buf = 67109890;
    v25 = v6;
    v26 = 1024;
    v27 = (v6 >> 8) & 0xF;
    v28 = 2112;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&dword_1C278D000, v19, v20, "Scheduler qos: 0x%x relative_priority: %d %@ %@", buf, 0x22u);
  }

  *__error() = v18;
  return v13;
}

void __si_create_child_scheduler_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 100));
  atomic_fetch_add((*(a1 + 32) + 100), 1u);
  **(a1 + 40) = *(a1 + 32);
  dispatch_activate(*(*(a1 + 40) + 160));
  v3 = v2 + 1;
  v4 = atomic_load((*(a1 + 32) + 100));
  if (v2 + 1 != v4)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(3);
    v7 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = atomic_load((*(a1 + 32) + 100));
      v9[0] = 67109376;
      v9[1] = v3;
      v10 = 1024;
      v11 = v8;
      _os_log_impl(&dword_1C278D000, v6, v7, "%d != %d\n", v9, 0xEu);
    }

    *__error() = v5;
  }
}

uint64_t __debug_token_get_type_id_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __typeId = result;
  return result;
}

dispatch_queue_attr_t makeAttrFromPolicy(unsigned int a1, int a2, int a3)
{
  if (a3)
  {
    v5 = MEMORY[0x1E69E96A8];
  }

  else
  {
    v5 = 0;
  }

  result = dispatch_queue_attr_make_initially_inactive(v5);
  if (a2 && a1)
  {
    v7 = dispatch_queue_attr_make_with_overcommit();

    return dispatch_queue_attr_make_with_qos_class(v7, a1, -((a1 >> 8) & 0xF));
  }

  return result;
}

uint64_t si_pc_priority_from_string(char *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (strstr(a1, "Priority/"))
  {
    return 1;
  }

  if (strstr(a1, "MobileMailIndex/"))
  {
    return 3;
  }

  if (strstr(a1, "NSFileProtectionComplete/"))
  {
    return 2;
  }

  if (strstr(a1, "NSFileProtectionCompleteUnlessOpen/"))
  {
    return 4;
  }

  if (strstr(a1, "NSFileProtectionCompleteWhenUserInactive/"))
  {
    return 14;
  }

  if (strstr(a1, "NSFileProtectionCompleteUntilFirstUserAuthentication/"))
  {
    return 6;
  }

  v3 = *__error();
  v4 = _SILogForLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "si_pc_priority_from_string";
    v7 = 1024;
    v8 = 534;
    v9 = 2080;
    v10 = a1;
    _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: Could not get schedule protection class for pc %s", &v5, 0x1Cu);
  }

  *__error() = v3;
  return 4294967294;
}

void *si_create_child_queue(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v27 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x1000uLL);
  v5 = malloc_type_malloc(0x50uLL, 0x103004026821411uLL);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 10) = -1;
  *(v5 + 3) = *(v4 + 88);
  *(v5 + 32) = *(v4 + 66);
  *(v5 + 33) = (v2 & 0x10) != 0;
  snprintf(__str, 0x1000uLL, "com.apple.metadata.spotlightindex.mq.%s", *(v4 + 80));
  *(v5 + 1) = dispatch_queue_create_with_target_V2(__str, 0, *(v4 + 32));
  if (*(v4 + 136) < 2u)
  {
    v6 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E69E96A8];
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(v6);
  snprintf(__str, 0x1000uLL, "com.apple.metadata.spotlightindex.%s", *(v4 + 80));
  *(v5 + 2) = dispatch_queue_create_with_target_V2(__str, initially_inactive, *(v4 + 160));
  if (*(v4 + 136) >= 2u)
  {
    dispatch_queue_set_width();
  }

  v8 = *__error();
  v9 = _SILogForLogForCategory(3);
  v10 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v4 + 88);
    v12 = (*(v4 + 88) >> 8) & 0xF;
    v13 = *(v5 + 1);
    v14 = *(v5 + 2);
    *buf = 67109890;
    v19 = v11;
    v20 = 1024;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_1C278D000, v9, v10, "Workqueue qos: 0x%x relative_priority: %d %@ %@", buf, 0x22u);
  }

  *__error() = v8;
  if ((v2 & 2) != 0)
  {
    dispatch_suspend(*(v5 + 2));
  }

  v15 = *(v4 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __si_create_child_queue_block_invoke;
  block[3] = &__block_descriptor_tmp_19_1503;
  block[4] = v4;
  block[5] = 2;
  block[6] = v5;
  dispatch_sync(v15, block);
  return v5;
}

void __si_create_child_queue_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 100));
  atomic_fetch_add((*(a1 + 32) + 100), 1u);
  **(a1 + 48) = *(a1 + 32);
  dispatch_activate(*(*(a1 + 48) + 16));
  v3 = v2 + 1;
  v4 = atomic_load((*(a1 + 32) + 100));
  if (v2 + 1 != v4)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(3);
    v7 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = atomic_load((*(a1 + 32) + 100));
      v9[0] = 67109376;
      v9[1] = v3;
      v10 = 1024;
      v11 = v8;
      _os_log_impl(&dword_1C278D000, v6, v7, "%d != %d\n", v9, 0xEu);
    }

    *__error() = v5;
  }
}

void *si_create_root_scheduler(__n128 a1)
{
  v1.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v30 = *MEMORY[0x1E69E9840];
  if (v8 < 2)
  {
    scheduler = malloc_type_calloc(1uLL, 0xE0uLL, 0x10B0040AF5728FAuLL);
    *(scheduler + 34) = v9;
    bzero(__str, 0x1000uLL);
    snprintf(__str, 0x1000uLL, "MQ: %s", v11);
    *(scheduler + 66) = v5;
    AttrFromPolicy = makeAttrFromPolicy(v7, v5, 0);
    *(scheduler + 4) = dispatch_queue_create_with_target_V2(__str, AttrFromPolicy, 0);
    inactive = dispatch_workloop_create_inactive(v11);
    *(scheduler + 20) = inactive;
    dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_NEVER);
    *(scheduler + 11) = v7;
    *(scheduler + 10) = strdup(v11);
    atomic_store(1u, scheduler + 24);
    *(scheduler + 55) = si_pc_priority_from_string(v11);
    v15 = *__error();
    v16 = _SILogForLogForCategory(3);
    v17 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(scheduler + 4);
      v19 = *(scheduler + 20);
      *buf = 67109890;
      v22 = v7;
      v23 = 1024;
      v24 = (v7 >> 8) & 0xF;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_1C278D000, v16, v17, "Scheduler qos: 0x%x relative_priority: %d %@ %@", buf, 0x22u);
    }

    *__error() = v15;
  }

  else
  {
    scheduler = si_create_scheduler(v1);
  }

  *(scheduler + 34) = v9;
  *(scheduler + 11) = v7;
  *(scheduler + 1) = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
  *(scheduler + 2) = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
  pthread_mutex_init(*(scheduler + 1), 0);
  pthread_cond_init(*(scheduler + 2), 0);
  *(scheduler + 65) = 1;
  dispatch_queue_set_specific(*(scheduler + 20), "kSISchedulerQOSClass", v7, 0);
  *(scheduler + 19) = v3;
  dispatch_activate(*(scheduler + 4));
  dispatch_activate(*(scheduler + 20));
  return scheduler;
}

uint64_t si_scheduler_wait_on_suspend_token(uint64_t a1)
{
  if (a1)
  {
    v2 = 1;
    if (*(a1 + 8))
    {
      atomic_fetch_add(a1, 1u);
      v3 = *(a1 + 8);
      pthread_mutex_lock(*(v3 + 8));
      if ((*(a1 + 4) & 1) == 0)
      {
        do
        {
          if (*(a1 + 5))
          {
            break;
          }

          pthread_cond_wait(*(v3 + 16), *(v3 + 8));
        }

        while (!*(a1 + 4));
      }

      v2 = *(a1 + 5) ^ 1;
      pthread_mutex_unlock(*(v3 + 8));
      release_token(a1);
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void si_scheduler_async_suspend_and_enqueue(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5)
{
  *a5 = 0;
  if (result && !*(result + 104))
  {
    v13 = 0;
    v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B618E767uLL);
    atomic_store(2u, v10);
    *(v10 + 1) = result;
    *(v10 + 4) = a3;
    *(v10 + 5) = a4;
    *(v10 + 3) = a2;
    *a5 = v10;
    pthread_mutex_lock(*(result + 8));
    v11 = *(result + 116);
    if (v11)
    {
      *(result + 116) = v11 + 1;
      *(v10 + 4) = 1;
      v13 = v10;
    }

    else if (quick_suspend(result, &v13))
    {
      *(v10 + 2) = v13;
      *(v10 + 4) = 1;
      v13 = v10;
      pthread_cond_broadcast(*(result + 16));
    }

    else
    {
      v12 = *(result + 144);
      *(v10 + 2) = v12;
      *(result + 144) = v10;
      if (!v12 && !*(result + 120))
      {
        _scheduler_suspension_locked(result);
      }
    }

    pthread_mutex_unlock(*(result + 8));
    si_scheduler_trigger_tokens(v13);
  }
}

void si_scheduler_voluntary_gc_inline(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    if (*(a1 + 48) && (*(a1 + 67) & 1) == 0)
    {
      v1 = *(a1 + 32);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 0x40000000;
      v3[2] = __si_scheduler_voluntary_gc_inline_block_invoke;
      v3[3] = &unk_1E8192DA0;
      v3[4] = &v4;
      v3[5] = a1;
      dispatch_sync(v1, v3);
      v2 = v5[3];
      if (v2)
      {
        SIGCContextWrapperCleanup(v2);
      }
    }

    _Block_object_dispose(&v4, 8);
  }
}

uint64_t __si_scheduler_voluntary_gc_inline_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 112) == 1)
  {
    v2 = *(v1 + 48);
    if (v2 || *(v1 + 56))
    {
      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
    }

    *(*(*(result + 32) + 8) + 24) = v2;
  }

  return result;
}

void si_scheduler_stop(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a1 + 96);
    atomic_fetch_add((a1 + 96), 1u);
    *(a1 + 64) = 1;
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __si_scheduler_stop_block_invoke;
    v5[3] = &__block_descriptor_tmp_28_1530;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_sync(v4, v5);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      _si_scheduler_destroy(a1);
    }
  }
}

pthread_mutex_t *__si_scheduler_stop_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  *(v2 + 64) = 1;
  result = *(v2 + 8);
  if (result)
  {
    pthread_mutex_lock(result);
    v4 = *(a1 + 32);
    if (*(v4 + 116) && (*(v4 + 67) & 1) == 0)
    {
      *(v4 + 67) = 1;
      *(v4 + 116) = 0x7FFFFFFF;
      *(v4 + 192) = 0;
      v5 = *(a1 + 32);
      v6 = *(v5 + 208);
      if (v6)
      {
        pthread_override_qos_class_end_np(v6);
        v5 = *(a1 + 32);
      }

      *(v5 + 208) = 0;
      v7 = *(a1 + 32);
      *(v7 + 216) = 0;
      dispatch_resume(*(v7 + 160));
      pthread_cond_broadcast(*(*(a1 + 32) + 16));
      v4 = *(a1 + 32);
    }

    if (*(v4 + 124) && (*(v4 + 67) & 1) == 0)
    {
      *(v4 + 67) = 1;
      *(v4 + 116) = 0x7FFFFFFF;
      *(v4 + 192) = 0;
      v8 = *(a1 + 32);
      v9 = *(v8 + 208);
      if (v9)
      {
        pthread_override_qos_class_end_np(v9);
        v8 = *(a1 + 32);
      }

      *(v8 + 208) = 0;
      v10 = *(a1 + 32);
      *(v10 + 216) = 0;
      pthread_cond_broadcast(*(v10 + 16));
      v4 = *(a1 + 32);
    }

    result = pthread_mutex_unlock(*(v4 + 8));
    v2 = *(a1 + 32);
  }

  else if ((*(v2 + 67) & 1) == 0 && *(v2 + 116))
  {
    v16 = __si_assert_copy_extra_661(-1);
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 1967, "scheduler->force_resumed == 1 || scheduler->suspended==0", v18);
    free(v17);
    if (__valid_fs(-1))
    {
      v19 = 2989;
    }

    else
    {
      v19 = 3072;
    }

    *v19 = -559038737;
    abort();
  }

  if (*(v2 + 112))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 80);
      *buf = 136315138;
      v22 = v13;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Issue stop for %s\n", buf, 0xCu);
    }

    *__error() = v11;
    dispatch_group_enter(*(a1 + 40));
    dispatch_retain(*(a1 + 40));
    v14 = *(a1 + 32);
    if (v14)
    {
      atomic_fetch_add((v14 + 96), 1u);
      v14 = *(a1 + 32);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __si_scheduler_stop_block_invoke_26;
    aBlock[3] = &__block_descriptor_tmp_27;
    v15 = *(a1 + 40);
    aBlock[4] = v14;
    aBlock[5] = v15;
    result = _Block_copy(aBlock);
    *(*(a1 + 32) + 40) = result;
  }

  return result;
}

void __si_scheduler_stop_block_invoke_26(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 104) = 1;
  dispatch_group_leave(v2);
  dispatch_release(*(a1 + 40));
  v4 = *__error();
  v5 = _SILogForLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 80);
    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "Stopped %s\n", &v8, 0xCu);
  }

  *__error() = v4;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (atomic_fetch_add((v7 + 96), 0xFFFFFFFF) == 1)
    {
      _si_scheduler_destroy(v7);
    }
  }
}

void si_scheduler_boost_and_forget(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EBF46AD8 >= 5)
    {
      v3 = *__error();
      v4 = _SILogForLogForCategory(3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 160);
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "boosting %@", &v6, 0xCu);
      }

      *__error() = v3;
    }

    v2 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &__block_literal_global_32);
    dispatch_async(*(a1 + 160), v2);
    _Block_release(v2);
  }
}

uint64_t *_si_scheduler_dump(uint64_t *a1, int a2, __CFString *a3, __n128 a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = (a2 + 1);
  MEMORY[0x1EEE9AC00](a4);
  bzero(v14 - ((v7 + 15) & 0x1FFFFFFF0), v7);
  memset(v14 - ((v7 + 15) & 0x1FFFFFFF0), 9, a2);
  *(v14 + a2 - ((v7 + 15) & 0x1FFFFFFF0)) = 0;
  v8 = "Yes";
  v9 = a1;
  while (!*(v9 + 29))
  {
    v9 = *v9;
    if (!v9)
    {
      v8 = "No";
      break;
    }
  }

  v10 = "NO";
  if (*(a1 + 64))
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if (*(a1 + 26))
  {
    v10 = "YES";
  }

  CFStringAppendFormat(a3, 0, @"%sScheduler %p %s dq:%p parent:%p; %d suspensions suspended:%s (stop waiting: %s stopped: %s)\n", v14 - ((v7 + 15) & 0x1FFFFFFF0), a1, a1[10], a1[20], *a1, *(a1 + 29), v8, v11, v10);
  result = *a1;
  if (*a1)
  {
    return _si_scheduler_dump(result, v7, a3, v12);
  }

  return result;
}

uint64_t *si_workqueue_dump(uint64_t *result, __CFString *a2, __n128 a3)
{
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1EEE9AC00](a3);
    v9[0] = 0;
    CFStringAppendFormat(v7, 0, @"%sWork queue %p; dq: %p %ld items enqueued\n", v5, v9, v6, *(v6 + 16), *(v6 + 64));
    result = *v4;
    if (*v4)
    {
      return _si_scheduler_dump(result, 1, a2, v8);
    }
  }

  return result;
}

uint64_t si_peek_queue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = *(a1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __si_peek_queue_block_invoke;
  block[3] = &unk_1E8192F08;
  block[6] = a1;
  block[7] = a4;
  block[4] = &v8;
  block[5] = a2;
  block[8] = a3;
  dispatch_sync(v4, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

const __CFDictionary *__si_peek_queue_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46ADC >= 5)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 48) + 72);
      v9 = 134218240;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Peek for %p to %p", &v9, 0x16u);
    }

    *__error() = v5;
  }

  result = *(*(a1 + 48) + 72);
  if (result)
  {
    result = CFDictionaryGetValue(result, *(a1 + 40));
    if (result)
    {
      if (*(a1 + 56))
      {
        v3 = result;
        v4 = 0;
        while (1)
        {
          result = CFBagContainsValue(v3, *(*(a1 + 64) + 8 * v4));
          if (result)
          {
            break;
          }

          if (++v4 >= *(a1 + 56))
          {
            return result;
          }
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t si_dequeue_wait_locked(uint64_t a1, float a2)
{
  v23.tv_sec = 0;
  v23.tv_nsec = 0;
  v2 = *(a1 + 120);
  if ((-v2 & *(a1 + 128)) != 0)
  {
    v12 = __si_assert_copy_extra_332();
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert(v12, "SISimpleQueue.c", 150, "queue->end == (queue->end&(queue->size-1))", v14);
    goto LABEL_22;
  }

  v4 = v2 - 1;
  v5 = *(a1 + 124);
  if ((v5 & ~v4) != 0)
  {
    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert(v15, "SISimpleQueue.c", 151, "queue->start == (queue->start&(queue->size-1))", v17);
    free(v16);
    if (__valid_fs(-1))
    {
      v18 = 2989;
    }

    else
    {
      v18 = 3072;
    }

    *v18 = -559038737;
    abort();
  }

  v6 = *(a1 + 136);
  result = *(v6 + 8 * v5);
  if (result)
  {
    goto LABEL_4;
  }

  v9 = (a2 * 1000000000.0);
  v22.tv_sec = 0;
  *&v22.tv_usec = 0;
  gettimeofday(&v22, 0);
  v10 = v9 % 0x3B9ACA00 + 1000 * v22.tv_usec;
  v23.tv_sec = v22.tv_sec + v9 / 0x3B9ACA00uLL;
  v23.tv_nsec = v10;
  if (v10 >= 1000000000)
  {
    v23.tv_sec = v22.tv_sec + v9 / 0x3B9ACA00uLL + 1;
    v23.tv_nsec = v10 - 1000000000;
  }

  do
  {
    v6 = *(a1 + 136);
    v5 = *(a1 + 124);
    result = *(v6 + 8 * v5);
    if (result)
    {
      goto LABEL_4;
    }

    ++*(a1 + 132);
    v11 = pthread_cond_timedwait((a1 + 72), (a1 + 8), &v23);
    --*(a1 + 132);
  }

  while (!v11);
  v6 = *(a1 + 136);
  v5 = *(a1 + 124);
  result = *(v6 + 8 * v5);
  if (result)
  {
LABEL_4:
    *(v6 + 8 * v5) = 0;
    v8 = *(a1 + 120);
    *(a1 + 124) = (v8 - 1) & (v5 + 1);
    if ((-v8 & *(a1 + 128)) == 0)
    {
      return result;
    }

    v19 = __si_assert_copy_extra_332();
    v13 = v19;
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    __message_assert(v19, "SISimpleQueue.c", 172, "queue->end == (queue->end&(queue->size-1))", v20);
LABEL_22:
    free(v13);
    if (__valid_fs(-1))
    {
      v21 = 2989;
    }

    else
    {
      v21 = 3072;
    }

    *v21 = -559038737;
    abort();
  }

  return result;
}

_WORD *pommesLLMQueryTree(const __CFDictionary *a1, PRContext *a2, BOOL *a3)
{
  v4 = a2;
  v397 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 7);
  if (!a2->var2)
  {
    v12 = *__error();
    if ((v5 & 2) != 0)
    {
      v13 = _SILogForLogForCategory(18);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_387;
      }
    }

    else
    {
      v13 = _SILogForLogForCategory(17);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_387;
      }
    }

    var0 = v4->var0;
    var1 = v4->var1;
    *buf = 134218242;
    *&buf[4] = var0;
    *&buf[12] = 2080;
    *&buf[14] = var1;
    v16 = "[qid=%lld][%s][POMMES][LLM] Received a NULL (LLM)processorContext (using ALWAYS_FALSE_NODE)";
LABEL_386:
    _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
    goto LABEL_387;
  }

  LemmaFromTokenInfo = a1;
  var2 = a2->var2;
  if ((v5 & 2) == 0)
  {
    v3 = &unk_1EBF64000;
    if (isTextSemanticSearchEnabled_onceToken != -1)
    {
      dispatch_once(&isTextSemanticSearchEnabled_onceToken, &__block_literal_global_9_11138);
    }

    v7 = 0;
    if (!LemmaFromTokenInfo)
    {
      goto LABEL_375;
    }

    RawTextTokensFromTokenInfo = &unk_1EBF64000;
    if ((isTextSemanticSearchEnabled_ffStatus & 1) == 0)
    {
      goto LABEL_375;
    }

    if (!CFDictionaryContainsKey(LemmaFromTokenInfo, @"kQPQueryTextEmbeddingEncodedData") || ![CFDictionaryGetValue(LemmaFromTokenInfo @"kQPQueryTextEmbeddingEncodedData")])
    {
      v7 = 0;
      goto LABEL_375;
    }

    v9 = *(v4 + 7);
    v10 = *__error();
    if ((v9 & 2) != 0)
    {
      v11 = _SILogForLogForCategory(18);
      v4 = a2;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_264;
      }
    }

    else
    {
      v11 = _SILogForLogForCategory(17);
      v4 = a2;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_264;
      }
    }

    v195 = a2->var0;
    v196 = a2->var1;
    *buf = 134218242;
    *&buf[4] = v195;
    *&buf[12] = 2080;
    *&buf[14] = v196;
    _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding dense retrieval node", buf, 0x16u);
LABEL_264:
    *__error() = v10;
    if (isTextSemanticSearchEnabled_onceToken == -1)
    {
      goto LABEL_265;
    }

    goto LABEL_425;
  }

  TokensInfoFromQueryUnderstanding = getTokensInfoFromQueryUnderstanding(a1);
  if (!TokensInfoFromQueryUnderstanding)
  {
    v182 = *__error();
    v183 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
    {
      v184 = v4->var0;
      v185 = v4->var1;
      *buf = 134218498;
      *&buf[4] = v184;
      *&buf[12] = 2080;
      *&buf[14] = v185;
      *&buf[22] = 2112;
      *&buf[24] = 0;
      _os_log_impl(&dword_1C278D000, v183, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][V2] Got no LLM parse (using ALWAYS_FALSE_NODE) with LLMParse:'%@'", buf, 0x20u);
    }

    *__error() = v182;
    FalseNode = makeFalseNode();
    if (!a3)
    {
      goto LABEL_293;
    }

    goto LABEL_254;
  }

  theArray = TokensInfoFromQueryUnderstanding;
  Count = CFArrayGetCount(TokensInfoFromQueryUnderstanding);
  LLMParseFromQueryUnderstanding = getLLMParseFromQueryUnderstanding(LemmaFromTokenInfo);
  RankingAttributeScores = getRankingAttributeScores(v4);
  WildCardAllowedFields = 0;
  v382 = 0;
  v384 = 0;
  v379 = 112;
  v380 = 0x8000003F800000;
  std::string::basic_string[abi:nn200100]<0>(v377, "");
  v328 = a3;
  v381 = v377;
  LODWORD(v382) = 1;
  BYTE4(v382) = 0;
  WildCardAllowedFields = getWildCardAllowedFields(v4->var4);
  LODWORD(v384) = 0;
  *(&v384 + 3) = 0;
  v19 = var2;
  if (Count < 1)
  {
    goto LABEL_280;
  }

  v20 = 0;
  v330 = 0;
  v327 = (var2 + 4);
  v331 = *(MEMORY[0x1E69E54E8] + 24);
  v332 = *MEMORY[0x1E69E54E8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
    TokenFromTokenInfo = getTokenFromTokenInfo(ValueAtIndex);
    LemmaFromTokenInfo = getLemmaFromTokenInfo(ValueAtIndex);
    RawTextTokensFromTokenInfo = getRawTextTokensFromTokenInfo(ValueAtIndex);
    v337 = v20;
    if ([(__CFDictionary *)RawTextTokensFromTokenInfo count])
    {
      v342 = [(__CFDictionary *)RawTextTokensFromTokenInfo count];
    }

    else
    {
      v342 = 1;
    }

    v376 = -1;
    LLMTokenDescription = fetchLLMTokenDescription(&v376, ValueAtIndex, LLMParseFromQueryUnderstanding, 1);
    v23 = v376;
    {
      llmEntityBoostingArgIds(void)::_entityBoostingArgIds = 0u;
      *&qword_1EBF613A0 = 0u;
      dword_1EBF613B0 = 1065353216;
    }

    if (llmEntityBoostingArgIds(void)::onceToken != -1)
    {
      dispatch_once(&llmEntityBoostingArgIds(void)::onceToken, &__block_literal_global_15);
    }

    v24 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmEntityBoostingArgIds(void)::_entityBoostingArgIds, v23);
    if (!v24)
    {
      v24 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmEntityBoostingArgIds(void)::_entityBoostingArgIds, -1);
      if (!v24)
      {
        abort();
      }
    }

    v25 = v376;
    v26 = "Unknown";
    if (v376 <= 0xD2)
    {
      v26 = off_1E8196D10[v376];
    }

    v27 = *(v24 + 5);
    v338 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%ld][%s]", @"[V2]", v337, v26];
    v373 = 0u;
    v374 = 0u;
    v375 = 1065353216;
    if (ValueAtIndex && CFDictionaryGetCount(ValueAtIndex))
    {
      *&v394 = 0;
      *(&v394 + 1) = &v394;
      *&v395 = 0x2020000000;
      v28 = getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr;
      *(&v395 + 1) = getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr;
      if (!getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL44getkQPQUOutputTokenPhraseWeightsKeySymbolLocv_block_invoke;
        *&buf[24] = &unk_1E8199698;
        *&buf[32] = &v394;
        ParserLibrary = QueryParserLibrary();
        v30 = dlsym(ParserLibrary, "kQPQUOutputTokenPhraseWeightsKey");
        *(*(*&buf[32] + 8) + 24) = v30;
        getkQPQUOutputTokenPhraseWeightsKeySymbolLoc(void)::ptr = *(*(*&buf[32] + 8) + 24);
        v28 = *(*(&v394 + 1) + 24);
      }

      _Block_object_dispose(&v394, 8);
      if (!v28)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        -[PRContext handleFailureInFunction:file:lineNumber:description:](v4, "handleFailureInFunction:file:lineNumber:description:", [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef  _Nullable getkQPQUOutputTokenPhraseWeightsKey()"], @"PRLLMParse.mm", 24, @"%s", dlerror());
LABEL_424:
        __break(1u);
LABEL_425:
        dispatch_once(&isTextSemanticSearchEnabled_onceToken, &__block_literal_global_9_11138);
LABEL_265:
        if (*(RawTextTokensFromTokenInfo + 2376))
        {
          if (CFDictionaryContainsKey(LemmaFromTokenInfo, @"kQPQueryTextEmbeddingEncodedData"))
          {
            Value = CFDictionaryGetValue(LemmaFromTokenInfo, @"kQPQueryTextEmbeddingEncodedData");
            if (Value)
            {
              v198 = decodeEmbeddingData(Value);
              if (v198)
              {
                v199 = v198;
                var23 = v4->var23;
                if (var23 && (v201 = CFDictionaryGetValue(var23, @"vec_version")) != 0)
                {
                  v202 = [v201 intValue];
                }

                else
                {
                  v202 = -1;
                }

                v227 = [(__CFDictionary *)v199 length];
                if (v227 > 1)
                {
                  v304 = [(__CFDictionary *)v199 bytes];
                  if (v304)
                  {
                    if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
                    {
                      ++sTotal;
                    }

                    v305 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
                    v306 = v227 >> 1;
                    if (!v305)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    *v305 = strdup("_kMDItemPrimaryTextEmbedding");
                    v305[6] = 15;
                    v307 = v305[15] & 0xFFFFFFF0;
                    switch(v306)
                    {
                      case 0x100uLL:
                        v308 = v307 | 4;
                        break;
                      case 0x200uLL:
                        v308 = v307 | 5;
                        break;
                      case 0x300uLL:
                        v308 = v307 | 6;
                        break;
                      default:
                        v308 = v307 | 7;
                        break;
                    }

                    v316 = v308 | 0xC80;
                    v317 = v316 & 0xFE000C8F;
                    v318 = v316 & 0xC8F | (v202 << 25);
                    if (v202 == -1)
                    {
                      v318 = v317;
                    }

                    v305[15] = v318;
                    v305[16] = 1068708659;
                    v305[10] = 5;
                    v305[40] |= 0x10000u;
                    v319 = malloc_type_zone_malloc(queryZone, v227 & 0xFFFFFFFFFFFFFFFELL, 0xA4971684uLL);
                    if (!v319)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    v320 = 0;
                    *(v305 + 37) = v319;
                    if (v306 <= 1)
                    {
                      v321 = 1;
                    }

                    else
                    {
                      v321 = v227 >> 1;
                    }

                    do
                    {
                      *(*(v305 + 37) + 2 * v320) = *(v304 + 2 * v320);
                      ++v320;
                    }

                    while (v321 != v320);
                    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
                    {
                      ++sTotal;
                    }

                    v322 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
                    v344 = v322;
                    if (v322)
                    {
                      v322->var6 = 4;
                      v322->var2 = v305;
                      v323 = [(__CFDictionary *)v199 length];
                      v312 = *__error();
                      v324 = _SILogForLogForCategory(17);
                      if (os_log_type_enabled(v324, OS_LOG_TYPE_DEFAULT))
                      {
                        v325 = v4->var0;
                        v326 = v4->var1;
                        *buf = 134219010;
                        *&buf[4] = v325;
                        *&buf[12] = 2080;
                        *&buf[14] = v326;
                        *&buf[22] = 2048;
                        *&buf[24] = v323 >> 1;
                        *&buf[32] = 2048;
                        *&buf[34] = 0x3FF6666660000000;
                        *&buf[42] = 1024;
                        *&buf[44] = 200;
                        _os_log_impl(&dword_1C278D000, v324, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Created ANN node (dim: %lu, thresh: %f, maxCount: %u)", buf, 0x30u);
                      }

                      goto LABEL_404;
                    }

                    _log_fault_for_malloc_failure();
                    MEMORY[0x30] = 4;
                    MEMORY[0x10] = v305;
LABEL_401:
                    v312 = *__error();
                    v313 = _SILogForLogForCategory(17);
                    if (os_log_type_enabled(v313, OS_LOG_TYPE_DEFAULT))
                    {
                      v314 = v4->var0;
                      v315 = v4->var1;
                      *buf = 134218242;
                      *&buf[4] = v314;
                      *&buf[12] = 2080;
                      *&buf[14] = v315;
                      _os_log_impl(&dword_1C278D000, v313, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Failed to create an ANN node", buf, 0x16u);
                    }

                    v344 = 0;
LABEL_404:
                    *__error() = v312;
                    CFRelease(v199);
                    goto LABEL_312;
                  }

                  v228 = *__error();
                  v309 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v309, OS_LOG_TYPE_DEFAULT))
                  {
                    v310 = v4->var0;
                    v311 = v4->var1;
                    *buf = 134218242;
                    *&buf[4] = v310;
                    *&buf[12] = 2080;
                    *&buf[14] = v311;
                    _os_log_impl(&dword_1C278D000, v309, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][LLM][DS] Skipping ANN node (ERROR: Failed to get bytes from embedding)", buf, 0x16u);
                  }
                }

                else
                {
                  v228 = *__error();
                  v229 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
                  {
                    v231 = v4->var0;
                    v230 = v4->var1;
                    v232 = [(__CFDictionary *)v199 length];
                    *buf = 134218498;
                    *&buf[4] = v231;
                    *&buf[12] = 2080;
                    *&buf[14] = v230;
                    *&buf[22] = 2048;
                    *&buf[24] = v232;
                    _os_log_impl(&dword_1C278D000, v229, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][LLM][DS] Skipping ANN node (ERROR: embedding has 0 dimensionality) [length: %lu]", buf, 0x20u);
                  }
                }

                *__error() = v228;
                goto LABEL_401;
              }

              v203 = *__error();
              v233 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
              {
                v234 = v4->var0;
                v235 = v4->var1;
                *buf = 134218242;
                *&buf[4] = v234;
                *&buf[12] = 2080;
                *&buf[14] = v235;
                _os_log_impl(&dword_1C278D000, v233, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Skipping ANN node (ERROR: decoded query embedding in null)", buf, 0x16u);
              }
            }

            else
            {
              v203 = *__error();
              v224 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
              {
                v225 = v4->var0;
                v226 = v4->var1;
                *buf = 134218242;
                *&buf[4] = v225;
                *&buf[12] = 2080;
                *&buf[14] = v226;
                _os_log_impl(&dword_1C278D000, v224, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Skipping ANN node (ERROR: encoded query embedding in null)", buf, 0x16u);
              }
            }
          }

          else
          {
            v203 = *__error();
            v207 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
            {
              v208 = v4->var0;
              v209 = v4->var1;
              *buf = 134218242;
              *&buf[4] = v208;
              *&buf[12] = 2080;
              *&buf[14] = v209;
              _os_log_impl(&dword_1C278D000, v207, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Skipping ANN node (ERROR: missing query embedding key)", buf, 0x16u);
            }
          }
        }

        else
        {
          v203 = *__error();
          v204 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
          {
            v205 = v4->var0;
            v206 = v4->var1;
            *buf = 134218242;
            *&buf[4] = v205;
            *&buf[12] = 2080;
            *&buf[14] = v206;
            _os_log_impl(&dword_1C278D000, v204, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Skipping ANN node (ERROR: Text semantic search FF is disabled)", buf, 0x16u);
          }
        }

        v344 = 0;
        *__error() = v203;
LABEL_312:
        v236 = *__error();
        v237 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
        {
          v239 = v4->var0;
          v238 = v4->var1;
          if (*(v3 + 2384) != -1)
          {
            dispatch_once(&isTextSemanticSearchEnabled_onceToken, &__block_literal_global_9_11138);
          }

          v240 = "disabled";
          if (*(RawTextTokensFromTokenInfo + 2376))
          {
            v240 = "enabled";
          }

          v241 = "valid";
          *buf = 134218754;
          *&buf[4] = v239;
          *&buf[12] = 2080;
          *&buf[14] = v238;
          *&buf[22] = 2080;
          if (!v344)
          {
            v241 = "nil";
          }

          *&buf[24] = v240;
          *&buf[32] = 2080;
          *&buf[34] = v241;
          _os_log_impl(&dword_1C278D000, v237, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Text semantic search is %s and denseNode is %s", buf, 0x2Au);
        }

        *__error() = v236;
        if (!v344)
        {
          v279 = *__error();
          v280 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v280, OS_LOG_TYPE_DEFAULT))
          {
            v281 = v4->var0;
            v282 = v4->var1;
            *buf = 134218242;
            *&buf[4] = v281;
            *&buf[12] = 2080;
            *&buf[14] = v282;
            v283 = "[qid=%lld][%s][POMMES][LLM][DS] Got an empty dense retrieval query node (using ALWAYS_FALSE_NODE)";
LABEL_373:
            _os_log_impl(&dword_1C278D000, v280, OS_LOG_TYPE_DEFAULT, v283, buf, 0x16u);
          }

LABEL_374:
          *__error() = v279;
          v7 = makeFalseNode();
          goto LABEL_375;
        }

        v242 = getTokensInfoFromQueryUnderstanding(LemmaFromTokenInfo);
        v352 = v242;
        if (v242)
        {
          v350 = CFArrayGetCount(v242);
          v347 = getLLMParseFromQueryUnderstanding(LemmaFromTokenInfo);
          if (v350 >= 1)
          {
            v354 = 0;
            v243 = 0;
            while (1)
            {
              v244 = CFArrayGetValueAtIndex(v352, v243);
              v387[0] = -1;
              v245 = fetchLLMTokenDescription(v387, v244, v347, 0);
              v246 = v387[0];
              v247 = "Unknown";
              if (v387[0] <= 0xD2u)
              {
                v247 = off_1E8196D10[v387[0]];
              }

              v248 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%ld][%s]", @"[DS]", v243, v247];
              if (isLLMOptionalArgId(v246))
              {
                v249 = *__error();
                v250 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
                {
                  v251 = v4->var0;
                  v252 = v4->var1;
                  *buf = 134218498;
                  *&buf[4] = v251;
                  *&buf[12] = 2080;
                  *&buf[14] = v252;
                  *&buf[22] = 2112;
                  *&buf[24] = v248;
                  _os_log_impl(&dword_1C278D000, v250, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is optional)", buf, 0x20u);
                }

                *__error() = v249;
                goto LABEL_355;
              }

              BundleSpecificFilterNode = generateBundleSpecificFilterNode(v4, v246, v248, v245, 1);
              {
                llmDenseRetrievalFilterArgIds(void)::_denseRetrievalFilterArgIds = 0u;
                *algn_1EBF61410 = 0u;
                dword_1EBF61420 = 1065353216;
              }

              if (llmDenseRetrievalFilterArgIds(void)::onceToken != -1)
              {
                dispatch_once(&llmDenseRetrievalFilterArgIds(void)::onceToken, &__block_literal_global_19);
              }

              if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmDenseRetrievalFilterArgIds(void)::_denseRetrievalFilterArgIds, v246))
              {
                v254 = [(NSString *)v245 length]== 0;
                v255 = *__error();
                v256 = _SILogForLogForCategory(17);
                v257 = os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT);
                if (v254)
                {
                  if (v257)
                  {
                    v267 = v4->var0;
                    v268 = v4->var1;
                    *buf = 134219010;
                    *&buf[4] = v267;
                    *&buf[12] = 2080;
                    *&buf[14] = v268;
                    *&buf[22] = 2112;
                    *&buf[24] = v248;
                    *&buf[32] = 1024;
                    *&buf[34] = 1;
                    *&buf[38] = 1024;
                    *&buf[40] = 1;
                    _os_log_impl(&dword_1C278D000, v256, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because tokenDescription is empty (validDenseNode: %d) (isFilterArg: %d)", buf, 0x2Cu);
                  }

                  RetrievalNodeFromQueryString = 0;
                  *__error() = v255;
                  v261 = v387[0];
                }

                else
                {
                  if (v257)
                  {
                    v258 = v4->var0;
                    v259 = v4->var1;
                    *buf = 134219010;
                    *&buf[4] = v258;
                    *&buf[12] = 2080;
                    *&buf[14] = v259;
                    *&buf[22] = 2112;
                    *&buf[24] = v248;
                    *&buf[32] = 1024;
                    *&buf[34] = 1;
                    *&buf[38] = 1024;
                    *&buf[40] = 1;
                    _os_log_impl(&dword_1C278D000, v256, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding parsed query tree (validDenseNode: %d) (isFilterArg: %d)", buf, 0x2Cu);
                  }

                  *__error() = v255;
                  RetrievalNodeFromQueryString = makeRetrievalNodeFromQueryString([(NSString *)v245 UTF8String]);
                  v261 = v387[0];
                  if (v387[0] == 18)
                  {
                    v262 = makeRetrievalNodeFromQueryString("_kMDItemBundleID = com.apple.FileProvider.LocalStorage || _kMDItemBundleID=com.apple.CloudDocs.iCloudDriveFileProvider");
                    v263 = *__error();
                    v264 = _SILogForLogForCategory(17);
                    if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
                    {
                      v265 = v4->var0;
                      v266 = v4->var1;
                      *buf = 134218498;
                      *&buf[4] = v265;
                      *&buf[12] = 2080;
                      *&buf[14] = v266;
                      *&buf[22] = 2112;
                      *&buf[24] = v248;
                      _os_log_impl(&dword_1C278D000, v264, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ retrieve all type of files for file search on iOS", buf, 0x20u);
                    }

                    *__error() = v263;
                    RetrievalNodeFromQueryString = makeOrNode(RetrievalNodeFromQueryString, v262);
                    v261 = 18;
                  }
                }

                if (isLLMTemporalArgId(v261) || isLLMOptionalArgId(v261))
                {
                  NonMatchRetrievalNodeFromQueryString = makeNonMatchRetrievalNodeFromQueryString([(NSString *)v245 UTF8String]);
                  if (RetrievalNodeFromQueryString)
                  {
                    v270 = NonMatchRetrievalNodeFromQueryString;
                    v271 = *__error();
                    v272 = _SILogForLogForCategory(17);
                    if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
                    {
                      v273 = v4->var0;
                      v274 = v4->var1;
                      *buf = 134218498;
                      *&buf[4] = v273;
                      *&buf[12] = 2080;
                      *&buf[14] = v274;
                      *&buf[22] = 2112;
                      *&buf[24] = v248;
                      _os_log_impl(&dword_1C278D000, v272, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding unmatch query tree", buf, 0x20u);
                    }

                    *__error() = v271;
                    RetrievalNodeFromQueryString = makeOrNode(RetrievalNodeFromQueryString, v270);
                  }
                }

                if (!BundleSpecificFilterNode)
                {
                  goto LABEL_354;
                }
              }

              else
              {
                if (!BundleSpecificFilterNode)
                {
                  v275 = *__error();
                  v276 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
                  {
                    v277 = v4->var0;
                    v278 = v4->var1;
                    *buf = 134219010;
                    *&buf[4] = v277;
                    *&buf[12] = 2080;
                    *&buf[14] = v278;
                    *&buf[22] = 2112;
                    *&buf[24] = v248;
                    *&buf[32] = 1024;
                    *&buf[34] = 1;
                    *&buf[38] = 1024;
                    *&buf[40] = 0;
                    _os_log_impl(&dword_1C278D000, v276, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipped creating filter attribute node (validDenseNode: %d) (isFilterArg: %d)", buf, 0x2Cu);
                  }

                  RetrievalNodeFromQueryString = 0;
                  *__error() = v275;
                  goto LABEL_354;
                }

                RetrievalNodeFromQueryString = 0;
              }

              RetrievalNodeFromQueryString = makeAndNode(RetrievalNodeFromQueryString, BundleSpecificFilterNode);
LABEL_354:
              v354 = makeAndNode(v354, RetrievalNodeFromQueryString);
LABEL_355:
              if (v350 == ++v243)
              {
                goto LABEL_368;
              }
            }
          }

          v354 = 0;
        }

        else
        {
          v284 = *__error();
          v285 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
          {
            v286 = v4->var0;
            v287 = v4->var1;
            *buf = 134218498;
            *&buf[4] = v286;
            *&buf[12] = 2080;
            *&buf[14] = v287;
            *&buf[22] = 1024;
            *&buf[24] = 1;
            _os_log_impl(&dword_1C278D000, v285, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Got no LLM parse (validDenseNode: %d)", buf, 0x1Cu);
          }

          v354 = 0;
          *__error() = v284;
        }

LABEL_368:
        v288 = *__error();
        v289 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
        {
          v290 = v4->var0;
          v291 = v4->var1;
          *buf = 134218498;
          *&buf[4] = v290;
          *&buf[12] = 2080;
          *&buf[14] = v291;
          *&buf[22] = 1024;
          *&buf[24] = v354 != 0;
          _os_log_impl(&dword_1C278D000, v289, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][DS] Combined denseNode with the retrieval filter arguments (filterArgs: %d)", buf, 0x1Cu);
        }

        *__error() = v288;
        v7 = makeAndNode(v344, v354);
        if (!v7)
        {
          v279 = *__error();
          v280 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v280, OS_LOG_TYPE_DEFAULT))
          {
            v292 = v4->var0;
            v293 = v4->var1;
            *buf = 134218242;
            *&buf[4] = v292;
            *&buf[12] = 2080;
            *&buf[14] = v293;
            v283 = "[qid=%lld][%s][POMMES][LLM][DS] Got an empty query tree (using ALWAYS_FALSE_NODE)";
            goto LABEL_373;
          }

          goto LABEL_374;
        }

LABEL_375:
        v294 = (*(v4 + 7) & 2) == 0;
        v295 = *__error();
        if (v294)
        {
          v296 = _SILogForLogForCategory(17);
          if (!os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_380;
          }
        }

        else
        {
          v296 = _SILogForLogForCategory(18);
          if (!os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_380;
          }
        }

        v297 = v4->var0;
        v298 = v4->var1;
        *buf = 134218242;
        *&buf[4] = v297;
        *&buf[12] = 2080;
        *&buf[14] = v298;
        _os_log_impl(&dword_1C278D000, v296, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding sparse retrieval node", buf, 0x16u);
LABEL_380:
        *__error() = v295;
        v299 = llmSparseRetrievalTree(LemmaFromTokenInfo, v4, var2);
        FalseNode = makeOrNode(v7, v299);
        if (!FalseNode)
        {
          goto LABEL_381;
        }

        return FalseNode;
      }

      v348 = CFDictionaryGetValue(ValueAtIndex, *v28);
    }

    else
    {
      v348 = 0;
    }

    if ([LLMTokenDescription length])
    {
      LODWORD(v380) = 1065353216;
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Token ranking description is = %@", LLMTokenDescription];
      if ([v31 length] >= 4)
      {
        if (isSearchToolDebugModeEnabled_onceToken != -1)
        {
          dispatch_once(&isSearchToolDebugModeEnabled_onceToken, &__block_literal_global_14_11145);
        }

        if (isSearchToolDebugModeEnabled_ffStatus != 1)
        {
LABEL_50:
          v41 = *(v4 + 7);
          v42 = *__error();
          if ((v41 & 2) != 0)
          {
            v3 = _SILogForLogForCategory(18);
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_55;
            }
          }

          else
          {
            v3 = _SILogForLogForCategory(17);
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_55;
            }
          }

          v43 = v4->var0;
          v44 = v4->var1;
          *buf = 134218754;
          *&buf[4] = v43;
          *&buf[12] = 2080;
          *&buf[14] = v44;
          *&buf[22] = 2112;
          *&buf[24] = v338;
          *&buf[32] = 2112;
          *&buf[34] = v31;
          _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEBUG, "[qid=%lld][%s][POMMES][LLM]%@ %@", buf, 0x2Au);
LABEL_55:
          *__error() = v42;
          query_node_with_ann = db_make_query_node_with_ann([LLMTokenDescription UTF8String], 0);
          *&v394 = MEMORY[0x1E69E9820];
          *(&v394 + 1) = 3221225472;
          *&v395 = ___Z27llmV2RankingDescriptionNodePKcPNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEfNS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_fEEEEEE_block_invoke;
          *(&v395 + 1) = &__block_descriptor_40_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
          v396 = &v373;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = __db_query_tree_apply_block_block_invoke;
          *&buf[24] = &unk_1E8198ED0;
          *&buf[32] = &v394;
          db_query_tree_apply_block_with_meta(query_node_with_ann, buf, 0);
          db_optimize_query_tree(&query_node_with_ann);
          v351 = query_node_with_ann;
          if (v25 == 8 && getIsRelativeTimeArgFromTokenInfo(ValueAtIndex))
          {
            v45 = *__error();
            v46 = _SILogForLogForCategory(18);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v47 = v4->var0;
              v48 = v4->var1;
              *buf = 134218498;
              *&buf[4] = v47;
              *&buf[12] = 2080;
              *&buf[14] = v48;
              *&buf[22] = 2112;
              *&buf[24] = v338;
              _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Skip creating raw match tokenNode, it is relative time arg", buf, 0x20u);
            }

            *__error() = v45;
            db_free_query_node(v351);
            v351 = 0;
          }

          if (!ValueAtIndex || !CFDictionaryGetCount(ValueAtIndex))
          {
            goto LABEL_70;
          }

          *&v394 = 0;
          *(&v394 + 1) = &v394;
          *&v395 = 0x2020000000;
          v49 = getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr;
          *(&v395 + 1) = getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr;
          if (!getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL37getkQPQUOutputTokenIsSelfKeySymbolLocv_block_invoke;
            *&buf[24] = &unk_1E8199698;
            *&buf[32] = &v394;
            v50 = QueryParserLibrary();
            v51 = dlsym(v50, "kQPQUOutputTokenIsSelfKey");
            *(*(*&buf[32] + 8) + 24) = v51;
            getkQPQUOutputTokenIsSelfKeySymbolLoc(void)::ptr = *(*(*&buf[32] + 8) + 24);
            v49 = *(*(&v394 + 1) + 24);
          }

          _Block_object_dispose(&v394, 8);
          if (!v49)
          {
            v4 = [MEMORY[0x1E696AAA8] currentHandler];
            -[PRContext handleFailureInFunction:file:lineNumber:description:](v4, "handleFailureInFunction:file:lineNumber:description:", [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef  _Nullable getkQPQUOutputTokenIsSelfKey()"], @"PRLLMParse.mm", 23, @"%s", dlerror());
            goto LABEL_424;
          }

          if ([CFDictionaryGetValue(ValueAtIndex *v49)])
          {
            v52 = *__error();
            v53 = _SILogForLogForCategory(18);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = v4->var0;
              v55 = v4->var1;
              *buf = 134218498;
              *&buf[4] = v54;
              *&buf[12] = 2080;
              *&buf[14] = v55;
              *&buf[22] = 2112;
              *&buf[24] = v338;
              _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip creating raw match tokenNode for SELF", buf, 0x20u);
            }
          }

          else
          {
LABEL_70:
            if (v25 != 17 || (*v19 & 8) == 0)
            {
              if (!*(&v374 + 1))
              {
                v74 = *__error();
                v75 = _SILogForLogForCategory(18);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  v76 = v4->var0;
                  v77 = v4->var1;
                  *buf = 134218498;
                  *&buf[4] = v76;
                  *&buf[12] = 2080;
                  *&buf[14] = v77;
                  *&buf[22] = 2112;
                  *&buf[24] = v338;
                  _os_log_impl(&dword_1C278D000, v75, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Got an empty inferredAttributeScores map", buf, 0x20u);
                }

                NodeForToken = 0;
                *__error() = v74;
                goto LABEL_127;
              }

              v56 = *__error();
              v57 = _SILogForLogForCategory(18);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                v58 = v4->var0;
                v59 = v4->var1;
                *buf = 134218754;
                *&buf[4] = v58;
                *&buf[12] = 2080;
                *&buf[14] = v59;
                *&buf[22] = 2112;
                *&buf[24] = v338;
                *&buf[32] = 1024;
                *&buf[34] = v351 == 0;
                _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding ranking description query tree (invalid: %d)", buf, 0x26u);
              }

              *__error() = v56;
              if ((v25 != 8 || (getIsRelativeTimeArgFromTokenInfo(ValueAtIndex) & 1) == 0) && !isLLMLocationArgId(v25) && [(__CFDictionary *)LemmaFromTokenInfo length]&& ([(__CFDictionary *)LemmaFromTokenInfo isEqualToString:TokenFromTokenInfo]& 1) == 0)
              {
                v60 = *__error();
                v61 = _SILogForLogForCategory(18);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  v340 = v60;
                  v62 = v4->var0;
                  v63 = v4->var1;
                  v3 = redactString(LemmaFromTokenInfo, (*(v4 + 7) >> 9) & 1);
                  v64 = redactString(TokenFromTokenInfo, (*(v4 + 7) >> 9) & 1);
                  *buf = 134219010;
                  *&buf[4] = v62;
                  *&buf[12] = 2080;
                  *&buf[14] = v63;
                  *&buf[22] = 2112;
                  *&buf[24] = v338;
                  *&buf[32] = 2112;
                  *&buf[34] = v3;
                  *&buf[42] = 2112;
                  *&buf[44] = v64;
                  _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding lemma node %@ for token %@ in ranking", buf, 0x34u);
                  v60 = v340;
                }

                *__error() = v60;
                v65 = queryNodeForToken([(__CFDictionary *)LemmaFromTokenInfo UTF8String], &v373, &v379, v4);
                v351 = makeOrNode(v351, v65);
              }

              {
                llmDateArgIds(void)::_dateArgIds = 0u;
                unk_1EBF613D8 = 0u;
                dword_1EBF613E8 = 1065353216;
              }

              if (llmDateArgIds(void)::onceToken != -1)
              {
                dispatch_once(&llmDateArgIds(void)::onceToken, &__block_literal_global_17);
              }

              if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&llmDateArgIds(void)::_dateArgIds, v25))
              {
                v66 = *__error();
                v67 = _SILogForLogForCategory(18);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  v68 = v4->var0;
                  v69 = v4->var1;
                  *buf = 134218498;
                  *&buf[4] = v68;
                  *&buf[12] = 2080;
                  *&buf[14] = v69;
                  *&buf[22] = 2112;
                  *&buf[24] = v338;
                  _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Creating raw match tokenNode for Time tokens", buf, 0x20u);
                }

                *__error() = v66;
                db_free_query_node(v351);
                v371 = 0u;
                v372 = 0u;
                v369 = 0u;
                v370 = 0u;
                v70 = [(__CFDictionary *)RawTextTokensFromTokenInfo countByEnumeratingWithState:&v369 objects:v387 count:16];
                if (v70)
                {
                  v351 = 0;
                  v71 = *v370;
                  do
                  {
                    for (i = 0; i != v70; ++i)
                    {
                      if (*v370 != v71)
                      {
                        objc_enumerationMutation(RawTextTokensFromTokenInfo);
                      }

                      v73 = queryNodeForToken([*(*(&v369 + 1) + 8 * i) UTF8String], &v373, &v379, v4);
                      v351 = makeAndNode(v351, v73);
                    }

                    v70 = [(__CFDictionary *)RawTextTokensFromTokenInfo countByEnumeratingWithState:&v369 objects:v387 count:16];
                  }

                  while (v70);
                }

                else
                {
                  v351 = 0;
                }

                v90 = v374;
                if (v374)
                {
                  v91 = *v374;
                  if (!*v374)
                  {
                    goto LABEL_119;
                  }

                  do
                  {
                    if (v90[10] < v91[10])
                    {
                      v90 = v91;
                    }

                    v91 = *v91;
                  }

                  while (v91);
                  if (v90)
                  {
LABEL_119:
                    v92 = v90[10];
                    llmDateAttributes();
                    v93 = [fetchLLMTokenDescription(&v376 ValueAtIndex];
                    v94 = v92 * v342;
                    v95 = llmV2RetrievalDescriptionRankingNode(v93, v94, *(&v380 + 1));
                    v351 = makeOrNode(v351, v95);
                    v96 = *__error();
                    v97 = _SILogForLogForCategory(18);
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                    {
                      v98 = v90 + 4;
                      if (*(v90 + 39) < 0)
                      {
                        v98 = *v98;
                      }

                      v99 = v4->var0;
                      v100 = v4->var1;
                      *buf = 134219010;
                      *&buf[4] = v99;
                      *&buf[12] = 2080;
                      *&buf[14] = v100;
                      *&buf[22] = 2112;
                      *&buf[24] = v338;
                      *&buf[32] = 2048;
                      *&buf[34] = v94;
                      *&buf[42] = 2080;
                      *&buf[44] = v98;
                      _os_log_impl(&dword_1C278D000, v97, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Adding ranking node from retrieval description with matchScore=%0.2f based on attribute %s", buf, 0x34u);
                    }

                    *__error() = v96;
                  }
                }
              }

              if (v376 == 1)
              {
                std::string::basic_string[abi:nn200100]<0>(&v394, "com.apple.MobileSMS");
                memset(buf, 0, 24);
                std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, &v394, (&v395 + 8), 1uLL);
              }

LABEL_126:
              NodeForToken = 0;
LABEL_127:
              v89 = &v373;
              goto LABEL_128;
            }

            v52 = *__error();
            v81 = _SILogForLogForCategory(18);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v82 = v4->var0;
              v83 = v4->var1;
              v84 = (*v19 >> 3) & 1;
              *buf = 134218754;
              *&buf[4] = v82;
              *&buf[12] = 2080;
              *&buf[14] = v83;
              *&buf[22] = 2112;
              *&buf[24] = v338;
              *&buf[32] = 1024;
              *&buf[34] = v84;
              _os_log_impl(&dword_1C278D000, v81, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip creating raw match tokenNode (hasNonOptionalSearchTerm=%d)", buf, 0x26u);
            }
          }

          *__error() = v52;
          db_free_query_node(v351);
          v351 = 0;
          goto LABEL_126;
        }
      }

      v32 = *(v4 + 7);
      v33 = *__error();
      if ((v32 & 2) != 0)
      {
        v34 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
LABEL_48:
          v39 = v4->var0;
          v40 = v4->var1;
          *buf = 134218754;
          *&buf[4] = v39;
          *&buf[12] = 2080;
          *&buf[14] = v40;
          *&buf[22] = 2112;
          *&buf[24] = v338;
          *&buf[32] = 2112;
          *&buf[34] = v31;
          _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ %@", buf, 0x2Au);
        }
      }

      else
      {
        v34 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }
      }

      *__error() = v33;
      goto LABEL_50;
    }

    if (v27 == 0.0)
    {
      v35 = *__error();
      v36 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v4->var0;
        v38 = v4->var1;
        *buf = 134218498;
        *&buf[4] = v37;
        *&buf[12] = 2080;
        *&buf[14] = v38;
        *&buf[22] = 2112;
        *&buf[24] = v338;
        _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipped entity-boosting scoring (arg is not ranked)", buf, 0x20u);
      }

      goto LABEL_219;
    }

    if (v25 == 8 && getIsRelativeTimeArgFromTokenInfo(ValueAtIndex))
    {
      v35 = *__error();
      v78 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v79 = v4->var0;
        v80 = v4->var1;
        *buf = 134218498;
        *&buf[4] = v79;
        *&buf[12] = 2080;
        *&buf[14] = v80;
        *&buf[22] = 2112;
        *&buf[24] = v338;
        _os_log_impl(&dword_1C278D000, v78, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Skip creating raw match tokenNode with entity-boosting score, it is relative time arg", buf, 0x20u);
      }

      goto LABEL_219;
    }

    *&v380 = v27;
    NodeForToken = queryNodeForToken([(NSString *)TokenFromTokenInfo UTF8String], RankingAttributeScores, &v379, v4);
    v85 = *__error();
    v86 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v87 = v4->var0;
      v88 = v4->var1;
      *buf = 134219010;
      *&buf[4] = v87;
      *&buf[12] = 2080;
      *&buf[14] = v88;
      *&buf[22] = 2112;
      *&buf[24] = v338;
      *&buf[32] = 2048;
      *&buf[34] = v27;
      *&buf[42] = 1024;
      *&buf[44] = 1;
      _os_log_impl(&dword_1C278D000, v86, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding entity-boosting query tree {matchScore: %lf} (invalid: %d)", buf, 0x30u);
    }

    *__error() = v85;
    if ([(__CFDictionary *)LemmaFromTokenInfo length]&& ([(__CFDictionary *)LemmaFromTokenInfo isEqualToString:TokenFromTokenInfo]& 1) == 0)
    {
      v176 = *__error();
      v177 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v4->var0;
        v178 = v4->var1;
        v179 = redactString(LemmaFromTokenInfo, (*(v4 + 7) >> 9) & 1);
        v180 = redactString(TokenFromTokenInfo, (*(v4 + 7) >> 9) & 1);
        *buf = 134219266;
        *&buf[4] = v3;
        *&buf[12] = 2080;
        *&buf[14] = v178;
        *&buf[22] = 2112;
        *&buf[24] = v338;
        *&buf[32] = 2112;
        *&buf[34] = v179;
        *&buf[42] = 2112;
        *&buf[44] = v180;
        *&buf[52] = 2048;
        *&buf[54] = v27;
        _os_log_impl(&dword_1C278D000, v177, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding lemma node %@ for token %@ {matchScore: %lf}", buf, 0x3Eu);
      }

      *__error() = v176;
      v89 = RankingAttributeScores;
      v181 = queryNodeForToken([(__CFDictionary *)LemmaFromTokenInfo UTF8String], RankingAttributeScores, &v379, v4);
      NodeForToken = makeOrNode(NodeForToken, v181);
      v351 = 0;
    }

    else
    {
      v351 = 0;
      v89 = RankingAttributeScores;
    }

LABEL_128:
    v101 = *__error();
    v102 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
    {
      v104 = v4->var0;
      v103 = v4->var1;
      [-[query_node objectAtIndexedSubscript:](v348 objectAtIndexedSubscript:{0), "floatValue"}];
      v106 = v105;
      [-[query_node objectAtIndexedSubscript:](v348 objectAtIndexedSubscript:{1), "floatValue"}];
      *buf = 134219010;
      *&buf[4] = v104;
      *&buf[12] = 2080;
      *&buf[14] = v103;
      *&buf[22] = 2112;
      *&buf[24] = v338;
      *&buf[32] = 2048;
      *&buf[34] = v106;
      *&buf[42] = 2048;
      *&buf[44] = v107;
      _os_log_impl(&dword_1C278D000, v102, OS_LOG_TYPE_DEBUG, "[qid=%lld][%s][POMMES][LLM]%@ Phrase Scores: {bigram: %.3f, full-phrase: %.3f}", buf, 0x34u);
    }

    *__error() = v101;
    v396 = 1065353216;
    v394 = 0u;
    v395 = 0u;
    for (j = *(v89 + 2); j; j = *j)
    {
      v109 = j[10];
      if (v109 == 0.0)
      {
        v3 = 0;
      }

      else
      {
        v3 = LODWORD(v109);
      }

      if (!*(&v394 + 1))
      {
        goto LABEL_151;
      }

      v110 = vcnt_s8(*(&v394 + 8));
      v110.i16[0] = vaddlv_u8(v110);
      if (v110.u32[0] > 1uLL)
      {
        v111 = v3;
        if (v3 >= *(&v394 + 1))
        {
          v111 = v3 % DWORD2(v394);
        }
      }

      else
      {
        v111 = v3 & (*(&v394 + 1) + 0xFFFFFFFFLL);
      }

      v112 = *(v394 + 8 * v111);
      if (!v112 || (v113 = *v112) == 0)
      {
LABEL_151:
        operator new();
      }

      while (1)
      {
        v114 = *(v113 + 1);
        if (v114 == v3)
        {
          break;
        }

        if (v110.u32[0] > 1uLL)
        {
          if (v114 >= *(&v394 + 1))
          {
            v114 %= *(&v394 + 1);
          }
        }

        else
        {
          v114 &= *(&v394 + 1) - 1;
        }

        if (v114 != v111)
        {
          goto LABEL_151;
        }

LABEL_150:
        v113 = *v113;
        if (!v113)
        {
          goto LABEL_151;
        }
      }

      if (v113[4] != v109)
      {
        goto LABEL_150;
      }

      ++*(v113 + 5);
    }

    query_node_with_ann = 0;
    v367 = 0;
    v368 = 0;
    v393 = 0;
    v391 = 0u;
    memset(v392, 0, sizeof(v392));
    v389 = 0u;
    v390 = 0u;
    memset(buf, 0, sizeof(buf));
    std::ostringstream::basic_ostringstream[abi:nn200100](buf);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(buf, "{", 1);
    v115 = v395;
    if (v395)
    {
      v116 = 1;
      do
      {
        if ((v116 & 1) == 0)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(buf, ", ", 2);
        }

        v117 = std::ostream::operator<<();
        v118 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v117, ": ", 2);
        MEMORY[0x1C691FC80](v118, *(v115 + 5));
        v116 = 0;
        v115 = *v115;
      }

      while (v115);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(buf, "}", 1);
    std::stringbuf::str();
    *buf = v332;
    *&buf[*(v332 - 24)] = v331;
    *&buf[8] = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v390) < 0)
    {
      operator delete(*(&v389 + 1));
    }

    *&buf[8] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&buf[16]);
    std::ostream::~ostream();
    MEMORY[0x1C691FE80](v392);
    v119 = *__error();
    v120 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      v121 = v4->var0;
      v122 = v4->var1;
      p_query_node_with_ann = &query_node_with_ann;
      if (v368 < 0)
      {
        p_query_node_with_ann = query_node_with_ann;
      }

      *buf = 134218754;
      *&buf[4] = v121;
      *&buf[12] = 2080;
      *&buf[14] = v122;
      *&buf[22] = 2112;
      *&buf[24] = v338;
      *&buf[32] = 2080;
      *&buf[34] = p_query_node_with_ann;
      _os_log_impl(&dword_1C278D000, v120, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Attribute Scores: %s", buf, 0x2Au);
    }

    *__error() = v119;
    if (SHIBYTE(v368) < 0)
    {
      operator delete(query_node_with_ann);
    }

    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&v394);
    if (v376 == 104 || isLLMPersonArgId(v376))
    {
      GroundedNamesTokenFromTokenInfo = getGroundedNamesTokenFromTokenInfo(ValueAtIndex);
      v394 = 0uLL;
      *&v395 = 0;
      v362 = 0u;
      v363 = 0u;
      v364 = 0u;
      v365 = 0u;
      v125 = [GroundedNamesTokenFromTokenInfo countByEnumeratingWithState:&v362 objects:v386 count:16];
      if (v125)
      {
        obj = GroundedNamesTokenFromTokenInfo;
        v126 = 0;
        v341 = *v363;
        do
        {
          v127 = 0;
          v343 = v125;
          do
          {
            if (*v363 != v341)
            {
              objc_enumerationMutation(obj);
            }

            v128 = *(*(&v362 + 1) + 8 * v127);
            query_node_with_ann = 0;
            v367 = 0;
            v368 = 0;
            *&v380 = 1.0 / [v128 count];
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v129 = [v128 countByEnumeratingWithState:&v358 objects:v385 count:16];
            v346 = v127;
            v349 = v126;
            v130 = 0;
            if (v129)
            {
              v131 = *v359;
              do
              {
                for (k = 0; k != v129; ++k)
                {
                  if (*v359 != v131)
                  {
                    objc_enumerationMutation(v128);
                  }

                  v3 = *(*(&v358 + 1) + 8 * k);
                  std::string::basic_string[abi:nn200100]<0>(&v356, [v3 UTF8String]);
                  v133 = v367;
                  if (v367 >= v368)
                  {
                    v135 = 0xAAAAAAAAAAAAAAABLL * ((v367 - query_node_with_ann) >> 3);
                    v136 = v135 + 1;
                    if (v135 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      std::vector<long long>::__throw_length_error[abi:nn200100]();
                    }

                    if (0x5555555555555556 * ((v368 - query_node_with_ann) >> 3) > v136)
                    {
                      v136 = 0x5555555555555556 * ((v368 - query_node_with_ann) >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v368 - query_node_with_ann) >> 3) >= 0x555555555555555)
                    {
                      v137 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v137 = v136;
                    }

                    *&buf[32] = &query_node_with_ann;
                    if (v137)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v137);
                    }

                    v138 = 8 * ((v367 - query_node_with_ann) >> 3);
                    v139 = v356;
                    *(v138 + 16) = v357;
                    *v138 = v139;
                    v357 = 0;
                    v356 = 0uLL;
                    v140 = 24 * v135 + 24;
                    v141 = (24 * v135 - (v367 - query_node_with_ann));
                    memcpy((v138 - (v367 - query_node_with_ann)), query_node_with_ann, v367 - query_node_with_ann);
                    v142 = query_node_with_ann;
                    v143 = v368;
                    query_node_with_ann = v141;
                    v367 = v140;
                    v368 = 0;
                    *&buf[16] = v142;
                    *&buf[24] = v143;
                    *&buf[8] = v142;
                    *buf = v142;
                    std::__split_buffer<std::string>::~__split_buffer(buf);
                    v367 = v140;
                    v4 = a2;
                    v19 = var2;
                    if (SHIBYTE(v357) < 0)
                    {
                      operator delete(v356);
                    }
                  }

                  else
                  {
                    v134 = v356;
                    *(v367 + 2) = v357;
                    *v133 = v134;
                    v367 = v133 + 24;
                  }

                  v144 = queryNodeForToken([v3 UTF8String], v89, &v379, v4);
                  v130 = makeAndNode(v130, v144);
                }

                v129 = [v128 countByEnumeratingWithState:&v358 objects:v385 count:16];
              }

              while (v129);
            }

            v126 = makeOrNode(v349, v130);
            std::vector<std::vector<std::string>>::push_back[abi:nn200100](&v394, &query_node_with_ann);
            *buf = &query_node_with_ann;
            std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
            v127 = (v346 + 1);
          }

          while ((v346 + 1) != v343);
          v125 = [obj countByEnumeratingWithState:&v362 objects:v386 count:16];
        }

        while (v125);
        LODWORD(v380) = 1065353216;
        if (v126)
        {
          query_node_with_ann = 0;
          v367 = 0;
          v368 = 0;
          joinVectors(&query_node_with_ann, &v394, (*(v4 + 7) >> 9) & 1);
          v145 = *__error();
          v146 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
          {
            v147 = v4->var0;
            v148 = v4->var1;
            v149 = &query_node_with_ann;
            if (v368 < 0)
            {
              v149 = query_node_with_ann;
            }

            *buf = 134218754;
            *&buf[4] = v147;
            *&buf[12] = 2080;
            *&buf[14] = v148;
            *&buf[22] = 2112;
            *&buf[24] = v338;
            *&buf[32] = 2080;
            *&buf[34] = v149;
            _os_log_impl(&dword_1C278D000, v146, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding %s grounded names match node", buf, 0x2Au);
          }

          *__error() = v145;
          NodeForToken = makeOrNode(NodeForToken, v126);
          if (SHIBYTE(v368) < 0)
          {
            operator delete(query_node_with_ann);
          }

LABEL_205:
          *buf = &v394;
          std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:nn200100](buf);
          goto LABEL_206;
        }
      }

      else
      {
        LODWORD(v380) = 1065353216;
      }

      v150 = *__error();
      v151 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        v152 = v4->var0;
        v153 = v4->var1;
        *buf = 134218498;
        *&buf[4] = v152;
        *&buf[12] = 2080;
        *&buf[14] = v153;
        *&buf[22] = 2112;
        *&buf[24] = v338;
        _os_log_impl(&dword_1C278D000, v151, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ No grounded name available", buf, 0x20u);
      }

      *__error() = v150;
      goto LABEL_205;
    }

LABEL_206:
    v154 = makeOrNode(NodeForToken, v351);
    if (!v154)
    {
      v35 = *__error();
      v160 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
      {
        v161 = v4->var0;
        v162 = v4->var1;
        *buf = 134218498;
        *&buf[4] = v161;
        *&buf[12] = 2080;
        *&buf[14] = v162;
        *&buf[22] = 2112;
        *&buf[24] = v338;
        _os_log_impl(&dword_1C278D000, v160, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Got an empty ranking tree", buf, 0x20u);
      }

LABEL_219:
      *__error() = v35;
      v158 = v337;
      goto LABEL_238;
    }

    v155 = v154;
    if (!std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(v19 + 4, v337))
    {
      goto LABEL_221;
    }

    v156 = *(v19 + 31);
    if (v156 < 0)
    {
      if (!*(v19 + 2))
      {
LABEL_221:
        v158 = v337;
        goto LABEL_237;
      }
    }

    else if (!*(v19 + 31))
    {
      goto LABEL_221;
    }

    v157 = *(v89 + 2);
    if (v376 == 1)
    {
      v158 = v337;
      if (!v157)
      {
        goto LABEL_237;
      }

      v159 = *v157;
      if (!*v157)
      {
        goto LABEL_228;
      }

      do
      {
        if (v157[10] < v159[10])
        {
          v157 = v159;
        }

        v159 = *v159;
      }

      while (v159);
    }

    else
    {
      v158 = v337;
      if (!v157)
      {
        goto LABEL_237;
      }

      v163 = *v157;
      if (!*v157)
      {
        goto LABEL_228;
      }

      do
      {
        if (v163[10] < v157[10])
        {
          v157 = v163;
        }

        v163 = *v163;
      }

      while (v163);
    }

    if (v157)
    {
LABEL_228:
      v164 = v158;
      v165 = (var2 + 4);
      if ((v156 & 0x80000000) != 0)
      {
        v165 = *v327;
      }

      v166 = v157[10];
      v167 = HIDWORD(v380);
      v168 = db_make_query_node_with_ann(v165, 0);
      *&v394 = MEMORY[0x1E69E9820];
      *(&v394 + 1) = 3221225472;
      *&v395 = ___Z14llmRankingNodePKcff_block_invoke;
      *(&v395 + 1) = &__block_descriptor_40_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
      v396 = __PAIR64__(v167, LODWORD(v166));
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&buf[24] = &unk_1E8198ED0;
      *&buf[32] = &v394;
      db_query_tree_apply_block_with_meta(v168, buf, 0);
      if (v168)
      {
        Node = normalizeQueryNode(v168, v166);
        v170 = *__error();
        v171 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          v172 = (var2 + 4);
          if (*(v19 + 31) < 0)
          {
            v172 = *v327;
          }

          v173 = v4->var0;
          v174 = v4->var1;
          *buf = 134219266;
          *&buf[4] = v173;
          *&buf[12] = 2080;
          *&buf[14] = v174;
          *&buf[22] = 2112;
          *&buf[24] = v338;
          *&buf[32] = 2080;
          *&buf[34] = v172;
          *&buf[42] = 2048;
          *&buf[44] = Node;
          *&buf[52] = 2048;
          *&buf[54] = v166;
          _os_log_impl(&dword_1C278D000, v171, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Extending match with %s (maxScore: %f -> %f)", buf, 0x3Eu);
        }

        *__error() = v170;
        v155 = makeOrNode(v155, v168);
      }

      v158 = v164;
    }

LABEL_237:
    v330 = makeAndNode(v330, v155);
LABEL_238:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v374);
    v175 = v373;
    *&v373 = 0;
    if (v175)
    {
      operator delete(v175);
    }

    v20 = v158 + 1;
  }

  while (v20 != Count);
  FalseNode = &v330->var0;
  if (!v330)
  {
LABEL_280:
    v210 = *__error();
    v211 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
    {
      v212 = v4->var0;
      v213 = v4->var1;
      *buf = 134218242;
      *&buf[4] = v212;
      *&buf[12] = 2080;
      *&buf[14] = v213;
      _os_log_impl(&dword_1C278D000, v211, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][V2] Got an empty ranking query tree (using clone of retrieval node with maxScore = 1)", buf, 0x16u);
    }

    *__error() = v210;
    v214 = MEMORY[0x1E69E9AC8];
    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal;
    }

    v215 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    FalseNode = v215;
    if (!v215)
    {
      goto LABEL_289;
    }

    *(v215 + 24) = 32;
    if (*v214 <= 0x12FuLL)
    {
      ++sTotal;
    }

    v216 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
    if (v216)
    {
      v216[13] = 1065353216;
      FalseNode[2] = v216;
    }

    else
    {
LABEL_289:
      _log_fault_for_malloc_failure();
    }
  }

  if (v378 < 0)
  {
    operator delete(v377[0]);
  }

  a3 = v328;
  if (!v328)
  {
LABEL_293:
    v217 = (*(v4 + 7) & 2) == 0;
    v188 = *__error();
    if (v217)
    {
      v218 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
      {
        v219 = v4->var0;
        v220 = v4->var1;
        *buf = 134218242;
        *&buf[4] = v219;
        *&buf[12] = 2080;
        *&buf[14] = v220;
        _os_log_impl(&dword_1C278D000, v218, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding L1 Ranking V2 node", buf, 0x16u);
      }
    }

    else
    {
      v221 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
      {
        v222 = v4->var0;
        v223 = v4->var1;
        *buf = 134218242;
        *&buf[4] = v222;
        *&buf[12] = 2080;
        *&buf[14] = v223;
        _os_log_impl(&dword_1C278D000, v221, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding L1 Ranking V2 node", buf, 0x16u);
      }
    }

    goto LABEL_299;
  }

LABEL_254:
  *a3 = 1;
  v187 = (*(v4 + 7) & 2) == 0;
  v188 = *__error();
  if (v187)
  {
    v189 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
    {
      v190 = v4->var0;
      v191 = v4->var1;
      *buf = 134218242;
      *&buf[4] = v190;
      *&buf[12] = 2080;
      *&buf[14] = v191;
      _os_log_impl(&dword_1C278D000, v189, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding L1 Ranking V2 node, enabling L1 normalization", buf, 0x16u);
    }
  }

  else
  {
    v192 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
    {
      v193 = v4->var0;
      v194 = v4->var1;
      *buf = 134218242;
      *&buf[4] = v193;
      *&buf[12] = 2080;
      *&buf[14] = v194;
      _os_log_impl(&dword_1C278D000, v192, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding L1 Ranking V2 node, enabling L1 normalization", buf, 0x16u);
    }
  }

LABEL_299:
  *__error() = v188;
  if (!FalseNode)
  {
LABEL_381:
    v300 = (*(v4 + 7) & 2) == 0;
    v12 = *__error();
    if (v300)
    {
      v13 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_385;
      }
    }

    else
    {
      v13 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_385:
        v301 = v4->var0;
        v302 = v4->var1;
        *buf = 134218242;
        *&buf[4] = v301;
        *&buf[12] = 2080;
        *&buf[14] = v302;
        v16 = "[qid=%lld][%s][POMMES][LLM] Skip adding non-photos LLM tree, Got no LLM parse (using ALWAYS_FALSE_NODE)";
        goto LABEL_386;
      }
    }

LABEL_387:
    *__error() = v12;
    return makeFalseNode();
  }

  return FalseNode;
}

void sub_1C295CE78(_Unwind_Exception *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(STACK[0x250]);
  v2 = STACK[0x240];
  STACK[0x240] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  _Unwind_Resume(a1);
}

query_node *llmSparseRetrievalTree(const __CFDictionary *a1, PRContext *a2, _WORD *a3)
{
  v284 = *MEMORY[0x1E69E9840];
  TokensInfoFromQueryUnderstanding = getTokensInfoFromQueryUnderstanding(a1);
  if (TokensInfoFromQueryUnderstanding)
  {
    v7 = TokensInfoFromQueryUnderstanding;
    v256 = a1;
    theArray = getLLMParseFromQueryUnderstanding(a1);
    IndexAttributeScores = getIndexAttributeScores(a2->var4);
    v8 = getIndexAttributeScores(512);
    v262 = a2;
    v260 = a3;
    if ((*a3 & 2) == 0)
    {
      v247 = v8;
      v249 = 0;
      v9 = 0;
      v251 = 0;
      v253 = 0;
      v255 = 0;
      v246 = (a3 + 4);
      while (1)
      {
        if (v9 >= CFArrayGetCount(v7))
        {
          if (v255)
          {
            v123 = v262;
            v122 = v253;
            if ((*v260 & 0x20) != 0)
            {
              if ((*v260 & 0x40) == 0)
              {
                std::string::basic_string[abi:nn200100]<0>(v283, "com.apple.MobileAddressBook");
                memset(buf, 0, sizeof(buf));
                std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, v283, (&v283[1] + 8), 1uLL);
              }

              std::string::basic_string[abi:nn200100]<0>(v283, "com.apple.MobileAddressBook");
              memset(buf, 0, sizeof(buf));
              std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, v283, (&v283[1] + 8), 1uLL);
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __db_query_tree_apply_block_block_invoke;
            v280 = &unk_1E8198ED0;
            *v281 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v255, buf, 0);
          }

          else
          {
            v123 = v262;
            v122 = v253;
          }

          if (v249)
          {
            v122 = makeAndNode(v122, v249);
          }

          if (v251)
          {
            v122 = makeAndNode(v122, v251);
          }

          v124 = v256;
          if (*(v123 + 28))
          {
            goto LABEL_282;
          }

          if (v122)
          {
            QueryNodeForPhotosMediaType = createQueryNodeForPhotosMediaType(0, v123);
            v122 = makeAndNode(v122, QueryNodeForPhotosMediaType);
            v126 = *__error();
            v127 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              var0 = v262->var0;
              var1 = v262->var1;
              *buf = 134218242;
              *&buf[4] = var0;
              *&buf[12] = 2080;
              *&buf[14] = var1;
              _os_log_impl(&dword_1C278D000, v127, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding filter nodes for not searching over image and video files", buf, 0x16u);
            }

            *__error() = v126;
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
        TokenFromTokenInfo = getTokenFromTokenInfo(ValueAtIndex);
        LemmaFromTokenInfo = getLemmaFromTokenInfo(ValueAtIndex);
        RawTextTokensFromTokenInfo = getRawTextTokensFromTokenInfo(ValueAtIndex);
        v269 = -1;
        LLMTokenDescription = fetchLLMTokenDescription(&v269, ValueAtIndex, theArray, 0);
        v15 = v269;
        v16 = "Unknown";
        if (v269 <= 0xD2)
        {
          v16 = off_1E8196D10[v269];
        }

        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%ld][%s]", @"[SP]", v9, v16];
        if (isLLMTopKRankingArgId(v15))
        {
          v18 = *__error();
          v19 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v262->var0;
            v21 = v262->var1;
            *buf = 134218498;
            *&buf[4] = v20;
            *&buf[12] = 2080;
            *&buf[14] = v21;
            *&buf[22] = 2112;
            v280 = v17;
            _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is for TopK ranking only)", buf, 0x20u);
          }

LABEL_18:
          *__error() = v18;
          goto LABEL_19;
        }

        if (isLLMInferredAppEntityTypeArgId(v15))
        {
          v18 = *__error();
          v22 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v262->var0;
            v24 = v262->var1;
            *buf = 134218498;
            *&buf[4] = v23;
            *&buf[12] = 2080;
            *&buf[14] = v24;
            *&buf[22] = 2112;
            v280 = v17;
            _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is inferred app entity)", buf, 0x20u);
          }

          goto LABEL_18;
        }

        if (isIgnoredAppEntityStatusArgId(v15))
        {
          v18 = *__error();
          v25 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v262->var0;
            v27 = v262->var1;
            *buf = 134218498;
            *&buf[4] = v26;
            *&buf[12] = 2080;
            *&buf[14] = v27;
            *&buf[22] = 2112;
            v280 = v17;
            _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is ignored app entity status)", buf, 0x20u);
          }

          goto LABEL_18;
        }

        if (v15 == 104)
        {
          if ((*v260 & 0x100) != 0)
          {
            v18 = *__error();
            v31 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v262->var0;
              v33 = v262->var1;
              v34 = *v260;
              *buf = 134219010;
              *&buf[4] = v32;
              *&buf[12] = 2080;
              *&buf[14] = v33;
              *&buf[22] = 2112;
              v280 = v17;
              *v281 = 1024;
              *&v281[2] = (v34 >> 5) & 1;
              *&v281[6] = 1024;
              *&v281[8] = (v34 >> 8) & 1;
              _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is person self and hasContact=%d, skipSelf=%d)", buf, 0x2Cu);
            }

            goto LABEL_18;
          }

          if (!isBundleSpecificFilterAppEntityStatusArgId(104))
          {
            v36 = groundedNamesRetrievalNode(ValueAtIndex, v247, v17, v262);
            v255 = makeOrNode(v255, v36);
            goto LABEL_19;
          }
        }

        else
        {
          if (v15 == 16)
          {
            if ((*v260 & 8) != 0)
            {
              v18 = *__error();
              v37 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = v262->var0;
                v39 = v262->var1;
                *buf = 134218498;
                *&buf[4] = v38;
                *&buf[12] = 2080;
                *&buf[14] = v39;
                *&buf[22] = 2112;
                v280 = v17;
                _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is an event type hotel and hasNonOptionalSearchTerm=1)", buf, 0x20u);
              }

              goto LABEL_18;
            }
          }

          else if (v15 == 1 && (*v260 & 0x40) != 0)
          {
            v18 = *__error();
            v28 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v262->var0;
              v30 = v262->var1;
              *buf = 134218498;
              *&buf[4] = v29;
              *&buf[12] = 2080;
              *&buf[14] = v30;
              *&buf[22] = 2112;
              v280 = v17;
              _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (arg is a search term and hasStrictContactEntityType=1)", buf, 0x20u);
            }

            goto LABEL_18;
          }

          if (!isBundleSpecificFilterAppEntityStatusArgId(v15))
          {
            if ((*v260 & 0x10) == 0)
            {
              std::string::basic_string[abi:nn200100]<0>(buf, [-[__CFDictionary localizedLowercaseString](TokenFromTokenInfo "localizedLowercaseString")]);
              v40 = isOptionalSearchTerm(v15, buf, v7, v9, 0, 0, 0);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v40)
              {
                v18 = *__error();
                v41 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = v262->var0;
                  v43 = v262->var1;
                  *buf = 134218498;
                  *&buf[4] = v42;
                  *&buf[12] = 2080;
                  *&buf[14] = v43;
                  *&buf[22] = 2112;
                  v280 = v17;
                  _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (matched trailing optional search token)", buf, 0x20u);
                }

                goto LABEL_18;
              }
            }

            if (isLLMOptionalArgId(v15) && (*v260 & 1) == 0)
            {
              v44 = *__error();
              v45 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = v262->var0;
                v47 = v262->var1;
                *buf = 134218498;
                *&buf[4] = v46;
                *&buf[12] = 2080;
                *&buf[14] = v47;
                *&buf[22] = 2112;
                v280 = v17;
                _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is optional and there is at least one non-optional arg Id in the query)", buf, 0x20u);
              }

              goto LABEL_56;
            }

            if (isLLMRetrievalFilterArgId(v15))
            {
              v44 = *__error();
              v48 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                v49 = v262->var0;
                v50 = v262->var1;
                *buf = 134218498;
                *&buf[4] = v49;
                *&buf[12] = 2080;
                *&buf[14] = v50;
                *&buf[22] = 2112;
                v280 = v17;
                _os_log_impl(&dword_1C278D000, v48, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is app entity filter)", buf, 0x20u);
              }

LABEL_56:
              v51 = 0;
              *__error() = v44;
LABEL_57:
              if (v15 == 1)
              {
                v52 = *__error();
                v53 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = v262->var0;
                  v55 = v262->var1;
                  *buf = 134218498;
                  *&buf[4] = v54;
                  *&buf[12] = 2080;
                  *&buf[14] = v55;
                  *&buf[22] = 2112;
                  v280 = v17;
                  v56 = v53;
                  v57 = "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because we add token matching manually";
                  goto LABEL_78;
                }

                goto LABEL_79;
              }
            }

            else
            {
              if ((v15 - 65) > 1)
              {
                if (v15 == 193)
                {
                  v58 = *__error();
                  v62 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    v63 = v262->var0;
                    v64 = v262->var1;
                    *buf = 134218498;
                    *&buf[4] = v63;
                    *&buf[12] = 2080;
                    *&buf[14] = v64;
                    *&buf[22] = 2112;
                    v280 = v17;
                    _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is conversation filter time)", buf, 0x20u);
                  }

                  v15 = 193;
                }

                else
                {
                  if (v15 != 8 || !getIsRelativeTimeArgFromTokenInfo(ValueAtIndex))
                  {
                    if (isLLMTemporalArgId(v15))
                    {
                      v51 = 0;
                    }

                    else
                    {
                      log = *__error();
                      v92 = _SILogForLogForCategory(17);
                      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                      {
                        v93 = v262->var0;
                        v94 = v262->var1;
                        *buf = 134218498;
                        *&buf[4] = v93;
                        *&buf[12] = 2080;
                        *&buf[14] = v94;
                        *&buf[22] = 2112;
                        v280 = v17;
                        _os_log_impl(&dword_1C278D000, v92, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Adding token match node", buf, 0x20u);
                      }

                      *__error() = log;
                      if (v15 == 8)
                      {
                        v267 = 0u;
                        v268 = 0u;
                        v265 = 0u;
                        v266 = 0u;
                        v51 = 0;
                        v95 = [(__CFDictionary *)RawTextTokensFromTokenInfo countByEnumeratingWithState:&v265 objects:v270 count:16];
                        if (v95)
                        {
                          v96 = *v266;
                          do
                          {
                            for (i = 0; i != v95; ++i)
                            {
                              if (*v266 != v96)
                              {
                                objc_enumerationMutation(RawTextTokensFromTokenInfo);
                              }

                              matched = defaultMatchQueryNodeForLLMRetrieval([*(*(&v265 + 1) + 8 * i) UTF8String], *(IndexAttributeScores + 2), v262);
                              v51 = makeAndNode(v51, matched);
                            }

                            v95 = [(__CFDictionary *)RawTextTokensFromTokenInfo countByEnumeratingWithState:&v265 objects:v270 count:16];
                          }

                          while (v95);
                          v15 = v269;
                        }

                        else
                        {
                          v15 = 8;
                        }
                      }

                      else
                      {
                        v99 = defaultMatchQueryNodeForLLMRetrieval([(__CFDictionary *)TokenFromTokenInfo UTF8String], *(IndexAttributeScores + 2), v262);
                        if (isLLMLocationArgId(v15) || ![(NSString *)LemmaFromTokenInfo length]|| [(NSString *)LemmaFromTokenInfo isEqualToString:TokenFromTokenInfo])
                        {
                          v100 = 0;
                        }

                        else
                        {
                          loga = *__error();
                          v242 = _SILogForLogForCategory(17);
                          if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
                          {
                            v240 = v262->var0;
                            v241 = v262->var1;
                            v239 = redactString(LemmaFromTokenInfo, (*(v262 + 7) >> 9) & 1);
                            v110 = redactString(TokenFromTokenInfo, (*(v262 + 7) >> 9) & 1);
                            *buf = 134219010;
                            *&buf[4] = v240;
                            *&buf[12] = 2080;
                            *&buf[14] = v241;
                            *&buf[22] = 2112;
                            v280 = v17;
                            *v281 = 2112;
                            *&v281[2] = v239;
                            *&v281[10] = 2112;
                            v282 = v110;
                            _os_log_impl(&dword_1C278D000, v242, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]%@ Adding lemma node %@ for token %@", buf, 0x34u);
                          }

                          *__error() = loga;
                          v100 = defaultMatchQueryNodeForLLMRetrieval([(NSString *)LemmaFromTokenInfo UTF8String], *(IndexAttributeScores + 2), v262);
                        }

                        v51 = makeOrNode(v99, v100);
                      }

                      if (isLLMPersonArgId(v15))
                      {
                        v101 = groundedNamesRetrievalNode(ValueAtIndex, IndexAttributeScores, v17, v262);
                        v51 = makeOrNode(v51, v101);
                      }

                      if (v15 == 1 && (~*v260 & 0x220) == 0)
                      {
                        v102 = *__error();
                        v103 = _SILogForLogForCategory(17);
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                        {
                          v104 = v262->var0;
                          v105 = v262->var1;
                          *buf = 134218498;
                          *&buf[4] = v104;
                          *&buf[12] = 2080;
                          *&buf[14] = v105;
                          *&buf[22] = 2112;
                          v280 = v17;
                          _os_log_impl(&dword_1C278D000, v103, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding contacts bundle exclusion filter to search terms", buf, 0x20u);
                        }

                        *__error() = v102;
                        std::string::basic_string[abi:nn200100]<0>(v283, "com.apple.MobileAddressBook");
                        memset(buf, 0, sizeof(buf));
                        std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, v283, (&v283[1] + 8), 1uLL);
                      }

                      if (isWalletDocumentUnderstandingEnabled_onceToken != -1)
                      {
                        dispatch_once(&isWalletDocumentUnderstandingEnabled_onceToken, &__block_literal_global_18_11151);
                      }

                      v15 = v269;
                      if (isWalletDocumentUnderstandingEnabled_ffStatus == 1 && (v269 & 0xFFFFFFFE) == 6)
                      {
                        v106 = *__error();
                        v107 = _SILogForLogForCategory(17);
                        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                        {
                          v108 = v262->var0;
                          v109 = v262->var1;
                          *buf = 134218498;
                          *&buf[4] = v108;
                          *&buf[12] = 2080;
                          *&buf[14] = v109;
                          *&buf[22] = 2112;
                          v280 = v17;
                          _os_log_impl(&dword_1C278D000, v107, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Exclude token match node for departure and arrival location for Wallet bundle", buf, 0x20u);
                        }

                        *__error() = v106;
                        std::string::basic_string[abi:nn200100]<0>(v283, "com.apple.Passbook");
                        memset(buf, 0, sizeof(buf));
                        std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(buf, v283, (&v283[1] + 8), 1uLL);
                      }
                    }

                    goto LABEL_57;
                  }

                  v58 = *__error();
                  v89 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    v90 = v262->var0;
                    v91 = v262->var1;
                    *buf = 134218498;
                    *&buf[4] = v90;
                    *&buf[12] = 2080;
                    *&buf[14] = v91;
                    *&buf[22] = 2112;
                    v280 = v17;
                    _os_log_impl(&dword_1C278D000, v89, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is time and it is relative)", buf, 0x20u);
                  }

                  v15 = 8;
                }
              }

              else
              {
                v58 = *__error();
                v59 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  v60 = v262->var0;
                  v61 = v262->var1;
                  *buf = 134218498;
                  *&buf[4] = v60;
                  *&buf[12] = 2080;
                  *&buf[14] = v61;
                  *&buf[22] = 2112;
                  v280 = v17;
                  _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (arg is person sender or receiver)", buf, 0x20u);
                }
              }

              v51 = 0;
              *__error() = v58;
            }

            if ([LLMTokenDescription length])
            {
              RetrievalNodeFromQueryString = makeRetrievalNodeFromQueryString([LLMTokenDescription UTF8String]);
              if (v15 == 18)
              {
                v66 = makeRetrievalNodeFromQueryString("_kMDItemBundleID = com.apple.FileProvider.LocalStorage || _kMDItemBundleID=com.apple.CloudDocs.iCloudDriveFileProvider");
                v67 = *__error();
                v68 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = v262->var0;
                  v70 = v262->var1;
                  *buf = 134218498;
                  *&buf[4] = v69;
                  *&buf[12] = 2080;
                  *&buf[14] = v70;
                  *&buf[22] = 2112;
                  v280 = v17;
                  _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ retrieve all type of files for file search on iOS", buf, 0x20u);
                }

                *__error() = v67;
                RetrievalNodeFromQueryString = makeOrNode(RetrievalNodeFromQueryString, v66);
              }

              if (RetrievalNodeFromQueryString)
              {
                if (isLLMTemporalArgId(v15))
                {
                  goto LABEL_75;
                }

                v76 = *v260;
                if (*v260)
                {
LABEL_84:
                  v75 = 0;
                  if ((v76 & 0x80) != 0 && v15 == 8)
                  {
                    NonMatchRetrievalNodeFromORQueryString = makeNonMatchRetrievalNodeFromORQueryString([LLMTokenDescription UTF8String]);
                    goto LABEL_87;
                  }
                }

                else
                {
                  if (!isLLMOptionalArgId(v15))
                  {
                    v76 = *v260;
                    goto LABEL_84;
                  }

LABEL_75:
                  NonMatchRetrievalNodeFromORQueryString = makeNonMatchRetrievalNodeFromQueryString([LLMTokenDescription UTF8String]);
LABEL_87:
                  RetrievalNodeFromQueryString = makeOrNode(RetrievalNodeFromQueryString, NonMatchRetrievalNodeFromORQueryString);
                  v75 = 1;
                }
              }

              else
              {
                v75 = 0;
              }

              v52 = *__error();
              v77 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                v78 = v262->var0;
                v79 = v262->var1;
                *buf = 134218754;
                *&buf[4] = v78;
                *&buf[12] = 2080;
                *&buf[14] = v79;
                *&buf[22] = 2112;
                v280 = v17;
                *v281 = 1024;
                *&v281[2] = v75;
                _os_log_impl(&dword_1C278D000, v77, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding parsed query tree (+nonMatch:%d)", buf, 0x26u);
              }
            }

            else
            {
              v52 = *__error();
              v72 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                v73 = v262->var0;
                v74 = v262->var1;
                *buf = 134218498;
                *&buf[4] = v73;
                *&buf[12] = 2080;
                *&buf[14] = v74;
                *&buf[22] = 2112;
                v280 = v17;
                v56 = v72;
                v57 = "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because tokenDescription is empty";
LABEL_78:
                _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, v57, buf, 0x20u);
              }

LABEL_79:
              RetrievalNodeFromQueryString = 0;
            }

            *__error() = v52;
            v80 = makeOrNode(v51, RetrievalNodeFromQueryString);
            if (v80 && std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(v260 + 4, v9))
            {
              if (*(v260 + 31) < 0)
              {
                if (!*(v260 + 2))
                {
                  goto LABEL_103;
                }

                v81 = *v246;
              }

              else
              {
                v81 = v246;
                if (!*(v260 + 31))
                {
                  goto LABEL_103;
                }
              }

              v82 = makeRetrievalNodeFromQueryString(v81);
              if (v82)
              {
                v83 = v82;
                v84 = *__error();
                v85 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  v86 = v246;
                  if (*(v260 + 31) < 0)
                  {
                    v86 = *v246;
                  }

                  v87 = v262->var0;
                  v88 = v262->var1;
                  *buf = 134218754;
                  *&buf[4] = v87;
                  *&buf[12] = 2080;
                  *&buf[14] = v88;
                  *&buf[22] = 2112;
                  v280 = v17;
                  *v281 = 2080;
                  *&v281[2] = v86;
                  _os_log_impl(&dword_1C278D000, v85, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Extending match with %s", buf, 0x2Au);
                }

                *__error() = v84;
                v80 = makeOrNode(v80, v83);
              }
            }

LABEL_103:
            if (isLLMAppEntityTypeArgId(v269))
            {
              v249 = makeOrNode(v249, v80);
            }

            else
            {
              v253 = makeAndNode(v253, v80);
            }

            goto LABEL_19;
          }
        }

        BundleSpecificFilterNode = generateBundleSpecificFilterNode(v262, v15, v17, LLMTokenDescription, 0);
        if (BundleSpecificFilterNode)
        {
          v251 = makeAndNode(v251, BundleSpecificFilterNode);
        }

LABEL_19:
        ++v9;
      }
    }

    v118 = *__error();
    v119 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v120 = a2->var0;
      v121 = a2->var1;
      *buf = 134218242;
      *&buf[4] = v120;
      *&buf[12] = 2080;
      *&buf[14] = v121;
      _os_log_impl(&dword_1C278D000, v119, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Skipping adding sparse nodes to retrieval tree as all tokens are temporal nodes", buf, 0x16u);
    }

    *__error() = v118;
    if (*(a2 + 28))
    {
      goto LABEL_283;
    }

    v122 = 0;
LABEL_169:
    v124 = v256;
LABEL_170:
    if ((*v260 & 0x400) == 0)
    {
      goto LABEL_282;
    }

    v254 = v122;
    theArraya = getTokensInfoFromQueryUnderstanding(v124);
    if (!theArraya)
    {
      v211 = *__error();
      v212 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        v213 = v262->var0;
        v214 = v262->var1;
        *v271 = 134218498;
        *&v271[4] = v213;
        v272 = 2080;
        v273 = v214;
        v274 = 2112;
        v275 = 0;
        v215 = "[qid=%lld][%s][POMMES][LLM][SPM] Got no LLM parse (using ALWAYS_FALSE_NODE) with LLMParse:'%@'";
        v216 = v212;
        v217 = 32;
        goto LABEL_277;
      }

LABEL_278:
      *__error() = v211;
      FalseNode = makeFalseNode();
      if (FalseNode)
      {
        goto LABEL_279;
      }

      v235 = *__error();
      v236 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
      {
        v237 = v262->var0;
        v238 = v262->var1;
        *buf = 134218242;
        *&buf[4] = v237;
        *&buf[12] = 2080;
        *&buf[14] = v238;
        _os_log_impl(&dword_1C278D000, v236, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Skipping image and video file search sub-tree to retrieval tree as it is empty", buf, 0x16u);
      }

      *__error() = v235;
      v122 = v254;
      if (!v254)
      {
        goto LABEL_283;
      }

      return v122;
    }

    LLMParseFromQueryUnderstanding = getLLMParseFromQueryUnderstanding(v256);
    v257 = getIndexAttributeScores(v262->var4);
    v248 = getIndexAttributeScores(32);
    if ((*v260 & 2) != 0)
    {
      v218 = *__error();
      v219 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
      {
        v220 = v262->var0;
        v221 = v262->var1;
        *v271 = 134218242;
        *&v271[4] = v220;
        v272 = 2080;
        v273 = v221;
        _os_log_impl(&dword_1C278D000, v219, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM][SPM] Skipping adding sparse nodes to retrieval tree as all tokens are temporal nodes", v271, 0x16u);
      }

      *__error() = v218;
      goto LABEL_275;
    }

    v130 = 0;
    v250 = 0;
    v252 = 0;
    while (1)
    {
      if (v130 >= CFArrayGetCount(theArraya))
      {
        if (v250)
        {
          FalseNode = makeAndNode(v252, v250);
          if (!FalseNode)
          {
            goto LABEL_275;
          }

LABEL_279:
          v226 = FalseNode;
          v227 = *__error();
          v228 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
          {
            v229 = v262->var0;
            v230 = v262->var1;
            *buf = 134218242;
            *&buf[4] = v229;
            *&buf[12] = 2080;
            *&buf[14] = v230;
            _os_log_impl(&dword_1C278D000, v228, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] Adding image and video file search sub-tree to retrieval tree as intent is document search", buf, 0x16u);
          }

          *__error() = v227;
          v122 = makeOrNode(v254, v226);
LABEL_282:
          if (!v122)
          {
LABEL_283:
            v111 = *__error();
            v231 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
            {
              v232 = v262->var0;
              v233 = v262->var1;
              *buf = 134218242;
              *&buf[4] = v232;
              *&buf[12] = 2080;
              *&buf[14] = v233;
              v115 = "[qid=%lld][%s][POMMES][LLM] Got an empty retrieval query tree (using ALWAYS_FALSE_NODE)";
              v116 = v231;
              v117 = 22;
LABEL_285:
              _os_log_impl(&dword_1C278D000, v116, OS_LOG_TYPE_DEFAULT, v115, buf, v117);
            }

            goto LABEL_286;
          }

          return v122;
        }

        FalseNode = v252;
        if (v252)
        {
          goto LABEL_279;
        }

LABEL_275:
        v211 = *__error();
        v222 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
        {
          v223 = v262->var0;
          v224 = v262->var1;
          *v271 = 134218242;
          *&v271[4] = v223;
          v272 = 2080;
          v273 = v224;
          v215 = "[qid=%lld][%s][POMMES][LLM][SPM] Got an empty retrieval query tree (using ALWAYS_FALSE_NODE)";
          v216 = v222;
          v217 = 22;
LABEL_277:
          _os_log_impl(&dword_1C278D000, v216, OS_LOG_TYPE_DEFAULT, v215, v271, v217);
        }

        goto LABEL_278;
      }

      v131 = CFArrayGetValueAtIndex(theArraya, v130);
      v132 = getTokenFromTokenInfo(v131);
      v133 = getLemmaFromTokenInfo(v131);
      v134 = getRawTextTokensFromTokenInfo(v131);
      v269 = -1;
      v135 = fetchLLMTokenDescription(&v269, v131, LLMParseFromQueryUnderstanding, 0);
      v136 = v269;
      v137 = "Unknown";
      if (v269 <= 0xD2)
      {
        v137 = off_1E8196D10[v269];
      }

      v261 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%ld][%s]", @"[SPM]", v130, v137];
      if (isLLMTopKRankingArgId(v136))
      {
        v138 = *__error();
        v139 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          v140 = v262->var0;
          v141 = v262->var1;
          *v271 = 134218498;
          *&v271[4] = v140;
          v272 = 2080;
          v273 = v141;
          v274 = 2112;
          v275 = v261;
          _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (it is for TopK ranking only)", v271, 0x20u);
        }

LABEL_185:
        *__error() = v138;
        goto LABEL_186;
      }

      if (isIgnoredAppEntityStatusArgId(v136) || isBundleSpecificFilterAppEntityStatusArgId(v136))
      {
        v138 = *__error();
        v142 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
        {
          v143 = v262->var0;
          v144 = v262->var1;
          *v271 = 134218498;
          *&v271[4] = v143;
          v272 = 2080;
          v273 = v144;
          v274 = 2112;
          v275 = v261;
          _os_log_impl(&dword_1C278D000, v142, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (it is ignored or bundle specific filter app entity status)", v271, 0x20u);
        }

        goto LABEL_185;
      }

      if (v136 != 104)
      {
        break;
      }

      v145 = *__error();
      v146 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        v147 = v262->var0;
        v148 = v262->var1;
        v149 = *v260;
        *v271 = 134219010;
        *&v271[4] = v147;
        v272 = 2080;
        v273 = v148;
        v274 = 2112;
        v275 = v261;
        v276 = 1024;
        *v277 = (v149 >> 5) & 1;
        *&v277[4] = 1024;
        *&v277[6] = (v149 >> 8) & 1;
        _os_log_impl(&dword_1C278D000, v146, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (it is person self and hasContact=%d, skipSelf=%d)", v271, 0x2Cu);
      }

      *__error() = v145;
LABEL_186:
      ++v130;
    }

    if ((*v260 & 0x10) == 0)
    {
      std::string::basic_string[abi:nn200100]<0>(v271, [-[__CFDictionary localizedLowercaseString](v132 "localizedLowercaseString")]);
      v150 = isOptionalSearchTerm(v136, v271, theArraya, v130, 0, 0, 0);
      if (SHIBYTE(v274) < 0)
      {
        operator delete(*v271);
      }

      if (v150)
      {
        v138 = *__error();
        v151 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
        {
          v152 = v262->var0;
          v153 = v262->var1;
          *v271 = 134218498;
          *&v271[4] = v152;
          v272 = 2080;
          v273 = v153;
          v274 = 2112;
          v275 = v261;
          _os_log_impl(&dword_1C278D000, v151, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping (matched trailing optional search token)", v271, 0x20u);
        }

        goto LABEL_185;
      }
    }

    if (isLLMOptionalArgId(v136) && (*v260 & 1) == 0)
    {
      v154 = *__error();
      v155 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        v156 = v262->var0;
        v157 = v262->var1;
        *v271 = 134218498;
        *&v271[4] = v156;
        v272 = 2080;
        v273 = v157;
        v274 = 2112;
        v275 = v261;
        v158 = v155;
        v159 = "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (it is optional and there is at least one non-optional arg Id in the query)";
LABEL_211:
        _os_log_impl(&dword_1C278D000, v158, OS_LOG_TYPE_DEFAULT, v159, v271, 0x20u);
        goto LABEL_212;
      }

      goto LABEL_212;
    }

    if (((v136 != 105) & ~isLLMRetrievalFilterArgId(v136)) == 0)
    {
      v154 = *__error();
      v160 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
      {
        v161 = v262->var0;
        v162 = v262->var1;
        *v271 = 134218498;
        *&v271[4] = v161;
        v272 = 2080;
        v273 = v162;
        v274 = 2112;
        v275 = v261;
        v158 = v160;
        v159 = "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (this is app entity filter or document inferred app entity)";
        goto LABEL_211;
      }

LABEL_212:
      v169 = 0;
      *__error() = v154;
      goto LABEL_213;
    }

    if ((v136 - 65) <= 1)
    {
      v154 = *__error();
      v163 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        v164 = v262->var0;
        v165 = v262->var1;
        *v271 = 134218498;
        *&v271[4] = v164;
        v272 = 2080;
        v273 = v165;
        v274 = 2112;
        v275 = v261;
        v158 = v163;
        v159 = "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (this is person sender or receiver)";
        goto LABEL_211;
      }

      goto LABEL_212;
    }

    if (v136 == 193)
    {
      v154 = *__error();
      v166 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
      {
        v167 = v262->var0;
        v168 = v262->var1;
        *v271 = 134218498;
        *&v271[4] = v167;
        v272 = 2080;
        v273 = v168;
        v274 = 2112;
        v275 = v261;
        v158 = v166;
        v159 = "[qid=%lld][%s][POMMES][LLM]%@ Skip adding token match node (this is conversation filter time)";
        goto LABEL_211;
      }

      goto LABEL_212;
    }

    if (isLLMTemporalArgId(v136))
    {
      v169 = 0;
      goto LABEL_213;
    }

    v191 = *__error();
    v192 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
    {
      v193 = v262->var0;
      v194 = v262->var1;
      *v271 = 134218498;
      *&v271[4] = v193;
      v272 = 2080;
      v273 = v194;
      v274 = 2112;
      v275 = v261;
      _os_log_impl(&dword_1C278D000, v192, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding token match node", v271, 0x20u);
    }

    *__error() = v191;
    v195 = v248;
    if (v136 != 1)
    {
      if (v136 == 8)
      {
        memset(v283, 0, sizeof(v283));
        v196 = 0;
        v197 = [(__CFDictionary *)v134 countByEnumeratingWithState:v283 objects:buf count:16];
        if (v197)
        {
          v198 = **&v283[1];
          do
          {
            for (j = 0; j != v197; ++j)
            {
              if (**&v283[1] != v198)
              {
                objc_enumerationMutation(v134);
              }

              v200 = defaultMatchQueryNodeForLLMRetrieval([*(*(&v283[0] + 1) + 8 * j) UTF8String], *(v257 + 2), v262);
              v196 = makeAndNode(v196, v200);
            }

            v197 = [(__CFDictionary *)v134 countByEnumeratingWithState:v283 objects:buf count:16];
          }

          while (v197);
        }

        goto LABEL_260;
      }

      v195 = v257;
    }

    v196 = defaultMatchQueryNodeForLLMRetrieval([(__CFDictionary *)v132 UTF8String], *(v195 + 2), v262);
LABEL_260:
    if ([(NSString *)v133 length]&& ![(NSString *)v133 isEqualToString:v132])
    {
      v245 = *__error();
      v202 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
      {
        v204 = v262->var0;
        v203 = v262->var1;
        v205 = redactString(v133, (*(v262 + 7) >> 9) & 1);
        v206 = redactString(v132, (*(v262 + 7) >> 9) & 1);
        *v271 = 134219010;
        *&v271[4] = v204;
        v272 = 2080;
        v273 = v203;
        v274 = 2112;
        v275 = v261;
        v276 = 2112;
        *v277 = v205;
        *&v277[8] = 2112;
        v278 = v206;
        _os_log_impl(&dword_1C278D000, v202, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Add lemma node %@ for token %@", v271, 0x34u);
      }

      *__error() = v245;
      v207 = v269 == 1;
      v208 = [(NSString *)v133 UTF8String];
      v209 = v257;
      if (v207)
      {
        v209 = v248;
      }

      v201 = defaultMatchQueryNodeForLLMRetrieval(v208, *(v209 + 2), v262);
    }

    else
    {
      v201 = 0;
    }

    v169 = makeOrNode(v196, v201);
    v136 = v269;
    if (isLLMPersonArgId(v269))
    {
      v210 = groundedNamesRetrievalNode(v131, v257, v261, v262);
      v169 = makeOrNode(v169, v210);
    }

LABEL_213:
    if (v136 == 1)
    {
      v170 = *__error();
      v171 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
      {
        v172 = v262->var0;
        v173 = v262->var1;
        *v271 = 134218498;
        *&v271[4] = v172;
        v272 = 2080;
        v273 = v173;
        v274 = 2112;
        v275 = v261;
        v174 = v171;
        v175 = "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because we add token matching manually";
LABEL_225:
        _os_log_impl(&dword_1C278D000, v174, OS_LOG_TYPE_DEFAULT, v175, v271, 0x20u);
        goto LABEL_226;
      }

      goto LABEL_226;
    }

    if (![v135 length])
    {
      v170 = *__error();
      v181 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
      {
        v182 = v262->var0;
        v183 = v262->var1;
        *v271 = 134218498;
        *&v271[4] = v182;
        v272 = 2080;
        v273 = v183;
        v274 = 2112;
        v275 = v261;
        v174 = v181;
        v175 = "[qid=%lld][%s][POMMES][LLM]%@ Not adding parsed query tree because tokenDescription is empty";
        goto LABEL_225;
      }

LABEL_226:
      v176 = 0;
LABEL_227:
      *__error() = v170;
      v184 = makeOrNode(v169, v176);
      if (isLLMAppEntityTypeArgId(v269))
      {
        v250 = makeOrNode(v250, v184);
      }

      else
      {
        v252 = makeAndNode(v252, v184);
      }

      goto LABEL_186;
    }

    if (v136 == 18 || v136 == 133 || v136 == 105)
    {
      v176 = makeRetrievalNodeFromQueryString([@"kMDItemContentType = public.jpeg ||                                                                       kMDItemContentType = public.png ||                                                                        kMDItemContentType = public.heic ||                                                                        kMDItemContentType = public.image ||                                                                        kMDItemContentType = com.apple.quicktime-movie ||                                                                        kMDItemContentType = com.apple.m4v-video ||                                                                        kMDItemContentType = public.mpeg-4 ||                                                                        kMDItemContentType = public.movie ||                                                                        kMDItemContentTypeTree = public.jpeg ||                                                                        kMDItemContentTypeTree = public.png ||                                                                        kMDItemContentTypeTree = public.heic ||                                                                        kMDItemContentTypeTree = public.image ||                                                                        kMDItemContentTypeTree = com.apple.quicktime-movie ||                                                                        kMDItemContentTypeTree = com.apple.m4v-video ||                                                                       kMDItemContentTypeTree = public.mpeg-4 ||                                                                        kMDItemContentTypeTree = public.movie" UTF8String]);
      v177 = *__error();
      v178 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        v179 = v262->var0;
        v180 = v262->var1;
        *v271 = 134218498;
        *&v271[4] = v179;
        v272 = 2080;
        v273 = v180;
        v274 = 2112;
        v275 = v261;
        _os_log_impl(&dword_1C278D000, v178, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ retrieve image and video type of files for file search on macOS", v271, 0x20u);
      }

      *__error() = v177;
    }

    else
    {
      v176 = makeRetrievalNodeFromQueryString([v135 UTF8String]);
    }

    if (!v176)
    {
      v186 = 0;
      goto LABEL_244;
    }

    if (isLLMTemporalArgId(v136))
    {
      goto LABEL_235;
    }

    v187 = *v260;
    if ((*v260 & 1) == 0)
    {
      if (isLLMOptionalArgId(v136))
      {
LABEL_235:
        NonMatchRetrievalNodeFromQueryString = makeNonMatchRetrievalNodeFromQueryString([v135 UTF8String]);
        goto LABEL_243;
      }

      v187 = *v260;
    }

    v186 = 0;
    if ((v187 & 0x80) == 0 || v136 != 8)
    {
LABEL_244:
      v170 = *__error();
      v188 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
      {
        v189 = v262->var0;
        v190 = v262->var1;
        *v271 = 134218754;
        *&v271[4] = v189;
        v272 = 2080;
        v273 = v190;
        v274 = 2112;
        v275 = v261;
        v276 = 1024;
        *v277 = v186;
        _os_log_impl(&dword_1C278D000, v188, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding parsed query tree (+nonMatch:%d)", v271, 0x26u);
      }

      goto LABEL_227;
    }

    NonMatchRetrievalNodeFromQueryString = makeNonMatchRetrievalNodeFromORQueryString([v135 UTF8String]);
LABEL_243:
    v176 = makeOrNode(v176, NonMatchRetrievalNodeFromQueryString);
    v186 = 1;
    goto LABEL_244;
  }

  v111 = *__error();
  v112 = _SILogForLogForCategory(17);
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    v113 = a2->var0;
    v114 = a2->var1;
    *buf = 134218498;
    *&buf[4] = v113;
    *&buf[12] = 2080;
    *&buf[14] = v114;
    *&buf[22] = 2112;
    v280 = 0;
    v115 = "[qid=%lld][%s][POMMES][LLM] Got no LLM parse (using ALWAYS_FALSE_NODE) with LLMParse:'%@'";
    v116 = v112;
    v117 = 32;
    goto LABEL_285;
  }

LABEL_286:
  *__error() = v111;
  return makeFalseNode();
}
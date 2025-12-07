uint64_t std::__fs::filesystem::operator<[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) >> 31;
}

uint64_t skit::IndexWriter::end_txn(skit::IndexWriter *this)
{
  v30 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (!*this)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(v1 + 528) & 1) == 0)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v19 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
    {
      v28 = 68289026;
      *v29 = 16;
      *&v29[4] = 2098;
      *&v29[6] = v1;
      _os_log_fault_impl(&dword_2998C6000, v19, OS_LOG_TYPE_FAULT, "IndexWriterImpl::end_txn : transaction %{public,uuid_t}.16P is not active", &v28, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  v2 = (v1 + 208);
  skit::internal::MultiIndexV2::close((v1 + 208));
  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::flush(v1 + 40, 1);
  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close((v1 + 40)))
  {
LABEL_45:
    skit::internal::IndexWriterImpl::abort_txn(v1);
    return 0xFFFFFFFFLL;
  }

  if (*(v1 + 529) == 1)
  {
    v4 = (v1 + 208);
    if (*(v1 + 231) < 0)
    {
      v4 = *v2;
    }

    v5 = (v1 + 16);
    v6 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v6 = *v5;
    }

    if (renamex_np(v4, v6, 2u))
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v22 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        if (*(v1 + 231) < 0)
        {
          v2 = *v2;
        }

        if (*(v1 + 39) < 0)
        {
          v5 = *v5;
        }

        v26 = *__error();
        v28 = 136446722;
        *v29 = v2;
        *&v29[8] = 2082;
        *&v29[10] = v5;
        *&v29[18] = 1024;
        *&v29[20] = v26;
        _os_log_error_impl(&dword_2998C6000, v22, OS_LOG_TYPE_ERROR, "IndexWriterImpl::end_txn : failed to move transaction directory @ %{public}s ->  %{public}s : %{darwin.errno}d", &v28, 0x1Cu);
      }

      goto LABEL_45;
    }
  }

  v7 = (v1 + 208);
  if (*(v1 + 231) < 0)
  {
    v7 = *v2;
  }

  if (skit::internal::remove_all(v7, v3))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v20 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      if (*(v1 + 231) < 0)
      {
        v2 = *v2;
      }

      v21 = *__error();
      v28 = 136446466;
      *v29 = v2;
      *&v29[8] = 1024;
      *&v29[10] = v21;
      _os_log_error_impl(&dword_2998C6000, v20, OS_LOG_TYPE_ERROR, "IndexWriterImpl::end_txn : failed to remove transaction directory @ %{public}s : %{darwin.errno}d", &v28, 0x12u);
    }
  }

  if (*(v1 + 529) != 1)
  {
    goto LABEL_22;
  }

  v8 = (v1 + 16);
  v9 = (v1 + 16);
  if (*(v1 + 39) < 0)
  {
    v9 = *v8;
  }

  v10 = open(v9, 0);
  if (v10 < 0)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v23 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    if (*(v1 + 39) < 0)
    {
      v8 = *v8;
    }

    v24 = *__error();
    v28 = 136315394;
    *v29 = v8;
    *&v29[8] = 1024;
    *&v29[10] = v24;
    v25 = "IndexWriterImpl::end_txn : failed to open index directory @ %s : %{darwin.errno}d";
LABEL_65:
    _os_log_error_impl(&dword_2998C6000, v23, OS_LOG_TYPE_ERROR, v25, &v28, 0x12u);
LABEL_22:
    v13 = skit::internal::get_logging_context(void)::once;
    *(v1 + 528) = 0;
    if (v13 != -1)
    {
    }

    goto LABEL_24;
  }

  v11 = v10;
  if (fcntl(v10, 85))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v12 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v17 = (v1 + 16);
      if (*(v1 + 39) < 0)
      {
        v17 = *v8;
      }

      v18 = *__error();
      v28 = 136315394;
      *v29 = v17;
      *&v29[8] = 1024;
      *&v29[10] = v18;
      _os_log_error_impl(&dword_2998C6000, v12, OS_LOG_TYPE_ERROR, "IndexWriterImpl::end_txn : failed fcntl barrier @ %s : %{darwin.errno}d", &v28, 0x12u);
    }
  }

  if (!close(v11))
  {
    goto LABEL_22;
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v23 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    if (*(v1 + 39) < 0)
    {
      v8 = *v8;
    }

    v27 = *__error();
    v28 = 136315394;
    *v29 = v8;
    *&v29[8] = 1024;
    *&v29[10] = v27;
    v25 = "IndexWriterImpl::end_txn : failed to close index directory @ %s : %{darwin.errno}d";
    goto LABEL_65;
  }

LABEL_56:
  *(v1 + 528) = 0;
LABEL_24:
  v14 = skit::internal::get_logging_context(void)::logger;
  result = os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO);
  if (result)
  {
    v16 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v16 = *v16;
    }

    v28 = 68158210;
    *v29 = 16;
    *&v29[4] = 2096;
    *&v29[6] = v1;
    *&v29[14] = 2082;
    *&v29[16] = v16;
    _os_log_impl(&dword_2998C6000, v14, OS_LOG_TYPE_INFO, "IndexWriterImpl::end_txn : completed transaction %{uuid_t}.16P @ %{public}s", &v28, 0x1Cu);
    return 0;
  }

  return result;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [15],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2998D2FF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::set_dp_class(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((a2 - 8) <= 0xFFFFFFF6)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v4 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_fault_impl(&dword_2998C6000, v4, OS_LOG_TYPE_FAULT, "KvStore : invalid protection class %d", v5, 8u);
    }
  }

  *(a1 + 156) = a2;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::calculate_checksums(uint64_t result)
{
  if (*(result + 162) == 1)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      v3 = *(result + 32);
      v4 = v3 >= 0xC;
      v5 = v3 - 12;
      if (v4)
      {
        if (v5)
        {
          v6 = (v2 + 12);
          v7 = -1;
          do
          {
            v8 = *v6++;
            v7 = crc32_tab[(v8 ^ v7)] ^ (v7 >> 8);
            --v5;
          }

          while (v5);
          v9 = ~v7;
        }

        else
        {
          v9 = -1;
        }

        result = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(result);
        if (!result)
        {
          v10 = *(v1 + 112);
          if (v10)
          {
            v11 = *(v1 + 120);
            if (v11)
            {
              v12 = -1;
              do
              {
                v13 = *v10++;
                v12 = crc32_tab[(v13 ^ v12)] ^ (v12 >> 8);
                --v11;
              }

              while (v11);
              LODWORD(v10) = ~v12;
            }

            else
            {
              LODWORD(v10) = -1;
            }
          }

          v14 = *(v1 + 24);
          *(v14 + 4) = v9;
          *(v14 + 8) = v10;
          *(v1 + 162) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::rehash(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 20) >= (*(v2 + 28) * a2))
  {
    return 0;
  }

  v4 = *(v2 + 16);
  v5 = *(a1 + 152);
  if (v4 >= v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (a2 + 63) >> 6;
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a1, *(a1 + 8));
  }

  else
  {
    v28 = *a1;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__replacement.__pn_, ".tmp");
  std::__fs::filesystem::path::replace_extension(&v28, &__replacement);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v28;
  }

  else
  {
    v9 = v28.__r_.__value_.__r.__words[0];
  }

  v10 = open_dprotected_np(v9, 1538, *(a1 + 156), 0, *(a1 + 160));
  v11 = v10;
  v12 = (v7 << 9) | 0x28;
  if (v10 == -1)
  {
    v14 = 0;
LABEL_32:
    close(v11);
    goto LABEL_33;
  }

  if (ftruncate(v10, (v7 << 9) | 0x28))
  {
    v14 = 0;
  }

  else
  {
    v15 = mmap(0, (v7 << 9) | 0x28, 3, *(a1 + 136) | 1u, v11, 0);
    v14 = v15;
    if (v15 != -1 && !madvise(v15, (v7 << 9) | 0x28, 1))
    {
      skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::KvTableImpl(v14, v7);
      v16 = *(a1 + 24);
      if (*(v16 + 16))
      {
        v17 = 0;
        v18 = (v16 + 296);
        do
        {
          v19 = 64;
          v20 = v18;
          do
          {
            v21 = *(v20 - 64);
            if (v21 != -2)
            {
              if (v21 == -1)
              {
                break;
              }

              __dmb(9u);
              skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::insert_offset(v14, v21, *v20);
            }

            ++v20;
            --v19;
          }

          while (v19);
          ++v17;
          v18 += 128;
        }

        while (v17 < *(v16 + 16));
        v16 = *(a1 + 24);
      }

      *(v14 + 12) = *(v16 + 12);
      *(v14 + 20) = *(v16 + 20);
      if (!close(v11))
      {
        munmap(*(a1 + 24), *(a1 + 32));
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v28;
        }

        else
        {
          v25 = v28.__r_.__value_.__r.__words[0];
        }

        v26 = a1;
        if (*(a1 + 23) < 0)
        {
          v26 = *a1;
        }

        rename(v25, v26, v24);
        v8 = 0;
        *(a1 + 24) = v14;
        *(a1 + 32) = v12;
        *(a1 + 162) = 1;
        goto LABEL_39;
      }
    }
  }

  if (v11)
  {
    goto LABEL_32;
  }

LABEL_33:
  if ((v14 + 1) >= 2)
  {
    munmap(v14, v12);
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v28;
  }

  else
  {
    v22 = v28.__r_.__value_.__r.__words[0];
  }

  remove(v22, v13);
  v8 = 0xFFFFFFFFLL;
LABEL_39:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_2998D3498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::put(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 24);
  if (v3)
  {
    if ((v6 = a1, (v7 = *(v3 + 16) << 6) != 0) && (*(v3 + 28) * v7) >= (*(v3 + 20) + 1) || (a1 = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::rehash(a1, (v7 + (v7 >> 1)) | 1), !a1))
    {
      v8 = *(a2 + 8);
      v9 = (2 * v8 + 8);
      MEMORY[0x2A1C7C4A8](a1, a2);
      v10 = &v19[-((v9 + 15) & 0x1FFFFFFF0)];
      bzero(v10, v9);
      v12 = *a2;
      v10[2] = v8;
      *v10 = *(a3 + 8) + *(a3 + 24) + *(a3 + 40) + 2 * v8 + 8;
      if (v8)
      {
        v11 = memmove(v10 + 3, v12, 2 * v8);
      }

      v10[v8 + 3] = 0;
      if (*(v6 + 72) + *v10 <= *(v6 + 80))
      {
        MEMORY[0x2A1C7C4A8](v11, v12);
        *&v19[-64] = v10;
        *&v19[-56] = v9;
        v13 = *(a3 + 16);
        *&v19[-48] = *a3;
        *&v19[-32] = v13;
        *&v19[-16] = *(a3 + 32);
        skit::internal::BlobFile::append(v19, (v6 + 40), &v19[-64], 4);
        if (!v21)
        {
          v14 = *(v6 + 24);
          v15 = skit::internal::murmur3_32(*a2, 2 * *(a2 + 8), *(v14 + 12));
          v16 = v20;
          if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::insert_offset(v14, v15 & 0x7FFFFFFF, *(v14 + 24)))
          {
            result = 0;
            v18.i32[0] = 1;
            v18.i32[1] = v16;
            *(v14 + 20) = vadd_s32(*(v14 + 20), v18);
            *(v6 + 162) = 1;
            return result;
          }

          skit::internal::BlobFile::resize((v6 + 40), *(v6 + 72) - v16);
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::insert_offset(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = a2 - a2 / *(a1 + 16) * *(a1 + 16);
  while (1)
  {
    v4 = (a1 + 40 + (v3 << 9));
    v5 = atomic_load(v4);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v6 = 0;
    while (v6 != 63)
    {
      v7 = atomic_load((a1 + 44 + (v3 << 9) + 4 * v6++));
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }
    }

    v3 = (v3 + 1) % *(a1 + 16);
    if (v3 == a2 - a2 / *(a1 + 16) * *(a1 + 16))
    {
      return 0;
    }
  }

  v6 = 0;
LABEL_11:
  v9 = &v4[v6];
  v10 = atomic_load(v9);
  if (v6 != 63 && v10 == -1)
  {
    v4[(v6 + 1)] = -1;
  }

  v9[64] = a3;
  __dmb(0xBu);
  *v9 = a2;
  return 1;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::flush(uint64_t a1, char a2)
{
  v3 = a1;
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 24) && (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::calculate_checksums(a1), msync(*(v3 + 24), *(v3 + 32), 1)))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v5 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      v6 = *__error();
      v7 = 136446466;
      v8 = v3;
      v9 = 1024;
      v10 = v6;
      _os_log_error_impl(&dword_2998C6000, v5, OS_LOG_TYPE_ERROR, "BlobFile::resize : msync for kv table file failed @ %{public}s : %{darwin.errno}d", &v7, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  else if (skit::internal::BlobFile::flush((v3 + 40), a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t skit::internal::MemMetaStore::write(skit::internal::MemMetaStore *this, std::__fs::filesystem::path *a2, int a3, uint64_t a4)
{
  v6 = a2;
  v54 = *MEMORY[0x29EDCA608];
  v51.iov_base = this;
  v51.iov_len = 48;
  v8 = *(this + 7) - *(this + 6);
  v52 = *(this + 6);
  v53 = v8;
  std::string::append(&a2->__pn_, ".ms", 3uLL);
  if (SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, v6->__pn_.__r_.__value_.__l.__data_, v6->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = v6->__pn_;
  }

  v43 = *&pn.__r_.__value_.__l.__data_;
  v44 = pn.__r_.__value_.__r.__words[2];
  v45 = -1;
  v46 = xmmword_2998EB7E0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  if ((skit::internal::BlobFile::open(&v43, 1538, a3, a4) & 0x80000000) != 0)
  {
    goto LABEL_48;
  }

  skit::internal::BlobFile::append(&__replacement, &v43, &v51, 2);
  if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x80000000) != 0 || (skit::internal::BlobFile::flush(&v43, 0) & 0x80000000) != 0 || (skit::internal::BlobFile::close(&v43) & 0x80000000) != 0)
  {
    goto LABEL_48;
  }

  if (!*(*(this + 11) + 8))
  {
LABEL_18:
    v15 = 0;
    goto LABEL_53;
  }

  v40 = ".xid";
  v41 = 4;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__replacement.__pn_, &v40);
  std::__fs::filesystem::path::replace_extension(v6, &__replacement);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if ((v6->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v6->__pn_.__r_.__value_.__r.__words[0];
  }

  v11 = open_dprotected_np(v10, 1538, a3, 0, a4);
  v12 = v11;
  if (v11 < 0)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v16 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v17 = SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]);
    v18 = v6->__pn_.__r_.__value_.__r.__words[0];
    v19 = __error();
    if (v17 >= 0)
    {
      v20 = v6;
    }

    else
    {
      v20 = v18;
    }

    v21 = *v19;
    LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = 136446466;
    *(__replacement.__pn_.__r_.__value_.__r.__words + 4) = v20;
    WORD2(__replacement.__pn_.__r_.__value_.__r.__words[1]) = 1024;
    *(&__replacement.__pn_.__r_.__value_.__r.__words[1] + 6) = v21;
    v22 = "FlatSet::write : file open failed @ %{public}s : %{darwin.errno}d";
    goto LABEL_47;
  }

  v13 = *(this + 11);
  v14 = (336 * v13[1] + 16);
  if (write(v11, v13, v14) != v14)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v16 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v23 = SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]);
    v24 = v6->__pn_.__r_.__value_.__r.__words[0];
    v25 = __error();
    if (v23 >= 0)
    {
      v26 = v6;
    }

    else
    {
      v26 = v24;
    }

    v27 = *v25;
    LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = 136446466;
    *(__replacement.__pn_.__r_.__value_.__r.__words + 4) = v26;
    WORD2(__replacement.__pn_.__r_.__value_.__r.__words[1]) = 1024;
    *(&__replacement.__pn_.__r_.__value_.__r.__words[1] + 6) = v27;
    v22 = "FlatSet::write : failed to write table to %{public}s : %{darwin.errno}d";
    goto LABEL_47;
  }

  if (fsync(v12))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v16 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v28 = SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]);
    v29 = v6->__pn_.__r_.__value_.__r.__words[0];
    v30 = __error();
    if (v28 >= 0)
    {
      v31 = v6;
    }

    else
    {
      v31 = v29;
    }

    v32 = *v30;
    LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = 136446466;
    *(__replacement.__pn_.__r_.__value_.__r.__words + 4) = v31;
    WORD2(__replacement.__pn_.__r_.__value_.__r.__words[1]) = 1024;
    *(&__replacement.__pn_.__r_.__value_.__r.__words[1] + 6) = v32;
    v22 = "FlatSet::write : failed on file flush %{public}s : %{darwin.errno}d";
    goto LABEL_47;
  }

  if (!close(v12))
  {
    goto LABEL_18;
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v16 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    v33 = SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]);
    v34 = v6->__pn_.__r_.__value_.__r.__words[0];
    v35 = __error();
    if (v33 >= 0)
    {
      v36 = v6;
    }

    else
    {
      v36 = v34;
    }

    v37 = *v35;
    LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = 136446466;
    *(__replacement.__pn_.__r_.__value_.__r.__words + 4) = v36;
    WORD2(__replacement.__pn_.__r_.__value_.__r.__words[1]) = 1024;
    *(&__replacement.__pn_.__r_.__value_.__r.__words[1] + 6) = v37;
    v22 = "FlatSet::write : failed on file close %{public}s : %{darwin.errno}d";
LABEL_47:
    _os_log_error_impl(&dword_2998C6000, v16, OS_LOG_TYPE_ERROR, v22, &__replacement, 0x12u);
  }

LABEL_48:
  skit::internal::BlobFile::clear(&v43, v9);
  v40 = ".xid";
  v41 = 4;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__replacement.__pn_, &v40);
  std::__fs::filesystem::path::replace_extension(v6, &__replacement);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = v6->__pn_.__r_.__value_.__r.__words[0];
  }

  remove(v6, v38);
  v15 = 0xFFFFFFFFLL;
LABEL_53:
  skit::internal::BlobFile::~BlobFile(&v43);
  return v15;
}

void sub_2998D3D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  skit::internal::BlobFile::~BlobFile(va);
  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(std::string *a1, uint64_t a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append[abi:ne200100]<char const*,0>(a1, *a2, (*a2 + *(a2 + 8)));
  return a1;
}

void sub_2998D3E24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ***std::unique_ptr<skit::internal::IndexDiskImplV2>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    skit::internal::IndexDiskImplV2::~IndexDiskImplV2(v2);
    MEMORY[0x29C2A3200]();
  }

  return a1;
}

void skit::internal::IndexDiskImplV2::~IndexDiskImplV2(void **this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close(this))
  {
    v2 = "term index";
  }

  else
  {
    if (!skit::internal::DiskMetaStore::close((this + 21)))
    {
      goto LABEL_9;
    }

    v2 = "meta store";
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v3 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    v4 = 136446210;
    v5 = v2;
    _os_log_error_impl(&dword_2998C6000, v3, OS_LOG_TYPE_ERROR, "IndexDiskImplV2::close : %{public}s failed", &v4, 0xCu);
  }

LABEL_9:
  skit::internal::DiskMetaStore::close((this + 21));
  skit::internal::MmapFile::~MmapFile((this + 36));
  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100]((this + 28), 0);
  skit::internal::MmapFile::~MmapFile((this + 24));
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::~KvStore(this);
}

void sub_2998D3FEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t skit::internal::DiskMetaStore::close(skit::internal::DiskMetaStore *this)
{
  v3 = (this + 24);
  v2 = *(this + 3);
  if (v2)
  {
    v4 = munmap(v2, *(this + 4));
  }

  else
  {
    v4 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](this + 56, 0);
  v5 = *(this + 15);
  if (v5)
  {
    LODWORD(v5) = munmap(v5, *(this + 16));
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  result = v5 | v4;
  *(this + 5) = 0;
  return result;
}

void skit::internal::MmapFile::~MmapFile(skit::internal::MmapFile *this)
{
  v2 = *this;
  if (v2)
  {
    munmap(v2, *(this + 1));
  }

  *this = 0;
  *(this + 1) = 0;
}

uint64_t skit::internal::remove_all(const std::__fs::filesystem::path *this, const char *a2)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  if (result == 20)
  {

    return remove(this, v4);
  }

  return result;
}

uint64_t skit::internal::anonymous namespace::remove_cb(skit::internal::_anonymous_namespace_ *this, const char *a2, const stat *a3, int a4, FTW *a5)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 2) & 0x92) == 0)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v6 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = this;
      v7 = "remove_all : file does not have write permission : %s";
      goto LABEL_17;
    }

    return 0;
  }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v10 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
        {
          v14 = 136446210;
          v15 = this;
          _os_log_fault_impl(&dword_2998C6000, v10, OS_LOG_TYPE_FAULT, "remove_all : visiting directory in pre-order traversal : %{public}s", &v14, 0xCu);
        }
      }

      else if (a3 == 2)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v6 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          v14 = 136446210;
          v15 = this;
          v7 = "remove_all : directory cannot be read, skipping removal : %{public}s";
LABEL_17:
          v8 = v6;
          v9 = 12;
LABEL_18:
          _os_log_error_impl(&dword_2998C6000, v8, OS_LOG_TYPE_ERROR, v7, &v14, v9);
          return 0;
        }
      }

      return 0;
    }

    goto LABEL_19;
  }

  if ((a3 - 5) < 2)
  {
LABEL_19:
    if (!unlink(this))
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (a3 == 3)
  {
    if (!rmdir(this))
    {
      return 0;
    }

LABEL_26:
    if (*__error() != 2)
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v12 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        v13 = *__error();
        v14 = 136446466;
        v15 = this;
        v16 = 1024;
        v17 = v13;
        v7 = "remove_all : directory cannot be read, skipping removal : %{public}s : %{darwin.errno}d";
        v8 = v12;
        v9 = 18;
        goto LABEL_18;
      }
    }

    return 0;
  }

  if (a3 == 4)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v6 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446210;
      v15 = this;
      v7 = "remove_all : directory cannot be read, skipping removal : %{public}s";
      goto LABEL_17;
    }
  }

  return 0;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,0>(std::string_view::value_type *a1, std::__fs::filesystem::path::__string_view a2, std::__fs::filesystem::path *a3)
{
  size = a2.__size_;
  data = a2.__data_;
  v7 = a2.__data_;
  a2.__data_ = a1;
  v8 = std::__fs::filesystem::operator<[abi:ne200100](v7, a2);
  v35.__data_ = data;
  v9 = std::__fs::filesystem::operator<[abi:ne200100](size, v35);
  if (v8)
  {
    if (v9)
    {
      v11 = *(a1 + 2);
      v12 = *a1;
      v13 = size->__pn_.__r_.__value_.__r.__words[2];
      *a1 = *&size->__pn_.__r_.__value_.__l.__data_;
      *(a1 + 2) = v13;
LABEL_9:
      *&size->__pn_.__r_.__value_.__l.__data_ = v12;
      size->__pn_.__r_.__value_.__r.__words[2] = v11;
      goto LABEL_10;
    }

    v20 = *(a1 + 2);
    v21 = *a1;
    v22 = data->__pn_.__r_.__value_.__r.__words[2];
    *a1 = *&data->__pn_.__r_.__value_.__l.__data_;
    *(a1 + 2) = v22;
    *&data->__pn_.__r_.__value_.__l.__data_ = v21;
    data->__pn_.__r_.__value_.__r.__words[2] = v20;
    v10.__data_ = data;
    if (std::__fs::filesystem::operator<[abi:ne200100](size, v10))
    {
      v11 = data->__pn_.__r_.__value_.__r.__words[2];
      v12 = *&data->__pn_.__r_.__value_.__l.__data_;
      v23 = size->__pn_.__r_.__value_.__r.__words[2];
      *&data->__pn_.__r_.__value_.__l.__data_ = *&size->__pn_.__r_.__value_.__l.__data_;
      data->__pn_.__r_.__value_.__r.__words[2] = v23;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v14 = data->__pn_.__r_.__value_.__r.__words[2];
    v15 = *&data->__pn_.__r_.__value_.__l.__data_;
    v16 = size->__pn_.__r_.__value_.__r.__words[2];
    *&data->__pn_.__r_.__value_.__l.__data_ = *&size->__pn_.__r_.__value_.__l.__data_;
    data->__pn_.__r_.__value_.__r.__words[2] = v16;
    *&size->__pn_.__r_.__value_.__l.__data_ = v15;
    size->__pn_.__r_.__value_.__r.__words[2] = v14;
    v10.__data_ = a1;
    if (std::__fs::filesystem::operator<[abi:ne200100](data, v10))
    {
      v17 = *(a1 + 2);
      v18 = *a1;
      v19 = data->__pn_.__r_.__value_.__r.__words[2];
      *a1 = *&data->__pn_.__r_.__value_.__l.__data_;
      *(a1 + 2) = v19;
      *&data->__pn_.__r_.__value_.__l.__data_ = v18;
      data->__pn_.__r_.__value_.__r.__words[2] = v17;
    }
  }

LABEL_10:
  v10.__data_ = size;
  if (std::__fs::filesystem::operator<[abi:ne200100](a3, v10))
  {
    v26 = size->__pn_.__r_.__value_.__r.__words[2];
    v27 = *&size->__pn_.__r_.__value_.__l.__data_;
    v28 = a3->__pn_.__r_.__value_.__r.__words[2];
    *&size->__pn_.__r_.__value_.__l.__data_ = *&a3->__pn_.__r_.__value_.__l.__data_;
    size->__pn_.__r_.__value_.__r.__words[2] = v28;
    *&a3->__pn_.__r_.__value_.__l.__data_ = v27;
    a3->__pn_.__r_.__value_.__r.__words[2] = v26;
    v24.__data_ = data;
    if (std::__fs::filesystem::operator<[abi:ne200100](size, v24))
    {
      v30 = data->__pn_.__r_.__value_.__r.__words[2];
      v31 = *&data->__pn_.__r_.__value_.__l.__data_;
      v32 = size->__pn_.__r_.__value_.__r.__words[2];
      *&data->__pn_.__r_.__value_.__l.__data_ = *&size->__pn_.__r_.__value_.__l.__data_;
      data->__pn_.__r_.__value_.__r.__words[2] = v32;
      *&size->__pn_.__r_.__value_.__l.__data_ = v31;
      size->__pn_.__r_.__value_.__r.__words[2] = v30;
      v29.__data_ = a1;
      if (std::__fs::filesystem::operator<[abi:ne200100](data, v29))
      {
        v33 = *(a1 + 2);
        result = *a1;
        v34 = data->__pn_.__r_.__value_.__r.__words[2];
        *a1 = *&data->__pn_.__r_.__value_.__l.__data_;
        *(a1 + 2) = v34;
        *&data->__pn_.__r_.__value_.__l.__data_ = result;
        data->__pn_.__r_.__value_.__r.__words[2] = v33;
      }
    }
  }

  return result;
}

float skit::entity_token_wgt(skit *this)
{
  if (this > 0x10)
  {
    return ((this * 4.0) + -1.0) / (this + (this * this));
  }

  else
  {
  }
}

void skit::FieldSpanMatcherV3::FieldSpanMatcherV3(uint64_t **a1, uint64_t a2, __int128 **a3, char a4)
{
  v4 = a4;
  std::allocate_shared[abi:ne200100]<skit::internal::FieldSpanMatcherImpl,std::allocator<skit::internal::FieldSpanMatcherImpl>,std::basic_string<char16_t> &,skit::TokenStream &,BOOL &,0>(a1, a2, a3, &v4);
}

{
  v4 = a4;
  std::allocate_shared[abi:ne200100]<skit::internal::FieldSpanMatcherImpl,std::allocator<skit::internal::FieldSpanMatcherImpl>,std::basic_string<char16_t> &,skit::TokenStream &,BOOL &,0>(a1, a2, a3, &v4);
}

void sub_2998D4AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, char *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char *a27)
{
  skit::SmallVector<skit::AliasSpanMatch,4u,true>::~SmallVector(v28 + 142);
  skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::~SmallVector((v28 + 88));
  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(v28 + 76);
  v31 = *(v27 + 672);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v27 + 640);
  if (v32 != a10)
  {
    free(v32);
  }

  if (*v29 != a11)
  {
    free(*v29);
  }

  if (*(v27 + 95) < 0)
  {
    operator delete(*v28);
  }

  if (*(v27 + 71) < 0)
  {
    operator delete(*(v28 - 3));
  }

  a27 = a13;
  std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27 = &a15;
  std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](&a27);
  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v33);
  _Unwind_Resume(a1);
}

void std::basic_string<char16_t>::__init_copy_ctor_external(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __sz)
{
  if (__sz > 0xA)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      if ((__sz | 3) == 0xB)
      {
        v3 = 13;
      }

      else
      {
        v3 = (__sz | 3) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v3);
    }

    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 2 * __sz + 2;

  memmove(this, __s, v4);
}

void std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v6 = *(v4 - 25);
        v4 -= 6;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<skit::Token>,skit::Token*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 25);
      v3 -= 6;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Token>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF6F910, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__shared_ptr_emplace<skit::internal::FieldSpanMatcherImpl>::__on_zero_shared(uint64_t a1)
{
  skit::SmallVector<skit::AliasSpanMatch,4u,true>::~SmallVector((a1 + 1208));
  skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::~SmallVector(a1 + 776);
  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector((a1 + 680));
  v2 = *(a1 + 672);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 640);
  if (v3 != (a1 + 656))
  {
    free(v3);
  }

  v4 = *(a1 + 96);
  if (v4 != (a1 + 112))
  {
    free(v4);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v5 = (a1 + 24);
  std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void **skit::SmallVector<skit::AliasSpanMatch,4u,true>::~SmallVector(void **a1)
{
  skit::SmallVector<skit::AliasSpanMatch,4u,true>::_destroy(*a1, *(a1 + 2));
  if (*a1 != a1 + 2)
  {
    free(*a1);
  }

  return a1;
}

uint64_t skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 104 * v3;
    do
    {
      v2 = (skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(v2) + 104);
      v4 -= 104;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void **skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(void **a1)
{
  skit::SmallVector<skit::AliasMatch,2u,true>::_destroy(*a1, *(a1 + 2));
  if (*a1 != a1 + 2)
  {
    free(*a1);
  }

  return a1;
}

void skit::SmallVector<skit::AliasMatch,2u,true>::_destroy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = 40 * a2;
    do
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      a1 += 40;
      v3 -= 40;
    }

    while (v3);
  }
}

uint64_t skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 != (a1 + 88))
  {
    free(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void skit::SmallVector<skit::AliasSpanMatch,4u,true>::_destroy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = 72 * a2;
    do
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      a1 += 72;
      v3 -= 72;
    }

    while (v3);
  }
}

void std::__shared_ptr_emplace<skit::internal::FieldSpanMatcherImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F93B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2A3200);
}

uint64_t skit::FieldSpanMatcherV3::query_token_stream_begin(skit::FieldSpanMatcherV3 *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV3::query_token_stream_end(skit::FieldSpanMatcherV3 *this)
{
  if (*this)
  {
    return *(*this + 8);
  }

  else
  {
    return 0;
  }
}

{
  if (*this)
  {
    return *(*this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV3::alias_span_matcher(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8[10] = *MEMORY[0x29EDCA608];
  v7[0] = v8;
  v7[1] = 0x200000000;
  v6 = *a2;
  *a2 = 0uLL;
  v4 = skit::FieldSpanMatcherV3::alias_span_matcher(a1, &v6, a3, a4, v7, 0);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(v7);
  return v4;
}

void sub_2998D52F4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(va);
  _Unwind_Resume(a1);
}

uint64_t skit::FieldSpanMatcherV3::alias_span_matcher(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  v6 = *a1;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a2;
  *a2 = 0uLL;
  v7 = skit::internal::FieldSpanMatcherImpl::alias_span_matcher(v6, &v9, a3, a4, a5, a6);
  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  return v7;
}

void sub_2998D5370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void skit::FieldSpanMatcherV3::alias_filters(uint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  if (v3)
  {
    skit::internal::FieldSpanMatcherImpl::alias_filters(v3, a2, a3);
  }
}

void skit::FieldSpanMatcherV3::clear_alias_span_matcher(skit::internal::FieldSpanMatcherImpl **this)
{
  v1 = *this;
  if (v1)
  {
    skit::internal::FieldSpanMatcherImpl::clear_alias_span_matcher(v1);
  }
}

uint64_t skit::FieldSpanMatcherV3::query_alias_matches_begin(skit::FieldSpanMatcherV3 *this)
{
  if (*this)
  {
    return *(*this + 752);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV3::query_alias_matches_end(skit::FieldSpanMatcherV3 *this)
{
  if (*this)
  {
    return *(*this + 752) + 104 * *(*this + 760);
  }

  else
  {
    return 0;
  }
}

void **skit::FieldSpanMatcherV3::match(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8[10] = *MEMORY[0x29EDCA608];
  v7[0] = v8;
  v7[1] = 0x200000000;
  v5 = *a1;
  if (v5)
  {
    skit::internal::FieldSpanMatcherImpl::match(v5, a2, a3, v7, 0, a4, a5);
  }

  return skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(v7);
}

void sub_2998D5470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(va);
  _Unwind_Resume(a1);
}

void skit::FieldSpanMatcherV3::match(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a1;
  if (v7)
  {
    skit::internal::FieldSpanMatcherImpl::match(v7, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t skit::FieldSpanMatcherV3::merge_field(uint64_t *a1, int32x4_t *a2, int32x4_t *a3, char a4)
{
  if (*a1)
  {
    if ((a4 & 1) == 0)
    {
      *a2 = vaddq_s32(*a2, a3[2]);
    }

    if (a3[3].i32[2])
    {
      v4 = a2[1].u32[2];
      if (v4 == a2[1].i32[3])
      {
        skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_reserve_more(&a2[1], v4 + (v4 >> 1) + 1);
      }

      skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>::MergedFieldMatchImpl();
    }
  }

  return 0;
}

void skit::FieldSpanMatcherV3::finalize(uint64_t **result, uint64_t a2)
{
  v2 = *result;
  if (*result && *(a2 + 44))
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    if (*v2 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v6 = *(v4 + 28) + v6 - *(v4 + 24);
        v4 += 48;
      }

      while (v4 != v5);
    }

    if (*(a2 + 56))
    {
      v7 = *(a2 + 48);
      do
      {
        v8 = v7[1] - *v7;
        if (v8 < 0x34)
        {
          v9 = 4;
        }

        else
        {
          v9 = 5;
        }

        if (v8 < 0x18)
        {
          v9 = 3;
        }

        if (v8 < 0xB)
        {
          v9 = 2;
        }

        if (v8 < 5)
        {
          v9 = 1;
        }

        if (v8 >= 3)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV3>(v2, v7, *(a2 + 44), v6);
        if (v8 > 2 || (*(v2 + 602) & 1) != 0 || v7[1] - *v7 <= v8 || v7[2] <= v10)
        {
          v7 += 16;
        }

        else
        {
          skit::SmallVector<skit::SpanMatchV3,4u,true>::erase(a2 + 48, v7);
        }
      }

      while (v7 != (*(a2 + 48) + (*(a2 + 56) << 6)));
    }
  }
}

{
  v2 = *result;
  if (*result)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    if (*v2 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v6 = *(v4 + 28) + v6 - *(v4 + 24);
        v4 += 48;
      }

      while (v4 != v5);
    }

    if (*(a2 + 24))
    {
      v7 = *(a2 + 16);
      while (1)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = 0;
          v10 = 112 * v8;
          v11 = (*v7 + 44);
          do
          {
            v12 = *v11;
            v11 += 28;
            v9 += v12;
            v10 -= 112;
          }

          while (v10);
        }

        else
        {
          v9 = 0;
        }

        v13 = *(a2 + 12) <= v9 ? v9 : *(a2 + 12);
        if (!v13)
        {
          break;
        }

        v14 = *(v7 + 492) - *(v7 + 488);
        if (v14 < 0x34)
        {
          v15 = 4;
        }

        else
        {
          v15 = 5;
        }

        if (v14 < 0x18)
        {
          v15 = 3;
        }

        if (v14 < 0xB)
        {
          v15 = 2;
        }

        if (v14 < 5)
        {
          v15 = 1;
        }

        if (v14 >= 3)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV3>(v2, v7 + 488, v13, v6);
        if ((*(v2 + 602) & 1) != 0 || *(v7 + 492) - *(v7 + 488) <= v14 || *(v7 + 496) <= v16)
        {
          v17 = *(v7 + 8);
          if (v17)
          {
            v18 = 112 * v17;
            v19 = *v7 + 48;
            do
            {
              if (*(v19 - 16))
              {
                skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV3>(v2, v19, *(v19 - 4), v6);
              }

              v19 += 112;
              v18 -= 112;
            }

            while (v18);
          }

          goto LABEL_41;
        }

        skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::erase(a2 + 16, v7);
LABEL_42:
        if (v7 == *(a2 + 16) + 552 * *(a2 + 24))
        {
          return;
        }
      }

      *(v7 + 500) = 0;
LABEL_41:
      v7 += 552;
      goto LABEL_42;
    }
  }
}

uint64_t skit::SmallVector<skit::AliasMatch,2u,true>::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 40 * *(a1 + 8);
  for (i = a2 + 40; i != v4; i += 40)
  {
    v6 = (i - 40);
    if (*(i - 17) < 0)
    {
      operator delete(*v6);
    }

    *v6 = *i;
    v7 = *(i + 24);
    *(i - 24) = *(i + 16);
    *(i + 23) = 0;
    *i = 0;
    *(i - 16) = v7;
    *(i - 8) = *(i + 32);
  }

  if (*(v4 - 17) < 0)
  {
    operator delete(*(v4 - 40));
  }

  --*(a1 + 8);
  return a2;
}

size_t skit::SmallVector<std::tuple<std::basic_string<char16_t>,skit::GroupId>,2u,true>::_reserve_more(__int128 **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(32 * a2, 0x1012040F4512C97uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v13, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 2) = *(v8 + 16);
      *v7 = v9;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      *(v7 + 12) = *(v8 + 24);
      v7 += 2;
      v8 += 32;
    }

    while (v8 != v5 + 32 * v6);
    v10 = 32 * v6;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 32;
      v10 -= 32;
    }

    while (v10);
    v5 = *a1;
  }

  if (v5 != a1 + 2)
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result >> 5;
  return result;
}

void skit::internal::BlobFile::resize(skit::internal::BlobFile *this, off_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!skit::internal::BlobFile::flush_internal_cache(this))
  {
    if (ftruncate(*(this + 6), a2))
    {
      v4 = *__error();
      if (fcntl(*(this + 6), 50, v10) == -1)
      {
        v10[0] = 0;
      }

      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v5 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v7 = v10;
        v8 = 1024;
        v9 = v4;
        _os_log_error_impl(&dword_2998C6000, v5, OS_LOG_TYPE_ERROR, "BlobFile::resize : file truncate failed @ %{public}s : %{darwin.errno}d", buf, 0x12u);
      }
    }

    else
    {
      *(this + 4) = a2;
    }
  }
}

size_t skit::SpanMatchV3::append_alias_id(size_t result, unsigned __int16 a2, int a3)
{
  v3 = result;
  *(result + 24) += a3;
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = &v5[v6];
  if (v6)
  {
    v8 = 2 * v6;
    while (1)
    {
      v9 = *v5;
      if (v9 == a2)
      {
        break;
      }

      if (v9 > a2)
      {
        goto LABEL_7;
      }

      ++v5;
      v8 -= 2;
      if (!v8)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = v6 + 1;
    if ((v6 + 1) <= *(result + 44))
    {
      if (v7 != v5)
      {
        v19 = v7;
        do
        {
          v20 = *--v19;
          *v7 = v20;
          v7 = v19;
        }

        while (v19 != v5);
        v7 = v5;
      }
    }

    else
    {
      v11 = v10 + (v6 >> 1);
      if (v11 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = skit::SmallVector<skit::GroupId,4u,true>::allocate(v12);
      v14 = *(v3 + 32);
      v7 = v13;
      if (v14 != v5)
      {
        do
        {
          v15 = *v14++;
          *v7++ = v15;
        }

        while (v14 != v5);
        v14 = *(v3 + 32);
      }

      v16 = &v14[*(v3 + 40)];
      if (v16 != v5)
      {
        v17 = v7 + 1;
        do
        {
          v18 = *v5++;
          *v17++ = v18;
        }

        while (v5 != v16);
        v14 = *(v3 + 32);
      }

      if (v14 != (v3 + 48))
      {
        free(v14);
      }

      *(v3 + 32) = v13;
      result = malloc_size(v13);
      *(v3 + 44) = result >> 1;
    }

    *(v3 + 40) = v10;
    *v7 = a2;
  }

  return result;
}

void *skit::SmallVector<skit::GroupId,4u,true>::allocate(unsigned int a1)
{
  result = malloc_type_malloc(2 * a1, 0x1000040BDFB0063uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v3, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  return result;
}

size_t skit::SpanMatchV3::merge(size_t this, int32x2_t *a2)
{
  LODWORD(v2) = *this;
  LODWORD(v3) = *(this + 4);
  v4 = a2->u32[1];
  if (a2->i32[0] >= *this)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2->u32[0];
  }

  if (v3 <= v4)
  {
    v3 = v4;
  }

  else
  {
    v3 = v3;
  }

  *this = v2 | (v3 << 32);
  *(this + 8) += a2[1].i32[0];
  *(this + 12) = *&a2[1].i32[1] + *(this + 12);
  *(this + 16) = vadd_s32(*(this + 16), a2[2]);
  *(this + 24) += a2[3].i32[0];
  v5 = a2[5].u32[0];
  if (v5)
  {
    v6 = this;
    if (*(this + 40))
    {
      v7 = a2[4];
      v8 = 2 * v5;
      do
      {
        v9 = *v7++;
        this = skit::SpanMatchV3::append_alias_id(v6, v9, 0);
        v8 -= 2;
      }

      while (v8);
    }

    else if (this != a2)
    {
      v10 = a2[4];
      if (*(this + 44) >= v5)
      {
        v15 = *(this + 32);
        v16 = 2 * v5;
        do
        {
          v17 = *v10++;
          *v15++ = v17;
          v16 -= 2;
        }

        while (v16);
      }

      else
      {
        v11 = skit::SmallVector<skit::GroupId,4u,true>::allocate(a2[5].u32[0]);
        v12 = v11;
        for (i = 0; i != v5; ++i)
        {
          *&v11[i * 2] = v10[i];
        }

        v14 = *(v6 + 32);
        if (v14 != (v6 + 48))
        {
          free(v14);
        }

        *(v6 + 32) = v12;
        this = malloc_size(v12);
        *(v6 + 44) = this >> 1;
      }

      *(v6 + 40) = v5;
    }
  }

  return this;
}

double skit::SpanMatchV3::operator skit::SpanMatchV2@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  *(a2 + 24) = *(a1 + 24);
  return result;
}

BOOL skit::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a2 + 12);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 > v3)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 < v8)
  {
    return 0;
  }

  return *(a1 + 20) > *(a2 + 20);
}

void *skit::operator<<(void *a1, float *a2)
{
  v4 = MEMORY[0x29C2A30A0](a1, *a2);
  v23 = 58;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v23, 1);
  v6 = MEMORY[0x29C2A30A0](v5, *(a2 + 1));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " (", 2);
  v8 = MEMORY[0x29C2A30A0](v7, *(a2 + 2));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") score=", 8);
  v9 = std::ostream::operator<<();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " token_cnt=", 11);
  v11 = MEMORY[0x29C2A30A0](v10, *(a2 + 4));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " stop_word_cnt=", 15);
  v13 = MEMORY[0x29C2A30A0](v12, *(a2 + 5));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " alias_token_cnt=", 17);
  v15 = MEMORY[0x29C2A30A0](v14, *(a2 + 6));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " group_ids={ ", 13);
  v16 = *(a2 + 10);
  if (v16)
  {
    v17 = *(a2 + 4);
    v18 = 2 * v16;
    do
    {
      v19 = *v17++;
      v20 = MEMORY[0x29C2A30B0](a1, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
      v18 -= 2;
    }

    while (v18);
  }

  v22 = 125;
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v22, 1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C2A3070](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C2A3080](v20);
  return a1;
}

void sub_2998D64C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2A3080](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2998D649CLL);
}

void skit::to_string(std::string *a1, uint64_t a2, std::string::size_type a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  skit::to_string(a1, a2, a3);
}

void sub_2998D6574(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 552 * *(a1 + 8);
  v5 = a2 + 552;
  if (a2 + 552 != v4)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 8);
      if (v8)
      {
        v9 = 112 * v8;
        do
        {
          v7 = (skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::~FieldMatchImpl(v7) + 112);
          v9 -= 112;
        }

        while (v9);
        v7 = *v6;
      }

      if (v7 != (v6 + 16))
      {
        free(v7);
      }

      skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::move(v6, v5);
      if (*(v6 + 487) < 0)
      {
        operator delete(*(v6 + 464));
      }

      *(v6 + 464) = *(v5 + 464);
      *(v6 + 480) = *(v5 + 480);
      *(v5 + 487) = 0;
      *(v5 + 464) = 0;
      *(v6 + 488) = *(v5 + 488);
      *(v6 + 500) = *(v5 + 500);
      skit::SmallVector<skit::GroupId,4u,true>::operator=((v6 + 520), v5 + 520);
      *(v6 + 544) = *(v5 + 544);
      v5 += 552;
      v6 += 552;
    }

    while (v5 != v4);
  }

  skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_destroy<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,(void *)0>(v4 - 552);
  --*(a1 + 8);
  return a2;
}

size_t skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_reserve_more(char **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(552 * a2, 0x1032040BBF17678uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v14, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::move(v7, v8);
      v9 = *(v8 + 464);
      *(v7 + 480) = *(v8 + 480);
      *(v7 + 464) = v9;
      *(v8 + 464) = 0;
      *(v8 + 472) = 0;
      *(v8 + 480) = 0;
      v10 = *(v8 + 488);
      *(v7 + 500) = *(v8 + 500);
      *(v7 + 488) = v10;
      skit::SmallVector<skit::GroupId,4u,true>::move(v7 + 520, v8 + 520);
      *(v7 + 544) = *(v8 + 544);
      v8 += 552;
      v7 += 552;
    }

    while (v8 != &v5[69 * v6]);
    v11 = 552 * v6;
    do
    {
      skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_destroy<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,(void *)0>(v5);
      v5 += 69;
      v11 -= 552;
    }

    while (v11);
    v5 = *a1;
  }

  if (v5 != a1 + 2)
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result / 0x228;
  return result;
}

uint64_t skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::~FieldMatchImpl(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != (a1 + 96))
  {
    free(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

skit::SpanMatchV3 *skit::SpanMatchV3::SpanMatchV3(skit::SpanMatchV3 *this, const skit::SpanMatchV3 *a2)
{
  v4 = *a2;
  *(this + 12) = *(a2 + 12);
  *this = v4;
  v5 = *(a2 + 4);
  v6 = *(a2 + 10);
  if (v6 < 5)
  {
    v9 = (this + 48);
    *(this + 4) = this + 48;
    *(this + 10) = v6;
    *(this + 11) = 4;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = skit::SmallVector<skit::GroupId,4u,true>::allocate(*(a2 + 10));
    *(this + 4) = v7;
    v8 = malloc_size(v7);
    v9 = *(this + 4);
    *(this + 10) = v6;
    *(this + 11) = v8 >> 1;
  }

  v10 = 2 * v6;
  do
  {
    v11 = *v5++;
    *v9++ = v11;
    v10 -= 2;
  }

  while (v10);
LABEL_6:
  *(this + 14) = *(a2 + 14);
  return this;
}

uint64_t skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 112 * v3;
    do
    {
      v2 = (skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::~FieldMatchImpl(v2) + 112);
      v4 -= 112;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void *skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::allocate(unsigned int a1)
{
  result = malloc_type_malloc(112 * a1, 0x1032040567AB6A7uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v3, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  return result;
}

skit::SpanMatchV3 *std::uninitialized_copy[abi:ne200100]<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>> const*,skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>*>(skit::SpanMatchV3 *result, skit::SpanMatchV3 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      *(a3 + v6) = *(v5 + v6);
      v8 = (a3 + v6 + 8);
      if (*(v5 + v6 + 31) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(v8, *(v7 + 1), *(v7 + 2));
      }

      else
      {
        v9 = *(v7 + 8);
        *(a3 + v6 + 24) = *(v7 + 3);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      *(a3 + v6 + 32) = *(v7 + 2);
      result = skit::SpanMatchV3::SpanMatchV3((a3 + v6 + 48), (v5 + v6 + 48));
      v6 += 112;
    }

    while (v7 + 112 != a2);
  }

  return result;
}

uint64_t skit::SmallVector<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,8u,true>::_destroy<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>,(void *)0>(uint64_t a1)
{
  v2 = *(a1 + 520);
  if (v2 != (a1 + 536))
  {
    free(v2);
  }

  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  return skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::~SmallVector(a1);
}

uint64_t skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::move(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*a2 == a2 + 16)
  {
    v5 = result + 16;
    *result = result + 16;
    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 112 * v6;
      v9 = *a2;
      do
      {
        *v5 = *v9;
        v10 = *(v9 + 8);
        *(v5 + 24) = *(v9 + 24);
        *(v5 + 8) = v10;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 8) = 0;
        *(v5 + 32) = *(v9 + 32);
        v11 = *(v9 + 48);
        *(v5 + 60) = *(v9 + 60);
        *(v5 + 48) = v11;
        skit::SmallVector<skit::GroupId,4u,true>::move(v5 + 80, v9 + 80);
        *(v5 + 104) = *(v9 + 104);
        v9 += 112;
        v5 += 112;
      }

      while (v9 != v8);
      v12 = 112 * v6;
      do
      {
        result = skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::~FieldMatchImpl(v7);
        v7 += 112;
        v12 -= 112;
      }

      while (v12);
    }

    v4 = (v3 + 12);
  }

  else
  {
    *result = *a2;
    v4 = (a2 + 12);
    *(result + 12) = *(a2 + 12);
    *a2 = a2 + 16;
  }

  *v4 = 4;
  *(v3 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  return result;
}

uint64_t skit::SmallVector<skit::GroupId,4u,true>::move(uint64_t result, uint64_t a2)
{
  if (*a2 == a2 + 16)
  {
    v3 = (result + 16);
    *result = result + 16;
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *a2;
      v6 = 2 * v4;
      do
      {
        v7 = *v5++;
        *v3++ = v7;
        v6 -= 2;
      }

      while (v6);
    }

    v2 = (result + 12);
  }

  else
  {
    *result = *a2;
    v2 = (a2 + 12);
    *(result + 12) = *(a2 + 12);
    *a2 = a2 + 16;
  }

  *v2 = 4;
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  return result;
}

void **skit::SmallVector<skit::GroupId,4u,true>::operator=(void **a1, uint64_t a2)
{
  v5 = a1 + 2;
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  skit::SmallVector<skit::GroupId,4u,true>::move(a1, a2);
  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF6F918, MEMORY[0x29EDC9350]);
}

void std::basic_string<char16_t>::push_back(std::basic_string<char16_t> *this, std::basic_string<char16_t>::value_type __c)
{
  v4 = this;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23) != 10)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      *(&this->__r_.__value_.__s + 23) = (*(&this->__r_.__value_.__s + 23) + 1) & 0x7F;
      goto LABEL_8;
    }

    v5 = 10;
    goto LABEL_5;
  }

  size = this->__r_.__value_.__l.__size_;
  v5 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (size == v5)
  {
LABEL_5:
    std::basic_string<char16_t>::__grow_by(this, v5, 1uLL, v5, v5, v2, v3);
    size = v5;
  }

  v4->__r_.__value_.__l.__size_ = size + 1;
  v4 = v4->__r_.__value_.__r.__words[0];
LABEL_8:
  *(&v4->__r_.__value_.__l.__data_ + 2 * size) = 32;
}

void std::basic_string<char16_t>::__grow_by_and_replace(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __old_cap, std::basic_string<char16_t>::size_type __delta_cap, std::basic_string<char16_t>::size_type __old_sz, std::basic_string<char16_t>::size_type __n_copy, std::basic_string<char16_t>::size_type __n_del, std::basic_string<char16_t>::size_type __n_add, const std::basic_string<char16_t>::value_type *__p_new_stuff)
{
  if (0x7FFFFFFFFFFFFFF6 - __old_cap >= __delta_cap)
  {
    v8 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v8 = 2 * __old_cap;
    }

    if ((v8 | 3) == 0xB)
    {
      v9 = 13;
    }

    else
    {
      v9 = (v8 | 3) + 1;
    }

    v10 = v8 >= 0xB;
    v11 = 11;
    if (v10)
    {
      v11 = v9;
    }

    if (__old_cap > 0x3FFFFFFFFFFFFFF2)
    {
      v12 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
      v12 = v11;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v12);
  }

  std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
}

void std::basic_string<char16_t>::__grow_by(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __old_cap, std::basic_string<char16_t>::size_type __delta_cap, std::basic_string<char16_t>::size_type __old_sz, std::basic_string<char16_t>::size_type __n_copy, std::basic_string<char16_t>::size_type __n_del, std::basic_string<char16_t>::size_type __n_add)
{
  if (0x7FFFFFFFFFFFFFF7 - __old_cap >= __delta_cap)
  {
    v7 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v7 = 2 * __old_cap;
    }

    if ((v7 | 3) == 0xB)
    {
      v8 = 13;
    }

    else
    {
      v8 = (v7 | 3) + 1;
    }

    v9 = v7 >= 0xB;
    v10 = 11;
    if (v9)
    {
      v10 = v8;
    }

    if (__old_cap <= 0x3FFFFFFFFFFFFFF2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v11);
  }

  std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 392 * *(a1 + 8);
  if (a2 + 392 != v4)
  {
    v5 = a2;
    do
    {
      skit::SmallVector<skit::FieldMatchV2,4u,true>::_destroy(*v5, *(v5 + 8));
      if (v5 + 16 != *v5)
      {
        free(*v5);
      }

      skit::SmallVector<skit::FieldMatchV2,4u,true>::move(v5, (v5 + 392));
      if (*(v5 + 359) < 0)
      {
        operator delete(*(v5 + 336));
      }

      *(v5 + 352) = *(v5 + 744);
      *(v5 + 336) = *(v5 + 728);
      *(v5 + 751) = 0;
      *(v5 + 728) = 0;
      v6 = *(v5 + 768);
      *(v5 + 360) = *(v5 + 752);
      *(v5 + 376) = v6;
      v7 = v5 + 784;
      v5 += 392;
    }

    while (v7 != v4);
  }

  skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::_destroy<skit::MergedFieldMatchV2,(void *)0>(v4 - 392);
  --*(a1 + 8);
  return a2;
}

size_t skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::_reserve_more(char **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(392 * a2, 0x10320407C6195B8uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v14, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      skit::SmallVector<skit::FieldMatchV2,4u,true>::move(v7, v8);
      v9 = *(v8 + 21);
      *(v7 + 352) = v8[44];
      *(v7 + 336) = v9;
      v8[42] = 0;
      v8[43] = 0;
      v8[44] = 0;
      v10 = *(v8 + 47);
      *(v7 + 360) = *(v8 + 45);
      *(v7 + 376) = v10;
      v7 += 392;
      v8 += 49;
    }

    while (v8 != &v5[49 * v6]);
    v11 = 392 * v6;
    do
    {
      skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::_destroy<skit::MergedFieldMatchV2,(void *)0>(v5);
      v5 += 49;
      v11 -= 392;
    }

    while (v11);
    v5 = *a1;
  }

  if (v5 != a1 + 2)
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result / 0x188;
  return result;
}

void **skit::SmallVector<skit::FieldMatchV2,4u,true>::~SmallVector(void **a1)
{
  skit::SmallVector<skit::FieldMatchV2,4u,true>::_destroy(*a1, *(a1 + 2));
  if (*a1 != a1 + 2)
  {
    free(*a1);
  }

  return a1;
}

void skit::SmallVector<skit::FieldMatchV2,4u,true>::_destroy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 80 * a2;
    v3 = (a1 + 31);
    do
    {
      if (*v3 < 0)
      {
        operator delete(*(v3 - 23));
      }

      v3 += 80;
      v2 -= 80;
    }

    while (v2);
  }
}

__n128 std::uninitialized_copy[abi:ne200100]<skit::FieldMatchV2 const*,skit::FieldMatchV2*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      *(a3 + v6) = *(a1 + v6);
      v8 = (a3 + v6 + 8);
      if (*(a1 + v6 + 31) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(v8, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v9 = *(v7 + 8);
        *(a3 + v6 + 24) = *(v7 + 24);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v10 = a3 + v6;
      result = *(v7 + 32);
      v12 = *(v7 + 64);
      *(v10 + 48) = *(v7 + 48);
      *(v10 + 64) = v12;
      *(v10 + 32) = result;
      v6 += 80;
    }

    while (v7 + 80 != a2);
  }

  return result;
}

void **skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::_destroy<skit::MergedFieldMatchV2,(void *)0>(uint64_t a1)
{
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  return skit::SmallVector<skit::FieldMatchV2,4u,true>::~SmallVector(a1);
}

void skit::SmallVector<skit::FieldMatchV2,4u,true>::move(uint64_t a1, uint64_t *a2)
{
  if (*a2 == a2 + 2)
  {
    v5 = a1 + 16;
    *a1 = a1 + 16;
    v6 = *(a2 + 2);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 80 * v6;
      v9 = *a2;
      do
      {
        *v5 = *v9;
        v10 = *(v9 + 8);
        *(v5 + 24) = *(v9 + 24);
        *(v5 + 8) = v10;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 8) = 0;
        v11 = *(v9 + 32);
        v12 = *(v9 + 64);
        *(v5 + 48) = *(v9 + 48);
        *(v5 + 64) = v12;
        *(v5 + 32) = v11;
        v5 += 80;
        v9 += 80;
      }

      while (v9 != v8);
      v13 = (v7 + 31);
      v14 = 80 * v6;
      do
      {
        if (*v13 < 0)
        {
          operator delete(*(v13 - 23));
        }

        v13 += 80;
        v14 -= 80;
      }

      while (v14);
    }

    v4 = (a1 + 12);
  }

  else
  {
    *a1 = *a2;
    v4 = a2 + 3;
    *(a1 + 12) = *(a2 + 3);
    *a2 = (a2 + 2);
  }

  *v4 = 4;
  *(a1 + 8) = *(a2 + 2);
  *(a2 + 2) = 0;
}

float skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV2>(uint64_t a1, float *a2, int a3, int a4)
{
  if ((*(a1 + 602) & 1) == 0)
  {
    v4 = *a2;
    v5 = *(a1 + 80);
    if (v4 + 1 < v5)
    {
      v6 = *(a2 + 1);
      if (v6 < v5)
      {
        v7 = *(a2 + 2);
        v8 = v6 - v4;
        v9 = *(a1 + 72);
        v10 = *(*a1 + 48 * *(v9 + 4 * v4) + 24);
        v11 = *(*a1 + 48 * (*(v9 + 4 * v6 + 2) - 1) + 28);
        v12 = v7;
        v13 = v11 - v10 >= v8;
        v14 = v11 - v10 - v8;
        if (v14 != 0 && v13)
        {
          v12 = v14 + v7;
          *(a2 + 2) = v14 + v7;
        }

        *a2 = v10 | (v11 << 32);
        a2[3] = a2[3] + (v12 - v7);
      }
    }
  }

  result = a2[3] / (a4 + a3);
  a2[3] = result;
  return result;
}

float skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV3>(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((*(a1 + 602) & 1) == 0)
  {
    v7 = *(a1 + 80);
    if (*a2 + 1 < v7)
    {
      v8 = *(a2 + 4);
      if (v8 < v7)
      {
        v9 = *(a2 + 8);
        skit::internal::FieldSpanMatcherImpl::align_to_token_boundaries<skit::SpanMatchV3>(*a1, *(a1 + 72), a2, v8 - *a2);
        *(a2 + 12) = *(a2 + 12) + (*(a2 + 8) - v9);
      }
    }
  }

  result = *(a2 + 12) / (a4 + a3);
  *(a2 + 12) = result;
  return result;
}

uint64_t skit::SmallVector<skit::SpanMatchV3,4u,true>::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + (*(a1 + 8) << 6);
  if (a2 + 64 != v4)
  {
    v5 = a2 + 96;
    do
    {
      *(v5 - 96) = *(v5 - 32);
      *(v5 - 84) = *(v5 - 20);
      skit::SmallVector<skit::GroupId,4u,true>::operator=((v5 - 64), v5);
      *(v5 - 40) = *(v5 + 24);
      v6 = v5 + 32;
      v5 += 64;
    }

    while (v6 != v4);
  }

  v7 = *(v4 - 32);
  if (v7 != (v4 - 16))
  {
    free(v7);
  }

  --*(a1 + 8);
  return a2;
}

uint64_t skit::internal::FieldSpanMatcherImpl::align_to_token_boundaries<skit::SpanMatchV3>(uint64_t result, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v4 = *(result + 48 * *(a2 + 4 * *a3) + 24);
  v5 = *(result + 48 * (*(a2 + 4 * a3[1] + 2) - 1) + 28);
  if (v5 - v4 > a4)
  {
    a3[2] += v5 - v4 - a4;
  }

  *a3 = v4 | (v5 << 32);
  return result;
}

BOOL skit::internal::AliasFilter::select_by_group_id(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  if (a2 && *a1 && *a1 != a2)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
    return 1;
  }

  v5 = *(a1 + 1);
  v6 = v4 - 1;
  do
  {
    v7 = *v5++;
    result = v7 == a3;
  }

  while (v7 != a3 && v6-- != 0);
  return result;
}

BOOL skit::internal::anonymous namespace::is_possessive_token(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((HIDWORD(a3) - a3) < 3)
  {
    return 0;
  }

  v3 = a1 + 2 * HIDWORD(a3);
  return *(v3 - 4) == 7536679 || *(v3 - 4) == 7544857;
}

void skit::internal::anonymous namespace::merge_token_spans(uint64_t a1, unint64_t a2, int a3, uint64_t *a4, unsigned int a5)
{
  v6 = *(a4 + 2);
  if (a5)
  {
    v7 = a5;
    v11 = 0;
    do
    {
      if (v7 >= v6)
      {
LABEL_20:
        ++v11;
      }

      else
      {
        v12 = 0;
        v13 = (*a4 + (v11 << 6));
        v14 = v7;
        v27 = v7;
        v28 = v6;
LABEL_5:
        v26 = v12;
        v15 = v6 - v14;
        v16 = v14 << 6;
        do
        {
          v17 = *a4;
          v18 = (*a4 + v16);
          if (v18[4] <= 1u)
          {
            v19 = v13->u32[1];
            v20 = *v18 - v19;
            if (*v18 >= v19)
            {
              if (*v18 == v19)
              {
                goto LABEL_16;
              }

              v21 = v19 - a3;
              if (a2 < v21)
              {
                std::__throw_out_of_range[abi:ne200100]("string_view::substr");
              }

              if (a2 - v21 < v20)
              {
                v20 = a2 - v21;
              }

              v29[0] = a1 + 2 * v21;
              v29[1] = v20;
              if (!skit::is_significant(v29))
              {
                v18 = (v17 + v16);
LABEL_16:
                skit::SpanMatchV3::merge(v18, v13);
                ++v14;
                v12 = 1;
                v7 = v27;
                v6 = v28;
                if (v28 != v14)
                {
                  goto LABEL_5;
                }

                goto LABEL_19;
              }
            }
          }

          ++v14;
          v16 += 64;
          --v15;
        }

        while (v15);
        v7 = v27;
        v6 = v28;
        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_19:
        skit::SmallVector<skit::SpanMatchV3,4u,true>::erase(a4, *a4 + (v11 << 6));
        --v7;
        --v6;
      }
    }

    while (v11 < v7);
    v6 = *(a4 + 2);
  }

  v22 = *a4;
  v23 = (*a4 + (v6 << 6));
  v24 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Lb0EEEvT1_SM_SG_NS_15iterator_traitsISM_E15difference_typeEb(v22, v23, v25, 1);
}

char ***skit::SmallVector<skit::SpanMatchV3,8u,true>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3 << 6;
    v5 = (v2 + 6);
    do
    {
      v6 = *(v5 - 2);
      if (v5 != v6)
      {
        free(v6);
      }

      v5 += 64;
      v4 -= 64;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Lb0EEEvT1_SM_SG_NS_15iterator_traitsISM_E15difference_typeEb(void **a1, void **a2, uint64_t a3, char a4)
{
  v192 = *MEMORY[0x29EDCA608];
  while (2)
  {
    v8 = a2 - 8;
    k = a1;
    while (1)
    {
      while (1)
      {
        a1 = k;
        v10 = (a2 - k) >> 6;
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(k, k + 16, a2 - 16);
              return;
            case 4:
              _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(k, k + 16, k + 32);
              v65 = *(a2 - 16);
              v66 = *(k + 32);
              if (v65 >= v66)
              {
                if (v65 > v66)
                {
                  return;
                }

                v157 = *(a2 - 15);
                v158 = *(k + 33);
                if (v157 <= v158 && (v157 < v158 || *(a2 - 10) >= *(k + 38)))
                {
                  return;
                }
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>((k + 16), (a2 - 8));
              v67 = *(k + 32);
              v68 = *(k + 16);
              if (v67 >= v68)
              {
                if (v67 > v68)
                {
                  return;
                }

                v176 = *(k + 33);
                v177 = *(k + 17);
                if (v176 <= v177 && (v176 < v177 || *(k + 38) >= *(k + 22)))
                {
                  return;
                }
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>((k + 8), (k + 16));
              v69 = *(k + 16);
              if (v69 >= *k)
              {
                if (v69 > *k)
                {
                  return;
                }

                v178 = *(k + 17);
                v179 = *(k + 1);
                if (v178 <= v179 && (v178 < v179 || *(k + 22) >= *(k + 6)))
                {
                  return;
                }
              }

              v61 = k + 8;
LABEL_142:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(k, v61);
              return;
            case 5:
              _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEvT1_SM_SM_SM_SM_SG_(k, k + 16, k + 32, k + 48, a2 - 16);
              return;
          }
        }

        else
        {
          if (v10 < 2)
          {
            return;
          }

          if (v10 == 2)
          {
            v61 = a2 - 8;
            v62 = *(a2 - 16);
            if (v62 >= *k)
            {
              if (v62 > *k)
              {
                return;
              }

              v63 = *(a2 - 15);
              v64 = *(k + 1);
              if (v63 <= v64 && (v63 < v64 || *(a2 - 10) >= *(k + 6)))
              {
                return;
              }
            }

            goto LABEL_142;
          }
        }

        if (v10 <= 23)
        {
          v70 = a2;
          if (a4)
          {
            if (a1 != a2)
            {
              v71 = a1 + 8;
              if (a1 + 8 != a2)
              {
                v72 = 0;
                v73 = a1;
                do
                {
                  v74 = v73;
                  v73 = v71;
                  v75 = *(v74 + 16);
                  if (v75 < *v74 || v75 <= *v74 && ((v78 = *(v73 + 1), v79 = *(v74 + 1), v78 > v79) || v78 >= v79 && *(v73 + 6) < *(v74 + 6)))
                  {
                    v76 = *v73;
                    *&v186[12] = *(v73 + 12);
                    *v186 = v76;
                    if (v73[4] == v73 + 6)
                    {
                      v187 = &v190;
                      v80 = *(v73 + 10);
                      v77 = &v189;
                      if (v80)
                      {
                        v81 = v73[4];
                        v82 = 2 * v80;
                        v83 = &v190;
                        do
                        {
                          v84 = *v81++;
                          *v83 = v84;
                          v83 = (v83 + 2);
                          v82 -= 2;
                        }

                        while (v82);
                        v77 = &v189;
                      }
                    }

                    else
                    {
                      v187 = v73[4];
                      v77 = v73 + 11;
                      v189 = *(v73 + 11);
                      v73[4] = v73 + 6;
                    }

                    *v77 = 4;
                    v188 = *(v73 + 10);
                    *(v73 + 10) = 0;
                    v191 = *(v73 + 14);
                    for (i = v72; ; i -= 64)
                    {
                      v86 = a1 + i;
                      *(v86 + 4) = *(a1 + i);
                      *(v86 + 76) = *(a1 + i + 12);
                      v87 = (a1 + i + 32);
                      skit::SmallVector<skit::GroupId,4u,true>::operator=((a1 + i + 96), v87);
                      *(v86 + 30) = *(v86 + 14);
                      if (!i)
                      {
                        v90 = a1;
                        goto LABEL_170;
                      }

                      v88 = *(v86 - 16);
                      if (*v186 >= v88)
                      {
                        if (*v186 > v88)
                        {
                          break;
                        }

                        v89 = *(a1 + i - 60);
                        if (*&v186[4] <= v89 && (*&v186[4] < v89 || *&v186[24] >= *(a1 + i - 40)))
                        {
                          break;
                        }
                      }
                    }

                    v90 = (a1 + i);
                    v87 = v90 + 4;
LABEL_170:
                    v91 = *v186;
                    *(v90 + 12) = *&v186[12];
                    *v90 = v91;
                    skit::SmallVector<skit::GroupId,4u,true>::operator=(v87, &v187);
                    *(v90 + 14) = v191;
                    if (v187 != &v190)
                    {
                      free(v187);
                    }

                    a2 = v70;
                  }

                  v71 = v73 + 8;
                  v72 += 64;
                }

                while (v73 + 8 != a2);
              }
            }
          }

          else if (a1 != a2)
          {
            for (j = a1 + 8; a1 + 8 != a2; j = a1 + 8)
            {
              v160 = a1;
              a1 = j;
              v161 = *(v160 + 16);
              if (v161 >= *v160)
              {
                if (v161 > *v160)
                {
                  continue;
                }

                v164 = *(a1 + 1);
                v165 = *(v160 + 1);
                if (v164 <= v165 && (v164 < v165 || *(a1 + 6) >= *(v160 + 6)))
                {
                  continue;
                }
              }

              v162 = *a1;
              *&v186[12] = *(a1 + 12);
              *v186 = v162;
              if (a1[4] == a1 + 6)
              {
                v187 = &v190;
                v166 = *(a1 + 10);
                v163 = &v189;
                if (v166)
                {
                  v167 = a1[4];
                  v168 = 2 * v166;
                  v169 = &v190;
                  do
                  {
                    v170 = *v167++;
                    *v169 = v170;
                    v169 = (v169 + 2);
                    v168 -= 2;
                  }

                  while (v168);
                  v163 = &v189;
                }
              }

              else
              {
                v187 = a1[4];
                v163 = a1 + 11;
                v189 = *(a1 + 11);
                a1[4] = a1 + 6;
              }

              *v163 = 4;
              v188 = *(a1 + 10);
              *(a1 + 10) = 0;
              v191 = *(a1 + 14);
              do
              {
                do
                {
                  v171 = v160;
                  *(v160 + 4) = *v160;
                  *(v160 + 76) = *(v160 + 12);
                  skit::SmallVector<skit::GroupId,4u,true>::operator=(v160 + 12, (v160 + 4));
                  v172 = *(v160 - 16);
                  v160 -= 8;
                  *(v160 + 46) = *(v160 + 30);
                  v173 = *v186 > v172;
                }

                while (*v186 < v172);
                if (v173)
                {
                  break;
                }

                v174 = *(v171 - 15);
              }

              while (*&v186[4] > v174 || *&v186[4] >= v174 && *&v186[24] < *(v171 - 10));
              v175 = *v186;
              *(v171 + 12) = *&v186[12];
              *v171 = v175;
              skit::SmallVector<skit::GroupId,4u,true>::operator=(v171 + 4, &v187);
              *(v171 + 14) = v191;
              if (v187 != &v190)
              {
                free(v187);
              }

              a2 = v70;
            }
          }

          return;
        }

        if (!a3)
        {
          if (k != a2)
          {
            v92 = v11 >> 1;
            v93 = v11 >> 1;
            do
            {
              v94 = v93;
              if (v92 >= v93)
              {
                v95 = (2 * v93) | 1;
                v96 = &a1[8 * v95];
                if (2 * v94 + 2 < v10)
                {
                  v97 = *(v96 + 16);
                  if (*v96 < v97 || *v96 <= v97 && ((v117 = *(v96 + 1), v118 = *(v96 + 17), v117 > v118) || v117 >= v118 && *(v96 + 6) < *(v96 + 22)))
                  {
                    v96 += 8;
                    v95 = 2 * v94 + 2;
                  }
                }

                v98 = &a1[8 * v94];
                if (*v96 >= *v98)
                {
                  if (*v96 > *v98 || (v101 = *(v96 + 1), v102 = *(v98 + 1), v101 <= v102) && (v101 < v102 || *(v96 + 6) >= *(v98 + 6)))
                  {
                    v99 = *v98;
                    *&v186[12] = *(v98 + 12);
                    *v186 = v99;
                    if (v98[4] == v98 + 6)
                    {
                      v187 = &v190;
                      v103 = *(v98 + 10);
                      v100 = &v189;
                      if (v103)
                      {
                        v104 = v98[4];
                        v105 = 2 * v103;
                        v106 = &v190;
                        do
                        {
                          v107 = *v104++;
                          *v106 = v107;
                          v106 = (v106 + 2);
                          v105 -= 2;
                        }

                        while (v105);
                        v100 = &v189;
                      }
                    }

                    else
                    {
                      v187 = v98[4];
                      v100 = v98 + 11;
                      v189 = *(v98 + 11);
                      v98[4] = v98 + 6;
                    }

                    *v100 = 4;
                    v188 = *(v98 + 10);
                    *(v98 + 10) = 0;
                    v191 = *(v98 + 14);
                    while (1)
                    {
                      v108 = v96;
                      v109 = *v96;
                      *(v98 + 12) = *(v96 + 12);
                      *v98 = v109;
                      skit::SmallVector<skit::GroupId,4u,true>::operator=(v98 + 4, (v96 + 4));
                      *(v98 + 14) = *(v108 + 14);
                      if (v92 < v95)
                      {
                        break;
                      }

                      v110 = 2 * v95;
                      v95 = (2 * v95) | 1;
                      v96 = &a1[8 * v95];
                      v111 = v110 + 2;
                      if (v111 < v10)
                      {
                        v112 = *(v96 + 16);
                        if (*v96 < v112 || *v96 <= v112 && ((v114 = *(v96 + 1), v115 = *(v96 + 17), v114 > v115) || v114 >= v115 && *(v96 + 6) < *(v96 + 22)))
                        {
                          v96 += 8;
                          v95 = v111;
                        }
                      }

                      if (*v96 < *v186)
                      {
                        break;
                      }

                      v98 = v108;
                      if (*v96 <= *v186)
                      {
                        v113 = *(v96 + 1);
                        if (v113 > *&v186[4])
                        {
                          break;
                        }

                        v98 = v108;
                        if (v113 >= *&v186[4])
                        {
                          v98 = v108;
                          if (*(v96 + 6) < *&v186[24])
                          {
                            break;
                          }
                        }
                      }
                    }

                    v116 = *v186;
                    *(v108 + 12) = *&v186[12];
                    *v108 = v116;
                    skit::SmallVector<skit::GroupId,4u,true>::operator=(v108 + 4, &v187);
                    *(v108 + 14) = v191;
                    if (v187 != &v190)
                    {
                      free(v187);
                    }
                  }
                }
              }

              v93 = v94 - 1;
            }

            while (v94);
            v119 = a1 + 6;
            do
            {
              *&v180[12] = *(a1 + 12);
              *v180 = *a1;
              if (a1[4] == v119)
              {
                v181 = &v184;
                v121 = *(a1 + 10);
                v120 = &v183;
                if (v121)
                {
                  v122 = a1[4];
                  v123 = 2 * v121;
                  v124 = &v184;
                  do
                  {
                    v125 = *v122++;
                    *v124 = v125;
                    v124 = (v124 + 2);
                    v123 -= 2;
                  }

                  while (v123);
                  v120 = &v183;
                }
              }

              else
              {
                v181 = a1[4];
                v183 = *(a1 + 11);
                a1[4] = v119;
                v120 = a1 + 11;
              }

              v126 = a2;
              v127 = 0;
              *v120 = 4;
              v182 = *(a1 + 10);
              *(a1 + 10) = 0;
              v185 = *(a1 + 14);
              v128 = a1;
              do
              {
                v129 = v128;
                v130 = &v128[8 * v127];
                v128 = v130 + 8;
                v131 = 2 * v127;
                v127 = (2 * v127) | 1;
                v132 = v131 + 2;
                if (v132 < v10)
                {
                  v133 = *(v130 + 32);
                  v134 = *(v130 + 16);
                  if (v134 < v133 || v134 <= v133 && ((v136 = *(v130 + 17), v137 = *(v130 + 33), v136 > v137) || v136 >= v137 && *(v130 + 22) < *(v130 + 38)))
                  {
                    v128 = v130 + 16;
                    v127 = v132;
                  }
                }

                v135 = *v128;
                *(v129 + 12) = *(v128 + 12);
                *v129 = v135;
                skit::SmallVector<skit::GroupId,4u,true>::operator=(v129 + 4, (v128 + 4));
                *(v129 + 14) = *(v128 + 14);
              }

              while (v127 <= ((v10 - 2) >> 1));
              v138 = v126 - 8;
              if (v128 == v126 - 8)
              {
                *(v128 + 12) = *&v180[12];
                *v128 = *v180;
                skit::SmallVector<skit::GroupId,4u,true>::operator=(v128 + 4, &v181);
                *(v128 + 14) = v185;
              }

              else
              {
                v139 = *v138;
                *(v128 + 12) = *(v126 - 52);
                *v128 = v139;
                skit::SmallVector<skit::GroupId,4u,true>::operator=(v128 + 4, (v126 - 4));
                *(v128 + 14) = *(v126 - 2);
                *(v126 - 52) = *&v180[12];
                *v138 = *v180;
                skit::SmallVector<skit::GroupId,4u,true>::operator=(v126 - 4, &v181);
                *(v126 - 2) = v185;
                v140 = (v128 - a1 + 64) >> 6;
                v32 = v140 < 2;
                v141 = v140 - 2;
                if (!v32)
                {
                  v142 = v141 >> 1;
                  v143 = &a1[8 * (v141 >> 1)];
                  if (*v143 < *v128 || *v143 <= *v128 && ((v146 = *(v143 + 1), v147 = *(v128 + 1), v146 > v147) || v146 >= v147 && *(v143 + 6) < *(v128 + 6)))
                  {
                    v144 = *v128;
                    *&v186[12] = *(v128 + 12);
                    *v186 = v144;
                    if (v128[4] == v128 + 6)
                    {
                      v145 = &v189;
                      v187 = &v190;
                      v148 = *(v128 + 10);
                      if (v148)
                      {
                        v149 = v128[4];
                        v150 = 2 * v148;
                        v151 = &v190;
                        do
                        {
                          v152 = *v149++;
                          *v151 = v152;
                          v151 = (v151 + 2);
                          v150 -= 2;
                        }

                        while (v150);
                        v145 = &v189;
                      }
                    }

                    else
                    {
                      v187 = v128[4];
                      v145 = v128 + 11;
                      v189 = *(v128 + 11);
                      v128[4] = v128 + 6;
                    }

                    *v145 = 4;
                    v188 = *(v128 + 10);
                    *(v128 + 10) = 0;
                    v191 = *(v128 + 14);
                    while (1)
                    {
                      v153 = v143;
                      v154 = *v143;
                      *(v128 + 12) = *(v143 + 12);
                      *v128 = v154;
                      skit::SmallVector<skit::GroupId,4u,true>::operator=(v128 + 4, (v143 + 4));
                      *(v128 + 14) = *(v153 + 14);
                      if (!v142)
                      {
                        break;
                      }

                      v142 = (v142 - 1) >> 1;
                      v143 = &a1[8 * v142];
                      v128 = v153;
                      if (*v143 >= *v186)
                      {
                        if (*v143 > *v186)
                        {
                          break;
                        }

                        v155 = *(v143 + 1);
                        v128 = v153;
                        if (v155 <= *&v186[4])
                        {
                          if (v155 < *&v186[4])
                          {
                            break;
                          }

                          v128 = v153;
                          if (*(v143 + 6) >= *&v186[24])
                          {
                            break;
                          }
                        }
                      }
                    }

                    v156 = *v186;
                    *(v153 + 12) = *&v186[12];
                    *v153 = v156;
                    skit::SmallVector<skit::GroupId,4u,true>::operator=(v153 + 4, &v187);
                    *(v153 + 14) = v191;
                    if (v187 != &v190)
                    {
                      free(v187);
                    }
                  }
                }
              }

              if (v181 != &v184)
              {
                free(v181);
              }

              a2 = v126 - 8;
              v32 = v10-- <= 2;
            }

            while (!v32);
          }

          return;
        }

        v12 = v10 >> 1;
        v13 = &k[8 * (v10 >> 1)];
        if (v10 < 0x81)
        {
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(&a1[8 * (v10 >> 1)], a1, a2 - 16);
        }

        else
        {
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, &a1[8 * (v10 >> 1)], a2 - 16);
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1 + 16, v13 - 16, a2 - 32);
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1 + 32, &a1[8 * v12 + 8], a2 - 48);
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(v13 - 16, &a1[8 * (v10 >> 1)], &a1[8 * v12 + 8]);
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, &a1[8 * (v10 >> 1)]);
        }

        --a3;
        if (a4)
        {
          break;
        }

        v14 = *(a1 - 16);
        if (v14 < *a1)
        {
          break;
        }

        if (v14 <= *a1)
        {
          v15 = *(a1 - 15);
          v16 = *(a1 + 1);
          if (v15 > v16 || v15 >= v16 && *(a1 - 10) < *(a1 + 6))
          {
            break;
          }
        }

        v38 = *a1;
        *&v186[12] = *(a1 + 12);
        *v186 = v38;
        if (a1[4] == a1 + 6)
        {
          v39 = &v189;
          v187 = &v190;
          v40 = *(a1 + 10);
          if (v40)
          {
            v41 = a1[4];
            v42 = 2 * v40;
            v43 = &v190;
            do
            {
              v44 = *v41++;
              *v43 = v44;
              v43 = (v43 + 2);
              v42 -= 2;
            }

            while (v42);
            v39 = &v189;
          }
        }

        else
        {
          v187 = a1[4];
          v39 = a1 + 11;
          v189 = *(a1 + 11);
          a1[4] = a1 + 6;
        }

        *v39 = 4;
        v188 = *(a1 + 10);
        *(a1 + 10) = 0;
        v191 = *(a1 + 14);
        v45 = *v8;
        if (*v186 < *v8)
        {
          v46 = *&v186[4];
LABEL_82:
          v47 = *&v186[24];
          goto LABEL_83;
        }

        v46 = *&v186[4];
        if (*v186 > v45)
        {
          goto LABEL_91;
        }

        v60 = *(a2 - 15);
        if (*&v186[4] > v60)
        {
          goto LABEL_82;
        }

        if (*&v186[4] < v60)
        {
LABEL_91:
          v47 = *&v186[24];
LABEL_92:
          for (k = a1 + 8; k < a2; k += 8)
          {
            if (*v186 < *k)
            {
              break;
            }

            if (*v186 <= *k)
            {
              v49 = *(k + 1);
              if (*&v186[4] > v49 || *&v186[4] >= v49 && v47 < *(k + 6))
              {
                break;
              }
            }
          }

          goto LABEL_100;
        }

        v47 = *&v186[24];
        if (*&v186[24] >= *(a2 - 10))
        {
          goto LABEL_92;
        }

LABEL_83:
        for (k = a1 + 8; *v186 >= *k; k += 8)
        {
          if (*v186 <= *k)
          {
            v48 = *(k + 1);
            if (v46 > v48 || v46 >= v48 && v47 < *(k + 6))
            {
              break;
            }
          }
        }

LABEL_100:
        m = a2;
        if (k < a2)
        {
          for (m = a2 - 8; ; m -= 8)
          {
            if (*v186 >= v45)
            {
              if (*v186 > v45)
              {
                break;
              }

              v51 = *(m + 1);
              if (v46 <= v51 && (v46 < v51 || v47 >= *(m + 6)))
              {
                break;
              }
            }

            v52 = *(m - 16);
            v45 = v52;
          }
        }

        while (k < m)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(k, m);
          for (k += 8; *v186 >= *k; k += 8)
          {
            if (*v186 <= *k)
            {
              v53 = *(k + 1);
              if (*&v186[4] > v53 || *&v186[4] >= v53 && *&v186[24] < *(k + 6))
              {
                break;
              }
            }
          }

          do
          {
            do
            {
              v54 = *(m - 16);
              m -= 8;
              v55 = *v186 > v54;
            }

            while (*v186 < v54);
            if (v55)
            {
              break;
            }

            v56 = *(m + 1);
          }

          while (*&v186[4] > v56 || *&v186[4] >= v56 && *&v186[24] < *(m + 6));
        }

        v57 = k - 8;
        if (k - 8 != a1)
        {
          v58 = *v57;
          *(a1 + 12) = *(k - 52);
          *a1 = v58;
          skit::SmallVector<skit::GroupId,4u,true>::operator=(a1 + 4, (k - 4));
          *(a1 + 14) = *(k - 2);
        }

        v59 = *v186;
        *(k - 52) = *&v186[12];
        *v57 = v59;
        skit::SmallVector<skit::GroupId,4u,true>::operator=(k - 4, &v187);
        *(k - 2) = v191;
        if (v187 != &v190)
        {
          free(v187);
        }

LABEL_73:
        a4 = 0;
      }

      v17 = *a1;
      *&v186[12] = *(a1 + 12);
      *v186 = v17;
      if (a1[4] == a1 + 6)
      {
        v18 = &v189;
        v187 = &v190;
        v19 = *(a1 + 10);
        if (v19)
        {
          v20 = a1[4];
          v21 = 2 * v19;
          v22 = &v190;
          do
          {
            v23 = *v20++;
            *v22 = v23;
            v22 = (v22 + 2);
            v21 -= 2;
          }

          while (v21);
          v18 = &v189;
        }
      }

      else
      {
        v187 = a1[4];
        v18 = a1 + 11;
        v189 = *(a1 + 11);
        a1[4] = a1 + 6;
      }

      *v18 = 4;
      v188 = *(a1 + 10);
      *(a1 + 10) = 0;
      v191 = *(a1 + 14);
      for (n = a1 + 8; ; n += 8)
      {
        if (*n >= *v186)
        {
          if (*n > *v186)
          {
            break;
          }

          v25 = *(n + 1);
          if (v25 <= *&v186[4] && (v25 < *&v186[4] || *(n + 6) >= *&v186[24]))
          {
            break;
          }
        }
      }

      ii = a2 - 8;
      if (n - 8 == a1)
      {
        for (ii = a2 - 8; n < ii + 8; ii -= 8)
        {
          if (*ii < *v186)
          {
            goto LABEL_50;
          }

          if (*ii <= *v186)
          {
            v28 = *(ii + 1);
            if (v28 > *&v186[4] || v28 >= *&v186[4] && *(ii + 6) < *&v186[24])
            {
              goto LABEL_50;
            }
          }
        }

        ii += 8;
      }

      else
      {
        while (*ii >= *v186)
        {
          if (*ii <= *v186)
          {
            v27 = *(ii + 1);
            if (v27 > *&v186[4] || v27 >= *&v186[4] && *(ii + 6) < *&v186[24])
            {
              break;
            }
          }

          ii -= 8;
        }
      }

LABEL_50:
      k = n;
      if (n < ii)
      {
        v29 = ii;
        k = n;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(k, v29);
          for (k += 8; ; k += 8)
          {
            if (*k >= *v186)
            {
              if (*k > *v186)
              {
                break;
              }

              v30 = *(k + 1);
              if (v30 <= *&v186[4] && (v30 < *&v186[4] || *(k + 6) >= *&v186[24]))
              {
                break;
              }
            }
          }

          while (1)
          {
            v31 = *(v29 - 64);
            v29 -= 64;
            v32 = v31 > *v186;
            if (v31 < *v186)
            {
              break;
            }

            if (!v32)
            {
              v33 = *(v29 + 4);
              if (v33 > *&v186[4] || v33 >= *&v186[4] && *(v29 + 24) < *&v186[24])
              {
                break;
              }
            }
          }
        }

        while (k < v29);
      }

      v34 = k - 8;
      if (k - 8 != a1)
      {
        v35 = *v34;
        *(a1 + 12) = *(k - 52);
        *a1 = v35;
        skit::SmallVector<skit::GroupId,4u,true>::operator=(a1 + 4, (k - 4));
        *(a1 + 14) = *(k - 2);
      }

      v36 = *v186;
      *(k - 52) = *&v186[12];
      *v34 = v36;
      skit::SmallVector<skit::GroupId,4u,true>::operator=(k - 4, &v187);
      *(k - 2) = v191;
      if (v187 != &v190)
      {
        free(v187);
      }

      if (n < ii)
      {
LABEL_72:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Lb0EEEvT1_SM_SG_NS_15iterator_traitsISM_E15difference_typeEb(a1, k - 8, a3, a4 & 1);
        goto LABEL_73;
      }

      matched = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_EEbT1_SM_SG_(a1, k - 16);
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_EEbT1_SM_SG_(k, a2))
      {
        break;
      }

      if (!matched)
      {
        goto LABEL_72;
      }
    }

    a2 = k - 8;
    if (!matched)
    {
      continue;
    }

    break;
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  *v14 = *a1;
  *&v14[12] = *(a1 + 12);
  v6 = *(a1 + 32);
  v4 = (a1 + 32);
  v5 = v6;
  if (v6 == (a1 + 48))
  {
    v9 = &v18;
    v15 = &v18;
    v8 = *(a1 + 40);
    if (v8)
    {
      v10 = 2 * v8;
      do
      {
        v11 = *v5++;
        *v9 = v11;
        v9 = (v9 + 2);
        v10 -= 2;
      }

      while (v10);
    }

    v7 = &v17;
  }

  else
  {
    v15 = v5;
    v7 = (a1 + 44);
    v17 = *(a1 + 44);
    *(a1 + 32) = a1 + 48;
    LODWORD(v8) = *(a1 + 40);
  }

  *v7 = 4;
  *(a1 + 40) = 0;
  v12 = *(a1 + 56);
  v16 = v8;
  v19 = v12;
  v13 = *(a2 + 12);
  *a1 = *a2;
  *(a1 + 12) = v13;
  skit::SmallVector<skit::GroupId,4u,true>::operator=(v4, a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  *a2 = *v14;
  *(a2 + 12) = *&v14[12];
  skit::SmallVector<skit::GroupId,4u,true>::operator=((a2 + 32), &v15);
  *(a2 + 56) = v19;
  if (v15 != &v18)
  {
    free(v15);
  }
}

void _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v5 = a1;
  v6 = *a2;
  if (*a2 < *a1)
  {
    goto LABEL_2;
  }

  if (v6 > *a1)
  {
    goto LABEL_4;
  }

  v10 = a2[1];
  v11 = a1[1];
  if (v10 > v11)
  {
LABEL_2:
    v7 = 1;
    goto LABEL_5;
  }

  if (v10 < v11)
  {
LABEL_4:
    v7 = 0;
  }

  else
  {
    v7 = a2[6] < a1[6];
  }

LABEL_5:
  if (*a3 < v6)
  {
    goto LABEL_6;
  }

  if (*a3 > v6)
  {
LABEL_9:
    v8 = 0;
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v12 = a3[1];
  v13 = a2[1];
  if (v12 <= v13)
  {
    if (v12 >= v13)
    {
      v8 = a3[6] < a2[6];
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_6:
  v8 = 1;
  if (!v7)
  {
LABEL_20:
    if (!v8)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a2, a3);
    if (*a2 >= *v5)
    {
      if (*a2 > *v5)
      {
        return;
      }

      v16 = a2[1];
      v17 = v5[1];
      if (v16 <= v17 && (v16 < v17 || a2[6] >= v5[6]))
      {
        return;
      }
    }

    a1 = v5;
    v9 = a2;
    goto LABEL_23;
  }

LABEL_10:
  if (!v8)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, a2);
    if (*a3 >= *a2)
    {
      if (*a3 > *a2)
      {
        return;
      }

      v14 = a3[1];
      v15 = a2[1];
      if (v14 <= v15 && (v14 < v15 || a3[6] >= a2[6]))
      {
        return;
      }
    }

    a1 = a2;
  }

  v9 = a3;
LABEL_23:

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, v9);
}

void _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEvT1_SM_SM_SM_SM_SG_(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, a2, a3);
  if (*a4 < *a3 || *a4 <= *a3 && ((v10 = a4[1], v11 = a3[1], v10 > v11) || v10 >= v11 && a4[6] < a3[6]))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a3, a4);
    if (*a3 < *a2 || *a3 <= *a2 && ((v12 = a3[1], v13 = a2[1], v12 > v13) || v12 >= v13 && a3[6] < a2[6]))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a2, a3);
      if (*a2 < *a1 || *a2 <= *a1 && ((v20 = a2[1], v21 = a1[1], v20 > v21) || v20 >= v21 && a2[6] < a1[6]))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, a2);
      }
    }
  }

  if (*a5 < *a4 || *a5 <= *a4 && ((v14 = a5[1], v15 = a4[1], v14 > v15) || v14 >= v15 && a5[6] < a4[6]))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a4, a5);
    if (*a4 < *a3 || *a4 <= *a3 && ((v16 = a4[1], v17 = a3[1], v16 > v17) || v16 >= v17 && a4[6] < a3[6]))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a3, a4);
      if (*a3 < *a2 || *a3 <= *a2 && ((v18 = a3[1], v19 = a2[1], v18 > v19) || v18 >= v19 && a3[6] < a2[6]))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a2, a3);
        if (*a2 < *a1 || *a2 <= *a1 && ((v22 = a2[1], v23 = a1[1], v22 > v23) || v22 >= v23 && a2[6] < a1[6]))
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, a2);
        }
      }
    }
  }
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_EEbT1_SM_SG_(unsigned int *a1, unsigned int *a2)
{
  v47 = *MEMORY[0x29EDCA608];
  v4 = (a2 - a1) >> 6;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = a2 - 16;
        v6 = *(a2 - 16);
        if (v6 >= *a1)
        {
          if (v6 > *a1)
          {
            return 1;
          }

          v7 = *(a2 - 15);
          v8 = a1[1];
          if (v7 <= v8 && (v7 < v8 || *(a2 - 10) >= a1[6]))
          {
            return 1;
          }
        }

        goto LABEL_48;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, a1 + 16, a2 - 16);
      return 1;
    case 4:
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, a1 + 16, a1 + 32);
      v29 = *(a2 - 16);
      v30 = a1[32];
      if (v29 >= v30)
      {
        if (v29 > v30)
        {
          return 1;
        }

        v34 = *(a2 - 15);
        v35 = a1[33];
        if (v34 <= v35 && (v34 < v35 || *(a2 - 10) >= a1[38]))
        {
          return 1;
        }
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>((a1 + 32), (a2 - 16));
      v31 = a1[32];
      v32 = a1[16];
      if (v31 >= v32)
      {
        if (v31 > v32)
        {
          return 1;
        }

        v36 = a1[33];
        v37 = a1[17];
        if (v36 <= v37 && (v36 < v37 || a1[38] >= a1[22]))
        {
          return 1;
        }
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>((a1 + 16), (a1 + 32));
      v33 = a1[16];
      if (v33 >= *a1)
      {
        if (v33 > *a1)
        {
          return 1;
        }

        v39 = a1[17];
        v40 = a1[1];
        if (v39 <= v40 && (v39 < v40 || a1[22] >= a1[6]))
        {
          return 1;
        }
      }

      v5 = a1 + 16;
LABEL_48:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::SpanMatchV3 *&,skit::SpanMatchV3 *&>(a1, v5);
      return 1;
    case 5:
      _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEvT1_SM_SM_SM_SM_SG_(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
      return 1;
  }

LABEL_15:
  v9 = a1 + 32;
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN4skit8internal12_GLOBAL__N_117merge_token_spansENS_17basic_string_viewIDsNS_11char_traitsIDsEEEEtRNS2_11SmallVectorINS2_11SpanMatchV3ELj8ELb1EEEjEUlRKT_RKT0_E_PSA_Li0EEEbT1_SM_SM_SG_(a1, a1 + 16, a1 + 32);
  v10 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (*v10 < *v9 || *v10 <= *v9 && ((v16 = v10[1], v17 = v9[1], v16 > v17) || v16 >= v17 && v10[6] < v9[6]))
    {
      *v41 = *v10;
      *&v41[12] = *(v10 + 3);
      v13 = *(v10 + 4);
      if (v13 == v10 + 12)
      {
        v42 = &v45;
        v15 = v10[10];
        if (v15)
        {
          v18 = 2 * v15;
          v19 = &v45;
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            *v19 = v20;
            v19 = (v19 + 2);
            v18 -= 2;
          }

          while (v18);
        }

        v14 = &v44;
      }

      else
      {
        v42 = *(v10 + 4);
        v14 = v10 + 11;
        v44 = v10[11];
        *(v10 + 4) = v10 + 12;
        LODWORD(v15) = v10[10];
      }

      *v14 = 4;
      v10[10] = 0;
      v21 = v10[14];
      v43 = v15;
      v46 = v21;
      for (i = v11; ; i -= 64)
      {
        v23 = a1 + i;
        *(v23 + 12) = *(a1 + i + 128);
        *(v23 + 204) = *(a1 + i + 140);
        v24 = (a1 + i + 160);
        skit::SmallVector<skit::GroupId,4u,true>::operator=((a1 + i + 224), v24);
        *(v23 + 62) = *(v23 + 46);
        if (i == -128)
        {
          v27 = a1;
          goto LABEL_39;
        }

        v25 = *(v23 + 16);
        if (*v41 >= v25)
        {
          if (*v41 > v25)
          {
            break;
          }

          v26 = *(a1 + i + 68);
          if (*&v41[4] <= v26 && (*&v41[4] < v26 || *&v41[24] >= *(a1 + i + 88)))
          {
            break;
          }
        }
      }

      v28 = a1 + i;
      v27 = (a1 + i + 128);
      v24 = (v28 + 160);
LABEL_39:
      *v27 = *v41;
      *(v27 + 3) = *&v41[12];
      skit::SmallVector<skit::GroupId,4u,true>::operator=(v24, &v42);
      v27[14] = v46;
      if (v42 != &v45)
      {
        free(v42);
      }

      if (++v12 == 8)
      {
        return v10 + 16 == a2;
      }
    }

    v9 = v10;
    v11 += 64;
    v10 += 16;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

size_t skit::SmallVector<skit::SpanMatchV3,8u,true>::_reserve_more(char **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(a2 << 6, 0x10200408C599F99uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 12) = *(v8 + 12);
      *v7 = v9;
      skit::SmallVector<skit::GroupId,4u,true>::move((v7 + 32), (v8 + 4));
      *(v7 + 14) = *(v8 + 14);
      v8 += 8;
      v7 += 64;
    }

    while (v8 != &v5[8 * v6]);
    v10 = v6 << 6;
    v11 = (v5 + 6);
    do
    {
      v12 = *(v11 - 2);
      if (v11 != v12)
      {
        free(v12);
      }

      v11 += 64;
      v10 -= 64;
    }

    while (v10);
    v5 = *a1;
  }

  if (v5 != a1 + 2)
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result >> 6;
  return result;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  if (__n)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v11 = this->__r_.__value_.__r.__words[2];
      v9 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v10 = HIBYTE(v11);
    }

    else
    {
      v9 = 10;
      LOBYTE(v10) = *(&this->__r_.__value_.__s + 23);
    }

    if (v9 - size < __n)
    {
      std::basic_string<char16_t>::__grow_by(this, v9, __n - v9 + size, size, size, v3, v4);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v10) = *(&this->__r_.__value_.__s + 23);
    }

    v12 = this;
    if ((v10 & 0x80) != 0)
    {
      v12 = this->__r_.__value_.__r.__words[0];
    }

    v13 = 0;
    v14 = vdupq_n_s64(__n - 1);
    v15 = &v12->__r_.__value_.__s.__data_[size + 4];
    do
    {
      v16 = vdupq_n_s64(v13);
      v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_2998EB7C0)));
      if (vuzp1_s8(vuzp1_s16(v17, *v14.i8), *v14.i8).u8[0])
      {
        *(v15 - 4) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v14), *&v14).i8[1])
      {
        *(v15 - 3) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_2998EB7B0)))), *&v14).i8[2])
      {
        *(v15 - 2) = __c;
        *(v15 - 1) = __c;
      }

      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_2998EB7A0)));
      if (vuzp1_s8(*&v14, vuzp1_s16(v18, *&v14)).i32[1])
      {
        *v15 = __c;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(v18, *&v14)).i8[5])
      {
        v15[1] = __c;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_2998EB790))))).i8[6])
      {
        v15[2] = __c;
        v15[3] = __c;
      }

      v13 += 8;
      v15 += 8;
    }

    while (((__n + 7) & 0xFFFFFFFFFFFFFFF8) != v13);
    v19 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v19;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v19 & 0x7F;
    }

    v12->__r_.__value_.__s.__data_[v19] = 0;
  }

  return this;
}

size_t skit::SmallVector<skit::internal::FieldSpanMatcherImpl::MapToken,128u,true>::_reserve_more(uint64_t a1, unsigned int a2)
{
  v3 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v12, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 4 * v6;
    v8 = v4;
    do
    {
      v9 = *v5++;
      *v8++ = v9;
      v7 -= 4;
    }

    while (v7);
    v5 = *a1;
  }

  if (v5 != (a1 + 16))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 12) = result >> 2;
  return result;
}

size_t skit::SmallVector<skit::internal::FieldSpanMatcherImpl::MapToken,128u,true>::emplace_back<unsigned short &,unsigned short &>(size_t result, _WORD *a2, __int16 *a3)
{
  v5 = result;
  v6 = *(result + 8);
  if (v6 == *(result + 12))
  {
    result = skit::SmallVector<skit::internal::FieldSpanMatcherImpl::MapToken,128u,true>::_reserve_more(result, v6 + (v6 >> 1) + 1);
    v6 = *(v5 + 8);
  }

  v7 = (*v5 + 4 * v6);
  v8 = *a3;
  *v7 = *a2;
  v7[1] = v8;
  *(v5 + 8) = v6 + 1;
  return result;
}

void skit::internal::FieldSpanMatcherImpl::combine_alias_matches(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, __int128 **a5, uint64_t *a6)
{
  if (!a4)
  {
    skit::Alias::match((a1 + 640), a5, a3);
  }

  v9 = *(a5 + 2);
  v10 = *(a6 + 2) + v9;
  if (v10)
  {
    if (*(a2 + 3) < v10)
    {
      skit::SmallVector<skit::AliasMatch const*,8u,false>::_reserve_more(a2, v10);
      v9 = *(a5 + 2);
    }

    if (v9)
    {
      v11 = *a5;
      v12 = v9;
      v13 = *(a2 + 2);
      v14 = 40 * v12;
      do
      {
        if (v13 == *(a2 + 3))
        {
          skit::SmallVector<skit::AliasMatch const*,8u,false>::_reserve_more(a2, v13 + (v13 >> 1) + 1);
          v13 = *(a2 + 2);
        }

        *(*a2 + 8 * v13++) = v11;
        *(a2 + 2) = v13;
        v11 = (v11 + 40);
        v14 -= 40;
      }

      while (v14);
    }

    v15 = *(a6 + 2);
    v16 = *(a2 + 2);
    if (v15)
    {
      v17 = *a6;
      v18 = 40 * v15;
      do
      {
        if (v16 == *(a2 + 3))
        {
          skit::SmallVector<skit::AliasMatch const*,8u,false>::_reserve_more(a2, v16 + (v16 >> 1) + 1);
          v16 = *(a2 + 2);
        }

        *(*a2 + 8 * v16++) = v17;
        *(a2 + 2) = v16;
        v17 += 40;
        v18 -= 40;
      }

      while (v18);
    }

    v19 = *a2;
    v20 = (*a2 + 8 * v16);
    v21 = 126 - 2 * __clz(v16);
    if (v16)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }
}

size_t skit::SmallVector<skit::AliasMatch const*,8u,false>::_reserve_more(uint64_t a1, unsigned int a2)
{
  v3 = malloc_type_malloc(8 * a2, 0x6004044C4A2DFuLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v12, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 8 * v6;
    v8 = v4;
    do
    {
      v9 = *v5++;
      *v8++ = v9;
      v7 -= 8;
    }

    while (v7);
    v5 = *a1;
  }

  if (v5 != (a1 + 16))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 12) = result >> 3;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,skit::internal::anonymous namespace::AliasMatchLess &,skit::AliasMatch const**,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v125 = *v8;
        v126 = *v9;
        v127 = *(*v8 + 24);
        v128 = *(*v9 + 24);
        if (v127 < v128 || v127 <= v128 && *(v125 + 28) > *(v126 + 28))
        {
          *v9 = v125;
          *v8 = v126;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
    }

    if (v10 == 5)
    {
      v129 = *v8;
      v130 = v9[3];
      v131 = *(*v8 + 24);
      v132 = *(v130 + 24);
      if (v131 < v132 || v131 <= v132 && *(v129 + 28) > *(v130 + 28))
      {
        v9[3] = v129;
        *v8 = v130;
        v134 = v9[2];
        v133 = v9[3];
        v135 = *(v133 + 24);
        v136 = *(v134 + 24);
        if (v135 < v136 || v135 <= v136 && *(v133 + 28) > *(v134 + 28))
        {
          v9[2] = v133;
          v9[3] = v134;
          v137 = v9[1];
          v138 = *(v137 + 24);
          if (v135 < v138 || v135 <= v138 && *(v133 + 28) > *(v137 + 28))
          {
            v9[1] = v133;
            v9[2] = v137;
            v139 = *v9;
            v140 = *(*v9 + 24);
            if (v135 < v140 || v135 <= v140 && *(v133 + 28) > *(v139 + 28))
            {
              *v9 = v133;
              v9[1] = v139;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v141 = v9 + 1;
      v143 = v9 == a2 || v141 == a2;
      if (a4)
      {
        if (!v143)
        {
          v144 = 0;
          v145 = v9;
          do
          {
            v146 = v145;
            v145 = v141;
            v148 = *v146;
            v147 = v146[1];
            v149 = *(v147 + 24);
            v150 = *(*v146 + 24);
            if (v149 < v150 || v149 <= v150 && *(v147 + 28) > *(v148 + 28))
            {
              v146[1] = v148;
              v151 = v9;
              if (v146 != v9)
              {
                v152 = v144;
                while (1)
                {
                  v153 = *(v9 + v152 - 8);
                  v154 = *(v153 + 24);
                  if (v149 >= v154)
                  {
                    if (v149 > v154)
                    {
                      v151 = (v9 + v152);
                      goto LABEL_236;
                    }

                    if (*(v147 + 28) <= *(v153 + 28))
                    {
                      break;
                    }
                  }

                  --v146;
                  *(v9 + v152) = v153;
                  v152 -= 8;
                  if (!v152)
                  {
                    v151 = v9;
                    goto LABEL_236;
                  }
                }

                v151 = v146;
              }

LABEL_236:
              *v151 = v147;
            }

            v141 = v145 + 1;
            v144 += 8;
          }

          while (v145 + 1 != a2);
        }
      }

      else if (!v143)
      {
        do
        {
          v203 = v7;
          v7 = v141;
          v205 = *v203;
          v204 = v203[1];
          v206 = *(v204 + 24);
          v207 = *(*v203 + 24);
          if (v206 < v207 || v206 <= v207 && *(v204 + 28) > *(v205 + 28))
          {
            do
            {
              do
              {
                v208 = v203;
                v209 = *--v203;
                v203[2] = v205;
                v205 = v209;
                v210 = *(v209 + 24);
              }

              while (v206 < v210);
            }

            while (v206 <= v210 && *(v204 + 28) > *(v205 + 28));
            *v208 = v204;
          }

          v141 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v155 = (v10 - 2) >> 1;
      v156 = v155;
      do
      {
        v157 = v156;
        if (v155 >= v156)
        {
          v158 = (2 * v156) | 1;
          v159 = &v9[v158];
          if (2 * v157 + 2 < v10)
          {
            v160 = v159[1];
            v161 = *(*v159 + 24);
            result = *(v160 + 24);
            if (v161 < result || v161 <= result && *(*v159 + 28) > *(v160 + 28))
            {
              ++v159;
              v158 = 2 * v157 + 2;
            }
          }

          v162 = *v159;
          v163 = v9[v157];
          v164 = *(*v159 + 24);
          v165 = *(v163 + 24);
          if (v164 >= v165 && (v164 > v165 || *(v162 + 28) <= *(v163 + 28)))
          {
            v9[v157] = v162;
            if (v155 >= v158)
            {
              while (1)
              {
                v167 = 2 * v158;
                v158 = (2 * v158) | 1;
                v166 = &v9[v158];
                v168 = v167 + 2;
                if (v168 < v10)
                {
                  result = *v166;
                  v169 = v166[1];
                  v170 = *(*v166 + 24);
                  v171 = *(v169 + 24);
                  if (v170 < v171 || v170 <= v171 && (result = *(result + 28), result > *(v169 + 28)))
                  {
                    ++v166;
                    v158 = v168;
                  }
                }

                v172 = *v166;
                v173 = *(*v166 + 24);
                if (v173 < v165)
                {
                  break;
                }

                if (v173 <= v165)
                {
                  result = *(v163 + 28);
                  if (*(v172 + 28) > result)
                  {
                    break;
                  }
                }

                *v159 = v172;
                v159 = v166;
                if (v155 < v158)
                {
                  goto LABEL_252;
                }
              }
            }

            v166 = v159;
LABEL_252:
            *v166 = v163;
          }
        }

        v156 = v157 - 1;
      }

      while (v157);
      while (2)
      {
        v174 = 0;
        v175 = *v9;
        v176 = v9;
        do
        {
          v177 = v176;
          v178 = &v176[v174];
          v176 = v178 + 1;
          v179 = 2 * v174;
          v174 = (2 * v174) | 1;
          v180 = v179 + 2;
          if (v180 < v10)
          {
            v183 = v178[2];
            v181 = v178 + 2;
            v182 = v183;
            v184 = *(v181 - 1);
            result = *(v184 + 24);
            v185 = *(v183 + 24);
            if (result < v185 || result <= v185 && *(v184 + 28) > *(v182 + 28))
            {
              v176 = v181;
              v174 = v180;
            }
          }

          *v177 = *v176;
        }

        while (v174 <= ((v10 - 2) >> 1));
        if (v176 != --a2)
        {
          *v176 = *a2;
          *a2 = v175;
          v186 = (v176 - v9 + 8) >> 3;
          v187 = v186 - 2;
          if (v186 < 2 || (v188 = v187 >> 1, v189 = &v9[v187 >> 1], v190 = *v189, v175 = *v176, v191 = *(*v189 + 24), v192 = *(*v176 + 24), v191 >= v192) && (v191 > v192 || *(v190 + 28) <= *(v175 + 28)))
          {
LABEL_285:
            if (v10-- <= 2)
            {
              return result;
            }

            continue;
          }

          *v176 = v190;
          if (v187 >= 2)
          {
            while (1)
            {
              v193 = v188 - 1;
              v188 = (v188 - 1) >> 1;
              v176 = &v9[v188];
              v194 = *v176;
              v195 = *(*v176 + 24);
              if (v195 >= v192 && (v195 > v192 || *(v194 + 28) <= *(v175 + 28)))
              {
                break;
              }

              *v189 = v194;
              v189 = &v9[v188];
              if (v193 <= 1)
              {
                goto LABEL_284;
              }
            }
          }

          v176 = v189;
        }

        break;
      }

LABEL_284:
      *v176 = v175;
      goto LABEL_285;
    }

    v11 = v10 >> 1;
    v12 = &v9[v10 >> 1];
    v13 = v12;
    if (v10 >= 0x81)
    {
      v14 = *v12;
      v15 = *v9;
      v16 = *(*v12 + 24);
      v17 = *(*v9 + 24);
      if (v16 < v17 || v16 <= v17 && *(v14 + 28) > *(v15 + 28))
      {
        v18 = *v8;
        v19 = *(*v8 + 24);
        if (v19 < v16 || v19 <= v16 && *(v18 + 28) > *(v14 + 28))
        {
          *v9 = v18;
        }

        else
        {
          *v9 = v14;
          *v12 = v15;
          v38 = *v8;
          v39 = *(*v8 + 24);
          if (v39 >= v17 && (v39 > v17 || *(v38 + 28) <= *(v15 + 28)))
          {
            goto LABEL_34;
          }

          *v12 = v38;
        }

        *v8 = v15;
        goto LABEL_34;
      }

      v26 = *v8;
      v27 = *(*v8 + 24);
      if (v27 < v16 || v27 <= v16 && *(v26 + 28) > *(v14 + 28))
      {
        *v12 = v26;
        *v8 = v14;
        v28 = *v12;
        v29 = *v9;
        v30 = *(*v12 + 24);
        v31 = *(*v9 + 24);
        if (v30 < v31 || v30 <= v31 && *(v28 + 28) > *(v29 + 28))
        {
          *v9 = v28;
          *v12 = v29;
        }
      }

LABEL_34:
      v40 = v11 - 1;
      v41 = v9[v11 - 1];
      v42 = v9[1];
      v43 = *(v41 + 24);
      v44 = *(v42 + 24);
      if (v43 < v44 || v43 <= v44 && *(v41 + 28) > *(v42 + 28))
      {
        v45 = *(a2 - 2);
        v46 = *(v45 + 24);
        if (v46 < v43 || v46 <= v43 && *(v45 + 28) > *(v41 + 28))
        {
          v9[1] = v45;
        }

        else
        {
          v9[1] = v41;
          v9[v40] = v42;
          v55 = *(a2 - 2);
          v56 = *(v55 + 24);
          if (v56 >= v44 && (v56 > v44 || *(v55 + 28) <= *(v42 + 28)))
          {
            goto LABEL_52;
          }

          v9[v40] = v55;
        }

        *(a2 - 2) = v42;
        goto LABEL_52;
      }

      v47 = *(a2 - 2);
      v48 = *(v47 + 24);
      if (v48 < v43 || v48 <= v43 && *(v47 + 28) > *(v41 + 28))
      {
        v9[v40] = v47;
        *(a2 - 2) = v41;
        v49 = v9[v40];
        v50 = v9[1];
        v51 = *(v49 + 24);
        v52 = *(v50 + 24);
        if (v51 < v52 || v51 <= v52 && *(v49 + 28) > *(v50 + 28))
        {
          v9[1] = v49;
          v9[v40] = v50;
        }
      }

LABEL_52:
      v59 = v12[1];
      v57 = v12 + 1;
      v58 = v59;
      v60 = v9[2];
      v61 = *(v59 + 24);
      v62 = *(v60 + 24);
      if (v61 < v62 || v61 <= v62 && *(v58 + 28) > *(v60 + 28))
      {
        v63 = *(a2 - 3);
        v64 = *(v63 + 24);
        if (v64 < v61 || v64 <= v61 && *(v63 + 28) > *(v58 + 28))
        {
          v9[2] = v63;
        }

        else
        {
          v9[2] = v58;
          *v57 = v60;
          v71 = *(a2 - 3);
          v72 = *(v71 + 24);
          if (v72 >= v62 && (v72 > v62 || *(v71 + 28) <= *(v60 + 28)))
          {
            goto LABEL_65;
          }

          *v57 = v71;
        }

        *(a2 - 3) = v60;
        goto LABEL_65;
      }

      v65 = *(a2 - 3);
      v66 = *(v65 + 24);
      if (v66 < v61 || v66 <= v61 && *(v65 + 28) > *(v58 + 28))
      {
        *v57 = v65;
        *(a2 - 3) = v58;
        v67 = *v57;
        v68 = v9[2];
        v69 = *(*v57 + 24);
        v70 = *(v68 + 24);
        if (v69 < v70 || v69 <= v70 && *(v67 + 28) > *(v68 + 28))
        {
          v9[2] = v67;
          *v57 = v68;
        }
      }

LABEL_65:
      v73 = *v13;
      v74 = v9[v40];
      v75 = *(*v13 + 24);
      v76 = *(v74 + 24);
      if (v75 < v76 || v75 <= v76 && *(v73 + 28) > *(v74 + 28))
      {
        v77 = *v57;
        v78 = *(*v57 + 24);
        if (v78 < v75 || v78 <= v75 && *(v77 + 28) > *(v73 + 28))
        {
          v9[v40] = v77;
        }

        else
        {
          v9[v40] = v73;
          *v13 = v74;
          if (v78 >= v76 && (v78 > v76 || *(v77 + 28) <= *(v74 + 28)))
          {
            v73 = v74;
            goto LABEL_78;
          }

          *v13 = v77;
          v73 = v77;
        }
      }

      else
      {
        v79 = *v57;
        v80 = *(*v57 + 24);
        if (v80 >= v75 && (v80 > v75 || *(v79 + 28) <= *(v73 + 28)))
        {
          goto LABEL_78;
        }

        *v13 = v79;
        *v57 = v73;
        if (v80 >= v76 && (v80 > v76 || *(v79 + 28) <= *(v74 + 28)))
        {
          v73 = v79;
          goto LABEL_78;
        }

        v9[v40] = v79;
        v57 = v13;
        v73 = v74;
      }

      *v57 = v74;
LABEL_78:
      v81 = *v9;
      *v9 = v73;
      *v13 = v81;
      goto LABEL_79;
    }

    v20 = *v9;
    v21 = *v12;
    v22 = *(*v9 + 24);
    v23 = *(*v13 + 24);
    if (v22 >= v23 && (v22 > v23 || *(v20 + 28) <= *(v21 + 28)))
    {
      v32 = *v8;
      v33 = *(*v8 + 24);
      if (v33 < v22 || v33 <= v22 && *(v32 + 28) > *(v20 + 28))
      {
        *v9 = v32;
        *v8 = v20;
        v34 = *v9;
        v35 = *v13;
        v36 = *(*v9 + 24);
        v37 = *(*v13 + 24);
        if (v36 < v37 || v36 <= v37 && *(v34 + 28) > *(v35 + 28))
        {
          *v13 = v34;
          *v9 = v35;
        }
      }

      goto LABEL_79;
    }

    v24 = *v8;
    v25 = *(*v8 + 24);
    if (v25 < v22 || v25 <= v22 && *(v24 + 28) > *(v20 + 28))
    {
      *v13 = v24;
    }

    else
    {
      *v13 = v20;
      *v9 = v21;
      v53 = *v8;
      v54 = *(*v8 + 24);
      if (v54 >= v23 && (v54 > v23 || *(v53 + 28) <= *(v21 + 28)))
      {
        goto LABEL_79;
      }

      *v9 = v53;
    }

    *v8 = v21;
LABEL_79:
    --a3;
    v82 = *v9;
    if (a4)
    {
      v83 = *(v82 + 24);
LABEL_84:
      for (i = (v9 + 1); ; i += 8)
      {
        v87 = *i;
        v88 = *(*i + 24);
        if (v88 >= v83 && (v88 > v83 || *(v87 + 28) <= *(v82 + 28)))
        {
          break;
        }
      }

      v89 = (i - 8);
      if ((i - 8) == v9)
      {
        v92 = a2;
        if (i < a2)
        {
          v94 = *v8;
          v95 = *(*v8 + 24);
          v92 = a2 - 1;
          if (v95 >= v83)
          {
            v92 = a2 - 1;
            do
            {
              if (v95 <= v83)
              {
                if (i >= v92 || *(v94 + 28) > *(v82 + 28))
                {
                  break;
                }
              }

              else if (i >= v92)
              {
                break;
              }

              v96 = *--v92;
              v94 = v96;
              v95 = *(v96 + 24);
            }

            while (v95 >= v83);
          }
        }
      }

      else
      {
        v90 = *v8;
        v91 = *(*v8 + 24);
        v92 = a2 - 1;
        if (v91 >= v83)
        {
          v92 = a2 - 1;
          do
          {
            if (v91 <= v83 && *(v90 + 28) > *(v82 + 28))
            {
              break;
            }

            v93 = *--v92;
            v90 = v93;
            v91 = *(v93 + 24);
          }

          while (v91 >= v83);
        }
      }

      if (i < v92)
      {
        v97 = *v92;
        v98 = i;
        v99 = v92;
        do
        {
          *v98 = v97;
          v98 += 8;
          *v99 = v87;
          while (1)
          {
            v87 = *v98;
            v100 = *(*v98 + 24);
            if (v100 >= v83 && (v100 > v83 || *(v87 + 28) <= *(v82 + 28)))
            {
              break;
            }

            v98 += 8;
          }

          v89 = (v98 - 8);
          do
          {
            v101 = *--v99;
            v97 = v101;
            v102 = *(v101 + 24);
          }

          while (v102 >= v83 && (v102 > v83 || *(v97 + 28) <= *(v82 + 28)));
        }

        while (v98 < v99);
      }

      if (v89 != v9)
      {
        *v9 = *v89;
      }

      *v89 = v82;
      if (i < v92)
      {
        goto LABEL_122;
      }

      v9 = v89 + 1;
      if (result)
      {
        a2 = v89;
        if (v103)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v103)
      {
LABEL_122:
        a4 = 0;
        v9 = v89 + 1;
      }
    }

    else
    {
      v84 = *(v9 - 1);
      v85 = *(v84 + 24);
      v83 = *(v82 + 24);
      if (v85 < v83 || v85 <= v83 && *(v84 + 28) > *(v82 + 28))
      {
        goto LABEL_84;
      }

      v104 = *v8;
      v105 = *(*v8 + 24);
      if (v83 < v105 || v83 <= v105 && *(v82 + 28) > *(v104 + 28))
      {
        do
        {
          v107 = v9[1];
          ++v9;
          v106 = v107;
          v108 = *(v107 + 24);
        }

        while (v83 >= v108 && (v83 > v108 || *(v82 + 28) <= *(v106 + 28)));
      }

      else
      {
        for (++v9; v9 < a2; ++v9)
        {
          v118 = *(*v9 + 24);
          if (v83 < v118 || v83 <= v118 && *(v82 + 28) > *(*v9 + 28))
          {
            break;
          }
        }
      }

      v109 = a2;
      if (v9 < a2)
      {
        v109 = a2 - 1;
        while (v83 < v105 || v83 <= v105 && *(v82 + 28) > *(v104 + 28))
        {
          v110 = *--v109;
          v104 = v110;
          v105 = *(v110 + 24);
        }
      }

      if (v9 < v109)
      {
        v111 = *v9;
        v112 = *v109;
        do
        {
          *v9 = v112;
          *v109 = v111;
          do
          {
            v113 = v9[1];
            ++v9;
            v111 = v113;
            v114 = *(v113 + 24);
          }

          while (v83 >= v114 && (v83 > v114 || *(v82 + 28) <= *(v111 + 28)));
          do
          {
            do
            {
              v115 = *--v109;
              v112 = v115;
              v116 = *(v115 + 24);
            }

            while (v83 < v116);
          }

          while (v83 <= v116 && *(v82 + 28) > *(v112 + 28));
        }

        while (v9 < v109);
      }

      v117 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v117;
      }

      a4 = 0;
      *v117 = v82;
    }
  }

  v119 = *v9;
  v120 = v9[1];
  v121 = *(v120 + 24);
  v122 = *(*v9 + 24);
  if (v121 < v122 || v121 <= v122 && *(v120 + 28) > *(v119 + 28))
  {
    v123 = *v8;
    v124 = *(*v8 + 24);
    if (v124 < v121 || v124 <= v121 && *(v123 + 28) > *(v120 + 28))
    {
      *v9 = v123;
    }

    else
    {
      *v9 = v120;
      v9[1] = v119;
      v211 = *v8;
      v212 = *(*v8 + 24);
      if (v212 >= v122 && (v212 > v122 || *(v211 + 28) <= *(v119 + 28)))
      {
        return result;
      }

      v9[1] = v211;
    }

    *v8 = v119;
    return result;
  }

  v197 = *v8;
  v198 = *(*v8 + 24);
  if (v198 < v121 || v198 <= v121 && *(v197 + 28) > *(v120 + 28))
  {
    v9[1] = v197;
    *v8 = v120;
    v200 = *v9;
    v199 = v9[1];
    v201 = *(v199 + 24);
    v202 = *(*v9 + 24);
    if (v201 < v202 || v201 <= v202 && *(v199 + 28) > *(v200 + 28))
    {
      *v9 = v199;
      v9[1] = v200;
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,skit::internal::anonymous namespace::AliasMatchLess &,skit::AliasMatch const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 24);
  v7 = *(*result + 24);
  if (v6 < v7 || v6 <= v7 && *(v4 + 28) > *(v5 + 28))
  {
    v8 = *a3;
    v9 = *(*a3 + 24);
    if (v9 < v6 || v9 <= v6 && *(v8 + 28) > *(v4 + 28))
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      v15 = *(*a3 + 24);
      if (v15 >= v7 && (v15 > v7 || *(v4 + 28) <= *(v5 + 28)))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  v10 = *(*a3 + 24);
  if (v10 >= v6 && (v10 > v6 || *(v5 + 28) <= *(v4 + 28)))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v11 = *a2;
  v12 = *result;
  v13 = *(*a2 + 24);
  v14 = *(*result + 24);
  if (v13 < v14 || v13 <= v14 && *(v11 + 28) > *(v12 + 28))
  {
    *result = v11;
    *a2 = v12;
    v4 = *a3;
  }

LABEL_15:
  v16 = *a4;
  v17 = *(*a4 + 24);
  v18 = *(v4 + 24);
  if (v17 < v18 || v17 <= v18 && *(v16 + 28) > *(v4 + 28))
  {
    *a3 = v16;
    *a4 = v4;
    v19 = *a3;
    v20 = *a2;
    v21 = *(*a3 + 24);
    v22 = *(*a2 + 24);
    if (v21 < v22 || v21 <= v22 && *(v19 + 28) > *(v20 + 28))
    {
      *a2 = v19;
      *a3 = v20;
      v23 = *a2;
      v24 = *result;
      v25 = *(*a2 + 24);
      v26 = *(*result + 24);
      if (v25 < v26 || v25 <= v26 && *(v23 + 28) > *(v24 + 28))
      {
        *result = v23;
        *a2 = v24;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,skit::internal::anonymous namespace::AliasMatchLess &,skit::AliasMatch const**>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v21 = *a1;
        v22 = a1[1];
        v23 = *(v22 + 24);
        v24 = *(*a1 + 24);
        if (v23 >= v24 && (v23 > v24 || *(v22 + 28) <= *(v21 + 28)))
        {
          v35 = *(a2 - 1);
          v36 = *(v35 + 24);
          if (v36 < v23 || v36 <= v23 && *(v35 + 28) > *(v22 + 28))
          {
            a1[1] = v35;
            *(a2 - 1) = v22;
            v38 = *a1;
            v37 = a1[1];
            v39 = *(v37 + 24);
            v40 = *(*a1 + 24);
            if (v39 < v40 || v39 <= v40 && *(v37 + 28) > *(v38 + 28))
            {
              *a1 = v37;
              a1[1] = v38;
            }
          }

          return 1;
        }

        v25 = *(a2 - 1);
        v26 = *(v25 + 24);
        if (v26 < v23 || v26 <= v23 && *(v25 + 28) > *(v22 + 28))
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v22;
          a1[1] = v21;
          v43 = *(a2 - 1);
          v44 = *(v43 + 24);
          if (v44 >= v24 && (v44 > v24 || *(v43 + 28) <= *(v21 + 28)))
          {
            return 1;
          }

          a1[1] = v43;
        }

        *(a2 - 1) = v21;
        return 1;
      case 4:
        return 1;
      case 5:
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(v9 + 24);
        v12 = *(v10 + 24);
        if (v11 < v12 || v11 <= v12 && *(v9 + 28) > *(v10 + 28))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v13 + 24);
          v16 = *(v14 + 24);
          if (v15 < v16 || v15 <= v16 && *(v13 + 28) > *(v14 + 28))
          {
            a1[2] = v13;
            a1[3] = v14;
            v17 = a1[1];
            v18 = *(v17 + 24);
            if (v15 < v18 || v15 <= v18 && *(v13 + 28) > *(v17 + 28))
            {
              a1[1] = v13;
              a1[2] = v17;
              v19 = *a1;
              v20 = *(*a1 + 24);
              if (v15 < v20 || v15 <= v20 && *(v13 + 28) > *(v19 + 28))
              {
                *a1 = v13;
                a1[1] = v19;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = *(v5 + 24);
      v8 = *(*a1 + 24);
      if (v7 < v8 || v7 <= v8 && *(v5 + 28) > *(v6 + 28))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v27 = a1 + 2;
  v28 = *a1;
  v29 = a1 + 1;
  v30 = a1[1];
  v31 = *(v30 + 24);
  v32 = *(*a1 + 24);
  if (v31 < v32 || v31 <= v32 && *(v30 + 28) > *(v28 + 28))
  {
    v33 = *v27;
    v34 = *(*v27 + 24);
    if (v34 < v31 || v34 <= v31 && *(v33 + 28) > *(v30 + 28))
    {
      *a1 = v33;
    }

    else
    {
      *a1 = v30;
      a1[1] = v28;
      if (v34 >= v32 && (v34 > v32 || *(v33 + 28) <= *(v28 + 28)))
      {
        goto LABEL_48;
      }

      *v29 = v33;
    }

    v29 = a1 + 2;
LABEL_47:
    *v29 = v28;
    goto LABEL_48;
  }

  v41 = *v27;
  v42 = *(*v27 + 24);
  if (v42 < v31 || v42 <= v31 && *(v41 + 28) > *(v30 + 28))
  {
    *v29 = v41;
    *v27 = v30;
    if (v42 < v32 || v42 <= v32 && *(v41 + 28) > *(v28 + 28))
    {
      *a1 = v41;
      goto LABEL_47;
    }
  }

LABEL_48:
  v45 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v45;
    v49 = *v27;
    v50 = *(*v45 + 24);
    v51 = *(*v27 + 24);
    if (v50 >= v51 && (v50 > v51 || *(v48 + 28) <= *(v49 + 28)))
    {
      goto LABEL_62;
    }

    *v45 = v49;
    v52 = v46;
    while (1)
    {
      v53 = *(a1 + v52 + 8);
      v54 = *(v53 + 24);
      if (v50 >= v54)
      {
        break;
      }

LABEL_55:
      --v27;
      *(a1 + v52 + 16) = v53;
      v52 -= 8;
      if (v52 == -16)
      {
        v27 = a1;
        goto LABEL_61;
      }
    }

    if (v50 <= v54)
    {
      if (*(v48 + 28) <= *(v53 + 28))
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    v27 = (a1 + v52 + 16);
LABEL_61:
    *v27 = v48;
    if (++v47 != 8)
    {
LABEL_62:
      v27 = v45;
      v46 += 8;
      if (++v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 1 == a2;
  }
}

uint64_t skit::internal::FieldSpanMatcherImpl::alias_span_matcher(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  v27[8] = *MEMORY[0x29EDCA608];
  if (*a2 && (*(*a2 + 64) & 1) != 0)
  {
    v9 = a3;
    v11 = *a2;
    *a2 = 0;
    a2[1] = 0;
    v12 = *(a1 + 648);
    *(a1 + 640) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    skit::SmallVector<skit::AliasMatch,2u,true>::_destroy(*(a1 + 656), *(a1 + 664));
    *(a1 + 664) = 0;
    v25 = v27;
    v26 = 0x800000000;
    v23[0] = &v24;
    v23[1] = 0x200000000;
    skit::internal::FieldSpanMatcherImpl::combine_alias_matches(a1, &v25, a1, a6, v23, a5);
    v13 = v26;
    if (*(a1 + 668) < v26)
    {
      skit::SmallVector<skit::AliasMatch,2u,true>::_reserve_more((a1 + 656), v26);
      v13 = v26;
    }

    if (v13)
    {
      v14 = v25;
      v15 = *(a1 + 664);
      v16 = 8 * v13;
      do
      {
        v17 = *v14;
        if (v15 == *(a1 + 668))
        {
          skit::SmallVector<skit::AliasMatch,2u,true>::_reserve_more((a1 + 656), v15 + (v15 >> 1) + 1);
          v15 = *(a1 + 664);
        }

        v18 = (*(a1 + 656) + 40 * v15);
        if (*(v17 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v18, *v17, *(v17 + 1));
        }

        else
        {
          v19 = *v17;
          v18->__r_.__value_.__r.__words[2] = *(v17 + 2);
          *&v18->__r_.__value_.__l.__data_ = v19;
        }

        v20 = *(v17 + 3);
        v18[1].__r_.__value_.__s.__data_[4] = *(v17 + 16);
        v18[1].__r_.__value_.__r.__words[0] = v20;
        v15 = *(a1 + 664) + 1;
        *(a1 + 664) = v15;
        ++v14;
        v16 -= 8;
      }

      while (v16);
    }

    skit::internal::FieldSpanMatcherImpl::alias_filters(a1, v9, a4);
    skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(v23);
    if (v25 != v27)
    {
      free(v25);
    }

    return 0;
  }

  else
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v22 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23[0]) = 0;
      _os_log_error_impl(&dword_2998C6000, v22, OS_LOG_TYPE_ERROR, "FieldSpanMatcherImpl::alias_span_matcher : Alias span matcher is not initialized", v23, 2u);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2998DB22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(&a9);
  if (a21 != v21)
  {
    free(a21);
  }

  _Unwind_Resume(a1);
}

void skit::internal::FieldSpanMatcherImpl::alias_filters(uint64_t *a1, char a2, uint64_t a3)
{
  v71 = *MEMORY[0x29EDCA608];
  *(a1 + 608) = a2;
  if (a1 + 77 != a3)
  {
    v4 = *a3;
    v5 = *(a3 + 8);
    if (*(a1 + 157) >= v5)
    {
      if (v5)
      {
        v12 = a1[77];
        v13 = *(a3 + 8);
        do
        {
          v14 = *v4++;
          *v12++ = v14;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v6 = *(a1 + 156) + (*(a1 + 156) >> 1);
      if (v6 + 1 > v5)
      {
        v7 = (v6 + 1);
      }

      else
      {
        v7 = v5;
      }

      v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
      if (!v8)
      {
        exception = __cxa_allocate_exception(8uLL);
        v55 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v55, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
      }

      v9 = v8;
      v10 = 0;
      do
      {
        *(v8 + v10) = v4[v10];
        ++v10;
      }

      while (v5 != v10);
      v11 = a1[77];
      if (v11 != a1 + 79)
      {
        free(v11);
      }

      a1[77] = v9;
      *(a1 + 157) = malloc_size(v9);
    }

    *(a1 + 156) = v5;
  }

  v15 = *(a1 + 190);
  if (v15)
  {
    v16 = a1[94];
    v17 = 104 * v15;
    do
    {
      v16 = skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(v16) + 104;
      v17 -= 104;
    }

    while (v17);
  }

  v57 = (a1 + 94);
  *(a1 + 190) = 0;
  v18 = *(a1 + 166);
  if (*(a1 + 191) < v18)
  {
    skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::_reserve_more(v57, v18);
  }

  skit::SmallVector<skit::AliasSpanMatch,4u,true>::_destroy(a1[148], *(a1 + 298));
  *(a1 + 298) = 0;
  v19 = *(a1 + 166);
  v56 = (a1 + 148);
  if (*(a1 + 299) < v19)
  {
    skit::SmallVector<skit::AliasSpanMatch,4u,true>::_reserve_more(a1 + 148, v19);
    v19 = *(a1 + 166);
  }

  if (v19)
  {
    v20 = a1[82];
    v21 = v20 + 40 * v19;
    do
    {
      if (skit::internal::AliasFilter::select_by_group_id(a1 + 608, *(v20 + 32), *(v20 + 33)))
      {
        v23 = (v20 + 24);
        v22 = *(v20 + 24);
        v24 = *a1;
        v25 = *(v20 + 28);
        *v61 = *(*a1 + 48 * v22 + 24);
        *&v61[4] = *(*a1 + 48 * (v25 - 1) + 28);
        *&v61[8] = 0;
        *&v61[16] = 0;
        *&v61[24] = 0;
        v62 = &v64;
        v63 = 0x400000000;
        v65 = 0;
        if (v22 >= v25)
        {
          v27 = 0;
          v26 = 0;
          v34 = 0.0;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = v25 - v22;
          v29 = v24 + 48 * v22 + 40;
          v30 = 0.0;
          v31 = v29;
          do
          {
            v32 = *v31;
            v31 += 24;
            v33 = v27 + ((v32 >> 2) & 1);
            if ((v32 & 2) != 0)
            {
              v27 = v33;
              ++v26;
            }

            v30 = v30 + (*(v29 - 8) * (*(v29 - 12) - *(v29 - 16)));
            v29 = v31;
            --v28;
          }

          while (v28);
          v34 = v30 * 0.85;
        }

        *&v61[12] = v34;
        *&v61[16] = v26;
        skit::SpanMatchV3::append_alias_id(v61, *(v20 + 32), v26);
        *&v61[20] = v27;
        v35 = *(a1 + 298);
        if (v35 == *(a1 + 299))
        {
          skit::SmallVector<skit::AliasSpanMatch,4u,true>::_reserve_more(v56, v35 + (v35 >> 1) + 1);
          v35 = *(a1 + 298);
        }

        v36 = *v56;
        if (*(v20 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v66, *v20, *(v20 + 8));
        }

        else
        {
          *v66 = *v20;
          *&v66[16] = *(v20 + 16);
        }

        *&v66[24] = *v23;
        v37 = *&v66[24];
        LOWORD(v67) = *(v20 + 32);
        v38 = v67;
        v39 = *v61;
        v40 = *&v61[8];
        v41 = *&v61[12];
        v42 = *&v61[16];
        v43 = *&v61[24];
        v44 = v36 + 72 * v35;
        *v44 = *v66;
        *(v44 + 2) = *&v66[16];
        *(v44 + 3) = v37;
        *(v44 + 16) = v38;
        *(v44 + 5) = v39;
        *(v44 + 12) = v40;
        *(v44 + 13) = v41;
        *(v44 + 7) = v42;
        *(v44 + 8) = v43;
        ++*(a1 + 298);
        v45 = *(a1 + 190);
        if (v45 == *(a1 + 191))
        {
          skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::_reserve_more(v57, v45 + (v45 >> 1) + 1);
        }

        if (*(v20 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v58, *v20, *(v20 + 8));
        }

        else
        {
          v46 = *v20;
          v58.__r_.__value_.__r.__words[2] = *(v20 + 16);
          *&v58.__r_.__value_.__l.__data_ = v46;
        }

        v47 = *v23;
        v60 = *(v20 + 32);
        v59 = v47;
        *v66 = *v61;
        *&v66[12] = *&v61[12];
        v48 = v62;
        if (v62 == &v64)
        {
          v67 = v70;
          v49 = v63;
          if (v63)
          {
            v51 = 2 * v63;
            v52 = v70;
            do
            {
              v53 = *v48++;
              *v52++ = v53;
              v51 -= 2;
            }

            while (v51);
          }

          v50 = &v69;
        }

        else
        {
          v67 = v62;
          v49 = v63;
          v69 = HIDWORD(v63);
          v62 = &v64;
          v50 = &v63 + 1;
        }

        *v50 = 4;
        LODWORD(v63) = 0;
        v68 = v49;
        v70[2] = v65;
        skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::AliasSpanMatchImpl();
      }

      v20 += 40;
    }

    while (v20 != v21);
  }
}

void sub_2998DB740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (a34 != v35)
  {
    free(a34);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 != v34)
  {
    free(a26);
  }

  _Unwind_Resume(exception_object);
}

size_t skit::SmallVector<skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>,4u,true>::_reserve_more(char **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(104 * a2, 0x1032040E39E8272uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 2) = v8[2];
      *v7 = v9;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = 0;
      v10 = v8[3];
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 3) = v10;
      v11 = *(v8 + 5);
      *(v7 + 52) = *(v8 + 52);
      *(v7 + 40) = v11;
      skit::SmallVector<skit::GroupId,4u,true>::move((v7 + 72), (v8 + 9));
      *(v7 + 24) = *(v8 + 24);
      v8 += 13;
      v7 += 104;
    }

    while (v8 != &v5[13 * v6]);
    v12 = 104 * v6;
    do
    {
      skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(v5);
      v5 += 13;
      v12 -= 104;
    }

    while (v12);
    v5 = *a1;
  }

  if (v5 != a1 + 2)
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result / 0x68;
  return result;
}

size_t skit::SmallVector<skit::AliasSpanMatch,4u,true>::_reserve_more(__int128 **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(72 * a2, 0x101204049D86D5EuLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 2) = *(v8 + 16);
      *v7 = v9;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      v10 = *(v8 + 24);
      *(v7 + 16) = *(v8 + 32);
      *(v7 + 3) = v10;
      v11 = *(v8 + 40);
      *(v7 + 56) = *(v8 + 56);
      *(v7 + 40) = v11;
      v7 = (v7 + 72);
      v8 += 72;
    }

    while (v8 != v5 + 72 * v6);
    v12 = 72 * v6;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 72;
      v12 -= 72;
    }

    while (v12);
    v5 = *a1;
  }

  if (v5 != a1 + 2)
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result / 0x48;
  return result;
}

void skit::internal::FieldSpanMatcherImpl::clear_alias_span_matcher(skit::internal::FieldSpanMatcherImpl *this)
{
  *(this + 608) = 0;
  *(this + 156) = 0;
  v2 = *(this + 81);
  *(this + 40) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::_destroy(*(this + 82), *(this + 166));
  *(this + 166) = 0;
  v3 = *(this + 190);
  if (v3)
  {
    v4 = *(this + 94);
    v5 = 104 * v3;
    do
    {
      v4 = skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::~AliasSpanMatchImpl(v4) + 104;
      v5 -= 104;
    }

    while (v5);
  }

  *(this + 190) = 0;
  skit::SmallVector<skit::AliasSpanMatch,4u,true>::_destroy(*(this + 148), *(this + 298));
  *(this + 298) = 0;
}

void skit::internal::FieldSpanMatcherImpl::match(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5, __int16 a6, unsigned int a7)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*a3 != a3[1])
  {
    v9[0] = &v10;
    v9[1] = 0x800000000;
    v7[0] = &v8;
    v7[1] = 0x200000000;
    if (*(a1 + 760))
    {
      skit::internal::FieldSpanMatcherImpl::combine_alias_matches(a1, v9, a3, a5, v7, a4);
    }

    skit::internal::FieldMatchesImpl<skit::SpanMatchV3>::clear();
  }
}

void sub_2998DCE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  skit::SmallVector<skit::SpanMatchV3,8u,true>::~SmallVector(&STACK[0x220]);
  skit::SmallVector<skit::SpanMatchV3,8u,true>::~SmallVector(&STACK[0x430]);
  if (a65 != a10)
  {
    free(a65);
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(&a45);
  if (a57 != a11)
  {
    free(a57);
  }

  _Unwind_Resume(a1);
}

size_t skit::SmallVector<float,16u,false>::_reserve_more(uint64_t a1, unsigned int a2)
{
  v3 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v13, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 4 * v6;
    v8 = v4;
    v9 = *a1;
    do
    {
      v10 = *v9++;
      *v8++ = v10;
      v7 -= 4;
    }

    while (v7);
  }

  if (v5 != (a1 + 16))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 12) = result >> 2;
  return result;
}

void *skit::internal::IndexDiskImplV2::to_posting_list(void *result, uint64_t a2)
{
  if (a2 && ((v2 = *(a2 + 4), v3 = a2 + 2 * v2 + 8, v4 = *a2 - 2 * v2 - 8, a2 + 2 * v2 != -8) ? (v5 = v4 >= 0x10) : (v5 = 0), v5 && (v6 = *(a2 + 2 * *(a2 + 4) + 16), (8 * v6) + (6 * *(a2 + 2 * *(a2 + 4) + 20)) + 16 == v4)))
  {
    v7 = a2 + 6;
    v8 = a2 + 2 * *(a2 + 4) + 24;
    v9 = v8 + 8 * v6;
  }

  else
  {
    v3 = 0;
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v2 = 0;
  }

  *result = v7;
  result[1] = v2;
  result[2] = v3;
  result[3] = v8;
  result[4] = v9;
  return result;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::KvTableImpl(uint64_t a1, int a2)
{
  *a1 = xmmword_2998EB7D0;
  *(a1 + 16) = a2;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1064514355;
  *(a1 + 32) = time(0);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      atomic_store(0xFFFFFFFF, v4);
      v4 += 128;
      --v3;
    }

    while (v3);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[15];
    if (v3)
    {
      __p[16] = v3;
      operator delete(v3);
    }

    v4 = __p[12];
    if (v4)
    {
      __p[13] = v4;
      operator delete(v4);
    }

    v5 = __p[2];
    if (v5 != __p + 4)
    {
      free(v5);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::clear(uint64_t a1)
{
  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close(a1);
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  remove(v3, v2);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a1, *(a1 + 8));
  }

  else
  {
    v7 = *a1;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__replacement.__pn_, ".dat");
  v4 = std::__fs::filesystem::path::replace_extension(&v7, &__replacement);
  if ((v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

  remove(v4, v5);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_2998DD1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void skit::internal::IndexWriterImpl::abort_txn(skit::internal::IndexWriterImpl *this)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(this + 528) == 1)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v2 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO))
    {
      v3 = (this + 16);
      if (*(this + 39) < 0)
      {
        v3 = *v3;
      }

      v4[0] = 68289282;
      v4[1] = 16;
      v5 = 2098;
      v6 = this;
      v7 = 2082;
      v8 = v3;
      _os_log_impl(&dword_2998C6000, v2, OS_LOG_TYPE_INFO, "IndexWriterImpl::abort_txn : aborting transaction %{public,uuid_t}.16P @ %{public}s", v4, 0x1Cu);
    }

    skit::internal::MultiIndexV2::clear((this + 208));
    skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::clear(this + 40);
    *(this + 264) = 0;
  }
}

uint64_t skit::internal::get_logging_context(skit::internal *this)
{
  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  return skit::internal::get_logging_context(void)::logger;
}

os_log_t skit::internal::anonymous namespace::initialize_logging_context(skit::internal::_anonymous_namespace_ *this, void *a2)
{
  result = os_log_create("com.apple.skit", "SKIT");
  *this = result;
  return result;
}

uint64_t skit::internal::MmapFile::create(size_t *this, const char *a2, size_t a3, off_t a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, int a11)
{
  v30 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v16 = -1;
    v18 = 10;
    v19 = "path check";
    goto LABEL_13;
  }

  v15 = open_dprotected_np(a2, a5, a6, a7, a8);
  v16 = v15;
  if (v15 < 0)
  {
    v18 = 4;
    v19 = "open";
    goto LABEL_13;
  }

  if (ftruncate(v15, a4 + a3))
  {
    v18 = 9;
    v19 = "ftruncate";
    goto LABEL_13;
  }

  if (skit::internal::MmapFile::open(this, v16, a9, a10, a11, a3, a4))
  {
LABEL_5:
    close(v16);
    return 0xFFFFFFFFLL;
  }

  result = close(v16);
  if (result)
  {
    v18 = 5;
    v19 = "close";
LABEL_13:
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v20 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v21 = *__error();
      *buf = 68158466;
      v23 = v18;
      v24 = 2082;
      v25 = v19;
      v26 = 2082;
      v27 = a2;
      v28 = 1024;
      v29 = v21;
      _os_log_error_impl(&dword_2998C6000, v20, OS_LOG_TYPE_ERROR, "MmapFile::create : %{public}.*s failed @ %{public}s : %{darwin.errno}d", buf, 0x22u);
    }

    if (*this)
    {
      munmap(*this, this[1]);
    }

    *this = 0;
    this[1] = 0;
    if (v16 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t skit::internal::StringRegistry::lookup(void *a1, unsigned int a2, unsigned __int16 **a3)
{
  v3 = a1[3];
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a2;
  v6 = a2 - a2 / *(v3 + 16) * *(v3 + 16);
  v7 = v6;
  do
  {
    v8 = 0;
    v9 = v3 + 40 + (v7 << 9);
    v10 = 1;
    while (1)
    {
      v11 = *(v9 + 4 * v8);
      if (v11 == -1)
      {
LABEL_15:
        v14 = v4;
        if (v10)
        {
          return v14;
        }

        goto LABEL_18;
      }

      if (v11 == v5)
      {
        __dmb(9u);
        v12 = *(v9 + 256 + 4 * v8);
        v13 = a1[15];
        if (v12 + 6 <= v13)
        {
          v14 = a1[14] + v12;
          if (v13 >= (*v14 + v12))
          {
            v15 = *(v14 + 4);
            if (a3[1] == v15)
            {
              break;
            }
          }
        }
      }

LABEL_14:
      v10 = v8++ < 0x3F;
      if (v8 == 64)
      {
        goto LABEL_15;
      }
    }

    if (*(v14 + 4))
    {
      v16 = (v14 + 6);
      v17 = *a3;
      while (*v17 == *v16)
      {
        ++v16;
        ++v17;
        v15 = (v15 - 1);
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

LABEL_17:
    if (v10)
    {
      return v14;
    }

LABEL_18:
    v7 = (v7 + 1) % *(v3 + 16);
    v4 = v14;
  }

  while (v7 != v6);
  return v14;
}

uint64_t skit::internal::StringRegistry::erase_internal(skit::internal::StringRegistry *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (*(v2 + 16))
  {
    v3 = 0;
    v4 = a2;
    v5 = a2 - a2 / *(v2 + 16) * *(v2 + 16);
    v6 = v5;
    while (2)
    {
      v7 = 0;
      v8 = (v2 + 40 + (v6 << 9) + 256);
      v9 = 1;
      while (1)
      {
        v10 = *(v8 - 64);
        if (v10 == -1)
        {
LABEL_9:
          if (v9)
          {
            return v3 & 1;
          }

          goto LABEL_10;
        }

        if (v10 == v4)
        {
          __dmb(9u);
          v11 = *v8;
          v12 = *(this + 15);
          if (v11 + 6 <= v12 && v12 >= (*(*(this + 14) + v11) + v11))
          {
            break;
          }
        }

        v9 = v7 < 0x3F;
        ++v8;
        if (++v7 == 64)
        {
          goto LABEL_9;
        }
      }

      *(v8 - 64) = -2;
      --*(*(this + 3) + 20);
      v3 = 1;
      *(this + 162) = 1;
      if (v9)
      {
        return v3 & 1;
      }

LABEL_10:
      v6 = (v6 + 1) % *(v2 + 16);
      if (v6 != v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t skit::internal::StringRegistry::put_str(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v24[2] = *MEMORY[0x29EDCA608];
  v24[0] = a2;
  v24[1] = a3;
  if (*(a1 + 24) && !skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(a1))
  {
    v9 = 2 * a3;
    for (i = skit::internal::murmur3_32(a2, 2 * a3, *(*(a1 + 24) + 12)) & 0x7FFFFFFF; ; ++i)
    {
      v10 = skit::internal::StringRegistry::lookup(a1, i, v24);
      if (v10)
      {
        v6 = 0;
        return v6 | i;
      }

      if ((v11 & 1) == 0)
      {
        break;
      }
    }

    if ((v12 = *(a1 + 24), (v13 = *(v12 + 16) << 6) != 0) && (*(v12 + 28) * v13) >= (*(v12 + 20) + 1) || (v10 = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::rehash(a1, (v13 + (v13 >> 1)) | 1), !v10))
    {
      MEMORY[0x2A1C7C4A8](v10, v11);
      v15 = &v21[-v14];
      bzero(&v21[-v14], (v9 + 8) & 0xFFFFFFFE);
      *(v15 + 2) = a3;
      *v15 = v9 + 8;
      if (a3)
      {
        v16 = memmove(v15 + 6, a2, 2 * a3);
      }

      *(v15 + a3 + 3) = 0;
      if (*(a1 + 72) + *v15 <= *(a1 + 80))
      {
        MEMORY[0x2A1C7C4A8](v16, v17);
        *&v21[-16] = v15;
        *&v21[-8] = (v9 + 8) & 0xFFFFFFFE;
        skit::internal::BlobFile::append(v21, (a1 + 40), &v21[-16], 1);
        if (!v23)
        {
          v18 = *(a1 + 24);
          v19 = v22;
          if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::insert_offset(v18, i, *(v18 + 24)))
          {
            v6 = 0;
            v20.i32[0] = 1;
            v20.i32[1] = v19;
            *(v18 + 20) = vadd_s32(*(v18 + 20), v20);
            *(a1 + 162) = 1;
            return v6 | i;
          }

          skit::internal::BlobFile::resize((a1 + 40), *(a1 + 72) - v19);
        }
      }
    }
  }

  v6 = 0xFFFFFFFF00000000;
  i = -1;
  return v6 | i;
}

uint64_t skit::internal::StringRegistry::get_str(skit::internal::StringRegistry *this, unsigned int a2)
{
  if (!*(this + 3))
  {
    return 0;
  }

  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(this))
  {
    return 0;
  }

  v5 = *(this + 3);
  if (!*(v5 + 16))
  {
    return 0;
  }

  result = 0;
  v6 = a2 - a2 / *(v5 + 16) * *(v5 + 16);
  v7 = v6;
  while (2)
  {
    v8 = (v5 + 40 + (v7 << 9) + 256);
    v9 = 1;
    v10 = -64;
    while (1)
    {
      v11 = *(v8 - 64);
      if (v11 == -1)
      {
LABEL_14:
        if (v9)
        {
          return result;
        }

        goto LABEL_15;
      }

      if (v11 == a2)
      {
        __dmb(9u);
        v12 = *v8;
        v13 = *(this + 15);
        if (v12 + 6 <= v13)
        {
          v14 = *(this + 14);
          if (v13 >= (*(v14 + v12) + v12))
          {
            break;
          }
        }
      }

      v9 = (v10 + 64) < 0x3F;
      ++v8;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_14;
      }
    }

    result = v14 + v12 + 6;
    if (v9)
    {
      return result;
    }

LABEL_15:
    v7 = (v7 + 1) % *(v5 + 16);
    if (v7 != v6)
    {
      continue;
    }

    return result;
  }
}

BOOL skit::internal::StringRegistry::is_registered(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v10[0] = a2;
  v10[1] = a3;
  if (!a1[3] || skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(a1))
  {
    return 0;
  }

  for (i = skit::internal::murmur3_32(a2, 2 * a3, *(a1[3] + 12)) & 0x7FFFFFFF; ; ++i)
  {
    v8 = skit::internal::StringRegistry::lookup(a1, i, v10);
    result = v8 != 0;
    if (v8)
    {
      break;
    }

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<skit::internal::CompressedMetaRecord>>(unint64_t a1)
{
  if (a1 < 0x199999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<skit::internal::CompressedMetaRecord>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 1);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[10 * a2];
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 1) < v6)
    {
      if (a2 <= 0x1999999999999999)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 1);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0xCCCCCCCCCCCCCCCLL)
        {
          v10 = 0x1999999999999999;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<skit::internal::CompressedMetaRecord>>(v10);
      }

      std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
    }

    v12 = 10 * ((10 * v6 - 10) / 0xA) + 10;
    bzero(a1[1], v12);
    v11 = &v4[v12];
  }

  a1[1] = v11;
}

uint64_t skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::rehash(uint64_t a1, unsigned int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 16) + 4) > a2)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (((v5 - 16) / 0x150uLL) < a2)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v20 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v21 = *(*(a1 + 16) + 4);
      *buf = 67109376;
      v26 = a2;
      v27 = 1024;
      v28 = v21;
      _os_log_error_impl(&dword_2998C6000, v20, OS_LOG_TYPE_ERROR, "FlatSet::rehash : bucket count too large, %u > %u", buf, 0xEu);
    }

    return 0xFFFFFFFFLL;
  }

  skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::allocate_pimpl<>(&v23, v5, a2);
  v6 = v23;
  if (!v23)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 16);
  v8 = v7 + 16;
  LODWORD(v9) = -1;
  do
  {
    v9 = (v9 + 1);
  }

  while (*(v8 + v9) < -1);
  v10 = 16 * *(v7 + 4);
  v11 = v10 - 1;
  if (v9 == v11)
  {
    *(a1 + 16) = v23;
  }

  else
  {
    v12 = v8 + v9;
    v13 = v8 + v11;
    v14 = (v8 + v10 + 20 * v9);
    do
    {
      v15 = skit::internal::murmur3_32(v14, 0x10uLL, 0);
      skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>::emplace<false,skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::rehash::{lambda(std::pair<skit::Uuid,unsigned int> const&)#1},std::pair<skit::Uuid,unsigned int>>(buf, v6, v15, v14, v14);
      if (v29 <= 0)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v19 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          *v22 = 0;
          _os_log_error_impl(&dword_2998C6000, v19, OS_LOG_TYPE_ERROR, "FlatSet::rehash : failed to insert item into new hash table", v22, 2u);
        }

        v23 = 0;
        if (v6)
        {
          v24(v6);
        }

        return 0xFFFFFFFFLL;
      }

      v16 = v12;
      do
      {
        v17 = *++v16;
      }

      while (v17 < -1);
      v14 = (v14 + 20 * (v16 - v12));
      v12 = v16;
    }

    while (v16 != v13);
    v18 = *(a1 + 16);
    *(a1 + 16) = v6;
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  (*(a1 + 24))();
LABEL_16:
  result = 0;
  *(a1 + 24) = v24;
  v23 = 0;
  return result;
}

void sub_2998DDFD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>::emplace<false,skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::rehash(unsigned int)::{lambda(std::pair<skit::Uuid,unsigned int> const&)#1},std::pair<skit::Uuid,unsigned int>>(uint64_t result, _DWORD *a2, unsigned int a3, void *a4, __int128 *a5)
{
  v5 = a2[1];
  v6 = a3 & 0x7F;
  v7 = 16 * ((*a2 ^ (a3 >> 7)) % v5);
  v8 = 16 * v5;
  v9 = a2 + 4;
  v10 = &a2[v8 / 4 + 4];
  for (i = v7; ; i = (v12 + 1) % v8)
  {
    v12 = i;
    v13 = *(v9 + i);
    if (v13 == v6)
    {
      v14 = &v10[20 * i];
      if (*a4 == *v14 && a4[1] == *(v14 + 1))
      {
        v18 = 0;
        v16 = v9 + v12;
        goto LABEL_13;
      }
    }

    if (v13 == 128)
    {
      break;
    }
  }

  if (*(v9 + v7) >= -1)
  {
    do
    {
      v7 = (v7 + 1) % v8;
    }

    while (*(v9 + v7) > -2);
  }

  v16 = v9 + v7;
  v14 = &v10[20 * v7];
  v17 = *a5;
  *(v14 + 4) = *(a5 + 4);
  *v14 = v17;
  *v16 = v6;
  ++a2[2];
  v18 = 1;
LABEL_13:
  *result = v16;
  *(result + 8) = v14;
  *(result + 16) = v18;
  return result;
}

BOOL skit::internal::MemMetaStore::set_doc_wgt(uint64_t a1, skit::internal *this, float a3)
{
  v6 = *(a1 + 88);
  v7 = skit::internal::murmur3_32(this, 0x10uLL, 0);
  v8 = v6[1];
  v9 = v7 & 0x7F;
  v10 = 16 * ((*v6 ^ (v7 >> 7)) % v8);
  v11 = 16 * v8;
  v12 = &v6[v11 / 4 + 4];
  while (1)
  {
    v13 = v10;
    v14 = *(v6 + v10 + 16);
    if (v14 == v9)
    {
      v15 = &v12[20 * v13];
      v16 = *v15;
      v17 = *(v15 + 1);
      if (*this == v16 && *(this + 1) == v17)
      {
        break;
      }
    }

    if (v14 == 128)
    {
      return 0;
    }

    v10 = (v13 + 1) % v11;
  }

  v20 = (v11 - 1);
  result = v20 != v13;
  if (v20 != v13)
  {
    v21 = (*(a1 + 48) + 10 * *&v12[20 * v13 + 16]);
    _H0 = *v21;
    __asm { FCVT            S0, H0 }

    if (_S0 >= 0.00000011921)
    {
      v27 = 65504.0;
      if (a3 <= 65504.0)
      {
        v27 = a3;
      }

      _S0 = 0.0;
      if (a3 >= 0.0)
      {
        _S0 = v27;
      }

      if (_S0 < 0.00000011921)
      {
        ++*(a1 + 16);
        _S0 = 0.0;
      }

      __asm { FCVT            H0, S0 }

      *v21 = _H0;
    }
  }

  return result;
}

unint64_t skit::internal::DiskMetaStore::get_doc_internal(skit::internal::DiskMetaStore *this, unsigned int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5) + 10 * a2;
  _H0 = *v2;
  __asm { FCVT            S0, H0 }

  if (_S0 >= 0.00000011921)
  {
    v9 = *(v2 + 2);
    if (v9 != -1)
    {
      v11 = *(this + 16);
      if (v11 > v9 && v11 >= (*(v2 + 6) + v9))
      {
        return *(this + 15) + v9;
      }

      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v13 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
      {
        v14 = *(v2 + 2);
        v15 = *(v2 + 6);
        v16 = *(this + 16);
        v17[0] = 67109632;
        v17[1] = v14;
        v18 = 1024;
        v19 = v15;
        v20 = 2048;
        v21 = v16;
        _os_log_fault_impl(&dword_2998C6000, v13, OS_LOG_TYPE_FAULT, "DiskMetaStore::populate_doc : Invalid record offset/size : record=(%u, %u), doc_store_file_size=%lu", v17, 0x18u);
      }
    }
  }

  return 0;
}

void skit::internal::DiskMetaStore::clear(std::string::size_type *this)
{
  skit::internal::DiskMetaStore::close(this);
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *this, this[1]);
  }

  else
  {
    v16 = *this;
  }

  std::string::append[abi:ne200100]<char const*,0>(&v16, ".ms", "");
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = v16;
  }

  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *this, this[1]);
  }

  else
  {
    v15 = *this;
  }

  std::string::append[abi:ne200100]<char const*,0>(&v15, ".xid", "");
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = v15;
  }

  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *this, this[1]);
  }

  else
  {
    __p = *this;
  }

  std::string::append[abi:ne200100]<char const*,0>(&__p, ".ids", "");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = __p;
  }

  v3 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  v4 = v17.__r_.__value_.__r.__words[0];
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v17;
  }

  else
  {
    v5 = v17.__r_.__value_.__r.__words[0];
  }

  remove(v5, v2);
  v7 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  v8 = v16.__r_.__value_.__r.__words[0];
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v16;
  }

  else
  {
    v9 = v16.__r_.__value_.__r.__words[0];
  }

  remove(v9, v6);
  v11 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  v12 = v15.__r_.__value_.__r.__words[0];
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v15;
  }

  else
  {
    v13 = v15.__r_.__value_.__r.__words[0];
  }

  remove(v13, v10);
  if (v11 < 0)
  {
    operator delete(v12);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_33:
      if ((v3 & 0x80000000) == 0)
      {
        return;
      }

LABEL_37:
      operator delete(v4);
      return;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v8);
  if (v3 < 0)
  {
    goto LABEL_37;
  }
}

void sub_2998DE580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  _Unwind_Resume(exception_object);
}

skit::internal::DiskMetaStore *skit::internal::DiskMetaStore::populate_doc(skit::internal::DiskMetaStore *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 15))
  {
    v4 = a2;
    if (a2 != a3)
    {
      v5 = this;
      v6 = *(*(this + 3) + 32);
      do
      {
        v7 = *(v5 + 3);
        v8 = *(v4 + 8);
        if (*(v7 + 32) <= v8 && *(v7 + 40) > v8)
        {
          this = skit::internal::DiskMetaStore::get_doc_internal(v5, v8 - v6);
          *(v4 + 24) = this;
          *(v4 + 32) = v9;
        }

        v4 += 40;
      }

      while (v4 != a3);
    }
  }

  return this;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *>(std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  data = a2.__data_;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2.__data_ - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = (a2.__data_ - 24);
        a2.__data_ = a1;
        v18 = std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, a2);
        v54.__data_ = &a1[1];
        v19 = std::__fs::filesystem::operator<[abi:ne200100](v5, v54);
        if (v18)
        {
          if (!v19)
          {
            v39 = a1->__pn_.__r_.__value_.__r.__words[2];
            v40 = *&a1->__pn_.__r_.__value_.__l.__data_;
            *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
            a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
            *&a1[1].__pn_.__r_.__value_.__l.__data_ = v40;
            a1[1].__pn_.__r_.__value_.__r.__words[2] = v39;
            v15.__data_ = &a1[1];
            if (!std::__fs::filesystem::operator<[abi:ne200100](v5, v15))
            {
              return 1;
            }

            v20 = a1[1].__pn_.__r_.__value_.__r.__words[2];
            v21 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
            v41 = v5->__pn_.__r_.__value_.__r.__words[2];
            *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&v5->__pn_.__r_.__value_.__l.__data_;
            a1[1].__pn_.__r_.__value_.__r.__words[2] = v41;
            goto LABEL_16;
          }

LABEL_15:
          v20 = a1->__pn_.__r_.__value_.__r.__words[2];
          v21 = *&a1->__pn_.__r_.__value_.__l.__data_;
          v22 = v5->__pn_.__r_.__value_.__r.__words[2];
          *&a1->__pn_.__r_.__value_.__l.__data_ = *&v5->__pn_.__r_.__value_.__l.__data_;
          a1->__pn_.__r_.__value_.__r.__words[2] = v22;
LABEL_16:
          *&v5->__pn_.__r_.__value_.__l.__data_ = v21;
          v5->__pn_.__r_.__value_.__r.__words[2] = v20;
          return 1;
        }

        if (!v19)
        {
          return 1;
        }

        v30 = a1[1].__pn_.__r_.__value_.__r.__words[2];
        v31 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
        v32 = v5->__pn_.__r_.__value_.__r.__words[2];
        *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&v5->__pn_.__r_.__value_.__l.__data_;
        a1[1].__pn_.__r_.__value_.__r.__words[2] = v32;
        *&v5->__pn_.__r_.__value_.__l.__data_ = v31;
        v5->__pn_.__r_.__value_.__r.__words[2] = v30;
        break;
      case 4:
        v29 = (a2.__data_ - 24);
        v56.__data_ = &a1[1];
        v56.__size_ = &a1[2];
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,0>(a1, v56, v29);
        return 1;
      case 5:
        v7 = (a2.__data_ - 24);
        v52.__data_ = &a1[1];
        v52.__size_ = &a1[2];
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,0>(a1, v52, a1 + 3);
        v53.__data_ = &a1[3];
        if (!std::__fs::filesystem::operator<[abi:ne200100](v7, v53))
        {
          return 1;
        }

        v9 = a1[3].__pn_.__r_.__value_.__r.__words[2];
        v10 = *&a1[3].__pn_.__r_.__value_.__l.__data_;
        v11 = v7->__pn_.__r_.__value_.__r.__words[2];
        *&a1[3].__pn_.__r_.__value_.__l.__data_ = *&v7->__pn_.__r_.__value_.__l.__data_;
        a1[3].__pn_.__r_.__value_.__r.__words[2] = v11;
        *&v7->__pn_.__r_.__value_.__l.__data_ = v10;
        v7->__pn_.__r_.__value_.__r.__words[2] = v9;
        v8.__data_ = &a1[2];
        if (!std::__fs::filesystem::operator<[abi:ne200100](a1 + 3, v8))
        {
          return 1;
        }

        v13 = a1[2].__pn_.__r_.__value_.__r.__words[2];
        v14 = *&a1[2].__pn_.__r_.__value_.__l.__data_;
        *&a1[2].__pn_.__r_.__value_.__l.__data_ = *&a1[3].__pn_.__r_.__value_.__l.__data_;
        a1[2].__pn_.__r_.__value_.__r.__words[2] = a1[3].__pn_.__r_.__value_.__r.__words[2];
        *&a1[3].__pn_.__r_.__value_.__l.__data_ = v14;
        a1[3].__pn_.__r_.__value_.__r.__words[2] = v13;
        v12.__data_ = &a1[1];
        if (!std::__fs::filesystem::operator<[abi:ne200100](a1 + 2, v12))
        {
          return 1;
        }

        v16 = a1[1].__pn_.__r_.__value_.__r.__words[2];
        v17 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
        *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&a1[2].__pn_.__r_.__value_.__l.__data_;
        a1[1].__pn_.__r_.__value_.__r.__words[2] = a1[2].__pn_.__r_.__value_.__r.__words[2];
        *&a1[2].__pn_.__r_.__value_.__l.__data_ = v17;
        a1[2].__pn_.__r_.__value_.__r.__words[2] = v16;
        break;
      default:
        goto LABEL_17;
    }

    v15.__data_ = a1;
    if (std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, v15))
    {
      v33 = a1->__pn_.__r_.__value_.__r.__words[2];
      v34 = *&a1->__pn_.__r_.__value_.__l.__data_;
      *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
      a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = v34;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = v33;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2.__data_ - 24);
    v6 = (a2.__data_ - 24);
    a2.__data_ = a1;
    if (!std::__fs::filesystem::operator<[abi:ne200100](v6, a2))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v23 = a1 + 2;
  a2.__data_ = a1;
  v24 = std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, a2);
  v55.__data_ = &a1[1];
  v25 = std::__fs::filesystem::operator<[abi:ne200100](a1 + 2, v55);
  if (v24)
  {
    if (v25)
    {
      v27 = a1->__pn_.__r_.__value_.__r.__words[2];
      v28 = *&a1->__pn_.__r_.__value_.__l.__data_;
      *&a1->__pn_.__r_.__value_.__l.__data_ = *&v23->__pn_.__r_.__value_.__l.__data_;
      a1->__pn_.__r_.__value_.__r.__words[2] = a1[2].__pn_.__r_.__value_.__r.__words[2];
    }

    else
    {
      v42 = a1->__pn_.__r_.__value_.__r.__words[2];
      v43 = *&a1->__pn_.__r_.__value_.__l.__data_;
      *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
      a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = v43;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = v42;
      v26.__data_ = &a1[1];
      if (!std::__fs::filesystem::operator<[abi:ne200100](a1 + 2, v26))
      {
        goto LABEL_33;
      }

      v27 = a1[1].__pn_.__r_.__value_.__r.__words[2];
      v28 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&v23->__pn_.__r_.__value_.__l.__data_;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = a1[2].__pn_.__r_.__value_.__r.__words[2];
    }

    *&v23->__pn_.__r_.__value_.__l.__data_ = v28;
    a1[2].__pn_.__r_.__value_.__r.__words[2] = v27;
  }

  else if (v25)
  {
    v35 = a1[1].__pn_.__r_.__value_.__r.__words[2];
    v36 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
    *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&v23->__pn_.__r_.__value_.__l.__data_;
    a1[1].__pn_.__r_.__value_.__r.__words[2] = a1[2].__pn_.__r_.__value_.__r.__words[2];
    *&v23->__pn_.__r_.__value_.__l.__data_ = v36;
    a1[2].__pn_.__r_.__value_.__r.__words[2] = v35;
    v26.__data_ = a1;
    if (std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, v26))
    {
      v37 = a1->__pn_.__r_.__value_.__r.__words[2];
      v38 = *&a1->__pn_.__r_.__value_.__l.__data_;
      *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
      a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = v38;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = v37;
    }
  }

LABEL_33:
  v44 = a1 + 3;
  if (&a1[3] == data)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    v26.__data_ = v23;
    if (std::__fs::filesystem::operator<[abi:ne200100](v44, v26))
    {
      v51 = *v44;
      v44->__pn_.__r_.__value_.__l.__size_ = 0;
      v44->__pn_.__r_.__value_.__r.__words[2] = 0;
      v44->__pn_.__r_.__value_.__r.__words[0] = 0;
      v47 = v45;
      do
      {
        v48 = (&a1->__pn_.__r_.__value_.__l.__data_ + v47);
        if (*(&a1[3].__pn_.__r_.__value_.__r.__words[2] + v47 + 7) < 0)
        {
          operator delete(v48[9]);
        }

        *(v48 + 9) = *(v48 + 3);
        v48[11] = v48[8];
        *(v48 + 71) = 0;
        *(v48 + 48) = 0;
        if (v47 == -48)
        {
          v49 = a1;
          goto LABEL_44;
        }

        v26.__data_ = &a1[1] + v47;
        v47 -= 24;
      }

      while ((std::__fs::filesystem::operator<[abi:ne200100](&v51, v26) & 1) != 0);
      v49 = (a1 + v47 + 72);
      if (SHIBYTE(v49->__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49->__pn_.__r_.__value_.__l.__data_);
      }

LABEL_44:
      *v49 = v51;
      if (++v46 == 8)
      {
        return &v44[1] == data;
      }
    }

    v23 = v44;
    v45 += 24;
    if (++v44 == data)
    {
      return 1;
    }
  }
}

uint64_t *skit::internal::MultiIndexV2::clear(skit::internal::MultiIndexV2 *this)
{
  v14 = *MEMORY[0x29EDCA608];
  skit::internal::IndexMemImplV2::clear((this + 48));
  v4 = *(this + 3);
    ;
  }

  *(this + 4) = v4;
  if (*(this + 23) >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = *this;
  }

  if (skit::internal::remove_all(v5, v2))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v7 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v8 = this;
      if (*(this + 23) < 0)
      {
        v8 = *this;
      }

      v9 = *__error();
      v10 = 136446466;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      _os_log_error_impl(&dword_2998C6000, v7, OS_LOG_TYPE_ERROR, "MultiIndexV2::clear : failed to remove transaction directory @ %{public}s : %{darwin.errno}d", &v10, 0x12u);
    }
  }

  result = std::vector<std::unique_ptr<skit::internal::IndexDiskImplV2>>::shrink_to_fit(this + 3);
  *(this + 68) = 0;
  *(this + 288) = 0;
  return result;
}

uint64_t skit::internal::MultiIndexV2::get_doc_freq(void *a1, uint64_t a2)
{
  v13[6] = *MEMORY[0x29EDCA608];
  v4 = a1[3];
  v5 = a1[4];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = *(a2 + 8) >> 1;
      v11[0] = *a2;
      v11[1] = v8;
      v9 = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::get(v7, v11);
      skit::internal::IndexDiskImplV2::to_posting_list(v12, v9);
      if (v13[2])
      {
        v6 += *(v13[0] + 12);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  skit::internal::IndexMemImplV2::get(v12, a1 + 6, a2);
  if (v13[5])
  {
    v6 += *(v13[3] + 12);
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  return v6;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::get(void *a1, uint64_t a2)
{
  if (!a1[3])
  {
    return 0;
  }

  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(a1))
  {
    return 0;
  }

  v4 = a1[3];
  v5 = skit::internal::murmur3_32(*a2, 2 * *(a2 + 8), *(v4 + 12));
  v6 = *(v4 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = v5 & 0x7FFFFFFF;
  v9 = (v5 & 0x7FFFFFFFu) % v6;
  v10 = v9;
  do
  {
    v11 = 0;
    v12 = v4 + 40 + (v10 << 9);
    v13 = 1;
    do
    {
      v14 = *(v12 + 4 * v11);
      if (v14 == -1)
      {
        break;
      }

      if (v14 == v8)
      {
        __dmb(9u);
        v15 = *(v12 + 256 + 4 * v11);
        v16 = a1[15];
        if (v15 + 6 <= v16)
        {
          result = a1[14] + v15;
          if (v16 >= (*result + v15))
          {
            v18 = *(result + 4);
            if (*(a2 + 8) == v18)
            {
              if (!*(result + 4))
              {
                goto LABEL_18;
              }

              v19 = (result + 6);
              v20 = *a2;
              while (*v20 == *v19)
              {
                ++v19;
                v20 = (v20 + 2);
                if (!--v18)
                {
                  goto LABEL_18;
                }
              }
            }
          }
        }
      }

      v13 = v11++ < 0x3F;
    }

    while (v11 != 64);
    result = v7;
LABEL_18:
    if (v13)
    {
      break;
    }

    v10 = (v10 + 1) % *(v4 + 16);
    v7 = result;
  }

  while (v10 != v9);
  return result;
}

void skit::internal::IndexMemImplV2::get(uint64_t a1, void *a2, uint64_t a3)
{
  v33[3] = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = std::__string_view_hash<char16_t>::operator()[abi:ne200100](*a3, v6 >> 1);
  v8 = a2[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a2 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    v31 = v33;
    v32 = 0x1800000000;
    v29 = 0uLL;
    v30 = 0;
LABEL_19:
    *a1 = a1 + 16;
    *(a1 + 8) = 0x1800000000;
    LODWORD(v32) = 0;
    goto LABEL_20;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (*(v14 + 6) != v6 || memcmp(v14[2], v5, v6))
  {
    goto LABEL_17;
  }

  v31 = v33;
  v32 = 0x1800000000;
  if (&v31 == (v14 + 2))
  {
    v29 = *(v14 + 7);
    v30 = v14[9];
    goto LABEL_19;
  }

  v16 = v14[2];
  v17 = *(v14 + 6);
  if (v17 < 0x19)
  {
    if (v17)
    {
      v21 = *(v14 + 6);
      v22 = v33;
      do
      {
        v23 = *v16++;
        *v22++ = v23;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    v18 = skit::SmallVector<std::byte,24u,false>::allocate(*(v14 + 6));
    v19 = v18;
    for (i = 0; i != v17; ++i)
    {
      *(v18 + i) = v16[i];
    }

    if (v31 != v33)
    {
      free(v31);
    }

    v31 = v19;
    HIDWORD(v32) = malloc_size(v19);
  }

  LODWORD(v32) = v17;
  v24 = v31;
  v29 = *(v14 + 7);
  v30 = v14[9];
  if (v31 == v33)
  {
    v25 = (a1 + 16);
    *a1 = a1 + 16;
    if (v17)
    {
      v26 = v17;
      v27 = v24;
      do
      {
        v28 = *v27++;
        *v25++ = v28;
        --v26;
      }

      while (v26);
    }

    *(a1 + 8) = v17;
    *(a1 + 12) = 24;
    LODWORD(v32) = 0;
    *(a1 + 40) = v29;
    *(a1 + 56) = v30;
    if (v24 != v33)
    {
      free(v24);
    }
  }

  else
  {
    *a1 = v31;
    *(a1 + 8) = v32;
LABEL_20:
    *(a1 + 40) = v29;
    *(a1 + 56) = v30;
  }
}

void sub_2998DF128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != v13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::internal::MultiIndexV2::disk_index_size(skit::internal::IndexDiskImplV2 **this, skit::internal::IndexDiskImplV2 **a2)
{
  if (this == a2)
  {
    return 0;
  }

  v3 = this;
  v4 = 0;
  do
  {
    if (*v3)
    {
      v4 += skit::internal::IndexDiskImplV2::mem_size(*v3);
    }

    ++v3;
  }

  while (v3 != a2);
  return v4;
}

uint64_t skit::internal::IndexDiskImplV2::mem_size(skit::internal::IndexDiskImplV2 *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v1 = (*(v1 + 24) + (*(v1 + 16) << 9) + 40);
  }

  v2 = *(*(this + 24) + 12);
  v3 = *(this + 28);
  if (v3)
  {
    v3 = (336 * *(v3 + 4) + 16);
  }

  if (v2)
  {
    v4 = 10 * v2 + 48;
  }

  else
  {
    v4 = 0;
  }

  return v4 + v1 + v3 + *(this + 37);
}

uint64_t skit::internal::MultiIndexV2::index_count_threshold(skit::internal::IndexDiskImplV2 **this, skit::internal::IndexDiskImplV2 **a2, unint64_t a3)
{
  if (this == a2)
  {
    return 0;
  }

  v5 = this;
  v6 = 0;
  do
  {
    if (*v5)
    {
      if (skit::internal::IndexDiskImplV2::mem_size(*v5) >= a3)
      {
        v6 = v6;
      }

      else
      {
        v6 = (v6 + 1);
      }
    }

    ++v5;
  }

  while (v5 != a2);
  return v6;
}

uint64_t skit::internal::IndexMemImplV2::open_doc_store(skit::internal::IndexMemImplV2 *this, std::__fs::filesystem::path *a2, int a3, uint64_t a4, uint64_t a5)
{
  buf[3] = *MEMORY[0x29EDCA608];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = a2->__pn_;
  }

  std::string::append(&__p, ".ids", 4uLL);
  if (*(this + 44) == -1)
  {
    *(this + 27) = a5;
    buf[0] = __p.__r_.__value_.__l.__size_;
    v9 = __p.__r_.__value_.__r.__words[0];
    *(buf + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    memset(&__p, 0, sizeof(__p));
    if (*(this + 175) < 0)
    {
      operator delete(*(this + 19));
    }

    v11 = buf[0];
    *(this + 19) = v9;
    *(this + 20) = v11;
    *(this + 167) = *(buf + 7);
    *(this + 175) = v10;
    v12 = skit::internal::BlobFile::open((this + 152), 1538, a3, a4);
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

uint64_t skit::internal::MultiIndexV2::search(void *a1, float *a2, uint64_t *a3, int a4, int a5, unsigned int a6, unsigned int a7, int a8, float a9)
{
  v418 = a5;
  v424 = a1;
  v446 = *MEMORY[0x29EDCA608];
  v437 = a9;
  v13 = a6 + 1;
  v14 = *(a2 + 2);
  v427 = a2;
  _CF = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *a2) >> 3) >= v13;
  v428 = a3;
  if (!_CF)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Hit>>(v13);
  }

  v417 = v418 - 2;
  if (v418 == 2)
  {
    a7 = 1;
  }

  else if (v418 == 3)
  {
    a7 = -1431655765 * ((a3[1] - *a3) >> 4);
  }

  v425 = a7;
  v16 = *a3;
  v423 = a3[1];
  v422 = v16;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((v423 - v16) >> 4);
  v18 = (v423 - v16) >> 1;
  if (v17 > 0x3F)
  {
    operator new[]();
  }

  v19 = 0xAAAAAAAAAAAAAAACLL * ((v423 - v16) >> 4);
  MEMORY[0x2A1C7C4A8](v13, 0x1000C8077774924);
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v433 = &v413[-v20];
  bzero(&v413[-v20], v18);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v23 = &v413[-v20];
  v24 = v428;
  bzero(v23, v18);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v420 = &v413[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v420, 4 * v17);
  v426 = a6;
  v414 = a8;
  v416 = v17;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
LABEL_46:
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v63 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2998C6000, v63, OS_LOG_TYPE_FAULT, "MultiIndexV2::token_wgts : Unknown token weight method", buf, 2u);
        }

        goto LABEL_78;
      }

      v34 = *v24;
      v33 = v24[1];
      v35 = v424[3];
      v36 = v424[4];
      if (v35 == v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = 0;
        do
        {
          v38 = *v35++;
          v37 += *(*(v38 + 192) + 12);
        }

        while (v35 != v36);
      }

      v75 = v420;
      if (v33 != v34)
      {
        v76 = 0;
        v77 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v34) >> 4);
        v78 = (v37 + *(v424 + 27));
        do
        {
          v79 = *v428;
          v80 = *v428 + v76;
          if (*(v80 + 40))
          {
            v81 = *(v80 + 23);
            if (v81 < 0)
            {
              v83 = v79 + v76;
              v82 = *v83;
              v81 = *(v83 + 8);
            }

            else
            {
              v82 = (v79 + v76);
            }

            skit::internal::Term::Term(buf, *(v80 + 36), v82, v81);
            doc_freq = skit::internal::MultiIndexV2::get_doc_freq(v424, buf);
            *v75 = log10f((v78 / doc_freq) + 1.0);
            if (*buf != v440)
            {
              free(*buf);
            }
          }

          else
          {
            *v75 = 0.0;
          }

          ++v75;
          v76 += 48;
          --v77;
        }

        while (v77);
      }
    }

    else
    {
      v61 = v24[1] - *v24;
      if (v61)
      {
        v62 = 0xAAAAAAAAAAAAAAABLL * (v61 >> 4);
        if (v62 <= 1)
        {
          v62 = 1;
        }

        memset_pattern16(v420, &unk_2998EB820, 4 * v62);
      }
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        v40 = *v24;
        v39 = v24[1];
        v41 = v424[3];
        v42 = v424[4];
        if (v41 == v42)
        {
          v43 = 0;
        }

        else
        {
          v43 = 0;
          do
          {
            v44 = *v41++;
            v43 += *(*(v44 + 192) + 12);
          }

          while (v41 != v42);
        }

        v64 = v420;
        if (v39 != v40)
        {
          v65 = 0;
          v66 = (v43 + *(v424 + 27));
          v67 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v40) >> 4);
          do
          {
            v68 = *v428;
            v69 = *v428 + v65;
            if (*(v69 + 40))
            {
              v70 = *(v69 + 23);
              if (v70 < 0)
              {
                v72 = v68 + v65;
                v71 = *v72;
                v70 = *(v72 + 8);
              }

              else
              {
                v71 = (v68 + v65);
              }

              skit::internal::Term::Term(buf, *(v69 + 36), v71, v70);
              v73 = skit::internal::MultiIndexV2::get_doc_freq(v424, buf);
              *v64 = logf((((v66 - v73) + 0.5) / (v73 + 0.5)) + 1.0);
              if (*buf != v440)
              {
                free(*buf);
              }
            }

            else
            {
              *v64 = 0.0;
            }

            ++v64;
            v65 += 48;
            --v67;
          }

          while (v67);
        }

        break;
      case 3:
        v45 = v24;
        v46 = v24[1];
        v47 = *v45;
        v48 = v46 - *v45;
        v49 = 0xAAAAAAAAAAAAAAABLL * (v48 >> 4);
        if (v48)
        {
          v50 = 0;
          v51 = 0.0;
          v52 = 0xAAAAAAAAAAAAAAABLL * (v48 >> 4);
          v53 = v420;
          v54 = 0.0;
          do
          {
            v55 = *v428;
            v56 = *v428 + v50;
            if (*(v56 + 40))
            {
              v57 = *(v56 + 23);
              if (v57 < 0)
              {
                v59 = v55 + v50;
                v58 = *v59;
                v57 = *(v59 + 8);
              }

              else
              {
                v58 = (v55 + v50);
              }

              skit::internal::Term::Term(buf, *(v56 + 36), v58, v57);
              v60 = skit::internal::MultiIndexV2::get_doc_freq(v424, buf);
              *v53 = v60;
              if (*buf != v440)
              {
                free(*buf);
              }

              v51 = v51 + 1.0;
              v54 = v54 + v60;
            }

            else
            {
              *v53 = 0.0;
            }

            ++v53;
            v50 += 48;
            --v52;
          }

          while (v52);
        }

        else
        {
          v54 = 0.0;
          v51 = 0.0;
        }

        v74 = v420;
        if (v46 != v47)
        {
          do
          {
            *v74 = 1.0 - (*v74 * (((((v51 * (v51 * v51)) + (v51 * -2.0)) + 1.0) * 0.5) / (v54 * (v51 * (v51 * v51)))));
            ++v74;
            --v49;
          }

          while (v49);
        }

        break;
      case 4:
        v28 = v24[1] - *v24;
        if (v28)
        {
          v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 4);
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v30 = (*v24 + 32);
          v31 = v420;
          do
          {
            v32 = *v30;
            v30 += 12;
            *v31++ = v32;
            --v29;
          }

          while (v29);
        }

        break;
      default:
        goto LABEL_46;
    }
  }

LABEL_78:
  v415 = 0;
  v85 = v424[4];
  v430 = v424[3];
  v421 = v85;
  v86 = v427;
  if (v430 != v85)
  {
    v435 = v440;
    v434 = (v23 + 8);
    v87 = v416;
    if (v416 <= 1)
    {
      v87 = 1;
    }

    v419 = v87;
    v431 = (v23 + 24);
    v429 = (v23 + 16);
    do
    {
      if (v423 != v422)
      {
        v88 = 0;
        v89 = 0;
        v436 = *v430;
        v90 = v420;
        v91 = v419;
        v92 = v428;
        do
        {
          v93 = *v92 + v88;
          if (*(v93 + 40))
          {
            v94 = *(v93 + 23);
            if (v94 < 0)
            {
              v96 = *v92 + v88;
              v95 = *v96;
              v94 = *(v96 + 8);
            }

            else
            {
              v95 = (*v92 + v88);
            }

            skit::internal::Term::Term(buf, *(v93 + 36), v95, v94);
            v438[0] = *buf;
            v438[1] = *&buf[8] >> 1;
            v97 = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::get(v436, v438);
            skit::internal::IndexDiskImplV2::to_posting_list(&v443, v97);
            if (v445)
            {
              v98 = &v433[6 * v89];
              _Q0 = v444;
              *v98 = v444;
              v99 = v445;
              *(v98 + 2) = v445;
              v100 = &v23[24 * v89];
              _Q0.n128_u32[0] = *v90;
              *v100 = v98;
              *(v100 + 1) = v99;
              *(v100 + 4) = _Q0.n128_u32[0];
              ++v89;
            }

            if (*buf != v435)
            {
              free(*buf);
            }
          }

          ++v90;
          v88 += 48;
          --v91;
        }

        while (v91);
        v101 = v425;
        v102 = v426;
        v103 = v429;
        if (v89 >= v425)
        {
          v432 = *(v436[24] + 32);
          if (v89 < 2)
          {
            if (v89 == 1)
            {
              v128 = *(v23 + 1);
              if (v128 < *(*v23 + 16) + 6 * *(**v23 + 12))
              {
                do
                {
                  v129 = v432 + *v128;
                  _Q0.n128_u16[0] = *(v128 + 2);
                  __asm { FCVT            S0, H0 }

                  _H1 = *(v436[26] + 10 * (v129 - *(v436[24] + 32)));
                  __asm { FCVT            S1, H1 }

                  _Q0.n128_f32[0] = (*v103 * _Q0.n128_f32[0]) * _S1;
                  v132 = *v23;
                  v128 = (*(v23 + 1) + 6);
                  *(v23 + 1) = v128;
                }

                while (v128 < v132[2] + 6 * *(*v132 + 12));
              }
            }
          }

          else if (v418 <= 1)
          {
            if (!v418)
            {
              while (1)
              {
LABEL_235:
                v225 = v89 - 1;
                if (v89 != 1)
                {
                  if (!v89)
                  {
                    goto LABEL_94;
                  }

                  v210 = -1;
                  v211 = v431;
                  for (i = 1; i != v89; ++i)
                  {
                    v213 = v211;
                    v214 = v210;
                    do
                    {
                      if (**(v213 + 1) >= **(v213 - 2))
                      {
                        break;
                      }

                      v215 = (v213 - 24);
                      v216 = *v213;
                      v440[0] = *(v213 + 2);
                      *buf = v216;
                      *v213 = *(v213 - 24);
                      *(v213 + 4) = *(v213 - 2);
                      _Q0 = *buf;
                      v215[1].n128_u32[0] = v440[0];
                      *v215 = _Q0;
                      v213 = (v213 - 24);
                      _CF = __CFADD__(v214++, 1);
                    }

                    while (!_CF);
                    --v210;
                    v211 = (v211 + 24);
                  }
                }

                v217 = 0.0;
                v218 = -1;
                v219 = v103;
                while (v218 - v225 != -1)
                {
                  v220 = **(v219 - 2);
                  _H2 = *(v220 + 4);
                  __asm { FCVT            S2, H2 }

                  v223 = *v219;
                  v219 += 6;
                  v217 = v217 + (v223 * _S2);
                  LOWORD(_S2) = *(v220 + 6);
                  __asm { FCVT            S2, H2 }

                  ++v218;
                  if ((v217 * _S2) > v437)
                  {
                    v225 = v218;
                    goto LABEL_212;
                  }
                }

                LODWORD(v218) = v89 - 1;
LABEL_212:
                v226 = **&v23[24 * v225 + 8];
                if (**(v23 + 1) == v226)
                {
                  v227 = 0;
                  v228 = v432 + v226;
                  _H0 = *(v436[26] + 10 * (v432 + v226 - *(v436[24] + 32)));
                  __asm { FCVT            S0, H0 }

                  v230 = 0.0;
                  v231 = v434;
                  while (1)
                  {
                    v232 = *v231;
                    if (**v231 != v226)
                    {
                      break;
                    }

                    _H2 = *(v232 + 2);
                    __asm { FCVT            S2, H2 }

                    v230 = v230 + (v231[2] * _S2);
                    *v231 = v232 + 6;
                    v231 += 6;
                    if (v89 == ++v227)
                    {
                      LODWORD(v227) = v89;
                      break;
                    }
                  }

                  _Q0.n128_f32[0] = v230 * _Q0.n128_f32[0];
                }

                else if (v218)
                {
                  v235 = 0;
                  do
                  {
                    v236 = &v23[24 * v235];
                    v237 = v236[1];
                    v238 = *(*v236 + 16) + 6 * *(**v236 + 12) - v237;
                    if (v238)
                    {
                      v239 = 0xAAAAAAAAAAAAAAABLL * (v238 >> 1);
                      do
                      {
                        v240 = v239 >> 1;
                        v241 = &v237[6 * (v239 >> 1)];
                        v243 = *v241;
                        v242 = v241 + 6;
                        v239 += ~(v239 >> 1);
                        if (v243 < v226)
                        {
                          v237 = v242;
                        }

                        else
                        {
                          v239 = v240;
                        }
                      }

                      while (v239);
                    }

                    v236[1] = v237;
                    ++v235;
                  }

                  while (v235 != v225);
                }

                v244 = 0;
                do
                {
                  v245 = v244 + 1;
                  if (*&v23[24 * v244 + 8] >= *(*&v23[24 * v244] + 16) + 6 * *(**&v23[24 * v244] + 12))
                  {
                    if (v245 < v89)
                    {
                      v246 = &v23[24 * v245];
                      v247 = v244;
                      do
                      {
                        v248 = &v23[24 * v247];
                        _Q0 = *v246;
                        v248[1].n128_u32[0] = v246[1].n128_u32[0];
                        *v248 = _Q0;
                        ++v245;
                        ++v247;
                        v246 = (v246 + 24);
                      }

                      while (v245 < v89);
                    }

                    --v89;
                  }

                  else
                  {
                    ++v244;
                  }
                }

                while (v244 < v89);
              }
            }

            if (v418 == 1)
            {
              while (1)
              {
                if (v89 == 1)
                {
                  LODWORD(v141) = 0;
                }

                else
                {
                  if (!v89)
                  {
                    break;
                  }

                  v133 = -1;
                  v134 = v431;
                  for (j = 1; j != v89; ++j)
                  {
                    v136 = v134;
                    v137 = v133;
                    do
                    {
                      if (**(v136 + 1) >= **(v136 - 2))
                      {
                        break;
                      }

                      v138 = v136 - 24;
                      v139 = *v136;
                      v440[0] = *(v136 + 2);
                      *buf = v139;
                      *v136 = *(v136 - 24);
                      *(v136 + 4) = *(v136 - 2);
                      v140 = *buf;
                      *(v138 + 16) = v440[0];
                      *v138 = v140;
                      v136 = (v136 - 24);
                      _CF = __CFADD__(v137++, 1);
                    }

                    while (!_CF);
                    --v133;
                    v134 = (v134 + 24);
                  }

                  v141 = v89 - 1;
                  v142 = 0;
                  v143 = 0.0;
                  v144 = v103;
                  v145 = 0.0;
                  while (1)
                  {
                    v146 = **(v144 - 2);
                    _H3 = *(v146 + 4);
                    __asm { FCVT            S3, H3 }

                    v143 = v143 + (*v144 * _S3);
                    LOWORD(_S3) = *(v146 + 6);
                    __asm { FCVT            S3, H3 }

                    if (v145 < _S3)
                    {
                      v145 = _S3;
                    }

                    if ((v143 * v145) > v437)
                    {
                      break;
                    }

                    ++v142;
                    v144 += 6;
                    if (v141 == v142)
                    {
                      goto LABEL_143;
                    }
                  }

                  LODWORD(v141) = v142;
                }

LABEL_143:
                v150 = 0;
                v151 = **&v23[24 * v141 + 8];
                if ((v141 + 1) > 1)
                {
                  v152 = (v141 + 1);
                }

                else
                {
                  v152 = 1;
                }

                v153 = 0.0;
                v154 = v434;
                v155 = 0.0;
                do
                {
                  v156 = *(v154 - 1);
                  v157 = skit::internal::PostingListV2::seek_to_block(v156, *v154, v151);
                  *v154 = v157;
                  v158 = v156[2];
                  if (v157 < v158 + 6 * *(*v156 + 12))
                  {
                    v159 = ((v157 - v158) * 0x2AAAAAAAAAAAAAABLL) >> 64;
                    v160 = v156[1] + 8 * ((v159 >> 6) + (v159 >> 63));
                    _H0 = *(v160 + 4);
                    __asm { FCVT            S0, H0 }

                    v153 = v153 + _S0;
                    LOWORD(_S0) = *(v160 + 6);
                    __asm { FCVT            S0, H0 }

                    if (v155 < _S0)
                    {
                      v155 = _S0;
                    }
                  }

                  ++v150;
                  v154 += 3;
                }

                while (v152 != v150);
                if (v89 > v150)
                {
                  v164 = v89 - v152;
                  v165 = &v434[3 * v152];
                  while (**v165 == v151)
                  {
                    v166 = *(v165 - 1);
                    v167 = skit::internal::PostingListV2::seek_to_block(v166, *v165, v151);
                    *v165 = v167;
                    v168 = v166[2];
                    if (v167 < v168 + 6 * *(*v166 + 12))
                    {
                      v169 = ((v167 - v168) * 0x2AAAAAAAAAAAAAABLL) >> 64;
                      v170 = v166[1] + 8 * ((v169 >> 6) + (v169 >> 63));
                      _H0 = *(v170 + 4);
                      __asm { FCVT            S0, H0 }

                      v153 = v153 + _S0;
                      LOWORD(_S0) = *(v170 + 6);
                      __asm { FCVT            S0, H0 }

                      if (v155 < _S0)
                      {
                        v155 = _S0;
                      }
                    }

                    LODWORD(v152) = v152 + 1;
                    v165 += 3;
                    if (!--v164)
                    {
                      LODWORD(v150) = v89;
                      goto LABEL_160;
                    }
                  }

                  LODWORD(v150) = v152;
                }

LABEL_160:
                v86 = v427;
                if ((v155 * v153) <= v437)
                {
                  v189 = 0;
                  if (v150 <= 1)
                  {
                    v190 = 1;
                  }

                  else
                  {
                    v190 = v150;
                  }

                  v191 = v434;
                  v192 = v190;
                  v103 = v429;
                  do
                  {
                    v193 = *(v191 - 1);
                    v194 = v193[2];
                    if (*v191 < v194 + 6 * *(*v193 + 12) && v189 <= *(v193[1] + 8 * ((*v191 - v194) / 384)))
                    {
                      v189 = *(v193[1] + 8 * ((*v191 - v194) / 384));
                    }

                    v191 += 3;
                    --v192;
                  }

                  while (v192);
                  v195 = 0;
                  v196 = v189 + 1;
                  do
                  {
                    v197 = &v23[24 * v195];
                    v198 = v197[1];
                    v199 = *(*v197 + 16) + 6 * *(**v197 + 12) - v198;
                    if (v199)
                    {
                      v200 = 0xAAAAAAAAAAAAAAABLL * (v199 >> 1);
                      do
                      {
                        v201 = v200 >> 1;
                        v202 = &v198[6 * (v200 >> 1)];
                        v204 = *v202;
                        v203 = v202 + 6;
                        v200 += ~(v200 >> 1);
                        if (v204 < v196)
                        {
                          v198 = v203;
                        }

                        else
                        {
                          v200 = v201;
                        }
                      }

                      while (v200);
                    }

                    v197[1] = v198;
                    ++v195;
                  }

                  while (v195 != v190);
                }

                else
                {
                  v174 = 0;
                  v175 = v432 + v151;
                  _Q0.n128_u16[0] = *(v436[26] + 10 * (v432 + v151 - *(v436[24] + 32)));
                  if (v150 <= 1)
                  {
                    v176 = 1;
                  }

                  else
                  {
                    v176 = v150;
                  }

                  v177 = 0.0;
                  v178 = v426;
                  v103 = v429;
                  do
                  {
                    v179 = &v23[24 * v174];
                    v180 = *(v179 + 1);
                    v181 = *(*v179 + 16) + 6 * *(**v179 + 12);
                    if (v181 != v180)
                    {
                      v182 = 0xAAAAAAAAAAAAAAABLL * ((v181 - v180) >> 1);
                      do
                      {
                        v183 = v182 >> 1;
                        v184 = (v180 + 6 * (v182 >> 1));
                        v186 = *v184;
                        v185 = v184 + 6;
                        v182 += ~(v182 >> 1);
                        if (v186 < v151)
                        {
                          v180 = v185;
                        }

                        else
                        {
                          v182 = v183;
                        }
                      }

                      while (v182);
                    }

                    *(v179 + 1) = v180;
                    if (v180 < v181 && *v180 == v151)
                    {
                      _H2 = *(v180 + 4);
                      __asm { FCVT            S2, H2 }

                      v177 = v177 + (v179[4] * _S2);
                      *(v179 + 1) = v180 + 6;
                    }

                    ++v174;
                  }

                  while (v174 != v176);
                  __asm { FCVT            S0, H0 }

                  _Q0.n128_f32[0] = v177 * _Q0.n128_f32[0];
                }

                v205 = 0;
                do
                {
                  v206 = v205 + 1;
                  if (*&v23[24 * v205 + 8] >= *(*&v23[24 * v205] + 16) + 6 * *(**&v23[24 * v205] + 12))
                  {
                    if (v206 < v89)
                    {
                      v207 = &v23[24 * v206];
                      v208 = v205;
                      do
                      {
                        v209 = &v23[24 * v208];
                        _Q0 = *v207;
                        v209[1].n128_u32[0] = v207[1].n128_u32[0];
                        *v209 = _Q0;
                        ++v206;
                        ++v208;
                        v207 = (v207 + 24);
                      }

                      while (v206 < v89);
                    }

                    --v89;
                  }

                  else
                  {
                    ++v205;
                  }
                }

                while (v205 < v89);
              }
            }
          }

          else
          {
            if (v417 < 2)
            {
              goto LABEL_235;
            }

            if (v418 == 4)
            {
              while (1)
              {
                if (v89 != 1)
                {
                  if (!v89)
                  {
                    break;
                  }

                  v104 = -1;
                  v105 = v431;
                  for (k = 1; k != v89; ++k)
                  {
                    v107 = v105;
                    v108 = v104;
                    do
                    {
                      if (**(v107 + 1) >= **(v107 - 2))
                      {
                        break;
                      }

                      v109 = (v107 - 24);
                      v110 = *v107;
                      v440[0] = *(v107 + 2);
                      *buf = v110;
                      *v107 = *(v107 - 24);
                      *(v107 + 4) = *(v107 - 2);
                      _Q0 = *buf;
                      v109[1].n128_u32[0] = v440[0];
                      *v109 = _Q0;
                      v107 = (v107 - 24);
                      _CF = __CFADD__(v108++, 1);
                    }

                    while (!_CF);
                    --v104;
                    v105 = (v105 + 24);
                  }
                }

                v111 = 0;
                v112 = **v434;
                v113 = v432 + v112;
                _H0 = *(v436[26] + 10 * (v432 + v112 - *(v436[24] + 32)));
                __asm { FCVT            S0, H0 }

                v118 = 0.0;
                v119 = v434;
                while (1)
                {
                  v120 = *v119;
                  if (**v119 != v112)
                  {
                    break;
                  }

                  _H2 = *(v120 + 2);
                  __asm { FCVT            S2, H2 }

                  v118 = v118 + (v119[2] * _S2);
                  *v119 = v120 + 6;
                  v119 += 6;
                  if (v89 == ++v111)
                  {
                    LODWORD(v111) = v89;
                    break;
                  }
                }

                _Q0.n128_f32[0] = v118 * _Q0.n128_f32[0];
                v123 = 0;
                do
                {
                  v124 = v123 + 1;
                  if (*&v23[24 * v123 + 8] >= *(*&v23[24 * v123] + 16) + 6 * *(**&v23[24 * v123] + 12))
                  {
                    if (v124 < v89)
                    {
                      v125 = &v23[24 * v124];
                      v126 = v123;
                      do
                      {
                        v127 = &v23[24 * v126];
                        _Q0 = *v125;
                        v127[1].n128_u32[0] = v125[1].n128_u32[0];
                        *v127 = _Q0;
                        ++v124;
                        ++v126;
                        v125 = (v125 + 24);
                      }

                      while (v124 < v89);
                    }

                    --v89;
                  }

                  else
                  {
                    ++v123;
                  }
                }

                while (v123 < v89);
              }
            }
          }
        }
      }

LABEL_94:
      ++v430;
    }

    while (v430 != v421);
  }

  if (v423 != v422)
  {
    v249 = 0;
    v250 = 0;
    v251 = v416 <= 1 ? 1 : v416;
    v252 = v425;
    v253 = v420;
    do
    {
      v254 = *v428;
      v255 = *v428 + v249;
      if (*(v255 + 40))
      {
        v256 = *(v255 + 23);
        if (v256 < 0)
        {
          v258 = v254 + v249;
          v257 = *v258;
          v256 = *(v258 + 8);
        }

        else
        {
          v257 = (v254 + v249);
        }

        skit::internal::Term::Term(&v443, *(v255 + 36), v257, v256);
        skit::internal::IndexMemImplV2::get(buf, v424 + 6, &v443);
        if (v442)
        {
          v259 = &v433[6 * v250];
          _Q0 = v441;
          *v259 = v441;
          v260 = v442;
          *(v259 + 2) = v442;
          v261 = &v23[24 * v250];
          _Q0.n128_u32[0] = *v253;
          *v261 = v259;
          *(v261 + 1) = v260;
          *(v261 + 4) = _Q0.n128_u32[0];
          ++v250;
        }

        if (*buf != v440)
        {
          free(*buf);
        }

        if (v443 != &v444)
        {
          free(v443);
        }
      }

      ++v253;
      v249 += 48;
      --v251;
    }

    while (v251);
    if (v250 >= v252)
    {
      v436 = v424[16];
      if (v250 < 2)
      {
        if (v250 == 1)
        {
          v290 = *(v23 + 1);
          if (v290 < *(*v23 + 16) + 6 * *(**v23 + 12))
          {
            do
            {
              v291 = v436 + *v290;
              _Q0.n128_u16[0] = *(v290 + 2);
              __asm { FCVT            S0, H0 }

              _H1 = *(v424[18] + 10 * (v291 - *(v424 + 32)));
              __asm { FCVT            S1, H1 }

              _Q0.n128_f32[0] = (*(v23 + 4) * _Q0.n128_f32[0]) * _S1;
              v294 = *v23;
              v290 = (*(v23 + 1) + 6);
              *(v23 + 1) = v290;
            }

            while (v290 < v294[2] + 6 * *(*v294 + 12));
          }
        }
      }

      else if (v418 <= 1)
      {
        if (!v418)
        {
          while (1)
          {
LABEL_370:
            v374 = v250 - 1;
            if (v250 != 1)
            {
              if (!v250)
              {
                goto LABEL_255;
              }

              v375 = -1;
              v376 = v23 + 24;
              for (m = 1; m != v250; ++m)
              {
                v378 = v375;
                v379 = v376;
                do
                {
                  if (**(v379 + 1) >= **(v379 - 2))
                  {
                    break;
                  }

                  v380 = (v379 - 24);
                  v381 = *v379;
                  v440[0] = *(v379 + 2);
                  *buf = v381;
                  *v379 = *(v379 - 24);
                  *(v379 + 4) = *(v379 - 2);
                  _Q0 = *buf;
                  v380[1].n128_u32[0] = v440[0];
                  *v380 = _Q0;
                  v379 -= 24;
                  _CF = __CFADD__(v378++, 1);
                }

                while (!_CF);
                v376 += 24;
                --v375;
              }
            }

            v382 = 0.0;
            v383 = -1;
            v384 = (v23 + 16);
            while (v383 - v374 != -1)
            {
              v385 = **(v384 - 2);
              _H2 = *(v385 + 4);
              __asm { FCVT            S2, H2 }

              v388 = *v384;
              v384 += 6;
              v382 = v382 + (v388 * _S2);
              LOWORD(_S2) = *(v385 + 6);
              __asm { FCVT            S2, H2 }

              ++v383;
              if ((v382 * _S2) > v437)
              {
                v374 = v383;
                goto LABEL_383;
              }
            }

            LODWORD(v383) = v250 - 1;
LABEL_383:
            v390 = **&v23[24 * v374 + 8];
            if (**(v23 + 1) == v390)
            {
              v391 = 0;
              v392 = v436 + v390;
              _H0 = *(v424[18] + 10 * (v436 + v390 - *(v424 + 32)));
              __asm { FCVT            S0, H0 }

              v394 = 0.0;
              v395 = (v23 + 8);
              while (1)
              {
                v396 = *v395;
                if (**v395 != v390)
                {
                  break;
                }

                _H2 = *(v396 + 2);
                __asm { FCVT            S2, H2 }

                v394 = v394 + (v395[2] * _S2);
                *v395 = v396 + 6;
                v395 += 6;
                if (v250 == ++v391)
                {
                  LODWORD(v391) = v250;
                  break;
                }
              }

              _Q0.n128_f32[0] = v394 * _Q0.n128_f32[0];
            }

            else if (v383)
            {
              v399 = 0;
              do
              {
                v400 = &v23[24 * v399];
                v401 = v400[1];
                v402 = *(*v400 + 16) + 6 * *(**v400 + 12) - v401;
                if (v402)
                {
                  v403 = 0xAAAAAAAAAAAAAAABLL * (v402 >> 1);
                  do
                  {
                    v404 = v403 >> 1;
                    v405 = &v401[6 * (v403 >> 1)];
                    v407 = *v405;
                    v406 = v405 + 6;
                    v403 += ~(v403 >> 1);
                    if (v407 < v390)
                    {
                      v401 = v406;
                    }

                    else
                    {
                      v403 = v404;
                    }
                  }

                  while (v403);
                }

                v400[1] = v401;
                ++v399;
              }

              while (v399 != v374);
            }

            v408 = 0;
            do
            {
              v409 = v408 + 1;
              if (*&v23[24 * v408 + 8] >= *(*&v23[24 * v408] + 16) + 6 * *(**&v23[24 * v408] + 12))
              {
                if (v409 < v250)
                {
                  v410 = &v23[24 * v409];
                  v411 = v408;
                  do
                  {
                    v412 = &v23[24 * v411];
                    _Q0 = *v410;
                    v412[1].n128_u32[0] = v410[1].n128_u32[0];
                    *v412 = _Q0;
                    ++v409;
                    ++v411;
                    v410 = (v410 + 24);
                  }

                  while (v409 < v250);
                }

                --v250;
              }

              else
              {
                ++v408;
              }
            }

            while (v408 < v250);
          }
        }

        if (v418 == 1)
        {
          v434 = (v23 + 24);
          v433 = (v23 + 16);
          v435 = (v23 + 8);
          while (1)
          {
            if (v250 == 1)
            {
              LODWORD(v303) = 0;
            }

            else
            {
              if (!v250)
              {
                break;
              }

              v295 = -1;
              v296 = v434;
              for (n = 1; n != v250; ++n)
              {
                v298 = v296;
                v299 = v295;
                do
                {
                  if (*v298[1] >= **(v298 - 2))
                  {
                    break;
                  }

                  v300 = v298 - 3;
                  v301 = *v298;
                  v440[0] = v298[2];
                  *buf = v301;
                  *v298 = *(v298 - 3);
                  *(v298 + 4) = *(v298 - 2);
                  v302 = *buf;
                  *(v300 + 4) = v440[0];
                  *v300 = v302;
                  v298 -= 3;
                  _CF = __CFADD__(v299++, 1);
                }

                while (!_CF);
                --v295;
                v296 += 3;
              }

              v303 = v250 - 1;
              v304 = 0;
              v305 = 0.0;
              v306 = v433;
              v307 = 0.0;
              while (1)
              {
                v308 = **(v306 - 2);
                _H3 = *(v308 + 4);
                __asm { FCVT            S3, H3 }

                v305 = v305 + (*v306 * _S3);
                LOWORD(_S3) = *(v308 + 6);
                __asm { FCVT            S3, H3 }

                if (v307 < _S3)
                {
                  v307 = _S3;
                }

                if ((v305 * v307) > v437)
                {
                  break;
                }

                ++v304;
                v306 += 6;
                if (v303 == v304)
                {
                  goto LABEL_312;
                }
              }

              LODWORD(v303) = v304;
            }

LABEL_312:
            v312 = 0;
            v313 = **&v23[24 * v303 + 8];
            if ((v303 + 1) > 1)
            {
              v314 = (v303 + 1);
            }

            else
            {
              v314 = 1;
            }

            v315 = 0.0;
            v316 = v435;
            v317 = 0.0;
            do
            {
              v318 = *(v316 - 1);
              v319 = skit::internal::PostingListV2::seek_to_block(v318, *v316, v313);
              *v316 = v319;
              v321 = v318[2];
              if (v319 < v321 + 6 * *(*v318 + 12))
              {
                v322 = ((v319 - v321) * 0x2AAAAAAAAAAAAAABLL) >> 64;
                v323 = v318[1] + 8 * ((v322 >> 6) + (v322 >> 63));
                _H0 = *(v323 + 4);
                __asm { FCVT            S0, H0 }

                v315 = v315 + _S0;
                LOWORD(_S0) = *(v323 + 6);
                __asm { FCVT            S0, H0 }

                if (v317 < _S0)
                {
                  v317 = _S0;
                }
              }

              ++v312;
              v316 += 3;
            }

            while (v314 != v312);
            if (v250 > v312)
            {
              v327 = v250 - v314;
              v328 = &v435[3 * v314];
              while (**v328 == v313)
              {
                v329 = *(v328 - 1);
                v330 = skit::internal::PostingListV2::seek_to_block(v329, *v328, v313);
                *v328 = v330;
                v331 = v329[2];
                if (v330 < v331 + 6 * *(*v329 + 12))
                {
                  v332 = ((v330 - v331) * 0x2AAAAAAAAAAAAAABLL) >> 64;
                  v333 = v329[1] + 8 * ((v332 >> 6) + (v332 >> 63));
                  _H0 = *(v333 + 4);
                  __asm { FCVT            S0, H0 }

                  v315 = v315 + _S0;
                  LOWORD(_S0) = *(v333 + 6);
                  __asm { FCVT            S0, H0 }

                  if (v317 < _S0)
                  {
                    v317 = _S0;
                  }
                }

                LODWORD(v314) = v314 + 1;
                v328 += 3;
                if (!--v327)
                {
                  LODWORD(v312) = v250;
                  goto LABEL_329;
                }
              }

              LODWORD(v312) = v314;
            }

LABEL_329:
            if ((v317 * v315) <= v437)
            {
              v352 = 0;
              if (v312 <= 1)
              {
                v353 = 1;
              }

              else
              {
                v353 = v312;
              }

              v354 = v435;
              v355 = v353;
              do
              {
                v356 = *(v354 - 1);
                v357 = v356[2];
                if (*v354 < v357 + 6 * *(*v356 + 12) && v352 <= *(v356[1] + 8 * ((*v354 - v357) / 384)))
                {
                  v352 = *(v356[1] + 8 * ((*v354 - v357) / 384));
                }

                v354 += 3;
                --v355;
              }

              while (v355);
              v358 = 0;
              v359 = v352 + 1;
              do
              {
                v360 = &v23[24 * v358];
                v361 = v360[1];
                v362 = *(*v360 + 16) + 6 * *(**v360 + 12) - v361;
                if (v362)
                {
                  v363 = 0xAAAAAAAAAAAAAAABLL * (v362 >> 1);
                  do
                  {
                    v364 = v363 >> 1;
                    v365 = &v361[6 * (v363 >> 1)];
                    v367 = *v365;
                    v366 = v365 + 6;
                    v363 += ~(v363 >> 1);
                    if (v367 < v359)
                    {
                      v361 = v366;
                    }

                    else
                    {
                      v363 = v364;
                    }
                  }

                  while (v363);
                }

                v360[1] = v361;
                ++v358;
              }

              while (v358 != v353);
            }

            else
            {
              v337 = 0;
              v338 = v436 + v313;
              _Q0.n128_u16[0] = *(v424[18] + 10 * (v436 + v313 - *(v424 + 32)));
              if (v312 <= 1)
              {
                v339 = 1;
              }

              else
              {
                v339 = v312;
              }

              v340 = 0.0;
              v341 = v426;
              do
              {
                v342 = &v23[24 * v337];
                v343 = *(v342 + 1);
                v344 = *(*v342 + 16) + 6 * *(**v342 + 12);
                if (v344 != v343)
                {
                  v345 = 0xAAAAAAAAAAAAAAABLL * ((v344 - v343) >> 1);
                  do
                  {
                    v346 = v345 >> 1;
                    v347 = (v343 + 6 * (v345 >> 1));
                    v349 = *v347;
                    v348 = v347 + 6;
                    v345 += ~(v345 >> 1);
                    if (v349 < v313)
                    {
                      v343 = v348;
                    }

                    else
                    {
                      v345 = v346;
                    }
                  }

                  while (v345);
                }

                *(v342 + 1) = v343;
                if (v343 < v344 && *v343 == v313)
                {
                  _H2 = *(v343 + 4);
                  __asm { FCVT            S2, H2 }

                  v340 = v340 + (v342[4] * _S2);
                  *(v342 + 1) = v343 + 6;
                }

                ++v337;
              }

              while (v337 != v339);
              __asm { FCVT            S0, H0 }

              _Q0.n128_f32[0] = v340 * _Q0.n128_f32[0];
            }

            v368 = 0;
            do
            {
              v369 = v368 + 1;
              if (*&v23[24 * v368 + 8] >= *(*&v23[24 * v368] + 16) + 6 * *(**&v23[24 * v368] + 12))
              {
                if (v369 < v250)
                {
                  v370 = &v23[24 * v369];
                  v371 = v368;
                  do
                  {
                    v372 = &v23[24 * v371];
                    v373 = *v370;
                    *(v372 + 4) = *(v370 + 4);
                    *v372 = v373;
                    ++v369;
                    ++v371;
                    v370 += 24;
                  }

                  while (v369 < v250);
                }

                --v250;
              }

              else
              {
                ++v368;
              }
            }

            while (v368 < v250);
          }
        }
      }

      else
      {
        if (v417 < 2)
        {
          goto LABEL_370;
        }

        if (v418 == 4)
        {
          v267 = v426;
          v268 = v425;
          while (1)
          {
            if (v250 != 1)
            {
              if (!v250)
              {
                break;
              }

              v269 = -1;
              v270 = v23 + 24;
              for (ii = 1; ii != v250; ++ii)
              {
                v272 = v270;
                v273 = v269;
                do
                {
                  if (**(v272 + 1) >= **(v272 - 2))
                  {
                    break;
                  }

                  v274 = (v272 - 24);
                  v275 = *v272;
                  v440[0] = *(v272 + 2);
                  *buf = v275;
                  *v272 = *(v272 - 24);
                  *(v272 + 4) = *(v272 - 2);
                  _Q0 = *buf;
                  v274[1].n128_u32[0] = v440[0];
                  *v274 = _Q0;
                  v272 -= 24;
                  _CF = __CFADD__(v273++, 1);
                }

                while (!_CF);
                --v269;
                v270 += 24;
              }

              v267 = v426;
              v268 = v425;
            }

            v276 = 0;
            v277 = **(v23 + 1);
            v278 = v436 + v277;
            _H0 = *(v424[18] + 10 * (v436 + v277 - *(v424 + 32)));
            __asm { FCVT            S0, H0 }

            v280 = 0.0;
            v281 = (v23 + 8);
            while (1)
            {
              v282 = *v281;
              if (**v281 != v277)
              {
                break;
              }

              _H2 = *(v282 + 2);
              __asm { FCVT            S2, H2 }

              v280 = v280 + (v281[2] * _S2);
              *v281 = v282 + 6;
              v281 += 6;
              if (v250 == ++v276)
              {
                LODWORD(v276) = v250;
                break;
              }
            }

            _Q0.n128_f32[0] = v280 * _Q0.n128_f32[0];
            v285 = 0;
            do
            {
              v286 = v285 + 1;
              if (*&v23[24 * v285 + 8] >= *(*&v23[24 * v285] + 16) + 6 * *(**&v23[24 * v285] + 12))
              {
                if (v286 < v250)
                {
                  v287 = &v23[24 * v286];
                  v288 = v285;
                  do
                  {
                    v289 = &v23[24 * v288];
                    _Q0 = *v287;
                    v289[1].n128_u32[0] = v287[1].n128_u32[0];
                    *v289 = _Q0;
                    ++v286;
                    ++v288;
                    v287 = (v287 + 24);
                  }

                  while (v286 < v250);
                }

                --v250;
              }

              else
              {
                ++v285;
              }
            }

            while (v285 < v250);
          }
        }
      }
    }
  }

LABEL_255:
  v262 = v427;
  if (v414)
  {
    v263 = v424[3];
    v264 = v424[4];
    while (v263 != v264)
    {
      v265 = *v263++;
      skit::internal::DiskMetaStore::populate_doc((v265 + 168), *v262, v262[1]);
    }
  }

  result = v415;
  if (v415)
  {
    return MEMORY[0x29C2A31E0](v415, 0x1000C8077774924);
  }

  return result;
}
void *sub_10000E474(void *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000034E8();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  *(__dst + v2) = 0;
  return __dst;
}

void sub_10000E528(uint64_t a1, const void **a2, std::string *this)
{
  if (a1)
  {
    v3 = this;
    if (this == -1)
    {
      v3 = *__error();
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v6 + 2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000034E8();
    }

    if (v6 + 2 >= 0x17)
    {
      operator new();
    }

    memset(&v15, 0, sizeof(v15));
    *(&v15.__r_.__value_.__s + 23) = v6 + 2;
    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      memmove(&v15, v7, v6);
    }

    strcpy(&v15 + v6, ": ");
    llvm::sys::StrError(v3, &__p);
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

    v10 = std::string::append(&v15, p_p, size);
    v11 = v10->__r_.__value_.__r.__words[0];
    v16[0] = v10->__r_.__value_.__l.__size_;
    *(v16 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = v16[0];
    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 15) = *(v16 + 7);
    *(a1 + 23) = v12;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_27:
      operator delete(v15.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_27;
    }
  }
}

void *sub_10000E70C(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000034E8();
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

uint64_t sub_10000E7C4(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  memset(&v19, 0, sizeof(v19));
  v5 = *(a1 + 8);
  if (v5)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000034E8();
    }

    v6 = *a1;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
    memmove(&__dst, v6, v5);
    __dst.__r_.__value_.__s.__data_[v5] = 0;
    v19 = __dst;
  }

  else
  {
    std::string::assign(&v19, "/dev/null");
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v19;
  }

  else
  {
    v8 = v19.__r_.__value_.__r.__words[0];
  }

  if (a2)
  {
    v9 = open(v8, 513, 438);
  }

  else
  {
    v9 = open(v8, 0, 438);
  }

  if (v9 != -1)
  {
    v10 = v9;
    if (dup2(v9, a2) == -1)
    {
      *(&__dst.__r_.__value_.__s + 23) = 11;
      strcpy(&__dst, "Cannot dup2");
      sub_10000E528(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
      close(v10);
      result = 1;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      close(v10);
      result = 0;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    return result;
  }

  std::operator+<char>();
  v11 = std::string::append(&v16, "' for ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (a2)
  {
    v13 = "output";
  }

  else
  {
    v13 = "input";
  }

  v14 = std::string::append(&v17, v13);
  __dst = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  sub_10000E528(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    result = 1;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

    return result;
  }

LABEL_32:
  operator delete(v16.__r_.__value_.__l.__data_);
  result = 1;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_33:
    v15 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v15;
  }

  return result;
}

uint64_t sub_10000EA74(unsigned int a1)
{
  v1 = a1 << 20;
  getrlimit(2, &v3);
  v3.rlim_cur = v1;
  setrlimit(2, &v3);
  getrlimit(5, &v3);
  v3.rlim_cur = v1;
  return setrlimit(5, &v3);
}

uint64_t sub_10000EAD4(unint64_t a1, unint64_t a2, intptr_t *a3, int a4, llvm::raw_ostream *a5)
{
  __src.n128_u64[0] = a1;
  __src.n128_u64[1] = a2;
  v85 = a3;
  v84 = a4;
  if ((byte_1000189C0 & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || llvm::StringRef::find(&__src, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    return 0;
  }

  v7 = std::system_category();
  v120 |= 1u;
  v118.n128_u64[0] = 0;
  v118.n128_u64[1] = v7;
  v8 = getenv("LLVM_SYMBOLIZER_PATH");
  if (!v8)
  {
    if (__src.n128_u64[1])
    {
      *v104 = llvm::sys::path::parent_path(__src.n128_u64[0], __src.n128_u64[1], 0);
      *&v104[8] = v12;
      if (v12)
      {
        llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, v104, 1, &__p);
        sub_10000F8C8(&v118, &__p);
        if ((v89 & 1) == 0 && SHIBYTE(v88) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      if ((v120 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = strlen(v8);
  llvm::sys::findProgramByName(v9, v10, 0, 0, &__p);
  v11 = v120;
  if ((v120 & 1) == 0 && SHIBYTE(v119) < 0)
  {
    operator delete(v118.n128_u64[0]);
    v11 = v120;
  }

  if (v89)
  {
    v120 = v11 | 1;
    v118 = __p;
LABEL_17:
    llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, 0, 0, &__p);
    v11 = v120;
    if ((v120 & 1) == 0 && SHIBYTE(v119) < 0)
    {
      operator delete(v118.n128_u64[0]);
      v11 = v120;
    }

    if (v89)
    {
      return 0;
    }
  }

  v120 = v11 & 0xFE;
  v118 = __p;
  v119 = v88;
LABEL_22:
  LOWORD(v90) = 261;
  __p = __src;
  if (llvm::sys::fs::access(&__p, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
  }

  else
  {
    v13 = __src.n128_u64[1];
    if (__src.n128_u64[1] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000034E8();
    }

    if (__src.n128_u64[1] >= 0x17)
    {
      operator new();
    }

    v83 = __src.n128_i8[8];
    if (__src.n128_u64[1])
    {
      memmove(&__dst, __src.n128_u64[0], __src.n128_u64[1]);
    }

    *(&__dst + v13) = 0;
  }

  v111[4] = 0;
  v111[5] = 0;
  v112 = v114;
  v113 = 0x400000000;
  v115 = v117;
  v116 = 0;
  v117[0] = 0;
  v117[1] = 1;
  if (v84)
  {
    if ((v84 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1000034E8();
  }

  v14 = _dyld_image_count();
  if (v14)
  {
    v15 = v14;
    for (i = 0; i != v15; ++i)
    {
      _dyld_get_image_name(i);
      _dyld_get_image_vmaddr_slide(i);
      _dyld_get_image_header(i);
    }
  }

  v81 = 0;
  *v110 = v111;
  *&v110[8] = xmmword_1000111A0;
  v107 = v109;
  v108 = xmmword_1000111A0;
  __p.n128_u64[0] = "symbolizer-input";
  LOWORD(v90) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v81, v110, 0);
  __p.n128_u64[0] = "symbolizer-output";
  LOWORD(v90) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v107, 0);
  v17 = *&v110[8];
  if ((*&v110[8] + 1) > *&v110[16])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v110, v111, *&v110[8] + 1, 1);
    v17 = *&v110[8];
  }

  *(*v110 + v17) = 0;
  LOWORD(v90) = 257;
  if (**v110)
  {
    __p.n128_u64[0] = *v110;
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  LOBYTE(v90) = v18;
  *v104 = v105;
  *&v104[8] = xmmword_100011180;
  v106 = 1;
  llvm::Twine::toVector(&__p, v104);
  v19 = v108;
  if ((v108 + 1) > *(&v108 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v107, v109, v108 + 1, 1);
    v19 = v108;
  }

  *(v107 + v19) = 0;
  LOWORD(v90) = 257;
  if (*v107)
  {
    __p.n128_u64[0] = v107;
    v20 = 3;
  }

  else
  {
    v20 = 1;
  }

  LOBYTE(v90) = v20;
  *v101 = v102;
  *&v101[8] = xmmword_100011180;
  v103 = 1;
  llvm::Twine::toVector(&__p, v101);
  llvm::raw_fd_ostream::raw_fd_ostream(&__p, v81, 1, 0, 0);
  if (v84 >= 1)
  {
    for (j = 0; j < v84; ++j)
    {
      v25 = *(8 * j);
      if (!v25)
      {
        continue;
      }

      v26 = strlen(*(8 * j));
      v27 = v26;
      v28 = v90;
      if (v26 <= v89 - v90)
      {
        if (v26)
        {
          memcpy(v90, v25, v26);
          v28 = &v90[v27];
          v90 += v27;
        }

        p_p = &__p;
        if (v89 != v28)
        {
LABEL_59:
          *v28 = 32;
          ++p_p[2].n128_u64[0];
          v23 = llvm::raw_ostream::operator<<(p_p, *(8 * j));
          v24 = *(v23 + 4);
          if (*(v23 + 3) == v24)
          {
LABEL_60:
            llvm::raw_ostream::write(v23, "\n", 1uLL);
            continue;
          }

          goto LABEL_50;
        }
      }

      else
      {
        p_p = llvm::raw_ostream::write(&__p, v25, v26);
        v28 = p_p[2].n128_u64[0];
        if (p_p[1].n128_u64[1] != v28)
        {
          goto LABEL_59;
        }
      }

      v22 = llvm::raw_ostream::write(p_p, " ", 1uLL);
      v23 = llvm::raw_ostream::operator<<(v22, *(8 * j));
      v24 = *(v23 + 4);
      if (*(v23 + 3) == v24)
      {
        goto LABEL_60;
      }

LABEL_50:
      *v24 = 10;
      ++*(v23 + 4);
    }
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(&__p);
  *&v94.__r_.__value_.__l.__data_ = *v110;
  v94.__r_.__value_.__s.__data_[16] = 1;
  v95 = v107;
  v96 = v108;
  v97 = 1;
  v98 = "";
  v99 = 0;
  v100 = 1;
  v93[0] = off_100014C28;
  v93[1] = *&off_100014C38;
  v93[2] = off_100014C48;
  v93[3] = *&off_100014C58;
  if (v119 >= 0)
  {
    v30 = &v118;
  }

  else
  {
    v30 = v118.n128_u64[0];
  }

  if (v119 >= 0)
  {
    v31 = SHIBYTE(v119);
  }

  else
  {
    v31 = v118.n128_u64[1];
  }

  __p.n128_u8[0] = 0;
  LOBYTE(v88) = 0;
  v32 = llvm::sys::ExecuteAndWait(v30, v31, v93, 4, &__p, &v94, 3, 0, 0, 0, 0, 0);
  v33 = 0;
  if (v32)
  {
    goto LABEL_123;
  }

  v34 = sub_10000F984(&v107);
  LOWORD(v90) = 257;
  if (*v34)
  {
    __p.n128_u64[0] = v34;
    v35 = 3;
  }

  else
  {
    v35 = 1;
  }

  LOBYTE(v90) = v35;
  llvm::MemoryBuffer::getFile(&__p, 0, 1, 0, 0, &v91);
  v33 = 0;
  if (v92)
  {
    goto LABEL_123;
  }

  v37 = *(v91 + 16) - *(v91 + 8);
  *&v80 = *(v91 + 8);
  *(&v80 + 1) = v37;
  __p.n128_u64[0] = &v88;
  __p.n128_u64[1] = 0x2000000000;
  llvm::StringRef::split(&v80, &__p, "\n", 1uLL, 0xFFFFFFFFLL, 1, v36);
  v38 = __p.n128_u64[0];
  v79 = 0;
  if (v84 < 1)
  {
    goto LABEL_116;
  }

  for (k = 0; k < v84; LODWORD(v79) = k)
  {
    v78[0] = a5;
    v78[1] = &v79 + 4;
    v78[2] = &v84;
    v78[3] = &v85;
    v78[4] = &v79;
    if (*(8 * k))
    {
      v40 = __p.n128_u64[0];
      if (v38 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
      {
LABEL_117:
        v38 = v40;
        v33 = 0;
        goto LABEL_118;
      }

      v38 += 2;
      while (1)
      {
        v42 = *(v38 - 1);
        if (!v42)
        {
          goto LABEL_114;
        }

        v43 = *(v38 - 2);
        sub_10000F9E8(v78);
        if (v42 == 1 || *v43 != 16191)
        {
          v44 = *(a5 + 4);
          if (v42 <= *(a5 + 3) - v44)
          {
            memcpy(v44, v43, v42);
            v46 = (*(a5 + 4) + v42);
            *(a5 + 4) = v46;
            v45 = a5;
            if (v46 >= *(a5 + 3))
            {
LABEL_84:
              llvm::raw_ostream::write(v45, 32);
              goto LABEL_87;
            }
          }

          else
          {
            v45 = llvm::raw_ostream::write(a5, v43, v42);
            v46 = *(v45 + 4);
            if (v46 >= *(v45 + 3))
            {
              goto LABEL_84;
            }
          }

          *(v45 + 4) = v46 + 1;
          *v46 = 32;
        }

LABEL_87:
        v40 = __p.n128_u64[0];
        if (v38 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }

        v47 = *v38;
        v48 = v38[1];
        if (v48 >= 2 && *v47 == 16191)
        {
          v52 = *(a5 + 4);
          if (*(a5 + 3) == v52)
          {
            v53 = llvm::raw_ostream::write(a5, "(", 1uLL);
          }

          else
          {
            *v52 = 40;
            ++*(a5 + 4);
            v53 = a5;
          }

          v54 = *(8 * v79);
          if (v54)
          {
            v55 = v53;
            v56 = strlen(*(8 * v79));
            v53 = v55;
            if (v56 <= *(v55 + 3) - *(v55 + 4))
            {
              if (v56)
              {
                memcpy(*(v55 + 4), v54, v56);
                v53 = v55;
                *(v55 + 4) += v56;
              }
            }

            else
            {
              v53 = llvm::raw_ostream::write(v55, v54, v56);
            }
          }

          v57 = *(v53 + 4);
          if (v57 >= *(v53 + 3))
          {
            v53 = llvm::raw_ostream::write(v53, 43);
          }

          else
          {
            *(v53 + 4) = v57 + 1;
            *v57 = 43;
          }

          v74[0] = *(8 * v79);
          v74[1] = 0;
          v75 = 0;
          v76 = 1;
          v77 = 1;
          v50 = llvm::raw_ostream::operator<<(v53, v74);
          v58 = *(v50 + 4);
          if (*(v50 + 3) != v58)
          {
            *v58 = 41;
            ++*(v50 + 4);
            goto LABEL_108;
          }

          v47 = ")";
          v48 = 1;
        }

        else
        {
          v49 = *(a5 + 4);
          if (v48 <= *(a5 + 3) - v49)
          {
            if (v48)
            {
              v51 = v38[1];
              memcpy(v49, v47, v48);
              *(a5 + 4) += v51;
            }

            goto LABEL_108;
          }

          v50 = a5;
        }

        llvm::raw_ostream::write(v50, v47, v48);
LABEL_108:
        v59 = *(a5 + 4);
        if (*(a5 + 3) == v59)
        {
          llvm::raw_ostream::write(a5, "\n", 1uLL);
        }

        else
        {
          *v59 = 10;
          ++*(a5 + 4);
        }

        v40 = __p.n128_u64[0];
        v41 = v38 + 2;
        v38 += 4;
        if (v41 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }
      }
    }

    sub_10000F9E8(v78);
    v60 = *(a5 + 4);
    if (v60 >= *(a5 + 3))
    {
      llvm::raw_ostream::write(a5, 10);
    }

    else
    {
      *(a5 + 4) = v60 + 1;
      *v60 = 10;
    }

LABEL_114:
    k = v79 + 1;
  }

  v38 = __p.n128_u64[0];
LABEL_116:
  v33 = 1;
LABEL_118:
  if (v38 != &v88)
  {
    v61 = v33;
    free(v38);
    v33 = v61;
  }

  if ((v92 & 1) == 0)
  {
    v62 = v91;
    v91 = 0;
    if (v62)
    {
      v63 = v33;
      (*(*v62 + 8))(v62);
      v33 = v63;
    }
  }

LABEL_123:
  v64 = v33;
  if (v103 == 1)
  {
    LOWORD(v90) = 261;
    __p = *v101;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v101 != v102)
  {
    free(*v101);
  }

  if (v106 == 1)
  {
    LOWORD(v90) = 261;
    __p = *v104;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v104 != v105)
  {
    free(*v104);
  }

  if (v107 != v109)
  {
    free(v107);
  }

  if (*v110 != v111)
  {
    free(*v110);
  }

  if (v113)
  {
    v65 = v112;
    v66 = 8 * v113;
    v67 = v112;
    do
    {
      v68 = ((v65 - v112) >> 10) & 0x1FFFFFF;
      if (v68 >= 0x1E)
      {
        LOBYTE(v68) = 30;
      }

      v69 = *v67++;
      llvm::deallocate_buffer(v69, (4096 << v68), 8uLL);
      ++v65;
      v66 -= 8;
    }

    while (v66);
  }

  v70 = v115;
  if (v116)
  {
    v71 = &v115[2 * v116];
    do
    {
      v72 = *v70;
      v73 = v70[1];
      v70 += 2;
      llvm::deallocate_buffer(v72, v73, 8uLL);
    }

    while (v70 != v71);
    v70 = v115;
  }

  if (v70 != v117)
  {
    free(v70);
  }

  if (v112 != v114)
  {
    free(v112);
  }

  if (v83 < 0)
  {
    operator delete(__dst);
  }

  if ((v120 & 1) == 0 && SHIBYTE(v119) < 0)
  {
    operator delete(v118.n128_u64[0]);
  }

  return v64;
}

__n128 sub_10000F8C8(__n128 *a1, __n128 *a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v2 = a1[1].n128_u8[8];
  if ((v2 & 1) == 0 && a1[1].n128_i8[7] < 0)
  {
    v7 = a1;
    v8 = a2;
    operator delete(a1->n128_u64[0]);
    a2 = v8;
    a1 = v7;
    v2 = v7[1].n128_u8[8];
    if (v8[1].n128_u8[8])
    {
      goto LABEL_5;
    }

LABEL_10:
    a1[1].n128_u8[8] = v2 & 0xFE;
    result = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
    *a1 = result;
    *(a2 + 8) = 0uLL;
    a2->n128_u64[0] = 0;
    return result;
  }

  if ((a2[1].n128_u8[8] & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  a1[1].n128_u8[8] = v2 | 1;
  if (a2[1].n128_u8[8])
  {
    v4 = a2->n128_u64[0];
    v3 = a2->n128_u64[1];
  }

  else
  {
    v5 = a1;
    v3 = std::system_category();
    a1 = v5;
    v4 = 0;
  }

  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = v3;
  return result;
}

uint64_t sub_10000F984(void *a1)
{
  v1 = a1[1];
  if ((v1 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v1 + 1, 1);
    *(*a1 + a1[1]) = 0;
    return *a1;
  }

  else
  {
    *(*a1 + v1) = 0;
    return *a1;
  }
}

void sub_10000F9E8(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (*v2)++;
  v21[0] = "#{0}";
  v21[1] = 4;
  v21[2] = &v25;
  v21[3] = 1;
  v22 = 1;
  v23 = &off_100014C78;
  v24 = v4;
  v25 = &v23;
  __p = 0;
  v27 = 0;
  v28 = 0;
  LODWORD(v30) = 0;
  v34 = 0;
  v35 = 1;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  p_p = &__p;
  v29 = &off_100014B40;
  v36 = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v29, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v29, v21, v6, v7, v8, v9, v10);
  if (v33 != v31)
  {
    llvm::raw_ostream::flush_nonempty(&v29);
  }

  llvm::raw_ostream::~raw_ostream(&v29);
  if (v28 < 0)
  {
    p_p = __p;
  }

  if (v28 >= 0)
  {
    v11 = SHIBYTE(v28);
  }

  else
  {
    v11 = v27;
  }

  v12 = log10(**(a1 + 16));
  v29 = p_p;
  v30 = v11;
  LODWORD(v31) = (v12 + 2.0);
  HIDWORD(v31) = 2;
  v13 = llvm::raw_ostream::operator<<(v3, &v29);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    v13 = llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v17[0] = *(**(a1 + 24) + 8 * **(a1 + 32));
  v17[1] = 0;
  v18 = 18;
  v19 = 1;
  v20 = 1;
  v15 = llvm::raw_ostream::operator<<(v13, v17);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
    if (SHIBYTE(v28) < 0)
    {
LABEL_16:
      operator delete(__p);
    }
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
    if (SHIBYTE(v28) < 0)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10000FBF0(const char *a1, size_t a2)
{
  v4 = getenv("LLVM_ENABLE_SYMBOLIZER_MARKUP");
  if (!v4 || !*v4)
  {
    return 0;
  }

  v7 = 261;
  v6[0] = a1;
  v6[1] = a2;
  if (llvm::sys::fs::access(v6, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000034E8();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    v9 = a2;
    if (a2)
    {
      memmove(&__dst, a1, a2);
    }

    *(&__dst + a2) = 0;
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  operator delete(__dst);
  return 0;
}

void llvm::sys::RunInterruptHandlers(llvm::sys *this)
{
  v1 = atomic_exchange(qword_1000189F8, 0);
  if (v1)
  {
    v2 = v1;
    do
    {
      v3 = atomic_exchange(v2, 0);
      if (v3)
      {
        if (!stat(v3, &v4) && (v4.st_mode & 0xF000) == 0x8000)
        {
          unlink(v3);
        }

        atomic_exchange(v2, v3);
      }

      v2 = atomic_load((v2 + 8));
    }

    while (v2);
  }

  atomic_exchange(qword_1000189F8, v1);
}

void mlirModuleDestroy(mlir::Operation *result, unsigned int a2)
{
  if (result)
  {
    mlir::Operation::erase(result, a2);
  }
}

void mlir::Block::~Block(mlir::Block *this)
{
  sub_10000FEA0(this);
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        operator delete();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 6);
  }

  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v4 = *(this + 5);
  if (v4 != (this + 32))
  {
    do
    {
      v5 = *(v4 + 1);
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v7 = v6;
      llvm::ilist_traits<mlir::Operation>::removeNodeFromList(this + 32, v6);
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
      v9 = *v8;
      v10 = v8[1];
      *v10 = *v8;
      *(v9 + 8) = v10;
      *v8 = 0;
      v8[1] = 0;
      llvm::ilist_traits<mlir::Operation>::deleteNode(v7, v11);
      v4 = v5;
    }

    while (v5 != (this + 32));
  }
}

void *sub_10000FEA0(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 40);
  if (v2 != a1 + 32)
  {
    do
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      mlir::Operation::dropAllReferences(v3);
      v2 = *(v2 + 8);
    }

    while (v2 != v1);
  }

  while (1)
  {
    result = *v1;
    if (*v1 == v1)
    {
      break;
    }

    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    v5 = v4;
    llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v1, v4);
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
    v7 = *v6;
    v8 = v6[1];
    *v8 = *v6;
    *(v7 + 8) = v8;
    *v6 = 0;
    v6[1] = 0;
    llvm::ilist_traits<mlir::Operation>::deleteNode(v5, v9);
  }

  return result;
}

void mlir::Block::dropAllReferences(uint64_t this)
{
  v1 = this + 32;
  v2 = *(this + 40);
  if (v2 != this + 32)
  {
    do
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      mlir::Operation::dropAllReferences(v3);
      v2 = *(v2 + 8);
    }

    while (v2 != v1);
  }
}

void mlir::Operation::~Operation(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0)
  {
    mlir::detail::OperandStorage::~OperandStorage((this + 64));
    v2 = *(this + 11);
  }

  v3 = this + 64;
  v4 = *(this + 10);
  if (v4)
  {
    v5 = &v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8;
    v6 = 32 * v4;
    v7 = (v5 + 8);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = *(v7 - 1);
        *v8 = v9;
        if (v9)
        {
          *(v9 + 8) = v8;
        }
      }

      v7 += 4;
      v6 -= 32;
    }

    while (v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    v10 = ((&v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v4);
    v11 = 24 * (v2 & 0x7FFFFF);
    do
    {
      mlir::Region::~Region(v10);
      v10 = (v12 + 24);
      v11 -= 24;
    }

    while (v11);
    v2 = *(this + 11);
  }

  if (HIBYTE(v2))
  {
    (*(**(this + 6) + 128))(*(this + 6), &v3[16 * ((v2 >> 23) & 1)]);
  }
}

void llvm::ilist_traits<mlir::Operation>::deleteNode(mlir::Operation *a1, unsigned int a2)
{
  v3 = *(a1 + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v3);
  v5 = 16 * mlir::OpResult::getNumInline(v3) + 24 * NumTrailing;
  v6 = a1 - ((v5 - (v5 != 0) + 8 * (v5 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(a1);

  free(v6);
}

void mlir::Operation::erase(mlir::Operation *this, unsigned int a2)
{
  if (*(this + 2))
  {
    *(this + 2) = 0;
    v4 = *this;
    v3 = *(this + 1);
    *v3 = *this;
    *(v4 + 8) = v3;
    *this = 0;
    *(this + 1) = 0;
  }

  v5 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v5);
  v7 = 16 * mlir::OpResult::getNumInline(v5) + 24 * NumTrailing;
  v8 = this - ((v7 - (v7 != 0) + 8 * (v7 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this);

  free(v8);
}

void sub_1000101D8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
}

void mlir::detail::OperandStorage::~OperandStorage(mlir::detail::OperandStorage *this)
{
  v1 = *(this + 1);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = 32 * v2;
    v4 = v1 + 1;
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v4 - 1);
        *v5 = v6;
        if (v6)
        {
          *(v6 + 8) = v5;
        }
      }

      v4 += 4;
      v3 -= 32;
    }

    while (v3);
  }

  if ((*this & 0x80000000) != 0)
  {
    free(v1);
  }
}

uint64_t mlir::Region::dropAllReferences(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != this)
  {
    v2 = this;
    do
    {
      if (v1)
      {
        v3 = v1 - 8;
      }

      else
      {
        v3 = 0;
      }

      this = mlir::Block::dropAllReferences(v3);
      v1 = *(v1 + 8);
    }

    while (v1 != v2);
  }

  return this;
}

void mlir::Region::~Region(mlir::Region *this)
{
  v2 = *(this + 1);
  if (v2 != this)
  {
    do
    {
      if (v2)
      {
        v3 = v2 - 8;
      }

      else
      {
        v3 = 0;
      }

      mlir::Block::dropAllReferences(v3);
      v2 = *(v2 + 1);
    }

    while (v2 != this);
    v2 = *(this + 1);
  }

  if (v2 != this)
  {
    if (v2)
    {
      v4 = (v2 - 8);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4[2];
    v4[3] &= 7uLL;
    v6 = v4[1];
    *v5 = v6;
    *(v6 + 8) = v5;
    v4[1] = 0;
    v4[2] = 0;
    mlir::Block::~Block((v2 - 8));
    operator delete();
  }
}

uint64_t mlir::OpResult::getNumInline(uint64_t this)
{
  if (this >= 6)
  {
    return 6;
  }

  else
  {
    return this;
  }
}

uint64_t mlir::OpResult::getNumTrailing(mlir::OpResult *this)
{
  if (this >= 6)
  {
    return (this - 6);
  }

  else
  {
    return 0;
  }
}

void sub_100010384()
{
  v0 = __cxa_guard_acquire(byte_100018970);
  if (v0)
  {
    sub_1000040B8(v0, &off_1000184C0, &_mh_execute_header);

    __cxa_guard_release(byte_100018970);
  }
}

void sub_1000103DC()
{
  v0 = __cxa_guard_acquire(byte_100018970);
  if (v0)
  {
    sub_1000040B8(v0, &off_1000184C0, &_mh_execute_header);
    __cxa_guard_release(byte_100018970);
  }
}

void sub_100010420()
{
  v0 = __cxa_guard_acquire(byte_1000189A8);
  if (v0)
  {
    dword_10001899C = sub_1000056B8(v0);

    __cxa_guard_release(byte_1000189A8);
  }
}

void sub_100010470()
{
  if (__cxa_guard_acquire(byte_1000189B8))
  {
    dword_1000189B0 = getpagesize();

    __cxa_guard_release(byte_1000189B8);
  }
}

void mlir::Operation::dropAllReferences(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0 && *(this + 17))
  {
    v3 = *(this + 9);
    do
    {
      v4 = v3[1];
      if (v4)
      {
        v5 = *v3;
        *v4 = *v3;
        if (v5)
        {
          *(v5 + 8) = v4;
        }
      }

      sub_1000101D8(v3);
    }

    while (!v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    sub_1000101B8();
    v8 = v7 + 32 * *(this + 10);
    v10 = 24 * v9;
    do
    {
      mlir::Region::dropAllReferences(v8);
      v8 += 24;
      v10 -= 24;
    }

    while (v10);
  }

  if (*(this + 10))
  {
    sub_1000101B8();
    do
    {
      v12 = v11[1];
      if (v12)
      {
        v13 = *v11;
        *v12 = *v11;
        if (v13)
        {
          *(v13 + 8) = v12;
        }
      }

      sub_1000101D8(v11);
    }

    while (!v6);
  }
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

void operator delete(void *__p, std::align_val_t a2)
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

void *__cdecl operator new(size_t __sz, std::align_val_t a2, const std::nothrow_t *a3)
{
    ;
  }
}

void operator new()
{
    ;
  }
}
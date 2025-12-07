void *TAllocator::allocate(TAllocator *this, uint64_t a2)
{
  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = this + 16;
  result = *(this + 2);
  if (*(v5 + 1) - result < v3)
  {
    if (v3 + 8 <= *(this + 1))
    {
      v6 = *(this + 1);
    }

    else
    {
      v6 = v3 + 8;
    }

    *this += v6;
    operator new[]();
  }

  *(this + 2) = result + v3;
  return result;
}

void DStructThreads::freeThread(DStructThreads *this)
{
  BM_freeThread();

  srilm_tserror_freeThread();
}

void quasar::GrammarFST::getAlternatives(unsigned __int8 ***a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        goto LABEL_4;
      }

      v8 = *(v3 + 23);
      if (v8 < 0)
      {
        if (v3[1] != 1)
        {
          goto LABEL_4;
        }

        v9 = *v3;
      }

      else
      {
        v9 = v3;
        if (v8 != 1)
        {
          goto LABEL_4;
        }
      }

      if (*v9 == 124)
      {
        std::vector<std::vector<std::string>>::push_back[abi:ne200100](a2, &v16);
        v13 = v16;
        v14 = v17;
        while (v14 != v13)
        {
          v15 = *(v14 - 1);
          v14 -= 3;
          if (v15 < 0)
          {
            operator delete(*v14);
          }
        }

        v17 = v13;
      }

LABEL_4:
      v6 = *(v3 + 23);
      if (*(v3 + 23) < 0)
      {
        if (v3[1] != 1 || **v3 != 91)
        {
          if (v3[1] != 1)
          {
            goto LABEL_21;
          }

          v7 = **v3;
LABEL_15:
          if (v7 != 40)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        if (v6 != 1)
        {
          goto LABEL_18;
        }

        v7 = *v3;
        if (v7 != 91)
        {
          goto LABEL_15;
        }
      }

      ++v5;
LABEL_17:
      if ((v6 & 0x80) == 0)
      {
LABEL_18:
        if (v6 != 1)
        {
          goto LABEL_24;
        }

        v10 = *v3;
        if (v10 != 93)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

LABEL_21:
      if (v3[1] != 1)
      {
        goto LABEL_26;
      }

      if (**v3 != 93)
      {
        if ((v6 & 0x80) != 0)
        {
LABEL_26:
          if (v3[1] != 1)
          {
            if (!v5)
            {
              goto LABEL_45;
            }

            goto LABEL_50;
          }

          v11 = *v3;
        }

        else
        {
LABEL_24:
          if (v6 != 1)
          {
            if (!v5)
            {
              goto LABEL_35;
            }

            goto LABEL_50;
          }

          v11 = v3;
        }

        v10 = *v11;
LABEL_29:
        if (v10 != 41)
        {
          goto LABEL_31;
        }
      }

LABEL_30:
      --v5;
LABEL_31:
      if (!v5)
      {
        if ((v6 & 0x80) != 0)
        {
LABEL_45:
          if (v3[1] == 1)
          {
            v12 = *v3;
LABEL_47:
            v5 = 0;
            if (*v12 == 124)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }
        }

        else
        {
LABEL_35:
          v12 = v3;
          if (v6 == 1)
          {
            goto LABEL_47;
          }
        }

        v5 = 0;
      }

LABEL_50:
      std::vector<std::string>::push_back[abi:ne200100](&v16, v3);
LABEL_51:
      v3 += 3;
    }

    while (v3 != v4);
  }

  std::vector<std::vector<std::string>>::push_back[abi:ne200100](a2, &v16);
  v19 = &v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1B53A38F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void ***a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B53A3B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  __cxa_end_catch();
  v11 = *(v9 - 208);
  if (v11)
  {
    *(v9 - 200) = v11;
    operator delete(v11);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v9 - 96));
  _Unwind_Resume(a1);
}

uint64_t quasar::GrammarFST::extractBracketedPart(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char *a5)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = (a3 + 1);
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) < v7)
  {
    return 0;
  }

  v11 = *a2 + 24 * a3;
  if (*(v11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *v11, *(v11 + 8));
  }

  else
  {
    v12 = *v11;
    v38.__r_.__value_.__r.__words[2] = *(v11 + 16);
    *&v38.__r_.__value_.__l.__data_ = v12;
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(v36, "");
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_54;
    }

    v14 = v38.__r_.__value_.__s.__data_[0];
    if (v38.__r_.__value_.__s.__data_[0] != 91)
    {
      goto LABEL_16;
    }

LABEL_13:
    MEMORY[0x1B8C84820](v13, "]");
    v15 = 1;
    goto LABEL_18;
  }

  if (v38.__r_.__value_.__l.__size_ == 1 && *v38.__r_.__value_.__l.__data_ == 91)
  {
    goto LABEL_13;
  }

  if (v38.__r_.__value_.__l.__size_ != 1)
  {
    goto LABEL_54;
  }

  v14 = *v38.__r_.__value_.__l.__data_;
LABEL_16:
  if (v14 != 40)
  {
LABEL_54:
    if (quasar::gLogLevel >= 1)
    {
      memset(v35, 0, sizeof(v35));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "RegexParseError: expected [ or(at ", 36);
      v28 = MEMORY[0x1B8C84C00](v27, a3);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " but found ", 11);
      v30 = *a2 + 24 * a3;
      v31 = *(v30 + 23);
      if (v31 >= 0)
      {
        v32 = *a2 + 24 * a3;
      }

      else
      {
        v32 = *v30;
      }

      if (v31 >= 0)
      {
        v33 = *(v30 + 23);
      }

      else
      {
        v33 = *(v30 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v32, v33);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v35);
    }

    goto LABEL_62;
  }

  MEMORY[0x1B8C84820](v13, ")");
  v15 = 0;
LABEL_18:
  *a5 = v15;
  v16 = *a2;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (v17 <= v7)
  {
LABEL_62:
    v8 = 0;
    goto LABEL_63;
  }

  v18 = 0;
  if ((v37 & 0x80u) == 0)
  {
    v19 = v37;
  }

  else
  {
    v19 = v36[1];
  }

  if ((v37 & 0x80u) == 0)
  {
    v20 = v36;
  }

  else
  {
    v20 = v36[0];
  }

  v21 = (v16 + 24 * v7);
  while (1)
  {
    if (v18)
    {
      v22 = v21[23];
      goto LABEL_35;
    }

    v22 = v21[23];
    v23 = *(v21 + 1);
    if ((v22 & 0x80u) == 0)
    {
      v23 = v21[23];
    }

    if (v23 == v19)
    {
      v24 = (v22 & 0x80u) == 0 ? v21 : *v21;
      if (!memcmp(v24, v20, v19))
      {
        break;
      }
    }

LABEL_35:
    if ((v22 & 0x80) == 0)
    {
      if (v22 != 1)
      {
        goto LABEL_52;
      }

      v25 = *v21;
      if (v25 == 40 || v25 == 91)
      {
        goto LABEL_45;
      }

      v26 = v21;
      if (v25 == 93)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (*(v21 + 1) == 1 && **v21 == 91 || *(v21 + 1) == 1 && **v21 == 40)
    {
LABEL_45:
      ++v18;
      goto LABEL_52;
    }

    if (*(v21 + 1) == 1 && **v21 == 93)
    {
LABEL_51:
      --v18;
      goto LABEL_52;
    }

    if (*(v21 + 1) == 1)
    {
      v26 = *v21;
LABEL_50:
      if (*v26 == 41)
      {
        goto LABEL_51;
      }
    }

LABEL_52:
    ++v7;
    v21 += 24;
    if (v17 <= v7)
    {
      goto LABEL_62;
    }
  }

  *a4 = v7;
  v8 = 1;
LABEL_63:
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_1B53A3F30(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::GrammarFST::compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  if (*a2 == *(a2 + 8))
  {
    *&v50 = 0;
    DWORD2(v50) = 0;
    HIDWORD(v50) = a4;
    (*(*a6 + 208))(a6, a3, &v50, a4, a5, a6, a7);
    return 1;
  }

  v11 = a5;
  quasar::GrammarFST::getAlternatives(a2, &v68);
  v14 = v68;
  v15 = v69;
  if (0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3) <= 1)
  {
    v19 = *a2;
    if (*(a2 + 8) == *a2)
    {
      goto LABEL_77;
    }

    v43 = v11;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = &v19[3 * v20];
      if (*(v22 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v67, *v22, v22[1]);
      }

      else
      {
        v23 = *v22;
        v67.__r_.__value_.__r.__words[2] = v22[2];
        *&v67.__r_.__value_.__l.__data_ = v23;
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v67.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_47;
        }

        v25 = *v67.__r_.__value_.__l.__data_;
        if (v25 != 40 && v25 != 91)
        {
          if (v25 != 93 && *v67.__r_.__value_.__l.__data_ != 41)
          {
            if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_47;
            }

            v24 = *v67.__r_.__value_.__l.__data_;
LABEL_30:
            if (v24 != 124)
            {
LABEL_47:
              if (-1 - 0x5555555555555555 * ((*(a2 + 8) - *a2) >> 3) != v20)
              {
                v13 = (*(*a6 + 200))(a6);
              }

              LODWORD(v46[0]) = 0;
              quasar::GrammarFST::getWeight(v13, &v67, v46, 1);
            }
          }

LABEL_31:
          if (quasar::gLogLevel >= 1)
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v56 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Unexpected regex found: '", 25);
            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v67;
            }

            else
            {
              v27 = v67.__r_.__value_.__r.__words[0];
            }

            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v67.__r_.__value_.__l.__size_;
            }

            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, size);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "' in '", 6);
            v46[0] = " ";
            v46[1] = 1;
            quasar::join<std::vector<std::string>>(a2, v46);
            if ((v49 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if ((v49 & 0x80u) == 0)
            {
              v32 = v49;
            }

            else
            {
              v32 = v48;
            }

            v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, p_p, v32);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "'", 1);
            if (v49 < 0)
            {
              operator delete(__p);
            }

            quasar::QuasarErrorMessage::~QuasarErrorMessage(&v50);
          }

LABEL_58:
          v40 = 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) != 1)
        {
          goto LABEL_47;
        }

        v24 = v67.__r_.__value_.__s.__data_[0];
        if (v67.__r_.__value_.__s.__data_[0] > 0x5Au)
        {
          if (v67.__r_.__value_.__s.__data_[0] != 91)
          {
            if (v67.__r_.__value_.__s.__data_[0] != 93)
            {
              goto LABEL_30;
            }

            goto LABEL_31;
          }
        }

        else if (v67.__r_.__value_.__s.__data_[0] != 40)
        {
          if (v67.__r_.__value_.__s.__data_[0] != 41)
          {
            goto LABEL_30;
          }

          goto LABEL_31;
        }
      }

      LODWORD(v46[0]) = 0;
      v45 = 0;
      v13 = quasar::GrammarFST::extractBracketedPart(v13, a2, v21, v46, &v45);
      if ((v13 & 1) == 0)
      {
        if (quasar::gLogLevel >= 1)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Unbalanced parenthesis or brackets found in grammar", 51);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(&v50);
        }

        goto LABEL_58;
      }

      v34 = *a2;
      v35 = 24 * v20 + 24;
      v36 = SLODWORD(v46[0]);
      v37 = (*a2 + 24 * SLODWORD(v46[0]));
      *&v51 = 0;
      v50 = 0uLL;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v50, (v34 + v35), v37, 0xAAAAAAAAAAAAAAABLL * ((24 * SLODWORD(v46[0]) - v35) >> 3));
      v38 = a4;
      if (-1 - 0x5555555555555555 * ((*(a2 + 8) - *a2) >> 3) != v36)
      {
        v38 = (*(*a6 + 200))(a6);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v67.__r_.__value_.__l.__size_ == 1)
        {
          v39 = v67.__r_.__value_.__r.__words[0];
LABEL_61:
          if (v39->__r_.__value_.__s.__data_[0] == 91)
          {
            __p = 0;
            LODWORD(v48) = 0;
            HIDWORD(v48) = v38;
            (*(*a6 + 208))(a6, v9, &__p);
          }
        }
      }

      else if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) == 1)
      {
        v39 = &v67;
        goto LABEL_61;
      }

      v41 = quasar::GrammarFST::compile(a1, &v50, v9, v38, v43 + 1, a6, a7);
      if (v41)
      {
        v21 = (v36 + 1);
      }

      else
      {
        v21 = v21;
      }

      if (v41)
      {
        v9 = v38;
      }

      else
      {
        v9 = v9;
      }

      if (v41)
      {
        v40 = 4;
      }

      else
      {
        v40 = 1;
      }

      __p = &v50;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_73:
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if ((v40 | 4) != 4)
      {
        v17 = 0;
        goto LABEL_78;
      }

      v20 = v21;
      v19 = *a2;
      if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) <= v21)
      {
        goto LABEL_77;
      }
    }
  }

  if (v68 == v69)
  {
LABEL_77:
    v17 = 1;
    goto LABEL_78;
  }

  do
  {
    v16 = quasar::GrammarFST::compile(a1, v14, v9, a4, 1, a6, a7);
    v17 = v16;
    v14 += 24;
    if (v14 == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }
  }

  while ((v18 & 1) != 0);
LABEL_78:
  *&v50 = &v68;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v50);
  return v17;
}

void sub_1B53A46C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  __p = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v25 - 121) < 0)
  {
    operator delete(*(v24 + 272));
  }

  a24 = v25 - 120;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void sub_1B53A4DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  std::ofstream::~ofstream(&__p, MEMORY[0x1E69E54D0]);
  MEMORY[0x1B8C85200](v38);
  _Unwind_Resume(a1);
}

void quasar::SpokenFormLine::getLineWithPrior(quasar::SpokenFormLine *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 56) == 1)
  {
    std::to_string(&v18, *this);
    v4 = std::string::insert(&v18, 0, "prior=");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v19, " ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v10 = *(this + 1);
    v9 = this + 8;
    v8 = v10;
    v11 = v9[23];
    if (v11 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    if (v11 >= 0)
    {
      v13 = v9[23];
    }

    else
    {
      v13 = *(v9 + 1);
    }

    v14 = std::string::append(&v20, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    a2->__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&a2->__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else if (*(this + 31) < 0)
  {
    v16 = *(this + 1);
    v17 = *(this + 2);

    std::string::__init_copy_ctor_external(a2, v16, v17);
  }

  else
  {
    *a2 = *(this + 8);
  }
}

void sub_1B53A5028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53A50DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::nnet1::Nnet>::resize(kaldi::nnet1::Nnet *a1, unint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = 0x51B3BEA3677D46CFLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<kaldi::nnet1::Nnet>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 376 * a2;
    while (v3 != v7)
    {
      kaldi::nnet1::Nnet::~Nnet((v3 - 376));
    }

    *(a1 + 1) = v7;
  }
}

void kaldi::nnet1::ParallelComponent::ParallelComponent(kaldi::nnet1::ParallelComponent *this, int a2, int a3)
{
  *(this + 54) = a2;
  *(this + 55) = a3;
  *(this + 112) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 26) = &unk_1F2D172B0;
  *(this + 32) = &unk_1F2D279F8;
  *(this + 264) = xmmword_1B5AE0070;
  *(this + 35) = 0x3BF800000;
  *(this + 72) = 1;
  *(this + 146) = 0;
  *(this + 294) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F2D169C8);
  *v3 = &unk_1F2D165F0;
  *(v3 + 200) = 0;
  *(v3 + 208) = &unk_1F2D168A8;
  *(v3 + 160) = &unk_1F2D16748;
  *(v3 + 168) = &unk_1F2D16770;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
}

double kaldi::nnet1::WordVecComponent::WordVecComponent(kaldi::nnet1::WordVecComponent *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F2D279F8;
  *(this + 56) = xmmword_1B5AE0070;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F2D173D8;
  *(this + 11) = &unk_1F2D17508;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 12) = &unk_1F2D0EE38;
  *(this + 136) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 18) = &unk_1F2D0EE38;
  *(this + 184) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 24) = &unk_1F2D0EE38;
  *(this + 232) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0xFFFFFFFF00000000;
  *(this + 64) = a3 / a2;
  *(this + 65) = 1065353216;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 33) = &unk_1F2D0EE38;
  *(this + 304) = 0;
  *(this + 47) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  return result;
}

uint64_t *kaldi::nnet1::ParallelComponent::CheckNetworkDimensions(uint64_t *this)
{
  v1 = this;
  *(this + 177) = 1;
  v2 = this[23];
  v3 = this[24];
  if (v2 == v3)
  {
    v5 = 0;
    v4 = 0;
    v8 = *this;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = kaldi::nnet1::Nnet::InputDim(v2);
      v7 = kaldi::nnet1::Nnet::OutputDim(v2);
      this = kaldi::nnet1::Nnet::OutputDim(v2);
      v8 = *v1;
      if (this != *(v1 + *(*v1 - 24) + 12))
      {
        *(v1 + 177) = 0;
      }

      v4 += v6;
      v5 += v7;
      v2 = (v2 + 376);
    }

    while (v2 != v3);
  }

  *(v1 + 176) = 1;
  v9 = v8;
  v10 = *(v1 + *(v8 - 24) + 8);
  if (v10 != v4)
  {
    if (v4 / (0x51B3BEA3677D46CFLL * ((v1[24] - v1[23]) >> 3)) != v10)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Input dimension of parallel component and input dimensions of nested networks do not match.");
      goto LABEL_16;
    }

    *(v1 + 176) = 0;
  }

  if ((*(v1 + 177) & 1) == 0 && *(v1 + *(v9 - 24) + 12) != v5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Output dimension of parallel component and output dimensions of nested networks do not match.");
LABEL_16:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  return this;
}

void std::vector<kaldi::nnet1::Nnet>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAE4C415C9882BALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

kaldi::nnet1::Nnet *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>,kaldi::nnet1::Nnet*,kaldi::nnet1::Nnet*,kaldi::nnet1::Nnet*>(int a1, kaldi::nnet1::Nnet *a2, kaldi::nnet1::Nnet *a3, kaldi::nnet1::Nnet *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::nnet1::Nnet::Nnet(this, v6);
      v6 = (v6 + 376);
      this = (this + 376);
      v7 -= 376;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B53A56CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 376);
    do
    {
      kaldi::nnet1::Nnet::~Nnet(v4);
      v4 = (v5 - 376);
      v2 += 376;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAE4C415C9882BALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<kaldi::nnet1::Nnet>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        kaldi::nnet1::Nnet::~Nnet((v4 - 376));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

kaldi::nnet1::Nnet *std::vector<kaldi::nnet1::Nnet>::__append(kaldi::nnet1::Nnet *result, unint64_t a2)
{
  v3 = *(result + 1);
  v2 = *(result + 2);
  if (0x51B3BEA3677D46CFLL * ((v2 - v3) >> 3) < a2)
  {
    v4 = 0x51B3BEA3677D46CFLL * ((v3 - *result) >> 3);
    if (v4 + a2 <= 0xAE4C415C9882B9)
    {
      v5 = 0x51B3BEA3677D46CFLL * ((v2 - *result) >> 3);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0x572620AE4C415CLL)
      {
        v7 = 0xAE4C415C9882B9;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>>(result, v7);
      }

      kaldi::nnet1::Nnet::Nnet((376 * v4));
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    kaldi::nnet1::Nnet::Nnet(v3);
  }

  *(result + 1) = v3;
  return result;
}

void sub_1B53A594C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<kaldi::nnet1::Nnet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>,kaldi::nnet1::Nnet*>(int a1, kaldi::nnet1::Nnet *a2, kaldi::nnet1::Nnet *a3, kaldi::nnet1::Nnet *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      kaldi::nnet1::Nnet::Nnet(this, v8);
      v8 = (v8 + 376);
      this = (this + 376);
      v7 -= 376;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      kaldi::nnet1::Nnet::~Nnet(v6);
      v6 = (v6 + 376);
    }
  }
}

void sub_1B53A59F8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 376);
    do
    {
      kaldi::nnet1::Nnet::~Nnet(v4);
      v4 = (v5 - 376);
      v2 += 376;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::nnet1::Nnet>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 376;
    kaldi::nnet1::Nnet::~Nnet((i - 376));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,false>(unint64_t result, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 6;
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 4);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, a2 - 6, v10))
        {
          v48 = v10[2];
          v45 = *v10;
          v28 = *v9;
          v10[2] = *(a2 - 4);
          *v10 = v28;
          *v9 = v45;
          *(a2 - 4) = v48;
          v29 = v10[5];
          v30 = *(v10 + 3);
          v31 = *(a2 - 1);
          *(v10 + 3) = *(a2 - 3);
          v10[5] = v31;
          *(a2 - 3) = v30;
          *(a2 - 1) = v29;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(v10, v10 + 3, v10 + 6, a3);
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, a2 - 6, v10 + 12))
      {
        v32 = v10[14];
        v33 = *(v10 + 6);
        v34 = *(a2 - 4);
        *(v10 + 6) = *v9;
        v10[14] = v34;
        *v9 = v33;
        *(a2 - 4) = v32;
        v35 = v10[17];
        v36 = *(v10 + 15);
        v37 = *(a2 - 1);
        *(v10 + 15) = *(a2 - 3);
        v10[17] = v37;
        *(a2 - 3) = v36;
        *(a2 - 1) = v35;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v10 + 12, v10 + 6))
        {
          v38 = v10[8];
          v39 = *(v10 + 3);
          *(v10 + 3) = *(v10 + 6);
          v10[8] = v10[14];
          *(v10 + 6) = v39;
          v10[14] = v38;
          v40 = v10[11];
          v41 = *(v10 + 9);
          *(v10 + 9) = *(v10 + 15);
          v10[11] = v10[17];
          *(v10 + 15) = v41;
          v10[17] = v40;
          if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v10 + 6, v10))
          {
            v49 = v10[2];
            v46 = *v10;
            *v10 = *(v10 + 3);
            v10[2] = v10[8];
            *(v10 + 3) = v46;
            v10[8] = v49;
            v42 = v10[5];
            v43 = *(v10 + 3);
            *(v10 + 3) = *(v10 + 9);
            v10[5] = v10[11];
            *(v10 + 9) = v43;
            v10[11] = v42;
          }
        }
      }

      return;
    }

    if (v14 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(v10, (v10 + 6), (v10 + 12), v10 + 9, a2 - 3, a3);
      return;
    }

LABEL_10:
    if (v13 <= 1151)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[6 * (v14 >> 1)];
    if (v13 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(v16, v10, a2 - 3, a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(v10, v16, a2 - 3, a3);
      v17 = 3 * v15;
      v18 = &v10[6 * v15 - 6];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(v10 + 3, v18, a2 - 6, a3);
      v19 = &v10[2 * v17 + 6];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>((result + 96), v19, a2 - 9, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(v18, v16, v19, a3);
      v47 = *(result + 16);
      v44 = *result;
      v20 = *v16;
      *(result + 16) = v16[2];
      *result = v20;
      v16[2] = v47;
      *v16 = v44;
      v21 = *(result + 24);
      v22 = *(result + 40);
      v23 = v16[5];
      *(result + 24) = *(v16 + 3);
      *(result + 40) = v23;
      v16[5] = v22;
      *(v16 + 3) = v21;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, (result - 48), result))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,std::string> *,std::__less<void,void> &>(result, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v24 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,std::string> *,std::__less<void,void> &>(result, a2, a3);
    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

    v26 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(result, v24, a3);
    v10 = (v24 + 3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>((v24 + 3), a2, a3))
    {
      a4 = -v12;
      a2 = v24;
      if (v26)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v26)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,false>(result, v24, a3, -v12, a5 & 1);
      v10 = (v24 + 3);
LABEL_22:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(v10, v10 + 3, a2 - 3, a3);
}

BOOL std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(uint64_t a1, const void **a2, const void **a3)
{
  v5 = *(a3 + 23);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if (v5 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    return 0;
  }

  v19 = a3[3];
  v18 = a3 + 3;
  v17 = v19;
  v20 = *(v18 + 23);
  v23 = a2[3];
  v22 = a2 + 3;
  v21 = v23;
  v24 = *(v22 + 23);
  if (v24 >= 0)
  {
    v25 = *(v22 + 23);
  }

  else
  {
    v25 = v22[1];
  }

  if (v24 >= 0)
  {
    v26 = v22;
  }

  else
  {
    v26 = v21;
  }

  if (v20 >= 0)
  {
    v27 = *(v18 + 23);
  }

  else
  {
    v27 = v18[1];
  }

  if (v20 >= 0)
  {
    v28 = v18;
  }

  else
  {
    v28 = v17;
  }

  if (v27 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v27;
  }

  v30 = memcmp(v26, v28, v29);
  if (v30)
  {
    return v30 < 0;
  }

  else
  {
    return v25 < v27;
  }
}

BOOL std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v8 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a4, a2, a1);
  result = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a4, a3, a2);
  if (v8)
  {
    if (result)
    {
      v10 = *(a1 + 2);
      v11 = *a1;
      v12 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      v13 = *(a1 + 5);
      v14 = *(a1 + 24);
      v15 = *(a3 + 5);
      *(a1 + 24) = *(a3 + 24);
      *(a1 + 5) = v15;
LABEL_9:
      *(a3 + 24) = v14;
      *(a3 + 5) = v13;
      return 1;
    }

    v28 = *(a1 + 2);
    v29 = *a1;
    v30 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v30;
    *a2 = v29;
    *(a2 + 2) = v28;
    v31 = *(a1 + 5);
    v32 = *(a1 + 24);
    v33 = *(a2 + 5);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 5) = v33;
    *(a2 + 24) = v32;
    *(a2 + 5) = v31;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a4, a3, a2))
    {
      v34 = *(a2 + 2);
      v35 = *a2;
      v36 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v36;
      *a3 = v35;
      *(a3 + 2) = v34;
      v13 = *(a2 + 5);
      v14 = *(a2 + 24);
      v37 = *(a3 + 5);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 5) = v37;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v16 = *(a2 + 2);
    v17 = *a2;
    v18 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v18;
    *a3 = v17;
    *(a3 + 2) = v16;
    v19 = *(a2 + 5);
    v20 = *(a2 + 24);
    v21 = *(a3 + 5);
    *(a2 + 24) = *(a3 + 24);
    *(a2 + 5) = v21;
    *(a3 + 24) = v20;
    *(a3 + 5) = v19;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a4, a2, a1))
    {
      v22 = *(a1 + 2);
      v23 = *a1;
      v24 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v24;
      *a2 = v23;
      *(a2 + 2) = v22;
      v25 = *(a1 + 5);
      v26 = *(a1 + 24);
      v27 = *(a2 + 5);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 5) = v27;
      *(a2 + 24) = v26;
      *(a2 + 5) = v25;
    }
  }

  return 1;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(a1, a2, a3, a6);
  if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a6, a4, a3))
  {
    v12 = *(a3 + 16);
    v13 = *a3;
    v14 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 16) = v14;
    *a4 = v13;
    *(a4 + 2) = v12;
    v15 = *(a3 + 40);
    v16 = *(a3 + 24);
    v17 = *(a4 + 5);
    *(a3 + 24) = *(a4 + 24);
    *(a3 + 40) = v17;
    *(a4 + 24) = v16;
    *(a4 + 5) = v15;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a6, a3, a2))
    {
      v18 = *(a2 + 16);
      v19 = *a2;
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      *a3 = v19;
      *(a3 + 16) = v18;
      v21 = *(a2 + 40);
      v22 = *(a2 + 24);
      v23 = *(a3 + 40);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 40) = v23;
      *(a3 + 24) = v22;
      *(a3 + 40) = v21;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a6, a2, a1))
      {
        v24 = *(a1 + 16);
        v25 = *a1;
        v26 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v26;
        *a2 = v25;
        *(a2 + 16) = v24;
        v27 = *(a1 + 40);
        v28 = *(a1 + 24);
        v29 = *(a2 + 40);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = v29;
        *(a2 + 24) = v28;
        *(a2 + 40) = v27;
      }
    }
  }

  if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a6, a5, a4))
  {
    v31 = *(a4 + 2);
    v32 = *a4;
    v33 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v33;
    *a5 = v32;
    *(a5 + 2) = v31;
    v34 = *(a4 + 5);
    v35 = *(a4 + 24);
    v36 = *(a5 + 5);
    *(a4 + 24) = *(a5 + 24);
    *(a4 + 5) = v36;
    *(a5 + 24) = v35;
    *(a5 + 5) = v34;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a6, a4, a3))
    {
      v37 = *(a3 + 16);
      v38 = *a3;
      v39 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 16) = v39;
      *a4 = v38;
      *(a4 + 2) = v37;
      v40 = *(a3 + 40);
      v41 = *(a3 + 24);
      v42 = *(a4 + 5);
      *(a3 + 24) = *(a4 + 24);
      *(a3 + 40) = v42;
      *(a4 + 24) = v41;
      *(a4 + 5) = v40;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a6, a3, a2))
      {
        v43 = *(a2 + 16);
        v44 = *a2;
        v45 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v45;
        *a3 = v44;
        *(a3 + 16) = v43;
        v46 = *(a2 + 40);
        v47 = *(a2 + 24);
        v48 = *(a3 + 40);
        *(a2 + 24) = *(a3 + 24);
        *(a2 + 40) = v48;
        *(a3 + 24) = v47;
        *(a3 + 40) = v46;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a6, a2, a1))
        {
          v49 = *(a1 + 16);
          v50 = *a1;
          v51 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v51;
          *a2 = v50;
          *(a2 + 16) = v49;
          v52 = *(a1 + 40);
          result = *(a1 + 24);
          v53 = *(a2 + 40);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = v53;
          *(a2 + 24) = result;
          *(a2 + 40) = v52;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v5, v8))
        {
          *v13 = *v9;
          v14 = v9[2];
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          __p = *(v8 + 9);
          v16 = v8[11];
          v8[9] = 0;
          v8[10] = 0;
          v10 = v7;
          v8[11] = 0;
          while (1)
          {
            std::pair<std::string,std::string>::operator=[abi:ne200100](a1 + v10 + 48, (a1 + v10));
            if (!v10)
            {
              break;
            }

            v11 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v13, (a1 + v10 - 48));
            v10 -= 48;
            if (!v11)
            {
              v12 = a1 + v10 + 48;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          std::pair<std::string,std::string>::operator=[abi:ne200100](v12, v13);
          if (SHIBYTE(v16) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v14) < 0)
          {
            operator delete(v13[0]);
          }
        }

        v5 = v9 + 6;
        v7 += 48;
        v8 = v9;
      }

      while (v9 + 6 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 6;
    if (a1 + 6 != a2)
    {
      do
      {
        v7 = v5;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v5, v4))
        {
          *v8 = *v7;
          v9 = v7[2];
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          __p = *(v4 + 9);
          v11 = v4[11];
          v4[9] = 0;
          v4[10] = 0;
          v4[11] = 0;
          do
          {
            std::pair<std::string,std::string>::operator=[abi:ne200100]((v4 + 6), v4);
            v4 -= 6;
          }

          while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v8, v4));
          std::pair<std::string,std::string>::operator=[abi:ne200100]((v4 + 6), v8);
          if (SHIBYTE(v11) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v9) < 0)
          {
            operator delete(v8[0]);
          }
        }

        v5 = v7 + 6;
        v4 = v7;
      }

      while (v7 + 6 != a2);
    }
  }
}

const void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,std::string> *,std::__less<void,void> &>(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  *v17 = *a1;
  v18 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *__p = v6;
  v20 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v17, (a2 - 48)))
  {
    v7 = a1;
    do
    {
      v7 += 48;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v17, v7));
  }

  else
  {
    v8 = (a1 + 48);
    do
    {
      v7 = v8;
      if (v8 >= v4)
      {
        break;
      }

      v9 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v17, v8);
      v8 = (v7 + 48);
    }

    while (!v9);
  }

  if (v7 < v4)
  {
    do
    {
      v4 -= 48;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v17, v4));
  }

  while (v7 < v4)
  {
    v10 = *v7;
    v22 = *(v7 + 16);
    v21 = v10;
    v11 = *v4;
    *(v7 + 16) = *(v4 + 16);
    *v7 = v11;
    v12 = v21;
    *(v4 + 16) = v22;
    *v4 = v12;
    v13 = *(v7 + 40);
    v14 = *(v7 + 24);
    v15 = *(v4 + 40);
    *(v7 + 24) = *(v4 + 24);
    *(v7 + 40) = v15;
    *(v4 + 24) = v14;
    *(v4 + 40) = v13;
    do
    {
      v7 += 48;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v17, v7));
    do
    {
      v4 -= 48;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v17, v4));
  }

  if (v7 - 48 != a1)
  {
    std::pair<std::string,std::string>::operator=[abi:ne200100](a1, (v7 - 48));
  }

  std::pair<std::string,std::string>::operator=[abi:ne200100](v7 - 48, v17);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  return v7;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,std::string> *,std::__less<void,void> &>(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v21 = *(a1 + 16);
  v23 = *(a1 + 40);
  *v20 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *__p = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  do
  {
    v8 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, (a1 + v6 + 48), v20);
    v6 += 48;
  }

  while (v8);
  v9 = a1 + v6;
  if (v6 == 48)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 6;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, a2, v20));
  }

  else
  {
    do
    {
      a2 -= 6;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, a2, v20));
  }

  if (v9 >= a2)
  {
    v18 = (v9 - 48);
  }

  else
  {
    v10 = a1 + v6;
    v11 = a2;
    do
    {
      v24 = *v10;
      v12 = v24;
      v25 = *(v10 + 16);
      v13 = v25;
      v14 = v11[2];
      *v10 = *v11;
      *(v10 + 16) = v14;
      v11[2] = v13;
      *v11 = v12;
      v15 = *(v10 + 40);
      v16 = *(v10 + 24);
      v17 = v11[5];
      *(v10 + 24) = *(v11 + 3);
      *(v10 + 40) = v17;
      *(v11 + 3) = v16;
      v11[5] = v15;
      do
      {
        v10 += 48;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v10, v20));
      do
      {
        v11 -= 6;
      }

      while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v11, v20));
    }

    while (v10 < v11);
    v18 = (v10 - 48);
  }

  if (v18 != a1)
  {
    std::pair<std::string,std::string>::operator=[abi:ne200100](a1, v18);
  }

  std::pair<std::string,std::string>::operator=[abi:ne200100](v18, v20);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  return v18;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(a1, (a1 + 48), (a2 - 48), a3);
        break;
      case 4:
        v22 = (a2 - 48);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(a1, (a1 + 48), (a1 + 96), a3);
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, (a2 - 48), (a1 + 96)))
        {
          v23 = *(a1 + 112);
          v24 = *(a1 + 96);
          v25 = *(a2 - 32);
          *(a1 + 96) = *v22;
          *(a1 + 112) = v25;
          *v22 = v24;
          *(a2 - 32) = v23;
          v26 = *(a1 + 136);
          v27 = *(a1 + 120);
          v28 = *(a2 - 8);
          *(a1 + 120) = *(a2 - 24);
          *(a1 + 136) = v28;
          *(a2 - 24) = v27;
          *(a2 - 8) = v26;
          if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, (a1 + 96), (a1 + 48)))
          {
            v29 = *(a1 + 64);
            v30 = *(a1 + 48);
            *(a1 + 48) = *(a1 + 96);
            *(a1 + 64) = *(a1 + 112);
            *(a1 + 96) = v30;
            *(a1 + 112) = v29;
            v31 = *(a1 + 88);
            v32 = *(a1 + 72);
            *(a1 + 72) = *(a1 + 120);
            *(a1 + 88) = *(a1 + 136);
            *(a1 + 120) = v32;
            *(a1 + 136) = v31;
            if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, (a1 + 48), a1))
            {
              v33 = *(a1 + 16);
              v34 = *a1;
              *a1 = *(a1 + 48);
              *(a1 + 16) = *(a1 + 64);
              *(a1 + 48) = v34;
              *(a1 + 64) = v33;
              v35 = *(a1 + 40);
              v36 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 72);
              *(a1 + 40) = *(a1 + 88);
              *(a1 + 72) = v36;
              result = 1;
              *(a1 + 88) = v35;
              return result;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(a1, a1 + 48, a1 + 96, (a1 + 144), (a2 - 48), a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 48);
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, (a2 - 48), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = *(a2 - 32);
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      *(a2 - 32) = v8;
      v11 = *(a1 + 40);
      v12 = *(a1 + 24);
      v13 = *(a2 - 8);
      *(a1 + 24) = *(a2 - 24);
      *(a1 + 40) = v13;
      *(a2 - 24) = v12;
      *(a2 - 8) = v11;
    }

    return 1;
  }

LABEL_11:
  v14 = (a1 + 96);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,0>(a1, (a1 + 48), (a1 + 96), a3);
  v15 = a1 + 144;
  if (a1 + 144 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v15, v14))
    {
      *v38 = *v15;
      v39 = *(v15 + 16);
      *v15 = 0;
      *(v15 + 8) = 0;
      v18 = *(v15 + 24);
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      __p = v18;
      v41 = *(v15 + 40);
      v19 = v16;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      while (1)
      {
        std::pair<std::string,std::string>::operator=[abi:ne200100](a1 + v19 + 144, (a1 + v19 + 96));
        if (v19 == -96)
        {
          break;
        }

        v20 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v38, (a1 + v19 + 48));
        v19 -= 48;
        if (!v20)
        {
          v21 = a1 + v19 + 144;
          goto LABEL_19;
        }
      }

      v21 = a1;
LABEL_19:
      std::pair<std::string,std::string>::operator=[abi:ne200100](v21, v38);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      if (++v17 == 8)
      {
        return v15 + 48 == a2;
      }
    }

    v14 = v15;
    v16 += 48;
    v15 += 48;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::pair<std::string,std::string>::operator=[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(char *a1, char *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[48 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 2);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 2) = v14;
          v17 = *(v13 + 5);
          v18 = *(v13 + 24);
          v19 = *(a1 + 5);
          *(v13 + 24) = *(a1 + 24);
          *(v13 + 5) = v19;
          *(a1 + 24) = v18;
          *(a1 + 5) = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<std::string,std::string> *>(a1, v6, a4, v20);
        v6 -= 3;
      }

      while (v20-- > 2);
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
    {
      v10 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
      v11 = a1 + 48 * v10;
      v12 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
      if (v12 < a3 && std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a2, (a1 + 48 * v10), (v11 + 48)))
      {
        v11 += 48;
        v10 = v12;
      }

      if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a2, v11, v5))
      {
        *v16 = *v5;
        v17 = *(v5 + 16);
        *v5 = 0;
        *(v5 + 8) = 0;
        v13 = *(v5 + 24);
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *__p = v13;
        v19 = *(v5 + 40);
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;
        do
        {
          v14 = v11;
          std::pair<std::string,std::string>::operator=[abi:ne200100](v5, v11);
          if (v7 < v10)
          {
            break;
          }

          v15 = (2 * v10) | 1;
          v11 = a1 + 48 * v15;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v15;
          }

          else if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a2, (a1 + 48 * v15), (v11 + 48)))
          {
            v11 += 48;
          }

          else
          {
            v10 = v15;
          }

          v5 = v14;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a2, v11, v16));
        std::pair<std::string,std::string>::operator=[abi:ne200100](v14, v16);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16[0]);
        }
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<std::string,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    *v11 = *a1;
    v12 = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    v7 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *__p = v7;
    v14 = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(a1, a3, a4);
    v9 = v8;
    v10 = (a2 - 48);
    if (v8 == v10)
    {
      std::pair<std::string,std::string>::operator=[abi:ne200100](v8, v11);
    }

    else
    {
      std::pair<std::string,std::string>::operator=[abi:ne200100](v8, v10);
      std::pair<std::string,std::string>::operator=[abi:ne200100](v10, v11);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(a1, (v9 + 3), a3, 0xAAAAAAAAAAAAAAABLL * ((v9 - a1 + 48) >> 4));
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[3 * v6];
    v9 = v8 + 3;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 6;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a2, v8 + 6, v8 + 12))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    std::pair<std::string,std::string>::operator=[abi:ne200100](a1, v9);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 48 * v7);
    v9 = a2 - 48;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v8, (a2 - 48)))
    {
      *v11 = *v9;
      v12 = *(v9 + 16);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      *__p = *(a2 - 24);
      v14 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v10 = v8;
        std::pair<std::string,std::string>::operator=[abi:ne200100](v9, v8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 48 * v7);
        v9 = v10;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(a3, v8, v11));
      std::pair<std::string,std::string>::operator=[abi:ne200100](v10, v11);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }
  }
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const&,char const(&)[1],0>(std::string *this, __int128 *a2, char *__s)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::string::basic_string[abi:ne200100]<0>(this[1].__r_.__value_.__r.__words, __s);
  return this;
}

void sub_1B53A75C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *TSegmenter::TSegmenter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F2CFF750;
  a1[1] = 0;
  TAllocator::TAllocator((a1 + 2), 2048);
  a1[7] = a2;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = a3;
  a1[13] = a4;
  a1[1] = 5;
  (*(*a1 + 16))(a1);
  a1[11] = *(a3 + 72);
  return a1;
}

void sub_1B53A7684(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  TAllocator::clear((v1 + 16));
  _Unwind_Resume(a1);
}

void TSegmenter::~TSegmenter(TSegmenter *this)
{
  v2 = *(this + 8);
  *(this + 9) = v2;
  if (v2)
  {
    operator delete(v2);
  }

  TAllocator::clear((this + 16));
}

unsigned __int8 *TSegmenter::findSegmentEnd(void *a1, unsigned __int8 *a2, int *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v8 = a2;
  v10 = a1[12];
  if (*(v10 + 64) != 2)
  {
    v33 = 0;
    v34 = 0;
    memset(v126, 0, 32);
    for (i = a2; ; ++i)
    {
      v36 = *i;
      if (v36 <= 0x20 && ((1 << v36) & 0x100003E01) != 0)
      {
        break;
      }

      v38 = v36 >> 6;
      v39 = 1 << v36;
      v40 = *(v126 + v38);
      if ((v40 & v39) == 0)
      {
        *(v126 + v38) = v40 | v39;
        ++v34;
      }

      ++v33;
    }

    if (v34 >= 0x1F)
    {
      *a3 = 5;
      v41 = *(a5 + 16);
      v42 = "b";
      v43 = a5;
      v44 = 6;
LABEL_269:
      TBuffer<wchar_t>::insert(v43, v41, v42, v44);
      return i;
    }

    if (v33 >= 0x100)
    {
      *a3 = 5;
LABEL_268:
      v41 = *(v5 + 16);
      v42 = "s";
      v43 = v5;
      v44 = 16;
      goto LABEL_269;
    }
  }

  v129 = 0;
  v11 = TLocaleInfo::multiByteToUnicode(v10, a2, &v129);
  if (v11 == -1)
  {
    LODWORD(v126[0]) = 0;
      ;
    }

    *a3 = 5;
    v41 = *(v5 + 16);
    v42 = "e";
    v43 = v5;
    v44 = 8;
    goto LABEL_269;
  }

  v12 = v11;
  v125 = v5;
  if (a1[11] >= 3uLL)
  {
    v13 = v129;
    {
      operator new();
    }

    v15 = v13 < 65281 && v13 != 12288;
    if (v13 <= 65510 && !v15 && ((v13 - 65471) > 0x20 || TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v13) != v13))
    {
      v16 = v129;
      {
        operator new();
      }

      v129 = TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v16);
      *a4 |= 2uLL;
    }
  }

  v128 = 0;
  v17 = &v8[v12];
  v18 = TLocaleInfo::multiByteToUnicode(a1[12], v17, &v128);
  v19 = v18;
  if (*v17)
  {
    v20 = v18 == -1;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    do
    {
      v21 = TLocaleInfo::composeCharacter(a1[12], v129, v128);
      if (!v21)
      {
        break;
      }

      v22 = (v128 & 0x7FFFFFFB) != 0x670 && v128 >= 0x660;
      v23 = v22 ? 1 : 4;
      v24 = v128 >= 1611 ? v23 : 1;
      *a4 |= v24;
      v129 = v21;
      v17 += v19;
      v25 = TLocaleInfo::multiByteToUnicode(a1[12], v17, &v128);
      v19 = v25;
    }

    while (*v17 && v25 != -1);
  }

  v27 = a1[13];
  if (v27)
  {
    v28 = *v27;
    v29 = v129;
    if (*v27)
    {
      v30 = v27 + 2;
      do
      {
        v31 = *(v30 - 1);
        if (!v31)
        {
          break;
        }

        if (v129 == v28)
        {
          v129 = *(v30 - 1);
          *a4 |= 8uLL;
          v29 = v31;
          break;
        }

        v32 = *v30;
        v30 += 2;
        v28 = v32;
      }

      while (v32);
    }
  }

  else
  {
    v29 = v129;
  }

  {
    operator new();
  }

  if (TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v29))
  {
    v45 = 1;
    goto LABEL_76;
  }

  v46 = v129;
  {
    operator new();
  }

  v45 = 0;
  if (v46 > 159)
  {
    if (v46 >= 12288)
    {
      if (v46 == 12288)
      {
        goto LABEL_76;
      }

      v47 = 65279;
    }

    else
    {
      if (v46 == 160)
      {
        goto LABEL_76;
      }

      v47 = 8203;
    }

    if (v46 == v47)
    {
      goto LABEL_76;
    }
  }

  else if (v46 <= 0x20 && ((1 << v46) & 0x100002600) != 0)
  {
    goto LABEL_76;
  }

  v98 = v129;
  {
    operator new();
  }

  if (TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v98))
  {
    v99 = 1;
    i = v17;
    if (*v17 && v19 != -1)
    {
      v99 = 1;
      i = v17;
      do
      {
        v100 = v128;
        {
          operator new();
        }

        if (!TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v100))
        {
          break;
        }

        ++v99;
        i += v19;
        v101 = TLocaleInfo::multiByteToUnicode(a1[12], i, &v128);
        v19 = v101;
      }

      while (*i && v101 != -1);
    }

    if (v99 > a1[1])
    {
      v43 = v125;
      *a3 = 5;
      v41 = *(v125 + 16);
      v42 = "m";
      v44 = 32;
      goto LABEL_269;
    }

    v118 = 3;
    goto LABEL_328;
  }

  v109 = v129;
  {
    operator new();
  }

  if (v109 >= 48 && (v109 < 0x3A || v109 >= 0x660 && TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v109) != -1))
  {
    v45 = 2;
    goto LABEL_76;
  }

  v117 = v129;
  {
    operator new();
  }

  v45 = 5;
  if (v117 - 1 >= 8 && v117 - 11 >= 2 && v117 != 0xFFFF)
  {
    if (v117 - 14 < 0x12)
    {
      v45 = 5;
      goto LABEL_76;
    }

    if (a1[11] < 3uLL || !TLocaleInfo::isDiacritic(a1[12], v129))
    {
      v45 = 4;
      goto LABEL_76;
    }

    if (isComposableDiacriticInContext(0, v129, a1[12]))
    {
      v119 = v125;
      *a3 = 5;
      v120 = *(v125 + 16);
      v121 = "d";
      v122 = 9;
      goto LABEL_329;
    }

    v118 = 4;
LABEL_328:
    v119 = v125;
    *a3 = v118;
    LODWORD(v126[0]) = v129;
    v120 = *(v125 + 16);
    v121 = v126;
    v122 = 1;
LABEL_329:
    TBuffer<wchar_t>::insert(v119, v120, v121, v122);
    return v17;
  }

LABEL_76:
  *a3 = v45;
  v48 = *(v125 + 16);
  LODWORD(v126[0]) = v129;
  v123 = v48;
  TBuffer<wchar_t>::insert(v125, v48, v126, 1uLL);
  if (*v17 && v19 != -1)
  {
    i = v17;
    v124 = v8;
    while (1)
    {
      v49 = v128;
      if (!v128)
      {
        goto LABEL_266;
      }

      v50 = v129;
      v51 = a1[12];
      v52 = *a3;
      if (*a3 > 1)
      {
        break;
      }

      if (v52)
      {
        if (v52 == 1)
        {
          {
            operator new();
          }

          isAlpha = TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v49);
          goto LABEL_154;
        }

LABEL_106:
        {
          operator new();
        }

        if (TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v49))
        {
          goto LABEL_265;
        }

        {
          operator new();
        }

        if (v49 > 159)
        {
          if (v49 >= 12288)
          {
            if (v49 == 12288)
            {
              goto LABEL_265;
            }

            v54 = 65279;
          }

          else
          {
            if (v49 == 160)
            {
              goto LABEL_265;
            }

            v54 = 8203;
          }

          if (v49 == v54)
          {
LABEL_265:
            v8 = v124;
            goto LABEL_266;
          }
        }

        else if (v49 <= 0x20 && ((1 << v49) & 0x100002600) != 0)
        {
          goto LABEL_265;
        }

        {
          operator new();
        }

        isPunct = TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v49);
        if (isPunct)
        {
          goto LABEL_265;
        }

        GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(isPunct);
        if (v49 >= 48)
        {
          if (v49 < 0x3A)
          {
            goto LABEL_265;
          }

          if (v49 >= 0x660)
          {
            GlobalLocaleInfo = TLocaleInfo::getDigitExtended(GlobalLocaleInfo, v49);
            if (GlobalLocaleInfo != -1)
            {
              goto LABEL_265;
            }
          }
        }

        v58 = TLocaleInfo::getGlobalLocaleInfo(GlobalLocaleInfo);
        if (TLocaleInfo::isJunk(v58, v49))
        {
          goto LABEL_265;
        }

        if (isComposableDiacriticInContext(0, v50, v51))
        {
          goto LABEL_265;
        }

        v59 = isComposableDiacriticInContext(v50, v49, v51);
        if (v59)
        {
          goto LABEL_265;
        }

        v60 = TLocaleInfo::getGlobalLocaleInfo(v59);
        if ((v50 - 19968) >> 4 <= 0x51A)
        {
          v55 = 12293;
LABEL_140:
          if (v49 != v55)
          {
            goto LABEL_265;
          }

          goto LABEL_155;
        }

        v61 = TLocaleInfo::getGlobalLocaleInfo(v60);
        if ((v49 - 19968) >> 4 < 0x51B)
        {
          goto LABEL_265;
        }

        TLocaleInfo::getGlobalLocaleInfo(v61);
        v62 = isKatakana(v50);
        v63 = v62;
        v64 = TLocaleInfo::getGlobalLocaleInfo(v62);
        if (v63)
        {
          isAlpha = TLocaleInfo::isSmallKatakana(v64, v49);
LABEL_153:
          if (v50 == 12540)
          {
            goto LABEL_265;
          }

LABEL_154:
          if ((isAlpha & 1) == 0)
          {
            goto LABEL_265;
          }

          goto LABEL_155;
        }

        v65 = isKatakana(v49);
        if (v65)
        {
          goto LABEL_265;
        }

        v66 = TLocaleInfo::getGlobalLocaleInfo(v65);
        if ((v50 - 12353) < 0x53 || (v50 - 12540) < 3 || (v50 - 12445) <= 1)
        {
          v67 = TLocaleInfo::getGlobalLocaleInfo(v66);
          isAlpha = TLocaleInfo::isSmallHiragana(v67, v49);
          goto LABEL_153;
        }

        v86 = TLocaleInfo::getGlobalLocaleInfo(v66);
        if ((v49 - 12353) < 0x53 || (v49 - 12540) < 3 || (v49 - 12445) < 2)
        {
          goto LABEL_265;
        }

        v87 = TLocaleInfo::getGlobalLocaleInfo(v86);
        v88 = TLocaleInfo::getGlobalLocaleInfo(v87);
        v89 = v49 - 3585;
        if ((v50 - 3585) > 0x5A)
        {
          if (v89 < 0x5B)
          {
            goto LABEL_265;
          }

          v90 = TLocaleInfo::getGlobalLocaleInfo(v88);
          if (v50 >= 1425)
          {
            v92 = v50 < 0x5F5 || (v50 - 64285) < 0x33;
            TLocaleInfo::getGlobalLocaleInfo(v90);
            if (v49 >= 1425)
            {
              if (v49 >= 0x5F5)
              {
                if ((((v49 - 64285) < 0x33) ^ v92))
                {
                  goto LABEL_265;
                }
              }

              else if (!v92)
              {
                goto LABEL_265;
              }
            }

            else if (v92)
            {
              goto LABEL_265;
            }
          }

          else
          {
            TLocaleInfo::getGlobalLocaleInfo(v90);
            if (v49 >= 1425 && (v49 < 0x5F5 || (v49 - 64285) < 0x33))
            {
              goto LABEL_265;
            }
          }
        }

        else
        {
          if (v89 > 0x5A)
          {
            goto LABEL_265;
          }

          if ((v49 - 3663) >= 0xFFFFFFD5)
          {
            if (v49 > 0xE3A)
            {
              if (v49 > 0xE44)
              {
                goto LABEL_155;
              }
            }

            else if (v49 > 0xE2F || (v49 & 0xE7D) == 0xE24)
            {
              goto LABEL_155;
            }
          }

          if ((v50 - 3653) < 0xFFFFFFFB)
          {
            goto LABEL_265;
          }
        }

        goto LABEL_155;
      }

      {
        operator new();
      }

      if (v50 <= 8202)
      {
        if (v50 != 32 && v50 != 160)
        {
LABEL_145:
          if (v50 != 13 || v49 != 10)
          {
            goto LABEL_265;
          }

          goto LABEL_155;
        }
      }

      else if (v50 != 8203 && v50 != 65279 && v50 != 12288)
      {
        goto LABEL_145;
      }

      {
        operator new();
      }

      if (v49 > 8202)
      {
        if (v49 == 8203 || v49 == 12288)
        {
          goto LABEL_155;
        }

        v55 = 65279;
        goto LABEL_140;
      }

      if (v49 != 32 && v49 != 160)
      {
        goto LABEL_265;
      }

LABEL_155:
      if (a1[11] >= 3uLL)
      {
        v68 = v128;
        {
          operator new();
        }

        v70 = v68 < 65281 && v68 != 12288;
        if (v68 <= 65510 && !v70 && ((v68 - 65471) > 0x20 || TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v68) != v68))
        {
          v71 = v128;
          {
            operator new();
          }

          v128 = TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v71);
          *a4 |= 2uLL;
        }
      }

      v72 = v129;
      v129 = v128;
      i += v19;
      v73 = TLocaleInfo::multiByteToUnicode(a1[12], i, &v128);
      v19 = v73;
      v74 = *i;
      if (v72 == 3661)
      {
        v8 = v124;
        if ((v129 & 0xFFFFFFFC) == 0xE48 && v128 == 3634 && *i && v73 != -1)
        {
          *(*v125 + 4 * *(v125 + 16) - 4) = v129;
          v129 = 3661;
          v74 = *i;
        }

        if (!v74)
        {
          goto LABEL_192;
        }

LABEL_176:
        if (v73 != -1)
        {
          do
          {
            v75 = TLocaleInfo::composeCharacter(a1[12], v129, v128);
            if (!v75)
            {
              break;
            }

            v76 = (v128 & 0x7FFFFFFB) != 0x670 && v128 >= 0x660;
            v77 = v76 ? 1 : 4;
            v78 = v128 >= 1611 ? v77 : 1;
            *a4 |= v78;
            v129 = v75;
            i += v19;
            v79 = TLocaleInfo::multiByteToUnicode(a1[12], i, &v128);
            v19 = v79;
          }

          while (*i && v79 != -1);
        }

        goto LABEL_192;
      }

      v8 = v124;
      if (*i)
      {
        goto LABEL_176;
      }

LABEL_192:
      v81 = a1[13];
      if (v81)
      {
        v82 = *v81;
        if (*v81)
        {
          v83 = v81 + 2;
          while (*(v83 - 1))
          {
            if (v129 == v82)
            {
              v129 = *(v83 - 1);
              *a4 |= 8uLL;
              break;
            }

            v84 = *v83;
            v83 += 2;
            v82 = v84;
            if (!v84)
            {
              break;
            }
          }
        }
      }

      if ((i - v8) <= 0xFF)
      {
        LODWORD(v126[0]) = v129;
        TBuffer<wchar_t>::insert(v125, *(v125 + 16), v126, 1uLL);
      }

      if (*i)
      {
        v85 = v19 == -1;
      }

      else
      {
        v85 = 1;
      }

      if (v85)
      {
        goto LABEL_266;
      }
    }

    switch(v52)
    {
      case 2:
        {
          operator new();
        }

        if (v49 < 48 || v49 >= 0x3A && (v49 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v49) == -1))
        {
          goto LABEL_265;
        }

        goto LABEL_155;
      case 5:
        {
          operator new();
        }

        if ((v49 - 1) >= 8 && (v49 - 11) >= 2 && v49 != 0xFFFF && (v49 - 32) < 0xFFFFFFEE)
        {
          goto LABEL_265;
        }

        goto LABEL_155;
      case 3:
        goto LABEL_265;
    }

    goto LABEL_106;
  }

  i = v17;
LABEL_266:
  if ((i - v8) >= 0x100)
  {
    v5 = v125;
    *a3 = 5;
    TBuffer<wchar_t>::resize(v125, v123);
    goto LABEL_268;
  }

  if (*a3 != 4)
  {
    if (*a3 != 5)
    {
      return i;
    }

    TBuffer<wchar_t>::resize(v125, v123);
    v41 = *(v125 + 16);
    v42 = "u";
    v43 = v125;
    v44 = 11;
    goto LABEL_269;
  }

  v94 = a1[12];
  v96 = *(v125 + 8);
  v95 = *(v125 + 16);
  if (v95 >= v96)
  {
    if (*(v125 + 1048))
    {
      LODWORD(v126[0]) = 0;
      TBuffer<wchar_t>::insert(v125, v95, v126, 1uLL);
      --*(v125 + 16);
      v97 = *v125;
    }

    else
    {
      v97 = *v125;
      if (v96)
      {
        v97[v96 - 1] = 0;
      }
    }
  }

  else
  {
    v97 = *v125;
    *(*v125 + 4 * v95) = 0;
  }

  if (TLocaleInfo::isKtivMenukad(v94, &v97[v123]))
  {
    *&v126[0] = &v126[1] + 8;
    v104 = 256;
    *(v126 + 8) = xmmword_1B5AE2110;
    v127 = 1;
    v105 = a1[12];
    v107 = *(v125 + 8);
    v106 = *(v125 + 16);
    if (v106 >= v107)
    {
      if (*(v125 + 1048))
      {
        v130[0] = 0;
        TBuffer<wchar_t>::insert(v125, v106, v130, 1uLL);
        --*(v125 + 16);
        v108 = *v125;
      }

      else
      {
        v108 = *v125;
        if (v107)
        {
          v108[v107 - 1] = 0;
        }
      }
    }

    else
    {
      v108 = *v125;
      *(*v125 + 4 * v106) = 0;
    }

    TLocaleInfo::ktivMenukadToKtivMaleh(*&v104, v103, v105, &v108[v123], v126);
    TBuffer<wchar_t>::resize(v125, v123);
    if (*&v126[1])
    {
      v110 = TBuffer<wchar_t>::c_str(v126);
      v111 = v110;
      v112 = 0;
      v113 = *(v125 + 16);
        ;
      }

      v115 = v112 - 1;
    }

    else
    {
      *a3 = 5;
      v113 = *(v125 + 16);
      v111 = "n";
      v115 = 6;
    }

    TBuffer<wchar_t>::insert(v125, v113, v111, v115);
    if (v127 == 1 && *&v126[0] != (&v126[1] + 8) && *&v126[0] != 0)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  return i;
}

void sub_1B53A8AE0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TLocaleInfo::getGlobalLocaleInfo(TLocaleInfo *this)
{
  {
    operator new();
  }

  return TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
}

void sub_1B53A8CB0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

BOOL isComposableDiacriticInContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 768)
  {
    return 0;
  }

  v5 = a2;
  if (a2 < 0x370)
  {
    goto LABEL_4;
  }

  if (a2 > 0xE30)
  {
    if (a2 > 0xE4E)
    {
      return 0;
    }

    if (a2 > 0xE33)
    {
      if ((a2 - 3655) > 0xFFFFFFF3)
      {
        return 0;
      }
    }

    else if (a2 != 3633)
    {
      return 0;
    }
  }

  else if (a2 != 1600)
  {
    if (a2 >= 0x64B)
    {
      if (a2 >= 0x660 && (a2 & 0xFFB) != 0x670)
      {
        result = 0;
        if (a2 != 2364 || *(a3 + 72) <= 3uLL)
        {
          return result;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  {
    operator new();
  }

  return v5 - 3585 > 0x5A || TLocaleInfo::composeCharacter(a3, a1, v5) != 0;
}

void sub_1B53A8E2C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

_DWORD *TBuffer<wchar_t>::c_str(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 >= v3)
  {
    if (*(a1 + 1048))
    {
      v5 = 0;
      TBuffer<wchar_t>::insert(a1, v2, &v5, 1uLL);
      --*(a1 + 16);
      return *a1;
    }

    else
    {
      result = *a1;
      if (v3)
      {
        result[v3 - 1] = 0;
      }
    }
  }

  else
  {
    result = *a1;
    *(*a1 + 4 * v2) = 0;
  }

  return result;
}

uint64_t TSegmenter::getSegment(TSegmenter *this, char *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = &a2[-*(this + 7)];
  v5 = *(this + 8);
  v6 = (this + 64);
  if (v4 >= (*(this + 9) - v5) >> 3)
  {
    v13 = 0;
    std::vector<TSegment const*>::resize(this + 8, 2 * v4 + 2, &v13);
    v5 = *v6;
  }

  result = *(v5 + 8 * v4);
  if (!result)
  {
    v18 = 4;
    v17 = 0;
    v13 = v15;
    v14 = xmmword_1B5AE2110;
    v16 = 1;
    SegmentEnd = TSegmenter::findSegmentEnd(this, a2, &v18, &v17, &v13);
    if ((*(&v14 + 1) + 1) >> 62)
    {
      v9 = -1;
    }

    else
    {
      v9 = 4 * (*(&v14 + 1) + 1);
    }

    v10 = TAllocator::allocate((this + 16), v9);
    if (*(&v14 + 1) >= v14)
    {
      if (v16)
      {
        v19 = 0;
        TBuffer<wchar_t>::insert(&v13, *(&v14 + 1), &v19, 1uLL);
        v11 = v13;
        --*(&v14 + 1);
      }

      else
      {
        v11 = v13;
        if (v14)
        {
          v13[v14 - 1] = 0;
        }
      }
    }

    else
    {
      v11 = v13;
      v13[*(&v14 + 1)] = 0;
    }

    wcscpy(v10, v11);
    v12 = TAllocator::allocate((this + 16), 32);
    *v12 = v10;
    v12[1] = SegmentEnd;
    v12[2] = v17;
    *(v12 + 6) = v18;
    *(*v6 + 8 * v4) = v12;
    if (v16 == 1 && v13 != v15)
    {
      if (v13)
      {
        MEMORY[0x1B8C85310]();
      }
    }

    return *(*v6 + 8 * v4);
  }

  return result;
}

void sub_1B53A90A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x418]) == 1 && a9 != v9)
  {
    if (a9)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

void std::vector<TSegment const*>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<TSegment const*>::__append(result, a2 - v3, a3);
  }
}

uint64_t TSegmenter::getPreviousSegment(TSegmenter *this, char *a2)
{
  v3 = *(this + 7);
  if (v3 == a2)
  {
    return 0;
  }

  v5 = a2 - v3;
  v6 = *(this + 8);
  v7 = (*(this + 9) - v6) >> 3;
  v8 = a2 - v3 - 1;
  if ((a2 - v3) <= 1)
  {
    v5 = 1;
  }

  while (1)
  {
    if (v8 < v7)
    {
      result = *(v6 + 8 * v8);
      if (result)
      {
        break;
      }
    }

    --v8;
    if (!--v5)
    {
      return TSegmenter::getSegment(this, v3);
    }
  }

  for (i = *(result + 8); i < a2; i = *(result + 8))
  {
    result = TSegmenter::getSegment(this, i);
  }

  return result;
}

uint64_t TLocaleInfo::isJunk(uint64_t a1, int a2)
{
  v2 = a2 == 0xFFFF || (a2 - 14) < 0x12;
  v3 = (a2 - 11) < 2 || v2;
  if ((a2 - 1) >= 8)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

BOOL TLocaleInfo::isDiacritic(uint64_t a1, unsigned int a2)
{
  if (a2 < 768)
  {
    return 0;
  }

  if (a2 < 0x370)
  {
    return 1;
  }

  if (a2 > 0xE30)
  {
    v4 = a2 - 3655 < 0xFFFFFFF4;
    if (a2 <= 0xE33)
    {
      v4 = a2 == 3633;
    }

    return a2 <= 0xE4E && v4;
  }

  else
  {
    if (a2 == 1600)
    {
      return 1;
    }

    if (a2 < 0x64B)
    {
      return 0;
    }

    result = 1;
    if (a2 >= 0x660 && (a2 & 0xFFB) != 0x670)
    {
      if (a2 == 2364)
      {
        return *(a1 + 72) > 3uLL;
      }

      return 0;
    }
  }

  return result;
}

uint64_t isKatakana(int a1)
{
  v1 = (a1 - 12540) < 3 || (a1 - 65438) < 2;
  v2 = (a1 - 12443) < 4 || v1;
  if ((a1 - 12449) >= 0x56)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if ((a1 - 65382) >= 0x38)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t TLocaleInfo::isSmallKatakana(uint64_t a1, int a2)
{
  v2 = (a2 - 12443) >= 4 && (a2 - 12540) >= 3;
  if (!v2 || (a2 - 65382) < 0xB)
  {
    return 1;
  }

  result = 1;
  if (((a2 - 12449) > 0x22 || ((1 << (a2 + 95)) & 0x400000155) == 0) && ((a2 - 12515) > 0xB || ((1 << (a2 + 29)) & 0x815) == 0) && (a2 - 65438) >= 2)
  {
    return 0;
  }

  return result;
}

BOOL TLocaleInfo::isSmallHiragana(uint64_t a1, int a2)
{
  result = 1;
  v3 = (a2 - 12419) > 0x1B || ((1 << (a2 + 125)) & 0xC000815) == 0;
  if (v3 && ((a2 - 12353) > 8 || ((1 << (a2 - 65)) & 0x155) == 0))
  {
    return (a2 - 12540) < 3;
  }

  return result;
}

void std::vector<TSegment const*>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1B5AE0060)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1B5AE0060)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void quasar::corrective_reranking::CorrectiveRerankerConfig::read(quasar::corrective_reranking::CorrectiveRerankerConfig *this, const quasar::PTree *a2)
{
  LODWORD(v5) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v6 = *(a2 + 8);
  }

  memset(v7, 0, sizeof(v7));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v7, *(a2 + 4), *(a2 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  v8 = *(a2 + 56);
  std::string::basic_string[abi:ne200100]<0>(__p, "apply-capitalization-top-n");
  quasar::PTree::erase(&v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "model-file");
  quasar::PTree::getString(&v5, __p);
}

void sub_1B53A9C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53A9DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53AA168()
{
  if (*(v0 - 48) == 1 && *(v0 - 49) < 0)
  {
    JUMPOUT(0x1B53AA1A8);
  }

  JUMPOUT(0x1B53AA1ACLL);
}

void sub_1B53AA198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53AA2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53AA5B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53AA700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53AA804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::Config::Config(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  quasar::corrective_reranking::CorrectiveRerankerConfig::CorrectiveRerankerConfig((a1 + 40));
  *(a1 + 144) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x2000;
  *(a1 + 296) = 0;
  *(a1 + 298) = 0;
  *(a1 + 300) = -1;
  *(a1 + 304) = 1;
  *(a1 + 312) = v6;
  *(a1 + 320) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *(a1 + 328) = 0x300000001;
  *(a1 + 336) = 0x40000000;
  quasar::corrective_reranking::TransformerClassifierConfig::TransformerClassifierConfig((a1 + 344));
  *(a1 + 544) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  *(a1 + 616) = 0;
  *(a1 + 632) = 10;
  quasar::PTree::PTree((a1 + 640));
  v7 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "text-proc.voice-commands.corrective-reranking");
  quasar::SystemConfig::getPtree(v7, __p);
  quasar::corrective_reranking::Config::read(a1, v8);
}

void sub_1B53AA994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  quasar::PTree::~PTree((v15 + 640));
  if (*(v15 + 631) < 0)
  {
    operator delete(*(v15 + 608));
  }

  std::pair<std::string,std::string>::~pair(v17);
  std::pair<std::string,std::string>::~pair(v15 + 496);
  quasar::corrective_reranking::TransformerClassifierConfig::~TransformerClassifierConfig((v15 + 344));
  quasar::corrective_reranking::PhoneticMatcherConfig::~PhoneticMatcherConfig((v16 + 128));
  std::pair<std::string,std::vector<std::string>>::~pair(v16 + 72);
  std::pair<std::string const,quasar::TranslationPairSetting>::~pair(v16);
  quasar::corrective_reranking::CorrectiveRerankerConfig::~CorrectiveRerankerConfig(v18 + 3);
  if (*(v15 + 39) < 0)
  {
    operator delete(*v18);
  }

  v20 = *(v15 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void sub_1B53AAA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

quasar::corrective_reranking::TransformerClassifierConfig *quasar::corrective_reranking::TransformerClassifierConfig::TransformerClassifierConfig(quasar::corrective_reranking::TransformerClassifierConfig *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 0xC000000200;
  std::string::basic_string[abi:ne200100]<0>(this + 7, "<Intent Classification>");
  std::string::basic_string[abi:ne200100]<0>(this + 10, "<Edit Validation>");
  std::string::basic_string[abi:ne200100]<0>(this + 13, "");
  std::string::basic_string[abi:ne200100]<0>(this + 16, "**");
  return this;
}

void sub_1B53AAB24(_Unwind_Exception *a1)
{
  std::pair<std::string const,quasar::TranslationPairSetting>::~pair(v1 + 56);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B53AAFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

quasar::corrective_reranking::CorrectiveRerankerConfig *quasar::corrective_reranking::CorrectiveRerankerConfig::CorrectiveRerankerConfig(quasar::corrective_reranking::CorrectiveRerankerConfig *this)
{
  *&v5 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 1;
  *(this + 7) = 0;
  *(this + 8) = 0x3200000001;
  *(this + 18) = 10;
  std::string::basic_string[abi:ne200100]<0>(__p, "\\b\\d+:\\d+\\b");
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>((this + 80), __p, &v5, 1uLL);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1B53AB100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = (v14 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::TransformerClassifierConfig::~TransformerClassifierConfig(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

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

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::corrective_reranking::PhoneticMatcherConfig::~PhoneticMatcherConfig(quasar::corrective_reranking::PhoneticMatcherConfig *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void quasar::corrective_reranking::CorrectiveRerankerConfig::~CorrectiveRerankerConfig(void **this)
{
  v2 = this + 10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<quasar::SystemConfig>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<quasar::SystemConfig>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0F108;
  std::allocator<quasar::SystemConfig>::construct[abi:ne200100]<quasar::SystemConfig,std::string &>(&v2, (a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::SystemConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0F108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::SystemConfig>::construct[abi:ne200100]<quasar::SystemConfig,std::string &>(uint64_t a1, quasar::SystemConfig *a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  quasar::SystemConfig::SystemConfig(a2, a3, v5, v3);
}

void sub_1B53AB444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  a9 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::SystemConfig>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::SystemConfig>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0F108;
  std::allocator<quasar::SystemConfig>::construct[abi:ne200100]<quasar::SystemConfig,std::string const&>(&v2, (a1 + 3), a2);
}

void std::allocator<quasar::SystemConfig>::construct[abi:ne200100]<quasar::SystemConfig,std::string const&>(uint64_t a1, quasar::SystemConfig *a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  quasar::SystemConfig::SystemConfig(a2, a3, v5, v3);
}

void sub_1B53AB5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  a9 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL quasar::isInvalidPowerContext(uint64_t a1)
{
  quasar::RecogRequestFilter::getPowerContextOptions(&v6);
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    if (*(a1 + 8) != 1)
    {
LABEL_8:
      v4 = &v7 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v6, a1);
      goto LABEL_9;
    }

    v3 = *a1;
  }

  else
  {
    v3 = a1;
    if (v2 != 1)
    {
      goto LABEL_8;
    }
  }

  if (*v3 != 42)
  {
    goto LABEL_8;
  }

  v4 = 0;
LABEL_9:
  std::__tree<std::string>::destroy(&v6, v7);
  return v4;
}

uint64_t quasar::matchesConfigurationCategoryWithWildcard(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = (a2 + 8);
  while (1)
  {
    v6 = *(v2 + 23);
    if (v6 < 0)
    {
      if (*(*v2 + *(v2 + 8) - 1) != 42)
      {
LABEL_19:
        if (v5 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a2, v2))
        {
          return 1;
        }

        goto LABEL_32;
      }

      v6 = *(v2 + 8);
    }

    else if (*(v2 + v6 - 1) != 42)
    {
      goto LABEL_19;
    }

    std::string::basic_string(&__s1, v2, 0, v6 - 1, &v19);
    v7 = *v5;
    if (*v5)
    {
      v8 = v5;
      do
      {
        v9 = std::less<std::string>::operator()[abi:ne200100](a2, (v7 + 32), &__s1.__r_.__value_.__l.__data_);
        if (v9)
        {
          v10 = 8;
        }

        else
        {
          v10 = 0;
        }

        if (!v9)
        {
          v8 = v7;
        }

        v7 = *(v7 + v10);
      }

      while (v7);
      if (v8 != v5)
      {
        v11 = *(v8 + 55);
        v12 = v11 < 0 ? v8[5] : *(v8 + 55);
        v13 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          size = __s1.__r_.__value_.__l.__size_;
          if (v12 < __s1.__r_.__value_.__l.__size_)
          {
            goto LABEL_31;
          }

          p_s1 = __s1.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v12 < SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_32;
          }

          p_s1 = &__s1;
          size = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
        }

        v16 = v8 + 4;
        if ((v11 & 0x80000000) != 0)
        {
          v16 = *v16;
        }

        if (!memcmp(p_s1, v16, size))
        {
          break;
        }
      }
    }

    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_31:
      operator delete(__s1.__r_.__value_.__l.__data_);
    }

LABEL_32:
    v2 += 24;
    if (v2 == v3)
    {
      return 0;
    }
  }

  if (v13 < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  return 1;
}

uint64_t quasar::matchesConfigurationCategory<BOOL>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 & 0x3F;
  if (v2 <= 0x3F && v3 == 0)
  {
    return 0;
  }

  v5 = 0;
  v6 = *a1;
  v7 = *a1 + 8 * (v2 >> 6);
  v10 = *(a2 + 8);
  v8 = a2 + 8;
  v9 = v10;
  while (1)
  {
    if (v9)
    {
      v11 = (*v6 >> v5) & 1;
      v12 = v8;
      v13 = v9;
      do
      {
        v14 = *(v13 + 25);
        v15 = v14 >= v11;
        v16 = v14 < v11;
        if (v15)
        {
          v12 = v13;
        }

        v13 = *(v13 + 8 * v16);
      }

      while (v13);
      if (v12 != v8 && *(v12 + 25) <= v11)
      {
        break;
      }
    }

    v6 += v5 == 63;
    if (v5 == 63)
    {
      v5 = 0;
    }

    else
    {
      ++v5;
    }

    if (v6 == v7 && v5 == v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t quasar::RecogRequestFilter::noMatchingComponentErrorMessage(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t **a6, uint64_t **a7, uint64_t **a8)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v48);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Could not find the recognizer components for the params samplingRate=", 69);
  v18 = MEMORY[0x1B8C84C10](v17, a1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " task=", 6);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = a2[1];
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " device=", 8);
  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = a3[1];
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " farField=", 10);
  v30 = MEMORY[0x1B8C84BD0](v29, a4);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " atypicalSpeech=", 16);
  v32 = MEMORY[0x1B8C84BD0](v31, a5);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " aneContext=", 12);
  v34 = *(a6 + 23);
  if (v34 >= 0)
  {
    v35 = a6;
  }

  else
  {
    v35 = *a6;
  }

  if (v34 >= 0)
  {
    v36 = *(a6 + 23);
  }

  else
  {
    v36 = a6[1];
  }

  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " cpuContext=", 12);
  v39 = *(a7 + 23);
  if (v39 >= 0)
  {
    v40 = a7;
  }

  else
  {
    v40 = *a7;
  }

  if (v39 >= 0)
  {
    v41 = *(a7 + 23);
  }

  else
  {
    v41 = a7[1];
  }

  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " gpuContext=", 12);
  v44 = *(a8 + 23);
  if (v44 >= 0)
  {
    v45 = a8;
  }

  else
  {
    v45 = *a8;
  }

  if (v44 >= 0)
  {
    v46 = *(a8 + 23);
  }

  else
  {
    v46 = a8[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
  std::stringbuf::str();
  v48 = *MEMORY[0x1E69E54E8];
  *(&v48 + *(v48 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v49 = MEMORY[0x1E69E5548] + 16;
  if (v51 < 0)
  {
    operator delete(v50[7].__locale_);
  }

  v49 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v50);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v52);
}

void sub_1B53ABB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](v9 + 112);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1B53ABDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void quasar::splitUnicodeRegex(uint64_t a1, const char *a2)
{
  v4 = U_ZERO_ERROR;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  quasar::URegularExpressionWrapper::URegularExpressionWrapper(v3, a2, &v4, 0);
}

void quasar::trimUnicodeRegex(uint64_t a1, const char *a2)
{
  v3 = U_ZERO_ERROR;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  quasar::URegularExpressionWrapper::URegularExpressionWrapper(v2, a2, &v3, 0);
}

void sub_1B53AC1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::trimUnicodeCharSet(uint64_t a1, quasar *a2)
{
  quasar::getRegexCharSet(a2, &v7);
  v3 = std::string::insert(&v7, 0, "(");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v8.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v8.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v8, ")+");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10 = v5->__r_.__value_.__r.__words[2];
  v9 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  quasar::trimUnicodeRegex(a1, &v9);
}

void sub_1B53AC2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  _Unwind_Resume(exception_object);
}

void quasar::replaceUnicodeRegex(uint64_t a1, const char *a2)
{
  v5 = U_ZERO_ERROR;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  quasar::URegularExpressionWrapper::URegularExpressionWrapper(v4, a2, &v5, 0);
}

void quasar::getBoundarySeparatedString(quasar *a1@<X0>, uint64_t a4@<X8>)
{
  v29 = 0uLL;
  v30 = 0;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  quasar::UnicodeCharacterVectorFromUTF8(&v27, a1);
  v26 = 0;
  ubrk_open();
  v5 = ubrk_first();
  if (v5 != -1)
  {
    do
    {
      v6 = ubrk_next();
      v7 = v6;
      if (v6 > v5 && v6 < (v28 - v27))
      {
        v8 = &v27[v6];
        if (*(v8 - 1))
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(&v22, &v27[v5], v8, (2 * v6 - 2 * v5) >> 1);
          quasar::UTF8StringFromUnicodeCharacterArray(__p, v22, (v23 - v22) >> 1);
          v9 = *(&v29 + 1);
          if (*(&v29 + 1) >= v30)
          {
            v11 = 0xAAAAAAAAAAAAAAABLL * ((*(&v29 + 1) - v29) >> 3);
            v12 = v11 + 1;
            if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v30 - v29) >> 3) > v12)
            {
              v12 = 0x5555555555555556 * ((v30 - v29) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3) >= 0x555555555555555)
            {
              v13 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v13 = v12;
            }

            v25.__end_cap_.__value_ = &v29;
            if (v13)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v29, v13);
            }

            v14 = 8 * ((*(&v29 + 1) - v29) >> 3);
            v15 = *__p;
            *(v14 + 16) = v21;
            *v14 = v15;
            __p[1] = 0;
            v21 = 0;
            __p[0] = 0;
            v16 = 24 * v11 + 24;
            v17 = 24 * v11 - (*(&v29 + 1) - v29);
            memcpy((v14 - (*(&v29 + 1) - v29)), v29, *(&v29 + 1) - v29);
            v18 = v29;
            v19 = v30;
            *&v29 = v17;
            *(&v29 + 1) = v16;
            v30 = 0;
            v25.__end_ = v18;
            v25.__end_cap_.__value_ = v19;
            v25.__first_ = v18;
            v25.__begin_ = v18;
            std::__split_buffer<std::string>::~__split_buffer(&v25);
            *(&v29 + 1) = v16;
            if (SHIBYTE(v21) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v10 = *__p;
            *(*(&v29 + 1) + 16) = v21;
            *v9 = v10;
            *(&v29 + 1) = v9 + 24;
          }

          if (v22)
          {
            v23 = v22;
            operator delete(v22);
          }
        }
      }

      v5 = v7;
    }

    while (v7 != -1);
  }

  ubrk_close();
  *a4 = v29;
  *(a4 + 16) = v30;
  v30 = 0;
  v29 = 0uLL;
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  v25.__first_ = &v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_1B53AC770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  v18 = *(v16 - 136);
  if (v18)
  {
    *(v16 - 128) = v18;
    operator delete(v18);
  }

  *(v16 - 136) = v16 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 136));
  _Unwind_Resume(a1);
}

BOOL quasar::isCJK(unsigned int a1)
{
  v2 = vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1B5AFD500, vaddq_s32(vdupq_n_s32(a1), xmmword_1B5AFD4F0))));
  result = 1;
  if ((v2 & 1) == 0)
  {
    v4 = a1 & 0xFFFFFF00;
    v5 = a1 & 0xFFFFFFC0;
    v6 = a1 - 65381;
    v7 = (a1 & 0xFFFF0000) == 0x20000;
    if (v5 == 43072)
    {
      v7 = 1;
    }

    if (v4 == 4352)
    {
      v7 = 1;
    }

    return v6 < 0x78 || v7;
  }

  return result;
}

void sub_1B53ACD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25)
{
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    a24 = 0u;
    a25 = 0u;
    a22 = 0u;
    a23 = 0u;
    a20 = 0u;
    a21 = 0u;
    a18 = 0u;
    a19 = 0u;
    a16 = 0u;
    a17 = 0u;
    a14 = 0u;
    a15 = 0u;
    a12 = 0u;
    a13 = 0u;
    a10 = 0u;
    a11 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "trimUnicode: ", 13);
    v29 = (*(*v27 + 16))(v27);
    v30 = strlen(v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(v25 - 256);
  _Unwind_Resume(a1);
}

void quasar::splitAndTrimNoEmptyUnicode()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 0uLL;
  v3 = 0;
  operator new();
}

void sub_1B53AD1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 __p, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2 == 1)
  {
    v43 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v44 = v43;
      a26 = 0u;
      a27 = 0u;
      a24 = 0u;
      a25 = 0u;
      a22 = 0u;
      a23 = 0u;
      a20 = 0u;
      a21 = 0u;
      a18 = 0u;
      a19 = 0u;
      a16 = 0u;
      a17 = 0u;
      a14 = 0u;
      a15 = 0u;
      a12 = 0u;
      a13 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v45 = (*(*v44 + 16))(v44);
      v46 = strlen(v45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v45, v46);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
    }

    *v41 = 0;
    v41[1] = 0;
    v41[2] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1B53AD148);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&a41);
  *&__p = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1B53AD2EC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B53AD1C8);
}

std::string *quasar::joinAndAutoSpace@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  if (size != result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
    v6 = 0;
    for (i = 0; 0xAAAAAAAAAAAAAAABLL * ((size - v4) >> 3) > i; ++i)
    {
      v8 = v4 + v6;
      if ((*(v4 + v6 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v8 + 8))
        {
LABEL_7:
          if (quasar::needsSpaceBetween(a2, v8))
          {
            std::string::append(a2, " ");
          }

          v9 = v5->__r_.__value_.__r.__words[0] + v6;
          v10 = *(v9 + 23);
          if (v10 >= 0)
          {
            v11 = (v5->__r_.__value_.__r.__words[0] + v6);
          }

          else
          {
            v11 = *v9;
          }

          if (v10 >= 0)
          {
            v12 = *(v9 + 23);
          }

          else
          {
            v12 = *(v9 + 8);
          }

          result = std::string::append(a2, v11, v12);
          v4 = v5->__r_.__value_.__r.__words[0];
          size = v5->__r_.__value_.__l.__size_;
        }
      }

      else if (*(v4 + v6 + 23))
      {
        goto LABEL_7;
      }

      v6 += 24;
    }
  }

  return result;
}

void sub_1B53AD3D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::utf::toU32StringVec(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1 != a1[1])
  {
    quasar::utf::toU32String();
  }
}

void sub_1B53AD954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::utf::toStringVec(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1 != a1[1])
  {
    quasar::utf::toString();
  }
}

void sub_1B53ADB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::indexU32ToU8(std::basic_string<char32_t> *__str, std::basic_string<char32_t>::size_type __n)
{
  if ((__n & 0x80000000) == 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size >= __n)
    {
      std::basic_string<char32_t>::basic_string(&v3, __str, 0, __n, &v21);
      quasar::utf::toString();
    }
  }

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
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "indexU32ToU8: out-of-bounds index");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void quasar::indexU8ToU16(std::string *__str, std::string::size_type __n)
{
  if ((__n & 0x80000000) == 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size >= __n)
    {
      std::string::basic_string(&v3, __str, 0, __n, &v21);
      quasar::utf::toU16String(&v3);
    }
  }

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
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "indexU8ToU16: out-of-bounds index");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void quasar::startAndLengthU32ToU8(std::basic_string<char32_t> *__str, std::basic_string<char32_t>::size_type a2, int a3)
{
  if (((a3 | a2) & 0x80000000) == 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size >= (a3 + a2))
    {
      quasar::indexU32ToU8(__str, a2);
    }
  }

  memset(v4, 0, sizeof(v4));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "startAndLengthU32ToU8: out-of-bounds range");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
}

void quasar::startAndLengthU8ToU16(std::string *__str, std::string::size_type a2, int a3)
{
  if (((a3 | a2) & 0x80000000) == 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size >= (a3 + a2))
    {
      quasar::indexU8ToU16(__str, a2);
    }
  }

  memset(v4, 0, sizeof(v4));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "startAndLengthU8ToU16: out-of-bounds range");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
}

void quasar::USimpleSearch::USimpleSearch(uint64_t a1, uint64_t a2, void *a3, const void **a4, int a5, char a6)
{
  *a1 = a6;
  *(a1 + 8) = (a3[1] - *a3) >> 1;
  *(a1 + 16) = 0;
  if (*(a4 + 23) >= 0)
  {
    v9 = *(a4 + 23);
  }

  else
  {
    v9 = a4[1];
  }

  v10 = v46;
  std::string::basic_string[abi:ne200100](v46, v9 + 17);
  if (v47 < 0)
  {
    v10 = v46[0];
  }

  if (v9)
  {
    if (*(a4 + 23) >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "@collation=search");
  v45 = U_ZERO_ERROR;
  LOWORD(v25) = 32;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&v42, &v25, &v25 + 1, 1);
  *(a1 + 16) = usearch_open();
  if (v45 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "USimpleSearch usearch_open failure:", 35);
    v14 = u_errorName(v45);
    v15 = strlen(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
  }

  usearch_getCollator();
  if (a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (ucol_getStrength() != v12)
  {
    ucol_setStrength();
    usearch_reset();
  }

  usearch_setAttribute();
  if (v45 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "USimpleSearch usearch_setAttribute failure:", 43);
    v17 = u_errorName(v45);
    v18 = strlen(v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
  }

  usearch_setPattern();
  if (v45 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "USimpleSearch usearch_setPattern failure:", 41);
    v20 = u_errorName(v45);
    v21 = strlen(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
  }

  usearch_setText();
  if (v45 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "USimpleSearch usearch_setText failure:", 38);
    v23 = u_errorName(v45);
    v24 = strlen(v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }
}

void sub_1B53AE2FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

void quasar::USimpleSearch::~USimpleSearch(quasar::USimpleSearch *this)
{
  if (*(this + 2))
  {
    usearch_close();
  }
}

uint64_t quasar::USimpleSearch::nextMatchRange@<X0>(quasar::USimpleSearch *this@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  result = usearch_next();
  v5 = result;
  if (result == -1)
  {
    v7 = 0;
    *a2 = 0;
  }

  else
  {
    result = usearch_getMatchedLength();
    if (!result)
    {
      memset(v8, 0, sizeof(v8));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "USimpleSearch usearch_getMatchedLength is 0 for a match");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
    }

    v6 = result;
    if (*this == 1 && *(this + 1) > (v5 + 1))
    {
      result = usearch_setOffset();
    }

    *a2 = v5;
    *(a2 + 8) = v6;
    v7 = 1;
  }

  *(a2 + 16) = v7;
  return result;
}

uint64_t quasar::USimpleSearch::getAllMatchRanges@<X0>(quasar::USimpleSearch *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = quasar::USimpleSearch::nextMatchRange(this, &v19);
  v5 = v20;
  if (v20)
  {
    while (1)
    {
      v7 = *(a2 + 8);
      v6 = *(a2 + 16);
      if (v7 >= v6)
      {
        v9 = (v7 - *a2) >> 4;
        v10 = v9 + 1;
        if ((v9 + 1) >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - *a2;
        if (v11 >> 3 > v10)
        {
          v10 = v11 >> 3;
        }

        v12 = v11 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v10;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, v12);
        }

        v13 = (16 * v9);
        *v13 = v19;
        v8 = 16 * v9 + 16;
        v14 = *(a2 + 8) - *a2;
        v15 = 16 * v9 - v14;
        memcpy(v13 - v14, *a2, v14);
        v16 = *a2;
        *a2 = v15;
        *(a2 + 8) = v8;
        *(a2 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v7 = v19;
        v8 = (v7 + 1);
      }

      *(a2 + 8) = v8;
      result = quasar::USimpleSearch::nextMatchRange(this, &v17);
      if (v5 != v18)
      {
        break;
      }

      v19 = v17;
    }
  }

  return result;
}

void sub_1B53AE698(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::caseAndDiacriticInsensitiveEquals(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ucol_open();
  ucol_setStrength();
  ucol_strcoll();
  ucol_close();
}

uint64_t quasar::isLowerUnicode(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1)
  {
    quasar::utf::toU32String();
  }

  return 0;
}

void sub_1B53AE8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::isUpperUnicode(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1)
  {
    quasar::utf::toU32String();
  }

  return 0;
}

void sub_1B53AE9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::isTitleUnicode(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1)
  {
    quasar::utf::toU32String();
  }

  return 0;
}

void sub_1B53AEAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::isUpperLettersUnicode(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1)
  {
    quasar::utf::toU32String();
  }

  return 0;
}

void sub_1B53AEB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53AEC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53AED78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t quasar::intersectionRange(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= v3 && v3 < a1[1] + *a1)
  {
    v4 = *a2;
  }

  else
  {
    v4 = 0;
  }

  if (v3 > v2 || v2 >= a2[1] + *a2)
  {
    return v4;
  }

  else
  {
    return *a1;
  }
}

void quasar::tokenizeForWordBoundariesValidation(quasar *a1@<X0>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  quasar::getBoundarySeparatedString(a1, v4);
  if (v4[0] != v4[1])
  {
    quasar::trimUnicode();
  }

  __p = v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B53AEFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::getRangesForSearchStringWithWordBoundariesValidation@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, const void **a4@<X8>)
{
  v6 = *(result + 23);
  if (v6 >= 0)
  {
    v7 = *(result + 23);
  }

  else
  {
    v7 = *(result + 8);
  }

  if (!v7)
  {
    goto LABEL_116;
  }

  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v10 = result;
    if (v6 < 0)
    {
      result = *result;
    }

    quasar::utf8::utf8ToUtf16(v97, result, v7);
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    quasar::utf8::utf8ToUtf16(v96, v12, v13);
    quasar::tokenizeForWordBoundariesValidation(v10, &v94);
    v80 = a4;
    quasar::tokenizeForWordBoundariesValidation(a2, &__p);
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v14 = v94;
    v15 = v95;
    v81 = a3;
    if (v94 != v95)
    {
      do
      {
        std::string::basic_string(&v99, v10, *v14, v14[1], &v98);
        v16 = v90;
        if (v90 >= v91)
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3);
          v19 = v18 + 1;
          if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v91 - v89) >> 3) > v19)
          {
            v19 = 0x5555555555555556 * ((v91 - v89) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v91 - v89) >> 3) >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v19;
          }

          v98.__end_cap_.__value_ = &v89;
          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v89, v20);
          }

          v21 = 8 * ((v90 - v89) >> 3);
          v22 = *&v99.__r_.__value_.__l.__data_;
          *(v21 + 16) = *(&v99.__r_.__value_.__l + 2);
          *v21 = v22;
          memset(&v99, 0, sizeof(v99));
          v23 = 24 * v18 + 24;
          v24 = (24 * v18 - (v90 - v89));
          memcpy((v21 - (v90 - v89)), v89, v90 - v89);
          v25 = v89;
          v26 = v91;
          v89 = v24;
          v90 = v23;
          v91 = 0;
          v98.__end_ = v25;
          v98.__end_cap_.__value_ = v26;
          v98.__first_ = v25;
          v98.__begin_ = v25;
          std::__split_buffer<std::string>::~__split_buffer(&v98);
          v90 = v23;
          a3 = v81;
          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v17 = *&v99.__r_.__value_.__l.__data_;
          *(v90 + 2) = *(&v99.__r_.__value_.__l + 2);
          *v16 = v17;
          v90 = v16 + 24;
        }

        v14 += 2;
      }

      while (v14 != v15);
    }

    v27 = tl::expected<std::vector<unsigned short>,std::string>::value<std::vector<unsigned short>,(void *)0>(v97);
    v28 = tl::expected<std::vector<unsigned short>,std::string>::value<std::vector<unsigned short>,(void *)0>(v96);
    quasar::USimpleSearch::USimpleSearch(v88, v27, v28, a3, 1, 1);
    *v80 = 0;
    v80[1] = 0;
    v80[2] = 0;
    quasar::USimpleSearch::getAllMatchRanges(v88, &v86);
    v29 = v86;
    v79 = v87;
    if (v86 != v87)
    {
      while (1)
      {
        *(&v85 + 1) = 0;
        v30 = tl::expected<std::vector<unsigned short>,std::string>::value<std::vector<unsigned short>,(void *)0>(v96);
        quasar::pySlice<std::vector<unsigned short>>(v30, 0, *v29, &v99.__r_.__value_.__l.__data_);
        quasar::utf8::utf16ToUtf8(&v99, &v98);
        v31 = tl::expected<std::string,std::string>::value<std::string,(void *)0>(&v98);
        v32 = *(v31 + 23);
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(v31 + 8);
        }

        *&v85 = v32;
        if (SHIBYTE(v98.__end_) < 0)
        {
          operator delete(v98.__first_);
        }

        if (v99.__r_.__value_.__r.__words[0])
        {
          v99.__r_.__value_.__l.__size_ = v99.__r_.__value_.__r.__words[0];
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        v33 = tl::expected<std::vector<unsigned short>,std::string>::value<std::vector<unsigned short>,(void *)0>(v96);
        quasar::pySlice<std::vector<unsigned short>>(v33, *v29, v29[2] + *v29, &v99.__r_.__value_.__l.__data_);
        quasar::utf8::utf16ToUtf8(&v99, &v98);
        v34 = tl::expected<std::string,std::string>::value<std::string,(void *)0>(&v98);
        v35 = *(v34 + 23);
        if ((v35 & 0x80u) != 0)
        {
          v35 = *(v34 + 8);
        }

        *(&v85 + 1) = v35;
        if (SHIBYTE(v98.__end_) < 0)
        {
          operator delete(v98.__first_);
        }

        if (v99.__r_.__value_.__r.__words[0])
        {
          v99.__r_.__value_.__l.__size_ = v99.__r_.__value_.__r.__words[0];
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        v84 = 0;
        v36 = 0uLL;
        v83 = 0u;
        v38 = __p;
        v37 = v93;
        if (__p != v93)
        {
          do
          {
            quasar::intersectionRange(v38, &v85);
            if (v39)
            {
              std::string::basic_string(&v99, a2, *v38, v38[1], &v98);
              v40 = *(&v83 + 1);
              if (*(&v83 + 1) >= v84)
              {
                v42 = 0xAAAAAAAAAAAAAAABLL * ((*(&v83 + 1) - v83) >> 3);
                v43 = v42 + 1;
                if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v84 - v83) >> 3) > v43)
                {
                  v43 = 0x5555555555555556 * ((v84 - v83) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v84 - v83) >> 3) >= 0x555555555555555)
                {
                  v44 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v44 = v43;
                }

                v98.__end_cap_.__value_ = &v83;
                if (v44)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v83, v44);
                }

                v45 = 8 * ((*(&v83 + 1) - v83) >> 3);
                v46 = *&v99.__r_.__value_.__l.__data_;
                *(v45 + 16) = *(&v99.__r_.__value_.__l + 2);
                *v45 = v46;
                memset(&v99, 0, sizeof(v99));
                v47 = 24 * v42 + 24;
                v48 = 24 * v42 - (*(&v83 + 1) - v83);
                memcpy((v45 - (*(&v83 + 1) - v83)), v83, *(&v83 + 1) - v83);
                v49 = v83;
                v50 = v84;
                *&v83 = v48;
                *(&v83 + 1) = v47;
                v84 = 0;
                v98.__end_ = v49;
                v98.__end_cap_.__value_ = v50;
                v98.__first_ = v49;
                v98.__begin_ = v49;
                std::__split_buffer<std::string>::~__split_buffer(&v98);
                *(&v83 + 1) = v47;
                if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v99.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v41 = *&v99.__r_.__value_.__l.__data_;
                *(*(&v83 + 1) + 16) = *(&v99.__r_.__value_.__l + 2);
                *v40 = v41;
                *(&v83 + 1) = v40 + 24;
              }
            }

            v38 += 2;
          }

          while (v38 != v37);
          v36 = v83;
        }

        v52 = v89;
        v51 = v90;
        if (*(v81 + 23) < 0)
        {
          v78 = v36;
          std::string::__init_copy_ctor_external(&v82, *v81, v81[1]);
          v36 = v78;
        }

        else
        {
          v82 = *v81;
        }

        v54 = *(&v36 + 1);
        v53 = v36;
        if (v51 - v52 == *(&v36 + 1) - v36)
        {
          if (v52 == v51 || v36 == *(&v36 + 1))
          {
LABEL_82:
            v66 = v52 == v51 && v53 == v54;
          }

          else
          {
            v55 = 0;
            while (1)
            {
              v56 = SHIBYTE(v52[v55 / 0x18].__r_.__value_.__r.__words[2]);
              v57 = v56 >= 0 ? &v52[v55 / 0x18] : v52[v55 / 0x18].__r_.__value_.__r.__words[0];
              v58 = v56 >= 0 ? HIBYTE(v52[v55 / 0x18].__r_.__value_.__r.__words[2]) : v52[v55 / 0x18].__r_.__value_.__l.__size_;
              quasar::utf8::utf8ToUtf16(&v98, v57, v58);
              v59 = *(v53 + v55 + 23);
              v60 = v59 >= 0 ? (v53 + v55) : *(v53 + v55);
              v61 = v59 >= 0 ? *(v53 + v55 + 23) : *(v53 + v55 + 8);
              quasar::utf8::utf8ToUtf16(&v99, v60, v61);
              v62 = tl::expected<std::vector<unsigned short>,std::string>::value<std::vector<unsigned short>,(void *)0>(&v98);
              v63 = tl::expected<std::vector<unsigned short>,std::string>::value<std::vector<unsigned short>,(void *)0>(&v99);
              quasar::caseAndDiacriticInsensitiveEquals(v62, v63, &v82);
              LODWORD(v62) = v64;
              tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&v99);
              tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&v98);
              if (!v62)
              {
                break;
              }

              v55 += 24;
              if (&v52[v55 / 0x18] == v51 || v55 + v53 == v54)
              {
                v52 = (v52 + v55);
                v53 += v55;
                goto LABEL_82;
              }
            }

            v66 = 0;
          }
        }

        else
        {
          v66 = 0;
        }

        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
          if (v66)
          {
LABEL_94:
            v68 = v80[1];
            v67 = v80[2];
            if (v68 >= v67)
            {
              v70 = (v68 - *v80) >> 4;
              v71 = v70 + 1;
              if ((v70 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v72 = v67 - *v80;
              if (v72 >> 3 > v71)
              {
                v71 = v72 >> 3;
              }

              if (v72 >= 0x7FFFFFFFFFFFFFF0)
              {
                v73 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v73 = v71;
              }

              if (v73)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(v80, v73);
              }

              v74 = (16 * v70);
              *v74 = v85;
              v69 = 16 * v70 + 16;
              v75 = v80[1] - *v80;
              v76 = v74 - v75;
              memcpy(v74 - v75, *v80, v75);
              v77 = *v80;
              *v80 = v76;
              v80[1] = v69;
              v80[2] = 0;
              if (v77)
              {
                operator delete(v77);
              }
            }

            else
            {
              *v68 = v85;
              v69 = (v68 + 16);
            }

            v80[1] = v69;
          }
        }

        else if (v66)
        {
          goto LABEL_94;
        }

        v98.__first_ = &v83;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v98);
        v29 += 4;
        if (v29 == v79)
        {
          v29 = v86;
          break;
        }
      }
    }

    if (v29)
    {
      v87 = v29;
      operator delete(v29);
    }

    quasar::USimpleSearch::~USimpleSearch(v88);
    v98.__first_ = &v89;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v98);
    if (__p)
    {
      v93 = __p;
      operator delete(__p);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v96);
    return tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v97);
  }

  else
  {
LABEL_116:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

void sub_1B53AF778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  v43 = *v40;
  if (*v40)
  {
    *(v40 + 8) = v43;
    operator delete(v43);
  }

  quasar::USimpleSearch::~USimpleSearch(&a30);
  *(v41 - 120) = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v41 - 120));
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v41 - 224);
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v41 - 192);
  _Unwind_Resume(a1);
}

uint64_t tl::expected<std::vector<unsigned short>,std::string>::value<std::vector<unsigned short>,(void *)0>(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    if (*(result + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v1, *result, *(result + 8));
    }

    else
    {
      v1 = *result;
    }

    v2 = &unk_1F2D0F170;
    v3 = v1;
    memset(&v1, 0, sizeof(v1));
    tl::detail::throw_exception<tl::bad_expected_access<std::string>>(&v2);
  }

  return result;
}

{
  if ((*(result + 24) & 1) == 0)
  {
    if (*(result + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v1, *result, *(result + 8));
    }

    else
    {
      v1 = *result;
    }

    v2 = &unk_1F2D0F170;
    v3 = v1;
    memset(&v1, 0, sizeof(v1));
    tl::detail::throw_exception<tl::bad_expected_access<std::string>>(&v2);
  }

  return result;
}

void sub_1B53AF98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::exception a16)
{
  tl::bad_expected_access<std::string>::~bad_expected_access(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::pySlice<std::vector<unsigned short>>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, const void **a4@<X8>)
{
  v5 = a1[1];
  if (*a1 == v5)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v6 = (v5 - *a1) >> 1;
    v7 = ((v6 & (a2 >> 31)) + a2) & ~(((v6 & (a2 >> 31)) + a2) >> 31);
    v8 = ((v6 & (a3 >> 31)) + a3) & ~(((v6 & (a3 >> 31)) + a3) >> 31);
    if (v8 >= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (v9 > v7)
    {
      std::vector<unsigned short>::reserve(a4, v9 - v7);
      do
      {
        v11 = *a1;
        if (v7 >= (a1[1] - *a1) >> 1)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v13 = a4[1];
        v12 = a4[2];
        if (v13 >= v12)
        {
          v15 = *a4;
          v16 = v13 - *a4;
          v17 = v16 >> 1;
          if (v16 >> 1 <= -2)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v18 = v12 - v15;
          if (v18 <= v17 + 1)
          {
            v19 = v17 + 1;
          }

          else
          {
            v19 = v18;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a4, v20);
          }

          v21 = (2 * v17);
          v22 = *(v11 + 2 * v7);
          v23 = &v21[-(v16 >> 1)];
          *v21 = v22;
          v14 = v21 + 1;
          memcpy(v23, v15, v16);
          v24 = *a4;
          *a4 = v23;
          a4[1] = v14;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v13 = *(v11 + 2 * v7);
          v14 = v13 + 2;
        }

        a4[1] = v14;
        ++v7;
      }

      while (v9 != v7);
    }
  }
}

void sub_1B53AFB28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tl::expected<std::string,std::string>::value<std::string,(void *)0>(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    if (*(result + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v1, *result, *(result + 8));
    }

    else
    {
      v1 = *result;
    }

    v2 = &unk_1F2D0F170;
    v3 = v1;
    memset(&v1, 0, sizeof(v1));
    tl::detail::throw_exception<tl::bad_expected_access<std::string>>(&v2);
  }

  return result;
}

{
  if ((*(result + 24) & 1) == 0)
  {
    if (*(result + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v1, *result, *(result + 8));
    }

    else
    {
      v1 = *result;
    }

    v2 = &unk_1F2D0F170;
    v3 = v1;
    memset(&v1, 0, sizeof(v1));
    tl::detail::throw_exception<tl::bad_expected_access<std::string>>(&v2);
  }

  return result;
}

{
  if ((*(result + 24) & 1) == 0)
  {
    if (*(result + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v1, *result, *(result + 8));
    }

    else
    {
      v1 = *result;
    }

    v2 = &unk_1F2D0F170;
    v3 = v1;
    memset(&v1, 0, sizeof(v1));
    tl::detail::throw_exception<tl::bad_expected_access<std::string>>(&v2);
  }

  return result;
}

void sub_1B53AFBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::exception a16)
{
  tl::bad_expected_access<std::string>::~bad_expected_access(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::regexEscape(char *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (a1[23] >= 0)
  {
    v4 = a1[23];
  }

  else
  {
    v4 = *(a1 + 1);
  }

  std::string::reserve(a2, v4);
  v5 = a1[23];
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
    v7 = a1[23];
  }

  else
  {
    v7 = *(a1 + 1);
  }

  for (; v7; --v7)
  {
    v8 = *v6;
    if (memchr("*?+[(){}^$|\\./", *v6, 0xFuLL))
    {
      std::string::push_back(a2, 92);
      v9 = *v6;
    }

    else
    {
      v9 = v8;
    }

    std::string::push_back(a2, v9);
    ++v6;
  }
}

void sub_1B53AFCCC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *quasar::copyAndTrimLeft@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  __src[9] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 < 0)
  {
    v5 = a2[1];
  }

  v8[0] = v6;
  v8[1] = v6 + 4 * v5;
  boost::algorithm::detail::is_any_ofF<char32_t>::is_any_ofF<boost::iterator_range<std::__wrap_iter<char32_t const*>>>(__src, v8);
  result = boost::algorithm::trim_left_copy_if<std::basic_string<char32_t>,boost::algorithm::detail::is_any_ofF<char32_t>>(__src, a1, a3);
  if (__src[8] >= 0x11uLL)
  {
    result = __src[0];
    if (__src[0])
    {
      return MEMORY[0x1B8C85310](__src[0], 0x1000C8052888210);
    }
  }

  return result;
}

void sub_1B53AFDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  if (a19 >= 0x11)
  {
    quasar::copyAndTrimLeft(&a11);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *boost::algorithm::trim_left_copy_if<std::basic_string<char32_t>,boost::algorithm::detail::is_any_ofF<char32_t>>@<X0>(void *__src@<X1>, unsigned int *a2@<X0>, _BYTE *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = __src[8];
  v15 = v8;
  v14[0] = 0;
  if (v8 > 0x10)
  {
    operator new[]();
  }

  memcpy(v14, __src, 4 * v8);
  if (v7)
  {
    v9 = 4 * v7;
    v10 = &v6[v7];
    while (boost::algorithm::detail::is_any_ofF<char32_t>::operator()<char32_t>(v14, *v6))
    {
      ++v6;
      v9 -= 4;
      if (!v9)
      {
        v6 = v10;
        break;
      }
    }
  }

  v11 = *(a2 + 23);
  if ((v11 & 0x80u) == 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 1);
  }

  result = std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(a3, v6, &v12[v11], &v12[v11] - v6);
  if (v15 >= 0x11)
  {
    result = v14[0];
    if (v14[0])
    {
      return MEMORY[0x1B8C85310](v14[0], 0x1000C8052888210);
    }
  }

  return result;
}

void sub_1B53AFF30(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  if (a17 >= 0x11)
  {
    if (a9)
    {
      MEMORY[0x1B8C85310](a9, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *quasar::copyAndTrimRight@<X0>(void ***a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  __src[9] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 < 0)
  {
    v5 = a2[1];
  }

  v8[0] = v6;
  v8[1] = v6 + 4 * v5;
  boost::algorithm::detail::is_any_ofF<char32_t>::is_any_ofF<boost::iterator_range<std::__wrap_iter<char32_t const*>>>(__src, v8);
  result = boost::algorithm::trim_right_copy_if<std::basic_string<char32_t>,boost::algorithm::detail::is_any_ofF<char32_t>>(__src, a1, a3);
  if (__src[8] >= 0x11uLL)
  {
    result = __src[0];
    if (__src[0])
    {
      return MEMORY[0x1B8C85310](__src[0], 0x1000C8052888210);
    }
  }

  return result;
}

void sub_1B53B0024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  if (a19 >= 0x11)
  {
    quasar::copyAndTrimLeft(&a11);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *boost::algorithm::trim_right_copy_if<std::basic_string<char32_t>,boost::algorithm::detail::is_any_ofF<char32_t>>@<X0>(void *__src@<X1>, void ***a2@<X0>, _BYTE *a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 < 0)
  {
    v4 = a2[1];
  }

  v6 = v5 + 4 * v4;
  v7 = __src[8];
  v11 = v7;
  v10[0] = 0;
  if (v7 > 0x10)
  {
    operator new[]();
  }

  memcpy(v10, __src, 4 * v7);
  is_any_of = boost::algorithm::detail::trim_end<std::__wrap_iter<char32_t const*>,boost::algorithm::detail::is_any_ofF<char32_t>>(v5, v6, v10);
  result = std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(a3, v5, is_any_of, (is_any_of - v5) >> 2);
  if (v11 >= 0x11)
  {
    result = v10[0];
    if (v10[0])
    {
      return MEMORY[0x1B8C85310](v10[0], 0x1000C8052888210);
    }
  }

  return result;
}

void sub_1B53B0178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  if (a17 >= 0x11)
  {
    quasar::copyAndTrimLeft(&a9);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char32_t> *quasar::replaceAll(std::basic_string<char32_t> *a1, uint64_t **a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 < 0)
  {
    v5 = a2[1];
  }

  *&v16 = v6;
  *(&v16 + 1) = v6 + 4 * v5;
  v7 = *(a3 + 23);
  v8 = *a3;
  v9 = *(a3 + 8);
  v18 = v16;
  v19 = v17;
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  result = boost::algorithm::detail::first_finderF<std::__wrap_iter<char32_t const*>,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char32_t *>>(&v16, v11, v11 + size);
  if (result != v13)
  {
    if ((v7 & 0x80u) == 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = v8;
    }

    if ((v7 & 0x80u) == 0)
    {
      v15 = v7;
    }

    else
    {
      v15 = v9;
    }

    v20 = v18;
    v21 = v19;
    return boost::algorithm::detail::find_format_all_impl2<std::basic_string<char32_t>,boost::algorithm::detail::first_finderF<std::__wrap_iter<char32_t const*>,boost::algorithm::is_equal>,boost::algorithm::detail::const_formatF<boost::iterator_range<std::__wrap_iter<char32_t const*>>>,boost::iterator_range<std::__wrap_iter<char32_t *>>,boost::iterator_range<std::__wrap_iter<char32_t const*>>>(a1, &v20, v14, &v14[4 * v15], result, v13, v14, &v14[4 * v15]);
  }

  return result;
}

BOOL quasar::startsWith(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = *a1;
  if (v2 >= 0)
  {
    v3 = a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = *(a2 + 23);
  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 < 0)
  {
    v5 = *(a2 + 8);
  }

  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v11 = v6;
    return v11 == (v6 + 4 * v5);
  }

  else
  {
    v9 = 4 * v5 - 4;
    v10 = 4 * v4 - 4;
    v11 = v6;
    while (*v3 == *v11)
    {
      ++v11;
      if (v10)
      {
        ++v3;
        v12 = v9;
        v9 -= 4;
        v10 -= 4;
        if (v12)
        {
          continue;
        }
      }

      return v11 == (v6 + 4 * v5);
    }

    return 0;
  }
}

BOOL quasar::endsWith(uint64_t **a1, uint64_t **a2)
{
  v2 = *(a1 + 23);
  v3 = *a1;
  v4 = a1[1];
  if (v2 >= 0)
  {
    v3 = a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  v5 = *(a2 + 23);
  v6 = *a2;
  v7 = a2[1];
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  v8 = v3 - 4;
  v9 = 4 * v4;
  v10 = 4 * v7;
  v11 = v6 - 4;
  while (v9 && v10)
  {
    v12 = *&v8[v9];
    v13 = *&v11[v10];
    v9 -= 4;
    v10 -= 4;
    if (v12 != v13)
    {
      return 0;
    }
  }

  return v10 == 0;
}

void quasar::utf32::convertToLowerCaseOrThrow(void *__src, unint64_t a2)
{
  if (a2 < 0x3FFFFFFFFFFFFFF8)
  {
    if (a2 < 5)
    {
      v6 = a2;
      if (a2)
      {
        memmove(&__dst, __src, 4 * a2);
      }

      *(&__dst + a2) = 0;
      quasar::utf::toString();
    }

    if ((a2 | 1) == 5)
    {
      v4 = 7;
    }

    else
    {
      v4 = (a2 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__dst, v4);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1B53B04C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::utf32::convertToUpperCaseOrThrow(void *__src, unint64_t a2)
{
  if (a2 < 0x3FFFFFFFFFFFFFF8)
  {
    if (a2 < 5)
    {
      v6 = a2;
      if (a2)
      {
        memmove(&__dst, __src, 4 * a2);
      }

      *(&__dst + a2) = 0;
      quasar::utf::toString();
    }

    if ((a2 | 1) == 5)
    {
      v4 = 7;
    }

    else
    {
      v4 = (a2 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__dst, v4);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1B53B061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::utf32::convertToTitleCaseOrThrow(void *__src, unint64_t a2)
{
  if (a2 < 0x3FFFFFFFFFFFFFF8)
  {
    if (a2 < 5)
    {
      v6 = a2;
      if (a2)
      {
        memmove(&__dst, __src, 4 * a2);
      }

      *(&__dst + a2) = 0;
      quasar::utf::toString();
    }

    if ((a2 | 1) == 5)
    {
      v4 = 7;
    }

    else
    {
      v4 = (a2 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__dst, v4);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1B53B0770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::utf32::caseInsensitiveEquals(void *__src, unint64_t a2, const void *a3, unint64_t a4)
{
  if (a2 <= 0x3FFFFFFFFFFFFFF7)
  {
    if (a2 < 5)
    {
      v7 = a2;
      if (a2)
      {
        memmove(&__dst, __src, 4 * a2);
      }

      *(&__dst + a2) = 0;
      quasar::utf::toString();
    }

    if ((a2 | 1) == 5)
    {
      v5 = 7;
    }

    else
    {
      v5 = (a2 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__dst, v5);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1B53B0970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53B0A34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void tl::detail::throw_exception<tl::bad_expected_access<std::string>>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  *exception = &unk_1F2D0F170;
  v3 = *(a1 + 24);
  *(exception + 8) = *(a1 + 8);
  *(exception + 3) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
}

void tl::bad_expected_access<std::string>::~bad_expected_access(std::exception *this)
{
  this->__vftable = &unk_1F2D0F170;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F2D0F170;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

{
  this->__vftable = &unk_1F2D0F170;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

void std::codecvt_utf8_utf16<char16_t,1114111ul,(std::codecvt_mode)0>::~codecvt_utf8_utf16[abi:ne200100](std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::wstring_convert<std::codecvt_utf8_utf16<char16_t,1114111ul,(std::codecvt_mode)0>,char16_t,std::allocator<char16_t>,std::allocator<char>>::from_bytes(uint64_t a1@<X0>, std::basic_string<char16_t> *a2@<X1>, std::basic_string<char16_t> *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 0;
  if (!*(a1 + 48))
  {
    goto LABEL_32;
  }

  v7 = a2;
  v8 = 2 * (a3 - a2);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0xB)
  {
    if ((v8 | 3) == 0xB)
    {
      v9 = 13;
    }

    else
    {
      v9 = (v8 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a4, v9);
  }

  *(a4 + 23) = v8;
  if (a3 != a2)
  {
    bzero(a4, 4 * (a3 - a2));
  }

  *(a4 + 2 * v8) = 0;
  if (v7 != a3)
  {
    if (*(a4 + 23) >= 0)
    {
      v10 = 10;
    }

    else
    {
      v10 = (*(a4 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::basic_string<char16_t>::resize(a4, v10, 0);
    v11 = *(a1 + 136);
    v31[4] = *(a1 + 120);
    v31[5] = v11;
    v12 = *(a1 + 168);
    v31[6] = *(a1 + 152);
    v31[7] = v12;
    v13 = *(a1 + 72);
    v31[0] = *(a1 + 56);
    v31[1] = v13;
    v14 = *(a1 + 88);
    v15 = *(a1 + 104);
    v16 = *(a4 + 23);
    if ((v16 & 0x80u) == 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a4 + 8);
    }

    v18 = v17 + 2 * v16;
    v31[2] = *(a1 + 88);
    v31[3] = v15;
    do
    {
      v19 = (*(**(a1 + 48) + 32))(*(a1 + 48), v31, v7, a3, &v30, v17, v18, &v29, v14);
      v20 = v30 == v7;
      *(a1 + 184) += v30 - v7;
      if (v20)
      {
        goto LABEL_43;
      }

      if (v19 != 1)
      {
        if (v19)
        {
          if (v19 != 3)
          {
LABEL_43:
            if ((*(a4 + 23) & 0x80) != 0)
            {
              goto LABEL_44;
            }

            goto LABEL_32;
          }

          if (*(a4 + 23) >= 0)
          {
            v26 = a4;
          }

          else
          {
            v26 = *a4;
          }

          std::basic_string<char16_t>::resize(a4, (v17 - v26) >> 1, 0);
          std::basic_string<char16_t>::append<char16_t const*,0>(a4, v7, a3);
        }

        else
        {
          if (*(a4 + 23) >= 0)
          {
            v28 = a4;
          }

          else
          {
            v28 = *a4;
          }

          std::basic_string<char16_t>::resize(a4, (v29 - v28) >> 1, 0);
        }

        return;
      }

      if (*(a4 + 23) >= 0)
      {
        v21 = a4;
      }

      else
      {
        v21 = *a4;
      }

      v22 = v29 - v21;
      std::basic_string<char16_t>::resize(a4, v29 - v21, 0);
      v23 = *(a4 + 23);
      v24 = v23;
      v25 = *a4;
      if ((v23 & 0x80u) == 0)
      {
        v25 = a4;
      }

      v17 = v25 + v22;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(a4 + 8);
      }

      v18 = v25 + 2 * v23;
      v7 = v30;
    }

    while (v30 < a3);
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_32;
    }

LABEL_44:
    operator delete(*a4);
LABEL_32:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      if (*(a1 + 47))
      {
        *a4 = *(a1 + 24);
        *(a4 + 16) = *(a1 + 40);
        return;
      }

LABEL_51:
      std::__throw_range_error[abi:ne200100]("wstring_convert: from_bytes error");
    }

    v27 = *(a1 + 32);
    if (!v27)
    {
      goto LABEL_51;
    }

    std::basic_string<char16_t>::__init_copy_ctor_external(a4, *(a1 + 24), v27);
  }
}

void sub_1B53B0EC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char16_t> *std::basic_string<char16_t>::append<char16_t const*,0>(std::basic_string<char16_t> *this, std::basic_string<char16_t> *__src, std::basic_string<char16_t> *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 10;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  v12 = v7 >> 1;
  if (v10 > __src || &v10->__r_.__value_.__s.__data_[size + 1] <= __src)
  {
    if (v8 - size < v12)
    {
      std::basic_string<char16_t>::__grow_by(this, v8, size - v8 + v12, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v15 = this;
    if ((v9 & 0x80) != 0)
    {
      v15 = this->__r_.__value_.__r.__words[0];
    }

    v16 = v15 + 2 * size;
    if (a3 != __src)
    {
      memmove(v15 + 2 * size, __src, v7);
    }

    *&v16[v7] = 0;
    v17 = v12 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    std::basic_string<char16_t>::__init_with_size[abi:ne200100]<char16_t const*,char16_t const*>(__p, __src, a3, v12);
    if ((v20 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v14 = v20;
    }

    else
    {
      v14 = __p[1];
    }

    std::basic_string<char16_t>::append(this, v13, v14);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1B53B105C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_string<char16_t>::resize(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size >= __n)
    {
      this->__r_.__value_.__l.__size_ = __n;
      this = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }

LABEL_5:
    std::basic_string<char16_t>::append(this, __n - size, __c);
    return;
  }

  if (size < __n)
  {
    goto LABEL_5;
  }

  *(&this->__r_.__value_.__s + 23) = __n;
LABEL_7:
  this->__r_.__value_.__s.__data_[__n] = 0;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  if (__n)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v7 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v8 = HIBYTE(v9);
    }

    else
    {
      v7 = 10;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    if (v7 - size < __n)
    {
      std::basic_string<char16_t>::__grow_by(this, v7, __n - v7 + size, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v10 = this;
    if ((v8 & 0x80) != 0)
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    v11 = 0;
    v12 = vdupq_n_s64(__n - 1);
    v13 = &v10->__r_.__value_.__s.__data_[size + 4];
    do
    {
      v14 = vdupq_n_s64(v11);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1B5AE0060)));
      if (vuzp1_s8(vuzp1_s16(v15, *v12.i8), *v12.i8).u8[0])
      {
        *(v13 - 4) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(v15, *&v12), *&v12).i8[1])
      {
        *(v13 - 3) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1B5AE0050)))), *&v12).i8[2])
      {
        *(v13 - 2) = __c;
        *(v13 - 1) = __c;
      }

      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1B5AFD520)));
      if (vuzp1_s8(*&v12, vuzp1_s16(v16, *&v12)).i32[1])
      {
        *v13 = __c;
      }

      if (vuzp1_s8(*&v12, vuzp1_s16(v16, *&v12)).i8[5])
      {
        v13[1] = __c;
      }

      if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1B5AFD510))))).i8[6])
      {
        v13[2] = __c;
        v13[3] = __c;
      }

      v11 += 8;
      v13 += 8;
    }

    while (((__n + 7) & 0xFFFFFFFFFFFFFFF8) != v11);
    v17 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v10->__r_.__value_.__s.__data_[v17] = 0;
  }

  return this;
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

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(this, v11);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n)
{
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 10;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v7 - size >= __n)
  {
    if (__n)
    {
      v9 = this;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      memmove(v9 + 2 * size, __s, 2 * __n);
      v10 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v10 & 0x7F;
      }

      v9->__r_.__value_.__s.__data_[v10] = 0;
    }
  }

  else
  {
    std::basic_string<char16_t>::__grow_by_and_replace(this, v7, __n - v7 + size, size, size, 0, __n, __s);
  }

  return this;
}

_BYTE *std::basic_string<char16_t>::__init_with_size[abi:ne200100]<char16_t const*,char16_t const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0xA)
  {
    if ((a4 | 3) == 0xB)
    {
      v5 = 13;
    }

    else
    {
      v5 = (a4 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(__dst, v5);
  }

  __dst[23] = a4;
  v6 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v6);
  }

  *&v4[v6] = 0;
  return __dst;
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

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(this, v12);
  }

  std::string::__throw_length_error[abi:ne200100]();
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(this, v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 2 * __sz + 2;

  memmove(this, __s, v4);
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53B1740(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

char *boost::algorithm::detail::is_any_ofF<char32_t>::is_any_ofF<boost::iterator_range<std::__wrap_iter<char32_t const*>>>(char *__dst, uint64_t a2)
{
  *__dst = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = (v5 - v4) >> 2;
  *(__dst + 8) = v6;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  if (v5 != v4)
  {
    memmove(__dst, v4, v5 - v4);
  }

  v8 = *(__dst + 8);
  v9 = 126 - 2 * __clz(v8);
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *,true>(__dst, &__dst[4 * v8], &v12, v10, 1);
  return __dst;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *,true>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v59 = v9[1];
          v60 = *(a2 - 1);
          if (v59 >= v60)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = v9[1];
          }

          if (v59 <= v60)
          {
            v59 = *(a2 - 1);
          }

          *(a2 - 1) = v59;
          v9[1] = v61;
          v62 = *(a2 - 1);
          if (v62 >= *v9)
          {
            v63 = *v9;
          }

          else
          {
            v63 = *(a2 - 1);
          }

          if (v62 <= *v9)
          {
            v62 = *v9;
          }

          *(a2 - 1) = v62;
          v65 = *v9;
          v64 = v9[1];
          if (v63 >= v64)
          {
            v65 = v9[1];
          }

          if (v63 > v64)
          {
            v64 = v63;
          }

          *v9 = v65;
          v9[1] = v64;
          return result;
        case 4:
          v89 = v9[1];
          v88 = v9[2];
          if (*v9 >= v88)
          {
            v90 = v9[2];
          }

          else
          {
            v90 = *v9;
          }

          if (*v9 > v88)
          {
            v88 = *v9;
          }

          v9[2] = v88;
          *v9 = v90;
          v91 = *(a2 - 1);
          if (v89 >= v91)
          {
            v92 = *(a2 - 1);
          }

          else
          {
            v92 = v89;
          }

          if (v89 > v91)
          {
            v91 = v89;
          }

          *(a2 - 1) = v91;
          v93 = *v9;
          if (*v9 >= v92)
          {
            v94 = v92;
          }

          else
          {
            v94 = *v9;
          }

          if (v93 <= v92)
          {
            v93 = v92;
          }

          *v9 = v94;
          v9[1] = v93;
          v95 = v9[2];
          v96 = *(a2 - 1);
          if (v95 >= v96)
          {
            v97 = *(a2 - 1);
          }

          else
          {
            v97 = v9[2];
          }

          if (v95 <= v96)
          {
            v95 = *(a2 - 1);
          }

          *(a2 - 1) = v95;
          v98 = v9[1];
          if (v98 >= v97)
          {
            v99 = v97;
          }

          else
          {
            v99 = v9[1];
          }

          if (v98 <= v97)
          {
            v98 = v97;
          }

          v9[1] = v99;
          v9[2] = v98;
          return result;
        case 5:
          v66 = *v9;
          v67 = v9[1];
          if (*v9 >= v67)
          {
            v68 = v9[1];
          }

          else
          {
            v68 = *v9;
          }

          if (v66 <= v67)
          {
            v66 = v9[1];
          }

          *v9 = v68;
          v9[1] = v66;
          v69 = v9[3];
          v70 = *(a2 - 1);
          if (v69 >= v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v9[3];
          }

          if (v69 <= v70)
          {
            v69 = *(a2 - 1);
          }

          *(a2 - 1) = v69;
          v9[3] = v71;
          v72 = *(a2 - 1);
          v73 = v9[2];
          if (v72 >= v73)
          {
            v74 = v9[2];
          }

          else
          {
            v74 = *(a2 - 1);
          }

          if (v72 <= v73)
          {
            v72 = v9[2];
          }

          *(a2 - 1) = v72;
          v76 = v9[2];
          v75 = v9[3];
          v77 = v9[1];
          if (v74 >= v75)
          {
            v76 = v9[3];
          }

          if (v74 > v75)
          {
            v75 = v74;
          }

          v9[2] = v76;
          v9[3] = v75;
          v78 = *(a2 - 1);
          if (v77 >= v78)
          {
            v79 = *(a2 - 1);
          }

          else
          {
            v79 = v77;
          }

          if (v77 > v78)
          {
            v78 = v77;
          }

          *(a2 - 1) = v78;
          v80 = *v9;
          v82 = v9[2];
          v81 = v9[3];
          if (v81 >= *v9)
          {
            v83 = *v9;
          }

          else
          {
            v83 = v9[3];
          }

          if (v81 <= v80)
          {
            v81 = *v9;
          }

          if (v83 >= v82)
          {
            v80 = v9[2];
          }

          if (v83 > v82)
          {
            v82 = v83;
          }

          if (v81 >= v79)
          {
            v84 = v79;
          }

          else
          {
            v84 = v81;
          }

          if (v81 <= v79)
          {
            v81 = v79;
          }

          if (v84 >= v82)
          {
            v79 = v82;
          }

          *v9 = v80;
          v9[1] = v79;
          if (v84 <= v82)
          {
            v85 = v82;
          }

          else
          {
            v85 = v84;
          }

          v9[2] = v85;
          v9[3] = v81;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v86 = *(a2 - 1);
        v87 = *v9;
        if (v86 < *v9)
        {
          *v9 = v86;
          *(a2 - 1) = v87;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *,char32_t *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v48 = *v9;
      if (*v9 >= v14)
      {
        v49 = *(a2 - 1);
      }

      else
      {
        v49 = *v9;
      }

      if (v48 <= v14)
      {
        v48 = *(a2 - 1);
      }

      *(a2 - 1) = v48;
      *v9 = v49;
      v50 = *(a2 - 1);
      v51 = v9[v13];
      if (v50 >= v51)
      {
        v52 = v9[v13];
      }

      else
      {
        v52 = *(a2 - 1);
      }

      if (v50 <= v51)
      {
        v50 = v9[v13];
      }

      *(a2 - 1) = v50;
      v53 = *v9;
      v54 = v52 >= *v9;
      if (v52 < *v9)
      {
        v53 = v9[v13];
      }

      v9[v13] = v53;
      v55 = *v9;
      if (v54)
      {
        v55 = v52;
      }

      *v9 = v55;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 >= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (v16 <= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 >= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 <= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 >= *v15;
      if (v19 < *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v22 = *v15;
      if (v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v23 = *(v15 - 1);
      v24 = *(a2 - 2);
      if (v23 >= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = *(v15 - 1);
      }

      if (v23 <= v24)
      {
        v23 = *(a2 - 2);
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 >= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 <= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 >= v29;
      if (v28 < v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 >= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 <= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 >= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 <= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 >= v38;
      if (v37 < v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (v39)
      {
        v40 = v37;
      }

      if (v41 >= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = *v15;
      }

      if (v41 > v40)
      {
        v40 = *v15;
      }

      v43 = *(v15 - 1);
      if (v40 >= v43)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 <= v43)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v43 >= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }

      if (v43 >= v42)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v46;
      v47 = *v9;
      *v9 = v46;
      *v15 = v47;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,char32_t *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_99;
    }

LABEL_94:
    v56 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,char32_t *,std::__less<void,void> &>(v9, a2);
    if ((v57 & 1) == 0)
    {
      goto LABEL_97;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *>(v9, v56);
    v9 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *>(v56 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v58)
    {
LABEL_97:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *,true>(v8, v56, a3, -v11, a5 & 1);
      v9 = v56 + 1;
LABEL_99:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v100 = v9 + 1;
  v102 = v9 == a2 || v100 == a2;
  if (a5)
  {
    if (!v102)
    {
      v103 = 0;
      v104 = v9;
      do
      {
        v106 = *v104;
        v105 = v104[1];
        v104 = v100;
        if (v105 < v106)
        {
          v107 = v103;
          while (1)
          {
            *(v9 + v107 + 4) = v106;
            if (!v107)
            {
              break;
            }

            v106 = *(v9 + v107 - 4);
            v107 -= 4;
            if (v105 >= v106)
            {
              v108 = (v9 + v107 + 4);
              goto LABEL_204;
            }
          }

          v108 = v9;
LABEL_204:
          *v108 = v105;
        }

        v100 = v104 + 1;
        v103 += 4;
      }

      while (v104 + 1 != a2);
    }
  }

  else if (!v102)
  {
    do
    {
      v110 = *v8;
      v109 = v8[1];
      v8 = v100;
      if (v109 < v110)
      {
        do
        {
          *v100 = v110;
          v110 = *(v100 - 2);
          --v100;
        }

        while (v109 < v110);
        *v100 = v109;
      }

      v100 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,char32_t *,std::__less<void,void> &>(unsigned int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unsigned int *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,char32_t *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s32(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1B5AE0060;
      v18 = xmmword_1B5AE0050;
      v19 = 0uLL;
      do
      {
        v20 = vcgeq_u32(*(v7 + v12), v13);
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_1B5AE0060;
    v27 = xmmword_1B5AE0050;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_u32(v13, vextq_s8(v29, v29, 8uLL));
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 < v2) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] >= v2) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = v2;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *>(unsigned int *a1, unsigned int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 >= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 <= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 >= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 <= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 >= v30)
        {
          v31 = a1[1];
        }

        if (v29 > v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 >= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 > v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 >= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 > v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 >= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 <= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 >= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 <= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 <= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 >= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 <= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 >= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 <= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 >= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 <= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 >= v14)
        {
          v15 = a1[3];
        }

        if (v13 > v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 >= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 > v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 >= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 <= v19)
        {
          v20 = *a1;
        }

        if (v22 >= v21)
        {
          v19 = a1[2];
        }

        if (v22 > v21)
        {
          v21 = v22;
        }

        if (v20 >= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 <= v18)
        {
          v20 = v18;
        }

        if (v23 >= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 <= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 >= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 > v32)
  {
    v32 = a1[1];
  }

  if (v32 >= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 <= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 < v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 < v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 >= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}
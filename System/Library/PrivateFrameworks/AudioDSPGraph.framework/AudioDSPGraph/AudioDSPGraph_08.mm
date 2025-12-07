void sub_1C923C6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  operator delete(v29);
  if (a11)
  {
    operator delete(a11);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseEndSubsetCommand(void *a1)
{
  v1 = a1[6];
  if (!v1)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "unexpected 'endSubset' command");
    AudioDSPGraph::ThrowException(1886548769, v9, off_1E8336B90);
  }

  v3 = v1 - 1;
  v4 = v1 - 1 + a1[5];
  v5 = a1[2];
  v6 = *(v5 + 8 * (v4 / 0xAA)) - 4080 * (v4 / 0xAA) + 24 * v4;
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
    v3 = a1[6] - 1;
    v5 = a1[2];
    v4 = v3 + a1[5];
  }

  v7 = a1[3];
  a1[6] = v3;
  if (v7 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 170 * ((v7 - v5) >> 3) - 1;
  }

  if (v8 - v4 >= 0x154)
  {
    operator delete(*(v7 - 8));
    a1[3] -= 8;
  }
}

void sub_1C923C818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseGraphNameCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v6 = 0uLL;
  v7 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v6) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "expected a string in 'graphName' command");
    AudioDSPGraph::ThrowException(1886548769, v5, off_1E8336BA8);
  }

  v4 = v7;
  *__p = v6;
  v7 = 0;
  v6 = 0uLL;
  (*(*a1 + 16))(a1, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6);
  }
}

void sub_1C923C908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseComponentNameCommand(AudioDSPGraph::Language::V1::Interpreters *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a1, v6) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "expected a string in 'componentName' command");
    AudioDSPGraph::ThrowException(1886548769, v5, off_1E8336BC0);
  }

  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a1, __p) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v2, "expected a string in 'componentName' command");
    AudioDSPGraph::ThrowException(1886548769, v2, off_1E8336BD8);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1C923CA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseNamedFormatCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v11 = 0uLL;
  v12 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v11) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "named format : expected name.");
    AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336BF0);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v9 = 1;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseFormat(a2, v7) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "named format : expected format.");
    AudioDSPGraph::ThrowException(1886548769, v6, off_1E8336C08);
  }

  *__p = v11;
  v5 = v12;
  v12 = 0;
  v11 = 0uLL;
  (*(*a1 + 24))(a1, __p, v7, v9);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_1C923CBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 17) < 0)
  {
    operator delete(*(v20 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseJackCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v6 = 0uLL;
  v7 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v6) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "jack : expected name.");
    AudioDSPGraph::ThrowException(1886548769, v5, off_1E8336C20);
  }

  *__p = v6;
  v4 = v7;
  v7 = 0;
  v6 = 0uLL;
  (*(*a1 + 88))(a1, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6);
  }
}

void sub_1C923CCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseRecordCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  memset(&__str, 0, sizeof(__str));
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &__str) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v40, "record : expected a file path.");
    AudioDSPGraph::ThrowException(1886548769, v40, off_1E8336C38);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (strchr(p_str, 37))
  {
    bzero(__s, 0x400uLL);
    v38.__r_.__value_.__r.__words[0] = 0;
    time(&v38);
    v5 = localtime(&v38);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__str;
    }

    else
    {
      v6 = __str.__r_.__value_.__r.__words[0];
    }

    if (!strftime(__s, 0x400uLL, v6, v5))
    {
      std::string::basic_string[abi:ne200100]<0>(v39, "record file path from date failed to format");
      AudioDSPGraph::ThrowException(1886548769, v39, off_1E8336C50);
    }

    v47 = 0;
    std::string::__assign_external(&__str, __s);
  }

  v7 = __s;
  std::string::basic_string[abi:ne200100]<0>(__s, "$TMPDIR/");
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__str;
  }

  else
  {
    v9 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((v46 & 0x80u) == 0)
  {
    v10 = v46;
  }

  else
  {
    v7 = *__s;
    v10 = v45;
  }

  if (v10)
  {
    if (size >= v10)
    {
      v11 = (v9 + size);
      v12 = *v7;
      v13 = v9;
      do
      {
        v14 = size - v10;
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v13, v12, v14 + 1);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (!memcmp(v15, v7, v10))
        {
          if (v16 == v11 || v16 != v9)
          {
            break;
          }

          goto LABEL_29;
        }

        v13 = (&v16->__r_.__value_.__l.__data_ + 1);
        size = v11 - (&v16->__r_.__value_.__l.__data_ + 1);
      }

      while (size >= v10);
    }
  }

  else
  {
LABEL_29:
    v17 = getenv("TMPDIR");
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = "/tmp/";
    }

    v19 = strlen(v18);
    v20 = "/";
    if (v19 && v18[v19 - 1] == 47)
    {
      v20 = &byte_1C9279A7A;
    }

    std::string::basic_string[abi:ne200100]<0>(&v37, v18);
    std::string::basic_string[abi:ne200100]<0>(__p, v20);
    if ((v36 & 0x80u) == 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if ((v36 & 0x80u) == 0)
    {
      v22 = v36;
    }

    else
    {
      v22 = __p[1];
    }

    v23 = std::string::append(&v37, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if ((v46 & 0x80u) == 0)
    {
      v25 = v46;
    }

    else
    {
      v25 = v45;
    }

    std::string::basic_string(&v34, &__str, v25, 0xFFFFFFFFFFFFFFFFLL, &v42);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v34;
    }

    else
    {
      v26 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v34.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v38, v26, v27);
    v29 = v28->__r_.__value_.__r.__words[0];
    v43[0] = v28->__r_.__value_.__l.__size_;
    *(v43 + 7) = *(&v28->__r_.__value_.__r.__words[1] + 7);
    v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = v29;
    __str.__r_.__value_.__l.__size_ = v43[0];
    *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v43 + 7);
    *(&__str.__r_.__value_.__s + 23) = v30;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  memset(&v38, 0, sizeof(v38));
  LODWORD(v37.__r_.__value_.__l.__data_) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(a2, &v38.__r_.__value_.__l.__data_, &v37.__r_.__value_.__l.__data_) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "record port description parse failed.");
    AudioDSPGraph::ThrowException(1886548769, v33, off_1E8336C68);
  }

  v32 = __str;
  memset(&__str, 0, sizeof(__str));
  v31 = v38;
  memset(&v38, 0, sizeof(v38));
  (*(*a1 + 200))(a1, &v32, &v31, LODWORD(v37.__r_.__value_.__l.__data_));
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1C923D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseInjectCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *a2)
{
  v14 = 0uLL;
  v15 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v14) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "inject : expected a file path.");
    AudioDSPGraph::ThrowException(1886548769, v13, off_1E8336C80);
  }

  v11 = 0uLL;
  v12 = 0;
  v10 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(a2, &v11, &v10) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>((v9 + 1), "inject port description parse failed.");
    AudioDSPGraph::ThrowException(1886548769, (v9 + 1), off_1E8336C98);
  }

  LOBYTE(v9[0]) = 0;
  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(a2, v9, v4);
  *v7 = v14;
  v8 = v15;
  v15 = 0;
  v14 = 0uLL;
  *__p = v11;
  v6 = v12;
  v11 = 0uLL;
  v12 = 0;
  (*(*a1 + 192))(a1, v7, __p, v10, LOBYTE(v9[0]));
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }
}

void sub_1C923D430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 65) < 0)
  {
    operator delete(*(v29 - 88));
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseAnalysisCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, uint64_t a3, BOOL a4)
{
  LODWORD(v13) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(this, &v13, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "expected 4cc ID in 'analysis' command");
    AudioDSPGraph::ThrowException(1886548769, v12, off_1E8336CF8);
  }

  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v9 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(this, v10, &v9) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "analysis port description parse failed.");
    AudioDSPGraph::ThrowException(1886548769, v8, off_1E8336D10);
  }

  *__p = *v10;
  v7 = v11;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  (*(*a1 + 184))(a1, v13, __p, v9);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1C923D5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseAnalysisDefineCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, uint64_t a3, BOOL a4)
{
  LODWORD(v17) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(this, &v17, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "expected 4cc ID in 'analysisDefine' command");
    AudioDSPGraph::ThrowException(1886548769, v16, off_1E8336CB0);
  }

  memset(&v15, 0, sizeof(v15));
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(this, &v15) & 1) == 0)
  {
    caulk::make_string(&v14, "expected name in 'analysisDefine' command: %s", v6, *this);
    AudioDSPGraph::ThrowException(1886548769, &v14, off_1E8336CC8);
  }

  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseCompDesc(this, v12, v7))
  {
    caulk::make_string(&v11, "expected class name or component description in 'analysisDefine' command: %s", v8, *this);
    AudioDSPGraph::ThrowException(1886548769, &v11, off_1E8336CE0);
  }

  v9 = v17;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v15;
  }

  (*(*a1 + 176))(a1, v9, &v10, v12);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1C923D7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 49) < 0)
  {
    operator delete(*(v32 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, unsigned int *a3)
{
  v3 = a3;
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  if (v3)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E9830];
    while (1)
    {
      v8 = AudioDSPGraph::Language::V1::Interpreters::is4ccChar(*(*this + v6));
      v10 = *this;
      if (!v8)
      {
        break;
      }

      v11 = v10[v6];
      if ((v11 & 0x80000000) != 0)
      {
        v12 = __maskrune(v11, 0x100uLL);
      }

      else
      {
        v12 = *(v7 + 4 * v11 + 60) & 0x100;
      }

      ++v6;
      if (v12)
      {
        goto LABEL_15;
      }
    }

    v19 = 0;
    v20 = v10;
    if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v20, &v19, v9))
    {
      v14 = v19;
      if (!HIDWORD(v19))
      {
        v15 = v20;
LABEL_20:
        *a2 = v14;
        *this = v15;
        return 1;
      }
    }
  }

  else
  {
    v13 = **this;
    if ((v13 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x400) != 0)
    {
      return 0;
    }
  }

LABEL_15:
  v14 = 0;
  v15 = *this;
  v16 = 4;
  while (1)
  {
    v17 = *v15;
    result = AudioDSPGraph::Language::V1::Interpreters::is4ccChar(*v15);
    if (!result)
    {
      return result;
    }

    ++v15;
    v14 = v17 | (v14 << 8);
    if (!--v16)
    {
      if ((AudioDSPGraph::Language::V1::Interpreters::is4ccChar(*v15) & 1) == 0)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(AudioDSPGraph::Language::V1::Interpreters *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a1, a2);
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(a1, a2) & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    v4 = *a1;
    if (**a1 != 34)
    {
      return 0;
    }

    for (i = *a1; ; v4 = i)
    {
      v7 = *++i;
      v6 = v7;
      if (v7 == 34)
      {
        break;
      }

      if (v6 == 10 || v6 == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v10, "unterminated string");
        AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336728);
      }

      std::string::push_back(a2, v6);
    }

    *a1 = v4 + 2;
  }

  return 1;
}

void sub_1C923DA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseCompDesc(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, AudioComponentDescription *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v13 = *this;
  AudioDSPGraph::Language::V1::Interpreters::skipspace(&v13, v5);
  v6 = *v13;
  if (v6 == 40)
  {
    ++v13;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v13, a2, 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "expected component type or subtype");
      AudioDSPGraph::ThrowException(1886548769, v12, off_1E8336740);
    }

    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v13, (a2 + 4), 1) & 1) == 0)
    {
      v7 = *a2;
      *a2 = 1635083896;
      *(a2 + 1) = v7;
    }

    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v13, a2 + 1, 1) & 1) == 0)
    {
      *(a2 + 2) = 1634758764;
    }

    AudioDSPGraph::Language::V1::Interpreters::skipspace(&v13, v8);
    if (*v13 != 41)
    {
      caulk::make_string(&v11, "expected ')' at end of component description, got '%c'", v9, *v13);
      AudioDSPGraph::ThrowException(1886548769, &v11, off_1E8336758);
    }

    *this = v13 + 1;
  }

  return v6 == 40;
}

void sub_1C923DBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::is4ccChar(unsigned int this)
{
  if (this >= 0x80)
  {
    result = __maskrune(this, 0x40000uLL);
    if (!result)
    {
      return result;
    }

    if (!__maskrune(this, 0x4000uLL))
    {
      return memchr("()[]{};", this, 9uLL) == 0;
    }

    return 0;
  }

  v3 = *(MEMORY[0x1E69E9830] + 4 * this + 60);
  if ((v3 & 0x40000) == 0 || (v3 & 0x4000) != 0)
  {
    return 0;
  }

  return memchr("()[]{};", this, 9uLL) == 0;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, unint64_t *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  __endptr = 0;
  v5 = strtoul(*this, &__endptr, 10);
  v6 = __endptr;
  if (__endptr == *this)
  {
    return 0;
  }

  v7 = v5;
  if (v5 == -1)
  {
    if (*__error())
    {
      return 0;
    }
  }

  *a2 = v7;
  *this = v6;
  return 1;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(_BYTE **a1, const char **a2, const char **a3)
{
  v12 = *a1;
  *a3 = 0;
  AudioDSPGraph::Language::V1::Interpreters::skipspace(&v12, a2);
  if (*v12 == 40)
  {
    ++v12;
    result = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v12, a2);
    if (!result)
    {
      return result;
    }

    AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(&v12, a3, v7);
    AudioDSPGraph::Language::V1::Interpreters::skipspace(&v12, v8);
    if (*v12 != 41)
    {
      caulk::make_string(&v11, "expected ')' at end of port description, got '%c'", v9, *v12);
      AudioDSPGraph::ThrowException(1886548769, &v11, off_1E8336980);
    }

    v10 = v12 + 1;
  }

  else
  {
    result = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v12, a2);
    if (!result)
    {
      return result;
    }

    v10 = v12;
  }

  *a1 = v10;
  return 1;
}

void sub_1C923DDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, unsigned int *a3)
{
  v5 = *this;
  v7 = 0;
  v8 = v5;
  result = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v8, &v7, a3);
  if (result)
  {
    if (HIDWORD(v7))
    {
      return 0;
    }

    else
    {
      *a2 = v7;
      *this = v8;
      return 1;
    }
  }

  return result;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, BOOL *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v15 = *this;
  memset(&__p, 0, sizeof(__p));
  v17 = v15;
  *__val = 0;
  if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v17, __val, v5) && !__val[1])
  {
    v15 = v17;
    std::to_string(&__p, __val[0]);
LABEL_5:
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_ != 1)
      {
        if (__p.__r_.__value_.__l.__size_ == 4)
        {
          if (*__p.__r_.__value_.__l.__data_ == 1702195828)
          {
            goto LABEL_33;
          }
        }

        else if (__p.__r_.__value_.__l.__size_ == 5 && *__p.__r_.__value_.__l.__data_ == 1936482662 && *(__p.__r_.__value_.__r.__words[0] + 4) == 101)
        {
          goto LABEL_36;
        }

        v8 = 0;
LABEL_39:
        operator delete(v9);
        return v8;
      }

      if (*__p.__r_.__value_.__l.__data_ == 49)
      {
        goto LABEL_33;
      }

      v11 = *__p.__r_.__value_.__l.__data_;
    }

    else
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
        {
          if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 5)
          {
            return 0;
          }

          if (LODWORD(__p.__r_.__value_.__l.__data_) != 1936482662 || __p.__r_.__value_.__s.__data_[4] != 101)
          {
            return 0;
          }

          goto LABEL_36;
        }

        if (LODWORD(__p.__r_.__value_.__l.__data_) != 1702195828)
        {
          return 0;
        }

LABEL_33:
        v12 = 1;
        goto LABEL_37;
      }

      v11 = __p.__r_.__value_.__s.__data_[0];
      if (__p.__r_.__value_.__s.__data_[0] == 49)
      {
        goto LABEL_33;
      }
    }

    if (v11 == 48)
    {
LABEL_36:
      v12 = 0;
LABEL_37:
      *a2 = v12;
      *this = v15;
      v8 = 1;
      if ((v6 & 0x80) == 0)
      {
        return v8;
      }

      goto LABEL_38;
    }

    v8 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v8;
    }

LABEL_38:
    v9 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_39;
  }

  if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(&v15, &__p))
  {
    goto LABEL_5;
  }

  v8 = 0;
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_38;
  }

  return v8;
}

void sub_1C923E014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseFormat(AudioDSPGraph::Language::V1::Interpreters *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a1, a2);
  v4 = *a1;
  if (**a1 == 40)
  {
    v79 = v4 + 1;
    HIBYTE(v78) = 1;
    LODWORD(v78) = 0;
    if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v79, &v78, 0))
    {
      goto LABEL_17;
    }

    if (v78 == 1819304813)
    {
      v6 = 0;
      LODWORD(v78) = 0;
      goto LABEL_18;
    }

    if (v78 == 1718773105)
    {
      LODWORD(v78) = 0;
      v6 = 1;
    }

    else
    {
LABEL_17:
      v6 = 0;
    }

LABEL_18:
    v77.__r_.__value_.__r.__words[0] = v79;
    v80 = 0;
    if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v77, &v80, v5) || (v14 = v80, v80 >> 32) || (v79 = v77.__r_.__value_.__r.__words[0], !v80))
    {
      std::string::basic_string[abi:ne200100]<0>(&v77, "expected non-zero sample rate");
      AudioDSPGraph::ThrowException(1886548769, &v77, off_1E8336770);
    }

    v15 = v78;
    if (v78)
    {
      v80 = 0;
      if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v77, &v80, v13) || (v17 = v80, v80 >> 32) || (v79 = v77.__r_.__value_.__r.__words[0], !AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parserInterleavedFlag(&v79, (&v78 + 7), v16)) || (v77.__r_.__value_.__r.__words[0] = v79, v80 = 0, !AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v77, &v80, v18)) || (v20 = v80, v80 >> 32) || (v80 = 0, !AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v77, &v80, v19)) || (v22 = v80, v80 >> 32))
      {
        std::string::basic_string[abi:ne200100]<0>(&v77, "constant bit rate formats must have a block size and bytes per packet.");
        AudioDSPGraph::ThrowException(1718449215, &v77, off_1E8336788);
      }

      v79 = v77.__r_.__value_.__r.__words[0];
      goto LABEL_39;
    }

    v80 = 0;
    if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v77, &v80, v13) || (v17 = v80, v80 >> 32))
    {
      v22 = 0;
      v17 = 1;
    }

    else
    {
      v79 = v77.__r_.__value_.__r.__words[0];
      if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parserInterleavedFlag(&v79, (&v78 + 7), v24))
      {
        v77.__r_.__value_.__r.__words[0] = v79;
        v80 = 0;
        if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v77, &v80, v25) || (v20 = v80, v80 >> 32))
        {
          v20 = 1;
        }

        else
        {
          v79 = v77.__r_.__value_.__r.__words[0];
        }

        v22 = 0;
        goto LABEL_39;
      }

      v22 = 0;
    }

    v20 = 1;
LABEL_39:
    AudioDSPGraph::Language::V1::Interpreters::skipspace(&v79, v21);
    if (*v79 != 41)
    {
      caulk::make_string(&v77, "expected ')' at end of format, got '%c'", v26, *v79);
      AudioDSPGraph::ThrowException(1886548769, &v77, off_1E83367A0);
    }

    if (v15)
    {
      if (HIBYTE(v78) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v77, "constant bit rate formats must be de-interleaved.");
        AudioDSPGraph::ThrowException(1718449215, &v77, off_1E83367B8);
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = v20;
    }

    else if (v6)
    {
      if (v20 == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v77, "frequency domain formats must have a block size.");
        AudioDSPGraph::ThrowException(1718449215, &v77, off_1E83367D0);
      }

      if (HIBYTE(v78) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v77, "frequency domain formats must be de-interleaved.");
        AudioDSPGraph::ThrowException(1718449215, &v77, off_1E83367E8);
      }

      v15 = 1718773105;
      v29 = 64;
      v30 = 1;
      v22 = 8;
      v27 = 41;
      v28 = 8;
    }

    else
    {
      v15 = 1819304813;
      v30 = HIBYTE(v78);
      v29 = 32;
      if (HIBYTE(v78) == 1)
      {
        v22 = 4 * (v17 & 0x7FFFFFF);
        v27 = 9;
        v28 = v22;
      }

      else
      {
        v30 = 1;
        v22 = 4;
        v27 = 41;
        v28 = 4;
      }
    }

    v45 = v79 + 2;
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 12) = v27;
    *(a2 + 16) = v22;
    *(a2 + 20) = v30;
    *(a2 + 24) = v28;
    *(a2 + 28) = v17;
    *(a2 + 32) = v29;
    *(a2 + 40) = v20;
    *a1 = v45;
    return 1;
  }

  memset(&v77, 0, sizeof(v77));
  v7 = *v4;
  if (!*v4)
  {
    return 0;
  }

  v8 = MEMORY[0x1E69E9830];
  do
  {
    v9 = v7;
    if (v7 < 0)
    {
      v10 = __maskrune(v7, 0x500uLL);
    }

    else
    {
      v10 = *(v8 + 4 * v7 + 60) & 0x500;
    }

    if (!v10 && !memchr("-@/#,", v9, 6uLL))
    {
      break;
    }

    std::string::push_back(&v77, v9);
    v11 = *++v4;
    v7 = v11;
  }

  while (v11);
  if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v77.__r_.__value_.__s + 23))
    {
      v12 = &v77;
      goto LABEL_49;
    }

    return 0;
  }

  if (!v77.__r_.__value_.__l.__size_)
  {
    goto LABEL_158;
  }

  v12 = v77.__r_.__value_.__r.__words[0];
LABEL_49:
  if (v12->__r_.__value_.__s.__data_[0] == 45)
  {
    v31 = (&v12->__r_.__value_.__l.__data_ + 1);
  }

  else
  {
    v31 = v12;
  }

  v32 = v31->__r_.__value_.__s.__data_[0];
  if (v32 == 76)
  {
    v33 = v31->__r_.__value_.__s.__data_[1] == 69;
    v34 = 12;
LABEL_61:
    v35 = !v33;
    v36 = 2;
    if (v35)
    {
      v36 = 0;
    }

    v31 = (v31 + v36);
    v32 = v31->__r_.__value_.__s.__data_[0];
    goto LABEL_66;
  }

  if (v32 == 66)
  {
    v33 = v31->__r_.__value_.__s.__data_[1] == 69;
    if (v31->__r_.__value_.__s.__data_[1] == 69)
    {
      v34 = 14;
    }

    else
    {
      v34 = 12;
    }

    goto LABEL_61;
  }

  v34 = 12;
LABEL_66:
  switch(v32)
  {
    case 'U':
      v34 &= 0xAu;
      v37 = v31->__r_.__value_.__s.__data_[1];
      v31 = (v31 + 1);
      v32 = v37;
      break;
    case 'F':
      v34 = v34 & 0xFFFFFFFA | 1;
      goto LABEL_71;
    case 'I':
LABEL_71:
      v12 = (&v31->__r_.__value_.__l.__data_ + 1);
      if ((v31->__r_.__value_.__s.__data_[1] & 0x80000000) == 0)
      {
        v38 = v31->__r_.__value_.__s.__data_[1];
        if ((*(v8 + 4 * v31->__r_.__value_.__s.__data_[1] + 60) & 0x400) != 0)
        {
          v39 = 0;
          v12 = &v31->__r_.__value_.__s.__data_[2];
          do
          {
            v39 = v38 + 10 * v39 - 48;
            v46 = v12->__r_.__value_.__s.__data_[0];
            v38 = v12->__r_.__value_.__s.__data_[0];
            if (v46 < 0)
            {
              goto LABEL_95;
            }

            v12 = (v12 + 1);
          }

          while ((*(v8 + 4 * v46 + 60) & 0x400) != 0);
          v31 = (v12 - 2);
          v12 = (v12 - 1);
        }

        else
        {
          v39 = 0;
        }

        if (v38 != 46)
        {
          goto LABEL_95;
        }

        v49 = v31->__r_.__value_.__s.__data_[2];
        v47 = &v31->__r_.__value_.__s.__data_[2];
        v48 = v49;
        if ((v49 & 0x80000000) == 0 && (*(v8 + 4 * v48 + 60) & 0x400) != 0)
        {
          v50 = 0;
          v38 = v48;
          v12 = v47;
          do
          {
            if ((*(v8 + 4 * v38 + 60) & 0x400) == 0)
            {
              break;
            }

            v51 = v12->__r_.__value_.__s.__data_[1];
            v12 = (v12 + 1);
            v50 = v38 + 10 * v50 - 48;
            v38 = v51;
          }

          while ((v51 & 0x80000000) == 0);
          v39 += v50;
          v34 |= v50 << 7;
LABEL_95:
          v52 = 1819304813;
          v53 = (v39 + 7) >> 3;
          v54 = 0;
          v55 = 1;
          if ((v39 & 7) != 0)
          {
            v34 = v34 & 0xFFFFFFE7 | 0x10;
          }

          goto LABEL_105;
        }
      }

LABEL_158:
      v23 = 0;
      goto LABEL_159;
  }

  v40 = 0;
  LODWORD(v80) = 538976288;
  v41 = v12;
  while (1)
  {
    v43 = v41->__r_.__value_.__s.__data_[0];
    v41 = (v41 + 1);
    v42 = v43;
    if (v43 == 92)
    {
      if (v41->__r_.__value_.__s.__data_[0] != 120)
      {
        goto LABEL_158;
      }

      LODWORD(v79) = 0;
      if (sscanf(&v12->__r_.__value_.__s.__data_[2], "%02X", &v79) != 1)
      {
        goto LABEL_158;
      }

      *(&v80 + v40) = v79;
      v41 = (v12->__r_.__value_.__r.__words + 4);
      goto LABEL_80;
    }

    *(&v80 + v40) = v42;
    if (!v42)
    {
      break;
    }

LABEL_80:
    ++v40;
    v12 = v41;
    if (v40 == 4)
    {
      v44 = SBYTE3(v80);
      v12 = v41;
      goto LABEL_102;
    }
  }

  if (v40 != 3)
  {
    goto LABEL_158;
  }

  v44 = 32;
  BYTE3(v80) = 32;
LABEL_102:
  if (memchr("-@/#", v44, 5uLL))
  {
    BYTE3(v80) = 32;
    v12 = (v12 - 1);
  }

  v39 = 0;
  v55 = 0;
  v53 = 0;
  v34 = 0;
  v52 = bswap32(v80);
  v38 = v12->__r_.__value_.__s.__data_[0];
  v54 = 1;
LABEL_105:
  if (v38 != 64)
  {
    goto LABEL_158;
  }

  v56 = v12->__r_.__value_.__s.__data_[1];
  if (v56 < 0)
  {
    goto LABEL_158;
  }

  v57 = 0;
  v58 = &v12->__r_.__value_.__s.__data_[2];
  v59 = 0.0;
  while ((*(v8 + 4 * v56 + 60) & 0x400) != 0)
  {
    if ((v57 & 1) == 0)
    {
      v59 = 0.0;
    }

    v59 = (v56 - 48) + v59 * 10.0;
    v60 = *v58++;
    LOBYTE(v56) = v60;
    v57 = 1;
    if (v60 < 0)
    {
      --v58;
      goto LABEL_113;
    }
  }

  if ((v57 & 1) == 0)
  {
    goto LABEL_158;
  }

  if (v56 == 47)
  {
    v34 = 0;
    while (1)
    {
      v62 = *v58;
      if ((v62 - 48) >= 0xA)
      {
        v56 = *v58;
        if ((v56 - 65) >= 6)
        {
          if ((v56 - 97) > 5)
          {
            goto LABEL_128;
          }

          v63 = -87;
        }

        else
        {
          v63 = -55;
        }
      }

      else
      {
        v63 = -48;
      }

      v34 = (v63 + v62) | (16 * v34);
      ++v58;
    }
  }

  --v58;
LABEL_128:
  if (v56 != 35)
  {
    v64 = v56;
    v61 = v55;
    goto LABEL_135;
  }

  v65 = *++v58;
  v64 = v65;
  if (v65 < 0)
  {
LABEL_113:
    v61 = v55;
    goto LABEL_114;
  }

  v61 = v55;
  while ((*(v8 + 4 * v64 + 60) & 0x400) != 0)
  {
    v61 = 10 * v61 + v64 - 48;
    v66 = *++v58;
    v64 = v66;
    if (v66 < 0)
    {
      goto LABEL_114;
    }
  }

LABEL_135:
  if (v64 != 58)
  {
LABEL_139:
    if (v64 != 44)
    {
      goto LABEL_114;
    }

    v68 = v58 + 1;
    v69 = v58[1];
    if ((v58[1] & 0x80000000) == 0 && (*(v8 + 4 * v58[1] + 60) & 0x400) != 0)
    {
      v55 = 0;
      v72 = v58 + 2;
      do
      {
        v68 = v72;
        v55 = v69 + 10 * v55 - 48;
        v73 = *v72;
        v69 = v73;
        if (v73 < 0)
        {
          break;
        }

        v74 = *(v8 + 4 * v73 + 60);
        v72 = v68 + 1;
      }

      while ((v74 & 0x400) != 0);
      v58 = v68 - 1;
    }

    else
    {
      v55 = 0;
    }

    if (v69 == 73)
    {
      v68 = v58 + 2;
    }

    else if (v69 == 68)
    {
      if (v52 != 1819304813)
      {
        goto LABEL_158;
      }

      v58 += 2;
      v34 |= 0x20u;
      v52 = 1819304813;
      goto LABEL_115;
    }

    if (v52 == 1819304813)
    {
      v76 = v55;
    }

    else
    {
      v76 = 1;
    }

    v53 *= v76;
    v58 = v68;
    goto LABEL_115;
  }

  v67 = v58[1];
  if (v67 == 72)
  {
    v34 = v34 & 0xFFFFFFE7 | 0x10;
  }

  else
  {
    if (v67 != 76)
    {
      goto LABEL_158;
    }

    v34 &= 0xFFFFFFE7;
  }

  v70 = v58[2];
  v58 += 2;
  v64 = v70;
  if ((v70 & 0x80000000) == 0)
  {
    v53 = 0;
    while ((*(v8 + 4 * v64 + 60) & 0x400) != 0)
    {
      v71 = *++v58;
      v53 = 10 * v53 + v64 - 48;
      v64 = v71;
      if (v71 < 0)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_139;
  }

  v53 = 0;
LABEL_114:
  if (v54)
  {
    goto LABEL_158;
  }

LABEL_115:
  if (*v58)
  {
    goto LABEL_158;
  }

  *a2 = v59;
  *(a2 + 8) = v52;
  *(a2 + 12) = v34;
  *(a2 + 16) = v53;
  *(a2 + 20) = v61;
  *(a2 + 24) = v53;
  *(a2 + 28) = v55;
  *(a2 + 32) = v39;
  *(a2 + 36) = 0x100000000;
  *a1 = v4;
  v23 = 1;
LABEL_159:
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  return v23;
}

void sub_1C923E9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parserInterleavedFlag(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, BOOL *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v5 = *this;
  v6 = **this;
  if (**this)
  {
    if (**this > 0x63u)
    {
      if (v6 != 100)
      {
        if (v6 != 105)
        {
          goto LABEL_5;
        }

LABEL_8:
        *a2 = 1;
LABEL_10:
        *this = v5 + 1;
        return v6 != 0;
      }
    }

    else if (v6 != 68)
    {
      if (v6 != 73)
      {
LABEL_5:
        *a2 = 0;
        return v6 != 0;
      }

      goto LABEL_8;
    }

    *a2 = 0;
    goto LABEL_10;
  }

  return v6 != 0;
}

void std::__split_buffer<std::string *>::emplace_back<std::string *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePropertyEndpoint(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a2, a2);
  v20 = *a2;
  result = AudioDSPGraph::Language::V1::Interpreters::skipspace(&v20, v4);
  if (*v20 == 40)
  {
    ++v20;
    v18 = 0;
    v19 = 0uLL;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v20, &v18) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>((v17 + 4), "expected box name for property endpoint");
      AudioDSPGraph::ThrowException(1886548769, (v17 + 4), off_1E8336848);
    }

    LODWORD(v17[0]) = 0;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v20, v17, 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>((v16 + 4), "expected property ID for property endpoint");
      AudioDSPGraph::ThrowException(1886548769, (v16 + 4), off_1E8336860);
    }

    LODWORD(v16[0]) = 0;
    if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseScope(&v20, v16, v6) && (v21 = 0, v22 = v20, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v22, &v21, v8)) && (v9 = v21, !(v21 >> 32)))
    {
      v20 = v22;
    }

    else
    {
      v9 = 0;
    }

    result = AudioDSPGraph::Language::V1::Interpreters::skipspace(&v20, v7);
    if (*v20 != 41)
    {
      caulk::make_string(&v15, "expected ')' at end of property endpoint, got '%c'", v10, *v20);
      AudioDSPGraph::ThrowException(1886548769, &v15, off_1E8336878);
    }

    *a2 = v20 + 1;
    v11 = HIBYTE(v19);
    v12 = v17[0];
    v13 = v16[0];
    v14 = v19;
    *this = v18;
    *(this + 1) = v14;
    *(this + 15) = *(&v19 + 7);
    *(this + 23) = v11;
    *(this + 6) = v12;
    *(this + 7) = v13;
    *(this + 8) = v9;
    *(this + 40) = 1;
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

void sub_1C923ED58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseScope(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, unsigned int *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v26 = *this;
  v27 = 0;
  __p = v26;
  if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__p, &v27, v5) || v27 >> 32)
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
    v8 = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(&v26, &__p);
    v9 = HIBYTE(v25);
    if ((v8 & 1) == 0)
    {
      goto LABEL_74;
    }

    if (v25 < 0)
    {
      if (v24 > 4)
      {
        if (v24 == 5)
        {
          if (*__p == 1970302569 && *(__p + 4) == 116)
          {
            goto LABEL_81;
          }
        }

        else if (v24 == 6 && *__p == 1886680431 && *(__p + 2) == 29813)
        {
          goto LABEL_43;
        }
      }

      else if (v24 == 2)
      {
        if (*__p == 28265)
        {
          goto LABEL_81;
        }
      }

      else if (v24 == 3)
      {
        if (*__p == 30063 && *(__p + 2) == 116)
        {
          goto LABEL_43;
        }

        if ((v25 & 0x8000000000000000) == 0)
        {
          return 0;
        }
      }

      if (v24 == 6 && *__p == 1651469415 && *(__p + 2) == 27745)
      {
LABEL_83:
        v15 = 0;
        goto LABEL_85;
      }

      if (v24 != 5)
      {
        goto LABEL_71;
      }

      if (*__p == 1970238055 && *(__p + 4) == 112)
      {
LABEL_84:
        v15 = 3;
LABEL_85:
        *a2 = v15;
        *this = v26;
        v7 = 1;
        if ((v9 & 0x80) == 0)
        {
          return v7;
        }

        goto LABEL_88;
      }

      if (v25 < 0)
      {
LABEL_71:
        if (v24 != 4)
        {
          v7 = 0;
          goto LABEL_88;
        }

        p_p = __p;
LABEL_73:
        if (*p_p == 1953653104)
        {
          v15 = 4;
          goto LABEL_85;
        }

LABEL_74:
        v7 = 0;
        if ((v25 & 0x8000000000000000) == 0)
        {
          return v7;
        }

LABEL_88:
        operator delete(__p);
        return v7;
      }

      if (HIBYTE(v25) == 4)
      {
LABEL_69:
        p_p = &__p;
        goto LABEL_73;
      }
    }

    else
    {
      v7 = 0;
      if (HIBYTE(v25) > 3u)
      {
        if (HIBYTE(v25) != 4)
        {
          if (HIBYTE(v25) != 5)
          {
            if (HIBYTE(v25) != 6)
            {
              return v7;
            }

            if (__p != 1886680431 || WORD2(__p) != 29813)
            {
              if (__p != 1651469415 || WORD2(__p) != 27745)
              {
                return 0;
              }

              goto LABEL_83;
            }

LABEL_43:
            v15 = 2;
            goto LABEL_85;
          }

          if (__p != 1970302569 || BYTE4(__p) != 116)
          {
            if (__p != 1970238055 || BYTE4(__p) != 112)
            {
              return 0;
            }

            goto LABEL_84;
          }

LABEL_81:
          v15 = 1;
          goto LABEL_85;
        }

        goto LABEL_69;
      }

      if (HIBYTE(v25) == 2)
      {
        if (__p == 28265)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (HIBYTE(v25) != 3)
        {
          return v7;
        }

        if (__p == 30063 && BYTE2(__p) == 116)
        {
          goto LABEL_43;
        }
      }
    }

    return 0;
  }

  v6 = __p;
  *a2 = v27;
  *this = v6;
  return 1;
}

void sub_1C923F100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseParamEndpoint(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a2, a2);
  v20 = *a2;
  result = AudioDSPGraph::Language::V1::Interpreters::skipspace(&v20, v4);
  if (*v20 == 40)
  {
    ++v20;
    v18 = 0;
    v19 = 0uLL;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v20, &v18) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>((v17 + 4), "expected box name for parameter endpoint");
      AudioDSPGraph::ThrowException(1886548769, (v17 + 4), off_1E8336800);
    }

    LODWORD(v17[0]) = 0;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v20, v17, 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>((v16 + 4), "expected parameter ID for parameter endpoint");
      AudioDSPGraph::ThrowException(1886548769, (v16 + 4), off_1E8336818);
    }

    LODWORD(v16[0]) = 0;
    if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseScope(&v20, v16, v6) && (v21 = 0, v22 = v20, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v22, &v21, v8)) && (v9 = v21, !(v21 >> 32)))
    {
      v20 = v22;
    }

    else
    {
      v9 = 0;
    }

    result = AudioDSPGraph::Language::V1::Interpreters::skipspace(&v20, v7);
    if (*v20 != 41)
    {
      caulk::make_string(&v15, "expected ')' at end of param endpoint, got '%c'", v10, *v20);
      AudioDSPGraph::ThrowException(1886548769, &v15, off_1E8336830);
    }

    *a2 = v20 + 1;
    v11 = HIBYTE(v19);
    v12 = v17[0];
    v13 = v16[0];
    v14 = v19;
    *this = v18;
    *(this + 1) = v14;
    *(this + 15) = *(&v19 + 7);
    *(this + 23) = v11;
    *(this + 6) = v12;
    *(this + 7) = v13;
    *(this + 8) = v9;
    *(this + 40) = 1;
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

void sub_1C923F2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, const char **a2, const char *a3)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(this, a2);
  v5 = strlen(a2);
  v6 = *this;
  v7 = strncmp(*this, a2, v5);
  if (!v7)
  {
    *this = v6 + v5;
  }

  return v7 == 0;
}

uint64_t AudioDSPGraph::Language::V1::StringSubMacro::StringSubMacro(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = &unk_1F48D2368;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F48D2398;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v7;
  }

  *(a1 + 80) = 0;
  return a1;
}

void std::deque<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>>::__add_front_capacity(int64x2_t *a1)
{
  v2 = a1->i64[1];
  v1 = a1[1].i64[0];
  v3 = v1 - v2;
  if (v1 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v1 - v2) << 6) - 1;
  }

  v5 = a1[2].i64[0];
  if ((v4 - (a1[2].i64[1] + v5)) < 0x200)
  {
    v6 = a1[1].i64[1];
    v7 = v6 - a1->i64[0];
    if (v3 < v7)
    {
      operator new();
    }

    if (v6 == a1->i64[0])
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v8);
  }

  a1[2].i64[0] = v5 + 512;
  v9 = *(v1 - 8);
  a1[1].i64[0] = v1 - 8;
  std::__split_buffer<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::allocator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *>>::emplace_front<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *&>(a1, &v9);
}

void sub_1C923F91C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::allocator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *>>::emplace_front<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::SubsetModel>,AudioDSPGraph::IR::SubsetModel*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::~LegacyInterpreter(AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this)
{
  *this = &unk_1F48D17F0;
  std::deque<std::string>::~deque[abi:ne200100](this + 8);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D17F0;
  std::deque<std::string>::~deque[abi:ne200100](this + 8);
}

uint64_t AudioDSPGraph::Boxes::MantissaRandomizerBox::initialize(AudioDSPGraph::Boxes::MantissaRandomizerBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v4 = *(this + 9);
  if (*(this + 10) == v4)
  {
    v8 = (this + 40);
    if (*(this + 63) < 0)
    {
      v8 = *v8;
    }

    caulk::make_string(&v14, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v8, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v14, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v9 = (this + 40);
    if (*(this + 63) < 0)
    {
      v9 = *v9;
    }

    caulk::make_string(&v14, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v9, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v14, off_1E8337C78);
  }

  v6 = *(*(v4 + 16) + 120);
  v7 = *(*(v5 + 16) + 120);
  if (*(v6 + 28) != *(v7 + 28))
  {
    v10 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v11 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string(&v13, "input and output must have the same channel count, but have %u and %u", v12, v10, *(*(*(v11 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v13, off_1E8336DA0);
  }

  if (*(v6 + 8) != 1819304813 || *(v7 + 8) != 1819304813)
  {
    operator new();
  }

  return result;
}

void sub_1C923FD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t AudioDSPGraph::Boxes::MantissaRandomizerBox::process(AudioDSPGraph::Boxes::MantissaRandomizerBox *this, const char *a2, BOOL a3, int8x16_t result)
{
  v41 = a2;
  v5 = atomic_load(this + 192);
  v6 = atomic_load(this + 764);
  if ((v6 & 1) != 0 || !v5)
  {
    v26 = *(this + 9);
    if (*(this + 10) == v26)
    {
      v39 = (this + 40);
      if (*(this + 63) < 0)
      {
        v39 = *v39;
      }

      caulk::make_string(&v42, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v39, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v42, off_1E8337C60);
    }

    v27 = *(this + 12);
    if (*(this + 13) == v27)
    {
      v40 = (this + 40);
      if (*(this + 63) < 0)
      {
        v40 = *v40;
      }

      caulk::make_string(&v42, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v40, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v42, off_1E8337C78);
    }

    AudioDSPGraph::SimpleABL::copy((*(*(v26 + 16) + 56) + 80), *(*(*(v27 + 16) + 56) + 80));
  }

  else
  {
    v7 = (v5 + 3) & 0xFFFFFFFC;
    result.i32[0] = v5 - 1;
    v8 = xmmword_1C925F420;
    v9 = 0uLL;
    v10.i64[0] = 0x100000001;
    v10.i64[1] = 0x100000001;
    v11.i64[0] = 0x400000004;
    v11.i64[1] = 0x400000004;
    do
    {
      v12 = v8;
      v13 = v9;
      v9 = vorrq_s8(v9, vshlq_u32(v10, v8));
      v8 = vaddq_s32(v8, v11);
      v7 -= 4;
    }

    while (v7);
    v14 = *(this + 12);
    if (*(this + 13) == v14)
    {
      v38 = (this + 40);
      if (*(this + 63) < 0)
      {
        v38 = *v38;
      }

      caulk::make_string(&v42, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v38, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v42, off_1E8337C78);
    }

    v15 = **(*(*(v14 + 16) + 56) + 80);
    if (v15)
    {
      v16 = 0;
      result = vbslq_s8(vcgtq_u32(v12, vdupq_lane_s32(*result.i8, 0)), v13, v9);
      *result.i8 = vorr_s8(*result.i8, *&vextq_s8(result, result, 8uLL));
      v17 = result.i32[0] | result.i32[1];
      v18 = ~(result.i32[0] | result.i32[1]);
      v19 = 4 * a2;
      do
      {
        v20 = *(this + 9);
        if (*(this + 10) == v20)
        {
          v35 = (this + 40);
          if (*(this + 63) < 0)
          {
            v35 = *v35;
          }

          caulk::make_string(&v42, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v35, 0, 0);
          AudioDSPGraph::ThrowException(1919837985, &v42, off_1E8337C60);
        }

        v21 = *(this + 12);
        if (*(this + 13) == v21)
        {
          v36 = (this + 40);
          if (*(this + 63) < 0)
          {
            v36 = *v36;
          }

          caulk::make_string(&v42, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v36, 0, 0);
          AudioDSPGraph::ThrowException(1919837985, &v42, off_1E8337C78);
        }

        if (v41)
        {
          v22 = *(*(*(*(v20 + 16) + 56) + 80) + 16 * v16 + 16);
          v23 = *(*(*(*(v21 + 16) + 56) + 80) + 16 * v16 + 16);
          v24 = v19;
          do
          {
            v25 = *v22++;
            LODWORD(v42.__r_.__value_.__l.__data_) = 0;
            HIDWORD(v42.__r_.__value_.__r.__words[0]) = v17;
            *v23++ = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>((this + 776), &v42) | v25 & v18;
            v24 -= 4;
          }

          while (v24);
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }

  v28 = *(this + 9);
  if (*(this + 10) == v28)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string(&v42, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v37, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v42, off_1E8337C60);
  }

  v29 = *(this + 12);
  v30 = *(this + 13);
  if (v29 != v30)
  {
    v31 = *(*(v28 + 16) + 56);
    do
    {
      v32 = *(*(v29 + 16) + 56);
      result = *(v31 + 8);
      v33 = *(v31 + 24);
      v34 = *(v31 + 40);
      *(v32 + 56) = *(v31 + 56);
      *(v32 + 40) = v34;
      *(v32 + 24) = v33;
      *(v32 + 8) = result;
      *(v32 + 72) = 0;
      v29 += 32;
    }

    while (v29 != v30);
  }

  return result;
}

void sub_1C924018C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::MantissaRandomizerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.62656313e219;
  *a1 = xmmword_1C925F350;
  *(a1 + 16) = 0;
  return result;
}

double AudioDSPGraph::Boxes::MantissaRandomizerBox::getParameterInfo@<D0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v3 = -10866;
  }

  else
  {
    if (!a2)
    {
      strcpy(a3, "bits to randomize");
      *(a3 + 18) = unk_1C925F7D6;
      *(a3 + 20) = unk_1C925F7D8;
      *(a3 + 24) = unk_1C925F7DC;
      *(a3 + 32) = xmmword_1C925F7E4;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 72) = @"bits to randomize";
      *(a3 + 80) = 1;
      *(a3 + 84) = 0x41B8000000000000;
      *(a3 + 92) = 0;
      *&result = 3355443200;
      *(a3 + 96) = 3355443200;
      *(a3 + 104) = 1;
      return result;
    }

    v3 = -10878;
  }

  *a3 = v3;
  *(a3 + 104) = 0;
  return result;
}

void AudioDSPGraph::Boxes::MantissaRandomizerBox::getParameterList(int a1@<W1>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    v5[0] = v2;
    v5[1] = v3;
    v4 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v4, v5, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

float AudioDSPGraph::Boxes::MantissaRandomizerBox::getParameter@<S0>(AudioDSPGraph::Boxes::MantissaRandomizerBox *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v4 = off_1E8336D58;
  }

  else
  {
    if (!a2)
    {
      v6 = atomic_load(this + 192);
      result = v6;
      *a4 = v6;
      *(a4 + 32) = 1;
      return result;
    }

    LODWORD(v7) = -10878;
    v4 = off_1E8334BA8;
  }

  *(&v7 + 1) = v4;
  v8 = 0;
  *a4 = v7;
  *(a4 + 16) = 0;
  v9 = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
  return result;
}

void AudioDSPGraph::Boxes::MantissaRandomizerBox::setParameter(AudioDSPGraph::Boxes::MantissaRandomizerBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v10) = -10866;
    v6 = off_1E8336D70;
LABEL_7:
    *(&v10 + 1) = v6;
    v11 = 0;
    *a6 = v10;
    *(a6 + 16) = 0;
    v12 = 0;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v10);
    return;
  }

  if (a5)
  {
    LODWORD(v10) = -10877;
    v6 = off_1E8336D88;
    goto LABEL_7;
  }

  if (a3)
  {
    LODWORD(v10) = -10878;
    v6 = off_1E8334BC0;
    goto LABEL_7;
  }

  v7 = llroundf(a2);
  v8 = 23;
  if (v7 < 0x17)
  {
    v8 = v7;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  atomic_store(v9, this + 192);
  *(a6 + 32) = 1;
}

void AudioDSPGraph::Boxes::MantissaRandomizerBox::~MantissaRandomizerBox(AudioDSPGraph::Boxes::MantissaRandomizerBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "inSecondsPerWindow is out of range (<= 0.0)");
  result->__vftable = (MEMORY[0x1E69E5598] + 16);
  return result;
}

uint64_t AudioDSPGraph::Metrics::Metrics(uint64_t this, double a2)
{
  v2 = (a2 * 24000000.0);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  *this = v2;
  *(this + 192) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 256) = 1;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 384) = 1;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = 0u;
  if (a2 <= 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception);
  }

  return this;
}

int8x16_t AudioDSPGraph::Metrics::start(AudioDSPGraph::Metrics *this)
{
  if (!*(this + 1))
  {
    *(this + 1) = mach_absolute_time();
  }

  thread_selfcounts();
  *(this + 2) = 0;
  result = vextq_s8(0, 0, 8uLL);
  *(this + 24) = result;
  return result;
}

uint64_t AudioDSPGraph::Metrics::stop(AudioDSPGraph::Metrics *this, unsigned int a2)
{
  result = mach_absolute_time();
  v5 = result;
  if (*(this + 3))
  {
    result = thread_selfcounts();
    v6 = v5 - *(this + 1);
    v7 = -*(this + 2);
    v8 = v7 / v6 * 100.0;
    v28 = *(this + 6) - *(this + 2);
    v29 = v5;
    *(this + 6) = v28;
    v9 = vsubq_s64(vextq_s8(0, 0, 8uLL), *(this + 24));
    v27 = vaddq_s64(*(this + 56), v9);
    *(this + 56) = v27;
    v10 = *(this + 9) + v6;
    *(this + 9) = v10;
    v11 = *(this + 10);
    if (v8 <= v11)
    {
      v12 = *(this + 13);
    }

    else
    {
      *(this + 10) = v8;
      v12 = *(this + 13);
      *(this + 11) = v12;
      v11 = v7 / v6 * 100.0;
    }

    v13 = *(this + 12) + a2;
    v14 = *(this + 14);
    v15 = *(this + 15) + v7;
    v16 = *(this + 18) + v6;
    v17 = *(this + 5) + 1;
    *(this + 5) = v17;
    v18 = vaddq_s64(*(this + 8), v9);
    *(this + 8) = v18;
    *(this + 18) = v16;
    v19 = v14 + a2;
    *(this + 14) = v19;
    *(this + 15) = v15;
    v20 = v12 + 1;
    *(this + 12) = v13;
    *(this + 13) = v12 + 1;
    v21 = *this;
    if (v10 > *this || v16 < v21)
    {
      v26 = v18;
      v25 = *(this + 11);
      for (i = 0; ; result = caulk::concurrent::details::spinloop::spin(&i))
      {
        v22 = atomic_load(this + 48);
        if ((v22 & 1) == 0)
        {
          v23 = v22;
          atomic_compare_exchange_strong(this + 48, &v23, v22 | 1);
          if (v23 == v22)
          {
            break;
          }
        }
      }

      v24 = (this + 128 * ((v22 >> 2) & 1));
      atomic_store((2 * ((v22 >> 2) & 0x3FFFFFFF)) | 1, &v24[16]);
      v24[16].i64[1] = v17;
      v24[17].i64[0] = v13;
      v24[17].i64[1] = v28;
      v24[18] = v27;
      v24[19].i64[0] = v10;
      *&v24[19].i64[1] = v11;
      v24[20].i64[0] = v25;
      v24[20].i64[1] = v20;
      v24[21].i64[0] = v19;
      v24[21].i64[1] = v15;
      v24[22] = v26;
      v24[23].i64[0] = v16;
      __dmb(0xBu);
      atomic_store(2 * (v22 >> 2), &v24[16]);
      atomic_store(((v22 & 0xFFFFFFFC) + 5) & 0xFFFFFFFC | 2, this + 48);
      if (v10 > v21)
      {
        *(this + 72) = 0u;
        *(this + 88) = 0u;
        *(this + 40) = 0u;
        *(this + 56) = 0u;
      }
    }

    v5 = v29;
  }

  *(this + 1) = v5;
  return result;
}

uint64_t caulk::concurrent::details::spinloop::spin(uint64_t this)
{
  v1 = *this + 1;
  *this = v1;
  if (v1 == 100)
  {
    v2 = this;
    this = sched_yield();
    *v2 = 0;
  }

  return this;
}

double AudioDSPGraph::Metrics::getStatistics(AudioDSPGraph::Metrics *this, uint64_t a2)
{
  v13 = 0;
  v3 = atomic_load((a2 + 192));
  if ((v3 & 2) != 0)
  {
    v5 = a2 + 256;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = v5 + (((v3 & 4) == 0) << 7);
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = v5 + (v6 << 7), explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 56);
        v10 = *(v7 + 88);
        *(this + 4) = *(v7 + 72);
        *(this + 5) = v10;
        *(this + 6) = *(v7 + 104);
        v11 = *(v7 + 24);
        *this = *(v7 + 8);
        *(this + 1) = v11;
        *(this + 2) = *(v7 + 40);
        *(this + 3) = v9;
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v13);
      v3 = atomic_load((a2 + 192));
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *&v9 = 0;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  return *&v9;
}

uint64_t *AudioDSPGraph::Boxes::MixBox::reset(uint64_t *this)
{
  v1 = this;
  v2 = this[96];
  v3 = this[97];
  v4 = v3 - v2;
  v5 = this[101];
  v6 = this[99];
  if (v5 - v6 < (v3 - v2))
  {
    v7 = this + 99;
    v8 = v4 >> 2;
    if (v6)
    {
      this[100] = v6;
      operator delete(v6);
      v5 = 0;
      *v7 = 0;
      v1[100] = 0;
      v1[101] = 0;
    }

    if (!(v8 >> 62))
    {
      v9 = v5 >> 1;
      if (v5 >> 1 <= v8)
      {
        v9 = v4 >> 2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned int>::__vallocate[abi:ne200100](v1 + 99, v10);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  v11 = this[100];
  v12 = v11 - v6;
  if (v11 - v6 >= v4)
  {
    if (v3 != v2)
    {
      this = memmove(v6, v2, v3 - v2);
    }

    v15 = &v6[v4];
  }

  else
  {
    if (v11 != v6)
    {
      this = memmove(this[99], v2, v11 - v6);
      v11 = v1[100];
    }

    v13 = &v2[v12];
    v14 = v3 - &v2[v12];
    if (v14)
    {
      this = memmove(v11, v13, v14);
    }

    v15 = &v11[v14];
  }

  v1[100] = v15;
  return this;
}

uint64_t AudioDSPGraph::Boxes::MixBox::initialize(AudioDSPGraph::Boxes::MixBox *this)
{
  if (((*(this + 10) - *(this + 9)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v14, "MixBox has no inputs");
    AudioDSPGraph::ThrowException(1970168609, v14, off_1E8336DD0);
  }

  result = AudioDSPGraph::Box::initialize(this);
  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v10 = (this + 40);
    if (*(this + 63) < 0)
    {
      v10 = *v10;
    }

    caulk::make_string(&v15, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v10, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v15, off_1E8337C78);
  }

  v5 = *(*(v4 + 16) + 120);
  if (v5[2] != 1819304813 || (v5[3] & 1) == 0 || (v5[8] == 32 ? (v6 = (v5[3] & 0x20) == 0) : (v6 = 1), v6))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "MixBox output format must be non-interleaved float");
    AudioDSPGraph::ThrowException(1718449215, v13, off_1E8336DE8);
  }

  for (i = *(this + 9); i != *(this + 10); i += 32)
  {
    v8 = *(*(i + 16) + 120);
    if (v8[2] != 1819304813 || (v8[3] & 1) == 0 || (v8[8] == 32 ? (v9 = (v8[3] & 0x20) == 0) : (v9 = 1), v9))
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "MixBox input format must be non-interleaved float");
      AudioDSPGraph::ThrowException(1718449215, v12, off_1E8336E00);
    }

    if (v8[7] != v5[7])
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "MixBox channel mismatch");
      AudioDSPGraph::ThrowException(1718449215, v11, off_1E8336E18);
    }
  }

  return result;
}

void sub_1C9240C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::MixBox::process(AudioDSPGraph::Boxes::MixBox *this, vDSP_Length __N)
{
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v49 = (this + 40);
    if (*(this + 63) < 0)
    {
      v49 = *v49;
    }

    caulk::make_string(&v53, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", __N, v49, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v53, off_1E8337C78);
  }

  v4 = *(*(*(v3 + 16) + 56) + 80);
  v5 = *v4;
  v6 = (4 * __N);
  v7 = *(this + 9);
  v8 = *(this + 10);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) == 0)
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = __N;
  v12 = 1;
  v13 = __N;
  do
  {
    if (v9 >> 5 <= v10)
    {
      v48 = (this + 40);
      if (*(this + 63) < 0)
      {
        v48 = *v48;
      }

      caulk::make_string(&v53, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __N, v48, v9 >> 5, v10);
      AudioDSPGraph::ThrowException(1919837985, &v53, off_1E8337C60);
    }

    v14 = *(*(v7 + 32 * v10 + 16) + 56);
    v15 = *(v14 + 80);
    v16 = *(*(this + 96) + 4 * v10);
    *&v53.__r_.__value_.__l.__data_ = v16;
    v17 = *(*(this + 99) + 4 * v10);
    __Start = v17;
    if ((*(v14 + 72) & 0x10) == 0 && v16 != 0.0)
    {
      if (v12)
      {
        if (v16 == v17)
        {
          if (v5)
          {
            v18 = (v15 + 16);
            v19 = v4 + 4;
            v20 = v5;
            do
            {
              v21 = *v18;
              v18 += 2;
              v22 = *v19;
              *(v19 - 1) = v6;
              MEMORY[0x1CCA853E0](v21, 1, &v53, v22, 1, v13);
              v19 += 2;
              --v20;
            }

            while (v20);
          }
        }

        else
        {
          __Step = (v16 - v17) / v11;
          if (v5)
          {
            v28 = (v15 + 16);
            v29 = (v4 + 4);
            v30 = v5;
            do
            {
              v31 = *v28;
              v28 += 2;
              v32 = *v29;
              *(v29 - 1) = v6;
              vDSP_vrampmul(v31, 1, &__Start, &__Step, v32, 1, v13);
              v29 += 2;
              --v30;
            }

            while (v30);
          }
        }
      }

      else if (v16 == v17)
      {
        if (v5)
        {
          v23 = (v15 + 16);
          v24 = v4 + 4;
          v25 = v5;
          do
          {
            v26 = *v23;
            v23 += 2;
            v27 = *v24;
            *(v24 - 1) = v6;
            MEMORY[0x1CCA853D0](v26, 1, &v53, v27, 1, v27, 1, v13);
            v24 += 2;
            --v25;
          }

          while (v25);
        }
      }

      else
      {
        __Step = (v16 - v17) / v11;
        if (v5)
        {
          v33 = (v15 + 16);
          v34 = (v4 + 4);
          v35 = v5;
          do
          {
            v36 = *v33;
            v33 += 2;
            v37 = *v34;
            *(v34 - 1) = v6;
            vDSP_vrampmuladd(v36, 1, &__Start, &__Step, v37, 1, v13);
            v34 += 2;
            --v35;
          }

          while (v35);
        }
      }

      v12 = 0;
    }

    *(*(this + 99) + 4 * v10++) = v53.__r_.__value_.__l.__data_;
    v7 = *(this + 9);
    v8 = *(this + 10);
    v9 = v8 - v7;
  }

  while (v10 < ((v8 - v7) >> 5));
  if ((v12 & 1) == 0)
  {
    v40 = 0;
  }

  else
  {
LABEL_28:
    if (v5)
    {
      v38 = (v4 + 4);
      do
      {
        v39 = *v38;
        *(v38 - 1) = v6;
        bzero(v39, v6);
        v38 += 2;
        --v5;
      }

      while (v5);
      v7 = *(this + 9);
      v8 = *(this + 10);
    }

    v40 = 16;
  }

  if (v8 == v7)
  {
    v50 = (this + 40);
    if (*(this + 63) < 0)
    {
      v50 = *v50;
    }

    caulk::make_string(&v53, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __N, v50, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v53, off_1E8337C60);
  }

  v41 = *(this + 12);
  v42 = *(this + 13);
  if (v41 != v42)
  {
    v43 = *(*(v7 + 16) + 56);
    do
    {
      v44 = *(*(v41 + 16) + 56);
      v45 = *(v43 + 8);
      v46 = *(v43 + 24);
      v47 = *(v43 + 40);
      *(v44 + 56) = *(v43 + 56);
      *(v44 + 40) = v47;
      *(v44 + 24) = v46;
      *(v44 + 8) = v45;
      *(v44 + 72) = v40;
      v41 += 32;
    }

    while (v41 != v42);
  }
}

void sub_1C9241068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::MixBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.1238952e219;
  *a1 = xmmword_1C925F280;
  *(a1 + 16) = 0;
  return result;
}

double AudioDSPGraph::Boxes::MixBox::getParameterInfo@<D0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1 == 1)
  {
    if (!a2)
    {
      *a3 = *"gain";
      *(a3 + 16) = unk_1C925F819;
      *(a3 + 32) = xmmword_1C925F829;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 72) = @"gain";
      *(a3 + 80) = 14;
      *(a3 + 84) = --2.00000143;
      *(a3 + 92) = 1065353216;
      *&result = 3355443200;
      *(a3 + 96) = 3355443200;
      *(a3 + 104) = 1;
      return result;
    }

    v3 = -10878;
  }

  else
  {
    v3 = -10866;
  }

  *a3 = v3;
  *(a3 + 104) = 0;
  return result;
}

void AudioDSPGraph::Boxes::MixBox::getParameterList(int a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1 == 1)
  {
    v5[0] = v2;
    v5[1] = v3;
    v4 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v4, v5, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::MixBox::getParameter(AudioDSPGraph::Boxes::MixBox *this@<X0>, int a2@<W2>, unsigned int a3@<W3>, uint64_t a4@<X8>)
{
  if (a2 == 1)
  {
    v4 = *(this + 96);
    if (a3 < ((*(this + 97) - v4) >> 2))
    {
      *a4 = *(v4 + 4 * a3);
      *(a4 + 32) = 1;
      return;
    }

    LODWORD(v6) = -10877;
    v5 = off_1E8336E78;
  }

  else
  {
    LODWORD(v6) = -10866;
    v5 = off_1E8336E60;
  }

  *(&v6 + 1) = v5;
  v7 = 0;
  *a4 = v6;
  *(a4 + 16) = 0;
  v8 = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v6);
}

void AudioDSPGraph::Boxes::MixBox::setParameter(AudioDSPGraph::Boxes::MixBox *this@<X0>, float a2@<S0>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3 != 1)
  {
    LODWORD(v8) = -10866;
    v7 = off_1E8336E30;
    goto LABEL_8;
  }

  v5 = *(this + 96);
  if (a4 >= ((*(this + 97) - v5) >> 2))
  {
    LODWORD(v8) = -10877;
    v7 = off_1E8336E48;
LABEL_8:
    *(&v8 + 1) = v7;
    v9 = 0;
    *a5 = v8;
    *(a5 + 16) = 0;
    v10 = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v8);
    return;
  }

  *(v5 + 4 * a4) = a2;
  v6 = *(this + 2);
  if (!v6 || (*(v6 + 922) & 1) == 0)
  {
    *(*(this + 99) + 4 * a4) = a2;
  }

  *(a5 + 32) = 1;
}

void AudioDSPGraph::Boxes::MixBox::~MixBox(AudioDSPGraph::Boxes::MixBox *this)
{
  *this = &unk_1F48D1AC8;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    *(this + 97) = v3;
    operator delete(v3);
  }

  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D1AC8;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    *(this + 97) = v3;
    operator delete(v3);
  }

  AudioDSPGraph::Box::~Box(this);
}

uint64_t *std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      vDSP_DFT_DestroySetup(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    MEMORY[0x1CCA84AE0](v2, 0x1060C40CA828048);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (os_unfair_lock_trylock(v2))
  {
    v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(*(v2 + 8), *(v2 + 16));
    std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase((v2 + 8), v3, *(v2 + 16));
    os_unfair_lock_unlock(v2);
  }

  std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](a1 + 5);
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t *std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (1)
    {
      v5 = v2[1];
      if (!v5 || *(v5 + 8) == -1)
      {
        break;
      }

      v2 += 2;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 2; i != a2; i += 2)
      {
        v7 = i[1];
        if (v7 && *(v7 + 8) != -1)
        {
          v8 = *i;
          *i = 0;
          i[1] = 0;
          v9 = v2[1];
          *v2 = v8;
          v2[1] = v7;
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          v2 += 2;
        }
      }
    }
  }

  return v2;
}

uint64_t std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48D1D48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

void MultiRadixRealFFT::RealOutOfPlaceInverseTransform(MultiRadixRealFFT *this, const DSPSplitComplex *a2, float *a3, DSPComplex *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v7 = (&v12 - ((v6 + 15) & 0x7FFFFFFF0));
  __Z.realp = v7;
  __Z.imagp = (v7 + ((2 * v8) & 0x1FFFFFFFCLL));
  vDSP_DFT_Execute(*(v9 + 16), v10, v11, v7, __Z.imagp);
  vDSP_ztoc(&__Z, 1, a4, 2, **this >> 1);
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::uninitialize(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 198))
  {
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v2 = AudioDSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v17 = this + 40;
      if (*(this + 63) < 0)
      {
        v17 = *v17;
      }

      v18 = *(this + 198);
      *buf = 136315394;
      v24 = v17;
      v25 = 1024;
      *v26 = v18;
      _os_log_error_impl(&dword_1C91AE000, v2, OS_LOG_TYPE_ERROR, "%s: Detected total %u audio buffers with non-finite (<NaN> or <inf>) sample during audio start/stop cycle", buf, 0x12u);
    }

    *(this + 198) = 0;
  }

  if (*(this + 199))
  {
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v3 = AudioDSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v19 = this + 40;
      if (*(this + 63) < 0)
      {
        v19 = *v19;
      }

      v20 = *(this + 199);
      v21 = COERCE_FLOAT(atomic_load(this + 191));
      *buf = 136315650;
      v24 = v19;
      v25 = 1024;
      *v26 = v20;
      *&v26[4] = 2048;
      *&v26[6] = v21;
      _os_log_error_impl(&dword_1C91AE000, v3, OS_LOG_TYPE_ERROR, "%s: Detected total %u audio buffers with peak over limit (%.0f dB) during audio start/stop cycle", buf, 0x1Cu);
    }

    *(this + 199) = 0;
  }

  v4 = *(this + 96);
  v5 = *(this + 97);
  if (v4 != v5)
  {
    v6 = v4 + 1;
    do
    {
      v7 = *(v6 - 2);
      *__str = 0u;
      v32 = 0u;
      v8 = localtime(v6);
      if (!strftime(__str, 0x20uLL, "%Y-%m-%d %H:%M:%S", v8))
      {
        snprintf(__str, 0x20uLL, "%ld", *v6);
      }

      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
      }

      v9 = AudioDSPGraph::getLog(void)::gLog;
      if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v11 = this + 40;
        if (*(this + 63) < 0)
        {
          v11 = *(this + 5);
        }

        v12 = v6[1];
        v13 = "peak over limit";
        if (!v7)
        {
          v13 = "non-finite sample";
        }

        v14 = atomic_load(this + 201);
        *buf = 136316162;
        v24 = __str;
        v25 = 2048;
        *v26 = v12;
        *&v26[8] = 2080;
        *&v26[10] = v11;
        v27 = 2080;
        v28 = v13;
        v29 = 1024;
        v30 = v14;
        _os_log_error_impl(&dword_1C91AE000, v9, OS_LOG_TYPE_ERROR, "%s.%09ld :: %s: Detected %s in %u audio buffers", buf, 0x30u);
      }

      v10 = v6 + 2;
      v6 += 3;
    }

    while (v10 != v5);
    v4 = *(this + 96);
  }

  *(this + 97) = v4;
  v15 = *(this + 800);
  *(this + 800) = 0;
  if (v15)
  {
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v16 = AudioDSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v22 = this + 40;
      if (*(this + 63) < 0)
      {
        v22 = *v22;
      }

      *buf = 136315138;
      v24 = v22;
      _os_log_error_impl(&dword_1C91AE000, v16, OS_LOG_TYPE_ERROR, "%s: NonFiniteProtectionBox event logging capacity exceeded (some descriptions dropped)", buf, 0xCu);
    }
  }
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::process(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this, const char *a2, BOOL a3)
{
  __N = a2;
  v4 = atomic_load(this + 801);
  if (v4)
  {
    v5 = *(this + 9);
    if (*(this + 10) == v5)
    {
      v41 = (this + 40);
      if (*(this + 63) < 0)
      {
        v41 = *v41;
      }

      caulk::make_string(&__C, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v41, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C60);
    }

    v6 = *(this + 12);
    if (*(this + 13) == v6)
    {
      v43 = (this + 40);
      if (*(this + 63) < 0)
      {
        v43 = *v43;
      }

      caulk::make_string(&__C, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v43, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C78);
    }

    AudioDSPGraph::SimpleABL::copy((*(*(v5 + 16) + 56) + 80), *(*(*(v6 + 16) + 56) + 80));
  }

  else
  {
    v8 = *(this + 9);
    if (*(this + 10) == v8)
    {
      v42 = (this + 40);
      if (*(this + 63) < 0)
      {
        v42 = *v42;
      }

      caulk::make_string(&__C, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v42, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C60);
    }

    v9 = *(this + 12);
    if (*(this + 13) == v9)
    {
      v44 = (this + 40);
      if (*(this + 63) < 0)
      {
        v44 = *v44;
      }

      caulk::make_string(&__C, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v44, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C78);
    }

    v10 = *(*(*(v8 + 16) + 56) + 80);
    v11 = *(*(*(v9 + 16) + 56) + 80);
    v12 = *v10;
    v13 = COERCE_FLOAT(atomic_load(this + 191));
    v14 = __exp10f(v13 * 0.05);
    if (v12)
    {
      v15 = v14;
      v16 = 0;
      v45 = 0;
      v46 = 0;
      v17 = -v14;
      do
      {
        v18 = *&v10[4 * v16 + 4];
        v19 = *(v11 + 8 + 16 * v16 + 8);
        LODWORD(__C.__r_.__value_.__l.__data_) = 0;
        vDSP_sve(v18, 1, &__C, __N);
        if ((__C.__r_.__value_.__l.__data_ & 0x7FFFFFFF) >= 0x7F800000)
        {
          if (__N)
          {
            v20 = 4 * __N;
            v21 = v18;
            do
            {
              if ((*v21 & 0x7FFFFFFFu) >= 0x7F800000)
              {
                *v21 = 0.0;
              }

              ++v21;
              v20 -= 4;
            }

            while (v20);
          }

          v45 = 1;
        }

        __B = v17;
        *&__C.__r_.__value_.__l.__data_ = v15;
        v48 = 0.0;
        vDSP_maxmgv(v18, 1, &v48, __N);
        if (v48 <= *&__C.__r_.__value_.__l.__data_)
        {
          if (v18 != v19)
          {
            memcpy(v19, v18, 4 * __N);
          }
        }

        else
        {
          v46 = 1;
          vDSP_vclip(v18, 1, &__B, &__C, v19, 1, __N);
        }

        ++v16;
      }

      while (v16 != v12);
      if (v45)
      {
        ++*(this + 198);
        v22 = atomic_load(this + 802);
        if (v22)
        {
          v23 = *(this + 198);
          v24 = atomic_load(this + 201);
          if (!(v23 % v24))
          {
            AudioDSPGraph::Boxes::NonFiniteProtectionBox::addEvent(this, 0);
          }
        }
      }

      if (v46)
      {
        ++*(this + 199);
        v25 = atomic_load(this + 802);
        if (v25)
        {
          v26 = *(this + 199);
          v27 = atomic_load(this + 201);
          if (!(v26 % v27))
          {
            AudioDSPGraph::Boxes::NonFiniteProtectionBox::addEvent(this, 1);
          }
        }
      }
    }
  }

  v28 = *(this + 9);
  if (*(this + 10) == v28)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string(&__C, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v7, v37, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C60);
  }

  v29 = *(this + 12);
  if (*(this + 13) == v29)
  {
    v38 = (this + 40);
    if (*(this + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string(&__C, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v7, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C78);
  }

  v30 = *(*(v28 + 16) + 56);
  v31 = *(*(v29 + 16) + 56);
  v32 = *(v30 + 8);
  v33 = *(v30 + 24);
  v34 = *(v30 + 40);
  *(v31 + 56) = *(v30 + 56);
  *(v31 + 40) = v34;
  *(v31 + 24) = v33;
  *(v31 + 8) = v32;
  v35 = *(this + 9);
  if (*(this + 10) == v35)
  {
    v39 = (this + 40);
    if (*(this + 63) < 0)
    {
      v39 = *v39;
    }

    caulk::make_string(&__C, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v7, v39, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C60);
  }

  v36 = *(this + 12);
  if (*(this + 13) == v36)
  {
    v40 = (this + 40);
    if (*(this + 63) < 0)
    {
      v40 = *v40;
    }

    caulk::make_string(&__C, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v7, v40, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C78);
  }

  *(*(*(v36 + 16) + 56) + 72) = *(*(*(v35 + 16) + 56) + 72);
}

void sub_1C924212C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::addEvent(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 776) - *(a1 + 768) >= *(a1 + 784) - *(a1 + 768))
  {
    *(a1 + 800) = 1;
  }

  else
  {
    v15 = 0uLL;
    clock_gettime(_CLOCK_REALTIME, &v15);
    *&v16[4] = v15;
    v4 = *(a1 + 776);
    v5 = *(a1 + 784);
    if (v4 >= v5)
    {
      v7 = *(a1 + 768);
      v8 = v4 - v7;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
      v10 = v9 + 1;
      if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (v12 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = 24 * v9;
      *v13 = a2;
      *(v13 + 4) = *v16;
      *(v13 + 20) = *&v16[16];
      v6 = 24 * v9 + 24;
      v14 = v13 - v8;
      memcpy((v13 - v8), v7, v8);
      *(a1 + 768) = v14;
      *(a1 + 776) = v6;
      *(a1 + 784) = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v4 = a2;
      *(v4 + 4) = *v16;
      *(v4 + 20) = *&v16[16];
      v6 = v4 + 24;
    }

    *(a1 + 776) = v6;
  }
}

uint64_t AudioDSPGraph::Boxes::NonFiniteProtectionBox::setProperty(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this, int a2, int a3, unsigned int a4, int a5, unsigned int *a6)
{
  if (a2 == 64331)
  {
    if (a5 != 4)
    {
      return 561211770;
    }

    if (a3)
    {
      return 4294956430;
    }

    if (*a6)
    {
      result = 0;
      atomic_store(*a6, this + 201);
    }

    else
    {
      return 4294956445;
    }
  }

  else
  {
    if (a2 == 64330)
    {
      if (a5 == 4)
      {
        if (!a3)
        {
          result = 0;
          atomic_store(*a6 != 0, this + 802);
          return result;
        }

        return 4294956430;
      }

      return 561211770;
    }

    return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::getProperty(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, __n128 *a6, __n128 a7)
{
  if (a2 == 64331)
  {
    if (*a5 == 4 && a6 && !a3)
    {
      v8 = atomic_load(this + 201);
      goto LABEL_15;
    }
  }

  else
  {
    if (a2 != 64330)
    {
      AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6, a7);
      return;
    }

    if (*a5 == 4 && a6 && !a3)
    {
      v7 = atomic_load(this + 802);
      v8 = v7 & 1;
LABEL_15:
      a6->n128_u32[0] = v8;
    }
  }
}

unint64_t AudioDSPGraph::Boxes::NonFiniteProtectionBox::getPropertyInfo(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this, int a2, int a3)
{
  if (a2 == 64331 || a2 == 64330)
  {
    v3 = 4;
    if (a3)
    {
      v3 = 4294956430;
      v4 = 0;
    }

    else
    {
      v4 = 0x100000000;
    }
  }

  else
  {
    PropertyInfo = AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
    v4 = PropertyInfo & 0xFFFFFFFF00000000;
    v3 = PropertyInfo;
  }

  return v4 | v3;
}

double AudioDSPGraph::Boxes::NonFiniteProtectionBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 6.48669114e223;
  *a1 = xmmword_1C925F370;
  *(a1 + 16) = 0;
  return result;
}

double AudioDSPGraph::Boxes::NonFiniteProtectionBox::getParameterInfo@<D0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v3 = -10866;
  }

  else
  {
    if (!a2)
    {
      strcpy(a3, "hard clip threshold");
      *(a3 + 20) = unk_1C925F852;
      *(a3 + 24) = unk_1C925F856;
      *(a3 + 32) = xmmword_1C925F85E;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 72) = @"hard clip threshold";
      *(a3 + 80) = 13;
      *(a3 + 84) = 0x42A0000000000000;
      *(a3 + 92) = 1109393408;
      *&result = 3355443200;
      *(a3 + 96) = 3355443200;
      *(a3 + 104) = 1;
      return result;
    }

    v3 = -10878;
  }

  *a3 = v3;
  *(a3 + 104) = 0;
  return result;
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::getParameterList(int a1@<W1>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    v5[0] = v2;
    v5[1] = v3;
    v4 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v4, v5, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::getParameter(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v5 = off_1E8336EC0;
  }

  else if (a2)
  {
    LODWORD(v7) = -10878;
    v5 = off_1E8334BA8;
  }

  else
  {
    if (!a4)
    {
      v6 = atomic_load(this + 191);
      *a5 = v6;
      *(a5 + 32) = 1;
      return;
    }

    LODWORD(v7) = -10877;
    v5 = off_1E8336ED8;
  }

  *(&v7 + 1) = v5;
  v8 = 0;
  *a5 = v7;
  *(a5 + 16) = 0;
  v9 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::setParameter(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this@<X0>, unsigned int a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v7) = -10866;
    v6 = off_1E8336E90;
    goto LABEL_4;
  }

  if (a3)
  {
    LODWORD(v7) = -10878;
    v6 = off_1E8334BC0;
LABEL_4:
    *(&v7 + 1) = v6;
    v8 = 0;
    *a6 = v7;
    *(a6 + 16) = 0;
    v9 = 0;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v7);
    return;
  }

  if (a5)
  {
    LODWORD(v7) = -10877;
    v6 = off_1E8336EA8;
    goto LABEL_4;
  }

  if (*&a2 < 0.0)
  {
    *&a2 = 0.0;
  }

  atomic_store(a2, this + 191);
  *(a6 + 32) = 1;
}

void AudioDSPGraph::Boxes::NonFiniteProtectionBox::~NonFiniteProtectionBox(AudioDSPGraph::Boxes::NonFiniteProtectionBox *this)
{
  *this = &unk_1F48D1D80;
  v2 = *(this + 96);
  if (v2)
  {
    *(this + 97) = v2;
    operator delete(v2);
  }

  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D1D80;
  v2 = *(this + 96);
  if (v2)
  {
    *(this + 97) = v2;
    operator delete(v2);
  }

  AudioDSPGraph::Box::~Box(this);
}

uint64_t AudioDSPGraph::Boxes::ParameterSmoothingBox::reset(uint64_t this)
{
  *(this + 796) = 0;
  *(this + 804) = 257;
  return this;
}

uint64_t AudioDSPGraph::Boxes::ParameterSmoothingBox::initialize(AudioDSPGraph::Boxes::ParameterSmoothingBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v4 = *(this + 9);
  if (*(this + 10) == v4)
  {
    v9 = (this + 40);
    if (*(this + 63) < 0)
    {
      v9 = *v9;
    }

    caulk::make_string(&v11, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v9, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v11, off_1E8337C60);
  }

  v5 = *(*(v4 + 16) + 120);
  v6 = *v5;
  *(this + 96) = *v5;
  v7 = *(v5 + 40);
  *(this + 194) = v7;
  if (v6 <= 0.0 || v7 == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -10875;
  }

  *(this + 796) = 0;
  *(this + 402) = 257;
  return result;
}

void sub_1C9242934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::process(AudioDSPGraph::Boxes::ParameterSmoothingBox *this, const char *a2)
{
  if (*(this + 804) == 1)
  {
    v3 = *(this + 96) / *(this + 194);
    v4 = 0.0;
    v5 = 0.0;
    if (v3 != 0.0)
    {
      v4 = expf(-1.0 / (*(this + 195) * v3));
      v5 = expf(-1.0 / (*(this + 196) * v3));
    }

    *(this + 197) = v4;
    *(this + 198) = v5;
    *(this + 804) = 0;
  }

  v6 = *(this + 199);
  if (*(this + 805) == 1)
  {
    *(this + 200) = v6;
    *(this + 805) = 0;
  }

  else
  {
    v7 = *(this + 200);
    if (v6 >= v7)
    {
      v8 = *(this + 197);
    }

    else
    {
      v8 = *(this + 198);
    }

    *(this + 200) = (v6 * (1.0 - v8)) + (v7 * v8);
  }

  v9 = *(this + 9);
  if (*(this + 10) == v9)
  {
    v18 = (this + 40);
    if (*(this + 63) < 0)
    {
      v18 = *v18;
    }

    caulk::make_string(&v19, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v18, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v19, off_1E8337C60);
  }

  v10 = *(this + 12);
  v11 = *(this + 13);
  if (v10 != v11)
  {
    v12 = *(*(v9 + 16) + 56);
    v13 = *(v12 + 72);
    do
    {
      v14 = *(*(v10 + 16) + 56);
      v15 = *(v12 + 8);
      v16 = *(v12 + 24);
      v17 = *(v12 + 40);
      *(v14 + 56) = *(v12 + 56);
      *(v14 + 40) = v17;
      *(v14 + 24) = v16;
      *(v14 + 8) = v15;
      *(v14 + 72) = v13;
      v10 += 32;
    }

    while (v10 != v11);
  }
}

void sub_1C9242AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ParameterSmoothingBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.02972514e248;
  *a1 = xmmword_1C925F380;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::getParameterInfo(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v8 = 0u;
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      LODWORD(v8) = 0;
      strcpy(a3, "Input parameter value");
      *(a3 + 22) = unk_1C925F8C3;
      *(a3 + 24) = unk_1C925F8C5;
      *(a3 + 32) = xmmword_1C925F8CD;
      *(a3 + 48) = v8;
      *(a3 + 64) = 0;
      *(a3 + 72) = @"Input parameter value";
      *(a3 + 80) = 0;
      v4 = 0x7F7FFFFF00800000;
LABEL_12:
      *(a3 + 84) = v4;
      *(a3 + 92) = 0;
      v5 = 3355443200;
      goto LABEL_13;
    }

    if (a1)
    {
      v6 = 0;
      v7 = -10866;
    }

    else
    {
      if (a2 == 1)
      {
        LODWORD(v8) = 0;
        strcpy(a3, "Release Time (sec)");
        *(a3 + 19) = unk_1C925F8F5;
        *(a3 + 20) = unk_1C925F8F6;
        *(a3 + 24) = unk_1C925F8FA;
        *(a3 + 32) = xmmword_1C925F902;
        *(a3 + 48) = v8;
        v3 = @"Release Time (sec)";
        goto LABEL_11;
      }

      if (!a2)
      {
        LODWORD(v8) = 0;
        strcpy(a3, "Attack Time (sec)");
        *(a3 + 18) = unk_1C925F929;
        *(a3 + 20) = unk_1C925F92B;
        *(a3 + 24) = unk_1C925F92F;
        *(a3 + 32) = xmmword_1C925F937;
        *(a3 + 48) = v8;
        v3 = @"Attack Time (sec)";
LABEL_11:
        *(a3 + 64) = 0;
        *(a3 + 72) = v3;
        *(a3 + 80) = 4;
        v4 = 0x447A000000000000;
        goto LABEL_12;
      }

      v6 = 0;
      v7 = -10878;
    }

    *a3 = v7;
    goto LABEL_16;
  }

  LODWORD(v8) = 0;
  strcpy(a3, "Output parameter value");
  *(a3 + 23) = unk_1C925F88F;
  *(a3 + 24) = unk_1C925F890;
  *(a3 + 32) = xmmword_1C925F898;
  *(a3 + 48) = v8;
  *(a3 + 64) = 0;
  *(a3 + 72) = @"Output parameter value";
  *(a3 + 80) = 0;
  *(a3 + 84) = 0x7F7FFFFF00800000;
  *(a3 + 92) = 0;
  v5 = 1207959552;
LABEL_13:
  v6 = 1;
  *(a3 + 96) = v5;
LABEL_16:
  *(a3 + 104) = v6;
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::getParameterList(int a1@<W1>, uint64_t *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) < 2)
  {
    LODWORD(v5) = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v2 = &v5 + 1;
    v3 = a2;
    v4 = 1;
    goto LABEL_5;
  }

  if (!a1)
  {
    v5 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v2 = &v6;
    v3 = a2;
    v4 = 2;
LABEL_5:
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v3, &v5, v2, v4);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::getParameter(AudioDSPGraph::Boxes::ParameterSmoothingBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    LODWORD(v7) = -10877;
    v6 = off_1E8336F38;
  }

  else
  {
    if (a3 == 2)
    {
      v5 = *(this + 200);
      goto LABEL_12;
    }

    if (a3 == 1)
    {
      v5 = *(this + 199);
      goto LABEL_12;
    }

    if (a3)
    {
      LODWORD(v7) = -10866;
      v6 = off_1E8336F68;
    }

    else
    {
      if (a2 == 1)
      {
        v5 = *(this + 196);
        goto LABEL_12;
      }

      if (!a2)
      {
        v5 = *(this + 195);
LABEL_12:
        *a5 = v5;
        *(a5 + 32) = 1;
        return;
      }

      LODWORD(v7) = -10878;
      v6 = off_1E8336F50;
    }
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a5 = v7;
  *(a5 + 16) = 0;
  v9 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::setParameter(AudioDSPGraph::Boxes::ParameterSmoothingBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a5)
  {
    LODWORD(v7) = -10877;
    v6 = off_1E8336EF0;
  }

  else
  {
    if (a4 == 1)
    {
      *(this + 199) = a2;
      goto LABEL_13;
    }

    if (a4)
    {
      LODWORD(v7) = -10866;
      v6 = off_1E8336F20;
    }

    else
    {
      if (a3 == 1)
      {
        if (*(this + 196) != a2)
        {
          *(this + 196) = a2;
          goto LABEL_12;
        }

LABEL_13:
        *(a6 + 32) = 1;
        return;
      }

      if (!a3)
      {
        if (*(this + 195) != a2)
        {
          *(this + 195) = a2;
LABEL_12:
          *(this + 804) = 1;
          goto LABEL_13;
        }

        goto LABEL_13;
      }

      LODWORD(v7) = -10878;
      v6 = off_1E8336F08;
    }
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a6 = v7;
  *(a6 + 16) = 0;
  v9 = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::ParameterSmoothingBox::~ParameterSmoothingBox(AudioDSPGraph::Boxes::ParameterSmoothingBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Port::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 3)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    AudioDSPGraph::printi(a2, v4 + 4, "box %p\n", *(v6 + 8));
  }

  return result;
}

void AudioDSPGraph::Language::V1::StringSubMacro::apply(uint64_t a1@<X0>, int64x2_t *a2@<X1>, uint64_t *a3@<X2>, std::string *a4@<X8>)
{
  if (*(a1 + 80) == 1)
  {
    v9 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v9 = *v9;
    }

    caulk::make_string(&v18, "preprocessor error: recursive call to macro %s.", a2->i8, v9);
    AudioDSPGraph::ThrowException(1886548769, &v18, off_1E8336F80);
  }

  *(a1 + 80) = 1;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  if (v5 != v8)
  {
    v10 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v10 = *v10;
    }

    caulk::make_string(&v17, "preprocessor error: macro %s: wrong number of arguments expected %zu. got %zu\n", a2->i8, v10, v8, v5);
    AudioDSPGraph::ThrowException(1886548769, &v17, off_1E8336F98);
  }

  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  __p = 0;
  v15 = 0;
  v16 = 0;
  v13[0] = a2;
  v13[1] = &__p;
  if (v6 != v7)
  {
    operator new();
  }

  AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v12, a2, (a1 + 56), 1);
  *a4 = v12;
  AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(v13);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  *(a1 + 80) = 0;
}

void sub_1C924340C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  *(v26 + 80) = 0;
  _Unwind_Resume(a1);
}

void AudioDSPGraph::Language::V1::Preprocessor::preprocess(std::string *a1, int64x2_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v207 = *MEMORY[0x1E69E9840];
  v202 = 0;
  v201 = 0;
  v203 = 0;
  v200[0] = a2;
  v200[1] = &v201;
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = 0;
  if ((a3[23] & 0x80u) == 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  if (!v4)
  {
    goto LABEL_539;
  }

  v9 = &v205;
  do
  {
    v10 = a3[23];
    if ((v10 & 0x80u) == 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 1);
    }

    if (v4 >= &v11[v10])
    {
      break;
    }

    v199 = (v4 + 1);
    v12 = *v4;
    if (v12 <= 0x5A)
    {
      if (v12 == 59)
      {
        v15 = (v4 + 2);
        while (1)
        {
          v12 = *(v15 - 1);
          if (!*(v15 - 1))
          {
            break;
          }

          v199 = v15++;
          if (v12 == 10)
          {
            goto LABEL_66;
          }
        }

        LOBYTE(v12) = 10;
LABEL_66:
        std::string::push_back(a1, v12);
        goto LABEL_444;
      }

      if (!*v4)
      {
        break;
      }

LABEL_55:
      if (v12 == 123 && a4)
      {
        memset(&v204, 0, sizeof(v204));
        AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(&v199, 123, 125, &v204);
        std::string::push_back(a1, 123);
        if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v204;
        }

        else
        {
          v21 = v204.__r_.__value_.__r.__words[0];
        }

        if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v204.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v204.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v21, size);
        std::string::push_back(a1, 125);
        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
        {
          v23 = v204.__r_.__value_.__r.__words[0];
          goto LABEL_443;
        }

        goto LABEL_444;
      }

      goto LABEL_66;
    }

    if (v12 != 91)
    {
      if (v12 == 92)
      {
        v13 = (v4 + 2);
        v199 = (v4 + 2);
        v14 = v4[1];
        if (v14 <= 0x6D)
        {
          if (v4[1] > 0x61u)
          {
            if (v14 == 98)
            {
              LOBYTE(v14) = 8;
            }

            else if (v14 == 102)
            {
              LOBYTE(v14) = 12;
            }
          }

          else
          {
            if (!v4[1])
            {
              goto LABEL_445;
            }

            if (v14 == 97)
            {
              LOBYTE(v14) = 7;
            }
          }
        }

        else if (v4[1] <= 0x73u)
        {
          if (v14 == 110)
          {
            LOBYTE(v14) = 10;
          }

          else if (v14 == 114)
          {
            LOBYTE(v14) = 13;
          }
        }

        else
        {
          switch(v14)
          {
            case 'x':
              v199 = (v4 + 3);
              v30 = v4[2];
              if (v30 < 0 || (v31 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60), (v31 & 0x10000) == 0))
              {
                std::string::basic_string[abi:ne200100]<0>(v198, "preprocessor error: expected hex digit");
                AudioDSPGraph::ThrowException(1886548769, v198, off_1E8337028);
              }

              if ((v31 & 0x9000) != 0)
              {
                v32 = 9;
              }

              else
              {
                v32 = 0;
              }

              v199 = (v4 + 4);
              v33 = v4[3];
              if (v33)
              {
                if ((v33 & 0x80000000) != 0 || (v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60), (v34 & 0x10000) == 0))
                {
                  std::string::basic_string[abi:ne200100]<0>(v197, "preprocessor error: expected hex digit");
                  AudioDSPGraph::ThrowException(1886548769, v197, off_1E8337040);
                }

                v35 = v30 + v32;
                if ((v34 & 0x1000) != 0)
                {
                  v36 = -87;
                }

                else
                {
                  v36 = -48;
                }

                if ((v34 & 0x8000) != 0)
                {
                  v36 = -55;
                }

                std::string::push_back(a1, (v33 + v36) | (16 * v35));
                goto LABEL_444;
              }

              goto LABEL_539;
            case 'v':
              LOBYTE(v14) = 11;
              break;
            case 't':
              LOBYTE(v14) = 9;
              break;
          }
        }

        std::string::push_back(a1, v14);
        goto LABEL_445;
      }

      goto LABEL_55;
    }

    memset(&__p, 0, sizeof(__p));
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(&v199, 91, 93, &__p);
    AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v204, a2, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v204;
    if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v195 = p_p;
    __sz = 0;
    __s = 0;
    v194 = 0;
    if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &__s))
    {
      std::string::basic_string[abi:ne200100]<0>(v191, "preprocessor error: expected macro name");
      AudioDSPGraph::ThrowException(1886548769, v191, off_1E8337058);
    }

    if ((SHIBYTE(v194) & 0x80000000) == 0)
    {
      if (HIBYTE(v194) <= 4u)
      {
        if (HIBYTE(v194) != 1)
        {
          if (HIBYTE(v194) != 2)
          {
            if (HIBYTE(v194) != 3)
            {
              goto LABEL_355;
            }

            if ((__s != 25956 || BYTE2(__s) != 102) && (__s != 25964 || BYTE2(__s) != 116))
            {
              if (__s != 28257 || BYTE2(__s) != 100)
              {
LABEL_49:
                if (__s != 28526 || BYTE2(__s) != 116)
                {
LABEL_264:
                  if (HIBYTE(v194) != 1)
                  {
                    if (HIBYTE(v194) != 2)
                    {
                      goto LABEL_355;
                    }

                    goto LABEL_136;
                  }

                  goto LABEL_298;
                }

                goto LABEL_328;
              }

LABEL_313:
              memset(&v204, 0, sizeof(v204));
              v96 = 1;
              while (1)
              {
                v97 = v96;
                if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
                {
                  break;
                }

                v96 = 0;
                if (v97)
                {
                  if (v194 >= 0)
                  {
                    p_s = &__s;
                  }

                  else
                  {
                    p_s = __s;
                  }

                  v96 = AudioDSPGraph::Language::V1::strToLong(&v204, p_s, off_1E8337160) != 0;
                }
              }

              if (v97)
              {
                v85 = "1";
              }

              else
              {
                v85 = "0";
              }

              goto LABEL_335;
            }

            v27 = &__s;
LABEL_199:
            v62 = *v27;
            v63 = *(v27 + 2);
            v65 = v62 != 25964 || v63 != 116;
            v181.__r_.__value_.__r.__words[0] = 0;
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &__s))
            {
              std::string::basic_string[abi:ne200100]<0>(v190, "preprocessor error: expected name");
              AudioDSPGraph::ThrowException(1886548769, v190, off_1E8337070);
            }

            if (AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s))
            {
              {
                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
              }

              v66 = AudioDSPGraph::getLog(void)::gLog;
              if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_INFO))
              {
                if (v194 >= 0)
                {
                  v67 = &__s;
                }

                else
                {
                  v67 = __s;
                }

                LODWORD(v204.__r_.__value_.__l.__data_) = 136315138;
                *(v204.__r_.__value_.__r.__words + 4) = v67;
                _os_log_impl(&dword_1C91AE000, v66, OS_LOG_TYPE_INFO, "Preprocessor: redefining macro '%s'", &v204, 0xCu);
              }
            }

            memset(&v204, 0, sizeof(v204));
            memset(&v154, 0, sizeof(v154));
            while (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
            {
              v68 = v204.__r_.__value_.__l.__size_;
              if (v204.__r_.__value_.__l.__size_ >= v204.__r_.__value_.__r.__words[2])
              {
                v70 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v204, &v154);
              }

              else
              {
                if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v204.__r_.__value_.__l.__size_, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
                }

                else
                {
                  v69 = *&v154.__r_.__value_.__l.__data_;
                  *(v204.__r_.__value_.__l.__size_ + 16) = *(&v154.__r_.__value_.__l + 2);
                  *v68 = v69;
                }

                v70 = (v68 + 24);
              }

              v204.__r_.__value_.__l.__size_ = v70;
            }

            v71 = a4;
            v72 = v9;
            if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v154.__r_.__value_.__l.__data_);
            }

            memset(&v154, 0, sizeof(v154));
            if (AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v195, &v154))
            {
              v73 = AudioDSPGraph::Language::V1::Preprocessor::def(a2, &__s, &v154);
              v181.__r_.__value_.__r.__words[0] = v73;
              if (!v65)
              {
                std::vector<AudioDSPGraph::Language::V1::Macro const*>::push_back[abi:ne200100](&v201, &v181);
              }

              v75 = v204.__r_.__value_.__l.__size_;
              v74 = v204.__r_.__value_.__r.__words[0];
              if (v204.__r_.__value_.__r.__words[0] != v204.__r_.__value_.__l.__size_)
              {
                v76 = *(v73 + 40);
                do
                {
                  if (v76 >= *(v73 + 48))
                  {
                    v76 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v73 + 32, v74);
                  }

                  else
                  {
                    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v73 + 32, v74);
                    ++v76;
                  }

                  *(v73 + 40) = v76;
                  v74 = (v74 + 24);
                }

                while (v74 != v75);
              }
            }

            else
            {
              if (v204.__r_.__value_.__l.__size_ - v204.__r_.__value_.__r.__words[0] != 24)
              {
                std::string::basic_string[abi:ne200100]<0>(v189, "preprocessor error: expected macro body");
                AudioDSPGraph::ThrowException(1886548769, v189, off_1E8337088);
              }

              v181.__r_.__value_.__r.__words[0] = AudioDSPGraph::Language::V1::Preprocessor::def(a2, &__s, v204.__r_.__value_.__l.__data_);
              if (!v65)
              {
                std::vector<AudioDSPGraph::Language::V1::Macro const*>::push_back[abi:ne200100](&v201, &v181);
              }
            }

            if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v154.__r_.__value_.__l.__data_);
            }

            v154.__r_.__value_.__r.__words[0] = &v204;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v154);
            v9 = v72;
            a4 = v71;
            goto LABEL_439;
          }

          if (__s != 29295)
          {
LABEL_136:
            if (__s != 15677)
            {
              goto LABEL_355;
            }

LABEL_308:
            memset(&v204, 0, sizeof(v204));
            memset(&v154, 0, sizeof(v154));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              std::string::basic_string[abi:ne200100]<0>(v184, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v184, off_1E83371A8);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
            {
              std::string::basic_string[abi:ne200100]<0>(v183, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v183, off_1E83371C0);
            }

            v94 = AudioDSPGraph::Language::V1::strToLong(&v204, "equality", off_1E83371D8);
            if (v94 == AudioDSPGraph::Language::V1::strToLong(&v154, "equality", off_1E83371F0))
            {
              v95 = "1";
            }

            else
            {
              v95 = "0";
            }

            goto LABEL_476;
          }

LABEL_267:
          v82 = 0;
          memset(&v204, 0, sizeof(v204));
          while (1)
          {
            v83 = v82;
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              break;
            }

            v82 = 1;
            if (!v83)
            {
              if (v194 >= 0)
              {
                v84 = &__s;
              }

              else
              {
                v84 = __s;
              }

              v82 = AudioDSPGraph::Language::V1::strToLong(&v204, v84, off_1E8337148) != 0;
            }
          }

          if (v83)
          {
            v85 = "1";
          }

          else
          {
            v85 = "0";
          }

          goto LABEL_335;
        }

        v37 = __s;
        if (__s != 42)
        {
          if (__s != 43)
          {
LABEL_299:
            if (v37 == 45)
            {
LABEL_300:
              memset(&v204, 0, sizeof(v204));
              memset(&v154, 0, sizeof(v154));
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
              {
                std::string::basic_string[abi:ne200100]<0>(v182, "preprocessor error: missing argument");
                AudioDSPGraph::ThrowException(1886548769, v182, off_1E8337208);
              }

              v89 = AudioDSPGraph::Language::V1::strToLong(&v204, "subtraction", off_1E8337220);
              if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
              {
                v90 = AudioDSPGraph::Language::V1::strToLong(&v154, "subtraction", off_1E8337238);
                v91 = caulk::numeric::exceptional_sub<long>(v89, v90);
                std::to_string(&v181, v91);
                if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v92 = &v181;
                }

                else
                {
                  v92 = v181.__r_.__value_.__r.__words[0];
                }

                if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v93 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v93 = v181.__r_.__value_.__l.__size_;
                }
              }

              else
              {
                v101 = caulk::numeric::exceptional_mul<long>(v89, -1);
                std::to_string(&v181, v101);
                if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v92 = &v181;
                }

                else
                {
                  v92 = v181.__r_.__value_.__r.__words[0];
                }

                if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v93 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v93 = v181.__r_.__value_.__l.__size_;
                }
              }

              goto LABEL_432;
            }

LABEL_345:
            if (v37 != 47)
            {
              goto LABEL_355;
            }

            memset(&v204, 0, sizeof(v204));
            memset(&v154, 0, sizeof(v154));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              std::string::basic_string[abi:ne200100]<0>(v180, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v180, off_1E8337250);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
            {
              std::string::basic_string[abi:ne200100]<0>(v179, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v179, off_1E8337268);
            }

            v102 = AudioDSPGraph::Language::V1::strToLong(&v204, "division", off_1E8337280);
            v103 = AudioDSPGraph::Language::V1::strToLong(&v154, "division", off_1E8337298);
            if (!v103)
            {
              std::string::basic_string[abi:ne200100]<0>(v178, "division by zero is not allowed");
              AudioDSPGraph::ThrowException(1886548769, v178, off_1E83372B0);
            }

            std::to_string(&v181, v102 / v103);
            if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v92 = &v181;
            }

            else
            {
              v92 = v181.__r_.__value_.__r.__words[0];
            }

            if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v93 = v181.__r_.__value_.__l.__size_;
            }

LABEL_432:
            std::string::append(a1, v92, v93);
            if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v181.__r_.__value_.__l.__data_);
            }

            goto LABEL_434;
          }

          goto LABEL_194;
        }

LABEL_234:
        memset(&v204, 0, sizeof(v204));
        v77 = 1;
        while (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
        {
          v78 = AudioDSPGraph::Language::V1::strToLong(&v204, "multiplication", off_1E8337130);
          v77 = caulk::numeric::exceptional_mul<long>(v77, v78);
        }

        std::to_string(&v154, v77);
        if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v154;
        }

        else
        {
          v79 = v154.__r_.__value_.__r.__words[0];
        }

        if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v80 = v154.__r_.__value_.__l.__size_;
        }

        goto LABEL_469;
      }

      if (HIBYTE(v194) != 5)
      {
        if (HIBYTE(v194) != 7)
        {
          if (HIBYTE(v194) != 10)
          {
            goto LABEL_355;
          }

          if (__s != 0x746E756F4374656CLL || __sz != 29285)
          {
            goto LABEL_355;
          }

LABEL_188:
          if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &__s))
          {
            memset(&v204, 0, sizeof(v204));
            memset(&v154, 0, sizeof(v154));
            if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              AudioDSPGraph::Language::V1::strToLong(&v204, "counter start value", off_1E83370D0);
              if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
              {
                AudioDSPGraph::Language::V1::strToLong(&v154, "counter step", off_1E83370E8);
              }
            }

            operator new();
          }

          std::string::basic_string[abi:ne200100]<0>(v187, "preprocessor error: expected name");
          AudioDSPGraph::ThrowException(1886548769, v187, off_1E83370B8);
        }

        if (__s == 1853189987 && *(&__s + 3) == 1919251566)
        {
          goto LABEL_188;
        }

        if (__s != 1768318308 || *(&__s + 3) != 1684369001)
        {
LABEL_355:
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "!="))
          {
            memset(&v204, 0, sizeof(v204));
            memset(&v154, 0, sizeof(v154));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              std::string::basic_string[abi:ne200100]<0>(v177, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v177, off_1E83372C8);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
            {
              std::string::basic_string[abi:ne200100]<0>(v176, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v176, off_1E83372E0);
            }

            v104 = AudioDSPGraph::Language::V1::strToLong(&v204, "inequality", off_1E83372F8);
            if (v104 == AudioDSPGraph::Language::V1::strToLong(&v154, "inequality", off_1E8337310))
            {
              v95 = "0";
            }

            else
            {
              v95 = "1";
            }

LABEL_476:
            std::string::append(a1, v95, 1uLL);
LABEL_434:
            if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v154.__r_.__value_.__l.__data_);
            }

            goto LABEL_436;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "<"))
          {
            memset(&v204, 0, sizeof(v204));
            memset(&v154, 0, sizeof(v154));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              std::string::basic_string[abi:ne200100]<0>(v175, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v175, off_1E8337328);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
            {
              std::string::basic_string[abi:ne200100]<0>(v174, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v174, off_1E8337340);
            }

            v105 = AudioDSPGraph::Language::V1::strToLong(&v204, "less than", off_1E8337358);
            if (v105 >= AudioDSPGraph::Language::V1::strToLong(&v154, "less than", off_1E8337370))
            {
              v95 = "0";
            }

            else
            {
              v95 = "1";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "<="))
          {
            memset(&v204, 0, sizeof(v204));
            memset(&v154, 0, sizeof(v154));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              std::string::basic_string[abi:ne200100]<0>(v173, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v173, off_1E8337388);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
            {
              std::string::basic_string[abi:ne200100]<0>(v172, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v172, off_1E83373A0);
            }

            v106 = AudioDSPGraph::Language::V1::strToLong(&v204, "less than or equal", off_1E83373B8);
            if (v106 <= AudioDSPGraph::Language::V1::strToLong(&v154, "less than or equal", off_1E83373D0))
            {
              v95 = "1";
            }

            else
            {
              v95 = "0";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, ">"))
          {
            memset(&v204, 0, sizeof(v204));
            memset(&v154, 0, sizeof(v154));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              std::string::basic_string[abi:ne200100]<0>(v171, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v171, off_1E83373E8);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
            {
              std::string::basic_string[abi:ne200100]<0>(v170, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v170, off_1E8337400);
            }

            v107 = AudioDSPGraph::Language::V1::strToLong(&v204, "greater than", off_1E8337418);
            if (v107 <= AudioDSPGraph::Language::V1::strToLong(&v154, "greater than", off_1E8337430))
            {
              v95 = "0";
            }

            else
            {
              v95 = "1";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, ">="))
          {
            memset(&v204, 0, sizeof(v204));
            memset(&v154, 0, sizeof(v154));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              std::string::basic_string[abi:ne200100]<0>(v169, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v169, off_1E8337448);
            }

            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
            {
              std::string::basic_string[abi:ne200100]<0>(v168, "preprocessor error: missing argument");
              AudioDSPGraph::ThrowException(1886548769, v168, off_1E8337460);
            }

            v108 = AudioDSPGraph::Language::V1::strToLong(&v204, "greater than or equal", off_1E8337478);
            if (v108 >= AudioDSPGraph::Language::V1::strToLong(&v154, "greater than or equal", off_1E8337490))
            {
              v95 = "1";
            }

            else
            {
              v95 = "0";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "if"))
          {
            memset(&v204, 0, sizeof(v204));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              std::string::basic_string[abi:ne200100]<0>(v167, "preprocessor error: if: expected condition");
              AudioDSPGraph::ThrowException(1886548769, v167, off_1E83374A8);
            }

            if (v194 >= 0)
            {
              v109 = &__s;
            }

            else
            {
              v109 = __s;
            }

            v110 = AudioDSPGraph::Language::V1::strToLong(&v204, v109, off_1E83374C0);
            memset(&v154, 0, sizeof(v154));
            if (v110)
            {
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v195, &v154))
              {
                std::string::basic_string[abi:ne200100]<0>(v166, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v166, off_1E83374D8);
              }

              AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v195, v112);
              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v181, a2, &v154, 1);
              if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v92 = &v181;
              }

              else
              {
                v92 = v181.__r_.__value_.__r.__words[0];
              }

              if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v93 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v93 = v181.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if ((AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v195, v111) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v165, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v165, off_1E83374F0);
              }

              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v195, &v154))
              {
                goto LABEL_434;
              }

              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v181, a2, &v154, 1);
              if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v92 = &v181;
              }

              else
              {
                v92 = v181.__r_.__value_.__r.__words[0];
              }

              if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v93 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v93 = v181.__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_432;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "ifdef"))
          {
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &__s))
            {
              std::string::basic_string[abi:ne200100]<0>(v164, "preprocessor error: expected name");
              AudioDSPGraph::ThrowException(1886548769, v164, off_1E8337508);
            }

            memset(&v204, 0, sizeof(v204));
            if (AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s))
            {
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v195, &v204))
              {
                std::string::basic_string[abi:ne200100]<0>(v163, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v163, off_1E8337520);
              }

              AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v195, v114);
              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v154, a2, &v204, 1);
              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v79 = &v154;
              }

              else
              {
                v79 = v154.__r_.__value_.__r.__words[0];
              }

              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v80 = v154.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if ((AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v195, v113) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v162, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v162, off_1E8337538);
              }

              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v195, &v204))
              {
                goto LABEL_436;
              }

              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v154, a2, &v204, 1);
              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v79 = &v154;
              }

              else
              {
                v79 = v154.__r_.__value_.__r.__words[0];
              }

              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v80 = v154.__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_469;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "ifset"))
          {
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &__s))
            {
              std::string::basic_string[abi:ne200100]<0>(v161, "preprocessor error: expected name");
              AudioDSPGraph::ThrowException(1886548769, v161, off_1E8337550);
            }

            memset(&v204, 0, sizeof(v204));
            v115 = AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s);
            if (!v115)
            {
              goto LABEL_461;
            }

            memset(&v181, 0, sizeof(v181));
            (*(*v115 + 16))(&v154);
            if (v194 >= 0)
            {
              v117 = &__s;
            }

            else
            {
              v117 = __s;
            }

            v118 = AudioDSPGraph::Language::V1::strToLong(&v154, v117, off_1E8337568);
            if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v154.__r_.__value_.__l.__data_);
            }

            v153.__pn_.__r_.__value_.__r.__words[0] = &v181;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
            if (v118 == 1)
            {
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v195, &v204))
              {
                std::string::basic_string[abi:ne200100]<0>(v160, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v160, off_1E8337580);
              }

              AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v195, v119);
              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v154, a2, &v204, 1);
              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v79 = &v154;
              }

              else
              {
                v79 = v154.__r_.__value_.__r.__words[0];
              }

              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v80 = v154.__r_.__value_.__l.__size_;
              }
            }

            else
            {
LABEL_461:
              if ((AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(&v195, v116) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v159, "preprocessor error: ifdef expected thenClause");
                AudioDSPGraph::ThrowException(1886548769, v159, off_1E8337598);
              }

              if (!AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(a2, &v195, &v204))
              {
                goto LABEL_436;
              }

              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v154, a2, &v204, 1);
              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v79 = &v154;
              }

              else
              {
                v79 = v154.__r_.__value_.__r.__words[0];
              }

              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v80 = v154.__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_469;
          }

          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "include"))
          {
            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, "osFeatureEnabled"))
            {
              v123 = AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s);
              if (!v123)
              {
                v141 = &__s;
                if (v194 < 0)
                {
                  v141 = __s;
                }

                caulk::make_string(&v144, "preprocessor error: macro %s not found.", v124, v141);
                AudioDSPGraph::ThrowException(1852204065, &v144, off_1E8337658);
              }

              v125 = v123;
              memset(&v204, 0, sizeof(v204));
              memset(&v154, 0, sizeof(v154));
              while (AudioDSPGraph::Language::V1::Preprocessor::parseActualArg(a2, &v195, &v204))
              {
                std::vector<std::string>::emplace_back<std::string const&>(&v154, &v204);
              }

              (*(*v125 + 16))(&v181, v125, a2, &v154);
              if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v126 = &v181;
              }

              else
              {
                v126 = v181.__r_.__value_.__r.__words[0];
              }

              if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v127 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v127 = v181.__r_.__value_.__l.__size_;
              }

              std::string::append(a1, v126, v127);
              if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v181.__r_.__value_.__l.__data_);
              }

              v181.__r_.__value_.__r.__words[0] = &v154;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v181);
              goto LABEL_436;
            }

            memset(&v204, 0, sizeof(v204));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
            {
              std::string::basic_string[abi:ne200100]<0>(v146, "preprocessor error: expected feature flag domain");
              AudioDSPGraph::ThrowException(1886548769, v146, off_1E8337628);
            }

            memset(&v154, 0, sizeof(v154));
            if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v154))
            {
              std::string::basic_string[abi:ne200100]<0>(v145, "preprocessor error: expected feature flag name");
              AudioDSPGraph::ThrowException(1886548769, v145, off_1E8337640);
            }

            if (_os_feature_enabled_impl())
            {
              v95 = "1";
            }

            else
            {
              v95 = "0";
            }

            goto LABEL_476;
          }

          memset(&v181, 0, sizeof(v181));
          if ((AudioDSPGraph::Language::V1::Preprocessor::parseString(&v195, &v181) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v158, "preprocessor error: expected filename");
            AudioDSPGraph::ThrowException(1886548769, v158, off_1E83375B0);
          }

          v121 = SHIBYTE(v181.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v121 = v181.__r_.__value_.__l.__size_;
            if (v181.__r_.__value_.__l.__size_ >= 3)
            {
              v122 = v181.__r_.__value_.__r.__words[0];
              if (*v181.__r_.__value_.__l.__data_ == 34)
              {
LABEL_492:
                if (v122->__r_.__value_.__s.__data_[v121 - 1] == 34)
                {
                  std::string::erase(&v181, 0, 1uLL);
                  if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    v129 = v181.__r_.__value_.__r.__words[0];
                    v128 = --v181.__r_.__value_.__l.__size_;
                  }

                  else
                  {
                    v128 = SHIBYTE(v181.__r_.__value_.__r.__words[2]) - 1;
                    *(&v181.__r_.__value_.__s + 23) = v128 & 0x7F;
                    v129 = &v181;
                  }

                  v129->__r_.__value_.__s.__data_[v128] = 0;
                }
              }

LABEL_497:
              v156.__val_ = 0;
              v156.__cat_ = std::system_category();
              v154.__r_.__value_.__s.__data_[0] = 0;
              v155 = 0;
              std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v153.__pn_, &v181);
              v130 = std::__fs::filesystem::path::__root_directory(&v153).__size_;
              if (v130)
              {
                if (std::__fs::filesystem::is_regular_file[abi:ne200100](&v153, &v156) && !v156.__val_)
                {
                  std::ifstream::basic_ifstream(&v204, &v181);
                  if (!v206)
                  {
                    v142 = &v181;
                    if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v142 = v181.__r_.__value_.__r.__words[0];
                    }

                    caulk::make_string(&v151, "preprocessor error: cannot open include file '%s'", v131, v142);
                    AudioDSPGraph::ThrowException(1886548769, &v151, off_1E83375E0);
                  }

                  v150.__r_.__value_.__r.__words[0] = *(v9 + *(v204.__r_.__value_.__r.__words[0] - 24));
                  v152 = 0;
                  std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(&v154, &v150, &v152);
                  std::ifstream::~ifstream(&v204);
                }
              }

              else
              {
                v136 = a2[3].i64[0];
                v135 = a2[3].i64[1];
                while (v136 != v135)
                {
                  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v204, v136);
                  std::__fs::filesystem::operator/[abi:ne200100](&v150, &v204, &v153);
                  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v204.__r_.__value_.__l.__data_);
                  }

                  if (std::__fs::filesystem::is_regular_file[abi:ne200100](&v150, &v156) && !v156.__val_)
                  {
                    if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v137 = &v150;
                    }

                    else
                    {
                      v137 = v150.__r_.__value_.__r.__words[0];
                    }

                    std::ifstream::basic_ifstream(&v204, v137);
                    if (!v206)
                    {
                      v139 = &v181;
                      if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v139 = v181.__r_.__value_.__r.__words[0];
                      }

                      caulk::make_string(&v148, "preprocessor error: cannot open include file '%s'", v138, v139);
                      AudioDSPGraph::ThrowException(1886548769, &v148, off_1E83375F8);
                    }

                    v152 = *(v9 + *(v204.__r_.__value_.__r.__words[0] - 24));
                    v149 = 0;
                    std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(&v154, &v152, &v149);
                    std::ifstream::~ifstream(&v204);
                  }

                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                  }

                  ++v136;
                }
              }

              if (SHIBYTE(v153.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v153.__pn_.__r_.__value_.__l.__data_);
              }

              if ((v155 & 1) == 0)
              {
                v140 = &v181;
                if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v140 = v181.__r_.__value_.__r.__words[0];
                }

                caulk::make_string(&v147, "preprocessor error: cannot find include file '%s'", v130, v140);
                AudioDSPGraph::ThrowException(1886548769, &v147, off_1E8337610);
              }

              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v132 = &v154;
              }

              else
              {
                v132 = v154.__r_.__value_.__r.__words[0];
              }

              std::string::basic_string[abi:ne200100]<0>(&v153, v132);
              AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v204, a2, &v153, 1);
              if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v133 = &v204;
              }

              else
              {
                v133 = v204.__r_.__value_.__r.__words[0];
              }

              if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v134 = HIBYTE(v204.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v134 = v204.__r_.__value_.__l.__size_;
              }

              std::string::append(a1, v133, v134);
              if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v204.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v153.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v153.__pn_.__r_.__value_.__l.__data_);
              }

              if (v155 == 1 && SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v154.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_439;
              }

              v120 = v181.__r_.__value_.__r.__words[0];
LABEL_438:
              operator delete(v120);
              goto LABEL_439;
            }
          }

          else if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) > 2)
          {
            if (v181.__r_.__value_.__s.__data_[0] == 34)
            {
              v122 = &v181;
              goto LABEL_492;
            }

            goto LABEL_497;
          }

          std::string::basic_string[abi:ne200100]<0>(v157, "preprocessor error: empty filename");
          AudioDSPGraph::ThrowException(1886548769, v157, off_1E83375C8);
        }

LABEL_183:
        if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &__s))
        {
          std::string::basic_string[abi:ne200100]<0>(v186, "preprocessor error: expected name");
          AudioDSPGraph::ThrowException(1886548769, v186, off_1E8337100);
        }

        if (AudioDSPGraph::Language::V1::Preprocessor::find(a2, &__s))
        {
          v58 = "1";
        }

        else
        {
          v58 = "0";
        }

        std::string::append(a1, v58, 1uLL);
        goto LABEL_439;
      }

      if (__s != 1701080693 || BYTE4(__s) != 102)
      {
        goto LABEL_355;
      }

      goto LABEL_153;
    }

    v24 = __sz;
    if (__sz <= 4)
    {
      if (__sz == 1)
      {
        v59 = *__s;
        if (v59 == 42)
        {
          goto LABEL_234;
        }

        if (v59 == 43)
        {
LABEL_194:
          v60 = 0;
          memset(&v204, 0, sizeof(v204));
          while (AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
          {
            v61 = AudioDSPGraph::Language::V1::strToLong(&v204, "addition", off_1E8337118);
            v60 = caulk::numeric::exceptional_add<long>(v60, v61);
          }

          std::to_string(&v154, v60);
          if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v79 = &v154;
          }

          else
          {
            v79 = v154.__r_.__value_.__r.__words[0];
          }

          if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v80 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v80 = v154.__r_.__value_.__l.__size_;
          }

LABEL_469:
          std::string::append(a1, v79, v80);
          goto LABEL_434;
        }

        if ((v194 & 0x8000000000000000) == 0)
        {
          goto LABEL_297;
        }
      }

      else
      {
        if (__sz != 3)
        {
LABEL_261:
          if (v24 == 2)
          {
            if (*__s == 29295)
            {
              goto LABEL_267;
            }

            if ((v194 & 0x8000000000000000) == 0)
            {
              goto LABEL_264;
            }

            v24 = __sz;
          }

          if (v24 == 3)
          {
            if (*__s == 28257 && __s[2] == 100)
            {
              goto LABEL_313;
            }

            if ((v194 & 0x8000000000000000) == 0)
            {
              if (HIBYTE(v194) != 1)
              {
                if (HIBYTE(v194) == 2)
                {
                  goto LABEL_136;
                }

                if (HIBYTE(v194) == 3)
                {
                  goto LABEL_49;
                }

                goto LABEL_355;
              }

LABEL_298:
              v37 = __s;
              goto LABEL_299;
            }
          }

          v87 = __sz;
          if (__sz == 3)
          {
            if (*__s == 28526 && __s[2] == 116)
            {
LABEL_328:
              memset(&v204, 0, sizeof(v204));
              if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &v204))
              {
                std::string::basic_string[abi:ne200100]<0>(v185, "preprocessor error: not: expected condition");
                AudioDSPGraph::ThrowException(1886548769, v185, off_1E8337178);
              }

              if (v194 >= 0)
              {
                v100 = &__s;
              }

              else
              {
                v100 = __s;
              }

              if (AudioDSPGraph::Language::V1::strToLong(&v204, v100, off_1E8337190))
              {
                v85 = "0";
              }

              else
              {
                v85 = "1";
              }

LABEL_335:
              std::string::append(a1, v85, 1uLL);
LABEL_436:
              if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_439;
              }

              v120 = v204.__r_.__value_.__r.__words[0];
              goto LABEL_438;
            }

            v87 = __sz;
          }

          if (v87 != 2)
          {
            goto LABEL_323;
          }

          if (*__s == 15677)
          {
            goto LABEL_308;
          }

          if (v194 < 0)
          {
LABEL_323:
            if (__sz != 1)
            {
              goto LABEL_355;
            }

            if (*__s == 45)
            {
              goto LABEL_300;
            }

            if (v194 < 0)
            {
              v99 = __s;
            }

            else
            {
              if (HIBYTE(v194) != 1)
              {
                goto LABEL_355;
              }

              v99 = &__s;
            }

            v37 = *v99;
            goto LABEL_345;
          }

LABEL_297:
          if (HIBYTE(v194) != 1)
          {
            goto LABEL_355;
          }

          goto LABEL_298;
        }

        v27 = __s;
        if (*__s == 25956 && __s[2] == 102)
        {
          goto LABEL_199;
        }

        if (*__s == 25964 && __s[2] == 116)
        {
          goto LABEL_199;
        }
      }

LABEL_260:
      v24 = __sz;
      goto LABEL_261;
    }

    if (__sz != 5)
    {
      if (__sz != 7)
      {
        if (__sz == 10)
        {
          if (*__s == 0x746E756F4374656CLL && *(__s + 4) == 29285)
          {
            goto LABEL_188;
          }

          goto LABEL_355;
        }

        goto LABEL_261;
      }

      if (*__s == 1853189987 && *(__s + 3) == 1919251566)
      {
        goto LABEL_188;
      }

      if (*__s == 1768318308 && *(__s + 3) == 1684369001)
      {
        goto LABEL_183;
      }

      goto LABEL_260;
    }

    if (*__s != 1701080693 || __s[4] != 102)
    {
      goto LABEL_355;
    }

LABEL_153:
    if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v195, &__s))
    {
      std::string::basic_string[abi:ne200100]<0>(v188, "preprocessor error: expected name");
      AudioDSPGraph::ThrowException(1886548769, v188, off_1E83370A0);
    }

    v42 = a2->i64[1];
    if (a2[1].i64[0] == v42)
    {
      v81 = 0;
      goto LABEL_258;
    }

    v143 = a4;
    v43 = v9;
    v44 = a2[2].u64[0];
    v45 = (v42 + 8 * (v44 >> 9));
    v46 = *v45;
    v47 = *v45 + 8 * (v44 & 0x1FF);
    v48 = *(v42 + (((a2[2].i64[1] + v44) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a2[2].i64[1] + v44) & 0x1FF);
    while (1)
    {
      if (v47 == v48)
      {
        v81 = 0;
        goto LABEL_256;
      }

      v49 = *v47;
      v50 = *(*v47 + 31);
      if (v50 >= 0)
      {
        v51 = *(*v47 + 31);
      }

      else
      {
        v51 = *(*v47 + 16);
      }

      v52 = HIBYTE(v194);
      if (v194 < 0)
      {
        v52 = __sz;
      }

      if (v51 == v52)
      {
        v53 = v50 >= 0 ? v49 + 1 : v49[1];
        v54 = v194 >= 0 ? &__s : __s;
        if (!memcmp(v53, v54, v51))
        {
          break;
        }
      }

LABEL_172:
      v47 += 8;
      if (v47 - v46 == 4096)
      {
        v55 = v45[1];
        ++v45;
        v46 = v55;
        v47 = v55;
      }
    }

    if ((*(*v49 + 24))(v49))
    {
      v46 = *v45;
      goto LABEL_172;
    }

    v81 = *v47;
LABEL_256:
    v9 = v43;
    a4 = v143;
LABEL_258:
    AudioDSPGraph::Language::V1::Preprocessor::undef(a2, v81);
LABEL_439:
    if (SHIBYTE(v194) < 0)
    {
      operator delete(__s);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = __p.__r_.__value_.__r.__words[0];
LABEL_443:
      operator delete(v23);
    }

LABEL_444:
    v13 = v199;
LABEL_445:
    v4 = v13;
  }

  while (v13);
LABEL_539:
  AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(v200);
  if (v201)
  {
    v202 = v201;
    operator delete(v201);
  }
}

void sub_1C924599C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (SLOBYTE(STACK[0x4A7]) < 0)
  {
    operator delete(STACK[0x490]);
  }

  if (*(v60 + 23) < 0)
  {
    operator delete(*v60);
  }

  AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(&STACK[0x4E8]);
  v62 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v62;
    operator delete(v62);
  }

  _Unwind_Resume(a1);
}

void std::vector<AudioDSPGraph::Language::V1::Macro const*>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(AudioDSPGraph::Language::V1::UndefineLocals *this)
{
  v2 = *(this + 1);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    AudioDSPGraph::Language::V1::Preprocessor::undef(*this, *v3++);
  }
}

void AudioDSPGraph::Language::V1::Preprocessor::undef(AudioDSPGraph::Language::V1::Preprocessor *this, const AudioDSPGraph::Language::V1::Macro *a2)
{
  if (!a2)
  {
    return;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v4 == v3)
  {
    return;
  }

  v5 = *(this + 4);
  v6 = (v3 + 8 * (v5 >> 9));
  v7 = *v6;
  v8 = (*v6 + 8 * (v5 & 0x1FF));
  v9 = *(v3 + (((*(this + 5) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 5) + v5) & 0x1FF);
  v10 = v6;
  if (v8 == v9)
  {
    goto LABEL_10;
  }

  while (*v8 != a2)
  {
    if ((++v8 - v7) == 4096)
    {
      v11 = *(v10 + 1);
      v10 += 8;
      v7 = v11;
      v8 = v11;
    }

    if (v8 == v9)
    {
      v8 = (*(v3 + (((*(this + 5) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 5) + v5) & 0x1FF));
      break;
    }
  }

  if (v4 == v3)
  {
    if (!v8)
    {
      return;
    }

    v12 = 0;
  }

  else
  {
LABEL_10:
    if ((*(v3 + (((*(this + 5) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 5) + v5) & 0x1FF)) == v8)
    {
      return;
    }

    v12 = (*v6 + 8 * (v5 & 0x1FF));
  }

  if (v8 == v12)
  {
    v13 = *v6;
LABEL_20:
    v16 = (v3 + 8 * (v5 >> 9));
    v18 = v12;
LABEL_21:
    v19 = (v8 - v13) >> 3;
    if (v19 < 0)
    {
      v23 = 510 - v19;
      v21 = &v16[-(v23 >> 9)];
      v22 = (*v21 + 8 * (~v23 & 0x1FF));
    }

    else
    {
      v20 = v19 + 1;
      v21 = &v16[v20 >> 9];
      v22 = (*v21 + 8 * (v20 & 0x1FF));
    }

    if (v16 == v6)
    {
      v24 = v12;
      v25 = v18;
    }

    else
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v13, v18, v21, v22);
      v22 = v53;
      v21 = v52;
      v26 = v16 - 1;
      while (v26 != v6)
      {
        v27 = *v26--;
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v27, v27 + 4096, v21, v22);
        v22 = v53;
        v21 = v52;
      }

      v25 = *v6 + 4096;
      v24 = v12;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v24, v25, v21, v22);
    v28 = *v12;
    *v12 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = vaddq_s64(*(this + 2), xmmword_1C925F430);
    *(this + 2) = v29;
    if (v29.i64[0] >= 0x400uLL)
    {
      operator delete(**(this + 1));
      *(this + 1) += 8;
      *(this + 4) -= 512;
    }

    return;
  }

  v14 = ((v8 - *v10) >> 3) + ((v10 - v6) << 6);
  v13 = *v6;
  v15 = v14 - ((v12 - *v6) >> 3);
  if (v14 == (v12 - *v6) >> 3)
  {
    v8 = v12;
    goto LABEL_20;
  }

  if (v14 < 1)
  {
    v30 = 511 - v14;
    v16 = &v6[-(v30 >> 9)];
    v13 = *v16;
    v17 = ~v30 & 0x1FFLL;
  }

  else
  {
    v16 = &v6[v14 >> 9];
    v13 = *v16;
    v17 = v14 & 0x1FF;
  }

  v18 = (v13 + 8 * v17);
  v31 = *(this + 5);
  if (v15 <= (v31 - 1) >> 1)
  {
    v8 = v18;
    goto LABEL_21;
  }

  v32 = (v18 - v13) >> 3;
  if (v32 < 0)
  {
    v35 = 510 - v32;
    v33 = ~v35;
    v34 = &v16[-(v35 >> 9)];
  }

  else
  {
    v33 = v32 + 1;
    v34 = &v16[(v32 + 1) >> 9];
  }

  v36 = &(*v34)[v33 & 0x1FF];
  v37 = v5 + v31;
  v38 = (v3 + 8 * (v37 >> 9));
  if (v4 == v3)
  {
    v39 = 0;
  }

  else
  {
    v39 = &(*v38)[v37 & 0x1FF];
  }

  if (v34 == v38)
  {
    v44 = v39;
    v40 = v16;
    v41 = v18;
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v36, *v34 + 512, v16, v18);
    v41 = v53;
    v40 = v52;
    v42 = v34 + 1;
    while (v42 != v38)
    {
      v43 = *v42++;
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v43, v43 + 512, v40, v41);
      v41 = v53;
      v40 = v52;
    }

    v36 = *v38;
    v44 = v39;
  }

  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v36, v44, v40, v41);
  v45 = *v53;
  *v53 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v47 = *(this + 1);
  v46 = *(this + 2);
  if (v46 == v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = ((v46 - v47) << 6) - 1;
  }

  v49 = *(this + 4);
  v50 = *(this + 5) - 1;
  *(this + 5) = v50;
  if ((v48 - (v50 + v49)) >= 0x400)
  {
    operator delete(*(v46 - 8));
    *(this + 2) -= 8;
  }
}

uint64_t **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(uint64_t **result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a4;
  v7 = a2;
  v8 = result;
  if (a2 == a3)
  {
    v14 = a2;
    goto LABEL_17;
  }

  v10 = *a4;
  while (1)
  {
    v11 = v10 - a5 + 4096;
    v12 = a3 - v7 >= v11 >> 3 ? v11 >> 3 : a3 - v7;
    if (v12)
    {
      break;
    }

LABEL_13:
    v16 = v6[1];
    ++v6;
    v10 = v16;
    a5 = v16;
  }

  v13 = 8 * v12;
  v14 = &v7[v12];
  do
  {
    v15 = *v7;
    *v7 = 0;
    result = *a5;
    *a5 = v15;
    if (result)
    {
      result = ((*result)[1])(result);
    }

    ++v7;
    ++a5;
    v13 -= 8;
  }

  while (v13);
  if (v14 != a3)
  {
    v7 = v14;
    goto LABEL_13;
  }

  if ((*v6 + 4096) == a5)
  {
    v17 = v6[1];
    ++v6;
    a5 = v17;
  }

LABEL_17:
  *v8 = v14;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

uint64_t *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(uint64_t *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - v10;
      if ((v11 - a2) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a2) >> 3;
      }

      if (v13)
      {
        v14 = -8 * v13;
        v15 = (v11 - 8);
        do
        {
          v16 = *v15;
          *v15 = 0;
          v17 = *--a5;
          result = v17;
          *a5 = v16;
          if (v17)
          {
            result = (*(*result + 8))(result);
          }

          --v15;
          v14 += 8;
        }

        while (v14);
      }

      v11 -= 8 * v13;
      if (v11 == a2)
      {
        break;
      }

      v18 = *--v6;
      v10 = v18;
      a5 = (v18 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v19 = v6[1];
      ++v6;
      a5 = v19;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void AudioDSPGraph::Language::V1::ArgMacro::~ArgMacro(void **this)
{
  *this = &unk_1F48D2398;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  AudioDSPGraph::Language::V1::Macro::~Macro(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D2398;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  AudioDSPGraph::Language::V1::Macro::~Macro(this);
}

void AudioDSPGraph::Language::V1::Macro::~Macro(void **this)
{
  *this = &unk_1F48D2368;
  v2 = this + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(std::string::value_type **a1, char a2, std::string::value_type a3, std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v8 = **a1;
  if (!v8)
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(v12, "preprocessor error: expected closing brace");
    AudioDSPGraph::ThrowException(1886548769, v12, off_1E8336FB0);
  }

  v9 = *a1 + 1;
  v10 = 1;
  while (1)
  {
    if (v8 != a3)
    {
      if (v8 == a2)
      {
        ++v10;
      }

      goto LABEL_11;
    }

    if (!--v10)
    {
      break;
    }

    v8 = a3;
LABEL_11:
    std::string::push_back(this, v8);
    v11 = *v9++;
    v8 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  *a1 = v9;
}

void sub_1C9246A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Language::V1::Preprocessor::parseToken(AudioDSPGraph::Language::V1 *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::skipspace(a1, a2);
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = AudioDSPGraph::Language::V1::endOfWord(**a1);
  if (!v4)
  {
    for (i = *a1; ; ++i)
    {
      v6 = *i;
      if (AudioDSPGraph::Language::V1::endOfWord(*i))
      {
        break;
      }

      std::string::push_back(a2, v6);
    }

    *a1 = i;
  }

  return !v4;
}

uint64_t AudioDSPGraph::Language::V1::Preprocessor::find(void *a1, const void **a2)
{
  v2 = a1[1];
  if (a1[2] == v2)
  {
    return 0;
  }

  v3 = a1[4];
  v4 = (v2 + 8 * (v3 >> 9));
  v5 = *v4;
  v6 = *v4 + 8 * (v3 & 0x1FF);
  v7 = *(v2 + (((a1[5] + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v3) & 0x1FF);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  if (v8 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  while (1)
  {
    v11 = *v6;
    v12 = *(*v6 + 31);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(*v6 + 16);
    }

    if (v12 == v9)
    {
      v14 = v13 >= 0 ? (v11 + 8) : *(v11 + 8);
      if (!memcmp(v14, v10, v9))
      {
        break;
      }
    }

    v6 += 8;
    if (v6 - v5 == 4096)
    {
      v15 = v4[1];
      ++v4;
      v5 = v15;
      v6 = v15;
    }

    if (v6 == v7)
    {
      return 0;
    }
  }

  return v11;
}

BOOL AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(void *a1, AudioDSPGraph::Language::V1 *a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(a2, a3) || (AudioDSPGraph::Language::V1::Preprocessor::parseString(a2, a3) & 1) != 0)
  {
    return 1;
  }

  AudioDSPGraph::Language::V1::skipspace(a2, v6);
  if (**a2 == 40)
  {
    ++*a2;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(a2, 40, 41, a3);
    v8 = (a3 + 8);
    if (*(a3 + 23) >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = *(a3 + 8);
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v9 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    p_p->__r_.__value_.__s.__data_[0] = 40;
    v11 = &p_p->__r_.__value_.__l.__data_ + 1;
    if (v9)
    {
      if (*(a3 + 23) >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      memmove(v11, v12, v9);
    }

    *(v11 + v9) = 0;
    std::string::push_back(&__p, 41);
    v18[0] = __p.__r_.__value_.__l.__size_;
    v13 = __p.__r_.__value_.__r.__words[0];
    *(v18 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    memset(&__p, 0, sizeof(__p));
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
      v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *a3 = v13;
      *v8 = v18[0];
      *(a3 + 15) = *(v18 + 7);
      *(a3 + 23) = v14;
      if (v16 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a3 = v13;
      *v8 = v18[0];
      *(a3 + 15) = *(v18 + 7);
      *(a3 + 23) = v14;
    }

    return 1;
  }

  AudioDSPGraph::Language::V1::skipspace(a2, v7);
  if (**a2 == 123)
  {
    ++*a2;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(a2, 123, 125, a3);
    return 1;
  }

  return AudioDSPGraph::Language::V1::Preprocessor::parseMacroCall(a1, a2, a3);
}

void sub_1C9246E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::strToLong(uint64_t *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  if (*(a1 + 23) < 0)
  {
    if (a1[1])
    {
      __endptr = 0;
      a1 = *a1;
      goto LABEL_6;
    }

LABEL_13:
    caulk::make_string(&v14, "empty %s argument", a2, a2);
    AudioDSPGraph::ThrowException(1886548769, &v14, a3);
  }

  if (!*(a1 + 23))
  {
    goto LABEL_13;
  }

  __endptr = 0;
LABEL_6:
  v7 = strtol(a1, &__endptr, 10);
  if ((v7 - 0x7FFFFFFFFFFFFFFFLL) <= 1 && *__error())
  {
    if (*(v5 + 23) >= 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = *v5;
    }

    caulk::make_string(&v12, "out-of-range %s argument: %s", v6, a2, v10);
    AudioDSPGraph::ThrowException(1886548769, &v12, a3);
  }

  v8 = *(v5 + 23);
  if (v8 < 0)
  {
    if (__endptr != (*v5 + v5[1]))
    {
      v5 = *v5;
      goto LABEL_19;
    }
  }

  else if (__endptr != v5 + v8)
  {
LABEL_19:
    caulk::make_string(&v11, "non-numerical characters in %s argument: %s", v6, a2, v5);
    AudioDSPGraph::ThrowException(1886548769, &v11, a3);
  }

  return v7;
}

void sub_1C9246F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::numeric::exceptional_add<long>(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  return result;
}

uint64_t caulk::numeric::exceptional_mul<long>(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
  }

  return result;
}

uint64_t caulk::numeric::exceptional_sub<long>(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic subtraction overflow");
  }

  return result;
}

uint64_t AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(AudioDSPGraph::Language::V1::Preprocessor *this, const char **a2)
{
  memset(&__p, 0, sizeof(__p));
  if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(this, &__p) || (AudioDSPGraph::Language::V1::Preprocessor::parseString(this, &__p) & 1) != 0)
  {
    goto LABEL_9;
  }

  AudioDSPGraph::Language::V1::skipspace(this, v3);
  v5 = *this;
  if (**this == 40)
  {
    v6 = 41;
    v7 = 40;
LABEL_8:
    *this = v5 + 1;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(this, v7, v6, &__p);
LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  AudioDSPGraph::Language::V1::skipspace(this, v4);
  v5 = *this;
  if (**this == 123 || (AudioDSPGraph::Language::V1::skipspace(this, v8), v5 = *this, **this == 91))
  {
    v6 = 125;
    v7 = 123;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1C92471F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Preprocessor::parseString(AudioDSPGraph::Language::V1 *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::skipspace(a1, a2);
  if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(a1, a2))
  {
    return 1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (**a1 == 34)
  {
    std::string::push_back(a2, 34);
    v4 = *a1 - 1;
    do
    {
      v5 = *(v4 + 2);
      if (v5 == 10 || v5 == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v9, "unterminated string");
        AudioDSPGraph::ThrowException(1886548769, v9, off_1E8337010);
      }

      v7 = v5;
      std::string::push_back(a2, v5);
      ++v4;
    }

    while (v7 != 34);
    *a1 = v4 + 2;
    return 1;
  }

  return 0;
}

void sub_1C924730C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_1C9247374(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v3 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v4 = *(MEMORY[0x1E69E54C8] + 16);
  v5 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  a1[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, a1 + 2);
  v7 = MEMORY[0x1E69E5528] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  a1[53] = v3;
  MEMORY[0x1CCA846F0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C9247550(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1CCA849E0](v1);
  _Unwind_Resume(a1);
}

std::string *std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(std::string *this, void **a2, void **a3)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  v6 = *a2;
  v7 = *a3;
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  while (!v6)
  {
    v8 = 1;
    if (!v7)
    {
      goto LABEL_21;
    }

LABEL_15:
    if (v7[3] == v7[4])
    {
      if ((*(*v7 + 72))(v7) == -1)
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        goto LABEL_29;
      }
    }

    else if (!v8)
    {
      goto LABEL_29;
    }

LABEL_23:
    v10 = v6[3];
    if (v10 == v6[4])
    {
      v11 = (*(*v6 + 72))(v6);
    }

    else
    {
      v11 = *v10;
    }

    std::string::push_back(this, v11);
    v12 = v6[3];
    if (v12 == v6[4])
    {
      (*(*v6 + 80))(v6);
    }

    else
    {
      v6[3] = v12 + 1;
    }
  }

  if (v6[3] != v6[4])
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v9 = (*(*v6 + 72))(v6);
  v8 = v9 == -1;
  if (v9 == -1)
  {
    v6 = 0;
  }

  if (v7)
  {
    goto LABEL_15;
  }

LABEL_21:
  if (!v8)
  {
    v7 = 0;
    goto LABEL_23;
  }

LABEL_29:
  this[1].__r_.__value_.__s.__data_[0] = 1;
  return this;
}

void sub_1C9247734(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1CCA84700](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1CCA849E0](a1 + 53);
  return a1;
}

std::string *std::__fs::filesystem::operator/[abi:ne200100](std::string *this, uint64_t a2, std::__fs::filesystem::path *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(a3).__size_)
  {
    return std::string::operator=(this, &a3->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v6 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(this, v7, size);
}

void sub_1C92478D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t a2)
{
  a1[59] = 0;
  v3 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v4 = *(MEMORY[0x1E69E54C8] + 16);
  v5 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  a1[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, a1 + 2);
  v7 = MEMORY[0x1E69E5528] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  a1[53] = v3;
  MEMORY[0x1CCA846F0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C9247A70(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1CCA849E0](v1);
  _Unwind_Resume(a1);
}

BOOL AudioDSPGraph::Language::V1::Preprocessor::parseActualArg(void *a1, AudioDSPGraph::Language::V1 *a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(a2, a3) || (AudioDSPGraph::Language::V1::Preprocessor::parseString(a2, a3) & 1) != 0)
  {
    return 1;
  }

  AudioDSPGraph::Language::V1::skipspace(a2, v6);
  if (**a2 == 40)
  {
    ++*a2;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(a2, 40, 41, a3);
    std::operator+<char>();
    v8 = std::string::append(&__p, ")", 1uLL);
    v9 = v8->__r_.__value_.__r.__words[0];
    v14[0] = v8->__r_.__value_.__l.__size_;
    *(v14 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v11 = v14[0];
    *a3 = v9;
    *(a3 + 8) = v11;
    *(a3 + 15) = *(v14 + 7);
    *(a3 + 23) = v10;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 1;
  }

  AudioDSPGraph::Language::V1::skipspace(a2, v7);
  if (**a2 == 123)
  {
    ++*a2;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(a2, 123, 125, a3);
    return 1;
  }

  return AudioDSPGraph::Language::V1::Preprocessor::parseMacroCall(a1, a2, a3);
}

void sub_1C9247C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::emplace_back<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t AudioDSPGraph::Language::V1::skipspace(AudioDSPGraph::Language::V1 *this, const char **a2)
{
  v3 = *this;
  v4 = MEMORY[0x1E69E9830];
  do
  {
    v5 = *v3;
    if ((v5 & 0x80000000) != 0)
    {
      result = __maskrune(*v3, 0x4000uLL);
      if (result)
      {
LABEL_4:
        v3 = (*this + 1);
        *this = v3;
        continue;
      }
    }

    else
    {
      result = *(v4 + 4 * v5 + 60) & 0x4000;
      if (result)
      {
        goto LABEL_4;
      }
    }

    if (v5 != 59)
    {
      return result;
    }

    v3 = *this;
    do
    {
      v7 = *v3;
      if (!*v3)
      {
        break;
      }

      *this = ++v3;
    }

    while (v7 != 10);
  }

  while (result);
  return result;
}

BOOL AudioDSPGraph::Language::V1::Preprocessor::parseMacroCall(void *a1, const char **a2, uint64_t a3)
{
  v28 = *a2;
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  AudioDSPGraph::Language::V1::skipspace(&v28, a2);
  v6 = *v28;
  if (v6 == 91)
  {
    v27 = 0;
    ++v28;
    v26[0] = 0;
    v26[1] = 0;
    if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v28, v26))
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "preprocessor error: expected macro name");
      AudioDSPGraph::ThrowException(1886548769, v25, off_1E8336FC8);
    }

    __p[0] = 0;
    __p[1] = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (AudioDSPGraph::Language::V1::Preprocessor::parseActualArg(a1, &v28, __p))
    {
      v8 = v21;
      if (v21 >= v22)
      {
        v10 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v20, __p);
      }

      else
      {
        if (SHIBYTE(v24) < 0)
        {
          std::string::__init_copy_ctor_external(v21, __p[0], __p[1]);
        }

        else
        {
          v9 = *__p;
          v21->__r_.__value_.__r.__words[2] = v24;
          *&v8->__r_.__value_.__l.__data_ = v9;
        }

        v10 = v8 + 1;
      }

      v21 = v10;
    }

    AudioDSPGraph::Language::V1::skipspace(&v28, v7);
    v11 = v28;
    if (*v28 != 93)
    {
      std::string::basic_string[abi:ne200100]<0>(v19, "preprocessor error: expected closing brace");
      AudioDSPGraph::ThrowException(1886548769, v19, off_1E8336FE0);
    }

    v12 = AudioDSPGraph::Language::V1::Preprocessor::find(a1, v26);
    if (!v12)
    {
      if (v27 >= 0)
      {
        v15 = v26;
      }

      else
      {
        v15 = v26[0];
      }

      caulk::make_string(&v18, "preprocessor error: macro %s not found.", v13, v15);
      AudioDSPGraph::ThrowException(1852204065, &v18, off_1E8336FF8);
    }

    *a2 = v11 + 1;
    (*(*v12 + 16))(&v16);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v16;
    *(a3 + 16) = v17;
    *&v16 = &v20;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  return v6 == 91;
}

void sub_1C9247FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  a11 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::Language::V1::CounterMacro::apply@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  std::to_string(a3, *(a1 + 56));
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    result = caulk::numeric::exceptional_add<long>(*(a1 + 56), *(a1 + 64));
  }

  else
  {
    if (v6 - v5 != 24)
    {
      std::string::basic_string[abi:ne200100]<0>(v9, "too many arguments to counter");
      AudioDSPGraph::ThrowException(1886548769, v9, off_1E8337688);
    }

    v7 = AudioDSPGraph::Language::V1::strToLong(v5, "counter step", off_1E8337670);
    result = caulk::numeric::exceptional_add<long>(*(a1 + 56), v7);
  }

  *(a1 + 56) = result;
  return result;
}

void sub_1C924810C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::CounterMacro::~CounterMacro(void **this)
{
  AudioDSPGraph::Language::V1::Macro::~Macro(this);

  JUMPOUT(0x1CCA84AE0);
}

BOOL AudioDSPGraph::Language::V1::endOfWord(unsigned int this)
{
  if (!this)
  {
    return 1;
  }

  if (this <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * this + 60) & 0x4000) != 0)
    {
      return 1;
    }
  }

  else if (__maskrune(this, 0x4000uLL))
  {
    return 1;
  }
}

void AudioDSPGraph::Language::V1::StringSubMacro::~StringSubMacro(void **this)
{
  *this = &unk_1F48D2398;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  AudioDSPGraph::Language::V1::Macro::~Macro(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D2398;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  AudioDSPGraph::Language::V1::Macro::~Macro(this);
}

void AudioDSPGraph::Boxes::RingBufferBox::uninitialize(AudioDSPGraph::Boxes::RingBufferBox *this)
{
  AudioDSPGraph::Box::uninitialize(this);

  AudioDSPGraph::SimpleABL::free((this + 800));
}

void AudioDSPGraph::Boxes::RingBufferBox::initialize(AudioDSPGraph::Boxes::RingBufferBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = (*(*this + 664))(this);
  v3 = (*(*this + 632))(this);
  v4 = *(this + 191);
  if (v2)
  {
    v2 = *(this + 192);
  }

  v5 = (*(*this + 640))(this);
  v6 = (*(*this + 624))(this);
  if (v2 > v4)
  {
    caulk::make_string(&v13, "numZeroes is greater than buffer capacity %u > %u", v7, v2, v4);
    AudioDSPGraph::ThrowException(1919837985, &v13, off_1E8337BE0);
  }

  v8 = v6;
  *(this + 204) = v4;
  v9 = v4 + 1;
  if (v4 == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  *(this + 205) = v9;
  *(this + 206) = v5;
  *(this + 828) = 0;
  *(this + 209) = 0;
  v10 = caulk::numeric::exceptional_mul<unsigned int>(v9, v5);
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v3;
  }

  AudioDSPGraph::SimpleABL::alloc((this + 800), v11, v10, 0);
  if (v2)
  {

    AudioDSPGraph::RingBuffer::initialize((this + 800), v2);
  }
}

uint64_t AudioDSPGraph::Boxes::RingBufferBox::configureFromDryRun(AudioDSPGraph::Boxes::RingBufferBox *this)
{
  v2 = *(this + 98);
  v3 = v2 * (*(*this + 648))(this);
  v4 = *(*(this + 2) + 848);
  v5 = (*(*this + 656))(this);
  v6 = (v4 * v5 + ~v3) / (v4 * v5);
  if (v6 <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (HIDWORD(v6))
  {
    LODWORD(v6) = v7;
  }

  *(this + 192) = v6;
  v8 = *(this + 99) - *(this + 98);
  v9 = (*(*this + 648))(this);
  v10 = *(*(this + 2) + 848);
  result = (*(*this + 656))(this);
  v12 = (v10 * result + v8 * v9 - 1) / (v10 * result);
  if (v12 <= 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (HIDWORD(v12))
  {
    LODWORD(v12) = v13;
  }

  *(this + 191) = v12;
  return result;
}

uint64_t AudioDSPGraph::Boxes::SingleRateLPCMConverterBox::uninitialize(AudioDSPGraph::Boxes::SingleRateLPCMConverterBox *this)
{
  v2 = *(this + 96);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  return AudioDSPGraph::Box::uninitialize(this);
}

uint64_t AudioDSPGraph::Boxes::SingleRateLPCMConverterBox::initialize(AudioConverterRef *this)
{
  AudioDSPGraph::Box::initialize(this);
  v3 = this[9];
  v4 = this[10];
  if (((v4 - v3) & 0x1FFFFFFFE0) != 0x20 || (v5 = this[12], v6 = this[13], ((v6 - v5) & 0x1FFFFFFFE0) != 0x20))
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "SingleRateLPCMConverterBox only supports 1 bus in 1 bus out");
    AudioDSPGraph::ThrowException(1718449215, v20, off_1E83376A0);
  }

  if (v4 == v3)
  {
    v10 = this + 5;
    if (*(this + 63) < 0)
    {
      v10 = *v10;
    }

    caulk::make_string(&v21, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v2, v10, (v4 - v3) >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v21, off_1E8337C60);
  }

  v7 = *(*(v3 + 2) + 120);
  if (v7->mFormatID != 1819304813)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "SingleRateLPCMConverterBox input format must be LPCM");
    AudioDSPGraph::ThrowException(1718449215, v19, off_1E83376B8);
  }

  if (!v7->mChannelsPerFrame)
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "SingleRateLPCMConverterBox input must have a non-zero number of channels");
    AudioDSPGraph::ThrowException(1718449215, v18, off_1E83376D0);
  }

  if (v6 == v5)
  {
    v11 = (v6 - v5) >> 5;
    v12 = this + 5;
    if (*(this + 63) < 0)
    {
      v12 = *v12;
    }

    caulk::make_string(&v21, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v12, v11, 0);
    AudioDSPGraph::ThrowException(1919837985, &v21, off_1E8337C78);
  }

  v8 = *(*(v5 + 2) + 120);
  if (v8->mFormatID != 1819304813)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "SingleRateLPCMConverterBox output format must be non-interleaved float");
    AudioDSPGraph::ThrowException(1718449215, v17, off_1E83376E8);
  }

  if (!v8->mChannelsPerFrame)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "SingleRateLPCMConverterBox output must have a non-zero number of channels");
    AudioDSPGraph::ThrowException(1718449215, v16, off_1E8337700);
  }

  if (v7->mSampleRate != v8->mSampleRate)
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "SingleRateLPCMConverterBox input and output sample rates must match");
    AudioDSPGraph::ThrowException(1718449215, v15, off_1E8337718);
  }

  result = AudioConverterNew(v7, v8, this + 96);
  if (result)
  {
    v13 = result;
    std::string::basic_string[abi:ne200100]<0>(v14, "Error in AudioConverterNew");
    AudioDSPGraph::ThrowException(v13, v14, off_1E8337730);
  }

  return result;
}

void sub_1C9248990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::SingleRateLPCMConverterBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.28814877e248;
  *a1 = xmmword_1C925F390;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::SingleRateLPCMConverterBox::~SingleRateLPCMConverterBox(AudioDSPGraph::Boxes::SingleRateLPCMConverterBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Boxes::FCBox::isNoOp(AudioDSPGraph::Boxes::FCBox *this, const char *a2)
{
  v3 = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this, a2);
  if (v3 != AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this, v4))
  {
    return 0;
  }

  v6 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this, v5);
  if (v6 != AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this, v7))
  {
    return 0;
  }

  v9 = *(this + 9);
  if (*(this + 10) == v9)
  {
    v20 = (this + 40);
    if (*(this + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string(&v22, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v8, v20, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v22, off_1E8337898);
  }

  v10 = *(*(v9 + 16) + 120);
  v11 = *(v10 + 8);
  v14 = v11 != 1718773105 && v11 != 1819304813 && *(v10 + 16) != 0;
  v15 = *(this + 12);
  if (*(this + 13) == v15)
  {
    v21 = (this + 40);
    if (*(this + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string(&v22, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v8, v21, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v22, off_1E83378B0);
  }

  v16 = *(*(v15 + 16) + 120);
  v17 = *(v16 + 8);
  v19 = v17 != 1718773105 && v17 != 1819304813 && *(v16 + 16) != 0;
  return v14 ^ v19 ^ 1u;
}

void sub_1C9248C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(AudioDSPGraph::Boxes::FCBox *this, const char *a2)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E8337898);
  }

  return **(*(v2 + 16) + 120);
}

void sub_1C9248CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(AudioDSPGraph::Boxes::FCBox *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E83378B0);
  }

  return **(*(v2 + 16) + 120);
}

void sub_1C9248D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(AudioDSPGraph::Boxes::FCBox *this, const char *a2)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E8337898);
  }

  return *(*(*(v2 + 16) + 120) + 40);
}

void sub_1C9248E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(AudioDSPGraph::Boxes::FCBox *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E83378B0);
  }

  return *(*(*(v2 + 16) + 120) + 40);
}

void sub_1C9248EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::copyOutput(AudioDSPGraph::Boxes::FCBox *this, const char *a2)
{
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v24 = (this + 40);
    if (*(this + 63) < 0)
    {
      v24 = *v24;
    }

    caulk::make_string(&v27, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v24, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v27, off_1E8337C78);
  }

  v4 = a2;
  v5 = *(v3 + 16);
  v6 = *(*(v5 + 120) + 20);
  v7 = *(v5 + 56);
  *(v7 + 18) = 0;
  AudioDSPGraph::Buffer::setByteSize(v7, *(v7 + 25));
  v12 = *(this + 12);
  if (*(this + 13) == v12)
  {
    v25 = (this + 40);
    if (*(this + 63) < 0)
    {
      v25 = *v25;
    }

    caulk::make_string(&v27, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v8, v25, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v27, off_1E8337C78);
  }

  result = AudioDSPGraph::RingBuffer::read((this + 800), v4 / v6, (*(*(v12 + 16) + 56) + 80), v9, v10, v11);
  v15 = *(this + 12);
  if (*(this + 13) == v15)
  {
    v26 = (this + 40);
    if (*(this + 63) < 0)
    {
      v26 = *v26;
    }

    caulk::make_string(&v27, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v14, v26, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v27, off_1E8337C78);
  }

  v16 = *(*(v15 + 16) + 56);
  *(v16 + 64) = 1;
  v17 = *(*(this + 106) + 256);
  *(v16 + 8) = v17;
  if (*(this + 856) == 1)
  {
    *(v16 + 64) = 3;
    v18 = v17 / AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this, v14);
    v19 = *(this + 109);
    result = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this, v20);
    *(v16 + 16) = *(this + 108) + llround((v18 - v19 / result) * 24000000.0);
  }

  v22 = *(this + 26);
  v21 = *(this + 27);
  while (v22 != v21)
  {
    v23 = *v22++;
    result = AudioDSPGraph::FileRecorder::record(v23);
  }

  return result;
}

void sub_1C92490D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::ringBufferFramesPerPacket(AudioDSPGraph::Boxes::FCBox *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E83378B0);
  }

  return *(*(*(v2 + 16) + 120) + 20);
}

void sub_1C924917C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::bytesPerPacket(AudioDSPGraph::Boxes::FCBox *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E83378B0);
  }

  return *(*(*(v2 + 16) + 120) + 16);
}

void sub_1C9249220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::numChannels(AudioDSPGraph::Boxes::FCBox *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E83378B0);
  }

  return *(*(*(v2 + 16) + 120) + 28);
}

void sub_1C92492C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::FCBox::doProcess(AudioDSPGraph::Boxes::FCBox *this, uint64_t a2)
{
  if (atomic_fetch_or(this + 190, 0x80000000))
  {
    v4 = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::read(this + 672);
    (*(*this + 464))(this);
    (*(*this + 472))(this);
    if (v4)
    {
      v5 = *(v4 + 8);
      v6 = *(v4 + 16);
      while (v5 != v6)
      {
        if (*v5)
        {
          (*(**v5 + 16))(*v5, this, a2);
        }

        v5 += 2;
      }
    }

    (*(*this + 456))(this, a2);
    if ((*(*this + 680))(this))
    {
      v7 = *(this + 26);
      v8 = *(this + 27);
      while (v7 != v8)
      {
        AudioDSPGraph::FileRecorder::record(*v7++);
      }
    }

    v9 = *(this + 29);
    v10 = *(this + 30);
    while (v9 != v10)
    {
      AudioDSPGraph::FileInjector::inject(*v9++, a2);
    }

    if (v4)
    {
      v12 = *(v4 + 8);
      v11 = *(v4 + 16);
      while (v12 != v11)
      {
        if (*v12)
        {
          (*(**v12 + 24))(*v12, this, a2);
        }

        v12 += 2;
      }
    }
  }

  else
  {
    (*(*this + 456))(this, a2);
  }

  atomic_fetch_and(this + 190, 0x7FFFFFFFu);
}

void *AudioDSPGraph::Boxes::FCBox::isogroup(AudioDSPGraph::Box *a1, uint64_t *a2, float *a3)
{
  if ((*(*a1 + 680))(a1))
  {

    return AudioDSPGraph::Box::isogroup(a1, a2, a3);
  }

  else
  {
    result = std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::find<AudioDSPGraph::Box *>(*a2, a2[1], a1);
    if (!result)
    {
      v8 = a1;
      std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box *>(a2, a1, &v8);
      AudioDSPGraph::IsoGroup::add(a3, a1);
      v8 = a1;
      std::__hash_table<AudioDSPGraph::Boxes::FCBox *,std::hash<AudioDSPGraph::Boxes::FCBox *>,std::equal_to<AudioDSPGraph::Boxes::FCBox *>,std::allocator<AudioDSPGraph::Boxes::FCBox *>>::__emplace_unique_key_args<AudioDSPGraph::Boxes::FCBox *,AudioDSPGraph::Boxes::FCBox * const&>(a3 + 34, a1, &v8);
      *(a1 + 105) = a3;
      v7 = *(*a1 + 408);

      return v7(a1, a2, a3);
    }
  }

  return result;
}

AudioDSPGraph::Boxes::FCBox *AudioDSPGraph::Boxes::FCBox::asOperativeFCBox(AudioDSPGraph::Boxes::FCBox *this)
{
  if ((*(*this + 680))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

void AudioDSPGraph::Boxes::SRCBox::reset(AudioDSPGraph::Boxes::SRCBox *this)
{
  AudioDSPGraph::Boxes::RingBufferBox::reset(this);
  if (*(this + 888) == 1)
  {
    AudioSampleRateConverterReset();
  }
}

void AudioDSPGraph::Boxes::SRCBox::uninitialize(AudioDSPGraph::Boxes::SRCBox *this)
{
  AudioDSPGraph::Box::uninitialize(this);
  AudioDSPGraph::SimpleABL::free((this + 904));
  if (*(this + 888) == 1)
  {
    AudioSampleRateConverterDispose();
    *(this + 888) = 0;
  }
}

void AudioDSPGraph::Boxes::SRCBox::initialize(AudioDSPGraph::Boxes::SRCBox *this)
{
  v50 = *MEMORY[0x1E69E9840];
  AudioDSPGraph::Boxes::RingBufferBox::initialize(this);
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v24 = (this + 40);
    if (*(this + 63) < 0)
    {
      v24 = *v24;
    }

    caulk::make_string(&v45, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v24, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v45, off_1E8337C78);
  }

  v4 = *(*(*(v3 + 16) + 120) + 28);
  v5 = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this, v2);
  v7 = AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this, v6);
  v9 = *(this + 9);
  if (*(this + 10) == v9)
  {
    v25 = (this + 40);
    if (*(this + 63) < 0)
    {
      v25 = *v25;
    }

    caulk::make_string(&v45, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v8, v25, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v45, off_1E8337C60);
  }

  if (*(*(*(v9 + 16) + 120) + 28) != v4)
  {
    std::string::basic_string[abi:ne200100]<0>(v38, "input and output channel counts don't match");
    AudioDSPGraph::ThrowException(1667788321, v38, off_1E8337748);
  }

  v10 = v5;
  v11 = v7;
  v12 = *(this + 224);
  if (v12 == 1852797549)
  {
    CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(&v45, 0);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D980], v4);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D978], v5);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D988], v11);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D960], *(this + 224));
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D998], *(this + 225));
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D970], 0.0);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D990], 2);
    size = v45.__r_.__value_.__l.__size_;
    LOBYTE(valuePtr[0]) = 0;
    v17 = CFNumberCreate(0, kCFNumberCharType, valuePtr);
    v40 = v17;
    if (!v17)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    CFDictionarySetValue(size, *MEMORY[0x1E698D968], v17);
    CFRelease(v17);
    CA::AudioSampleRateConverterBuilder::Build(&v40);
    if ((v41 & 1) == 0)
    {
      v32 = v40;
      v33 = (this + 40);
      if (*(this + 63) < 0)
      {
        v33 = *v33;
      }

      caulk::make_string(&v36, "failed to build %s sample rate converter", v18, v33);
      AudioDSPGraph::ThrowException(v32, &v36, off_1E8337778);
    }

    if (*(this + 888) == 1)
    {
      v19 = *(this + 110);
      v20 = v40;
    }

    else
    {
      v19 = 0;
      v20 = v40;
      *(this + 888) = 1;
    }

    *(this + 110) = v20;
    v40 = v19;
    AudioSampleRateConverterDispose();
  }

  else
  {
    if (v12 != 1835626096)
    {
      v26 = (this + 40);
      if (*(this + 63) < 0)
      {
        v26 = *v26;
      }

      caulk::string_from_4cc(&v34, v12);
      v27 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      v28 = v34.__r_.__value_.__r.__words[0];
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v34;
      }

      else
      {
        v27 = v34.__r_.__value_.__l.__size_;
      }

      v43 = v27;
      v44 = 428;
      valuePtr[2] = 428;
      v40 = v26;
      v42 = v28;
      v45.__r_.__value_.__r.__words[0] = v48;
      *&v45.__r_.__value_.__r.__words[1] = xmmword_1C925F110;
      v46 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v47 = 0;
      __p = v48;
      valuePtr[0] = 2;
      valuePtr[1] = &v40;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v45, "failed to build {} sample rate converter with unsupported algorithm {}", 72, valuePtr);
      std::string::basic_string<std::string_view,0>(__dst, __p, v45.__r_.__value_.__r.__words[2]);
      if (__p != v48)
      {
        operator delete(__p);
      }

      AudioDSPGraph::ThrowException(1869640255, __dst, off_1E8337790);
    }

    CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(&v45, 1);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D948], v4);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D938], v5);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D950], v11);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D958], *(this + 225));
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v45.__r_.__value_.__l.__size_, *MEMORY[0x1E698D940], 0.0);
    CA::AudioSampleRateConverterBuilder::Build(&v40);
    if ((v41 & 1) == 0)
    {
      v29 = v40;
      v30 = (this + 40);
      if (*(this + 63) < 0)
      {
        v30 = *v30;
      }

      caulk::make_string(&v37, "failed to build %s sample rate converter", v13, v30);
      AudioDSPGraph::ThrowException(v29, &v37, off_1E8337760);
    }

    if (*(this + 888) == 1)
    {
      v14 = *(this + 110);
      v15 = v40;
    }

    else
    {
      v14 = 0;
      v15 = v40;
      *(this + 888) = 1;
    }

    *(this + 110) = v15;
    v40 = v14;
    AudioSampleRateConverterDispose();
  }

  CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(&v45);
  v21 = *(this + 3);
  v22 = *(v21 + 268);
  if (v22 == 1)
  {
    v22 = *(v21 + 272);
  }

  v23 = vcvtpd_u64_f64(v11 * v22 / v10);
  *(this + 230) = v23;
  AudioDSPGraph::SimpleABL::alloc((this + 904), v4, 4 * v23, 0);
}

void sub_1C9249D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v7 = 0;
    memset(v10, 0, sizeof(v10));
    v5 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v8 = 134217984;
    v9 = 0;
    _os_log_send_and_compose_impl(v6, &v7, v10, 80, &dword_1C91AE000, v5, 16, "assertion failure: theAttributes != nullptr -> %llu", &v8);
    _os_crash_msg();
    __break(1u);
  }

  *(a1 + 8) = Mutable;
  return a1;
}

void sub_1C9249F48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CA::AudioSampleRateConverterBuilder::Build(CA::AudioSampleRateConverterBuilder *this)
{
  v9 = *MEMORY[0x1E69E9840];
  result = AudioSampleRateConverterCreate();
  if (!result)
  {
    v5 = 0;
    memset(v8, 0, sizeof(v8));
    v3 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v6 = 134217984;
    v7 = 0;
    _os_log_send_and_compose_impl(v4, &v5, v8, 80, &dword_1C91AE000, v3, 16, "assertion failure: mImpl != nullptr -> %llu", &v6);
    _os_crash_msg();
    __break(1u);
  }

  *this = result;
  *(this + 8) = 0;
  return result;
}

void sub_1C924A21C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(CA::AudioSampleRateConverterBuilder *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t caulk::__expected_detail::base<CA::AudioSampleRateConverter,int>::~base(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  return a1;
}

double AudioDSPGraph::Boxes::SRCBox::open(AudioDSPGraph::Boxes::SRCBox *this)
{
  result = *(*(this + 2) + 1040);
  *(this + 112) = result;
  return result;
}

__n128 AudioDSPGraph::Boxes::SRCBox::process(AudioDSPGraph::Boxes::SRCBox *this, uint64_t a2)
{
  v2 = a2;
  if ((*(*this + 680))(this))
  {
    v5 = *(this + 12);
    if (*(this + 13) == v5)
    {
      v25 = (this + 40);
      if (*(this + 63) < 0)
      {
        v25 = *v25;
      }

      caulk::make_string(&v37, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v25, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C78);
    }

    v6 = *(this + 9);
    if (*(this + 10) == v6)
    {
      v27 = (this + 40);
      if (*(this + 63) < 0)
      {
        v27 = *v27;
      }

      caulk::make_string(&v37, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v27, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C60);
    }

    AudioDSPGraph::Buffer::copyFrom(*(*(v5 + 16) + 56), *(*(v6 + 16) + 56));
  }

  else
  {
    v9 = *(this + 9);
    if (*(this + 10) == v9)
    {
      v26 = (this + 40);
      if (*(this + 63) < 0)
      {
        v26 = *v26;
      }

      caulk::make_string(&v37, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v26, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C60);
    }

    v10 = *(*(v9 + 16) + 56);
    v11 = *(v10 + 64);
    *(this + 856) = (v11 & 2) != 0;
    if ((v11 & 2) != 0)
    {
      *(this + 108) = *(v10 + 16);
      *(this + 109) = *(v10 + 8);
    }

    v35 = v2;
    v36 = v2;
    ExpectedNumberOfOutputFrames = AudioSampleRateConverterGetExpectedNumberOfOutputFrames();
    v34 = ExpectedNumberOfOutputFrames;
    v14 = *(this + 230);
    if (ExpectedNumberOfOutputFrames > v14)
    {
      v28 = (this + 40);
      if (*(this + 63) < 0)
      {
        v28 = *v28;
      }

      caulk::make_string(&v33, "%s SRC output frame count %u is greater than output buffer frame capacity %u", v13, v28, ExpectedNumberOfOutputFrames, v14);
      AudioDSPGraph::ThrowException(1718775073, &v33, off_1E83377A8);
    }

    v15 = AudioSampleRateConverterProcessAudioBufferLists();
    if (v15)
    {
      v29 = (this + 40);
      if (*(this + 63) < 0)
      {
        v29 = *v29;
      }

      caulk::string_from_4cc(&v37, v15);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v37;
      }

      else
      {
        v31 = v37.__r_.__value_.__r.__words[0];
      }

      caulk::make_string(&v32, "%s SRC failed to process with status %s", v30, v29, v31);
      AudioDSPGraph::ThrowException(v15, &v32, off_1E83377C0);
    }

    AudioDSPGraph::RingBuffer::write((this + 800), v34, (this + 904));
  }

  v16 = *(this + 9);
  if (*(this + 10) == v16)
  {
    v24 = (this + 40);
    if (*(this + 63) < 0)
    {
      v24 = *v24;
    }

    caulk::make_string(&v37, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v7, v24, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C60);
  }

  v17 = *(this + 12);
  v18 = *(this + 13);
  if (v17 != v18)
  {
    v19 = *(*(v16 + 16) + 56);
    v20 = *(v19 + 72);
    do
    {
      v21 = *(*(v17 + 16) + 56);
      result = *(v19 + 8);
      v22 = *(v19 + 24);
      v23 = *(v19 + 40);
      *(v21 + 56) = *(v19 + 56);
      *(v21 + 40) = v23;
      *(v21 + 24) = v22;
      *(v21 + 8) = result;
      *(v21 + 72) = v20;
      v17 += 32;
    }

    while (v17 != v18);
  }

  return result;
}

void sub_1C924A624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::SRCBox::setProperty(AudioDSPGraph::Boxes::SRCBox *this, int a2, int a3, unsigned int a4, int a5, _DWORD *a6)
{
  if (a2 > 1936876384)
  {
    if (a2 != 1936876401)
    {
      if (a2 != 1936876385)
      {
        return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
      }

      goto LABEL_7;
    }

LABEL_9:
    if (a5 == 4)
    {
      v7 = 0;
      *(this + 225) = *a6;
      return v7;
    }

    return 561211770;
  }

  if (a2 == 26)
  {
    goto LABEL_9;
  }

  if (a2 != 3014)
  {
    return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

LABEL_7:
  if (a5 != 4)
  {
    return 561211770;
  }

  v7 = 0;
  *(this + 224) = *a6;
  return v7;
}

void AudioDSPGraph::Boxes::SRCBox::getProperty(AudioDSPGraph::Boxes::SRCBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, __n128 *a6, __n128 a7)
{
  if (a2 > 1936876384)
  {
    if (a2 != 1936876401)
    {
      if (a2 != 1936876385)
      {
        goto LABEL_4;
      }

LABEL_7:
      if (*a5 != 4)
      {
        return;
      }

      v7 = *(this + 224);
      goto LABEL_11;
    }
  }

  else if (a2 != 26)
  {
    if (a2 != 3014)
    {
LABEL_4:
      AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6, a7);
      return;
    }

    goto LABEL_7;
  }

  if (*a5 != 4)
  {
    return;
  }

  v7 = *(this + 225);
LABEL_11:
  a6->n128_u32[0] = v7;
}

uint64_t AudioDSPGraph::Boxes::SRCBox::getPropertyInfo(AudioDSPGraph::Boxes::SRCBox *this, int a2, int a3)
{
  result = 0x100000004;
  if (a2 > 1835626095)
  {
    if (a2 == 1835626096 || a2 == 1936876385 || a2 == 1936876401)
    {
      return result;
    }

    return AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
  }

  if (a2 != 26 && a2 != 3014)
  {
    return AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
  }

  return result;
}
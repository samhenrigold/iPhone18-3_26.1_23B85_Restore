void sub_2961399CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriMsg::packParam(AriMsg *this, uint64_t a2, char *a3, size_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  result = *(this + 17);
  if (!result)
  {
    if (a3)
    {
      v9 = Ari::TlvDefById(*this, *(this + 1), a2, 0);
      if (v9)
      {
        v10 = v9;
        v11 = **(v9 + 2) * *(*(v9 + 2) + 32);
        v12 = v9[2];
        if (v11 + v12 <= a4)
        {
          if ((DefaultLogLevel & 4) != 0)
          {
            OsLog = AriOsa::GetOsLog(v9);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
            {
              AriOsa::LogSrcInfo(v35, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam");
              v31 = v36 >= 0 ? v35 : v35[0];
              v32 = *(v10 + 3);
              v33 = *v10;
              v34 = v10[2];
              *__p = 136316930;
              *&__p[4] = "ari";
              v38 = 2080;
              v39 = v31;
              v40 = 1024;
              v41 = 788;
              v42 = 2080;
              *v43 = v32;
              *&v43[8] = 1024;
              *v44 = v33;
              *&v44[4] = 2048;
              *&v44[6] = v11;
              *&v44[14] = 1024;
              *&v44[16] = v34;
              v45 = 2048;
              v46 = a3;
              _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Pack tlv(%s) with tid(%d) len(%zu) with offset(%d) within param(%p)", __p, 0x46u);
              if (v36 < 0)
              {
                operator delete(v35[0]);
              }
            }

            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam");
            if (v40 >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Pack tlv(%s) with tid(%d) len(%zu) with offset(%d) within param(%p)", v23, v24, 788, *(v10 + 3), *v10, v11, v10[2], a3);
            if (SHIBYTE(v40) < 0)
            {
              operator delete(*__p);
            }

            v12 = v10[2];
          }

          return AriMsg::pack(this, a2, &a3[v12], v11, 0);
        }

        else
        {
          if ((DefaultLogLevel & 8) != 0)
          {
            v13 = AriOsa::GetOsLog(v9);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(v35, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam");
              v29 = v36 >= 0 ? v35 : v35[0];
              v30 = v10[2];
              *__p = 136316674;
              *&__p[4] = "ari";
              v38 = 2080;
              v39 = v29;
              v40 = 1024;
              v41 = 778;
              v42 = 1024;
              *v43 = a2;
              *&v43[4] = 1024;
              *&v43[6] = v30;
              *v44 = 2048;
              *&v44[2] = v11;
              *&v44[10] = 2048;
              *&v44[12] = a4;
              _os_log_error_impl(&dword_296048000, v13, OS_LOG_TYPE_ERROR, "%s: (%s:%d) tid(%d) has offset(%d) and len(%zu) outside of param with sz(%zu)", __p, 0x3Cu);
              if (v36 < 0)
              {
                operator delete(v35[0]);
              }
            }

            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam");
            if (v40 >= 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) tid(%d) has offset(%d) and len(%zu) outside of param with sz(%zu)", v14, v15, 778, a2, v10[2], v11, a4);
            if (SHIBYTE(v40) < 0)
            {
              operator delete(*__p);
            }
          }

          return 4294967216;
        }
      }

      else
      {
        if ((DefaultLogLevel & 8) != 0)
        {
          v19 = AriOsa::GetOsLog(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(v35, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam");
            v26 = v36 >= 0 ? v35 : v35[0];
            v27 = *this;
            v28 = *(this + 1);
            *__p = 136316418;
            *&__p[4] = "ari";
            v38 = 2080;
            v39 = v26;
            v40 = 1024;
            v41 = 771;
            v42 = 1024;
            *v43 = a2;
            *&v43[4] = 1024;
            *&v43[6] = v27;
            *v44 = 1024;
            *&v44[2] = v28;
            _os_log_error_impl(&dword_296048000, v19, OS_LOG_TYPE_ERROR, "%s: (%s:%d) tid (%d) is not found under gid(%d) mid(0x%x)", __p, 0x2Eu);
            if (v36 < 0)
            {
              operator delete(v35[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam");
          if (v40 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) tid (%d) is not found under gid(%d) mid(0x%x)", v20, v21, 771, a2, *this, *(this + 1));
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*__p);
          }
        }

        return 4294967220;
      }
    }

    else
    {
      if ((DefaultLogLevel & 8) != 0)
      {
        v16 = AriOsa::GetOsLog(result);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v35, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam");
          v25 = v36 >= 0 ? v35 : v35[0];
          *__p = 136315906;
          *&__p[4] = "ari";
          v38 = 2080;
          v39 = v25;
          v40 = 1024;
          v41 = 764;
          v42 = 2048;
          *v43 = 0;
          _os_log_error_impl(&dword_296048000, v16, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid msg or input value v(%p)!", __p, 0x26u);
          if (v36 < 0)
          {
            operator delete(v35[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam");
        if (v40 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid msg or input value v(%p)!", v17, v18, 764, 0);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(*__p);
        }
      }

      return 4294967221;
    }
  }

  return result;
}

void sub_296139FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *AriMsg::getEncodedBuf(AriMsg *this, unsigned int *a2, unint64_t a3)
{
  v89 = *MEMORY[0x29EDCA608];
  if (*(this + 17) || (*this - 64) < 0xFFFFFFC1 || ((v5 = *(this + 1)) != 0 ? (v6 = a2 == 0) : (v6 = 1), v6 || v5 >= 0x400))
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v69, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
        v23 = v70 >= 0 ? v69 : v69[0];
        *__p = 136315650;
        *&__p[4] = "ari";
        v72 = 2080;
        v73 = v23;
        v74 = 1024;
        v75 = 807;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid msg ID definitions!", __p, 0x1Cu);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
      if (v74 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid msg ID definitions!", v19, v20, 807);
      goto LABEL_27;
    }

    return 0;
  }

  *a2 = 0;
  v7 = *(this + 7);
  if (v7)
  {
    LODWORD(v8) = 0;
    LODWORD(v9) = 0;
    LODWORD(v10) = 0;
    v11 = *(this + 7);
    do
    {
      if (!*v11 || *v11 > 0xFFFu || (v12 = *(v11 + 16), v13 = *(v12 + 8), v14 = *(v11 + 32) / *v12 * v13, v14 >= 0x4000))
      {
        if ((DefaultLogLevel & 8) == 0)
        {
          return 0;
        }

        v24 = AriOsa::GetOsLog(this);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v69, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
          v54 = v70 >= 0 ? v69 : v69[0];
          v55 = *(this + 6);
          *__p = 136315906;
          *&__p[4] = "ari";
          v72 = 2080;
          v73 = v54;
          v74 = 1024;
          v75 = 834;
          v76 = 2080;
          v77 = v55;
          _os_log_error_impl(&dword_296048000, v24, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid tlv value found for msg(%s)!", __p, 0x26u);
          if (v70 < 0)
          {
            operator delete(v69[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
        if (v74 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid tlv value found for msg(%s)!", v25, v26, 834, *(this + 6));
        goto LABEL_27;
      }

      v8 = (v8 + 1);
      v9 = (v9 + *(v12 + 32) * v13 + 4);
      v10 = (v10 + v14 + 4);
      v11 = *(v11 + 48);
    }

    while (v11);
    if (v10 < 0x8000)
    {
      goto LABEL_43;
    }

    if ((DefaultLogLevel & 8) != 0)
    {
      v15 = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v69, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
        v64 = v70 >= 0 ? v69 : v69[0];
        v65 = *(this + 6);
        *__p = 136316418;
        *&__p[4] = "ari";
        v72 = 2080;
        v73 = v64;
        v74 = 1024;
        v75 = 849;
        v76 = 2080;
        v77 = v65;
        v78 = 1024;
        v79 = v10;
        v80 = 1024;
        v81 = 0x7FFF;
        _os_log_error_impl(&dword_296048000, v15, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Message(%s) size (%d) is larger than max (%d)", __p, 0x32u);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
      if (v74 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Message(%s) size (%d) is larger than max (%d)", v16, v17, 849, *(this + 6), v10, 0x7FFFLL);
      goto LABEL_27;
    }

    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_43:
  v27 = *(this + 2);
  if (v27)
  {
    v28 = *v27;
    if (*v27)
    {
      v29 = *(this + 2);
      while (1)
      {
        v30 = *(this + 7);
        if (!v7)
        {
          break;
        }

        while (*v30 != v28)
        {
          v30 = *(v30 + 48);
          if (!v30)
          {
            v27 = v29;
            goto LABEL_76;
          }
        }

        v31 = v29[1];
        ++v29;
        v28 = v31;
        if (!v31)
        {
          goto LABEL_51;
        }
      }

LABEL_76:
      if ((DefaultLogLevel & 8) == 0)
      {
        return 0;
      }

      v48 = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v69, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
        v60 = v70 >= 0 ? v69 : v69[0];
        v61 = *(this + 6);
        v62 = *v27;
        *__p = 136316162;
        *&__p[4] = "ari";
        v72 = 2080;
        v73 = v60;
        v74 = 1024;
        v75 = 872;
        v76 = 2080;
        v77 = v61;
        v78 = 1024;
        v79 = v62;
        _os_log_error_impl(&dword_296048000, v48, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Message(%s)'s mandatory TLV (%d) not packed!", __p, 0x2Cu);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
      if (v74 >= 0)
      {
        v50 = __p;
      }

      else
      {
        v50 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Message(%s)'s mandatory TLV (%d) not packed!", v49, v50, 872, *(this + 6), *v27);
      goto LABEL_27;
    }
  }

LABEL_51:
  v32 = v10 + 12;
  v33 = AriOsa::MemAlloc(1, v10 + 12);
  if (!v33)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v51 = AriOsa::GetOsLog(0);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v69, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
        v63 = v70 >= 0 ? v69 : v69[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v72 = 2080;
        v73 = v63;
        v74 = 1024;
        v75 = 887;
        v76 = 2048;
        v77 = (v10 + 12);
        _os_log_error_impl(&dword_296048000, v51, OS_LOG_TYPE_ERROR, "%s: (%s:%d) MemAlloc failed for buffer sz (%zu)", __p, 0x26u);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
      if (v74 >= 0)
      {
        v53 = __p;
      }

      else
      {
        v53 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) MemAlloc failed for buffer sz (%zu)", v52, v53, 887, v10 + 12);
LABEL_27:
      if (SHIBYTE(v74) < 0)
      {
        operator delete(*__p);
      }

      return 0;
    }

    return 0;
  }

  v21 = v33;
  v33[2] = 0;
  *v33 = 2877210846;
  v34 = ((*this & 0x3F) << 35) | 0xAB7EC0DE;
  *v33 = v34;
  v35 = (*(this + 1) & 0x3FF) << 6;
  v33[2] = v35;
  *v33 = v34 | (v10 << 49);
  v33[2] = v35 | (*(this + 16) << 17);
  if ((DefaultLogLevel & 4) != 0)
  {
    v36 = AriOsa::GetOsLog(v33);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(v69, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
      v56 = v70 >= 0 ? v69 : v69[0];
      v57 = *(this + 6);
      v58 = *this;
      v59 = *(this + 1);
      *__p = 136317442;
      *&__p[4] = "ari";
      v72 = 2080;
      v73 = v56;
      v74 = 1024;
      v75 = 903;
      v76 = 2080;
      v77 = v57;
      v78 = 1024;
      v79 = v58;
      v80 = 1024;
      v81 = v59;
      v82 = 2048;
      *v83 = v10 + 12;
      *&v83[8] = 2048;
      v84 = v21;
      v85 = 1024;
      v86 = v8;
      v87 = 2048;
      v88 = this;
      _os_log_debug_impl(&dword_296048000, v36, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Encode  %s(%d-0x%03x) len(%zu) buf(%p) tlv(%d) obj(%p)", __p, 0x56u);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
    if (v74 >= 0)
    {
      v38 = __p;
    }

    else
    {
      v38 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Encode  %s(%d-0x%03x) len(%zu) buf(%p) tlv(%d) obj(%p)", v37, v38, 903, *(this + 6), *this, *(this + 1), v10 + 12, v21, v8, this);
    if (SHIBYTE(v74) < 0)
    {
      operator delete(*__p);
    }
  }

  if (v9 != v10 && (DefaultLogLevel & 4) != 0)
  {
    v39 = AriOsa::GetOsLog(v33);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(v69, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
      v66 = v70 >= 0 ? v69 : v69[0];
      v67 = *this;
      v68 = *(this + 1);
      *__p = 136316930;
      *&__p[4] = "ari";
      v72 = 2080;
      v73 = v66;
      v74 = 1024;
      v75 = 913;
      v76 = 2048;
      v77 = this;
      v78 = 1024;
      v79 = v67;
      v80 = 1024;
      v81 = v68;
      v82 = 1024;
      *v83 = v9;
      *&v83[4] = 1024;
      *&v83[6] = v10;
      _os_log_debug_impl(&dword_296048000, v39, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) msg(%p) with g(%d) m(0x%03x) msg-size def(%d) actual(%d)", __p, 0x3Eu);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
    if (v74 >= 0)
    {
      v41 = __p;
    }

    else
    {
      v41 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) msg(%p) with g(%d) m(0x%03x) msg-size def(%d) actual(%d)", v40, v41, 913, this, *this, *(this + 1), v9, v10);
    if (SHIBYTE(v74) < 0)
    {
      operator delete(*__p);
    }
  }

  v42 = *(this + 7);
  if (v42)
  {
    v43 = v21 + 3;
    while (1)
    {
      v44 = *(v42 + 2);
      v45 = *(v44 + 16);
      LODWORD(v44) = *(v42 + 4) / *v44 * *(v44 + 8);
      *v43 = 0;
      v46 = *v42;
      *v43 = 2 * (*v42 & 0xFFF);
      *v43 = (v44 << 18) | ((v42[1] & 7) << 13) | (2 * (v46 & 0xFFF));
      if (v45(v43 + 1, *(v42 + 5)))
      {
        break;
      }

      v43 = (v43 + (*v43 >> 18) + 4);
      v42 = *(v42 + 6);
      if (!v42)
      {
        goto LABEL_71;
      }
    }

    free(v21);
    return 0;
  }

LABEL_71:
  *a2 = v32;
  AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf");
  if (v74 >= 0)
  {
    v47 = __p;
  }

  else
  {
    v47 = *__p;
  }

  Ari::LogBuf("mhdr", v47, 0x3AF, v21, *a2, 0xA0u);
  if (SHIBYTE(v74) < 0)
  {
    operator delete(*__p);
  }

  return v21;
}

void sub_29613AAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriMsg::ReleaseEncodedMessage(AriMsg *this, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(v7, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "ReleaseEncodedMessage");
      v6 = v8 >= 0 ? v7 : v7[0];
      *__p = 136315906;
      *&__p[4] = "ari";
      v10 = 2080;
      v11 = v6;
      v12 = 1024;
      v13 = 950;
      v14 = 2048;
      v15 = this;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) freed as (%p)", __p, 0x26u);
      if (v8 < 0)
      {
        operator delete(v7[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "ReleaseEncodedMessage");
    if (v12 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) freed as (%p)", v4, v5, 950, this);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(*__p);
    }
  }

  if (this)
  {
    free(this);
  }
}

void sub_29613ACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriMsg::unpack(AriMsg *this, uint64_t a2, void *a3, uint64_t a4, BOOL *a5, unint64_t *a6)
{
  v96 = *MEMORY[0x29EDCA608];
  result = *(this + 17);
  if (result)
  {
    return result;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (!a3)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(result);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v82, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
        v52 = v83 >= 0 ? v82 : v82[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v85 = 2080;
        v86 = v52;
        v87 = 1024;
        v88 = 975;
        v89 = 2048;
        *v90 = 0;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) AriMsg::unpack invalid Msg or input buff (%p)!", __p, 0x26u);
        if (v83 < 0)
        {
          operator delete(v82[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
      if (v87 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) AriMsg::unpack invalid Msg or input buff (%p)!", v18, v19, 975, 0);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(*__p);
      }
    }

    return 4294967217;
  }

  v13 = Ari::TlvDefById(*this, *(this + 1), a2, a4);
  if (!v13)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v20 = AriOsa::GetOsLog(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v82, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
        v53 = v83 >= 0 ? v82 : v82[0];
        v54 = *this;
        v55 = *(this + 1);
        *__p = 136316674;
        *&__p[4] = "ari";
        v85 = 2080;
        v86 = v53;
        v87 = 1024;
        v88 = 983;
        v89 = 1024;
        *v90 = a2;
        *&v90[4] = 1024;
        *&v90[6] = v54;
        *v91 = 1024;
        *&v91[2] = v55;
        *&v91[6] = 2048;
        *&v91[8] = a4;
        _os_log_error_impl(&dword_296048000, v20, OS_LOG_TYPE_ERROR, "%s: (%s:%d) tid (%d) is not found under gid(%d) mid (0x%03x) with defined sz(%zu)", __p, 0x38u);
        if (v83 < 0)
        {
          operator delete(v82[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
      if (v87 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) tid (%d) is not found under gid(%d) mid (0x%03x) with defined sz(%zu)", v21, v22, 983, a2, *this, *(this + 1), a4);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(*__p);
      }
    }

    return 4294967218;
  }

  v14 = v13;
  v15 = *(this + 7);
  if (!v15)
  {
LABEL_12:
    if (!a5)
    {
      if ((DefaultLogLevel & 8) != 0)
      {
        v33 = AriOsa::GetOsLog(v13);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v82, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
          v59 = v83 >= 0 ? v82 : v82[0];
          v60 = *v14;
          v61 = *(v14 + 4);
          *__p = 136316162;
          *&__p[4] = "ari";
          v85 = 2080;
          v86 = v59;
          v87 = 1024;
          v88 = 1064;
          v89 = 1024;
          *v90 = v60;
          *&v90[4] = 1024;
          *&v90[6] = v61;
          _os_log_error_impl(&dword_296048000, v33, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Mandatory tlv with tid(%d) v(%d) is missing", __p, 0x28u);
          if (v83 < 0)
          {
            operator delete(v82[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
        if (v87 >= 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Mandatory tlv with tid(%d) v(%d) is missing", v34, v35, 1064, *v14, *(v14 + 4));
        if (SHIBYTE(v87) < 0)
        {
          operator delete(*__p);
        }
      }

      return 4294967215;
    }

    v16 = 0;
    goto LABEL_14;
  }

  while (*v15 != *v13)
  {
    v15 = *(v15 + 48);
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  v23 = *(v15 + 32);
  v24 = *(v15 + 16);
  v25 = v24[1];
  v26 = v25 * *(v24 + 8);
  if (v23 > v26)
  {
    if (!*(this + 17))
    {
      v40 = *(this + 2);
      if (v40)
      {
        v41 = *v40;
        if (*v40)
        {
          v42 = v40 + 1;
          while (v41 != a2)
          {
            v43 = *v42++;
            v41 = v43;
            if (!v43)
            {
              goto LABEL_33;
            }
          }

          if ((DefaultLogLevel & 8) != 0)
          {
            v56 = AriOsa::GetOsLog(v13);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(v82, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
              v74 = v83 >= 0 ? v82 : v82[0];
              v75 = *(v14 + 3);
              v76 = *(this + 6);
              *__p = 136316674;
              *&__p[4] = "ari";
              v85 = 2080;
              v86 = v74;
              v87 = 1024;
              v88 = 1008;
              v89 = 2080;
              *v90 = v75;
              *&v90[8] = 2080;
              *v91 = v76;
              *&v91[8] = 2048;
              *&v91[10] = v23;
              *&v91[18] = 2048;
              *&v91[20] = v26;
              _os_log_error_impl(&dword_296048000, v56, OS_LOG_TYPE_ERROR, "%s: (%s:%d) trying to unpack mandatory TLV(%s) for MSG(%s) with packed sz(%zu) > defined max encoded size(%zu)", __p, 0x44u);
              if (v83 < 0)
              {
                operator delete(v82[0]);
              }
            }

            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
            if (v87 >= 0)
            {
              v58 = __p;
            }

            else
            {
              v58 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) trying to unpack mandatory TLV(%s) for MSG(%s) with packed sz(%zu) > defined max encoded size(%zu)", v57, v58, 1008, *(v14 + 3), *(this + 6), v23, v26);
            if (SHIBYTE(v87) < 0)
            {
              operator delete(*__p);
            }
          }

          return 4294967216;
        }
      }
    }

LABEL_33:
    if ((DefaultLogLevel & 0x10) != 0)
    {
      v27 = AriOsa::GetOsLog(v13);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(v82, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
        v28 = v83 >= 0 ? v82 : v82[0];
        v29 = *(v14 + 3);
        v30 = *(this + 6);
        *__p = 136316674;
        *&__p[4] = "ari";
        v85 = 2080;
        v86 = v28;
        v87 = 1024;
        v88 = 1015;
        v89 = 2080;
        *v90 = v29;
        *&v90[8] = 2080;
        *v91 = v30;
        *&v91[8] = 2048;
        *&v91[10] = v23;
        *&v91[18] = 2048;
        *&v91[20] = v26;
        _os_log_impl(&dword_296048000, v27, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Dropping optional TLV(%s) for MSG(%s) with packed sz(%zu) > defined max encoded size(%zu)", __p, 0x44u);
        if (v83 < 0)
        {
          operator delete(v82[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
      if (v87 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Dropping optional TLV(%s) for MSG(%s) with packed sz(%zu) > defined max encoded size(%zu)", v31, v32, 1015, *(v14 + 3), *(this + 6), v23, v26);
LABEL_60:
      if (SHIBYTE(v87) < 0)
      {
        operator delete(*__p);
      }

      return 0;
    }

    return 0;
  }

  v36 = v23 / v25;
  if (!(v23 % v25))
  {
    v81 = *v24;
    v44 = v24[3];
    if ((DefaultLogLevel & 4) != 0)
    {
      v80 = v24[3];
      v45 = AriOsa::GetOsLog(v13);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        AriOsa::LogSrcInfo(v82, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
        v68 = v82;
        if (v83 < 0)
        {
          v68 = v82[0];
        }

        v69 = *(v15 + 24);
        v70 = *v14;
        v71 = *(v15 + 40);
        v72 = *this;
        v73 = *(this + 1);
        *__p = 136317442;
        *&__p[4] = "ari";
        v85 = 2080;
        v86 = v68;
        v87 = 1024;
        v88 = 1043;
        v89 = 2080;
        *v90 = v69;
        *&v90[8] = 1024;
        *v91 = v70;
        *&v91[4] = 2048;
        *&v91[6] = v71;
        *&v91[14] = 2048;
        *&v91[16] = v23;
        *&v91[24] = 2048;
        *&v91[26] = v36 * v81;
        v92 = 1024;
        v93 = v72;
        v94 = 1024;
        v95 = v73;
        _os_log_debug_impl(&dword_296048000, v45, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Unpack tlv(%s) with tid(%d) raw(%p) len(%zu) into origLen(%zu) for g(%d) m(0x%03x)", __p, 0x56u);
        if (v83 < 0)
        {
          operator delete(v82[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
      if (v87 >= 0)
      {
        v47 = __p;
      }

      else
      {
        v47 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Unpack tlv(%s) with tid(%d) raw(%p) len(%zu) into origLen(%zu) for g(%d) m(0x%03x)", v46, v47, 1043, *(v15 + 24), *v14, *(v15 + 40), v23, v36 * v81, *this, *(this + 1));
      v44 = v80;
      if (SHIBYTE(v87) < 0)
      {
        operator delete(*__p);
      }
    }

    result = v44(a3, *(v15 + 40), v25, v23 / v25);
    if (result)
    {
      return result;
    }

    if (a6)
    {
      *a6 = v36 * v81;
    }

    if (!a5)
    {
      return 0;
    }

    v16 = 1;
LABEL_14:
    result = 0;
    *a5 = v16;
    return result;
  }

  if (*(this + 17) || (v48 = *(this + 2)) == 0 || (v49 = *v48) == 0)
  {
LABEL_54:
    if ((DefaultLogLevel & 8) != 0)
    {
      v37 = AriOsa::GetOsLog(v13);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v82, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
        v65 = v83 >= 0 ? v82 : v82[0];
        v66 = *(v14 + 3);
        v67 = *(this + 6);
        *__p = 136316674;
        *&__p[4] = "ari";
        v85 = 2080;
        v86 = v65;
        v87 = 1024;
        v88 = 1031;
        v89 = 2080;
        *v90 = v66;
        *&v90[8] = 2080;
        *v91 = v67;
        *&v91[8] = 2048;
        *&v91[10] = v23;
        *&v91[18] = 2048;
        *&v91[20] = v25;
        _os_log_error_impl(&dword_296048000, v37, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Dropping optional TLV(%s) for MSG(%s) with packed sz(%zu) not multiple of element encoded size(%zu)", __p, 0x44u);
        if (v83 < 0)
        {
          operator delete(v82[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
      if (v87 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Dropping optional TLV(%s) for MSG(%s) with packed sz(%zu) not multiple of element encoded size(%zu)", v38, v39, 1031, *(v14 + 3), *(this + 6), v23, v25);
      goto LABEL_60;
    }

    return 0;
  }

  v50 = v48 + 1;
  while (v49 != a2)
  {
    v51 = *v50++;
    v49 = v51;
    if (!v51)
    {
      goto LABEL_54;
    }
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v62 = AriOsa::GetOsLog(v13);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v82, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
      v77 = v83 >= 0 ? v82 : v82[0];
      v78 = *(v14 + 3);
      v79 = *(this + 6);
      *__p = 136316674;
      *&__p[4] = "ari";
      v85 = 2080;
      v86 = v77;
      v87 = 1024;
      v88 = 1024;
      v89 = 2080;
      *v90 = v78;
      *&v90[8] = 2080;
      *v91 = v79;
      *&v91[8] = 2048;
      *&v91[10] = v23;
      *&v91[18] = 2048;
      *&v91[20] = v25;
      _os_log_error_impl(&dword_296048000, v62, OS_LOG_TYPE_ERROR, "%s: (%s:%d) trying to unpack mandatory TLV(%s) for MSG(%s) with packed sz(%zu) not multiple of element encoded size(%zu)", __p, 0x44u);
      if (v83 < 0)
      {
        operator delete(v82[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack");
    if (v87 >= 0)
    {
      v64 = __p;
    }

    else
    {
      v64 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) trying to unpack mandatory TLV(%s) for MSG(%s) with packed sz(%zu) not multiple of element encoded size(%zu)", v63, v64, 1024, *(v14 + 3), *(this + 6), v23, v25);
    if (SHIBYTE(v87) < 0)
    {
      operator delete(*__p);
    }
  }

  return 4294967213;
}

void sub_29613B8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AriMsg::isTlvMandatory(AriMsg *this, int a2)
{
  if (*(this + 17))
  {
    return 0;
  }

  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v5 = v3 + 1;
  do
  {
    result = v4 == a2;
    if (v4 == a2)
    {
      break;
    }

    v6 = *v5++;
    v4 = v6;
  }

  while (v6);
  return result;
}

uint64_t AriMsg::unparam(AriMsg *this, uint64_t a2, char *a3, unint64_t a4)
{
  v53 = *MEMORY[0x29EDCA608];
  result = *(this + 17);
  if (result)
  {
    return result;
  }

  if (a3)
  {
    v7 = *(this + 7);
    if (!v7)
    {
      return 0;
    }

    while (1)
    {
      if (*(v7 + 5) == a2)
      {
        v10 = *(v7 + 2);
        v11 = *(v10 + 8);
        v12 = *v10;
        v13 = v7[2];
        v14 = v12 * v11;
        if (v12 * v11 + v13 > a4)
        {
          if ((DefaultLogLevel & 8) != 0)
          {
            OsLog = AriOsa::GetOsLog(result);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(v37, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam");
              v32 = v38 >= 0 ? v37 : v37[0];
              v33 = *this;
              v34 = *(this + 1);
              v35 = *v7;
              v36 = v7[2];
              *__p = 136317698;
              *&__p[4] = "ari";
              v40 = 2080;
              v41 = v32;
              v42 = 1024;
              v43 = 1115;
              v44 = 1024;
              *v45 = v33;
              *&v45[4] = 1024;
              *&v45[6] = v34;
              *v46 = 1024;
              *&v46[2] = a2;
              *&v46[6] = 1024;
              *&v46[8] = v35;
              *v47 = 1024;
              *&v47[2] = v36;
              *v48 = 2048;
              *&v48[2] = v12;
              v49 = 1024;
              *v50 = v11;
              *&v50[4] = 2048;
              *&v50[6] = a4;
              _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Grp(%d) m(0x%03x) pos(%d) tid(%d) with offset(%d) + len(%zu)*dim(%d), but param sz is only (%zu)", __p, 0x54u);
              if (v38 < 0)
              {
                operator delete(v37[0]);
              }
            }

            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam");
            if (v42 >= 0)
            {
              v30 = __p;
            }

            else
            {
              v30 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Grp(%d) m(0x%03x) pos(%d) tid(%d) with offset(%d) + len(%zu)*dim(%d), but param sz is only (%zu)", v29, v30, 1115, *this, *(this + 1), a2, *v7, v7[2], v12, v11, a4);
            if (SHIBYTE(v42) < 0)
            {
              operator delete(*__p);
            }
          }

          return 4294967216;
        }

        if ((DefaultLogLevel & 4) != 0)
        {
          v15 = AriOsa::GetOsLog(result);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo(v37, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam");
            v18 = v37;
            if (v38 < 0)
            {
              v18 = v37[0];
            }

            v19 = *this;
            v20 = *(this + 1);
            v21 = *v7;
            v22 = v7[2];
            v23 = *(v7 + 3);
            v24 = *(v7 + 4);
            *__p = 136317954;
            *&__p[4] = "ari";
            v40 = 2080;
            v41 = v18;
            v42 = 1024;
            v43 = 1130;
            v44 = 2080;
            *v45 = v23;
            *&v45[8] = 1024;
            *v46 = v19;
            *&v46[4] = 1024;
            *&v46[6] = v20;
            *&v46[10] = 1024;
            *v47 = a2;
            *&v47[4] = 1024;
            *v48 = v21;
            *&v48[4] = 1024;
            *&v48[6] = v22;
            v49 = 2048;
            *v50 = v24;
            *&v50[8] = 2048;
            *&v50[10] = v14;
            v51 = 2048;
            v52 = a4;
            _os_log_debug_impl(&dword_296048000, v15, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Tlv(%s) Grp(%d) m(0x%03x) pos(%d) tid(%d) w/ offset(%d) rawlen(%zu) into max origLen(%zu) param sz(%zu)", __p, 0x62u);
            if (v38 < 0)
            {
              operator delete(v37[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam");
          v17 = __p;
          if (v42 < 0)
          {
            v17 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Tlv(%s) Grp(%d) m(0x%03x) pos(%d) tid(%d) w/ offset(%d) rawlen(%zu) into max origLen(%zu) param sz(%zu)", v16, v17, 1130, *(v7 + 3), *this, *(this + 1), a2, *v7, v7[2], *(v7 + 4), v14, a4);
          if (SHIBYTE(v42) < 0)
          {
            operator delete(*__p);
          }

          v13 = v7[2];
        }

        result = AriMsg::unpack(this, *v7, &a3[v13], v14, 0, 0);
        if (result)
        {
          return result;
        }
      }

      v7 = *(v7 + 6);
      if (!v7)
      {
        return 0;
      }
    }
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v25 = AriOsa::GetOsLog(result);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v37, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam");
      v31 = v38 >= 0 ? v37 : v37[0];
      *__p = 136316162;
      *&__p[4] = "ari";
      v40 = 2080;
      v41 = v31;
      v42 = 1024;
      v43 = 1091;
      v44 = 2048;
      *v45 = this;
      *&v45[8] = 2048;
      *v46 = 0;
      _os_log_error_impl(&dword_296048000, v25, OS_LOG_TYPE_ERROR, "%s: (%s:%d) AriMsg::unparam invalid input AriMsg (%p) or  bufferr (%p)!", __p, 0x30u);
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam");
    if (v42 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) AriMsg::unparam invalid input AriMsg (%p) or  bufferr (%p)!", v26, v27, 1091, this, 0);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(*__p);
    }
  }

  return 4294967217;
}

void sub_29613BE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriMsg::extractCtx(AriMsg *this, int *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(this + 17) == -74)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v8, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "extractCtx");
        v7 = v9 >= 0 ? v8 : v8[0];
        *__p = 136315650;
        *&__p[4] = "ari";
        v11 = 2080;
        v12 = v7;
        v13 = 1024;
        v14 = 1167;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Corrupt or invalid message - cannot extract context id", __p, 0x1Cu);
        if (v9 < 0)
        {
          operator delete(v8[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "extractCtx");
      if (v13 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Corrupt or invalid message - cannot extract context id", v3, v4, 1167);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(*__p);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v5 = *(this + 16);
  if (v5 == 0x8000)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v5;
  return result;
}

void sub_29613C048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriMsg::updateCtx(AriMsg *this, int a2)
{
  result = *(this + 17);
  if (!result)
  {
    *(this + 16) = a2;
  }

  return result;
}

const char *Ari::MsgNameById(Ari *this)
{
  v1 = Ari::MsgDefById((this >> 26), (this >> 15) & 0x3FF);
  result = "Unknown";
  if (v1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      return v3;
    }
  }

  return result;
}

uint64_t Ari::MsgDefByName(Ari *this, const char *a2)
{
  v3 = 1;
  while (!ARIMSGDEF_GROUPS[v3])
  {
LABEL_8:
    if (++v3 == 64)
    {
      return 0;
    }
  }

  v4 = 0;
  while (1)
  {
    v5 = Ari::MsgDefById(v3, v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + 48);
      v8 = strlen(v7);
      if (!strncmp(v7, this, v8) && v8 == strlen(this))
      {
        return v6;
      }
    }

    if (++v4 == 1023)
    {
      goto LABEL_8;
    }
  }
}

uint64_t Ari::TlvDefByName(Ari *this, const char *a2, const char *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = Ari::MsgDefByName(this, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return v6;
  }

  if (!*v6)
  {
LABEL_7:
    if ((DefaultLogLevel & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(v5);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "TlvDefByName");
        v10 = v15 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        v17 = 2080;
        v18 = v10;
        v19 = 1024;
        v20 = 1288;
        v21 = 2080;
        v22 = a2;
        v23 = 2080;
        v24 = this;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) tlv(%s) not found under msg(%s)", buf, 0x30u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "TlvDefByName");
      if (v19 >= 0)
      {
        v12 = buf;
      }

      else
      {
        v12 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) tlv(%s) not found under msg(%s)", v11, v12, 1288, a2, this);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(*buf);
      }
    }

    return 0;
  }

  v7 = strlen(a2);
  while (1)
  {
    v5 = strncmp(*(v6 + 24), a2, v7);
    if (!v5)
    {
      return v6;
    }

    v8 = *(v6 + 32);
    v6 += 32;
    if (!v8)
    {
      goto LABEL_7;
    }
  }
}

void sub_29613C340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Ari::LogHeader(Ari *this, const unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v48 = *MEMORY[0x29EDCA608];
  AriOsa::SWTrap((this == 0), "buf == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", 0x50E);
  v6 = Ari::MsgDefById(((*this >> 35) & 0x3FLL), *(this + 2) >> 6);
  if (v6)
  {
    v7 = *(v6 + 6);
  }

  else
  {
    v7 = " (NOT FOUND IN SDK)";
  }

  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(v6);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
      v9 = v38 >= 0 ? __p : __p[0];
      v10 = *this;
      *buf = 136315906;
      *&buf[4] = "ari";
      v40 = 2080;
      v41 = v9;
      v42 = 1024;
      v43 = 1305;
      v44 = 1024;
      v45 = v10;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->magic   = 0X%08X", buf, 0x22u);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
    if (v42 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->magic   = 0X%08X", v11, v12, 1305, *this);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(*buf);
    }

    if ((DefaultLogLevel & 0x20) != 0)
    {
      v14 = AriOsa::GetOsLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
        v15 = v38 >= 0 ? __p : __p[0];
        v16 = (*this >> 35) & 0x3FLL;
        *buf = 136315906;
        *&buf[4] = "ari";
        v40 = 2080;
        v41 = v15;
        v42 = 1024;
        v43 = 1306;
        v44 = 1024;
        v45 = v16;
        _os_log_impl(&dword_296048000, v14, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->groupId = 0X%04X", buf, 0x22u);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
      if (v42 >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->groupId = 0X%04X", v17, v18, 1306, (*this >> 35) & 0x3FLL);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(*buf);
      }

      if ((DefaultLogLevel & 0x20) != 0)
      {
        v20 = AriOsa::GetOsLog(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
          v21 = v38 >= 0 ? __p : __p[0];
          v22 = *(this + 2) >> 6;
          *buf = 136316162;
          *&buf[4] = "ari";
          v40 = 2080;
          v41 = v21;
          v42 = 1024;
          v43 = 1307;
          v44 = 1024;
          v45 = v22;
          v46 = 2080;
          v47 = v7;
          _os_log_impl(&dword_296048000, v20, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->msgId   = 0X%04X (%s)", buf, 0x2Cu);
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
        if (v42 >= 0)
        {
          v24 = buf;
        }

        else
        {
          v24 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->msgId   = 0X%04X (%s)", v23, v24, 1307, *(this + 2) >> 6, v7);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(*buf);
        }

        if ((DefaultLogLevel & 0x20) != 0)
        {
          v26 = AriOsa::GetOsLog(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
            v27 = v38 >= 0 ? __p : __p[0];
            v28 = *this >> 49;
            *buf = 136315906;
            *&buf[4] = "ari";
            v40 = 2080;
            v41 = v27;
            v42 = 1024;
            v43 = 1308;
            v44 = 1024;
            v45 = v28;
            _os_log_impl(&dword_296048000, v26, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->length  = 0X%03d", buf, 0x22u);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
          if (v42 >= 0)
          {
            v30 = buf;
          }

          else
          {
            v30 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->length  = 0X%03d", v29, v30, 1308, *this >> 49);
          if (SHIBYTE(v42) < 0)
          {
            operator delete(*buf);
          }

          if ((DefaultLogLevel & 0x20) != 0)
          {
            v32 = AriOsa::GetOsLog(v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
              v33 = v38 >= 0 ? __p : __p[0];
              v34 = *(this + 2) >> 17;
              *buf = 136315906;
              *&buf[4] = "ari";
              v40 = 2080;
              v41 = v33;
              v42 = 1024;
              v43 = 1309;
              v44 = 1024;
              v45 = v34;
              _os_log_impl(&dword_296048000, v32, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->ctx     = 0X%04X", buf, 0x22u);
              if (v38 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader");
            if (v42 >= 0)
            {
              v36 = buf;
            }

            else
            {
              v36 = *buf;
            }

            AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->ctx     = 0X%04X", v35, v36, 1309, *(this + 2) >> 17);
            if (SHIBYTE(v42) < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }
    }
  }
}

void sub_29613C9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICbsConfigReq_SDK::ARI_IBICbsConfigReq_SDK(AriSdk::ARI_IBICbsConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x14808000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x14808000u, 0);
}

void AriSdk::ARI_IBICbsConfigReq_SDK::ARI_IBICbsConfigReq_SDK(AriSdk::ARI_IBICbsConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsConfigReq_SDK::~ARI_IBICbsConfigReq_SDK(AriSdk::ARI_IBICbsConfigReq_SDK *this)
{
  *this = &unk_2A1D30C18;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4095AA964ELL);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICbsConfigReq_SDK::~ARI_IBICbsConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsConfigReq_SDK::pack(AriSdk::ARI_IBICbsConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x192uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 2uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (v14 = *(this + 18), v13 == v14) || (result = AriMsg::pack(*(this + 6), 9, v13, v14 - v13, 0), !result))
                {
                  result = 0;
                  *a2 = *(this + 6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29613D84C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBICdmaLanguage,64ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x101uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v12, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v10 = v13 >= 0 ? v12 : v12[0];
      v11 = (*(a2 + 1) - *a2) >> 2;
      *__p = 136316418;
      *&__p[4] = "ari";
      v15 = 2080;
      v16 = v10;
      v17 = 1024;
      v18 = 360;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = 64;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 2, 64);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_29613DB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBICbsCdmaServiceCategoryFields,64ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x201uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v12, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v10 = v13 >= 0 ? v12 : v12[0];
      v11 = (*(a2 + 1) - *a2) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v15 = 2080;
      v16 = v10;
      v17 = 1024;
      v18 = 360;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = 64;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 64);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_29613DD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICbsConfigRspCb_SDK::ARI_IBICbsConfigRspCb_SDK(AriSdk::ARI_IBICbsConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x15008000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x15008000u, 0);
}

void AriSdk::ARI_IBICbsConfigRspCb_SDK::ARI_IBICbsConfigRspCb_SDK(AriSdk::ARI_IBICbsConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsConfigRspCb_SDK::~ARI_IBICbsConfigRspCb_SDK(AriSdk::ARI_IBICbsConfigRspCb_SDK *this)
{
  *this = &unk_2A1D30C50;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICbsConfigRspCb_SDK::~ARI_IBICbsConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsConfigRspCb_SDK::pack(AriSdk::ARI_IBICbsConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICbsGetConfigReq_SDK::ARI_IBICbsGetConfigReq_SDK(AriSdk::ARI_IBICbsGetConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x14810000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x14810000u, 0);
}

void AriSdk::ARI_IBICbsGetConfigReq_SDK::ARI_IBICbsGetConfigReq_SDK(AriSdk::ARI_IBICbsGetConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsGetConfigReq_SDK::~ARI_IBICbsGetConfigReq_SDK(AriSdk::ARI_IBICbsGetConfigReq_SDK *this)
{
  *this = &unk_2A1D30C88;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICbsGetConfigReq_SDK::~ARI_IBICbsGetConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsGetConfigReq_SDK::pack(AriSdk::ARI_IBICbsGetConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICbsGetConfigRspCb_SDK::ARI_IBICbsGetConfigRspCb_SDK(AriSdk::ARI_IBICbsGetConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x15010000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x15010000u, 0);
}

void AriSdk::ARI_IBICbsGetConfigRspCb_SDK::ARI_IBICbsGetConfigRspCb_SDK(AriSdk::ARI_IBICbsGetConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsGetConfigRspCb_SDK::~ARI_IBICbsGetConfigRspCb_SDK(AriSdk::ARI_IBICbsGetConfigRspCb_SDK *this)
{
  *this = &unk_2A1D30CC0;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4095AA964ELL);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICbsGetConfigRspCb_SDK::~ARI_IBICbsGetConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsGetConfigRspCb_SDK::pack(AriSdk::ARI_IBICbsGetConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x192uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 7, v10, v11 - v10, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 1uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 2uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 10, v14, v15 - v14, 0), !result))
                  {
                    result = 0;
                    *a2 = *(this + 6);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29613EED8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBICbsMsgIndCb_SDK::ARI_IBICbsMsgIndCb_SDK(AriSdk::ARI_IBICbsMsgIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x15820000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x15820000u, 0);
}

void AriSdk::ARI_IBICbsMsgIndCb_SDK::ARI_IBICbsMsgIndCb_SDK(AriSdk::ARI_IBICbsMsgIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsMsgIndCb_SDK::~ARI_IBICbsMsgIndCb_SDK(AriSdk::ARI_IBICbsMsgIndCb_SDK *this)
{
  *this = &unk_2A1D30CF8;
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 18);
  *(this + 18) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  v8 = *(this + 13);
  *(this + 13) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 12);
  *(this + 12) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40BDFB0063);
  }

  v11 = *(this + 10);
  *(this + 10) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40BDFB0063);
  }

  v12 = *(this + 9);
  *(this + 9) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4077774924);
  }

  v13 = *(this + 8);
  *(this + 8) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICbsMsgIndCb_SDK::~ARI_IBICbsMsgIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsMsgIndCb_SDK::pack(AriSdk::ARI_IBICbsMsgIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 7, v11, v12 - v11, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 8, v13, 4uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 9, v14, 4uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 10, v15, 4uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 11, v16, 2uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (v18 = *(this + 22), v17 == v18) || (result = AriMsg::pack(*(this + 6), 12, v17, v18 - v17, 0), !result))
                        {
                          result = 0;
                          *a2 = *(this + 6);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29613FA08(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,1252ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x4E5)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 1252;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 1252);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_29613FCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,1245ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x4DE)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 1245;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 1245);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_29613FEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::ARI_IBICbsMsgServiceReadyIndCb_SDK(AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x15828000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x15828000u, 0);
}

void AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::ARI_IBICbsMsgServiceReadyIndCb_SDK(AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::~ARI_IBICbsMsgServiceReadyIndCb_SDK(AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK *this)
{
  *this = &unk_2A1D30D30;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::~ARI_IBICbsMsgServiceReadyIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::pack(AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void std::vector<IBICdmaLanguage>::__init_with_size[abi:ne200100]<IBICdmaLanguage*,IBICdmaLanguage*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961402E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBICbsCdmaServiceCategoryFields>::__init_with_size[abi:ne200100]<IBICbsCdmaServiceCategoryFields*,IBICbsCdmaServiceCategoryFields*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29614038C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimAccessApduCmdReq_SDK::ARI_IBISimAccessApduCmdReq_SDK(AriSdk::ARI_IBISimAccessApduCmdReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C808000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C808000u, 0);
}

void AriSdk::ARI_IBISimAccessApduCmdReq_SDK::ARI_IBISimAccessApduCmdReq_SDK(AriSdk::ARI_IBISimAccessApduCmdReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessApduCmdReq_SDK::~ARI_IBISimAccessApduCmdReq_SDK(AriSdk::ARI_IBISimAccessApduCmdReq_SDK *this)
{
  *this = &unk_2A1D30DF8;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4019D8AA6FLL);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4080B1215BLL);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessApduCmdReq_SDK::~ARI_IBISimAccessApduCmdReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessApduCmdReq_SDK::pack(AriSdk::ARI_IBISimAccessApduCmdReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xAuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x110uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::ARI_IBISimAccessApduCmdRspCb_SDK(AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D008000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D008000u, 0);
}

void AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::ARI_IBISimAccessApduCmdRspCb_SDK(AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::~ARI_IBISimAccessApduCmdRspCb_SDK(AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK *this)
{
  *this = &unk_2A1D30E30;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4015B00A97);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::~ARI_IBISimAccessApduCmdRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::pack(AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x314uLL, 0), !result))
                {
                  result = 0;
                  *a2 = *(this + 6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimAccessFcpReq_SDK::ARI_IBISimAccessFcpReq_SDK(AriSdk::ARI_IBISimAccessFcpReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C830000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C830000u, 0);
}

void AriSdk::ARI_IBISimAccessFcpReq_SDK::ARI_IBISimAccessFcpReq_SDK(AriSdk::ARI_IBISimAccessFcpReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessFcpReq_SDK::~ARI_IBISimAccessFcpReq_SDK(AriSdk::ARI_IBISimAccessFcpReq_SDK *this)
{
  *this = &unk_2A1D30E68;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4080B1215BLL);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessFcpReq_SDK::~ARI_IBISimAccessFcpReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessFcpReq_SDK::pack(AriSdk::ARI_IBISimAccessFcpReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 0xAuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimAccessFcpRspCb_SDK::ARI_IBISimAccessFcpRspCb_SDK(AriSdk::ARI_IBISimAccessFcpRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D030000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D030000u, 0);
}

void AriSdk::ARI_IBISimAccessFcpRspCb_SDK::ARI_IBISimAccessFcpRspCb_SDK(AriSdk::ARI_IBISimAccessFcpRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessFcpRspCb_SDK::~ARI_IBISimAccessFcpRspCb_SDK(AriSdk::ARI_IBISimAccessFcpRspCb_SDK *this)
{
  *this = &unk_2A1D30EA0;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40C8F101BCLL);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4092CEF755);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessFcpRspCb_SDK::~ARI_IBISimAccessFcpRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessFcpRspCb_SDK::pack(AriSdk::ARI_IBISimAccessFcpRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 9, v9, 0x6DCuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 10, v10, 0x1FEuLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C810000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C810000u, 0);
}

void AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::~ARI_IBISimAccessGetSimDataReq_SDK(AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *this)
{
  *this = &unk_2A1D30ED8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::~ARI_IBISimAccessGetSimDataReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::pack(AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::ARI_IBISimAccessGetSimDataRspCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D010000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D010000u, 0);
}

void AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::ARI_IBISimAccessGetSimDataRspCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::~ARI_IBISimAccessGetSimDataRspCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK *this)
{
  *this = &unk_2A1D30F10;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4078998D37);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 15);
  *(this + 15) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 13);
  *(this + 13) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40ACC164F2);
  }

  v14 = *(this + 10);
  *(this + 10) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 9);
  *(this + 9) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 8);
  *(this + 8) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::~ARI_IBISimAccessGetSimDataRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::pack(AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 13, v8, 0x234uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 17, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 19, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 21, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 27, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 28, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 29, v14, 1uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 30, v15, 0x54uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 31, v16, 4uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (v18 = *(this + 21), v17 == v18) || (result = AriMsg::pack(*(this + 6), 32, v17, v18 - v17, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (result = AriMsg::pack(*(this + 6), 33, v19, 2uLL, 0), !result))
                            {
                              v20 = *(this + 24);
                              if (!v20 || (v21 = *(this + 25), v20 == v21) || (result = AriMsg::pack(*(this + 6), 34, v20, v21 - v20, 0), !result))
                              {
                                result = 0;
                                *a2 = *(this + 6);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2961430E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,10ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xB)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 10;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 10);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_29614348C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,33ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x22)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 33;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 33);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_29614367C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::ARI_IBISimAccessGetSimDataIndCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D840000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D840000u, 0);
}

void AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::ARI_IBISimAccessGetSimDataIndCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::~ARI_IBISimAccessGetSimDataIndCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK *this)
{
  *this = &unk_2A1D30F48;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4078998D37);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 15);
  *(this + 15) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 13);
  *(this + 13) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C40ACC164F2);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 10);
  *(this + 10) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 9);
  *(this + 9) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 8);
  *(this + 8) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::~ARI_IBISimAccessGetSimDataIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::pack(AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 7, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 15, v9, 0x234uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 18, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 20, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 26, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 27, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 28, v14, 1uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 29, v15, 0x54uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 30, v16, 4uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (v18 = *(this + 21), v17 == v18) || (result = AriMsg::pack(*(this + 6), 31, v17, v18 - v17, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (result = AriMsg::pack(*(this + 6), 32, v19, 2uLL, 0), !result))
                            {
                              v20 = *(this + 24);
                              if (!v20 || (v21 = *(this + 25), v20 == v21) || (result = AriMsg::pack(*(this + 6), 33, v20, v21 - v20, 0), !result))
                              {
                                result = 0;
                                *a2 = *(this + 6);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_296144328(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBISimAccessReadRecordReq_SDK::ARI_IBISimAccessReadRecordReq_SDK(AriSdk::ARI_IBISimAccessReadRecordReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C880000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C880000u, 0);
}

void AriSdk::ARI_IBISimAccessReadRecordReq_SDK::ARI_IBISimAccessReadRecordReq_SDK(AriSdk::ARI_IBISimAccessReadRecordReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessReadRecordReq_SDK::~ARI_IBISimAccessReadRecordReq_SDK(AriSdk::ARI_IBISimAccessReadRecordReq_SDK *this)
{
  *this = &unk_2A1D30F80;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40D7A84E51);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4080B1215BLL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessReadRecordReq_SDK::~ARI_IBISimAccessReadRecordReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessReadRecordReq_SDK::pack(AriSdk::ARI_IBISimAccessReadRecordReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 0xAuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 0xCuLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::ARI_IBISimAccessReadRecordRspCb_SDK(AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D080000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D080000u, 0);
}

void AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::ARI_IBISimAccessReadRecordRspCb_SDK(AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::~ARI_IBISimAccessReadRecordRspCb_SDK(AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK *this)
{
  *this = &unk_2A1D30FB8;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40178720E3);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::~ARI_IBISimAccessReadRecordRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::pack(AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 9, v9, 0x106uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimApplicationReq_SDK::ARI_IBISimApplicationReq_SDK(AriSdk::ARI_IBISimApplicationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C828000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C828000u, 0);
}

void AriSdk::ARI_IBISimApplicationReq_SDK::ARI_IBISimApplicationReq_SDK(AriSdk::ARI_IBISimApplicationReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimApplicationReq_SDK::~ARI_IBISimApplicationReq_SDK(AriSdk::ARI_IBISimApplicationReq_SDK *this)
{
  *this = &unk_2A1D30FF0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4075806E5BLL);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimApplicationReq_SDK::~ARI_IBISimApplicationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimApplicationReq_SDK::pack(AriSdk::ARI_IBISimApplicationReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x11uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimApplicationRspCb_SDK::ARI_IBISimApplicationRspCb_SDK(AriSdk::ARI_IBISimApplicationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D028000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D028000u, 0);
}

void AriSdk::ARI_IBISimApplicationRspCb_SDK::ARI_IBISimApplicationRspCb_SDK(AriSdk::ARI_IBISimApplicationRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimApplicationRspCb_SDK::~ARI_IBISimApplicationRspCb_SDK(AriSdk::ARI_IBISimApplicationRspCb_SDK *this)
{
  *this = &unk_2A1D31028;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimApplicationRspCb_SDK::~ARI_IBISimApplicationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimApplicationRspCb_SDK::pack(AriSdk::ARI_IBISimApplicationRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::ARI_IBISimCdmaFullAccessIndCb_SDK(AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D858000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D858000u, 0);
}

void AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::ARI_IBISimCdmaFullAccessIndCb_SDK(AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::~ARI_IBISimCdmaFullAccessIndCb_SDK(AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK *this)
{
  *this = &unk_2A1D31060;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::~ARI_IBISimCdmaFullAccessIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::pack(AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBISimEccListIndCb_SDK::ARI_IBISimEccListIndCb_SDK(AriSdk::ARI_IBISimEccListIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D830000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D830000u, 0);
}

void AriSdk::ARI_IBISimEccListIndCb_SDK::ARI_IBISimEccListIndCb_SDK(AriSdk::ARI_IBISimEccListIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimEccListIndCb_SDK::~ARI_IBISimEccListIndCb_SDK(AriSdk::ARI_IBISimEccListIndCb_SDK *this)
{
  *this = &unk_2A1D31098;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimEccListIndCb_SDK::~ARI_IBISimEccListIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimEccListIndCb_SDK::pack(AriSdk::ARI_IBISimEccListIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 3, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 1uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 5, v11, v12 - v11, 0), !result))
          {
            v13 = *(this + 17);
            if (!v13 || (result = AriMsg::pack(*(this + 6), 6, v13, 1uLL, 0), !result))
            {
              v14 = *(this + 18);
              if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 7, v14, v15 - v14, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_296146520(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<IBIEmergencyNumber,20ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xA1)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 20;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 3, 20);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_296146790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<IBIEmergencyNumber,10ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x51)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 10;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 3, 10);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_296146988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<IBIEmergencyNumber,30ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xF1)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 30;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 3, 30);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_296146B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::ARI_IBISimFileGetCdmaAuxInfoReq_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C8A8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C8A8000u, 0);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::ARI_IBISimFileGetCdmaAuxInfoReq_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::~ARI_IBISimFileGetCdmaAuxInfoReq_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK *this)
{
  *this = &unk_2A1D310D0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::~ARI_IBISimFileGetCdmaAuxInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::pack(AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D0A8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D0A8000u, 0);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::~ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK *this)
{
  *this = &unk_2A1D31108;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40F3A072B0);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40F3A072B0);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40C903D563);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40C903D563);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4080B1215BLL);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::~ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::pack(AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0xAuLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x491uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x491uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x49uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0x49uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 1uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 2uLL, 0), !result))
                  {
                    result = 0;
                    *a2 = *(this + 6);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileReadBinaryReq_SDK::ARI_IBISimFileReadBinaryReq_SDK(AriSdk::ARI_IBISimFileReadBinaryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C890000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C890000u, 0);
}

void AriSdk::ARI_IBISimFileReadBinaryReq_SDK::ARI_IBISimFileReadBinaryReq_SDK(AriSdk::ARI_IBISimFileReadBinaryReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileReadBinaryReq_SDK::~ARI_IBISimFileReadBinaryReq_SDK(AriSdk::ARI_IBISimFileReadBinaryReq_SDK *this)
{
  *this = &unk_2A1D31140;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4080B1215BLL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileReadBinaryReq_SDK::~ARI_IBISimFileReadBinaryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileReadBinaryReq_SDK::pack(AriSdk::ARI_IBISimFileReadBinaryReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 0xAuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::ARI_IBISimFileReadBinaryRspCb_SDK(AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D090000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D090000u, 0);
}

void AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::ARI_IBISimFileReadBinaryRspCb_SDK(AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::~ARI_IBISimFileReadBinaryRspCb_SDK(AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK *this)
{
  *this = &unk_2A1D31178;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40E2063AD4);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40B705F878);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::~ARI_IBISimFileReadBinaryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::pack(AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x14uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0xE04uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileSearchRecordReq_SDK::ARI_IBISimFileSearchRecordReq_SDK(AriSdk::ARI_IBISimFileSearchRecordReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C8B0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C8B0000u, 0);
}

void AriSdk::ARI_IBISimFileSearchRecordReq_SDK::ARI_IBISimFileSearchRecordReq_SDK(AriSdk::ARI_IBISimFileSearchRecordReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileSearchRecordReq_SDK::~ARI_IBISimFileSearchRecordReq_SDK(AriSdk::ARI_IBISimFileSearchRecordReq_SDK *this)
{
  *this = &unk_2A1D311B0;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4080B1215BLL);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40BDFB0063);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 8);
  *(this + 8) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileSearchRecordReq_SDK::~ARI_IBISimFileSearchRecordReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileSearchRecordReq_SDK::pack(AriSdk::ARI_IBISimFileSearchRecordReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xAuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 1uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 1uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (v15 = *(this + 18), v14 == v15) || (result = AriMsg::pack(*(this + 6), 11, v14, v15 - v14, 0), !result))
                    {
                      result = 0;
                      *a2 = *(this + 6);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_296148DBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,255ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x100)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 255;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 255);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_296149050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::ARI_IBISimFileSearchRecordRspCb_SDK(AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D0B0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D0B0000u, 0);
}

void AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::ARI_IBISimFileSearchRecordRspCb_SDK(AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::~ARI_IBISimFileSearchRecordRspCb_SDK(AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK *this)
{
  *this = &unk_2A1D311E8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C402DF8315BLL);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40B705F878);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::~ARI_IBISimFileSearchRecordRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::pack(AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x14uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x101uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::ARI_IBISimFileUpdateBinaryReq_SDK(AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C898000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C898000u, 0);
}

void AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::ARI_IBISimFileUpdateBinaryReq_SDK(AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::~ARI_IBISimFileUpdateBinaryReq_SDK(AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK *this)
{
  *this = &unk_2A1D31220;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40E2063AD4);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4080B1215BLL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::~ARI_IBISimFileUpdateBinaryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::pack(AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 0xAuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 0xE04uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::ARI_IBISimFileUpdateBinaryRspCb_SDK(AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D098000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D098000u, 0);
}

void AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::ARI_IBISimFileUpdateBinaryRspCb_SDK(AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::~ARI_IBISimFileUpdateBinaryRspCb_SDK(AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK *this)
{
  *this = &unk_2A1D31258;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40B705F878);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::~ARI_IBISimFileUpdateBinaryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::pack(AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x14uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFullAccessIndCb_SDK::ARI_IBISimFullAccessIndCb_SDK(AriSdk::ARI_IBISimFullAccessIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D818000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D818000u, 0);
}

void AriSdk::ARI_IBISimFullAccessIndCb_SDK::ARI_IBISimFullAccessIndCb_SDK(AriSdk::ARI_IBISimFullAccessIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFullAccessIndCb_SDK::~ARI_IBISimFullAccessIndCb_SDK(AriSdk::ARI_IBISimFullAccessIndCb_SDK *this)
{
  *this = &unk_2A1D31290;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFullAccessIndCb_SDK::~ARI_IBISimFullAccessIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFullAccessIndCb_SDK::pack(AriSdk::ARI_IBISimFullAccessIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBISimGetEccListReq_SDK::ARI_IBISimGetEccListReq_SDK(AriSdk::ARI_IBISimGetEccListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C848000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C848000u, 0);
}

void AriSdk::ARI_IBISimGetEccListReq_SDK::ARI_IBISimGetEccListReq_SDK(AriSdk::ARI_IBISimGetEccListReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetEccListReq_SDK::~ARI_IBISimGetEccListReq_SDK(AriSdk::ARI_IBISimGetEccListReq_SDK *this)
{
  *this = &unk_2A1D312C8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetEccListReq_SDK::~ARI_IBISimGetEccListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetEccListReq_SDK::pack(AriSdk::ARI_IBISimGetEccListReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBISimGetEccListRspCb_SDK::ARI_IBISimGetEccListRspCb_SDK(AriSdk::ARI_IBISimGetEccListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D048000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D048000u, 0);
}

void AriSdk::ARI_IBISimGetEccListRspCb_SDK::ARI_IBISimGetEccListRspCb_SDK(AriSdk::ARI_IBISimGetEccListRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetEccListRspCb_SDK::~ARI_IBISimGetEccListRspCb_SDK(AriSdk::ARI_IBISimGetEccListRspCb_SDK *this)
{
  *this = &unk_2A1D31300;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetEccListRspCb_SDK::~ARI_IBISimGetEccListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetEccListRspCb_SDK::pack(AriSdk::ARI_IBISimGetEccListRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 1uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 6, v11, v12 - v11, 0), !result))
          {
            v13 = *(this + 17);
            if (!v13 || (result = AriMsg::pack(*(this + 6), 7, v13, 1uLL, 0), !result))
            {
              v14 = *(this + 18);
              if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 8, v14, v15 - v14, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29614ACE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::ARI_IBISimGetFullAccessStatusReq_SDK(AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C850000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C850000u, 0);
}

void AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::ARI_IBISimGetFullAccessStatusReq_SDK(AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::~ARI_IBISimGetFullAccessStatusReq_SDK(AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK *this)
{
  *this = &unk_2A1D31338;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::~ARI_IBISimGetFullAccessStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::pack(AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::ARI_IBISimGetFullAccessStatusRspCb_SDK(AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D050000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D050000u, 0);
}

void AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::ARI_IBISimGetFullAccessStatusRspCb_SDK(AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::~ARI_IBISimGetFullAccessStatusRspCb_SDK(AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK *this)
{
  *this = &unk_2A1D31370;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::~ARI_IBISimGetFullAccessStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::pack(AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::ARI_IBISimGetPhoneNumMetaInfoReq_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C8B8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C8B8000u, 0);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::ARI_IBISimGetPhoneNumMetaInfoReq_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::~ARI_IBISimGetPhoneNumMetaInfoReq_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK *this)
{
  *this = &unk_2A1D313A8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::~ARI_IBISimGetPhoneNumMetaInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::pack(AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D0B8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D0B8000u, 0);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::~ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK *this)
{
  *this = &unk_2A1D313E0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::~ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::pack(AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D860000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D860000u, 0);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::~ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK *this)
{
  *this = &unk_2A1D31418;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::~ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::pack(AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::ARI_IBISimGetPlmnModeBitReq_SDK(AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C8A0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C8A0000u, 0);
}

void AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::ARI_IBISimGetPlmnModeBitReq_SDK(AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::~ARI_IBISimGetPlmnModeBitReq_SDK(AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK *this)
{
  *this = &unk_2A1D31450;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::~ARI_IBISimGetPlmnModeBitReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::pack(AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::ARI_IBISimGetPlmnModeBitRspCb_SDK(AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D0A0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D0A0000u, 0);
}

void AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::ARI_IBISimGetPlmnModeBitRspCb_SDK(AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::~ARI_IBISimGetPlmnModeBitRspCb_SDK(AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK *this)
{
  *this = &unk_2A1D31488;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::~ARI_IBISimGetPlmnModeBitRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::pack(AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimHwEventIndCb_SDK::ARI_IBISimHwEventIndCb_SDK(AriSdk::ARI_IBISimHwEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D850000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D850000u, 0);
}

void AriSdk::ARI_IBISimHwEventIndCb_SDK::ARI_IBISimHwEventIndCb_SDK(AriSdk::ARI_IBISimHwEventIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimHwEventIndCb_SDK::~ARI_IBISimHwEventIndCb_SDK(AriSdk::ARI_IBISimHwEventIndCb_SDK *this)
{
  *this = &unk_2A1D314C0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimHwEventIndCb_SDK::~ARI_IBISimHwEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimHwEventIndCb_SDK::pack(AriSdk::ARI_IBISimHwEventIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::ARI_IBISimPlmnModeBitIndCb_SDK(AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D848000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D848000u, 0);
}

void AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::ARI_IBISimPlmnModeBitIndCb_SDK(AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::~ARI_IBISimPlmnModeBitIndCb_SDK(AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK *this)
{
  *this = &unk_2A1D314F8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::~ARI_IBISimPlmnModeBitIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::pack(AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimReadPhoneNumReq_SDK::ARI_IBISimReadPhoneNumReq_SDK(AriSdk::ARI_IBISimReadPhoneNumReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C8C0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C8C0000u, 0);
}

void AriSdk::ARI_IBISimReadPhoneNumReq_SDK::ARI_IBISimReadPhoneNumReq_SDK(AriSdk::ARI_IBISimReadPhoneNumReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimReadPhoneNumReq_SDK::~ARI_IBISimReadPhoneNumReq_SDK(AriSdk::ARI_IBISimReadPhoneNumReq_SDK *this)
{
  *this = &unk_2A1D31530;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimReadPhoneNumReq_SDK::~ARI_IBISimReadPhoneNumReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimReadPhoneNumReq_SDK::pack(AriSdk::ARI_IBISimReadPhoneNumReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::ARI_IBISimReadPhoneNumRspCb_SDK(AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D0C0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D0C0000u, 0);
}

void AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::ARI_IBISimReadPhoneNumRspCb_SDK(AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::~ARI_IBISimReadPhoneNumRspCb_SDK(AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK *this)
{
  *this = &unk_2A1D31568;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4013417087);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4050308C2ALL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::~ARI_IBISimReadPhoneNumRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::pack(AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x16uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xF3uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTestReq_SDK::ARI_IBISimTestReq_SDK(AriSdk::ARI_IBISimTestReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C838000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C838000u, 0);
}

void AriSdk::ARI_IBISimTestReq_SDK::ARI_IBISimTestReq_SDK(AriSdk::ARI_IBISimTestReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTestReq_SDK::~ARI_IBISimTestReq_SDK(AriSdk::ARI_IBISimTestReq_SDK *this)
{
  *this = &unk_2A1D315A0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTestReq_SDK::~ARI_IBISimTestReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTestReq_SDK::pack(AriSdk::ARI_IBISimTestReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTestReq_SDK::unpack(AriSdk::ARI_IBISimTestReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  operator new();
}

void sub_29614E1B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  MEMORY[0x29C257E50](v29, v28, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBISimTestRspCb_SDK::ARI_IBISimTestRspCb_SDK(AriSdk::ARI_IBISimTestRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D038000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D038000u, 0);
}

void AriSdk::ARI_IBISimTestRspCb_SDK::ARI_IBISimTestRspCb_SDK(AriSdk::ARI_IBISimTestRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTestRspCb_SDK::~ARI_IBISimTestRspCb_SDK(AriSdk::ARI_IBISimTestRspCb_SDK *this)
{
  *this = &unk_2A1D315D8;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C402DF8315BLL);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTestRspCb_SDK::~ARI_IBISimTestRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTestRspCb_SDK::pack(AriSdk::ARI_IBISimTestRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x101uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTrayStatusReq_SDK::ARI_IBISimTrayStatusReq_SDK(AriSdk::ARI_IBISimTrayStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C8D0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C8D0000u, 0);
}

void AriSdk::ARI_IBISimTrayStatusReq_SDK::ARI_IBISimTrayStatusReq_SDK(AriSdk::ARI_IBISimTrayStatusReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTrayStatusReq_SDK::~ARI_IBISimTrayStatusReq_SDK(AriSdk::ARI_IBISimTrayStatusReq_SDK *this)
{
  *this = &unk_2A1D31610;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTrayStatusReq_SDK::~ARI_IBISimTrayStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTrayStatusReq_SDK::pack(AriSdk::ARI_IBISimTrayStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBISimTrayStatusRspCb_SDK::ARI_IBISimTrayStatusRspCb_SDK(AriSdk::ARI_IBISimTrayStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D0D0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D0D0000u, 0);
}

void AriSdk::ARI_IBISimTrayStatusRspCb_SDK::ARI_IBISimTrayStatusRspCb_SDK(AriSdk::ARI_IBISimTrayStatusRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTrayStatusRspCb_SDK::~ARI_IBISimTrayStatusRspCb_SDK(AriSdk::ARI_IBISimTrayStatusRspCb_SDK *this)
{
  *this = &unk_2A1D31648;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTrayStatusRspCb_SDK::~ARI_IBISimTrayStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTrayStatusRspCb_SDK::pack(AriSdk::ARI_IBISimTrayStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimWritePhoneNumReq_SDK::ARI_IBISimWritePhoneNumReq_SDK(AriSdk::ARI_IBISimWritePhoneNumReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2C8C8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2C8C8000u, 0);
}

void AriSdk::ARI_IBISimWritePhoneNumReq_SDK::ARI_IBISimWritePhoneNumReq_SDK(AriSdk::ARI_IBISimWritePhoneNumReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimWritePhoneNumReq_SDK::~ARI_IBISimWritePhoneNumReq_SDK(AriSdk::ARI_IBISimWritePhoneNumReq_SDK *this)
{
  *this = &unk_2A1D31680;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4013417087);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4050308C2ALL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimWritePhoneNumReq_SDK::~ARI_IBISimWritePhoneNumReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimWritePhoneNumReq_SDK::pack(AriSdk::ARI_IBISimWritePhoneNumReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x16uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xF3uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::ARI_IBISimWritePhoneNumRspCb_SDK(AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x2D0C8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x2D0C8000u, 0);
}

void AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::ARI_IBISimWritePhoneNumRspCb_SDK(AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::~ARI_IBISimWritePhoneNumRspCb_SDK(AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK *this)
{
  *this = &unk_2A1D316B8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::~ARI_IBISimWritePhoneNumRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::pack(AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void std::vector<IBIEmergencyNumber>::__init_with_size[abi:ne200100]<IBIEmergencyNumber*,IBIEmergencyNumber*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29614F9F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIConfiguredSimInfoReq_SDK::ARI_IBIConfiguredSimInfoReq_SDK(AriSdk::ARI_IBIConfiguredSimInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC88A0000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC88A0000, 0);
}

void AriSdk::ARI_IBIConfiguredSimInfoReq_SDK::ARI_IBIConfiguredSimInfoReq_SDK(AriSdk::ARI_IBIConfiguredSimInfoReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIConfiguredSimInfoReq_SDK::~ARI_IBIConfiguredSimInfoReq_SDK(AriSdk::ARI_IBIConfiguredSimInfoReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIConfiguredSimInfoReq_SDK::pack(AriSdk::ARI_IBIConfiguredSimInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::ARI_IBIConfiguredSimInfoRspCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC90A0000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC90A0000, 0);
}

void AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::ARI_IBIConfiguredSimInfoRspCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::~ARI_IBIConfiguredSimInfoRspCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK *this)
{
  *this = &unk_2A1D31B00;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::~ARI_IBIConfiguredSimInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::pack(AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 4, v9, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

AriOsa *AriSdk::TlvArray<IBISimInfoStruct,5ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) < 6)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v12, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v10 = v13 >= 0 ? v12 : v12[0];
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3);
      *__p = 136316418;
      *&__p[4] = "ari";
      v15 = 2080;
      v16 = v10;
      v17 = 1024;
      v18 = 360;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = 5;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3), 5);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_296150254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::ARI_IBIConfiguredSimInfoIndCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9828000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9828000, 0);
}

void AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::ARI_IBIConfiguredSimInfoIndCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::~ARI_IBIConfiguredSimInfoIndCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK *this)
{
  *this = &unk_2A1D31B38;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::~ARI_IBIConfiguredSimInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::pack(AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIEnableVirtualSimReq_SDK::ARI_IBIEnableVirtualSimReq_SDK(AriSdk::ARI_IBIEnableVirtualSimReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC88B0000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC88B0000, 0);
}

void AriSdk::ARI_IBIEnableVirtualSimReq_SDK::ARI_IBIEnableVirtualSimReq_SDK(AriSdk::ARI_IBIEnableVirtualSimReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEnableVirtualSimReq_SDK::~ARI_IBIEnableVirtualSimReq_SDK(AriSdk::ARI_IBIEnableVirtualSimReq_SDK *this)
{
  *this = &unk_2A1D31B70;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEnableVirtualSimReq_SDK::~ARI_IBIEnableVirtualSimReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEnableVirtualSimReq_SDK::pack(AriSdk::ARI_IBIEnableVirtualSimReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::ARI_IBIEnableVirtualSimRspCb_SDK(AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC90B0000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC90B0000, 0);
}

void AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::ARI_IBIEnableVirtualSimRspCb_SDK(AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::~ARI_IBIEnableVirtualSimRspCb_SDK(AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK *this)
{
  *this = &unk_2A1D31BA8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::~ARI_IBIEnableVirtualSimRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::pack(AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::ARI_IBIEnableVirtualSimIndCb_SDK(AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9838000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9838000, 0);
}

void AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::ARI_IBIEnableVirtualSimIndCb_SDK(AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::~ARI_IBIEnableVirtualSimIndCb_SDK(AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK *this)
{
  *this = &unk_2A1D31BE0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::~ARI_IBIEnableVirtualSimIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::pack(AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIEosStatusReq_SDK::ARI_IBIEosStatusReq_SDK(AriSdk::ARI_IBIEosStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC8888000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC8888000, 0);
}

void AriSdk::ARI_IBIEosStatusReq_SDK::ARI_IBIEosStatusReq_SDK(AriSdk::ARI_IBIEosStatusReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEosStatusReq_SDK::~ARI_IBIEosStatusReq_SDK(AriSdk::ARI_IBIEosStatusReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEosStatusReq_SDK::pack(AriSdk::ARI_IBIEosStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIEosStatusRspCb_SDK::ARI_IBIEosStatusRspCb_SDK(AriSdk::ARI_IBIEosStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9088000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9088000, 0);
}

void AriSdk::ARI_IBIEosStatusRspCb_SDK::ARI_IBIEosStatusRspCb_SDK(AriSdk::ARI_IBIEosStatusRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEosStatusRspCb_SDK::~ARI_IBIEosStatusRspCb_SDK(AriSdk::ARI_IBIEosStatusRspCb_SDK *this)
{
  *this = &unk_2A1D31C50;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEosStatusRspCb_SDK::~ARI_IBIEosStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEosStatusRspCb_SDK::pack(AriSdk::ARI_IBIEosStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIEosStatusIndCb_SDK::ARI_IBIEosStatusIndCb_SDK(AriSdk::ARI_IBIEosStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9818000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9818000, 0);
}

void AriSdk::ARI_IBIEosStatusIndCb_SDK::ARI_IBIEosStatusIndCb_SDK(AriSdk::ARI_IBIEosStatusIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEosStatusIndCb_SDK::~ARI_IBIEosStatusIndCb_SDK(AriSdk::ARI_IBIEosStatusIndCb_SDK *this)
{
  *this = &unk_2A1D31C88;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEosStatusIndCb_SDK::~ARI_IBIEosStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEosStatusIndCb_SDK::pack(AriSdk::ARI_IBIEosStatusIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::ARI_IBIMapModemInstanceToSimReq_SDK(AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC88A8000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC88A8000, 0);
}

void AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::ARI_IBIMapModemInstanceToSimReq_SDK(AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::~ARI_IBIMapModemInstanceToSimReq_SDK(AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK *this)
{
  *this = &unk_2A1D31CC0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::~ARI_IBIMapModemInstanceToSimReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::pack(AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::ARI_IBIMapModemInstanceToSimRspCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC90A8000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC90A8000, 0);
}

void AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::ARI_IBIMapModemInstanceToSimRspCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::~ARI_IBIMapModemInstanceToSimRspCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK *this)
{
  *this = &unk_2A1D31CF8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::~ARI_IBIMapModemInstanceToSimRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::pack(AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::ARI_IBIMapModemInstanceToSimIndCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9830000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9830000, 0);
}

void AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::ARI_IBIMapModemInstanceToSimIndCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::~ARI_IBIMapModemInstanceToSimIndCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK *this)
{
  *this = &unk_2A1D31D30;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::~ARI_IBIMapModemInstanceToSimIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::pack(AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylATCResultReq_SDK::ARI_IBIVinylATCResultReq_SDK(AriSdk::ARI_IBIVinylATCResultReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC88C0000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC88C0000, 0);
}

void AriSdk::ARI_IBIVinylATCResultReq_SDK::ARI_IBIVinylATCResultReq_SDK(AriSdk::ARI_IBIVinylATCResultReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylATCResultReq_SDK::~ARI_IBIVinylATCResultReq_SDK(AriSdk::ARI_IBIVinylATCResultReq_SDK *this)
{
  *this = &unk_2A1D31D68;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylATCResultReq_SDK::~ARI_IBIVinylATCResultReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylATCResultReq_SDK::pack(AriSdk::ARI_IBIVinylATCResultReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 5, v10, v11 - v10, 0), !result))
        {
          v12 = *(this + 16);
          if (!v12 || (result = AriMsg::pack(*(this + 6), 6, v12, 1uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

AriOsa *AriSdk::TlvArray<IBIVinylProfilesInfoStruct,15ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2)) < 0x10)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v12, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v10 = v13 >= 0 ? v12 : v12[0];
      v11 = 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v15 = 2080;
      v16 = v10;
      v17 = 1024;
      v18 = 360;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = 15;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2), 15);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_296152BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIVinylATCResultRspCb_SDK::ARI_IBIVinylATCResultRspCb_SDK(AriSdk::ARI_IBIVinylATCResultRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC90C0000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC90C0000, 0);
}

void AriSdk::ARI_IBIVinylATCResultRspCb_SDK::ARI_IBIVinylATCResultRspCb_SDK(AriSdk::ARI_IBIVinylATCResultRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylATCResultRspCb_SDK::~ARI_IBIVinylATCResultRspCb_SDK(AriSdk::ARI_IBIVinylATCResultRspCb_SDK *this)
{
  *this = &unk_2A1D31DA0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylATCResultRspCb_SDK::~ARI_IBIVinylATCResultRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylATCResultRspCb_SDK::pack(AriSdk::ARI_IBIVinylATCResultRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 1uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIVinylATcmdIndCb_SDK::ARI_IBIVinylATcmdIndCb_SDK(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9848000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9848000, 0);
}

void AriSdk::ARI_IBIVinylATcmdIndCb_SDK::ARI_IBIVinylATcmdIndCb_SDK(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylATcmdIndCb_SDK::~ARI_IBIVinylATcmdIndCb_SDK(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this)
{
  *this = &unk_2A1D31DD8;
  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylATcmdIndCb_SDK::~ARI_IBIVinylATcmdIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylATcmdIndCb_SDK::pack(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      v10 = *(this + 13);
      v11 = !v9 || v9 == v10;
      if (v11 || (result = AriMsg::pack(*(this + 6), 3, v9, v10 - v9, 0), !result))
      {
        v12 = *(this + 15);
        if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 4, v12, v13 - v12, 0), !result))
        {
          v14 = *(this + 18);
          if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 5, v14, v15 - v14, 0), !result))
          {
            v16 = *(this + 21);
            if (!v16 || (v17 = *(this + 22), v16 == v17) || (result = AriMsg::pack(*(this + 6), 6, v16, v17 - v16, 0), !result))
            {
              v18 = *(this + 24);
              if (!v18 || (result = AriMsg::pack(*(this + 6), 7, v18, 1uLL, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylATcmdIndCb_SDK::unpack(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void AriSdk::ARI_IBIVinylAuthPsoReq_SDK::ARI_IBIVinylAuthPsoReq_SDK(AriSdk::ARI_IBIVinylAuthPsoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC8830000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC8830000, 0);
}

void AriSdk::ARI_IBIVinylAuthPsoReq_SDK::ARI_IBIVinylAuthPsoReq_SDK(AriSdk::ARI_IBIVinylAuthPsoReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylAuthPsoReq_SDK::~ARI_IBIVinylAuthPsoReq_SDK(AriSdk::ARI_IBIVinylAuthPsoReq_SDK *this)
{
  *this = &unk_2A1D31E10;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylAuthPsoReq_SDK::~ARI_IBIVinylAuthPsoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylAuthPsoReq_SDK::pack(AriSdk::ARI_IBIVinylAuthPsoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_296153F6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,3584ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xE01)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 3584;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 3584);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_2961541B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::ARI_IBIVinylAuthPsoRspCb_SDK(AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9030000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9030000, 0);
}

void AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::ARI_IBIVinylAuthPsoRspCb_SDK(AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::~ARI_IBIVinylAuthPsoRspCb_SDK(AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK *this)
{
  *this = &unk_2A1D31E48;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::~ARI_IBIVinylAuthPsoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::pack(AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_2961547AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::ARI_IBIVinylFinalizePsoReq_SDK(AriSdk::ARI_IBIVinylFinalizePsoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC8838000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC8838000, 0);
}

void AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::ARI_IBIVinylFinalizePsoReq_SDK(AriSdk::ARI_IBIVinylFinalizePsoReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::~ARI_IBIVinylFinalizePsoReq_SDK(AriSdk::ARI_IBIVinylFinalizePsoReq_SDK *this)
{
  *this = &unk_2A1D31E80;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::~ARI_IBIVinylFinalizePsoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::pack(AriSdk::ARI_IBIVinylFinalizePsoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_296154E1C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::ARI_IBIVinylFinalizePsoRspCb_SDK(AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9038000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9038000, 0);
}

void AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::ARI_IBIVinylFinalizePsoRspCb_SDK(AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::~ARI_IBIVinylFinalizePsoRspCb_SDK(AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK *this)
{
  *this = &unk_2A1D31EB8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::~ARI_IBIVinylFinalizePsoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::pack(AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylGetDataReq_SDK::ARI_IBIVinylGetDataReq_SDK(AriSdk::ARI_IBIVinylGetDataReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC8810000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC8810000, 0);
}

void AriSdk::ARI_IBIVinylGetDataReq_SDK::ARI_IBIVinylGetDataReq_SDK(AriSdk::ARI_IBIVinylGetDataReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylGetDataReq_SDK::~ARI_IBIVinylGetDataReq_SDK(AriSdk::ARI_IBIVinylGetDataReq_SDK *this)
{
  *this = &unk_2A1D31EF0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylGetDataReq_SDK::~ARI_IBIVinylGetDataReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylGetDataReq_SDK::pack(AriSdk::ARI_IBIVinylGetDataReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylGetDataRspCb_SDK::ARI_IBIVinylGetDataRspCb_SDK(AriSdk::ARI_IBIVinylGetDataRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9010000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9010000, 0);
}

void AriSdk::ARI_IBIVinylGetDataRspCb_SDK::ARI_IBIVinylGetDataRspCb_SDK(AriSdk::ARI_IBIVinylGetDataRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylGetDataRspCb_SDK::~ARI_IBIVinylGetDataRspCb_SDK(AriSdk::ARI_IBIVinylGetDataRspCb_SDK *this)
{
  *this = &unk_2A1D31F28;
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  v3 = *(this + 62);
  *(this + 62) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 61);
  *(this + 61) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 60);
  *(this + 60) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 59);
  *(this + 59) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 56);
  if (v7)
  {
    *(this + 57) = v7;
    operator delete(v7);
  }

  v8 = *(this + 53);
  if (v8)
  {
    *(this + 54) = v8;
    operator delete(v8);
  }

  v9 = *(this + 50);
  if (v9)
  {
    *(this + 51) = v9;
    operator delete(v9);
  }

  v10 = *(this + 49);
  *(this + 49) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40BDFB0063);
  }

  v11 = *(this + 46);
  if (v11)
  {
    *(this + 47) = v11;
    operator delete(v11);
  }

  v12 = *(this + 43);
  if (v12)
  {
    *(this + 44) = v12;
    operator delete(v12);
  }

  v13 = *(this + 40);
  if (v13)
  {
    *(this + 41) = v13;
    operator delete(v13);
  }

  v14 = *(this + 37);
  if (v14)
  {
    *(this + 38) = v14;
    operator delete(v14);
  }

  v15 = *(this + 34);
  if (v15)
  {
    *(this + 35) = v15;
    operator delete(v15);
  }

  v16 = *(this + 31);
  if (v16)
  {
    *(this + 32) = v16;
    operator delete(v16);
  }

  v17 = *(this + 28);
  if (v17)
  {
    *(this + 29) = v17;
    operator delete(v17);
  }

  v18 = *(this + 25);
  if (v18)
  {
    *(this + 26) = v18;
    operator delete(v18);
  }

  v19 = *(this + 22);
  if (v19)
  {
    *(this + 23) = v19;
    operator delete(v19);
  }

  v20 = *(this + 19);
  if (v20)
  {
    *(this + 20) = v20;
    operator delete(v20);
  }

  v21 = *(this + 16);
  if (v21)
  {
    *(this + 17) = v21;
    operator delete(v21);
  }

  v22 = *(this + 15);
  *(this + 15) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4077774924);
  }

  v23 = *(this + 12);
  if (v23)
  {
    *(this + 13) = v23;
    operator delete(v23);
  }

  v24 = *(this + 11);
  *(this + 11) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C40BDFB0063);
  }

  v25 = *(this + 10);
  *(this + 10) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4077774924);
  }

  v26 = *(this + 9);
  *(this + 9) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 8);
  *(this + 8) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylGetDataRspCb_SDK::~ARI_IBIVinylGetDataRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylGetDataRspCb_SDK::pack(AriSdk::ARI_IBIVinylGetDataRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (v13 = *(this + 17), v12 == v13) || (result = AriMsg::pack(*(this + 6), 8, v12, v13 - v12, 0), !result))
              {
                v14 = *(this + 19);
                if (!v14 || (v15 = *(this + 20), v14 == v15) || (result = AriMsg::pack(*(this + 6), 9, v14, v15 - v14, 0), !result))
                {
                  v16 = *(this + 22);
                  if (!v16 || (v17 = *(this + 23), v16 == v17) || (result = AriMsg::pack(*(this + 6), 10, v16, v17 - v16, 0), !result))
                  {
                    v18 = *(this + 25);
                    if (!v18 || (v19 = *(this + 26), v18 == v19) || (result = AriMsg::pack(*(this + 6), 11, v18, v19 - v18, 0), !result))
                    {
                      v20 = *(this + 28);
                      if (!v20 || (v21 = *(this + 29), v20 == v21) || (result = AriMsg::pack(*(this + 6), 12, v20, v21 - v20, 0), !result))
                      {
                        v22 = *(this + 31);
                        if (!v22 || (v23 = *(this + 32), v22 == v23) || (result = AriMsg::pack(*(this + 6), 13, v22, v23 - v22, 0), !result))
                        {
                          v24 = *(this + 34);
                          if (!v24 || (v25 = *(this + 35), v24 == v25) || (result = AriMsg::pack(*(this + 6), 14, v24, v25 - v24, 0), !result))
                          {
                            v26 = *(this + 37);
                            if (!v26 || (v27 = *(this + 38), v26 == v27) || (result = AriMsg::pack(*(this + 6), 15, v26, v27 - v26, 0), !result))
                            {
                              v28 = *(this + 40);
                              if (!v28 || (v29 = *(this + 41), v28 == v29) || (result = AriMsg::pack(*(this + 6), 16, v28, v29 - v28, 0), !result))
                              {
                                v30 = *(this + 43);
                                if (!v30 || (v31 = *(this + 44), v30 == v31) || (result = AriMsg::pack(*(this + 6), 17, v30, v31 - v30, 0), !result))
                                {
                                  v32 = *(this + 46);
                                  if (!v32 || (v33 = *(this + 47), v32 == v33) || (result = AriMsg::pack(*(this + 6), 18, v32, v33 - v32, 0), !result))
                                  {
                                    v34 = *(this + 49);
                                    if (!v34 || (result = AriMsg::pack(*(this + 6), 19, v34, 2uLL, 0), !result))
                                    {
                                      v35 = *(this + 50);
                                      if (!v35 || (v36 = *(this + 51), v35 == v36) || (result = AriMsg::pack(*(this + 6), 20, v35, v36 - v35, 0), !result))
                                      {
                                        v37 = *(this + 53);
                                        if (!v37 || (v38 = *(this + 54), v37 == v38) || (result = AriMsg::pack(*(this + 6), 21, v37, v38 - v37, 0), !result))
                                        {
                                          v39 = *(this + 56);
                                          if (!v39 || (v40 = *(this + 57), v39 == v40) || (result = AriMsg::pack(*(this + 6), 22, v39, v40 - v39, 0), !result))
                                          {
                                            v41 = *(this + 59);
                                            if (!v41 || (result = AriMsg::pack(*(this + 6), 23, v41, 2uLL, 0), !result))
                                            {
                                              v42 = *(this + 60);
                                              if (!v42 || (result = AriMsg::pack(*(this + 6), 24, v42, 2uLL, 0), !result))
                                              {
                                                v43 = *(this + 61);
                                                if (!v43 || (result = AriMsg::pack(*(this + 6), 25, v43, 1uLL, 0), !result))
                                                {
                                                  v44 = *(this + 62);
                                                  if (!v44 || (result = AriMsg::pack(*(this + 6), 26, v44, 2uLL, 0), !result))
                                                  {
                                                    v45 = *(this + 63);
                                                    if (!v45 || (v46 = *(this + 64), v45 == v46) || (result = AriMsg::pack(*(this + 6), 27, v45, v46 - v45, 0), !result))
                                                    {
                                                      result = 0;
                                                      *a2 = *(this + 6);
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_296156D44(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,8ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 9)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 8;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 8);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_29615709C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,1000ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x3E9)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 1000;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 1000);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_29615728C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIVinylGetEidReq_SDK::ARI_IBIVinylGetEidReq_SDK(AriSdk::ARI_IBIVinylGetEidReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC8808000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC8808000, 0);
}

void AriSdk::ARI_IBIVinylGetEidReq_SDK::ARI_IBIVinylGetEidReq_SDK(AriSdk::ARI_IBIVinylGetEidReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylGetEidReq_SDK::~ARI_IBIVinylGetEidReq_SDK(AriSdk::ARI_IBIVinylGetEidReq_SDK *this)
{
  *this = &unk_2A1D31F60;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylGetEidReq_SDK::~ARI_IBIVinylGetEidReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylGetEidReq_SDK::pack(AriSdk::ARI_IBIVinylGetEidReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIVinylGetEidRspCb_SDK::ARI_IBIVinylGetEidRspCb_SDK(AriSdk::ARI_IBIVinylGetEidRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9008000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9008000, 0);
}

void AriSdk::ARI_IBIVinylGetEidRspCb_SDK::ARI_IBIVinylGetEidRspCb_SDK(AriSdk::ARI_IBIVinylGetEidRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylGetEidRspCb_SDK::~ARI_IBIVinylGetEidRspCb_SDK(AriSdk::ARI_IBIVinylGetEidRspCb_SDK *this)
{
  *this = &unk_2A1D31F98;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylGetEidRspCb_SDK::~ARI_IBIVinylGetEidRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylGetEidRspCb_SDK::pack(AriSdk::ARI_IBIVinylGetEidRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void sub_2961579F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::ARI_IBIVinylHwIdSimConfigReq_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC8898000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC8898000, 0);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::ARI_IBIVinylHwIdSimConfigReq_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::~ARI_IBIVinylHwIdSimConfigReq_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::pack(AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::ARI_IBIVinylHwIdSimConfigRspCb_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9098000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9098000, 0);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::ARI_IBIVinylHwIdSimConfigRspCb_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::~ARI_IBIVinylHwIdSimConfigRspCb_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this)
{
  *this = &unk_2A1D32008;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::~ARI_IBIVinylHwIdSimConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::pack(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 1uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    if (v6)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::unpack(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  operator new();
}

void sub_296158148(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    operator delete(v26);
  }

  MEMORY[0x29C257E50](v25, v24, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylInitPsoReq_SDK::ARI_IBIVinylInitPsoReq_SDK(AriSdk::ARI_IBIVinylInitPsoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC8828000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC8828000, 0);
}

void AriSdk::ARI_IBIVinylInitPsoReq_SDK::ARI_IBIVinylInitPsoReq_SDK(AriSdk::ARI_IBIVinylInitPsoReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylInitPsoReq_SDK::~ARI_IBIVinylInitPsoReq_SDK(AriSdk::ARI_IBIVinylInitPsoReq_SDK *this)
{
  *this = &unk_2A1D32040;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylInitPsoReq_SDK::~ARI_IBIVinylInitPsoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylInitPsoReq_SDK::pack(AriSdk::ARI_IBIVinylInitPsoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_2961587A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::ARI_IBIVinylInitPsoRspCb_SDK(AriSdk::ARI_IBIVinylInitPsoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xC9028000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xC9028000, 0);
}

void AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::ARI_IBIVinylInitPsoRspCb_SDK(AriSdk::ARI_IBIVinylInitPsoRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::~ARI_IBIVinylInitPsoRspCb_SDK(AriSdk::ARI_IBIVinylInitPsoRspCb_SDK *this)
{
  *this = &unk_2A1D32078;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::~ARI_IBIVinylInitPsoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::pack(AriSdk::ARI_IBIVinylInitPsoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_296158E00(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}
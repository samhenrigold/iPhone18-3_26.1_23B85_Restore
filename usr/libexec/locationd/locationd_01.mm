void sub_100013F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100013F74(unint64_t *result, __int128 *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_100FBAFFC(result);
    v5 = result[1];
    v7 = result[5];
    v8 = v7 + result[4];
  }

  v9 = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    v7 = result[5];
  }

  result[5] = v7 + 1;
}

void *sub_100014014(unint64_t *a1, void *a2, void *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 32 * (v9 - v8) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_100013C5C(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 8));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 16 * v11;
    v15 = v14;
  }

  v23[0] = v13;
  v23[1] = v15;
  result = sub_100014378(v23, a4);
  if (v14 != v17)
  {
    do
    {
      if (v13 == result)
      {
        v18 = v17;
      }

      else
      {
        v18 = *v13 + 4096;
      }

      if (v14 == v18)
      {
        v18 = v14;
      }

      else
      {
        v19 = v14;
        do
        {
          v20 = a3[1];
          *v19 = *a3;
          v19[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          }

          a3 += 2;
          if ((a3 - *a2) == 4096)
          {
            v21 = a2[1];
            ++a2;
            a3 = v21;
          }

          v19 += 2;
        }

        while (v19 != v18);
      }

      a1[5] += (v18 - v14) >> 4;
      if (v13 == result)
      {
        break;
      }

      v22 = v13[1];
      ++v13;
      v14 = v22;
    }

    while (v22 != v17);
  }

  return result;
}

void *sub_100014164(unint64_t *a1, char *a2, void *a3, char *a4, void *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  return sub_100014014(a1, a2, a3, v5);
}

uint64_t sub_100014198(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 8));
  }

  else
  {
    v8 = (*v7 + 16 * v4);
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 8));
    v11 = (*v10 + 16 * v9);
  }

  sub_100014164(a1, v7, v8, v10, v11);
  return a1;
}

uint64_t sub_10001423C(void *a1)
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
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          sub_100008080(v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
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
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_1003EE22C(a1);
}

void *sub_100014378(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 4);
    if (v4 < 1)
    {
      result -= (255 - v4) >> 8;
    }

    else
    {
      result += v4 >> 8;
    }
  }

  return result;
}

uint64_t sub_1000143D4(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    sub_100008080(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_100014444(a1, 1);
}

uint64_t sub_100014444(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t sub_1000144A4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, v7, a2, a4);
}

uint64_t sub_100014554(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return result;
}

void sub_1000145C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 125) == 1)
  {
    v4 = (a1 + 8);
    memset(&__p, 0, sizeof(__p));
    if (*(a2 + 23) < 0 && *(a2 + 8) >= 0x1C3uLL)
    {
      v5 = 0;
      while (1)
      {
        std::string::basic_string(&v52, a2, v5, 0x1C2uLL, buf);
        sub_10032528C(&v52, &__p);
        if (!v5)
        {
          break;
        }

        if (*(a2 + 23) >= 0)
        {
          v6 = *(a2 + 23);
        }

        else
        {
          v6 = *(a2 + 8);
        }

        if (v6 <= v5 + 450)
        {
          if (qword_1025D4730 != -1)
          {
            sub_1001F3464();
          }

          v21 = qword_1025D4738;
          if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_INFO))
          {
            v22 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v22 = *v4;
            }

            v23 = *(a1 + 764);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136446723;
            v61 = v22;
            v62 = 1026;
            v63 = v23;
            v64 = 2081;
            v65 = p_p;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "#p%{public}s,#me,%{public}d,%{private}s", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4730 != -1)
            {
              sub_1001F3464();
            }

            v29 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v29 = *v4;
            }

            v30 = *(a1 + 764);
            v31 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v31 = __p.__r_.__value_.__r.__words[0];
            }

            v54 = 136446723;
            v55 = v29;
            v56 = 1026;
            v57 = v30;
            v58 = 2081;
            v59 = v31;
            LODWORD(v47) = 28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4738, 1, "#p%{public}s,#me,%{public}d,%{private}s", &v54, v47);
            v33 = v32;
            sub_100152C7C("Generic", 1, 0, 2, "void CLProtobufSerializer::append(const std::string &)", "%s\n", v32);
            if (v33 != buf)
            {
              free(v33);
            }
          }

          v20 = 0;
          goto LABEL_46;
        }

        if (qword_1025D4730 != -1)
        {
          sub_1001F3464();
        }

        v7 = qword_1025D4738;
        if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_INFO))
        {
          v8 = (a1 + 8);
          if (*(a1 + 31) < 0)
          {
            v8 = *v4;
          }

          v9 = *(a1 + 764);
          v10 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136446723;
          v61 = v8;
          v62 = 1026;
          v63 = v9;
          v64 = 2081;
          v65 = v10;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#p%{public}s,#mm,%{public}d,%{private}s", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4730 != -1)
          {
            sub_1001F3464();
          }

          v11 = (a1 + 8);
          if (*(a1 + 31) < 0)
          {
            v11 = *v4;
          }

          v12 = *(a1 + 764);
          v13 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v13 = __p.__r_.__value_.__r.__words[0];
          }

          v54 = 136446723;
          v55 = v11;
          v56 = 1026;
          v57 = v12;
          v58 = 2081;
          v59 = v13;
          LODWORD(v47) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4738, 1, "#p%{public}s,#mm,%{public}d,%{private}s", &v54, v47);
          v15 = v14;
          sub_100152C7C("Generic", 1, 0, 2, "void CLProtobufSerializer::append(const std::string &)", "%s\n", v14);
LABEL_57:
          if (v15 != buf)
          {
            free(v15);
          }
        }

LABEL_35:
        v20 = 1;
LABEL_46:
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        v5 += 450;
        if ((v20 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      if (qword_1025D4730 != -1)
      {
        sub_1001F3464();
      }

      v16 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_INFO))
      {
        v17 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v17 = *v4;
        }

        v18 = *(a1 + 764);
        v19 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136446723;
        v61 = v17;
        v62 = 1026;
        v63 = v18;
        v64 = 2081;
        v65 = v19;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#p%{public}s,#ms,%{public}d,%{private}s", buf, 0x1Cu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_35;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4730 != -1)
      {
        sub_1001F3464();
      }

      v25 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v25 = *v4;
      }

      v26 = *(a1 + 764);
      v27 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = __p.__r_.__value_.__r.__words[0];
      }

      v54 = 136446723;
      v55 = v25;
      v56 = 1026;
      v57 = v26;
      v58 = 2081;
      v59 = v27;
      LODWORD(v47) = 28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4738, 1, "#p%{public}s,#ms,%{public}d,%{private}s", &v54, v47);
      v15 = v28;
      sub_100152C7C("Generic", 1, 0, 2, "void CLProtobufSerializer::append(const std::string &)", "%s\n", v28);
      goto LABEL_57;
    }

    sub_10032528C(a2, &__p);
    if (qword_1025D4730 != -1)
    {
      sub_1001F3464();
    }

    v34 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_INFO))
    {
      v35 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v35 = *v4;
      }

      v36 = *(a1 + 764);
      v37 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v37 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446723;
      v61 = v35;
      v62 = 1026;
      v63 = v36;
      v64 = 2081;
      v65 = v37;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "#p%{public}s,#s,%{public}d,%{private}s", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4730 != -1)
      {
        sub_1001F3464();
      }

      if (*(a1 + 31) < 0)
      {
        v4 = *v4;
      }

      v43 = *(a1 + 764);
      v44 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v44 = __p.__r_.__value_.__r.__words[0];
      }

      v54 = 136446723;
      v55 = v4;
      v56 = 1026;
      v57 = v43;
      v58 = 2081;
      v59 = v44;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4738, 1, "#p%{public}s,#s,%{public}d,%{private}s", &v54, 28);
      v46 = v45;
      sub_100152C7C("Generic", 1, 0, 2, "void CLProtobufSerializer::append(const std::string &)", "%s\n", v45);
      if (v46 != buf)
      {
        free(v46);
      }
    }

LABEL_76:
    ++*(a1 + 764);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (qword_102638320 && *(a1 + 126) == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v38 = *(a2 + 23);
    }

    else
    {
      v38 = *(a2 + 8);
    }

    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
    }

    else
    {
      v39 = 1;
    }

    sub_1000166F8(&__p, v39 + v38 + 4);
    wireless_diagnostics::google::protobuf::io::ArrayOutputStream::ArrayOutputStream(buf, __p.__r_.__value_.__l.__data_, LODWORD(__p.__r_.__value_.__r.__words[1]) - LODWORD(__p.__r_.__value_.__l.__data_), -1);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(&v54, v38);
    if (*(a2 + 23) >= 0)
    {
      v40 = a2;
    }

    else
    {
      v40 = *a2;
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(&v54, v40, v38);
    v41 = cnlogging::details::CNProtobufStreamChecksum::adler32();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(&v54, v41);
    v42 = qword_102638320;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10001C160;
    block[3] = &unk_1024CA0B8;
    block[4] = a1;
    block[5] = v39 + v38 + 4;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    sub_10001676C(&v49, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
    dispatch_async(v42, block);
    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(&v54);
    wireless_diagnostics::google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(buf);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_100014EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100014F38(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = (a1 + 48);
  v2[2] = 0;
  return sub_10001676C(v2, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
}

void sub_100014F50(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &off_1024D4F50;
  v2 = (a1 + 8);
  sub_100014FB0(a1);
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_100014FB0(void *result)
{
  if (qword_102639980 != result)
  {
    v1 = result;
    v2 = result[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[5];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_100015050(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024D4ED8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1000150A4(void *result)
{
  if (qword_1026372F8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[12];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[13];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[14];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[15];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[16];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[17];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[18];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[19];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[20];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[21];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[22];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[23];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[24];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v1[25];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v1[26];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v1[27];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = v1[28];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = v1[29];
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = v1[30];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v1[31];
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = v1[32];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = v1[33];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = v1[34];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = v1[35];
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = v1[36];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = v1[37];
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = v1[38];
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v1[39];
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = v1[40];
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    v42 = v1[41];
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    v43 = v1[42];
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    v44 = v1[43];
    if (v44)
    {
      (*(*v44 + 8))(v44);
    }

    v45 = v1[44];
    if (v45)
    {
      (*(*v45 + 8))(v45);
    }

    v46 = v1[45];
    if (v46)
    {
      (*(*v46 + 8))(v46);
    }

    v47 = v1[46];
    if (v47)
    {
      (*(*v47 + 8))(v47);
    }

    v48 = v1[47];
    if (v48)
    {
      (*(*v48 + 8))(v48);
    }

    v49 = v1[48];
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }

    v50 = v1[49];
    if (v50)
    {
      (*(*v50 + 8))(v50);
    }

    v51 = v1[50];
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }

    v52 = v1[51];
    if (v52)
    {
      (*(*v52 + 8))(v52);
    }

    v53 = v1[52];
    if (v53)
    {
      (*(*v53 + 8))(v53);
    }

    v54 = v1[53];
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }

    v55 = v1[54];
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    v56 = v1[55];
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }

    v57 = v1[56];
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }

    v58 = v1[57];
    if (v58)
    {
      (*(*v58 + 8))(v58);
    }

    v59 = v1[58];
    if (v59)
    {
      (*(*v59 + 8))(v59);
    }

    result = v1[59];
    if (result)
    {
      v60 = *(*result + 8);

      return v60();
    }
  }

  return result;
}

void sub_100015B10(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B4D80;
  sub_10000CE20(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100015B88(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 488);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_1026372F8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 488);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_1026372F8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_1026372F8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_1026372F8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_1026372F8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_49:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_1026372F8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_52:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_1026372F8 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_55:
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(qword_1026372F8 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v14, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_58:
  v15 = *(v5 + 72);
  if (!v15)
  {
    v15 = *(qword_1026372F8 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v15, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_61:
  v16 = *(v5 + 80);
  if (!v16)
  {
    v16 = *(qword_1026372F8 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v16, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_64:
  v17 = *(v5 + 88);
  if (!v17)
  {
    v17 = *(qword_1026372F8 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v17, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_70;
  }

LABEL_67:
  v18 = *(v5 + 96);
  if (!v18)
  {
    v18 = *(qword_1026372F8 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v18, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_73;
  }

LABEL_70:
  v19 = *(v5 + 104);
  if (!v19)
  {
    v19 = *(qword_1026372F8 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v19, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_73:
  v20 = *(v5 + 112);
  if (!v20)
  {
    v20 = *(qword_1026372F8 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v20, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_76:
  v21 = *(v5 + 120);
  if (!v21)
  {
    v21 = *(qword_1026372F8 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v21, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_79:
  v22 = *(v5 + 128);
  if (!v22)
  {
    v22 = *(qword_1026372F8 + 128);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v22, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_82:
  v23 = *(v5 + 136);
  if (!v23)
  {
    v23 = *(qword_1026372F8 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v23, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

LABEL_85:
  v24 = *(v5 + 144);
  if (!v24)
  {
    v24 = *(qword_1026372F8 + 144);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v24, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_91;
  }

LABEL_88:
  v25 = *(v5 + 152);
  if (!v25)
  {
    v25 = *(qword_1026372F8 + 152);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v25, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_94;
  }

LABEL_91:
  v26 = *(v5 + 160);
  if (!v26)
  {
    v26 = *(qword_1026372F8 + 160);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v26, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_94:
  v27 = *(v5 + 168);
  if (!v27)
  {
    v27 = *(qword_1026372F8 + 168);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v27, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_97:
  v28 = *(v5 + 176);
  if (!v28)
  {
    v28 = *(qword_1026372F8 + 176);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v28, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_100:
  v29 = *(v5 + 184);
  if (!v29)
  {
    v29 = *(qword_1026372F8 + 184);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v29, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_106;
  }

LABEL_103:
  v30 = *(v5 + 192);
  if (!v30)
  {
    v30 = *(qword_1026372F8 + 192);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v30, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_109;
  }

LABEL_106:
  v31 = *(v5 + 200);
  if (!v31)
  {
    v31 = *(qword_1026372F8 + 200);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v31, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

LABEL_109:
  v32 = *(v5 + 208);
  if (!v32)
  {
    v32 = *(qword_1026372F8 + 208);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v32, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_115;
  }

LABEL_112:
  v33 = *(v5 + 216);
  if (!v33)
  {
    v33 = *(qword_1026372F8 + 216);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v33, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_118;
  }

LABEL_115:
  v34 = *(v5 + 224);
  if (!v34)
  {
    v34 = *(qword_1026372F8 + 224);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v34, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_121;
  }

LABEL_118:
  v35 = *(v5 + 232);
  if (!v35)
  {
    v35 = *(qword_1026372F8 + 232);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1D, v35, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_124;
  }

LABEL_121:
  v36 = *(v5 + 240);
  if (!v36)
  {
    v36 = *(qword_1026372F8 + 240);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v36, a2, a4);
  v6 = *(v5 + 488);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_127;
  }

LABEL_124:
  v37 = *(v5 + 248);
  if (!v37)
  {
    v37 = *(qword_1026372F8 + 248);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v37, a2, a4);
  if ((*(v5 + 488) & 0x80000000) != 0)
  {
LABEL_127:
    v38 = *(v5 + 256);
    if (!v38)
    {
      v38 = *(qword_1026372F8 + 256);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v38, a2, a4);
  }

LABEL_130:
  v39 = *(v5 + 492);
  if (v39)
  {
    v40 = *(v5 + 264);
    if (!v40)
    {
      v40 = *(qword_1026372F8 + 264);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x21, v40, a2, a4);
    v39 = *(v5 + 492);
    if ((v39 & 2) == 0)
    {
LABEL_132:
      if ((v39 & 4) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_165;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_132;
  }

  v41 = *(v5 + 272);
  if (!v41)
  {
    v41 = *(qword_1026372F8 + 272);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x22, v41, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 4) == 0)
  {
LABEL_133:
    if ((v39 & 8) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_168;
  }

LABEL_165:
  v42 = *(v5 + 280);
  if (!v42)
  {
    v42 = *(qword_1026372F8 + 280);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x23, v42, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 8) == 0)
  {
LABEL_134:
    if ((v39 & 0x10) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_171;
  }

LABEL_168:
  v43 = *(v5 + 288);
  if (!v43)
  {
    v43 = *(qword_1026372F8 + 288);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3EC, v43, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x10) == 0)
  {
LABEL_135:
    if ((v39 & 0x20) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_174;
  }

LABEL_171:
  v44 = *(v5 + 296);
  if (!v44)
  {
    v44 = *(qword_1026372F8 + 296);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3EE, v44, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x20) == 0)
  {
LABEL_136:
    if ((v39 & 0x40) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_177;
  }

LABEL_174:
  v45 = *(v5 + 304);
  if (!v45)
  {
    v45 = *(qword_1026372F8 + 304);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3EF, v45, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x40) == 0)
  {
LABEL_137:
    if ((v39 & 0x80) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_180;
  }

LABEL_177:
  v46 = *(v5 + 312);
  if (!v46)
  {
    v46 = *(qword_1026372F8 + 312);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F0, v46, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x80) == 0)
  {
LABEL_138:
    if ((v39 & 0x100) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_183;
  }

LABEL_180:
  v47 = *(v5 + 320);
  if (!v47)
  {
    v47 = *(qword_1026372F8 + 320);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F2, v47, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x100) == 0)
  {
LABEL_139:
    if ((v39 & 0x200) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_186;
  }

LABEL_183:
  v48 = *(v5 + 328);
  if (!v48)
  {
    v48 = *(qword_1026372F8 + 328);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F4, v48, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x200) == 0)
  {
LABEL_140:
    if ((v39 & 0x400) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_189;
  }

LABEL_186:
  v49 = *(v5 + 336);
  if (!v49)
  {
    v49 = *(qword_1026372F8 + 336);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F6, v49, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x400) == 0)
  {
LABEL_141:
    if ((v39 & 0x800) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_192;
  }

LABEL_189:
  v50 = *(v5 + 344);
  if (!v50)
  {
    v50 = *(qword_1026372F8 + 344);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F8, v50, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x800) == 0)
  {
LABEL_142:
    if ((v39 & 0x1000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_195;
  }

LABEL_192:
  v51 = *(v5 + 352);
  if (!v51)
  {
    v51 = *(qword_1026372F8 + 352);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F9, v51, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x1000) == 0)
  {
LABEL_143:
    if ((v39 & 0x2000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_198;
  }

LABEL_195:
  v52 = *(v5 + 360);
  if (!v52)
  {
    v52 = *(qword_1026372F8 + 360);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7D0, v52, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x2000) == 0)
  {
LABEL_144:
    if ((v39 & 0x4000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_201;
  }

LABEL_198:
  v53 = *(v5 + 368);
  if (!v53)
  {
    v53 = *(qword_1026372F8 + 368);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7D1, v53, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x4000) == 0)
  {
LABEL_145:
    if ((v39 & 0x8000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_204;
  }

LABEL_201:
  v54 = *(v5 + 376);
  if (!v54)
  {
    v54 = *(qword_1026372F8 + 376);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7D2, v54, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x8000) == 0)
  {
LABEL_146:
    if ((v39 & 0x10000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_205;
  }

LABEL_204:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x7D3, *(v5 + 480), a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x10000) == 0)
  {
LABEL_147:
    if ((v39 & 0x20000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_208;
  }

LABEL_205:
  v55 = *(v5 + 384);
  if (!v55)
  {
    v55 = *(qword_1026372F8 + 384);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7D4, v55, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x20000) == 0)
  {
LABEL_148:
    if ((v39 & 0x40000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_211;
  }

LABEL_208:
  v56 = *(v5 + 392);
  if (!v56)
  {
    v56 = *(qword_1026372F8 + 392);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7D5, v56, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x40000) == 0)
  {
LABEL_149:
    if ((v39 & 0x80000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_214;
  }

LABEL_211:
  v57 = *(v5 + 400);
  if (!v57)
  {
    v57 = *(qword_1026372F8 + 400);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7D6, v57, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x80000) == 0)
  {
LABEL_150:
    if ((v39 & 0x100000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_217;
  }

LABEL_214:
  v58 = *(v5 + 408);
  if (!v58)
  {
    v58 = *(qword_1026372F8 + 408);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7D7, v58, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x100000) == 0)
  {
LABEL_151:
    if ((v39 & 0x200000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_220;
  }

LABEL_217:
  v59 = *(v5 + 416);
  if (!v59)
  {
    v59 = *(qword_1026372F8 + 416);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7D8, v59, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x200000) == 0)
  {
LABEL_152:
    if ((v39 & 0x400000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_223;
  }

LABEL_220:
  v60 = *(v5 + 424);
  if (!v60)
  {
    v60 = *(qword_1026372F8 + 424);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7D9, v60, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x400000) == 0)
  {
LABEL_153:
    if ((v39 & 0x800000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_226;
  }

LABEL_223:
  v61 = *(v5 + 432);
  if (!v61)
  {
    v61 = *(qword_1026372F8 + 432);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7DA, v61, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x800000) == 0)
  {
LABEL_154:
    if ((v39 & 0x1000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_229;
  }

LABEL_226:
  v62 = *(v5 + 440);
  if (!v62)
  {
    v62 = *(qword_1026372F8 + 440);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7DB, v62, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x1000000) == 0)
  {
LABEL_155:
    if ((v39 & 0x2000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_232;
  }

LABEL_229:
  v63 = *(v5 + 448);
  if (!v63)
  {
    v63 = *(qword_1026372F8 + 448);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7DC, v63, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x2000000) == 0)
  {
LABEL_156:
    if ((v39 & 0x4000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_235;
  }

LABEL_232:
  v64 = *(v5 + 456);
  if (!v64)
  {
    v64 = *(qword_1026372F8 + 456);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7DD, v64, a2, a4);
  v39 = *(v5 + 492);
  if ((v39 & 0x4000000) == 0)
  {
LABEL_157:
    if ((v39 & 0x8000000) == 0)
    {
      return result;
    }

    goto LABEL_238;
  }

LABEL_235:
  v65 = *(v5 + 464);
  if (!v65)
  {
    v65 = *(qword_1026372F8 + 464);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7DE, v65, a2, a4);
  if ((*(v5 + 492) & 0x8000000) != 0)
  {
LABEL_238:
    v66 = *(v5 + 472);
    if (!v66)
    {
      v66 = *(qword_1026372F8 + 472);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x7DF, v66, a2, a4);
  }

  return result;
}

uint64_t sub_100016608(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(a1 + 52))
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      v6 = *(qword_102639980 + 32);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizes((a1 + 8), 2, 3, a2);
  if ((*(a1 + 52) & 2) != 0)
  {
    v9 = *(a1 + 40);
    if (!v9)
    {
      v9 = *(qword_102639980 + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, v8);
  }

  return result;
}

void sub_1000166A8(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_10028C64C();
}

uint64_t *sub_1000166F8(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1000166A8(a1, a2);
  }

  return a1;
}

void sub_100016750(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10001676C(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000166A8(result, a4);
  }

  return result;
}

void sub_1000167CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000167E8(unsigned int *a1)
{
  result = *a1;
  if (result >= 0x1D)
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v4 = *a1;
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertServiceTypeToProtobuf,type should never be max,%d", v5, 8u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018DB754(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000168DC(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 52))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = *(qword_102639980 + 32);
  }

  v5 = sub_100017BEC(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  if ((*(a1 + 52) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 40);
    if (!v8)
    {
      v8 = *(qword_102639980 + 40);
    }

    v9 = sub_1000169B8(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v3 += v11 + v12 + 1;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::ByteSize((a1 + 8)) + v3;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000169B8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 488);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_1026372F8 + 8);
  }

  v6 = sub_100293BA8(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_1026372F8 + 16);
    }

    v10 = sub_100308D4C(v9);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 488);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      v13 = *(qword_1026372F8 + 24);
    }

    v14 = sub_100307CF0(v13);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(a1 + 488);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 32);
  if (!v17)
  {
    v17 = *(qword_1026372F8 + 32);
  }

  v18 = sub_1002202E8(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(a1 + 40);
  if (!v21)
  {
    v21 = *(qword_1026372F8 + 40);
  }

  v22 = sub_10042C864(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(a1 + 48);
  if (!v25)
  {
    v25 = *(qword_1026372F8 + 48);
  }

  v26 = sub_10042DAD8(v25, a2);
  v27 = v26;
  if (v26 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
  }

  else
  {
    v28 = 1;
  }

  v4 = (v4 + v27 + v28 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v29 = *(a1 + 56);
  if (!v29)
  {
    v29 = *(qword_1026372F8 + 56);
  }

  v30 = sub_10043179C(v29, a2);
  v31 = v30;
  if (v30 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
  }

  else
  {
    v32 = 1;
  }

  v4 = (v4 + v31 + v32 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x80) != 0)
  {
LABEL_55:
    v33 = *(a1 + 64);
    if (!v33)
    {
      v33 = *(qword_1026372F8 + 64);
    }

    v34 = sub_10029651C(v33);
    v35 = v34;
    if (v34 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
    }

    else
    {
      v36 = 1;
    }

    v4 = (v4 + v35 + v36 + 1);
    v3 = *(a1 + 488);
  }

LABEL_61:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v3 & 0x100) != 0)
  {
    v37 = *(a1 + 72);
    if (!v37)
    {
      v37 = *(qword_1026372F8 + 72);
    }

    v38 = sub_1004325F0(v37, a2);
    v39 = v38;
    if (v38 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
    }

    else
    {
      v40 = 1;
    }

    v4 = (v4 + v39 + v40 + 1);
    v3 = *(a1 + 488);
    if ((v3 & 0x200) == 0)
    {
LABEL_64:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_83;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v41 = *(a1 + 80);
  if (!v41)
  {
    v41 = *(qword_1026372F8 + 80);
  }

  v42 = sub_100433E40(v41, a2);
  v43 = v42;
  if (v42 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
  }

  else
  {
    v44 = 1;
  }

  v4 = (v4 + v43 + v44 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x400) == 0)
  {
LABEL_65:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_89;
  }

LABEL_83:
  v45 = *(a1 + 88);
  if (!v45)
  {
    v45 = *(qword_1026372F8 + 88);
  }

  v46 = sub_10043AF54(v45, a2);
  v47 = v46;
  if (v46 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
  }

  else
  {
    v48 = 1;
  }

  v4 = (v4 + v47 + v48 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x800) == 0)
  {
LABEL_66:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_89:
  v49 = *(a1 + 96);
  if (!v49)
  {
    v49 = *(qword_1026372F8 + 96);
  }

  v50 = sub_10043B96C(v49, a2);
  v51 = v50;
  if (v50 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
  }

  else
  {
    v52 = 1;
  }

  v4 = (v4 + v51 + v52 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x1000) == 0)
  {
LABEL_67:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_95:
  v53 = *(a1 + 104);
  if (!v53)
  {
    v53 = *(qword_1026372F8 + 104);
  }

  v54 = sub_1002BEB60(v53, a2);
  v55 = v54;
  if (v54 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2);
  }

  else
  {
    v56 = 1;
  }

  v4 = (v4 + v55 + v56 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x2000) == 0)
  {
LABEL_68:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_107;
  }

LABEL_101:
  v57 = *(a1 + 112);
  if (!v57)
  {
    v57 = *(qword_1026372F8 + 112);
  }

  v58 = sub_10043CEBC(v57);
  v59 = v58;
  if (v58 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2);
  }

  else
  {
    v60 = 1;
  }

  v4 = (v4 + v59 + v60 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x4000) == 0)
  {
LABEL_69:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_113;
  }

LABEL_107:
  v61 = *(a1 + 120);
  if (!v61)
  {
    v61 = *(qword_1026372F8 + 120);
  }

  v62 = sub_10043D4A0(v61);
  v63 = v62;
  if (v62 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62, a2);
  }

  else
  {
    v64 = 1;
  }

  v4 = (v4 + v63 + v64 + 1);
  v3 = *(a1 + 488);
  if ((v3 & 0x8000) != 0)
  {
LABEL_113:
    v65 = *(a1 + 128);
    if (!v65)
    {
      v65 = *(qword_1026372F8 + 128);
    }

    v66 = sub_10044169C(v65, a2);
    v67 = v66;
    if (v66 >= 0x80)
    {
      v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2);
    }

    else
    {
      v68 = 1;
    }

    v4 = (v4 + v67 + v68 + 2);
    v3 = *(a1 + 488);
  }

LABEL_119:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_177;
  }

  if ((v3 & 0x10000) != 0)
  {
    v69 = *(a1 + 136);
    if (!v69)
    {
      v69 = *(qword_1026372F8 + 136);
    }

    v70 = sub_100325170(v69, a2);
    v71 = v70;
    if (v70 >= 0x80)
    {
      v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70, a2);
    }

    else
    {
      v72 = 1;
    }

    v4 = (v4 + v71 + v72 + 2);
    v3 = *(a1 + 488);
    if ((v3 & 0x20000) == 0)
    {
LABEL_122:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_141;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

  v73 = *(a1 + 144);
  if (!v73)
  {
    v73 = *(qword_1026372F8 + 144);
  }

  v74 = sub_1002202E8(v73, a2);
  v75 = v74;
  if (v74 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74, a2);
  }

  else
  {
    v76 = 1;
  }

  v4 = (v4 + v75 + v76 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x40000) == 0)
  {
LABEL_123:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_147;
  }

LABEL_141:
  v77 = *(a1 + 152);
  if (!v77)
  {
    v77 = *(qword_1026372F8 + 152);
  }

  v78 = sub_100446868(v77, a2);
  v79 = v78;
  if (v78 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78, a2);
  }

  else
  {
    v80 = 1;
  }

  v4 = (v4 + v79 + v80 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x80000) == 0)
  {
LABEL_124:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_153;
  }

LABEL_147:
  v81 = *(a1 + 160);
  if (!v81)
  {
    v81 = *(qword_1026372F8 + 160);
  }

  v82 = sub_1004481EC(v81);
  v83 = v82;
  if (v82 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82, a2);
  }

  else
  {
    v84 = 1;
  }

  v4 = (v4 + v83 + v84 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x100000) == 0)
  {
LABEL_125:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_159;
  }

LABEL_153:
  v85 = *(a1 + 168);
  if (!v85)
  {
    v85 = *(qword_1026372F8 + 168);
  }

  v86 = sub_1004352E0(v85, a2);
  v87 = v86;
  if (v86 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86, a2);
  }

  else
  {
    v88 = 1;
  }

  v4 = (v4 + v87 + v88 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x200000) == 0)
  {
LABEL_126:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_165;
  }

LABEL_159:
  v89 = *(a1 + 176);
  if (!v89)
  {
    v89 = *(qword_1026372F8 + 176);
  }

  v90 = sub_1002E6484(v89, a2);
  v91 = v90;
  if (v90 >= 0x80)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90, a2);
  }

  else
  {
    v92 = 1;
  }

  v4 = (v4 + v91 + v92 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x400000) == 0)
  {
LABEL_127:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_171;
  }

LABEL_165:
  v93 = *(a1 + 184);
  if (!v93)
  {
    v93 = *(qword_1026372F8 + 184);
  }

  v94 = sub_100436C0C(v93, a2);
  v95 = v94;
  if (v94 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94, a2);
  }

  else
  {
    v96 = 1;
  }

  v4 = (v4 + v95 + v96 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x800000) != 0)
  {
LABEL_171:
    v97 = *(a1 + 192);
    if (!v97)
    {
      v97 = *(qword_1026372F8 + 192);
    }

    v98 = sub_100438CB8(v97, a2);
    v99 = v98;
    if (v98 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98, a2);
    }

    else
    {
      v100 = 1;
    }

    v4 = (v4 + v99 + v100 + 2);
    v3 = *(a1 + 488);
  }

LABEL_177:
  if (!HIBYTE(v3))
  {
    goto LABEL_235;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v101 = *(a1 + 200);
    if (!v101)
    {
      v101 = *(qword_1026372F8 + 200);
    }

    v102 = sub_10030A290(v101, a2);
    v103 = v102;
    if (v102 >= 0x80)
    {
      v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102, a2);
    }

    else
    {
      v104 = 1;
    }

    v4 = (v4 + v103 + v104 + 2);
    v3 = *(a1 + 488);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_180:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_199;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_180;
  }

  v105 = *(a1 + 208);
  if (!v105)
  {
    v105 = *(qword_1026372F8 + 208);
  }

  v106 = sub_10044448C(v105, a2);
  v107 = v106;
  if (v106 >= 0x80)
  {
    v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106, a2);
  }

  else
  {
    v108 = 1;
  }

  v4 = (v4 + v107 + v108 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_181:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_205;
  }

LABEL_199:
  v109 = *(a1 + 216);
  if (!v109)
  {
    v109 = *(qword_1026372F8 + 216);
  }

  v110 = sub_10044718C(v109, a2);
  v111 = v110;
  if (v110 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110, a2);
  }

  else
  {
    v112 = 1;
  }

  v4 = (v4 + v111 + v112 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_182:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_211;
  }

LABEL_205:
  v113 = *(a1 + 224);
  if (!v113)
  {
    v113 = *(qword_1026372F8 + 224);
  }

  v114 = sub_100020E98(v113, a2);
  v115 = v114;
  if (v114 >= 0x80)
  {
    v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114, a2);
  }

  else
  {
    v116 = 1;
  }

  v4 = (v4 + v115 + v116 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_183:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_217;
  }

LABEL_211:
  v117 = *(a1 + 232);
  if (!v117)
  {
    v117 = *(qword_1026372F8 + 232);
  }

  v118 = sub_10044CF90(v117, a2);
  v119 = v118;
  if (v118 >= 0x80)
  {
    v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118, a2);
  }

  else
  {
    v120 = 1;
  }

  v4 = (v4 + v119 + v120 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_184:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_223;
  }

LABEL_217:
  v121 = *(a1 + 240);
  if (!v121)
  {
    v121 = *(qword_1026372F8 + 240);
  }

  v122 = sub_10044FCF0(v121, a2);
  v123 = v122;
  if (v122 >= 0x80)
  {
    v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122, a2);
  }

  else
  {
    v124 = 1;
  }

  v4 = (v4 + v123 + v124 + 2);
  v3 = *(a1 + 488);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_185:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_229;
  }

LABEL_223:
  v125 = *(a1 + 248);
  if (!v125)
  {
    v125 = *(qword_1026372F8 + 248);
  }

  v126 = sub_1004518EC(v125, a2);
  v127 = v126;
  if (v126 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126, a2);
  }

  else
  {
    v128 = 1;
  }

  v4 = (v4 + v127 + v128 + 2);
  if ((*(a1 + 488) & 0x80000000) != 0)
  {
LABEL_229:
    v129 = *(a1 + 256);
    if (!v129)
    {
      v129 = *(qword_1026372F8 + 256);
    }

    v130 = sub_10042FD20(v129, a2);
    v131 = v130;
    if (v130 >= 0x80)
    {
      v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130, a2);
    }

    else
    {
      v132 = 1;
    }

    v4 = (v4 + v131 + v132 + 2);
  }

LABEL_235:
  v133 = *(a1 + 492);
  if (!v133)
  {
    goto LABEL_293;
  }

  if (v133)
  {
    v134 = *(a1 + 264);
    if (!v134)
    {
      v134 = *(qword_1026372F8 + 264);
    }

    v135 = sub_10045349C(v134, a2);
    v136 = v135;
    if (v135 >= 0x80)
    {
      v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135, a2);
    }

    else
    {
      v137 = 1;
    }

    v4 = (v4 + v136 + v137 + 2);
    v133 = *(a1 + 492);
    if ((v133 & 2) == 0)
    {
LABEL_238:
      if ((v133 & 4) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_257;
    }
  }

  else if ((v133 & 2) == 0)
  {
    goto LABEL_238;
  }

  v138 = *(a1 + 272);
  if (!v138)
  {
    v138 = *(qword_1026372F8 + 272);
  }

  v139 = sub_1012A9344(v138, a2);
  v140 = v139;
  if (v139 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139, a2);
  }

  else
  {
    v141 = 1;
  }

  v4 = (v4 + v140 + v141 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 4) == 0)
  {
LABEL_239:
    if ((v133 & 8) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_263;
  }

LABEL_257:
  v142 = *(a1 + 280);
  if (!v142)
  {
    v142 = *(qword_1026372F8 + 280);
  }

  v143 = sub_1000C7EAC(v142, a2);
  v144 = v143;
  if (v143 >= 0x80)
  {
    v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143, a2);
  }

  else
  {
    v145 = 1;
  }

  v4 = (v4 + v144 + v145 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 8) == 0)
  {
LABEL_240:
    if ((v133 & 0x10) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_269;
  }

LABEL_263:
  v146 = *(a1 + 288);
  if (!v146)
  {
    v146 = *(qword_1026372F8 + 288);
  }

  v147 = sub_1002489C4(v146, a2);
  v148 = v147;
  if (v147 >= 0x80)
  {
    v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147, a2);
  }

  else
  {
    v149 = 1;
  }

  v4 = (v4 + v148 + v149 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x10) == 0)
  {
LABEL_241:
    if ((v133 & 0x20) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_275;
  }

LABEL_269:
  v150 = *(a1 + 296);
  if (!v150)
  {
    v150 = *(qword_1026372F8 + 296);
  }

  v151 = sub_100999A90(v150, a2);
  v152 = v151;
  if (v151 >= 0x80)
  {
    v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151, a2);
  }

  else
  {
    v153 = 1;
  }

  v4 = (v4 + v152 + v153 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x20) == 0)
  {
LABEL_242:
    if ((v133 & 0x40) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_281;
  }

LABEL_275:
  v154 = *(a1 + 304);
  if (!v154)
  {
    v154 = *(qword_1026372F8 + 304);
  }

  v155 = sub_100B7DFC4(v154, a2);
  v156 = v155;
  if (v155 >= 0x80)
  {
    v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155, a2);
  }

  else
  {
    v157 = 1;
  }

  v4 = (v4 + v156 + v157 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x40) == 0)
  {
LABEL_243:
    if ((v133 & 0x80) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_287;
  }

LABEL_281:
  v158 = *(a1 + 312);
  if (!v158)
  {
    v158 = *(qword_1026372F8 + 312);
  }

  v159 = sub_1015F4F8C(v158, a2);
  v160 = v159;
  if (v159 >= 0x80)
  {
    v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159, a2);
  }

  else
  {
    v161 = 1;
  }

  v4 = (v4 + v160 + v161 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x80) != 0)
  {
LABEL_287:
    v162 = *(a1 + 320);
    if (!v162)
    {
      v162 = *(qword_1026372F8 + 320);
    }

    v163 = sub_100A57818(v162, a2);
    v164 = v163;
    if (v163 >= 0x80)
    {
      v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v163, a2);
    }

    else
    {
      v165 = 1;
    }

    v4 = (v4 + v164 + v165 + 2);
    v133 = *(a1 + 492);
  }

LABEL_293:
  if ((v133 & 0xFF00) == 0)
  {
    goto LABEL_351;
  }

  if ((v133 & 0x100) != 0)
  {
    v166 = *(a1 + 328);
    if (!v166)
    {
      v166 = *(qword_1026372F8 + 328);
    }

    v167 = sub_10026393C(v166, a2);
    v168 = v167;
    if (v167 >= 0x80)
    {
      v169 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167, a2);
    }

    else
    {
      v169 = 1;
    }

    v4 = (v4 + v168 + v169 + 2);
    v133 = *(a1 + 492);
    if ((v133 & 0x200) == 0)
    {
LABEL_296:
      if ((v133 & 0x400) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_315;
    }
  }

  else if ((v133 & 0x200) == 0)
  {
    goto LABEL_296;
  }

  v170 = *(a1 + 336);
  if (!v170)
  {
    v170 = *(qword_1026372F8 + 336);
  }

  v171 = sub_10063C7FC(v170, a2);
  v172 = v171;
  if (v171 >= 0x80)
  {
    v173 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171, a2);
  }

  else
  {
    v173 = 1;
  }

  v4 = (v4 + v172 + v173 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x400) == 0)
  {
LABEL_297:
    if ((v133 & 0x800) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_321;
  }

LABEL_315:
  v174 = *(a1 + 344);
  if (!v174)
  {
    v174 = *(qword_1026372F8 + 344);
  }

  v175 = sub_10012585C(v174, a2);
  v176 = v175;
  if (v175 >= 0x80)
  {
    v177 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v175, a2);
  }

  else
  {
    v177 = 1;
  }

  v4 = (v4 + v176 + v177 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x800) == 0)
  {
LABEL_298:
    if ((v133 & 0x1000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_327;
  }

LABEL_321:
  v178 = *(a1 + 352);
  if (!v178)
  {
    v178 = *(qword_1026372F8 + 352);
  }

  v179 = sub_10000C278(v178, a2);
  v180 = v179;
  if (v179 >= 0x80)
  {
    v181 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v179, a2);
  }

  else
  {
    v181 = 1;
  }

  v4 = (v4 + v180 + v181 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x1000) == 0)
  {
LABEL_299:
    if ((v133 & 0x2000) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_333;
  }

LABEL_327:
  v182 = *(a1 + 360);
  if (!v182)
  {
    v182 = *(qword_1026372F8 + 360);
  }

  v183 = sub_100948F08(v182, a2);
  v184 = v183;
  if (v183 >= 0x80)
  {
    v185 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v183, a2);
  }

  else
  {
    v185 = 1;
  }

  v4 = (v4 + v184 + v185 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x2000) == 0)
  {
LABEL_300:
    if ((v133 & 0x4000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_339;
  }

LABEL_333:
  v186 = *(a1 + 368);
  if (!v186)
  {
    v186 = *(qword_1026372F8 + 368);
  }

  v187 = sub_100949788(v186, a2);
  v188 = v187;
  if (v187 >= 0x80)
  {
    v189 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v187, a2);
  }

  else
  {
    v189 = 1;
  }

  v4 = (v4 + v188 + v189 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x4000) == 0)
  {
LABEL_301:
    if ((v133 & 0x8000) == 0)
    {
      goto LABEL_351;
    }

    goto LABEL_345;
  }

LABEL_339:
  v190 = *(a1 + 376);
  if (!v190)
  {
    v190 = *(qword_1026372F8 + 376);
  }

  v191 = sub_100949FF8(v190, a2);
  v192 = v191;
  if (v191 >= 0x80)
  {
    v193 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v191, a2);
  }

  else
  {
    v193 = 1;
  }

  v4 = (v4 + v192 + v193 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x8000) != 0)
  {
LABEL_345:
    v194 = *(a1 + 480);
    if ((v194 & 0x80000000) != 0)
    {
      v195 = 12;
    }

    else if (v194 >= 0x80)
    {
      v195 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v194, a2) + 2;
      v133 = *(a1 + 492);
    }

    else
    {
      v195 = 3;
    }

    v4 = (v195 + v4);
  }

LABEL_351:
  if ((v133 & 0xFF0000) == 0)
  {
    goto LABEL_409;
  }

  if ((v133 & 0x10000) != 0)
  {
    v196 = *(a1 + 384);
    if (!v196)
    {
      v196 = *(qword_1026372F8 + 384);
    }

    v197 = sub_10094A754(v196, a2);
    v198 = v197;
    if (v197 >= 0x80)
    {
      v199 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v197, a2);
    }

    else
    {
      v199 = 1;
    }

    v4 = (v4 + v198 + v199 + 2);
    v133 = *(a1 + 492);
    if ((v133 & 0x20000) == 0)
    {
LABEL_354:
      if ((v133 & 0x40000) == 0)
      {
        goto LABEL_355;
      }

      goto LABEL_373;
    }
  }

  else if ((v133 & 0x20000) == 0)
  {
    goto LABEL_354;
  }

  v200 = *(a1 + 392);
  if (!v200)
  {
    v200 = *(qword_1026372F8 + 392);
  }

  v201 = sub_10094AE74(v200, a2);
  v202 = v201;
  if (v201 >= 0x80)
  {
    v203 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v201, a2);
  }

  else
  {
    v203 = 1;
  }

  v4 = (v4 + v202 + v203 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x40000) == 0)
  {
LABEL_355:
    if ((v133 & 0x80000) == 0)
    {
      goto LABEL_356;
    }

    goto LABEL_379;
  }

LABEL_373:
  v204 = *(a1 + 400);
  if (!v204)
  {
    v204 = *(qword_1026372F8 + 400);
  }

  v205 = sub_10094BE48(v204, a2);
  v206 = v205;
  if (v205 >= 0x80)
  {
    v207 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v205, a2);
  }

  else
  {
    v207 = 1;
  }

  v4 = (v4 + v206 + v207 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x80000) == 0)
  {
LABEL_356:
    if ((v133 & 0x100000) == 0)
    {
      goto LABEL_357;
    }

    goto LABEL_385;
  }

LABEL_379:
  v208 = *(a1 + 408);
  if (!v208)
  {
    v208 = *(qword_1026372F8 + 408);
  }

  v209 = sub_10094C6F8(v208, a2);
  v210 = v209;
  if (v209 >= 0x80)
  {
    v211 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v209, a2);
  }

  else
  {
    v211 = 1;
  }

  v4 = (v4 + v210 + v211 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x100000) == 0)
  {
LABEL_357:
    if ((v133 & 0x200000) == 0)
    {
      goto LABEL_358;
    }

    goto LABEL_391;
  }

LABEL_385:
  v212 = *(a1 + 416);
  if (!v212)
  {
    v212 = *(qword_1026372F8 + 416);
  }

  v213 = sub_10094CEC8(v212, a2);
  v214 = v213;
  if (v213 >= 0x80)
  {
    v215 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v213, a2);
  }

  else
  {
    v215 = 1;
  }

  v4 = (v4 + v214 + v215 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x200000) == 0)
  {
LABEL_358:
    if ((v133 & 0x400000) == 0)
    {
      goto LABEL_359;
    }

    goto LABEL_397;
  }

LABEL_391:
  v216 = *(a1 + 424);
  if (!v216)
  {
    v216 = *(qword_1026372F8 + 424);
  }

  v217 = sub_10094DAF8(v216, a2);
  v218 = v217;
  if (v217 >= 0x80)
  {
    v219 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v217, a2);
  }

  else
  {
    v219 = 1;
  }

  v4 = (v4 + v218 + v219 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x400000) == 0)
  {
LABEL_359:
    if ((v133 & 0x800000) == 0)
    {
      goto LABEL_409;
    }

    goto LABEL_403;
  }

LABEL_397:
  v220 = *(a1 + 432);
  if (!v220)
  {
    v220 = *(qword_1026372F8 + 432);
  }

  v221 = sub_10094E248(v220, a2);
  v222 = v221;
  if (v221 >= 0x80)
  {
    v223 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v221, a2);
  }

  else
  {
    v223 = 1;
  }

  v4 = (v4 + v222 + v223 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x800000) != 0)
  {
LABEL_403:
    v224 = *(a1 + 440);
    if (!v224)
    {
      v224 = *(qword_1026372F8 + 440);
    }

    v225 = sub_10094E9B0(v224, a2);
    v226 = v225;
    if (v225 >= 0x80)
    {
      v227 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v225, a2);
    }

    else
    {
      v227 = 1;
    }

    v4 = (v4 + v226 + v227 + 2);
    v133 = *(a1 + 492);
  }

LABEL_409:
  if (!HIBYTE(v133))
  {
    goto LABEL_439;
  }

  if ((v133 & 0x1000000) != 0)
  {
    v228 = *(a1 + 448);
    if (!v228)
    {
      v228 = *(qword_1026372F8 + 448);
    }

    v229 = sub_10094F054(v228, a2);
    v230 = v229;
    if (v229 >= 0x80)
    {
      v231 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v229, a2);
    }

    else
    {
      v231 = 1;
    }

    v4 = (v4 + v230 + v231 + 2);
    v133 = *(a1 + 492);
    if ((v133 & 0x2000000) == 0)
    {
LABEL_412:
      if ((v133 & 0x4000000) == 0)
      {
        goto LABEL_413;
      }

      goto LABEL_427;
    }
  }

  else if ((v133 & 0x2000000) == 0)
  {
    goto LABEL_412;
  }

  v232 = *(a1 + 456);
  if (!v232)
  {
    v232 = *(qword_1026372F8 + 456);
  }

  v233 = sub_10094F7A4(v232, a2);
  v234 = v233;
  if (v233 >= 0x80)
  {
    v235 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v233, a2);
  }

  else
  {
    v235 = 1;
  }

  v4 = (v4 + v234 + v235 + 2);
  v133 = *(a1 + 492);
  if ((v133 & 0x4000000) == 0)
  {
LABEL_413:
    if ((v133 & 0x8000000) == 0)
    {
      goto LABEL_439;
    }

    goto LABEL_433;
  }

LABEL_427:
  v236 = *(a1 + 464);
  if (!v236)
  {
    v236 = *(qword_1026372F8 + 464);
  }

  v237 = sub_10021CCC0(v236, a2);
  v238 = v237;
  if (v237 >= 0x80)
  {
    v239 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v237, a2);
  }

  else
  {
    v239 = 1;
  }

  v4 = (v4 + v238 + v239 + 2);
  if ((*(a1 + 492) & 0x8000000) != 0)
  {
LABEL_433:
    v240 = *(a1 + 472);
    if (!v240)
    {
      v240 = *(qword_1026372F8 + 472);
    }

    v241 = sub_1009505BC(v240, a2);
    v243 = v241;
    if (v241 >= 0x80)
    {
      v244 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v241, v242);
    }

    else
    {
      v244 = 1;
    }

    v4 = (v4 + v243 + v244 + 2);
  }

LABEL_439:
  *(a1 + 484) = v4;
  return v4;
}

uint64_t sub_100017BEC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_100017C5C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(a1 + 12);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(a1 + 16) = v4;
  return v4;
}

void sub_100017D08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102476928;
  sub_1000150A4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_100017D70(void *a1)
{
  *a1 = &off_1024D4F50;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((a1 + 1));
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

double sub_100017DD0(uint64_t a1, uint64_t a2)
{
  *(a2 + 52) |= 1u;
  v2 = *(a2 + 32);
  if (!v2)
  {
    operator new();
  }

  v3 = *(v2 + 44);
  *(v2 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  result = *a1;
  *(v2 + 44) = v3 | 7;
  *(v2 + 24) = result;
  return result;
}

double sub_100017E70(uint64_t a1)
{
  *a1 = off_1024D4ED8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double sub_100017EA0(uint64_t a1)
{
  *a1 = off_102476928;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  return result;
}

double sub_100017F28(uint64_t a1)
{
  *a1 = off_1024B4D80;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_100017F80(unsigned int *a1)
{
  result = *a1;
  if (result >= 5)
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v4 = *a1;
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertMessageTypeToProtobuf,type should never be max,%d", v5, 8u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018DB52C(a1);
      return 0;
    }
  }

  return result;
}

void sub_100018068(unsigned int *a1, _DWORD *a2)
{
  if (a2)
  {
    v8 = *a1;
    v4 = sub_1000167E8(&v8);
    if (!sub_1000168D0(v4))
    {
      sub_1018DB618();
    }

    a2[5] |= 1u;
    a2[2] = v4;
    v7 = a1[1];
    v5 = sub_100018198(&v7);
    if (!sub_10041ECF8(v5))
    {
      sub_1018DB644();
    }

    a2[5] |= 2u;
    a2[3] = v5;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#locctl,#rec,failed to set log entry silo", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DB670();
    }
  }
}

void *sub_100018174(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_1024B4D08;
  return result;
}

uint64_t sub_100018198(unsigned int *a1)
{
  result = *a1;
  if (result >= 4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v4 = *a1;
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertSiloTypeToProtobuf,type should never be max,%d", v5, 8u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018DB840(a1);
      return 0;
    }
  }

  return result;
}

double sub_100018280(uint64_t a1)
{
  *a1 = off_102451D20;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1000182AC(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 36);
    *(a2 + 8) = vextq_s8(*(result + 1), *(result + 1), 8uLL);
    v5 = *result;
    *(a2 + 36) = v4 | 7;
    *(a2 + 24) = v5;
  }

  else
  {
    v8 = v2;
    v9 = v3;
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#locctl,#rec,failed to set private data timestamp", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D9480();
    }
  }
}

void sub_10001836C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102451D20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1000183D4(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 32) = v1;
  return v1;
}

uint64_t sub_10001840C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

void sub_100018498(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B4D08;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

id sub_1000184F4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (([v3 isValidCKP] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:resolveCKPToRegisteredCKPOrLogError: the passed ckp must resolve to a registered ckp. Resolving to #nullCKP, InputCKP:%{public, location:escape_only}@}", &v7, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v5 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "resolveCKPToRegisteredCKPOrLogError: the passed ckp must resolve to a registered ckp. Resolving to #nullCKP", "{msg%{public}.0s:resolveCKPToRegisteredCKPOrLogError: the passed ckp must resolve to a registered ckp. Resolving to #nullCKP, InputCKP:%{public, location:escape_only}@}", &v7, 0x1Cu);
    }

    return +[CLClientKeyPath nullClientKeyPath];
  }

  return v3;
}

uint64_t sub_100018688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000184F4(a1, a2);
  v6 = *(a1 + 136);
  if (a3)
  {
    [v6 setInt:a3 forKey:@"InUseLevel" atKeyPath:v5];
    if (a3 >= 3)
    {
      v7 = 0;
      *buf = 0;
      *v15 = buf;
      *&v15[8] = 0x2020000000;
      v15[16] = 0;
      goto LABEL_13;
    }
  }

  else
  {
    [v6 removeValueForKey:@"InUseLevel" atKeyPath:v5];
  }

  v8 = [*(a1 + 136) hasValueForKey:@"TemporaryAuthorization" atKeyPath:v5];
  v9 = v8;
  if (v8)
  {
    [*(a1 + 136) removeValueForKey:@"TemporaryAuthorization" atKeyPath:v5];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v15 = 2082;
      *&v15[2] = "";
      *&v15[10] = 2114;
      *&v15[12] = v5;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth Client has dropped below in-use-ness threshold, losing WIU status, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  *buf = 0;
  *v15 = buf;
  *&v15[8] = 0x2020000000;
  v15[16] = 0;
  v11 = *(a1 + 136);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FA2AC;
  v13[3] = &unk_10246FDE0;
  v13[4] = buf;
  v13[5] = a1;
  [v11 iterateIdentitiesRelatedToKeyPath:v5 withBlock:v13];
  if (v9)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(*v15 + 24);
  }

LABEL_13:
  _Block_object_dispose(buf, 8);
  return v7 & 1;
}

uint64_t sub_1000188B0(uint64_t result, uint64_t a2)
{
  if (byte_102632518 == 1)
  {
    [NSString stringWithCString:a2 encoding:4];

    return PLLogRegisteredEvent();
  }

  return v3;
}

uint64_t sub_100018918(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  v7 = [v6 isAuthLimited];
  if (v7)
  {
    v6 = [*(a1 + 136) primaryKeyPathForAuthLimitedKeyPath:v6];
  }

  v8 = sub_100018FC8(a1, v6, &xmmword_101CE6CD8);
  v49 = [v6 isValidCKP];
  if (v49)
  {
    if (((v7 | sub_100033CDC(a1, v6, v8)) & 1) == 0)
    {
      v9 = *(a3 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a3 + 8);
      }

      if (!v9)
      {
        return 0;
      }
    }

    sub_100034280(a1, v6, v8);
  }

  else
  {
    [*(a1 + 1104) removeObjectForKey:{objc_msgSend(a2, "legacyClientKey")}];
    [*(a1 + 1096) setClientsAuthorizationMap:{objc_msgSend(*(a1 + 1104), "copy")}];
    [a2 isValidCKP];
    [*(a1 + 1096) setPersistentStoreDictionary:0 forClient:{objc_msgSend(a2, "legacyClientKey")}];
    v6 = a2;
  }

  v10 = *(a1 + 840);
  if (v10 != (a1 + 848))
  {
    do
    {
      v11 = objc_alloc_init(NSAutoreleasePool);
      v12 = sub_1000344B0(v10[5], 0);
      sub_100034508(v10[5], __p);
      if ([v12 isAuthLimited])
      {
        v13 = [*(a1 + 136) primaryKeyPathForAuthLimitedKeyPath:v12];
        v14 = [v12 limitingCKP];
        if (sub_100033E78(a1, v6, v13))
        {
          v15 = sub_10004FEC8(a1, v14, &xmmword_101CE6CD8);
          v16 = v8;
          if (!v8)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (!sub_100033E78(a1, v6, v14))
          {
            goto LABEL_35;
          }

          v16 = sub_10004FEC8(a1, v13, &xmmword_101CE6CD8);
          v15 = v8;
          if (!v16)
          {
            goto LABEL_35;
          }
        }

        if (v15)
        {
          v20 = [(CLClientManagerAuthorizationContext *)v15 isAuthorizedForServiceType:12];
          v21 = [(CLClientManagerAuthorizationContext *)v15 transientAwareRegistrationResult];
          if (v20)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          v23 = sub_10003275C(v21, 5, v22, 0, 0, 0, 0);
          v19 = [(CLClientManagerAuthorizationContext *)v16 authorizationContextByANDingServiceMaskTuple:v23, v24];
          if (v19 != v16)
          {
            if (qword_1025D4790 != -1)
            {
              sub_10192DAA4();
            }

            v25 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
            {
              v26 = __p;
              if (v51 < 0)
              {
                v26 = __p[0];
              }

              *buf = 68289538;
              *&buf[4] = 0;
              *v53 = 2082;
              *&v53[2] = "";
              *&v53[10] = 2114;
              *&v53[12] = v12;
              *&v53[20] = 2082;
              *&v53[22] = v26;
              _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Limiting identity's service-mask imposed on specified identity, AffectedIdentity:%{public, location:escape_only}@, AffectedSubIdentity:%{public, location:escape_only}s}", buf, 0x26u);
            }
          }
        }

        else
        {
          v19 = v16;
        }
      }

      else
      {
        v17 = sub_100033E78(a1, v6, v12);
        if (v8)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v8;
        if (!v18)
        {
          goto LABEL_35;
        }
      }

      sub_10004ABDC(v10[5], v19);
LABEL_35:
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

      v27 = v10[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v10[2];
          v29 = *v28 == v10;
          v10 = v28;
        }

        while (!v29);
      }

      v10 = v28;
    }

    while (v28 != (a1 + 848));
  }

  v30 = *(a1 + 912);
  if (v30 != (a1 + 920))
  {
    do
    {
      v31 = objc_alloc_init(NSAutoreleasePool);
      v32 = sub_100008880(v30[5]);
      if (sub_100033E78(a1, v6, v32))
      {
        sub_10102B9C8(v30[5], v8);
      }

      v33 = v30[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v30[2];
          v29 = *v34 == v30;
          v30 = v34;
        }

        while (!v29);
      }

      v30 = v34;
    }

    while (v34 != (a1 + 920));
  }

  v35 = *(a1 + 936);
  if (v35 != (a1 + 944))
  {
    do
    {
      v36 = v35[4];
      v37 = objc_alloc_init(NSAutoreleasePool);
      v38 = sub_100008880(v36);
      if (sub_100033E78(a1, v6, v38))
      {
        sub_10102B9C8(v36, v8);
      }

      v39 = v35[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v35[2];
          v29 = *v40 == v35;
          v35 = v40;
        }

        while (!v29);
      }

      v35 = v40;
    }

    while (v40 != (a1 + 944));
  }

  v41 = *(a1 + 864);
  if (v41 != (a1 + 872))
  {
    do
    {
      v42 = objc_alloc_init(NSAutoreleasePool);
      v43 = v41[5];
      v44 = (*(*v43 + 40))(v43);
      if (sub_100033E78(a1, v6, v44))
      {
        (*(*v43 + 48))(v43, v8);
      }

      v45 = v41[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v41[2];
          v29 = *v46 == v41;
          v41 = v46;
        }

        while (!v29);
      }

      v41 = v46;
    }

    while (v46 != (a1 + 872));
  }

  if (v49)
  {
    v47 = *(a1 + 136);
    *buf = _NSConcreteStackBlock;
    *v53 = 3221225472;
    *&v53[8] = sub_1000352CC;
    *&v53[16] = &unk_10246FEF8;
    *&v53[24] = v6;
    v54 = a1;
    [v47 iterateIdentitiesRelatedToKeyPath:v6 withBlock:buf];
    sub_100034568(a1, v6);
  }

  return 1;
}

void sub_100018F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CLClientManagerAuthorizationContext *sub_100018FC8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v5 isValidCKP])
  {
    v6 = sub_10001971C(a1, v5);
    v7 = sub_1000199AC(*(a1 + 400), v5);
    v8 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v5), "dictionary"}]);
    [(NSMutableDictionary *)v8 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedInt:" numberWithUnsignedInt:v7], @"InUseLevel"];
    if ([*(a1 + 120) locationRestricted])
    {
      [(NSMutableDictionary *)v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"LocationRestricted"];
    }

    sub_100019E6C(a1, v5, v8);
    sub_100019FF4(a1, v5, v8);
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68290050;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v5;
      *&buf[28] = 2114;
      *&buf[30] = v8;
      *&buf[38] = 1026;
      *&buf[40] = v6;
      *&buf[44] = 2050;
      *&buf[46] = v7;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:computing freshAuthorizationContext, Client:%{public, location:escape_only}@, ClientDictionary:%{public, location:escape_only}@, BigSwitch:%{public}hhd, InUseLevel:%{public, location:CLClientInUseLevel}lld}", buf, 0x36u);
    }

    v10 = sub_100019AB0(a1, v5);
    v11 = [-[NSArray objectAtIndexedSubscript:](v10 objectAtIndexedSubscript:{1), "intValue"}];
    v12 = [-[NSArray objectAtIndexedSubscript:](v10 objectAtIndexedSubscript:{2), "intValue"}];
    v25 = *(a3 + 4);
    v13 = *(a3 + 20);
    v20 = *(a3 + 92);
    v21 = *(a3 + 108);
    v22 = *(a3 + 124);
    v23 = *(a3 + 140);
    v24 = *a3;
    v16 = *(a3 + 28);
    v17 = *(a3 + 44);
    v18 = *(a3 + 60);
    v19 = *(a3 + 76);
    if (sub_1000317E4(a1, v5) && v13 < 0.0)
    {
      v14 = *(a1 + 352);
      if (v14)
      {
        objc_msgSend_currentLocation(v14);
        v13 = *&buf[20];
      }

      else
      {
        v13 = 0.0;
        memset(buf, 0, 156);
      }

      v25 = *&buf[16];
      v20 = *&buf[92];
      v21 = *&buf[108];
      v22 = *&buf[124];
      v23 = *&buf[140];
      v24 = *buf;
      v16 = *&buf[28];
      v17 = *&buf[44];
      v18 = *&buf[60];
      v19 = *&buf[76];
    }

    *buf = v24;
    *&buf[16] = v25;
    *&buf[20] = v13;
    *&buf[92] = v20;
    *&buf[108] = v21;
    *&buf[124] = v22;
    *&buf[140] = v23;
    *&buf[28] = v16;
    *&buf[44] = v17;
    *&buf[60] = v18;
    *&buf[76] = v19;
    return sub_1000319E0(v8, v11, v12, v6, buf);
  }

  else
  {

    return sub_100051208(4);
  }
}

uint64_t sub_1000193E0()
{
  if (qword_1026567C0 != -1)
  {
    sub_1002F97E4();
  }

  os_unfair_lock_lock(&unk_1026567B8);
  v0 = dword_1025D6564;
  os_unfair_lock_unlock(&unk_1026567B8);
  return v0;
}

uint64_t sub_100019438(uint64_t ***a1, char *a2)
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

  return sub_100019470(a1, v2, v5, v6);
}

uint64_t sub_100019470(const void *a1, size_t a2, void *__s2, size_t a4)
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

void sub_100019694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001971C(id *a1, uint64_t a2)
{
  v3 = [a1[17] registeredKeyPathForClientIdentifier:a2];
  v4 = sub_1000193E0();
  if ([a1[15] locationServicesEnabledStatus] != 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p) = 138543362;
      *(&__p + 4) = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "location disabled system-wide, denying executable %{public}@", &__p, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10192D7C0();
    return 0;
  }

  if (v4 == 1)
  {
    return 1;
  }

  if ([v3 isValidCKP])
  {
    if (v3)
    {
      objc_msgSend_cppClientKey(v3);
    }

    else
    {
      __p = 0uLL;
      v12 = 0;
    }

    v7 = sub_10045EF04((a1 + 88), &__p);
    v8 = a1 + 89;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    if (v8 != v7)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p) = 138543362;
        *(&__p + 4) = v3;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "location emergency-enablement explicitly benefits %{public}@, not denying", &__p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192D8B0();
      }

      return 1;
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 138543362;
    *(&__p + 4) = v3;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "location emergency-enabled with explicit beneficiaries, denying executable %{public}@", &__p, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10192D9A0();
    return 0;
  }

  return result;
}

void sub_100019988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000199AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([a2 isAuthSharingSubIdentity])
  {
    v2 = [v2 anchorKeyPath];
  }

  if (v2)
  {
    objc_msgSend_cppClientKey(v2);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
  }

  v4 = sub_10001A2EC((a1 + 16), __p);
  v5 = v4;
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_8;
    }

    return 0;
  }

  operator delete(__p[0]);
  if (!v5)
  {
    return 0;
  }

LABEL_8:
  v6 = &dword_100000014;
  do
  {
    if (v6 == -4)
    {
      goto LABEL_13;
    }

    result = *(&unk_101CEF3A8 + v6);
    if (result >= 6)
    {
      sub_1000432E8("array::at");
    }

    v6 -= 4;
  }

  while (!*(v5 + result + 10));
  if (!result)
  {
LABEL_13:
    sub_101A098CC();
  }

  return result;
}

void sub_100019A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSArray *sub_100019AB0(id *a1, uint64_t a2)
{
  v3 = [a1[17] registeredKeyPathForClientIdentifier:a2];
  v4 = sub_10001971C(a1, v3);
  v5 = [v3 isValidCKP];
  if (v5)
  {
    v7 = sub_100030D48(a1, v3);
    v8 = sub_100030EA4([objc_msgSend(a1[17] readonlyStoreAtKeyPath:{v3), "dictionary"}], objc_msgSend(a1[17], "isKeyPathRegisteredSystemService:", v3), v4, v7);
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289794;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2114;
      v21 = v3;
      v22 = 1026;
      v23 = v4;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:client RegistrationResults, Client:%{public, location:escape_only}@, bigSwitchEnabled:%{public}hhd, RegistrationResults:%{public, location:escape_only}@}", buf, 0x2Cu);
    }

    return v8;
  }

  if (!sub_1000F42C0(v5, v6) || ![v3 bundlePath] || !sub_1000424B8(objc_msgSend(v3, "bundlePath")))
  {
    v11 = 4;
LABEL_14:
    if (v4)
    {
      v12 = v11;
    }

    else
    {
      v12 = 2;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    goto LABEL_19;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2114;
    v21 = v3;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#OSXThinksDifferent system service not found in persistent store is allowed by default, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    v11 = 0;
    goto LABEL_14;
  }

  v11 = 0;
  if (v4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

LABEL_19:
  v13 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68290306;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2114;
    v21 = v3;
    v22 = 1026;
    v23 = v4;
    v24 = 2050;
    v25 = v11;
    v26 = 2050;
    v27 = v12;
    v28 = 2050;
    v29 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:client(does not exists) RegistrationResults, Client:%{public, location:escape_only}@, bigSwitchEnabled:%{public}hhd, static:%{public, location:CLClientRegistrationResult}lld, effective:%{public, location:CLClientRegistrationResult}lld, transient:%{public, location:CLClientRegistrationResult}lld}", buf, 0x40u);
  }

  v15[0] = [NSNumber numberWithUnsignedInt:v11];
  v15[1] = [NSNumber numberWithUnsignedInt:v12];
  v15[2] = [NSNumber numberWithUnsignedInt:v12];
  return [NSArray arrayWithObjects:v15 count:3];
}

BOOL sub_100019DF4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

id sub_100019E6C(uint64_t a1, void *a2, void *a3)
{
  sub_10000EC00(__p, [objc_msgSend(a2 "clientAnchor")]);
  v5 = sub_10045EF04(a1 + 1136, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if ((a1 + 1144) == v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v6 = v5[18];
    v7 = v5[14] != 0;
    v8 = v5[15] != 0;
    v9 = v5[16] != 0;
    v10 = v5[17] != 0;
    v11 = v6 != 0;
  }

  [a3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v7), @"WhenInUseServiceSession"}];
  [a3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v8), @"AlwaysServiceSession"}];
  [a3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v9), @"LearnedRoutesServiceSession"}];
  [a3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v10), @"VisitHistoryServiceSession"}];
  return [a3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v11), @"SessionWithOldLinking"}];
}

void sub_100019FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100019FF4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = ([*(a1 + 136) intForKey:@"Authorization" atKeyPath:+[CLClientKeyPath clientKeyPathWithClientAnchor:anchorType:](CLClientKeyPath defaultValue:{"clientKeyPathWithClientAnchor:anchorType:", @"/System/Library/LocationBundles/Routine.bundle", 112), 4}] >> 2) & 1;
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 136) intForKey:@"LearnedRoutesAccess" atKeyPath:a2 defaultValue:0]);
  [a3 setObject:v7 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6548[0])}];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:a2 defaultValue:0]);
  [a3 setObject:v8 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6550[0])}];
  v9 = [NSNumber numberWithBool:v6];
  [a3 setObject:v9 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6540[0])}];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 136) isKeyPathRegisteredSystemService:a2]);
  [a3 setObject:v10 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6558)}];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 68290306;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = a2;
    v17 = 1026;
    v18 = [objc_msgSend(a3 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6548[0])), "BOOLValue"}];
    v19 = 1026;
    v20 = [objc_msgSend(a3 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6550[0])), "BOOLValue"}];
    v21 = 1026;
    v22 = [objc_msgSend(a3 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6540[0])), "BOOLValue"}];
    v23 = 1026;
    v24 = [objc_msgSend(a3 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6558)), "BOOLValue"}];
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:update clientDict effective #LearnedRoutes #VisitHistory access, ckp:%{public, location:escape_only}@, StaticLearnedRoutesAccess:%{public}hhd, StaticVisitHistoryAccess:%{public}hhd, RoutineAuthorizedForLocations:%{public}hhd, IsSystemService:%{public}hhd}", v12, 0x34u);
  }
}

const void **sub_10001A2EC(void *a1, uint64_t *a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_100019DF4(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_10001A3E8(uint64_t a1, uint64_t a2)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  return qword_102637218;
}

id *sub_10001A420(id *a1)
{
  if (a1[1])
  {
    if (qword_1025D4880 != -1)
    {
      dispatch_once(&qword_1025D4880, &stru_102504868);
    }

    v2 = qword_1025D4888;
    if (os_log_type_enabled(qword_1025D4888, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[1];
      *buf = 134349314;
      v13 = a1;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "os_transaction releasing: (%{public}p) %{public}@", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4880 != -1)
      {
        dispatch_once(&qword_1025D4880, &stru_102504868);
      }

      v5 = a1[1];
      v8 = 134349314;
      v9 = a1;
      v10 = 2114;
      v11 = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4888, 0, "os_transaction releasing: (%{public}p) %{public}@", &v8, 22);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 2, "CLAutoOSTransaction::~CLAutoOSTransaction()", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    a1[1] = 0;
  }

  *a1 = 0;
  return a1;
}

void sub_10001A610(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10001A61C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
    }

    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

double sub_10001A6B0(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  if ((*(a1 + 24) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019E3B38();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v5 = v3[1];
      v6 = v3[2];
      v8 = 134349312;
      v9 = v5;
      v10 = 2050;
      v11 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "LocationController,#time,getTime,#Warning: current latched timestamp is invalid,mct_sec,%{public}.3f,cfat_sec,%{public}.3f", &v8, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019E3B90(v3);
    }
  }

  if (*a2 != 1)
  {
    if (*a2)
    {
      return result;
    }

    v3 += 2;
  }

  return *v3;
}

uint64_t sub_10001A7E8(uint64_t a1, char a2)
{
  *(a1 + 112) = a2;
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_10001A81C(uint64_t a1)
{
  [*(*(a1 + 8) + 64) assertInside];
  if (byte_102656CA8 == 1)
  {
    v2 = mach_absolute_time();
    v3 = *(a1 + 8);
    v4 = v2 - *(v3 + 96);
    if (*(v3 + 88) == 1 && v4 > qword_102656CC0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018B6648();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 8) + 104);
        if (!v7)
        {
          v7 = "<unnamed>";
        }

        *buf = 136315650;
        v26 = v7;
        v27 = 2048;
        v28 = a1;
        v29 = 2048;
        v30 = (v4 * dword_102656CAC / unk_102656CB0) / 1000000000.0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning TIMEOUT: Held lock '%s' (%p) for %f seconds", buf, 0x20u);
      }

      v8 = sub_10000A100(121, 2);
      if (v8)
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_1018B665C();
        }

        v16 = *(*(a1 + 8) + 104);
        if (!v16)
        {
          v16 = "<unnamed>";
        }

        v19 = 136315650;
        v20 = v16;
        v21 = 2048;
        v22 = a1;
        v23 = 2048;
        v24 = (v4 * dword_102656CAC / unk_102656CB0) / 1000000000.0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning TIMEOUT: Held lock '%s' (%p) for %f seconds", &v19, 32);
        v18 = v17;
        v8 = sub_100152C7C("Generic", 1, 0, 2, "virtual void BasicMutex::unlock()", "%s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      v10 = sub_10001CABC(v8, v9);
      v11 = *(v10 + 192);
      if (v11)
      {
        sub_100A5A9EC(v10, 0, v11);
      }
    }
  }

  v12 = *(a1 + 8);
  v13 = *(v12 + 72);
  if (v13 <= 0)
  {
    sub_1018B6C14();
  }

  v14 = v13 - 1;
  *(v12 + 72) = v14;
  if (!v14)
  {
    *(v12 + 80) = 0;
  }

  result = pthread_mutex_unlock(v12);
  if (result)
  {
    sub_1018B6AB0();
  }

  return result;
}

void sub_10001AAD0(int *a1, int a2)
{
  if (*(a1 + 14) != a2)
  {
    *(a1 + 14) = a2;
    sub_100E0B910(a1);
    if (*(a1 + 14) == 1 && *(a1 + 12) == 1)
    {
      *(a1 + 15) = 1;
    }
  }

  sub_10001B978(a1);
}

uint64_t sub_10001AB38(void *a1, uint64_t a2)
{
  v4 = a1 + 1;
  (*(a1[1] + 16))(a1 + 1);
  v5 = v4[28];
  if (v5)
  {
    (*(*v5 + 72))(v5, a2);
  }

  v6 = a1[31];
  if (v6)
  {
    (*(*v6 + 72))(v6, a2);
  }

  v7 = a1[74];
  if (v7)
  {
    *(v7 + 8) = a2 ^ 1;
  }

  v8 = a1[77];
  if (v8)
  {
    *(v8 + 8) = a2 ^ 1;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_1000E8BB4();
  }

  v9 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    v15 = a2;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLMM,DisallowNetworkUsage,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B095B0(buf);
    v13[0] = 67240192;
    v13[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,DisallowNetworkUsage,%{public}d", v13, 8);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatchingEngine::setDisallowNetworkUsage(BOOL)", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_10001AD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001ADC0(uint64_t a1, int a2)
{
  *(a1 + 113) = a2;
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))(result, a2 ^ 1u);
  }

  return result;
}

NSMutableSet *sub_10001AE68(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 776);
  if (v3 != (a1 + 784))
  {
    do
    {
      v4 = v3 + 4;
      if (*(v3 + 55) < 0)
      {
        v4 = *v4;
      }

      [v2 addObject:{-[CLClientKeyPath legacyClientKey](+[CLClientKeyPath clientKeyPathWithClientKey:](CLClientKeyPath, "clientKeyPathWithClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v4)), "legacyClientKey")}];
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (a1 + 784));
  }

  return v2;
}

void sub_10001AF44(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10001AF44(a1, *a2);
    sub_10001AF44(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_10001AFA8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a1 + 4096;
  v7 = sub_10000B1F8(a1, a2);
  *buf = 1;
  *buf = sub_10001A6B0(v7, buf);
  sub_10001B4D4(a1 + 456, buf, a2);
  *(v6 + 304) = a2 & a3;
  v8 = *(a1 + 3912);
  if (v8)
  {
    sub_10001B694(v8, a2);
  }

  sub_10001AAD0((a1 + 4304), a2);
  v9 = *(a1 + 3912);
  if (v9)
  {
    sub_10001AB38(v9, (*(v6 + 223) & 1) == 0);
  }

  if (qword_1025D4600 != -1)
  {
    sub_101956104();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(v6 + 223);
    *buf = 67109632;
    *&buf[4] = a2;
    v21 = 1024;
    v22 = a3;
    v23 = 1024;
    v24 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLMM,Change in locationApp foreground status,isForeGround,%d,isAppleMaps,%d,networkusage,%d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101956104();
    }

    v12 = *(v6 + 223);
    v16 = 1024;
    v17 = a3;
    v18 = 1024;
    v19 = v12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "CLMM,Change in locationApp foreground status,isForeGround,%d,isAppleMaps,%d,networkusage,%d", &v15, 20, 67109632);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerFusion::setLocationApplicationIsForeground(BOOL, BOOL)", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }
}

pthread_t sub_10001B1E0(uint64_t a1)
{
  [*(*(a1 + 8) + 64) assertInside];
  if (byte_102656CA8 == 1)
  {
    v2 = mach_absolute_time();
  }

  else
  {
    v2 = 0;
  }

  if (pthread_mutex_lock(*(a1 + 8)))
  {
    sub_1018B64E4();
  }

  if (byte_102656CA8 == 1)
  {
    v3 = mach_absolute_time();
    v4 = *(a1 + 8);
    *(v4 + 96) = v3;
    v5 = v3 - v2;
    if (*(v4 + 88) == 1 && v5 > qword_102656CB8)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018B6648();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 8) + 104);
        *buf = 134218498;
        v27 = (v5 * dword_102656CAC / unk_102656CB0) / 1000000000.0;
        if (!v8)
        {
          v8 = "<unnamed>";
        }

        v28 = 2080;
        v29 = v8;
        v30 = 2048;
        v31 = a1;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning TIMEOUT: Waited %f seconds to aquire lock '%s' (%p)", buf, 0x20u);
      }

      v9 = sub_10000A100(121, 2);
      if (v9)
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_1018B665C();
        }

        v17 = *(*(a1 + 8) + 104);
        v20 = 134218498;
        v21 = (v5 * dword_102656CAC / unk_102656CB0) / 1000000000.0;
        if (!v17)
        {
          v17 = "<unnamed>";
        }

        v22 = 2080;
        v23 = v17;
        v24 = 2048;
        v25 = a1;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning TIMEOUT: Waited %f seconds to aquire lock '%s' (%p)", COERCE_DOUBLE(&v20), 32);
        v19 = v18;
        v9 = sub_100152C7C("Generic", 1, 0, 2, "virtual void BasicMutex::lock()", "%s\n", v18);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      v11 = sub_10001CABC(v9, v10);
      v12 = *(v11 + 192);
      if (v12)
      {
        sub_100A5A9EC(v11, 0, v12);
      }
    }
  }

  result = pthread_self();
  v14 = *(a1 + 8);
  v15 = *(v14 + 72);
  if (v15 < 0)
  {
    sub_1018B694C(result);
  }

  v16 = *(v14 + 80);
  if (v15)
  {
    if (v16 != result)
    {
      sub_1018B6684();
    }
  }

  else if (v16)
  {
    sub_1018B67E8(result);
  }

  *(v14 + 72) = v15 + 1;
  *(v14 + 80) = result;
  return result;
}

void sub_10001B4D4(uint64_t a1, uint64_t *a2, int a3)
{
  if (*(a1 + 2880) != 4)
  {
    sub_100272FF0(a1, a2);
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v6 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    *buf = 134349312;
    v16 = v7;
    v17 = 1026;
    v18 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f, change in locationApp foreground status,isForeGround,%{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v8 = *a2;
    v11 = 134349312;
    v12 = v8;
    v13 = 1026;
    v14 = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f, change in locationApp foreground status,isForeGround,%{public}d", &v11, 18);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::locationAppForegroundStatusUpdate(const CFTimeInterval &, BOOL)", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  *(a1 + 2752) = a3;
}

void sub_10001B688(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10001B694(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v5 = v4[28];
  if (v5)
  {
    (*(*v5 + 64))(v5, a2);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    (*(*v6 + 64))(v6, a2);
  }

  if (qword_1025D46B0 != -1)
  {
    sub_1000E8BB4();
  }

  v7 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    v13 = a2;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLMM,ForceNetworkUsage,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B095B0(buf);
    v11[0] = 67240192;
    v11[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,ForceNetworkUsage,%{public}d", v11, 8);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatchingEngine::setForceNetworkUsage(BOOL)", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_10001B8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void *sub_10001B8FC(void *result, int a2)
{
  v2 = result;
  if (*(result + 33) == 1)
  {
    v3 = result[2];
    if (v3)
    {
      *(v3 + 192) = a2;
    }
  }

  else
  {
    result = result[325];
    if (result)
    {
      if (a2)
      {
        v4 = sub_1002AF6D8(v2) ^ 1;
        result = v2[325];
      }

      else
      {
        v4 = 0;
      }

      return [result setAllowNetworkTileLoad:v4];
    }
  }

  return result;
}

void sub_10001B978(int *a1)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101A95BA8();
  }

  v2 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 15);
    v4 = *(a1 + 13);
    v5 = *(a1 + 12);
    v6 = a1[6];
    v7 = *(a1 + 14);
    v8 = *a1;
    v9 = *(a1 + 2);
    v10[0] = 67241728;
    v10[1] = v3;
    v11 = 1026;
    v12 = v4;
    v13 = 1026;
    v14 = v5;
    v15 = 1026;
    v16 = v6;
    v17 = 1026;
    v18 = v7;
    v19 = 1026;
    v20 = v8;
    v21 = 2050;
    v22 = v9;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLMM,AllowNetworkUsage,%{public}d,batterySaverMode,%{public}d,thermalVoteToAllow,%{public}d,signalEnv,%{public}d,isMapsForeground,%{public}d,thermalLevel,%{public}d,currentBatteryLevel,%{public}.2lf", v10, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A95BBC(a1);
  }
}

uint64_t sub_10001BAA0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 56);
      if (v5)
      {
        sub_10000ECB8(v5, a1, (a1 + 24), *(a1 + 48), 0);
      }

      sub_100008080(v4);
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

_OWORD *sub_10001BB2C(_OWORD *a1, __int128 *a2)
{
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  sub_10001BCEC(a1, a2);
  return a1;
}

char *sub_10001BB78(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_10001BB2C(__dst + 24, a3);
  return __dst;
}

void sub_10001BBD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_10001BBF4(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  [objc_msgSend(*(a1 + 64) objectForKeyedSubscript:{v4), "invalidate"}];
  v5 = *(a1 + 64);

  return [v5 setObject:0 forKeyedSubscript:v4];
}

uint64_t sub_10001BCEC(uint64_t a1, __int128 *a2)
{
  *v18 = *a1;
  v19 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *__p = *(a1 + 24);
  v17 = *(a1 + 40);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  v7 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v7;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v8 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v8;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 12);
  v10 = *(a2 + 7);
  v9 = *(a2 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 64);
  *(a1 + 56) = v10;
  *(a1 + 64) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v5)
  {
    v13 = std::__shared_weak_count::lock(v5);
    if (v13)
    {
      v14 = v13;
      if (v6)
      {
        sub_10000ECB8(v6, v18, __p, v4, 0);
      }

      sub_100008080(v14);
    }

    std::__shared_weak_count::__release_weak(v5);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  return a1;
}

void sub_10001BE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_100008080(v22);
  std::__shared_weak_count::__release_weak(v21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

char **sub_10001BE98(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1002FAD34(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_10001BEE4(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = sub_100007070(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    sub_10001BC60();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_10001C134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001BE98(va);
  _Unwind_Resume(a1);
}

void sub_10001C148(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_10001C160(void *a1)
{
  v1 = a1[4];
  v2 = atomic_load((v1 + 760));
  if (v2)
  {
    __p = 0;
    v43 = 0;
    v44 = 0;
    sub_10001C824(&__p, a1[5] + 16);
    sub_10001C8EC(&__p, *(v1 + 736), *(v1 + 744), *(v1 + 744) - *(v1 + 736));
    v41 = v1;
    v4 = a1[6];
    if (a1[7] != v4)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (v6 && (*(v4 + v5) | 0x20) == 0x7D)
        {
          v7 = v43;
          if (v43 >= v44)
          {
            v9 = __p;
            v10 = (v43 - __p);
            v11 = v43 - __p + 1;
            if (v11 < 0)
            {
              goto LABEL_88;
            }

            v12 = v44 - __p;
            if (2 * (v44 - __p) > v11)
            {
              v11 = 2 * v12;
            }

            if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v13 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v11;
            }

            if (v13)
            {
              operator new();
            }

            v14 = v43 - __p;
            *v10 = 93;
            v8 = v10 + 1;
            memcpy(0, v9, v14);
            __p = 0;
            v43 = v10 + 1;
            v44 = 0;
            if (v9)
            {
              operator delete(v9);
            }
          }

          else
          {
            *v43 = 93;
            v8 = v7 + 1;
          }

          v43 = v8;
          v4 = a1[6];
        }

        v15 = v43;
        if (v43 >= v44)
        {
          v17 = __p;
          v18 = (v43 - __p);
          v19 = v43 - __p + 1;
          if (v19 < 0)
          {
LABEL_88:
            sub_10028C64C();
          }

          v20 = v44 - __p;
          if (2 * (v44 - __p) > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            operator new();
          }

          v22 = v43 - __p;
          *v18 = *(v4 + v5);
          v16 = v18 + 1;
          memcpy(0, v17, v22);
          __p = 0;
          v43 = v18 + 1;
          v44 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v43 = *(v4 + v5);
          v16 = v15 + 1;
        }

        v43 = v16;
        v4 = a1[6];
        v6 = *(v4 + v5++) == 126;
      }

      while (a1[7] - v4 > v5);
    }

    v23 = v41;
    v24 = *(v41 + 728);
    if (v24)
    {
      sub_100292E0C(v24, __p, v43 - __p, (v41 + 136));
    }

    else if ((*(v41 + 136 + *(*(v41 + 136) - 24) + 32) & 5) != 0 || !*(v41 + 264))
    {
      if (qword_1025D4730 != -1)
      {
        sub_1001F3464();
      }

      v27 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEFAULT))
      {
        v28 = (v41 + 8);
        if (*(v41 + 31) < 0)
        {
          v28 = *v28;
        }

        *buf = 136446210;
        v50 = v28;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "ProtobufSerializer,%{public}s,append,bad stream", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4730 != -1)
        {
          sub_1001F3464();
        }

        v29 = (v41 + 8);
        if (*(v41 + 31) < 0)
        {
          v29 = *v29;
        }

        v45 = 136446210;
        v46 = v29;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4738, 0, "ProtobufSerializer,%{public}s,append,bad stream", &v45, 12);
        v31 = v30;
        sub_100152C7C("Generic", 1, 0, 2, "void CLProtobufSerializer::append(const std::string &)_block_invoke", "%s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }

        v23 = v41;
      }
    }

    else
    {
      std::ostream::write();
    }

    if ((*(v23 + 768) & 1) != 0 || byte_102638328 != 1)
    {
      goto LABEL_76;
    }

    v32 = (v23 + 704);
    if (*(v23 + 727) < 0)
    {
      if (!*(v23 + 712))
      {
LABEL_75:
        *(v23 + 768) = 1;
LABEL_76:
        if (__p)
        {
          v43 = __p;
          operator delete(__p);
        }

        return;
      }

      v33 = *v32;
    }

    else
    {
      v33 = (v23 + 704);
      if (!*(v23 + 727))
      {
        goto LABEL_75;
      }
    }

    sub_1004E915C(v33, 3);
    if (qword_1025D4600 != -1)
    {
      sub_101B10908();
    }

    v34 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v35 = (v23 + 8);
      if (*(v23 + 31) < 0)
      {
        v35 = *v35;
      }

      v36 = (v23 + 704);
      if (*(v23 + 727) < 0)
      {
        v36 = *v32;
      }

      *buf = 136446466;
      v50 = v35;
      v51 = 2080;
      v52 = v36;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "ProtobufSerializer,%{public}s,latent class adjustment for %s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101B10908();
      }

      v37 = (v41 + 8);
      if (*(v41 + 31) < 0)
      {
        v37 = *v37;
      }

      if (*(v41 + 727) < 0)
      {
        v32 = *v32;
      }

      v45 = 136446466;
      v46 = v37;
      v47 = 2080;
      v48 = v32;
      LODWORD(v40) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 0, "ProtobufSerializer,%{public}s,latent class adjustment for %s", &v45, v40);
      v39 = v38;
      sub_100152C7C("Generic", 1, 0, 2, "void CLProtobufSerializer::append(const std::string &)_block_invoke", "%s\n", v38);
      if (v39 != buf)
      {
        free(v39);
      }

      v23 = v41;
    }

    goto LABEL_75;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B0F4A0();
  }

  v25 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEFAULT))
  {
    v26 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v26 = *v26;
    }

    *buf = 136446210;
    v50 = v26;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "ProtobufSerializer,#p%{public}s,append dropped since closed", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B107F8();
  }
}

void sub_10001C7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001C824(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10028C64C();
  }
}

void **sub_10001C8EC(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000166A8(v6, v10);
    }

    sub_10028C64C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = (&a3[v11] - v13);
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_10001CA38()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_10001CA84(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 168) >= a3 || *(a1 + 172) >= a3 || *(a1 + 176) >= a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 160);
  }

  return v3 & 1;
}

uint64_t sub_10001CABC(uint64_t a1, uint64_t a2)
{
  if (qword_10265C388 != -1)
  {
    sub_10026A3FC();
  }

  return qword_1026377D0;
}

void sub_10001CAF4(void *a1@<X8>)
{
  if (qword_102636F10 != -1)
  {
    sub_10026C4E4();
  }

  v2 = *(qword_102636F18 + 144);
  *a1 = *(qword_102636F18 + 136);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_10001CB4C(uint64_t a1, const char *a2, BOOL *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v7 = sub_10001CBC0(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_10001CBC0(uint64_t a1, uint64_t a2, BOOL *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1000700DC(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = qword_1025D48A8;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, BOOL &, int) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

BOOL sub_10001CE3C(uint64_t a1, const __CFString *a2, void *a3)
{
  os_unfair_lock_lock(&unk_102656DA0);
  v6 = sub_100006000(a1 + 120, a2, a3);
  os_unfair_lock_unlock(&unk_102656DA0);
  if (v6)
  {
    return 1;
  }

  v7 = CFPreferencesCopyValue(a2, *(a1 + 72), *(a1 + 80), kCFPreferencesCurrentHost);
  *a3 = v7;
  if (v7)
  {
    return 1;
  }

  return sub_100006000(a1 + 104, a2, a3);
}

uint64_t sub_10001CF04(uint64_t a1, uint64_t a2)
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  return byte_102659168;
}

uint64_t sub_10001CF50(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a2 + 5) - *(a2 + 41);
  v6 = *(a1 + 352);
  v7 = *(a1 + 653);
  if (v7 == 1)
  {
    if (*(a1 + 652))
    {
      v7 = 1;
    }

    else
    {
      sub_10026D1A4(a1);
      v7 = 0;
      *(a1 + 653) = 0;
    }
  }

  v8 = *(a1 + 664);
  v9 = *(a2 + 33);
  v10 = v5 / 1000000.0;
  if (v9)
  {
    v11 = *(a1 + 352) + (v9 - *(a2 + 41)) / 1000000.0;
    v12 = *(a1 + 664);
    if (v7)
    {
      v12 = *(a1 + 664);
      if ((*(a1 + 652) & 1) == 0)
      {
        sub_10026D1A4(a1);
        *(a1 + 653) = 0;
        v12 = *(a1 + 664);
      }
    }

    v13 = v11 + v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v6 + v10;
  if (qword_1025D4200 != -1)
  {
    sub_101AD9AD8();
  }

  v15 = v14 + v8;
  v16 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a2 + 41);
    v18 = *(a2 + 1);
    v19 = *(a2 + 5);
    v20 = *(a2 + 25);
    v21 = *(a2 + 17);
    v22 = *(a2 + 29);
    *buf = 134351104;
    *v69 = Current;
    *&v69[8] = 2050;
    *&v69[10] = v17;
    *&v69[18] = 2050;
    v70 = v18;
    *v71 = 2050;
    *&v71[2] = v19;
    *&v71[10] = 2050;
    *&v71[12] = v20;
    v72 = 2050;
    v73 = v15;
    v74 = 2050;
    v75 = v13;
    v76 = 2050;
    v77 = v21;
    v78 = 2050;
    v79 = v22;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "visitKFFilteredPressure,nowAP,%{public}f,nowAOP,%{public}llu,filteredPressure,%{public}f,pressureTimestamp,%{public}llu,kfElevation,%{public}f,wallTimePressureCorrected,%{public}f,wallTimeKFCorrected,%{public}f,temperatureDerivative,%{public}f,absAltUnc,%{public}f", buf, 0x5Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_101AD9CD8();
    }

    v33 = *(a2 + 41);
    v34 = *(a2 + 1);
    v35 = *(a2 + 5);
    v36 = *(a2 + 25);
    v37 = *(a2 + 17);
    v38 = *(a2 + 29);
    v50 = 134351104;
    v51 = Current;
    v52 = 2050;
    v53 = v33;
    v54 = 2050;
    v55 = v34;
    v56 = 2050;
    v57 = v35;
    v58 = 2050;
    v59 = v36;
    v60 = 2050;
    v61 = v15;
    v62 = 2050;
    v63 = v13;
    v64 = 2050;
    v65 = v37;
    v66 = 2050;
    v67 = v38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "visitKFFilteredPressure,nowAP,%{public}f,nowAOP,%{public}llu,filteredPressure,%{public}f,pressureTimestamp,%{public}llu,kfElevation,%{public}f,wallTimePressureCorrected,%{public}f,wallTimeKFCorrected,%{public}f,temperatureDerivative,%{public}f,absAltUnc,%{public}f", &v50, 92);
    v40 = v39;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitKFFilteredPressure(const CMMotionCoprocessorReply::KFFilteredPressure *)", "%s\n", v39);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  if (vabdd_f64(Current, *(a1 + 1424)) > 10.0)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101AD9CD8();
    }

    v23 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a2 + 41);
      v25 = *(a2 + 1);
      v26 = *(a2 + 5);
      v27 = *(a2 + 25);
      v28 = *(a2 + 17);
      v29 = *(a2 + 29);
      *buf = 134351104;
      *v69 = Current;
      *&v69[8] = 2050;
      *&v69[10] = v24;
      *&v69[18] = 2050;
      v70 = v25;
      *v71 = 2050;
      *&v71[2] = v26;
      *&v71[10] = 2050;
      *&v71[12] = v27;
      v72 = 2050;
      v73 = v15;
      v74 = 2050;
      v75 = v13;
      v76 = 2050;
      v77 = v28;
      v78 = 2050;
      v79 = v29;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "visitKFFilteredPressure,nowAP,%{public}f,nowAOP,%{public}llu,filteredPressure,%{public}f,pressureTimestamp,%{public}llu,kfElevation,%{public}f,wallTimePressureCorrected,%{public}f,wallTimeKFCorrected,%{public}f,temperatureDerivative,%{public}f,absAltUnc,%{public}f", buf, 0x5Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 != -1)
      {
        sub_101AD9CD8();
      }

      v41 = *(a2 + 41);
      v42 = *(a2 + 1);
      v43 = *(a2 + 5);
      v44 = *(a2 + 25);
      v45 = *(a2 + 17);
      v46 = *(a2 + 29);
      v50 = 134351104;
      v51 = Current;
      v52 = 2050;
      v53 = v41;
      v54 = 2050;
      v55 = v42;
      v56 = 2050;
      v57 = v43;
      v58 = 2050;
      v59 = v44;
      v60 = 2050;
      v61 = v15;
      v62 = 2050;
      v63 = v13;
      v64 = 2050;
      v65 = v45;
      v66 = 2050;
      v67 = v46;
      LODWORD(v49) = 92;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "visitKFFilteredPressure,nowAP,%{public}f,nowAOP,%{public}llu,filteredPressure,%{public}f,pressureTimestamp,%{public}llu,kfElevation,%{public}f,wallTimePressureCorrected,%{public}f,wallTimeKFCorrected,%{public}f,temperatureDerivative,%{public}f,absAltUnc,%{public}f", &v50, v49);
      v48 = v47;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitKFFilteredPressure(const CMMotionCoprocessorReply::KFFilteredPressure *)", "%s\n", v47);
      if (v48 != buf)
      {
        free(v48);
      }
    }

    *(a1 + 1424) = Current;
  }

  *buf = *(a2 + 1);
  v30 = *(a2 + 21);
  *&v69[4] = v15;
  *&v69[12] = v30;
  LODWORD(v70) = *(a2 + 29);
  v31 = *(a2 + 13);
  *v71 = v13;
  *&v71[8] = v31;
  return sub_100013B00(a1, 30, buf, 48);
}

id sub_10001D4E0(void *a1, char *a2, void *__src, size_t a4)
{
  LODWORD(__dst) = 2139095039;
  *(&__dst + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21 = vneg_f32(0x80000000800000);
  DWORD2(v21) = 2139095039;
  v22 = __PAIR128__(v21, 0x7FEFFFFFFFFFFFFFLL);
  if (a4 >= 0x30)
  {
    v8 = 48;
  }

  else
  {
    v8 = a4;
  }

  memcpy(&__dst, __src, v8);
  if (a4 >= 0x31)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018AD704();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v24 = 0x8000000101DB7E32 & 0x7FFFFFFFFFFFFFFFLL;
      v25 = 2048;
      v26 = 48;
      v27 = 2048;
      v28 = a4;
      v29 = 1024;
      v30 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018AD718(a4, a2);
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001D6CC;
  v15[3] = &unk_10245AEB8;
  v15[4] = v12;
  v15[5] = v11;
  v16 = __dst;
  v17 = v21;
  v18 = v22;
  v19 = v10;
  return [v13 async:v15];
}

uint64_t sub_10001D6CC(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[12];

    return v3(a1 + 6, v4);
  }

  return result;
}

void sub_10001D768(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B46F0;
  sub_10001E38C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10001D7D0(_BYTE *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1[111] & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023F73C();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v15 = a1 + 8;
      if (a1[31] < 0)
      {
        v15 = *v15;
      }

      *buf = 136380675;
      v57 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "LocationProvider,#Warning. Provider %{private}s is not enabled. Check defaults writes or internal settings", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101906A80(a1);
    }

    return;
  }

  v7 = a4;
  v10 = *a2;
  if (*a2 < 6 || (v10 != 39 ? (v11 = v10 == 10) : (v11 = 1), v11))
  {
    if (a1[109] != a6)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10023F73C();
      }

      v12 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v13 = a1 + 8;
        if (a1[31] < 0)
        {
          v13 = *v13;
        }

        *buf = 136315138;
        v57 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "LocationProvider,Ignoring location for %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101906C98(a1);
      }

      return;
    }

    if (sub_100020608(*(a3 + 4), *(a3 + 12)))
    {
      if (*(a3 + 36) <= 0.0 || sub_10010615C(*(a3 + 28)))
      {
        if (sub_10002807C(*(a3 + 4), *(a3 + 12)))
        {
          if (qword_1025D4600 != -1)
          {
            sub_10023F73C();
          }

          v16 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
          {
            v17 = a1 + 8;
            if (a1[31] < 0)
            {
              v17 = *v17;
            }

            v18 = *a2;
            *buf = 136380931;
            v57 = v17;
            v58 = 1024;
            v59 = v18;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "LocationProvider,Provider %{private}s is notifying clients (type=%d) of a <0,0> position", buf, 0x12u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101906B80(a1, a2);
          }

          return;
        }

        if ((a1[109] & 1) != 0 || !sub_10002807C(*(a3 + 100), *(a3 + 108)))
        {
          v10 = *a2;
          goto LABEL_65;
        }

        if (qword_1025D4600 != -1)
        {
          sub_10023F73C();
        }

        v29 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
        {
          v30 = a1 + 8;
          if (a1[31] < 0)
          {
            v30 = *v30;
          }

          v31 = *a2;
          v32 = *(a3 + 4);
          v33 = *(a3 + 12);
          v34 = *(a3 + 96);
          *buf = 136381699;
          v57 = v30;
          v58 = 1024;
          v59 = v31;
          v60 = 2049;
          v61 = v32;
          v62 = 2049;
          v63 = v33;
          v64 = 1024;
          v65 = v34;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "LocationProvider,Provider %{private}s is notifying clients (notification type=%d) of a <0,0> raw coordinate, at location (<%{private}+.8f,%{private}+.8f>) of type %d", buf, 0x2Cu);
        }

        if (!sub_10000A100(121, 0))
        {
          return;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_10190651C();
        }

        v35 = a1 + 8;
        if (a1[31] < 0)
        {
          v35 = *v35;
        }

        v36 = *a2;
        v37 = *(a3 + 4);
        v38 = *(a3 + 12);
        v39 = *(a3 + 96);
        *v54 = 136381699;
        *&v54[4] = v35;
        *&v54[12] = 1024;
        *&v54[14] = v36;
        *&v54[18] = 2049;
        *&v54[20] = v37;
        *&v54[28] = 2049;
        *&v54[30] = v38;
        *&v54[38] = 1024;
        LODWORD(v55) = v39;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 17, "LocationProvider,Provider %{private}s is notifying clients (notification type=%d) of a <0,0> raw coordinate, at location (<%{private}+.8f,%{private}+.8f>) of type %d", v54, 44, *v54, *&v54[8], *&v54[24], v55);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_10023F73C();
        }

        v42 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
        {
          v43 = a1 + 8;
          if (a1[31] < 0)
          {
            v43 = *v43;
          }

          v44 = *a2;
          v45 = *(a3 + 28);
          v46 = *(a3 + 36);
          *buf = 136381443;
          v57 = v43;
          v58 = 1024;
          v59 = v44;
          v60 = 2048;
          v61 = v45;
          v62 = 2048;
          v63 = v46;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_FAULT, "LocationProvider,Provider %{private}s is notifying clients (type=%d) of an invalid altitude %.2f (accuracy %.2f)", buf, 0x26u);
        }

        if (!sub_10000A100(121, 0))
        {
          return;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_10190651C();
        }

        v47 = a1 + 8;
        if (a1[31] < 0)
        {
          v47 = *v47;
        }

        v48 = *a2;
        v49 = *(a3 + 28);
        v50 = *(a3 + 36);
        *v54 = 136381443;
        *&v54[4] = v47;
        *&v54[12] = 1024;
        *&v54[14] = v48;
        *&v54[18] = 2048;
        *&v54[20] = v49;
        *&v54[28] = 2048;
        *&v54[30] = v50;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 17, "LocationProvider,Provider %{private}s is notifying clients (type=%d) of an invalid altitude %.2f (accuracy %.2f)", v54, 38, *v54, *&v54[8], *&v54[24], v55);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_10023F73C();
      }

      v19 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        v20 = a1 + 8;
        if (a1[31] < 0)
        {
          v20 = *v20;
        }

        v21 = *a2;
        v22 = *(a3 + 4);
        v23 = *(a3 + 12);
        *buf = 136381443;
        v57 = v20;
        v58 = 1024;
        v59 = v21;
        v60 = 2053;
        v61 = v22;
        v62 = 2053;
        v63 = v23;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "LocationProvider,Provider %{private}s is notifying clients (type=%d) of an invalid position (<%{sensitive}+.8f,%{sensitive}+.8f>)", buf, 0x26u);
      }

      if (!sub_10000A100(121, 0))
      {
        return;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10190651C();
      }

      v24 = a1 + 8;
      if (a1[31] < 0)
      {
        v24 = *v24;
      }

      v25 = *a2;
      v26 = *(a3 + 4);
      v27 = *(a3 + 12);
      *v54 = 136381443;
      *&v54[4] = v24;
      *&v54[12] = 1024;
      *&v54[14] = v25;
      *&v54[18] = 2053;
      *&v54[20] = v26;
      *&v54[28] = 2053;
      *&v54[30] = v27;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 17, "LocationProvider,Provider %{private}s is notifying clients (type=%d) of an invalid position (<%{sensitive}+.8f,%{sensitive}+.8f>)", v54, 38, *v54, *&v54[8], *&v54[24], v55);
    }

    v51 = v28;
    sub_100152C7C("Generic", 1, 0, 0, "virtual void CLLocationProvider::notifyClientsWithData(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, BOOL, int, BOOL)", "%s\n", v28);
    if (v51 != buf)
    {
      free(v51);
    }

    return;
  }

LABEL_65:
  if (v10 - 1 < 2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023F73C();
    }

    v40 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v41 = a1 + 8;
      if (a1[31] < 0)
      {
        v41 = *v41;
      }

      *buf = 136315138;
      v57 = v41;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "LocationProvider,#Warning Provider %s should not be sending coarse and fine notifications directly", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101906D98(a1);
    }

    goto LABEL_103;
  }

  if (v10 != 9)
  {
    if (!v10)
    {
      if (*(a3 + 76) + *(a3 + 88) > CFAbsoluteTimeGetCurrent())
      {
        *buf = 9;
        (*(*a1 + 120))(a1, buf);
      }

      *buf = 3;
      sub_100022A88(a1, buf, a3, v7, -1);
      *buf = 4;
      sub_100022A88(a1, buf, a3, v7, -1);
      *buf = 39;
      sub_100022A88(a1, buf, a3, v7, -1);
      *buf = 2;
      sub_100022A88(a1, buf, a3, v7, -1);
      *buf = 1;
      sub_100022A88(a1, buf, a3, v7, -1);
      *buf = 5;
      sub_100022A88(a1, buf, a3, v7, -1);
    }

LABEL_103:
    sub_100022A88(a1, a2, a3, v7, -1);
    return;
  }

  *buf = 0;
  (*(*a1 + 120))(a1, buf, a3, a4, a5, a6);
  *buf = 2;
  (*(*a1 + 120))(a1, buf);
  *buf = 1;
  (*(*a1 + 120))(a1, buf);
  *buf = 3;
  (*(*a1 + 120))(a1, buf);
  *buf = 4;
  (*(*a1 + 120))(a1, buf);
  *buf = 39;
  (*(*a1 + 120))(a1, buf);
  *buf = 5;
  (*(*a1 + 120))(a1, buf);
  if ((a1[112] & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10190651C();
    }

    v52 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v53 = a1 + 8;
      if (a1[31] < 0)
      {
        v53 = *v53;
      }

      *buf = 136315138;
      v57 = v53;
      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "LocationProvider,Sending location unavailable notification through for %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101906E98(a1);
    }

    a1[112] = 1;
    goto LABEL_103;
  }
}

uint64_t sub_10001E2C4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_8:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637EB0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  if ((*(v5 + 36) & 8) != 0)
  {
LABEL_11:
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_102637EB0 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  }

  return result;
}

void *sub_10001E38C(void *result)
{
  if (qword_102637EB0 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

double sub_10001E42C(uint64_t a1)
{
  *a1 = off_1024B4600;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void sub_10001E474(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B4600;
  sub_1000203B0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10001E4DC(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_1000222CC(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 8);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_10002232C(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 32) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 32) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 8))
                {
                  do
                  {
                    v28 = *(v24 + 32);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1001CCA08();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 8);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1001CCA08();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 8);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLLocationProvider_Type::Notification, CLLocationProvider_Type::NotificationData, char, CLLocationProvider_Type::RegInfo>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLLocationProvider_Type::Notification, NotificationData_T = CLLocationProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLLocationProvider_Type::RegInfo]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

void sub_10001E898(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        *buf = 67109376;
        *&buf[4] = v12;
        *&buf[8] = 1024;
        *&buf[10] = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v118 = 67109376;
        *&v118[4] = v16;
        *&v118[8] = 1024;
        *&v118[10] = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", v118, 14);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      return;
    }

    v27 = sub_10000AED0();
    v29 = sub_10000B1F8(v27, v28);
    sub_10000AED4(v29, v114);
    sub_10000AFE4(v115, a2, a3, a4, v114);
    v117 |= 2u;
    v30 = v116;
    if (!v116)
    {
      operator new();
    }

    *(v116 + 492) |= 0x800u;
    v31 = *(v30 + 352);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 200) |= 0x10000u;
    v32 = *(v31 + 128);
    if (!v32)
    {
      operator new();
    }

    v33 = *a5;
    *(v32 + 36) |= 1u;
    *(v32 + 8) = v33;
    v34 = sub_100021DC4(a6);
    if (!sub_100DF8570(v34))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13026, "::CLP::LogEntry::PrivateData::LocationProviderNotification_NotificationType_IsValid(value)");
    }

    v35 = *(v32 + 36);
    *(v32 + 12) = v34;
    *(v32 + 36) = v35 | 6;
    v36 = *(v32 + 16);
    if (!v36)
    {
      operator new();
    }

    v37 = *a6;
    if (*a6 > 41)
    {
      if (v37 > 47)
      {
        if (v37 == 48)
        {
LABEL_85:
          v75 = *(a7 + 1528);
          *(v36 + 128) |= 0x4000u;
          *(v36 + 121) = v75;
          goto LABEL_86;
        }

        if (v37 == 49)
        {
          v42 = sub_1005D2C94(v36);
          sub_10126F19C(a7 + 1536, v42);
          goto LABEL_86;
        }
      }

      else
      {
        if (v37 == 42)
        {
          v43 = sub_1005D2C14(v36);
          v44 = *(a7 + 1480);
          *(v43 + 16) |= 1u;
          *(v43 + 8) = v44;
          goto LABEL_86;
        }

        if (v37 == 46)
        {
          v40 = sub_1005D2D14(v36);
          sub_10126FEB8(a7 + 1512, v40);
          goto LABEL_86;
        }
      }
    }

    else if (v37 > 35)
    {
      if (v37 == 36)
      {
        v45 = sub_1000206EC(v36);
        sub_10002076C(a7 + 1328, v45);
        goto LABEL_86;
      }

      if (v37 == 41)
      {
        v41 = sub_100182D24(v36);
        sub_100182C90(a7 + 1448, v41);
        goto LABEL_86;
      }
    }

    else
    {
      if (v37 == 9)
      {
LABEL_86:
        v76 = sub_10000BFC0(a1, v115);
        if (*(a1 + 8) == 1)
        {
          v77 = v76;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v78 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, v118);
            if (v118[23] >= 0)
            {
              v79 = v118;
            }

            else
            {
              v79 = *v118;
            }

            LODWORD(v107[0]) = a3->i32[0];
            sub_1013230DC(v107, v112);
            v80 = v77;
            if (v113 >= 0)
            {
              v81 = v112;
            }

            else
            {
              v81 = v112[0];
            }

            v109 = *a4;
            v82 = __p;
            sub_1013230DC(&v109, __p);
            if (v111 < 0)
            {
              v82 = __p[0];
            }

            v83 = sub_100048D98(*a6);
            v85 = sub_10000B1F8(v83, v84);
            v86 = sub_100125220(v85);
            *buf = 67110402;
            *&buf[4] = v80;
            *&buf[8] = 2080;
            *&buf[10] = v79;
            *&buf[18] = 2080;
            *&buf[20] = v81;
            *&buf[28] = 2080;
            *&buf[30] = v82;
            v124 = 2080;
            v125 = v83;
            v126 = 2050;
            v127 = v86;
            _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", buf, 0x3Au);
            if (v111 < 0)
            {
              operator delete(__p[0]);
            }

            if (v113 < 0)
            {
              operator delete(v112[0]);
            }

            v77 = v80;
            if ((v118[23] & 0x80000000) != 0)
            {
              operator delete(*v118);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(buf);
            v87 = qword_1025D4608;
            sub_101322EE0(a2, v112);
            if (v113 >= 0)
            {
              v88 = v112;
            }

            else
            {
              v88 = v112[0];
            }

            v109 = a3->i32[0];
            v89 = __p;
            sub_1013230DC(&v109, __p);
            if (v111 < 0)
            {
              v89 = __p[0];
            }

            v106 = *a4;
            sub_1013230DC(&v106, v107);
            if (v108 >= 0)
            {
              v90 = v107;
            }

            else
            {
              v90 = v107[0];
            }

            v91 = sub_100048D98(*a6);
            v93 = sub_10000B1F8(v91, v92);
            v94 = sub_100125220(v93);
            *v118 = 67110402;
            *&v118[4] = v77;
            *&v118[8] = 2080;
            *&v118[10] = v88;
            *&v118[18] = 2080;
            *&v118[20] = v89;
            *&v118[28] = 2080;
            *&v118[30] = v90;
            v119 = 2080;
            v120 = v91;
            v121 = 2050;
            v122 = v94;
            LODWORD(v103) = 58;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v87, 2, "#locctl,#rec,recordMessage,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", v118, v103);
            v96 = v95;
            if (v108 < 0)
            {
              operator delete(v107[0]);
            }

            if (v111 < 0)
            {
              operator delete(__p[0]);
            }

            if (v113 < 0)
            {
              operator delete(v112[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v96);
            if (v96 != buf)
            {
              free(v96);
            }
          }
        }

        sub_10000CE1C(v115);
        return;
      }

      if (v37 == 11)
      {
        v38 = *(a7 + 824);
        v39 = sub_10010E4C4(v36);
        sub_10010E544(v38, v39);
        goto LABEL_86;
      }
    }

    v46 = sub_1001F50CC(v36);
    sub_1001F34E4(a7, v46);
    v47 = sub_1001F514C(v36);
    sub_1001F3908(a7 + 160, v47);
    if (*(a7 + 808))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v48 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v112[0]) = a3->i32[0];
        sub_1013230DC(v112, v118);
        v49 = v118[23] >= 0 ? v118 : *v118;
        v105 = v49;
        v50 = sub_100048D98(*a6);
        v51 = sub_10030D934(*(a7 + 808));
        *buf = 136315650;
        *&buf[4] = v105;
        *&buf[12] = 2080;
        *&buf[14] = v50;
        *&buf[22] = 2048;
        *&buf[24] = v51;
        _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "#locctl,#rec,received #batchedlocations,from,%s,notification,%s,size,%zu", buf, 0x20u);
        if ((v118[23] & 0x80000000) != 0)
        {
          operator delete(*v118);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(buf);
        v97 = qword_1025D4608;
        LODWORD(__p[0]) = a3->i32[0];
        v98 = v112;
        sub_1013230DC(__p, v112);
        if (v113 < 0)
        {
          v98 = v112[0];
        }

        v99 = sub_100048D98(*a6);
        v100 = sub_10030D934(*(a7 + 808));
        *v118 = 136315650;
        *&v118[4] = v98;
        *&v118[12] = 2080;
        *&v118[14] = v99;
        *&v118[22] = 2048;
        *&v118[24] = v100;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v97, 2, "#locctl,#rec,received #batchedlocations,from,%s,notification,%s,size,%zu", v118, 32, v104);
        v102 = v101;
        if (v113 < 0)
        {
          operator delete(v112[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v102);
        if (v102 != buf)
        {
          free(v102);
        }
      }

      v52 = *(a7 + 808);
      v53 = sub_10030D8B4(v36);
      sub_10030D574(v52, v53);
    }

    v54 = *(v36 + 128);
    *(v36 + 120) = *(a7 + 832);
    v55 = *(a7 + 840);
    *(v36 + 128) = v54 | 0x30;
    *(v36 + 40) = v55;
    v56 = sub_1001F51CC(v36);
    v57 = *(a7 + 856);
    *(v56 + 44) |= 1u;
    *(v56 + 8) = v57;
    v58 = sub_1001F51CC(v36);
    v59 = *(a7 + 848);
    *(v58 + 44) |= 2u;
    *(v58 + 16) = v59;
    v60 = sub_1001F51CC(v36);
    v61 = *(a7 + 864);
    *(v60 + 44) |= 4u;
    *(v60 + 24) = v61;
    v62 = sub_1001F51CC(v36);
    v63 = *(a7 + 872);
    *(v62 + 44) |= 8u;
    *(v62 + 32) = v63;
    v64 = sub_1001F524C(v36);
    v65 = *(a7 + 888);
    *(v64 + 7) |= 1u;
    v64[1] = v65;
    v66 = sub_1001F524C(v36);
    v67 = *(a7 + 880);
    *(v66 + 7) |= 2u;
    v66[2] = v67;
    v68 = sub_1001F40C8((a7 + 928));
    sub_1001F534C(v36, v68);
    v69 = sub_1001F52CC(v36);
    v70 = *(a7 + 944);
    *(v69 + 36) |= 1u;
    *(v69 + 8) = v70;
    v71 = sub_1001F52CC(v36);
    v72 = *(a7 + 936);
    *(v71 + 36) |= 2u;
    *(v71 + 16) = v72;
    v73 = sub_1001F52CC(v36);
    v74 = *(a7 + 952);
    *(v73 + 36) |= 4u;
    *(v73 + 24) = v74;
    goto LABEL_85;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v21 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, buf);
    v22 = buf[23] >= 0 ? buf : *buf;
    *v118 = 136315138;
    *&v118[4] = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLLocationProvider_Type,unsupported message type,%s", v118, 0xCu);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DAB48();
  }
}

double sub_10001F5D0(uint64_t a1)
{
  *a1 = off_1024B46F0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_10001F5FC(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    v8 = *(qword_102637EB0 + 16);
  }

  v9 = sub_10001F748(v8, a2);
  v10 = v9;
  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
  }

  else
  {
    v11 = 1;
  }

  v4 = (v4 + v10 + v11 + 1);
  if ((*(a1 + 36) & 8) != 0)
  {
LABEL_28:
    v12 = *(a1 + 24);
    if (!v12)
    {
      v12 = *(qword_102637EB0 + 24);
    }

    v13 = sub_10010F374(v12, a2);
    v15 = v13;
    if (v13 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
  }

LABEL_34:
  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_10001F748(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_50;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102637EB8 + 8);
  }

  v7 = sub_1001F4208(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 = v8 + v9 + 1;
  v3 = *(a1 + 128);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102637EB8 + 16);
    }

    v11 = sub_1001F4538(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    }

    else
    {
      v13 = 1;
    }

    v4 += v12 + v13 + 1;
    v3 = *(a1 + 128);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v14 = *(a1 + 24);
    if (!v14)
    {
      v14 = *(qword_102637EB8 + 24);
    }

    v15 = sub_10030E500(v14, a2);
    v16 = v15;
    if (v15 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
    }

    else
    {
      v17 = 1;
    }

    v4 += v16 + v17 + 1;
    v3 = *(a1 + 128);
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if ((v3 & 8) != 0)
  {
LABEL_27:
    v18 = *(a1 + 32);
    if (!v18)
    {
      v18 = *(qword_102637EB8 + 32);
    }

    v19 = sub_10010E6C8(v18, a2);
    v20 = v19;
    if (v19 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    }

    else
    {
      v21 = 1;
    }

    v4 += v20 + v21 + 1;
    v3 = *(a1 + 128);
  }

LABEL_33:
  v22 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v5 = v22 + 9;
  }

  else
  {
    v5 = v22;
  }

  if ((v3 & 0x40) != 0)
  {
    v23 = *(a1 + 56);
    if ((v23 & 0x80000000) != 0)
    {
      v24 = 11;
    }

    else if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(a1 + 128);
    }

    else
    {
      v24 = 2;
    }

    v5 = (v24 + v5);
  }

  if ((v3 & 0x80) != 0)
  {
    v25 = *(a1 + 48);
    if (!v25)
    {
      v25 = *(qword_102637EB8 + 48);
    }

    v26 = sub_1001F4C0C(v25);
    v27 = v26;
    if (v26 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
    }

    else
    {
      v28 = 1;
    }

    v5 = (v5 + v27 + v28 + 1);
    v3 = *(a1 + 128);
  }

LABEL_50:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_101;
  }

  if ((v3 & 0x100) != 0)
  {
    v29 = *(a1 + 64);
    if (!v29)
    {
      v29 = *(qword_102637EB8 + 64);
    }

    v30 = sub_1001F5390(v29);
    v31 = v30;
    if (v30 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
    }

    else
    {
      v32 = 1;
    }

    LODWORD(v5) = v5 + v31 + v32 + 1;
    v3 = *(a1 + 128);
    if ((v3 & 0x200) == 0)
    {
LABEL_53:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_70;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  v33 = *(a1 + 60);
  if ((v33 & 0x80000000) != 0)
  {
    v34 = 11;
  }

  else if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 1;
    v3 = *(a1 + 128);
  }

  else
  {
    v34 = 2;
  }

  LODWORD(v5) = v34 + v5;
  if ((v3 & 0x400) == 0)
  {
LABEL_54:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_76;
  }

LABEL_70:
  v35 = *(a1 + 72);
  if (!v35)
  {
    v35 = *(qword_102637EB8 + 72);
  }

  v36 = sub_1001F53BC(v35);
  v37 = v36;
  if (v36 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
  }

  else
  {
    v38 = 1;
  }

  LODWORD(v5) = v5 + v37 + v38 + 1;
  v3 = *(a1 + 128);
  if ((v3 & 0x800) == 0)
  {
LABEL_55:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

LABEL_82:
    v43 = *(a1 + 88);
    if (!v43)
    {
      v43 = *(qword_102637EB8 + 88);
    }

    v44 = sub_100182DA4(v43, a2);
    v45 = v44;
    if (v44 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2);
    }

    else
    {
      v46 = 1;
    }

    LODWORD(v5) = v5 + v45 + v46 + 1;
    v3 = *(a1 + 128);
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_88;
  }

LABEL_76:
  v39 = *(a1 + 80);
  if (!v39)
  {
    v39 = *(qword_102637EB8 + 80);
  }

  v40 = sub_100020E98(v39, a2);
  v41 = v40;
  if (v40 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
  }

  else
  {
    v42 = 1;
  }

  LODWORD(v5) = v5 + v41 + v42 + 1;
  v3 = *(a1 + 128);
  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_82;
  }

LABEL_56:
  if ((v3 & 0x2000) != 0)
  {
LABEL_88:
    v47 = *(a1 + 96);
    if (!v47)
    {
      v47 = *(qword_102637EB8 + 96);
    }

    v48 = sub_10042ABD4(v47);
    v49 = v48;
    if (v48 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2);
    }

    else
    {
      v50 = 1;
    }

    LODWORD(v5) = v5 + v49 + v50 + 1;
    v3 = *(a1 + 128);
  }

LABEL_94:
  v5 = ((v3 >> 13) & 2) + v5;
  if ((v3 & 0x8000) != 0)
  {
    v51 = *(a1 + 104);
    if (!v51)
    {
      v51 = *(qword_102637EB8 + 104);
    }

    v52 = sub_1004283FC(v51);
    v53 = v52;
    if (v52 >= 0x80)
    {
      v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2);
    }

    else
    {
      v54 = 1;
    }

    v5 = (v5 + v53 + v54 + 2);
    v3 = *(a1 + 128);
  }

LABEL_101:
  if ((v3 & 0x10000) != 0)
  {
    v55 = *(a1 + 112);
    if (!v55)
    {
      v55 = *(qword_102637EB8 + 112);
    }

    v56 = sub_10042B054(v55, a2);
    v58 = v56;
    if (v56 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56, v57);
    }

    else
    {
      v59 = 1;
    }

    v5 = (v5 + v58 + v59 + 2);
  }

  *(a1 + 124) = v5;
  return v5;
}

void sub_10001FBA4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  *buf = 1;
  v64[0] = 1;
  v8 = sub_10000AD98(buf);
  v64[1] = v8;
  v9 = *(a1 + 96);
  v11 = sub_10000AE98(v8, v10);
  *buf = 4;
  v63 = v9;
  sub_10001E898(v11, buf, (a1 + 5220), v64, &v63, a2, a3);
  if (!*a2)
  {
    if (qword_1025D48C0 != -1)
    {
      sub_101AACA10();
    }

    v12 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(a3 + 4);
      v47 = *(a3 + 12);
      v52 = *(a3 + 20);
      v13 = *(a3 + 96);
      v49 = sub_1001FD6E4(v13);
      v51 = *(a3 + 44);
      v54 = *(a3 + 60);
      v56 = *(a3 + 84);
      v58 = *(a3 + 88);
      v60 = *(a3 + 28);
      v61 = *(a3 + 36);
      v62 = *(a3 + 76);
      v15 = sub_10000B1F8(v49, v14);
      *buf = 0;
      v16 = sub_10001A6B0(v15, buf) - *(a3 + 76);
      v17 = *(a3 + 184);
      v18 = *(a3 + 52);
      v19 = *(a3 + 124);
      v42 = *(a3 + 128);
      v43 = *(a3 + 68);
      v44 = *(a3 + 100);
      v46 = *(a3 + 108);
      v48 = *(a3 + 116);
      v50 = *(a3 + 132);
      v53 = *(a3 + 136);
      v55 = *(a3 + 516);
      v57 = *(a3 + 696);
      v59 = *(a3 + 140);
      v22 = sub_10000B1F8(v20, v21);
      v23 = sub_100125220(v22);
      *buf = 136322307;
      *v66 = "CL";
      *&v66[8] = 1024;
      *&v66[10] = 1;
      *&v66[14] = 2053;
      *&v66[16] = v45;
      *&v66[24] = 2053;
      *&v66[26] = v47;
      *&v66[34] = 2048;
      *&v66[36] = v52;
      v67 = 1024;
      v68 = v13;
      v69 = 2080;
      v70 = v49;
      v71 = 2048;
      v72 = v51;
      v73 = 2048;
      v74 = v54;
      v75 = 1024;
      v76 = v56;
      v77 = 2048;
      v78 = v58;
      v79 = 2048;
      v80 = v60;
      v81 = 2048;
      v82 = v61;
      v83 = 2048;
      v84 = v62;
      v85 = 2048;
      v86 = v16;
      v87 = 2048;
      v88 = v17;
      v89 = 1024;
      v90 = v19;
      v91 = 2048;
      v92 = v18;
      v93 = 2048;
      v94 = v43;
      v95 = 1024;
      v96 = v42;
      v97 = 2048;
      v98 = v44;
      v99 = 2048;
      v100 = v46;
      v101 = 2048;
      v102 = v48;
      v103 = 1024;
      v104 = v50;
      v105 = 1024;
      v106 = v53;
      v107 = 1024;
      v108 = v55;
      v109 = 1024;
      v110 = v57;
      v111 = 1024;
      v112 = v59;
      v113 = 2050;
      v114 = v23;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%d,%s,Speed,%.2f,Course,%.2f,Confidence,%d,Lifespan,%.3f,Altitude,%.1f,AltitudeAccuracy,%.1f,LocationTimestamp,%.3f,Age,%.3f,timestampGps,%.3lf,floor,%d,SpeedAccuracy,%.3lf,CourseAccuracy,%.1lf,integrity,%d,rawLat,%.7lf,rawLon,%.7lf,rawCourse,%.2f,refFrame,%d,rawRefFrame,%d,propagated,%d,gnssContent,%d,signalEnv,%d,propagation_us,%{public}.3f", buf, 0xFCu);
    }

    if (sub_10000A100(123, 2))
    {
      sub_101AACCAC();
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101AACFA4();
    }

    v24 = off_1025D47A8;
    v25 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
    if (v25)
    {
      v27 = LocationLogEncryptionDataSize();
      v28 = LocationLogEncryptionEncryptData();
      v29 = *a2;
      *buf = 68289794;
      *v66 = 0;
      *&v66[4] = 2082;
      *&v66[6] = "";
      *&v66[14] = 1040;
      *&v66[16] = v27;
      *&v66[20] = 2098;
      *&v66[22] = v28;
      *&v66[30] = 2050;
      *&v66[32] = v29;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Notifying clients with location, location:%{public, location:Encrypted_CLClientLocation}.*P, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", buf, 0x2Cu);
    }

    v30 = *(a3 + 88);
    if (v30 >= 0.0)
    {
      v31 = v30 + *(a3 + 76);
      v32 = sub_10000B1F8(v25, v26);
      *buf = 0;
      if (v31 < sub_10001A6B0(v32, buf))
      {
        if (qword_1025D4600 != -1)
        {
          sub_10022FB88();
        }

        v33 = qword_1025D4608;
        v34 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT);
        if (v34)
        {
          v36 = sub_10000B1F8(v34, v35);
          *buf = 0;
          v37 = sub_10001A6B0(v36, buf) - *(a3 + 76);
          v40 = sub_10000B1F8(v38, v39);
          v41 = sub_100125220(v40);
          *buf = 134349312;
          *v66 = v37;
          *&v66[8] = 2050;
          *&v66[10] = v41;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Notifying clients of an already-expired location,age,%{public}.3f,propagation_us,%{public}.3f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AACFCC((a3 + 76));
        }
      }
    }
  }

  sub_10001D7D0(a1, a2, a3, a4, 0xFFFFFFFFLL, 0);
}
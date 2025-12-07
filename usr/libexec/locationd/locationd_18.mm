uint64_t sub_10012AF48(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 8);
  v7 = v3;
  sub_10012AFE4(v4, &v7, a3);
  result = v7;
  if (v7)
  {
    v6 = *(*v7 + 8);

    return v6();
  }

  return result;
}

void sub_10012AFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_10164BCBC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012AFE4(uint64_t result, uint64_t *a2, __n128 a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 216);
    if (v4)
    {
      v7 = *(v3 + 8);
      switch(v7)
      {
        case 1:
          *a2 = 0;
          v42 = v3;
          sub_100138888(result, &v42, a3);
          goto LABEL_71;
        case 2:
          if ((v4 & 0x40) != 0)
          {
            v16 = *(v3 + 48);
            if (!v16)
            {
              v16 = *(qword_102637FA0 + 48);
            }

            if (qword_1025D4650 != -1)
            {
              sub_1002981B4();
            }

            v17 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v18 = *(v16 + 24);
              v19 = *(v16 + 25);
              v20 = *(v16 + 26);
              v21 = *(v16 + 8) * 0.000000001;
              v22 = *(v16 + 16) * 0.000000001;
              *buf = 67110144;
              v44 = v18;
              v45 = 1024;
              v46 = v19;
              v47 = 1024;
              v48 = v20;
              v49 = 2048;
              v50 = v21;
              v51 = 2048;
              v52 = v22;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#gpsd,status,device_init,%d,device_busy,%d,device_active,%d,gpsd_uptime,%f,device_uptime,%f", buf, 0x28u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101770888(v16);
            }
          }

          return;
        case 3:
          v15 = *a2;

          sub_10013B064(result, v15, a3);
          return;
        case 5:
          v24 = *a2;

          sub_1017635AC(result, v24);
          return;
        case 9:
          *a2 = 0;
          v41 = v3;
          sub_100320FA8(result, &v41);
          goto LABEL_71;
        case 10:
          *a2 = 0;
          v40 = v3;
          sub_101761D18(result, &v40);
          goto LABEL_71;
        case 11:
          *a2 = 0;
          v39 = v3;
          sub_101761EF4(result, &v39);
          goto LABEL_71;
        case 12:
          *a2 = 0;
          v38 = v3;
          sub_101762274(result, &v38);
          goto LABEL_71;
        case 13:
          *a2 = 0;
          v36 = v3;
          sub_10176274C(result, &v36);
          goto LABEL_71;
        case 14:
          *a2 = 0;
          v35 = v3;
          sub_101762A08(result, &v35);
          goto LABEL_71;
        case 15:
          *a2 = 0;
          v34 = v3;
          sub_101762BC8(result, &v34);
          goto LABEL_71;
        case 16:
          *a2 = 0;
          v33 = v3;
          sub_101762CB0(result, &v33);
          goto LABEL_71;
        case 17:
          if (qword_1025D4650 != -1)
          {
            sub_1002981B4();
          }

          v11 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gpsd,EMERG_FT_ASSISTANCE_NEEDED_REPORT", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1017707A4();
          }

          v12 = *a2;
          *a2 = 0;
          v32 = v12;
          sub_101763924(result, &v32);
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          return;
        case 18:
          v10 = *a2;

          sub_1001744B0(result, v10, a3);
          return;
        case 19:
          v23 = *a2;

          sub_101763358(result, v23);
          return;
        case 20:
          *a2 = 0;
          v30 = v3;
          sub_101763AC4(result, &v30);
          goto LABEL_71;
        case 22:
          *a2 = 0;
          v31 = v3;
          sub_100173BEC(result, &v31, a3);
          goto LABEL_71;
        case 23:
          *a2 = 0;
          v29 = v3;
          sub_101763D6C(result, &v29);
          goto LABEL_71;
        case 24:
          *a2 = 0;
          v28 = v3;
          sub_101763FB0(result, &v28);
          goto LABEL_71;
        case 25:
          v13 = *(result + 2792);
          if (v13)
          {
            v14 = *v13;

            sub_1017ADDB8(v14);
          }

          return;
        case 26:
          *a2 = 0;
          v37 = v3;
          sub_10176251C(result, &v37);
          goto LABEL_71;
        case 27:
          *a2 = 0;
          v27 = v3;
          sub_10176419C(result, &v27);
LABEL_71:
          v26 = *(*v3 + 8);

          v26(v3);
          break;
        default:
          if (qword_1025D4650 != -1)
          {
            sub_1002981B4();
          }

          v25 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            *buf = 67240192;
            v44 = v7;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "#gpsd,unhandled indication,%{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1017709D8();
          }

          break;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#gpsd,processGpsdIndication,no type", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101770AD0();
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#gpsd,processGpsdIndication,nullptr", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101770BBC();
    }
  }
}

void sub_10012B6A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101700F68(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10012B79C(void *result)
{
  v1 = result;
  v2 = result[16];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_102637FA0 != result)
  {
    v4 = result[3];
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

    v13 = v1[13];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[14];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[15];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[17];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[18];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[19];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[20];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[21];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[22];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[23];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    result = v1[25];
    if (result)
    {
      v23 = *(*result + 8);

      return v23();
    }
  }

  return result;
}

void sub_10012BB94(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8808;
  sub_10012B79C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10012BBFC(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 > 0)
  {
    operator new();
  }

  if (qword_1025D4650 != -1)
  {
    sub_101700F54();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *buf = 67240192;
    v6 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "GpsToolCGClient::onIndication, received request of zero length, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101700FA0(v3);
  }
}

uint64_t sub_10012BF58(void *a1)
{
  result = (a1 - 1);
  if (result >= 4)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101621394();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::EstimationTechnology", v5, 8u);
    }

    v4 = sub_10000A100(121, 0);
    result = 0;
    if (v4)
    {
      sub_101622C34(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012C044(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_58;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(this + 1);
            v11 = *(this + 2);
LABEL_50:
            v34[0] = 0;
            if (v17 >= v11 || (v22 = *v17, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
              if (!result)
              {
                return result;
              }

              v22 = v34[0];
              v23 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              v23 = v17 + 1;
              *(this + 1) = v23;
            }

            *(a1 + 20) = v22 != 0;
            *(a1 + 72) |= 4u;
            if (v23 < v11 && *v23 == 32)
            {
              v12 = v23 + 1;
              *(this + 1) = v12;
LABEL_58:
              v34[0] = 0;
              if (v12 >= v11 || (v24 = *v12, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
                if (!result)
                {
                  return result;
                }

                v24 = v34[0];
                v25 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                v25 = v12 + 1;
                *(this + 1) = v25;
              }

              *(a1 + 64) = v24;
              *(a1 + 72) |= 8u;
              if (v25 < v11 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(this + 1) = v18;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 5)
              {
                goto LABEL_37;
              }

              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v14 = *(this + 1);
            v13 = *(this + 2);
            if (v14 >= v13 || (v15 = *v14, v15 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
              if (!result)
              {
                return result;
              }

              v16 = *(this + 1);
              v13 = *(this + 2);
            }

            else
            {
              *(a1 + 8) = v15;
              v16 = v14 + 1;
              *(this + 1) = v16;
            }

            *(a1 + 72) |= 1u;
            if (v16 < v13 && *v16 == 21)
            {
              *(this + 1) = v16 + 1;
LABEL_46:
              v34[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v34) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 16) = v34[0];
              *(a1 + 72) |= 2u;
              v21 = *(this + 1);
              v11 = *(this + 2);
              if (v21 < v11 && *v21 == 24)
              {
                v17 = v21 + 1;
                *(this + 1) = v17;
                goto LABEL_50;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_37;
          }

          goto LABEL_74;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(this + 1);
        v11 = *(this + 2);
LABEL_66:
        if (v18 >= v11 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v26;
          v27 = v18 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 72) |= 0x10u;
        if (v27 < v11 && *v27 == 49)
        {
          *(this + 1) = v27 + 1;
LABEL_74:
          *v34 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v34;
          *(a1 + 72) |= 0x20u;
          v28 = *(this + 1);
          if (v28 < *(this + 2) && *v28 == 57)
          {
            *(this + 1) = v28 + 1;
LABEL_78:
            *v34 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v34;
            *(a1 + 72) |= 0x40u;
            v29 = *(this + 1);
            v9 = *(this + 2);
            if (v29 < v9 && *v29 == 64)
            {
              v19 = v29 + 1;
              *(this + 1) = v19;
              goto LABEL_82;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if (v8 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_78;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(this + 1);
      v9 = *(this + 2);
LABEL_82:
      if (v19 >= v9 || (v30 = *v19, v30 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
        if (!result)
        {
          return result;
        }

        v31 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 48) = v30;
        v31 = v19 + 1;
        *(this + 1) = v31;
      }

      *(a1 + 72) |= 0x80u;
      if (v31 < v9 && *v31 == 72)
      {
        v10 = v31 + 1;
        *(this + 1) = v10;
LABEL_90:
        if (v10 >= v9 || (v32 = *v10, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v32;
          v33 = v10 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 72) |= 0x100u;
        if (v33 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_90;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10012C4CC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_38;
          }

LABEL_45:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v15;
          *(a1 + 60) |= 0x20u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_38;
        }

        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v15;
        *(a1 + 60) |= 1u;
        v9 = *(this + 1);
        if (v9 < *(this + 2) && *v9 == 17)
        {
          *(this + 1) = v9 + 1;
          goto LABEL_25;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v15;
      *(a1 + 60) |= 2u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 25)
      {
        *(this + 1) = v10 + 1;
LABEL_29:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v15;
        *(a1 + 60) |= 4u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 33)
        {
          *(this + 1) = v11 + 1;
LABEL_33:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v15;
          *(a1 + 60) |= 8u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 41)
          {
            *(this + 1) = v12 + 1;
LABEL_41:
            v15 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = v15;
            *(a1 + 60) |= 0x10u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 49)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_45;
            }
          }
        }
      }
    }

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_29;
    }

LABEL_38:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_10012C7A0(uint64_t a1, void *a2)
{
  if (*(a1 + 2904) || (*(a1 + 2928) & 1) != 0 || !*(a1 + 1672))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 2904) != 0;
      v18 = *(a1 + 2928);
      v19 = *(a1 + 1672) != 0;
      *buf = 67240704;
      *v43 = v17;
      *&v43[4] = 1026;
      *&v43[6] = v18;
      LOWORD(v44) = 1026;
      *(&v44 + 2) = v19;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#gpsd,updateBasebandTimeFreqTransferData,protoFix,%{public}d,%{public}d,%{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101775FE0();
    }
  }

  else
  {
    v4 = a2 + 6;
    if ((a2[6] & 1) == 0)
    {
      goto LABEL_25;
    }

    v5 = a2[1];
    if (!v5)
    {
      v5 = *(qword_102637238 + 8);
    }

    if ((~*(v5 + 72) & 0x183) != 0)
    {
LABEL_25:
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v21 = a2[6] & 1;
        v22 = a2[1];
        if (!v22)
        {
          v22 = *(qword_102637238 + 8);
        }

        v23 = *(v22 + 72);
        *buf = 67241216;
        *v43 = v21;
        *&v43[4] = 1026;
        *&v43[6] = v23 & 1;
        LOWORD(v44) = 1026;
        *(&v44 + 2) = (v23 >> 1) & 1;
        HIWORD(v44) = 1026;
        *v45 = (v23 >> 7) & 1;
        *&v45[4] = 1026;
        *&v45[6] = (v23 >> 8) & 1;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#gpsd,updateBasebandTimeFreqTransferData,protoFix,isTimeValidInFix,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101775EA4(v4, a2);
      }
    }

    else
    {
      *(a1 + 2864) = *(v5 + 8);
      *(a1 + 2872) = *(v5 + 16);
      *(a1 + 2816) = sub_10012BF30();
      *(a1 + 2880) = sub_10029E3E8();
      v6 = a2[1];
      if (!v6)
      {
        v6 = *(qword_102637238 + 8);
      }

      v7 = *(v6 + 48);
      *(a1 + 2824) = (v7 * 0.000001);
      *&v7 = -((v7 * 0.000001) - v7 * 0.000001);
      *(a1 + 2832) = LODWORD(v7);
      *&v7 = *(v6 + 56) * 0.000000999999997;
      *(a1 + 2836) = LODWORD(v7);
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v8 = (a1 + 2816);
      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v8;
        v11 = a2[1];
        if (!v11)
        {
          v11 = *(qword_102637238 + 8);
        }

        v12 = *(v11 + 48);
        v13 = *(a1 + 2824);
        v14 = *(a1 + 2832);
        v15 = *(a1 + 2836);
        *buf = 134219008;
        *v43 = v10;
        *&v43[8] = 2048;
        v44 = v12;
        *v45 = 2048;
        *&v45[2] = v13;
        v46 = 2048;
        v47 = v14;
        v48 = 2048;
        v49 = v15;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#tt,baseband TFT data,mct,%.1f,bbNs,%llu,bbIntegerMs,%llu,bbSubMs,%.3f,bbUncMs,%.6f", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_100154094();
        }

        v24 = *v8;
        v25 = a2[1];
        if (!v25)
        {
          v25 = *(qword_102637238 + 8);
        }

        v26 = *(v25 + 48);
        v27 = *(a1 + 2824);
        v28 = *(a1 + 2832);
        v29 = *(a1 + 2836);
        v32 = 134219008;
        v33 = v24;
        v34 = 2048;
        v35 = v26;
        v36 = 2048;
        v37 = v27;
        v38 = 2048;
        v39 = v28;
        v40 = 2048;
        v41 = v29;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gpsd,#tt,baseband TFT data,mct,%.1f,bbNs,%llu,bbIntegerMs,%llu,bbSubMs,%.3f,bbUncMs,%.6f", COERCE_DOUBLE(&v32), 52);
        v31 = v30;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::updateBasebandTimeFreqTransferData(const proto::gnss::Fix &)", "%s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      sub_1016E961C(a1 + 1648);
      *v8 = 0;
      *(a1 + 2824) = 0;
      *(a1 + 2832) = 0xBF800000BF800000;
      *(a1 + 2840) = 0x7FF8000000000000;
      *(a1 + 2848) = 3212836864;
      *(a1 + 2856) = 0x7FF8000000000000;
      *(a1 + 2864) = 0;
      *(a1 + 2872) = 3212836864;
      *(a1 + 2880) = 0x8000;
      *(a1 + 2882) = 0;
      *(a1 + 2888) = 0;
      *(a1 + 2896) = 0x8000;
      *(a1 + 2898) = 0;
      *(a1 + 2902) = 0;
    }
  }
}

uint64_t sub_10012CCAC(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 1416);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_10012CD08(uint64_t a1, char *a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101943AC8();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "Vendor";
    if (a2)
    {
      v4 = "";
    }

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "@ClxGps%{public}s, Fix, 0, ll, N/A", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101943ADC(a2);
  }
}

uint64_t sub_10012CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(a1 + 2736) = a9;
  v28 = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  LOBYTE(v26) = 0;
  v29 = 1;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  LOBYTE(v33) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  v34 = _Q1;
  LOBYTE(v35) = 0;
  v36 = _Q1;
  LOBYTE(v37) = 0;
  v38 = _Q1;
  LOBYTE(v39) = 0;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = 0u;
  v43 = 1065353216;
  v15 = 0x100000005uLL;
  v44 = 0x100000005;
  v45 = 0;
  v16 = *(a1 + 992);
  if (v16)
  {
    sub_100139E64(v16, v25);
  }

  v17 = *(a1 + 1016);
  if (v17)
  {
    sub_10012CF34(v17, v25, v15);
  }

  v18 = *(a1 + 1000);
  if (v18)
  {
    sub_10013061C(v18, v25);
  }

  v19 = *(a1 + 1040);
  if (v19)
  {
    sub_1001306F4(v19);
  }

  v20 = *(a1 + 1112);
  if (v20)
  {
    sub_101751610(v20, v25);
  }

  v21 = *(a1 + 1192);
  if (v21)
  {
    sub_1010BFFFC(v21, v25);
  }

  v22 = *(a1 + 1136);
  if (v22)
  {
    sub_10012D924(v22, *a1 + 8);
  }

  v23 = *(a1 + 1160);
  if (v23)
  {
    sub_10012E5D0(v23);
  }

  return sub_100134860(v41 + 8);
}

void sub_10012CF34(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*(a2 + 48) == 1)
  {
    sub_1002988A4(a2, 0, 0, v22);
    sub_1001FB6D0((a1 + 128), v22);
    if (*(a2 + 144) == 1)
    {
      v5 = *(a2 + 152);
      *buf = v5;
      sub_1000423D4(a1 + 928, buf);
      if (*(a1 + 321) == 1 && (*(a1 + 465) & 1) == 0)
      {
        isTypeSwimming = CLMotionActivity::isTypeSwimming();
      }

      else
      {
        isTypeSwimming = 0;
      }

      v7 = *(a1 + 992);
      if (v7 >= *(a1 + 936) && v7)
      {
        v8 = (*(a1 + 944) / v7) > 4.4704 ? isTypeSwimming : 0;
        if (v8 == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_10199A02C();
          }

          v9 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            v10 = *(a1 + 328);
            v11 = *(a1 + 992);
            if (v11)
            {
              v12 = (*(a1 + 944) / v11);
            }

            else
            {
              v12 = 0.0;
            }

            v13 = *(a2 + 160);
            *buf = 67240704;
            v30 = v10;
            v31 = 2050;
            v32 = v12;
            v33 = 2050;
            v34 = v13;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#gwo,#override,Overriding false fitness session sessionType,%{public}d,averageSpeed,%{public}.3lf,speedUnc,%{public}.3lf", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4650 != -1)
            {
              sub_10199A02C();
            }

            v16 = *(a1 + 328);
            v17 = *(a1 + 992);
            if (v17)
            {
              v18 = (*(a1 + 944) / v17);
            }

            else
            {
              v18 = 0.0;
            }

            v19 = *(a2 + 160);
            v24[0] = 67240704;
            v24[1] = v16;
            v25 = 2050;
            v26 = v18;
            v27 = 2050;
            v28 = v19;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gwo,#override,Overriding false fitness session sessionType,%{public}d,averageSpeed,%{public}.3lf,speedUnc,%{public}.3lf", v24, 28);
            v21 = v20;
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceMotion::feedPerEpoch(const GNSS::PerEpochData &)", "%s\n", v20);
            if (v21 != buf)
            {
              free(v21);
            }
          }

          sub_1009B90A8(a1);
          *(a1 + 184) = 0;
        }
      }
    }

    if (v23)
    {
      sub_100008080(v23);
    }
  }

  *(a1 + 1272) = sub_10012D494(a1, a2);
  sub_10012D328(a1, a2);
  if (sub_1000081AC() - *(a1 + 720) > 6.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10199A02C();
    }

    v14 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "refresh,updateContext", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10199AE0C();
    }

    v15 = *(a2 + 104);
    if (v15 <= 0.0 || *(a2 + 72) + v15 * -2.0 < 9000.0)
    {
      sub_100134A38(a1);
    }

    else
    {
      sub_1009B91A8(a1);
    }
  }
}

void sub_10012D2F8(_Unwind_Exception *a1)
{
  if (STACK[0x2C8])
  {
    sub_100008080(STACK[0x2C8]);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10012D328(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v20 = v2;
    v21 = v3;
    v5 = *(a2 + 96);
    v6 = v5 < 0 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (!v6 || (v5 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v8 = result;
      sub_10028ED10(result + 91, a2);
      if (v8[96] >= 0x1F)
      {
        sub_1009BA61C((v8 + 91));
      }

      v9 = v8[92];
      v10 = v8[95];
      v11 = (v9 + 8 * (v10 >> 4));
      if (v8[93] == v9)
      {
        v14 = 0;
        v17 = 0;
      }

      else
      {
        v12 = *v11 + 304 * (v8[95] & 0xF);
        v13 = *(v9 + (((v8[96] + v10) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 304 * ((*(v8 + 192) + v10) & 0xF);
        if (v12 == v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = v11;
          do
          {
            if (*(a2 + 32) - *(v12 + 32) <= 20.0)
            {
              break;
            }

            v12 += 304;
            if (v12 - *v15 == 4864)
            {
              v16 = v15[1];
              ++v15;
              v12 = v16;
            }

            ++v14;
          }

          while (v12 != v13);
        }

        v17 = *v11 + 304 * (v8[95] & 0xF);
      }

      v18 = v11;
      v19 = v17;
      sub_10029FA6C(&v18, v14);
      return sub_1002A7E18(v8 + 91, v11, v17, v18, v19);
    }
  }

  return result;
}

uint64_t sub_10012D494(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1217))
  {
    return 0;
  }

  result = 0;
  if ((*(a1 + 1273) & 1) == 0 && *(a2 + 48))
  {
    v5 = *(a2 + 96);
    if ((v5 < 0 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v5 - 1) > 0xFFFFFFFFFFFFELL)
    {
      return 0;
    }

    v8 = *(a1 + 768);
    if (!v8)
    {
      return 0;
    }

    v9 = *(*(a1 + 736) + (((v8 + *(a1 + 760) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 304 * ((v8 + *(a1 + 760) - 1) & 0xF);
    if (!*(v9 + 48))
    {
      return 0;
    }

    v10 = *(v9 + 96);
    v11 = v10 < 0 || ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    v12 = v11 && (v10 - 1) > 0xFFFFFFFFFFFFELL;
    if (v12 || vabdd_f64(*(a2 + 32), *(v9 + 32)) > 4.5)
    {
      return 0;
    }

    if (*(a1 + 915))
    {
      v13 = 2.07892474;
    }

    else
    {
      v13 = 1.0;
    }

    if (CLMotionActivity::isTypeStatic())
    {
      sub_100109D18((a1 + 144), *(a2 + 56), *(a2 + 64), *(v9 + 56), *(v9 + 64), 0.0);
      result = 0;
      v15 = (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v16 = v14 < 0.0 && ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v14 >= 0.0)
      {
        v15 = 0;
      }

      v17 = (*&v14 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v15;
      if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v17 = 1;
      }

      if (((v17 | v16) & 1) != 0 || v14 > v13 * 8.86651914)
      {
        return result;
      }

      v18 = v14 + -4.26495435;
      if (v18 < 0.0)
      {
        v18 = 0.0;
      }

      if (v18 / *(v9 + 96) > v13 * 0.832554611)
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 736);
      if (*(a1 + 744) != v19)
      {
        v20 = *(a1 + 760);
        v21 = (v19 + 8 * (v20 >> 4));
        v22 = (*v21 + 304 * (v20 & 0xF));
        v23 = *(v19 + (((*(a1 + 768) + v20) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 304 * ((*(a1 + 768) + v20) & 0xF);
        while (v22 != v23)
        {
          sub_100109D18((a1 + 144), *(a2 + 56), *(a2 + 64), v22[7], v22[8], 0.0);
          result = 0;
          v25 = (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
          v26 = v24 < 0.0 && ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
          if (v24 >= 0.0)
          {
            v25 = 0;
          }

          v27 = (*&v24 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v25;
          if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
          {
            v27 = 1;
          }

          if (((v27 | v26) & 1) != 0 || v24 > v13 * 8.86651914)
          {
            return result;
          }

          v28 = v24 + -4.26495435;
          if (v28 < 0.0)
          {
            v28 = 0.0;
          }

          if (v28 / v22[12] > v13 * 0.832554611)
          {
            return 0;
          }

          v22 += 38;
          if ((v22 - *v21) == 4864)
          {
            v29 = v21[1];
            ++v21;
            v22 = v29;
          }
        }
      }
    }

    if (*(a2 + 144) == 1)
    {
      v30 = *(a2 + 152);
      if (v30 >= 0.0)
      {
        v31 = *(a2 + 160);
        if (v31 > 0.0)
        {
          if (v30 > v13 * 2.01287076)
          {
            return 0;
          }

          v32 = v30 + -0.968226852;
          if (v32 < 0.0)
          {
            v32 = 0.0;
          }

          if (v32 / v31 > v13 * 0.832554611)
          {
            return 0;
          }
        }
      }
    }

    if (*(a1 + 88) == 1 && *(a1 + 321) == 1)
    {
      v33 = *(a1 + 465);
    }

    else
    {
      v33 = 1;
    }

    if (CLMotionActivity::isTypeWalking() & 1) != 0 || (CLMotionActivity::isTypeRunning() & 1) != 0 || (CLMotionActivity::isTypeCycling())
    {
      v34 = 0;
    }

    else
    {
      v34 = CLMotionActivity::isTypeSwimming() ^ 1;
    }

    if (((v33 | v34) & 1) == 0)
    {
      return (!CLMotionActivity::isTypeWalking() || (CLMotionActivity::isTypePedestrian() & 1) == 0 && *(a1 + 184) != 62) && (!CLMotionActivity::isTypeRunning() || (CLMotionActivity::isTypePedestrian() & 1) == 0 && *(a1 + 184) != 62) && (!CLMotionActivity::isTypeCycling() || (CLMotionActivity::isTypeCycling() & 1) == 0) && (!CLMotionActivity::isTypeSwimming() || (CLMotionActivity::isTypeSwimming() & 1) == 0);
    }

    result = CLMotionActivity::isTypeStatic();
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void sub_10012D924(uint64_t a1, uint64_t a2)
{
  *(a1 + 2472) = 0;
  ++*(a2 + 104);
  *buf = a2 + 204;
  v4 = sub_1003E3DEC(a2 + 248, (a2 + 204), &unk_101C66300, buf);
  ++v4[5];
  *buf = a2 + 336;
  v5 = sub_1003E3DEC(a2 + 352, (a2 + 336), &unk_101C66300, buf);
  ++v5[5];
  *buf = a2 + 340;
  v6 = sub_1003E3DEC(a2 + 376, (a2 + 340), &unk_101C66300, buf);
  ++v6[5];
  *buf = a2 + 344;
  v7 = sub_1003E3DEC(a2 + 400, (a2 + 344), &unk_101C66300, buf);
  v8 = 0;
  ++v7[5];
  HIDWORD(v10) = *(a2 + 464);
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 8;
  if (v9 <= 8)
  {
    v8 = dword_101DB5F4C[v9];
  }

  v66 = v8;
  *buf = &v66;
  v11 = sub_1003E3DEC(a2 + 472, &v66, &unk_101C66300, buf);
  ++v11[5];
  v66 = sub_10013A82C(*(a1 + 2416));
  *buf = &v66;
  v12 = sub_10013A5F4((a2 + 272), &v66, &unk_101C66300, buf);
  ++v12[3];
  *buf = a1 + 2408;
  v13 = sub_1001307B0((a2 + 208), (a1 + 2408), &unk_101C66300, buf);
  ++v13[3];
  *buf = a1 + 2428;
  v14 = sub_1003E3DEC(a2 + 312, (a1 + 2428), &unk_101C66300, buf);
  ++v14[5];
  if (*(a2 + 642) == 1)
  {
    ++*(a2 + 536);
    *(a2 + 642) = 0;
  }

  if (*(a2 + 643) == 1)
  {
    ++*(a2 + 544);
    *(a2 + 643) = 0;
  }

  if (*(a2 + 644) == 1)
  {
    ++*(a2 + 552);
    *(a2 + 644) = 0;
  }

  *buf = a2 + 968;
  v15 = sub_1003E3DEC(a2 + 976, (a2 + 968), &unk_101C66300, buf);
  ++v15[5];
  if (*(a1 + 2412) == 1)
  {
    ++*(a2 + 792);
  }

  if (*(a1 + 2415) == 1)
  {
    ++*(a2 + 808);
  }

  if (*(a1 + 2413) == 1)
  {
    ++*(a2 + 800);
  }

  sub_10012E168(a1);
  sub_10013AD30(a1);
  HIDWORD(v16) = -286331153 * *(a1 + 2456);
  LODWORD(v16) = HIDWORD(v16);
  if ((v16 >> 1) <= 0x8888888)
  {
    v17 = *(a2 + 1040);
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v18 = *(a2 + 952);
    if (v18 && *(a2 + 848) == 1)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1.84467441e19;
    }

    v20 = *(a2 + 960);
    if (v20 && *(a2 + 849) == 1)
    {
      v21 = v20;
    }

    else
    {
      v21 = 1.84467441e19;
    }

    v22 = *(a2 + 896);
    if (v22)
    {
      v23 = bswap32(*(*(*(a2 + 864) + (((v22 + *(a2 + 888) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v22 + *(a2 + 888) - 1) & 0x7F)));
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a2 + 944);
    if (v24)
    {
      v25 = bswap32(*(*(*(a2 + 912) + (((v24 + *(a2 + 936) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v24 + *(a2 + 936) - 1) & 0x7F)));
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a2 + 1048);
    v27 = v17;
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v28 = qword_1025D4658;
    v29 = v26 / v27;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a2 + 584);
      v31 = *(a2 + 504) + *(a2 + 496);
      *buf = 134350592;
      *&buf[4] = v29;
      *&buf[12] = 2050;
      v77 = v30;
      *v78 = 2050;
      *&v78[2] = v31;
      *v79 = 2050;
      *&v79[2] = v19;
      *v80 = 1026;
      *&v80[2] = v23;
      *v81 = 2050;
      *&v81[2] = v21;
      LOWORD(v82) = 1026;
      *(&v82 + 2) = v25;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "PerfReport,mw,%{public}.1f,timeCount,%{public}llu,posCount,%{public}llu,eeAgeDays,%{public}.2f,eeHash,%{public}x,rtiAgeDays,%{public}.2f,rtiHash,%{public}x", buf, 0x40u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v52 = *(a2 + 584);
      v53 = *(a2 + 504) + *(a2 + 496);
      v66 = 134350592;
      *v67 = v29;
      *&v67[8] = 2050;
      v68 = v52;
      *v69 = 2050;
      *&v69[2] = v53;
      *v70 = 2050;
      *&v70[2] = v19;
      *v71 = 1026;
      *&v71[2] = v23;
      *v72 = 2050;
      *&v72[2] = v21;
      LOWORD(v73) = 1026;
      *(&v73 + 2) = v25;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "PerfReport,mw,%{public}.1f,timeCount,%{public}llu,posCount,%{public}llu,eeAgeDays,%{public}.2f,eeHash,%{public}x,rtiAgeDays,%{public}.2f,rtiHash,%{public}x", &v66, 64);
      v55 = v54;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::tickGnssSessionReport(GNSS::GnssSessionData &)", "%s\n", v54);
      if (v55 != buf)
      {
        free(v55);
      }
    }
  }

  v32 = *(a1 + 2456);
  HIDWORD(v33) = -858993459 * v32;
  LODWORD(v33) = -858993459 * v32;
  if ((v33 >> 1) <= 0x19999999)
  {
    v34 = *(a1 + 2672);
    v35 = 0.0;
    v36 = 0.0;
    if (*(a1 + 2680) != v34)
    {
      v36 = *v34;
    }

    v37 = *(a1 + 2696);
    if (*(a1 + 2704) != v37)
    {
      v35 = *v37;
    }

    v38 = *(a1 + 2460);
    v39 = *(a1 + 2464);
    v40 = *(a1 + 2468);
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v41 = v32 - v38;
    v42 = v32 - v39;
    v43 = v32 - v40;
    v44 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 2620);
      v46 = *(a1 + 2624);
      if (v41 >= 0x15180)
      {
        v47 = 86400;
      }

      else
      {
        v47 = v41;
      }

      v48 = *(a1 + 2628);
      v49 = *(a1 + 2632);
      if (v42 >= 0x15180)
      {
        v50 = 86400;
      }

      else
      {
        v50 = v42;
      }

      if (v43 >= 0x15180)
      {
        v51 = 86400;
      }

      else
      {
        v51 = v43;
      }

      *buf = 67242240;
      *&buf[4] = v45;
      *&buf[8] = 1026;
      *&buf[10] = v46;
      LOWORD(v77) = 1026;
      *(&v77 + 2) = v47;
      HIWORD(v77) = 2050;
      *v78 = v48;
      *&v78[8] = 2050;
      *v79 = v49;
      *&v79[8] = 1026;
      *v80 = v50;
      *&v80[4] = 2050;
      *v81 = v36;
      *&v81[8] = 2050;
      v82 = v35;
      v83 = 1026;
      v84 = v51;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "#gnssawd,Cellular-AWD,PeriodicLogging,MostRecentValue,BandInfo,%{public}d,RAT,%{public}d,age,%{public}u,transmissionFrequency,%{public}f,BW,%{public}f,age,%{public}u,RSRP,%{public}f,SNR,%{public}f,age,%{public}u", buf, 0x48u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v56 = *(a1 + 2620);
      v57 = *(a1 + 2624);
      if (v41 >= 0x15180)
      {
        v58 = 86400;
      }

      else
      {
        v58 = v41;
      }

      v59 = *(a1 + 2628);
      v60 = *(a1 + 2632);
      if (v42 >= 0x15180)
      {
        v61 = 86400;
      }

      else
      {
        v61 = v42;
      }

      if (v43 >= 0x15180)
      {
        v62 = 86400;
      }

      else
      {
        v62 = v43;
      }

      v66 = 67242240;
      *v67 = v56;
      *&v67[4] = 1026;
      *&v67[6] = v57;
      LOWORD(v68) = 1026;
      *(&v68 + 2) = v58;
      HIWORD(v68) = 2050;
      *v69 = v59;
      *&v69[8] = 2050;
      *v70 = v60;
      *&v70[8] = 1026;
      *v71 = v61;
      *&v71[4] = 2050;
      *v72 = v36;
      *&v72[8] = 2050;
      v73 = v35;
      v74 = 1026;
      v75 = v62;
      LODWORD(v65) = 72;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gnssawd,Cellular-AWD,PeriodicLogging,MostRecentValue,BandInfo,%{public}d,RAT,%{public}d,age,%{public}u,transmissionFrequency,%{public}f,BW,%{public}f,age,%{public}u,RSRP,%{public}f,SNR,%{public}f,age,%{public}u", &v66, v65);
      v64 = v63;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::tickGnssSessionReport(GNSS::GnssSessionData &)", "%s\n", v63);
      if (v64 != buf)
      {
        free(v64);
      }
    }
  }

  ++*(a1 + 2456);
}

void sub_10012E168(uint64_t a1)
{
  sub_10001CAF4(buf);
  v22 = 0;
  v2 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22, 0xFFFFFFFFLL);
  v3 = v2 & v22;
  if (v24)
  {
    sub_100008080(v24);
  }

  if (v3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,updateCellularNetworkStatistics", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016C9C4C();
    }
  }

  v5 = *(a1 + 2620);
  if (v5)
  {
    v6 = *(a1 + 2648);
    if (v6)
    {
      if (v5 == v6)
      {
        sub_10001CAF4(buf);
        v22 = 0;
        v7 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22, 0xFFFFFFFFLL);
        v8 = v7 & v22;
        if (v24)
        {
          sub_100008080(v24);
        }

        if (v8)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v9 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,Epoch with same band as previous", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016C9F18();
          }
        }

        v10 = *(a1 + 2664) + 1;
        goto LABEL_54;
      }

      sub_10001CAF4(buf);
      v22 = 0;
      v14 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22, 0xFFFFFFFFLL);
      v15 = v14 & v22;
      if (v24)
      {
        sub_100008080(v24);
      }

      if (v15)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 2664);
          v18 = *(a1 + 2600);
          *buf = 67109376;
          *&buf[4] = v17;
          LOWORD(v24) = 1024;
          *(&v24 + 2) = v18;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,Epoch with band change,EpochCountForCurrentTransmissionFrequencyBand,%d,fEpochCountForLastLongestCampedCellularBand,%d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016C9D30();
        }
      }

      if (*(a1 + 2664) >= *(a1 + 2600))
      {
        sub_10001CAF4(buf);
        v22 = 0;
        v19 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22, 0xFFFFFFFFLL);
        v20 = v19 & v22;
        if (v24)
        {
          sub_100008080(v24);
        }

        if (v20)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v21 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,Epoch with longest camped in a GNSS session", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016C9E34();
          }
        }

        sub_1016C33E8(a1);
        *(a1 + 2644) = 1;
      }

      *(a1 + 2680) = *(a1 + 2672);
      *(a1 + 2704) = *(a1 + 2696);
    }

    else
    {
      sub_10001CAF4(buf);
      v22 = 0;
      v11 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v22, 0xFFFFFFFFLL);
      v12 = v11 & v22;
      if (v24)
      {
        sub_100008080(v24);
      }

      if (v12)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v13 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,First Epoch", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016C9FFC();
        }
      }
    }

    v10 = 1;
LABEL_54:
    *(a1 + 2664) = v10;
    sub_10013A83C(a1);
  }
}

void sub_10012E5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_10012E5D8(uint64_t a1)
{
  *a1 = off_10246D9E0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  return result;
}

void sub_10012E608(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D9E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

double sub_10012E65C(uint64_t a1, uint64_t a2)
{
  v9 = sub_10013B340((a2 + 24));
  v10 = &v9;
  v4 = sub_10013A5F4((a1 + 1000), &v9, &unk_101C66300, &v10);
  ++v4[3];
  *(a1 + 968) = 0;
  result = *(a2 + 24);
  if (*&result > -1 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&result - 1) < 0xFFFFFFFFFFFFFLL || (*&result & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    ++*(a1 + 1040);
    result = result + *(a1 + 1048);
    *(a1 + 1048) = result;
  }

  return result;
}

uint64_t sub_10012E718(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
              if (!result)
              {
                return result;
              }

              v13 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 8) = v12;
              v13 = v11 + 1;
              *(this + 1) = v13;
            }

            v9 = *(a1 + 44) | 1;
            *(a1 + 44) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(a1 + 44);
LABEL_28:
            *(a1 + 44) = v9 | 2;
            v15 = *(a1 + 16);
            if (!v15)
            {
              operator new();
            }

            v42 = 0;
            v16 = *(this + 1);
            if (v16 >= *(this + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v16;
              *(this + 1) = v16 + 1;
            }

            v17 = *(this + 14);
            v18 = *(this + 15);
            *(this + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
            if (!sub_10013C310(v15, this, v20) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
            v21 = *(this + 14);
            v22 = __OFSUB__(v21, 1);
            v23 = v21 - 1;
            if (v23 < 0 == v22)
            {
              *(this + 14) = v23;
            }

            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 26)
            {
              *(this + 1) = v24 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(a1 + 44) |= 4u;
        v25 = *(a1 + 24);
        if (!v25)
        {
          operator new();
        }

        v43 = 0;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
          {
            return 0;
          }
        }

        else
        {
          v43 = *v26;
          *(this + 1) = v26 + 1;
        }

        v27 = *(this + 14);
        v28 = *(this + 15);
        *(this + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
        if (!sub_100130D60(v25, this, v30) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
        v31 = *(this + 14);
        v22 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v22)
        {
          *(this + 14) = v32;
        }

        v33 = *(this + 1);
        if (v33 < *(this + 2) && *v33 == 34)
        {
          *(this + 1) = v33 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(a1 + 44) |= 8u;
      v34 = *(a1 + 32);
      if (!v34)
      {
        operator new();
      }

      v44 = 0;
      v35 = *(this + 1);
      if (v35 >= *(this + 2) || *v35 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v35;
        *(this + 1) = v35 + 1;
      }

      v36 = *(this + 14);
      v37 = *(this + 15);
      *(this + 14) = v36 + 1;
      if (v36 >= v37)
      {
        return 0;
      }

      v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
      if (!sub_1002C3814(v34, this, v39) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
      v40 = *(this + 14);
      v22 = __OFSUB__(v40, 1);
      v41 = v40 - 1;
      if (v41 < 0 == v22)
      {
        *(this + 14) = v41;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

double sub_10012EBC8(uint64_t a1)
{
  *a1 = off_10246D710;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  return result;
}

uint64_t sub_10012EBF8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

        *(a1 + 48) |= 1u;
        v12 = *(a1 + 8);
        if (!v12)
        {
          operator new();
        }

        v44 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
          {
            return 0;
          }
        }

        else
        {
          v44 = *v13;
          *(this + 1) = v13 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
        if (!sub_10012C044(v12, this, v17) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
        v18 = *(this + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(this + 14) = v20;
        }

        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 18)
        {
          *(this + 1) = v21 + 1;
LABEL_38:
          *(a1 + 48) |= 2u;
          v22 = *(a1 + 16);
          if (!v22)
          {
            operator new();
          }

          v44 = 0;
          v23 = *(this + 1);
          if (v23 >= *(this + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v23;
            *(this + 1) = v23 + 1;
          }

          v24 = *(this + 14);
          v25 = *(this + 15);
          *(this + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
          if (!sub_10012F14C(v22, this, v27) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
          v28 = *(this + 14);
          v19 = __OFSUB__(v28, 1);
          v29 = v28 - 1;
          if (v29 < 0 == v19)
          {
            *(this + 14) = v29;
          }

          v30 = *(this + 1);
          if (v30 < *(this + 2) && *v30 == 26)
          {
            *(this + 1) = v30 + 1;
LABEL_52:
            *(a1 + 48) |= 4u;
            v31 = *(a1 + 24);
            if (!v31)
            {
              operator new();
            }

            v44 = 0;
            v32 = *(this + 1);
            if (v32 >= *(this + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
              {
                return 0;
              }
            }

            else
            {
              v44 = *v32;
              *(this + 1) = v32 + 1;
            }

            v33 = *(this + 14);
            v34 = *(this + 15);
            *(this + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
            if (!sub_10012C4CC(v31, this, v36) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
            v37 = *(this + 14);
            v19 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v38 < 0 == v19)
            {
              *(this + 14) = v38;
            }

            v39 = *(this + 1);
            v9 = *(this + 2);
            if (v39 < v9 && *v39 == 32)
            {
              v11 = v39 + 1;
              *(this + 1) = v11;
              goto LABEL_66;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
LABEL_66:
      if (v11 >= v9 || (v40 = *v11, v40 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v41 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v40;
        v41 = v11 + 1;
        *(this + 1) = v41;
      }

      *(a1 + 48) |= 8u;
      if (v41 < v9 && *v41 == 40)
      {
        v10 = v41 + 1;
        *(this + 1) = v10;
LABEL_74:
        v44 = 0;
        if (v10 >= v9 || (v43 = *v10, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
          if (!result)
          {
            return result;
          }

          v43 = v44;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v43 <= 4)
        {
          *(a1 + 48) |= 0x10u;
          *(a1 + 40) = v43;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_74;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10012F14C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v7 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v14 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_85;
              }
            }

            else if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v24 = *(this + 1);
                v11 = *(this + 2);
                goto LABEL_95;
              }
            }

            else if (v7 == 12 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_103;
            }
          }

          else if (v7 == 7)
          {
            if (v8 == 1)
            {
              goto LABEL_64;
            }
          }

          else if (v7 == 8)
          {
            if (v8 == 1)
            {
              goto LABEL_68;
            }
          }

          else if (v7 == 9 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_72;
          }

          goto LABEL_76;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_49;
            }
          }

          else if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_56;
            }
          }

          else if (v7 == 6 && v8 == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_76;
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_76;
        }

        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v31;
        *(a1 + 96) |= 1u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 17)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_41;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_76;
      }

LABEL_41:
      *v31 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v31;
      *(a1 + 96) |= 2u;
      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 25)
      {
        *(this + 1) = v15 + 1;
LABEL_45:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v31;
        *(a1 + 96) |= 4u;
        v16 = *(this + 1);
        if (v16 < *(this + 2) && *v16 == 33)
        {
          *(this + 1) = v16 + 1;
LABEL_49:
          *v31 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v31;
          *(a1 + 96) |= 8u;
          v17 = *(this + 1);
          if (v17 < *(this + 2) && *v17 == 41)
          {
            *(this + 1) = v17 + 1;
LABEL_56:
            *v31 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v31;
            *(a1 + 96) |= 0x10u;
            v18 = *(this + 1);
            if (v18 < *(this + 2) && *v18 == 49)
            {
              *(this + 1) = v18 + 1;
LABEL_60:
              *v31 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = *v31;
              *(a1 + 96) |= 0x20u;
              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 57)
              {
                *(this + 1) = v19 + 1;
LABEL_64:
                *v31 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 56) = *v31;
                *(a1 + 96) |= 0x40u;
                v20 = *(this + 1);
                if (v20 < *(this + 2) && *v20 == 65)
                {
                  *(this + 1) = v20 + 1;
LABEL_68:
                  *v31 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 64) = *v31;
                  *(a1 + 96) |= 0x80u;
                  v21 = *(this + 1);
                  v9 = *(this + 2);
                  if (v21 < v9 && *v21 == 72)
                  {
                    v10 = v21 + 1;
                    *(this + 1) = v10;
LABEL_72:
                    if (v10 >= v9 || (v22 = *v10, v22 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                      if (!result)
                      {
                        return result;
                      }

                      v23 = *(this + 1);
                      v9 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 72) = v22;
                      v23 = v10 + 1;
                      *(this + 1) = v23;
                    }

                    *(a1 + 96) |= 0x100u;
                    if (v23 < v9 && *v23 == 80)
                    {
                      v14 = v23 + 1;
                      *(this + 1) = v14;
LABEL_85:
                      v31[0] = 0;
                      if (v14 >= v9 || (v26 = *v14, (v26 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31);
                        if (!result)
                        {
                          return result;
                        }

                        v26 = v31[0];
                      }

                      else
                      {
                        *(this + 1) = v14 + 1;
                      }

                      if (sub_1001348E0(v26))
                      {
                        *(a1 + 96) |= 0x200u;
                        *(a1 + 76) = v26;
                      }

                      v27 = *(this + 1);
                      v11 = *(this + 2);
                      if (v27 < v11 && *v27 == 88)
                      {
                        v24 = v27 + 1;
                        *(this + 1) = v24;
LABEL_95:
                        if (v24 >= v11 || (v28 = *v24, v28 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 80));
                          if (!result)
                          {
                            return result;
                          }

                          v29 = *(this + 1);
                          v11 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 80) = v28;
                          v29 = v24 + 1;
                          *(this + 1) = v29;
                        }

                        *(a1 + 96) |= 0x400u;
                        if (v29 < v11 && *v29 == 96)
                        {
                          v12 = v29 + 1;
                          *(this + 1) = v12;
LABEL_103:
                          v31[0] = 0;
                          if (v12 >= v11 || (v30 = *v12, (v30 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31);
                            if (!result)
                            {
                              return result;
                            }

                            v30 = v31[0];
                          }

                          else
                          {
                            *(this + 1) = v12 + 1;
                          }

                          if (v30 <= 5)
                          {
                            *(a1 + 96) |= 0x800u;
                            *(a1 + 88) = v30;
                          }

                          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                          {
                            *(this + 8) = 0;
                            result = 1;
                            *(this + 36) = 1;
                            return result;
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

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_45;
    }

LABEL_76:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10012F6D4(uint64_t result)
{
  if ((result - 25) > 0x32 || ((1 << (result - 25)) & 0x4000002000001) == 0)
  {
    if (result == 10)
    {
      return 10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10012F70C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D698;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10012F760(uint64_t a1)
{
  __chkstk_darwin(a1);
  if (*(v1 + 736))
  {
    v3 = v2;
    v4 = v1;
    v5 = sub_1000081AC();
    v139 = v5;
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(v3 + 304);
      *buf = 67240448;
      *v141 = v7;
      *&v141[4] = 2050;
      *&v141[6] = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "validFix,%{public}d,machCont,%{public}.3lf", buf, 0x12u);
    }

    v8 = sub_10000A100(121, 2);
    if (v8)
    {
      sub_1019436EC();
    }

    v9 = *(v4 + 992);
    if (v9)
    {
      v10 = *(v4 + 792);
      *(v9 + 11760) = *(v4 + 784);
      *(v9 + 11652) = v10;
    }

    if ((*(v3 + 304) & 1) == 0)
    {
      sub_10012CD08(v8, 0);
      if (vabdd_f64(v139, *(v4 + 2736)) >= 0.75)
      {
        sub_10012CDF4(v4, v38, v39, v40, v41, v42, v43, v44, v139);
        v45 = *(v4 + 3064);
        if (v45)
        {
          if (sub_1002A9D4C(v45))
          {
            v47 = sub_1007FEA8C(v4, &v139);
            if ((v47 & 1) == 0)
            {
              sub_10012CD08(v47, 1);
              if (qword_1025D4650 != -1)
              {
                sub_101940C48();
              }

              v104 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *v141 = v139;
                _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_INFO, "#Raven,no yield now,%.3lf", buf, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1019437FC();
              }

              return;
            }
          }

          v45 = *(v4 + 3064);
          if (v45)
          {
            v45 = sub_1002A9D4C(v45);
            if (v45)
            {
              return;
            }
          }
        }
      }

      else
      {
        v45 = *(v4 + 3064);
        if (v45)
        {
          if (sub_1002A9D4C(v45))
          {
            v46 = sub_1007FEA8C(v4, &v139);
            if ((v46 & 1) == 0)
            {
              sub_10012CD08(v46, 1);
              if (qword_1025D4650 != -1)
              {
                sub_101940C48();
              }

              v103 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *v141 = v139;
                _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_INFO, "#Raven,no yield now,%.3lf", buf, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1019438F0();
              }

              return;
            }
          }

          v45 = *(v4 + 3064);
          if (v45)
          {
            v45 = sub_1002A9D4C(v45);
            if (v45)
            {
              return;
            }
          }
        }
      }

      sub_10012CD08(v45, 1);
      return;
    }

    v116 = (v3 + 288);
    if (*(v3 + 288) == 5 && vabdd_f64(v139, *(v4 + 784)) < 1.9)
    {
      *v116 = *(v4 + 792);
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(v3 + 44);
      v13 = *v3;
      v14 = *(v3 + 8);
      v15 = *(v3 + 16);
      v112 = *(v3 + 24);
      v113 = *(v3 + 32);
      v114 = *(v3 + 40);
      v115 = *(v3 + 48);
      v16 = LocationLogEncryptionDataSize();
      v17 = LocationLogEncryptionEncryptData();
      v18 = LocationLogEncryptionDataSize();
      v19 = LocationLogEncryptionEncryptData();
      *&v141[6] = "";
      *&v141[4] = 2082;
      v142 = 2082;
      v143 = "PerEpochData";
      v145 = v13;
      v149 = v14;
      v151 = v15;
      v153 = v112;
      v155 = v113;
      v157 = v114;
      v159 = v115;
      v161 = v16;
      v163 = v17;
      v160 = 1040;
      v164 = 1040;
      v165 = v18;
      v162 = 2098;
      v166 = 2098;
      v167 = v19;
      v168 = 2049;
      v20 = *(v3 + 80);
      v169 = *(v3 + 72);
      v21 = *(v3 + 88);
      v171 = v20;
      v173 = v21;
      v22 = *(v3 + 104);
      v175 = *(v3 + 96);
      v177 = v22;
      v23 = *(v3 + 120);
      v179 = *(v3 + 112);
      v181 = v23;
      v183 = *(v3 + 128);
      v185 = *(v3 + 140);
      v187 = *(v3 + 144);
      v197 = *(v3 + 184);
      v201 = *(v3 + 288);
      v24 = *(v3 + 160);
      v189 = *(v3 + 152);
      v191 = v24;
      v193 = *(v3 + 168);
      v195 = *(v3 + 176);
      v144 = 2050;
      v146 = 2050;
      v148 = 2050;
      v150 = 2050;
      v152 = 2050;
      v154 = 2050;
      v170 = 2050;
      v174 = 2050;
      v176 = 2050;
      v178 = 2050;
      v180 = 2050;
      v182 = 2050;
      v188 = 2050;
      v190 = 2050;
      v194 = 2050;
      v196 = 2050;
      v199 = *(v3 + 292);
      v156 = 1026;
      v158 = 1026;
      v172 = 1026;
      v184 = 1026;
      v186 = 1026;
      v192 = 1026;
      v198 = 1026;
      v200 = 1026;
      *buf = 68296707;
      *v141 = 0;
      v147 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, gpsNs:%{public}lld, gpsTimeUncMs:%{public}f, cfTime:%{public}f, cfTimeGps:%{public}f, machTime:%{public}f, machContinuousTime:%{public}f, leapSeconds:%{public}d, posValid:%{public}hhd, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, altitude:%{private}f, undulation:%{public}f, undulationModel:%{public}d, hunc:%{public}f, vunc:%{public}f, semiMaj:%{public}f, semiMin:%{public}f, semiMajAz:%{public}f, reliability:%{public}d, speedValid:%{public}hhd, speed:%{public}f, speedUnc:%{public}f, courseValid:%{public}hhd, course:%{public}f, courseUnc:%{public}f, imag:%{public}d, gnssContent:%{public}d}", buf, 0x116u);
    }

    if (!*(v4 + 1160) || (sub_100298E74((v4 + 2752), (v3 + 56), (v3 + 64), 1, *(v4 + 772)), sub_100298F24(*(v4 + 1160), v3, *v4 + 8, v4 + 2752, (v4 + 772), *(v4 + 752)), *(v3 + 292) != 3) || (*(v4 + 1223) & 1) != 0 || (*(v4 + 1221) & 1) != 0)
    {
      v32 = *(v4 + 728);
      if (v32)
      {
        sub_10029D128(v32, v3);
      }

      v33 = *(v4 + 1208);
      if (v33)
      {
        sub_1009BA87C(v33, v3);
      }

      v34 = (v4 + 80);
      if (*(v4 + 80))
      {
        v35 = *(v4 + 772) + 1;
        *(v4 + 772) = v35;
        v36 = v35 < 0xA;
      }

      else
      {
        *(v4 + 772) = 0;
        v36 = 1;
      }

      if (*(v3 + 144) == 1 && *(v3 + 152) > 0.0)
      {
        *(v4 + 776) = v139;
      }

      if (*(v3 + 184) <= 90.0)
      {
        v36 = 0;
      }

      if (v36)
      {
        *(v3 + 168) = 0;
        __asm { FMOV            V0.2D, #-1.0 }

        *(v3 + 176) = _Q0;
      }

      if (*(v4 + 776) + 30.0 < v139)
      {
        v53 = *(v3 + 184);
        if (v53 <= 0.0 || v53 >= 45.0)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101940C48();
          }

          v54 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289026;
            *v141 = 0;
            *&v141[4] = 2082;
            *&v141[6] = "";
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Course invalidated due to extended static period}", buf, 0x12u);
          }

          *(v3 + 168) = 0;
          __asm { FMOV            V0.2D, #-1.0 }

          *(v3 + 176) = _Q0;
        }
      }

      v56 = *(v4 + 1168);
      if (v56 && *(v3 + 144) == 1)
      {
        v57 = *(v3 + 152);
        *buf = v57;
        v58 = *(v3 + 160);
        *v129 = v58;
        sub_10028E080(v56, buf, v129, (v3 + 8), 1);
        *(v3 + 152) = v59;
      }

      v60 = *(v4 + 1016);
      if (v60)
      {
        if (*v34 != 1)
        {
          goto LABEL_173;
        }

        if (*(v3 + 48) == 1)
        {
          if (sub_10012D494(v60, v3))
          {
            *(v3 + 56) = *(v4 + 88);
            *(v3 + 72) = *(v4 + 104);
            *(v3 + 88) = *(v4 + 120);
            *(v3 + 152) = 0;
            if (*(v4 + 200) == 1)
            {
              *(v3 + 168) = 1;
              *(v3 + 176) = *(v4 + 208);
            }
          }
        }

        v60 = *(v4 + 1016);
        if (v60)
        {
LABEL_173:
          if (*(v3 + 144) == 1)
          {
            if (sub_10029882C(v60, *(v3 + 152), *(v3 + 160)))
            {
              *(v3 + 152) = 0;
              if (*(v4 + 200) == 1)
              {
                *(v3 + 168) = 1;
                *(v3 + 176) = *(v4 + 208);
              }
            }
          }
        }
      }

      v61 = *(v4 + 1064);
      if (v61)
      {
        sub_100218038(v61, *(v3 + 88), *(v3 + 80), *(v3 + 8));
        sub_100214CE0(*(v4 + 1064), (v3 + 80), (v3 + 88), *(v3 + 8));
      }

      v62 = *(v4 + 2504);
      if (v62)
      {
        v63 = *(v4 + 1016);
        if (v63)
        {
          sub_1009BA690(v63, buf);
        }

        else
        {
          CLMotionActivity::getInit(0);
        }

        LOBYTE(v129[0]) = 0;
        sub_1002A3400(v62, v3, buf, v129);
      }

      sub_1002988A4(v3, 1, *(v4 + 1221), buf);
      v65 = *(v4 + 1136);
      if (v65)
      {
        sub_10029A3F8(v65, (*v4 + 8), (v3 + 56), (v3 + 64), (v3 + 72), (v3 + 96), (v3 + 104));
        if ((sub_10024CA2C(v66, v67) & 1) == 0)
        {
          sub_1016C4A7C(*(v4 + 1136), v3 + 248, v64.n128_f64[0]);
        }
      }

      v68 = *(v4 + 1056);
      if (v68)
      {
        sub_10029A508(v68, buf, *(v4 + 2498));
      }

      v69 = *(v4 + 1016);
      if (v69)
      {
        sub_10012CF34(v69, v3, v64);
      }

      v70 = *(v4 + 1040);
      if (v70)
      {
        sub_1001306F4(v70);
      }

      v71 = *(v4 + 992);
      if (v71)
      {
        sub_100139E64(v71, v3);
      }

      v72 = *(v4 + 1112);
      if (v72)
      {
        sub_101751610(v72, v3);
      }

      v73 = *(v4 + 1192);
      if (v73)
      {
        sub_1010BFFFC(v73, v3);
      }

      *(v4 + 2736) = v139;
      sub_10029C62C(v4, v3);
      sub_1002A94B8(v74, buf, 0);
      v75 = *(v4 + 1200);
      if (v75)
      {
        v76 = sub_100EABA00(v75, v139) ^ 1;
      }

      else
      {
        v76 = 0;
      }

      if (!*(v4 + 360))
      {
        goto LABEL_125;
      }

      if (*(v4 + 3064))
      {
        v77 = 1;
      }

      else
      {
        v77 = *(v4 + 736) == 0;
      }

      v78 = *(v4 + 3112);
      if (v78)
      {
        LODWORD(v78) = *v78 ^ 1;
      }

      v79 = *(v4 + 3104);
      if (v79)
      {
        if (*(v79 + 32) == 1)
        {
          v80 = *(v79 + 24);
          if (v80 > v139)
          {
            LODWORD(v79) = 0;
            goto LABEL_115;
          }

          v82 = v139 + *(v79 + 8) - v80;
          v81 = *(v79 + 20);
        }

        else
        {
          v81 = *(v79 + 20);
          v82 = *(v79 + 8);
        }

        LODWORD(v79) = v81 ^ 1 | (v82 > *(v79 + 16));
      }

LABEL_115:
      if ((v77 | v78 | v79 | v76) & 1 | ((*(v4 + 568) & 0xFFFFFFFE) == 10))
      {
        if (!(v78 & 1 | ((v76 & 1) == 0)))
        {
          sub_1001C55E4(v4);
        }
      }

      else
      {
        sub_1007FEBA8(v4, v139);
      }

      v83 = sub_1002A9660(v4, &v202, buf);
      if ((v83 & 1) == 0)
      {
        sub_1002A94B8(v83, buf, 1);
        v84 = *(v4 + 1152);
        if (v84 && (*(v4 + 752) & 1) == 0)
        {
          sub_1016F3724(v84, buf);
        }

        v85 = *(v4 + 360);
        if (!v85)
        {
          sub_1000CF05C();
        }

        (*(*v85 + 48))(v85, buf);
      }

LABEL_125:
      v86 = *(v4 + 424);
      if (v86)
      {
        (*(*v86 + 48))(v86, buf);
      }

      v87 = *(v4 + 1184);
      if (v87)
      {
        v88 = *(v4 + 1200);
        if (v88)
        {
          v89 = sub_100EABC34(v88, v139);
          sub_100D0928C(v87, (v89 ^ 1u));
        }
      }

      v90 = *v3;
      v91 = *(v3 + 16);
      v92 = *(v3 + 48);
      *(v4 + 64) = *(v3 + 32);
      *v34 = v92;
      *(v4 + 32) = v90;
      *(v4 + 48) = v91;
      v93 = *(v3 + 64);
      v94 = *(v3 + 80);
      v95 = *(v3 + 112);
      *(v4 + 128) = *(v3 + 96);
      *(v4 + 144) = v95;
      *(v4 + 96) = v93;
      *(v4 + 112) = v94;
      v96 = *(v3 + 128);
      v97 = *(v3 + 144);
      v98 = *(v3 + 176);
      *(v4 + 192) = *(v3 + 160);
      *(v4 + 208) = v98;
      *(v4 + 160) = v96;
      *(v4 + 176) = v97;
      v99 = *(v3 + 192);
      v100 = *(v3 + 208);
      v101 = *(v3 + 224);
      *(v4 + 272) = *(v3 + 240);
      *(v4 + 240) = v100;
      *(v4 + 256) = v101;
      *(v4 + 224) = v99;
      if (v4 + 32 != v3)
      {
        *(v4 + 312) = *(v3 + 280);
        sub_100294BE4((v4 + 280), *(v3 + 264), 0);
      }

      *(v4 + 320) = *v116;
      sub_1002C31F8(v4 + 2752, (v4 + 80));
      v102 = *(v4 + 1024);
      if (v102 && *(v4 + 2720) == 1)
      {
        sub_101754A3C(v102);
      }

      if (v203)
      {
        sub_100008080(v203);
      }

      return;
    }

    sub_10012CDF4(v4, v25, v26, v27, v28, v29, v30, v31, v139);
    if (*v4)
    {
      ++*(*v4 + 1076);
    }

    sub_100021AFC(v129);
    sub_1002988A4(v3, 0, 0, v118);
    v129[6] = v118[6];
    v129[7] = v118[7];
    v130[0] = v119[0];
    *(v130 + 12) = *(v119 + 12);
    v129[2] = v118[2];
    v129[3] = v118[3];
    v129[4] = v118[4];
    v129[5] = v118[5];
    v129[0] = v118[0];
    v129[1] = v118[1];
    memcpy(v131, v120, 0x201uLL);
    v105 = v121;
    v106 = v122;
    if (v122)
    {
      atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v131[65] = v105;
    v107 = v132;
    v132 = v106;
    if (v107)
    {
      sub_100008080(v107);
    }

    v137 = v127;
    v138[0] = v128[0];
    *(v138 + 9) = *(v128 + 9);
    v133 = v123;
    v134 = v124;
    v135 = v125;
    v136 = v126;
    *&v131[43] = v139;
    if (*(v4 + 488))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v108 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v108, OS_LOG_TYPE_INFO, "Notifying al to WiFi harvester", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C70(buf);
        v117 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "Notifying al to WiFi harvester", &v117, 2);
        v111 = v110;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::handleLocationResponse(std::optional<GNSS::PerEpochData> &&)", "%s\n", v110);
        if (v111 != buf)
        {
          free(v111);
        }
      }

      sub_1007FEB60(v4 + 464);
    }

    v109 = *(v4 + 1024);
    if (v109)
    {
      sub_101755170(v109, 1);
    }

    if (v122)
    {
      sub_100008080(v122);
    }

    sub_100311054(v129);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v37 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "Gnss not running", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019439E4();
    }
  }
}

void sub_1001305C8(_Unwind_Exception *a1)
{
  if (STACK[0x2E8])
  {
    sub_100008080(STACK[0x2E8]);
  }

  sub_100311054(&STACK[0x360]);
  _Unwind_Resume(a1);
}

void sub_10013061C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) & 1) == 0)
  {
    v3 = sub_1000081AC();
    v4 = *(a1 + 56);
    v6 = v4 > 0.0;
    v5 = vabdd_f64(v3, v4);
    v6 = v6 && v5 <= 15.0;
    if (!v6)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101B77F98();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLGnssAssistanceTime,refresh,feedAssistanceTime", v8, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B78960();
      }

      sub_1001BEF40(a1);
      *(a1 + 56) = v3;
    }
  }
}

void sub_1001306F4(uint64_t a1)
{
  if (sub_1000081AC() - *(a1 + 56) > 60.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101928290();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLSE,refresh,updateRefTime", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019286AC();
    }

    sub_100180D80(a1);
  }
}

uint64_t *sub_1001307B0(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_1001309E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 44) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v31 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
        {
          return 0;
        }
      }

      else
      {
        v31 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
      if (!sub_10012E718(v8, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        do
        {
          *(this + 1) = v17 + 1;
LABEL_27:
          v18 = *(a1 + 28);
          v19 = *(a1 + 24);
          if (v19 >= v18)
          {
            if (v18 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v18 + 1);
              v18 = *(a1 + 28);
            }

            *(a1 + 28) = v18 + 1;
            operator new();
          }

          v20 = *(a1 + 16);
          *(a1 + 24) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v32 = 0;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v22;
            *(this + 1) = v22 + 1;
          }

          v23 = *(this + 14);
          v24 = *(this + 15);
          *(this + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
          if (!sub_1002C3AA8(v21, this, v26) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
          v27 = *(this + 14);
          v15 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v15)
          {
            *(this + 14) = v28;
          }

          v17 = *(this + 1);
          v29 = *(this + 2);
        }

        while (v17 < v29 && *v17 == 18);
        if (v17 == v29 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100130D60(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v14;
          *(a1 + 52) |= 8u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 41)
          {
            *(this + 1) = v12 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v14;
          *(a1 + 52) |= 0x10u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v14;
      *(a1 + 52) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_28:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v14;
        *(a1 + 52) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
LABEL_32:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v14;
          *(a1 + 52) |= 4u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 33)
          {
            *(this + 1) = v11 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100130FD8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(a1 + 52) |= 8u;
          v37 = *(a1 + 32);
          if (!v37)
          {
            operator new();
          }

          v55 = 0;
          v38 = *(this + 1);
          if (v38 >= *(this + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v38;
            *(this + 1) = v38 + 1;
          }

          v39 = *(this + 14);
          v40 = *(this + 15);
          *(this + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          if (!sub_10014C048(v37, this, v42) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
          v43 = *(this + 14);
          v16 = __OFSUB__(v43, 1);
          v44 = v43 - 1;
          if (v44 < 0 == v16)
          {
            *(this + 14) = v44;
          }

          v45 = *(this + 1);
          if (v45 < *(this + 2) && *v45 == 42)
          {
            *(this + 1) = v45 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_80:
          *(a1 + 52) |= 0x10u;
          v46 = *(a1 + 40);
          if (!v46)
          {
            operator new();
          }

          v55 = 0;
          v47 = *(this + 1);
          if (v47 >= *(this + 2) || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v47;
            *(this + 1) = v47 + 1;
          }

          v48 = *(this + 14);
          v49 = *(this + 15);
          *(this + 14) = v48 + 1;
          if (v48 >= v49)
          {
            return 0;
          }

          v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          if (!sub_10014CC44(v46, this, v51) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
          v52 = *(this + 14);
          v16 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v16)
          {
            *(this + 14) = v53;
          }

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v55 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
        {
          return 0;
        }
      }

      else
      {
        v55 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
      if (!sub_10014B6E4(v9, this, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
      }

      v18 = *(this + 1);
      if (v18 < *(this + 2) && *v18 == 18)
      {
        *(this + 1) = v18 + 1;
LABEL_38:
        *(a1 + 52) |= 2u;
        v19 = *(a1 + 16);
        if (!v19)
        {
          operator new();
        }

        v55 = 0;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
          {
            return 0;
          }
        }

        else
        {
          v55 = *v20;
          *(this + 1) = v20 + 1;
        }

        v21 = *(this + 14);
        v22 = *(this + 15);
        *(this + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
        if (!sub_10014D4F8(v19, this, v24) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
        v25 = *(this + 14);
        v16 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v26 < 0 == v16)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        if (v27 < *(this + 2) && *v27 == 26)
        {
          *(this + 1) = v27 + 1;
LABEL_52:
          *(a1 + 52) |= 4u;
          v28 = *(a1 + 24);
          if (!v28)
          {
            operator new();
          }

          v55 = 0;
          v29 = *(this + 1);
          if (v29 >= *(this + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v29;
            *(this + 1) = v29 + 1;
          }

          v30 = *(this + 14);
          v31 = *(this + 15);
          *(this + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          if (!sub_10014D944(v28, this, v33) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
          v34 = *(this + 14);
          v16 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v16)
          {
            *(this + 14) = v35;
          }

          v36 = *(this + 1);
          if (v36 < *(this + 2) && *v36 == 34)
          {
            *(this + 1) = v36 + 1;
            goto LABEL_66;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100131674(__int128 *a1, double *a2, double *a3)
{
  v9 = 0.0;
  if (sub_100131C88(a1, &v9))
  {
    *a3 = *a2 + v9;

    return sub_100131DE8(a1, a2);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TCONV,Failed in getting the offset between mach continuous time and mach absolute time", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D27E8();
    }

    return 0;
  }
}

uint64_t sub_10013176C(__int128 *a1, uint64_t a2)
{
  v28 = 0;
  v29 = 0;
  if (mach_get_times())
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1B7C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "TCONV,mach_get_times failed", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_1019D2190();
      return 0;
    }

    return result;
  }

  v6 = sub_1000080EC(v28);
  v7 = v28 - v29;
  v8 = sub_10000DF28(&v26);
  v9 = v8 - sub_1000080EC(v29);
  if (*(a1 + 32) == 1 && vabdd_f64(v9, *(a1 + 2)) <= 0.0012 && v7 == *a1 && v6 <= *(a1 + 8) + 30.0)
  {
LABEL_39:
    v19 = *a1;
    v20 = a1[1];
    *(a2 + 32) = *(a1 + 32);
    *a2 = v19;
    *(a2 + 16) = v20;
    return 1;
  }

  *(a1 + 32) = 0;
  if (!sub_10025ECF0(a1, a1 + 3))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1B7C();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TCONV,Getting last wake up time failed", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019D2274();
      return 0;
    }

    return result;
  }

  *(a1 + 8) = v6;
  *a1 = v7;
  v10 = sub_1000080EC(v7);
  *(a1 + 1) = v10;
  *(a1 + 2) = v9;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1019D1B7C();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "TCONV,invalid deltaCfAbsSec", buf, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1019D2358();
        return 0;
      }

      return result;
    }

    *(a1 + 32) = 1;
    v14 = sub_1000080EC(v29);
    if (qword_1025D4650 != -1)
    {
      sub_1019D1B7C();
    }

    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 1);
      v17 = *(a1 + 2);
      v18 = *(a1 + 3);
      *buf = 134351360;
      v51 = v29;
      v52 = 2050;
      v53 = v28;
      v54 = 2050;
      v55 = v26;
      v56 = 2050;
      v57 = v27;
      v58 = 2050;
      v59 = v16;
      v60 = 2050;
      v61 = v17;
      v62 = 2050;
      v63 = v18;
      v64 = 2050;
      v65 = v14;
      v66 = 2050;
      v67 = v6;
      v68 = 2050;
      v69 = v8;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "TCONV,mach_get_times,machAbs,%{public}llu,machCont,%{public}llu,tv_sec,%{public}ld,tv_nsec,%{public}ld,deltaContAbs,%{public}.6lf,deltaCfAbs,%{public}.6lf,lastWakeAbs,%{public}.6lf,machNow,%{public}.6lf,machContNow,%{public}.6lf,sysNow,%{public}.6lf", buf, 0x66u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1019D1B7C();
      }

      v21 = *(a1 + 1);
      v22 = *(a1 + 2);
      v23 = *(a1 + 3);
      v30 = 134351360;
      v31 = v29;
      v32 = 2050;
      v33 = v28;
      v34 = 2050;
      v35 = v26;
      v36 = 2050;
      v37 = v27;
      v38 = 2050;
      v39 = v21;
      v40 = 2050;
      v41 = v22;
      v42 = 2050;
      v43 = v23;
      v44 = 2050;
      v45 = v14;
      v46 = 2050;
      v47 = v6;
      v48 = 2050;
      v49 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "TCONV,mach_get_times,machAbs,%{public}llu,machCont,%{public}llu,tv_sec,%{public}ld,tv_nsec,%{public}ld,deltaContAbs,%{public}.6lf,deltaCfAbs,%{public}.6lf,lastWakeAbs,%{public}.6lf,machNow,%{public}.6lf,machContNow,%{public}.6lf,sysNow,%{public}.6lf", &v30, 102);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLUtils::LiveTimeConverter::getLastWakeUpTime(WakeUpTime &)", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    goto LABEL_39;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1019D1B7C();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "TCONV,invalid deltaContAbsSec", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1019D243C();
    return 0;
  }

  return result;
}

uint64_t sub_100131C88(__int128 *a1, void *a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v3 = sub_10013176C(a1, v7);
  if (v3)
  {
    *a2 = *(&v7[0] + 1);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TCONV,UpdateLastWakeUpTime failed", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D2620();
    }
  }

  return v3;
}

double sub_100131D4C(uint64_t a1, void *a2, char a3, double a4)
{
  v7 = a4;
  if ((a3 & 1) != 0 || *&qword_102635890 == -1.0)
  {
    v6 = 0.0;
    if (sub_100131674((a1 + 2352), &v7, &v6))
    {
      *&qword_102635890 = v6 - v7;
      result = v6 * 1000000000.0;
      *a2 = (v6 * 1000000000.0);
    }
  }

  else
  {
    result = (*&qword_102635890 + a4) * 1000000000.0;
    *a2 = result;
  }

  return result;
}

uint64_t sub_100131DE8(uint64_t a1, double *a2)
{
  if (*(a1 + 32) == 1 && *a2 >= *(a1 + 24))
  {
    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1019D1C88();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = *(a1 + 24);
    v8 = 134349312;
    v9 = v5;
    v10 = 2050;
    v11 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "TCONV,Cannot get wakeTime or MachTime before sleep,machAbs,%{public}.6lf,wakeTime,%{public}.6lf", &v8, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019D2520(a2, a1);
    return 0;
  }

  return result;
}

BOOL sub_100131F04(uint64_t a1, unsigned int a2)
{
  result = sub_1000183C8(a2);
  if (!result)
  {
    sub_101AAD678();
  }

  *(a1 + 32) |= 4u;
  *(a1 + 20) = a2;
  return result;
}

double sub_100131F48(uint64_t a1)
{
  *a1 = off_1024B8F88;
  *(a1 + 8) = 0;
  *&result = 0x400000000;
  *(a1 + 16) = 0x400000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_100131F7C(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return dword_101DB5C6C[a1];
  }
}

void sub_100131F9C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8718;
  sub_100133DD0(a1);
  if (*(a1 + 44))
  {
    operator delete[]();
  }

  if (*(a1 + 41))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100132030(uint64_t result, int a2)
{
  if (a2 <= 33)
  {
    if (a2 == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "#gpsd,start completed", &v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101779DE8();
      }

      if (qword_1025D4620 != -1)
      {
        sub_101770ECC();
      }

      v21 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "@ClxGps, state, 1, GnssDaemonDevice/gpsd", &v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101779EC4();
      }
    }

    else if (a2 == 2)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#gpsd,stop accepted", &v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101779C30();
      }

      if (qword_1025D4620 != -1)
      {
        sub_101770ECC();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@ClxGps, state, 0, GnssDaemonDevice/gpsd", &v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101779D0C();
      }

      v25[0] = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      memset(&v25[8], 0, 32);
      *&v25[40] = 1;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29[0] = 0;
      __asm { FMOV            V1.2D, #-1.0 }

      *&v29[8] = _Q1;
      v29[24] = 0;
      v30 = _Q1;
      v31[0] = 0;
      *&v31[8] = _Q1;
      v31[24] = 0;
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      v32 = 0u;
      v35 = 1065353216;
      v36 = 0x100000005uLL;
      v11 = *&v31[16];
      *(result + 2056) = *v31;
      *(result + 2072) = v11;
      *(result + 2088) = v32;
      *(result + 2104) = *&v33[0];
      v12 = *v29;
      *(result + 1992) = v28;
      *(result + 2008) = v12;
      v13 = v30;
      *(result + 2024) = *&v29[16];
      *(result + 2040) = v13;
      v14 = *&v25[32];
      *(result + 1928) = *&v25[16];
      *(result + 1944) = v14;
      v15 = v27;
      *(result + 1960) = v26;
      *(result + 1976) = v15;
      v16 = v23;
      *(result + 1864) = v22;
      *(result + 1880) = v16;
      v17 = *v25;
      *(result + 1896) = v24;
      *(result + 1912) = v17;
      sub_1001BD950(result + 2112, v33 + 1);
      *(result + 2152) = v36;
      sub_100134860(v33 + 8);
    }
  }

  else
  {
    switch(a2)
    {
      case '4':
        if (qword_1025D4650 != -1)
        {
          sub_1002981B4();
        }

        v18 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#gpsd,STOP_EMERGENCY_PREEMPTIVE_SESSION completed", &v22, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101779A78();
        }

        break;
      case '3':
        if (qword_1025D4650 != -1)
        {
          sub_1002981B4();
        }

        v19 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,START_EMERGENCY_PREEMPTIVE_SESSION completed", &v22, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101779B54();
        }

        break;
      case '""':
        if (qword_1025D4650 != -1)
        {
          sub_1002981B4();
        }

        v2 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v22) = 0;
          _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "#gpsd,build device completed,unexpected", &v22, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101779FA0();
        }

        break;
    }
  }
}

BOOL sub_100132484(unsigned int a1)
{
  result = 1;
  if (a1 - 31 > 0x2D || ((1 << (a1 - 31)) & 0x3FFFE7F001FBLL) == 0)
  {
    return a1 < 0x1E;
  }

  return result;
}

double sub_1001324C4(uint64_t a1)
{
  *a1 = off_1024B8718;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  *(a1 + 392) = 0;
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
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 396) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 388) = 0;
  *(a1 + 372) = 0;
  *(a1 + 380) = 0;
  return result;
}

void sub_10013256C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1752);
  if (!v3)
  {
    sub_101770500();
  }

  v6 = (a2 + 20);
  v5 = *(a2 + 20);
  if (v5 >= 0x4D)
  {
    sub_1000432E8("bitset test argument out of range");
  }

  if ((*(a1 + ((v5 >> 3) & 0x1FFFFFF8) + 2176) >> v5))
  {
    if ((*(a2 + 396) & 1) == 0)
    {
      v7 = sub_1001347BC();
      *(a2 + 396) |= 1u;
      *(a2 + 8) = v7;
      v3 = *(a1 + 1752);
    }

    (**v3)(v3, a2);
    v8 = *(a2 + 20);
    v9 = *(a1 + 2168);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100132020;
    block[3] = &unk_102455A60;
    block[4] = a1;
    v13 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      sub_1016AFB24(__p, *v6);
      v11 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v17 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,Request type is disabled,%{public}s", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017703C4(v6);
    }
  }
}

uint64_t sub_10013276C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 396);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 396);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 16);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 396);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 20);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 396);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    v9 = *(qword_102637F90 + 24);
  }

  v10 = sub_1001B4EAC(v9, a2);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
  }

  else
  {
    v12 = 1;
  }

  v4 += v11 + v12 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_30:
  v13 = *(a1 + 32);
  if (!v13)
  {
    v13 = *(qword_102637F90 + 32);
  }

  v14 = sub_100153544(v13, a2);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
  }

  else
  {
    v16 = 1;
  }

  v4 += v15 + v16 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_36:
  v17 = *(a1 + 40);
  if (!v17)
  {
    v17 = *(qword_102637F90 + 40);
  }

  v18 = sub_100E7FD78(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 += v19 + v20 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v21 = *(a1 + 48);
  if (!v21)
  {
    v21 = *(qword_102637F90 + 48);
  }

  v22 = sub_1002829C8(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 += v23 + v24 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x80) != 0)
  {
LABEL_48:
    v25 = *(a1 + 56);
    if (!v25)
    {
      v25 = *(qword_102637F90 + 56);
    }

    v26 = sub_10028351C(v25, a2);
    v27 = v26;
    if (v26 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
    }

    else
    {
      v28 = 1;
    }

    v4 += v27 + v28 + 1;
    v3 = *(a1 + 396);
  }

LABEL_54:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_112;
  }

  if ((v3 & 0x100) != 0)
  {
    v29 = *(a1 + 64);
    if (!v29)
    {
      v29 = *(qword_102637F90 + 64);
    }

    v30 = sub_10029C4EC(v29, a2);
    v31 = v30;
    if (v30 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
    }

    else
    {
      v32 = 1;
    }

    v4 += v31 + v32 + 1;
    v3 = *(a1 + 396);
    if ((v3 & 0x200) == 0)
    {
LABEL_57:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_76;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v33 = *(a1 + 72);
  if (!v33)
  {
    v33 = *(qword_102637F90 + 72);
  }

  v34 = sub_100E81224(v33, a2);
  v35 = v34;
  if (v34 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
  }

  else
  {
    v36 = 1;
  }

  v4 += v35 + v36 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x400) == 0)
  {
LABEL_58:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_82;
  }

LABEL_76:
  v37 = *(a1 + 80);
  if (!v37)
  {
    v37 = *(qword_102637F90 + 80);
  }

  v38 = sub_100136AEC(v37, a2);
  v39 = v38;
  if (v38 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
  }

  else
  {
    v40 = 1;
  }

  v4 += v39 + v40 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x800) == 0)
  {
LABEL_59:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_82:
  v41 = *(a1 + 88);
  if (!v41)
  {
    v41 = *(qword_102637F90 + 88);
  }

  v42 = sub_1001371F4(v41, a2);
  v43 = v42;
  if (v42 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
  }

  else
  {
    v44 = 1;
  }

  v4 += v43 + v44 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x1000) == 0)
  {
LABEL_60:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_94;
  }

LABEL_88:
  v45 = *(a1 + 96);
  if (!v45)
  {
    v45 = *(qword_102637F90 + 96);
  }

  v46 = sub_1001811E0(v45, a2);
  v47 = v46;
  if (v46 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
  }

  else
  {
    v48 = 1;
  }

  v4 += v47 + v48 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x2000) == 0)
  {
LABEL_61:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_100;
  }

LABEL_94:
  v49 = *(a1 + 104);
  if (!v49)
  {
    v49 = *(qword_102637F90 + 104);
  }

  v50 = sub_100E82050(v49, a2);
  v51 = v50;
  if (v50 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
  }

  else
  {
    v52 = 1;
  }

  v4 += v51 + v52 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x4000) == 0)
  {
LABEL_62:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_106;
  }

LABEL_100:
  v53 = *(a1 + 112);
  if (!v53)
  {
    v53 = *(qword_102637F90 + 112);
  }

  v54 = sub_100E82480(v53, a2);
  v55 = v54;
  if (v54 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2);
  }

  else
  {
    v56 = 1;
  }

  v4 += v55 + v56 + 1;
  v3 = *(a1 + 396);
  if ((v3 & 0x8000) != 0)
  {
LABEL_106:
    v57 = *(a1 + 120);
    if (!v57)
    {
      v57 = *(qword_102637F90 + 120);
    }

    v58 = sub_100E7DF78(v57, a2);
    v59 = v58;
    if (v58 >= 0x80)
    {
      v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2);
    }

    else
    {
      v60 = 1;
    }

    v4 += v59 + v60 + 2;
    v3 = *(a1 + 396);
  }

LABEL_112:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_174;
  }

  if ((v3 & 0x10000) != 0)
  {
    v61 = *(a1 + 128);
    if (!v61)
    {
      v61 = *(qword_102637F90 + 128);
    }

    v62 = sub_100E7E360(v61, a2);
    v63 = v62;
    if (v62 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62, a2);
    }

    else
    {
      v64 = 1;
    }

    v4 += v63 + v64 + 2;
    v3 = *(a1 + 396);
    if ((v3 & 0x20000) == 0)
    {
LABEL_115:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_134;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_115;
  }

  v65 = *(a1 + 136);
  if (!v65)
  {
    v65 = *(qword_102637F90 + 136);
  }

  v66 = sub_100E7EB1C(v65, a2);
  v67 = v66;
  if (v66 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2);
  }

  else
  {
    v68 = 1;
  }

  v4 += v67 + v68 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x40000) == 0)
  {
LABEL_116:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_142;
  }

LABEL_134:
  v69 = *(a1 + 144);
  if (!v69)
  {
    v69 = *(qword_102637F90 + 144);
  }

  if ((*(v69 + 20) & 1) == 0)
  {
    v70 = 0;
    *(v69 + 16) = 0;
LABEL_139:
    v72 = 1;
    goto LABEL_141;
  }

  v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v69 + 8), a2);
  v70 = v71 + 1;
  *(v69 + 16) = v71 + 1;
  if ((v71 + 1) < 0x80)
  {
    goto LABEL_139;
  }

  v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v71 + 1), a2);
LABEL_141:
  v4 += v72 + v70 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x80000) == 0)
  {
LABEL_117:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_148;
  }

LABEL_142:
  v73 = *(a1 + 152);
  if (!v73)
  {
    v73 = *(qword_102637F90 + 152);
  }

  v74 = sub_100E7DA98(v73);
  v75 = v74;
  if (v74 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74, a2);
  }

  else
  {
    v76 = 1;
  }

  v4 += v75 + v76 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x100000) == 0)
  {
LABEL_118:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_156;
  }

LABEL_148:
  v77 = *(a1 + 160);
  if (!v77)
  {
    v77 = *(qword_102637F90 + 160);
  }

  if ((*(v77 + 20) & 1) == 0)
  {
    v78 = 0;
    *(v77 + 16) = 0;
LABEL_153:
    v80 = 1;
    goto LABEL_155;
  }

  v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v77 + 8), a2);
  v78 = v79 + 1;
  *(v77 + 16) = v79 + 1;
  if ((v79 + 1) < 0x80)
  {
    goto LABEL_153;
  }

  v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v79 + 1), a2);
LABEL_155:
  v4 += v80 + v78 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x200000) == 0)
  {
LABEL_119:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_162;
  }

LABEL_156:
  v81 = *(a1 + 168);
  if (!v81)
  {
    v81 = *(qword_102637F90 + 168);
  }

  v82 = sub_100E82C20(v81, a2);
  v83 = v82;
  if (v82 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82, a2);
  }

  else
  {
    v84 = 1;
  }

  v4 += v83 + v84 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x400000) == 0)
  {
LABEL_120:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_168;
  }

LABEL_162:
  v85 = *(a1 + 176);
  if (!v85)
  {
    v85 = *(qword_102637F90 + 176);
  }

  v86 = sub_1001B7DF8(v85, a2);
  v87 = v86;
  if (v86 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86, a2);
  }

  else
  {
    v88 = 1;
  }

  v4 += v87 + v88 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x800000) != 0)
  {
LABEL_168:
    v89 = *(a1 + 184);
    if (!v89)
    {
      v89 = *(qword_102637F90 + 184);
    }

    if (*(v89 + 16))
    {
      v90 = 2 * (*(v89 + 16) & 1);
    }

    else
    {
      v90 = 0;
    }

    *(v89 + 12) = v90;
    v4 += v90 + 3;
    v3 = *(a1 + 396);
  }

LABEL_174:
  if (!HIBYTE(v3))
  {
    goto LABEL_232;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v91 = *(a1 + 192);
    if (!v91)
    {
      v91 = *(qword_102637F90 + 192);
    }

    v92 = sub_100E83720(v91, a2);
    v93 = v92;
    if (v92 >= 0x80)
    {
      v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92, a2);
    }

    else
    {
      v94 = 1;
    }

    v4 += v93 + v94 + 2;
    v3 = *(a1 + 396);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_177:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_196;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_177;
  }

  v95 = *(a1 + 200);
  if (!v95)
  {
    v95 = *(qword_102637F90 + 200);
  }

  v96 = sub_100E83A8C(v95, a2);
  v97 = v96;
  if (v96 >= 0x80)
  {
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96, a2);
  }

  else
  {
    v98 = 1;
  }

  v4 += v97 + v98 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_178:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_202;
  }

LABEL_196:
  v99 = *(a1 + 208);
  if (!v99)
  {
    v99 = *(qword_102637F90 + 208);
  }

  v100 = sub_100E88100(v99, a2);
  v101 = v100;
  if (v100 >= 0x80)
  {
    v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100, a2);
  }

  else
  {
    v102 = 1;
  }

  v4 += v101 + v102 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_179:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_208;
  }

LABEL_202:
  v103 = *(a1 + 216);
  if (!v103)
  {
    v103 = *(qword_102637F90 + 216);
  }

  v104 = sub_1001BE044(v103, a2);
  v105 = v104;
  if (v104 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104, a2);
  }

  else
  {
    v106 = 1;
  }

  v4 += v105 + v106 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_180:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_214;
  }

LABEL_208:
  v107 = *(a1 + 224);
  if (!v107)
  {
    v107 = *(qword_102637F90 + 224);
  }

  v108 = sub_100E82834(v107, a2);
  v109 = v108;
  if (v108 >= 0x80)
  {
    v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108, a2);
  }

  else
  {
    v110 = 1;
  }

  v4 += v109 + v110 + 2;
  v3 = *(a1 + 396);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_181:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_220;
  }

LABEL_214:
  v111 = *(a1 + 232);
  if (!v111)
  {
    v111 = *(qword_102637F90 + 232);
  }

  if (*(v111 + 16))
  {
    v112 = 2 * (*(v111 + 16) & 1) + (*(v111 + 16) & 2);
  }

  else
  {
    v112 = 0;
  }

  *(v111 + 12) = v112;
  v4 += v112 + 3;
  v3 = *(a1 + 396);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_182:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_226;
  }

LABEL_220:
  v113 = *(a1 + 240);
  if (!v113)
  {
    v113 = *(qword_102637F90 + 240);
  }

  v114 = sub_100E7E6CC(v113, a2);
  v115 = v114;
  if (v114 >= 0x80)
  {
    v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114, a2);
  }

  else
  {
    v116 = 1;
  }

  v4 += v115 + v116 + 2;
  if ((*(a1 + 396) & 0x80000000) != 0)
  {
LABEL_226:
    v117 = *(a1 + 248);
    if (!v117)
    {
      v117 = *(qword_102637F90 + 248);
    }

    v118 = sub_1008A7C64(v117, a2);
    v119 = v118;
    if (v118 >= 0x80)
    {
      v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118, a2);
    }

    else
    {
      v120 = 1;
    }

    v4 += v119 + v120 + 2;
  }

LABEL_232:
  v121 = *(a1 + 400);
  if (!v121)
  {
    goto LABEL_291;
  }

  if (v121)
  {
    v122 = *(a1 + 256);
    v123 = *(v122 + 23);
    v124 = v123;
    v125 = *(v122 + 8);
    if ((v123 & 0x80u) == 0)
    {
      v126 = *(v122 + 23);
    }

    else
    {
      v126 = v125;
    }

    if (v126 >= 0x80)
    {
      v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126, a2);
      v123 = *(v122 + 23);
      v125 = *(v122 + 8);
      v121 = *(a1 + 400);
      v124 = *(v122 + 23);
    }

    else
    {
      v127 = 1;
    }

    if (v124 < 0)
    {
      v123 = v125;
    }

    v4 += v127 + v123 + 2;
    if ((v121 & 2) == 0)
    {
LABEL_235:
      if ((v121 & 4) == 0)
      {
        goto LABEL_236;
      }

      goto LABEL_257;
    }
  }

  else if ((v121 & 2) == 0)
  {
    goto LABEL_235;
  }

  v128 = *(a1 + 264);
  if (!v128)
  {
    v128 = *(qword_102637F90 + 264);
  }

  v129 = sub_100883228(v128, a2);
  v130 = v129;
  if (v129 >= 0x80)
  {
    v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129, a2);
  }

  else
  {
    v131 = 1;
  }

  v4 += v130 + v131 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 4) == 0)
  {
LABEL_236:
    if ((v121 & 8) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_261;
  }

LABEL_257:
  v132 = *(a1 + 304);
  if (v132 >= 0x80)
  {
    v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132, a2) + 2;
    v121 = *(a1 + 400);
  }

  else
  {
    v133 = 3;
  }

  v4 += v133;
  if ((v121 & 8) == 0)
  {
LABEL_237:
    if ((v121 & 0x10) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_267;
  }

LABEL_261:
  v134 = *(a1 + 272);
  if (!v134)
  {
    v134 = *(qword_102637F90 + 272);
  }

  v135 = sub_1008A27F4(v134, a2);
  v136 = v135;
  if (v135 >= 0x80)
  {
    v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135, a2);
  }

  else
  {
    v137 = 1;
  }

  v4 += v136 + v137 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x10) == 0)
  {
LABEL_238:
    if ((v121 & 0x20) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_273;
  }

LABEL_267:
  v138 = *(a1 + 280);
  if (!v138)
  {
    v138 = *(qword_102637F90 + 280);
  }

  v139 = sub_1008A36B0(v138, a2);
  v140 = v139;
  if (v139 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139, a2);
  }

  else
  {
    v141 = 1;
  }

  v4 += v140 + v141 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x20) == 0)
  {
LABEL_239:
    if ((v121 & 0x40) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_279;
  }

LABEL_273:
  v142 = *(a1 + 288);
  if (!v142)
  {
    v142 = *(qword_102637F90 + 288);
  }

  v143 = sub_1008A63BC(v142, a2);
  v144 = v143;
  if (v143 >= 0x80)
  {
    v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143, a2);
  }

  else
  {
    v145 = 1;
  }

  v4 += v144 + v145 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x40) == 0)
  {
LABEL_240:
    if ((v121 & 0x80) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_285;
  }

LABEL_279:
  v146 = *(a1 + 296);
  if (!v146)
  {
    v146 = *(qword_102637F90 + 296);
  }

  v147 = sub_1008A9778(v146, a2);
  v148 = v147;
  if (v147 >= 0x80)
  {
    v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147, a2);
  }

  else
  {
    v149 = 1;
  }

  v4 += v148 + v149 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x80) != 0)
  {
LABEL_285:
    v150 = *(a1 + 312);
    if (!v150)
    {
      v150 = *(qword_102637F90 + 312);
    }

    v151 = sub_1008AA458(v150, a2);
    v152 = v151;
    if (v151 >= 0x80)
    {
      v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151, a2);
    }

    else
    {
      v153 = 1;
    }

    v4 += v152 + v153 + 2;
    v121 = *(a1 + 400);
  }

LABEL_291:
  if ((v121 & 0xFF00) == 0)
  {
    goto LABEL_326;
  }

  if ((v121 & 0x100) == 0)
  {
    if ((v121 & 0x400) == 0)
    {
      goto LABEL_294;
    }

LABEL_302:
    v158 = *(a1 + 344);
    if (!v158)
    {
      v158 = *(qword_102637F90 + 344);
    }

    v159 = sub_10087A198(v158, a2);
    v160 = v159;
    if (v159 >= 0x80)
    {
      v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159, a2);
    }

    else
    {
      v161 = 1;
    }

    v4 += v160 + v161 + 2;
    v121 = *(a1 + 400);
    if ((v121 & 0x800) == 0)
    {
      goto LABEL_312;
    }

    goto LABEL_308;
  }

  v154 = *(a1 + 320);
  if (!v154)
  {
    v154 = *(qword_102637F90 + 320);
  }

  v155 = sub_1008A7050(v154);
  v156 = v155;
  if (v155 >= 0x80)
  {
    v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155, a2);
  }

  else
  {
    v157 = 1;
  }

  v4 += v156 + v157 + 2;
  v121 = *(a1 + 400);
  if ((v121 & 0x400) != 0)
  {
    goto LABEL_302;
  }

LABEL_294:
  if ((v121 & 0x800) != 0)
  {
LABEL_308:
    v162 = *(a1 + 308);
    if (v162 >= 0x80)
    {
      v163 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v162, a2) + 2;
      v121 = *(a1 + 400);
    }

    else
    {
      v163 = 3;
    }

    v4 += v163;
  }

LABEL_312:
  if ((v121 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v121 & 0x4000) != 0)
  {
    v164 = *(a1 + 372);
    if (v164 >= 0x80)
    {
      v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v164, a2) + 2;
      v121 = *(a1 + 400);
    }

    else
    {
      v165 = 3;
    }

    v4 += v165;
  }

  if ((v121 & 0x8000) != 0)
  {
    v166 = *(a1 + 376);
    if (!v166)
    {
      v166 = *(qword_102637F90 + 376);
    }

    v167 = sub_10087F204(v166, a2);
    v168 = v167;
    if (v167 >= 0x80)
    {
      v169 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167, a2);
    }

    else
    {
      v169 = 1;
    }

    v4 += v168 + v169 + 2;
    v121 = *(a1 + 400);
  }

LABEL_326:
  if ((v121 & 0x10000) != 0)
  {
    v170 = *(a1 + 384);
    if (!v170)
    {
      v170 = *(qword_102637F90 + 384);
    }

    v171 = sub_10087B774(v170, a2);
    v172 = v171;
    if (v171 >= 0x80)
    {
      v173 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171, a2);
    }

    else
    {
      v173 = 1;
    }

    v4 += v172 + v173 + 2;
  }

  v174 = *(a1 + 336);
  if (v174 < 1)
  {
    v176 = 0;
  }

  else
  {
    v175 = 0;
    v176 = 0;
    do
    {
      v177 = *(*(a1 + 328) + 4 * v175);
      if (v177 >= 0x80)
      {
        v178 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v177, a2);
        v174 = *(a1 + 336);
      }

      else
      {
        v178 = 1;
      }

      v176 += v178;
      ++v175;
    }

    while (v175 < v174);
  }

  v179 = *(a1 + 360);
  if (v179 < 1)
  {
    v181 = 0;
  }

  else
  {
    v180 = 0;
    v181 = 0;
    do
    {
      v182 = *(*(a1 + 352) + 4 * v180);
      if (v182 >= 0x80)
      {
        v183 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v182, a2);
        v179 = *(a1 + 360);
      }

      else
      {
        v183 = 1;
      }

      v181 += v183;
      ++v180;
    }

    while (v180 < v179);
  }

  result = (v176 + v4 + v181 + 2 * (v179 + v174));
  *(a1 + 392) = result;
  return result;
}

uint64_t sub_100133594(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 396);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 396);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_37:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(qword_102637F90 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_40:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(qword_102637F90 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_43:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(qword_102637F90 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_46:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(qword_102637F90 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_49:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(qword_102637F90 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_52:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(qword_102637F90 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_55:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(qword_102637F90 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v13, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_58:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(qword_102637F90 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_61:
  v15 = *(v5 + 88);
  if (!v15)
  {
    v15 = *(qword_102637F90 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v15, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_64:
  v16 = *(v5 + 96);
  if (!v16)
  {
    v16 = *(qword_102637F90 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v16, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_67:
  v17 = *(v5 + 104);
  if (!v17)
  {
    v17 = *(qword_102637F90 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_73;
  }

LABEL_70:
  v18 = *(v5 + 112);
  if (!v18)
  {
    v18 = *(qword_102637F90 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_73:
  v19 = *(v5 + 120);
  if (!v19)
  {
    v19 = *(qword_102637F90 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v19, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_76:
  v20 = *(v5 + 128);
  if (!v20)
  {
    v20 = *(qword_102637F90 + 128);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v20, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_79:
  v21 = *(v5 + 136);
  if (!v21)
  {
    v21 = *(qword_102637F90 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v21, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_82:
  v22 = *(v5 + 144);
  if (!v22)
  {
    v22 = *(qword_102637F90 + 144);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v22, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_85:
  v23 = *(v5 + 152);
  if (!v23)
  {
    v23 = *(qword_102637F90 + 152);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v23, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_91;
  }

LABEL_88:
  v24 = *(v5 + 160);
  if (!v24)
  {
    v24 = *(qword_102637F90 + 160);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_94;
  }

LABEL_91:
  v25 = *(v5 + 168);
  if (!v25)
  {
    v25 = *(qword_102637F90 + 168);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_97;
  }

LABEL_94:
  v26 = *(v5 + 176);
  if (!v26)
  {
    v26 = *(qword_102637F90 + 176);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_97:
  v27 = *(v5 + 184);
  if (!v27)
  {
    v27 = *(qword_102637F90 + 184);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_100:
  v28 = *(v5 + 192);
  if (!v28)
  {
    v28 = *(qword_102637F90 + 192);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_103:
  v29 = *(v5 + 200);
  if (!v29)
  {
    v29 = *(qword_102637F90 + 200);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_106:
  v30 = *(v5 + 208);
  if (!v30)
  {
    v30 = *(qword_102637F90 + 208);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_109:
  v31 = *(v5 + 216);
  if (!v31)
  {
    v31 = *(qword_102637F90 + 216);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_112:
  v32 = *(v5 + 224);
  if (!v32)
  {
    v32 = *(qword_102637F90 + 224);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v32, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_118;
  }

LABEL_115:
  v33 = *(v5 + 232);
  if (!v33)
  {
    v33 = *(qword_102637F90 + 232);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v33, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

LABEL_118:
  v34 = *(v5 + 240);
  if (!v34)
  {
    v34 = *(qword_102637F90 + 240);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v34, a2, a4);
  if ((*(v5 + 396) & 0x80000000) != 0)
  {
LABEL_121:
    v35 = *(v5 + 248);
    if (!v35)
    {
      v35 = *(qword_102637F90 + 248);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v35, a2, a4);
  }

LABEL_124:
  v36 = *(v5 + 400);
  if (v36)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v36 = *(v5 + 400);
    if ((v36 & 2) == 0)
    {
LABEL_126:
      if ((v36 & 4) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_138;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_126;
  }

  v37 = *(v5 + 264);
  if (!v37)
  {
    v37 = *(qword_102637F90 + 264);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3C, v37, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 4) == 0)
  {
LABEL_127:
    if ((v36 & 8) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 304), a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 8) == 0)
  {
LABEL_128:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_142;
  }

LABEL_139:
  v38 = *(v5 + 272);
  if (!v38)
  {
    v38 = *(qword_102637F90 + 272);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E, v38, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x10) == 0)
  {
LABEL_129:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_145;
  }

LABEL_142:
  v39 = *(v5 + 280);
  if (!v39)
  {
    v39 = *(qword_102637F90 + 280);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, v39, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x20) == 0)
  {
LABEL_130:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_148;
  }

LABEL_145:
  v40 = *(v5 + 288);
  if (!v40)
  {
    v40 = *(qword_102637F90 + 288);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x40, v40, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x40) == 0)
  {
LABEL_131:
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_151;
  }

LABEL_148:
  v41 = *(v5 + 296);
  if (!v41)
  {
    v41 = *(qword_102637F90 + 296);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, v41, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x80) == 0)
  {
LABEL_132:
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_154;
  }

LABEL_151:
  v42 = *(v5 + 312);
  if (!v42)
  {
    v42 = *(qword_102637F90 + 312);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x42, v42, a2, a4);
  if ((*(v5 + 400) & 0x100) != 0)
  {
LABEL_154:
    v43 = *(v5 + 320);
    if (!v43)
    {
      v43 = *(qword_102637F90 + 320);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x43, v43, a2, a4);
  }

LABEL_157:
  if (*(v5 + 336) >= 1)
  {
    v44 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(*(v5 + 328) + 4 * v44++), a2, a4);
    }

    while (v44 < *(v5 + 336));
  }

  v45 = *(v5 + 400);
  if ((v45 & 0x400) != 0)
  {
    v46 = *(v5 + 344);
    if (!v46)
    {
      v46 = *(qword_102637F90 + 344);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x47, v46, a2, a4);
    v45 = *(v5 + 400);
  }

  if ((v45 & 0x800) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 308), a2, a4);
  }

  if (*(v5 + 360) >= 1)
  {
    v47 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(*(v5 + 352) + 4 * v47++), a2, a4);
    }

    while (v47 < *(v5 + 360));
  }

  v48 = *(v5 + 400);
  if ((v48 & 0x2000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4A, *(v5 + 368), a2, a4);
    v48 = *(v5 + 400);
    if ((v48 & 0x4000) == 0)
    {
LABEL_171:
      if ((v48 & 0x8000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_176;
    }
  }

  else if ((v48 & 0x4000) == 0)
  {
    goto LABEL_171;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 372), a2, a4);
  v48 = *(v5 + 400);
  if ((v48 & 0x8000) == 0)
  {
LABEL_172:
    if ((v48 & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_179;
  }

LABEL_176:
  v49 = *(v5 + 376);
  if (!v49)
  {
    v49 = *(qword_102637F90 + 376);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4C, v49, a2, a4);
  if ((*(v5 + 400) & 0x10000) != 0)
  {
LABEL_179:
    v50 = *(v5 + 384);
    if (!v50)
    {
      v50 = *(qword_102637F90 + 384);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4D, v50, a2, a4);
  }

  return result;
}

void *sub_100133DD0(void *result)
{
  v1 = result;
  v2 = result[32];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_102637F90 != result)
  {
    v4 = result[3];
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

    v33 = v1[33];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = v1[34];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = v1[35];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = v1[36];
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = v1[37];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = v1[39];
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = v1[40];
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v1[43];
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = v1[47];
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    result = v1[48];
    if (result)
    {
      v42 = *(*result + 8);

      return v42();
    }
  }

  return result;
}

void sub_10013450C(uint64_t a1, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  v3 = (*(*a2 + 72))(a2);
  sub_1000166F8(__p, v3);
  wireless_diagnostics::google::protobuf::MessageLite::SerializeToArray(a2, __p[0]);
  [qword_102666C00 sendRequestWithBytes:? size:?];
  ++qword_102666C08;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1001345B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100134638(_BYTE *a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 <= 14)
    {
      v7 = sub_100134980(a1, &a1[a2]);
      v8 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v5 = __DataStorage.init(bytes:length:)();
      v6 = v5;
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v7 = swift_allocObject();
        *(v7 + 16) = 0;
        *(v7 + 24) = a2;
        v8 = v6 | 0x8000000000000000;
      }

      else
      {
        v7 = a2 << 32;
        v8 = v5 | 0x4000000000000000;
      }

      v2 = v4;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xC000000000000000;
  }

  if (*(v2 + OBJC_IVAR____TtC4Gnss13CLCoreGPSShim__device))
  {

    dispatch thunk of CoreGPSDevice.sendRequest(request:)();
    sub_100134768(v7, v8);
  }

  else
  {

    return sub_100134768(v7, v8);
  }
}

uint64_t sub_100134768(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1001347BC()
{
  if ((atomic_load_explicit(&qword_102666B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102666B18))
  {
    sub_1016AF8D8();
    __cxa_guard_release(&qword_102666B18);
  }

  v0 = mach_continuous_time();
  v1 = 8;
  if (!byte_102666B30)
  {
    v1 = 0;
  }

  return ((v0 >> v1) * qword_102666B38 / unk_102666B40) << v1;
}

uint64_t sub_100134860(uint64_t a1)
{
  sub_10013489C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10013489C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1004906DC((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

BOOL sub_1001348E0(unsigned int a1)
{
  result = 1;
  if (a1 > 0x32 || ((1 << a1) & 0x4000002000403) == 0)
  {
    return a1 == 75;
  }

  return result;
}

void sub_100134920(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D5A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100134980(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100134A38(uint64_t result)
{
  if (*(result + 624) != 1)
  {
    return result;
  }

  v1 = result;
  v2 = sub_100135294(result + 128);
  v3 = v2;
  if (v2 != 2)
  {
    if (v2 != 1 || *(v1 + 88) != 1 || (CLMotionActivity::isTypePedestrian() & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CLMotionActivity::isTypeDriving())
  {
LABEL_8:
    *(v1 + 188) = 2;
  }

LABEL_9:
  v4 = sub_100134EAC(v1, *(v1 + 660), *(v1 + 664));
  if (*(v1 + 626) == 1)
  {
    *(v1 + 196) = 0x200000001;
  }

  if (*(v1 + 88) == 1 && CLMotionActivity::isTypePedestrian() && v4)
  {
    *(v1 + 188) = 2;
    *(v1 + 196) = 0;
    *(v1 + 200) = 0;
  }

  if (*(v1 + 321) == 1 && (*(v1 + 465) & 1) == 0 && (CLMotionActivity::isStatic((v1 + 184)) & 1) == 0)
  {
    if (CLMotionActivity::isTypeCycling() & 1) != 0 || (CLMotionActivity::isTypeSwimming())
    {
      v5 = *(v1 + 328);
      *(v1 + 184) = v5;
      v6 = v5;
    }

    else
    {
      v6 = *(v1 + 328);
    }

    if (v6 == 19150)
    {
      v7 = *(v1 + 332);
      *(v1 + 184) = 3;
      *(v1 + 188) = v7;
    }

    if (CLMotionActivity::isTypeWheelchairPush())
    {
      v8 = *(v1 + 332);
      *(v1 + 184) = 3;
      *(v1 + 188) = v8;
    }
  }

  v9 = sub_1001352B4(v1);
  if (qword_1025D4650 != -1)
  {
    sub_10199A148();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(v1 + 184);
    v12 = *(v1 + 188);
    v13 = *(v1 + 196);
    v14 = *(v1 + 200);
    v15 = *(v1 + 628);
    v16 = *(v1 + 321);
    v17 = *(v1 + 328);
    v18 = *(v1 + 1272);
    *buf = 67242752;
    *&buf[4] = v11;
    *&buf[8] = 1026;
    *&buf[10] = v12;
    *&buf[14] = 1026;
    LODWORD(v47) = v13;
    WORD2(v47) = 1026;
    *(&v47 + 6) = v14;
    WORD5(v47) = 1026;
    HIDWORD(v47) = v4;
    *v48 = 1026;
    *&v48[2] = v9;
    *&v48[6] = 1026;
    *&v48[8] = v3;
    *&v48[12] = 1026;
    *&v48[14] = v15;
    *&v48[18] = 1026;
    *&v48[20] = v16;
    *&v48[24] = 1026;
    *&v48[26] = v17;
    *&v48[30] = 1026;
    LODWORD(v49) = v18;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#gwo,feeding,motionState,%{public}d,conf,%{public}d,mountState,%{public}d,mountStateConf,%{public}d,isRecentlyStepping,%{public}d,shouldBeInertialAiding,%{public}d,navMode,%{public}d,isAccelStuck,%{public}d,inFitnessSession,%{public}d,currentWorkoutActivity,%{public}d,shouldBeClamped,%{public}d", buf, 0x44u);
  }

  v19 = sub_10000A100(121, 2);
  if (v19)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10199A02C();
    }

    v28 = *(v1 + 184);
    v29 = *(v1 + 188);
    v30 = *(v1 + 196);
    v31 = *(v1 + 200);
    v32 = *(v1 + 628);
    v33 = *(v1 + 321);
    v34 = *(v1 + 328);
    v35 = *(v1 + 1272);
    LODWORD(v38) = 67242752;
    DWORD1(v38) = v28;
    WORD4(v38) = 1026;
    *(&v38 + 10) = v29;
    HIWORD(v38) = 1026;
    LODWORD(v39) = v30;
    WORD2(v39) = 1026;
    *(&v39 + 6) = v31;
    WORD5(v39) = 1026;
    HIDWORD(v39) = v4;
    *v40 = 1026;
    *&v40[2] = v9;
    *&v40[6] = 1026;
    *&v40[8] = v3;
    *&v40[12] = 1026;
    *&v40[14] = v32;
    *&v40[18] = 1026;
    *&v40[20] = v33;
    *&v40[24] = 1026;
    *&v40[26] = v34;
    *&v40[30] = 1026;
    LODWORD(v41) = v35;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gwo,feeding,motionState,%{public}d,conf,%{public}d,mountState,%{public}d,mountStateConf,%{public}d,isRecentlyStepping,%{public}d,shouldBeInertialAiding,%{public}d,navMode,%{public}d,isAccelStuck,%{public}d,inFitnessSession,%{public}d,currentWorkoutActivity,%{public}d,shouldBeClamped,%{public}d", &v38, 68);
    v37 = v36;
    v19 = sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceMotion::updateContext()", "%s\n", v36);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  CLMotionActivity::getInit(v19);
  v20 = *(v1 + 296);
  v51 = *(v1 + 280);
  *v52 = v20;
  *&v52[16] = *(v1 + 312);
  v22 = *(v1 + 232);
  *v48 = *(v1 + 216);
  v21 = *v48;
  *&v48[16] = v22;
  v23 = *(v1 + 264);
  v49 = *(v1 + 248);
  v24 = v49;
  v50 = v23;
  v25 = *(v1 + 200);
  *buf = *(v1 + 184);
  v26 = *buf;
  v47 = v25;
  v52[24] = *(v1 + 321);
  v52[25] = v4;
  v52[26] = v9;
  v52[27] = *(v1 + 1272);
  *(v1 + 872) = v51;
  *(v1 + 888) = v20;
  *(v1 + 808) = v21;
  *(v1 + 824) = v22;
  *(v1 + 840) = v24;
  *(v1 + 856) = v23;
  *(v1 + 776) = v26;
  *(v1 + 792) = v25;
  *(v1 + 900) = *&v52[12];
  *(v1 + 720) = sub_1000081AC();
  v43 = v51;
  v44 = *v52;
  v45 = *&v52[16];
  *v40 = *v48;
  *&v40[16] = *&v48[16];
  v41 = v49;
  v42 = v50;
  v38 = *buf;
  v39 = v47;
  v27 = *(v1 + 32);
  if (!v27)
  {
    sub_1000CF05C();
  }

  return (*(*v27 + 48))(v27, &v38);
}

BOOL sub_100134EAC(void *a1, unsigned int a2, double a3)
{
  if (!a1[89])
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = fabs(a3);
  v8 = a1[88];
  v9 = v8 + a1[89];
  v10 = a1[85];
  v11 = &v10[v9 / 0x16];
  v12 = a1[86];
  if (v12 == v10)
  {
    v14 = 0;
    v16 = 0;
    v15 = (v10 + ((2 * ((v8 * 0x2E8BA2E8BA2E8BA3uLL) >> 64)) & 0x7FFFFFFFFFFFFFF8));
    v13 = v9 % 0x16;
  }

  else
  {
    v13 = v9 % 0x16;
    v14 = v10[v9 / 0x16] + 184 * (v9 % 0x16);
    v15 = &v10[v8 / 0x16];
    v16 = *v15 + 184 * (v8 % 0x16);
  }

  v18 = Current - v7;
  v19 = v15;
LABEL_7:
  v20 = v16 - 4048;
  while (1)
  {
    if (v12 == v10)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v11 + 184 * v13;
    }

    if (v16 == v21)
    {
      v19 = &v10[v9 / 0x16];
      goto LABEL_17;
    }

    if (*(v16 + 8) >= v18)
    {
      break;
    }

    v16 += 184;
    v20 += 184;
    if (*v19 == v20)
    {
      v22 = v19[1];
      ++v19;
      v16 = v22;
      goto LABEL_7;
    }
  }

  v14 = v16;
LABEL_17:
  v23 = v12 - v10;
  if (v12 == v10)
  {
    v24 = 0;
  }

  else
  {
    v24 = *v11 + 184 * v13;
  }

  if (v14 != v24)
  {
    v25 = *(v10[(v9 - 1) / 0x16] + 46 * ((v9 - 1) % 0x16) + 6) - *(v14 + 24);
    if (v25 >= 0)
    {
      v26 = *(v10[(v9 - 1) / 0x16] + 46 * ((v9 - 1) % 0x16) + 6) - *(v14 + 24);
    }

    else
    {
      v26 = *(v14 + 24) - *(v10[(v9 - 1) / 0x16] + 46 * ((v9 - 1) % 0x16) + 6);
    }

    v17 = v26 > a2;
    if (v12 == v10)
    {
      v27 = 0;
    }

    else
    {
      v27 = *v15 + 184 * (v8 % 0x16);
    }

    sub_1009BA3B0(a1 + 84, v15, v27, v19, v14);
    goto LABEL_36;
  }

  a1[89] = 0;
  v28 = v23 >> 3;
  if ((v23 >> 3) >= 3)
  {
    do
    {
      operator delete(*v10);
      v10 = (a1[85] + 8);
      a1[85] = v10;
      v28 = (a1[86] - v10) >> 3;
    }

    while (v28 > 2);
  }

  if (v28 == 1)
  {
    v29 = 11;
  }

  else
  {
    if (v28 != 2)
    {
      v25 = 0;
      v17 = 0;
      goto LABEL_36;
    }

    v29 = 22;
  }

  v25 = 0;
  v17 = 0;
  a1[88] = v29;
LABEL_36:
  if (qword_1025D4650 != -1)
  {
    sub_10199A148();
  }

  v30 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v31 = a1[89];
    *buf = 67109632;
    v43 = v17;
    v44 = 2048;
    v45 = v31;
    v46 = 1024;
    v47 = v25;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "isStepping,%d,stepCountDequeSize,%zu,deltaCount,%d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10199A02C();
    }

    v33 = a1[89];
    v38 = 2048;
    v39 = v33;
    v40 = 1024;
    v41 = v25;
    LODWORD(v36) = 24;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "isStepping,%d,stepCountDequeSize,%zu,deltaCount,%d", &v37, v36, 67109632);
    v35 = v34;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAssistanceMotion::isStepping(uint32_t, CFTimeInterval)", "%s\n", v34);
    if (v35 != buf)
    {
      free(v35);
    }
  }

  return v17;
}

uint64_t sub_100135294(uint64_t a1)
{
  v1 = *(*a1 + 4);
  if (v1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 1);
  }
}

uint64_t sub_1001352B4(uint64_t a1)
{
  sub_10001CAF4(buf);
  LOBYTE(v29) = 0;
  v2 = sub_10001CB4C(*buf, "ForceEnableGnssInertialAiding", &v29, 0xFFFFFFFFLL);
  v3 = v2 & v29;
  if (v35)
  {
    sub_100008080(v35);
  }

  if ((v3 & 1) == 0)
  {
    if ((*(a1 + 1216) & 1) == 0)
    {
      v4 = 0;
      *(a1 + 1218) = 0;
      return v4 & 1;
    }

    if (*(a1 + 628) & 1) != 0 || (sub_10001CF3C())
    {
      v4 = 0;
      return v4 & 1;
    }

    if ((atomic_load_explicit(&qword_10265BD40, memory_order_acquire) & 1) == 0)
    {
      v27 = __cxa_guard_acquire(&qword_10265BD40);
      if (v27)
      {
        byte_10265BD3A = sub_10006FE30(v27, v28);
        __cxa_guard_release(&qword_10265BD40);
      }
    }

    if (*(a1 + 1218) == 1)
    {
      v6 = *(a1 + 196) != 1 && vabdd_f64(sub_1000081AC(), *(a1 + 616)) > 90.0;
      if (*(a1 + 88) == 1)
      {
        isTypePedestrian = CLMotionActivity::isTypePedestrian();
      }

      else
      {
        isTypePedestrian = 0;
      }

      v12 = *(a1 + 188);
      if (v12 == 2)
      {
        v13 = isTypePedestrian;
      }

      else
      {
        v13 = 0;
      }

      if ((*(a1 + 321) & 1) == 0 && (v13 & 1) == 0 && (!v6 || byte_10265BD3A == 1) && *(a1 + 1273) != 1)
      {
        goto LABEL_43;
      }

      if (qword_1025D4650 != -1)
      {
        sub_10199A02C();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 321);
        v16 = *(a1 + 1273);
        *buf = 67110144;
        *&buf[4] = v15;
        LOWORD(v35) = 1024;
        *(&v35 + 2) = isTypePedestrian;
        HIWORD(v35) = 1024;
        v36 = v12 == 2;
        v37 = 1024;
        v38 = v6;
        v39 = 1024;
        v40 = v16;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "stopINS,inFitnessSession,%d,isPedestrian,%d,isHighConf,%d,isDismounted,%d,fIsAirborne,%d", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_10199A02C();
        }

        v21 = *(a1 + 1273);
        LOWORD(v30) = 1024;
        HIWORD(v30) = isTypePedestrian;
        HIWORD(v31) = HIWORD(v6);
        v32 = 1024;
        v33 = v21;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "stopINS,inFitnessSession,%d,isPedestrian,%d,isHighConf,%d,isDismounted,%d,fIsAirborne,%d", &v29, 32, 67110144, v30, v12 == 2);
        v23 = v22;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAssistanceMotion::shouldBeInertialAiding()", "%s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      v17 = 0;
    }

    else
    {
      isTypeInVehicle = CLMotionActivity::isTypeInVehicle();
      isTypeMoving = CLMotionActivity::isTypeMoving();
      v9 = *(a1 + 196);
      if (*(a1 + 88) == 1)
      {
        v10 = CLMotionActivity::isTypePedestrian();
      }

      else
      {
        v10 = 0;
      }

      if (*(a1 + 321) & 1) != 0 || (isTypeInVehicle & 1) == 0 && (v10 & 1 | ((isTypeMoving & 1) == 0) || (*(a1 + 913)) || v9 != 1 || (*(a1 + 1273))
      {
        goto LABEL_43;
      }

      if (qword_1025D4650 != -1)
      {
        sub_10199A02C();
      }

      v18 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 184);
        v20 = *(a1 + 913);
        *buf = 67110144;
        *&buf[4] = v19;
        LOWORD(v35) = 1024;
        *(&v35 + 2) = isTypeInVehicle;
        HIWORD(v35) = 1024;
        v36 = isTypeMoving;
        v37 = 1024;
        v38 = v10;
        v39 = 1024;
        v40 = v20;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "startINS,activity,%d,isInVehicle,%d,isMoving,%d,isPedestrian,%d,isRecentlyStepping,%d", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_10199A02C();
        }

        v24 = *(a1 + 913);
        LOWORD(v30) = 1024;
        HIWORD(v30) = isTypeInVehicle;
        HIWORD(v31) = HIWORD(v10);
        v32 = 1024;
        v33 = v24;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "startINS,activity,%d,isInVehicle,%d,isMoving,%d,isPedestrian,%d,isRecentlyStepping,%d", &v29, 32, 67110144, v30, isTypeMoving);
        v26 = v25;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAssistanceMotion::shouldBeInertialAiding()", "%s\n", v25);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      v17 = 1;
    }

    *(a1 + 1218) = v17;
LABEL_43:
    v4 = *(a1 + 1218);
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

void sub_10013582C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 12) == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *(*a1 + 352) = v4;
  v5 = a1[132];
  if (v5)
  {
    v6 = *(a2 + 112);
    v28 = *(a2 + 96);
    v29 = v6;
    v30 = *(a2 + 128);
    v7 = *(a2 + 48);
    *&v26.isStanding = *(a2 + 32);
    *&v26.isVehicleConnected = v7;
    v8 = *(a2 + 80);
    *&v26.vehicleType = *(a2 + 64);
    v27 = v8;
    v9 = *(a2 + 16);
    *&v26.type = *a2;
    *&v26.mountedConfidence = v9;
    sub_100135C58(v5, &v26);
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *&v26.type = 68289282;
    LOWORD(v26.source) = 2082;
    *(&v26.source + 2) = "";
    HIWORD(v26.mountedConfidence) = 2082;
    *&v26.conservativeMountedState = "injectassistancemotion";
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", &v26, 0x1Cu);
  }

  v11 = *a1;
  v12 = *(a2 + 48);
  *&v26.isStanding = *(a2 + 32);
  *&v26.isVehicleConnected = v12;
  v13 = *(a2 + 16);
  *&v26.type = *a2;
  *&v26.mountedConfidence = v13;
  v30 = *(a2 + 128);
  v14 = *(a2 + 112);
  v28 = *(a2 + 96);
  v29 = v14;
  v15 = *(a2 + 80);
  *&v26.vehicleType = *(a2 + 64);
  v27 = v15;
  isMounted = (*(*v11 + 80))(v11, &v26);
  v17 = a1[138];
  if (v17)
  {
    v18 = *(a2 + 112);
    v28 = *(a2 + 96);
    v29 = v18;
    v30 = *(a2 + 128);
    v19 = *(a2 + 48);
    *&v26.isStanding = *(a2 + 32);
    *&v26.isVehicleConnected = v19;
    v20 = *(a2 + 80);
    *&v26.vehicleType = *(a2 + 64);
    v27 = v20;
    v21 = *(a2 + 16);
    *&v26.type = *a2;
    *&v26.mountedConfidence = v21;
    isMounted = CLMotionActivity::isMounted(&v26);
    *v17 = isMounted;
    if (*(a2 + 138) == 1)
    {
      if ((*(a1 + 1220) & 1) == 0)
      {
        sub_1001C891C(a1 + 100, sub_1002825FC, [a1[95] silo], a1, 100.0, 10.0);
        sub_10080073C(a1 + 102, sub_100281974, [a1[95] silo], a1, 100.0, 10.0);
        *(a1[138] + 56) = 0x3F847AE147AE147BLL;
        *(a1 + 1220) = 1;
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v22 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v26.type) = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "GPSSENSOR,startIns", &v26, 2u);
        }

        isMounted = sub_10000A100(121, 2);
        if (isMounted)
        {
          sub_101944F9C();
        }
      }
    }

    else if (*(a1 + 1220))
    {
      sub_100800B68((a1 + 100));
      sub_100800C1C((a1 + 102));
      *(a1 + 1220) = 0;
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v23 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v26.type) = 0;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "GPSSENSOR,stopIns", &v26, 2u);
      }

      isMounted = sub_10000A100(121, 2);
      if (isMounted)
      {
        sub_101944EC0();
      }
    }
  }

  if ((sub_10013733C(isMounted) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *&v26.type = 68289538;
      LOWORD(v26.source) = 2082;
      *(&v26.source + 2) = "";
      HIWORD(v26.mountedConfidence) = 2082;
      *&v26.conservativeMountedState = "sendAllowGnssDwellDutyCycling";
      WORD2(v26.conservativeMountedProbability) = 1026;
      *(&v26.conservativeMountedProbability + 6) = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, allow:%{public}hhd}", &v26, 0x22u);
    }

    (*(**a1 + 248))(*a1, 0);
  }

  v25 = a1[148];
  if (v25)
  {
    sub_1001375D4(v25, a2);
  }
}

void *sub_100135C58(void *result, unsigned int *a2)
{
  if (*(result + 114) == 1)
  {
    v2 = result;
    if (*(result + 112) == 1)
    {
      if (result[1])
      {
        if (qword_1025D4650 != -1)
        {
          sub_1002981A0();
        }

        v4 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v5 = *a2;
          v6 = a2[1];
          v7[0] = 67240448;
          v7[1] = v5;
          v8 = 1026;
          v9 = v6;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "DEM,feeding motion,type,%{public}d,confidence,%{public}d", v7, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101700054(a2);
        }

        return [v2[1] updateMotion:*a2 conf:a2[1]];
      }
    }
  }

  return result;
}

__n128 sub_100135D74(uint64_t a1, _OWORD *a2)
{
  v2 = a2[7];
  v7[6] = a2[6];
  v7[7] = v2;
  v7[8] = a2[8];
  v3 = a2[3];
  v7[2] = a2[2];
  v7[3] = v3;
  v4 = a2[5];
  v7[4] = a2[4];
  v7[5] = v4;
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  sub_10013582C(*(a1 + 8), v7);
  return result;
}

void sub_100135DC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1722))
  {
    return;
  }

  v4 = sub_1001347BC();
  v52 = 0;
  v5 = *(a2 + 40);
  v7 = (v5 < 0 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v5 - 1) > 0xFFFFFFFFFFFFELL;
  if (v7 || (sub_100131D4C(a1, &v52, 1, *(a2 + 40)), (v8 & 1) == 0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v10 = *(a2 + 40);
      *buf = 134349056;
      *v62 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#gpsd,injectAssistanceMotion,invalid timestamp,%{public}.1f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101776C30();
    }

    v52 = v4;
  }

  if (qword_1025D4650 != -1)
  {
    sub_100154094();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v12 = *a2;
    *buf = 67109376;
    *v62 = v12;
    *&v62[4] = 2048;
    *&v62[6] = v4 - v52;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gpsd,feeding motionState,%d,ageNs,%llu", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v39 = *a2;
    v55[0] = 67109376;
    v55[1] = v39;
    v56 = 2048;
    v57 = v4 - v52;
    LODWORD(v51) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gpsd,feeding motionState,%d,ageNs,%llu", v55, v51);
    v41 = v40;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectAssistanceMotion(CLMotionActivity)", "%s\n", v40);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  sub_1001324C4(v55);
  if (!sub_100132484(0x12u))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v58 = 18;
  v60 |= 0x404u;
  v13 = v59;
  if (!v59)
  {
    operator new();
  }

  v14 = v52;
  *(v59 + 32) |= 1u;
  *(v13 + 8) = v14;
  v15 = *a2;
  if (*a2 > 11804)
  {
    if (v15 <= 15651)
    {
      if (v15 > 15329)
      {
        if ((v15 - 15560) <= 0x3C && ((1 << (v15 + 56)) & 0x1004000100000001) != 0 || (v15 - 15330) <= 0x1E && ((1 << (v15 + 30)) & 0x40100001) != 0)
        {
          goto LABEL_106;
        }

        v17 = 15460;
      }

      else if (v15 <= 15099)
      {
        if (v15 > 15029)
        {
          if (v15 == 15030)
          {
            goto LABEL_106;
          }

          v17 = 15055;
        }

        else
        {
          if (v15 == 11805)
          {
            goto LABEL_106;
          }

          v17 = 12150;
        }
      }

      else
      {
        if ((v15 - 15100) <= 0x32 && ((1 << (v15 + 4)) & 0x4000000000401) != 0 || v15 == 15230)
        {
          goto LABEL_106;
        }

        v17 = 15250;
      }

      goto LABEL_105;
    }

    if (v15 <= 18239)
    {
      if (v15 <= 15732)
      {
        if ((v15 - 15652) > 0x3B || ((1 << (v15 - 36)) & 0x800000000840101) == 0)
        {
          goto LABEL_151;
        }

LABEL_106:
        *(a1 + 2228) = 0;
        if (sub_1000183C8(0))
        {
          v24 = 0;
          goto LABEL_108;
        }

        goto LABEL_175;
      }

      if (v15 <= 18049)
      {
        if (v15 == 15733)
        {
          goto LABEL_106;
        }

        v17 = 17150;
      }

      else
      {
        if (v15 == 18050 || v15 == 18100)
        {
          goto LABEL_106;
        }

        v17 = 18200;
      }

      goto LABEL_105;
    }

    if (v15 > 90120)
    {
      if (v15 <= 515620)
      {
        if ((v15 - 90121) < 2)
        {
          goto LABEL_106;
        }

        if (v15 != 90603)
        {
          goto LABEL_151;
        }

        v16 = 7;
        goto LABEL_161;
      }

      if (v15 == 515621 || v15 == 515652)
      {
        goto LABEL_106;
      }

      v17 = 519150;
LABEL_105:
      if (v15 == v17)
      {
        goto LABEL_106;
      }

LABEL_151:
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v37 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *a2;
        *buf = 67240192;
        *v62 = v38;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "#gpsd,Unhandled activity type case,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017700B0(buf);
        v48 = *a2;
        v53 = 67240192;
        v54 = v48;
        LODWORD(v51) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gpsd,Unhandled activity type case,%{public}d", &v53, v51);
        v50 = v49;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectAssistanceMotion(CLMotionActivity)", "%s\n", v49);
        if (v50 != buf)
        {
          free(v50);
        }
      }

      v15 = 0;
      *(a1 + 2228) = 0;
      goto LABEL_162;
    }

    if (v15 > 19089)
    {
      if (v15 == 19090)
      {
        goto LABEL_106;
      }

      v17 = 19150;
      goto LABEL_105;
    }

    if (v15 != 18240)
    {
      v17 = 19030;
      goto LABEL_105;
    }

    v21 = *(a2 + 4) == 2;
    v22 = 6;
    goto LABEL_158;
  }

  if (v15 > 2009)
  {
    if (((v15 - 2010) > 0x3D || ((1 << (v15 + 38)) & 0x2488004000005401) == 0) && ((v15 - 2101) > 0x31 || ((1 << (v15 - 53)) & 0x2000000000011) == 0) && (v15 - 3015) >= 2)
    {
      goto LABEL_151;
    }

    goto LABEL_106;
  }

  if (v15 > 9)
  {
    v18 = v15 - 41;
    if ((v15 - 41) > 0x3B)
    {
      goto LABEL_57;
    }

    if (((1 << v18) & 0x800000003C00000) != 0)
    {
      goto LABEL_106;
    }

    if (((1 << v18) & 0x300001) != 0)
    {
LABEL_72:
      *(a1 + 2228) = 2;
      v20 = sub_1000183C8(3u);
      goto LABEL_97;
    }

    if (((1 << v18) & 0x8800) == 0)
    {
LABEL_57:
      if (v15 == 10)
      {
        if (*(a2 + 4) >= 1)
        {
          *(a1 + 2228) = 4;
        }

        v15 = 1;
        goto LABEL_162;
      }

      if (v15 != 11)
      {
        goto LABEL_151;
      }

      v19 = *(a2 + 4);
      if (v19 >= 1)
      {
        *(a1 + 2228) = 4;
      }

      goto LABEL_148;
    }

LABEL_93:
    if (*(a2 + 4) == 2)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    *(a1 + 2228) = v23;
    v20 = sub_1000183C8(3u);
LABEL_97:
    if (v20)
    {
      v24 = 3;
LABEL_108:
      *(v13 + 32) |= 4u;
      *(v13 + 20) = v24;
      goto LABEL_109;
    }

LABEL_175:
    v42 = "::proto::gnss::MovingState_IsValid(value)";
    v43 = 10115;
    v44 = "set_moving_state";
LABEL_176:
    __assert_rtn(v44, "GpsdProtocol.pb.h", v43, v42);
  }

  if (v15 > 4)
  {
    if (v15 > 6)
    {
      if (v15 == 8)
      {
        if ((*(a2 + 4) - 1) < 2)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        goto LABEL_161;
      }

      goto LABEL_72;
    }

    if (v15 != 5)
    {
      v21 = *(a2 + 4) == 2;
      v22 = 5;
LABEL_158:
      if (v21)
      {
        v16 = v22;
      }

      else
      {
        v16 = 2;
      }

LABEL_161:
      *(a1 + 2228) = v16;
      v15 = 3;
      goto LABEL_162;
    }

    goto LABEL_93;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      if (v15 != 3)
      {
        if (*(a2 + 4) == 2)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        goto LABEL_161;
      }

      goto LABEL_72;
    }

    v19 = *(a2 + 4);
LABEL_148:
    if (v19 == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_162;
  }

  if (!v15)
  {
    goto LABEL_106;
  }

  if (v15 != 1)
  {
    goto LABEL_151;
  }

LABEL_162:
  sub_100131F04(v13, v15);
LABEL_109:
  v25 = sub_100131F7C(*(a1 + 2228));
  if (!sub_100134974(v25))
  {
    v42 = "::proto::gnss::MotionActivityContext_IsValid(value)";
    v43 = 10092;
    v44 = "set_context";
    goto LABEL_176;
  }

  *(v13 + 32) |= 2u;
  *(v13 + 16) = v25;
  v26 = *(a2 + 4);
  if (v26 == 2)
  {
    v27 = sub_1001348E0(0x4Bu);
    if (v27)
    {
      v28 = 75;
      goto LABEL_126;
    }

    goto LABEL_172;
  }

  if (v26 == 1)
  {
    v27 = sub_1001348E0(0x32u);
    if (v27)
    {
      v28 = 50;
      goto LABEL_126;
    }

    goto LABEL_172;
  }

  if (v26)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a2 + 4);
      *buf = 67240192;
      *v62 = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#gpsd,Unhandled activity confidence case,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017700B0(buf);
      v45 = *(a2 + 4);
      v53 = 67240192;
      v54 = v45;
      LODWORD(v51) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gpsd,Unhandled activity confidence case,%{public}d", &v53, v51);
      v47 = v46;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectAssistanceMotion(CLMotionActivity)", "%s\n", v46);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    v27 = sub_1001348E0(1u);
    if (v27)
    {
      v28 = 1;
      goto LABEL_126;
    }

    goto LABEL_172;
  }

  v27 = sub_1001348E0(0x19u);
  if (!v27)
  {
LABEL_172:
    v42 = "::proto::gnss::Reliability_IsValid(value)";
    v43 = 10138;
    v44 = "set_motion_reliability";
    goto LABEL_176;
  }

  v28 = 25;
LABEL_126:
  *(v13 + 32) |= 8u;
  *(v13 + 24) = v28;
  *(a1 + 344) = sub_100136AC8(v27, *(v13 + 16));
  v31 = *(v13 + 20) - 1;
  if (v31 > 2)
  {
    v32 = 0;
  }

  else
  {
    v32 = dword_101DB9D98[v31];
  }

  *(a1 + 348) = v32;
  sub_10013256C(a1, v55);
  sub_100133DCC(v55);
  if (qword_1025D4650 != -1)
  {
    sub_100154094();
  }

  v33 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a2 + 12);
    *buf = 67109120;
    *v62 = v34;
    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#gpsd,feeding mountState,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101776D24(a2);
  }

  sub_1001324C4(buf);
  if (!sub_100132484(0x13u))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v63 = 19;
  v65 |= 0x804u;
  v35 = v64;
  if (!v64)
  {
    operator new();
  }

  *(v64 + 24) |= 1u;
  *(v35 + 8) = v14;
  if (*(a2 + 12) == 1)
  {
    v36 = 2;
  }

  else
  {
    v36 = 3;
  }

  if (!sub_1007206F0(v36))
  {
    __assert_rtn("set_mount_state", "GpsdProtocol.pb.h", 10187, "::proto::gnss::DeviceMountState_IsValid(value)");
  }

  *(v35 + 24) |= 2u;
  *(v35 + 16) = v36;
  sub_10013256C(a1, buf);
  sub_100133DCC(buf);
}
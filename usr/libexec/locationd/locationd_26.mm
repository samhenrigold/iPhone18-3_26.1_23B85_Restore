uint64_t *sub_1001B3BFC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001ACED8(result, a4);
  }

  return result;
}

void sub_1001B3C5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B3C78(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_1001A1980(a1, a2);
  }

  sub_10028C64C();
}

void sub_1001B3CCC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1001B3D04(a1);

  operator delete();
}

void sub_1001B3D04(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B8B50;
  if (qword_102637FD8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t sub_1001B3D90(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 184) < 0x39) & (0x10000000000000BuLL >> (dword_1026592D0 + 72));
}

void sub_1001B3DF8(uint64_t a1, void *a2, void *a3, int a4)
{
  while (1)
  {
    [a3 machContinuousTimeSec];
    v9 = v8;
    [a2 machContinuousTimeSec];
    v11 = v9 - v10;
    [objc_msgSend_location(a3) coordinate];
    v13 = v12;
    [objc_msgSend_location(a3) coordinate];
    v15 = v14;
    [objc_msgSend_location(a2) coordinate];
    v17 = v16;
    [objc_msgSend_location(a2) coordinate];
    sub_100109D18((a1 + 72), v13, v15, v17, v18, 0.0);
    if (v11 <= *a1)
    {
      break;
    }

    if (v19 <= *(a1 + 8))
    {
      break;
    }

    [a2 machContinuousTimeSec];
    v21 = (*(**(a1 + 32) + 56))(*(a1 + 32), v11 * 0.5 + v20);
    if (!v21 || *(a1 + 24) <= a4)
    {
      break;
    }

    v22 = v21;
    [objc_msgSend_location(v21) horizontalAccuracy];
    if (v23 < *(a1 + 16))
    {
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      if (v25 >= v24)
      {
        v27 = *(a1 + 48);
        v28 = (v25 - v27) >> 3;
        if ((v28 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v29 = v24 - v27;
        v30 = v29 >> 2;
        if (v29 >> 2 <= (v28 + 1))
        {
          v30 = v28 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (v31)
        {
          sub_1003EE744(a1 + 48, v31);
        }

        *(8 * v28) = v22;
        v26 = 8 * v28 + 8;
        v32 = *(a1 + 48);
        v33 = *(a1 + 56) - v32;
        v34 = (8 * v28 - v33);
        memcpy(v34, v32, v33);
        v35 = *(a1 + 48);
        *(a1 + 48) = v34;
        *(a1 + 56) = v26;
        *(a1 + 64) = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        *v25 = v22;
        v26 = (v25 + 1);
      }

      *(a1 + 56) = v26;
    }

    sub_1001B3DF8(a1, a2, v22, ++a4);
    a2 = v22;
  }
}

BOOL sub_1001B4008(void *a1, void *a2)
{
  [a1 machContinuousTimeSec];
  v4 = v3;
  [a2 machContinuousTimeSec];
  return v4 < v5;
}

void sub_1001B4048(uint64_t a1, int a2, _BYTE *a3, double *a4, double *a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a9 > 0.0 && (a8 < -450.0 || a8 > 8850.0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v20 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 68289282;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2050;
      v37 = a8;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition bad altitude, altitude:%{public}f}", &v32, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0.0;
    *a5 = 3000.0;
  }

  else
  {
    *a4 = a8;
    v19 = 3000.0;
    if (a9 <= 3000.0)
    {
      v19 = a9;
    }

    *a5 = v19;
    if (a9 <= 0.0)
    {
      *a4 = 0.0;
      *a5 = 3000.0;
      *a3 = 0;
    }

    else
    {
      if ((a2 - 1) > 0xFFFFFFFD)
      {
        *a5 = sqrt(v19 * v19 + 900.0);
      }

      else
      {
        *a4 = *a4 + a10;
      }

      *a3 = 1;
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v21 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v22 = *a4;
        v32 = 68289795;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2049;
        v37 = a8;
        v38 = 2049;
        v39 = v22;
        v40 = 2049;
        v41 = a10;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition converted MSL alt to WGS84, altMsl:%{private}.3f, altWGS84:%{private}.3f, undulation:%{private}.3f}", &v32, 0x30u);
      }

      if (*(a1 + 11768) == 1)
      {
        if (a9 <= 0.0 || a9 > 2.33)
        {
          if (a9 <= 2.33)
          {
            v23 = *a5;
          }

          else
          {
            v23 = floor(a9 / 2.33) * 2.33;
          }
        }

        else
        {
          v23 = 2.33;
        }

        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v29 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v30 = *a4;
          v31 = *a5;
          v32 = 68290307;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2053;
          v37 = a6;
          v38 = 2053;
          v39 = a7;
          v40 = 2049;
          v41 = v30;
          v42 = 2050;
          v43 = v31;
          v44 = 2050;
          v45 = v23;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, verticalAccuracyScalingDuringEmergency, lat:%{sensitive}.6f, lon:%{sensitive}.6f, altWGS84:%{private}.2f, priorVunc:%{public}.2f, newVunc:%{public}.2f}", &v32, 0x44u);
        }

        *a5 = v23;
      }

      else
      {
        v24 = 3.0;
        if (*(a1 + 10044) > 0.0)
        {
          v25 = sub_1001CCA3C(a1 + 10024, a1 + 10184);
          if (v25 >= 30.0 || v25 <= 0.0)
          {
            v24 = 3.0;
          }

          else
          {
            v24 = 15.0;
          }
        }

        if (*a5 > 0.0 && *a5 < v24)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v27 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            v28 = *a4;
            v32 = 68290307;
            v33 = 0;
            v34 = 2082;
            v35 = "";
            v36 = 2053;
            v37 = a6;
            v38 = 2053;
            v39 = a7;
            v40 = 2049;
            v41 = v28;
            v42 = 2050;
            v43 = a9;
            v44 = 2050;
            v45 = v24;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition ApplyingVuncLowerBound, lat:%{sensitive}.7f, lon:%{sensitive}.7f, altWGS84:%{private}.2f, priorVunc:%{public}.1f, vuncLowerBound:%{public}.1f}", &v32, 0x44u);
          }

          *a5 = v24;
        }
      }
    }
  }
}

void sub_1001B44C0(_OWORD *a1, uint64_t a2)
{
  *(*a1 + 1336) = sub_1001B4678(*(a2 + 4), *(a2 + 12));
  *(*a1 + 1337) = sub_1001B4788(*(a2 + 4), *(a2 + 12)) != 0;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5 = LocationLogEncryptionDataSize();
    v6 = LocationLogEncryptionEncryptData();
    v7 = *(*a1 + 1336);
    v8 = *(a2 + 824);
    v9[0] = 68290307;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "Injecting position assistance to GNSS platform";
    v14 = 1040;
    v15 = v5;
    v16 = 2098;
    v17 = v6;
    v18 = 1025;
    v19 = v7;
    v20 = 1026;
    v21 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, location:%{public, location:Encrypted_CLClientLocation}.*P, isIndia:%{private}hhd, isCPI:%{public}hhd}", v9, 0x38u);
  }

  (*(**a1 + 192))(*a1, a2);
  sub_100181FF8(a1 + 172, a2, *(a2 + 768) != 0);
}

uint64_t sub_1001B4788(double a1, double a2)
{
  if (a2 > 134.82 || a2 < 73.48 || a1 < 18.15 || a1 > 53.6)
  {
    return 0;
  }

  if (a1 <= 42.3 && a2 <= 119.3 && a2 >= 107.1 || a1 <= 42.3 && a1 >= 25.3 && a2 <= 123.45 && a2 >= 119.3 || a1 >= 42.3 && a2 <= 129.2 && a1 <= 49.34 && a2 >= 119.93 || a2 <= 107.1 && a2 >= 98.76 && a1 >= 23.39 && a1 <= 41.58 || a1 <= 42.6 && a2 <= 98.76 && a1 >= 28.39 && a2 >= 85.19 || a2 <= 90.66 && a2 >= 80.81 && a1 >= 42.6 && a1 <= 45.2 || a2 <= 101.54 && a2 >= 99.4 && a1 >= 22.06 && a1 <= 23.39 || a2 <= 119.93 && a1 >= 42.3 && a1 <= 44.74 && a2 >= 111.924 || a2 <= 119.93 && a2 >= 116.55 && a1 >= 44.74 && a1 <= 46.35 || a2 <= 133.09 && a2 >= 129.2 && a1 >= 45.23 && a1 <= 47.66 || a2 <= 125.95 && a2 >= 120.78 && a1 >= 49.34 && a1 <= 52.86 || a2 >= 123.45 && a1 <= 42.4 && a2 <= 126.51 && a1 >= 41.38 || a2 <= 85.19 && a2 >= 79.24 && a1 >= 31.07 && a1 <= 41.73 || a2 <= 85.19 && a1 <= 42.6 && a1 >= 41.73 && a2 >= 80.28 || a2 >= 123.45 && a1 >= 40.9 && a1 <= 41.38 && a2 <= 125.97 || a2 >= 123.45 && a1 >= 40.47 && a1 <= 40.9 && a2 <= 125.0 || a2 <= 120.15 && a2 >= 119.2 && a1 >= 24.78 && a1 <= 25.4)
  {
    return 1;
  }

  if ((a2 > 108.15 || a2 < 97.511 || a1 < 21.14 || a1 > 28.39) && (a2 > 97.511 || a2 < 78.33 || a1 < 27.29 || a1 > 32.7) && (a1 < 32.7 || a2 > 79.24 || a1 > 41.73) && (a1 > 49.16 || a2 > 96.06 || a1 < 41.73 || a2 < 79.24) && (a1 > 45.45 || a2 < 96.06 || a2 > 115.52 || a1 < 41.38) && (a1 < 39.6 || a2 < 115.52) && (a1 < 21.7 || a1 > 25.3 || a2 > 122.5 || a2 < 119.3))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1001B4D48(void *a1)
{
  if (a1 < 5)
  {
    return dword_101DA8DF4[a1];
  }

  if (qword_1025D4650 != -1)
  {
    sub_101621394();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for GNSS::ReliabilityIndication", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101622994(a1);
  }

  return 1;
}

uint64_t sub_1001B4E38(unsigned int a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B4E44(uint64_t result)
{
  *result = &off_1024B8B50;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1001B4E70(uint64_t a1)
{
  *a1 = off_10246D5A8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  return result;
}

uint64_t sub_1001B4EAC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 36);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_20;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102637FD8 + 8);
    }

    v7 = sub_1001B4F8C(v6, a2);
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
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 16);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  }

LABEL_20:
  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_1001B4F8C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v6 = *(a1 + 72);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 96);
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
      if ((v3 & 0x200) == 0)
      {
LABEL_21:
        if ((v3 & 0x400) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    v8 = *(a1 + 76);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 96);
    }

    else
    {
      v9 = 2;
    }

    v5 = (v9 + v5);
    if ((v3 & 0x400) == 0)
    {
LABEL_22:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_41;
      }

LABEL_35:
      v10 = *(a1 + 88);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      }

      else
      {
        v11 = 2;
      }

      v5 = (v11 + v5);
      goto LABEL_41;
    }

LABEL_34:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 80), a2) + 1;
    if ((*(a1 + 96) & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_41:
  *(a1 + 92) = v5;
  return v5;
}

uint64_t sub_1001B50E4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637FD8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, v8, a2, a4);
}

uint64_t sub_1001B519C(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 96);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(v5 + 80), a2, a4);
    if ((*(v5 + 96) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_25:
  v7 = *(v5 + 88);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, v7, a2, a4);
}

void sub_1001B5324(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A772C8();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssProvider,startLocation", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A79754();
  }

  [*(a1 + 3248) setNextFireDelay:30.0];
  [*(a1 + 3256) setNextFireDelay:1.0 interval:1.0];
  if ((*(a1 + 3720) & 1) == 0)
  {
    [*(*(a1 + 3712) + 16) register:*(*(a1 + 3712) + 8) forNotification:27 registrationInfo:0];
    *(a1 + 3720) = 1;
  }

  sub_1001B5420(a1);
  sub_1001B5570(a1 + 120);
  *(a1 + 3672) = sub_1000081AC();
  sub_1001C577C(a1, (a1 + 3672));
}

void sub_1001B5420(_BYTE *result)
{
  if (result[3320])
  {
    v2 = 1;
  }

  else
  {
    v3 = 0;
    v2 = sub_10000608C(result, &v3, 1) != 0;
  }

  if (result[3321] != v2)
  {
    sub_1001B5488(result, v2);
  }
}

void sub_1001B5488(_BYTE *a1, char a2)
{
  sub_100021AFC(v5);
  v8 = 1;
  v9 = a2;
  v4 = 11;
  (*(*a1 + 152))(a1, &v4, v5, 1, 0xFFFFFFFFLL, 0);
  a1[3321] = a2;

  if (v12)
  {
    sub_100008080(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v7)
  {
    sub_100008080(v7);
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_1001B555C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B5570(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "clientStart";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  *(a1 + 744) = 1;
  return sub_1001BF630(a1 + 2576, 2);
}

void *sub_1001B5660@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 0x11)
  {
    v2 = "EventUnknown";
  }

  else
  {
    v2 = (&off_102474380)[a1];
  }

  return sub_10000EC00(a2, v2);
}

uint64_t sub_1001B568C(uint64_t *a1, uint64_t a2)
{
  if (a2 <= 6)
  {
    switch(a2)
    {
      case 2:
        goto LABEL_16;
      case 4:
        v5 = *a1;
        if (*a1)
        {
          (*(*v5 + 32))(v5);
        }

        return 0;
      case 5:
        sub_1007FD02C(a1, a2);
        goto LABEL_16;
    }

    return 0;
  }

  if (a2 > 0x10)
  {
    return 0;
  }

  if (((1 << a2) & 0x2A80) == 0)
  {
    if (a2 == 15)
    {
      sub_1007FD0BC(a1);
    }

    else if (a2 == 16)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v3 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Debounce Timeout event in Idle state", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194130C();
      }
    }

    return 0;
  }

LABEL_16:

  return sub_1001BCEDC(a1);
}

BOOL sub_1001B57D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FDD0(a1, a2);
  if (v2)
  {
    v2 = sub_10006FEAC(v2, v3);
    if (!v2)
    {
      return 1;
    }
  }

  if ((v4 = sub_10006FEAC(v2, v3)) || (v5 = sub_100718F78(v4)))
  {
    return 1;
  }

  else
  {
    v16 = 0;
    v9 = sub_1000733FC(v5, v6);
    if (v9 & 1) != 0 || (v11 = sub_1000734AC(v9, v10), (v11) || (v13 = sub_10006FF98(v11, v12)) || sub_100718F78(v13))
    {
      sub_10001CAF4(&v14);
      sub_10001CB4C(v14, "GpsdEmergency", &v16, 0xFFFFFFFFLL);
      if (v15)
      {
        sub_100008080(v15);
      }

      return v16;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1001B5884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001B589C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000733FC(a1, a2);
  if (v2)
  {
    return 1;
  }

  v4 = sub_1000734AC(v2, v3);
  if (v4)
  {
    return 1;
  }

  v6 = sub_10006FE64(v4, v5);
  if (v6)
  {
    return 1;
  }

  return sub_100718F78(v6);
}

uint64_t *sub_1001B58E4(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_1001B59B8(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 1026;
    v8 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssStopTimer, run:%{public}hhd}", v4, 0x18u);
  }

  sub_1001C04E8((a1 + 2576), 16);
  *(a1 + 768) = 0;
  v3 = *(a1 + 1136);
  if (v3)
  {
    sub_1001BD68C(v3, 3, 0);
  }
}

uint64_t sub_1001B5AB4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1001B5C18(a1, 0, a2);
  v5 = a1[2412];
  v6 = a1[2392];
  v7 = v6 ^ 1;
  if (((v5 ^ 1) & 1) != 0 || v7)
  {
    v9 = v5 ^ 1 | v6;
    if (v5 | v7)
    {
      v10 = 4;
    }

    else
    {
      v10 = 3;
    }

    if (v9 == 1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  sub_1001B5C18(a1, v8, v2);
  if (a1[2506] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[2412];
      v13 = a1[2392];
      v15[0] = 67174913;
      v15[1] = v12;
      v16 = 1025;
      v17 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gnssca,updateGnssDailyUseMetricsAtEventEnd,isDisplayOn,%{private}d,isOutsideVisit,%{private}d", v15, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB4A8();
    }
  }

  return v4;
}

uint64_t sub_1001B5C18(uint64_t a1, int a2, int a3)
{
  v21 = a3;
  v22 = a2;
  result = sub_1000735F4((a1 + 2304), &v22);
  if (!result)
  {
    return result;
  }

  v5 = sub_1000735F4((a1 + 2304), &v22);
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = sub_1000735F4(v5 + 3, &v21);
  if (!sub_1000735F4((a1 + 2304), &v22))
  {
    goto LABEL_31;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1000735F4((a1 + 2304), &v22);
  if (!v7 || (v8 = sub_1000735F4(v7 + 3, &v21)) == 0)
  {
LABEL_31:
    sub_1000432E8("unordered_map::at: key not found");
  }

  v9 = v8;
  if (*(v8 + 40) != 1)
  {
    return 0;
  }

  *(v8 + 40) = 0;
  v10 = sub_1000081AC() - *(v8 + 4);
  if (v10 >= 0.0)
  {
    *(v9 + 3) = v10 + *(v9 + 3);
    if (*(a1 + 2506) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v12 = v9[3];
        *buf = 67175425;
        v32 = v22;
        v33 = 1025;
        v34 = v21;
        v35 = 2049;
        v36 = v10;
        v37 = 2049;
        v38 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gnssca,updateGnssSessionDataAtEventEnd,metricsContext,%{private}d,eventType,%{private}d,eventDuration_s,%{private}.1lf,totalDailyUsage_s,%{private}.1lf", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v18 = v9[3];
        v23 = 67175425;
        v24 = v22;
        v25 = 1025;
        v26 = v21;
        v27 = 2049;
        v28 = v10;
        v29 = 2049;
        v30 = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssca,updateGnssSessionDataAtEventEnd,metricsContext,%{private}d,eventType,%{private}d,eventDuration_s,%{private}.1lf,totalDailyUsage_s,%{private}.1lf", &v23, 34);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAWD::updateGnssSessionDataAtEventEnd(const DailyUseMetricsContext, const GNSS::GnssSessionEventType)", "%s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }
    }

    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016C8BF0();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v14 = *(v9 + 4);
    *buf = 67175169;
    v32 = v22;
    v33 = 1025;
    v34 = v21;
    v35 = 2049;
    v36 = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#gnssca,updateGnssSessionDataAtEventEnd,start time in future,metricsContext,%{private}d,eventType,%{private}d,startTime,%{private}.1lf", buf, 0x18u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v15 = *(v9 + 4);
    v23 = 67175169;
    v24 = v22;
    v25 = 1025;
    v26 = v21;
    v27 = 2049;
    v28 = v15;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "#gnssca,updateGnssSessionDataAtEventEnd,start time in future,metricsContext,%{private}d,eventType,%{private}d,startTime,%{private}.1lf", &v23, 24);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGnssAWD::updateGnssSessionDataAtEventEnd(const DailyUseMetricsContext, const GNSS::GnssSessionEventType)", "%s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001B6020(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1001B60B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102474048;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001B60DC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *&v22[0] = 68289282;
    WORD4(v22[0]) = 2082;
    *(v22 + 10) = "";
    WORD1(v22[1]) = 2082;
    *(&v22[1] + 4) = "deviceStart";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v22, 0x1Cu);
  }

  sub_1001B632C(*a1 + 8);
  v5 = *a1;
  v5[1144] = *(a1 + 2497);
  (*(*v5 + 16))(v5, a1 + 572);
  v6 = *(a1 + 1136);
  if (v6)
  {
    sub_1001BD68C(v6, 4, 1);
  }

  *v30 = 0;
  *&v30[16] = 0u;
  *&v28[16] = 0u;
  *v28 = 0;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  DWORD2(v24) = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *&v28[8] = _Q1;
  v29 = _Q1;
  *&v30[8] = _Q1;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v34 = 1065353216;
  v35 = 0x100000005uLL;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v12 = v23;
  v13 = v24;
  v14 = v26;
  *(a1 + 128) = v25;
  *(a1 + 144) = v14;
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  v15 = v27;
  v16 = *v28;
  v17 = v29;
  *(a1 + 192) = *&v28[16];
  *(a1 + 208) = v17;
  *(a1 + 160) = v15;
  *(a1 + 176) = v16;
  v18 = *v30;
  v19 = *&v30[16];
  v20 = v31;
  *(a1 + 272) = *&v32[0];
  *(a1 + 240) = v19;
  *(a1 + 256) = v20;
  *(a1 + 224) = v18;
  sub_1001BD950(a1 + 280, v32 + 1);
  *(a1 + 320) = v35;
  sub_100134860(v32 + 8);
  *(a1 + 772) = 0;
  sub_1001BE9FC(a1 + 2752);
  result = *(a2 + 24);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

uint64_t sub_1001B632C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A3A9C4();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 68289026;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssawd,GnssSessionData::reset}", v9, 0x12u);
  }

  bzero(v9, 0x4F0uLL);
  v12 = v13;
  __asm { FMOV            V1.2D, #-1.0 }

  v16 = 0u;
  v13[1] = _Q1;
  memset(&v13[2], 0, 48);
  v14 = 0;
  v15 = &v16;
  v18 = 0u;
  v17 = &v18;
  v19 = -1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0x3F80000000000000;
  v23 = v24;
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  v27 = 0u;
  v26 = &v27;
  v28 = 0;
  v30 = 0u;
  v32 = 0u;
  v29 = &v30;
  v31 = &v32;
  memset(v34, 0, sizeof(v34));
  v33 = v34;
  v35 = 1065353216;
  v36 = v37;
  memset(v37, 0, 165);
  memset(&v37[10] + 8, 0, 168);
  v38 = 11;
  v39 = -1;
  v40 = -1;
  v41 = 0xBF800000BF800000;
  v42 = 0;
  memset(v52, 0, sizeof(v52));
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  v51 = v52;
  v53 = 1065353216;
  v54 = 0;
  v55 = 1;
  v56 = 0;
  *(v57 + 5) = 0;
  v57[0] = 0;
  v57[2] = 0xFFFFFFFF00000000;
  v58 = -1;
  *v60 = 0u;
  v59 = v60;
  v60[11] = 0;
  v60[13] = 0;
  memset(&v60[5], 0, 23);
  v60[14] = -1;
  v61 = 0xBFF0000000000000;
  v62 = -1;
  v66 = 0;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v67 = 1;
  sub_1001B65D4(a1, v9);
  return sub_1001B6A44(v9);
}

uint64_t sub_1001B65D4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  sub_1001B67C4((a1 + 56), a2 + 7);
  *(a1 + 80) = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  *(a1 + 96) = v7;
  sub_1001B67C4((a1 + 152), a2 + 19);
  sub_1001B67C4((a1 + 176), a2 + 22);
  *(a1 + 200) = *(a2 + 25);
  sub_100BE1788(a1 + 208, a2 + 26);
  sub_1001B67C4((a1 + 248), a2 + 31);
  sub_100BE1788(a1 + 272, a2 + 34);
  sub_1001B67C4((a1 + 312), a2 + 39);
  v10 = *(a2 + 42);
  *(a1 + 344) = *(a2 + 86);
  *(a1 + 336) = v10;
  sub_1001B67C4((a1 + 352), a2 + 44);
  sub_1001B67C4((a1 + 376), a2 + 47);
  sub_1001B67C4((a1 + 400), a2 + 50);
  sub_1001BD950(a1 + 424, a2 + 53);
  *(a1 + 464) = *(a2 + 116);
  sub_1001B67C4((a1 + 472), a2 + 59);
  memcpy((a1 + 496), a2 + 31, 0x162uLL);
  sub_1001B688C((a1 + 856), a2 + 856);
  sub_1001B688C((a1 + 904), a2 + 904);
  v11 = *(a2 + 952);
  *(a1 + 968) = *(a2 + 242);
  *(a1 + 952) = v11;
  sub_1001B67C4((a1 + 976), a2 + 122);
  sub_100BE1788(a1 + 1000, a2 + 125);
  *(a1 + 1040) = *(a2 + 260);
  *(a1 + 1048) = *(a2 + 131);
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1060) = *(a2 + 265);
  v12 = *(a2 + 1064);
  v13 = *(a2 + 1080);
  *(a1 + 1092) = *(a2 + 1092);
  *(a1 + 1064) = v12;
  *(a1 + 1080) = v13;
  sub_1001BDAD4((a1 + 1112), a2 + 139);
  v14 = a2[71];
  v15 = a2[72];
  v16 = a2[73];
  *(a1 + 1184) = a2[74];
  *(a1 + 1168) = v16;
  *(a1 + 1152) = v15;
  *(a1 + 1136) = v14;
  v17 = a2[75];
  v18 = a2[76];
  v19 = a2[77];
  *(a1 + 1241) = *(a2 + 1241);
  *(a1 + 1232) = v19;
  *(a1 + 1216) = v18;
  *(a1 + 1200) = v17;
  return a1;
}

void sub_1001B67C4(void *a1, void *a2)
{
  v4 = a1 + 1;
  sub_1003C93BC(a1, a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void sub_1001B6830(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_10013489C(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_1001B688C(void **a1, uint64_t a2)
{
  sub_1001B68DC(a1);
  sub_1001B69C0(a1);
  result = sub_1001B6958(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B68DC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 128;
  }

  a1[4] = v6;
}

uint64_t sub_1001B6958(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1001BD9F4(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void sub_1001B69C0(void **a1)
{
  if (a1[5])
  {
    sub_10051373C(a1, 0);
    sub_1000BFE3C(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_1001BD9F4(a1);
}

uint64_t sub_1001B6A44(uint64_t a1)
{
  sub_10018F070(a1 + 1112, *(a1 + 1120));
  sub_1004906DC(a1 + 1000);
  sub_1003C93BC(a1 + 976, *(a1 + 984));
  sub_10049AC1C((a1 + 904));
  sub_10049AC1C((a1 + 856));
  sub_1003C93BC(a1 + 472, *(a1 + 480));
  sub_100134860(a1 + 424);
  sub_1003C93BC(a1 + 400, *(a1 + 408));
  sub_1003C93BC(a1 + 376, *(a1 + 384));
  sub_1003C93BC(a1 + 352, *(a1 + 360));
  sub_1003C93BC(a1 + 312, *(a1 + 320));
  sub_1004906DC(a1 + 272);
  sub_1003C93BC(a1 + 248, *(a1 + 256));
  sub_1004906DC(a1 + 208);
  sub_1003C93BC(a1 + 176, *(a1 + 184));
  sub_1003C93BC(a1 + 152, *(a1 + 160));
  sub_1003C93BC(a1 + 56, *(a1 + 64));
  return a1;
}

void sub_1001B6B1C(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#gpsd,start initiated", &buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101774354();
  }

  *(a1 + 1696) = 1;
  sub_1001B74A8(a1, v5);
  sub_1001B77F4(a1);
  v21[0] = 0;
  v19 = 0u;
  v20 = 0u;
  buf = 0u;
  memset(&v21[8], 0, 32);
  *&v21[40] = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25[0] = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *&v25[8] = _Q1;
  v25[24] = 0;
  v26 = _Q1;
  v27[0] = 0;
  *&v27[8] = _Q1;
  v27[24] = 0;
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v30 = 1065353216;
  v31 = 0x100000005uLL;
  v11 = *&v27[16];
  *(a1 + 2056) = *v27;
  *(a1 + 2072) = v11;
  *(a1 + 2088) = v28;
  *(a1 + 2104) = v29[0];
  v12 = *v25;
  *(a1 + 1992) = v24;
  *(a1 + 2008) = v12;
  v13 = v26;
  *(a1 + 2024) = *&v25[16];
  *(a1 + 2040) = v13;
  v14 = *&v21[32];
  *(a1 + 1928) = *&v21[16];
  *(a1 + 1944) = v14;
  v15 = v23;
  *(a1 + 1960) = v22;
  *(a1 + 1976) = v15;
  v16 = v19;
  *(a1 + 1864) = buf;
  *(a1 + 1880) = v16;
  v17 = *v21;
  *(a1 + 1896) = v20;
  *(a1 + 1912) = v17;
  sub_1001BD950(a1 + 2112, &v29[1]);
  *(a1 + 2152) = v31;
  sub_100134860(&v29[1]);
  *(a1 + 1721) = 0;
  *(a1 + 1728) = 0xC08F400000000000;
  *(a1 + 1744) = 0;
  *(a1 + 88) = sub_1000081AC();
  ++*(a1 + 1288);
  operator new();
}

void sub_1001B7418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

id sub_1001B74A8(uint64_t a1, __n128 a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,registerKeepAlive", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017746F4();
  }

  return [objc_msgSend(objc_msgSend(*(a1 + 1800) "vendor")];
}

uint64_t sub_1001B7568(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018E669C();
  }

  v8 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_INFO))
  {
    v9 = "remove";
    v14 = 68289794;
    v16 = "";
    v15 = 2082;
    if (a2)
    {
      v9 = "add";
    }

    v17 = 2050;
    v18 = a3;
    v19 = 2082;
    v20 = a4;
    v21 = 2082;
    v22 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Updating keep-alive client registration, client:%{public}lu, debugMessage:%{public, location:escape_only}s, registrationType:%{public, location:escape_only}s}", &v14, 0x30u);
  }

  if (a2)
  {
    if ((*(a1 + 248) & 1) == 0)
    {
      v14 = a3;
      sub_1001B7728(a1 + 216, &v14, &v14);
LABEL_14:
      v10 = 1;
      goto LABEL_16;
    }
  }

  else if (*(a1 + 232))
  {
    v14 = a3;
    sub_10061FED0((a1 + 216), &v14);
    if (*(a1 + 248) == 1 && !*(a1 + 232))
    {
      IOAllowPowerChange(*(a1 + 124), *(a1 + 272));
    }

    goto LABEL_14;
  }

  v10 = 0;
LABEL_16:
  v11 = *(a1 + 240);
  if (*(a1 + 232))
  {
    if (!v11)
    {
      v12 = [[CLOSTransaction alloc] initWithDescription:"CLDaemonStatus.keepalive"];
LABEL_21:
      *(a1 + 240) = v12;
    }
  }

  else if (v11)
  {

    v12 = 0;
    goto LABEL_21;
  }

  return v10;
}

void *sub_1001B7728(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_1001B77F4(_BYTE *a1)
{
  if (a1[1680] == 1)
  {
    sub_1001324C4(v8);
    if (!sub_100132484(0x18u))
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    v9 = 24;
    v11 |= 0x200004u;
    v2 = v10;
    if (!v10)
    {
      operator new();
    }

    *(v10 + 20) |= 1u;
    *(v2 + 8) = 1;
    sub_10001CAF4(buf);
    v12[0] = 0;
    if (sub_10005BBE4(*buf, "GpsSimulatorTestModeDefaultWeek", v12))
    {
      v3 = v12[0];
    }

    else
    {
      v3 = 2049;
    }

    if (v14)
    {
      sub_100008080(v14);
    }

    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *&buf[4] = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#Warning,setConfigSimulatorMode,week,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017700B0(buf);
      v12[0] = 67240192;
      v12[1] = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gpsd,#Warning,setConfigSimulatorMode,week,%{public}d", v12, 8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::preStartConfig()", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(v2 + 20) |= 2u;
    *(v2 + 12) = v3;
    sub_10013256C(a1, v8);
    sub_100133DCC(v8);
  }

  if (a1[1722] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,preStartConfig,resending airborne", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101774270();
    }

    (*(*a1 + 256))(a1, 1);
  }
}

void sub_1001B7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B7B7C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1001C5740(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1001B7BD8(uint64_t result)
{
  v1 = *(result + 1328);
  if ((v1 & 0x20) != 0 || (*(result + 1336) & 1) == 0)
  {
    v1 |= 0x20u;
  }

  *(result + 1332) = v1;
  return result;
}

void sub_1001B7BF4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a3;
  v5 = a2;
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109376;
    v9[1] = v5;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,setGnssConstellations,enableflags,0x%x,disableflags,0x%x", v9, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017748C8();
  }

  sub_1001324C4(v9);
  if (!sub_100132484(0x19u))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v12 = 25;
  v14 |= 0x400004u;
  v8 = v13;
  if (!v13)
  {
    operator new();
  }

  *(v13 + 20) |= 3u;
  *(v8 + 8) = v5;
  *(v8 + 12) = v4;
  sub_10013256C(a1, v9);
  sub_100133DCC(v9);
}

void *sub_1001B7DD4(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_1024B92D0;
  return result;
}

uint64_t sub_1001B7DF8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(a1 + 12);
    if (v6 >= 0x80)
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

LABEL_14:
  *(a1 + 16) = v4;
  return v4;
}

uint64_t sub_1001B7E88(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

void sub_1001B7EF4(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    v3 = (a2 + 4);
    v4 = *(a2 + 4);
    v5 = *(result + 712);
    *(result + 712) = v4;
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v7 = *v3;
      v10[0] = 67240192;
      v10[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Got notification gps active state,%{public}d", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FA8F4(v3);
    }

    if (v4 != v5)
    {
      sub_100110094(result);
    }

    v8 = *(result + 712);
    v10[0] = 0;
    v9 = sub_10000608C(result, v10, 1) != 0;
    sub_1001B8040(result + 800, v8, (v4 != v5), v9);
  }
}

void sub_1001B8040(uint64_t a1, void *a2, void *a3, char a4)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v8 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v13[0] = 67240448;
    v13[1] = a2;
    v14 = 1026;
    v15 = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,isGpsHWActive,%{public}d,didStatusChange,%{public}d", v13, 0xEu);
  }

  v9 = sub_10000A100(121, 2);
  if (v9)
  {
    sub_101876928(a2, a3);
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  if (a2)
  {
    v11 = sub_10000B1F8(v9, v10);
    v13[0] = 1;
    *(a1 + 80) = sub_10001A6B0(v11, v13);
    sub_10018E860(a1, 1);
  }

  else if (a4)
  {
    *(a1 + 472) = 0;
    *(a1 + 480) = 0;
    *(a1 + 488) = 0;
    if (qword_1025D4600 != -1)
    {
      sub_1018754B0();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,session continued with gps off,resetting IO", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101876A2C();
    }
  }

  else
  {
    sub_1001EFA0C(a1, v10);
  }
}

void sub_1001B81F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1001B8450(a1);
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    v9 = [objc_msgSend(*(a1 + 8) "locationGroups")];
    v10 = sub_10017F5D4([*(a1 + 8) pipelinedSeeded]);
    *buf = 136446978;
    v26 = v8;
    v27 = 2050;
    v28 = v6;
    v29 = 2050;
    v30 = v9;
    v31 = 2082;
    v32 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, load, %{public}s, %{public}lu, total, %{public}lu, state, %{public}s", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v11 = qword_1025D4628;
    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    v13 = [objc_msgSend(*(a1 + 8) "locationGroups")];
    v14 = sub_10017F5D4([*(a1 + 8) pipelinedSeeded]);
    v17 = 136446978;
    v18 = v12;
    v19 = 2050;
    v20 = v6;
    v21 = 2050;
    v22 = v13;
    v23 = 2082;
    v24 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v11, 0, "@IndoorAvl, load, %{public}s, %{public}lu, total, %{public}lu, state, %{public}s", &v17, 42);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLIndoorLogic::loadAvailabilityTiles(std::chrono::steady_clock::time_point, const std::string &)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  sub_10025CB28(a1, a2, a3);
}

id sub_1001B8450(uint64_t a1)
{
  v2 = objc_alloc_init(NSAutoreleasePool);
  v3 = [objc_msgSend(*(a1 + 8) "availableVenuesState")];
  if (*[*(a1 + 8) latestPosition] == 1)
  {
    v4 = [*(a1 + 8) latestPosition];
    if ((*v4 & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    v3 = [[GeographicCoordinate alloc] initWithLatitude:*(v4 + 108) longitude:*(v4 + 116) andAltitude:*(v4 + 36)];
  }

  v5 = [objc_msgSend(*(a1 + 8) "availableVenuesState")];
  if (v5 & 1 | (([*(a1 + 8) locationGroupsLoaded] & 1) == 0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 8) locationGroupsLoaded];
      *buf = 67240448;
      v28 = v5;
      v29 = 1026;
      v30 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@IndoorAvl, load, must recompute, %{public}d, locationGroupsLoaded, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A9B8(buf);
      v17 = qword_1025D4628;
      v18 = [*(a1 + 8) locationGroupsLoaded];
      v24[0] = 67240448;
      v24[1] = v5;
      v25 = 1026;
      v26 = v18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v17, 2, "@IndoorAvl, load, must recompute, %{public}d, locationGroupsLoaded, %{public}d", v24, 14);
      v20 = v19;
      sub_100152C7C("Generic", 1, 0, 2, "unsigned long CLIndoorLogic::reloadAvailabilityGroupsIfNecessary()", "%s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    sub_1001B8A14(a1 + 48);
    if ([*(a1 + 8) avlTilePathOverrideForTest])
    {
      v8 = [*(a1 + 8) avlTilePathOverrideForTest];
    }

    else
    {
      v8 = sub_1001B8B38();
    }

    v11 = v8;
    if (([*(a1 + 8) locationGroupsLoaded] & 1) == 0)
    {
      [objc_msgSend(*(a1 + 8) "availableVenuesState")];
    }

    v10 = [objc_msgSend(*(a1 + 8) "availableVenuesState")];
    if (!v10)
    {
      goto LABEL_28;
    }

    if ([objc_msgSend(*(a1 + 8) "availableVenuesState")])
    {
      v12 = *(a1 + 8);
      [objc_msgSend(objc_msgSend(v12 "availableVenuesState")];
      [v12 setAvailabilityTiles:v10 withZScoreConfidenceInterval:?];
      [*(a1 + 8) updatePrefetchParameters:{objc_msgSend(objc_msgSend(*(a1 + 8), "availableVenuesState"), "availabilityTileParams")}];
      (*(**(a1 + 24) + 88))(*(a1 + 24));
      if (qword_1025D4620 == -1)
      {
LABEL_24:
        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "contents on disk have changed, or we moved really far away, re-read availability tiles into memory", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186A9B8(buf);
          LOWORD(v24[0]) = 0;
          LODWORD(v23) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "contents on disk have changed, or we moved really far away, re-read availability tiles into memory", v24, v23);
          v22 = v21;
          sub_100152C7C("Generic", 1, 0, 2, "unsigned long CLIndoorLogic::reloadAvailabilityGroupsIfNecessary()", "%s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v10 = [objc_msgSend(*(a1 + 8) "locationGroups")];
LABEL_28:
        sub_10025CAF4((a1 + 48));
        goto LABEL_29;
      }
    }

    else
    {
      sub_10186A9FC();
      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Indoor/CLIndoorStateMachine.mm", 1469, "reloadAvailabilityGroupsIfNecessary");
      __break(1u);
    }

    sub_101869E5C();
    goto LABEL_24;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Not necessary to reload availability groups, skipping", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186A9B8(buf);
    LOWORD(v24[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "Not necessary to reload availability groups, skipping", v24, 2);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "unsigned long CLIndoorLogic::reloadAvailabilityGroupsIfNecessary()", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v10 = 0;
LABEL_29:

  return v10;
}

void sub_1001B8A14(uint64_t a1)
{
  if (*a1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101A5BAA4();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      v5 = 136315138;
      v6 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "%s,os_transaction already taken, not taking another", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A5BAB8(a1);
    }
  }

  else
  {
    v4 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v4 = *v4;
    }

    *a1 = [[CLOSTransaction alloc] initWithDescription:v4];
  }
}

NSURL *sub_1001B8B38()
{
  v0 = sub_1001B8C6C();
  v1 = [NSString stringWithUTF8String:v0];
  if (!v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      v4 = 136446210;
      v5 = v0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "availabilityDir_nsstr is nil which will cause a NSInvalidArgumentException due to [NSURL initFileURLWithPath:isDirectory:]: nil string parameter;  availabiltyDir_cstr = %{public}s", &v4, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10186DEE4();
    }
  }

  return [NSURL URLWithString:[NSString stringWithUTF8String:"availability.pb"] relativeToURL:[NSURL fileURLWithPath:v1 isDirectory:1]];
}

void *sub_1001B8C6C()
{
  if ((atomic_load_explicit(&qword_1025D49C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D49C8))
  {
    operator new();
  }

  result = off_1025D49C0;
  if (*(off_1025D49C0 + 23) < 0)
  {
    return *off_1025D49C0;
  }

  return result;
}

double sub_1001B8DBC()
{
  v2 = 0;
  time(&v2);
  v0 = localtime(&v2);
  return (3600 * v0->tm_hour + 60 * v0->tm_min + v0->tm_sec);
}

uint64_t *sub_1001B8E0C(uint64_t a1, int a2, int a3)
{
  v16 = a3;
  v17 = a2;
  result = sub_1000735F4((a1 + 2304), &v17);
  if (result)
  {
    v5 = sub_1000735F4((a1 + 2304), &v17);
    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = sub_1000735F4(v5 + 3, &v16);
    if (!sub_1000735F4((a1 + 2304), &v17))
    {
      goto LABEL_21;
    }

    if (!v6)
    {
      return 0;
    }

    v7 = sub_1000735F4((a1 + 2304), &v17);
    if (!v7 || (v8 = sub_1000735F4(v7 + 3, &v16)) == 0)
    {
LABEL_21:
      sub_1000432E8("unordered_map::at: key not found");
    }

    v9 = v8;
    v10 = *(v8 + 40);
    if ((v10 & 1) == 0)
    {
      *(v8 + 4) = sub_1000081AC();
      *(v9 + 40) = 1;
      if (*(a1 + 2506) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v12 = v9[4];
          *buf = 134284033;
          v25 = v12;
          v26 = 1025;
          v27 = v17;
          v28 = 1025;
          v29 = v16;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gnssca,initializeGnssSessionDataAtEventStart,start time,%{private}.1lf,metricsContext,%{private}d,eventType,%{private}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v13 = v9[4];
          v18 = 134284033;
          v19 = v13;
          v20 = 1025;
          v21 = v17;
          v22 = 1025;
          v23 = v16;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssca,initializeGnssSessionDataAtEventStart,start time,%{private}.1lf,metricsContext,%{private}d,eventType,%{private}d", &v18, 24);
          v15 = v14;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAWD::initializeGnssSessionDataAtEventStart(const DailyUseMetricsContext, const GNSS::GnssSessionEventType)", "%s\n", v14);
          if (v15 != buf)
          {
            free(v15);
          }
        }
      }
    }

    return (v10 ^ 1u);
  }

  return result;
}

uint64_t sub_1001B9078(uint64_t a1)
{
  sub_1001BEAA4(a1);
  v3 = *(a1 + 1000);
  if (v3)
  {
    sub_1001BEE98(v3, v2);
  }

  v4 = *(a1 + 1048);
  if (v4)
  {
    sub_1001BA05C(v4);
  }

  v5 = *(a1 + 992);
  if (v5)
  {
    sub_1001BA0FC(v5);
  }

  v6 = *(a1 + 728);
  if (v6)
  {
    sub_1001C4404(v6, *(a1 + 2569));
  }

  v7 = *(a1 + 1160);
  if (v7)
  {
    sub_1001C3E2C(v7);
  }

  v8 = *(a1 + 1112);
  if (v8)
  {
    sub_10137EA74(v8);
  }

  v9 = *(a1 + 1200);
  if (v9)
  {
    sub_100EAC45C(v9);
  }

  v10 = *(a1 + 1208);
  if (v10)
  {
    sub_1009BAA90(v10);
  }

  result = *a1;
  if (*a1 && *(a1 + 928))
  {
    v12 = *(*result + 168);

    return v12();
  }

  return result;
}

void sub_1001B9150(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v2 = qword_1025D4658;
  v3 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v4 = sub_1001BEAF0(v3);
    v5[0] = 67240448;
    v5[1] = v4;
    v6 = 1026;
    v7 = sub_1001B9258(v4);
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "L5Context,start,L5AntennaHasContentionWithCell,%{public}d,L5AntennaHasContentionWithWiFi24,%{public}d", v5, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A66020();
  }

  if ((*(a1 + 51) & 1) == 0)
  {
    *(a1 + 51) = 1;
    sub_10017DC7C(a1);
  }
}

uint64_t sub_1001B9258(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = 0;
  v2 = (dword_1026592D0 - 178) > 0x1E || ((1 << (dword_1026592D0 + 78)) & 0x500404FF) == 0;
  if (v2 && (dword_1026592D0 - 257) >= 2)
  {
    v1 = sub_1001C0C18(a1);
    sub_10001CAF4(&v4);
    v6 = 0;
    if (sub_10001CB4C(v4, "GnssL5AntTunerContentionWithWiFi2p4", &v6, 0xFFFFFFFFLL))
    {
      v1 = v6;
    }

    if (v5)
    {
      sub_100008080(v5);
    }
  }

  return v1 & 1;
}

void sub_1001B9334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B934C(int *a1)
{
  v2 = a1[18];
  __p = 0;
  v38 = 0;
  v39 = 0;
  v3 = sub_10001CF3C();
  if (v3)
  {
    if (*(a1 + 57) == 1)
    {
      sub_1000B85D0(&__p, 1uLL);
    }

    if (*(a1 + 58) == 1)
    {
      sub_1000B85D0(&__p, 1uLL);
    }

    if (qword_1025D4650 != -1)
    {
      sub_101A65084();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 57);
      v7 = *(a1 + 58);
      v8 = *a1;
      *buf = 67240960;
      v49 = v6;
      v50 = 1026;
      v51 = v7;
      v52 = 1026;
      v53 = v8;
      v54 = 1026;
      v55 = v2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "L5ContextMinorPower,OnlyRhythmicGNSS,%{public}d,LongDurationHKWorkout,%{public}d,L5EnableCur,%{public}d,L5EnableReq,%{public}d", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A65040(buf);
      v9 = *(a1 + 57);
      v10 = *(a1 + 58);
      v11 = *a1;
      v40 = 67240960;
      v41 = v9;
      v42 = 1026;
      v43 = v10;
      v44 = 1026;
      v45 = v11;
      v46 = 1026;
      v47 = v2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "L5ContextMinorPower,OnlyRhythmicGNSS,%{public}d,LongDurationHKWorkout,%{public}d,L5EnableCur,%{public}d,L5EnableReq,%{public}d", &v40, 26);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssL5Context::tickL5EnablementForPlatformsWithMinorPowerImpact()", "%s\n", v12);
      goto LABEL_55;
    }

    goto LABEL_38;
  }

  if (*(a1 + 48) == 1 && (*(a1 + 55) & 1) == 0)
  {
    v3 = sub_1001B9258(v3);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 53) == 1)
  {
    v14 = sub_1001BEAF0(v3);
    v15 = v14;
    if ((v4 & 1) == 0)
    {
      if (v14)
      {
        v27 = __p;
        v28 = v38 - __p;
        v29 = (v38 - __p) >> 2;
        v30 = v29 + 1;
        if ((v29 + 1) >> 62)
        {
          sub_10028C64C();
        }

        v31 = v39 - __p;
        if ((v39 - __p) >> 1 > v30)
        {
          v30 = v31 >> 1;
        }

        v21 = v31 >= 0x7FFFFFFFFFFFFFFCLL;
        v32 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v21)
        {
          v32 = v30;
        }

        if (v32)
        {
          sub_1000B85D0(&__p, v32);
        }

        *(4 * v29) = 3;
        v33 = 4 * v29 + 4;
        memcpy(0, v27, v28);
        v34 = __p;
        __p = 0;
        v38 = v33;
        v39 = 0;
        if (v34)
        {
          operator delete(v34);
        }

        v2 = 0;
        v38 = v33;
        v15 = 1;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v15 = 0;
    if (!v4)
    {
      v15 = 0;
      goto LABEL_33;
    }
  }

  v16 = __p;
  v17 = v38 - __p;
  v18 = (v38 - __p) >> 2;
  v19 = v18 + 1;
  if ((v18 + 1) >> 62)
  {
    sub_10028C64C();
  }

  v20 = v39 - __p;
  if ((v39 - __p) >> 1 > v19)
  {
    v19 = v20 >> 1;
  }

  v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
  v22 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v21)
  {
    v22 = v19;
  }

  if (v22)
  {
    sub_1000B85D0(&__p, v22);
  }

  *(4 * v18) = 1;
  v23 = 4 * v18 + 4;
  memcpy(0, v16, v17);
  v24 = __p;
  __p = 0;
  v38 = v23;
  v39 = 0;
  if (v24)
  {
    operator delete(v24);
  }

  v2 = 0;
  v38 = v23;
LABEL_33:
  if (qword_1025D4650 != -1)
  {
    sub_101A65084();
  }

  v25 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *a1;
    *buf = 67240960;
    v49 = v4;
    v50 = 1026;
    v51 = v15;
    v52 = 1026;
    v53 = v26;
    v54 = 1026;
    v55 = v2;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "L5ContextMinorPower,ContentionWiFi2p4,%{public}d,ContentionVoiceCall,%{public}d,L5EnableCur,%{public}d,L5EnableReq,%{public}d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A65040(buf);
    v35 = *a1;
    v40 = 67240960;
    v41 = v4;
    v42 = 1026;
    v43 = v15;
    v44 = 1026;
    v45 = v35;
    v46 = 1026;
    v47 = v2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "L5ContextMinorPower,ContentionWiFi2p4,%{public}d,ContentionVoiceCall,%{public}d,L5EnableCur,%{public}d,L5EnableReq,%{public}d", &v40, 26);
    v13 = v36;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssL5Context::tickL5EnablementForPlatformsWithMinorPowerImpact()", "%s\n", v36);
LABEL_55:
    if (v13 != buf)
    {
      free(v13);
    }
  }

LABEL_38:
  if (v2 != *a1)
  {
    *a1 = v2;
    if (*(a1 + 4))
    {
      sub_100D09BCC((a1 + 2), v2);
    }
  }

  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }
}

void sub_1001B98FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B9940(int *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[3];
    v8[0] = 67240192;
    v8[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLGC,updateGnssBandStatus,L5,%{public}d", v8, 8u);
  }

  v4 = sub_10000A100(121, 2);
  if (v4)
  {
    sub_101946810(a1);
  }

  if (!*a1)
  {
    goto LABEL_19;
  }

  if (!sub_1001B9B0C(v4, v5))
  {
    goto LABEL_15;
  }

  v6 = sub_1001BED94(a1);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = *(**a1 + 224);
      goto LABEL_18;
    }

    if (v6 != 3)
    {
      goto LABEL_19;
    }

LABEL_15:
    v7 = *(**a1 + 224);
    goto LABEL_18;
  }

  if (!v6)
  {
    v7 = *(**a1 + 224);
    goto LABEL_18;
  }

  if (v6 == 1)
  {
    v7 = *(**a1 + 224);
LABEL_18:
    v7();
  }

LABEL_19:
  sub_1001B9EF4(a1);
}

BOOL sub_1001B9B0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001B9C14(a1, a2);
  if ((v2 & 1) == 0)
  {
    v2 = sub_10006FE30(v2, v3);
    if ((v2 & 1) == 0)
    {
      v2 = sub_100718F78(v2);
      if (!v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    v4 = 1;
  }

  else
  {
LABEL_8:
    v4 = sub_100718E94(v2);
  }

  sub_10001CAF4(&v9);
  v11 = 0;
  v5 = sub_10001CB4C(v9, "supportsGnssConcurrency", &v11, 0xFFFFFFFFLL);
  v6 = v11;
  if (v10)
  {
    sub_100008080(v10);
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

void sub_1001B9BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B9BE0(uint64_t a1, uint64_t a2)
{
  result = sub_10006FDD0(a1, a2);
  if (result)
  {
    v4 = sub_10006FEAC(result, v3);
    if (v4)
    {
      return 0;
    }

    else
    {
      return sub_10006FC6C(v4, v5) ^ 1;
    }
  }

  return result;
}

uint64_t sub_1001B9C14(uint64_t a1, uint64_t a2)
{
  result = sub_1001B9BE0(a1, a2);
  if (result)
  {
    v4 = sub_10006FC00(result, v3);
    return (v4 & 1) == 0 && !sub_10006FBAC(v4, v5);
  }

  return result;
}

void sub_1001B9C48(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a3;
  v5 = a2;
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67240448;
    v11[1] = v5;
    v12 = 1026;
    v13 = v4;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#gpsd,setRfBandEnable,L1,%{public}d,L5,%{public}d", v11, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101775CB0();
  }

  if ((atomic_load_explicit(&qword_102666C98, memory_order_acquire) & 1) == 0)
  {
    v10 = __cxa_guard_acquire(&qword_102666C98);
    if (v10)
    {
      byte_102666C90 = sub_1001C0C18(v10);
      __cxa_guard_release(&qword_102666C98);
    }
  }

  if (byte_102666C90 == 1)
  {
    sub_1001324C4(v11);
    if (!sub_100132484(0x26u))
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    v14 = 38;
    v16 |= 0x20000004u;
    v8 = v15;
    if (!v15)
    {
      operator new();
    }

    v9 = *(v15 + 16);
    *(v15 + 8) = v5;
    *(v8 + 16) = v9 | 3;
    *(v8 + 9) = v4;
    sub_10013256C(a1, v11);
    sub_100133DCC(v11);
  }
}

uint64_t sub_1001B9E88(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 9);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

void sub_1001B9EF4(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#gnssband,signalGnssBandChange", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019469E8();
  }

  CFRunLoopSourceSignal(*(a1 + 24));
  v3 = sub_100107858();
  CFRunLoopWakeUp(v3);
}

_BYTE *sub_1001B9F9C(_BYTE *result, __n128 a2)
{
  if ((result[16] & 1) == 0)
  {
    v2 = result;
    if (qword_1025D4650 != -1)
    {
      sub_101B77F98();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "registered for time notifications", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B785D8();
    }

    result = [*(*v2 + 16) register:*(*v2 + 8) forNotification:0 registrationInfo:0];
    v2[16] = 1;
  }

  return result;
}

void sub_1001BA05C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10167F27C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLGnssInterference,start", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10167F2D4();
  }

  *(a1 + 16) = 1;
}

void sub_1001BA0FC(_BYTE *a1)
{
  sub_1001BA1EC(a1);
  a1[1544] = 1;
  if (qword_1025D4650 != -1)
  {
    sub_100244280();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,start}", v3, 0x12u);
  }

  sub_1001BB1A4(a1);
  sub_1001BB328(a1);
  a1[76] = 1;
}

uint64_t sub_1001BA1EC(uint64_t a1)
{
  sub_10004FD18();
  v57 = 0;
  str = 0;
  sub_10001CAF4(buf);
  if (sub_100185ADC(*buf, "GpsReferenceLocation", v59, 0xFFFFFFFFLL) && sub_1004FBF14(v59, "Latitude", &str))
  {
    v2 = sub_1004FBF14(v59, "Longitude", &v57);
    if (*v61)
    {
      sub_100008080(*v61);
    }

    if (v2)
    {
      v70[0] = 0.0;
      v56 = 0;
      *(a1 + 8284) = CFStringGetDoubleValue(str);
      *(a1 + 8292) = CFStringGetDoubleValue(v57);
      *(a1 + 8412) = 1;
      *(a1 + 1577) = 1;
      *(a1 + 8300) = 0x40A7700000000000;
      if (sub_10005BBE4(v59, "LocationType", &v56))
      {
        *(a1 + 8376) = v56;
      }

      if (sub_1000B9370(v59, "HorizontalUncertainty", v70))
      {
        v3 = v70[0];
        if (v70[0] <= 0.0)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v4 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v61 = 2082;
            *&v61[2] = "";
            _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: HorizontalUncertainty for GpsReferenceLocation}", buf, 0x12u);
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }
          }

          v5 = qword_1025D4658;
          v3 = -1.0;
          if (os_signpost_enabled(qword_1025D4658))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v61 = 2082;
            *&v61[2] = "";
            _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#GnssAssistancePosition, invalid defaults: HorizontalUncertainty for GpsReferenceLocation", "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: HorizontalUncertainty for GpsReferenceLocation}", buf, 0x12u);
          }
        }
      }

      else
      {
        v3 = 3000.0;
      }

      *(a1 + 8300) = v3;
      *(a1 + 9088) = 0;
      if (sub_10005BBE4(v59, "HorizontalReliability", &v56))
      {
        if (v56 < 5)
        {
          *(a1 + 9088) = v56;
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v27 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v61 = 2082;
            *&v61[2] = "";
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: HorizontalReliability}", buf, 0x12u);
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }
          }

          v28 = qword_1025D4658;
          if (os_signpost_enabled(qword_1025D4658))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v61 = 2082;
            *&v61[2] = "";
            _os_signpost_emit_with_name_impl(dword_100000000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#GnssAssistancePosition, invalid defaults: HorizontalReliability", "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: HorizontalReliability}", buf, 0x12u);
          }
        }
      }

      *(a1 + 9092) = 0;
      if (sub_1000B9370(v59, "Altitude", v70))
      {
        *(a1 + 8308) = v70[0];
        if (sub_1000B9370(v59, "VerticalUncertainty", v70))
        {
          v29 = v70[0];
          if (v70[0] <= 0.0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v30 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v61 = 2082;
              *&v61[2] = "";
              _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: VerticalUncertainty for GpsReferenceLocation}", buf, 0x12u);
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }
            }

            v31 = qword_1025D4658;
            v29 = -1.0;
            if (os_signpost_enabled(qword_1025D4658))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v61 = 2082;
              *&v61[2] = "";
              _os_signpost_emit_with_name_impl(dword_100000000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#GnssAssistancePosition, invalid defaults: VerticalUncertainty for GpsReferenceLocation", "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: VerticalUncertainty for GpsReferenceLocation}", buf, 0x12u);
            }
          }
        }

        else
        {
          v29 = 3000.0;
        }

        *(a1 + 8316) = v29;
        if (sub_10005BBE4(v59, "VerticalReliability", &v56))
        {
          if (v56 < 5)
          {
            *(a1 + 9092) = v56;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v32 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v61 = 2082;
              *&v61[2] = "";
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: VerticalReliability}", buf, 0x12u);
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }
            }

            v33 = qword_1025D4658;
            if (os_signpost_enabled(qword_1025D4658))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v61 = 2082;
              *&v61[2] = "";
              _os_signpost_emit_with_name_impl(dword_100000000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#GnssAssistancePosition, invalid defaults: VerticalReliability", "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: VerticalReliability}", buf, 0x12u);
            }
          }
        }
      }

      else
      {
        *(a1 + 8308) = xmmword_101C76220;
      }

      if (*(a1 + 9088) > 0 || *(a1 + 9092) >= 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v34 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v35 = *(a1 + 8376);
          v36 = *(a1 + 8284);
          v37 = *(a1 + 8292);
          v38 = *(a1 + 8308);
          v39 = *(a1 + 8300);
          v40 = *(a1 + 8316);
          v41 = *(a1 + 9088);
          v42 = *(a1 + 9092);
          *buf = 68291075;
          *&buf[4] = 0;
          *v61 = 2082;
          *&v61[2] = "";
          v62 = 1026;
          *v63 = v35;
          *&v63[4] = 2053;
          *&v63[6] = v36;
          *&v63[14] = 2053;
          *&v63[16] = v37;
          *&v63[24] = 2050;
          *&v63[26] = v38;
          *&v63[34] = 2050;
          *&v63[36] = v39;
          v64 = 2050;
          v65 = v40;
          v66 = 1026;
          v67 = v41;
          v68 = 1026;
          v69 = v42;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, forcing tightly-coupled assistance, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, horizontalReliability:%{public}d, verticalReliability:%{public}d}", buf, 0x56u);
        }
      }

      if ((sub_1000B9370(v59, "timestamp", (a1 + 8356)) & 1) == 0)
      {
        *(a1 + 8356) = CFAbsoluteTimeGetCurrent();
      }

      if (!sub_1000B9370(v59, "Age", (a1 + 9096)))
      {
        goto LABEL_133;
      }

      v43 = *(a1 + 9096);
      v44 = v43 & 0x7FFFFFFFFFFFFFFFLL;
      v45 = (v43 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v46 = v43 < 0;
      v47 = v43 < 0 && ((v43 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (!v46)
      {
        v45 = 0;
      }

      v48 = v44 <= 0x7FF0000000000000;
      v49 = v44 == 0x7FF0000000000000 || v45;
      if (!v48)
      {
        v49 = 1;
      }

      if ((v49 | v47) == 1)
      {
LABEL_133:
        *(a1 + 9096) = 0;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v50 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v51 = *(a1 + 8284);
        v52 = *(a1 + 8292);
        v53 = *(a1 + 8356);
        v54 = *(a1 + 9096);
        *buf = 68290051;
        *v61 = 2082;
        *&buf[4] = 0;
        *&v61[2] = "";
        v62 = 2053;
        *v63 = v51;
        *&v63[8] = 2053;
        *&v63[10] = v52;
        *&v63[18] = 2050;
        *&v63[20] = v53;
        *&v63[28] = 2050;
        *&v63[30] = v54;
        _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, CL-force reference location, lat:%{sensitive}.7f, lon:%{sensitive}.7f, timestamp:%{public}.2f, age:%{public}.1f}", buf, 0x3Au);
      }
    }
  }

  else if (*v61)
  {
    sub_100008080(*v61);
  }

  v56 = 0;
  sub_10001CAF4(buf);
  v6 = sub_10005BBE4(*buf, "GpsPositionInjectionEnable", &v56);
  if (*v61)
  {
    sub_100008080(*v61);
  }

  if (v6)
  {
    v7 = v56 == 1;
    *(a1 + 1578) = v56 == 1;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else if ((*(a1 + 1578) & 1) == 0)
  {
LABEL_23:
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v61 = 2082;
      *&v61[2] = "";
      v9 = "{msg%{public}.0s:#GnssAssistancePosition, CPI,disabled}";
LABEL_32:
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x12u);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v61 = 2082;
    *&v61[2] = "";
    v9 = "{msg%{public}.0s:#GnssAssistancePosition, CPI,enabled}";
    goto LABEL_32;
  }

LABEL_33:
  sub_10001CAF4(buf);
  v10 = sub_10005BBE4(*buf, "GpsUseCachedLocation", &v56);
  if (*v61)
  {
    sub_100008080(*v61);
  }

  if (v10)
  {
    *(a1 + 1576) = v56 != 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 1576);
    *buf = 68289282;
    *&buf[4] = 0;
    *v61 = 2082;
    *&v61[2] = "";
    v62 = 1026;
    *v63 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, fUseCachedLocationAssist:%{public}d}", buf, 0x18u);
  }

  sub_10001CAF4(buf);
  v13 = sub_10005BBE4(*buf, "GpsUseDefaultLocationInFarStartTest", &v56);
  if (*v61)
  {
    sub_100008080(*v61);
  }

  if (v13)
  {
    *(a1 + 1545) = v56 != 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v14 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 1545);
    *buf = 68289282;
    *&buf[4] = 0;
    *v61 = 2082;
    *&v61[2] = "";
    v62 = 1026;
    *v63 = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, fUseDefaultLocInFarStartTest:%{public}d}", buf, 0x18u);
  }

  sub_1003C93BC(a1 + 1552, *(a1 + 1560));
  *(a1 + 1552) = a1 + 1560;
  *(a1 + 1560) = 0u;
  sub_10001CAF4(buf);
  v16 = sub_1001C0EF0(*buf, "GpsPositionAssistanceTypeBlocklist");
  if (*v61)
  {
    sub_100008080(*v61);
  }

  if (v16)
  {
    v17 = 0;
    v55 = 0;
    do
    {
      sub_10001CAF4(buf);
      v18 = sub_1004FB7DC(*buf, "GpsPositionAssistanceTypeBlocklist", &v55, v17);
      if (*v61)
      {
        sub_100008080(*v61);
      }

      if (v18)
      {
        if (v55 < 0xE)
        {
          *buf = v55;
          sub_1003C9410(a1 + 1552, buf, buf);
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v24 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v55;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#GnssAssistancePosition,blocking location type,%d", buf, 8u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_74;
          }

          sub_101A95F98(buf);
          LODWORD(v70[0]) = 67109120;
          HIDWORD(v70[0]) = v55;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#GnssAssistancePosition,blocking location type,%d", v70);
          v21 = v25;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistancePosition::getLocationDefaults()", "%s\n", v25);
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v19 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v55;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#GnssAssistancePosition,unexpected location type,%d", buf, 8u);
          }

          if (!sub_10000A100(121, 0))
          {
            goto LABEL_74;
          }

          sub_101A95F98(buf);
          LODWORD(v70[0]) = 67109120;
          HIDWORD(v70[0]) = v55;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "#GnssAssistancePosition,unexpected location type,%d", v70);
          v21 = v20;
          sub_100152C7C("Generic", 1, 0, 0, "void CLGnssAssistancePosition::getLocationDefaults()", "%s\n", v20);
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v22 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v17;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "#GnssAssistancePosition,unable to retrieve blocked location type at index,%d", buf, 8u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_74;
        }

        sub_101A95F98(buf);
        LODWORD(v70[0]) = 67109120;
        HIDWORD(v70[0]) = v17;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "#GnssAssistancePosition,unable to retrieve blocked location type at index,%d", v70);
        v21 = v23;
        sub_100152C7C("Generic", 1, 0, 0, "void CLGnssAssistancePosition::getLocationDefaults()", "%s\n", v23);
      }

      if (v21 != buf)
      {
        free(v21);
      }

LABEL_74:
      v17 = (v17 + 1);
    }

    while (v16 != v17);
  }

  return sub_100005DA4();
}

CFIndex sub_1001BB128(uint64_t a1, CFStringRef key)
{
  v2 = CFPreferencesCopyValue(key, *(a1 + 72), *(a1 + 80), kCFPreferencesCurrentHost);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 1;
  }

  CFRelease(v3);
  return Count;
}

_BYTE *sub_1001BB1A4(_BYTE *result)
{
  if ((result[11784] & 1) == 0)
  {
    v1 = result;
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = 68289026;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,TBA, registered for tunnel and bridge assistance notifications}", &v4, 0x12u);
    }

    [*(*(v1 + 1474) + 16) register:*(*(v1 + 1474) + 8) forNotification:4 registrationInfo:0];
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = 68289026;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, registered for tunnel end point notifications}", &v4, 0x12u);
    }

    result = [*(*(v1 + 1474) + 16) register:*(*(v1 + 1474) + 8) forNotification:5 registrationInfo:0];
    v1[11784] = 1;
  }

  return result;
}

void sub_1001BB328(uint64_t a1)
{
  v2 = sub_1001BB7DC(a1 + 496);
  v3 = *(v2 + 16);
  *v34 = *v2;
  *&v34[16] = v3;
  v4 = *(v2 + 80);
  v6 = *(v2 + 32);
  v5 = *(v2 + 48);
  v36 = *(v2 + 64);
  v37 = v4;
  *&v34[32] = v6;
  v35 = v5;
  v8 = *(v2 + 112);
  v7 = *(v2 + 128);
  v9 = *(v2 + 96);
  *&v40[12] = *(v2 + 140);
  v39 = v8;
  *v40 = v7;
  v38 = v9;
  memcpy(v41, (v2 + 160), sizeof(v41));
  v42 = *(v2 + 680);
  v10 = *(v2 + 688);
  v43 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(v2 + 696);
  v12 = *(v2 + 728);
  v45 = *(v2 + 712);
  v46 = v12;
  v44 = v11;
  v13 = *(v2 + 744);
  v14 = *(v2 + 760);
  v15 = *(v2 + 776);
  *(v49 + 9) = *(v2 + 785);
  v48 = v14;
  v49[0] = v15;
  v47 = v13;
  if (sub_1001BB918(a1))
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 8376);
      v18 = *(a1 + 8284);
      v19 = *(a1 + 8292);
      v21 = *(a1 + 8300);
      v20 = *(a1 + 8308);
      v22 = *(a1 + 8316);
      buf = 68290563;
      v51 = 2082;
      v52 = "";
      v53 = 1026;
      v54 = v17;
      v55 = 2053;
      *v56 = v18;
      *&v56[8] = 2053;
      *&v56[10] = v19;
      *&v56[18] = 2050;
      *&v56[20] = v20;
      *&v56[28] = 2050;
      *&v56[30] = v21;
      *&v56[38] = 2050;
      *&v56[40] = v22;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, feed tightly coupled location as assistance location, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}", &buf, 0x4Au);
    }

    sub_1001928D0(a1, (a1 + 8280), 0, 0);
    goto LABEL_21;
  }

  if (*(a1 + 11768) == 1)
  {
    if (*(a1 + 1604) > 0.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v23 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 11768);
        v25 = *(a1 + 1680);
        v26 = *(a1 + 1588);
        v27 = *(a1 + 1596);
        v29 = *(a1 + 1604);
        v28 = *(a1 + 1612);
        v30 = *(a1 + 1620);
        buf = 68290819;
        v51 = 2082;
        v52 = "";
        v53 = 1026;
        v54 = v24;
        v55 = 1026;
        *v56 = v25;
        *&v56[4] = 2053;
        *&v56[6] = v26;
        *&v56[14] = 2053;
        *&v56[16] = v27;
        *&v56[24] = 2050;
        *&v56[26] = v28;
        *&v56[34] = 2050;
        *&v56[36] = v29;
        *&v56[44] = 2050;
        *&v56[46] = v30;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, feed cached reference location as assistance location, isEmergency:%{public}d, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}", &buf, 0x50u);
      }

      sub_1001928D0(a1, (a1 + 1584), 0, 0);
      goto LABEL_21;
    }

LABEL_17:
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v31 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v51 = 2082;
      v52 = "";
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, cached reference location not available}", &buf, 0x12u);
    }

LABEL_21:
    if (!v10)
    {
      return;
    }

    goto LABEL_22;
  }

  if (*&v34[20] <= 0.0)
  {
    goto LABEL_17;
  }

  if (qword_1025D4650 != -1)
  {
    sub_100244280();
  }

  v32 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 11768);
    buf = 68290819;
    v51 = 2082;
    v52 = "";
    v53 = 1026;
    v54 = v33;
    v55 = 1026;
    *v56 = v38;
    *&v56[4] = 2053;
    *&v56[6] = *&v34[4];
    *&v56[14] = 2053;
    *&v56[16] = *&v34[12];
    *&v56[24] = 2050;
    *&v56[26] = *&v34[28];
    *&v56[34] = 2050;
    *&v56[36] = *&v34[20];
    *&v56[44] = 2050;
    *&v56[46] = *&v34[36];
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, feed cached reference location as assistance location, isEmergency:%{public}d, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}", &buf, 0x50u);
  }

  sub_1001928D0(a1, v34, 0, 0);
  v10 = v43;
  if (v43)
  {
LABEL_22:
    sub_100008080(v10);
  }
}

uint64_t sub_1001BB7DC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    sub_100072AFC(a1 + 32, __p);
    if (v8 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = *(a1 + 160);
    v5 = *(a1 + 508);
    *buf = 68289795;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2085;
    v14 = v3;
    v15 = 1026;
    v16 = v4;
    v17 = 2050;
    v18 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#GnssRefLocationCache,getCachedReferenceLocation, location,:%{sensitive, location:escape_only}s, integrity:%{public}d, undulation:%{public}f}", buf, 0x2Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1 + 32;
}

BOOL sub_1001BB918(uint64_t a1)
{
  if (*(a1 + 1545) != 1)
  {
    return 0;
  }

  result = sub_100195DDC(a1, a1 + 8280, *(a1 + 9096));
  if (result)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 9096);
      v5[0] = 68289282;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2050;
      v9 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,useTightlyCoupledPosInFarStartTest, age:%{public}f}", v5, 0x1Cu);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1001BBA20(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32, &unk_101C66300, buf) + 32) = v28;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10066AF9C(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D7A61;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018F6524();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1018F721C(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_1001BBDD8(uint64_t a1, int *a2, _DWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  *a3 = *v8;
  return 1;
}

void sub_1001BBE34(uint64_t a1, int *a2)
{
  v4 = sub_1000081AC();
  v5 = *(a2 + 63);
  if (v5 <= 0.0)
  {
    v6 = (a2 + 19);
    if (*(a2 + 19) <= 0.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v31 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v32 = *v6;
        LODWORD(buf[0]) = 134349056;
        *(buf + 4) = v32;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "#GnssAssistancePosition,feedAssistanceLocation,missing timestamp,%{public}.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A965D8((a2 + 19));
      }

      return;
    }

    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 63);
      LODWORD(buf[0]) = 134349056;
      *(buf + 4) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#GnssAssistancePosition,#Warning,feedAssistanceLocation,missing mct timestamp,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A966DC(a2 + 63);
    }

    v5 = v4 - (CFAbsoluteTimeGetCurrent() - *v6);
    *(a2 + 63) = v5;
  }

  v9 = v4 - v5;
  if (v9 > 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  *(a2 + 102) = v10;
  v168 = 0;
  v167 = 0.0;
  v166 = 0;
  sub_1001B4048(a1, a2[118], &v168, &v167, &v166, *(a2 + 1), *(a2 + 3), *(a2 + 7), *(a2 + 9), *(a2 + 119));
  *(a2 + 7) = v167;
  v11 = v166;
  *(a2 + 9) = v166;
  v116 = *(a2 + 5);
  if ((*(a1 + 11768) & 1) == 0)
  {
    v17 = *(a1 + 8240);
    if (*(a1 + 8248) == v17 || (v18 = *(a1 + 8264), v19 = (v17 + 8 * (v18 >> 9)), v20 = *v19, v21 = &(*v19)[v18 & 0x1FF], v22 = *(v17 + (((*(a1 + 8272) + v18) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 8272) + v18) & 0x1FF), v21 == v22))
    {
      v29 = 0;
      v23 = 0;
      v28 = *(a2 + 824);
      v24 = 0.0;
    }

    else
    {
      v23 = 0;
      v24 = 0.0;
      do
      {
        v25 = *v21++;
        v26 = v25;
        if (v21 - v20 == 4096)
        {
          v27 = v19[1];
          ++v19;
          v20 = v27;
          v21 = v27;
        }

        v24 = v24 + (v26 - v24) / ++v23;
      }

      while (v21 != v22);
      v28 = *(a2 + 824);
      v29 = v23 == 20;
      if (v28 == 1 && v23 == 20 && v24 > 13.4112)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v30 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *&buf[0] = 68289282;
          WORD4(buf[0]) = 2082;
          *(buf + 10) = "";
          WORD1(buf[1]) = 2050;
          *(&buf[1] + 4) = v24;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, Position Assistance: withdrawing tight coupling assistance due to average user speed, averageSpeed:%{public}f}", buf, 0x1Cu);
        }

        v28 = 0;
        *(a2 + 824) = 0;
        v23 = 20;
        v29 = 1;
      }
    }

    if (v9 > 0.0)
    {
      v35 = v9 <= 1.0 || v9 == INFINITY;
      v33 = 0.65;
      if (!v35)
      {
        v33 = v9 + 0.65;
      }
    }

    else
    {
      v33 = 0.65;
    }

    v36 = *(a2 + 5);
    if (v36 > 0.0)
    {
      v37 = v24 * 1.5;
      if (!v29)
      {
        v37 = 13.4112;
      }

      v36 = sqrt(v37 * (v37 * (v33 * v33)) + v36 * v36);
      *(a2 + 5) = v36;
    }

    v38 = *(a2 + 9);
    if (v38 > 0.0)
    {
      v38 = sqrt(v33 * v33 + v38 * v38);
      *(a2 + 9) = v38;
    }

    if (v9 > 0.0 && v9 != INFINITY && ((v28 ^ 1) & 1) == 0)
    {
      *(a2 + 19) = v9 + *(a2 + 19);
      *(a2 + 24) = sub_1000137E0();
      *(a2 + 63) = sub_1000081AC();
      *(a2 + 23) = v9 + *(a2 + 23);
      *(a2 + 102) = 0;
      v36 = *(a2 + 5);
      v38 = *(a2 + 9);
    }

    v39 = v38;
    if (v36 <= 0.0)
    {
LABEL_71:
      if (v39 <= 0.0)
      {
        goto LABEL_82;
      }

      *(a2 + 9) = (v39 * 1.95996398 + 25.0) / 1.95996398;
      if (*(a1 + 11768) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v44 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *&buf[0] = 68289026;
          WORD4(buf[0]) = 2082;
          *(buf + 10) = "";
          v45 = v44;
          v46 = OS_LOG_TYPE_DEFAULT;
LABEL_81:
          _os_log_impl(dword_100000000, v45, v46, "{msg%{public}.0s:#GnssAssistancePosition, adjust,vunc}", buf, 0x12u);
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v47 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *&buf[0] = 68289026;
          WORD4(buf[0]) = 2082;
          *(buf + 10) = "";
          v45 = v47;
          v46 = OS_LOG_TYPE_DEBUG;
          goto LABEL_81;
        }
      }

LABEL_82:
      v48 = *(a2 + 5);
      v49 = *(a2 + 9);
      v50 = -1.0;
      if (*(a1 + 5668) > 0.0)
      {
        sub_1001097CC((a1 + 11656), a1 + 5648, a2);
        v50 = v51;
        v52 = 1.0;
        v53 = v24 * -0.48 + 1.0;
        v54 = 0.0;
        if (v53 < 0.0)
        {
          v53 = 0.0;
        }

        if (v53 > 1.0)
        {
          v53 = 1.0;
        }

        if (v50 * -0.00444444444 + 1.11111111 >= 0.0)
        {
          v54 = v50 * -0.00444444444 + 1.11111111;
        }

        if (v54 <= 1.0)
        {
          v52 = v54;
        }

        v55 = v53 * v52;
        v56 = *(a2 + 5);
        if (v56 > 0.0)
        {
          if (v56 < v55 * 1.41421356 * 250.0)
          {
            v56 = v55 * 1.41421356 * 250.0;
          }

          *(a2 + 5) = v56;
        }

        v57 = *(a2 + 9);
        if (v57 > 0.0)
        {
          v58 = v55 * 250.0;
          if (v57 >= v58)
          {
            v58 = *(a2 + 9);
          }

          *(a2 + 9) = v58;
        }
      }

      if (*(a1 + 11768) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v59 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_110;
        }

        v60 = *(a2 + 5);
        v61 = *(a2 + 9);
        *&buf[0] = 68292098;
        WORD4(buf[0]) = 2082;
        *(buf + 10) = "";
        WORD1(buf[1]) = 2050;
        *(&buf[1] + 4) = v10;
        WORD6(buf[1]) = 1026;
        *(&buf[1] + 14) = v23;
        WORD1(buf[2]) = 2050;
        *(&buf[2] + 4) = v24;
        WORD6(buf[2]) = 2050;
        *(&buf[2] + 14) = v50;
        WORD3(buf[3]) = 2050;
        *(&buf[3] + 1) = v116;
        LOWORD(buf[4]) = 2050;
        *(&buf[4] + 2) = v36;
        WORD5(buf[4]) = 2050;
        *(&buf[4] + 12) = v48;
        WORD2(buf[5]) = 2050;
        *(&buf[5] + 6) = v60;
        HIWORD(buf[5]) = 2050;
        *&buf[6] = v11;
        WORD4(buf[6]) = 2050;
        *(&buf[6] + 10) = v38;
        WORD1(buf[7]) = 2050;
        *(&buf[7] + 4) = v49;
        WORD6(buf[7]) = 2050;
        *(&buf[7] + 14) = v61;
        v13 = "{msg%{public}.0s:#GnssAssistancePosition, Position Assistance, assistanceAge:%{public}f, validRecentSpeeds:%{public}d, averageSpeed:%{public}f, assistanceInnovation:%{public}f, huncOriginal:%{public}f, huncPropagated:%{public}f, huncMomentMatched:%{public}f, huncDiluted:%{public}f, vuncOriginal:%{public}f, vuncPropagated:%{public}f, vuncMomentMatched:%{public}f, vuncDiluted:%{public}f}";
        v14 = v59;
        v15 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v62 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_110;
        }

        v63 = *(a2 + 5);
        v64 = *(a2 + 9);
        *&buf[0] = 68292098;
        WORD4(buf[0]) = 2082;
        *(buf + 10) = "";
        WORD1(buf[1]) = 2050;
        *(&buf[1] + 4) = v10;
        WORD6(buf[1]) = 1026;
        *(&buf[1] + 14) = v23;
        WORD1(buf[2]) = 2050;
        *(&buf[2] + 4) = v24;
        WORD6(buf[2]) = 2050;
        *(&buf[2] + 14) = v50;
        WORD3(buf[3]) = 2050;
        *(&buf[3] + 1) = v116;
        LOWORD(buf[4]) = 2050;
        *(&buf[4] + 2) = v36;
        WORD5(buf[4]) = 2050;
        *(&buf[4] + 12) = v48;
        WORD2(buf[5]) = 2050;
        *(&buf[5] + 6) = v63;
        HIWORD(buf[5]) = 2050;
        *&buf[6] = v11;
        WORD4(buf[6]) = 2050;
        *(&buf[6] + 10) = v38;
        WORD1(buf[7]) = 2050;
        *(&buf[7] + 4) = v49;
        WORD6(buf[7]) = 2050;
        *(&buf[7] + 14) = v64;
        v13 = "{msg%{public}.0s:#GnssAssistancePosition, Position Assistance, assistanceAge:%{public}f, validRecentSpeeds:%{public}d, averageSpeed:%{public}f, assistanceInnovation:%{public}f, huncOriginal:%{public}f, huncPropagated:%{public}f, huncMomentMatched:%{public}f, huncDiluted:%{public}f, vuncOriginal:%{public}f, vuncPropagated:%{public}f, vuncMomentMatched:%{public}f, vuncDiluted:%{public}f}";
        v14 = v62;
        v15 = OS_LOG_TYPE_DEBUG;
      }

      v16 = 134;
      goto LABEL_109;
    }

    *(a2 + 5) = (v36 * 1.73081838 + 25.0) / 1.73081838;
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v40 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }

      *&buf[0] = 68289026;
      WORD4(buf[0]) = 2082;
      *(buf + 10) = "";
      v41 = v40;
      v42 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v43 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_70;
      }

      *&buf[0] = 68289026;
      WORD4(buf[0]) = 2082;
      *(buf + 10) = "";
      v41 = v43;
      v42 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v41, v42, "{msg%{public}.0s:#GnssAssistancePosition, adjust,hunc}", buf, 0x12u);
LABEL_70:
    v39 = *(a2 + 9);
    goto LABEL_71;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v12 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0] = 68289794;
    WORD4(buf[0]) = 2082;
    *(buf + 10) = "";
    WORD1(buf[1]) = 2050;
    *(&buf[1] + 4) = v10;
    WORD6(buf[1]) = 2050;
    *(&buf[1] + 14) = v116;
    WORD3(buf[2]) = 2050;
    *(&buf[2] + 1) = v11;
    v13 = "{msg%{public}.0s:#GnssAssistancePosition, Position Assistance(undiluted), assistanceAge:%{public}f, huncOriginal:%{public}f, vuncOriginal:%{public}f}";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 48;
LABEL_109:
    _os_log_impl(dword_100000000, v14, v15, v13, buf, v16);
  }

LABEL_110:
  if (!sub_1001BB918(a1))
  {
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v84 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v85 = *(a2 + 1);
        v86 = *(a2 + 3);
        v87 = *(a2 + 7);
        v88 = *(a2 + 5);
        v89 = *(a2 + 9);
        v90 = *(a2 + 102);
        v91 = *(a2 + 824);
        v92 = *(a2 + 19);
        *&buf[0] = 68291075;
        WORD4(buf[0]) = 2082;
        *(buf + 10) = "";
        WORD1(buf[1]) = 2053;
        *(&buf[1] + 4) = v85;
        WORD6(buf[1]) = 2053;
        *(&buf[1] + 14) = v86;
        WORD3(buf[2]) = 2050;
        *(&buf[2] + 1) = v87;
        LOWORD(buf[3]) = 2050;
        *(&buf[3] + 2) = v88;
        WORD5(buf[3]) = 2050;
        *(&buf[3] + 12) = v89;
        WORD2(buf[4]) = 2050;
        *(&buf[4] + 6) = v90;
        HIWORD(buf[4]) = 1026;
        LODWORD(buf[5]) = v91;
        WORD2(buf[5]) = 1026;
        *(&buf[5] + 6) = v92;
        v93 = v84;
        v94 = OS_LOG_TYPE_DEFAULT;
LABEL_139:
        _os_log_impl(dword_100000000, v93, v94, "{msg%{public}.0s:#GnssAssistancePosition, location assistance, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, age:%{public}.1f, isCPI:%{public}d, timestamp:%{public}d}", buf, 0x5Au);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v98 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v99 = *(a2 + 1);
        v100 = *(a2 + 3);
        v101 = *(a2 + 7);
        v102 = *(a2 + 5);
        v103 = *(a2 + 9);
        v104 = *(a2 + 102);
        v105 = *(a2 + 824);
        v106 = *(a2 + 19);
        *&buf[0] = 68291075;
        WORD4(buf[0]) = 2082;
        *(buf + 10) = "";
        WORD1(buf[1]) = 2053;
        *(&buf[1] + 4) = v99;
        WORD6(buf[1]) = 2053;
        *(&buf[1] + 14) = v100;
        WORD3(buf[2]) = 2050;
        *(&buf[2] + 1) = v101;
        LOWORD(buf[3]) = 2050;
        *(&buf[3] + 2) = v102;
        WORD5(buf[3]) = 2050;
        *(&buf[3] + 12) = v103;
        WORD2(buf[4]) = 2050;
        *(&buf[4] + 6) = v104;
        HIWORD(buf[4]) = 1026;
        LODWORD(buf[5]) = v105;
        WORD2(buf[5]) = 1026;
        *(&buf[5] + 6) = v106;
        v93 = v98;
        v94 = OS_LOG_TYPE_DEBUG;
        goto LABEL_139;
      }
    }

    v107 = *(a2 + 7);
    v118[6] = *(a2 + 6);
    v118[7] = v107;
    v119[0] = *(a2 + 8);
    *(v119 + 12) = *(a2 + 35);
    v108 = *(a2 + 3);
    v118[2] = *(a2 + 2);
    v118[3] = v108;
    v109 = *(a2 + 5);
    v118[4] = *(a2 + 4);
    v118[5] = v109;
    v110 = *(a2 + 1);
    v118[0] = *a2;
    v118[1] = v110;
    memcpy(v120, a2 + 40, sizeof(v120));
    v121 = *(a2 + 85);
    v111 = *(a2 + 86);
    v122 = v111;
    if (v111)
    {
      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v112 = *(a2 + 194);
    v127 = *(a2 + 190);
    v128[0] = v112;
    *(v128 + 9) = *(a2 + 785);
    v113 = *(a2 + 178);
    v123 = *(a2 + 174);
    v124 = v113;
    v114 = *(a2 + 186);
    v125 = *(a2 + 182);
    v126 = v114;
    v128[2] = *(a2 + 202);
    v129 = *(a2 + 103);
    v115 = *(a1 + 32);
    if (!v115)
    {
      sub_1000CF05C();
    }

    (*(*v115 + 48))(v115, v118);
    v97 = v122;
    if (v122)
    {
      goto LABEL_144;
    }

    return;
  }

  v65 = *a2;
  v66 = *(a2 + 15);
  v162 = *(a2 + 11);
  v163 = v66;
  v164 = *(a2 + 19);
  v165 = a2[23];
  v67 = *(a2 + 29);
  buf[0] = *(a2 + 25);
  buf[1] = v67;
  v68 = *(a2 + 33);
  *&buf[3] = *(a2 + 37);
  buf[2] = v68;
  memcpy(&buf[3] + 12, a2 + 40, 0x201uLL);
  v69 = *(a2 + 85);
  v70 = *(a2 + 86);
  if (v70)
  {
    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v71 = *(a2 + 194);
  v160 = *(a2 + 190);
  v161[0] = v71;
  *(v161 + 9) = *(a2 + 785);
  v72 = *(a2 + 178);
  v156 = *(a2 + 174);
  v157 = v72;
  v73 = *(a2 + 182);
  v159 = *(a2 + 186);
  v158 = v73;
  v74 = *(a2 + 101);
  v117 = *(a2 + 51);
  v75 = *(a1 + 8376);
  v76 = *(a1 + 8284);
  v77 = *(a1 + 8292);
  v78 = *(a1 + 8308);
  v79 = *(a1 + 8300);
  v80 = *(a1 + 8316);
  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v81 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v169 = 68290819;
      v170 = 0;
      v171 = 2082;
      v172 = "";
      v173 = 2053;
      v174 = v76;
      v175 = 2053;
      v176 = v77;
      v177 = 2050;
      v178 = v78;
      v179 = 2050;
      v180 = v79;
      v181 = 2050;
      v182 = v80;
      v183 = 2050;
      v184 = v117;
      v185 = 1026;
      v186 = 1;
      v82 = v81;
      v83 = OS_LOG_TYPE_DEFAULT;
LABEL_127:
      _os_log_impl(dword_100000000, v82, v83, "{msg%{public}.0s:#GnssAssistancePosition, location assistance, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, age:%{public}.1f, isCPI:%{public}d}", v169, 0x54u);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v95 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v169 = 68290819;
      v170 = 0;
      v171 = 2082;
      v172 = "";
      v173 = 2053;
      v174 = v76;
      v175 = 2053;
      v176 = v77;
      v177 = 2050;
      v178 = v78;
      v179 = 2050;
      v180 = v79;
      v181 = 2050;
      v182 = v80;
      v183 = 2050;
      v184 = v117;
      v185 = 1026;
      v186 = 1;
      v82 = v95;
      v83 = OS_LOG_TYPE_DEBUG;
      goto LABEL_127;
    }
  }

  v131 = v76;
  v132 = v77;
  v133 = v79;
  v134 = v78;
  v135 = v80;
  v136 = v162;
  v137 = v163;
  v138 = v164;
  v130 = v65;
  v139 = v165;
  v140 = v75;
  v144 = *&buf[3];
  v143 = buf[2];
  v142 = buf[1];
  v141 = buf[0];
  memcpy(v145, &buf[3] + 12, sizeof(v145));
  v146 = v69;
  v147 = v70;
  if (v70)
  {
    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v152 = v160;
  v153[0] = v161[0];
  *(v153 + 9) = *(v161 + 9);
  v148 = v156;
  v149 = v157;
  v150 = v158;
  v151 = v159;
  v154 = v74;
  v155 = v117;
  v96 = *(a1 + 32);
  if (!v96)
  {
    sub_1000CF05C();
  }

  (*(*v96 + 48))(v96, &v130);
  if (v147)
  {
    sub_100008080(v147);
  }

  if (v70)
  {
    v97 = v70;
LABEL_144:
    sub_100008080(v97);
  }
}

void sub_1001BCEA0(_Unwind_Exception *a1)
{
  if (STACK[0x2C0])
  {
    sub_100008080(STACK[0x2C0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001BCEDC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  v3 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 1224);
    v7 = *(a1 + 1249);
    v8 = *(a1 + 2499);
    v9 = *(a1 + 1222);
    v10 = *(a1 + 744);
    v18[0] = 68290562;
    v18[1] = 0;
    v19 = 2082;
    v20 = "";
    v21 = 1026;
    v22 = v5;
    v23 = 1026;
    v24 = v6;
    v25 = 1026;
    v26 = v7;
    v27 = 1026;
    v28 = v8;
    v29 = 1026;
    v30 = v9;
    v31 = 1026;
    v32 = v10;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:expectedState, fDeviceReady:%{public}hhd, fPreventSessionsDueToPendingApSleep:%{public}hhd, fNilrActive:%{public}hhd, fNilrLockoutStatus:%{public}hhd, fIsConformanceMode:%{public}hhd, fHasClient:%{public}hhd}", v18, 0x36u);
  }

  if (*(a1 + 8) != 1 || (*(a1 + 1224) & 1) != 0 || *(a1 + 748) != 1)
  {
    return 0;
  }

  v11 = sub_1001B57D8(v3, v4);
  if (v11 || *(a1 + 1249) != 1 || *(a1 + 2499) == 1)
  {
    v13 = sub_1001B57D8(v11, v12);
    v15 = v13 && sub_1001B589C(v13, v14);
    v16 = *(a1 + 1222);
    if ((v16 & 1) == 0)
    {
      if ((*(a1 + 744) & 1) != 0 || sub_100265700(a1 + 1228))
      {
        return 1;
      }

      v16 = *(a1 + 1222);
    }

    return (v16 & v15 & 1) != 0 && (*(a1 + 1249) & 1) != 0;
  }

  return 2;
}

uint64_t sub_1001BD094(void *a1, int a2)
{
  switch(a2)
  {
    case 0:
      sub_1001B59B8(a1);
      a1[92] = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.gnss.on"];
      v6 = a1[142];
      if (v6)
      {
        sub_1001C0938(v6);
      }

      *(a1 + 1360) = 0;
      *(a1 + 341) = sub_1000081AC();
      sub_1001B6020(v16, (a1 + 73));
      sub_1001B60DC(a1, v16);
      sub_1001C5560(v16);
      v7 = a1[388];
      if (v7)
      {
        sub_1007FD3D4(v7);
      }

      sub_1001C55E4(a1);
      *(a1 + 2570) = 0;
      goto LABEL_75;
    case 1:
      sub_1001C55E4(a1);
      if (a1[112])
      {
        if (qword_1025D4650 != -1)
        {
          sub_10194117C();
        }

        v8 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#rti,reverting to nominal download rates on session exit", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019414D4();
        }

        sub_1002546D0(a1[112], 0);
      }

      if (a1[106])
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v9 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#ee,reverting to nominal download rates on session exit", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019415B8();
        }

        sub_100256634(a1[106], 0);
      }

      if (a1[109])
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v10 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#rte,reverting to nominal download rates on session exit", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194169C();
        }

        sub_1002568F8(a1[109], 0, 0);
      }

      if (a1[118])
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#rof,reverting to nominal download rates on session exit", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101941780();
        }

        sub_1002568F8(a1[118], 0, 1);
      }

      sub_1001B59B8(a1);
      sub_1001B6020(v15, (a1 + 77));
      sub_1007FD590(a1, v15);
      sub_1001C5560(v15);
      v12 = a1[92];
      if (v12)
      {

        a1[92] = 0;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v13 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "os transaction already nil", v14, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101941864();
        }
      }

      if (*(a1 + 2570) == 1 && *a1)
      {
        (*(**a1 + 32))(*a1);
      }

      goto LABEL_75;
    case 2:
    case 5:
    case 7:
    case 9:
    case 11:
    case 13:
      v3 = sub_1001BCEDC(a1);
      if (!v3)
      {
        if ((a1[96] & 1) == 0)
        {
          if (qword_1025D4650 != -1)
          {
            sub_10194117C();
          }

          v5 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#GnssController,debounce timer not running when expected to be running", v14, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1019413E8();
          }

          sub_1002660A8(a1);
        }

        goto LABEL_75;
      }

      if (v3 == 1)
      {
        sub_1001B59B8(a1);
        goto LABEL_75;
      }

      return 2;
    case 3:
    case 12:
    case 14:
      result = sub_1001BCEDC(a1);
      if (result)
      {
        return result;
      }

      if (sub_100265160(a1, 1) > 0.0)
      {
        sub_1002660A8(a1);
        goto LABEL_75;
      }

LABEL_8:
      result = 0;
      break;
    case 4:
      if ((sub_10001CF3C() & 1) != 0 || (a1[71] & 0xFFFFFFFE) != 0xA)
      {
        sub_1002660A8(a1);
        if (*a1)
        {
          (*(**a1 + 32))(*a1);
        }

LABEL_75:
        result = 1;
      }

      else
      {
        result = 0;
        *(a1 + 2570) = 1;
      }

      break;
    case 6:
    case 8:
    case 10:
    case 16:
      goto LABEL_8;
    case 15:
      sub_1007FD0BC(a1);
      goto LABEL_75;
    case 17:

      return sub_1001BCEDC(a1);
    default:
      goto LABEL_75;
  }

  return result;
}

void sub_1001BD61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C5560(va);
  _Unwind_Resume(a1);
}

void sub_1001BD68C(uint64_t result, void *a2, void *a3)
{
  v19 = a2;
  if (*(result + 2506) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134284033;
      Current = CFAbsoluteTimeGetCurrent();
      v22 = 1025;
      v23 = a2;
      v24 = 1025;
      v25 = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#gnssca,handleGnssSessionEventForAnalytics, eventTime,%{private}.1lf, eventType,%{private}d, eventStatus,%{private}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB5A4(a3, a2);
    }
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (!a3)
      {
        v16 = sub_1001B5AB4(result, 1);
        if (v16)
        {
          buf[0] = 0;
          sub_1001C992C(v16, &v19, buf);
        }

        *buf = 2;
        v17 = *(result + 2320);
        if (!v17)
        {
          return;
        }

        while (1)
        {
          if (sub_1000735F4(v17 + 3, buf))
          {
            v18 = sub_1000735F4(v17 + 3, buf);
            if (!v18)
            {
LABEL_49:
              sub_1000432E8("unordered_map::at: key not found");
            }

            if (v18[5])
            {
              break;
            }
          }

          v17 = *v17;
          if (!v17)
          {
            return;
          }
        }

LABEL_19:
        v10 = result;
        v11 = 5;
LABEL_24:
        sub_1001BE898(v10, v11);
        return;
      }

      v12 = sub_1001BE898(result, 1);
      if (!v12)
      {
        goto LABEL_34;
      }

      buf[0] = 1;
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      if (a3)
      {
        v7 = sub_1001BE898(result, 2);
        if (v7)
        {
          buf[0] = 1;
          sub_1001C992C(v7, &v19, buf);
        }

        *buf = 1;
        v8 = *(result + 2320);
        if (v8)
        {
          while (1)
          {
            if (sub_1000735F4(v8 + 3, buf))
            {
              v9 = sub_1000735F4(v8 + 3, buf);
              if (!v9)
              {
                goto LABEL_49;
              }

              if (v9[5])
              {
                return;
              }
            }

            v8 = *v8;
            if (!v8)
            {
              goto LABEL_19;
            }
          }
        }

        goto LABEL_19;
      }

      v12 = sub_1001B5AB4(result, 2);
      if (!v12)
      {
        goto LABEL_34;
      }

      buf[0] = 0;
    }

    sub_1001C992C(v12, &v19, buf);
LABEL_34:
    v14 = result;
    v15 = 5;
    goto LABEL_36;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    if (a3)
    {
      sub_1001BE1D0(result);
      v10 = result;
      v11 = 4;
      goto LABEL_24;
    }

    v14 = result;
    v15 = 4;
LABEL_36:
    sub_1001B5AB4(v14, v15);
    return;
  }

  if (a3)
  {
    v13 = sub_1001BE898(result, 3);
    if (!v13)
    {
      return;
    }

    buf[0] = 1;
  }

  else
  {
    v13 = sub_1001B5AB4(result, 3);
    if (!v13)
    {
      return;
    }

    buf[0] = 0;
  }

  sub_1001C992C(v13, &v19, buf);
}

void sub_1001BD950(uint64_t a1, uint64_t *a2)
{
  sub_1001B6830(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_1001BD9F4(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_10045E858(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = (a1[2] - v7);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_1001BDAD4(void *a1, void *a2)
{
  v4 = a1 + 1;
  sub_10018F070(a1, a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

NSMutableSet *sub_1001BDB40(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 752);
  if (v3 != (a1 + 760))
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

    while (v6 != (a1 + 760));
  }

  return v2;
}

void sub_1001BDC1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B92D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

BOOL sub_1001BDC70(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FE30(a1, a2);
  sub_10001CAF4(&v7);
  v9 = 0;
  v3 = sub_10001CB4C(v7, "EnableGnssB13FilterInAllSessions", &v9, 0xFFFFFFFFLL);
  v4 = v9;
  if (v8)
  {
    sub_100008080(v8);
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

void sub_1001BDCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001BDD00(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024B9AC8;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1001BDD28(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 == 1)
  {
    if ((atomic_load_explicit(&qword_102659238, memory_order_acquire) & 1) == 0)
    {
      a1 = __cxa_guard_acquire(&qword_102659238);
      if (a1)
      {
        sub_10001CAF4(buf);
        LOBYTE(v16[0]) = 0;
        v14 = sub_10001CB4C(*buf, "GnssForceRequireBC", v16, 0xFFFFFFFFLL);
        v15 = v14 & v16[0];
        if (v22)
        {
          sub_100008080(v22);
        }

        byte_102659230 = v15;
        __cxa_guard_release(&qword_102659238);
      }
    }

    if (qword_1026592D8 != -1)
    {
      sub_10191C250();
    }

    v3 = dword_1026592D0;
    v4 = sub_1001B3D90(a1);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v7 = !sub_100718F78(v4);
      v5 = v3 == 174 || v7;
    }

    if (qword_102659268 != -1)
    {
      sub_10191CC50();
    }

    v8 = byte_102659260;
    if (v5 & 1 | ((byte_102659260 & 1) == 0) || !v2)
    {
      v6 = byte_102659230;
    }

    else
    {
      v6 = 1;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10191C518();
    }

    v9 = v8 & 1;
    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67175169;
      *&buf[4] = v6 & 1;
      LOWORD(v22) = 1025;
      *(&v22 + 2) = v2;
      HIWORD(v22) = 1025;
      v23 = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#bcr,%{private}d,in region,%{private}d,region sku,%{private}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10191C518();
      }

      v16[0] = 67175169;
      v16[1] = v6 & 1;
      v17 = 1025;
      v18 = v2;
      v19 = 1025;
      v20 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#bcr,%{private}d,in region,%{private}d,region sku,%{private}d", v16, 20);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLPlatformInfo::isBeiDouConsistencySupported(BOOL)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1001BE010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  __cxa_guard_abort(&qword_102659238);
  _Unwind_Resume(a1);
}

uint64_t sub_1001BE044(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2) + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 24);
    }

    result = ((v3 >> 3) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_1001BE0B8(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 8), a2, a4);
    if ((*(v5 + 24) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 18), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 19);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

void sub_1001BE17C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B9AC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001BE1D0(uint64_t a1)
{
  v2 = sub_1001B8DBC();
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 2384);
  if (qword_1025D4650 != -1)
  {
    sub_1016C8A14();
  }

  v5 = Current - v4;
  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 2376);
    *buf = 134284033;
    *v62 = v2;
    *&v62[8] = 2049;
    v63 = v7;
    *v64 = 2049;
    *&v64[2] = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#gnssca,submitGnssDailyUseMetricsOnDayChange,currentSecondsIntoDay_s,%{private}.1lf,secondsIntoDayAtLastGnssSessionStart_s,%{private}.1lf,timeSinceGnssDailyUseMetricsInitialization_s,%{private}.1lf,", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v18 = *(a1 + 2376);
    v37 = 134284033;
    *v38 = v2;
    *&v38[8] = 2049;
    v39 = v18;
    *v40 = 2049;
    *&v40[2] = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#gnssca,submitGnssDailyUseMetricsOnDayChange,currentSecondsIntoDay_s,%{private}.1lf,secondsIntoDayAtLastGnssSessionStart_s,%{private}.1lf,timeSinceGnssDailyUseMetricsInitialization_s,%{private}.1lf,", &v37, 32);
    v20 = v19;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::submitGnssDailyUseMetricsOnDayChange()", "%s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  if (v5 > 86400.0 && *(a1 + 2376) > v2)
  {
    v36 = a1;
    v35 = 0u;
    v24 = sub_1016C6990(&v36, 0, 4);
    v25 = sub_1016C6990(&v36, 0, 1);
    v26 = sub_1016C6990(&v36, 0, 2);
    v27 = sub_1016C6990(&v36, 0, 3);
    v28 = sub_1016C6990(&v36, 0, 5);
    v29 = sub_1016C6990(&v36, 1, 1);
    v30 = sub_1016C6990(&v36, 1, 3);
    v31 = sub_1016C6990(&v36, 2, 1);
    v32 = sub_1016C6990(&v36, 2, 3);
    v33 = sub_1016C6990(&v36, 3, 1);
    v34 = sub_1016C6990(&v36, 3, 3);
    LODWORD(v35) = sub_1016C6990(&v36, 4, 1);
    v8 = sub_1016C6990(&v36, 4, 3);
    *(&v35 + 4) = __PAIR64__(*(a1 + 2400), v8);
    HIDWORD(v35) = (*(a1 + 2768) - *(a1 + 2760));
    v10 = sub_1001EC310(v8, v9);
    sub_1006FE900(v10, &v24);
    if (*(a1 + 2506) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67178241;
        *v62 = v24;
        *&v62[4] = 1025;
        *&v62[6] = v25;
        LOWORD(v63) = 1025;
        *(&v63 + 2) = v26;
        HIWORD(v63) = 1025;
        *v64 = v27;
        *&v64[4] = 1025;
        *&v64[6] = v28;
        v65 = 1025;
        v66 = v29;
        v67 = 1025;
        v68 = v30;
        v69 = 1025;
        v70 = v31;
        v71 = 1025;
        v72 = v32;
        v73 = 1025;
        v74 = v33;
        v75 = 1025;
        v76 = v34;
        v77 = 1025;
        v78 = v35;
        v79 = 1025;
        v80 = DWORD1(v35);
        v81 = 1025;
        v82 = DWORD2(v35);
        v83 = 1025;
        v84 = HIDWORD(v35);
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gnssca,submitGnssDailyUseMetricsOnDayChange,dailyGnssUsageSeconds,%{private}d,dailyClientSessionSeconds,%{private}d,dailyProactiveGnssSeconds,%{private}d,dailyDebouncePeriodSeconds,%{private}d,dailyExclusiveProactiveGnssSeconds,%{private}d,dailyClientGnssDisplayOnOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOnInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnInsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffInsideVisitSeconds,%{private}d,dailyGnssUsageWithShortOrWiFiAssociatedSessionsSeconds,%{private}d,dailyGnssUsageNetProactiveLocationBalanceSeconds,%{private}d", buf, 0x5Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v37 = 67178241;
        *v38 = v24;
        *&v38[4] = 1025;
        *&v38[6] = v25;
        LOWORD(v39) = 1025;
        *(&v39 + 2) = v26;
        HIWORD(v39) = 1025;
        *v40 = v27;
        *&v40[4] = 1025;
        *&v40[6] = v28;
        v41 = 1025;
        v42 = v29;
        v43 = 1025;
        v44 = v30;
        v45 = 1025;
        v46 = v31;
        v47 = 1025;
        v48 = v32;
        v49 = 1025;
        v50 = v33;
        v51 = 1025;
        v52 = v34;
        v53 = 1025;
        v54 = v35;
        v55 = 1025;
        v56 = DWORD1(v35);
        v57 = 1025;
        v58 = DWORD2(v35);
        v59 = 1025;
        v60 = HIDWORD(v35);
        LODWORD(v23) = 92;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssca,submitGnssDailyUseMetricsOnDayChange,dailyGnssUsageSeconds,%{private}d,dailyClientSessionSeconds,%{private}d,dailyProactiveGnssSeconds,%{private}d,dailyDebouncePeriodSeconds,%{private}d,dailyExclusiveProactiveGnssSeconds,%{private}d,dailyClientGnssDisplayOnOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOnInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnInsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffInsideVisitSeconds,%{private}d,dailyGnssUsageWithShortOrWiFiAssociatedSessionsSeconds,%{private}d,dailyGnssUsageNetProactiveLocationBalanceSeconds,%{private}d", &v37, v23);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::submitGnssDailyUseMetricsOnDayChange()", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

    for (i = *(a1 + 2320); i; i = *i)
    {
      for (j = i[5]; j; j = *j)
      {
        j[3] = 0;
      }
    }

    *(a1 + 2400) = 0;
    if (*(a1 + 2506))
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#gnssca,submitGnssDailyUseMetricsOnDayChange,cleared daily usage metrics", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016CB1E4();
      }
    }
  }

  *(a1 + 2376) = v2;
  if (*(a1 + 2506) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v15 = (a1 + 2376);
    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v17 = *v15;
      *buf = 134283521;
      *v62 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#gnssca,submitGnssDailyUseMetricsOnDayChange,Set SecondsIntoDayAtLastGnssSessionStart,%{private}.1lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB2C0();
    }
  }
}

uint64_t *sub_1001BE898(unsigned __int8 *a1, int a2)
{
  v4 = sub_1001B8E0C(a1, 0, a2);
  v5 = a1[2412];
  v6 = a1[2392];
  v7 = v6 ^ 1;
  if (((v5 ^ 1) & 1) != 0 || v7)
  {
    v9 = v5 ^ 1 | v6;
    if (v5 | v7)
    {
      v10 = 4;
    }

    else
    {
      v10 = 3;
    }

    if (v9 == 1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  sub_1001B8E0C(a1, v8, a2);
  if (a1[2506] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[2412];
      v13 = a1[2392];
      v15[0] = 67174913;
      v15[1] = v12;
      v16 = 1025;
      v17 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gnssca,initializeGnssDailyUseMetricsAtEventStart,isDisplayOn,%{private}d,isOutsideVisit,%{private}d", v15, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB3AC();
    }
  }

  return v4;
}

void sub_1001BE9FC(uint64_t a1)
{
  v6 = 0u;
  *(&v5 + 1) = &v6;
  v7 = -1;
  *a1 = 0;
  *(a1 + 2) = 0;
  v2 = (a1 + 16);
  sub_1003C93BC(a1 + 8, *(a1 + 16));
  v3 = v6;
  *(a1 + 8) = *(&v5 + 1);
  *v2 = v3;
  v4 = *(&v6 + 1);
  *(a1 + 24) = *(&v6 + 1);
  if (v4)
  {
    v3[2] = v2;
    *(&v5 + 1) = &v6;
    v6 = 0uLL;
    v3 = 0;
  }

  else
  {
    *(a1 + 8) = v2;
  }

  *(a1 + 32) = v7;
  sub_1003C93BC(&v5 + 8, v3);
  *(a1 + 264) = 0;
}

void sub_1001BEAA4(uint64_t a1)
{
  v2 = *(a1 + 1184);
  if (v2)
  {
    sub_1001B9150(v2);
  }

  v3 = *(a1 + 1192);
  if (v3)
  {
    sub_1010C0528(v3);
  }

  sub_1001B9940(a1);
}

uint64_t sub_1001BEAF0(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = 0;
  v2 = (dword_1026592D0 - 124) > 0x3D || ((1 << (dword_1026592D0 - 124)) & 0x3FF0000000000003) == 0;
  if (v2 && ((dword_1026592D0 - 196) > 0x3E || ((1 << (dword_1026592D0 + 60)) & 0x6000100000001401) == 0) && dword_1026592D0 != 115)
  {
    v1 = sub_1001C0C18(a1);
    sub_10001CAF4(&v4);
    v6 = 0;
    if (sub_10001CB4C(v4, "GnssL5AntTunerContentionWithCell", &v6, 0xFFFFFFFFLL))
    {
      v1 = v6;
    }

    if (v5)
    {
      sub_100008080(v5);
    }
  }

  return v1 & 1;
}

void sub_1001BEBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1001BEC04()
{
  v5 = -1;
  sub_10001CAF4(buf);
  v0 = sub_10005BBE4(*buf, "GnssForceL5Desire", &v5);
  if (v7)
  {
    sub_100008080(v7);
  }

  if (!v0)
  {
    goto LABEL_12;
  }

  if (v5 >= 3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A65084();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "L5Context,unhandled defaults,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A66134(&v5);
    }

LABEL_12:
    v2 = 0;
    v1 = 0;
    return v1 | v2;
  }

  v1 = v5 << 8;
  v2 = dword_100000000;
  return v1 | v2;
}

void sub_1001BED38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001BED58(uint64_t a1)
{
  result = sub_1001C0C18(a1);
  if (result)
  {
    result = sub_10006FDD0(result, v2);
    if (result)
    {
      v4 = sub_10006FEAC(result, v3);
      if (v4)
      {
        return 0;
      }

      else
      {
        return sub_1007192A4(v4, v5) ^ 1;
      }
    }
  }

  return result;
}

uint64_t sub_1001BED94(int *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[676];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#clgda,getGnssBandAtBasebandCausesL1InterferenceModeAssertion,%d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019468FC(a1);
  }

  return a1[676];
}

uint64_t sub_1001BEE70(uint64_t result)
{
  *result = off_1024B9348;
  *(result + 12) = 0;
  *(result + 8) = 0;
  return result;
}

_BYTE *sub_1001BEE98(_BYTE *a1, __n128 a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_101B77F98();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "feed assistance time when starting GPS session", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B784FC();
  }

  sub_1001BEF40(a1);
  return sub_1001B9F9C(a1, v4);
}

void sub_1001BEF40(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102664800, memory_order_acquire) & 1) == 0)
  {
    v22 = __cxa_guard_acquire(&qword_102664800);
    if (v22)
    {
      v24 = sub_100719CE4(v22, v23);
      v26 = 1.0;
      if (v24)
      {
        v27 = sub_1001B589C(v24, v25);
        v26 = 0.1;
        if (v27)
        {
          v26 = 0.0;
        }
      }

      qword_1026647F8 = *&v26;
      __cxa_guard_release(&qword_102664800);
    }
  }

  v2 = sub_1000081AC();
  v29 = 0.0;
  v30 = 0.0;
  HIDWORD(v28) = 0;
  if (off_102633D30(&v30, &v29, &v28 + 4))
  {
    v3 = HIDWORD(v28) == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v7 = sub_1000081AC();
    v8 = v7 - v2;
    v9 = *&qword_1026647F8;
    v10 = fmax(*&qword_1026647F8, 2.0);
    if (v29 > 0.2)
    {
      v9 = v10;
    }

    if (v8 * 0.5 + v29 * 2.0 >= v9)
    {
      v11 = v8 * 0.5 + v29 * 2.0;
    }

    else
    {
      v11 = v9;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101B77E74();
    }

    v12 = (v2 + v7) * 0.5;
    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350080;
      v42 = v8;
      v43 = 2050;
      v44 = v11;
      v45 = 2050;
      v46 = v12;
      v47 = 2050;
      v48 = v30;
      v49 = 2050;
      v50 = v29;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "referenceTime,delaySec,%{public}.3f,netUnc,%{public}.3f,applicabilityMct,%{public}.3f,referenceTime,%{public}.3f,%{public}.3f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B77E74();
      }

      v31 = 134350080;
      v32 = v8;
      v33 = 2050;
      v34 = v11;
      v35 = 2050;
      v36 = v12;
      v37 = 2050;
      v38 = v30;
      v39 = 2050;
      v40 = v29;
      LODWORD(v28) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "referenceTime,delaySec,%{public}.3f,netUnc,%{public}.3f,applicabilityMct,%{public}.3f,referenceTime,%{public}.3f,%{public}.3f", &v31, v28);
      v21 = v20;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceTime::feedAssistanceTime()", "%s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (v29 <= *(a1 + 64))
    {
      if (v30 <= 0.0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101B77E74();
        }

        v19 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          *buf = 134349312;
          v42 = v30;
          v43 = 2050;
          v44 = v29;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "not feeding,referenceTime,%{public}.6lf,referenceTimeUnc,%{public}.6lf,referenceTime before the 0 epoch for iPhoneTime", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B782C8(&v30);
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101B77E74();
        }

        v18 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v42 = v30;
          v43 = 2048;
          v44 = v29;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "feeding,referenceTime,%.6lf,referenceTimeUnc,%.6lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B783E8(&v30);
        }

        sub_100153008(a1 + 24, v30, v11, v12);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101B77E74();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 64);
        *buf = 134349568;
        v42 = v30;
        v43 = 2050;
        v44 = v29;
        v45 = 2050;
        v46 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning not feeding,referenceTime,%{public}.6lf,referenceTimeUnc,%{public}.6lf,uncThreshold,%{public}.3lf", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101B77E74();
        }

        v16 = *(a1 + 64);
        v31 = 134349568;
        v32 = v30;
        v33 = 2050;
        v34 = v29;
        v35 = 2050;
        v36 = v16;
        LODWORD(v28) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning not feeding,referenceTime,%{public}.6lf,referenceTimeUnc,%{public}.6lf,uncThreshold,%{public}.3lf", &v31, v28);
        v6 = v17;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceTime::feedAssistanceTime()", "%s\n", v17);
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B77E74();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349568;
      v42 = v30;
      v43 = 2050;
      v44 = v29;
      v45 = 1026;
      LODWORD(v46) = HIDWORD(v28);
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning not feeding,referenceTime,%{public}.6lf,referenceTimeUnc,%{public}.6lf,referenceTimeReliability,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B77E74();
      }

      v31 = 134349568;
      v32 = v30;
      v33 = 2050;
      v34 = v29;
      v35 = 1026;
      LODWORD(v36) = HIDWORD(v28);
      LODWORD(v28) = 28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning not feeding,referenceTime,%{public}.6lf,referenceTimeUnc,%{public}.6lf,referenceTimeReliability,%{public}d", &v31, v28);
      v6 = v5;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceTime::feedAssistanceTime()", "%s\n", v5);
LABEL_33:
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }
}

uint64_t sub_1001BF630(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 88);
  v99 = *(a1 + 4);
  if (!*(a1 + 32))
  {
    sub_101942F2C();
  }

  v6 = a1;
  if ((*(a1 + 48) & 1) == 0)
  {
    sub_10194284C(qword_1025D4650 == -1);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v8 = qword_1025D4658;
  LODWORD(v2) = *(v6 + 120);
  if (os_log_type_enabled(qword_1025D4658, *(v6 + 120)))
  {
    v9 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v9 = *v9;
    }

    v10 = *(v6 + 4);
    if (v10 > 2)
    {
      v11 = "StateUnknown";
    }

    else
    {
      v11 = (&off_102474410)[v10];
    }

    sub_10000EC00(__p, v11);
    v5 = SHIBYTE(v103);
    v12 = *__p;
    v4 = v106;
    sub_1001B5660(a2, v106);
    v13 = __p;
    if (v5 < 0)
    {
      v13 = v12;
    }

    if (v109 >= 0)
    {
      v14 = v106;
    }

    else
    {
      v14 = *v106;
    }

    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    *&buf[22] = 2080;
    *&buf[24] = v14;
    _os_log_impl(dword_100000000, v8, v2, "%scurrent_state,%s,event,%s", buf, 0x20u);
    if (v109 < 0)
    {
      operator delete(*v106);
    }

    if (SHIBYTE(v103) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v59 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v59 = *v59;
    }

    v60 = *(v6 + 4);
    if (v60 > 2)
    {
      v61 = "StateUnknown";
    }

    else
    {
      v61 = (&off_102474410)[v60];
    }

    v62 = qword_1025D4658;
    v2 = *(v6 + 120);
    sub_10000EC00(v106, v61);
    v5 = v109;
    v63 = *v106;
    v4 = v97;
    sub_1001B5660(a2, v97);
    v64 = v106;
    if (v5 < 0)
    {
      v64 = v63;
    }

    if (v98 >= 0)
    {
      v65 = v97;
    }

    else
    {
      v65 = v97[0];
    }

    *__p = 136315650;
    *&__p[4] = v59;
    v101 = 2080;
    v102 = v64;
    v103 = 2080;
    v104 = v65;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v62, v2, "%scurrent_state,%s,event,%s", __p, 32, v95);
    v67 = v66;
    if (v98 < 0)
    {
      operator delete(v97[0]);
    }

    if (v109 < 0)
    {
      operator delete(*v106);
    }

    sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLGnssController>::handleEvent(Event) [T = CLGnssController]", "%s\n", v67);
    if (v67 != buf)
    {
      free(v67);
    }
  }

  v15 = *(v6 + 16);
  if (!v15)
  {
    goto LABEL_28;
  }

  v5 = v6 + 8;
  v16 = *(v6 + 4);
  v17 = v6 + 16;
  do
  {
    if (*(v15 + 32) >= v16)
    {
      v17 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 32) < v16));
  }

  while (v15);
  if (v17 == v6 + 16 || v16 < *(v17 + 32))
  {
LABEL_28:
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }
    }

    v19 = qword_1025D4658;
    if (os_signpost_enabled(qword_1025D4658))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/GPS/Core/CLStateMachine.h", 106, "handleEvent");
    goto LABEL_159;
  }

  v20 = *(v17 + 40);
  v21 = *(v17 + 48);
  v22 = (*(v6 + 32) + (v21 >> 1));
  if (v21)
  {
    v20 = *(*v22 + v20);
  }

  v23 = v20(v22, a2);
  v2 = v23;
  v96 = v23;
  if (a2 <= 1 && v23 != v99)
  {
    sub_1019429C8();
  }

  if (*(v6 + 88) >= 2u)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v25 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315138;
      *&buf[4] = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "%sNested invocation of state machine", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101942B38();
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v26 = qword_1025D4658;
  v27 = *(v6 + 120);
  if (os_log_type_enabled(qword_1025D4658, v27))
  {
    v28 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v28 = *v28;
    }

    if (v2 > 2)
    {
      v29 = "StateUnknown";
    }

    else
    {
      v29 = (&off_102474410)[v2];
    }

    sub_10000EC00(buf, v29);
    if (buf[23] >= 0)
    {
      v30 = buf;
    }

    else
    {
      v30 = *buf;
    }

    *__p = 136315394;
    *&__p[4] = v28;
    v101 = 2080;
    v102 = v30;
    _os_log_impl(dword_100000000, v26, v27, "%snewState,%s", __p, 0x16u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v68 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v68 = *v68;
    }

    if (v2 > 2)
    {
      v69 = "StateUnknown";
    }

    else
    {
      v69 = (&off_102474410)[v2];
    }

    v70 = qword_1025D4658;
    v71 = *(v6 + 120);
    sub_10000EC00(__p, v69);
    if (v103 >= 0)
    {
      v72 = __p;
    }

    else
    {
      v72 = *__p;
    }

    *v106 = 136315394;
    *&v106[4] = v68;
    v107 = 2080;
    v108 = v72;
    LODWORD(v94) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v70, v71, "%snewState,%s", v106, v94);
    v74 = v73;
    if (SHIBYTE(v103) < 0)
    {
      operator delete(*__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLGnssController>::handleEvent(Event) [T = CLGnssController]", "%s\n", v74);
    if (v74 != buf)
    {
      free(v74);
    }
  }

  if (v2 != v99)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v31 = qword_1025D4658;
    v32 = *(v6 + 120);
    if (os_log_type_enabled(qword_1025D4658, v32))
    {
      v33 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v33 = *v33;
      }

      if (v99 > 2)
      {
        v34 = "StateUnknown";
      }

      else
      {
        v34 = (&off_102474410)[v99];
      }

      sub_10000EC00(__p, v34);
      v35 = SHIBYTE(v103);
      v36 = *__p;
      sub_10000EC00(v106, "Exit");
      v37 = __p;
      if (v35 < 0)
      {
        v37 = v36;
      }

      if (v109 >= 0)
      {
        v38 = v106;
      }

      else
      {
        v38 = *v106;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = v37;
      *&buf[22] = 2080;
      *&buf[24] = v38;
      _os_log_impl(dword_100000000, v31, v32, "%soldState,%s,event,%s", buf, 0x20u);
      if (v109 < 0)
      {
        operator delete(*v106);
      }

      if (SHIBYTE(v103) < 0)
      {
        operator delete(*__p);
      }
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_85;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v4 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v4 = *v4;
    }

    if (v99 <= 2)
    {
      v75 = (&off_102474410)[v99];
LABEL_161:
      v78 = p_info[203];
      v79 = *(v6 + 120);
      sub_10000EC00(v106, v75);
      v80 = v109;
      v81 = *v106;
      sub_10000EC00(v97, "Exit");
      v82 = v106;
      if (v80 < 0)
      {
        v82 = v81;
      }

      if (v98 >= 0)
      {
        v83 = v97;
      }

      else
      {
        v83 = v97[0];
      }

      *__p = 136315650;
      *&__p[4] = v4;
      v101 = 2080;
      v102 = v82;
      v103 = 2080;
      v104 = v83;
      LODWORD(v94) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v78, v79, "%soldState,%s,event,%s", __p, v94, v95);
      v85 = v84;
      if (v98 < 0)
      {
        operator delete(v97[0]);
      }

      if (v109 < 0)
      {
        operator delete(*v106);
      }

      sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLGnssController>::handleEvent(Event) [T = CLGnssController]", "%s\n", v85);
      if (v85 != buf)
      {
        free(v85);
      }

LABEL_85:
      v39 = *(v6 + 32);
      *buf = &v99;
      v40 = sub_1001B58E4(v5, &v99, &unk_101C66300, buf);
      v41 = v40[5];
      v42 = v40[6];
      v43 = (v39 + (v42 >> 1));
      if (v42)
      {
        v41 = *(*v43 + v41);
      }

      v44 = v41(v43, 1);
      if (v44 != v99)
      {
        sub_101942C4C();
      }

      *(v6 + 4) = v2;
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v45 = p_info[203];
      v46 = *(v6 + 120);
      if (os_log_type_enabled(v45, v46))
      {
        v47 = (v6 + 96);
        if (*(v6 + 119) < 0)
        {
          v47 = *v47;
        }

        if (v2 > 2)
        {
          v48 = "StateUnknown";
        }

        else
        {
          v48 = (&off_102474410)[v2];
        }

        sub_10000EC00(__p, v48);
        v49 = SHIBYTE(v103);
        v50 = *__p;
        sub_10000EC00(v106, "Enter");
        v51 = __p;
        if (v49 < 0)
        {
          v51 = v50;
        }

        if (v109 >= 0)
        {
          v52 = v106;
        }

        else
        {
          v52 = *v106;
        }

        *buf = 136315650;
        *&buf[4] = v47;
        *&buf[12] = 2080;
        *&buf[14] = v51;
        *&buf[22] = 2080;
        *&buf[24] = v52;
        _os_log_impl(dword_100000000, v45, v46, "%snewState,%s,event,%s", buf, 0x20u);
        if (v109 < 0)
        {
          operator delete(*v106);
        }

        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        if (SHIBYTE(v103) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v76 = (v6 + 96);
        if (*(v6 + 119) < 0)
        {
          v76 = *v76;
        }

        if (v2 > 2)
        {
          v77 = "StateUnknown";
        }

        else
        {
          v77 = (&off_102474410)[v2];
        }

        v86 = p_info[203];
        v87 = *(v6 + 120);
        sub_10000EC00(v106, v77);
        v88 = v109;
        v89 = *v106;
        sub_10000EC00(v97, "Enter");
        v90 = v106;
        if (v88 < 0)
        {
          v90 = v89;
        }

        if (v98 >= 0)
        {
          v91 = v97;
        }

        else
        {
          v91 = v97[0];
        }

        *__p = 136315650;
        *&__p[4] = v76;
        v101 = 2080;
        v102 = v90;
        v103 = 2080;
        v104 = v91;
        LODWORD(v94) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v86, v87, "%snewState,%s,event,%s", __p, v94, v95);
        v93 = v92;
        if (v98 < 0)
        {
          operator delete(v97[0]);
        }

        if (v109 < 0)
        {
          operator delete(*v106);
        }

        sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLGnssController>::handleEvent(Event) [T = CLGnssController]", "%s\n", v93);
        if (v93 != buf)
        {
          free(v93);
        }
      }

      v53 = *(v6 + 32);
      *buf = &v96;
      v54 = sub_1001B58E4(v5, &v96, &unk_101C66300, buf);
      v55 = v54[5];
      v56 = v54[6];
      v57 = (v53 + (v56 >> 1));
      if (v56)
      {
        v55 = *(*v57 + v55);
      }

      v2 = v55(v57, 0);
      if (v2 != v96)
      {
        sub_101942DBC();
      }

      goto LABEL_109;
    }

LABEL_160:
    v75 = "StateUnknown";
    goto LABEL_161;
  }

LABEL_109:
  --*(v6 + 88);
  return v2;
}

void sub_1001C0488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C04E8(NSObject *a1, signed int a2)
{
  isa = a1[8].isa;
  if (!isa)
  {
    goto LABEL_30;
  }

  v5 = a1 + 8;
  do
  {
    if (*(isa + 8) >= a2)
    {
      v5 = isa;
    }

    isa = *(isa + (*(isa + 8) < a2));
  }

  while (isa);
  if (v5 != &a1[8] && SLODWORD(v5[4].isa) <= a2 && (v6 = v5[5].isa) != 0)
  {
    dispatch_source_set_timer(v6, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v7 = qword_1025D4658;
    v8 = a1[15].isa;
    if (os_log_type_enabled(qword_1025D4658, v8))
    {
      v9 = a1 + 12;
      if (SHIBYTE(a1[14].isa) < 0)
      {
        v9 = v9->isa;
      }

      sub_1001B5660(a2, __p);
      if (v33 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v9;
      v25 = 2080;
      v26 = v10;
      _os_log_impl(dword_100000000, v7, v8, "%scancel timer,event,%s", buf, 0x16u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = a1 + 12;
      if (SHIBYTE(a1[14].isa) < 0)
      {
        v11 = v11->isa;
      }

      v12 = qword_1025D4658;
      isa_low = LOBYTE(a1[15].isa);
      sub_1001B5660(a2, buf);
      if (v27 >= 0)
      {
        v14 = buf;
      }

      else
      {
        v14 = *buf;
      }

      v28 = 136315394;
      v29 = v11;
      v30 = 2080;
      v31 = v14;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v12, isa_low, "%scancel timer,event,%s", &v28, 22);
      v16 = v15;
      if (v27 < 0)
      {
        operator delete(*buf);
      }

LABEL_51:
      sub_100152C7C("Generic", 1, 0, 2, "void CLStateMachine<CLGnssController>::cancelTimeoutEvent(Event) [T = CLGnssController]", "%s\n", v16);
      if (v16 != __p)
      {
        free(v16);
      }
    }
  }

  else
  {
LABEL_30:
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v17 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a1 + 12;
      if (SHIBYTE(a1[14].isa) < 0)
      {
        v18 = v18->isa;
      }

      sub_1001B5660(a2, __p);
      if (v33 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v18;
      v25 = 2080;
      v26 = v19;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning,%s,cancel timer,notFound, event,%s", buf, 0x16u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v20 = a1 + 12;
      if (SHIBYTE(a1[14].isa) < 0)
      {
        v20 = v20->isa;
      }

      v21 = qword_1025D4658;
      sub_1001B5660(a2, buf);
      if (v27 >= 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      v28 = 136315394;
      v29 = v20;
      v30 = 2080;
      v31 = v22;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 0, "#Warning,%s,cancel timer,notFound, event,%s", &v28, 22);
      v16 = v23;
      if (v27 < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_51;
    }
  }
}

uint64_t sub_1001C0938(uint64_t a1)
{
  v2 = [objc_msgSend(*a1 "vendor")];
  [v2 registerDelegate:sub_1000736A8(a1 + 2544) inSilo:{objc_msgSend(*a1, "silo")}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C6EA0;
  v12[3] = &unk_1024FA0C8;
  v12[4] = a1;
  v3 = [v2 fetchLocationClientKeysWithReply:v12];
  if (!*(a1 + 2520))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#gnssawd,creating fOrientationDispatcher,onSessionStart()", v11, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CA694();
    }

    [*a1 silo];
    operator new();
  }

  result = sub_100023B30(v3, v4);
  if ((result & 0x80) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#gnssawd,subscribing to device orientation,onSessionStart(),non-alwaysOnOrientation device", v11, 2u);
    }

    v7 = sub_10000A100(121, 2);
    if (v7)
    {
      sub_1016CA778();
    }

    v9 = sub_1003EA530(v7, v8);
    return sub_100178498(v9, 0, *(a1 + 2520), -1.0);
  }

  return result;
}

id sub_1001C0B9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1001B9078(v1);
  v2 = v1[127];
  if (v2)
  {
    sub_1001C873C(v2);
  }

  v3 = v1[129];
  if (v3)
  {
    sub_1001C8D48(v3);
  }

  v4 = v1[132];
  if (v4)
  {
    sub_1001C42D0(v4);
  }

  v5 = v1[126];
  if (v5)
  {
    sub_1001C53A4(v5);
  }

  result = v1[130];
  if (result)
  {

    return sub_1001C54B4(result);
  }

  return result;
}

uint64_t sub_1001C0C18(uint64_t a1)
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = 0;
  switch(dword_1026592D0)
  {
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 188:
    case 190:
    case 191:
    case 196:
    case 206:
    case 208:
    case 214:
    case 216:
    case 222:
    case 224:
    case 226:
    case 228:
    case 230:
    case 232:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 243:
    case 245:
    case 247:
    case 249:
    case 251:
    case 253:
    case 255:
    case 256:
    case 258:
      goto LABEL_6;
    case 186:
    case 187:
    case 189:
    case 192:
    case 193:
    case 194:
    case 195:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 207:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 215:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 223:
    case 225:
    case 227:
    case 229:
    case 231:
    case 233:
    case 241:
    case 242:
    case 244:
    case 246:
    case 248:
    case 250:
    case 252:
    case 254:
    case 257:
      break;
    default:
      if ((dword_1026592D0 - 115) <= 0xA && ((1 << (dword_1026592D0 - 115)) & 0x601) != 0)
      {
LABEL_6:
        v1 = 1;
      }

      break;
  }

  sub_10001CAF4(&v6);
  v8 = 0;
  v2 = sub_10001CB4C(v6, "GnssSupportsL5", &v8, 0xFFFFFFFFLL);
  v3 = v8;
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  return v4 & 1;
}

void sub_1001C0D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C0E9C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B9348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1001C0EF0(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v4 = (*(*a1 + 864))(a1, v3);
  CFRelease(v3);
  return v4;
}

uint64_t sub_1001C0F70(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

void sub_1001C1024(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 824);
    v7 = sub_1001B4D38(a1 + 1700);
    v8 = *(a2 + 84);
    v9 = *(a2 + 828);
    *buf = 67109888;
    *v104 = v6;
    *&v104[4] = 1024;
    *&v104[6] = v7;
    LOWORD(v105) = 1024;
    *(&v105 + 2) = v8;
    HIWORD(v105) = 1024;
    *v106 = v9;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,injectPosition,tightlyCoupled,%d,inEmergency,%d,confidence,%d,assistanceType,%d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101775390(a2, a1, v10, v11, v12, v13, v14, v15);
  }

  v16 = sub_1001B4D38(a1 + 1700);
  if (!v16 && *(a1 + 1722) == 1 && *(a1 + 1723) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#gpsd,dropping airborne pos asst", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017754D4();
    }

    return;
  }

  if (*(a2 + 828) == 2 && !sub_10071B104(v16, v17))
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v31 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#gpsd,dropping TEPA on this platform", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017755B8();
    }

    return;
  }

  v19 = (a2 + 84);
  v20 = *(a2 + 824);
  v21 = *(a2 + 84) > 0x41u;
  if (!(v20 & 1 | !sub_1001B4D38(a1 + 1700) | v21))
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v28 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v29 = sub_1001B4D38(a1 + 1700);
      v30 = *v19;
      *buf = 67109376;
      *v104 = v29;
      *&v104[4] = 1024;
      *&v104[6] = v30;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "#gpsd,Not feeding reference position,inCellularEmergency,%d,confidence,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10177569C(a1 + 1700, v19);
    }

    return;
  }

  sub_1001324C4(v81);
  if (!sub_100132484(8u))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v82 = 8;
  v84 |= 0xCu;
  v22 = v83;
  if (!v83)
  {
    operator new();
  }

  v23 = sub_1001B4E38(*(a2 + 828));
  if (!sub_10041ECF8(v23))
  {
    __assert_rtn("set_position_assist_type", "GpsdProtocol.pb.h", 9430, "::proto::gnss::PositionAssistType_IsValid(value)");
  }

  v24 = *(v22 + 36);
  *(v22 + 16) = v23;
  v25 = 504;
  if (*(a2 + 828) == 1)
  {
    v25 = 512;
  }

  ++*(a1 + v25);
  *(v22 + 36) = v24 | 3;
  v26 = *(v22 + 8);
  if (!v26)
  {
    operator new();
  }

  if (*(a2 + 132) == 1)
  {
    *(v26 + 96) |= 3u;
    v27 = *(a2 + 4);
  }

  else
  {
    if (*(a2 + 136) != 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v32 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "#gpsd,Require WGS84 coordinates for injection", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017700B0(buf);
        LOWORD(v85) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gpsd,Require WGS84 coordinates for injection", &v85, 2);
        v79 = v78;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectPositionAssistance(const CLGnssPositionAssistanceData &)", "%s\n", v78);
        if (v79 != buf)
        {
          free(v79);
        }
      }

      goto LABEL_49;
    }

    *(v26 + 96) |= 3u;
    v27 = *(a2 + 100);
  }

  *(v26 + 8) = v27;
LABEL_49:
  v33 = *(v26 + 96);
  *(v26 + 24) = *(a2 + 28);
  *(v26 + 32) = *(a2 + 476);
  v34 = *(a2 + 36);
  *(v26 + 96) = v33 | 0x1C;
  *(v26 + 40) = v34;
  v35 = *(a2 + 200);
  if (v35 <= 0.0 || (v36 = *(a2 + 204), v36 <= 0.0) || (v37 = *(a2 + 208), v37 < 0.0) || v37 > 180.0)
  {
    v40 = sqrt(*(a2 + 20) * (*(a2 + 20) * 0.5));
    *(v26 + 48) = v40;
    *(v26 + 56) = v40;
    v39 = 0.0;
  }

  else
  {
    v38.f64[0] = v35;
    v38.f64[1] = v36;
    *(v26 + 48) = vdivq_f64(v38, vdupq_n_s64(0x400399999999999AuLL));
    v39 = v37;
  }

  *(v26 + 96) = v33 | 0xFC;
  *(v26 + 64) = v39;
  v41 = *(a2 + 808);
  if (v41)
  {
    v42 = sub_1001B4D48(v41);
    if (!sub_1001348E0(v42))
    {
      goto LABEL_93;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v43 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "#Warning,#gpsd,unset asst pos reliability", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017700B0(buf);
      LOWORD(v85) = 0;
      LODWORD(v80) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,#gpsd,unset asst pos reliability", &v85, v80);
      v77 = v76;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectPositionAssistance(const CLGnssPositionAssistanceData &)", "%s\n", v76);
      if (v77 != buf)
      {
        free(v77);
      }
    }

    if (!sub_1001348E0(0xAu))
    {
LABEL_93:
      __assert_rtn("set_reliability", "GnssTypes.pb.h", 1975, "::proto::gnss::Reliability_IsValid(value)");
    }

    v42 = 10;
  }

  v44 = *(v26 + 96);
  *(v26 + 76) = v42;
  v45 = *(a2 + 96);
  *(v26 + 96) = v44 | 0x300;
  *(v26 + 72) = v45;
  v47 = *(a2 + 36) > 0.0 && *(a2 + 828) != 2;
  v48 = *(v22 + 36) | 4;
  *(v22 + 36) = v48;
  *(v22 + 20) = v47;
  v49 = *(a2 + 504);
  if (v49 < 1.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v50 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a2 + 816);
      *buf = 134349312;
      *v104 = v49;
      *&v104[8] = 2050;
      v105 = v51;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, "#Warning,#gpsd,unset asst pos time,%{public}.3f,age,%{public}.3f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017700B0(buf);
      v73 = *(a2 + 816);
      v85 = 134349312;
      v86 = v49;
      v87 = 2050;
      v88 = v73;
      LODWORD(v80) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,#gpsd,unset asst pos time,%{public}.3f,age,%{public}.3f", &v85, v80);
      v75 = v74;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectPositionAssistance(const CLGnssPositionAssistanceData &)", "%s\n", v74);
      if (v75 != buf)
      {
        free(v75);
      }
    }

    v49 = sub_1000081AC();
    v48 = *(v22 + 36);
  }

  *(v22 + 36) = v48 | 8;
  *(v22 + 24) = (v49 * 1000000000.0);
  if (*(a1 + 1264) == 1)
  {
    if ((*(a1 + 208) & 0x80000000) != 0)
    {
      *(a1 + 1184) = *(a2 + 808);
      *(a1 + 1192) = *(a2 + 20);
      *(a1 + 1200) = *(a2 + 828);
      *(a1 + 1248) = *(a2 + 4);
    }

    *(a1 + 1264) = 0;
  }

  if (*(a2 + 96) == 4)
  {
    *(a1 + 1204) = 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_100154094();
  }

  v52 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v53 = *(v26 + 8);
    v54 = *(v26 + 16);
    v55 = *(v26 + 24);
    v57 = *(v26 + 40);
    v56 = *(v26 + 48);
    v58 = *(a2 + 816);
    v59 = *(a2 + 808);
    v60 = *(a2 + 96);
    v61 = *(a2 + 828);
    *buf = 134547713;
    *v104 = v53;
    *&v104[8] = 2053;
    v105 = v54;
    *v106 = 2048;
    *&v106[2] = v55;
    v107 = 2048;
    v108 = v56;
    v109 = 2048;
    v110 = v57;
    v111 = 2048;
    v112 = v58;
    v113 = 1024;
    v114 = v59;
    v115 = 1024;
    v116 = v60;
    v117 = 1024;
    v118 = v61;
    _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "#gpsd,feeding reference location,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%.3lf,hunc,%.3lf,vunc,%.3lf,age,%f,rel,%d,locType,%d,assistType,%d", buf, 0x50u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017700B0(buf);
    v62 = *(v26 + 8);
    v63 = *(v26 + 16);
    v64 = *(v26 + 24);
    v66 = *(v26 + 40);
    v65 = *(v26 + 48);
    v67 = *(a2 + 816);
    v68 = *(a2 + 808);
    v69 = *(a2 + 96);
    v70 = *(a2 + 828);
    v85 = 134547713;
    v86 = v62;
    v87 = 2053;
    v88 = v63;
    v89 = 2048;
    v90 = v64;
    v91 = 2048;
    v92 = v65;
    v93 = 2048;
    v94 = v66;
    v95 = 2048;
    v96 = v67;
    v97 = 1024;
    v98 = v68;
    v99 = 1024;
    v100 = v69;
    v101 = 1024;
    v102 = v70;
    LODWORD(v80) = 80;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gpsd,feeding reference location,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%.3lf,hunc,%.3lf,vunc,%.3lf,age,%f,rel,%d,locType,%d,assistType,%d", &v85, v80);
    v72 = v71;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectPositionAssistance(const CLGnssPositionAssistanceData &)", "%s\n", v71);
    if (v72 != buf)
    {
      free(v72);
    }
  }

  sub_10013256C(a1, v81);
  sub_100133DCC(v81);
}

void sub_1001C1B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

void sub_1001C1B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _os_activity_create(dword_100000000, "CL: Incoming message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CLConnectionMessage::name(*a3);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v10 = *(a2 + 72);
    *buf = 68290050;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2082;
    v24 = v9;
    v25 = 2050;
    v26 = a2;
    v27 = 1026;
    v28 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Incoming message, event:%{public, location:escape_only}s, name:%{public, location:escape_only}s, this:%{public}p, registrationReceived:%{public}hhd}", buf, 0x36u);
  }

  if ((*(a2 + 72) & 1) != 0 || *(a1 + 32) == 1)
  {
    v11 = sub_1001C1E08(a2);
    v12 = *(a3 + 8);
    v14 = *a3;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_1000CF05C();
    }

    (*(*v13 + 48))(v13, v11, &v14);
    if (v15)
    {
      sub_100008080(v15);
    }
  }

  os_activity_scope_leave(&state);
}

void sub_1001C1DA4(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0uLL;
  sub_1001C1B94(a1 + 8, v3, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }
}

void sub_1001C1DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001C1E08(uint64_t a1)
{
  *buf = &v4;
  v1 = sub_1000583C0((a1 + 288), &v4, &unk_101C66300, buf)[3];
  if (!v1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v2 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "28CLPlaceInferenceSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating subscription due to demand, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    operator new();
  }

  if (!result)
  {
    sub_1019F19A4();
  }

  return result;
}

uint64_t sub_1001C2010(uint64_t a1)
{
  sub_1001C3550(a1);
  if (*(a1 + 43) == 1)
  {
    v2 = sub_100BCAA84(a1);
    [*(*v2 + 16) register:*(*v2 + 8) forNotification:3 registrationInfo:0];
    v3 = *(*sub_100BCAA84(a1) + 16);
    LOBYTE(__p) = 0;
    v9 = 0;
    [v3 syncgetStartScanWithType:10 lowPriority:0 lowLatency:*(a1 + 104) == 7 passive:0 requester:"placeinference" channels:&__p];
    if (v9 == 1)
    {
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }
    }
  }

  [*(a1 + 80) setNextFireDelay:*(a1 + 88)];
  *(a1 + 42) = 1;
  if (*(a1 + 88) == 40.0)
  {
    sub_10001CAF4(&__p);
    v4 = __p;
    Current = CFAbsoluteTimeGetCurrent();
    sub_100116D68(v4, "PlaceInferenceTimestampOfLastBestLocationRequestForFidelityLowWithPreciseLocation", &Current);
    if (v8)
    {
      sub_100008080(v8);
    }
  }

  return sub_1001C3758(a1);
}

void sub_1001C2124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_1018CD5F8(&a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C2158(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v6 = off_10249C748;
  *(v6 + 41) = 0x10000;
  *(v6 + 45) = 0;
  *(v6 + 48) = 0xBFF0000000000000;
  *(v6 + 56) = 0;
  *(a1 + 64) = objc_alloc_init(CLPlaceInferenceSubscriptionAdapter);
  *(a1 + 80) = [objc_msgSend(*(a1 + 8) "silo")];
  *(a1 + 112) = 0;
  *(a1 + 120) = objc_alloc_init(NSMutableArray);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = objc_alloc_init(NSMutableArray);
  *(a1 + 160) = off_10245B020;
  operator new();
}

void sub_1001C244C(_Unwind_Exception *a1)
{
  if (*(v1 + 423) < 0)
  {
    operator delete(*(v1 + 400));
  }

  if (*(v1 + 287) < 0)
  {
    operator delete(*v3);
  }

  sub_1001130E4(v2);
}

void sub_1001C2520(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  [*(a1 + 8) silo];
  if (*(a1 + 41) == 1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A11D98();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dsa #warning Already running a place inference request, but asked to start again}", buf, 0x12u);
    }

    goto LABEL_63;
  }

  *(a1 + 41) = 1;
  sub_10000EC00(buf, "com.apple.locationd.place_inference");
  if (sub_1001C2F40(a1))
  {
    v6 = 0;
  }

  else
  {
    sub_10000EC00(v39, "com.apple.locationd.emergencyplace_inference");
    v6 = sub_1001C2F40(a1) ^ 1;
    if (v40 < 0)
    {
      operator delete(*v39);
    }
  }

  if (SBYTE3(v38) < 0)
  {
    operator delete(*buf);
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6)
  {
LABEL_12:
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v7 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 24);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v37 = 2114;
      v38 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#dsa Client does not have appropriate entitlement to get place inference, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }
    }

    v9 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      v10 = *(a1 + 24);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v37 = 2114;
      v38 = v10;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dsa Client does not have appropriate entitlement to get place inference", "{msg%{public}.0s:#dsa Client does not have appropriate entitlement to get place inference, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

LABEL_19:
    sub_100BCBD60(a1, [NSError errorWithDomain:kCLErrorDomain code:1 userInfo:0]);
    goto LABEL_63;
  }

  v11 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessagePlaceInferenceFidelityPolicyKey"];
  if (v11)
  {
    if (sub_100030B7C(a1, 4))
    {
      v12 = [v11 unsignedIntValue];
      v13 = v12;
      switch(v12)
      {
        case 6u:
          v25 = *(a1 + 56);
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100312454;
          v35[3] = &unk_1024571C0;
          v35[4] = a1;
          [v25 fetchCachedPlaceInferencesWithReply:v35];
          goto LABEL_63;
        case 5u:
          *(a1 + 112) = 1;
          break;
        case 4u:
          sub_10000EC00(buf, "com.apple.locationd.emergencyplace_inference");
          v14 = sub_1001C2F40(a1);
          if (SBYTE3(v38) < 0)
          {
            operator delete(*buf);
          }

          if ((v14 & 1) == 0)
          {
            if (qword_1025D4790 != -1)
            {
              sub_101A11E98();
            }

            v15 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
            {
              v16 = *(a1 + 24);
              *buf = 138543362;
              *&buf[4] = v16;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#dsa client '%{public}@' not authorized for Emergency Fidelity policy", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A14CBC(buf);
              v31 = *(a1 + 24);
              *v39 = 138543362;
              *&v39[4] = v31;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "#dsa client '%{public}@' not authorized for Emergency Fidelity policy", v39, 12);
              v33 = v32;
              sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::handleRequestPlaceInference(std::shared_ptr<CLConnectionMessage>)", "%s\n", v32);
              if (v33 != buf)
              {
                free(v33);
              }
            }

            goto LABEL_19;
          }

          break;
      }

      *(a1 + 136) = objc_alloc_init(NSDate);
      *(a1 + 104) = v13;
      *(a1 + 184) = v13;
      sub_1001C2F68(a1);
      sub_1001C2010(a1);
      goto LABEL_63;
    }

    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v19 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 24);
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#dsa client '%{public}@' not authorized for location; not starting yet in handleRequestPlaceInference", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A14CBC(buf);
      v26 = *(a1 + 24);
      *v39 = 138543362;
      *&v39[4] = v26;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "#dsa client '%{public}@' not authorized for location; not starting yet in handleRequestPlaceInference", v39, 12);
      v28 = v27;
      sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::handleRequestPlaceInference(std::shared_ptr<CLConnectionMessage>)", "%s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    sub_100BCBD60(a1, [NSError errorWithDomain:kCLErrorDomain code:1 userInfo:0]);
    *(a1 + 520) = 6;
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v21 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#era CA result - kERAResultErrorLSOff", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A14CBC(buf);
      *v39 = 0;
      LODWORD(v34) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "#era CA result - kERAResultErrorLSOff", v39, v34);
      v30 = v29;
      sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::handleRequestPlaceInference(std::shared_ptr<CLConnectionMessage>)", "%s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    *(a1 + 328) = 6;
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v22 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#dsa AWD result - kDSAResultErrorLSOff", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A14CBC(buf);
      *v39 = 0;
      LODWORD(v34) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "#dsa AWD result - kDSAResultErrorLSOff", v39, v34);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::handleRequestPlaceInference(std::shared_ptr<CLConnectionMessage>)", "%s\n", v23);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v17 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#dsa Place inference request is missing required field: fidelityPolicy}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }
    }

    v18 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dsa Place inference request is missing required field: fidelityPolicy", "{msg%{public}.0s:#dsa Place inference request is missing required field: fidelityPolicy}", buf, 0x12u);
    }

    sub_100BCBD60(a1, [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:0]);
  }

LABEL_63:
}

void sub_1001C2F68(uint64_t a1)
{
  [*(a1 + 8) silo];
  if (([*(a1 + 16) isAuthorizedForServiceType:12] & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A11D98();
    }

    v3 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 24);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v20 = 2114;
      v21 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dsa client is authorized only for coarse, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    *(a1 + 72) = 2;
    *(a1 + 88) = 0x3FB999999999999ALL;
    *(a1 + 96) = 4;
    *(a1 + 43) = 256;
    goto LABEL_48;
  }

  v2 = *(a1 + 104);
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        *(a1 + 72) = 1;
        *(a1 + 88) = 0x3FF8000000000000;
        *(a1 + 96) = 5;
LABEL_47:
        *(a1 + 43) = 1;
        goto LABEL_48;
      }

      *(a1 + 72) = 0;
      v5 = 0x4014000000000000;
LABEL_46:
      *(a1 + 88) = v5;
      *(a1 + 96) = 7;
      goto LABEL_47;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      *(a1 + 72) = 1;
      *(a1 + 88) = 0x3FB999999999999ALL;
      *(a1 + 96) = 4;
    }

    else
    {
      *(a1 + 72) = 1;
      *(a1 + 88) = 0x3FB999999999999ALL;
      *(a1 + 96) = 0;
    }

LABEL_43:
    *(a1 + 43) = 0;
    goto LABEL_48;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      *(a1 + 72) = 0;
      *(a1 + 88) = 0x4014000000000000;
      *(a1 + 96) = 7;
      *(a1 + 43) = 1;
      *(a1 + 45) = 1;
      return;
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_10001CAF4(buf);
    v18 = 0.0;
    if (sub_1000B9370(*buf, "PlaceInferenceTimestampOfLastBestLocationRequestForFidelityLowWithPreciseLocation", &v18))
    {
      v7 = v18;
    }

    else
    {
      v7 = -1.0;
    }

    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 112);
      *buf = 134217984;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#placeInfer fFidelityLowWithPreciseLocationQueriesCount = %lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A12180();
    }

    v10 = *(a1 + 112);
    if (v10 == 2)
    {
      if (Current - v7 <= 43200.0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_101A11E98();
        }

        v17 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "#placeInfer no GPS budget remaining, configuring a cached location request", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A12274();
        }

        *(a1 + 72) = 1;
        *(a1 + 88) = 0x4008000000000000;
        *(a1 + 96) = 24;
        *(a1 + 43) = 0;
        *(a1 + 45) = 0;
        v12 = 3;
        goto LABEL_79;
      }

      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }

      v14 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "#placeInfer GPS budget is still available, configuring a smoothed GPS query", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A12358();
      }

      *(a1 + 72) = 0;
      v15 = 0x4044000000000000;
    }

    else
    {
      if (v10 == 1)
      {
        if (qword_1025D4790 != -1)
        {
          sub_101A11E98();
        }

        v11 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#placeInfer configuring a high accuracy LOI query", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A1243C();
        }

        v12 = 1;
        *(a1 + 72) = 1;
        *(a1 + 88) = 0x4008000000000000;
        *(a1 + 96) = 8;
        *(a1 + 43) = 0;
        *(a1 + 45) = 0;
        goto LABEL_79;
      }

      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }

      v16 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#placeInfer configuring an extra GPS request", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A12520();
      }

      *(a1 + 72) = 0;
      v15 = 0x4034000000000000;
    }

    *(a1 + 88) = v15;
    *(a1 + 96) = 26;
    *(a1 + 43) = 0;
    *(a1 + 45) = 0;
    v12 = 2;
LABEL_79:
    *(a1 + 224) = v12;
    return;
  }

  switch(v2)
  {
    case 6:
      *(a1 + 72) = 1;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      goto LABEL_43;
    case 7:
      *(a1 + 72) = 0;
      v5 = 0x3FF8000000000000;
      goto LABEL_46;
    case 8:
      *(a1 + 72) = 1;
      *(a1 + 88) = 0x3FF8000000000000;
      *(a1 + 96) = 1;
      *(a1 + 43) = 1;
LABEL_48:
      *(a1 + 45) = 0;
      return;
  }

LABEL_50:
  if (qword_1025D4790 != -1)
  {
    sub_101A11D98();
  }

  v13 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "#dsa Please update initializePlaceInferencesOptions", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101A12604();
  }
}

void sub_1001C3530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_1001C3550(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v2 = sub_1001C3698(a1);
    [*(*v2 + 16) unregister:*(*v2 + 8) forNotification:*(a1 + 72)];
    v3 = sub_1001C35D8(a1);
  }

  else
  {
    v4 = sub_1001C35D8(a1);
    [*(*v4 + 16) unregister:*(*v4 + 8) forNotification:*(a1 + 72)];
    v3 = sub_1001C3698(a1);
  }

  v6 = *(*v3 + 8);
  v5 = *(*v3 + 16);
  v7 = *(a1 + 72);

  return [v5 register:v6 forNotification:v7 registrationInfo:0];
}

uint64_t sub_1001C35D8(uint64_t a1)
{
  if (!*(a1 + 656))
  {
    sub_1000EE0B0();
  }

  return a1 + 656;
}

uint64_t sub_1001C3698(uint64_t a1)
{
  if (!*(a1 + 648))
  {
    sub_1000EE2FC();
  }

  return a1 + 648;
}

uint64_t sub_1001C3794@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 42))
  {
    v3 = result;
    result = sub_1001C3948(*(result + 72));
    if ((v4 & 1) == 0)
    {
      if (qword_1025D4790 != -1)
      {
        sub_101A11D98();
      }

      v5 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
      {
        v6 = *(v3 + 72);
        v9 = 68289282;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2050;
        v14 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#dsa Couldn't convert location notification to accuracy, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", &v9, 0x1Cu);
        if (qword_1025D4790 != -1)
        {
          sub_101A11E98();
        }
      }

      v7 = qword_1025D4798;
      if (os_signpost_enabled(qword_1025D4798))
      {
        v8 = *(v3 + 72);
        v9 = 68289282;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2050;
        v14 = v8;
        _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dsa Couldn't convert location notification to accuracy", "{msg%{public}.0s:#dsa Couldn't convert location notification to accuracy, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", &v9, 0x1Cu);
      }

      result = 0xBFF0000000000000;
    }

    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 16) = 0;
    *(a2 + 23) = 0;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1001C3948(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_101D1B710[a1];
  }
}

void sub_1001C3970(uint64_t a1, unsigned int *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A11CBC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLPlaceInferenceSubscription::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A11CD0();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPlaceInferenceSubscription::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001C3B3C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001C3B3C(uint64_t a1, uint64_t a2, unsigned int *a3, __int128 *a4)
{
  if (*a3 < 2)
  {
    v6 = [CLLocation alloc];
    v7 = a4[7];
    v26 = a4[6];
    v27 = v7;
    v28[0] = a4[8];
    *(v28 + 12) = *(a4 + 140);
    v8 = a4[3];
    v22 = a4[2];
    v23 = v8;
    v9 = a4[5];
    v24 = a4[4];
    v25 = v9;
    v10 = a4[1];
    v20 = *a4;
    v21 = v10;
    v11 = [v6 initWithClientLocation:&v20];
LABEL_5:
    sub_1001C3CDC(a1, v11);
    return;
  }

  if (*a3 == 2)
  {
    v12 = [CLLocation alloc];
    v13 = a4[7];
    v26 = a4[6];
    v27 = v13;
    v28[0] = a4[8];
    *(v28 + 12) = *(a4 + 140);
    v14 = a4[3];
    v22 = a4[2];
    v23 = v14;
    v15 = a4[5];
    v24 = a4[4];
    v25 = v15;
    v16 = a4[1];
    v20 = *a4;
    v21 = v16;
    v11 = [v12 initWithClientLocation:&v20 coarseMetaData:*(a4 + 165)];
    goto LABEL_5;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101A11D98();
  }

  v18 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v19 = *a3;
    LODWORD(v20) = 67240192;
    DWORD1(v20) = v19;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#dsa received unhandled notification %{public, location:CLLocationProvider_Type::Notification}d In onLocationNotification", &v20, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A14E10(a3);
  }
}